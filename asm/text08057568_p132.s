	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806CED0
sub_806CED0:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x84
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r6, r4, #0x0
	adds r6, #0x8C
	ldr r0, [r5, #0x00]
	ldr r1, [r6, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _0806CFB0
	movs r7, #0x00
	str r7, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806CF64 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x74]
	ldr r0, [r0, #0x30]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806CF26
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	blt _0806CF68
_0806CF26:
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	str r0, [r5, #0x00]
	subs r1, #0x26
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	b _0806CFA2
	.byte 0x00, 0x00
_0806CF64: .4byte 0x03000FD8
_0806CF68:
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r7, [r0, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
_0806CFA2:
	ldr r0, _0806CFB8 @ =0x0806D30D
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_0806CFB0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CFB8: .4byte sub_806D30C
	thumb_func_start sub_806CFBC
sub_806CFBC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0806CFDA
	subs r1, #0x20
	movs r0, #0xB4
	lsls r0, r0, #0x07
	b _0806CFE2
_0806CFDA:
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xFC
	lsls r0, r0, #0x07
_0806CFE2:
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806CFFA
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x90
	lsls r0, r0, #0x07
	b _0806D002
_0806CFFA:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x06
_0806D002:
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	subs r0, #0x28
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _0806D044 @ =0x0806D049
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D044: .4byte sub_806D048
	thumb_func_start sub_806D048
sub_806D048:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D088
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D066
	adds r1, #0xFF
_0806D066:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D070
	adds r2, #0xFF
_0806D070:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D07A
	adds r3, #0xFF
_0806D07A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D0B8 @ =0x00002122
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D088:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D0F4
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x01
	str r0, [r1, #0x00]
	subs r1, #0x20
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806D0BC
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xA0
	lsls r0, r0, #0x06
	b _0806D0C2
_0806D0B8: .4byte 0x00002122
_0806D0BC:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, _0806D0FC @ =0xFFFFF800
_0806D0C2:
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	subs r0, #0x28
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806D100 @ =0x0806D105
	str r0, [r4, #0x4C]
_0806D0F4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806D0FC: .4byte 0xFFFFF800
_0806D100: .4byte sub_806D104
	thumb_func_start sub_806D104
sub_806D104:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D144
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D122
	adds r1, #0xFF
_0806D122:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D12C
	adds r2, #0xFF
_0806D12C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D136
	adds r3, #0xFF
_0806D136:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D168 @ =0x00002122
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D144:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D1C6
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x02
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0806D16C
	subs r1, #0x20
	movs r0, #0xFC
	lsls r0, r0, #0x07
	b _0806D174
_0806D168: .4byte 0x00002122
_0806D16C:
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xB4
	lsls r0, r0, #0x07
_0806D174:
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806D18C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x90
	lsls r0, r0, #0x07
	b _0806D194
_0806D18C:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x06
_0806D194:
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	subs r0, #0x28
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806D1D0 @ =0x0806D1D5
	str r0, [r4, #0x4C]
_0806D1C6:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D1D0: .4byte sub_806D1D4
	thumb_func_start sub_806D1D4
sub_806D1D4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D214
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D1F2
	adds r1, #0xFF
_0806D1F2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D1FC
	adds r2, #0xFF
_0806D1FC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D206
	adds r3, #0xFF
_0806D206:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D244 @ =0x0000212B
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D214:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D282
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x03
	str r0, [r1, #0x00]
	subs r1, #0x20
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806D248
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _0806D250
_0806D244: .4byte 0x0000212B
_0806D248:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xD0
	lsls r0, r0, #0x07
_0806D250:
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	subs r0, #0x28
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806D28C @ =0x0806D291
	str r0, [r4, #0x4C]
_0806D282:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D28C: .4byte sub_806D290
	thumb_func_start sub_806D290
sub_806D290:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D2D0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D2AE
	adds r1, #0xFF
_0806D2AE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D2B8
	adds r2, #0xFF
_0806D2B8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D2C2
	adds r3, #0xFF
_0806D2C2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D2F0 @ =0x0000212B
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D2D0:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D300
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0806D2F4
	adds r0, r4, #0x0
	bl sub_806CFBC
	b _0806D300
_0806D2F0: .4byte 0x0000212B
_0806D2F4:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x2D
	strh r1, [r0, #0x00]
	ldr r0, _0806D308 @ =0x0806D35D
	str r0, [r4, #0x4C]
_0806D300:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806D308: .4byte sub_806D35C
	thumb_func_start sub_806D30C
sub_806D30C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D336
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _0806D33C @ =0x0806D481
	str r0, [r4, #0x4C]
_0806D336:
	pop {r4}
	pop {r0}
	bx r0
_0806D33C: .4byte sub_806D480
	thumb_func_start sub_806D340
sub_806D340:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806D358 @ =0x0806CD71
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806D358: .4byte sub_806CD70
	thumb_func_start sub_806D35C
sub_806D35C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D386
	movs r0, #0xD2
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806D38C @ =0x0808750D
	str r0, [r4, #0x4C]
_0806D386:
	pop {r4}
	pop {r0}
	bx r0
_0806D38C: .4byte sub_808750C
	thumb_func_start sub_806D390
sub_806D390:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D3BA
	movs r0, #0xD2
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806D3C0 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806D3BA:
	pop {r4}
	pop {r0}
	bx r0
_0806D3C0: .4byte sub_808750C
	thumb_func_start sub_806D3C4
sub_806D3C4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D3EE
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _0806D3F4 @ =0x0806CCB9
	str r0, [r4, #0x4C]
_0806D3EE:
	pop {r4}
	pop {r0}
	bx r0
_0806D3F4: .4byte sub_806CCB8
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x25, 0x1C, 0xA0, 0x35, 0x28, 0x68, 0x00, 0x28, 0x0D, 0xD1, 0x2C, 0xF1
	.byte 0x93, 0xFD, 0x22, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x01, 0x40, 0x11, 0x60, 0x02, 0x20, 0x28, 0x60
	.byte 0x21, 0x1C, 0xA4, 0x31, 0xA0, 0x20, 0x80, 0x00, 0x08, 0x60, 0x03, 0x48, 0xE0, 0x64, 0x01, 0x20
	.byte 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF1, 0xD4, 0x06, 0x08, 0x30, 0xB5, 0x04, 0x1C
	.byte 0x25, 0x1C, 0xA0, 0x35, 0x28, 0x68, 0x00, 0x28, 0x0C, 0xD1, 0x2C, 0xF1, 0x75, 0xFD, 0x22, 0x1C
	.byte 0x9C, 0x32, 0x01, 0x21, 0x01, 0x40, 0x11, 0x60, 0x03, 0x20, 0x28, 0x60, 0x21, 0x1C, 0xA4, 0x31
	.byte 0x02, 0x20, 0x08, 0x60, 0x20, 0x1C, 0x9C, 0x30, 0x00, 0x68, 0x00, 0x28, 0x04, 0xD0, 0x21, 0x1C
	.byte 0xA4, 0x31, 0x08, 0x68, 0x40, 0x42, 0x08, 0x60, 0x02, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x30, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x1D, 0xD5, 0x06, 0x08
	thumb_func_start sub_806D480
sub_806D480:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806D4DC
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D4DC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD2
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806D4E4 @ =0x08087541
	str r0, [r4, #0x68]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806D4E8 @ =0x0806D549
	str r0, [r4, #0x58]
	ldr r0, _0806D4EC @ =0x0806CFBD
	str r0, [r4, #0x4C]
_0806D4DC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D4E4: .4byte sub_8087540
_0806D4E8: .4byte sub_806D548
_0806D4EC: .4byte sub_806CFBC
	thumb_func_start sub_806D4F0
sub_806D4F0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x33
	str r0, [r1, #0x00]
	ldr r0, _0806D518 @ =0x0806CED1
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806D518: .4byte sub_806CED0
	thumb_func_start sub_806D51C
sub_806D51C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x33
	str r0, [r1, #0x00]
	ldr r0, _0806D544 @ =0x0806CBCD
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806D544: .4byte sub_806CBCC
	thumb_func_start sub_806D548
sub_806D548:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0806D574
	cmp r0, #0x01
	bgt _0806D566
	cmp r0, #0x00
	beq _0806D56C
	b _0806D584
_0806D566:
	cmp r0, #0x02
	beq _0806D57C
	b _0806D584
_0806D56C:
	ldr r0, _0806D570 @ =0x0806D049
	b _0806D586
_0806D570: .4byte sub_806D048
_0806D574:
	ldr r0, _0806D578 @ =0x0806D105
	b _0806D586
_0806D578: .4byte sub_806D104
_0806D57C:
	ldr r0, _0806D580 @ =0x0806D1D5
	b _0806D586
_0806D580: .4byte sub_806D1D4
_0806D584:
	ldr r0, _0806D590 @ =0x0806D291
_0806D586:
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806D590: .4byte sub_806D290
	thumb_func_start sub_806D594
sub_806D594:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _0806D614 @ =0x03000E3C
	movs r4, #0x00
	str r4, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _0806D618 @ =0x0806E7CD
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D614: .4byte 0x03000E3C
_0806D618: .4byte sub_806E7CC
	thumb_func_start sub_806D61C
sub_806D61C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D69C
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r0, _0806D6A4 @ =0x0806E795
	str r0, [r4, #0x4C]
_0806D69C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D6A4: .4byte sub_806E794
	thumb_func_start sub_806D6A8
sub_806D6A8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806D750
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r6, #0x00
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D750
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r5, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r0, _0806D758 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r1, _0806D75C @ =0x0000178E
	adds r0, r5, #0x0
	bl sub_8086858
	ldr r1, _0806D760 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806D764 @ =0x0806E739
	str r0, [r5, #0x58]
	adds r0, r5, #0x0
	adds r0, #0xA8
	str r6, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	ldr r0, _0806D768 @ =0x00000199
	strh r0, [r1, #0x00]
	subs r1, #0x03
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _0806D76C @ =0x0806D771
	str r0, [r5, #0x4C]
_0806D750:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D758: .4byte sub_8087540
_0806D75C: .4byte 0x0000178E
_0806D760: .4byte 0x03000E3C
_0806D764: .4byte 0x0806E739
_0806D768: .4byte 0x00000199
_0806D76C: .4byte sub_806D770
