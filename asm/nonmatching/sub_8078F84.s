	.syntax unified
	.text

	thumb_func_start sub_8078F84
sub_8078F84:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08078FFE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078F9A
	adds r1, #0xFF
_08078F9A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078FA4
	adds r2, #0xFF
_08078FA4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078FAE
	adds r3, #0xFF
_08078FAE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08079008 @ =0x00002A9D
	bl sub_80DF024
	ldr r2, _0807900C @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08079010 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r4, #0x18]
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r1, _08079014 @ =0x03000ED0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
_08078FFE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079008: .4byte 0x00002A9D
_0807900C: .4byte 0x00004029
_08079010: .4byte 0x03000F6C
_08079014: .4byte 0x03000ED0
