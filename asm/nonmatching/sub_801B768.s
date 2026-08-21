	.syntax unified
	.text

	thumb_func_start sub_801B768
sub_801B768:
	push {r4, lr}
	mov r12, r0
	ldrb r0, [r0, #0x1C]
	adds r0, #0x01
	mov r1, r12
	strb r0, [r1, #0x1C]
	ldr r3, _0801B7AC @ =0x0300034C
	movs r4, #0x88
	lsls r4, r4, #0x04
	adds r3, r3, r4
	ldr r2, [r3, #0x00]
	ldrb r0, [r1, #0x1D]
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldrb r0, [r1, #0x1C]
	strh r0, [r2, #0x00]
	adds r2, #0x02
	mov r0, r12
	adds r0, #0x20
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x0C
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x0A
	orrs r1, r0
	mov r4, r12
	ldrh r0, [r4, #0x1E]
	orrs r1, r0
	strh r1, [r2, #0x00]
	adds r2, #0x04
	str r2, [r3, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0801B7AC: .4byte 0x0300034C
