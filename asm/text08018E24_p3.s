	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80198B0
sub_80198B0:
	push {r4, lr}
	adds r3, r0, #0x0
	ldrb r2, [r3, #0x00]
	lsrs r1, r2, #0x06
	movs r0, #0x3F
	ands r2, r0
	cmp r1, #0x00
	beq _08019936
	movs r0, #0x06
	mov r12, r0
	adds r4, r1, #0x0
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0801990A
	cmp r1, #0x03
	bge _080198F6
	cmp r1, #0x02
	bge _080198E6
	adds r3, #0x01
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x06
	adds r2, r2, r0
	movs r0, #0x0E
	mov r12, r0
	subs r4, #0x01
_080198E6:
	adds r3, #0x01
	ldrb r1, [r3, #0x00]
	mov r0, r12
	lsls r1, r0
	adds r2, r2, r1
	movs r0, #0x08
	add r12, r0
	subs r4, #0x01
_080198F6:
	adds r3, #0x01
	ldrb r1, [r3, #0x00]
	mov r0, r12
	lsls r1, r0
	adds r2, r2, r1
	movs r0, #0x08
	add r12, r0
	subs r4, #0x01
	cmp r4, #0x00
	beq _08019936
_0801990A:
	ldrb r1, [r3, #0x01]
	mov r0, r12
	lsls r1, r0
	adds r2, r2, r1
	adds r0, #0x08
	ldrb r1, [r3, #0x02]
	lsls r1, r0
	adds r2, r2, r1
	adds r0, #0x08
	ldrb r1, [r3, #0x03]
	lsls r1, r0
	adds r2, r2, r1
	adds r0, #0x08
	adds r3, #0x04
	ldrb r1, [r3, #0x00]
	lsls r1, r0
	adds r2, r2, r1
	movs r0, #0x20
	add r12, r0
	subs r4, #0x04
	cmp r4, #0x00
	bne _0801990A
_08019936:
	adds r2, #0x01
	adds r0, r2, #0x0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_8019940
sub_8019940:
	push {r4, r5, lr}
	ldr r4, _08019988 @ =0x0800063C
	ldr r5, _0801998C @ =0x08000534
	subs r4, r4, r5
	ldr r2, _08019990 @ =0x081DD7D0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	ldr r0, _08019994 @ =0x03000C84
	str r1, [r0, #0x00]
	cmp r4, #0x00
	bge _08019960
	adds r4, #0x03
_08019960:
	lsls r2, r4, #0x09
	lsrs r2, r2, #0x0B
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r5, #0x0
	bl CpuSet
	ldr r1, _08019998 @ =0x03000C78
	ldr r0, _0801999C @ =0x0800063C
	str r0, [r1, #0x00]
	ldr r0, _080199A0 @ =0x03000D08
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _080199A4 @ =0x03000C80
	strb r1, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08019988: .4byte 0x0800063C
_0801998C: .4byte 0x08000534
_08019990: .4byte 0x081DD7D0
_08019994: .4byte 0x03000C84
_08019998: .4byte 0x03000C78
_0801999C: .4byte 0x0800063C
_080199A0: .4byte 0x03000D08
_080199A4: .4byte 0x03000C80
