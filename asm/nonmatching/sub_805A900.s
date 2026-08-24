	push {r4, r5, lr}
	ldr r4, _0805A944 @ =0x08A2711C
	ldr r3, _0805A948 @ =0x083AFC5C
	ldrh r2, [r0, #0x1E]
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x02
	adds r1, r1, r3
	ldrb r1, [r1, #0x01]
	ldr r2, _0805A94C @ =0x083AFEC0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	adds r4, r1, r4
	movs r2, #0x00
	ldr r3, [r0, #0x44]
	ldr r5, _0805A950 @ =0x000003FF
_0805A928:
	lsls r0, r2, #0x01
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	bls _0805A928
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805A944: .4byte 0x08A2711C
_0805A948: .4byte 0x083AFC5C
_0805A94C: .4byte 0x083AFEC0
_0805A950: .4byte 0x000003FF
