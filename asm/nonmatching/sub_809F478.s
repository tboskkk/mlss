	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r2, #0x00]
	movs r1, #0xCC
	mov r8, r1
	mov r1, r8
	muls r1, r0
	movs r3, #0x9C
	lsls r3, r3, #0x0E
	adds r0, r1, r3
	cmp r0, #0x00
	bge _0809F4A8
	ldr r7, _0809F610 @ =0x002700FF
	adds r0, r1, r7
_0809F4A8:
	asrs r0, r0, #0x08
	str r0, [r2, #0x00]
	ldr r1, _0809F614 @ =0x08198584
	mov r10, r1
	cmp r0, #0x00
	bge _0809F4B6
	adds r0, #0xFF
_0809F4B6:
	asrs r0, r0, #0x08
	movs r6, #0xFF
	ands r0, r6
	lsls r0, r0, #0x01
	add r0, r10
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0809F4CA
	adds r0, #0x3F
_0809F4CA:
	asrs r0, r0, #0x06
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x05
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	ldr r7, _0809F618 @ =0x08198504
	mov r9, r7
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0809F4E4
	adds r0, #0xFF
_0809F4E4:
	asrs r0, r0, #0x08
	ands r0, r6
	lsls r0, r0, #0x01
	add r0, r9
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0809F4F6
	adds r0, #0x3F
_0809F4F6:
	asrs r0, r0, #0x06
	movs r2, #0xAF
	lsls r2, r2, #0x07
	mov r12, r2
	mov r3, r12
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0809F50A
	adds r0, #0xFF
_0809F50A:
	asrs r0, r0, #0x08
	ldr r1, [r5, #0x3C]
	subs r1, r1, r0
	str r1, [r4, #0x14]
	ldr r3, [r4, #0x30]
	adds r2, r3, #0x0
	adds r2, #0x84
	ldr r0, [r2, #0x00]
	mov r1, r8
	muls r1, r0
	movs r7, #0xD0
	lsls r7, r7, #0x0C
	adds r0, r1, r7
	cmp r0, #0x00
	bge _0809F52C
	adds r7, #0xFF
	adds r0, r1, r7
_0809F52C:
	asrs r0, r0, #0x08
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0809F536
	adds r0, #0xFF
_0809F536:
	asrs r0, r0, #0x08
	ands r0, r6
	lsls r0, r0, #0x01
	add r0, r10
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0809F548
	adds r0, #0x3F
_0809F548:
	asrs r0, r0, #0x06
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x05
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0809F55E
	adds r0, #0xFF
_0809F55E:
	asrs r0, r0, #0x08
	ands r0, r6
	lsls r0, r0, #0x01
	add r0, r9
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0809F570
	adds r0, #0x3F
_0809F570:
	asrs r0, r0, #0x06
	mov r7, r12
	muls r7, r0
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _0809F57E
	adds r0, #0xFF
_0809F57E:
	asrs r0, r0, #0x08
	ldr r1, [r5, #0x3C]
	subs r1, r1, r0
	str r1, [r3, #0x14]
	adds r0, r4, #0x0
	bl sub_80883F0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0809F594
	b _0809F6F0
_0809F594:
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	subs r0, #0x18
	str r0, [sp, #0x00C]
	ldr r3, _0809F61C @ =0x083B89A4
	mov r12, r3
	adds r5, r4, #0x0
	adds r5, #0xA8
	movs r7, #0x88
	adds r7, r7, r4
	mov r8, r7
	movs r0, #0xB2
	adds r0, r0, r4
	mov r9, r0
	movs r3, #0xB0
	adds r3, r3, r4
	mov r10, r3
	adds r7, r4, #0x0
	adds r7, #0xAE
	str r7, [sp, #0x008]
	cmp r1, #0x00
	ble _0809F5EC
	mov r7, r12
	mov r6, r12
_0809F5C8:
	adds r0, r2, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, #0x01
	subs r1, #0x01
	cmp r0, #0x00
	beq _0809F5E8
	adds r3, r6, #0x0
_0809F5DA:
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, #0x01
	cmp r0, #0x00
	bne _0809F5DA
_0809F5E8:
	cmp r1, #0x00
	bgt _0809F5C8
_0809F5EC:
	str r2, [r5, #0x00]
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	add r0, r12
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x02
	beq _0809F630
	cmp r0, #0x02
	bgt _0809F620
	cmp r0, #0x01
	beq _0809F62A
	b _0809F640
	.byte 0x00, 0x00
_0809F610: .4byte 0x002700FF
_0809F614: .4byte 0x08198584
_0809F618: .4byte 0x08198504
_0809F61C: .4byte 0x083B89A4
_0809F620:
	cmp r0, #0x03
	beq _0809F636
	cmp r0, #0x04
	beq _0809F63C
	b _0809F640
_0809F62A:
	movs r2, #0x00
	str r2, [sp, #0x000]
	b _0809F640
_0809F630:
	movs r3, #0x00
	str r3, [sp, #0x000]
	b _0809F640
_0809F636:
	movs r7, #0x50
	str r7, [sp, #0x000]
	b _0809F640
_0809F63C:
	movs r0, #0x50
	str r0, [sp, #0x000]
_0809F640:
	mov r1, sp
	ldrh r2, [r1, #0x00]
	mov r1, r9
	strh r2, [r1, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	add r0, r12
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x02
	beq _0809F672
	cmp r0, #0x02
	bgt _0809F662
	cmp r0, #0x01
	beq _0809F66C
	b _0809F682
_0809F662:
	cmp r0, #0x03
	beq _0809F678
	cmp r0, #0x04
	beq _0809F67E
	b _0809F682
_0809F66C:
	movs r3, #0x00
	str r3, [sp, #0x004]
	b _0809F682
_0809F672:
	movs r7, #0x50
	str r7, [sp, #0x004]
	b _0809F682
_0809F678:
	movs r0, #0x00
	str r0, [sp, #0x004]
	b _0809F682
_0809F67E:
	movs r1, #0x50
	str r1, [sp, #0x004]
_0809F682:
	ldr r0, [r4, #0x30]
	adds r0, #0xB2
	mov r2, sp
	ldrh r2, [r2, #0x04]
	strh r2, [r0, #0x00]
	ldr r0, [r5, #0x00]
	add r0, r12
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	mov r3, r10
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, #0x02
	str r0, [r5, #0x00]
	movs r7, #0x00
	ldsh r0, [r3, r7]
	cmp r0, #0x00
	bge _0809F6CC
	ldr r1, [sp, #0x00C]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bge _0809F6B4
	adds r0, #0xFF
_0809F6B4:
	asrs r0, r0, #0x08
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xC0
	cmp r0, #0xC0
	bhi _0809F6C6
	movs r2, #0x40
	negs r2, r2
	adds r1, r2, #0x0
_0809F6C6:
	ldr r3, [sp, #0x008]
	strh r1, [r3, #0x00]
	b _0809F6EC
_0809F6CC:
	ldr r7, [sp, #0x00C]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bge _0809F6D6
	adds r0, #0xFF
_0809F6D6:
	asrs r0, r0, #0x08
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xC0
	cmp r0, #0xBF
	bls _0809F6E8
	movs r0, #0xE0
	lsls r0, r0, #0x01
	adds r1, r0, #0x0
_0809F6E8:
	ldr r2, [sp, #0x008]
	strh r1, [r2, #0x00]
_0809F6EC:
	ldr r3, _0809F700 @ =0x0809F705
	str r3, [r4, #0x4C]
_0809F6F0:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809F700: .4byte sub_809F704
