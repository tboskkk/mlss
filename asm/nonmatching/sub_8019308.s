	.syntax unified
	.text

	thumb_func_start sub_8019308
sub_8019308:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	cmp r6, #0x00
	bne _0801931C
	bl sub_8019628
	lsls r5, r4, #0x01
	b _08019396
_0801931C:
	adds r0, r4, #0x0
	bl sub_80195F8
	lsls r0, r0, #0x18
	lsls r5, r4, #0x01
	cmp r0, #0x00
	beq _08019338
	ldr r0, _08019364 @ =0x0300034C
	ldr r1, _08019368 @ =0x00000898
	adds r0, r0, r1
	adds r0, r5, r0
	ldrh r0, [r0, #0x00]
	cmp r0, r6
	beq _08019396
_08019338:
	adds r0, r4, #0x1
	adds r1, r6, #0x0
	bl sub_819B970
	movs r0, #0x01
	negs r0, r0
	cmp r7, r0
	bne _0801937C
	ldr r2, _08019364 @ =0x0300034C
	movs r3, #0x8A
	lsls r3, r3, #0x04
	adds r0, r2, r3
	adds r0, r5, r0
	ldrh r1, [r0, #0x00]
	cmp r1, #0x00
	bne _0801936C
	adds r0, r4, #0x0
	movs r1, #0xFF
	movs r2, #0x00
	bl sub_80193B4
	b _08019388
_08019364: .4byte 0x0300034C
_08019368: .4byte 0x00000898
_0801936C:
	ldr r3, _08019378 @ =0x0000089C
	adds r0, r2, r3
	adds r0, r5, r0
	strh r1, [r0, #0x00]
	b _08019388
	.byte 0x00, 0x00
_08019378: .4byte 0x0000089C
_0801937C:
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_80193B4
_08019388:
	ldr r0, _080193A8 @ =0x0300034C
	ldr r1, _080193AC @ =0x000008A4
	adds r0, r0, r1
	adds r0, r5, r0
	movs r1, #0x96
	lsls r1, r1, #0x07
	strh r1, [r0, #0x00]
_08019396:
	ldr r0, _080193A8 @ =0x0300034C
	ldr r3, _080193B0 @ =0x00000898
	adds r0, r0, r3
	adds r0, r5, r0
	strh r6, [r0, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080193A8: .4byte 0x0300034C
_080193AC: .4byte 0x000008A4
_080193B0: .4byte 0x00000898
