	.syntax unified
	.text

	thumb_func_start sub_807F8C4
sub_807F8C4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807F8D6
	adds r1, #0xFF
_0807F8D6:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _0807F8E0
	adds r2, #0xFF
_0807F8E0:
	asrs r2, r2, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807F7BC
	ldr r0, _0807F918 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807F910
	movs r0, #0x0E
	strh r0, [r4, #0x16]
	ldr r0, _0807F91C @ =0x0807CD19
	str r0, [r5, #0x04]
_0807F910:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807F918: .4byte 0x03000FD8
_0807F91C: .4byte sub_807CD18
