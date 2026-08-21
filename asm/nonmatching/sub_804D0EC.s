	.syntax unified
	.text

	thumb_func_start sub_804D0EC
sub_804D0EC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0804D184
	ldr r1, _0804D17C @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0804D184
	movs r0, #0xA4
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x34]
	cmp r0, #0x00
	bge _0804D118
	ldr r1, _0804D180 @ =0x00000FFF
	adds r0, r0, r1
_0804D118:
	lsls r0, r0, #0x04
	asrs r1, r0, #0x10
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _0804D126
	ldr r0, _0804D180 @ =0x00000FFF
	adds r2, r2, r0
_0804D126:
	lsls r2, r2, #0x04
	asrs r2, r2, #0x10
	adds r0, r3, #0x0
	bl get_coldef_ptr_by_xz
	ldrb r1, [r0, #0x00]
	movs r6, #0x78
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x18
	beq _0804D176
	ldr r5, [r5, #0x00]
	ldr r0, [r4, #0x34]
	cmp r0, #0x00
	bge _0804D148
	ldr r1, _0804D180 @ =0x00000FFF
	adds r0, r0, r1
_0804D148:
	lsls r0, r0, #0x04
	asrs r3, r0, #0x10
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0804D160
	ldr r1, _0804D180 @ =0x00000FFF
	adds r0, r0, r1
_0804D160:
	lsls r2, r0, #0x04
	asrs r2, r2, #0x10
	adds r0, r5, #0x0
	adds r1, r3, #0x0
	bl get_coldef_ptr_by_xz
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x18
	bne _0804D184
_0804D176:
	movs r0, #0x01
	b _0804D186
	.byte 0x00, 0x00
_0804D17C: .4byte 0x0000035B
_0804D180: .4byte 0x00000FFF
_0804D184:
	movs r0, #0x00
_0804D186:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
