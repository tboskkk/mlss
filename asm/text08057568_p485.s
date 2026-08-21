	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_812F2F8
sub_812F2F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x004]
	ldr r1, [r6, #0x40]
	ldr r2, _0812F3C8 @ =0x05000040
	add r0, sp, #0x004
	bl CpuSet
	str r4, [sp, #0x004]
	ldr r1, [r6, #0x54]
	ldr r5, _0812F3CC @ =0x05000080
	add r0, sp, #0x004
	adds r2, r5, #0x0
	bl CpuSet
	str r4, [sp, #0x004]
	ldr r1, [r6, #0x58]
	add r0, sp, #0x004
	adds r2, r5, #0x0
	bl CpuSet
	ldr r0, [r6, #0x40]
	movs r1, #0x03
	movs r2, #0x00
	bl sub_8116B48
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r6, #0x0
	adds r7, #0xAA
	strh r0, [r7, #0x00]
	ldrh r0, [r7, #0x00]
	ldr r1, [r6, #0x40]
	adds r1, r1, r0
	str r1, [r6, #0x48]
	movs r0, #0x00
	movs r2, #0x01
	bl sub_811795C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r6, #0x0
	adds r4, #0xAE
	strh r0, [r4, #0x00]
	ldrh r0, [r4, #0x00]
	ldr r1, [r6, #0x48]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	movs r0, #0x01
	movs r2, #0x01
	bl sub_811795C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r6, #0x0
	adds r1, #0xAC
	strh r0, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	ldrh r2, [r7, #0x00]
	adds r1, r1, r2
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xA8
	strh r0, [r1, #0x00]
	movs r5, #0x00
	cmp r5, r0
	blt _0812F38E
	b _0812F490
_0812F38E:
	mov r8, r7
	movs r7, #0x00
	ldr r0, _0812F3D0 @ =0x083BBDD0
	mov r10, r0
	ldr r1, _0812F3D4 @ =0x083BD844
	mov r9, r1
_0812F39A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	cmp r5, r0
	bge _0812F3D8
	ldr r2, [r6, #0x54]
	adds r2, r7, r2
	ldr r1, [r6, #0x40]
	adds r1, r1, r5
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	add r0, r10
	ldrh r0, [r0, #0x0A]
	strh r0, [r2, #0x00]
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	add r0, r10
	ldrh r1, [r0, #0x0A]
	ldrb r2, [r0, #0x03]
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x03
	b _0812F41C
_0812F3C8: .4byte 0x05000040
_0812F3CC: .4byte 0x05000080
_0812F3D0: .4byte 0x083BBDD0
_0812F3D4: .4byte 0x083BD844
_0812F3D8:
	adds r2, r6, #0x0
	adds r2, #0xAE
	cmp r0, r5
	bgt _0812F430
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	cmp r5, r0
	bge _0812F430
	cmp r1, #0x00
	beq _0812F430
	ldr r3, [r6, #0x54]
	adds r3, r7, r3
	ldr r2, [r6, #0x40]
	adds r2, r2, r5
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, _0812F42C @ =0x083BE67C
	adds r0, r0, r1
	ldrh r0, [r0, #0x04]
	strh r0, [r3, #0x00]
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r2, _0812F42C @ =0x083BE67C
	adds r0, r0, r2
	ldrh r1, [r0, #0x04]
	ldrb r2, [r0, #0x0E]
	ldrb r3, [r0, #0x11]
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
_0812F41C:
	bl sub_812EF44
	ldr r1, [r6, #0x58]
	adds r1, r7, r1
	strh r0, [r1, #0x00]
	adds r4, r6, #0x0
	adds r4, #0xA8
	b _0812F486
_0812F42C: .4byte 0x083BE67C
_0812F430:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r1, r1, r0
	adds r4, r6, #0x0
	adds r4, #0xA8
	cmp r1, r5
	bgt _0812F486
	ldrh r1, [r4, #0x00]
	cmp r5, r1
	bge _0812F486
	adds r0, r6, #0x0
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812F486
	ldr r3, [r6, #0x54]
	adds r3, r7, r3
	ldr r2, [r6, #0x40]
	adds r2, r2, r5
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r9
	ldrh r0, [r0, #0x04]
	strh r0, [r3, #0x00]
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r9
	ldrh r1, [r0, #0x04]
	ldrb r2, [r0, #0x0E]
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x03
	bl sub_812EF44
	ldr r1, [r6, #0x58]
	adds r1, r7, r1
	strh r0, [r1, #0x00]
_0812F486:
	adds r7, #0x02
	adds r5, #0x01
	ldrh r4, [r4, #0x00]
	cmp r5, r4
	blt _0812F39A
_0812F490:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_812F4A0
sub_812F4A0:
	push {r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x14]
	ldr r0, _0812F4FC @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r7, r0, r1
	ldr r5, [r7, #0x00]
	ldrb r0, [r6, #0x00]
	cmp r0, #0x03
	bls _0812F4F6
	adds r0, r6, #0x0
	adds r0, #0xB8
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812F4C4
	adds r0, r6, #0x0
	bl sub_812E0D0
_0812F4C4:
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _0812F500 @ =0x03000D48
	ldr r4, _0812F504 @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _0812F508 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _0812F50C @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_812CF54
	adds r5, r0, #0x0
	str r5, [r7, #0x00]
_0812F4F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0812F4FC: .4byte 0x0300034C
_0812F500: .4byte 0x03000D48
_0812F504: .4byte 0x0203FFB8
_0812F508: .4byte 0x00000A14
_0812F50C: .4byte 0x03000D4C
