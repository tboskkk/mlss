	.syntax unified
	.text

	thumb_func_start sub_8068A50
sub_8068A50:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068A9E
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _08068A9E
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08068A8A
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08068A96
_08068A8A:
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08068A96:
	ldr r0, _08068AA4 @ =0x080684B1
	str r0, [r4, #0x4C]
	movs r0, #0x00
	strh r0, [r5, #0x00]
_08068A9E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08068AA4: .4byte sub_80684B0
