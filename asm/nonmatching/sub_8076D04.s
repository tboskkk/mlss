	.syntax unified
	.text

	thumb_func_start sub_8076D04
sub_8076D04:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08076D6C
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08076D1C
	adds r2, #0xFF
_08076D1C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08076D26
	adds r3, #0xFF
_08076D26:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08076D3C
	movs r0, #0x13
	b _08076D3E
_08076D3C:
	movs r0, #0x12
_08076D3E:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08076D68 @ =0x080770BD
	str r0, [r4, #0x4C]
	subs r1, #0x06
	movs r0, #0x11
	str r0, [r1, #0x00]
	b _08076D82
_08076D68: .4byte sub_80770BC
_08076D6C:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08076D82
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076D8C @ =0x08077119
	str r0, [r4, #0x4C]
_08076D82:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08076D8C: .4byte sub_8077118
