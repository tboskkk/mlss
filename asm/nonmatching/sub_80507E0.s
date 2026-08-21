	.syntax unified
	.text

	thumb_func_start sub_80507E0
sub_80507E0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08050848 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x8B
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r2, [r1, #0x00]
	lsls r2, r2, #0x0A
	lsrs r2, r2, #0x14
	movs r1, #0x96
	lsls r1, r1, #0x04
	adds r2, r2, r1
	movs r1, #0x00
	movs r3, #0x00
	bl sub_80E9958
	ldr r2, _0805084C @ =0x0000033E
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08050840
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x20
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x24]
	bl _call_via_r1
_08050840:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08050848: .4byte 0x03000FC0
_0805084C: .4byte 0x0000033E
