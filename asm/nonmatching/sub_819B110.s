	.syntax unified
	.text

	thumb_func_start sub_819B110
sub_819B110:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_819B0AC
	adds r0, r4, #0x0
	movs r1, #0x4B
	bl sub_819B0F8
	ldr r6, _0819B178 @ =0x03007FF0
	ldr r1, [r6, #0x00]
	ldr r3, _0819B17C @ =0x00000494
	adds r1, r1, r3
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	movs r0, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	adds r1, r1, r3
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	movs r0, #0xFD
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _0819B180 @ =0x0821CB70
	lsls r5, r5, #0x02
	adds r5, r5, r0
	ldr r5, [r5, #0x00]
	mov r8, r5
	lsls r0, r4, #0x01
	adds r0, r0, r4
	lsls r0, r0, #0x07
	ldr r1, [r6, #0x00]
	adds r4, r1, r0
	ldrh r6, [r5, #0x00]
	adds r5, #0x02
	movs r7, #0x0B
_0819B160:
	movs r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _0819B184
	ldrh r1, [r5, #0x00]
	add r1, r8
	adds r5, #0x02
	adds r0, r4, #0x0
	bl sub_819B040
	b _0819B186
	.byte 0x00, 0x00
_0819B178: .4byte 0x03007FF0
_0819B17C: .4byte 0x00000494
_0819B180: .4byte dword_821CB70 @ =0x0821CB70
_0819B184:
	strh r0, [r4, #0x00]
_0819B186:
	adds r4, #0x20
	lsrs r6, r6, #0x01
	subs r7, #0x01
	cmp r7, #0x00
	bge _0819B160
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
