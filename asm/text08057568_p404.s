	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80774A4
sub_80774A4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8199F30
	adds r2, r4, #0x0
	adds r2, #0x9C
	movs r1, #0x01
	ands r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080774C8
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080774D4
_080774C8:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080774D4:
	ldr r0, _080774E0 @ =0x08076D91
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080774E0: .4byte sub_8076D90
	thumb_func_start sub_80774E4
sub_80774E4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080774FC
	adds r1, #0xFF
_080774FC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077506
	adds r2, #0xFF
_08077506:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077510
	adds r3, #0xFF
_08077510:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077530 @ =0x00002563
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x4B
	bl play_sfx_80195B4
	ldr r0, _08077534 @ =0x080776B5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077530: .4byte 0x00002563
_08077534: .4byte sub_80776B4
	thumb_func_start sub_8077538
sub_8077538:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08077550 @ =0x08076575
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08077550: .4byte sub_8076574
	thumb_func_start sub_8077554
sub_8077554:
	push {r4, lr}
	adds r4, r0, #0x0
	b _08077560
_0807755A:
	ldr r0, [r4, #0x30]
	bl sub_807C298
_08077560:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0807755A
	movs r0, #0x00
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
