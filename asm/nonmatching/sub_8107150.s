	.syntax unified
	.text

	thumb_func_start sub_8107150
sub_8107150:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081071A4
	ldr r0, _081071AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x7C]
	ldr r1, _081071B0 @ =0x084FCE8C
	ldrh r0, [r6, #0x16]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r5, [r0, #0x00]
	ldr r1, [r2, #0x18]
	cmp r1, #0x00
	bge _08107178
	adds r1, #0xFF
_08107178:
	asrs r1, r1, #0x08
	ldr r0, [r2, #0x1C]
	cmp r0, #0x00
	bge _08107182
	adds r0, #0xFF
_08107182:
	asrs r0, r0, #0x08
	adds r4, r0, #0x2
	ldr r3, [r2, #0x20]
	cmp r3, #0x00
	bge _0810718E
	adds r3, #0xFF
_0810718E:
	asrs r3, r3, #0x08
	subs r3, #0x02
	adds r0, r2, #0x0
	adds r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r2, r4, #0x0
	bl sub_80DF024
	ldr r0, _081071B4 @ =0x080FD245
	str r0, [r6, #0x04]
_081071A4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081071AC: .4byte 0x03000FD8
_081071B0: .4byte dword_84FCE8C @ =0x084FCE8C
_081071B4: .4byte sub_80FD244
