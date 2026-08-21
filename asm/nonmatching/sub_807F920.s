	.syntax unified
	.text

	thumb_func_start sub_807F920
sub_807F920:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0807F99C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _0807F9A0 @ =0x000037E8
	adds r3, r0, r1
	lsls r2, r2, #0x09
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	beq _0807F990
	movs r7, #0xFF
	lsls r7, r7, #0x08
	mov r12, r7
	ldr r0, _0807F9A4 @ =0x000001FF
	mov r8, r0
	movs r6, #0xC0
	lsls r6, r6, #0x08
_0807F94C:
	ldrh r1, [r4, #0x00]
	ldrb r0, [r4, #0x00]
	subs r0, #0x50
	strh r0, [r3, #0x00]
	adds r3, #0x02
	mov r7, r12
	ands r1, r7
	movs r7, #0x80
	lsls r7, r7, #0x01
	adds r0, r7, #0x0
	orrs r1, r0
	strh r1, [r3, #0x00]
	adds r3, #0x02
	ldrh r1, [r4, #0x02]
	adds r0, r1, #0x0
	mov r7, r8
	ands r0, r7
	subs r0, #0x78
	strh r0, [r3, #0x00]
	adds r3, #0x02
	ands r1, r6
	orrs r1, r2
	strh r1, [r3, #0x00]
	adds r3, #0x02
	ldrh r0, [r4, #0x04]
	strh r0, [r3, #0x00]
	adds r3, #0x02
	movs r0, #0x01
	strh r0, [r4, #0x06]
	ldr r4, [r4, #0x10]
	subs r5, #0x01
	subs r0, #0x02
	cmp r5, r0
	bne _0807F94C
_0807F990:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807F99C: .4byte 0x03000FDC
_0807F9A0: .4byte 0x000037E8
_0807F9A4: .4byte 0x000001FF
