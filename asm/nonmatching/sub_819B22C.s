	.syntax unified
	.text

	thumb_func_start sub_819B22C
sub_819B22C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r0, _0819B288 @ =0x0821CC40
	mov r2, r8
	lsls r1, r2, #0x02
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	mov r9, r4
	ldrh r5, [r4, #0x00]
	adds r4, #0x02
	ldr r0, _0819B28C @ =0x03007FF0
	ldr r6, [r0, #0x00]
	movs r7, #0x00
_0819B24C:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _0819B272
	ldrh r1, [r4, #0x00]
	add r1, r9
	adds r4, #0x02
	adds r0, r6, #0x0
	bl sub_819B040
	ldr r0, _0819B28C @ =0x03007FF0
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x01
	movs r2, #0x96
	lsls r2, r2, #0x03
	adds r0, r0, r2
	adds r0, r0, r1
	mov r1, r8
	strh r1, [r0, #0x00]
_0819B272:
	adds r7, #0x01
	adds r6, #0x20
	lsrs r5, r5, #0x01
	cmp r7, #0x0B
	ble _0819B24C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0819B288: .4byte 0x0821CC40
_0819B28C: .4byte 0x03007FF0
