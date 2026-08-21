	.syntax unified
	.text

	thumb_func_start sub_8112174
sub_8112174:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _081121B2
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0811218C
	adds r1, #0xFF
_0811218C:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08112196
	adds r0, #0xFF
_08112196:
	asrs r0, r0, #0x08
	subs r2, r0, #0x1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _081121A2
	adds r3, #0xFF
_081121A2:
	asrs r3, r3, #0x08
	subs r3, #0x01
	str r4, [sp, #0x000]
	ldr r0, _081121E4 @ =0x0000264C
	bl sub_80DF024
	movs r0, #0x04
	str r0, [r5, #0x00]
_081121B2:
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _081121DA
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	str r0, [r4, #0x4C]
_081121DA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081121E4: .4byte 0x0000264C
