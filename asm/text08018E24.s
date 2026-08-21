	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8019460
sub_8019460:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	cmp r7, #0x00
	bne _08019490
	ldr r0, _08019488 @ =0x0300034C
	lsls r1, r6, #0x01
	ldr r2, _0801948C @ =0x000008A4
	adds r0, r0, r2
	adds r1, r1, r0
	lsls r0, r3, #0x08
	strh r0, [r1, #0x00]
	adds r0, r6, #0x1
	adds r1, r3, #0x0
	bl sub_819BA10
	b _080194FC
_08019488: .4byte 0x0300034C
_0801948C: .4byte 0x000008A4
_08019490:
	lsls r0, r3, #0x08
	ldr r5, _080194D8 @ =0x0300034C
	lsls r2, r6, #0x01
	ldr r3, _080194DC @ =0x000008B8
	adds r1, r5, r3
	adds r1, r2, r1
	movs r3, #0x00
	strh r0, [r1, #0x00]
	ldr r4, _080194E0 @ =0x000008B4
	adds r1, r5, r4
	adds r1, r6, r1
	strb r7, [r1, #0x00]
	adds r4, #0x02
	adds r1, r5, r4
	adds r1, r6, r1
	strb r3, [r1, #0x00]
	ldr r1, _080194E4 @ =0x000008BC
	adds r4, r5, r1
	adds r4, r2, r4
	ldr r3, _080194E8 @ =0x000008A4
	adds r1, r5, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x00]
	lsls r1, r1, #0x08
	subs r0, r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	strh r0, [r4, #0x00]
	cmp r6, #0x00
	bne _080194F0
	ldr r4, _080194EC @ =0x0000088D
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r2, #0x20
	b _080194F8
_080194D8: .4byte 0x0300034C
_080194DC: .4byte 0x000008B8
_080194E0: .4byte 0x000008B4
_080194E4: .4byte 0x000008BC
_080194E8: .4byte 0x000008A4
_080194EC: .4byte 0x0000088D
_080194F0:
	ldr r1, _08019504 @ =0x0000088D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x40
_080194F8:
	orrs r1, r2
	strb r1, [r0, #0x00]
_080194FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08019504: .4byte 0x0000088D
	thumb_func_start sub_8019508
sub_8019508:
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	cmp r5, #0x00
	bne _08019530
	ldr r0, _0801952C @ =0x0300034C
	lsls r1, r2, #0x08
	movs r3, #0x89
	lsls r3, r3, #0x04
	adds r0, r0, r3
	strh r1, [r0, #0x00]
	movs r0, #0x00
	adds r1, r2, #0x0
	bl sub_819B9B4
	b _0801956C
_0801952C: .4byte 0x0300034C
_08019530:
	lsls r0, r2, #0x08
	ldr r4, _08019574 @ =0x0300034C
	ldr r2, _08019578 @ =0x00000894
	adds r1, r4, r2
	movs r2, #0x00
	strh r0, [r1, #0x00]
	ldr r3, _0801957C @ =0x00000892
	adds r1, r4, r3
	strb r5, [r1, #0x00]
	adds r3, #0x01
	adds r1, r4, r3
	strb r2, [r1, #0x00]
	ldr r1, _08019580 @ =0x0000088D
	adds r3, r4, r1
	ldrb r1, [r3, #0x00]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r3, #0x00]
	movs r2, #0x89
	lsls r2, r2, #0x04
	adds r1, r4, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x08
	subs r0, r0, r1
	adds r1, r5, #0x0
	bl __divsi3
	ldr r3, _08019584 @ =0x00000896
	adds r4, r4, r3
	strh r0, [r4, #0x00]
_0801956C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08019574: .4byte 0x0300034C
_08019578: .4byte 0x00000894
_0801957C: .4byte 0x00000892
_08019580: .4byte 0x0000088D
_08019584: .4byte 0x00000896
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
