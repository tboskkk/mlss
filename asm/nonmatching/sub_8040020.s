	.syntax unified
	.text

	thumb_func_start sub_8040020
sub_8040020:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, _080400A4 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0804009E
	adds r1, r4, #0x0
	adds r1, #0x28
	ldr r2, _080400A8 @ =0x0400000A
	adds r0, r4, #0x0
	bl CpuSet
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x0C]
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r2, r0, #0x1F
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	beq _08040056
	movs r0, #0x02
	orrs r2, r0
_08040056:
	ldr r1, [r4, #0x3C]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	beq _08040062
	movs r0, #0x04
	orrs r2, r0
_08040062:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	beq _0804006E
	movs r0, #0x08
	orrs r2, r0
_0804006E:
	ldr r0, _080400AC @ =0x00000213
	adds r3, r4, r0
	movs r0, #0x0F
	ands r2, r0
	lsls r2, r2, #0x01
	ldrb r1, [r3, #0x00]
	movs r0, #0x1F
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldr r0, [r2, #0x00]
	ldrh r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x50
	strh r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	ldrh r1, [r0, #0x02]
	adds r0, r4, #0x0
	adds r0, #0x52
	strh r1, [r0, #0x00]
_0804009E:
	pop {r4}
	pop {r0}
	bx r0
_080400A4: .4byte 0x00000216
_080400A8: .4byte 0x0400000A
_080400AC: .4byte 0x00000213
