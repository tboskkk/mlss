	.syntax unified
	.text

	thumb_func_start sub_8113CD4
sub_8113CD4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r2, [r1, #0x28]
	ldr r0, [r2, #0x38]
	cmp r1, r0
	beq _08113CE6
	movs r0, #0x01
	b _08113DA4
_08113CE6:
	ldr r1, [r4, #0x38]
	ldr r0, [r2, #0x40]
	cmp r1, r0
	blt _08113DA0
	ldr r0, [r4, #0x10]
	cmp r1, r0
	blt _08113DA0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08113CFC
	adds r2, #0xFF
_08113CFC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08113D06
	adds r3, #0xFF
_08113D06:
	asrs r3, r3, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x50
	bl sub_808843C
	ldr r1, _08113DAC @ =0x0820114C
	adds r5, r4, #0x0
	adds r5, #0xAE
	movs r2, #0x00
	ldsh r0, [r5, r2]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_80880C4
	ldr r0, [r4, #0x28]
	ldr r1, _08113DB0 @ =0x00000113
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	eors r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08113DB4 @ =0x08113DC1
	str r0, [r4, #0x4C]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	movs r2, #0x00
	ldsh r1, [r5, r2]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r1, r0
	blt _08113D6E
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
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
_08113D6E:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08113D76
	adds r1, #0xFF
_08113D76:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08113D80
	adds r2, #0xFF
_08113D80:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08113D8A
	adds r3, #0xFF
_08113D8A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08113DB8 @ =0x00002AFB
	bl sub_80DF024
	ldr r0, _08113DBC @ =0x00000119
	movs r4, #0x01
	negs r4, r4
	adds r1, r4, #0x0
	bl play_sfx_80195B4
_08113DA0:
	movs r0, #0x01
	negs r0, r0
_08113DA4:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_08113DAC: .4byte dword_820114C @ =0x0820114C
_08113DB0: .4byte 0x00000113
_08113DB4: .4byte sub_8113DC0
_08113DB8: .4byte 0x00002AFB
_08113DBC: .4byte 0x00000119
