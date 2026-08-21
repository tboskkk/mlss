	.syntax unified
	.text

	thumb_func_start sub_803CF64
sub_803CF64:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	movs r1, #0xD6
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0803CF88
	adds r0, r4, #0x0
	bl sub_803D6D8
	b _0803D054
_0803CF88:
	movs r1, #0x04
	ldsh r0, [r2, r1]
	cmp r0, #0x3F
	bgt _0803CFAC
	cmp r0, #0x3E
	bge _0803CFB8
	cmp r0, #0x0F
	beq _0803CFB8
	cmp r0, #0x0F
	bgt _0803CFA6
	cmp r0, #0x0C
	bgt _0803CFC8
	cmp r0, #0x05
	blt _0803CFC8
	b _0803CFB8
_0803CFA6:
	cmp r0, #0x3A
	beq _0803CFB8
	b _0803CFC8
_0803CFAC:
	cmp r0, #0x46
	blt _0803CFC8
	cmp r0, #0x48
	ble _0803CFB8
	cmp r0, #0x6B
	bne _0803CFC8
_0803CFB8:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_803D05C
	b _0803CFEA
_0803CFC8:
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldr r0, [r3, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x28
	bl sub_804FE68
_0803CFEA:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	ldsh r0, [r0, r1]
	cmp r0, #0x3F
	bgt _0803D016
	cmp r0, #0x3E
	bge _0803D022
	cmp r0, #0x0F
	beq _0803D022
	cmp r0, #0x0F
	bgt _0803D010
	cmp r0, #0x0C
	bgt _0803D032
	cmp r0, #0x05
	blt _0803D032
	b _0803D022
_0803D010:
	cmp r0, #0x3A
	beq _0803D022
	b _0803D032
_0803D016:
	cmp r0, #0x46
	blt _0803D032
	cmp r0, #0x48
	ble _0803D022
	cmp r0, #0x6B
	bne _0803D032
_0803D022:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_803D05C
	b _0803D054
_0803D032:
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldr r0, [r3, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x28
	bl sub_804FE68
_0803D054:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
