	.syntax unified
	.text

	thumb_func_start sub_812290C
sub_812290C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r9, r2
	cmp r1, #0x63
	bhi _08122986
	cmp r8, r9
	beq _0812294A
	cmp r1, #0xFF
	beq _0812294A
	movs r4, #0x78
	movs r5, #0xA4
	lsls r5, r5, #0x01
	ldr r1, _081229DC @ =0x08202F58
	mov r0, sp
	movs r2, #0x0C
	bl memcpy
	strh r4, [r7, #0x00]
	ldr r0, _081229E0 @ =0x00004020
	strh r0, [r7, #0x02]
	strh r5, [r7, #0x04]
	adds r7, #0x08
_0812294A:
	ldr r0, _081229E4 @ =0x083BF370
	mov r2, r8
	lsls r1, r2, #0x03
	adds r1, r1, r0
	ldrb r0, [r1, #0x04]
	cmp r0, #0x00
	beq _08122986
	adds r4, r0, #0x0
	lsls r4, r4, #0x13
	ldr r0, _081229E8 @ =0xFDA00000
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	movs r6, #0x08
	movs r5, #0x02
	ldr r1, _081229DC @ =0x08202F58
	mov r0, sp
	movs r2, #0x0C
	bl memcpy
	ldr r0, _081229EC @ =0x00004074
	strh r0, [r7, #0x00]
	lsls r0, r5, #0x0E
	orrs r6, r0
	strh r6, [r7, #0x02]
	lsls r0, r5, #0x0C
	lsls r5, r5, #0x0A
	orrs r0, r5
	orrs r4, r0
	strh r4, [r7, #0x04]
	adds r7, #0x08
_08122986:
	mov r2, r9
	cmp r2, #0x63
	bhi _081229CA
	cmp r8, r9
	beq _081229CA
	ldr r0, _081229E4 @ =0x083BF370
	lsls r1, r2, #0x03
	adds r1, r1, r0
	ldrb r0, [r1, #0x04]
	cmp r0, #0x00
	beq _081229CA
	adds r4, r0, #0x0
	lsls r4, r4, #0x13
	ldr r0, _081229E8 @ =0xFDA00000
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	movs r6, #0x70
	movs r5, #0x02
	ldr r1, _081229DC @ =0x08202F58
	mov r0, sp
	movs r2, #0x0C
	bl memcpy
	ldr r0, _081229EC @ =0x00004074
	strh r0, [r7, #0x00]
	lsls r0, r5, #0x0E
	orrs r6, r0
	strh r6, [r7, #0x02]
	lsls r0, r5, #0x0C
	lsls r5, r5, #0x0A
	orrs r0, r5
	orrs r4, r0
	strh r4, [r7, #0x04]
	adds r7, #0x08
_081229CA:
	adds r0, r7, #0x0
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081229DC: .4byte 0x08202F58
_081229E0: .4byte 0x00004020
_081229E4: .4byte 0x083BF370
_081229E8: .4byte 0xFDA00000
_081229EC: .4byte 0x00004074
