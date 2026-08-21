	.syntax unified
	.text

	thumb_func_start sub_809D69C
sub_809D69C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _0809D6EE
	ldr r0, _0809D76C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r2, [r1, #0x74]
	adds r5, r2, #0x0
	adds r5, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0809D6D8
	ldr r0, [r3, #0x30]
	ldr r0, [r0, #0x4C]
	cmp r0, #0x00
	bne _0809D7AA
_0809D6D8:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0809D6EE
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x4C]
	cmp r0, #0x00
	bne _0809D7AA
_0809D6EE:
	adds r0, r6, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r5, #0x06
	movs r7, #0x80
	lsls r7, r7, #0x01
_0809D700:
	ldr r0, _0809D76C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r2, r0, #0x0
	adds r2, #0x7E
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809D7A0
	movs r3, #0x39
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r3, [r4, #0x30]
	cmp r3, #0x00
	beq _0809D7A0
	ldr r0, [r3, #0x08]
	movs r1, #0x06
	ldsh r0, [r0, r1]
	cmp r0, r7
	bne _0809D770
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _0809D740
	adds r1, #0xFF
_0809D740:
	asrs r1, r1, #0x08
	ldr r2, [r3, #0x3C]
	cmp r2, #0x00
	bge _0809D74A
	adds r2, #0xFF
_0809D74A:
	asrs r2, r2, #0x08
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _0809D754
	adds r3, #0xFF
_0809D754:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0xE8
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	b _0809D796
	.byte 0x00, 0x00
_0809D76C: .4byte 0x03000FD8
_0809D770:
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _0809D778
	adds r1, #0xFF
_0809D778:
	asrs r1, r1, #0x08
	ldr r2, [r3, #0x3C]
	cmp r2, #0x00
	bge _0809D782
	adds r2, #0xFF
_0809D782:
	asrs r2, r2, #0x08
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _0809D78C
	adds r3, #0xFF
_0809D78C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0xDF
	bl sub_80DF024
_0809D796:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _0809D7A0
	bl sub_807C298
_0809D7A0:
	adds r5, #0x01
	cmp r5, #0x07
	ble _0809D700
	ldr r0, _0809D7B4 @ =0x0808750D
	str r0, [r6, #0x4C]
_0809D7AA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809D7B4: .4byte sub_808750C
