	.syntax unified
	.text

	thumb_func_start sub_80292EC
sub_80292EC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r5, #0x00
	b _0802931A
_080292F4:
	lsls r1, r5, #0x02
	adds r0, r4, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08029318
	movs r3, #0xCE
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r1, [r0, #0x00]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08029318:
	adds r5, #0x01
_0802931A:
	ldr r1, _0802937C @ =0x0000010B
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r5, r0
	blt _080292F4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xB0
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xB4
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xB8
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xBC
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xC0
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802937C: .4byte 0x0000010B
