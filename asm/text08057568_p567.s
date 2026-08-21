	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8112F40
sub_8112F40:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r0, [r4, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	adds r6, r5, #0x0
	adds r6, #0xB2
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	movs r2, #0x1C
	ldsh r1, [r5, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	movs r2, #0x1E
	ldsh r1, [r5, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	subs r6, #0x20
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	subs r0, #0xCC
	strh r0, [r6, #0x00]
	ldr r1, [r5, #0x08]
	ldr r2, _08112FF8 @ =0x00000B4C
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x04
	cmp r0, r1
	bgt _08112FDA
	str r1, [r5, #0x18]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r0, r0, #0x08
	negs r0, r0
	movs r1, #0xC0
	lsls r1, r1, #0x01
	bl __divsi3
	strh r0, [r6, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2F
	bl play_sfx_80195B4
_08112FDA:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08112FE2
	adds r1, #0xFF
_08112FE2:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08112FF2
	adds r0, r5, #0x0
	bl sub_807C298
_08112FF2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08112FF8: .4byte 0x00000B4C
	thumb_func_start sub_8112FFC
sub_8112FFC:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r0, [r4, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	adds r6, r5, #0x0
	adds r6, #0xB2
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	movs r2, #0x1C
	ldsh r1, [r5, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	movs r2, #0x1E
	ldsh r1, [r5, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x08]
	ldr r2, _08113084 @ =0xFFFFF4B4
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0811307C
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x14]
	ldr r0, _08113088 @ =0x0811308D
	str r0, [r5, #0x4C]
_0811307C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08113084: .4byte 0xFFFFF4B4
_08113088: .4byte sub_811308C
	thumb_func_start sub_811308C
sub_811308C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _08113138 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	mov r12, r1
	mov r4, r12
	adds r4, #0x08
	mov r0, r12
	ldr r3, [r0, #0x04]
	movs r0, #0x88
	lsls r0, r0, #0x01
	add r0, r12
	ldrb r0, [r0, #0x00]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	mov r0, r12
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	mov r0, r12
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	mov r0, r12
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	movs r6, #0x01
	negs r6, r6
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	bl sub_807BC90
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _081130FC
	adds r1, #0xFF
_081130FC:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08113106
	adds r2, #0xFF
_08113106:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08113110
	adds r3, #0xFF
_08113110:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0xA4
	lsls r0, r0, #0x06
	bl sub_80DF024
	adds r0, r5, #0x0
	bl sub_807C298
	movs r0, #0x00
	str r0, [r5, #0x4C]
	movs r0, #0xAD
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08113138: .4byte 0x03000FD8
	thumb_func_start sub_811313C
sub_811313C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	bl sub_80871A8
	adds r7, r0, #0x0
	cmp r7, #0x00
	beq _08113152
	b _08113298
_08113152:
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r7, [r0, #0x00]
	adds r0, #0x0A
	ldr r5, [r0, #0x00]
	cmp r5, #0x02
	bgt _08113168
	b _08113296
_08113168:
	ldr r0, _08113248 @ =0x03000FD8
	mov r8, r0
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x1C]
	ldrb r0, [r1, #0x01]
	lsls r4, r0, #0x01
	adds r4, r4, r0
	lsls r4, r4, #0x03
	lsls r2, r5, #0x02
	ldr r0, _0811324C @ =0x08502B14
	adds r0, r2, r0
	adds r4, r4, r0
	adds r1, r1, r2
	ldrh r1, [r1, #0x08]
	ldrh r2, [r4, #0x00]
	lsls r2, r2, #0x16
	asrs r2, r2, #0x16
	ldr r3, [r4, #0x00]
	lsls r3, r3, #0x0C
	asrs r3, r3, #0x16
	ldrh r0, [r4, #0x02]
	lsls r0, r0, #0x12
	asrs r0, r0, #0x16
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r7, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_807AFD4
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x7E
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r2, r8
	ldr r1, [r2, #0x00]
	ldrb r0, [r1, #0x05]
	subs r0, #0x01
	strb r0, [r1, #0x05]
	adds r4, r6, #0x0
	adds r4, #0x84
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x88
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x8C
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r2, [r6, #0x38]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _081131EE
	adds r0, #0xFF
_081131EE:
	asrs r0, r0, #0x08
	strh r0, [r6, #0x1C]
	ldr r1, [r6, #0x3C]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _081131FC
	adds r0, #0xFF
_081131FC:
	asrs r0, r0, #0x08
	strh r0, [r6, #0x1E]
	ldr r0, [r4, #0x00]
	subs r4, r0, r2
	ldr r0, [r5, #0x00]
	subs r7, r0, r1
	ldr r2, _08113250 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xA0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	muls r1, r5
	ldr r0, [r6, #0x40]
	bl __divsi3
	adds r1, r0, #0x0
	adds r2, r6, #0x0
	adds r2, #0xA8
	cmp r1, #0x01
	bgt _0811325A
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bge _08113254
	negs r0, r1
	str r0, [r2, #0x00]
	b _0811325C
	.byte 0x00, 0x00
_08113248: .4byte 0x03000FD8
_0811324C: .4byte 0x08502B14
_08113250: .4byte 0x03001038
_08113254:
	movs r0, #0x02
	str r0, [r2, #0x00]
	b _0811325C
_0811325A:
	str r1, [r2, #0x00]
_0811325C:
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _08113264
	adds r0, #0xFF
_08113264:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _08113274
	adds r0, #0xFF
_08113274:
	asrs r1, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x28]
	ldr r2, _081132A4 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, _081132A8 @ =0x08112FFD
	str r0, [r6, #0x4C]
_08113296:
	movs r0, #0x00
_08113298:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_081132A4: .4byte 0x00000113
_081132A8: .4byte sub_8112FFC
