	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	asrs r5, r1, #0x08
	lsrs r0, r5, #0x03
	movs r2, #0x82
	lsls r2, r2, #0x04
	adds r1, r4, r2
	ldrh r1, [r1, #0x00]
	bl __umodsi3
	lsls r0, r0, #0x10
	ldr r1, _08160894 @ =0x0000080C
	adds r4, r4, r1
	ldr r1, [r4, #0x00]
	asrs r0, r0, #0x0E
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r0, sp
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x1C
	asrs r0, r0, #0x1C
	cmp r0, #0x06
	bls _08160888
	b _0816099A
_08160888:
	lsls r0, r0, #0x02
	ldr r1, _08160898 @ =lbl_0816089C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08160894: .4byte 0x0000080C
_08160898: .4byte lbl_0816089C
lbl_0816089C:
	.4byte _0816099A
	.4byte _081608B8
	.4byte _081608D8
	.4byte _081608FC
	.4byte _08160924
	.4byte _0816094C
	.4byte _08160972
_081608B8:
	mov r0, sp
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r1, r0, #3
	adds r0, r5, #0
	cmp r5, #0
	bge.n _081608CA
	adds r0, r5, #7
_081608CA:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r5, r0
	adds r0, r1, r0
	lsls r0, r0, #16
	asrs r0, r0, #16
	b.n _081609A4
_081608D8:
	mov r0, sp
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #3
	adds r1, r0, #0
	adds r1, #8
	adds r0, r5, #0
	cmp r5, #0
	bge.n _081608EE
	adds r0, r5, #7
_081608EE:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r5, r0
	subs r0, r1, r0
	lsls r0, r0, #16
	asrs r0, r0, #16
	b.n _081609A4
_081608FC:
	mov r0, sp
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r2, r0, #3
	adds r0, r5, #0
	cmp r5, #0
	bge.n _0816090E
	adds r0, r5, #7
_0816090E:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r5, r0
	lsrs r1, r0, #31
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, #8
	subs r0, r2, r0
	lsls r0, r0, #16
	asrs r0, r0, #16
	b.n _081609A4
_08160924:
	mov r0, sp
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #3
	adds r2, r0, #4
	adds r0, r5, #0
	cmp r5, #0
	bge.n _08160938
	adds r0, r5, #7
_08160938:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r5, r0
	lsrs r1, r0, #31
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, r2, r0
	lsls r0, r0, #16
	asrs r0, r0, #16
	b.n _081609A4
_0816094C:
	mov r0, sp
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r2, r0, #3
	adds r0, r5, #0
	cmp r5, #0
	bge.n _0816095E
	adds r0, r5, #7
_0816095E:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r5, r0
	lsrs r1, r0, #31
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r2, r0
	lsls r0, r0, #16
	asrs r0, r0, #16
	b.n _081609A4
_08160972:
	mov r0, sp
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r2, r0, #3
	adds r0, r5, #0
	cmp r5, #0
	bge.n _08160984
	adds r0, r5, #7
_08160984:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r5, r0
	lsrs r1, r0, #31
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, #4
	adds r0, r2, r0
	lsls r0, r0, #16
	asrs r0, r0, #16
	b.n _081609A4
_0816099A:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x03
_081609A4:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
