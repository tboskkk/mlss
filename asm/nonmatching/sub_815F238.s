	.syntax unified
	.text

	thumb_func_start sub_815F238
sub_815F238:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _0815F278 @ =0x08CDCD10
	str r0, [r5, #0x30]
	movs r1, #0x00
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	adds r0, #0x24
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0815F270
	ldr r0, [r5, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x01
	strh r1, [r0, #0x04]
	ldr r0, [r5, #0x00]
	strh r1, [r0, #0x06]
_0815F270:
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_0815F278: .4byte 0x08CDCD10
