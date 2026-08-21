	.syntax unified
	.text

	thumb_func_start sub_809D4E4
sub_809D4E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _0809D520 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r4
	mov r8, r1
	ldr r5, [r0, #0x74]
	adds r7, r5, #0x0
	adds r7, #0x08
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r4, #0x7E
	ldrb r1, [r4, #0x00]
	movs r2, #0x06
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0809D524
	ldr r2, [r7, #0x3C]
	b _0809D536
	.byte 0x00, 0x00
_0809D520: .4byte 0x03000FD8
_0809D524:
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0809D540
	mov r0, r8
	ldr r2, [r0, #0x3C]
_0809D536:
	cmp r2, #0x00
	bge _0809D53C
	adds r2, #0xFF
_0809D53C:
	asrs r2, r2, #0x08
	b _0809D552
_0809D540:
	mov r0, r8
	ldr r1, [r0, #0x3C]
	ldr r0, [r7, #0x3C]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _0809D550
	ldr r0, _0809D594 @ =0x000001FF
	adds r1, r1, r0
_0809D550:
	asrs r2, r1, #0x09
_0809D552:
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bge _0809D55C
	adds r1, #0xFF
_0809D55C:
	asrs r1, r1, #0x08
	adds r1, #0x38
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r6, #0x0
	bl sub_80880C4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x99
	bl play_sfx_80195B4
	ldr r0, _0809D598 @ =0x0809D91D
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809D594: .4byte 0x000001FF
_0809D598: .4byte sub_809D91C
