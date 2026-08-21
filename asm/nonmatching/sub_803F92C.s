	.syntax unified
	.text

	thumb_func_start sub_803F92C
sub_803F92C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r1, #0x0
	str r2, [sp, #0x000]
	str r3, [sp, #0x004]
	ldr r7, [r0, #0x14]
	lsls r1, r2, #0x02
	adds r0, r7, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	ldr r0, _0803F99C @ =0x00000352
	add r0, r9
	ldrb r0, [r0, #0x00]
	lsrs r5, r0, #0x07
	movs r0, #0x01
	eors r5, r0
	ldr r1, _0803F9A0 @ =0x00000209
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1E
	ands r0, r1
	cmp r0, #0x00
	bne _0803F9AC
	ldr r2, _0803F9A4 @ =0x00000242
	adds r0, r7, r2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r2, _0803F9A8 @ =0x083A0528
	lsls r3, r5, #0x02
	adds r0, r3, r2
	movs r4, #0x00
	ldsh r0, [r0, r4]
	adds r1, r1, r0
	mov r12, r1
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	lsls r0, r5, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r1, r1, r0
	mov r8, r1
	str r3, [sp, #0x008]
	b _0803F9EE
	.byte 0x00, 0x00
_0803F99C: .4byte 0x00000352
_0803F9A0: .4byte 0x00000209
_0803F9A4: .4byte 0x00000242
_0803F9A8: .4byte 0x083A0528
_0803F9AC:
	ldr r3, _0803FAB4 @ =0x00000242
	adds r0, r7, r3
	movs r2, #0x00
	ldsh r4, [r0, r2]
	ldr r3, _0803FAB8 @ =0x083A0530
	lsls r2, r5, #0x01
	adds r2, r2, r5
	lsls r2, r2, #0x03
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1C
	lsls r0, r1, #0x01
	adds r0, r0, r1
	adds r2, r2, r0
	lsls r0, r2, #0x01
	adds r0, r0, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r4, r4, r0
	mov r12, r4
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r0, r7, r4
	movs r4, #0x00
	ldsh r1, [r0, r4]
	adds r2, #0x01
	lsls r2, r2, #0x01
	adds r2, r2, r3
	movs r3, #0x00
	ldsh r0, [r2, r3]
	adds r1, r1, r0
	mov r8, r1
	lsls r5, r5, #0x02
	str r5, [sp, #0x008]
_0803F9EE:
	movs r4, #0xDA
	lsls r4, r4, #0x02
	add r9, r4
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x16]
	movs r0, #0x80
	ands r0, r1
	ldr r2, [sp, #0x000]
	lsls r2, r2, #0x05
	mov r10, r2
	cmp r0, #0x00
	beq _0803FA34
	mov r0, r8
	adds r0, #0x0B
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r6, #0x00]
	mov r0, r12
	adds r0, #0x09
	ldr r3, _0803FABC @ =0x000001FF
	adds r1, r3, #0x0
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x07
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r6, #0x02]
	mov r0, r10
	adds r0, #0x7E
	ldr r2, _0803FAC0 @ =0xFFFFE000
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r6, #0x04]
	adds r6, #0x08
_0803FA34:
	ldr r3, _0803FAC4 @ =0x083A05CE
	mov r4, r9
	ldr r0, [r4, #0x00]
	ldrb r2, [r0, #0x02]
	lsls r0, r2, #0x01
	adds r1, r0, r3
	movs r4, #0x00
	ldsb r4, [r1, r4]
	add r4, r12
	adds r0, #0x01
	adds r0, r0, r3
	movs r3, #0x00
	ldsb r3, [r0, r3]
	add r3, r8
	ldr r1, [sp, #0x004]
	negs r0, r1
	orrs r0, r1
	asrs r7, r0, #0x1F
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r7, r0
	ldr r5, _0803FAC8 @ =0x083A0596
	lsls r2, r2, #0x02
	adds r2, r2, r5
	ldrh r1, [r2, #0x00]
	adds r0, r7, #0x0
	orrs r0, r1
	movs r1, #0xFF
	ands r3, r1
	orrs r0, r3
	strh r0, [r6, #0x00]
	mov r2, r9
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x02]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldr r3, _0803FABC @ =0x000001FF
	adds r1, r3, #0x0
	ands r4, r1
	ldrh r0, [r0, #0x00]
	orrs r4, r0
	strh r4, [r6, #0x02]
	mov r2, r10
	adds r2, #0x6E
	mov r4, r9
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x02]
	cmp r0, #0x06
	bne _0803FAD0
	ldr r0, _0803FACC @ =0x0300034C
	ldr r0, [r0, #0x1C]
	movs r1, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0803FAD0
	mov r1, r10
	adds r1, #0x7E
	movs r0, #0xE0
	lsls r0, r0, #0x08
	orrs r1, r0
	b _0803FAD6
	.byte 0x00, 0x00
_0803FAB4: .4byte 0x00000242
_0803FAB8: .4byte 0x083A0530
_0803FABC: .4byte 0x000001FF
_0803FAC0: .4byte 0xFFFFE000
_0803FAC4: .4byte 0x083A05CE
_0803FAC8: .4byte 0x083A0596
_0803FACC: .4byte 0x0300034C
_0803FAD0:
	movs r1, #0xE0
	lsls r1, r1, #0x08
	orrs r1, r2
_0803FAD6:
	strh r1, [r6, #0x04]
	adds r6, #0x08
	mov r0, r8
	adds r0, #0x10
	ldr r2, [sp, #0x004]
	lsls r1, r2, #0x01
	subs r0, r0, r1
	movs r3, #0xFF
	ands r0, r3
	orrs r0, r7
	strh r0, [r6, #0x00]
	add r1, r12
	ldr r4, _0803FB94 @ =0x000001FF
	adds r2, r4, #0x0
	ands r1, r2
	movs r4, #0x80
	lsls r4, r4, #0x07
	adds r0, r4, #0x0
	orrs r1, r0
	strh r1, [r6, #0x02]
	ldr r0, [sp, #0x008]
	adds r0, #0x66
	ldr r4, _0803FB98 @ =0xFFFFE000
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r6, #0x04]
	adds r6, #0x08
	mov r0, r8
	ands r0, r3
	orrs r7, r0
	strh r7, [r6, #0x00]
	mov r3, r12
	ands r3, r2
	movs r4, #0x80
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	orrs r3, r0
	strh r3, [r6, #0x02]
	ldr r2, [sp, #0x000]
	lsls r0, r2, #0x04
	adds r0, #0x46
	orrs r0, r1
	strh r0, [r6, #0x04]
	adds r6, #0x08
	ldr r3, [sp, #0x004]
	cmp r3, #0x00
	beq _0803FB80
	ldr r1, _0803FB9C @ =0x0300034C
	ldr r4, _0803FBA0 @ =0x00000888
	adds r2, r1, r4
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r0, r0, r1
	adds r0, #0x86
	ldrh r3, [r0, #0x00]
	movs r3, #0x00
	movs r4, #0xC0
	lsls r4, r4, #0x01
	strh r4, [r0, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r0, r0, r1
	adds r0, #0x8E
	ldrh r5, [r0, #0x00]
	strh r3, [r0, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r0, r0, r1
	adds r0, #0x96
	ldrh r5, [r0, #0x00]
	strh r3, [r0, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r0, r0, r1
	adds r0, #0x9E
	ldrh r1, [r0, #0x00]
	strh r4, [r0, #0x00]
_0803FB80:
	adds r0, r6, #0x0
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0803FB94: .4byte 0x000001FF
_0803FB98: .4byte 0xFFFFE000
_0803FB9C: .4byte 0x0300034C
_0803FBA0: .4byte 0x00000888
