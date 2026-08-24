	.syntax unified
	.text

	thumb_func_start sub_81166AC
sub_81166AC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	ldr r0, _081166BC @ =0x08CDC368
	str r0, [r5, #0x18]
	ldr r4, [r5, #0x2C]
	movs r6, #0x00
	b _081166F0
_081166BC: .4byte 0x08CDC368
_081166C0:
	ldrb r1, [r4, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _081166EC
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _081166E6
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	beq _081166E0
	bl free_heap_8018DA8
_081166E0:
	ldr r0, [r4, #0x10]
	bl free_heap_8018DA8
_081166E6:
	ldr r0, [r4, #0x0C]
	bl free_heap_8018DA8
_081166EC:
	adds r6, #0x01
	adds r4, #0x1C
_081166F0:
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	blt _081166C0
	ldr r0, [r5, #0x2C]
	cmp r0, #0x00
	beq _08116704
	bl free_heap_8018D9C
_08116704:
	ldr r0, [r5, #0x20]
	cmp r0, #0x00
	beq _0811670E
	bl free_heap_8018D9C
_0811670E:
	ldr r0, [r5, #0x1C]
	cmp r0, #0x00
	beq _08116718
	bl free_heap_8018D9C
_08116718:
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl process_remove
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
