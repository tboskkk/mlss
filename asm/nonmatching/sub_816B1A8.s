	.syntax unified
	.text

	thumb_func_start sub_816B1A8
sub_816B1A8:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816B20C
	ldr r0, _0816B214 @ =0x08198504
	ldr r1, [r4, #0x7C]
	movs r2, #0xFF
	ands r1, r2
	lsls r2, r1, #0x01
	adds r0, r2, r0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	cmp r1, #0x00
	bge _0816B1CE
	adds r1, #0x3F
_0816B1CE:
	asrs r1, r1, #0x06
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	muls r1, r0
	ldr r0, [r4, #0x6C]
	adds r5, r0, r1
	ldr r0, _0816B218 @ =0x08198584
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0816B1EA
	adds r0, #0x3F
_0816B1EA:
	asrs r1, r0, #0x06
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r3, [r4, #0x74]
	adds r3, r3, r0
	movs r0, #0x16
	str r0, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8163978
_0816B20C:
	add sp, #0x008
	pop {r4, r5}
	pop {r0}
	bx r0
_0816B214: .4byte 0x08198504
_0816B218: .4byte 0x08198584
