	.syntax unified
	.text

	thumb_func_start sub_8171B60
sub_8171B60:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08171BE8 @ =0x08CDD278
	str r0, [r4, #0x18]
	ldr r0, _08171BEC @ =0x00001CE2
	ldr r1, [r4, #0x30]
	adds r1, #0xDC
	ldrh r1, [r1, #0x00]
	bl sub_80E9A6C
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08171B80
	bl free_heap_8018DA8
_08171B80:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	beq _08171B8C
	movs r1, #0x03
	bl sub_8163280
_08171B8C:
	ldr r2, [r4, #0x24]
	cmp r2, #0x00
	beq _08171BA2
	ldr r1, [r2, #0x18]
	movs r3, #0x10
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x14]
	movs r1, #0x03
	bl _call_via_r2
_08171BA2:
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _08171BAE
	movs r1, #0x03
	bl sub_8165144
_08171BAE:
	ldr r2, [r4, #0x1C]
	cmp r2, #0x00
	beq _08171BC4
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08171BC4:
	bl sub_8150A38
	ldr r0, [r4, #0x14]
	bl process_enable
	adds r0, r4, #0x0
	adds r0, #0x40
	movs r1, #0x02
	bl sub_8163308
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08171BE8: .4byte 0x08CDD278
_08171BEC: .4byte 0x00001CE2
