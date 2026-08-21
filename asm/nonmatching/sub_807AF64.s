	.syntax unified
	.text

	thumb_func_start sub_807AF64
sub_807AF64:
	push {r4, lr}
	ldr r0, _0807AFB0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x44]
	cmp r4, #0x00
	beq _0807AFCE
_0807AF70:
	ldr r1, [r4, #0x08]
	ldrh r0, [r4, #0x10]
	subs r0, #0x01
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	beq _0807AFB4
	ldrb r2, [r1, #0x12]
	cmp r0, #0x00
	bge _0807AF8E
	movs r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	bne _0807AFB4
_0807AF8E:
	movs r0, #0x78
	strh r0, [r1, #0x00]
	movs r0, #0x50
	strh r0, [r1, #0x02]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _0807AFC8
	adds r0, r1, #0x0
	bl sub_807BC90
	ldr r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
	b _0807AFC8
	.byte 0x00, 0x00
_0807AFB0: .4byte 0x03000FD8
_0807AFB4:
	adds r0, r1, #0x0
	bl sub_807FB34
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _0807AFC4
	bl free_heap_memory_8018C68
_0807AFC4:
	movs r0, #0x00
	str r0, [r4, #0x04]
_0807AFC8:
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _0807AF70
_0807AFCE:
	pop {r4}
	pop {r0}
	bx r0
