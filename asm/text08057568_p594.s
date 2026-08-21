	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81430CC
sub_81430CC:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x2C
	ldsh r1, [r0, r2]
	ldr r0, _08143124 @ =0x0000018F
	cmp r1, r0
	ble _0814311A
	adds r0, #0xE5
	adds r1, r5, r0
	movs r2, #0x00
	movs r0, #0x90
	lsls r0, r0, #0x05
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	str r2, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x07
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x08]
	str r0, [r6, #0x00]
_0814311A:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08143124: .4byte 0x0000018F
	thumb_func_start sub_8143128
sub_8143128:
	push {r4, r5, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	bl _call_via_r3
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081431BA
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	add r0, sp, #0x008
	movs r1, #0x1A
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	movs r1, #0x1B
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	movs r1, #0x1C
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	movs r1, #0x1D
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	movs r1, #0x1E
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	movs r1, #0x1F
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r4, #0x08
	ldsh r3, [r0, r4]
	movs r4, #0x0A
	ldsh r1, [r0, r4]
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081431BA
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _081431C4 @ =0x08143315
	str r0, [r1, #0x00]
	movs r4, #0xCE
	lsls r4, r4, #0x01
	adds r1, r5, r4
	ldr r0, _081431C8 @ =0x081431CD
	str r0, [r1, #0x00]
_081431BA:
	add sp, #0x018
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081431C4: .4byte sub_8143314
_081431C8: .4byte sub_81431CC
	thumb_func_start sub_81431CC
sub_81431CC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r4, #0x0
	adds r7, #0x58
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r6, r4, r0
	ldr r3, [r6, #0x00]
	adds r0, r5, #0x0
	adds r2, r6, #0x0
	bl _call_via_r3
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081432BE
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081432B4
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x28]
	movs r5, #0xD8
	lsls r5, r5, #0x01
	adds r0, r4, r5
	ldr r3, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x36
	add r0, sp, #0x008
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x37
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	adds r1, r3, #0x0
	adds r1, #0x38
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	adds r1, r3, #0x0
	adds r1, #0x39
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	adds r1, r3, #0x0
	adds r1, #0x3A
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	adds r1, r3, #0x0
	adds r1, #0x3B
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r5, #0x0A
	ldsh r1, [r0, r5]
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081432B4
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _081432A8 @ =0x081432CD
	str r0, [r1, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, _081432AC @ =0x08143375
	str r0, [r1, #0x00]
	ldr r1, _081432B0 @ =0x081392F5
	str r1, [r6, #0x00]
	movs r5, #0xD2
	lsls r5, r5, #0x01
	adds r0, r4, r5
	str r1, [r0, #0x00]
	b _081432BE
	.byte 0x00, 0x00
_081432A8: .4byte sub_81432CC
_081432AC: .4byte sub_8143374
_081432B0: .4byte sub_81392F4
_081432B4:
	movs r0, #0xA0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _081432C8 @ =0x08143375
	str r0, [r1, #0x00]
_081432BE:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081432C8: .4byte sub_8143374
	thumb_func_start sub_81432CC
sub_81432CC:
	push {r4, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldr r3, [r2, #0x00]
	adds r1, r4, #0x0
	bl _call_via_r3
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r2, [r0, #0x00]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _081432FC
	lsls r1, r2, #0x1D
	lsrs r1, r1, #0x1F
	lsls r0, r2, #0x1C
	lsrs r0, r0, #0x1F
	ands r0, r1
	cmp r0, #0x00
	beq _0814330C
_081432FC:
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r2, #0xCE
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
_0814330C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8143314
sub_8143314:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r0, r6, #0x0
	movs r1, #0x10
	bl sub_81387C8
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r4, r6, r0
	movs r1, #0xCE
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r1, _08143370 @ =0x08136D01
	str r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r6, r2
	str r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	bl sub_8047154
	ldr r2, [r4, #0x00]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08143370: .4byte sub_8136D00
	thumb_func_start sub_8143374
sub_8143374:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _081433C8 @ =0x08143129
	str r2, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, _081433CC @ =0x08139421
	str r1, [r0, #0x00]
	adds r3, #0x04
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081433C8: .4byte sub_8143128
_081433CC: .4byte sub_8139420
