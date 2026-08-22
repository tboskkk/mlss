	.syntax unified
	.text

	thumb_func_start sub_8118FEC
sub_8118FEC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	movs r0, #0xAB
	lsls r0, r0, #0x01
	adds r4, r6, r0
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08119080
	ldr r2, [r6, #0x20]
	ldrh r0, [r2, #0x34]
	adds r1, r2, #0x0
	adds r1, #0x4A
	ldrh r1, [r1, #0x00]
	subs r0, r0, r1
	cmp r0, #0x05
	bne _0811901C
	adds r0, r2, #0x0
	bl sub_8116610
	movs r0, #0x02
	strb r0, [r4, #0x00]
_0811901C:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x02
	bne _08119040
	ldr r1, _0811903C @ =0x0000014F
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x04
	bls _0811902E
	b _081191E6
_0811902E:
	ldr r0, [r6, #0x20]
	movs r1, #0x01
	bl sub_81165CC
	movs r0, #0x03
	strb r0, [r4, #0x00]
	b _081191E6
_0811903C: .4byte 0x0000014F
_08119040:
	cmp r0, #0x03
	beq _08119046
	b _081191E6
_08119046:
	ldr r0, [r6, #0x20]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	beq _08119056
	b _081191E6
_08119056:
	strb r0, [r4, #0x00]
	ldr r2, _0811907C @ =0x0000014F
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _08119064
	b _081191E6
_08119064:
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r0, r6, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _08119072
	b _081191E6
_08119072:
	ldr r0, [r6, #0x40]
	bl sprite_show_8020CBC
	b _081191E6
	.byte 0x00, 0x00
_0811907C: .4byte 0x0000014F
_08119080:
	ldr r1, _081190A0 @ =0x00000151
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _081190A4
	ldr r0, [r6, #0x24]
	bl sub_80FAEEC
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081190A4
	ldr r0, [r6, #0x24]
	bl sub_80FAF28
	movs r0, #0x02
	b _081191E8
_081190A0: .4byte 0x00000151
_081190A4:
	ldr r2, _081190BC @ =0x0000014F
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x04
	bls _081190B0
	b _081191E6
_081190B0:
	lsls r0, r0, #0x02
	ldr r1, _081190C0 @ =lbl_081190C4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_081190BC: .4byte 0x0000014F
_081190C0: .4byte lbl_081190C4
lbl_081190C4:
	.4byte _081190D8
	.4byte _081190EC
	.4byte _081190F4
	.4byte _081191D8
	.4byte _081191E0
_081190D8:
	adds r0, r6, #0
	bl sub_81191F4
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #2
	beq.n _081190E8
	b.n _081191E6
_081190E8:
	movs r0, #2
	b.n _081191E8
_081190EC:
	adds r0, r6, #0
	bl sub_8119C38
	b.n _081191E6
_081190F4:
	movs r3, #211 @ 0xd3
	lsls r3, r3, #1
	adds r3, r3, r6
	mov r8, r3
	ldrb r7, [r3, #0]
	cmp r7, #1
	bne.n _081191B4
	ldr r0, [r6, #44] @ 0x2c
	movs r2, #212 @ 0xd4
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r3, #214 @ 0xd6
	lsls r3, r3, #1
	adds r2, r6, r3
	bl sub_801B1C8
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #0
	bne.n _081191E6
	adds r0, r6, #0
	adds r0, #222 @ 0xde
	str r0, [sp, #4]
	movs r2, #134 @ 0x86
	lsls r2, r2, #1
	adds r0, r6, r2
	str r0, [sp, #8]
	movs r3, #156 @ 0x9c
	lsls r3, r3, #1
	adds r0, r6, r3
	str r0, [sp, #12]
	adds r4, r6, #0
	adds r4, #132 @ 0x84
	ldr r0, [r4, #0]
	movs r5, #1
	negs r5, r5
	str r1, [sp, #0]
	movs r1, #6
	adds r2, r5, #0
	movs r3, #0
	bl sub_801E150
	ldr r0, [r4, #0]
	bl sprite_show_8020CBC
	ldr r2, [r4, #0]
	ldrb r1, [r2, #18]
	movs r0, #7
	negs r0, r0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #18]
	movs r1, #207 @ 0xcf
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r1, [r0, #0]
	movs r0, #127 @ 0x7f
	ands r0, r1
	lsls r1, r0, #2
	mov r3, sp
	adds r3, r3, r1
	adds r3, #4
	movs r2, #210 @ 0xd2
	lsls r2, r2, #1
	adds r1, r6, r2
	ldrb r2, [r1, #0]
	ldr r1, [r3, #0]
	adds r1, r1, r2
	ldrb r1, [r1, #0]
	ldr r3, [pc, #40] @ (0x81191ac)
	adds r2, r6, r3
	ldrb r2, [r2, #0]
	movs r3, #0
	bl sub_8117778
	movs r0, #2
	mov r1, r8
	strb r0, [r1, #0]
	movs r2, #169 @ 0xa9
	lsls r2, r2, #1
	adds r0, r6, r2
	strb r7, [r0, #0]
	ldr r3, [pc, #20] @ (0x81191b0)
	adds r0, r6, r3
	strb r7, [r0, #0]
	movs r0, #103 @ 0x67
	adds r1, r5, #0
	bl play_sfx_80195B4
	b.n _081191E6
	movs r0, r0
	lsls r7, r3, #6
	movs r0, r0
	lsls r3, r2, #5
	movs r0, r0
_081191B4:
	cmp r7, #2
	bne.n _081191D0
	adds r0, r6, #0
	adds r0, #132 @ 0x84
	ldr r0, [r0, #0]
	ldrb r1, [r0, #18]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq.n _081191E6
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #0]
	b.n _081191E6
_081191D0:
	adds r0, r6, #0
	bl sub_811AB8C
	b.n _081191E6
_081191D8:
	adds r0, r6, #0
	bl sub_811B478
	b.n _081191E6
_081191E0:
	adds r0, r6, #0
	bl sub_811B798
_081191E6:
	movs r0, #0x00
_081191E8:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
