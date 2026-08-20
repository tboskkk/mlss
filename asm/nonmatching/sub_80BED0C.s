	.syntax unified
	.text

	thumb_func_start sub_80BED0C
sub_80BED0C:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r0, _080BED78 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r0, #0x08
	mov r12, r0
	ldr r2, [r3, #0x2C]
	ldr r0, _080BED7C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080BED3E
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BED3A
	cmp r1, #0x04
	bne _080BED3E
_080BED3A:
	ldr r0, _080BED80 @ =0x080BF3BD
	str r0, [r3, #0x4C]
_080BED3E:
	ldr r0, [r2, #0x4C]
	cmp r0, #0x00
	beq _080BED62
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x18]
	cmp r0, r1
	blt _080BED72
	mov r0, r12
	adds r0, #0xB2
	movs r4, #0x00
	ldsh r2, [r0, r4]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _080BED5C
	adds r0, #0xFF
_080BED5C:
	asrs r0, r0, #0x08
	cmp r2, r0
	blt _080BED72
_080BED62:
	mov r2, r12
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080BED84 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080BED88 @ =0x080BED8D
	str r0, [r3, #0x4C]
_080BED72:
	pop {r4}
	pop {r0}
	bx r0
_080BED78: .4byte 0x03000FD8
_080BED7C: .4byte 0x0300034C
_080BED80: .4byte sub_80BF3BC
_080BED84: .4byte 0x00000FFF
_080BED88: .4byte sub_80BED8C
