	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_813B8A8
sub_813B8A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r9, r1
	ldr r6, _0813B910 @ =0x03001038
	ldr r5, _0813B914 @ =0x0819832C
	ldr r0, _0813B918 @ =0x08198220
	subs r5, r5, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	ldr r4, _0813B91C @ =0x00000272
	mov r1, r8
	adds r0, r1, r4
	ldrh r0, [r0, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	add r4, r9
	ldrh r0, [r4, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0x00
	mov r0, r8
	ldr r3, [r0, #0x0C]
	adds r1, r3, r7
	mov r0, r9
	ldr r2, [r0, #0x0C]
	subs r0, r2, r4
	cmp r1, r0
	blt _0813B900
	subs r1, r3, r7
	adds r0, r2, r4
	cmp r1, r0
	bgt _0813B900
	movs r5, #0x01
_0813B900:
	adds r0, r5, #0x0
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0813B910: .4byte 0x03001038
_0813B914: .4byte 0x0819832C
_0813B918: .4byte 0x08198220
_0813B91C: .4byte 0x00000272
	thumb_func_start sub_813B920
sub_813B920:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x01C
	adds r6, r3, #0x0
	ldr r4, [sp, #0x034]
	ldr r7, [sp, #0x038]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r3, #0xC1
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	add r3, sp, #0x014
	str r3, [sp, #0x000]
	add r3, sp, #0x018
	str r3, [sp, #0x004]
	add r5, sp, #0x008
	movs r3, #0x01
	strb r3, [r5, #0x00]
	negs r4, r4
	lsrs r4, r4, #0x1F
	add r3, sp, #0x00C
	strb r4, [r3, #0x00]
	add r3, sp, #0x010
	bl sub_803FBA4
	adds r2, r0, #0x0
	cmp r7, #0x00
	beq _0813B96E
	ldrb r0, [r2, #0x00]
	movs r1, #0x78
	ands r1, r0
	cmp r1, #0x08
	beq _0813B966
	cmp r1, #0x30
	bne _0813B96E
_0813B966:
	ldrh r0, [r7, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r7, #0x00]
_0813B96E:
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0813B9A8
	ldr r1, [sp, #0x014]
	cmp r6, r1
	bgt _0813B990
	ldr r0, [sp, #0x010]
	cmp r6, r0
	blt _0813B9A8
	ldr r0, [sp, #0x030]
	adds r0, r6, r0
	cmp r0, r1
	bge _0813B9A8
_0813B98C:
	movs r0, #0x00
	b _0813B9AA
_0813B990:
	ldr r0, [sp, #0x018]
	cmp r6, r0
	blt _0813B99A
	cmp r1, #0x00
	bge _0813B98C
_0813B99A:
	ldr r0, [sp, #0x010]
	cmp r6, r0
	blt _0813B9A8
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0813B98C
_0813B9A8:
	movs r0, #0x01
_0813B9AA:
	add sp, #0x01C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_813B9B4
sub_813B9B4:
	push {r4, r5, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, _0813B9C8 @ =0x000002DE
	adds r2, r3, r0
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0813B9CC
	movs r0, #0x00
	b _0813B9F8
_0813B9C8: .4byte 0x000002DE
_0813B9CC:
	ldr r1, _0813BA08 @ =0x00000242
	adds r0, r3, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r3, #0x0C]
	adds r0, r0, r1
	str r0, [r3, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	lsrs r0, r0, #0x1F
_0813B9F8:
	cmp r0, #0x00
	bne _0813BA00
	ldr r0, [r4, #0x08]
	str r0, [r4, #0x00]
_0813BA00:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813BA08: .4byte 0x00000242
	thumb_func_start sub_813BA0C
sub_813BA0C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	bl sub_8139F08
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _0813BA2C
	ldr r0, _0813BA28 @ =0x0813B225
	b _0813BA72
_0813BA28: .4byte sub_813B224
_0813BA2C:
	ldr r0, _0813BA3C @ =0x000002DE
	adds r2, r4, r0
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0813BA40
	movs r0, #0x00
	b _0813BA6C
	.byte 0x00, 0x00
_0813BA3C: .4byte 0x000002DE
_0813BA40:
	ldr r1, _0813BA7C @ =0x00000242
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	lsrs r0, r0, #0x1F
_0813BA6C:
	cmp r0, #0x00
	bne _0813BA74
	ldr r0, [r5, #0x04]
_0813BA72:
	str r0, [r5, #0x00]
_0813BA74:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813BA7C: .4byte 0x00000242
	thumb_func_start sub_813BA80
sub_813BA80:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	bl sub_8139F08
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _0813BA9C
	ldr r0, [r5, #0x08]
	b _0813BAE2
_0813BA9C:
	ldr r0, _0813BAAC @ =0x000002DE
	adds r2, r4, r0
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0813BAB0
	movs r0, #0x00
	b _0813BADC
	.byte 0x00, 0x00
_0813BAAC: .4byte 0x000002DE
_0813BAB0:
	ldr r1, _0813BAEC @ =0x00000242
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	lsrs r0, r0, #0x1F
_0813BADC:
	cmp r0, #0x00
	bne _0813BAE4
	ldr r0, [r5, #0x04]
_0813BAE2:
	str r0, [r5, #0x00]
_0813BAE4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813BAEC: .4byte 0x00000242
	thumb_func_start sub_813BAF0
sub_813BAF0:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _0813BB0C
	ldr r0, [r5, #0x08]
	b _0813BB52
_0813BB0C:
	ldr r0, _0813BB1C @ =0x000002DE
	adds r2, r4, r0
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0813BB20
	movs r0, #0x00
	b _0813BB4C
	.byte 0x00, 0x00
_0813BB1C: .4byte 0x000002DE
_0813BB20:
	ldr r1, _0813BB5C @ =0x00000242
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	lsrs r0, r0, #0x1F
_0813BB4C:
	cmp r0, #0x00
	bne _0813BB54
	ldr r0, [r5, #0x04]
_0813BB52:
	str r0, [r5, #0x00]
_0813BB54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813BB5C: .4byte 0x00000242
	thumb_func_start sub_813BB60
sub_813BB60:
	push {r4, r5, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, _0813BB74 @ =0x000002DE
	adds r2, r3, r0
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0813BB78
	movs r0, #0x00
	b _0813BBA4
_0813BB74: .4byte 0x000002DE
_0813BB78:
	ldr r1, _0813BBB4 @ =0x00000242
	adds r0, r3, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r3, #0x0C]
	adds r0, r0, r1
	str r0, [r3, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	lsrs r0, r0, #0x1F
_0813BBA4:
	cmp r0, #0x00
	bne _0813BBAC
	ldr r0, [r4, #0x04]
	str r0, [r4, #0x00]
_0813BBAC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813BBB4: .4byte 0x00000242
	.byte 0x70, 0xB5, 0x04, 0x1C, 0x0E, 0x1C, 0x14, 0x4A, 0x20, 0x68, 0x01, 0x1C, 0x41, 0x43, 0x08, 0x1C
	.byte 0x61, 0x68, 0x0B, 0x1C, 0x4B, 0x43, 0x19, 0x1C, 0x40, 0x18, 0xA1, 0x68, 0x0B, 0x1C, 0x4B, 0x43
	.byte 0x19, 0x1C, 0x40, 0x18, 0x11, 0x68, 0x9E, 0xF0, 0x45, 0xFF, 0x05, 0x1C, 0x20, 0x68, 0x00, 0x02
	.byte 0x29, 0x1C, 0x9E, 0xF0, 0x5B, 0xFF, 0x30, 0x60, 0x60, 0x68, 0x00, 0x02, 0x29, 0x1C, 0x9E, 0xF0
	.byte 0x55, 0xFF, 0x70, 0x60, 0xA0, 0x68, 0x00, 0x02, 0x29, 0x1C, 0x9E, 0xF0, 0x4F, 0xFF, 0xB0, 0x60
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x70, 0xB5, 0x04, 0x1C
	.byte 0x0E, 0x1C, 0x0E, 0x4A, 0x20, 0x68, 0x01, 0x1C, 0x41, 0x43, 0x08, 0x1C, 0x61, 0x68, 0x0B, 0x1C
	.byte 0x4B, 0x43, 0x19, 0x1C, 0x40, 0x18, 0x11, 0x68, 0x9E, 0xF0, 0x1C, 0xFF, 0x05, 0x1C, 0x20, 0x68
	.byte 0x00, 0x02, 0x29, 0x1C, 0x9E, 0xF0, 0x32, 0xFF, 0x30, 0x60, 0x60, 0x68, 0x00, 0x02, 0x29, 0x1C
	.byte 0x9E, 0xF0, 0x2C, 0xFF, 0x70, 0x60, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x38, 0x10, 0x00, 0x03
	.byte 0x02, 0x68, 0x12, 0x02, 0x0A, 0x60, 0x42, 0x68, 0x12, 0x02, 0x4A, 0x60, 0x80, 0x68, 0x00, 0x02
	.byte 0x88, 0x60, 0x70, 0x47
