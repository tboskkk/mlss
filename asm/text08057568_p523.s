	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80DAAEC
sub_80DAAEC:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0xB2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldrh r0, [r2, #0x00]
	subs r0, #0x5E
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _080DAB1A
	adds r0, #0xFF
_080DAB1A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _080DAB26
	adds r0, #0xFF
_080DAB26:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080DAB32
	adds r0, #0xFF
_080DAB32:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x000]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	blt _080DAB56
	ldr r1, [sp, #0x004]
	movs r0, #0x88
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _080DAB5C
_080DAB56:
	adds r0, r4, #0x0
	bl sub_807C298
_080DAB5C:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80DAB64
sub_80DAB64:
	push {r4, r5, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r0, #0xAE
	adds r1, r5, #0x0
	adds r1, #0xB0
	adds r2, r5, #0x0
	adds r2, #0xB2
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	ldr r3, _080DABC8 @ =0x00000499
	str r3, [sp, #0x00C]
	movs r3, #0xFD
	str r3, [sp, #0x010]
	str r4, [sp, #0x014]
	movs r3, #0x00
	bl sub_808552C
	adds r1, r5, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x69
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DABCC @ =0x080DA6D1
	str r0, [r5, #0x4C]
	add sp, #0x018
	pop {r4, r5}
	pop {r0}
	bx r0
_080DABC8: .4byte 0x00000499
_080DABCC: .4byte sub_80DA6D0
