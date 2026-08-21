	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8021C24
sub_8021C24:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x48]
	cmp r0, #0x00
	beq _08021C56
	ldrb r1, [r4, #0x13]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08021C56
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8021A18
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08021C4E
	ldr r0, [r4, #0x48]
	bl sprite_heap_free
	b _08021C56
_08021C4E:
	ldrb r0, [r2, #0x13]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x13]
_08021C56:
	ldr r1, [r4, #0x44]
	cmp r1, #0x00
	beq _08021C92
	ldr r0, _08021C84 @ =0x07FFFFFF
	cmp r1, r0
	bhi _08021CB4
	ldrb r1, [r4, #0x13]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08021CB4
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8021A18
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08021C88
	ldr r0, [r4, #0x44]
	bl sprite_heap_free
	b _08021CB4
	.byte 0x00, 0x00
_08021C84: .4byte 0x07FFFFFF
_08021C88:
	ldrb r0, [r2, #0x13]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x13]
	b _08021CB4
_08021C92:
	ldr r5, _08021CBC @ =0x0203FFB8
	ldrh r0, [r4, #0x2E]
	ldrh r1, [r4, #0x30]
	adds r0, r0, r1
	ldrh r1, [r5, #0x08]
	cmp r0, r1
	bne _08021CB4
	adds r0, r4, #0x0
	movs r1, #0x03
	bl sub_8021A18
	cmp r0, #0x00
	bne _08021CB4
	ldrh r0, [r5, #0x08]
	ldrh r1, [r4, #0x30]
	subs r0, r0, r1
	strh r0, [r5, #0x08]
_08021CB4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08021CBC: .4byte 0x0203FFB8
	thumb_func_start sprite_heap_alloc
sprite_heap_alloc:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	ldr r0, _08021D0C @ =0x0203FFB8
	ldr r1, [r0, #0x2C]
	adds r4, #0x0F
	movs r0, #0x10
	negs r0, r0
	ands r4, r0
	adds r4, #0x10
_08021CDC:
	ldr r2, [r1, #0x08]
	ldrb r3, [r1, #0x0C]
	cmp r3, #0x00
	bne _08021D38
	cmp r2, r4
	blt _08021D38
	adds r0, r4, #0x0
	adds r0, #0x10
	cmp r2, r0
	bcc _08021D10
	subs r2, r1, r4
	str r1, [r2, #0x00]
	ldr r0, [r1, #0x04]
	str r0, [r2, #0x04]
	cmp r0, #0x00
	beq _08021CFE
	str r2, [r0, #0x00]
_08021CFE:
	ldr r0, [r1, #0x08]
	subs r0, r0, r4
	str r0, [r2, #0x08]
	strb r3, [r2, #0x0C]
	str r2, [r1, #0x04]
	str r4, [r1, #0x08]
	b _08021D12
_08021D0C: .4byte 0x0203FFB8
_08021D10:
	str r2, [r1, #0x08]
_08021D12:
	movs r4, #0x00
	strb r5, [r1, #0x0C]
	strb r6, [r1, #0x0D]
	movs r2, #0x00
	strh r7, [r1, #0x0E]
	ldr r0, [r1, #0x08]
	subs r0, #0x10
	subs r0, r1, r0
	cmp r5, #0x02
	beq _08021D30
	cmp r5, #0x02
	ble _08021D40
	cmp r5, #0x03
	beq _08021D34
	b _08021D40
_08021D30:
	str r4, [r0, #0x00]
	b _08021D40
_08021D34:
	strb r2, [r0, #0x00]
	b _08021D40
_08021D38:
	ldr r1, [r1, #0x04]
	cmp r1, #0x00
	bne _08021CDC
	movs r0, #0x00
_08021D40:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
