	.syntax unified
	.text

	thumb_func_start sub_810D4E0
sub_810D4E0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_810971C
	ldr r0, _0810D51C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r3, #0x10
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x02
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x4C]
	cmp r0, #0x00
	bne _0810D516
	ldrb r0, [r2, #0x07]
	movs r1, #0x1F
	ands r1, r0
	strb r1, [r2, #0x07]
	ldr r0, _0810D520 @ =0x0810971D
	str r0, [r4, #0x04]
_0810D516:
	pop {r4}
	pop {r0}
	bx r0
_0810D51C: .4byte 0x03000FD8
_0810D520: .4byte sub_810971C
