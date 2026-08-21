	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8019588
sub_8019588:
	push {lr}
	bl sub_819BABC
	adds r1, r0, #0x0
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start stop_all_sfx_801959C
stop_all_sfx_801959C: @ 0801959C
	push {lr}
	bl sub_819BA00
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start stop_sfx_80195A8
stop_sfx_80195A8: @ 080195A8
	push {lr}
	bl sub_819B9E8
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start play_sfx_80195B4
play_sfx_80195B4: @ 080195B4
	push {r4, lr}
	adds r4, r1, #0x0
	bl sub_819B9D0
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _080195D2
	ldr r0, _080195F4 @ =0x0300034C
	movs r1, #0x89
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080195EC
_080195D2:
	ldr r0, _080195F4 @ =0x0300034C
	movs r1, #0x89
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080195E2
	movs r4, #0xFF
_080195E2:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x00
	bl sub_8019508
_080195EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080195F4: .4byte 0x0300034C
	thumb_func_start sub_80195F8
sub_80195F8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_819BA2C
	adds r1, r0, #0x0
	adds r4, #0x01
	asrs r1, r4
	movs r0, #0x01
	ands r0, r1
	pop {r4}
	pop {r1}
	bx r1
