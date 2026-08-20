	.syntax unified
	.text

	thumb_func_start sub_803C4D8
sub_803C4D8:
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x04]
	adds r0, r1, #0x0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x08
	bls _0803C4FC
	adds r0, r1, #0x0
	subs r0, #0x1D
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x04
	bhi _0803C500
_0803C4FC:
	movs r0, #0x01
	b _0803C502
_0803C500:
	movs r0, #0x00
_0803C502:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
