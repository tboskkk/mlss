	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80DC1B4
sub_80DC1B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r7
	mov r8, r0
	adds r0, r7, #0x0
	adds r0, #0xB0
	ldrh r0, [r0, #0x00]
	mov r1, r8
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	mov r2, r8
	strh r0, [r2, #0x00]
	mov r5, sp
	adds r5, #0x0E
	add r6, sp, #0x010
	ldr r4, [r7, #0x2C]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	adds r2, r7, #0x0
	adds r2, #0x84
	ldr r3, [r0, #0x00]
	ldr r0, [r2, #0x00]
	subs r3, r3, r0
	adds r1, #0xDC
	adds r2, #0x04
	ldr r0, [r1, #0x00]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	adds r1, r7, #0x0
	adds r1, #0x8C
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	str r0, [sp, #0x008]
	add r0, sp, #0x00C
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8087968
	add r0, sp, #0x00C
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r7, #0x3C]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	mov r0, r8
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, _080DC274 @ =0xFFFFFE00
	cmp r1, r0
	bgt _080DC266
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DC278 @ =0x080DC3D1
	str r0, [r7, #0x4C]
_080DC266:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DC274: .4byte 0xFFFFFE00
_080DC278: .4byte sub_80DC3D0
	thumb_func_start sub_80DC27C
sub_80DC27C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DC300
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080DC308 @ =0x080DC3B9
	str r0, [r4, #0x58]
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
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x02
	strh r0, [r1, #0x00]
	ldr r0, _080DC30C @ =0x080DC311
	str r0, [r4, #0x4C]
_080DC300:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DC308: .4byte sub_80DC3B8
_080DC30C: .4byte sub_80DC310
	thumb_func_start sub_80DC310
sub_80DC310:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080DC394
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DC394
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xD0
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
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DC39C @ =0x080DC3A1
	str r0, [r4, #0x4C]
_080DC394:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DC39C: .4byte sub_80DC3A0
