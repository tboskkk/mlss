	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8106D20
sub_8106D20:
	push {lr}
	ldr r1, _08106D4C @ =0x03000FD8
	ldr r1, [r1, #0x00]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r3, [r1, #0x00]
	ldrb r2, [r3, #0x05]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r3, #0x05]
	ldr r1, _08106D50 @ =0x081054D5
	str r1, [r0, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x0E
	bl sub_80F7538
	pop {r0}
	bx r0
_08106D4C: .4byte 0x03000FD8
_08106D50: .4byte sub_81054D4
	thumb_func_start sub_8106D54
sub_8106D54:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08106D94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x05]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x05]
	bl sub_810CAD0
	bl sub_810C950
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x01
	movs r1, #0x0B
	bl sub_8019308
	ldr r0, _08106D98 @ =0x081015E5
	str r0, [r4, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x0F
	bl sub_80F7538
	pop {r4}
	pop {r0}
	bx r0
_08106D94: .4byte 0x03000FD8
_08106D98: .4byte sub_81015E4
	thumb_func_start sub_8106D9C
sub_8106D9C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_810591C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08106DDA
	ldr r0, _08106DE0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, _08106DE4 @ =0x000002BF
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08106DDA
	ldr r1, _08106DE8 @ =0x00000346
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _08106DD6
	movs r0, #0x00
	movs r1, #0x00
	bl sub_810CB04
	movs r0, #0x01
	movs r1, #0x00
	bl sub_810CB04
_08106DD6:
	ldr r0, _08106DEC @ =0x080FCC79
	str r0, [r4, #0x04]
_08106DDA:
	pop {r4}
	pop {r0}
	bx r0
_08106DE0: .4byte 0x03000FD8
_08106DE4: .4byte 0x000002BF
_08106DE8: .4byte 0x00000346
_08106DEC: .4byte sub_80FCC78
	thumb_func_start sub_8106DF0
sub_8106DF0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r0, [r4, #0x10]
	subs r0, #0x01
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08106E12
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08106E12
	bl sub_810CA30
	ldr r0, _08106E18 @ =0x08100E5D
	str r0, [r4, #0x04]
_08106E12:
	pop {r4}
	pop {r0}
	bx r0
_08106E18: .4byte sub_8100E5C
	thumb_func_start sub_8106E1C
sub_8106E1C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08106E50 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08106E48
	ldr r4, [r1, #0x7C]
	bl nullsub_4
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8081E2C
	ldr r0, _08106E54 @ =0x08100D19
	str r0, [r5, #0x04]
	movs r0, #0x04
	bl sub_80F75D8
_08106E48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106E50: .4byte 0x03000FD8
_08106E54: .4byte sub_8100D18
	thumb_func_start sub_8106E58
sub_8106E58:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08106E9E
	ldr r5, _08106EA4 @ =0x03000FD8
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08106E9E
	ldr r0, [r2, #0x7C]
	adds r0, #0x08
	bl sub_8095584
	ldr r0, [r5, #0x00]
	ldr r4, _08106EA8 @ =0x00000349
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	bl sub_80F7068
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, _08106EAC @ =0x08100E5D
	str r0, [r6, #0x04]
	movs r0, #0x08
	bl sub_80F75B4
_08106E9E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08106EA4: .4byte 0x03000FD8
_08106EA8: .4byte 0x00000349
_08106EAC: .4byte sub_8100E5C
	thumb_func_start sub_8106EB0
sub_8106EB0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08106EE0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08106ED8
	adds r2, #0x39
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	bl sub_8081EAC
	ldr r0, _08106EE4 @ =0x08106E59
	str r0, [r4, #0x04]
	movs r0, #0x04
	bl sub_80F75D8
_08106ED8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106EE0: .4byte 0x03000FD8
_08106EE4: .4byte sub_8106E58
	thumb_func_start sub_8106EE8
sub_8106EE8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08106F28 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xD9
	lsls r1, r1, #0x02
	adds r4, r0, r1
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x08]
	cmp r0, #0x00
	beq _08106F06
_08106EFE:
	bl sub_807FA94
	cmp r0, #0x00
	bne _08106EFE
_08106F06:
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x04]
	bl sub_807FB34
	ldr r1, [r4, #0x00]
	movs r0, #0x00
	str r0, [r1, #0x04]
	str r0, [r4, #0x00]
	ldr r0, _08106F2C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08106F30 @ =0x00008E58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
_08106F28: .4byte 0x03000FD8
_08106F2C: .4byte 0x03000FDC
_08106F30: .4byte 0x00008E58
	thumb_func_start sub_8106F34
sub_8106F34:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08106F78
	ldr r0, _08106F80 @ =0x08106D9D
	str r0, [r4, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x01
	bl sub_80F75D8
	ldr r4, _08106F84 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldr r2, [r1, #0x7C]
	adds r1, r2, #0x0
	adds r1, #0xF4
	ldrb r1, [r1, #0x00]
	adds r2, #0xE8
	ldr r2, [r2, #0x00]
	bl sub_80F8E80
	ldr r1, [r4, #0x00]
	ldr r0, _08106F88 @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
_08106F78:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106F80: .4byte sub_8106D9C
_08106F84: .4byte 0x03000FD8
_08106F88: .4byte 0x000002BF
	thumb_func_start sub_8106F8C
sub_8106F8C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r4, _08106FF4 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r1, r0
	lsls r1, r1, #0x02
	adds r2, #0x80
	adds r2, r2, r1
	ldr r0, [r2, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08106FEE
	ldr r1, [r4, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	movs r0, #0x04
	ands r0, r2
	adds r1, #0x80
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	adds r4, #0x08
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08106FF8 @ =0x080FD961
	str r0, [r6, #0x04]
_08106FEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08106FF4: .4byte 0x03000FD8
_08106FF8: .4byte sub_80FD960
	thumb_func_start sub_8106FFC
sub_8106FFC:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, _08107038 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r1, r0
	lsls r1, r1, #0x02
	adds r2, #0x80
	adds r2, r2, r1
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08107032
	ldr r1, _0810703C @ =0x080FD6D5
	str r1, [r3, #0x04]
	adds r0, r3, #0x0
	bl _call_via_r1
_08107032:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08107038: .4byte 0x03000FD8
_0810703C: .4byte sub_80FD6D4
	thumb_func_start sub_8107040
sub_8107040:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _08107058 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x7C]
	adds r0, #0x08
	ldr r1, [r0, #0x4C]
	cmp r1, #0x00
	beq _0810705C
	bl _call_via_r1
	b _0810706E
_08107058: .4byte 0x03000FD8
_0810705C:
	ldr r0, _08107074 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08107078 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x04]
	adds r0, r2, #0x0
	bl _call_via_r1
_0810706E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08107074: .4byte 0x03000FDC
_08107078: .4byte 0x00008E58
	thumb_func_start sub_810707C
sub_810707C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _081070AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x7C]
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _081070A8
	ldr r0, _081070B0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _081070B4 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x04]
	adds r0, r2, #0x0
	bl _call_via_r1
_081070A8:
	pop {r0}
	bx r0
_081070AC: .4byte 0x03000FD8
_081070B0: .4byte 0x03000FDC
_081070B4: .4byte 0x00008E58
	thumb_func_start sub_81070B8
sub_81070B8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _081070D8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r3, [r1, #0x7C]
	ldrb r2, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _081070DC
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x0B]
	b _0810710E
	.byte 0x00, 0x00
_081070D8: .4byte 0x03000FD8
_081070DC:
	adds r0, r3, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08107100
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _0810710E
	ldr r0, _081070FC @ =0x080FD44D
	b _0810710C
	.byte 0x00, 0x00
_081070FC: .4byte sub_80FD44C
_08107100:
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810710E
	ldr r0, _08107114 @ =0x0810124D
_0810710C:
	str r0, [r4, #0x04]
_0810710E:
	pop {r4}
	pop {r0}
	bx r0
_08107114: .4byte sub_810124C
