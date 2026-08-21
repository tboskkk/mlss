	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8158044
sub_8158044:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x00
	str r1, [r4, #0x00]
	ldr r0, _08158078 @ =0x08CDC4D0
	str r0, [r4, #0x04]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	str r1, [r4, #0x08]
	str r1, [r4, #0x0C]
	ldr r0, _0815807C @ =0x03001010
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	asrs r0, r0, #0x1B
	cmp r0, #0x05
	bgt _08158084
	ldr r2, _08158080 @ =0x082126E0
	movs r0, #0x34
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	bl sub_8161AAC
	str r0, [r4, #0x0C]
	b _08158096
_08158078: .4byte 0x08CDC4D0
_0815807C: .4byte 0x03001010
_08158080: .4byte 0x082126E0
_08158084:
	ldr r2, _081580A0 @ =0x082126E0
	movs r0, #0x34
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	bl sub_8161698
	str r0, [r4, #0x08]
_08158096:
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081580A0: .4byte 0x082126E0
	thumb_func_start sub_81580A4
sub_81580A4:
	push {r4, lr}
	add sp, #-0x004
	ldr r2, [r0, #0x4C]
	ldr r0, _081580D4 @ =0x03001018
	ldr r3, [r0, #0x00]
	ldr r4, _081580D8 @ =0x00001CB8
	adds r0, r3, r4
	ldr r2, [r2, #0x04]
	ldr r0, [r0, #0x00]
	subs r2, r2, r0
	asrs r2, r2, #0x08
	ldr r0, _081580DC @ =0x00001CA8
	adds r3, r3, r0
	ldr r0, [r3, #0x00]
	movs r3, #0x01
	str r3, [sp, #0x000]
	movs r3, #0x50
	bl sub_81649AC
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081580D4: .4byte 0x03001018
_081580D8: .4byte 0x00001CB8
_081580DC: .4byte 0x00001CA8
	thumb_func_start sub_81580E0
sub_81580E0:
	push {lr}
	ldr r0, [r0, #0x30]
	bl sub_816504C
	cmp r0, #0x00
	bne _081580F0
	movs r0, #0x00
	b _081580F2
_081580F0:
	movs r0, #0x01
_081580F2:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
