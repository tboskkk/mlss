	.syntax unified
	.text

	thumb_func_start sub_810FD94
sub_810FD94:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810FDF2
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x89
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0810FDD0
	adds r1, #0xFF
_0810FDD0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0810FDDA
	adds r2, #0xFF
_0810FDDA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0810FDE4
	adds r3, #0xFF
_0810FDE4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0810FDFC @ =0x0000215C
	bl sub_80DF024
	ldr r0, _0810FE00 @ =0x0810FF19
	str r0, [r4, #0x4C]
_0810FDF2:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810FDFC: .4byte 0x0000215C
_0810FE00: .4byte sub_810FF18
