	.syntax unified
	.text

	thumb_func_start sub_80261C0
sub_80261C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r2, r0, #0x0
	mov r12, r1
	movs r0, #0xFA
	lsls r0, r0, #0x01
	adds r1, r2, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080262B8
	movs r3, #0x9A
	lsls r3, r3, #0x01
	adds r7, r2, r3
	mov r2, r12
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _080261EC
	adds r0, #0xFF
_080261EC:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	mov r3, r12
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _080261FC
	adds r0, #0xFF
_080261FC:
	lsls r0, r0, #0x08
	lsrs r2, r0, #0x10
	mov r3, r12
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _0802620C
	ldr r3, _08026284 @ =0x000007FF
	adds r0, r0, r3
_0802620C:
	lsls r0, r0, #0x05
	lsrs r0, r0, #0x10
	movs r6, #0x00
	ldrb r1, [r1, #0x00]
	cmp r6, r1
	bge _080262B8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r10, r0
	lsls r2, r2, #0x10
	mov r8, r2
	mov r9, r1
_08026224:
	ldrb r1, [r7, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080262B0
	mov r2, r12
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bne _080262B0
	ldrb r3, [r7, #0x03]
	cmp r10, r3
	bne _080262B0
	mov r0, r12
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0802624E
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080262B0
_0802624E:
	ldrb r0, [r7, #0x01]
	lsls r2, r0, #0x04
	adds r4, r2, #0x0
	adds r4, #0x0F
	ldrb r0, [r7, #0x02]
	lsls r3, r0, #0x04
	adds r5, r3, #0x0
	adds r5, #0x0F
	adds r2, #0x04
	subs r4, #0x04
	adds r3, #0x07
	ldr r1, [sp, #0x000]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	str r0, [sp, #0x004]
	cmp r1, r2
	blt _08026288
	cmp r1, r4
	bgt _08026288
	mov r0, r8
	asrs r1, r0, #0x10
	cmp r1, r3
	blt _08026288
	cmp r1, r5
	bgt _08026288
	adds r0, r6, #0x0
	b _080262BC
_08026284: .4byte 0x000007FF
_08026288:
	subs r2, #0x08
	adds r4, #0x08
	subs r3, #0x08
	adds r5, #0x08
	ldr r1, [sp, #0x004]
	asrs r0, r1, #0x10
	cmp r0, r2
	blt _080262B0
	cmp r0, r4
	bgt _080262B0
	mov r2, r8
	asrs r0, r2, #0x10
	cmp r0, r3
	blt _080262B0
	cmp r0, r5
	bgt _080262B0
	movs r0, #0x80
	orrs r6, r0
	adds r0, r6, #0x0
	b _080262BC
_080262B0:
	adds r7, #0x0C
	adds r6, #0x01
	cmp r6, r9
	blt _08026224
_080262B8:
	movs r0, #0x01
	negs r0, r0
_080262BC:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
