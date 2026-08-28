
# Configuration
TITLE			:= MARIO&LUIGIU
GAME_CODE		:= A88E
MAKER_CODE		:= 01
REVISION		:= 0
ROM				:= mlss.gba

# Tools
BIN_DIR			:= $(DEVKITARM)/bin
PREFIX			:= arm-none-eabi-
CPP				:= $(BIN_DIR)/./$(PREFIX)cpp
OBJCOPY 		:= $(BIN_DIR)/./$(PREFIX)objcopy
LD 				:= $(BIN_DIR)/./$(PREFIX)ld
AS 			    := $(BIN_DIR)/./$(PREFIX)as
SHA1			:= $(shell { command -v sha1sum || command -v shasum; } 2>/dev/null) -c
SHELL			:= /bin/bash -o pipefail
FIX				:= tools/gbafix/./gbafix
CC1				:= tools/agbcc/bin/agbcc

# Libaries
LIBC   := tools/agbcc/lib/libc.a
LIBGCC := tools/agbcc/lib/libgcc.a

# Flags
ASFLAGS			:= -mcpu=arm7tdmi -I include
LDFLAGS			:= -Ltools/agbcc/lib -lgcc -lc --just-symbols=symbols.txt -g
# -ffix-debug-line flag comes from https://github.com/jiangzhengwenjz/agbcc new_newlib_pret branch.
# This branch fixes debug lines so they are emitted properly. If the compiler doesn't produce the
# same output please switch back to the normal agbcc repo.
CFLAGS			:= -O2 -mthumb-interwork -fno-common -Wimplicit -Wparentheses -Werror -g -ffix-debug-line
# Same flags without -g, for the fallback in the %.o rule below. agbcc's
# debug-line emission is buggy: for some inputs it makes the generated .s
# unassemblable, and the error names asm/macros.inc, which is innocent.
# -ffix-debug-line covers most of it (dropping that flag makes MORE objects
# fail, measured), but not all. Proven byte-neutral: a full from-scratch ROM
# build with CFLAGS lacking -g reproduces rom.sha1 exactly, with a clean
# layout check. See CLAUDE.md section T.9.
CFLAGS_NODEBUG	:= $(filter-out -g,$(CFLAGS))
CPPFLAGS 		:= -I tools/agbcc/include -nostdinc -undef -iquote include -Wno-trigraphs

# `make NONMATCHING=1`: compiles the #else branch of every
# `#ifndef NONMATCHING / asm include / #else / C attempt / #endif` block
# (see CLAUDE.md) instead of splicing in the verbatim retail bytes. The
# resulting ROM will NOT match retail - that's expected, this build exists
# to test-compile and diff in-progress C, not to ship. Plain `make` (no
# NONMATCHING) is what has to keep producing a byte-identical ROM.
# Goes to CPPFLAGS, not CFLAGS: agbcc (CC1) only ever sees the already-
# preprocessed .i file below, so it has no idea what -D means.
ifdef NONMATCHING
CPPFLAGS += -DNONMATCHING
endif

# Files
ELF = $(ROM:.gba=.elf)
MAP = $(ROM:.gba=.map)
OBJ_DIR := build

C_SUBDIR = src
ASM_SUBDIR = asm

C_BUILDDIR = $(OBJ_DIR)/$(C_SUBDIR)
ASM_BUILDDIR = $(OBJ_DIR)/$(ASM_SUBDIR)

C_SRCS := $(wildcard $(C_SUBDIR)/*.c $(C_SUBDIR)/*/*.c $(C_SUBDIR)/*/*/*.c)
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.o,$(C_SRCS))
C_DEPS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.d,$(C_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o,$(ASM_SRCS))

OBJS     := $(C_OBJS) $(ASM_OBJS)

SUBDIRS  := $(sort $(dir $(OBJS)))
$(shell mkdir -p $(SUBDIRS))

# Rules
.PHONY: rom compare clean tools

rom: tools $(ROM) compare

compare: $(ROM)
	@$(SHA1) rom.sha1

clean:
	rm -f $(ROM) $(ELF) $(MAP)
	rm -r build/*

tools:
	@$(MAKE) -C tools/gbafix

# A second, distinct symptom of the same agbcc debug-line bug the %.o
# rule's assembler fallback below already handles: for these files the
# GENERATED .s assembles just fine (so the fallback's `$(AS) ... || {...}`
# never fires) but agbcc still emits a dangling DWARF debug-line-table
# reference that only surfaces as a LINKER error, `undefined reference to
# '.LI<N>_<M>'` -- confirmed live 2026-08-27 on sub_80F110C.c
# (`.LI1_83`), which broke `make` from a genuinely clean `rm -rf build/`,
# not a stale-object artifact. Same fix, same byte-neutrality argument as
# CFLAGS_NODEBUG's own comment above (a full from-scratch ROM build
# without -g reproduces rom.sha1 exactly) -- just applied up front via a
# target-specific variable instead of after an assembler failure, since
# there is nothing for the per-object rule to catch at assemble time.
LINK_DEBUG_BUG_SRCS := sub_80F110C
$(foreach f,$(LINK_DEBUG_BUG_SRCS),$(eval $(C_BUILDDIR)/$(f).o: CFLAGS := $(CFLAGS_NODEBUG)))

$(C_BUILDDIR)/%.o : $(C_SUBDIR)/%.c
	@$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/$*.i
	@$(CC1) $(C_BUILDDIR)/$*.i $(CFLAGS) -o $(C_BUILDDIR)/$*.s
	@echo -e ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$*.s
	@$(AS) $(ASFLAGS) -o $@ $(C_BUILDDIR)/$*.s 2>/dev/null || { \
		echo "note: $* tripped agbcc's debug-line bug -- recompiling it without -g" >&2; \
		$(CC1) $(C_BUILDDIR)/$*.i $(CFLAGS_NODEBUG) -o $(C_BUILDDIR)/$*.s && \
		echo -e ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$*.s && \
		$(AS) $(ASFLAGS) -o $@ $(C_BUILDDIR)/$*.s; }

$(ASM_BUILDDIR)/%.o: $(ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -o $@ $<

$(ELF): $(OBJS)
	$(LD) -Map $(MAP) -T ld_script.ld -o $@ $(LDFLAGS) $(OBJS)

$(ROM): $(ELF)
	$(OBJCOPY) -O binary $< $@
	$(FIX) $@ -p -t"$(TITLE)" -c$(GAME_CODE) -m$(MAKER_CODE) -r$(REVISION) --silent

-include $(C_DEPS)
