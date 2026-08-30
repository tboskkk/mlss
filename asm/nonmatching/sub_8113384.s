	.syntax unified
	.text

	thumb_func_start sub_8113384
sub_8113384:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081133BE
	ldr r0, [r4, #0x28]
	ldr r1, _081133C4 @ =0x00000113
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r1, #0x05
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r0, _081133C8 @ =0x08112BBD
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8A
	bl play_sfx_80195B4
_081133BE:
	pop {r4}
	pop {r0}
	bx r0
_081133C4: .4byte 0x00000113
_081133C8: .4byte sub_8112BBC
