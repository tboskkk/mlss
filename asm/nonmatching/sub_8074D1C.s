	.syntax unified
	.text

	thumb_func_start sub_8074D1C
sub_8074D1C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074D3A
	ldr r1, [r4, #0x08]
	movs r3, #0x80
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
_08074D3A:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _08074DAA
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074D80
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074D5A
	adds r1, #0xFF
_08074D5A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074D64
	adds r2, #0xFF
_08074D64:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074D6E
	adds r3, #0xFF
_08074D6E:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08074D7C @ =0x000023C3
	bl sub_80DF024
	b _08074DA6
_08074D7C: .4byte 0x000023C3
_08074D80:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074D88
	adds r1, #0xFF
_08074D88:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074D92
	adds r2, #0xFF
_08074D92:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074D9C
	adds r3, #0xFF
_08074D9C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074DDC @ =0x000023CC
	bl sub_80DF024
_08074DA6:
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08074DAA:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	cmp r1, #0x00
	bge _08074DBC
	adds r1, #0xFF
_08074DBC:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08074DD2
	movs r0, #0x8C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807C298
_08074DD2:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074DDC: .4byte 0x000023CC
