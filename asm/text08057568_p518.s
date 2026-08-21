	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80B3390
sub_80B3390:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r4, _080B347C @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r0, #0x04
	strb r0, [r1, #0x0E]
	ldr r6, [r4, #0x00]
	ldr r0, _080B3480 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x44]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x1A
	movs r5, #0x01
	adds r2, r5, #0x0
	ands r2, r0
	adds r0, r1, #0x0
	adds r0, #0x47
	ldrb r3, [r0, #0x00]
	lsrs r3, r3, #0x06
	adds r1, #0x48
	ldrb r0, [r1, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	orrs r0, r3
	ands r0, r5
	lsls r0, r0, #0x01
	adds r2, r2, r0
	lsls r2, r2, #0x06
	ldrb r1, [r6, #0x0A]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r2
	strb r0, [r6, #0x0A]
	ldr r0, [r4, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B3404
	cmp r1, #0x04
	bne _080B344A
_080B3404:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B3412
	adds r0, #0xFF
_080B3412:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B3424
	adds r0, #0xFF
_080B3424:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B3436
	adds r0, #0xFF
_080B3436:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080B344A:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B345E
	cmp r2, #0x04
	bne _080B34C4
_080B345E:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B3488
	ldr r2, _080B3484 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B3494
_080B347C: .4byte 0x03000FD8
_080B3480: .4byte 0x03000FF4
_080B3484: .4byte 0x00002002
_080B3488:
	ldr r2, _080B3568 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B3494:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B34AA
	movs r2, #0x01
_080B34AA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B34C4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B34D2
	cmp r2, #0x04
	bne _080B34DC
_080B34D2:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080B34DC:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B34F0
	cmp r2, #0x04
	bne _080B353A
_080B34F0:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B34FE
	adds r0, #0xFF
_080B34FE:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x14
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B3510
	adds r0, #0xFF
_080B3510:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B3522
	adds r0, #0xFF
_080B3522:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080B353A:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B3548
	cmp r2, #0x04
	bne _080B35AC
_080B3548:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B3570
	ldr r2, _080B356C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B357C
	.byte 0x00, 0x00
_080B3568: .4byte 0x0000204F
_080B356C: .4byte 0x00002002
_080B3570:
	ldr r2, _080B35C0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B357C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B3592
	movs r2, #0x01
_080B3592:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B35AC:
	ldr r0, _080B35C4 @ =0x080B956D
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B35C0: .4byte 0x0000204F
_080B35C4: .4byte sub_80B956C
