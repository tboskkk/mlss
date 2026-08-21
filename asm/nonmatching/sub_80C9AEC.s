	.syntax unified
	.text

	thumb_func_start sub_80C9AEC
sub_80C9AEC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C9B90 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C9B88
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C9B1A
	adds r1, #0xFF
_080C9B1A:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C9B24
	adds r2, #0xFF
_080C9B24:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C9B2E
	adds r3, #0xFF
_080C9B2E:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080C9B94 @ =0x00002FE6
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C9B54
	cmp r1, #0x04
	bne _080C9B84
_080C9B54:
	ldr r2, _080C9B98 @ =0x03001038
	ldr r0, _080C9B9C @ =0x0819832C
	ldr r1, _080C9BA0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x18
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C9B84:
	ldr r0, _080C9BA4 @ =0x080C9BA9
	str r0, [r7, #0x4C]
_080C9B88:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C9B90: .4byte 0x03000FD8
_080C9B94: .4byte 0x00002FE6
_080C9B98: .4byte 0x03001038
_080C9B9C: .4byte 0x0819832C
_080C9BA0: .4byte 0x08198220
_080C9BA4: .4byte sub_80C9BA8
