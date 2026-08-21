	.syntax unified
	.text

	thumb_func_start sub_808B85C
sub_808B85C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0808B874
	b _0808B99E
_0808B874:
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r1, [r0, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0x01
	beq _0808B894
	cmp r1, #0x01
	bgt _0808B88A
	cmp r1, #0x00
	beq _0808B89A
	b _0808B8B4
_0808B88A:
	cmp r1, #0x02
	beq _0808B89A
	cmp r1, #0x03
	beq _0808B8A8
	b _0808B8B4
_0808B894:
	adds r0, r4, #0x0
	movs r1, #0x09
	b _0808B89E
_0808B89A:
	adds r0, r4, #0x0
	movs r1, #0x05
_0808B89E:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808B8B4
_0808B8A8:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808B8B4:
	ldr r0, _0808B8D8 @ =0x0808BEB5
	str r0, [r4, #0x4C]
	movs r0, #0x8D
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	mov r8, r0
	ldr r0, [r6, #0x00]
	cmp r0, #0x01
	beq _0808B8EA
	cmp r0, #0x01
	bgt _0808B8DC
	cmp r0, #0x00
	beq _0808B8E6
	b _0808B8EC
_0808B8D8: .4byte sub_808BEB4
_0808B8DC:
	cmp r0, #0x02
	beq _0808B8E6
	cmp r0, #0x03
	beq _0808B8EA
	b _0808B8EC
_0808B8E6:
	movs r5, #0x35
	b _0808B8EC
_0808B8EA:
	movs r5, #0x1B
_0808B8EC:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0808B8F4
	adds r0, #0xFF
_0808B8F4:
	asrs r0, r0, #0x08
	subs r2, r0, r5
	ldr r0, [r6, #0x00]
	cmp r0, #0x01
	beq _0808B918
	cmp r0, #0x01
	bgt _0808B908
	cmp r0, #0x00
	beq _0808B912
	b _0808B91C
_0808B908:
	cmp r0, #0x02
	beq _0808B912
	cmp r0, #0x03
	beq _0808B918
	b _0808B91C
_0808B912:
	movs r7, #0x09
	negs r7, r7
	b _0808B91C
_0808B918:
	movs r7, #0x05
	negs r7, r7
_0808B91C:
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0808B924
	adds r0, #0xFF
_0808B924:
	asrs r0, r0, #0x08
	adds r3, r0, r7
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0808B932
	adds r0, #0xFF
_0808B932:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0808B9AC @ =0x0000405D
	bl sub_807BF34
	adds r3, r0, #0x0
	str r3, [r4, #0x30]
	adds r1, r3, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r3, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x9C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x6C]
	str r0, [r3, #0x6C]
	subs r1, #0x10
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	mov r0, r8
	str r0, [r3, #0x2C]
	adds r0, r3, #0x0
	bl sub_808B9B0
_0808B99E:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808B9AC: .4byte 0x0000405D
