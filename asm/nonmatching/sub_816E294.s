	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x078
	str r0, [sp, #0x010]
	mov r8, r1
	movs r0, #0x00
	str r0, [sp, #0x020]
	movs r1, #0x00
	str r1, [sp, #0x01C]
	movs r2, #0x00
	str r2, [sp, #0x018]
	movs r7, #0x00
	ldr r3, [sp, #0x010]
	adds r3, #0x08
	str r3, [sp, #0x048]
	ldr r4, [sp, #0x010]
	adds r4, #0xE8
	str r4, [sp, #0x034]
	ldr r5, [sp, #0x010]
	adds r5, #0xE0
	str r5, [sp, #0x030]
_0816E2C4:
	lsls r6, r7, #0x01
	adds r0, r7, #0x1
	str r0, [sp, #0x040]
	adds r0, r6, r7
	lsls r0, r0, #0x03
	ldr r1, [sp, #0x048]
	adds r4, r0, r1
	adds r5, r4, #0x0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0816E2DE
	bl sub_8161E38
_0816E2DE:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0816E2E8
	bl sub_8161E38
_0816E2E8:
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	beq _0816E2F2
	bl sub_8161E38
_0816E2F2:
	ldr r0, [r5, #0x0C]
	cmp r0, #0x00
	beq _0816E2FC
	bl sub_8161E38
_0816E2FC:
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	beq _0816E306
	bl sub_8161E38
_0816E306:
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	beq _0816E310
	bl sub_8161E38
_0816E310:
	ldr r7, [sp, #0x040]
	cmp r7, #0x05
	ble _0816E2C4
	ldr r2, [sp, #0x034]
	ldrh r1, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x00
	beq _0816E3D0
	movs r7, #0x00
	movs r5, #0x00
_0816E32C:
	lsls r6, r7, #0x01
	adds r3, r7, #0x1
	str r3, [sp, #0x040]
	adds r0, r6, r7
	lsls r0, r0, #0x03
	ldr r6, [sp, #0x048]
	adds r4, r0, r6
	movs r7, #0x05
	str r7, [sp, #0x014]
_0816E33E:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0816E35E
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816E35C
	ldr r1, [r4, #0x00]
	mov r0, r8
	bl sub_8163C40
	movs r0, #0x00
	str r0, [r4, #0x00]
	b _0816E35E
_0816E35C:
	adds r5, #0x01
_0816E35E:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0816E37E
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816E37C
	ldr r1, [r4, #0x04]
	mov r0, r8
	bl sub_8163C40
	movs r0, #0x00
	str r0, [r4, #0x04]
	b _0816E37E
_0816E37C:
	adds r5, #0x01
_0816E37E:
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	beq _0816E39E
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816E39C
	ldr r1, [r4, #0x08]
	mov r0, r8
	bl sub_8163C40
	movs r0, #0x00
	str r0, [r4, #0x08]
	b _0816E39E
_0816E39C:
	adds r5, #0x01
_0816E39E:
	adds r4, #0x0C
	ldr r0, [sp, #0x014]
	subs r0, #0x03
	str r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0816E33E
	ldr r7, [sp, #0x040]
	cmp r7, #0x05
	ble _0816E32C
	cmp r5, #0x00
	beq _0816E3B8
	bl _0816ED98
_0816E3B8:
	ldr r0, [sp, #0x010]
	adds r0, #0xC0
	str r5, [r0, #0x00]
	ldr r2, [sp, #0x034]
	ldrh r1, [r2, #0x00]
	ldr r0, _0816E3CC @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
	bl _0816ED98
_0816E3CC:
	.2byte 0xFBFF @ bl lr+2046
	lsls r0, r0, #0x00
_0816E3D0:
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0816E3DC
	b _0816E658
_0816E3DC:
	ldr r0, [sp, #0x010]
	adds r0, #0xC4
	ldr r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x05
	ble _0816E3EA
	b _0816E558
_0816E3EA:
	ldr r1, [sp, #0x010]
	adds r1, #0xC0
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	str r1, [sp, #0x02C]
	cmp r0, #0x0F
	bgt _0816E3FC
	b _0816E558
_0816E3FC:
	mov r3, r10
	ldr r7, [r3, #0x00]
	ldr r2, [sp, #0x010]
	adds r2, #0xC8
	ldr r4, [r2, #0x00]
	str r4, [sp, #0x014]
	lsls r0, r7, #0x01
	adds r0, r0, r7
	lsls r0, r0, #0x01
	adds r0, r4, r0
	ldr r1, [sp, #0x010]
	adds r1, #0xEC
	adds r1, r1, r0
	mov r9, r1
	ldrb r0, [r1, #0x00]
	adds r6, r2, #0x0
	cmp r0, #0x00
	bne _0816E422
	b _0816E534
_0816E422:
	ldr r2, _0816E4B8 @ =0x08218ED0
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x00
	bl sub_8161C28
	adds r4, r0, #0x0
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r2, _0816E4BC @ =0x00005009
	str r5, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8163ADC
	movs r1, #0xC8
	lsls r1, r1, #0x08
	movs r3, #0xD0
	lsls r3, r3, #0x06
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8163A64
	ldr r0, [sp, #0x014]
	lsls r1, r0, #0x0C
	movs r2, #0x8C
	lsls r2, r2, #0x07
	adds r1, r1, r2
	lsls r3, r7, #0x0C
	movs r0, #0xE8
	lsls r0, r0, #0x06
	adds r3, r3, r0
	movs r0, #0x20
	negs r0, r0
	str r0, [sp, #0x000]
	movs r0, #0x20
	str r0, [sp, #0x004]
	add r0, sp, #0x008
	strb r5, [r0, #0x00]
	add r0, sp, #0x00C
	strb r5, [r0, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_816393C
	movs r0, #0x05
	ldr r1, [sp, #0x014]
	subs r0, r0, r1
	adds r1, r4, #0x0
	adds r1, #0x50
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x01
	strh r0, [r1, #0x00]
	mov r2, r9
	ldrb r0, [r2, #0x00]
	cmp r0, #0x00
	beq _0816E4FC
	subs r2, r0, #0x1
	cmp r2, #0x04
	bhi _0816E4EC
	lsls r0, r2, #0x02
	ldr r1, _0816E4C0 @ =lbl_0816E4C4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0816E4B8: .4byte 0x08218ED0
_0816E4BC: .4byte 0x00005009
_0816E4C0: .4byte lbl_0816E4C4
lbl_0816E4C4:
	.4byte _0816E4D8
	.4byte _0816E4DC
	.4byte _0816E4E0
	.4byte _0816E4E4
	.4byte _0816E4E8
_0816E4D8:
	movs r0, #4
	b.n _0816E4EA
_0816E4DC:
	movs r0, #5
	b.n _0816E4EA
_0816E4E0:
	movs r0, #6
	b.n _0816E4EA
_0816E4E4:
	movs r0, #7
	b.n _0816E4EA
_0816E4E8:
	movs r0, #8
_0816E4EA:
	str r0, [r4, #0]
_0816E4EC:
	ldr r0, [r4, #0x10]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_0816E4FC:
	ldr r3, [sp, #0x014]
	lsls r1, r3, #0x02
	lsls r0, r7, #0x01
	adds r0, r0, r7
	lsls r0, r0, #0x03
	adds r1, r1, r0
	ldr r5, [sp, #0x048]
	adds r1, r5, r1
	str r4, [r1, #0x00]
	ldr r7, [sp, #0x010]
	ldr r0, [r7, #0x00]
	ldr r0, [r0, #0x10]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x00]
	ldr r2, [r0, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0816E534:
	ldr r0, [r6, #0x00]
	adds r0, #0x01
	str r0, [r6, #0x00]
	cmp r0, #0x05
	ble _0816E558
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	movs r1, #0x00
	ldr r0, [sp, #0x02C]
	str r1, [r0, #0x00]
	mov r2, r10
	ldr r0, [r2, #0x00]
	adds r0, #0x01
	str r0, [r2, #0x00]
	str r1, [r6, #0x00]
_0816E558:
	movs r5, #0x00
	movs r7, #0x00
_0816E55C:
	lsls r6, r7, #0x01
	adds r3, r7, #0x1
	str r3, [sp, #0x040]
	adds r0, r6, r7
	lsls r0, r0, #0x03
	ldr r6, [sp, #0x048]
	adds r4, r0, r6
	movs r7, #0x05
	str r7, [sp, #0x014]
_0816E56E:
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _0816E5A2
	adds r0, r1, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0816E5A2
	adds r0, r1, #0x0
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816E5A0
	ldr r0, [r4, #0x00]
	adds r0, #0x52
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x10]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x1F]
	b _0816E5A2
_0816E5A0:
	adds r5, #0x01
_0816E5A2:
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0816E5D6
	adds r0, r1, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0816E5D6
	adds r0, r1, #0x0
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816E5D4
	ldr r0, [r4, #0x04]
	adds r0, #0x52
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x04]
	ldr r2, [r0, #0x10]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x1F]
	b _0816E5D6
_0816E5D4:
	adds r5, #0x01
_0816E5D6:
	ldr r1, [r4, #0x08]
	cmp r1, #0x00
	beq _0816E60A
	adds r0, r1, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0816E60A
	adds r0, r1, #0x0
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816E608
	ldr r0, [r4, #0x08]
	adds r0, #0x52
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	ldr r2, [r0, #0x10]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x1F]
	b _0816E60A
_0816E608:
	adds r5, #0x01
_0816E60A:
	adds r4, #0x0C
	ldr r0, [sp, #0x014]
	subs r0, #0x03
	str r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0816E56E
	ldr r7, [sp, #0x040]
	cmp r7, #0x05
	ble _0816E55C
	mov r1, r10
	ldr r0, [r1, #0x00]
	cmp r0, #0x05
	bgt _0816E626
	b _0816ED98
_0816E626:
	cmp r5, #0x00
	beq _0816E62C
	b _0816ED98
_0816E62C:
	ldr r2, [sp, #0x034]
	ldrh r1, [r2, #0x00]
	ldr r0, _0816E654 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r1, [sp, #0x010]
	adds r1, #0xC0
	ldr r0, [sp, #0x010]
	adds r0, #0xC8
	str r5, [r0, #0x00]
	mov r3, r10
	str r5, [r3, #0x00]
	str r5, [r1, #0x00]
	ldr r4, [sp, #0x010]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x10]
	str r5, [sp, #0x000]
	movs r1, #0x05
	b _0816EC9E
	.byte 0x00, 0x00
_0816E654: .4byte 0x0000FDFF
_0816E658:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0816E662
	b _0816ECA8
_0816E662:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0816E66C
	b _0816E9A0
_0816E66C:
	movs r5, #0x00
	mov r9, r5
	movs r7, #0x00
	ldr r6, [sp, #0x010]
	adds r6, #0xA8
	str r6, [sp, #0x028]
_0816E678:
	lsls r0, r7, #0x02
	ldr r2, [sp, #0x028]
	adds r1, r2, r0
	ldr r1, [r1, #0x00]
	adds r3, r7, #0x1
	str r3, [sp, #0x040]
	str r0, [sp, #0x058]
	cmp r1, #0x00
	bne _0816E68C
	b _0816E87E
_0816E68C:
	movs r4, #0x00
	str r4, [sp, #0x014]
	lsls r6, r7, #0x01
_0816E692:
	ldr r5, [sp, #0x014]
	lsls r0, r5, #0x02
	adds r5, r6, r7
	lsls r1, r5, #0x03
	adds r0, r0, r1
	ldr r1, [sp, #0x048]
	adds r0, r1, r0
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0816E6B0
	b _0816E7B4
_0816E6B0:
	adds r0, r4, #0x0
	adds r0, #0x52
	ldrh r1, [r0, #0x00]
	mov r8, r0
	cmp r1, #0x01
	beq _0816E6C2
	cmp r1, #0x02
	beq _0816E780
	b _0816E7B4
_0816E6C2:
	lsls r1, r5, #0x01
	ldr r2, [sp, #0x014]
	adds r1, r2, r1
	ldr r0, [sp, #0x010]
	adds r0, #0xEC
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0816E720
	subs r2, r0, #0x1
	cmp r2, #0x04
	bhi _0816E710
	lsls r0, r2, #0x02
	ldr r1, _0816E6E4 @ =0x0816E6E8
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0816E6E4: .4byte 0x0816E6E8
	.byte 0xFC, 0xE6, 0x16, 0x08, 0x00, 0xE7, 0x16, 0x08, 0x04, 0xE7, 0x16, 0x08, 0x08, 0xE7, 0x16, 0x08
	.byte 0x0C, 0xE7, 0x16, 0x08, 0x04, 0x20, 0x06, 0xE0, 0x05, 0x20, 0x04, 0xE0, 0x06, 0x20, 0x02, 0xE0
	.byte 0x07, 0x20, 0x00, 0xE0, 0x08, 0x20, 0x20, 0x60
_0816E710:
	ldr r0, [r4, #0x10]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_0816E720:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x1F]
	movs r1, #0xC8
	lsls r1, r1, #0x08
	movs r3, #0xD0
	lsls r3, r3, #0x06
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8163A64
	movs r1, #0x8C
	lsls r1, r1, #0x07
	lsls r3, r7, #0x0C
	movs r5, #0xE8
	lsls r5, r5, #0x06
	adds r3, r3, r5
	movs r0, #0x20
	negs r0, r0
	str r0, [sp, #0x000]
	movs r0, #0x20
	str r0, [sp, #0x004]
	add r0, sp, #0x008
	movs r2, #0x00
	strb r2, [r0, #0x00]
	add r0, sp, #0x00C
	strb r2, [r0, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_816393C
	movs r0, #0x05
	ldr r1, [sp, #0x014]
	subs r0, r0, r1
	adds r1, r4, #0x0
	adds r1, #0x50
	strh r0, [r1, #0x00]
	movs r0, #0x02
	mov r2, r8
	strh r0, [r2, #0x00]
	movs r3, #0x01
	mov r9, r3
	b _0816E7B4
_0816E780:
	ldr r2, [r4, #0x10]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r5, [sp, #0x014]
	lsls r1, r5, #0x0C
	movs r0, #0x8C
	lsls r0, r0, #0x07
	adds r1, r1, r0
	lsls r3, r7, #0x0C
	movs r2, #0xE8
	lsls r2, r2, #0x06
	adds r3, r3, r2
	lsls r0, r5, #0x04
	str r0, [sp, #0x000]
	add r2, sp, #0x004
	movs r0, #0x00
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8163978
	movs r0, #0x00
	mov r3, r8
	strh r0, [r3, #0x00]
_0816E7B4:
	ldr r4, [sp, #0x014]
	adds r4, #0x01
	str r4, [sp, #0x014]
	cmp r4, #0x05
	bgt _0816E7C0
	b _0816E692
_0816E7C0:
	ldr r5, [sp, #0x028]
	ldr r7, [sp, #0x058]
	adds r1, r5, r7
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0816E7D4
	movs r1, #0x02
	mov r9, r1
_0816E7D4:
	asrs r0, r0, #0x02
	movs r1, #0x06
	bl __modsi3
	adds r6, #0x05
	mov r8, r6
	lsls r0, r0, #0x01
	ldr r3, _0816E8B0 @ =0xFFFFF000
	adds r2, r3, #0x0
	adds r1, r0, #0x0
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r1, r0, #0x1
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r1, r0, #0x0
	adds r1, #0x0C
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x0D
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0x00
	mov r10, r4
_0816E80C:
	mov r2, r10
	lsls r0, r2, #0x01
	add r0, r8
	lsls r0, r0, #0x06
	ldr r4, _0816E8B4 @ =0x06007850
	adds r3, r0, r4
	subs r4, #0x40
	adds r2, r0, r4
	strh r7, [r2, #0x00]
	strh r6, [r2, #0x02]
	strh r1, [r3, #0x00]
	strh r5, [r3, #0x02]
	ldr r2, _0816E8B8 @ =0x06007854
	adds r3, r0, r2
	adds r4, #0x04
	adds r2, r0, r4
	strh r7, [r2, #0x00]
	strh r6, [r2, #0x02]
	strh r1, [r3, #0x00]
	strh r5, [r3, #0x02]
	ldr r2, _0816E8BC @ =0x06007858
	adds r3, r0, r2
	adds r4, #0x04
	adds r2, r0, r4
	strh r7, [r2, #0x00]
	strh r6, [r2, #0x02]
	strh r1, [r3, #0x00]
	strh r5, [r3, #0x02]
	ldr r2, _0816E8C0 @ =0x0600785C
	adds r3, r0, r2
	adds r4, #0x04
	adds r2, r0, r4
	strh r7, [r2, #0x00]
	strh r6, [r2, #0x02]
	strh r1, [r3, #0x00]
	strh r5, [r3, #0x02]
	ldr r2, _0816E8C4 @ =0x06007860
	adds r3, r0, r2
	adds r4, #0x04
	adds r2, r0, r4
	strh r7, [r2, #0x00]
	strh r6, [r2, #0x02]
	strh r1, [r3, #0x00]
	strh r5, [r3, #0x02]
	ldr r2, _0816E8C8 @ =0x06007864
	adds r3, r0, r2
	adds r4, #0x04
	adds r2, r0, r4
	strh r7, [r2, #0x00]
	strh r6, [r2, #0x02]
	strh r1, [r3, #0x00]
	strh r5, [r3, #0x02]
	movs r0, #0x01
	add r10, r0
	mov r2, r10
	cmp r2, #0x01
	blt _0816E80C
_0816E87E:
	ldr r7, [sp, #0x040]
	cmp r7, #0x05
	bgt _0816E886
	b _0816E678
_0816E886:
	mov r3, r9
	cmp r3, #0x01
	bne _0816E8CC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r4, [sp, #0x010]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x10]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	b _0816EB9A
	.byte 0x00, 0x00
_0816E8B0: .4byte 0xFFFFF000
_0816E8B4: .4byte 0x06007850
_0816E8B8: .4byte 0x06007854
_0816E8BC: .4byte 0x06007858
_0816E8C0: .4byte 0x0600785C
_0816E8C4: .4byte 0x06007860
_0816E8C8: .4byte 0x06007864
_0816E8CC:
	mov r5, r9
	cmp r5, #0x02
	beq _0816E8D4
	b _0816EC84
_0816E8D4:
	ldr r6, [sp, #0x034]
	ldrh r1, [r6, #0x00]
	ldr r0, _0816E978 @ =0x0000FF80
	ands r0, r1
	movs r1, #0x00
	strh r0, [r6, #0x00]
	ldr r7, [sp, #0x010]
	ldr r0, [r7, #0x00]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	movs r7, #0xF0
	lsls r7, r7, #0x08
	ldr r6, _0816E97C @ =0x0000F001
	ldr r5, _0816E980 @ =0x0000F00C
	ldr r4, _0816E984 @ =0x0000F00D
	movs r0, #0x00
	mov r8, r0
_0816E900:
	mov r1, r8
	lsls r0, r1, #0x07
	movs r2, #0xA0
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r3, _0816E988 @ =0x06007850
	adds r2, r0, r3
	subs r3, #0x40
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	strh r6, [r1, #0x02]
	strh r5, [r2, #0x00]
	strh r4, [r2, #0x02]
	ldr r1, _0816E98C @ =0x06007854
	adds r2, r0, r1
	adds r3, #0x04
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	strh r6, [r1, #0x02]
	strh r5, [r2, #0x00]
	strh r4, [r2, #0x02]
	ldr r1, _0816E990 @ =0x06007858
	adds r2, r0, r1
	adds r3, #0x04
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	strh r6, [r1, #0x02]
	strh r5, [r2, #0x00]
	strh r4, [r2, #0x02]
	ldr r1, _0816E994 @ =0x0600785C
	adds r2, r0, r1
	adds r3, #0x04
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	strh r6, [r1, #0x02]
	strh r5, [r2, #0x00]
	strh r4, [r2, #0x02]
	ldr r1, _0816E998 @ =0x06007860
	adds r2, r0, r1
	adds r3, #0x04
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	strh r6, [r1, #0x02]
	strh r5, [r2, #0x00]
	strh r4, [r2, #0x02]
	ldr r1, _0816E99C @ =0x06007864
	adds r2, r0, r1
	adds r3, #0x04
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	strh r6, [r1, #0x02]
	strh r5, [r2, #0x00]
	strh r4, [r2, #0x02]
	movs r0, #0x01
	add r8, r0
	mov r1, r8
	cmp r1, #0x06
	blt _0816E900
	b _0816ED98
	.byte 0x00, 0x00
_0816E978: .4byte 0x0000FF80
_0816E97C: .4byte 0x0000F001
_0816E980: .4byte 0x0000F00C
_0816E984: .4byte 0x0000F00D
_0816E988: .4byte 0x06007850
_0816E98C: .4byte 0x06007854
_0816E990: .4byte 0x06007858
_0816E994: .4byte 0x0600785C
_0816E998: .4byte 0x06007860
_0816E99C: .4byte 0x06007864
_0816E9A0:
	movs r3, #0x00
	mov r9, r3
	movs r4, #0x00
	str r4, [sp, #0x014]
	ldr r5, [sp, #0x010]
	adds r5, #0xC0
	str r5, [sp, #0x02C]
_0816E9AE:
	ldr r6, [sp, #0x014]
	lsls r0, r6, #0x02
	ldr r7, [sp, #0x02C]
	adds r1, r7, r0
	ldr r1, [r1, #0x00]
	str r0, [sp, #0x054]
	adds r6, #0x01
	str r6, [sp, #0x03C]
	cmp r1, #0x00
	bne _0816E9C4
	b _0816EB68
_0816E9C4:
	movs r7, #0x00
	ldr r0, [sp, #0x014]
	lsls r0, r0, #0x01
	mov r10, r0
_0816E9CC:
	lsls r0, r7, #0x01
	adds r5, r0, r7
	lsls r0, r5, #0x03
	ldr r1, [sp, #0x054]
	adds r0, r1, r0
	ldr r2, [sp, #0x048]
	adds r0, r2, r0
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0816E9EA
	b _0816EAEE
_0816E9EA:
	adds r6, r4, #0x0
	adds r6, #0x52
	ldrh r0, [r6, #0x00]
	mov r8, r6
	cmp r0, #0x01
	beq _0816E9FC
	cmp r0, #0x02
	beq _0816EABC
	b _0816EAEE
_0816E9FC:
	lsls r1, r5, #0x01
	ldr r3, [sp, #0x014]
	adds r1, r3, r1
	ldr r0, [sp, #0x010]
	adds r0, #0xEC
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0816EA5C
	subs r2, r0, #0x1
	cmp r2, #0x04
	bhi _0816EA4C
	lsls r0, r2, #0x02
	ldr r1, _0816EA20 @ =0x0816EA24
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0816EA20: .4byte 0x0816EA24
	.byte 0x38, 0xEA, 0x16, 0x08, 0x3C, 0xEA, 0x16, 0x08, 0x40, 0xEA, 0x16, 0x08, 0x44, 0xEA, 0x16, 0x08
	.byte 0x48, 0xEA, 0x16, 0x08, 0x04, 0x20, 0x06, 0xE0, 0x05, 0x20, 0x04, 0xE0, 0x06, 0x20, 0x02, 0xE0
	.byte 0x07, 0x20, 0x00, 0xE0, 0x08, 0x20, 0x20, 0x60
_0816EA4C:
	ldr r0, [r4, #0x10]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_0816EA5C:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x1F]
	movs r1, #0xC8
	lsls r1, r1, #0x08
	movs r3, #0xD0
	lsls r3, r3, #0x06
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8163A64
	ldr r5, [sp, #0x014]
	lsls r1, r5, #0x0C
	movs r6, #0x8C
	lsls r6, r6, #0x07
	adds r1, r1, r6
	movs r3, #0xE8
	lsls r3, r3, #0x06
	movs r0, #0x20
	negs r0, r0
	str r0, [sp, #0x000]
	movs r0, #0x20
	str r0, [sp, #0x004]
	add r0, sp, #0x008
	movs r2, #0x00
	strb r2, [r0, #0x00]
	add r0, sp, #0x00C
	strb r2, [r0, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_816393C
	movs r0, #0x05
	subs r0, r0, r5
	adds r1, r4, #0x0
	adds r1, #0x50
	strh r0, [r1, #0x00]
	movs r0, #0x02
	mov r1, r8
	strh r0, [r1, #0x00]
	movs r2, #0x01
	mov r9, r2
	b _0816EAEE
_0816EABC:
	ldr r2, [r4, #0x10]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r3, [sp, #0x014]
	lsls r1, r3, #0x0C
	movs r5, #0x8C
	lsls r5, r5, #0x07
	adds r1, r1, r5
	lsls r3, r7, #0x0C
	movs r0, #0xE8
	lsls r0, r0, #0x06
	adds r3, r3, r0
	lsls r0, r7, #0x04
	str r0, [sp, #0x000]
	add r2, sp, #0x004
	movs r0, #0x00
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8163978
	movs r0, #0x00
	strh r0, [r6, #0x00]
_0816EAEE:
	adds r7, #0x01
	cmp r7, #0x05
	bgt _0816EAF6
	b _0816E9CC
_0816EAF6:
	ldr r2, [sp, #0x02C]
	ldr r3, [sp, #0x054]
	adds r1, r2, r3
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0816EB0A
	movs r4, #0x02
	mov r9, r4
_0816EB0A:
	asrs r0, r0, #0x02
	movs r1, #0x06
	bl __modsi3
	mov r3, r10
	adds r3, #0x08
	lsls r0, r0, #0x01
	ldr r5, _0816EBAC @ =0xFFFFF000
	adds r2, r5, #0x0
	adds r1, r0, #0x0
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r1, r0, #0x1
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r1, r0, #0x0
	adds r1, #0x0C
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r0, #0x0D
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0x00
	lsls r3, r3, #0x01
_0816EB44:
	lsls r0, r2, #0x07
	movs r7, #0xA0
	lsls r7, r7, #0x01
	adds r0, r0, r7
	ldr r7, _0816EBB0 @ =0x06007840
	adds r1, r0, r7
	adds r1, r3, r1
	subs r7, #0x40
	adds r0, r0, r7
	adds r0, r3, r0
	mov r7, r8
	strh r7, [r0, #0x00]
	strh r6, [r0, #0x02]
	strh r5, [r1, #0x00]
	strh r4, [r1, #0x02]
	adds r2, #0x01
	cmp r2, #0x06
	blt _0816EB44
_0816EB68:
	ldr r0, [sp, #0x03C]
	str r0, [sp, #0x014]
	cmp r0, #0x05
	bgt _0816EB72
	b _0816E9AE
_0816EB72:
	mov r1, r9
	cmp r1, #0x01
	bne _0816EBB4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x10]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [sp, #0x010]
	ldr r0, [r3, #0x00]
_0816EB9A:
	ldr r2, [r0, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _0816ED98
_0816EBAC: .4byte 0xFFFFF000
_0816EBB0: .4byte 0x06007840
_0816EBB4:
	mov r4, r9
	cmp r4, #0x02
	bne _0816EC84
	ldr r5, [sp, #0x034]
	ldrh r1, [r5, #0x00]
	ldr r0, _0816EC5C @ =0x0000FF80
	ands r0, r1
	movs r1, #0x00
	strh r0, [r5, #0x00]
	ldr r6, [sp, #0x010]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	movs r7, #0xF0
	lsls r7, r7, #0x08
	ldr r6, _0816EC60 @ =0x0000F001
	ldr r5, _0816EC64 @ =0x0000F00C
	ldr r4, _0816EC68 @ =0x0000F00D
	movs r0, #0x00
	mov r8, r0
_0816EBE6:
	mov r1, r8
	lsls r0, r1, #0x07
	movs r2, #0xA0
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r3, _0816EC6C @ =0x06007850
	adds r2, r0, r3
	subs r3, #0x40
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	strh r6, [r1, #0x02]
	strh r5, [r2, #0x00]
	strh r4, [r2, #0x02]
	ldr r1, _0816EC70 @ =0x06007854
	adds r2, r0, r1
	adds r3, #0x04
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	strh r6, [r1, #0x02]
	strh r5, [r2, #0x00]
	strh r4, [r2, #0x02]
	ldr r1, _0816EC74 @ =0x06007858
	adds r2, r0, r1
	adds r3, #0x04
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	strh r6, [r1, #0x02]
	strh r5, [r2, #0x00]
	strh r4, [r2, #0x02]
	ldr r1, _0816EC78 @ =0x0600785C
	adds r2, r0, r1
	adds r3, #0x04
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	strh r6, [r1, #0x02]
	strh r5, [r2, #0x00]
	strh r4, [r2, #0x02]
	ldr r1, _0816EC7C @ =0x06007860
	adds r2, r0, r1
	adds r3, #0x04
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	strh r6, [r1, #0x02]
	strh r5, [r2, #0x00]
	strh r4, [r2, #0x02]
	ldr r1, _0816EC80 @ =0x06007864
	adds r2, r0, r1
	adds r3, #0x04
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	strh r6, [r1, #0x02]
	strh r5, [r2, #0x00]
	strh r4, [r2, #0x02]
	movs r0, #0x01
	add r8, r0
	mov r1, r8
	cmp r1, #0x06
	blt _0816EBE6
	b _0816ED98
_0816EC5C: .4byte 0x0000FF80
_0816EC60: .4byte 0x0000F001
_0816EC64: .4byte 0x0000F00C
_0816EC68: .4byte 0x0000F00D
_0816EC6C: .4byte 0x06007850
_0816EC70: .4byte 0x06007854
_0816EC74: .4byte 0x06007858
_0816EC78: .4byte 0x0600785C
_0816EC7C: .4byte 0x06007860
_0816EC80: .4byte 0x06007864
_0816EC84:
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	ldr r2, [r0, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0816EC96
	b _0816ED98
_0816EC96:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	movs r1, #0x07
_0816EC9E:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	b _0816ED98
_0816ECA8:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0816ED24
	movs r7, #0x00
	ldr r1, [sp, #0x010]
	adds r1, #0xA8
_0816ECB6:
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0816ECCA
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0816ECCA
	ldr r3, [sp, #0x034]
	ldrh r1, [r3, #0x00]
	b _0816ECF4
_0816ECCA:
	adds r7, #0x01
	ldr r0, [r1, #0x04]
	cmp r0, #0x00
	beq _0816ECE0
	subs r0, #0x01
	str r0, [r1, #0x04]
	cmp r0, #0x00
	bne _0816ECE0
	ldr r4, [sp, #0x034]
	ldrh r1, [r4, #0x00]
	b _0816ECF4
_0816ECE0:
	adds r7, #0x01
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _0816ED06
	subs r0, #0x01
	str r0, [r1, #0x08]
	cmp r0, #0x00
	bne _0816ED06
	ldr r5, [sp, #0x034]
	ldrh r1, [r5, #0x00]
_0816ECF4:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0816ED10
	ldr r0, [sp, #0x010]
	adds r1, r7, #0x0
	bl sub_816F36C
	b _0816ED98
_0816ED06:
	adds r1, #0x0C
	adds r7, #0x01
	cmp r7, #0x05
	ble _0816ECB6
	b _0816ED98
_0816ED10:
	ldr r0, [sp, #0x010]
	adds r1, r7, #0x0
	bl sub_816F1D0
	b _0816ED98
_0816ED1A:
	ldr r0, [sp, #0x010]
	ldr r1, [sp, #0x014]
	bl sub_816F518
	b _0816ED98
_0816ED24:
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0816ED98
	movs r6, #0x00
	str r6, [sp, #0x014]
	ldr r1, [sp, #0x010]
	adds r1, #0xC0
_0816ED34:
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0816ED48
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0816ED48
	ldr r7, [sp, #0x034]
	ldrh r1, [r7, #0x00]
	b _0816ED7A
_0816ED48:
	ldr r0, [sp, #0x014]
	adds r0, #0x01
	str r0, [sp, #0x014]
	ldr r0, [r1, #0x04]
	cmp r0, #0x00
	beq _0816ED62
	subs r0, #0x01
	str r0, [r1, #0x04]
	cmp r0, #0x00
	bne _0816ED62
	ldr r2, [sp, #0x034]
	ldrh r1, [r2, #0x00]
	b _0816ED7A
_0816ED62:
	ldr r3, [sp, #0x014]
	adds r3, #0x01
	str r3, [sp, #0x014]
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _0816ED8C
	subs r0, #0x01
	str r0, [r1, #0x08]
	cmp r0, #0x00
	bne _0816ED8C
	ldr r4, [sp, #0x034]
	ldrh r1, [r4, #0x00]
_0816ED7A:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0816ED1A
	ldr r0, [sp, #0x010]
	ldr r1, [sp, #0x014]
	bl sub_816F67C
	b _0816ED98
_0816ED8C:
	adds r1, #0x0C
	ldr r5, [sp, #0x014]
	adds r5, #0x01
	str r5, [sp, #0x014]
	cmp r5, #0x05
	ble _0816ED34
_0816ED98:
	ldr r0, [sp, #0x010]
	bl sub_8171E2C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816EDA6
	b _0816EF3E
_0816EDA6:
	movs r7, #0x00
_0816EDA8:
	lsls r1, r7, #0x01
	adds r0, r1, r7
	lsls r0, r0, #0x03
	ldr r6, [sp, #0x048]
	adds r2, r6, r0
	ldr r0, [r2, #0x00]
	adds r6, r1, #0x0
	adds r1, r7, #0x1
	str r1, [sp, #0x040]
	cmp r0, #0x00
	bne _0816EDC0
	b _0816EF36
_0816EDC0:
	ldr r1, [r0, #0x00]
	movs r5, #0x01
	adds r3, r2, #0x4
	ldr r0, [r2, #0x04]
	cmp r0, #0x00
	beq _0816EE0C
	ldr r0, [r0, #0x00]
	cmp r0, r1
	bne _0816EE0C
	movs r5, #0x02
	ldr r0, [r3, #0x04]
	cmp r0, #0x00
	beq _0816EE0C
	ldr r0, [r0, #0x00]
	cmp r0, r1
	bne _0816EE0C
	movs r5, #0x03
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	beq _0816EE0C
	ldr r0, [r0, #0x00]
	cmp r0, r1
	bne _0816EE0C
	movs r5, #0x04
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	beq _0816EE0C
	ldr r0, [r0, #0x00]
	cmp r0, r1
	bne _0816EE0C
	movs r5, #0x05
	ldr r0, [r2, #0x14]
	cmp r0, #0x00
	beq _0816EE0C
	ldr r0, [r0, #0x00]
	cmp r0, r1
	bne _0816EE0C
	movs r5, #0x06
_0816EE0C:
	cmp r5, #0x06
	beq _0816EE12
	b _0816EF36
_0816EE12:
	movs r2, #0x00
	str r2, [sp, #0x014]
	lsls r3, r7, #0x0C
	str r3, [sp, #0x060]
	lsls r4, r7, #0x02
	str r4, [sp, #0x058]
	ldr r5, [sp, #0x010]
	adds r5, #0xA8
	str r5, [sp, #0x028]
	mov r0, sp
	adds r0, #0x04
	str r0, [sp, #0x038]
	ldr r1, [sp, #0x018]
	adds r1, #0x01
	str r1, [sp, #0x044]
	ldr r2, [sp, #0x020]
	adds r2, #0x01
	str r2, [sp, #0x050]
	adds r0, r6, r7
	lsls r0, r0, #0x03
	movs r3, #0x00
	str r3, [sp, #0x068]
	ldr r4, [sp, #0x048]
	adds r4, r4, r0
	mov r9, r4
	str r0, [sp, #0x024]
_0816EE46:
	mov r5, r9
	ldr r0, [r5, #0x00]
	movs r6, #0x08
	str r6, [r0, #0x00]
	ldr r0, [r0, #0x10]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [sp, #0x068]
	ldr r3, [sp, #0x024]
	adds r4, r2, r3
	ldr r5, [sp, #0x010]
	adds r5, #0x08
	str r5, [sp, #0x074]
	adds r4, r5, r4
	ldr r0, [r4, #0x00]
	movs r6, #0x06
	ldr r2, [sp, #0x014]
	subs r1, r6, r2
	lsls r1, r1, #0x04
	str r1, [sp, #0x000]
	movs r5, #0x00
	ldr r3, [sp, #0x038]
	strb r5, [r3, #0x00]
	movs r1, #0xA6
	lsls r1, r1, #0x08
	movs r2, #0x00
	ldr r6, [sp, #0x060]
	movs r5, #0xE8
	lsls r5, r5, #0x06
	adds r3, r6, r5
	bl sub_8163978
	ldr r0, [r4, #0x00]
	adds r0, #0x52
	movs r6, #0x01
	mov r8, r6
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r4, [sp, #0x068]
	adds r4, #0x04
	ldr r2, [sp, #0x014]
	adds r2, #0x01
	str r2, [sp, #0x070]
	mov r3, r9
	ldr r0, [r3, #0x04]
	movs r5, #0x08
	str r5, [r0, #0x00]
	ldr r0, [r0, #0x10]
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [sp, #0x024]
	adds r4, r4, r0
	ldr r1, [sp, #0x074]
	adds r6, r1, r4
	ldr r0, [r6, #0x00]
	movs r2, #0x06
	ldr r3, [sp, #0x070]
	subs r5, r2, r3
	lsls r5, r5, #0x04
	str r5, [sp, #0x000]
	movs r5, #0x00
	ldr r4, [sp, #0x038]
	strb r5, [r4, #0x00]
	movs r1, #0xA6
	lsls r1, r1, #0x08
	movs r2, #0x00
	ldr r4, [sp, #0x060]
	movs r5, #0xE8
	lsls r5, r5, #0x06
	adds r3, r4, r5
	bl sub_8163978
	ldr r0, [r6, #0x00]
	adds r0, #0x52
	mov r6, r8
	strh r6, [r0, #0x00]
	ldr r0, [sp, #0x068]
	adds r0, #0x08
	str r0, [sp, #0x068]
	movs r1, #0x08
	add r9, r1
	ldr r2, [sp, #0x014]
	adds r2, #0x02
	str r2, [sp, #0x014]
	cmp r2, #0x05
	ble _0816EE46
	ldr r3, [sp, #0x028]
	ldr r4, [sp, #0x058]
	adds r1, r3, r4
	movs r0, #0x82
	str r0, [r1, #0x00]
	ldr r5, [sp, #0x034]
	ldrh r0, [r5, #0x00]
	movs r1, #0x41
	orrs r1, r0
	strh r1, [r5, #0x00]
	ldr r6, [sp, #0x044]
	str r6, [sp, #0x018]
	ldr r0, [sp, #0x050]
	str r0, [sp, #0x020]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ands r1, r0
	cmp r1, #0x00
	bne _0816EF36
	ldr r0, [sp, #0x010]
	adds r1, r7, #0x0
	bl sub_816DF84
_0816EF36:
	ldr r7, [sp, #0x040]
	cmp r7, #0x05
	bgt _0816EF3E
	b _0816EDA8
_0816EF3E:
	ldr r0, [sp, #0x010]
	bl sub_8171E2C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816EF4C
	b _0816F0CA
_0816EF4C:
	movs r3, #0x00
	str r3, [sp, #0x014]
_0816EF50:
	ldr r4, [sp, #0x014]
	lsls r0, r4, #0x02
	ldr r5, [sp, #0x048]
	adds r2, r5, r0
	ldr r1, [r2, #0x00]
	str r0, [sp, #0x054]
	adds r4, #0x01
	str r4, [sp, #0x03C]
	cmp r1, #0x00
	bne _0816EF66
	b _0816F0C0
_0816EF66:
	ldr r1, [r1, #0x00]
	movs r5, #0x01
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	beq _0816EFB0
	ldr r0, [r0, #0x00]
	cmp r0, r1
	bne _0816EFB0
	movs r5, #0x02
	ldr r0, [r2, #0x30]
	cmp r0, #0x00
	beq _0816EFB0
	ldr r0, [r0, #0x00]
	cmp r0, r1
	bne _0816EFB0
	movs r5, #0x03
	ldr r0, [r2, #0x48]
	cmp r0, #0x00
	beq _0816EFB0
	ldr r0, [r0, #0x00]
	cmp r0, r1
	bne _0816EFB0
	movs r5, #0x04
	ldr r0, [r2, #0x60]
	cmp r0, #0x00
	beq _0816EFB0
	ldr r0, [r0, #0x00]
	cmp r0, r1
	bne _0816EFB0
	movs r5, #0x05
	ldr r0, [r2, #0x78]
	cmp r0, #0x00
	beq _0816EFB0
	ldr r0, [r0, #0x00]
	cmp r0, r1
	bne _0816EFB0
	movs r5, #0x06
_0816EFB0:
	cmp r5, #0x06
	beq _0816EFB6
	b _0816F0C0
_0816EFB6:
	movs r7, #0x00
	ldr r6, [sp, #0x010]
	adds r6, #0xC0
	str r6, [sp, #0x02C]
	ldr r0, [sp, #0x014]
	lsls r0, r0, #0x0C
	str r0, [sp, #0x05C]
	mov r1, sp
	adds r1, #0x04
	str r1, [sp, #0x038]
	ldr r2, [sp, #0x018]
	adds r2, #0x01
	str r2, [sp, #0x044]
	ldr r3, [sp, #0x01C]
	adds r3, #0x01
	str r3, [sp, #0x04C]
	movs r4, #0x00
	str r4, [sp, #0x064]
	ldr r5, [sp, #0x054]
	ldr r6, [sp, #0x048]
	adds r5, r5, r6
	mov r10, r5
_0816EFE2:
	mov r1, r10
	ldr r0, [r1, #0x00]
	movs r2, #0x08
	str r2, [r0, #0x00]
	ldr r0, [r0, #0x10]
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r1, #0x04
	movs r2, #0x00
	bl sub_801E150
	ldr r4, [sp, #0x014]
	lsls r4, r4, #0x02
	mov r8, r4
	ldr r4, [sp, #0x064]
	add r4, r8
	ldr r6, [sp, #0x010]
	adds r6, #0x08
	adds r4, r6, r4
	ldr r0, [r4, #0x00]
	movs r5, #0x06
	subs r1, r5, r7
	lsls r1, r1, #0x04
	str r1, [sp, #0x000]
	movs r2, #0x00
	ldr r1, [sp, #0x038]
	strb r2, [r1, #0x00]
	ldr r3, [sp, #0x05C]
	movs r2, #0x8C
	lsls r2, r2, #0x07
	adds r1, r3, r2
	movs r2, #0x00
	movs r3, #0x9A
	lsls r3, r3, #0x08
	bl sub_8163978
	ldr r0, [r4, #0x00]
	adds r0, #0x52
	movs r3, #0x01
	strh r3, [r0, #0x00]
	ldr r4, [sp, #0x064]
	adds r4, #0x18
	adds r0, r7, #0x1
	str r0, [sp, #0x06C]
	mov r1, r10
	ldr r0, [r1, #0x18]
	movs r2, #0x08
	str r2, [r0, #0x00]
	ldr r0, [r0, #0x10]
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r1, #0x04
	movs r2, #0x00
	bl sub_801E150
	add r8, r4
	add r6, r8
	ldr r0, [r6, #0x00]
	ldr r4, [sp, #0x06C]
	subs r5, r5, r4
	lsls r5, r5, #0x04
	str r5, [sp, #0x000]
	movs r1, #0x00
	ldr r5, [sp, #0x038]
	strb r1, [r5, #0x00]
	ldr r2, [sp, #0x05C]
	movs r3, #0x8C
	lsls r3, r3, #0x07
	adds r1, r2, r3
	movs r2, #0x00
	movs r3, #0x9A
	lsls r3, r3, #0x08
	bl sub_8163978
	ldr r0, [r6, #0x00]
	adds r0, #0x52
	movs r4, #0x01
	strh r4, [r0, #0x00]
	ldr r5, [sp, #0x064]
	adds r5, #0x30
	str r5, [sp, #0x064]
	movs r6, #0x30
	add r10, r6
	adds r7, #0x02
	cmp r7, #0x05
	ble _0816EFE2
	ldr r7, [sp, #0x02C]
	ldr r0, [sp, #0x054]
	adds r1, r7, r0
	movs r0, #0x82
	str r0, [r1, #0x00]
	ldr r1, [sp, #0x034]
	ldrh r0, [r1, #0x00]
	movs r1, #0x48
	orrs r1, r0
	ldr r2, [sp, #0x034]
	strh r1, [r2, #0x00]
	ldr r3, [sp, #0x044]
	str r3, [sp, #0x018]
	ldr r4, [sp, #0x04C]
	str r4, [sp, #0x01C]
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r0, r5, #0x0
	ands r1, r0
	cmp r1, #0x00
	bne _0816F0C0
	ldr r0, [sp, #0x010]
	ldr r1, [sp, #0x014]
	bl sub_816E114
_0816F0C0:
	ldr r6, [sp, #0x03C]
	str r6, [sp, #0x014]
	cmp r6, #0x05
	bgt _0816F0CA
	b _0816EF50
_0816F0CA:
	ldr r7, [sp, #0x018]
	cmp r7, #0x04
	bhi _0816F152
	lsls r0, r7, #0x02
	ldr r1, _0816F0DC @ =0x0816F0E0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0816F0DC: .4byte 0x0816F0E0
	.byte 0x52, 0xF1, 0x16, 0x08, 0xF4, 0xF0, 0x16, 0x08, 0xFE, 0xF0, 0x16, 0x08, 0x08, 0xF1, 0x16, 0x08
	.byte 0x30, 0xF1, 0x16, 0x08, 0x04, 0x99, 0xD8, 0x31, 0x08, 0x68, 0x01, 0x30, 0x28, 0xE0, 0x04, 0x99
	.byte 0xD8, 0x31, 0x08, 0x68, 0x04, 0x30, 0x23, 0xE0, 0x0D, 0x98, 0x01, 0x88, 0x80, 0x20, 0x40, 0x01
	.byte 0x08, 0x40, 0x00, 0x28, 0x04, 0xD0, 0x04, 0x99, 0x48, 0x68, 0x04, 0x49, 0xF4, 0xF7, 0x6C, 0xFC
	.byte 0x04, 0x99, 0xD8, 0x31, 0x08, 0x68, 0x08, 0x30, 0x12, 0xE0, 0x00, 0x00, 0x0A, 0xAC, 0x21, 0x08
	.byte 0x0D, 0x9A, 0x11, 0x88, 0x80, 0x20, 0x40, 0x01, 0x08, 0x40, 0x00, 0x28, 0x04, 0xD0, 0x04, 0x9B
	.byte 0x58, 0x68, 0x08, 0x49, 0xF4, 0xF7, 0x58, 0xFC, 0x04, 0x99, 0xD8, 0x31, 0x08, 0x68, 0x10, 0x30
	.byte 0x08, 0x60
_0816F152:
	ldr r4, [sp, #0x020]
	cmp r4, #0x00
	beq _0816F168
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7A
	bl play_sfx_80195B4
	b _0816F178
	.byte 0x28, 0xAC, 0x21, 0x08
_0816F168:
	ldr r5, [sp, #0x01C]
	cmp r5, #0x00
	beq _0816F178
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7B
	bl play_sfx_80195B4
_0816F178:
	ldr r6, [sp, #0x030]
	ldr r0, [r6, #0x00]
	ldr r7, [sp, #0x018]
	adds r0, r0, r7
	str r0, [r6, #0x00]
	ldr r0, [sp, #0x034]
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	ands r0, r1
	cmp r0, #0x00
	beq _0816F1B6
	ldr r0, [sp, #0x010]
	adds r0, #0xD8
	ldr r2, [sp, #0x010]
	adds r2, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	cmp r1, r0
	ble _0816F1B0
	str r1, [r2, #0x00]
	ldr r2, [sp, #0x034]
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
_0816F1B0:
	ldr r0, [sp, #0x010]
	bl sub_816F7E8
_0816F1B6:
	ldr r4, [sp, #0x010]
	ldr r0, [r4, #0x04]
	bl sub_8161E38
	add sp, #0x078
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
