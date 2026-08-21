	.syntax unified
	.text

	thumb_func_start sub_8106EB0
sub_8106EB0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08106EE0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08106ED8
	adds r2, #0x39
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	bl sub_8081EAC
	ldr r0, _08106EE4 @ =0x08106E59
	str r0, [r4, #0x04]
	movs r0, #0x04
	bl sub_80F75D8
_08106ED8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106EE0: .4byte 0x03000FD8
_08106EE4: .4byte sub_8106E58
