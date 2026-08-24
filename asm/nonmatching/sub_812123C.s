	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r4, r0, #0x0
	ldr r1, _081212F0 @ =0x08202F4C
	add r0, sp, #0x010
	movs r2, #0x0A
	bl memcpy
	ldr r7, [r4, #0x14]
	ldr r4, _081212F4 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	ldrb r0, [r7, #0x00]
	cmp r0, #0x04
	bhi _0812126A
	b _08121818
_0812126A:
	movs r2, #0xAA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812127C
	adds r0, r7, #0x0
	bl sub_811E7E4
_0812127C:
	movs r3, #0xA9
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812128E
	adds r0, r7, #0x0
	bl sub_811EE20
_0812128E:
	ldr r1, _081212F8 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0812129E
	b _08121806
_0812129E:
	adds r1, r7, #0x0
	adds r1, #0x88
	ldr r0, [r1, #0x00]
	ldrb r0, [r0, #0x0C]
	str r1, [sp, #0x01C]
	cmp r0, #0x01
	bne _08121300
	ldr r2, [r7, #0x30]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _081212BE
	adds r0, r2, #0x0
	bl sprite_hide_8021F20
_081212BE:
	ldr r0, [r7, #0x44]
	bl sprite_hide_8021F20
	ldr r0, [r7, #0x48]
	bl sprite_hide_8021F20
	ldr r2, [r7, #0x34]
	ldr r3, _081212FC @ =0x0000014B
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	ldrh r0, [r2, #0x02]
	subs r0, r0, r1
	strh r0, [r2, #0x02]
	movs r1, #0xA6
	lsls r1, r1, #0x01
	adds r0, r7, r1
	movs r2, #0x00
	ldsb r2, [r0, r2]
	ldr r1, [r7, #0x34]
	movs r3, #0x02
	ldsh r0, [r1, r3]
	cmp r2, r0
	ble _08121338
	b _08121336
	.byte 0x00, 0x00
_081212F0: .4byte 0x08202F4C
_081212F4: .4byte 0x0300034C
_081212F8: .4byte 0x00000888
_081212FC: .4byte 0x0000014B
_08121300:
	cmp r0, #0x03
	bne _08121338
	ldr r0, [r7, #0x30]
	bl sprite_hide_8021F20
	ldr r0, [r7, #0x44]
	bl sprite_hide_8021F20
	ldr r0, [r7, #0x48]
	bl sprite_hide_8021F20
	ldr r1, [r7, #0x34]
	ldr r0, _0812135C @ =0x0000014B
	adds r2, r7, r0
	ldrh r0, [r1, #0x02]
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x02]
	movs r1, #0xA5
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	ldr r1, [r7, #0x34]
	movs r3, #0x02
	ldsh r0, [r1, r3]
	cmp r2, r0
	bge _08121338
_08121336:
	strh r2, [r1, #0x02]
_08121338:
	movs r1, #0xAA
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08121346
	b _0812161A
_08121346:
	ldr r2, _08121360 @ =0x0000014F
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x04
	bls _08121352
	b _0812161A
_08121352:
	lsls r0, r0, #0x02
	ldr r1, _08121364 @ =lbl_08121368
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0812135C: .4byte 0x0000014B
_08121360: .4byte 0x0000014F
_08121364: .4byte lbl_08121368
lbl_08121368:
	.4byte _08121570
	.4byte _0812137C
	.4byte _081213DC
	.4byte _08121474
	.4byte _08121492
_0812137C:
	ldr r1, [r7, #48] @ 0x30
	movs r0, #78 @ 0x4e
	strh r0, [r1, #0]
	ldr r3, [r7, #48] @ 0x30
	movs r0, #202 @ 0xca
	lsls r0, r0, #1
	adds r2, r7, r0
	movs r1, #199 @ 0xc7
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r1, [r2, #0]
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	movs r0, #11
	muls r0, r1
	adds r0, #12
	strh r0, [r3, #2]
	ldr r3, [pc, #56] @ (0x81213d8)
	adds r0, r7, r3
	ldrb r2, [r2, #0]
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq.n _081213B2
	ldr r0, [r7, #48] @ 0x30
	bl sprite_show_8020CBC
_081213B2:
	ldr r1, [r7, #68] @ 0x44
	movs r0, #132 @ 0x84
	strh r0, [r1, #0]
	ldr r1, [r7, #72] @ 0x48
	movs r0, #20
	strh r0, [r1, #0]
	ldr r0, [r7, #68] @ 0x44
	movs r1, #124 @ 0x7c
	strh r1, [r0, #2]
	ldr r0, [r7, #72] @ 0x48
	strh r1, [r0, #2]
	ldr r0, [r7, #68] @ 0x44
	bl sprite_show_8020CBC
	ldr r0, [r7, #72] @ 0x48
	bl sprite_show_8020CBC
	b.n _0812161A
	movs r0, r0
	lsls r1, r2, #6
	movs r0, r0
_081213DC:
	ldr r0, [r7, #60] @ 0x3c
	ldr r2, [pc, #136] @ (0x8121468)
	adds r1, r7, r2
	ldrb r1, [r1, #0]
	adds r1, #1
	movs r2, #0
	str r2, [sp, #0]
	movs r3, #0
	bl sub_801E150
	ldr r0, [r7, #60] @ 0x3c
	bl sprite_show_8020CBC
	ldr r1, [r7, #48] @ 0x30
	movs r0, #104 @ 0x68
	strh r0, [r1, #0]
	ldr r3, [pc, #108] @ (0x812146c)
	mov r8, r3
	ldr r0, [r3, #0]
	movs r6, #227 @ 0xe3
	lsls r6, r6, #2
	adds r0, r0, r6
	ldr r1, [pc, #100] @ (0x8121470)
	mov r9, r1
	movs r1, #0
	mov r2, r9
	bl sub_80E98C0
	adds r5, r0, #0
	mov r2, r8
	ldr r0, [r2, #0]
	adds r0, r0, r6
	movs r2, #136 @ 0x88
	lsls r2, r2, #2
	movs r1, #0
	bl sub_80E98C0
	adds r4, r0, #0
	mov r3, r8
	ldr r0, [r3, #0]
	adds r0, r0, r6
	movs r1, #0
	mov r2, r9
	bl sub_80E98C0
	ldr r6, [r7, #48] @ 0x30
	lsls r5, r5, #24
	lsrs r5, r5, #21
	movs r2, #44 @ 0x2c
	subs r2, r2, r5
	lsls r4, r4, #24
	lsrs r4, r4, #20
	subs r2, r2, r4
	movs r3, #207 @ 0xcf
	lsls r3, r3, #1
	adds r1, r7, r3
	ldrb r3, [r1, #0]
	lsls r0, r0, #24
	lsrs r0, r0, #21
	movs r1, #32
	subs r1, r1, r0
	adds r0, r3, #0
	muls r0, r1
	adds r2, r2, r0
	strh r2, [r6, #2]
	ldr r0, [r7, #48] @ 0x30
	bl sprite_show_8020CBC
	b.n _0812161A
	movs r0, r0
	lsls r7, r3, #6
	movs r0, r0
	lsrs r0, r0, #31
	lsls r0, r0, #12
	lsls r2, r4, #8
	movs r0, r0
_08121474:
	ldr r0, [r7, #60] @ 0x3c
	movs r2, #222 @ 0xde
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrb r1, [r1, #0]
	adds r1, #1
	movs r2, #0
	str r2, [sp, #0]
	movs r3, #0
	bl sub_801E150
	ldr r0, [r7, #60] @ 0x3c
	bl sprite_show_8020CBC
	b.n _0812161A
_08121492:
	adds r4, r7, #0
	adds r4, #104 @ 0x68
	ldr r0, [r7, #76] @ 0x4c
	cmp r0, #0
	beq.n _081214A0
	bl sprite_show_8020CBC
_081214A0:
	movs r5, #0
	ldr r0, [r7, #80] @ 0x50
	cmp r0, #0
	beq.n _081214AC
	bl sprite_show_8020CBC
_081214AC:
	subs r5, #1
	ldr r0, [r7, #84] @ 0x54
	cmp r0, #0
	beq.n _081214B8
	bl sprite_show_8020CBC
_081214B8:
	ldr r0, [r7, #88] @ 0x58
	cmp r0, #0
	beq.n _081214C2
	bl sprite_show_8020CBC
_081214C2:
	ldr r0, [r7, #92] @ 0x5c
	cmp r0, #0
	beq.n _081214CC
	bl sprite_show_8020CBC
_081214CC:
	movs r6, #0
	ldr r0, [r7, #96] @ 0x60
	cmp r0, #0
	beq.n _081214D8
	bl sprite_show_8020CBC
_081214D8:
	ldr r0, [r7, #100] @ 0x64
	cmp r0, #0
	beq.n _081214E2
	bl sprite_show_8020CBC
_081214E2:
	ldr r0, [r7, #104] @ 0x68
	cmp r0, #0
	beq.n _081214EC
	bl sprite_show_8020CBC
_081214EC:
	ldr r0, [r7, #108] @ 0x6c
	cmp r0, #0
	beq.n _081214F6
	bl sprite_show_8020CBC
_081214F6:
	ldr r0, [r7, #112] @ 0x70
	cmp r0, #0
	beq.n _08121500
	bl sprite_show_8020CBC
_08121500:
	ldr r0, [r4, #12]
	cmp r0, #0
	beq.n _0812150A
	bl sprite_show_8020CBC
_0812150A:
	ldr r0, [r4, #16]
	cmp r0, #0
	beq.n _08121514
	bl sprite_show_8020CBC
_08121514:
	ldr r0, [r4, #20]
	cmp r0, #0
	beq.n _0812151E
	bl sprite_show_8020CBC
_0812151E:
	ldr r0, [r4, #24]
	cmp r0, #0
	beq.n _08121528
	bl sprite_show_8020CBC
_08121528:
	adds r4, r5, #0
	movs r3, #223 @ 0xdf
	lsls r3, r3, #1
	adds r5, r7, r3
	ldrb r0, [r5, #0]
	cmp r0, #255 @ 0xff
	beq.n _0812161A
	ldr r0, [r7, #48] @ 0x30
	ldr r2, [pc, #48] @ (0x812156c)
	str r4, [sp, #0]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #12]
	movs r1, #7
	movs r3, #1
	bl sub_80210A8
	ldr r0, [r7, #48] @ 0x30
	ldrb r1, [r5, #0]
	str r6, [sp, #0]
	adds r2, r4, #0
	movs r3, #0
	bl sub_801E150
	ldr r0, [r7, #48] @ 0x30
	bl sprite_show_8020CBC
	ldr r1, [r7, #48] @ 0x30
	movs r0, #218 @ 0xda
	strh r0, [r1, #0]
	ldr r1, [r7, #48] @ 0x30
	movs r0, #10
	strh r0, [r1, #2]
	b.n _0812161A
	strh r3, [r6, #6]
	movs r0, r0
_08121570:
	ldr r1, [r7, #48] @ 0x30
	ldrh r0, [r1, #22]
	cmp r0, #243 @ 0xf3
	bne.n _0812159E
	movs r2, #223 @ 0xdf
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrb r0, [r0, #0]
	cmp r0, #255 @ 0xff
	beq.n _0812159E
	movs r2, #192 @ 0xc0
	lsls r2, r2, #7
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #12]
	adds r0, r1, #0
	movs r1, #5
	movs r3, #1
	bl sub_80210A8
_0812159E:
	ldr r0, [r7, #48] @ 0x30
	movs r2, #1
	negs r2, r2
	movs r1, #0
	str r1, [sp, #0]
	movs r3, #0
	bl sub_801E150
	ldr r1, [r7, #48] @ 0x30
	movs r0, #24
	strh r0, [r1, #0]
	ldr r2, [r7, #48] @ 0x30
	ldr r3, [pc, #316] @ (0x81216f4)
	adds r0, r7, r3
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #70 @ 0x46
	adds r3, #1
	adds r0, r7, r3
	ldrb r0, [r0, #0]
	lsls r0, r0, #3
	subs r1, r1, r0
	strh r1, [r2, #2]
	ldr r0, [r7, #48] @ 0x30
	bl sprite_show_8020CBC
	ldr r2, [r7, #48] @ 0x30
	ldrb r1, [r2, #18]
	movs r4, #17
	negs r4, r4
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #18]
	ldr r2, [r7, #48] @ 0x30
	ldrb r1, [r2, #18]
	movs r0, #7
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #18]
	ldr r1, [r7, #68] @ 0x44
	movs r0, #204 @ 0xcc
	strh r0, [r1, #0]
	ldr r1, [r7, #72] @ 0x48
	movs r0, #108 @ 0x6c
	strh r0, [r1, #0]
	ldr r0, [r7, #68] @ 0x44
	movs r1, #80 @ 0x50
	strh r1, [r0, #2]
	ldr r0, [r7, #72] @ 0x48
	strh r1, [r0, #2]
	ldr r0, [r7, #68] @ 0x44
	bl sprite_show_8020CBC
	ldr r0, [r7, #72] @ 0x48
	bl sprite_show_8020CBC
	ldr r1, [r7, #52] @ 0x34
	ldrb r0, [r1, #18]
	ands r4, r0
	strb r4, [r1, #18]
_0812161A:
	ldr r1, _081216F8 @ =0x0000014F
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08121680
	ldr r2, [sp, #0x01C]
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x0C]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08121680
	movs r3, #0xC4
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08121680
	ldr r0, _081216FC @ =0x03000FF4
	mov r8, r0
	ldr r0, [r0, #0x00]
	adds r0, #0x30
	ldrb r1, [r0, #0x00]
	movs r6, #0x38
	str r6, [sp, #0x000]
	movs r5, #0x02
	str r5, [sp, #0x004]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r0, #0x08
	mov r2, r10
	movs r3, #0xA8
	bl sub_8121B5C
	adds r2, r0, #0x0
	mov r1, r8
	ldr r0, [r1, #0x00]
	adds r0, #0x6C
	ldrb r1, [r0, #0x00]
	str r6, [sp, #0x000]
	str r5, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r0, #0x08
	movs r3, #0x48
	bl sub_8121B5C
	adds r2, r0, #0x0
	mov r10, r2
_08121680:
	ldr r2, _081216F8 @ =0x0000014F
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	cmp r1, #0x01
	bne _081216A0
	ldr r3, [sp, #0x01C]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x0C]
	ands r0, r1
	cmp r0, #0x00
	bne _081216A0
	adds r0, r7, #0x0
	mov r1, r10
	bl sub_811D37C
	mov r10, r0
_081216A0:
	ldr r1, _081216F8 @ =0x0000014F
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x04
	bne _081216C2
	ldr r2, [sp, #0x01C]
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x0C]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _081216C2
	adds r0, r7, #0x0
	mov r1, r10
	bl sub_811E414
	mov r10, r0
_081216C2:
	ldr r3, _08121700 @ =0x00000151
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0812176C
	movs r4, #0x00
_081216CE:
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	lsls r0, r4, #0x06
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0812170A
	adds r0, #0x3C
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08121704
	adds r0, r2, #0x0
	bl sprite_show_8020CBC
	b _0812170A
	.byte 0x89, 0x01, 0x00, 0x00
_081216F8: .4byte 0x0000014F
_081216FC: .4byte 0x03000FF4
_08121700: .4byte 0x00000151
_08121704:
	adds r0, r2, #0x0
	bl sprite_hide_8021F20
_0812170A:
	adds r0, r4, #0x1
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x06
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08121738
	adds r0, #0x3C
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08121732
	adds r0, r2, #0x0
	bl sprite_show_8020CBC
	b _08121738
_08121732:
	adds r0, r2, #0x0
	bl sprite_hide_8021F20
_08121738:
	adds r0, r4, #0x2
	movs r3, #0xAC
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x06
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08121766
	adds r0, #0x3C
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08121760
	adds r0, r2, #0x0
	bl sprite_show_8020CBC
	b _08121766
_08121760:
	adds r0, r2, #0x0
	bl sprite_hide_8021F20
_08121766:
	adds r4, #0x03
	cmp r4, #0x0B
	ble _081216CE
_0812176C:
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _081217B4 @ =0x03000D48
	ldr r4, _081217B8 @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _081217BC @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _081217C0 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	mov r1, r10
	bl _call_via_r2
	mov r10, r0
	ldr r1, [sp, #0x01C]
	ldr r0, [r1, #0x00]
	ldrb r0, [r0, #0x0C]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _081217FA
	ldr r2, _081217C4 @ =0x0000014F
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _081217DC
	cmp r0, #0x01
	bgt _081217C8
	cmp r0, #0x00
	beq _081217D2
	b _081217FA
_081217B4: .4byte 0x03000D48
_081217B8: .4byte 0x0203FFB8
_081217BC: .4byte 0x00000A14
_081217C0: .4byte 0x03000D4C
_081217C4: .4byte 0x0000014F
_081217C8:
	cmp r0, #0x02
	beq _081217E6
	cmp r0, #0x03
	beq _081217F0
	b _081217FA
_081217D2:
	adds r0, r7, #0x0
	mov r1, r10
	bl sub_811C71C
	b _081217F8
_081217DC:
	adds r0, r7, #0x0
	mov r1, r10
	bl sub_811CCD0
	b _081217F8
_081217E6:
	adds r0, r7, #0x0
	mov r1, r10
	bl sub_811D4F8
	b _081217F8
_081217F0:
	adds r0, r7, #0x0
	mov r1, r10
	bl sub_811DE10
_081217F8:
	mov r10, r0
_081217FA:
	ldr r0, _08121828 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r0, r0, r3
	mov r1, r10
	str r1, [r0, #0x00]
_08121806:
	movs r2, #0xC4
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08121818
	adds r0, r7, #0x0
	bl sub_8120B80
_08121818:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08121828: .4byte 0x0300034C
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x8A, 0x46, 0x91, 0x46, 0x08, 0x9D
	.byte 0x09, 0x98, 0x80, 0x46, 0x0A, 0x98, 0x0B, 0x99, 0x00, 0x04, 0x06, 0x0C, 0x09, 0x06, 0x0F, 0x0E
	.byte 0x49, 0x46, 0xC9, 0x10, 0x89, 0x46, 0xDB, 0x10, 0x4D, 0x44, 0x98, 0x44, 0x1B, 0x04, 0x19, 0x0C
	.byte 0x41, 0x45, 0x20, 0xDA, 0x4A, 0x46, 0x10, 0x04, 0x03, 0x0C, 0x48, 0x1C, 0x84, 0x46, 0xAB, 0x42
	.byte 0x14, 0xDA, 0x88, 0x01, 0x51, 0x46, 0x44, 0x18, 0x00, 0x2F, 0x03, 0xD1, 0x58, 0x00, 0x00, 0x19
	.byte 0x07, 0x80, 0x06, 0xE0, 0x5A, 0x00, 0x12, 0x19, 0x31, 0x1C, 0x48, 0x1C, 0x00, 0x04, 0x06, 0x0C
	.byte 0x11, 0x80, 0x58, 0x1C, 0x00, 0x04, 0x03, 0x0C, 0xAB, 0x42, 0xED, 0xDB, 0x62, 0x46, 0x10, 0x04
	.byte 0x01, 0x0C, 0x41, 0x45, 0xDE, 0xDB, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x08, 0x1C, 0x04, 0x49, 0x0A, 0x88, 0x0C, 0x21, 0x11, 0x40, 0x09, 0x03
	.byte 0x40, 0x1A, 0x40, 0x04, 0x80, 0x0D, 0x70, 0x47, 0x08, 0x00, 0x00, 0x02
