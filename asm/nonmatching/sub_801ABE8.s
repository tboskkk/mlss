	.syntax unified
	.text

	thumb_func_start sub_801ABE8
sub_801ABE8:
	push {r4, r5, lr}
	adds r3, r2, #0x0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r2, _0801AC2C @ =0x0300034C
	ldr r1, _0801AC30 @ =0x00000888
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0801AC68
	cmp r4, #0x00
	beq _0801AC38
	ldr r2, _0801AC34 @ =0x03000D28
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	ands r3, r1
	lsls r3, r3, #0x02
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	strh r5, [r2, #0x02]
	strh r4, [r2, #0x04]
	b _0801AC68
	.byte 0x00, 0x00
_0801AC2C: .4byte 0x0300034C
_0801AC30: .4byte 0x00000888
_0801AC34: .4byte 0x03000D28
_0801AC38:
	ldr r1, _0801AC70 @ =0x0000088B
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801AC56
	ldr r2, _0801AC74 @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_0801AC56:
	ldr r2, _0801AC78 @ =0x03000D28
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	strh r5, [r2, #0x04]
_0801AC68:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801AC70: .4byte 0x0000088B
_0801AC74: .4byte 0x03000D18
_0801AC78: .4byte 0x03000D28
