	.syntax unified
	.text

	thumb_func_start sub_80F8B34
sub_80F8B34:
	push {lr}
	adds r3, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x07
	bhi _080F8B54
	ldr r0, _080F8B50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F8B64
_080F8B50: .4byte 0x03000FD8
_080F8B54:
	ldr r1, _080F8B7C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F8B64:
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080F8B78
	adds r2, r3, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080F8B80 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x00]
_080F8B78:
	pop {r0}
	bx r0
_080F8B7C: .4byte 0x03000FDC
_080F8B80: .4byte 0x0000FFFD
