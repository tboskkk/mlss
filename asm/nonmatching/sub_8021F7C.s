	.syntax unified
	.text

	thumb_func_start sub_8021F7C
sub_8021F7C:
	push {r4, r5, lr}
	ldr r0, _08021FB8 @ =0x0203FFB8
	ldr r4, [r0, #0x30]
	cmp r4, #0x00
	beq _08021FCC
_08021F86:
	ldr r5, [r4, #0x68]
	adds r0, r4, #0x0
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08021FC6
	adds r0, r4, #0x0
	bl sub_801E68C
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08021FC6
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08021FBC
	adds r0, r4, #0x0
	bl sprite_hide_8021F20
	b _08021FC6
	.byte 0x00, 0x00
_08021FB8: .4byte 0x0203FFB8
_08021FBC:
	cmp r0, #0x06
	bne _08021FC6
	adds r0, r4, #0x0
	bl sub_8021308
_08021FC6:
	adds r4, r5, #0x0
	cmp r4, #0x00
	bne _08021F86
_08021FCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
