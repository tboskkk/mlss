	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80187A8
sub_80187A8:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x04
	adds r1, #0x04
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x04
	adds r1, #0x04
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x04
	adds r1, #0x04
	ldm r0!, {r2}
	stm r1!, {r2}
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_8018818
sub_8018818:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	ldr r4, _08018918 @ =0x0300034C
	adds r0, r4, #0x0
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	ldrh r0, [r4, #0x28]
	lsrs r1, r1, #0x16
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	mov r3, sp
	lsrs r0, r1, #0x16
	movs r2, #0x01
	ands r0, r2
	strb r0, [r3, #0x00]
	lsrs r0, r1, #0x14
	ands r0, r2
	strb r0, [r3, #0x01]
	lsrs r0, r1, #0x17
	ands r0, r2
	strb r0, [r3, #0x02]
	mov r0, sp
	lsrs r1, r1, #0x15
	ands r1, r2
	strb r1, [r0, #0x03]
	movs r6, #0x00
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r0, [r0, #0x00]
	lsls r3, r0, #0x1C
	lsrs r0, r3, #0x1E
	mov r8, r4
	cmp r6, r0
	bge _0801888A
	mov r2, sp
	mov r12, r3
	ldrb r5, [r2, #0x02]
	ldrb r0, [r2, #0x01]
	mov r9, r0
_08018870:
	ldrb r3, [r2, #0x00]
	strb r1, [r2, #0x00]
	adds r1, r5, #0x0
	mov r5, r9
	mov r9, r3
	adds r6, #0x01
	mov r4, r12
	lsrs r0, r4, #0x1E
	cmp r6, r0
	blt _08018870
	strb r3, [r2, #0x01]
	strb r5, [r2, #0x02]
	strb r1, [r2, #0x03]
_0801888A:
	mov r3, r8
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080188A6
	mov r0, sp
	ldrb r2, [r0, #0x00]
	mov r1, sp
	ldrb r0, [r0, #0x02]
	strb r0, [r1, #0x00]
	mov r0, sp
	strb r2, [r0, #0x02]
_080188A6:
	ldrb r1, [r3, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080188BE
	mov r0, sp
	ldrb r2, [r0, #0x01]
	mov r1, sp
	ldrb r0, [r0, #0x03]
	strb r0, [r1, #0x01]
	mov r0, sp
	strb r2, [r0, #0x03]
_080188BE:
	ldr r0, _0801891C @ =0x0000FF0F
	ands r7, r0
	mov r0, sp
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x06
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x04
	orrs r1, r0
	mov r0, sp
	ldrb r0, [r0, #0x02]
	lsls r0, r0, #0x07
	orrs r1, r0
	mov r0, sp
	ldrb r0, [r0, #0x03]
	lsls r0, r0, #0x05
	orrs r1, r0
	orrs r7, r1
	mov r4, r8
	adds r4, #0x7C
	ldrh r1, [r4, #0x00]
	mov r2, r8
	ldrh r0, [r2, #0x3C]
	bics r0, r1
	movs r5, #0x00
	strh r0, [r2, #0x3C]
	mov r0, r8
	adds r0, #0x7A
	ldrh r0, [r0, #0x00]
	orrs r7, r0
	ldrh r0, [r4, #0x00]
	orrs r7, r0
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x01
	bl sub_8018920
	strh r5, [r4, #0x00]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08018918: .4byte 0x0300034C
_0801891C: .4byte 0x0000FF0F
	thumb_func_start sub_8018920
sub_8018920:
	push {r4, r5, r6, r7, lr}
	lsls r2, r1, #0x02
	adds r2, r2, r1
	lsls r2, r2, #0x02
	ldr r1, _08018960 @ =0x03000374
	adds r2, r2, r1
	lsls r0, r0, #0x16
	lsrs r5, r0, #0x16
	ldrh r1, [r2, #0x00]
	adds r0, r5, #0x0
	bics r0, r1
	strh r0, [r2, #0x02]
	bics r1, r5
	strh r1, [r2, #0x04]
	movs r4, #0x00
	ldrh r7, [r2, #0x00]
	mov r12, r4
	adds r3, r2, #0x0
	adds r3, #0x0A
	ldr r6, _08018964 @ =0x0839EC6C
_08018948:
	ldrh r1, [r6, #0x00]
	ands r1, r5
	cmp r1, #0x00
	beq _0801897C
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08018968
	orrs r4, r1
	ldrb r0, [r2, #0x08]
	strb r0, [r3, #0x00]
	b _0801897E
_08018960: .4byte 0x03000374
_08018964: .4byte 0x0839EC6C
_08018968:
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0801897E
	orrs r4, r1
	ldrb r0, [r2, #0x09]
	strb r0, [r3, #0x00]
	b _0801897E
_0801897C:
	strb r1, [r3, #0x00]
_0801897E:
	ldrh r1, [r6, #0x02]
	ands r1, r5
	cmp r1, #0x00
	beq _080189AA
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08018996
	orrs r4, r1
	ldrb r0, [r2, #0x08]
	strb r0, [r3, #0x01]
	b _080189AC
_08018996:
	ldrb r0, [r3, #0x01]
	subs r0, #0x01
	strb r0, [r3, #0x01]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080189AC
	orrs r4, r1
	ldrb r0, [r2, #0x09]
	strb r0, [r3, #0x01]
	b _080189AC
_080189AA:
	strb r1, [r3, #0x01]
_080189AC:
	adds r3, #0x02
	adds r6, #0x04
	movs r0, #0x02
	add r12, r0
	mov r0, r12
	cmp r0, #0x07
	bls _08018948
	strh r4, [r2, #0x06]
	strh r5, [r2, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
