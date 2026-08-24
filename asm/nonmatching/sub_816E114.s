	.syntax unified
	.text

	thumb_func_start sub_816E114
sub_816E114:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	mov r8, r1
	movs r6, #0x00
	mov r5, sp
_0816E124:
	movs r0, #0x00
	ldr r1, _0816E150 @ =0x0000EA60
	bl sub_8163EE4
	strh r0, [r5, #0x02]
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	cmp r0, #0x07
	ble _0816E142
	movs r1, #0x02
	cmp r0, #0x0F
	bgt _0816E142
	movs r1, #0x01
_0816E142:
	cmp r1, #0x01
	beq _0816E164
	cmp r1, #0x01
	bgt _0816E154
	cmp r1, #0x00
	beq _0816E15A
	b _0816E16C
_0816E150: .4byte 0x0000EA60
_0816E154:
	cmp r1, #0x02
	beq _0816E178
	b _0816E16C
_0816E15A:
	ldr r0, _0816E160 @ =0x0821ABF2
	b _0816E166
	.byte 0x00, 0x00
_0816E160: .4byte dword_821ABF2 @ =0x0821ABF2
_0816E164:
	ldr r0, _0816E174 @ =0x0821ABFA
_0816E166:
	adds r0, r6, r0
	ldrb r0, [r0, #0x00]
	strh r0, [r5, #0x00]
_0816E16C:
	adds r7, r4, #0x0
	adds r7, #0xE4
	b _0816E18E
	.byte 0x00, 0x00
_0816E174: .4byte dword_821ABFA @ =0x0821ABFA
_0816E178:
	adds r2, r4, #0x0
	adds r2, #0xE4
	ldr r0, [r2, #0x00]
	adds r0, r0, r6
	movs r1, #0x07
	ands r0, r1
	ldr r1, _0816E290 @ =0x0821AC02
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	strh r0, [r5, #0x00]
	adds r7, r2, #0x0
_0816E18E:
	adds r5, #0x04
	adds r6, #0x01
	cmp r6, #0x05
	ble _0816E124
	movs r6, #0x00
	adds r4, #0xEC
	mov r12, r4
	mov r5, sp
_0816E19E:
	adds r2, r6, #0x1
	cmp r2, #0x05
	bgt _0816E24C
	adds r4, r5, #0x0
	lsls r0, r2, #0x02
	mov r1, sp
	adds r3, r0, r1
	movs r0, #0x06
	subs r1, r0, r2
	movs r0, #0x03
	ands r1, r0
	cmp r2, #0x06
	bge _0816E1EC
	cmp r1, #0x00
	beq _0816E204
	cmp r1, #0x01
	ble _0816E1EC
	cmp r1, #0x02
	ble _0816E1D8
	ldrh r1, [r3, #0x02]
	ldrh r0, [r5, #0x02]
	cmp r0, r1
	bls _0816E1D4
	ldr r1, [r5, #0x00]
	ldr r0, [r3, #0x00]
	str r0, [r5, #0x00]
	str r1, [r3, #0x00]
_0816E1D4:
	adds r3, #0x04
	adds r2, #0x01
_0816E1D8:
	ldrh r0, [r4, #0x02]
	ldrh r1, [r3, #0x02]
	cmp r0, r1
	bls _0816E1E8
	ldr r1, [r4, #0x00]
	ldr r0, [r3, #0x00]
	str r0, [r4, #0x00]
	str r1, [r3, #0x00]
_0816E1E8:
	adds r3, #0x04
	adds r2, #0x01
_0816E1EC:
	ldrh r0, [r4, #0x02]
	ldrh r1, [r3, #0x02]
	cmp r0, r1
	bls _0816E1FC
	ldr r1, [r4, #0x00]
	ldr r0, [r3, #0x00]
	str r0, [r4, #0x00]
	str r1, [r3, #0x00]
_0816E1FC:
	adds r3, #0x04
	adds r2, #0x01
	cmp r2, #0x05
	bgt _0816E24C
_0816E204:
	ldrh r0, [r4, #0x02]
	ldrh r1, [r3, #0x02]
	cmp r0, r1
	bls _0816E214
	ldr r1, [r4, #0x00]
	ldr r0, [r3, #0x00]
	str r0, [r4, #0x00]
	str r1, [r3, #0x00]
_0816E214:
	ldrh r0, [r4, #0x02]
	ldrh r1, [r3, #0x06]
	cmp r0, r1
	bls _0816E224
	ldr r1, [r4, #0x00]
	ldr r0, [r3, #0x04]
	str r0, [r4, #0x00]
	str r1, [r3, #0x04]
_0816E224:
	ldrh r0, [r4, #0x02]
	ldrh r1, [r3, #0x0A]
	cmp r0, r1
	bls _0816E234
	ldr r1, [r4, #0x00]
	ldr r0, [r3, #0x08]
	str r0, [r4, #0x00]
	str r1, [r3, #0x08]
_0816E234:
	ldrh r0, [r4, #0x02]
	ldrh r1, [r3, #0x0E]
	cmp r0, r1
	bls _0816E244
	ldr r1, [r4, #0x00]
	ldr r0, [r3, #0x0C]
	str r0, [r4, #0x00]
	str r1, [r3, #0x0C]
_0816E244:
	adds r3, #0x10
	adds r2, #0x04
	cmp r2, #0x05
	ble _0816E204
_0816E24C:
	adds r5, #0x04
	adds r6, #0x01
	cmp r6, #0x04
	ble _0816E19E
	add r3, sp, #0x010
	mov r4, sp
	mov r1, r8
	add r1, r12
	adds r2, r1, #0x0
	ldrh r0, [r4, #0x00]
	strb r0, [r1, #0x00]
	add r4, sp, #0x004
	ldrh r0, [r4, #0x00]
	strb r0, [r1, #0x06]
	adds r4, #0x04
	ldrh r0, [r4, #0x00]
	strb r0, [r2, #0x0C]
	adds r4, #0x04
	ldrh r0, [r4, #0x00]
	strb r0, [r2, #0x12]
	ldrh r0, [r3, #0x00]
	strb r0, [r2, #0x18]
	adds r4, #0x08
	ldrh r0, [r4, #0x00]
	strb r0, [r2, #0x1E]
	ldr r0, [r7, #0x00]
	adds r0, #0x01
	str r0, [r7, #0x00]
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0816E290: .4byte dword_821AC02 @ =0x0821AC02
