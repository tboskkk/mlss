	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_805B7F0
sub_805B7F0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r1, _0805B89C @ =0x0000056C
	adds r6, r0, r1
	movs r2, #0x00
	strb r2, [r6, #0x00]
	ldr r3, _0805B8A0 @ =0x0000056D
	adds r1, r0, r3
	strb r2, [r1, #0x00]
	movs r1, #0xAE
	lsls r1, r1, #0x03
	adds r5, r0, r1
	movs r1, #0x00
	strh r2, [r5, #0x00]
	adds r3, #0x05
	adds r3, r3, r0
	mov r12, r3
	strh r2, [r3, #0x00]
	ldr r3, _0805B8A4 @ =0x0000056E
	adds r7, r0, r3
	strb r1, [r7, #0x00]
	ldr r1, _0805B8A8 @ =0x00000574
	adds r3, r0, r1
	str r2, [r3, #0x00]
	ldr r0, _0805B8AC @ =0x02000052
	mov r8, r0
	strh r2, [r0, #0x00]
	ldr r1, _0805B8B0 @ =0x02000050
	mov r9, r1
	strh r2, [r1, #0x00]
	ldr r0, _0805B8B4 @ =0x03000DD0
	ldrb r0, [r0, #0x09]
	ldr r1, _0805B8B8 @ =0x083B78AC
	lsls r2, r0, #0x03
	adds r0, r1, #0x4
	adds r4, r2, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0805B88E
	adds r2, r2, r1
	ldrb r0, [r2, #0x01]
	lsrs r0, r0, #0x04
	adds r0, #0x80
	strb r0, [r6, #0x00]
	ldrh r1, [r2, #0x00]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1A
	lsls r1, r1, #0x08
	adds r1, #0x40
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	adds r0, r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x00]
	str r0, [r3, #0x00]
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x18
	mov r1, r12
	strh r0, [r1, #0x00]
	ldrb r0, [r7, #0x00]
	ldr r1, [r3, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1B
	lsls r1, r1, #0x08
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	adds r0, r0, r1
	mov r3, r8
	strh r0, [r3, #0x00]
	ldrh r0, [r5, #0x00]
	mov r1, r9
	strh r0, [r1, #0x00]
_0805B88E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805B89C: .4byte 0x0000056C
_0805B8A0: .4byte 0x0000056D
_0805B8A4: .4byte 0x0000056E
_0805B8A8: .4byte 0x00000574
_0805B8AC: .4byte 0x02000052
_0805B8B0: .4byte 0x02000050
_0805B8B4: .4byte 0x03000DD0
_0805B8B8: .4byte 0x083B78AC
	thumb_func_start sub_805B8BC
sub_805B8BC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _0805B904 @ =0x0000056C
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805B9BE
	ldr r4, _0805B908 @ =0x00000572
	adds r1, r5, r4
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0805B9B2
	ldrb r0, [r2, #0x00]
	movs r2, #0x03
	ands r2, r0
	cmp r2, #0x01
	bne _0805B94E
	ldr r0, _0805B90C @ =0x0000056D
	adds r4, r5, r0
	ldrb r0, [r4, #0x00]
	ands r2, r0
	cmp r2, #0x00
	beq _0805B91A
	ldr r2, _0805B910 @ =0x0000056E
	adds r1, r5, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0805B914
	adds r0, #0x01
	strb r0, [r1, #0x00]
	b _0805B938
_0805B904: .4byte 0x0000056C
_0805B908: .4byte 0x00000572
_0805B90C: .4byte 0x0000056D
_0805B910: .4byte 0x0000056E
_0805B914:
	subs r0, #0x01
	strb r0, [r1, #0x00]
	b _0805B97C
_0805B91A:
	ldr r0, _0805B940 @ =0x0000056E
	adds r3, r5, r0
	ldrb r2, [r3, #0x00]
	ldr r1, _0805B944 @ =0x00000574
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x02]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0805B948
	subs r0, r2, #0x1
	strb r0, [r3, #0x00]
_0805B938:
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	b _0805B97C
_0805B940: .4byte 0x0000056E
_0805B944: .4byte 0x00000574
_0805B948:
	adds r0, r2, #0x1
	strb r0, [r3, #0x00]
	b _0805B97C
_0805B94E:
	cmp r2, #0x00
	bne _0805B97C
	ldr r4, _0805B970 @ =0x0000056E
	adds r2, r5, r4
	ldrb r3, [r2, #0x00]
	ldr r1, _0805B974 @ =0x00000574
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x02]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0805B978
	movs r0, #0x00
	b _0805B97A
_0805B970: .4byte 0x0000056E
_0805B974: .4byte 0x00000574
_0805B978:
	adds r0, r3, #0x1
_0805B97A:
	strb r0, [r2, #0x00]
_0805B97C:
	ldr r2, _0805B9C4 @ =0x0000056E
	adds r3, r5, r2
	ldrb r0, [r3, #0x00]
	ldr r4, _0805B9C8 @ =0x00000574
	adds r2, r5, r4
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x18
	subs r4, #0x02
	adds r1, r5, r4
	strh r0, [r1, #0x00]
	ldr r4, _0805B9CC @ =0x02000052
	ldrb r0, [r3, #0x00]
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1B
	lsls r1, r1, #0x08
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	adds r0, r0, r1
	strh r0, [r4, #0x00]
_0805B9B2:
	ldr r0, _0805B9D0 @ =0x02000050
	movs r2, #0xAE
	lsls r2, r2, #0x03
	adds r1, r5, r2
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x00]
_0805B9BE:
	pop {r4, r5}
	pop {r0}
	bx r0
_0805B9C4: .4byte 0x0000056E
_0805B9C8: .4byte 0x00000574
_0805B9CC: .4byte 0x02000052
_0805B9D0: .4byte 0x02000050
