	.syntax unified
	.text

	thumb_func_start sub_80963E4
sub_80963E4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0809647C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08096474
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9F
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809643A
	ldr r2, _08096480 @ =0x00002052
	cmp r4, r5
	bne _08096420
	subs r2, #0x2F
_08096420:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0809643A:
	ldr r0, [r4, #0x2C]
	ldr r2, _08096484 @ =0x00002023
	cmp r4, r5
	bne _08096444
	adds r2, #0x2F
_08096444:
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x30]
	ldr r2, _08096488 @ =0x0000208C
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x30]
	ldr r0, _0809648C @ =0x08096555
	str r0, [r1, #0x4C]
	ldr r0, _08096490 @ =0x08096495
	str r0, [r4, #0x4C]
_08096474:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809647C: .4byte 0x03000FD8
_08096480: .4byte 0x00002052
_08096484: .4byte 0x00002023
_08096488: .4byte 0x0000208C
_0809648C: .4byte sub_8096554
_08096490: .4byte sub_8096494
