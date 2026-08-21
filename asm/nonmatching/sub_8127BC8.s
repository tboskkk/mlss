	.syntax unified
	.text

	thumb_func_start sub_8127BC8
sub_8127BC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08127C4C @ =0x03000FFC
	ldr r0, [r0, #0x00]
	mov r9, r0
	lsls r2, r6, #0x03
	subs r2, r2, r6
	lsls r2, r2, #0x05
	subs r2, r2, r6
	lsls r2, r2, #0x03
	adds r3, r0, r2
	adds r0, r3, #0x0
	adds r0, #0x60
	ldrb r0, [r0, #0x00]
	strb r0, [r4, #0x14]
	adds r0, r3, #0x0
	adds r0, #0x9C
	ldrb r0, [r0, #0x00]
	strb r0, [r4, #0x15]
	adds r0, r3, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x04]
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	str r1, [r4, #0x04]
	adds r0, r3, #0x0
	adds r0, #0xB0
	ldr r1, [r0, #0x04]
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x08]
	str r1, [r4, #0x0C]
	adds r0, r3, #0x0
	adds r0, #0xB8
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x10]
	ldr r0, _08127C50 @ =0x03001038
	mov r8, r0
	ldr r0, _08127C54 @ =0x0819832C
	ldr r1, _08127C58 @ =0x08198220
	mov r10, r1
	subs r7, r0, r1
	mov r0, r8
	ldr r3, [r0, #0x00]
	adds r3, r3, r7
	movs r0, #0xE0
	lsls r0, r0, #0x03
	add r0, r9
	adds r5, r0, r2
	ldr r0, [r5, #0x00]
	ldr r1, _08127C5C @ =0x00034BC0
	bl _call_via_r3
	adds r3, r0, #0x0
	cmp r3, #0x63
	bls _08127C60
	movs r0, #0x3B
	strb r0, [r4, #0x17]
	movs r0, #0x63
	strb r0, [r4, #0x16]
	b _08127C8A
_08127C4C: .4byte 0x03000FFC
_08127C50: .4byte 0x03001038
_08127C54: .4byte 0x0819832C
_08127C58: .4byte 0x08198220
_08127C5C: .4byte 0x00034BC0
_08127C60:
	strb r3, [r4, #0x16]
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r7
	ldr r0, [r5, #0x00]
	movs r1, #0xE1
	lsls r1, r1, #0x04
	bl _call_via_r2
	adds r3, r0, #0x0
	ldr r0, _08127CC4 @ =0x08198350
	mov r1, r10
	subs r0, r0, r1
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	movs r1, #0x3C
	bl _call_via_r2
	strb r0, [r4, #0x17]
_08127C8A:
	lsls r1, r6, #0x03
	subs r1, r1, r6
	lsls r1, r1, #0x05
	subs r1, r1, r6
	lsls r1, r1, #0x03
	mov r0, r9
	adds r2, r0, r1
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #0x1C
	lsrs r3, r0, #0x1F
	lsls r0, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x02
	adds r0, r0, r1
	add r0, r9
	ldrh r0, [r0, #0x18]
	strh r0, [r4, #0x12]
	ldrb r1, [r2, #0x14]
	lsls r0, r1, #0x1A
	cmp r0, #0x00
	blt _08127CC8
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #0x1D
	cmp r0, #0x00
	blt _08127CC8
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1F
	b _08127CCA
	.byte 0x00, 0x00
_08127CC4: .4byte 0x08198350
_08127CC8:
	movs r0, #0x02
_08127CCA:
	strb r0, [r4, #0x18]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
