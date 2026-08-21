	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_808DCDC
sub_808DCDC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808DCFE
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0808DCFE:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_808DD04
sub_808DD04:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0808DD20
	adds r0, r2, #0x0
	bl sub_808CDD4
	b _0808DD26
_0808DD20:
	adds r0, r2, #0x0
	bl sub_808D408
_0808DD26:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_808DD2C
sub_808DD2C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0808DD90
	ldr r1, [r5, #0x28]
	cmp r1, #0x00
	beq _0808DD50
	ldr r0, _0808DD98 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0808DD50:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _0808DD5E
	bl sub_807C298
	movs r0, #0x00
	str r0, [r5, #0x30]
_0808DD5E:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r4, #0x00
	movs r1, #0x10
	strb r1, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r4, [r5, #0x4C]
_0808DD90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808DD98: .4byte 0x00000111
	thumb_func_start sub_808DD9C
sub_808DD9C:
	ldr r1, _0808DDD4 @ =0x084FE9A4
	str r1, [r0, #0x6C]
	ldr r1, _0808DDD8 @ =0x03000FF4
	ldr r3, [r1, #0x00]
	adds r3, #0x3C
	movs r1, #0x77
	adds r1, r1, r0
	mov r12, r1
	ldrb r2, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldr r1, [r0, #0x28]
	movs r2, #0x8A
	lsls r2, r2, #0x01
	adds r1, r1, r2
	ldrh r2, [r3, #0x2A]
	str r2, [r1, #0x00]
	ldr r1, _0808DDDC @ =0x0808DE45
	str r1, [r0, #0x4C]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
_0808DDD4: .4byte 0x084FE9A4
_0808DDD8: .4byte 0x03000FF4
_0808DDDC: .4byte sub_808DE44
	thumb_func_start sub_808DDE0
sub_808DDE0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0808DE30 @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _0808DE34 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	movs r1, #0x8A
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r2, #0x2A]
	str r1, [r0, #0x00]
	ldr r0, _0808DE38 @ =0x0808DEA9
	str r0, [r4, #0x4C]
	ldr r0, _0808DE3C @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _0808DE40 @ =0x006E1E40
	bl _call_via_r1
	subs r0, #0x58
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r4, #0xB2
	strh r0, [r4, #0x00]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0808DE30: .4byte 0x084FE8A8
_0808DE34: .4byte 0x03000FF4
_0808DE38: .4byte sub_808DEA8
_0808DE3C: .4byte 0x03001038
_0808DE40: .4byte 0x006E1E40
	thumb_func_start sub_808DE44
sub_808DE44:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _0808DE98 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _0808DE9C @ =0x005A1440
	bl _call_via_r1
	subs r0, #0x48
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x1E
	movs r0, #0x48
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r2, _0808DEA0 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808DEA4 @ =0x0808DEED
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0808DE98: .4byte 0x03001038
_0808DE9C: .4byte 0x005A1440
_0808DEA0: .4byte 0x0000204D
_0808DEA4: .4byte sub_808DEEC
	thumb_func_start sub_808DEA8
sub_808DEA8:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x94
	movs r0, #0x58
	negs r0, r0
	str r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808DEE8 @ =0x0808DF5D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0808DEE8: .4byte sub_808DF5C
	thumb_func_start sub_808DEEC
sub_808DEEC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _0808DF4E
	ldr r0, _0808DF54 @ =0x0808DFCD
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0808DF4E
	ldr r2, _0808DF58 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_0808DF4E:
	pop {r4}
	pop {r0}
	bx r0
_0808DF54: .4byte sub_808DFCC
_0808DF58: .4byte 0x0000204D
	thumb_func_start sub_808DF5C
sub_808DF5C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _0808DFC0
	ldr r0, _0808DFC8 @ =0x0808E035
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0808DFC0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_0808DFC0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808DFC8: .4byte sub_808E034
	thumb_func_start sub_808DFCC
sub_808DFCC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0808E026
	subs r2, #0x3B
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r2, _0808E02C @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808E030 @ =0x0808E09D
	str r0, [r4, #0x4C]
_0808E026:
	pop {r4}
	pop {r0}
	bx r0
_0808E02C: .4byte 0x0000204D
_0808E030: .4byte sub_808E09C
	thumb_func_start sub_808E034
sub_808E034:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0808E090
	subs r2, #0x3B
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808E098 @ =0x0808E0C9
	str r0, [r4, #0x4C]
_0808E090:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808E098: .4byte sub_808E0C8
	thumb_func_start sub_808E09C
sub_808E09C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808E0BC
	ldr r2, _0808E0C4 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0808E0BC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808E0C4: .4byte 0x0000204D
	thumb_func_start sub_808E0C8
sub_808E0C8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808E0EA
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0808E0EA:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_808E0F0
sub_808E0F0:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _0808E100
	adds r2, #0xFF
_0808E100:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _0808E10A
	adds r3, #0xFF
_0808E10A:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0808E114
	adds r0, #0xFF
_0808E114:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r2, r0, #0x0
	str r2, [r5, #0x30]
	movs r0, #0x76
	adds r0, r0, r2
	mov r12, r0
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x44
	movs r1, #0xF6
	strb r1, [r0, #0x00]
	adds r3, r2, #0x0
	adds r3, #0x45
	movs r0, #0x08
	strb r0, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x46
	strb r1, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x47
	movs r0, #0x0A
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0xFD
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0x03
	strb r0, [r1, #0x00]
	adds r3, #0x32
	ldrb r1, [r3, #0x00]
	subs r0, #0x0B
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x08
	ldr r0, [r2, #0x40]
	str r0, [r1, #0x00]
	ldr r0, _0808E1C0 @ =0x084FE8B4
	str r0, [r2, #0x6C]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x40
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	ldr r0, _0808E1C4 @ =0x08087541
	str r0, [r2, #0x68]
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r4, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	bl sub_808E1C8
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808E1C0: .4byte 0x084FE8B4
_0808E1C4: .4byte sub_8087540
	thumb_func_start sub_808E1C8
sub_808E1C8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0808E1E8 @ =0x0808E1C9
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _0808E1EC
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808E296
	.byte 0x00, 0x00
_0808E1E8: .4byte sub_808E1C8
_0808E1EC:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0808E206
	ldr r2, _0808E268 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808E206:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x05
	bne _0808E21A
	ldr r2, _0808E268 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_0808E21A:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x0A
	bne _0808E22E
	ldr r2, _0808E268 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808E22E:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x0F
	bne _0808E242
	ldr r2, _0808E268 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0808E242:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x14
	beq _0808E274
	ldr r0, _0808E26C @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _0808E286
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x02
	strh r0, [r5, #0x00]
	ldr r0, _0808E270 @ =0x0808E2A1
	str r0, [r4, #0x4C]
	b _0808E296
_0808E268: .4byte 0x00002025
_0808E26C: .4byte 0x0300034C
_0808E270: .4byte sub_808E2A0
_0808E274:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	strh r6, [r5, #0x00]
	ldr r0, _0808E29C @ =0x0808E391
	str r0, [r4, #0x4C]
_0808E286:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_0808E296:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0808E29C: .4byte sub_808E390
	thumb_func_start sub_808E2A0
sub_808E2A0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0808E2C0 @ =0x0808E2A1
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808E2C4
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808E386
	.byte 0x00, 0x00
_0808E2C0: .4byte sub_808E2A0
_0808E2C4:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _0808E31C
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0808E30C @ =0x03001038
	ldr r0, _0808E310 @ =0x0819832C
	ldr r1, _0808E314 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x08
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808E318 @ =0x0808EC59
	str r0, [r4, #0x4C]
	b _0808E386
	.byte 0x00, 0x00
_0808E30C: .4byte 0x03001038
_0808E310: .4byte 0x0819832C
_0808E314: .4byte 0x08198220
_0808E318: .4byte sub_808EC58
_0808E31C:
	cmp r1, #0x13
	bgt _0808E33C
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808E376
	ldr r2, _0808E338 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808E376
_0808E338: .4byte 0x00002025
_0808E33C:
	cmp r1, #0x27
	bgt _0808E35C
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0808E376
	ldr r2, _0808E358 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _0808E376
_0808E358: .4byte 0x00002025
_0808E35C:
	cmp r1, #0x3B
	bgt _0808E376
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0808E376
	ldr r2, _0808E38C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808E376:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x05
	strh r0, [r5, #0x00]
_0808E386:
	pop {r4, r5}
	pop {r0}
	bx r0
_0808E38C: .4byte 0x00002025
	thumb_func_start sub_808E390
sub_808E390:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808E3A8
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808E4B2
_0808E3A8:
	ldr r0, _0808E3F4 @ =0x0300034C
	ldrh r5, [r0, #0x3C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x00
	bne _0808E400
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	ldr r0, _0808E3F8 @ =0xFFFFFE34
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808E3FC @ =0x0808E4B9
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _0808E4B2
_0808E3F4: .4byte 0x0300034C
_0808E3F8: .4byte 0xFFFFFE34
_0808E3FC: .4byte sub_808E4B8
_0808E400:
	adds r3, r4, #0x0
	adds r3, #0xAC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x17
	ble _0808E49C
	ldr r0, [r4, #0x28]
	ldr r1, _0808E460 @ =0x0000012D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1E
	bne _0808E478
	ldr r0, _0808E464 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x09]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _0808E474
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r2, _0808E468 @ =0x03001038
	ldr r0, _0808E46C @ =0x0819832C
	ldr r1, _0808E470 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x08
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	b _0808E484
	.byte 0x00, 0x00
_0808E460: .4byte 0x0000012D
_0808E464: .4byte 0x03000FD8
_0808E468: .4byte 0x03001038
_0808E46C: .4byte 0x0819832C
_0808E470: .4byte 0x08198220
_0808E474:
	movs r0, #0x18
	b _0808E4B0
_0808E478:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808E484:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808E498 @ =0x0808EC59
	str r0, [r4, #0x4C]
	b _0808E4B2
	.byte 0x00, 0x00
_0808E498: .4byte sub_808EC58
_0808E49C:
	cmp r0, #0x0B
	ble _0808E4AC
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_0808E4AC:
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
_0808E4B0:
	strh r0, [r3, #0x00]
_0808E4B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_808E4B8
sub_808E4B8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808E4D0
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808E648
_0808E4D0:
	ldr r6, [r4, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x2A
	adds r5, r6, #0x0
	adds r5, #0xA4
	ldr r0, [r2, #0x00]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r3, _0808E55C @ =0x03001038
	ldr r1, _0808E560 @ =0x0819832C
	ldr r2, _0808E564 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	movs r1, #0xB4
	lsls r1, r1, #0x01
	bl _call_via_r2
	ldr r2, _0808E568 @ =0x08198584
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _0808E51A
	adds r0, #0x3F
_0808E51A:
	asrs r0, r0, #0x06
	movs r2, #0x16
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x40]
	movs r7, #0xB0
	lsls r7, r7, #0x05
	adds r1, r0, r7
	ldr r0, _0808E56C @ =0x08198504
	adds r0, r3, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0808E53E
	adds r0, #0x3F
_0808E53E:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	str r0, [r6, #0x18]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0808E570
	ldr r0, [r5, #0x00]
	movs r7, #0xC0
	lsls r7, r7, #0x04
	adds r0, r0, r7
	b _0808E576
_0808E55C: .4byte 0x03001038
_0808E560: .4byte 0x0819832C
_0808E564: .4byte 0x08198220
_0808E568: .4byte 0x08198584
_0808E56C: .4byte 0x08198504
_0808E570:
	ldr r0, [r5, #0x00]
	ldr r1, _0808E628 @ =0xFFFFF400
	adds r0, r0, r1
_0808E576:
	str r0, [r5, #0x00]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x02
	bne _0808E590
	ldr r2, _0808E62C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x01
	bl sub_8082E1C
_0808E590:
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x03
	bne _0808E5A4
	ldr r2, _0808E62C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x02
	bl sub_8082E1C
_0808E5A4:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x04
	bne _0808E5B8
	ldr r2, _0808E62C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x03
	bl sub_8082E1C
_0808E5B8:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x05
	bne _0808E5CC
	ldr r2, _0808E62C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x04
	bl sub_8082E1C
_0808E5CC:
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x06
	bne _0808E5E0
	ldr r2, _0808E62C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x05
	bl sub_8082E1C
_0808E5E0:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x07
	bne _0808E638
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	strh r0, [r5, #0x00]
	ldr r0, _0808E630 @ =0x0808EC09
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _0808E648
	ldr r3, _0808E634 @ =0x00000111
	adds r2, r0, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0808E648
_0808E628: .4byte 0xFFFFF400
_0808E62C: .4byte 0x00002025
_0808E630: .4byte sub_808EC08
_0808E634: .4byte 0x00000111
_0808E638:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_0808E648:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_808E650
sub_808E650:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _0808E660
	adds r2, #0xFF
_0808E660:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _0808E66A
	adds r3, #0xFF
_0808E66A:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0808E674
	adds r0, #0xFF
_0808E674:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r2, r0, #0x0
	str r2, [r5, #0x30]
	movs r0, #0x76
	adds r0, r0, r2
	mov r12, r0
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x44
	movs r1, #0xF6
	strb r1, [r0, #0x00]
	adds r3, r2, #0x0
	adds r3, #0x45
	movs r0, #0x08
	strb r0, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x46
	strb r1, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x47
	movs r0, #0x0A
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0xFD
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0x03
	strb r0, [r1, #0x00]
	adds r3, #0x32
	ldrb r1, [r3, #0x00]
	subs r0, #0x0B
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x08
	ldr r0, [r2, #0x40]
	str r0, [r1, #0x00]
	ldr r0, _0808E720 @ =0x084FE8B4
	str r0, [r2, #0x6C]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x40
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	ldr r0, _0808E724 @ =0x08087541
	str r0, [r2, #0x68]
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r4, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	bl sub_808E728
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808E720: .4byte 0x084FE8B4
_0808E724: .4byte sub_8087540
	thumb_func_start sub_808E728
sub_808E728:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0808E748 @ =0x0808E729
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _0808E74C
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808E7FA
	.byte 0x00, 0x00
_0808E748: .4byte sub_808E728
_0808E74C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0808E766
	ldr r2, _0808E7CC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808E766:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x08
	bne _0808E77A
	ldr r2, _0808E7CC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_0808E77A:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x10
	bne _0808E78E
	ldr r2, _0808E7CC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808E78E:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x18
	bne _0808E7A2
	ldr r2, _0808E7CC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0808E7A2:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x20
	beq _0808E7D8
	ldr r0, _0808E7D0 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _0808E7EA
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x01
	strh r1, [r5, #0x00]
	ldr r0, _0808E7D4 @ =0x0808E805
	str r0, [r4, #0x4C]
	b _0808E7FA
_0808E7CC: .4byte 0x00002054
_0808E7D0: .4byte 0x0300034C
_0808E7D4: .4byte sub_808E804
_0808E7D8:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	strh r6, [r5, #0x00]
	ldr r0, _0808E800 @ =0x0808E8F5
	str r0, [r4, #0x4C]
_0808E7EA:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_0808E7FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0808E800: .4byte sub_808E8F4
	thumb_func_start sub_808E804
sub_808E804:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0808E824 @ =0x0808E805
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808E828
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808E8EA
	.byte 0x00, 0x00
_0808E824: .4byte sub_808E804
_0808E828:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _0808E880
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0808E870 @ =0x03001038
	ldr r0, _0808E874 @ =0x0819832C
	ldr r1, _0808E878 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0C
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808E87C @ =0x0808EC59
	str r0, [r4, #0x4C]
	b _0808E8EA
	.byte 0x00, 0x00
_0808E870: .4byte 0x03001038
_0808E874: .4byte 0x0819832C
_0808E878: .4byte 0x08198220
_0808E87C: .4byte sub_808EC58
_0808E880:
	cmp r1, #0x2F
	bgt _0808E8A0
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808E8DA
	ldr r2, _0808E89C @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808E8DA
_0808E89C: .4byte 0x00002054
_0808E8A0:
	cmp r1, #0x5F
	bgt _0808E8C0
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0808E8DA
	ldr r2, _0808E8BC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _0808E8DA
_0808E8BC: .4byte 0x00002054
_0808E8C0:
	cmp r1, #0x8F
	bgt _0808E8DA
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0808E8DA
	ldr r2, _0808E8F0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808E8DA:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x08
	strh r0, [r5, #0x00]
_0808E8EA:
	pop {r4, r5}
	pop {r0}
	bx r0
_0808E8F0: .4byte 0x00002054
	thumb_func_start sub_808E8F4
sub_808E8F4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808E90C
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808EA16
_0808E90C:
	ldr r0, _0808E95C @ =0x0300034C
	ldrh r5, [r0, #0x3C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x00
	bne _0808E964
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	movs r0, #0xA0
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808E960 @ =0x0808EA1D
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _0808EA16
	.byte 0x00, 0x00
_0808E95C: .4byte 0x0300034C
_0808E960: .4byte sub_808EA1C
_0808E964:
	adds r3, r4, #0x0
	adds r3, #0xAC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x15
	ble _0808EA00
	ldr r0, [r4, #0x28]
	ldr r1, _0808E9C4 @ =0x0000012D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1E
	bne _0808E9DC
	ldr r0, _0808E9C8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x09]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _0808E9D8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r2, _0808E9CC @ =0x03001038
	ldr r0, _0808E9D0 @ =0x0819832C
	ldr r1, _0808E9D4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0C
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	b _0808E9E8
	.byte 0x00, 0x00
_0808E9C4: .4byte 0x0000012D
_0808E9C8: .4byte 0x03000FD8
_0808E9CC: .4byte 0x03001038
_0808E9D0: .4byte 0x0819832C
_0808E9D4: .4byte 0x08198220
_0808E9D8:
	movs r0, #0x16
	b _0808EA14
_0808E9DC:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808E9E8:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808E9FC @ =0x0808EC59
	str r0, [r4, #0x4C]
	b _0808EA16
	.byte 0x00, 0x00
_0808E9FC: .4byte sub_808EC58
_0808EA00:
	cmp r0, #0x0E
	ble _0808EA10
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_0808EA10:
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
_0808EA14:
	strh r0, [r3, #0x00]
_0808EA16:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_808EA1C
sub_808EA1C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808EA34
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808EBB0
_0808EA34:
	ldr r6, [r4, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x2A
	adds r5, r6, #0x0
	adds r5, #0xA4
	ldr r0, [r2, #0x00]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r3, _0808EAC0 @ =0x03001038
	ldr r1, _0808EAC4 @ =0x0819832C
	ldr r2, _0808EAC8 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	movs r1, #0xB4
	lsls r1, r1, #0x01
	bl _call_via_r2
	ldr r2, _0808EACC @ =0x08198584
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _0808EA7E
	adds r0, #0x3F
_0808EA7E:
	asrs r0, r0, #0x06
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x40]
	movs r1, #0xD0
	lsls r1, r1, #0x05
	adds r2, r0, r1
	ldr r0, _0808EAD0 @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0808EAA2
	adds r0, #0x3F
_0808EAA2:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r2, r0
	str r0, [r6, #0x18]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0808EAD8
	ldr r0, [r5, #0x00]
	ldr r1, _0808EAD4 @ =0x00000998
	b _0808EADC
_0808EAC0: .4byte 0x03001038
_0808EAC4: .4byte 0x0819832C
_0808EAC8: .4byte 0x08198220
_0808EACC: .4byte 0x08198584
_0808EAD0: .4byte 0x08198504
_0808EAD4: .4byte 0x00000998
_0808EAD8:
	ldr r0, [r5, #0x00]
	ldr r1, _0808EB90 @ =0xFFFFF668
_0808EADC:
	adds r0, r0, r1
	str r0, [r5, #0x00]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x03
	bne _0808EAF8
	ldr r2, _0808EB94 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x01
	bl sub_8082E1C
_0808EAF8:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x05
	bne _0808EB0C
	ldr r2, _0808EB94 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x02
	bl sub_8082E1C
_0808EB0C:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x06
	bne _0808EB20
	ldr r2, _0808EB94 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x03
	bl sub_8082E1C
_0808EB20:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x07
	bne _0808EB34
	ldr r2, _0808EB94 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x04
	bl sub_8082E1C
_0808EB34:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x08
	bne _0808EB48
	ldr r2, _0808EB94 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x05
	bl sub_8082E1C
_0808EB48:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x09
	bne _0808EBA0
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	strh r0, [r5, #0x00]
	ldr r0, _0808EB98 @ =0x0808EBB9
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _0808EBB0
	ldr r1, _0808EB9C @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0808EBB0
_0808EB90: .4byte 0xFFFFF668
_0808EB94: .4byte 0x00002054
_0808EB98: .4byte sub_808EBB8
_0808EB9C: .4byte 0x00000111
_0808EBA0:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_0808EBB0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_808EBB8
sub_808EBB8:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _0808EBD0
	ldr r0, _0808EBE8 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0808EBD0:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808EBEC
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _0808EC04
	.byte 0x00, 0x00
_0808EBE8: .4byte 0x00000111
_0808EBEC:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x17
	ble _0808EC04
	adds r0, r3, #0x0
	bl sub_808DD2C
_0808EC04:
	pop {r0}
	bx r0
	thumb_func_start sub_808EC08
sub_808EC08:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _0808EC20
	ldr r0, _0808EC38 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0808EC20:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808EC3C
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _0808EC54
	.byte 0x00, 0x00
_0808EC38: .4byte 0x00000111
_0808EC3C:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _0808EC54
	adds r0, r3, #0x0
	bl sub_808DD2C
_0808EC54:
	pop {r0}
	bx r0
	thumb_func_start sub_808EC58
sub_808EC58:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808EC70
	adds r0, r2, #0x0
	bl sub_808DD2C
	b _0808EC82
_0808EC70:
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808EC82
	adds r0, r2, #0x0
	bl sub_808DD2C
_0808EC82:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
