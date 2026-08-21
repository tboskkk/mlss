	.syntax unified
	.text

	thumb_func_start make_btl_8028F54
make_btl_8028F54: @ 08028F54
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0xAD
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	movs r2, #0xAB
	lsls r2, r2, #0x02
	adds r5, r4, r2
	strh r0, [r5, #0x00]
	ldr r0, _08028FA8 @ =0x0000FFFF
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl process_disable
	movs r0, #0x02
	strb r0, [r4, #0x00]
	ldr r1, _08028FAC @ =0x03000C24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r1, _08028FB0 @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08028F88
	ldr r0, _08028FB4 @ =0x0800063C
	str r0, [r1, #0x00]
_08028F88:
	ldr r4, _08028FB8 @ =0x081E267C
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	adds r3, r5, #0x0
	bl init_btl_process_80FC25C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08028FA8: .4byte 0x0000FFFF
_08028FAC: .4byte 0x03000C24
_08028FB0: .4byte 0x03000C78
_08028FB4: .4byte 0x0800063C
_08028FB8: .4byte 0x081E267C
