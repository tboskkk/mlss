	.syntax unified
	.text

	thumb_func_start sub_8051628
sub_8051628:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	bl process_add
	ldr r0, _08051684 @ =0x08CDC1A8
	str r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08051688 @ =0x0300034C
	ldr r1, _0805168C @ =0x00000884
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	strh r4, [r6, #0x2A]
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r6, #0x24]
	strh r1, [r6, #0x1C]
	strh r1, [r6, #0x1E]
	strh r1, [r6, #0x20]
	strh r1, [r6, #0x22]
	movs r0, #0x78
	strh r0, [r6, #0x26]
	movs r0, #0x50
	strh r0, [r6, #0x28]
	ldr r1, _08051690 @ =0x083A0D2C
	ldrh r0, [r1, #0x00]
	ldr r2, _08051694 @ =0x0000FFFF
	cmp r0, r2
	beq _080516A0
_08051672:
	cmp r0, r4
	bne _08051698
	ldrh r0, [r1, #0x02]
	strh r0, [r6, #0x24]
	ldrh r0, [r1, #0x04]
	strh r0, [r6, #0x26]
	ldrh r0, [r1, #0x06]
	strh r0, [r6, #0x28]
	b _080516A0
_08051684: .4byte 0x08CDC1A8
_08051688: .4byte 0x0300034C
_0805168C: .4byte 0x00000884
_08051690: .4byte 0x083A0D2C
_08051694: .4byte 0x0000FFFF
_08051698:
	adds r1, #0x08
	ldrh r0, [r1, #0x00]
	cmp r0, r2
	bne _08051672
_080516A0:
	ldr r5, _0805172C @ =0x081E26C4
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x01
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl process_add
	ldr r0, _08051730 @ =0x08CDC1B8
	str r0, [r4, #0x18]
	str r4, [r6, #0x40]
	str r6, [r4, #0x14]
	adds r0, r4, #0x0
	bl process_disable
	ldr r4, _08051734 @ =0x081E26CC
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x08
	bl init_ybpa_process_8114B4C
	str r0, [r6, #0x48]
	str r6, [r0, #0x14]
	bl process_disable
	ldr r0, _08051738 @ =0x0000059C
	ldr r4, _0805173C @ =0x081E26D4
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	ldrh r3, [r6, #0x24]
	movs r2, #0x1C
	ldsh r1, [r6, r2]
	str r1, [sp, #0x000]
	movs r2, #0x1E
	ldsh r1, [r6, r2]
	str r1, [sp, #0x004]
	ldr r1, [r6, #0x48]
	str r1, [sp, #0x008]
	movs r1, #0x08
	adds r2, r4, #0x0
	bl sub_80575C8
	str r0, [r6, #0x44]
	str r6, [r0, #0x14]
	movs r0, #0xAE
	lsls r0, r0, #0x05
	movs r1, #0x00
	movs r2, #0x01
	movs r3, #0x80
	bl sub_8020994
	adds r0, r6, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0805172C: .4byte 0x081E26C4
_08051730: .4byte 0x08CDC1B8
_08051734: .4byte 0x081E26CC
_08051738: .4byte 0x0000059C
_0805173C: .4byte 0x081E26D4
