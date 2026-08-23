	.syntax unified
	.text

	thumb_func_start sub_8025D24
sub_8025D24:
	push {lr}
	adds r2, r0, #0x0
	movs r3, #0x95
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bhi _08025D36
	b _08025E88
_08025D36:
	cmp r1, #0x07
	bls _08025D3C
	b _08025E88
_08025D3C:
	lsls r0, r1, #0x02
	ldr r1, _08025D48 @ =lbl_08025D4C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08025D48: .4byte lbl_08025D4C
lbl_08025D4C:
	.4byte _08025D6C
	.4byte _08025D96
	.4byte _08025DBE
	.4byte _08025DF4
	.4byte _08025E2A
	.4byte _08025E3E
	.4byte _08025E54
	.4byte _08025E78
_08025D6C:
	adds r0, r2, #0
	adds r0, #208 @ 0xd0
	ldr r3, [r0, #0]
	ldrh r1, [r3, #0]
	movs r0, #192 @ 0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq.n _08025D80
	b.n _08025E88
_08025D80:
	movs r1, #128 @ 0x80
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0, #0]
	movs r1, #218 @ 0xda
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r1, [r3, #2]
	ldrh r0, [r0, #4]
	b.n _08025E34
_08025D96:
	adds r0, r2, #0
	adds r0, #208 @ 0xd0
	ldr r3, [r0, #0]
	ldrh r1, [r3, #0]
	movs r0, #192 @ 0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne.n _08025E88
	movs r1, #129 @ 0x81
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0, #0]
	movs r1, #218 @ 0xda
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r1, [r3, #2]
	ldrh r0, [r0, #4]
	b.n _08025E34
_08025DBE:
	adds r0, r2, #0
	adds r0, #208 @ 0xd0
	ldr r3, [r0, #0]
	movs r1, #129 @ 0x81
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0, #0]
	movs r1, #218 @ 0xda
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r1, [r3, #0]
	ldrh r0, [r0, #6]
	ands r0, r1
	cmp r0, #0
	bne.n _08025E88
	movs r1, #128 @ 0x80
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0, #0]
	movs r1, #218 @ 0xda
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r1, [r3, #2]
	ldrh r0, [r0, #6]
	b.n _08025E34
_08025DF4:
	adds r0, r2, #0
	adds r0, #208 @ 0xd0
	ldr r3, [r0, #0]
	movs r1, #128 @ 0x80
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0, #0]
	movs r1, #218 @ 0xda
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r1, [r3, #0]
	ldrh r0, [r0, #6]
	ands r0, r1
	cmp r0, #0
	bne.n _08025E88
	movs r1, #129 @ 0x81
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0, #0]
	movs r1, #218 @ 0xda
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r1, [r3, #2]
	ldrh r0, [r0, #6]
	b.n _08025E34
_08025E2A:
	adds r0, r2, #0
	adds r0, #208 @ 0xd0
	ldr r0, [r0, #0]
	ldrh r1, [r0, #2]
	movs r0, #8
_08025E34:
	ands r0, r1
	cmp r0, #0
	beq.n _08025E88
	movs r0, #1
	b.n _08025E8A
_08025E3E:
	adds r0, r2, #0
	adds r0, #208 @ 0xd0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r1, [pc, #8] @ (0x8025e50)
	ands r0, r1
	movs r1, #128 @ 0x80
	lsls r1, r1, #11
	b.n _08025E84
	lsls r0, r0, #12
_08025E52:
	.byte 0xFF, 0xFF
_08025E54:
	.byte 0x10, 0x1C, 0xD0, 0x30, 0x00, 0x68, 0x02, 0x68, 0x04, 0x49, 0x10, 0x1C, 0x08, 0x40, 0x88, 0x42
	.byte 0xE9, 0xD0, 0x03, 0x48, 0x02, 0x40, 0x82, 0x42, 0x0C, 0xD1, 0xE4, 0xE7, 0x00, 0x02, 0x00, 0x01
	.byte 0x00, 0x01, 0x00, 0x02
_08025E78:
	.byte 0x05, 0x48, 0x02, 0x8D, 0xC0, 0x21, 0x89, 0x00, 0x08, 0x1C, 0x10, 0x40
_08025E84:
	.byte 0x88, 0x42, 0xD8, 0xD0
_08025E88:
	movs r0, #0x00
_08025E8A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x4C, 0x03, 0x00, 0x03
