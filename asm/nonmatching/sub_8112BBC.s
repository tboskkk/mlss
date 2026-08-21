	.syntax unified
	.text

	thumb_func_start sub_8112BBC
sub_8112BBC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08112C34
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08112C34
	ldr r0, [r5, #0x28]
	ldr r4, _08112C3C @ =0x00000113
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	adds r1, #0x06
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r1, #0x06
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	ldr r1, _08112C40 @ =0x000018A6
	cmp r0, #0x00
	beq _08112C16
	adds r1, #0x14
_08112C16:
	adds r0, r5, #0x0
	bl sub_8086858
	ldr r0, _08112C44 @ =0x081132D5
	str r0, [r5, #0x60]
	ldr r0, _08112C48 @ =0x08112C51
	str r0, [r5, #0x4C]
	movs r0, #0x8A
	bl stop_sfx_80195A8
	ldr r0, _08112C4C @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08112C34:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08112C3C: .4byte 0x00000113
_08112C40: .4byte 0x000018A6
_08112C44: .4byte sub_81132D4
_08112C48: .4byte sub_8112C50
_08112C4C: .4byte 0x00000119
