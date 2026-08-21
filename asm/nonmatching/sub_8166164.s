	.syntax unified
	.text

	thumb_func_start sub_8166164
sub_8166164:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _08166244 @ =0x08CDD128
	str r0, [r5, #0x18]
	ldr r0, _08166248 @ =0x00001CDE
	ldr r1, [r5, #0x5C]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_80E9A6C
	ldr r0, [r5, #0x5C]
	cmp r0, #0x01
	ble _0816618A
	movs r0, #0xFA
	lsls r0, r0, #0x01
	movs r1, #0x01
	bl sub_8163134
_0816618A:
	ldr r4, [r5, #0x40]
	cmp r4, #0x00
	beq _081661A2
	movs r1, #0x8C
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl free_heap_memory_8018C68
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_081661A2:
	ldr r0, [r5, #0x34]
	cmp r0, #0x00
	beq _081661AE
	movs r1, #0x03
	bl sub_81636C4
_081661AE:
	ldr r2, [r5, #0x30]
	cmp r2, #0x00
	beq _081661C4
	ldr r1, [r2, #0x10]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_081661C4:
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	beq _081661D0
	movs r1, #0x03
	bl sub_8163280
_081661D0:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	beq _081661DC
	movs r1, #0x03
	bl sub_8163804
_081661DC:
	ldr r2, [r5, #0x4C]
	cmp r2, #0x00
	beq _081661F2
	ldr r1, [r2, #0x18]
	movs r3, #0x10
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x14]
	movs r1, #0x03
	bl _call_via_r2
_081661F2:
	ldr r0, [r5, #0x44]
	cmp r0, #0x00
	beq _081661FE
	movs r1, #0x03
	bl sub_8165454
_081661FE:
	ldr r0, [r5, #0x48]
	cmp r0, #0x00
	beq _0816620A
	movs r1, #0x03
	bl sub_8165144
_0816620A:
	ldr r2, [r5, #0x1C]
	cmp r2, #0x00
	beq _08166220
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08166220:
	bl sub_8150A38
	ldr r0, [r5, #0x14]
	bl process_enable
	adds r0, r5, #0x0
	adds r0, #0x50
	movs r1, #0x02
	bl sub_8163308
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl process_remove
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08166244: .4byte 0x08CDD128
_08166248: .4byte 0x00001CDE
