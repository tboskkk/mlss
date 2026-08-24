	.syntax unified
	.text

	thumb_func_start sub_805C8A4
sub_805C8A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0805C900 @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805C8F6
	ldr r1, _0805C904 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	movs r6, #0x00
_0805C8C2:
	adds r4, r6, #0x0
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _0805C8DE
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_805B618
_0805C8DE:
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrb r1, [r0, #0x13]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805C8C2
_0805C8F6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805C900: .4byte 0x03000DD0
_0805C904: .4byte dword_83B7108 @ =0x083B7108
