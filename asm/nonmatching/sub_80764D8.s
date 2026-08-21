	.syntax unified
	.text

	thumb_func_start sub_80764D8
sub_80764D8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0807656C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08076510
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _08076510
	adds r5, r4, #0x0
	adds r5, #0xAE
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bne _08076510
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	strh r0, [r5, #0x00]
_08076510:
	ldr r0, _0807656C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08076544
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _08076544
	adds r5, r4, #0x0
	adds r5, #0xB0
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bne _08076544
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	strh r0, [r5, #0x00]
_08076544:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08076564
	ldr r0, [r4, #0x30]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076570 @ =0x080772F1
	str r0, [r4, #0x4C]
_08076564:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807656C: .4byte 0x03000FD8
_08076570: .4byte sub_80772F0
