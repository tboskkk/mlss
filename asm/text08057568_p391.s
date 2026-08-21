	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806C0E0
sub_806C0E0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0806C18A
	movs r4, #0x00
_0806C0F4:
	ldr r0, _0806C12C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806C136
	ldr r0, [r2, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806C130
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C136
	.byte 0x00, 0x00
_0806C12C: .4byte 0x03000FD8
_0806C130:
	adds r0, r2, #0x0
	bl sub_8086700
_0806C136:
	adds r1, r4, #0x1
	ldr r0, _0806C170 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806C17A
	ldr r0, [r2, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806C174
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C17A
	.byte 0x00, 0x00
_0806C170: .4byte 0x03000FD8
_0806C174:
	adds r0, r2, #0x0
	bl sub_8086700
_0806C17A:
	adds r4, #0x02
	cmp r4, #0x05
	ble _0806C0F4
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_807C298
_0806C18A:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_806C190
sub_806C190:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C1A2
	adds r0, r1, #0x0
	bl sub_807C298
_0806C1A2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
