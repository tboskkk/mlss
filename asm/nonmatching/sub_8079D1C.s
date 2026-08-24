	.syntax unified
	.text

	thumb_func_start sub_8079D1C
sub_8079D1C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	ldr r4, [sp, #0x01C]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0x0
	bl process_add
	ldr r0, _08079D60 @ =0x08CDC2D8
	str r0, [r6, #0x18]
	adds r0, r4, #0x0
	ldr r1, [sp, #0x020]
	bl sub_80E53E8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08079D64
	movs r0, #0x01
	negs r0, r0
	str r0, [r6, #0x1C]
	cmp r6, #0x00
	bne _08079D54
	b _08079F06
_08079D54:
	adds r0, r6, #0x0
	movs r1, #0x03
	bl sub_807A658
	b _08079F06
	.byte 0x00, 0x00
_08079D60: .4byte dword_8CDC2D8 @ =0x08CDC2D8
_08079D64:
	movs r0, #0x00
	str r0, [r6, #0x1C]
	adds r0, r6, #0x0
	adds r0, #0x33
	strb r7, [r0, #0x00]
	adds r0, #0x0F
	strh r5, [r0, #0x00]
	ldr r0, [sp, #0x024]
	str r0, [r6, #0x20]
	ldr r0, [sp, #0x018]
	str r0, [r6, #0x24]
	cmp r7, #0x11
	bls _08079D80
	b _08079F06
_08079D80:
	lsls r0, r7, #0x02
	ldr r1, _08079D8C @ =lbl_08079D90
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08079D8C: .4byte lbl_08079D90
lbl_08079D90:
	.4byte _08079DD8
	.4byte _08079DD8
	.4byte _08079DEC
	.4byte _08079DEC
	.4byte _08079E30
	.4byte _08079E30
	.4byte _08079E7C
	.4byte _08079E7C
	.4byte _08079EB4
	.4byte _08079EB4
	.4byte _08079EC8
	.4byte _08079EC8
	.4byte _08079EC8
	.4byte _08079EC8
	.4byte _08079EC8
	.4byte _08079EC8
	.4byte _08079EDC
	.4byte _08079EDC
_08079DD8:
	adds r1, r6, #0
	adds r1, #50 @ 0x32
	movs r0, #10
	strb r0, [r1, #0]
	ldr r2, [pc, #4] @ (0x8079de8)
	movs r0, #1
	movs r1, #80 @ 0x50
	b.n _08079EC2
	movs r4, r4
	lsrs r0, r4, #32
_08079DEC:
	adds r1, r6, #0
	adds r1, #50 @ 0x32
	movs r4, #0
	movs r0, #8
	strb r0, [r1, #0]
	ldr r2, [pc, #52] @ (0x8079e2c)
	movs r0, #1
	movs r1, #64 @ 0x40
	bl alloc_heap_8018CEC
	str r0, [r6, #28]
	adds r0, r6, #0
	adds r0, #64 @ 0x40
	strh r5, [r0, #0]
	ldr r0, [r6, #28]
	movs r3, #240 @ 0xf0
	lsls r3, r3, #7
	str r3, [r0, #8]
	str r4, [r0, #12]
	movs r1, #240 @ 0xf0
	lsls r1, r1, #8
	str r1, [r0, #24]
	movs r2, #160 @ 0xa0
	lsls r2, r2, #7
	str r2, [r0, #28]
	str r3, [r0, #40] @ 0x28
	movs r1, #160 @ 0xa0
	lsls r1, r1, #8
	str r1, [r0, #44] @ 0x2c
	str r4, [r0, #56] @ 0x38
	str r2, [r0, #60] @ 0x3c
	b.n _08079ECE
	movs r4, r4
	lsrs r0, r4, #32
_08079E30:
	adds r1, r6, #0
	adds r1, #50 @ 0x32
	movs r4, #0
	movs r0, #8
	strb r0, [r1, #0]
	ldr r2, [pc, #60] @ (0x8079e78)
	movs r0, #1
	movs r1, #64 @ 0x40
	bl alloc_heap_8018CEC
	str r0, [r6, #28]
	adds r0, r6, #0
	adds r0, #64 @ 0x40
	strh r5, [r0, #0]
	ldr r0, [r6, #28]
	str r4, [r0, #0]
	str r4, [r0, #4]
	movs r3, #240 @ 0xf0
	lsls r3, r3, #7
	str r3, [r0, #8]
	movs r1, #240 @ 0xf0
	lsls r1, r1, #8
	str r1, [r0, #16]
	str r4, [r0, #20]
	movs r2, #160 @ 0xa0
	lsls r2, r2, #7
	str r2, [r0, #28]
	str r1, [r0, #32]
	movs r1, #160 @ 0xa0
	lsls r1, r1, #8
	str r1, [r0, #36] @ 0x24
	str r3, [r0, #40] @ 0x28
	str r4, [r0, #48] @ 0x30
	str r1, [r0, #52] @ 0x34
	str r2, [r0, #60] @ 0x3c
	b.n _08079ECE
	movs r4, r4
	lsrs r0, r4, #32
_08079E7C:
	adds r1, r6, #0
	adds r1, #50 @ 0x32
	movs r4, #0
	movs r0, #4
	strb r0, [r1, #0]
	ldr r2, [pc, #40] @ (0x8079eb0)
	movs r0, #1
	movs r1, #32
	bl alloc_heap_8018CEC
	str r0, [r6, #28]
	adds r0, r6, #0
	adds r0, #64 @ 0x40
	strh r5, [r0, #0]
	ldr r1, [r6, #28]
	str r4, [r1, #0]
	str r4, [r1, #4]
	movs r0, #240 @ 0xf0
	lsls r0, r0, #8
	str r0, [r1, #16]
	movs r0, #160 @ 0xa0
	lsls r0, r0, #8
	str r0, [r1, #20]
	str r4, [r1, #24]
	str r0, [r1, #28]
	b.n _08079ECE
	movs r4, r4
	lsrs r0, r4, #32
_08079EB4:
	adds r1, r6, #0
	adds r1, #50 @ 0x32
	movs r0, #4
	strb r0, [r1, #0]
	ldr r2, [pc, #24] @ (0x8079ed8)
	movs r0, #1
	movs r1, #32
_08079EC2:
	bl alloc_heap_8018CEC
	str r0, [r6, #28]
_08079EC8:
	adds r0, r6, #0
	adds r0, #64 @ 0x40
	strh r5, [r0, #0]
_08079ECE:
	adds r0, r6, #0
	bl wipe_update
	b.n _08079F06
	movs r0, r0
	movs r4, r4
	lsrs r0, r4, #32
_08079EDC:
	movs r0, #1
	negs r0, r0
	ldr r1, [r6, #36] @ 0x24
	bl _call_via_r1
	adds r1, r6, #0
	adds r1, #50 @ 0x32
	strb r0, [r1, #0]
	ldrb r1, [r1, #0]
	lsls r1, r1, #3
	ldr r2, [pc, #28] @ (0x8079f10)
	movs r0, #1
	bl alloc_heap_8018CEC
	str r0, [r6, #28]
	adds r0, r6, #0
	adds r0, #64 @ 0x40
	strh r5, [r0, #0]
	adds r0, r6, #0
	bl wipe_update
_08079F06:
	adds r0, r6, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x24, 0x00, 0x20, 0x08
