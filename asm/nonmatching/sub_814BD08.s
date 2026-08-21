	.syntax unified
	.text

	thumb_func_start sub_814BD08
sub_814BD08:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	add r4, sp, #0x010
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814BD72
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x28]
	mov r0, sp
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814BD7C @ =0x03001038
	ldr r0, _0814BD80 @ =0x0819832C
	ldr r1, _0814BD84 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x0E
	adds r2, r3, r0
	asrs r2, r2, #0x10
	ldr r0, _0814BD88 @ =0xFFE00000
	adds r3, r3, r0
	asrs r3, r3, #0x10
	mov r0, sp
	adds r1, r4, #0x0
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814BD72
	ldr r0, _0814BD8C @ =0x08149B81
	str r0, [r7, #0x00]
_0814BD72:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814BD7C: .4byte 0x03001038
_0814BD80: .4byte 0x0819832C
_0814BD84: .4byte 0x08198220
_0814BD88: .4byte 0xFFE00000
_0814BD8C: .4byte sub_8149B80
