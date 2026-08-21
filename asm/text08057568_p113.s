	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80DA098
sub_80DA098:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DA0D6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DA0DC @ =0x080DA181
	str r0, [r4, #0x4C]
_080DA0D6:
	pop {r4}
	pop {r0}
	bx r0
_080DA0DC: .4byte sub_80DA180
