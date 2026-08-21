	.syntax unified
	.text

	thumb_func_start sub_80193B4
sub_80193B4:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	cmp r6, #0x00
	bne _080193EC
	ldr r0, _080193E4 @ =0x0300034C
	lsls r1, r7, #0x01
	ldr r4, _080193E8 @ =0x0000089C
	adds r2, r0, r4
	adds r2, r1, r2
	adds r4, #0x04
	adds r0, r0, r4
	adds r1, r1, r0
	lsls r0, r3, #0x08
	strh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	adds r0, r7, #0x1
	adds r1, r3, #0x0
	bl sub_819B9B4
	b _08019454
_080193E4: .4byte 0x0300034C
_080193E8: .4byte 0x0000089C
_080193EC:
	lsls r0, r3, #0x08
	ldr r5, _08019434 @ =0x0300034C
	lsls r2, r7, #0x01
	ldr r3, _08019438 @ =0x000008AC
	adds r1, r5, r3
	adds r1, r2, r1
	movs r3, #0x00
	strh r0, [r1, #0x00]
	ldr r4, _0801943C @ =0x000008A8
	adds r1, r5, r4
	adds r1, r7, r1
	strb r6, [r1, #0x00]
	adds r4, #0x02
	adds r1, r5, r4
	adds r1, r7, r1
	strb r3, [r1, #0x00]
	movs r1, #0x8B
	lsls r1, r1, #0x04
	adds r4, r5, r1
	adds r4, r2, r4
	ldr r3, _08019440 @ =0x0000089C
	adds r1, r5, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x00]
	subs r0, r0, r1
	adds r1, r6, #0x0
	bl __divsi3
	strh r0, [r4, #0x00]
	cmp r7, #0x00
	bne _08019448
	ldr r4, _08019444 @ =0x0000088D
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r2, #0x08
	b _08019450
_08019434: .4byte 0x0300034C
_08019438: .4byte 0x000008AC
_0801943C: .4byte 0x000008A8
_08019440: .4byte 0x0000089C
_08019444: .4byte 0x0000088D
_08019448:
	ldr r1, _0801945C @ =0x0000088D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x10
_08019450:
	orrs r1, r2
	strb r1, [r0, #0x00]
_08019454:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801945C: .4byte 0x0000088D
