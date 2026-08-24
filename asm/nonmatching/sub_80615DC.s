	.syntax unified
	.text

	thumb_func_start sub_80615DC
sub_80615DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080616AA
	movs r0, #0x9C
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r0, [r7, #0x2C]
	ldr r6, [r0, #0x28]
	adds r2, r6, #0x0
	adds r2, #0xD8
	ldr r5, _08061698 @ =0x083B869C
	lsls r4, r1, #0x03
	adds r4, r4, r1
	lsls r4, r4, #0x02
	adds r0, r4, r5
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0x04
	adds r0, r5, #0x4
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0x04
	adds r0, r5, #0x0
	adds r0, #0x08
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x0C
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7C
	movs r6, #0x00
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r6, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	adds r0, r7, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	adds r0, #0xA0
	str r6, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA4
	adds r5, #0x20
	adds r4, r4, r5
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0806169C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD8
	bl play_sfx_80195B4
	b _080616A6
	.byte 0x00, 0x00
_08061698: .4byte 0x083B869C
_0806169C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD9
	bl play_sfx_80195B4
_080616A6:
	ldr r0, _080616B4 @ =0x08061795
	str r0, [r7, #0x4C]
_080616AA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080616B4: .4byte sub_8061794
