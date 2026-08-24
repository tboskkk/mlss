	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	bl sub_8087CE4
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	bl sub_8087CE4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	negs r4, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r0, r0
	orrs r0, r4
	cmp r0, #0x00
	blt _0809FC3E
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r0, [r5, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	bl sub_807C298
	ldr r0, [r5, #0x28]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	movs r1, #0x18
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _0809FC1C
	adds r1, #0xFF
_0809FC1C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _0809FC26
	adds r2, #0xFF
_0809FC26:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _0809FC30
	adds r3, #0xFF
_0809FC30:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809FC48 @ =0x00002AB7
	bl sub_80DF024
	ldr r0, _0809FC4C @ =0x080A07B1
	str r0, [r5, #0x4C]
_0809FC3E:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809FC48: .4byte 0x00002AB7
_0809FC4C: .4byte sub_80A07B0
