	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80DA3FC
sub_80DA3FC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DA44A
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x83
	bl play_sfx_80195B4
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, _080DA450 @ =0x00001349
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r0, _080DA454 @ =0x080DA301
	str r0, [r4, #0x60]
	movs r0, #0x00
	str r0, [r4, #0x54]
	ldr r0, _080DA458 @ =0x080DA45D
	str r0, [r4, #0x4C]
_080DA44A:
	pop {r4}
	pop {r0}
	bx r0
_080DA450: .4byte 0x00001349
_080DA454: .4byte sub_80DA300
_080DA458: .4byte sub_80DA45C
