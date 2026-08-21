	.syntax unified
	.text

	thumb_func_start sub_8019808
sub_8019808:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08019858 @ =0x03000C78
	ldr r1, [r0, #0x00]
	ldr r0, _0801985C @ =0x0800063C
	cmp r1, r0
	bne _08019894
	ldr r0, [r4, #0x00]
	cmp r0, #0x01
	bhi _080198A4
	ldr r0, _08019860 @ =0x03000D08
	ldrb r2, [r0, #0x00]
	movs r5, #0x00
	ldr r1, _08019864 @ =0x03000C88
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08019840
	ldr r0, [r0, #0x08]
	ldr r3, [r4, #0x08]
	cmp r0, r3
	beq _080198A4
_08019836:
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0801986C
_08019840:
	lsls r0, r2, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
	movs r0, #0x02
	str r0, [r4, #0x00]
	ldr r1, _08019868 @ =0x03000C80
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	movs r0, #0x01
	b _080198A6
	.byte 0x00, 0x00
_08019858: .4byte 0x03000C78
_0801985C: .4byte 0x0800063C
_08019860: .4byte 0x03000D08
_08019864: .4byte 0x03000C88
_08019868: .4byte 0x03000C80
_0801986C:
	adds r2, #0x01
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _08019876
	adds r0, #0x1F
_08019876:
	asrs r0, r0, #0x05
	lsls r0, r0, #0x05
	subs r2, r2, r0
	adds r5, #0x01
	cmp r5, #0x1F
	bgt _080198A4
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08019840
	ldr r0, [r0, #0x08]
	cmp r0, r3
	bne _08019836
	b _080198A4
_08019894:
	ldr r2, _080198AC @ =0x03000C84
	ldr r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	movs r0, #0x00
	str r0, [r4, #0x00]
_080198A4:
	movs r0, #0x00
_080198A6:
	pop {r4, r5}
	pop {r1}
	bx r1
_080198AC: .4byte 0x03000C84
