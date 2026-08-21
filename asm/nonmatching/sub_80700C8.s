	.syntax unified
	.text

	thumb_func_start sub_80700C8
sub_80700C8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807015C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807015C
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _0807014C
	adds r0, r4, #0x0
	movs r1, #0x28
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	subs r1, #0x0C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08070148 @ =0x080703B1
	b _0807015A
_08070148: .4byte sub_80703B0
_0807014C:
	adds r0, r4, #0x0
	movs r1, #0x25
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08070164 @ =0x0806FCF1
_0807015A:
	str r0, [r4, #0x4C]
_0807015C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070164: .4byte sub_806FCF0
