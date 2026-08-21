	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80D8DC4
sub_80D8DC4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r4
	mov r12, r0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x06
	adds r0, r0, r1
	lsls r0, r0, #0x02
	cmp r0, #0x00
	bge _080D8DDE
	adds r0, #0xFF
_080D8DDE:
	asrs r0, r0, #0x08
	mov r5, r12
	strh r0, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r0, #0x00
	ldsh r1, [r3, r0]
	lsls r0, r1, #0x06
	adds r0, r0, r1
	lsls r0, r0, #0x02
	cmp r0, #0x00
	bge _080D8DF8
	adds r0, #0xFF
_080D8DF8:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	mov r5, r12
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r5, #0x00
	ldsh r1, [r3, r5]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080D8E50
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	bl sub_80873B8
	ldr r0, _080D8E58 @ =0x080D8E5D
	str r0, [r4, #0x50]
_080D8E50:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8E58: .4byte sub_80D8E5C
	thumb_func_start sub_80D8E5C
sub_80D8E5C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
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
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x10
	strh r0, [r1, #0x00]
	ldr r0, _080D8EE0 @ =0x080D8EE5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080D8EE0: .4byte sub_80D8EE4
	thumb_func_start sub_80D8EE4
sub_80D8EE4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080D8F5C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080D8F5C
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	movs r2, #0xA0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D8F64 @ =0x080D8F69
	str r0, [r4, #0x4C]
_080D8F5C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8F64: .4byte sub_80D8F68
	thumb_func_start sub_80D8F68
sub_80D8F68:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080D8F8A
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D8F90 @ =0x0808750D
	str r0, [r4, #0x4C]
_080D8F8A:
	pop {r4}
	pop {r0}
	bx r0
_080D8F90: .4byte sub_808750C
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA1, 0x8F, 0x0D, 0x08
	thumb_func_start sub_80D8FA0
sub_80D8FA0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xA0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D9014 @ =0x080D9019
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9014: .4byte sub_80D9018
	thumb_func_start sub_80D9018
sub_80D9018:
	push {r4, r5, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080D9082
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xAE
	adds r1, r4, #0x0
	adds r1, #0xB0
	adds r2, r4, #0x0
	adds r2, #0xB2
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	ldr r3, _080D908C @ =0x000004CC
	str r3, [sp, #0x00C]
	movs r3, #0x82
	lsls r3, r3, #0x01
	str r3, [sp, #0x010]
	str r5, [sp, #0x014]
	movs r3, #0x00
	bl sub_808552C
	adds r1, r4, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080D9090 @ =0x080D90BD
	str r0, [r4, #0x58]
	ldr r0, _080D9094 @ =0x080D909D
	str r0, [r4, #0x60]
	ldr r0, _080D9098 @ =0x080D8DC5
	str r0, [r4, #0x4C]
_080D9082:
	add sp, #0x018
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D908C: .4byte 0x000004CC
_080D9090: .4byte sub_80D90BC
_080D9094: .4byte sub_80D909C
_080D9098: .4byte sub_80D8DC4
	thumb_func_start sub_80D909C
sub_80D909C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8087124
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80D90BC
sub_80D90BC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_810DD7C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80D90DC
sub_80D90DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	mov r9, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D90F8
	b _080D9286
_080D90F8:
	mov r0, r9
	ldr r1, [r0, #0x28]
	ldr r2, [r0, #0x38]
	cmp r2, #0x00
	bge _080D9104
	adds r2, #0xFF
_080D9104:
	asrs r2, r2, #0x08
	mov r5, r9
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _080D9110
	adds r3, #0xFF
_080D9110:
	asrs r3, r3, #0x08
	mov r5, r9
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D911C
	adds r0, #0xFF
_080D911C:
	asrs r0, r0, #0x08
	adds r0, #0x0C
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080D9298 @ =0x00004070
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r9
	str r7, [r0, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r5, r9
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r7, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080D929C @ =0x080D92B1
	str r0, [r7, #0x4C]
	ldr r0, _080D92A0 @ =0x08087541
	str r0, [r7, #0x68]
	mov r1, r9
	ldr r0, [r1, #0x6C]
	str r0, [r7, #0x6C]
	ldr r0, [r1, #0x2C]
	str r0, [r7, #0x2C]
	adds r0, r7, #0x0
	bl sub_807F4FC
	ldr r0, _080D92A4 @ =0x080D99F1
	str r0, [r7, #0x60]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r9
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r9
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r9
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r9
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r4, r7, #0x0
	adds r4, #0x98
	mov r2, r9
	ldr r0, [r2, #0x2C]
	ldr r0, [r0, #0x28]
	mov r10, r0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xAE
	movs r5, #0xB0
	adds r5, r5, r7
	mov r8, r5
	adds r0, r7, #0x0
	adds r0, #0xB2
	str r0, [sp, #0x018]
	mov r0, r10
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x38]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	adds r5, r0, #0x0
	mov r0, r10
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x3C]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x00]
	ldr r1, [r7, #0x40]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0xF0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	ldr r0, _080D92A8 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	adds r0, r6, #0x0
	mov r1, r8
	ldr r2, [sp, #0x018]
	adds r3, r5, #0x0
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	mov r1, r9
	str r4, [r1, #0x6C]
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x09
	cmp r1, r0
	bne _080D9264
	movs r2, #0x05
_080D9264:
	mov r0, r9
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r5, r9
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080D92AC @ =0x080D99D5
	str r0, [r5, #0x4C]
_080D9286:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9298: .4byte 0x00004070
_080D929C: .4byte sub_80D92B0
_080D92A0: .4byte sub_8087540
_080D92A4: .4byte sub_80D99F0
_080D92A8: .4byte 0x000004CC
_080D92AC: .4byte sub_80D99D4
	thumb_func_start sub_80D92B0
sub_80D92B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r6, r4, #0x0
	adds r6, #0xB2
	movs r0, #0x94
	adds r0, r0, r4
	mov r9, r0
	ldr r1, [r0, #0x00]
	ldrh r0, [r6, #0x00]
	adds r0, r0, r1
	strh r0, [r6, #0x00]
	movs r1, #0xAE
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r7, r4, #0x0
	adds r7, #0xB0
	movs r0, #0x00
	ldsh r1, [r7, r0]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r5, r4, #0x0
	adds r5, #0x98
	ldr r1, [r5, #0x00]
	cmp r0, r1
	bgt _080D9362
	str r1, [r4, #0x18]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r2, [r0, #0x00]
	str r2, [r5, #0x00]
	subs r0, #0x08
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x38]
	subs r3, r3, r0
	lsrs r0, r3, #0x1F
	adds r3, r3, r0
	asrs r3, r3, #0x01
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x40]
	subs r2, r2, r0
	str r2, [sp, #0x004]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	str r0, [sp, #0x008]
	ldr r0, _080D9370 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	mov r0, r8
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_808552C
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, _080D9374 @ =0x080D9379
	str r0, [r4, #0x4C]
_080D9362:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D9370: .4byte 0x000004CC
_080D9374: .4byte sub_80D9378
	thumb_func_start sub_80D9378
sub_80D9378:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r5, #0x3C]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0x98
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _080D9414
	str r1, [r5, #0x18]
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	movs r1, #0x16
	movs r2, #0x01
	bl sub_807B838
	adds r6, r0, #0x0
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r1, [r5, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8086150
	movs r3, #0x88
	lsls r3, r3, #0x01
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x18]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x1C]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x20]
	ldr r0, _080D941C @ =0x080D99A1
	str r0, [r6, #0x54]
	ldr r0, [r5, #0x28]
	adds r0, #0xB0
	movs r1, #0x01
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807C298
_080D9414:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D941C: .4byte sub_80D99A0
	thumb_func_start sub_80D9420
sub_80D9420:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r4
	mov r12, r0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x06
	adds r0, r0, r1
	lsls r0, r0, #0x02
	cmp r0, #0x00
	bge _080D943A
	adds r0, #0xFF
_080D943A:
	asrs r0, r0, #0x08
	mov r5, r12
	strh r0, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r0, #0x00
	ldsh r1, [r3, r0]
	lsls r0, r1, #0x06
	adds r0, r0, r1
	lsls r0, r0, #0x02
	cmp r0, #0x00
	bge _080D9454
	adds r0, #0xFF
_080D9454:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	mov r5, r12
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r5, #0x00
	ldsh r1, [r3, r5]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x98
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _080D94AC
	str r1, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	bl sub_80873B8
	ldr r0, _080D94B4 @ =0x080D94B9
	str r0, [r4, #0x50]
_080D94AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D94B4: .4byte sub_80D94B8
	thumb_func_start sub_80D94B8
sub_80D94B8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x10
	strh r0, [r1, #0x00]
	ldr r0, _080D9528 @ =0x080D952D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9528: .4byte sub_80D952C
	thumb_func_start sub_80D952C
sub_80D952C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080D959A
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080D959A
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	movs r2, #0xA0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D95A0 @ =0x0808750D
	str r0, [r4, #0x4C]
_080D959A:
	pop {r4, r5}
	pop {r0}
	bx r0
_080D95A0: .4byte sub_808750C
	thumb_func_start sub_80D95A4
sub_80D95A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r10, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D95C0
	b _080D9752
_080D95C0:
	mov r0, r10
	ldr r1, [r0, #0x28]
	ldr r2, [r0, #0x38]
	cmp r2, #0x00
	bge _080D95CC
	adds r2, #0xFF
_080D95CC:
	asrs r2, r2, #0x08
	mov r5, r10
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _080D95D8
	adds r3, #0xFF
_080D95D8:
	asrs r3, r3, #0x08
	mov r5, r10
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D95E4
	adds r0, #0xFF
_080D95E4:
	asrs r0, r0, #0x08
	adds r0, #0x0C
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080D9764 @ =0x00004070
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r10
	str r7, [r0, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r5, r10
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r7, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080D9768 @ =0x080D977D
	str r0, [r7, #0x4C]
	ldr r0, _080D976C @ =0x08087541
	str r0, [r7, #0x68]
	mov r1, r10
	ldr r0, [r1, #0x6C]
	str r0, [r7, #0x6C]
	ldr r0, [r1, #0x2C]
	str r0, [r7, #0x2C]
	adds r0, r7, #0x0
	bl sub_807F4FC
	ldr r0, _080D9770 @ =0x080D99F1
	str r0, [r7, #0x60]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r10
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r7, #0x0
	adds r1, #0x98
	mov r2, r10
	ldr r0, [r2, #0x2C]
	ldr r4, [r0, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xAE
	movs r5, #0xB0
	adds r5, r5, r7
	mov r8, r5
	movs r0, #0xB2
	adds r0, r0, r7
	mov r9, r0
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x38]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	adds r5, r0, #0x0
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x3C]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	str r0, [sp, #0x000]
	mov r0, r10
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x40]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0xF0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	ldr r0, _080D9774 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	adds r0, r6, #0x0
	mov r1, r8
	mov r2, r9
	adds r3, r5, #0x0
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	mov r1, r10
	str r4, [r1, #0x6C]
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x09
	cmp r1, r0
	bne _080D9730
	movs r2, #0x05
_080D9730:
	mov r0, r10
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r5, r10
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080D9778 @ =0x080D9985
	str r0, [r5, #0x4C]
_080D9752:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9764: .4byte 0x00004070
_080D9768: .4byte sub_80D977C
_080D976C: .4byte sub_8087540
_080D9770: .4byte sub_80D99F0
_080D9774: .4byte 0x000004CC
_080D9778: .4byte sub_80D9984
	thumb_func_start sub_80D977C
sub_80D977C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r6, r4, #0x0
	adds r6, #0xB2
	movs r0, #0x94
	adds r0, r0, r4
	mov r9, r0
	ldr r1, [r0, #0x00]
	ldrh r0, [r6, #0x00]
	adds r0, r0, r1
	strh r0, [r6, #0x00]
	movs r1, #0xAE
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r7, r4, #0x0
	adds r7, #0xB0
	movs r0, #0x00
	ldsh r1, [r7, r0]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r5, r4, #0x0
	adds r5, #0x98
	ldr r1, [r5, #0x00]
	cmp r0, r1
	bgt _080D9836
	str r1, [r4, #0x18]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r2, [r0, #0x00]
	str r2, [r5, #0x00]
	subs r0, #0x08
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x38]
	subs r3, r3, r0
	lsrs r0, r3, #0x1F
	adds r3, r3, r0
	asrs r3, r3, #0x01
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x40]
	subs r2, r2, r0
	str r2, [sp, #0x004]
	movs r0, #0xA0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	ldr r0, _080D9844 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	mov r0, r8
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_808552C
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xB0
	movs r1, #0x01
	str r1, [r0, #0x00]
	ldr r0, _080D9848 @ =0x080D984D
	str r0, [r4, #0x4C]
_080D9836:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D9844: .4byte 0x000004CC
_080D9848: .4byte sub_80D984C
	thumb_func_start sub_80D984C
sub_80D984C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xB2
	movs r0, #0x94
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldrh r0, [r5, #0x00]
	adds r0, r0, r1
	strh r0, [r5, #0x00]
	adds r7, r4, #0x0
	adds r7, #0xAE
	movs r0, #0x00
	ldsh r1, [r7, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r6, r4, #0x0
	adds r6, #0xB0
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r3, r4, #0x0
	adds r3, #0x98
	ldr r1, [r3, #0x00]
	cmp r0, r1
	bgt _080D98E4
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r2, [r0, #0x00]
	str r2, [r3, #0x00]
	subs r0, #0x08
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x38]
	subs r3, r3, r0
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x40]
	subs r2, r2, r0
	str r2, [sp, #0x004]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	str r0, [sp, #0x008]
	ldr r0, _080D98F0 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_808552C
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _080D98F4 @ =0x080D98F9
	str r0, [r4, #0x4C]
_080D98E4:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D98F0: .4byte 0x000004CC
_080D98F4: .4byte sub_80D98F8
	thumb_func_start sub_80D98F8
sub_80D98F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r3, [r4, #0x38]
	adds r0, r3, r0
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r5, [r4, #0x3C]
	adds r0, r5, r0
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r6, [r4, #0x40]
	adds r1, r6, r1
	str r1, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080D9978
	str r0, [r4, #0x18]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _080D9946
	adds r0, #0xFF
_080D9946:
	asrs r7, r0, #0x08
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _080D9950
	adds r0, #0xFF
_080D9950:
	asrs r2, r0, #0x08
	adds r1, r6, #0x0
	cmp r1, #0x00
	bge _080D995A
	adds r1, #0xFF
_080D995A:
	asrs r3, r1, #0x08
	ldr r0, [r4, #0x2C]
	str r0, [sp, #0x000]
	ldr r0, _080D9980 @ =0x00000C6E
	adds r1, r7, #0x0
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
_080D9978:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D9980: .4byte 0x00000C6E
	thumb_func_start sub_80D9984
sub_80D9984:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D999A
	adds r0, r2, #0x0
	bl sub_8087540
_080D999A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80D99A0
sub_80D99A0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_807F4FC
	adds r0, r4, #0x0
	movs r1, #0x06
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
	ldr r0, _080D99D0 @ =0x080D9A99
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D99D0: .4byte sub_80D9A98
	thumb_func_start sub_80D99D4
sub_80D99D4:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D99EA
	adds r0, r2, #0x0
	bl sub_8087540
_080D99EA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80D99F0
sub_80D99F0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _080D9A2C
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r1, #0x00
	ldsh r0, [r2, r1]
	negs r0, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	ldr r0, _080D9A34 @ =0x080D9B25
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D9A2C:
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_080D9A34: .4byte sub_80D9B24
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x7D, 0x9A, 0x0D, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x09, 0x9B, 0x0D, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x16, 0x20, 0xA6, 0xF7
	.byte 0x17, 0xF9, 0x21, 0x1C, 0xA4, 0x31, 0x08, 0x60, 0x00, 0x28, 0x03, 0xDB, 0x00, 0x48, 0x02, 0xE0
	.byte 0x09, 0x9B, 0x0D, 0x08, 0x02, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x7D, 0x9A, 0x0D, 0x08
	thumb_func_start sub_80D9A7C
sub_80D9A7C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080D9A8C
	ldr r0, _080D9A94 @ =0x080D9B9D
	str r0, [r4, #0x4C]
_080D9A8C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9A94: .4byte sub_80D9B9C
	thumb_func_start sub_80D9A98
sub_80D9A98:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D9AF8
	adds r1, r6, #0x0
	adds r1, #0x98
	ldr r0, [r6, #0x28]
	adds r0, #0xE0
	ldr r4, [r0, #0x00]
	str r4, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xAE
	adds r1, #0x18
	adds r2, r6, #0x0
	adds r2, #0xB2
	movs r5, #0x00
	str r5, [sp, #0x000]
	ldr r3, [r6, #0x40]
	subs r4, r4, r3
	str r4, [sp, #0x004]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	ldr r3, _080D9B00 @ =0x000004CC
	str r3, [sp, #0x00C]
	movs r3, #0x82
	lsls r3, r3, #0x01
	str r3, [sp, #0x010]
	str r5, [sp, #0x014]
	movs r3, #0x00
	bl sub_808552C
	adds r1, r6, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D9B04 @ =0x080D9421
	str r0, [r6, #0x4C]
_080D9AF8:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D9B00: .4byte 0x000004CC
_080D9B04: .4byte sub_80D9420
	thumb_func_start sub_80D9B08
sub_80D9B08:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080D9B18
	ldr r0, _080D9B20 @ =0x080D9BE1
	str r0, [r4, #0x4C]
_080D9B18:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9B20: .4byte sub_80D9BE0
	thumb_func_start sub_80D9B24
sub_80D9B24:
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
	bge _080D9B52
	adds r0, #0xFF
_080D9B52:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _080D9B5E
	adds r0, #0xFF
_080D9B5E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080D9B6A
	adds r0, #0xFF
_080D9B6A:
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
	blt _080D9B8E
	ldr r1, [sp, #0x004]
	movs r0, #0x88
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _080D9B94
_080D9B8E:
	adds r0, r4, #0x0
	bl sub_807C298
_080D9B94:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80D9B9C
sub_80D9B9C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x06
	cmp r1, r0
	bne _080D9BB6
	movs r2, #0x02
_080D9BB6:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
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
	ldr r0, _080D9BDC @ =0x080D9C25
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080D9BDC: .4byte sub_80D9C24
	thumb_func_start sub_80D9BE0
sub_80D9BE0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x06
	cmp r1, r0
	bne _080D9BFA
	movs r2, #0x02
_080D9BFA:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
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
	ldr r0, _080D9C20 @ =0x080D9C6D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080D9C20: .4byte sub_80D9C6C
	thumb_func_start sub_80D9C24
sub_80D9C24:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D9C62
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x07
	cmp r1, r0
	bne _080D9C4A
	movs r2, #0x03
_080D9C4A:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x18
	strh r1, [r0, #0x00]
	ldr r0, _080D9C68 @ =0x080D9CB5
	str r0, [r4, #0x4C]
_080D9C62:
	pop {r4}
	pop {r0}
	bx r0
_080D9C68: .4byte sub_80D9CB4
	thumb_func_start sub_80D9C6C
sub_80D9C6C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D9CAA
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x07
	cmp r1, r0
	bne _080D9C92
	movs r2, #0x03
_080D9C92:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x18
	strh r1, [r0, #0x00]
	ldr r0, _080D9CB0 @ =0x080D9D09
	str r0, [r4, #0x4C]
_080D9CAA:
	pop {r4}
	pop {r0}
	bx r0
_080D9CB0: .4byte sub_80D9D08
	thumb_func_start sub_80D9CB4
sub_80D9CB4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9CFE
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x08
	cmp r1, r0
	bne _080D9CDE
	movs r2, #0x04
_080D9CDE:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
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
	ldr r0, _080D9D04 @ =0x080D95A5
	str r0, [r4, #0x4C]
_080D9CFE:
	pop {r4}
	pop {r0}
	bx r0
_080D9D04: .4byte sub_80D95A4
	thumb_func_start sub_80D9D08
sub_80D9D08:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9D52
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x08
	cmp r1, r0
	bne _080D9D32
	movs r2, #0x04
_080D9D32:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
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
	ldr r0, _080D9D58 @ =0x080D90DD
	str r0, [r4, #0x4C]
_080D9D52:
	pop {r4}
	pop {r0}
	bx r0
_080D9D58: .4byte sub_80D90DC
	thumb_func_start sub_80D9D5C
sub_80D9D5C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9DCA
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x08
	strh r0, [r5, #0x00]
	ldr r0, _080D9DD0 @ =0x080D9DD5
	str r0, [r4, #0x4C]
_080D9DCA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080D9DD0: .4byte sub_80D9DD4
	thumb_func_start sub_80D9DD4
sub_80D9DD4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080D9E20
	adds r6, r4, #0x0
	adds r6, #0xAC
	ldrh r0, [r6, #0x00]
	subs r0, #0x01
	strh r0, [r6, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9E20
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r5, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _080D9E28 @ =0x0000138A
	adds r0, r4, #0x0
	bl sub_8086858
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r0, _080D9E2C @ =0x080D9E35
	str r0, [r4, #0x5C]
	str r5, [r4, #0x54]
	strh r5, [r6, #0x00]
	ldr r0, _080D9E30 @ =0x080D9E9D
	str r0, [r4, #0x4C]
_080D9E20:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9E28: .4byte 0x0000138A
_080D9E2C: .4byte sub_80D9E34
_080D9E30: .4byte sub_80D9E9C
	thumb_func_start sub_80D9E34
sub_80D9E34:
	push {r4, r5, lr}
	ldr r0, [r0, #0x28]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8086C64
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _080D9E4E
	adds r0, r5, #0x0
	bl sub_80D9F34
_080D9E4E:
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xBD, 0x9E, 0x0D, 0x08, 0x01, 0x49
	.byte 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xF5, 0x9E, 0x0D, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x07, 0x48
	.byte 0xE0, 0x64, 0xC0, 0xF0, 0x5A, 0xF8, 0x01, 0x1C, 0x02, 0x20, 0x03, 0xF1, 0x7C, 0xFC, 0x00, 0x28
	.byte 0x01, 0xD0, 0x03, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xF5, 0x9E
	.byte 0x0D, 0x08, 0xBD, 0x9E, 0x0D, 0x08
