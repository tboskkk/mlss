	.syntax unified
	.text

	thumb_func_start sub_8057B58
sub_8057B58:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08057BDC @ =0x08CDC288
	str r0, [r4, #0x18]
	ldr r1, _08057BE0 @ =0x00000584
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057B72
	adds r0, r4, #0x0
	bl sub_805C6B8
_08057B72:
	movs r0, #0xC0
	lsls r0, r0, #0x13
	bl sub_80184F4
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057B88
	bl free_heap_8018D9C
_08057B88:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057B96
	bl free_heap_8018D9C
_08057B96:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057BA4
	bl free_heap_8018D9C
_08057BA4:
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057BB2
	bl free_heap_8018D9C
_08057BB2:
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057BC0
	bl free_heap_8018D9C
_08057BC0:
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057BCE
	bl free_heap_8018D9C
_08057BCE:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
_08057BDC: .4byte 0x08CDC288
_08057BE0: .4byte 0x00000584
