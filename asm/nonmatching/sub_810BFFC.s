	.syntax unified
	.text

	thumb_func_start sub_810BFFC
sub_810BFFC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0810C054 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	bls _0810C04E
	adds r0, r4, #0x0
	bl sub_810B99C
	ldrh r3, [r4, #0x14]
	movs r1, #0x14
	ldsh r0, [r4, r1]
	cmp r0, #0x88
	ble _0810C046
	subs r0, r3, #0x4
	strh r0, [r4, #0x14]
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	beq _0810C03E
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _0810C03E
	ldr r1, [r2, #0x10]
	adds r0, r3, #0x0
	adds r0, #0x14
	strh r0, [r1, #0x02]
_0810C03E:
	movs r1, #0x14
	ldsh r0, [r4, r1]
	cmp r0, #0x88
	bgt _0810C04E
_0810C046:
	movs r0, #0x88
	strh r0, [r4, #0x14]
	ldr r0, _0810C058 @ =0x0810B99D
	str r0, [r4, #0x04]
_0810C04E:
	pop {r4}
	pop {r0}
	bx r0
_0810C054: .4byte 0x03000FD8
_0810C058: .4byte sub_810B99C
