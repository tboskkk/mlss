	.syntax unified
	.text

	thumb_func_start sub_813BCE4
sub_813BCE4:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	mov r8, r0
	mov r9, r1
	ldr r6, _0813BD2C @ =0x03001038
	ldr r4, _0813BD30 @ =0x0819832C
	ldr r0, _0813BD34 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r4
	mov r1, r8
	ldr r0, [r1, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x01
	adds r1, r5, #0x0
	bl _call_via_r2
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r2, [r6, #0x00]
	adds r2, r2, r4
	mov r1, r8
	ldr r0, [r1, #0x04]
	adds r1, r5, #0x0
	bl _call_via_r2
	mov r1, r9
	str r0, [r1, #0x04]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0813BD2C: .4byte 0x03001038
_0813BD30: .4byte 0x0819832C
_0813BD34: .4byte 0x08198220
