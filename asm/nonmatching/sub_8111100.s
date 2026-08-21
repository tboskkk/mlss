	.syntax unified
	.text

	thumb_func_start sub_8111100
sub_8111100:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80883F0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08111168
	ldr r0, [r4, #0x28]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r0, [r3, #0x38]
	cmp r0, #0x00
	bge _0811111E
	adds r0, #0xFF
_0811111E:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x1B
	ldr r0, [r3, #0x3C]
	cmp r0, #0x00
	bge _0811112C
	adds r0, #0xFF
_0811112C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r0, [r3, #0x40]
	cmp r0, #0x00
	bge _08111138
	adds r0, #0xFF
_08111138:
	asrs r3, r0, #0x08
	adds r3, #0x0F
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08111170 @ =0x08111215
	str r0, [r4, #0x4C]
	movs r0, #0x41
	bl stop_sfx_80195A8
_08111168:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08111170: .4byte sub_8111214
