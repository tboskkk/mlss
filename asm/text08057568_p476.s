	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810CCC8
sub_810CCC8:
	push {r4, lr}
	ldr r0, _0810CCEC @ =0x0810D625
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807D2D0
	adds r4, r0, #0x0
	movs r0, #0x00
	strh r0, [r4, #0x14]
	ldr r0, _0810CCF0 @ =0x0810D5F5
	movs r1, #0x18
	movs r2, #0x00
	bl sub_807D2D0
	str r4, [r0, #0x08]
	pop {r4}
	pop {r0}
	bx r0
_0810CCEC: .4byte sub_810D624
_0810CCF0: .4byte sub_810D5F4
	thumb_func_start sub_810CCF4
sub_810CCF4:
	push {r4, r5, lr}
	ldr r5, _0810CD2C @ =0x03000FD8
	ldr r3, [r5, #0x00]
	movs r0, #0xA3
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	beq _0810CD26
	movs r0, #0x00
	str r0, [r2, #0x00]
	str r0, [r1, #0x04]
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x02
	bl sub_8085260
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x03
	bl sub_8085260
_0810CD26:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810CD2C: .4byte 0x03000FD8
	thumb_func_start sub_810CD30
sub_810CD30:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0810CD8C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xF8
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldr r6, [r0, #0x00]
	movs r3, #0x16
	ldsh r1, [r4, r3]
	cmp r1, #0x05
	ble _0810CD4C
	movs r1, #0x05
_0810CD4C:
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r5, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r3, r0, #0x0
	adds r3, #0x08
	cmp r3, #0x00
	bge _0810CD62
	adds r3, #0x07
_0810CD62:
	asrs r3, r3, #0x03
	ldr r2, _0810CD90 @ =0x08201137
	ldr r0, [r4, #0x0C]
	movs r1, #0x0F
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	muls r0, r3
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_80850F8
	ldr r0, _0810CD94 @ =0x0810B319
	str r0, [r4, #0x04]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0810CD8C: .4byte 0x03000FD8
_0810CD90: .4byte 0x08201137
_0810CD94: .4byte sub_810B318
	.byte 0xC2, 0x68, 0x00, 0x21, 0x51, 0x60, 0x41, 0x60, 0x03, 0x48, 0x00, 0x68, 0xA4, 0x22, 0x92, 0x00
	.byte 0x80, 0x18, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03
	thumb_func_start sub_810CDB4
sub_810CDB4:
	push {r4, r5, lr}
	ldr r5, _0810CDF4 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810CDEE
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r0, r1, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	bl sub_8085260
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x05
	bl sub_8085260
	ldr r0, [r5, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, _0810CDF8 @ =0x0810CD99
	str r0, [r1, #0x04]
_0810CDEE:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810CDF4: .4byte 0x03000FD8
_0810CDF8: .4byte 0x0810CD99
