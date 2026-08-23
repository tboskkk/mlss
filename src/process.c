#include "global.h"
#include "common.h"
#include "process.h"

asm_unified(".include \"asm/macros.inc\"");

#define PROCESS_DISABLED 0
#define PROCESS_ENABLED  1

struct Process* process_add(struct Process* process, u8 priority, char* label) {
    u32 processCount;
    struct Process* latestProcess;
    char* destLabel;

    process->definition = &stru_8CDBD68;
    processCount = 0;
    latestProcess = gGameState.startProcessLink;

    if (latestProcess == NULL) {
        gGameState.startProcessLink = process;
        process->previousProcess = NULL;
        process->nextProcess = NULL;
        destLabel = process->label;
    } else {
        if (latestProcess == NULL) {
        out:
            latestProcess->nextProcess = process;
            process->previousProcess = latestProcess;
            process->nextProcess = NULL;
            processCount++;
        } else {
            destLabel = process->label;

            while (latestProcess->priority <= priority) {
                if (latestProcess->nextProcess == NULL) {
                    //! Possible fake match.
                    goto out;
                }

                latestProcess = latestProcess->nextProcess;
                processCount++;
            }

            if (latestProcess->previousProcess == NULL) {
                gGameState.startProcessLink = process;
                process->previousProcess = NULL;
                process->nextProcess = latestProcess;
                latestProcess->previousProcess = process;
            } else {
                latestProcess->previousProcess->nextProcess = process;
                process->previousProcess = latestProcess->previousProcess;
                process->nextProcess = latestProcess;
                latestProcess->previousProcess = process;
            }
        }
    }

    process->parentProcess = gGameState.currentProcess;
    process->processCount = processCount;
    process->state = 0;
    process->priority = priority;
    process->flag = PROCESS_ENABLED;
    process->wait = TRUE;
    process->executeMax = 1;
    process->executeCounter = 0;
    process->frames = 0;
    COPY_LABEL(destLabel, label);
    gGameState.processCount++;

    return process;
}

void process_execute_all(void) {
    struct Process* exeProcess;
    struct Process* process;
    bool32 stopExecuting;

    if (gGameState.startProcessLink != 0) {
        do {
            stopExecuting = TRUE;

            exeProcess = gGameState.startProcessLink;
            while (exeProcess != NULL) {
                gGameState.nextProcess = exeProcess->nextProcess;
                gGameState.currentProcess = exeProcess;

                if (exeProcess->flag & PROCESS_ENABLED && !exeProcess->wait) {
                    s8 executeMax = exeProcess->executeMax;

                    if (executeMax & 8) {
                        if (++exeProcess->executeCounter >= -executeMax) {
                            exeProcess->definition->update((u8*)exeProcess
                                                           + exeProcess->definition->offset);
                            exeProcess->executeCounter = 0;
                        }

                        if (gGameState.currentProcess != NULL) {
                            exeProcess->frames++;
                            exeProcess->wait = TRUE;
                        }
                    } else {
                        exeProcess->definition->update((u8*)exeProcess
                                                       + exeProcess->definition->offset);

                        if (gGameState.currentProcess != NULL) {
                            exeProcess->frames++;

                            if (++exeProcess->executeCounter >= exeProcess->executeMax) {
                                exeProcess->wait = TRUE;
                            } else {
                                stopExecuting = FALSE;
                            }
                        }
                    }
                }

                exeProcess = gGameState.nextProcess;
            }
        } while (stopExecuting == FALSE);
    }

    process = gGameState.startProcessLink;
    while (process != NULL) {
        process->wait = FALSE;

        if (!(process->executeMax & 8)) {
            process->executeCounter = 0;
        }

        process = process->nextProcess;
    }
}

bool32 process_exists(struct Process* process) {
    struct Process* curProcess = gGameState.startProcessLink;

    while (curProcess != NULL) {
        if (curProcess == process) {
            return TRUE;
        }

        curProcess = curProcess->nextProcess;
    }

    return FALSE;
}

void process_enable_all(void) {
    struct Process* process = gGameState.startProcessLink;

    while (process != NULL) {
        process->flag = PROCESS_ENABLED;
        process->wait = TRUE;
        process = process->nextProcess;
    }
}

void process_disable_all(void) {
    struct Process* process = gGameState.startProcessLink;

    while (process != NULL) {
        if (process->priority != 0 && process->priority != 255) {
            process->flag = PROCESS_DISABLED;
            process->wait = TRUE;
        }
        process = process->nextProcess;
    }
}

void process_enable(struct Process* process) {
    process->flag = PROCESS_ENABLED;
    process->wait = TRUE;
}

void process_disable(struct Process* process) {
    process->flag = PROCESS_DISABLED;
    process->wait = TRUE;
}

void process_remove(struct Process* process, u32 flags) {
    process->definition = &stru_8CDBD68;

    if (process->nextProcess != NULL) {
        process->nextProcess->previousProcess = process->previousProcess;
    }

    if (process->previousProcess == NULL) {
        gGameState.startProcessLink = process->nextProcess;
    } else {
        process->previousProcess->nextProcess = process->nextProcess;
    }

    gGameState.processCount--;

    if (gGameState.currentProcess == process) {
        gGameState.currentProcess = NULL;
    }

    if (gGameState.nextProcess == process) {
        gGameState.nextProcess = process->nextProcess;
    }

    if (flags & PROCESS_REMOVE_FLAGS_FREE) {
        free_heap_8018DA8(process);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019F24.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801A1D4.s\"");
#else
u8 sub_801A1D4(void *dest) {
    s32 sp0;
    s32 sp4;
    s32 temp_r0_19;
    s32 var_r5_25;
    void *temp_r1_36;
    void *temp_r1_87;
    void *temp_r2_69;
    void *temp_r4_60;

    temp_r0_19 = (*(s32 (**)())((s8 *)(*(void **)0x03000D0C) + (0x180)))() << 0x18;
    (*(u8 *)((s8 *)(*(void **)0x03000D0C) + (3))) = 0U;
    if (temp_r0_19 != 0) {
        var_r5_25 = 0;
        do {
            temp_r1_36 = (*(s32 *)((s8 *)(*(u32 *)0x03000D0C) + (0x2C))) + (var_r5_25 * 0x18);
            temp_r4_60 = temp_r1_36 + 4;
            if ((s16) ((*(u16 *)((s8 *)(temp_r1_36) + (0))) + (*(u16 *)((s8 *)(temp_r1_36) + (2))) + (*(u16 *)((s8 *)(temp_r1_36) + (4))) + (*(u16 *)((s8 *)(temp_r1_36) + (6))) + (*(u16 *)((s8 *)(temp_r1_36) + (8))) + (*(u16 *)((s8 *)(temp_r1_36) + (0xA))) + (*(u16 *)((s8 *)(temp_r1_36) + (0xC))) + (*(u16 *)((s8 *)(temp_r1_36) + (0xE))) + (*(u16 *)((s8 *)(temp_r1_36) + (0x10))) + (*(u16 *)((s8 *)(temp_r1_36) + (0x12)))) == -0xD) {
                sp4 = 0;
                CpuSet(temp_r4_60, (var_r5_25 * 0x10) + dest, 0x04000004U);
                temp_r2_69 = *(u32 *)0x03000D0C;
                (*(u8 *)((s8 *)(temp_r2_69) + (3))) = (u8) ((1 << var_r5_25) | (*(u8 *)((s8 *)(temp_r2_69) + (3))));
            }
            sp0 = 0;
            CpuSet(&sp0, temp_r4_60, 0x05000004U);
            var_r5_25 += 1;
        } while (var_r5_25 <= 3);
    }
    temp_r1_87 = *(u32 *)0x03000D0C;
    (*(u8 *)((s8 *)(temp_r1_87) + (2))) = (u8) ((*(u8 *)((s8 *)(temp_r1_87) + (2))) | (*(u8 *)((s8 *)(temp_r1_87) + (3))));
    return (*(u8 *)((s8 *)(*(u32 *)0x03000D0C) + (3)));
}
#endif

void sub_801A2A0(void) {
    u32 temp;
    u8 flag0;
    vu32* sioReg;
    s32 sendData;

    if (dword_3000D0C == NULL) {
        return;
    }

    if ((flag0 = dword_3000D0C->field_0) != 0) {
        if (dword_3000D0C->field_1 == 0) {
            return;
        }

        if (dword_3000D0C->field_6 == 0) {
            return;
        }

        dword_3000D0C->field_18 = -2;

        temp = dword_3000D0C->field_28;
        dword_3000D0C->field_28 = dword_3000D0C->field_24;
        dword_3000D0C->field_24 = temp;

        if (dword_3000D0C->field_4 != 0) {
            temp = dword_3000D0C->field_20;
            dword_3000D0C->field_20 = dword_3000D0C->field_1C;
            dword_3000D0C->field_1C = temp;
            dword_3000D0C->field_4 = 0;
            dword_3000D0C->field_14 = 0;
        }

        dword_3000D0C->field_7 = (*(vu32*)0x04000128 << 25) >> 31;
        sioReg = (vu32*)0x04000128;
        sendData = 0xFEFE;
        *(vu16*)((u8*)sioReg + 2) = sendData;
        *(vu16*)sioReg |= 0x80;
        REG_TM3CNT_H = 0xC0;
    } else {
        if (dword_3000D0C->field_9 == 0) {
            REG_IME = flag0;
            INTR_CHECK |= INTR_FLAG_SERIAL;
            REG_IME = 1;
        }

        dword_3000D0C->field_9 = flag0;
    }
}

void sub_801A33C(void) {
    void *temp_r1_8;

    temp_r1_8 = *(void **)0x03000D0C;
    if ((*(u8 *)((s8 *)(temp_r1_8) + (0))) != 0) {
        (*(s8 *)((s8 *)(temp_r1_8) + (6))) = 1;
    }
}
