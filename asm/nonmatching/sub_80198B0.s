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
