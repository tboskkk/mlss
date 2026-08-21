	.syntax unified
	.text

	thumb_func_start sub_808AA60
sub_808AA60:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r10, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0808AA7C
	b _0808ABEE
_0808AA7C:
	mov r0, r10
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0808AC00 @ =0x0808C071
	mov r1, r10
	str r0, [r1, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	mov r2, r10
	ldr r1, [r2, #0x10]
	cmp r1, #0x00
	bge _0808AAA2
	adds r1, #0xFF
_0808AAA2:
	asrs r4, r1, #0x08
	mov r3, r10
	ldr r2, [r3, #0x14]
	cmp r2, #0x00
	bge _0808AAAE
	adds r2, #0xFF
_0808AAAE:
	asrs r6, r2, #0x08
	mov r0, r10
	ldr r5, [r0, #0x18]
	cmp r5, #0x00
	bge _0808AABA
	adds r5, #0xFF
_0808AABA:
	asrs r5, r5, #0x08
	mov r1, r10
	ldr r1, [r1, #0x2C]
	mov r9, r1
	mov r2, r10
	ldr r0, [r2, #0x28]
	ldr r1, _0808AC04 @ =0x00004068
	adds r2, r4, #0x0
	subs r2, #0x0A
	adds r3, r5, #0x0
	adds r3, #0x16
	str r3, [sp, #0x000]
	movs r3, #0x01
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	adds r3, r6, #0x0
	bl sub_807BF34
	adds r7, r0, #0x0
	ldr r0, _0808AC08 @ =0x00000C59
	mov r1, r10
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r6, #0x0
	adds r3, r5, #0x0
	bl sub_80DF024
	mov r2, r10
	str r7, [r2, #0x30]
	adds r1, r7, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r3, r10
	adds r3, #0x9C
	ldr r0, [r3, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r5, r10
	adds r5, #0xA0
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r6, r10
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x84
	mov r0, r9
	ldr r0, [r0, #0x28]
	mov r12, r0
	adds r0, #0xD8
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	mov r0, r12
	adds r0, #0xDC
	ldr r1, [r5, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	mov r0, r12
	adds r0, #0xE0
	ldr r1, [r6, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	mov r3, r8
	strh r3, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	mov r1, r10
	ldr r0, [r1, #0x6C]
	str r0, [r7, #0x6C]
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	mov r3, r10
	adds r3, #0x77
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r2, #0x77
	adds r2, r2, r7
	mov r8, r2
	movs r2, #0x01
	ands r2, r0
	lsls r2, r2, #0x06
	mov r1, r8
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r2, r8
	strb r1, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	movs r3, #0x01
	ands r3, r0
	lsls r0, r3, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	ldr r2, [sp, #0x010]
	orrs r1, r2
	mov r3, r8
	strb r1, [r3, #0x00]
	ldr r0, _0808AC0C @ =0x0808C111
	str r0, [r7, #0x4C]
_0808ABEE:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808AC00: .4byte sub_808C070
_0808AC04: .4byte 0x00004068
_0808AC08: .4byte 0x00000C59
_0808AC0C: .4byte sub_808C110
