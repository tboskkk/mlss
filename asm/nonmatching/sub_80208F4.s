	.syntax unified
	.text

	thumb_func_start sub_80208F4
sub_80208F4:
	push {r4, r5, r6, r7, lr}
	ldr r4, _08020980 @ =0x03000D48
	ldr r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	movs r1, #0x00
	str r1, [r4, #0x00]
	ldr r0, _08020984 @ =0x03000D4C
	str r1, [r0, #0x00]
	ldr r0, _08020988 @ =0x03000D50
	str r1, [r0, #0x00]
	movs r5, #0x00
_0802090C:
	ldr r7, _0802098C @ =0x03000D70
	ldrb r0, [r7, #0x00]
	asrs r0, r5
	movs r6, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _0802092E
	lsls r4, r5, #0x02
	ldr r0, _08020990 @ =0x03000D58
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
_0802092E:
	adds r4, r5, #0x1
	ldrb r0, [r7, #0x00]
	asrs r0, r4
	ands r0, r6
	cmp r0, #0x00
	beq _0802094E
	lsls r4, r4, #0x02
	ldr r0, _08020990 @ =0x03000D58
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
_0802094E:
	adds r4, r5, #0x2
	ldrb r0, [r7, #0x00]
	asrs r0, r4
	ands r0, r6
	cmp r0, #0x00
	beq _0802096E
	lsls r4, r4, #0x02
	ldr r0, _08020990 @ =0x03000D58
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
_0802096E:
	adds r5, #0x03
	cmp r5, #0x05
	ble _0802090C
	movs r0, #0x00
	strb r0, [r7, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08020980: .4byte 0x03000D48
_08020984: .4byte 0x03000D4C
_08020988: .4byte 0x03000D50
_0802098C: .4byte 0x03000D70
_08020990: .4byte 0x03000D58
