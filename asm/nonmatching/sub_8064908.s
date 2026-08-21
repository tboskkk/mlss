	.syntax unified
	.text

	thumb_func_start sub_8064908
sub_8064908:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r7, _08064970 @ =0x03000E18
	ldr r0, [r7, #0x00]
	ldr r5, _08064974 @ =0x03000E60
	ldr r6, _08064978 @ =0x03000E64
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_801B1C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0806497C
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x10]
	ldr r2, [r6, #0x00]
	str r2, [r4, #0x18]
	cmp r0, #0x00
	bge _08064942
	adds r0, #0xFF
_08064942:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0806494E
	adds r0, #0xFF
_0806494E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0806495A
	adds r0, #0xFF
_0806495A:
	asrs r0, r0, #0x08
	adds r0, #0x20
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	b _0806498E
	.byte 0x00, 0x00
_08064970: .4byte 0x03000E18
_08064974: .4byte 0x03000E60
_08064978: .4byte 0x03000E64
_0806497C:
	ldr r0, [r7, #0x00]
	bl free_heap_8018DA8
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08064998 @ =0x0806499D
	str r0, [r4, #0x4C]
_0806498E:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064998: .4byte sub_806499C
