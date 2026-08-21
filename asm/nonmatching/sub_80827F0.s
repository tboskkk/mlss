	.syntax unified
	.text

	thumb_func_start sub_80827F0
sub_80827F0:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r1, _0808280C @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r4, #0xFC
	lsls r4, r4, #0x01
	adds r2, r0, r4
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08082810
	adds r0, #0x18
	b _08082818
_0808280C: .4byte 0x03000FD8
_08082810:
	ldr r0, _0808284C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r4, _08082850 @ =0x00003668
	adds r0, r0, r4
_08082818:
	str r0, [r2, #0x00]
	ldr r0, [r1, #0x00]
	movs r1, #0xFC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	movs r0, #0x03
	adds r1, r7, #0x0
	ands r1, r0
	ldrb r2, [r4, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	str r6, [r4, #0x04]
	ldr r0, [sp, #0x018]
	strh r0, [r4, #0x02]
	cmp r3, #0x00
	bge _08082854
	adds r0, r5, #0x0
	bl sub_80198B0
	lsrs r0, r0, #0x05
	b _08082856
	.byte 0x00, 0x00
_0808284C: .4byte 0x03000FDC
_08082850: .4byte 0x00003668
_08082854:
	lsrs r0, r3, #0x05
_08082856:
	lsls r2, r0, #0x02
	ldrh r1, [r4, #0x00]
	movs r0, #0x03
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #0x00]
	str r5, [r4, #0x0C]
	cmp r7, #0x00
	beq _0808288A
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bne _08082884
	ldr r0, _08082880 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xF8
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	b _0808288C
	.byte 0x00, 0x00
_08082880: .4byte 0x03000FD8
_08082884:
	ldr r0, [sp, #0x014]
	str r0, [r4, #0x10]
	b _0808288C
_0808288A:
	str r6, [r4, #0x10]
_0808288C:
	movs r0, #0x01
	str r0, [r4, #0x08]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
