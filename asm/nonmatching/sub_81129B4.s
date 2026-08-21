	.syntax unified
	.text

	thumb_func_start sub_81129B4
sub_81129B4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08112A18
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081129DA
	adds r1, #0xFF
_081129DA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _081129E4
	adds r2, #0xFF
_081129E4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _081129EE
	adds r3, #0xFF
_081129EE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x9C
	lsls r0, r0, #0x06
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	subs r1, #0x04
	movs r0, #0x04
	str r0, [r1, #0x00]
	ldr r0, _08112A20 @ =0x081116C1
	str r0, [r4, #0x4C]
	movs r0, #0x8B
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08112A18:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08112A20: .4byte sub_81116C0
