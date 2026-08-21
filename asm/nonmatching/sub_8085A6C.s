	.syntax unified
	.text

	thumb_func_start sub_8085A6C
sub_8085A6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	adds r7, r4, #0x0
	adds r7, #0x80
	ldr r6, [r7, #0x00]
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	subs r3, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x14]
	subs r1, r1, r0
	mov r8, r1
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x18]
	subs r1, r1, r0
	mov r9, r1
	adds r0, r4, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r5, [r0, r1]
	cmp r6, r5
	bge _08085AAA
	adds r5, r6, #0x0
_08085AAA:
	cmp r3, #0x00
	beq _08085ACA
	ldr r2, _08085B1C @ =0x03001038
	ldr r0, _08085B20 @ =0x0819832C
	ldr r1, _08085B24 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	muls r0, r5
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
_08085ACA:
	mov r0, r8
	cmp r0, #0x00
	beq _08085AEC
	ldr r2, _08085B1C @ =0x03001038
	ldr r0, _08085B20 @ =0x0819832C
	ldr r1, _08085B24 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r0, r8
	muls r0, r5
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
_08085AEC:
	mov r1, r9
	cmp r1, #0x00
	beq _08085B0E
	ldr r2, _08085B1C @ =0x03001038
	ldr r0, _08085B20 @ =0x0819832C
	ldr r1, _08085B24 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r0, r9
	muls r0, r5
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
_08085B0E:
	ldr r0, [r7, #0x00]
	subs r0, r0, r5
	str r0, [r7, #0x00]
	cmp r0, #0x00
	bne _08085B28
	movs r0, #0x01
	b _08085B2A
_08085B1C: .4byte 0x03001038
_08085B20: .4byte 0x0819832C
_08085B24: .4byte 0x08198220
_08085B28:
	movs r0, #0x00
_08085B2A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
