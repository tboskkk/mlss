	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x040
	mov r8, r0
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	mov r9, r3
	ldr r0, [r6, #0x04]
	cmp r0, #0x00
	bne _080F4EAC
	ldr r0, _080F4EDC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r6, #0x08]
	lsls r0, r0, #0x02
	adds r2, #0x58
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	add r1, sp, #0x008
	adds r0, #0x14
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	add r3, sp, #0x024
	ldr r0, [r6, #0x0C]
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r0, #0x14
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x00C]
	cmp r0, #0x00
	bge _080F4E3C
	adds r0, #0x0F
_080F4E3C:
	asrs r0, r0, #0x04
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _080F4E48
	adds r0, #0x0F
_080F4E48:
	asrs r0, r0, #0x04
	str r0, [sp, #0x010]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _080F4E54
	adds r0, #0x0F
_080F4E54:
	asrs r0, r0, #0x04
	str r0, [sp, #0x014]
	ldr r0, [r3, #0x04]
	cmp r0, #0x00
	bge _080F4E60
	adds r0, #0x0F
_080F4E60:
	asrs r5, r0, #0x04
	str r5, [r3, #0x04]
	ldr r1, [r3, #0x08]
	cmp r1, #0x00
	bge _080F4E6C
	adds r1, #0x0F
_080F4E6C:
	asrs r4, r1, #0x04
	str r4, [r3, #0x08]
	ldr r2, [r3, #0x0C]
	cmp r2, #0x00
	bge _080F4E78
	adds r2, #0x0F
_080F4E78:
	asrs r2, r2, #0x04
	str r2, [r3, #0x0C]
	ldr r3, _080F4EE0 @ =0x03001038
	ldr r0, [sp, #0x00C]
	subs r0, r5, r0
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	ldr r1, [sp, #0x010]
	subs r1, r4, r1
	adds r4, r1, #0x0
	muls r4, r1
	adds r1, r4, #0x0
	adds r0, r0, r1
	ldr r1, [sp, #0x014]
	subs r2, r2, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _080F4EAA
	adds r0, #0x0F
_080F4EAA:
	asrs r4, r0, #0x04
_080F4EAC:
	adds r1, r7, #0x0
	adds r1, #0x18
	mov r5, r8
	ldr r2, [r5, #0x2C]
	ldr r0, _080F4EE4 @ =0x00001794
	adds r2, r2, r0
	adds r3, r7, #0x0
	adds r3, #0xA8
	movs r5, #0x00
	ldsh r0, [r6, r5]
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	mov r0, r9
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x040
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F4EDC: .4byte 0x03000FD8
_080F4EE0: .4byte 0x03001038
_080F4EE4: .4byte 0x00001794
