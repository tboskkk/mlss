	.syntax unified
	.text

	thumb_func_start sub_809F344
sub_809F344:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r2, [r5, #0x28]
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bge _0809F35C
	adds r0, #0xFF
_0809F35C:
	asrs r3, r0, #0x08
	ldr r0, _0809F46C @ =0x08198584
	mov r10, r0
	movs r4, #0xD8
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r6, #0x00
	ldsh r1, [r0, r6]
	cmp r1, #0x00
	bge _0809F372
	adds r1, #0x3F
_0809F372:
	asrs r1, r1, #0x06
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	cmp r0, #0x00
	bge _0809F380
	adds r0, #0xFF
_0809F380:
	asrs r0, r0, #0x08
	subs r6, r3, r0
	ldr r2, [r2, #0x44]
	cmp r2, #0x00
	bge _0809F38C
	adds r2, #0xFF
_0809F38C:
	asrs r3, r2, #0x08
	ldr r0, _0809F470 @ =0x08198504
	mov r9, r0
	adds r0, r4, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0809F39E
	adds r0, #0x3F
_0809F39E:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	cmp r0, #0x00
	bge _0809F3AC
	adds r0, #0xFF
_0809F3AC:
	asrs r0, r0, #0x08
	movs r1, #0x8C
	mov r8, r1
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0809F3BE
	adds r0, #0xFF
_0809F3BE:
	asrs r2, r0, #0x08
	subs r2, r3, r2
	movs r7, #0x80
	lsls r7, r7, #0x01
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r3, #0x3C
	bl sub_808843C
	ldr r6, [r5, #0x30]
	ldr r2, [r5, #0x28]
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bge _0809F3DE
	adds r0, #0xFF
_0809F3DE:
	asrs r3, r0, #0x08
	mov r0, r10
	adds r0, #0x50
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0809F3EE
	adds r0, #0x3F
_0809F3EE:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	cmp r0, #0x00
	bge _0809F3FC
	adds r0, #0xFF
_0809F3FC:
	asrs r0, r0, #0x08
	subs r4, r3, r0
	ldr r2, [r2, #0x44]
	cmp r2, #0x00
	bge _0809F408
	adds r2, #0xFF
_0809F408:
	asrs r3, r2, #0x08
	mov r0, r9
	adds r0, #0x50
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0809F418
	adds r0, #0x3F
_0809F418:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	cmp r0, #0x00
	bge _0809F426
	adds r0, #0xFF
_0809F426:
	asrs r0, r0, #0x08
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0809F434
	adds r0, #0xFF
_0809F434:
	asrs r2, r0, #0x08
	subs r2, r3, r2
	str r7, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x3C
	bl sub_808843C
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80880C4
	ldr r0, [r5, #0x30]
	adds r1, r4, #0x0
	bl sub_80880C4
	ldr r0, _0809F474 @ =0x080A07D9
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809F46C: .4byte 0x08198584
_0809F470: .4byte 0x08198504
_0809F474: .4byte sub_80A07D8
