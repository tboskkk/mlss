	.syntax unified
	.text

	thumb_func_start sub_812CDA0
sub_812CDA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r1, #0xC0
	lsls r1, r1, #0x07
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x2C]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x2C]
	bl sprite_show_8020CBC
	adds r0, r7, #0x0
	adds r0, #0xBD
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812CDF2
	adds r0, r7, #0x0
	adds r0, #0xBE
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0812CE08
_0812CDF2:
	ldr r1, [r7, #0x2C]
	movs r0, #0x24
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x2C]
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	b _0812CE1E
_0812CE08:
	ldr r1, [r7, #0x2C]
	movs r0, #0x24
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x2C]
	adds r0, r7, #0x0
	adds r0, #0xC0
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, #0x2B
_0812CE1E:
	strh r0, [r2, #0x02]
	ldr r2, [r7, #0x2C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x2C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x2C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	mov r10, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x2C]
	ldrb r1, [r2, #0x1F]
	movs r3, #0x3F
	mov r9, r3
	mov r0, r9
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r0, [r7, #0x2C]
	ldr r1, _0812CF44 @ =0xFFFFEFFF
	strh r1, [r0, #0x0E]
	ldr r2, [r7, #0x2C]
	ldrb r1, [r2, #0x10]
	subs r3, #0x7E
	mov r8, r3
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r1, [r7, #0x2C]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r6, #0x03
	negs r6, r6
	adds r0, r6, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x2C]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r5, #0x21
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x07
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x30]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x06
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r7, #0x30]
	movs r0, #0xC0
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x30]
	movs r0, #0x2C
	strh r0, [r1, #0x02]
	ldr r0, [r7, #0x30]
	ldr r2, _0812CF44 @ =0xFFFFEFFF
	strh r2, [r0, #0x0E]
	ldr r1, [r7, #0x30]
	ldrb r0, [r1, #0x1F]
	movs r2, #0x04
	negs r2, r2
	ands r2, r0
	strb r2, [r1, #0x1F]
	ldr r1, [r7, #0x30]
	ldrb r0, [r1, #0x1F]
	movs r2, #0x0D
	negs r2, r2
	ands r2, r0
	strb r2, [r1, #0x1F]
	ldr r1, [r7, #0x30]
	ldrb r0, [r1, #0x1F]
	mov r3, r10
	ands r3, r0
	strb r3, [r1, #0x1F]
	ldr r1, [r7, #0x30]
	ldrb r0, [r1, #0x1F]
	mov r2, r9
	ands r2, r0
	strb r2, [r1, #0x1F]
	ldr r1, [r7, #0x30]
	ldrb r0, [r1, #0x10]
	mov r3, r8
	ands r3, r0
	strb r3, [r1, #0x10]
	ldr r0, [r7, #0x30]
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	ands r6, r1
	strb r6, [r0, #0x00]
	ldr r0, [r7, #0x30]
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	ands r5, r1
	strb r5, [r0, #0x00]
	ldr r2, [r7, #0x30]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x12]
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _0812CF48 @ =0x03000D48
	ldr r0, _0812CF4C @ =0x0203FFB8
	ldr r0, [r0, #0x3C]
	ldr r3, _0812CF50 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0812CF44: .4byte 0xFFFFEFFF
_0812CF48: .4byte 0x03000D48
_0812CF4C: .4byte 0x0203FFB8
_0812CF50: .4byte 0x00000A14
