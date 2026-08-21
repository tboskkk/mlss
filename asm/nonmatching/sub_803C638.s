	.syntax unified
	.text

	thumb_func_start sub_803C638
sub_803C638:
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldrh r2, [r1, #0x04]
	subs r0, r2, #0x5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x04
	bhi _0803C656
	adds r0, r1, #0x0
	bl sub_804FCD4
	b _0803C668
_0803C656:
	adds r0, r2, #0x0
	subs r0, #0x0A
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x02
	bhi _0803C668
	adds r0, r1, #0x0
	bl sub_80494D4
_0803C668:
	pop {r0}
	bx r0
