	.syntax unified
	.text

	thumb_func_start sub_8096D8C
sub_8096D8C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08096DF8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08096DCA
	ldr r2, _08096DFC @ =0x00002051
	cmp r5, r3
	bne _08096DB0
	subs r2, #0x2F
_08096DB0:
	adds r0, r5, #0x0
	movs r1, #0x01
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
_08096DCA:
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r2, _08096E00 @ =0x0000208D
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	adds r4, #0x78
	ldrb r1, [r4, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _08096E04 @ =0x080967A5
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_08096DF8: .4byte 0x03000FD8
_08096DFC: .4byte 0x00002051
_08096E00: .4byte 0x0000208D
_08096E04: .4byte sub_80967A4
