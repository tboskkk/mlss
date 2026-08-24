	.syntax unified
	.text

	thumb_func_start sub_816375C
sub_816375C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	movs r0, #0x01
	str r0, [r5, #0x00]
	ldr r0, [r5, #0x04]
	ldr r0, [r0, #0x10]
	ldr r2, _081637A0 @ =0x082128CE
	ldr r1, _081637A4 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r5, #0x04]
	ldr r0, _081637A8 @ =0x08212866
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r4, [r0, #0x00]
	str r4, [r1, #0x40]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_081637A0: .4byte 0x082128CE
_081637A4: .4byte 0x0300034C
_081637A8: .4byte 0x08212866
