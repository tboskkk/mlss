	.syntax unified
	.text

	thumb_func_start sub_81604A8
sub_81604A8:
	push {lr}
	add sp, #-0x004
	adds r3, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _081604C8 @ =0x000003FF
	ands r0, r2
	subs r0, #0xA5
	cmp r0, #0x4D
	bls _081604BE
	b _081606AE
_081604BE:
	lsls r0, r0, #0x02
	ldr r1, _081604CC @ =lbl_081604D0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_081604C8: .4byte 0x000003FF
_081604CC: .4byte lbl_081604D0
lbl_081604D0:
	.4byte _08160608
	.4byte _08160608
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _08160608
	.4byte _08160608
	.4byte _08160608
	.4byte _08160608
	.4byte _08160608
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _08160624
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _081606AE
	.4byte _08160624
	.4byte _08160652
	.4byte _08160680
_08160608:
	ldr r1, [pc, #16] @ (0x816061c)
	ldr r0, [sp, #0]
	ands r0, r1
	lsls r1, r3, #24
	lsrs r1, r1, #24
	ldr r2, [pc, #12] @ (0x8160620)
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0]
	b.n _081606C2
	bl 0x826061e
_08160620:
	.byte 0x00, 0xFF, 0xFF, 0xFF
_08160624:
	.byte 0x80, 0x20, 0xC0, 0x00, 0x10, 0x40, 0x00, 0x28, 0x06, 0xD0, 0x6A, 0x46, 0x51, 0x78, 0x10, 0x20
	.byte 0x40, 0x42, 0x08, 0x40, 0x02, 0x21, 0x05, 0xE0, 0x6A, 0x46, 0x51, 0x78, 0x10, 0x20, 0x40, 0x42
	.byte 0x08, 0x40, 0x01, 0x21, 0x08, 0x43, 0x50, 0x70, 0x68, 0x46, 0x03, 0x70, 0x36, 0xE0
_08160652:
	.byte 0x80, 0x20, 0xC0, 0x00, 0x10, 0x40, 0x00, 0x28, 0x06, 0xD0, 0x6A, 0x46, 0x51, 0x78, 0x10, 0x20
	.byte 0x40, 0x42, 0x08, 0x40, 0x04, 0x21, 0x05, 0xE0, 0x6A, 0x46, 0x51, 0x78, 0x10, 0x20, 0x40, 0x42
	.byte 0x08, 0x40, 0x05, 0x21, 0x08, 0x43, 0x50, 0x70, 0x68, 0x46, 0x03, 0x70, 0x1F, 0xE0
_08160680:
	.byte 0x80, 0x20, 0xC0, 0x00, 0x10, 0x40, 0x00, 0x28, 0x06, 0xD0, 0x6A, 0x46, 0x51, 0x78, 0x10, 0x20
	.byte 0x40, 0x42, 0x08, 0x40, 0x03, 0x21, 0x05, 0xE0, 0x6A, 0x46, 0x51, 0x78, 0x10, 0x20, 0x40, 0x42
	.byte 0x08, 0x40, 0x06, 0x21, 0x08, 0x43, 0x50, 0x70, 0x68, 0x46, 0x03, 0x70, 0x08, 0xE0
_081606AE:
	mov r2, sp
	ldrb r1, [r2, #0x01]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x01]
	movs r1, #0x20
	mov r0, sp
	strb r1, [r0, #0x00]
	ldr r0, [sp, #0x000]
_081606C2:
	add sp, #0x004
	pop {r1}
	bx r1
