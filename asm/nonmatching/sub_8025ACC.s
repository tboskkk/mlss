	.syntax unified
	.text

	thumb_func_start sub_8025ACC
sub_8025ACC:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	movs r0, #0x87
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r3, #0x89
	lsls r3, r3, #0x01
	adds r1, r6, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r0, #0x8A
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r2, #0x8B
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r3, #0x8D
	lsls r3, r3, #0x01
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x00
	cmp r0, #0x00
	beq _08025B1C
_08025B1A:
	adds r1, r0, #0x0
_08025B1C:
	cmp r1, #0x00
	ble _08025BFA
	lsls r0, r1, #0x02
	adds r0, #0x28
	adds r4, r6, r0
	ldr r2, _08025C00 @ =0x0000010B
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	subs r5, r0, r1
	cmp r5, #0x00
	beq _08025BFA
	movs r7, #0xCE
	lsls r7, r7, #0x02
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08025B7E
	ldr r0, [r4, #0x00]
	bl sub_80465D8
	ldr r0, [r4, #0x00]
	adds r1, r0, r7
	ldr r1, [r1, #0x00]
	adds r1, #0x68
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	ldr r0, [r4, #0x00]
	adds r1, r0, r7
	ldr r1, [r1, #0x00]
	adds r1, #0x70
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #0x04]
	adds r1, r6, #0x0
	adds r1, #0x28
	movs r2, #0x00
	bl _call_via_r3
	ldm r4!, {r0}
	bl sub_804034C
	subs r5, #0x01
	cmp r5, #0x00
	beq _08025BFA
_08025B7E:
	ldr r0, [r4, #0x00]
	bl sub_80465D8
	ldr r0, [r4, #0x00]
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	adds r2, #0x68
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	ldr r0, [r4, #0x00]
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	adds r2, #0x70
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x04]
	adds r1, r6, #0x0
	adds r1, #0x28
	movs r2, #0x00
	bl _call_via_r3
	ldr r0, [r4, #0x00]
	bl sub_804034C
	ldr r0, [r4, #0x04]
	bl sub_80465D8
	ldr r0, [r4, #0x04]
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	adds r2, #0x68
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	ldr r0, [r4, #0x04]
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	adds r2, #0x70
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x04]
	adds r1, r6, #0x0
	adds r1, #0x28
	movs r2, #0x00
	bl _call_via_r3
	ldr r0, [r4, #0x04]
	bl sub_804034C
	subs r5, #0x02
	adds r4, #0x08
	cmp r5, #0x00
	bne _08025B7E
_08025BFA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08025C00: .4byte 0x0000010B
