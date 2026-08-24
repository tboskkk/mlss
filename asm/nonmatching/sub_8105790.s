	.syntax unified
	.text

	thumb_func_start sub_8105790
sub_8105790:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r0, _081057DC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldr r1, [r1, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0x00
	beq _081057B0
	movs r5, #0xE9
	lsls r5, r5, #0x02
	adds r1, r2, r5
	movs r0, #0x00
	strb r0, [r1, #0x00]
_081057B0:
	ldr r0, [r6, #0x00]
	movs r1, #0xE6
	lsls r1, r1, #0x02
	adds r5, r0, r1
	ldr r1, _081057E0 @ =0x083BA948
	lsls r2, r4, #0x01
	adds r0, r2, r4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	adds r7, r1, #0x0
	cmp r3, #0x00
	beq _081057E8
	ldr r0, _081057E4 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	b _081057EA
_081057DC: .4byte 0x03000FD8
_081057E0: .4byte dword_83BA948 @ =0x083BA948
_081057E4: .4byte 0x0300034C
_081057E8:
	movs r0, #0x00
_081057EA:
	str r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	movs r5, #0xE7
	lsls r5, r5, #0x02
	adds r3, r0, r5
	adds r0, r2, r4
	lsls r0, r0, #0x02
	adds r1, r7, #0x4
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08105818
	ldr r0, _08105814 @ =0x0300034C
	movs r5, #0x8C
	lsls r5, r5, #0x04
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _0810581A
_08105814: .4byte 0x0300034C
_08105818:
	movs r0, #0x00
_0810581A:
	str r0, [r3, #0x00]
	ldr r0, [r6, #0x00]
	movs r1, #0xE8
	lsls r1, r1, #0x02
	adds r3, r0, r1
	adds r0, r2, r4
	lsls r0, r0, #0x02
	adds r1, r7, #0x0
	adds r1, #0x08
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0810584C
	ldr r0, _08105848 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _0810584E
	.byte 0x00, 0x00
_08105848: .4byte 0x0300034C
_0810584C:
	movs r0, #0x00
_0810584E:
	str r0, [r3, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
