	.syntax unified
	.text

	thumb_func_start sub_8152500
sub_8152500:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	ldr r1, _08152548 @ =0x00001CC4
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0815257C
	ldr r0, _0815254C @ =0x00001CB4
	adds r5, r4, r0
	ldr r0, [r5, #0x00]
	movs r1, #0x01
	bl sub_8150AC8
	ldr r1, _08152550 @ =0x00001C98
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrh r0, [r2, #0x36]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _0815257C
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x0C]
	asrs r1, r0, #0x08
	cmp r1, #0x0A
	ble _08152554
	adds r0, r2, #0x0
	movs r1, #0x00
	bl sub_815FA70
	b _0815257C
	.byte 0x00, 0x00
_08152548: .4byte 0x00001CC4
_0815254C: .4byte 0x00001CB4
_08152550: .4byte 0x00001C98
_08152554:
	cmp r1, #0x04
	ble _08152562
	adds r0, r2, #0x0
	movs r1, #0x04
	bl sub_815FA70
	b _0815257C
_08152562:
	movs r0, #0x05
	negs r0, r0
	cmp r1, r0
	ble _08152574
	adds r0, r2, #0x0
	movs r1, #0x05
	bl sub_815FA70
	b _0815257C
_08152574:
	adds r0, r2, #0x0
	movs r1, #0x06
	bl sub_815FA70
_0815257C:
	ldr r1, _081525B8 @ =0x00001C98
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x08]
	ldr r0, [r0, #0x04]
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	ldr r0, _081525BC @ =0x00001CB8
	adds r1, r4, r0
	ldr r0, [sp, #0x000]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, _081525C0 @ =0x00001CBC
	adds r1, r4, r0
	ldr r0, [sp, #0x004]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	ldr r1, _081525C4 @ =0x00001CB4
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r1, sp
	bl sub_8150B8C
	add sp, #0x008
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081525B8: .4byte 0x00001C98
_081525BC: .4byte 0x00001CB8
_081525C0: .4byte 0x00001CBC
_081525C4: .4byte 0x00001CB4
