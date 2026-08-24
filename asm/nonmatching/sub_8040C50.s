	.syntax unified
	.text

	thumb_func_start sub_8040C50
sub_8040C50:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r1, _08040C78 @ =0x00000216
	adds r0, r4, r1
	ldrb r3, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r3
	cmp r0, #0x00
	bne _08040C7C
	adds r1, #0x7E
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	ldrb r2, [r0, #0x00]
	movs r5, #0x00
	b _08040CA2
	.byte 0x00, 0x00
_08040C78: .4byte 0x00000216
_08040C7C:
	ldr r2, _08040CF0 @ =0x083A05EC
	lsls r1, r3, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	lsls r0, r3, #0x1B
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x7F
	ands r2, r0
	lsrs r5, r0, #0x07
_08040CA2:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r2
	bne _08040CC2
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	cmp r0, r5
	bne _08040CC2
	cmp r6, #0x00
	beq _08040CE8
_08040CC2:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r4, #0x00]
	lsls r3, r5, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x11]
_08040CE8:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08040CF0: .4byte dword_83A05EC @ =0x083A05EC
