	.syntax unified
	.text

	thumb_func_start sub_8051A00
sub_8051A00:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x3C]
	ldrh r0, [r4, #0x26]
	ldrh r1, [r4, #0x1C]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x3C]
	ldrh r0, [r4, #0x28]
	ldrh r1, [r4, #0x1E]
	subs r0, r0, r1
	strh r0, [r2, #0x02]
	movs r1, #0x1E
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bne _08051A28
	ldr r0, [r4, #0x2C]
	bl sprite_hide_8021F20
	b _08051A2E
_08051A28:
	ldr r0, [r4, #0x2C]
	bl sprite_show_8020CBC
_08051A2E:
	movs r0, #0x1C
	ldsh r1, [r4, r0]
	ldrh r0, [r4, #0x20]
	subs r0, #0xF0
	cmp r1, r0
	bne _08051A42
	ldr r0, [r4, #0x30]
	bl sprite_hide_8021F20
	b _08051A48
_08051A42:
	ldr r0, [r4, #0x30]
	bl sprite_show_8020CBC
_08051A48:
	movs r0, #0x1E
	ldsh r1, [r4, r0]
	ldrh r0, [r4, #0x22]
	subs r0, #0xA0
	cmp r1, r0
	bne _08051A5C
	ldr r0, [r4, #0x34]
	bl sprite_hide_8021F20
	b _08051A62
_08051A5C:
	ldr r0, [r4, #0x34]
	bl sprite_show_8020CBC
_08051A62:
	movs r1, #0x1C
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bne _08051A72
	ldr r0, [r4, #0x38]
	bl sprite_hide_8021F20
	b _08051A78
_08051A72:
	ldr r0, [r4, #0x38]
	bl sprite_show_8020CBC
_08051A78:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
