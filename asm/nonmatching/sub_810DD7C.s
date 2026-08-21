	.syntax unified
	.text

	thumb_func_start sub_810DD7C
sub_810DD7C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _0810DD9A
	cmp r1, #0x04
	beq _0810DD9A
	b _0810DEAE
_0810DD9A:
	ldr r0, [r6, #0x6C]
	ldrh r0, [r0, #0x0C]
	mov r12, r0
	ldr r0, [r6, #0x28]
	movs r1, #0x85
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	ldr r3, [r4, #0x28]
	movs r2, #0x82
	lsls r2, r2, #0x01
	adds r0, r3, r2
	movs r2, #0x00
	ldsh r5, [r0, r2]
	movs r2, #0x86
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r3, [r0, #0x00]
	movs r0, #0x66
	mov r2, r12
	muls r2, r0
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0810DDCE
	adds r0, #0xFF
_0810DDCE:
	asrs r2, r0, #0x08
	lsls r0, r5, #0x01
	adds r0, r0, r5
	lsls r1, r0, #0x04
	adds r0, r0, r1
	muls r0, r3
	cmp r0, #0x00
	bge _0810DDE0
	adds r0, #0xFF
_0810DDE0:
	asrs r0, r0, #0x08
	subs r2, r2, r0
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0810DDEC
	adds r0, #0xFF
_0810DDEC:
	asrs r2, r0, #0x08
	cmp r2, #0x00
	bgt _0810DDF4
	movs r2, #0x01
_0810DDF4:
	movs r3, #0x00
	cmp r7, #0x02
	beq _0810DE20
	cmp r7, #0x01
	bne _0810DE08
	adds r0, r4, #0x0
	adds r0, #0xB2
	strh r3, [r0, #0x00]
	movs r3, #0x01
	b _0810DE26
_0810DE08:
	cmp r7, #0x03
	bne _0810DE20
	adds r1, r4, #0x0
	adds r1, #0xB2
	movs r3, #0x80
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
	ldrh r3, [r1, #0x00]
	adds r0, r0, r3
	strh r0, [r1, #0x00]
	movs r3, #0x02
	b _0810DE26
_0810DE20:
	adds r0, r4, #0x0
	adds r0, #0xB2
	strh r3, [r0, #0x00]
_0810DE26:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0810DE2E
	adds r0, #0xFF
_0810DE2E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0810DE3A
	adds r0, #0xFF
_0810DE3A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_810E03C
	ldr r2, [r4, #0x28]
	ldr r1, _0810DE78 @ =0x00000111
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0810DE7C
	adds r0, r2, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r5, [r0, r2]
	cmp r5, #0x00
	bne _0810DE7C
	adds r0, r4, #0x0
	bl sub_8086700
	ldr r0, [r4, #0x28]
	movs r3, #0x8F
	lsls r3, r3, #0x01
	adds r0, r0, r3
	strh r5, [r0, #0x00]
	b _0810DEAE
_0810DE78: .4byte 0x00000111
_0810DE7C:
	ldr r0, [r6, #0x6C]
	cmp r0, #0x00
	beq _0810DE94
	ldrb r1, [r0, #0x08]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0810DE94
	ldr r0, [r6, #0x54]
	cmp r0, #0x00
	beq _0810DE94
	str r0, [r6, #0x4C]
_0810DE94:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _0810DE9E
	bl sub_807C298
_0810DE9E:
	ldr r3, [r4, #0x58]
	cmp r3, #0x00
	beq _0810DEAE
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	bl _call_via_r3
_0810DEAE:
	movs r0, #0x01
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
