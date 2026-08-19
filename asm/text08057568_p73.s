	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EB05C
sub_80EB05C:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r4, r2, #0x0
	ldm r3!, {r1}
	cmp r1, #0x00
	beq _080EB06E
	cmp r1, #0x01
	beq _080EB076
	b _080EB092
_080EB06E:
	ldrh r1, [r3, #0x00]
	bl sub_80E9330
	b _080EB092
_080EB076:
	ldr r0, [r0, #0x04]
	ldr r2, [r3, #0x00]
	movs r1, #0x4C
	muls r1, r2
	adds r0, r0, r1
	adds r0, #0x42
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	cmp r0, #0x00
	blt _080EB092
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080EB094
_080EB092:
	movs r0, #0x01
_080EB094:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EB09C
sub_80EB09C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r3, #0x0
	ldr r1, [r5, #0x00]
	cmp r1, #0x04
	bgt _080EB0C4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	bl sub_80E6FB8
	ldr r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x11
	lsls r1, r0
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	bl sub_80E7118
	b _080EB0D8
_080EB0C4:
	adds r0, r4, #0x0
	bl sub_80E6E68
	ldr r0, [r4, #0x04]
	ldr r1, _080EB0EC @ =0x000001B3
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_80E7118
_080EB0D8:
	ldr r0, _080EB0F0 @ =0x03000FB8
	ldr r0, [r0, #0x00]
	adds r0, #0x31
	movs r1, #0x00
	strb r1, [r0, #0x00]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EB0EC: .4byte 0x000001B3
_080EB0F0: .4byte 0x03000FB8
	thumb_func_start script_cmd_wait_for_user_input
script_cmd_wait_for_user_input: @ 080EB0F4
	push {lr}
	ldr r0, [r1, #0x04]
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ldr r1, [r3, #0x00]
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080EB110
	movs r0, #0x01
	b _080EB116
_080EB110:
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x00]
	movs r0, #0x00
_080EB116:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EB11C
sub_80EB11C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r0, r1, #0x0
	ldr r1, [r3, #0x0C]
	ldr r4, [r3, #0x14]
	asrs r6, r1, #0x08
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r5, _080EB1A0 @ =0x083BA4B4
	movs r2, #0xFF
	ands r1, r2
	lsls r1, r1, #0x01
	adds r1, r1, r5
	ldrb r1, [r1, #0x00]
	mov r9, r1
	lsls r5, r4, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r1, r2, #0x0
	ands r5, r1
	adds r1, r4, #0x0
	subs r1, #0x80
	lsls r1, r1, #0x01
	movs r7, #0xC0
	lsls r7, r7, #0x02
	adds r2, r7, #0x0
	ands r1, r2
	orrs r5, r1
	lsls r1, r4, #0x01
	movs r2, #0xC0
	ands r1, r2
	orrs r5, r1
	movs r1, #0x1F
	ands r4, r1
	orrs r5, r4
	ldrb r1, [r3, #0x00]
	movs r4, #0x04
	ldsh r2, [r3, r4]
	movs r4, #0x08
	ldsh r7, [r3, r4]
	mov r8, r7
	str r6, [sp, #0x000]
	mov r7, r9
	str r7, [sp, #0x004]
	ldrh r4, [r3, #0x10]
	str r4, [sp, #0x008]
	str r5, [sp, #0x00C]
	ldrb r4, [r3, #0x18]
	str r4, [sp, #0x010]
	ldr r3, [r3, #0x1C]
	str r3, [sp, #0x014]
	mov r3, r8
	bl sub_80E5BCC
	movs r0, #0x01
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EB1A0: .4byte 0x083BA4B4
	.byte 0x70, 0xB5, 0x86, 0xB0, 0x08, 0x1C, 0x19, 0x78, 0x04, 0x24, 0x1A, 0x5F, 0x08, 0x24, 0x1E, 0x5F
	.byte 0xDD, 0x68, 0x2C, 0x12, 0x24, 0x06, 0x24, 0x0E, 0x00, 0x94, 0x2D, 0x06, 0x2D, 0x0E, 0x01, 0x95
	.byte 0x1C, 0x8A, 0x02, 0x94, 0x9C, 0x8A, 0x03, 0x94, 0x1C, 0x7E, 0x04, 0x94, 0xDB, 0x69, 0x05, 0x93
	.byte 0x33, 0x1C, 0xFA, 0xF7, 0xF9, 0xFC, 0x01, 0x20, 0x06, 0xB0, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47
	thumb_func_start script_cmd_wait_frames
script_cmd_wait_frames: @ 080EB1E4
	push {lr}
	adds r3, r1, #0x0
	adds r1, #0x9C
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080EB202
	adds r2, r3, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	b _080EB204
_080EB202:
	movs r0, #0x01
_080EB204:
	pop {r1}
	bx r1
