	.syntax unified
	.text

	thumb_func_start sub_8163BE4
sub_8163BE4:
	push {r4, lr}
	adds r4, r0, #0x0
	b _08163C34
_08163BEA:
	ldr r2, [r4, #0x00]
	ldr r1, [r2, #0x04]
	cmp r1, #0x00
	beq _08163C0A
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _08163C02
	str r0, [r1, #0x08]
	ldr r1, [r2, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x04]
	b _08163C1A
_08163C02:
	str r0, [r1, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r4, #0x04]
	b _08163C1A
_08163C0A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _08163C16
	str r1, [r0, #0x04]
	ldr r0, [r2, #0x08]
	b _08163C18
_08163C16:
	str r0, [r4, #0x04]
_08163C18:
	str r0, [r4, #0x00]
_08163C1A:
	ldr r0, [r4, #0x08]
	subs r0, #0x01
	str r0, [r4, #0x08]
	cmp r2, #0x00
	beq _08163C34
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163C34:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08163BEA
	pop {r4}
	pop {r0}
	bx r0
