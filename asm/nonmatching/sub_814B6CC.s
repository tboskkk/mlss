	.syntax unified
	.text

	thumb_func_start sub_814B6CC
sub_814B6CC:
	push {r4, r5, lr}
	mov r12, r1
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r4, [r0, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	movs r0, #0xF2
	lsls r0, r0, #0x01
	add r0, r12
	movs r1, #0xF4
	lsls r1, r1, #0x01
	add r1, r12
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	adds r0, #0x44
	ldrh r1, [r0, #0x00]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	add r1, r12
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _0814B72C @ =0x0814A429
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814B72C: .4byte sub_814A428
