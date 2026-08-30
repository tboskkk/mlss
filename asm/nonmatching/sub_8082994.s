	.syntax unified
	.text

	thumb_func_start sub_8082994
sub_8082994:
	push {r4, r5, lr}
	ldr r0, _080829CC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xFA
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _080829C4
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080829C4
	movs r5, #0x00
_080829AE:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _080829B8
	bl sprite_heap_free
_080829B8:
	strh r5, [r4, #0x00]
	str r5, [r4, #0x04]
	subs r4, #0x08
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080829AE
_080829C4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080829CC: .4byte 0x03000FD8
