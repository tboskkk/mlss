	.syntax unified
	.text

	thumb_func_start sub_8158884
sub_8158884:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _081588AC
	adds r0, r5, #0x0
	bl sub_815FA3C
	movs r4, #0xA0
	lsls r4, r4, #0x01
	strh r4, [r0, #0x04]
	adds r0, r5, #0x0
	bl sub_815FA3C
	strh r4, [r0, #0x06]
_081588AC:
	movs r0, #0xA0
	lsls r0, r0, #0x08
	str r0, [r5, #0x08]
	ldr r1, [r5, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
