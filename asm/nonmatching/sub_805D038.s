	.syntax unified
	.text

	thumb_func_start sub_805D038
sub_805D038:
	push {r4, r5, r6, r7, lr}
	ldr r0, _0805D050 @ =0x0300034C
	ldr r1, _0805D054 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0805D05C
	ldr r2, _0805D058 @ =0x088D4808
	b _0805D05E
	.byte 0x00, 0x00
_0805D050: .4byte 0x0300034C
_0805D054: .4byte 0x00000888
_0805D058: .4byte 0x088D4808
_0805D05C:
	ldr r2, _0805D0C4 @ =0x088C8730
_0805D05E:
	ldr r1, _0805D0C8 @ =0x083AAD68
	ldr r0, _0805D0CC @ =0x03000DD0
	ldrb r0, [r0, #0x05]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r6, r2, r0
	movs r0, #0x00
_0805D072:
	movs r4, #0x00
	movs r3, #0x01
	lsls r1, r0, #0x05
	adds r7, r0, #0x1
	adds r5, r1, #0x0
_0805D07C:
	lsls r0, r3, #0x01
	adds r0, r0, r5
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0805D08E
	ldrb r0, [r2, #0x01]
	cmp r0, #0x00
	beq _0805D094
_0805D08E:
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0805D094:
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x0F
	bls _0805D07C
	cmp r4, #0x00
	beq _0805D0AE
	adds r0, r6, r1
	ldr r2, _0805D0D0 @ =0x02000080
	adds r1, r1, r2
	movs r2, #0x08
	bl CpuFastSet
_0805D0AE:
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0E
	bls _0805D072
	ldr r1, _0805D0D4 @ =0x0300034C
	ldr r0, _0805D0D8 @ =0x00007FFF
	strh r0, [r1, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D0C4: .4byte 0x088C8730
_0805D0C8: .4byte 0x083AAD68
_0805D0CC: .4byte 0x03000DD0
_0805D0D0: .4byte 0x02000080
_0805D0D4: .4byte 0x0300034C
_0805D0D8: .4byte 0x00007FFF
