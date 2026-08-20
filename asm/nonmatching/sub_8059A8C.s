	.syntax unified
	.text

	thumb_func_start sub_8059A8C
sub_8059A8C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r5, [sp, #0x014]
	lsls r1, r1, #0x10
	lsls r5, r5, #0x10
	ldr r4, [r0, #0x74]
	mov r8, r4
	movs r6, #0x0F
	lsrs r1, r1, #0x06
	ands r3, r6
	lsls r4, r3, #0x06
	adds r4, r1, r4
	ands r2, r6
	lsls r2, r2, #0x01
	adds r4, r4, r2
	lsls r4, r4, #0x10
	lsls r3, r3, #0x01
	adds r3, #0x01
	lsls r3, r3, #0x05
	adds r1, r1, r3
	adds r1, r1, r2
	lsls r1, r1, #0x10
	adds r2, r0, #0x0
	adds r2, #0x7C
	ldrh r2, [r2, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x10
	ldr r3, [r0, #0x68]
	lsrs r4, r4, #0x0F
	adds r4, r4, r3
	lsrs r5, r5, #0x0D
	add r5, r8
	ldrh r0, [r5, #0x00]
	adds r0, r2, r0
	strh r0, [r4, #0x00]
	ldrh r0, [r5, #0x02]
	adds r0, r2, r0
	strh r0, [r4, #0x02]
	lsrs r1, r1, #0x0F
	adds r1, r1, r3
	ldrh r0, [r5, #0x04]
	adds r0, r2, r0
	strh r0, [r1, #0x00]
	ldrh r0, [r5, #0x06]
	adds r2, r2, r0
	strh r2, [r1, #0x02]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
