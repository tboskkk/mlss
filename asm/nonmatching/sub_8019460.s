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
