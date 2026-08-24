	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	ldr r0, _0805BFC4 @ =0x00000584
	adds r6, r7, r0
	ldrb r5, [r6, #0x00]
	cmp r5, #0x00
	bne _0805BFB6
	ldr r1, _0805BFC8 @ =0x00000585
	adds r1, r1, r7
	mov r8, r1
	movs r2, #0x02
	strb r2, [r1, #0x00]
	adds r0, #0x06
	adds r1, r7, r0
	movs r4, #0x00
	movs r3, #0x03
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r1, _0805BFCC @ =0x0000058C
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	movs r0, #0xB2
	lsls r0, r0, #0x03
	adds r1, r7, r0
	movs r0, #0x06
	strh r0, [r1, #0x00]
	ldr r1, _0805BFD0 @ =0x00000592
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	subs r1, #0x0A
	adds r0, r7, r1
	strb r2, [r0, #0x00]
	ldr r0, _0805BFD4 @ =0x00000596
	adds r1, r7, r0
	movs r0, #0x08
	strb r0, [r1, #0x00]
	ldr r1, _0805BFD8 @ =0x0000058E
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	adds r1, #0x06
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	adds r1, #0x03
	adds r0, r7, r1
	strb r3, [r0, #0x00]
	movs r0, #0x01
	strb r0, [r6, #0x00]
	adds r1, #0x01
	adds r0, r7, r1
	strb r4, [r0, #0x00]
	ldr r0, _0805BFDC @ =0x03000E08
	mov r9, r0
	movs r4, #0xA0
	lsls r4, r4, #0x03
	ldr r2, _0805BFE0 @ =0x081E2820
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r5, _0805BFE4 @ =0x03000E0C
	ldr r2, _0805BFE8 @ =0x081E2828
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x00]
	movs r3, #0x00
	adds r6, r7, #0x0
	adds r6, #0x5A
	adds r5, r7, #0x0
	adds r5, #0x60
	mov r4, r8
	mov r8, r9
_0805BF78:
	mov r0, r8
	ldr r2, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r2, r1, r2
	ldr r0, _0805BFE4 @ =0x03000E0C
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r6, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r5, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x02]
	strh r0, [r2, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x9F
	bls _0805BF78
	adds r0, r7, #0x0
	bl sub_805C14C
	ldr r0, _0805BFEC @ =0x0805C5F5
	movs r1, #0x00
	bl sub_8029888
_0805BFB6:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805BFC4: .4byte 0x00000584
_0805BFC8: .4byte 0x00000585
_0805BFCC: .4byte 0x0000058C
_0805BFD0: .4byte 0x00000592
_0805BFD4: .4byte 0x00000596
_0805BFD8: .4byte 0x0000058E
_0805BFDC: .4byte 0x03000E08
_0805BFE0: .4byte 0x081E2820
_0805BFE4: .4byte 0x03000E0C
_0805BFE8: .4byte 0x081E2828
_0805BFEC: .4byte sub_805C5F4
