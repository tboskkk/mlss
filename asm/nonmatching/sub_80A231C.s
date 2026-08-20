	.syntax unified
	.text

	thumb_func_start sub_80A231C
sub_80A231C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _080A236C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x74]
	ldr r0, [r3, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A2366
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2344
	cmp r1, #0x04
	bne _080A2362
_080A2344:
	adds r2, r3, #0x0
	adds r2, #0x82
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x07
	strh r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A2362:
	ldr r0, _080A2370 @ =0x080A2375
	str r0, [r4, #0x4C]
_080A2366:
	pop {r4}
	pop {r0}
	bx r0
_080A236C: .4byte 0x03000FD8
_080A2370: .4byte sub_80A2374
