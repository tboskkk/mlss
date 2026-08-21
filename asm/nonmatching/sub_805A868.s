	.syntax unified
	.text

	thumb_func_start sub_805A868
sub_805A868:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	mov r12, r0
	ldr r7, [r6, #0x44]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _0805A8AC
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	b _0805A8D6
_0805A8AC:
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r4, r5, #0x0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	adds r2, r2, r4
_0805A8D6:
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r3, [r6, #0x38]
	lsls r1, r0, #0x01
	adds r1, r1, r3
	mov r0, r12
	lsls r2, r0, #0x03
	adds r2, r2, r7
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x02]
	strh r0, [r1, #0x02]
	lsls r0, r4, #0x01
	adds r0, r0, r3
	ldrh r1, [r2, #0x04]
	strh r1, [r0, #0x00]
	ldrh r1, [r2, #0x06]
	strh r1, [r0, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
