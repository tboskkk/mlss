	.syntax unified
	.text

	thumb_func_start sub_8083F88
sub_8083F88:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	movs r7, #0x01
	movs r6, #0x0A
	cmp r4, #0x09
	ble _08083FA8
_08083F9A:
	adds r7, #0x01
	lsls r0, r6, #0x02
	adds r0, r0, r6
	lsls r6, r0, #0x01
	subs r0, r6, #0x1
	cmp r0, r4
	blt _08083F9A
_08083FA8:
	movs r5, #0x00
	subs r7, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r7, r0
	beq _08083FE8
	ldr r0, _08083FF8 @ =0x03001038
	mov r9, r0
	ldr r1, _08083FFC @ =0x0819832C
	ldr r0, _08084000 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
_08083FC0:
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r4, r0, #0x01
	mov r0, r9
	ldr r2, [r0, #0x00]
	add r2, r8
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r1, r0, #0x0
	muls r1, r6
	subs r4, r4, r1
	lsls r5, r5, #0x04
	orrs r5, r0
	subs r7, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r7, r0
	bne _08083FC0
_08083FE8:
	adds r0, r5, #0x0
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08083FF8: .4byte 0x03001038
_08083FFC: .4byte 0x0819832C
_08084000: .4byte 0x08198220
