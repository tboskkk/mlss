	.syntax unified
	.text

	thumb_func_start sub_814BE1C
sub_814BE1C:
	push {r4, r5, lr}
	mov r12, r1
	movs r4, #0xB1
	lsls r4, r4, #0x02
	add r4, r12
	ldr r1, [r1, #0x14]
	mov r5, r12
	ldr r3, [r5, #0x18]
	adds r1, r1, r3
	str r1, [r4, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0814BE84 @ =0x0814BFCD
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814BE84: .4byte sub_814BFCC
