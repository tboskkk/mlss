	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81399C4
sub_81399C4:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _081399F8 @ =0x0813B381
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _081399FC @ =0x08139709
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	movs r2, #0xD6
	lsls r2, r2, #0x01
	add r2, r12
	ldr r1, _08139A00 @ =0x081396D9
	str r1, [r2, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
_081399F8: .4byte sub_813B380
_081399FC: .4byte sub_8139708
_08139A00: .4byte sub_81396D8
	thumb_func_start sub_8139A04
sub_8139A04:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139A30 @ =0x0813B381
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _08139A34 @ =0x081368AD
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139A30: .4byte sub_813B380
_08139A34: .4byte sub_81368AC
	thumb_func_start sub_8139A38
sub_8139A38:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139A64 @ =0x0813B381
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _08139A68 @ =0x081397CD
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139A64: .4byte sub_813B380
_08139A68: .4byte sub_81397CC
	thumb_func_start sub_8139A6C
sub_8139A6C:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139A98 @ =0x081398C5
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _08139A9C @ =0x08139881
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139A98: .4byte sub_81398C4
_08139A9C: .4byte sub_8139880
