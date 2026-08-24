	.syntax unified
	.text

	thumb_func_start sub_814BB80
sub_814BB80:
	push {r4, r5, lr}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814BBAC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814BBAC:
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r3, #0x18]
	subs r2, r0, r1
	str r2, [r3, #0x18]
	ldr r0, [r3, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	beq _0814BBFC
	movs r1, #0xEC
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1F
	cmp r0, #0x00
	beq _0814BBF4
	lsls r0, r1, #0x1E
	cmp r0, #0x00
	bge _0814BBF4
	add r1, sp, #0x010
	adds r0, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814BBF4
	ldr r0, _0814BBF0 @ =0x08149661
	b _0814BC0E
	.byte 0x00, 0x00
_0814BBF0: .4byte sub_8149660
_0814BBF4:
	ldr r0, _0814BBF8 @ =0x0814BC69
	b _0814BC0E
_0814BBF8: .4byte sub_814BC68
_0814BBFC:
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _0814BC10
	ldr r0, _0814BC18 @ =0x0814BE89
_0814BC0E:
	str r0, [r4, #0x00]
_0814BC10:
	add sp, #0x014
	pop {r4, r5}
	pop {r0}
	bx r0
_0814BC18: .4byte dword_814BE89 @ =0x0814BE89
