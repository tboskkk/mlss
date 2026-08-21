	.syntax unified
	.text

	thumb_func_start sub_8099890
sub_8099890:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r4, r6, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	ble _080999AA
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8D
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r6, #0x28]
	ldr r5, [r0, #0x00]
	str r4, [sp, #0x008]
	adds r0, r6, #0x0
	adds r0, #0x9C
	str r0, [sp, #0x000]
	adds r1, r6, #0x0
	adds r1, #0xA0
	str r1, [sp, #0x004]
	movs r2, #0xA4
	adds r2, r2, r6
	mov r10, r2
	adds r7, r6, #0x0
	adds r7, #0x77
	str r7, [sp, #0x00C]
	movs r0, #0x01
	mov r8, r0
	movs r1, #0x00
	mov r9, r1
_080998EE:
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r3, r5, #0x0
	adds r3, #0x7F
	ldrb r2, [r3, #0x00]
	movs r7, #0x09
	negs r7, r7
	adds r0, r7, #0x0
	ands r2, r0
	movs r1, #0x11
	negs r1, r1
	adds r0, r1, #0x0
	ands r2, r0
	strb r2, [r3, #0x00]
	ldr r7, [sp, #0x00C]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	mov r1, r8
	ands r1, r0
	lsls r1, r1, #0x06
	movs r7, #0x41
	negs r7, r7
	adds r0, r7, #0x0
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldr r1, [sp, #0x00C]
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	mov r1, r8
	ands r1, r0
	lsls r1, r1, #0x05
	adds r7, #0x20
	adds r0, r7, #0x0
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r3, [r4, #0x28]
	ldr r0, [r6, #0x28]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	lsls r2, r2, #0x1B
	adds r3, r3, r1
	lsrs r2, r2, #0x1B
	ldrb r0, [r3, #0x00]
	adds r7, #0x01
	adds r1, r7, #0x0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA4
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r7, [sp, #0x004]
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r2, r10
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0809999C @ =0x08099F7D
	str r0, [r4, #0x5C]
	mov r7, r9
	str r7, [r4, #0x60]
	ldr r0, [r6, #0x28]
	cmp r5, r0
	beq _080999A0
	ldr r5, [r5, #0x00]
	b _080998EE
_0809999C: .4byte sub_8099F7C
_080999A0:
	mov r1, r9
	ldr r0, [sp, #0x008]
	strh r1, [r0, #0x00]
	ldr r0, _080999BC @ =0x080999C1
	str r0, [r6, #0x4C]
_080999AA:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080999BC: .4byte sub_80999C0
