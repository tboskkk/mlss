	.syntax unified
	.text

	thumb_func_start sub_810C05C
sub_810C05C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_810B99C
	ldrh r3, [r4, #0x14]
	movs r1, #0x14
	ldsh r0, [r4, r1]
	cmp r0, #0x9F
	bgt _0810C096
	adds r0, r3, #0x4
	strh r0, [r4, #0x14]
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	beq _0810C08E
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _0810C08E
	ldr r1, [r2, #0x10]
	adds r0, r3, #0x0
	adds r0, #0x1C
	strh r0, [r1, #0x02]
_0810C08E:
	movs r1, #0x14
	ldsh r0, [r4, r1]
	cmp r0, #0x9F
	ble _0810C0C2
_0810C096:
	ldr r0, _0810C0B0 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r0, #0x9F
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, [r2, #0x00]
	ldr r1, [r4, #0x08]
	ldr r0, [r0, #0x08]
	cmp r1, r0
	bne _0810C0B4
	movs r0, #0x00
	str r0, [r2, #0x00]
	b _0810C0BE
_0810C0B0: .4byte 0x03000FD8
_0810C0B4:
	movs r0, #0xA0
	lsls r0, r0, #0x02
	adds r1, r3, r0
	movs r0, #0x00
	str r0, [r1, #0x00]
_0810C0BE:
	movs r0, #0x00
	str r0, [r4, #0x04]
_0810C0C2:
	pop {r4}
	pop {r0}
	bx r0
