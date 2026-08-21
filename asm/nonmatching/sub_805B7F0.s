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
