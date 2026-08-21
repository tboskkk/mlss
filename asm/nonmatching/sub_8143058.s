	.syntax unified
	.text

	thumb_func_start sub_8143058
sub_8143058:
	push {r4, r5, lr}
	add sp, #-0x004
	mov r12, r1
	adds r5, r2, #0x0
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r2, [r0, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	add r4, r12
	ldr r1, [r4, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	adds r0, r0, r2
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	movs r3, #0x00
	strb r0, [r1, #0x00]
	movs r2, #0x85
	lsls r2, r2, #0x02
	add r2, r12
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r0, _081430C8 @ =0x081430CD
	str r0, [r5, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081430C8: .4byte sub_81430CC
