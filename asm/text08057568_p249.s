	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8074034
sub_8074034:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	adds r4, r2, #0x0
	adds r4, #0x84
	ldr r1, _080740AC @ =0x08198584
	adds r3, r2, #0x0
	adds r3, #0xA4
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _0807404A
	adds r0, #0xFF
_0807404A:
	asrs r0, r0, #0x08
	movs r5, #0xFF
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807405E
	adds r0, #0x3F
_0807405E:
	asrs r1, r0, #0x06
	movs r0, #0x90
	muls r1, r0
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	adds r4, r2, #0x0
	adds r4, #0x88
	ldr r1, _080740B0 @ =0x08198504
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _08074078
	adds r0, #0xFF
_08074078:
	asrs r0, r0, #0x08
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807408A
	adds r0, #0x3F
_0807408A:
	asrs r1, r0, #0x06
	movs r0, #0x30
	muls r1, r0
	ldr r0, [r4, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r2, #0x28]
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080740B4
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	b _080740B8
	.byte 0x00, 0x00
_080740AC: .4byte 0x08198584
_080740B0: .4byte 0x08198504
_080740B4:
	ldr r0, [r3, #0x00]
	adds r0, #0xE0
_080740B8:
	str r0, [r3, #0x00]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080740CC
	adds r0, r2, #0x0
	bl sub_807C298
_080740CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80740D4
sub_80740D4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08074110
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080740EA
	adds r1, #0xFF
_080740EA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080740F4
	adds r2, #0xFF
_080740F4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080740FE
	adds r3, #0xFF
_080740FE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074118 @ =0x000022F0
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_08074110:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_08074118: .4byte 0x000022F0
