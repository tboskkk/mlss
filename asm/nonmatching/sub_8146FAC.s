	.syntax unified
	.text

	thumb_func_start sub_8146FAC
sub_8146FAC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r1, #0x0
	mov r8, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r6, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r1, [r0, #0x30]
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	bl sub_813A5C8
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _0814700C @ =0x08145B89
	mov r1, r8
	str r0, [r1, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0814700C: .4byte sub_8145B88
