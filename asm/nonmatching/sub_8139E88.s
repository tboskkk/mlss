	.syntax unified
	.text

	thumb_func_start sub_8139E88
sub_8139E88:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	movs r0, #0xDA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	movs r4, #0xFF
	mov r3, sp
	movs r5, #0x00
	ldsh r0, [r1, r5]
	lsls r0, r0, #0x04
	subs r0, r0, r2
	strh r0, [r3, #0x00]
	adds r1, #0x02
	movs r5, #0x00
	ldsh r0, [r1, r5]
	lsls r0, r0, #0x04
	subs r0, r0, r2
	strh r0, [r3, #0x06]
	adds r1, #0x02
	movs r5, #0x00
	ldsh r0, [r1, r5]
	lsls r0, r0, #0x04
	adds r0, r0, r2
	strh r0, [r3, #0x02]
	movs r5, #0x02
	ldsh r0, [r1, r5]
	lsls r0, r0, #0x04
	adds r0, r0, r2
	strh r0, [r3, #0x04]
	ldr r1, [r6, #0x28]
	ldr r5, _08139F04 @ =0x00007FFF
	mov r0, sp
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08139EDC
	movs r4, #0x00
_08139EDC:
	ldr r1, [r6, #0x2C]
	mov r0, sp
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08139EF8
	lsls r0, r4, #0x18
	movs r4, #0x01
	cmp r0, #0x00
	bne _08139EF8
	movs r4, #0x02
_08139EF8:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08139F04: .4byte 0x00007FFF
