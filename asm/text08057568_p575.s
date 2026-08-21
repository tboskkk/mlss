	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8132C54
sub_8132C54:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r5, [r1, #0x0C]
	adds r0, r0, r5
	strh r0, [r1, #0x0C]
	adds r3, r4, #0x0
	adds r3, #0xB2
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r2, [r4, #0x10]
	adds r2, r2, r0
	str r2, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r3, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0x40]
	movs r1, #0xB8
	lsls r1, r1, #0x05
	adds r0, r0, r1
	cmp r2, r0
	bgt _08132CDC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	adds r0, #0x08
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x28]
	ldr r2, [r0, #0x10]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r1, [r4, #0x28]
	ldr r0, _08132CE4 @ =0x08132D4D
	str r0, [r1, #0x54]
	adds r0, r4, #0x0
	bl sub_807C298
_08132CDC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08132CE4: .4byte sub_8132D4C
