	.syntax unified
	.text

	thumb_func_start sub_80843C0
sub_80843C0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	movs r5, #0xA0
	lsls r5, r5, #0x04
	ldr r2, _080844BC @ =0x082000D4
	movs r0, #0x01
	adds r1, r5, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	movs r2, #0xA2
	lsls r2, r2, #0x02
	adds r0, r6, r2
	str r1, [r0, #0x00]
	ldr r4, _080844C0 @ =0x03001034
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0xF0
	bl _call_via_r3
	movs r0, #0xFA
	lsls r0, r0, #0x01
	adds r1, r6, r0
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r2, #0xF8
	lsls r2, r2, #0x01
	adds r1, r6, r2
	adds r0, r6, #0x0
	adds r0, #0xF0
	str r0, [r1, #0x00]
	adds r5, r0, #0x0
	movs r0, #0xF4
	lsls r0, r0, #0x01
	adds r3, r6, r0
	subs r0, #0x08
	adds r2, r6, r0
	str r3, [r2, #0x00]
	adds r3, r2, #0x0
	subs r0, #0x08
	adds r2, r6, r0
	str r3, [r2, #0x00]
	adds r3, r2, #0x0
	subs r0, #0x08
	adds r2, r6, r0
	str r3, [r2, #0x00]
	adds r3, r2, #0x0
	subs r0, #0x08
	adds r2, r6, r0
	movs r4, #0x1B
_08084430:
	str r3, [r2, #0x00]
	adds r0, r3, #0x0
	subs r0, #0x08
	adds r1, r2, #0x0
	subs r1, #0x08
	str r0, [r1, #0x00]
	subs r0, #0x08
	subs r1, #0x08
	str r0, [r1, #0x00]
	subs r0, #0x08
	subs r1, #0x08
	str r0, [r1, #0x00]
	subs r3, #0x20
	subs r2, #0x20
	subs r4, #0x04
	cmp r4, #0x00
	bge _08084430
	movs r1, #0x00
	adds r0, r5, #0x0
	adds r0, #0xF8
	str r1, [r0, #0x00]
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r0, r6, r2
	str r1, [r0, #0x00]
	movs r0, #0x9E
	lsls r0, r0, #0x02
	adds r1, r6, r0
	subs r2, #0x84
	adds r0, r6, r2
	str r0, [r1, #0x00]
	movs r0, #0x9A
	lsls r0, r0, #0x02
	adds r1, r6, r0
	adds r2, #0x60
	adds r0, r6, r2
	str r1, [r0, #0x00]
	adds r1, r0, #0x0
	subs r2, #0x10
	adds r0, r6, r2
	str r1, [r0, #0x00]
	adds r1, r0, #0x0
	subs r2, #0x10
	adds r0, r6, r2
	str r1, [r0, #0x00]
	adds r1, r0, #0x0
	subs r2, #0x10
	adds r0, r6, r2
	str r1, [r0, #0x00]
	adds r1, r0, #0x0
	subs r2, #0x10
	adds r0, r6, r2
	str r1, [r0, #0x00]
	adds r1, r0, #0x0
	subs r2, #0x10
	adds r0, r6, r2
	str r1, [r0, #0x00]
	adds r1, r0, #0x0
	subs r2, #0x10
	adds r0, r6, r2
	str r1, [r0, #0x00]
	movs r1, #0x00
	adds r2, #0x70
	adds r0, r6, r2
	str r1, [r0, #0x00]
	adds r0, r6, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080844BC: .4byte dword_82000D4 @ =0x082000D4
_080844C0: .4byte 0x03001034
