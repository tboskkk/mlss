	.syntax unified
	.text

	thumb_func_start sub_81647E8
sub_81647E8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	adds r4, r2, #0x0
	adds r5, r3, #0x0
	bl sub_816507C
	str r4, [r6, #0x28]
	cmp r4, #0x03
	bgt _08164802
	movs r0, #0x04
	str r0, [r6, #0x28]
_08164802:
	str r5, [r6, #0x2C]
	cmp r5, #0x03
	bgt _0816480C
	movs r0, #0x04
	str r0, [r6, #0x2C]
_0816480C:
	ldrb r1, [r7, #0x00]
	str r1, [r6, #0x30]
	ldrb r0, [r7, #0x01]
	str r0, [r6, #0x34]
	lsls r1, r1, #0x03
	ldr r0, [r6, #0x28]
	adds r0, r0, r1
	cmp r0, #0xEC
	ble _08164824
	movs r0, #0xEC
	subs r0, r0, r1
	str r0, [r6, #0x28]
_08164824:
	ldr r0, [r6, #0x34]
	lsls r1, r0, #0x03
	ldr r0, [r6, #0x2C]
	adds r0, r0, r1
	cmp r0, #0x9C
	ble _08164836
	movs r0, #0x9C
	subs r0, r0, r1
	str r0, [r6, #0x2C]
_08164836:
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r1, [r6, #0x20]
	ldr r2, [r6, #0x30]
	movs r0, #0x20
	subs r0, r0, r2
	lsls r0, r0, #0x1B
	movs r2, #0xC0
	lsls r2, r2, #0x14
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	str r0, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x06
	str r0, [sp, #0x00C]
	movs r0, #0x01
	str r0, [sp, #0x010]
	str r4, [sp, #0x014]
	adds r0, r5, #0x0
	movs r2, #0x20
	movs r3, #0x0C
	bl sub_8199D78
	adds r3, r7, #0x2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x06
	bl sub_8199D5C
	str r4, [r6, #0x5C]
	str r4, [r6, #0x58]
	str r4, [r6, #0x64]
	str r4, [r6, #0x68]
	str r4, [r6, #0x6C]
	str r4, [r6, #0x60]
	ldr r0, [r6, #0x00]
	bl sprite_hide_8021F20
	ldr r1, [r6, #0x50]
	ldr r0, [r6, #0x28]
	negs r0, r0
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x54]
	ldr r0, [r6, #0x2C]
	negs r0, r0
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	bl sub_81650DC
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
