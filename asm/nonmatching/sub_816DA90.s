	.syntax unified
	.text

	thumb_func_start sub_816DA90
sub_816DA90:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	adds r0, #0x74
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _0816DB08 @ =0x0600700C
	ldr r1, _0816DB0C @ =0x0600702E
	ldrh r2, [r0, #0x00]
	mov r10, r2
	strh r2, [r1, #0x00]
	ldrh r2, [r0, #0x02]
	mov r9, r2
	strh r2, [r1, #0x02]
	ldrh r2, [r0, #0x04]
	mov r8, r2
	strh r2, [r1, #0x04]
	ldrh r6, [r0, #0x06]
	strh r6, [r1, #0x06]
	adds r1, #0x40
	adds r0, #0x40
	ldrh r5, [r0, #0x00]
	strh r5, [r1, #0x00]
	adds r1, #0x02
	adds r0, #0x02
	ldrh r4, [r0, #0x00]
	strh r4, [r1, #0x00]
	adds r1, #0x02
	adds r0, #0x02
	ldrh r3, [r0, #0x00]
	strh r3, [r1, #0x00]
	adds r1, #0x02
	adds r0, #0x02
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x60
	mov r1, r10
	strh r1, [r0, #0x00]
	mov r1, r9
	strh r1, [r0, #0x02]
	mov r1, r8
	strh r1, [r0, #0x04]
	strh r6, [r0, #0x06]
	adds r0, #0x40
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0816DB08: .4byte 0x0600700C
_0816DB0C: .4byte 0x0600702E
