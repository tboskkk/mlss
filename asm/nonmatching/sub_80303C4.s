	.syntax unified
	.text

	thumb_func_start sub_80303C4
sub_80303C4:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	movs r0, #0x87
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	cmp r0, #0x00
	beq _080303EC
	ldr r1, _080303E8 @ =0x00000352
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080303EC
	ldrb r4, [r2, #0x00]
	b _080303FC
_080303E8: .4byte 0x00000352
_080303EC:
	movs r7, #0x88
	lsls r7, r7, #0x01
	adds r1, r5, r7
	ldrb r0, [r1, #0x00]
	movs r4, #0x00
	cmp r0, #0x00
	beq _080303FC
	adds r4, r0, #0x0
_080303FC:
	cmp r4, #0x00
	ble _08030426
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r3, [r0, #0x00]
	adds r3, #0x60
	movs r7, #0x00
	ldsh r0, [r3, r7]
	adds r0, r6, r0
	lsls r1, r4, #0x02
	adds r1, #0x28
	adds r1, r5, r1
	ldr r7, _08030480 @ =0x0000010B
	adds r2, r5, r7
	ldrb r2, [r2, #0x00]
	subs r2, r2, r4
	ldr r4, [r3, #0x04]
	movs r3, #0x00
	bl _call_via_r4
_08030426:
	movs r0, #0x8A
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0803044C
	movs r7, #0x8B
	lsls r7, r7, #0x01
	adds r1, r5, r7
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0803044C
	movs r0, #0x8D
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	movs r4, #0x00
	cmp r0, #0x00
	beq _0803044E
_0803044C:
	adds r4, r0, #0x0
_0803044E:
	cmp r4, #0x00
	ble _08030478
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r3, [r0, #0x00]
	adds r3, #0x60
	movs r7, #0x00
	ldsh r0, [r3, r7]
	adds r0, r6, r0
	lsls r1, r4, #0x02
	adds r1, #0x28
	adds r1, r5, r1
	ldr r6, _08030480 @ =0x0000010B
	adds r2, r5, r6
	ldrb r2, [r2, #0x00]
	subs r2, r2, r4
	ldr r4, [r3, #0x04]
	movs r3, #0x00
	bl _call_via_r4
_08030478:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08030480: .4byte 0x0000010B
