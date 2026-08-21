	.syntax unified
	.text

	thumb_func_start sub_8108FE4
sub_8108FE4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x08]
	ldr r3, _08109060 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r2, [r5, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810900A
	cmp r0, #0x0E
	beq _0810900A
	cmp r0, #0x01
	bne _08109050
_0810900A:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r5, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _08109032
	ldrh r0, [r2, #0x16]
	ldrb r1, [r2, #0x1E]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r1, r1, r6
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bne _08109050
_08109032:
	movs r0, #0x02
	negs r0, r0
	cmp r5, r0
	bne _08109068
	ldrh r0, [r2, #0x16]
	ldrb r1, [r2, #0x1E]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r1, r2
	orrs r0, r1
	ldr r1, _08109064 @ =0x0000204D
	cmp r0, r1
	beq _08109068
_08109050:
	movs r0, #0x00
	str r0, [r4, #0x04]
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x0B]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x0B]
	b _08109072
_08109060: .4byte 0x03000FD8
_08109064: .4byte 0x0000204D
_08109068:
	ldr r1, _08109078 @ =0x0810907D
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_08109072:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08109078: .4byte sub_810907C
