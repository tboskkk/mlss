	.syntax unified
	.text

	thumb_func_start sub_8096FCC
sub_8096FCC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08097018 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08097010
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x06
	bl play_sfx_80195B4
	ldr r2, _0809701C @ =0x00002039
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08097020 @ =0x08097025
	str r0, [r5, #0x4C]
_08097010:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097018: .4byte 0x03000FD8
_0809701C: .4byte 0x00002039
_08097020: .4byte sub_8097024
