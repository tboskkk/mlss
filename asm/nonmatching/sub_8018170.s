	.syntax unified
	.text

	thumb_func_start sub_8018170
sub_8018170:
	push {r4, r5, r6, lr}
	ldr r1, _080181C4 @ =0x0300034C
	ldr r2, _080181C8 @ =0x00000884
	adds r0, r1, r2
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0801820A
	ldrh r0, [r1, #0x00]
	lsls r4, r0, #0x10
	ldrh r0, [r1, #0x02]
	orrs r4, r0
	ands r4, r2
	ldr r2, _080181CC @ =0x00000888
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _080181DC
	ldr r6, _080181D0 @ =0x02000080
	movs r5, #0xA0
	lsls r5, r5, #0x13
	cmp r4, #0x00
	beq _08018202
	movs r3, #0x01
	ldr r1, _080181D4 @ =0x040000D4
	ldr r2, _080181D8 @ =0x84000008
_080181A6:
	adds r0, r4, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _080181B6
	str r6, [r1, #0x00]
	str r5, [r1, #0x04]
	str r2, [r1, #0x08]
	ldr r0, [r1, #0x08]
_080181B6:
	adds r6, #0x20
	adds r5, #0x20
	lsrs r4, r4, #0x01
	cmp r4, #0x00
	bne _080181A6
	b _08018202
	.byte 0x00, 0x00
_080181C4: .4byte 0x0300034C
_080181C8: .4byte 0x00000884
_080181CC: .4byte 0x00000888
_080181D0: .4byte 0x02000080
_080181D4: .4byte 0x040000D4
_080181D8: .4byte 0x84000008
_080181DC:
	ldr r6, _08018210 @ =0x02000080
	movs r5, #0xA0
	lsls r5, r5, #0x13
	cmp r4, #0x00
	beq _08018202
_080181E6:
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _080181F8
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x08
	bl CpuFastSet
_080181F8:
	adds r6, #0x20
	adds r5, #0x20
	lsrs r4, r4, #0x01
	cmp r4, #0x00
	bne _080181E6
_08018202:
	ldr r1, _08018214 @ =0x0300034C
	movs r0, #0x00
	strh r0, [r1, #0x02]
	strh r0, [r1, #0x00]
_0801820A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08018210: .4byte 0x02000080
_08018214: .4byte 0x0300034C
