	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8029830
sub_8029830:
	push {r4, lr}
	adds r3, r0, #0x0
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r2, r3, r4
	ldr r0, [r2, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r1, r3, r4
	ldrh r1, [r1, #0x00]
	ldr r3, _08029870 @ =0x0000023E
	adds r0, r0, r3
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x00]
	ldr r4, _08029874 @ =0x00000351
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08029870: .4byte 0x0000023E
_08029874: .4byte 0x00000351
	thumb_func_start sub_8029878
sub_8029878:
	push {lr}
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x50
	bl play_sfx_80195B4
	pop {r0}
	bx r0
