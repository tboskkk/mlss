	.syntax unified
	.text

	thumb_func_start sub_816C21C
sub_816C21C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _0816C344 @ =0x08CDD208
	str r0, [r7, #0x18]
	adds r4, r7, #0x0
	adds r4, #0x4C
	adds r0, r4, #0x0
	bl sub_8163320
	adds r0, r7, #0x0
	adds r0, #0x6E
	movs r5, #0x00
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x20
	bl sub_81632EC
	ldr r4, _0816C348 @ =0x08216AD4
	movs r0, #0x24
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x20
	str r1, [sp, #0x000]
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801B870
	movs r0, #0xC8
	str r0, [r7, #0x50]
	ldr r0, _0816C34C @ =0x000001ED
	movs r1, #0x00
	bl sub_8163134
	ldr r0, _0816C350 @ =0x00001CDD
	movs r1, #0x00
	bl sub_80E9A6C
	ldr r0, _0816C354 @ =0x00001CE3
	bl sub_80E99E0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xC7
	bgt _0816C290
	movs r6, #0xC8
_0816C290:
	ldr r2, _0816C358 @ =0x08216ADC
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_81638B0
	str r0, [r7, #0x1C]
	ldr r2, _0816C35C @ =0x08216AE4
	movs r0, #0xA4
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x0D
	str r1, [sp, #0x000]
	movs r1, #0x01
	movs r2, #0x02
	movs r3, #0x17
	bl sub_8164294
	str r0, [r7, #0x28]
	movs r1, #0x70
	adds r0, #0xA2
	strh r1, [r0, #0x00]
	ldr r2, _0816C360 @ =0x08216AEC
	movs r0, #0x30
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	bl sub_8163298
	str r0, [r7, #0x40]
	ldr r2, _0816C364 @ =0xFFFF6000
	movs r1, #0x00
	bl sub_8163264
	ldr r0, [r7, #0x40]
	bl sub_8162F20
	ldr r1, _0816C368 @ =0x0200000C
	ldr r2, _0816C36C @ =0x00000D02
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r2, #0x8E
	lsls r2, r2, #0x08
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	subs r1, #0x0E
	movs r2, #0xF2
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x18
	ldr r0, _0816C370 @ =0x0200001A
	strh r5, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, _0816C374 @ =0x08217165
	movs r1, #0xC0
	lsls r1, r1, #0x13
	bl sub_8163DB8
	ldr r0, _0816C378 @ =0x08216B31
	ldr r1, _0816C37C @ =0x06006800
	bl sub_8163DB8
	str r5, [sp, #0x00C]
	ldr r1, _0816C380 @ =0x06007800
	ldr r2, _0816C384 @ =0x01000200
	add r0, sp, #0x00C
	bl CpuFastSet
	ldr r0, _0816C388 @ =0x0300034C
	ldr r1, _0816C38C @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0816C398
	ldr r0, _0816C390 @ =0x08218D6D
	ldr r1, _0816C394 @ =0x02000080
	bl sub_8163DB8
	b _0816C3A0
_0816C344: .4byte dword_8CDD208 @ =0x08CDD208
_0816C348: .4byte dword_8216AD4 @ =0x08216AD4
_0816C34C: .4byte 0x000001ED
_0816C350: .4byte 0x00001CDD
_0816C354: .4byte 0x00001CE3
_0816C358: .4byte dword_8216ADC @ =0x08216ADC
_0816C35C: .4byte dword_8216AE4 @ =0x08216AE4
_0816C360: .4byte dword_8216AEC @ =0x08216AEC
_0816C364: .4byte 0xFFFF6000
_0816C368: .4byte 0x0200000C
_0816C36C: .4byte 0x00000D02
_0816C370: .4byte 0x0200001A
_0816C374: .4byte dword_8217165 @ =0x08217165
_0816C378: .4byte dword_8216B31 @ =0x08216B31
_0816C37C: .4byte 0x06006800
_0816C380: .4byte 0x06007800
_0816C384: .4byte 0x01000200
_0816C388: .4byte 0x0300034C
_0816C38C: .4byte 0x00000888
_0816C390: .4byte dword_8218D6D @ =0x08218D6D
_0816C394: .4byte 0x02000080
_0816C398:
	ldr r0, _0816C708 @ =0x08218C5C
	ldr r1, _0816C70C @ =0x02000080
	bl sub_8163DB8
_0816C3A0:
	ldr r3, _0816C710 @ =0x08218E7A
	ldr r2, _0816C714 @ =0x0300034C
	movs r0, #0x8C
	lsls r0, r0, #0x04
	adds r4, r2, r0
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r1, r0, r3
	ldrh r2, [r1, #0x00]
	adds r1, r3, #0x2
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x06
	lsls r2, r2, #0x01
	ldr r1, _0816C718 @ =0x06006800
	adds r2, r2, r1
	adds r2, r0, r2
	adds r1, #0xDA
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x02]
	strh r0, [r1, #0x02]
	ldrh r0, [r2, #0x04]
	strh r0, [r1, #0x04]
	ldrh r0, [r2, #0x06]
	strh r0, [r1, #0x06]
	adds r1, #0x40
	adds r0, r2, #0x0
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x42
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x44
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x46
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	adds r0, r3, #0x4
	adds r0, r1, r0
	ldrh r2, [r0, #0x00]
	adds r0, r3, #0x6
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x06
	lsls r2, r2, #0x01
	ldr r1, _0816C718 @ =0x06006800
	adds r2, r2, r1
	adds r2, r0, r2
	adds r1, #0x24
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x02]
	strh r0, [r1, #0x02]
	ldrh r0, [r2, #0x04]
	strh r0, [r1, #0x04]
	ldrh r0, [r2, #0x06]
	strh r0, [r1, #0x06]
	adds r1, #0x40
	adds r0, r2, #0x0
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x42
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x44
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x46
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	adds r0, r3, #0x0
	adds r0, #0x08
	adds r0, r1, r0
	ldrh r2, [r0, #0x00]
	adds r3, #0x0A
	adds r1, r1, r3
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x06
	lsls r2, r2, #0x01
	ldr r1, _0816C718 @ =0x06006800
	adds r2, r2, r1
	adds r2, r0, r2
	adds r1, #0x10
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x02]
	strh r0, [r1, #0x02]
	ldrh r0, [r2, #0x04]
	strh r0, [r1, #0x04]
	ldrh r0, [r2, #0x06]
	strh r0, [r1, #0x06]
	adds r1, #0x40
	adds r0, r2, #0x0
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x42
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x44
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x46
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x04
	ldr r1, _0816C71C @ =0x00005007
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x04
	ldr r1, _0816C71C @ =0x00005007
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80214A4
	movs r2, #0x00
	str r2, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _0816C71C @ =0x00005007
	movs r3, #0x00
	bl sub_8021574
	ldr r5, _0816C720 @ =0x08216AF4
	movs r0, #0x24
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl process_add
	ldr r0, _0816C724 @ =0x08CDD220
	str r0, [r4, #0x18]
	movs r0, #0x00
	str r0, [r4, #0x20]
	str r0, [r4, #0x1C]
	str r4, [r7, #0x20]
	str r7, [r4, #0x14]
	str r0, [r7, #0x58]
	str r0, [r7, #0x54]
	str r0, [r7, #0x5C]
	str r0, [r7, #0x60]
	ldr r4, [r7, #0x1C]
	ldr r2, _0816C728 @ =0x08216AFC
	movs r0, #0x8C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	ldr r1, [r7, #0x1C]
	bl sub_816B9B0
	adds r1, r0, #0x0
	str r1, [r7, #0x2C]
	adds r0, r4, #0x0
	bl sub_8163CD4
	ldr r4, [r7, #0x1C]
	ldr r2, _0816C72C @ =0x08216B04
	movs r0, #0x90
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	ldr r1, [r7, #0x1C]
	movs r2, #0x80
	str r2, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x80
	lsls r3, r3, #0x08
	bl sub_816BC4C
	adds r1, r0, #0x0
	str r1, [r7, #0x30]
	adds r0, r4, #0x0
	bl sub_8163CD4
	ldr r4, [r7, #0x1C]
	ldr r2, _0816C730 @ =0x08216B0C
	movs r0, #0x90
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	ldr r1, [r7, #0x1C]
	movs r2, #0xF0
	lsls r2, r2, #0x08
	movs r3, #0x80
	negs r3, r3
	str r3, [sp, #0x000]
	movs r3, #0x80
	lsls r3, r3, #0x08
	bl sub_816BC4C
	adds r1, r0, #0x0
	str r1, [r7, #0x34]
	adds r0, r4, #0x0
	bl sub_8163CD4
	ldr r2, _0816C734 @ =0x08216AEC
	movs r0, #0x54
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	ldr r1, [r7, #0x1C]
	adds r2, r6, #0x0
	bl sub_816B5B0
	str r0, [r7, #0x38]
	ldr r2, _0816C738 @ =0x08216B14
	movs r0, #0x20
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	ldr r1, [r7, #0x1C]
	mov r8, r1
	adds r2, r7, #0x0
	adds r2, #0x6A
	str r2, [sp, #0x014]
	adds r0, r7, #0x0
	adds r0, #0x6C
	str r0, [sp, #0x018]
	movs r0, #0x6C
	movs r1, #0x00
	ldr r2, _0816C73C @ =0x08216A9C
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x09
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	mov r0, r8
	bl sub_8163CD4
	ldr r0, [r4, #0x00]
	movs r6, #0x1B
	str r6, [sp, #0x000]
	movs r5, #0x03
	str r5, [sp, #0x004]
	movs r1, #0x04
	ldr r2, _0816C71C @ =0x00005007
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r4, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x07
	adds r1, #0x00
	mov r10, r1
	str r1, [r0, #0x18]
	movs r2, #0xC0
	lsls r2, r2, #0x06
	mov r9, r2
	str r2, [r0, #0x1C]
	movs r0, #0x6C
	movs r1, #0x00
	ldr r2, _0816C73C @ =0x08216A9C
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x09
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r4, #0x04]
	mov r0, r8
	bl sub_8163CD4
	ldr r0, [r4, #0x04]
	str r6, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r1, #0x04
	ldr r2, _0816C71C @ =0x00005007
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r4, #0x04]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [r0, #0x18]
	mov r2, r9
	str r2, [r0, #0x1C]
	movs r5, #0x02
	adds r0, r4, #0x0
	bl sub_816D898
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_816B45C
	str r4, [r7, #0x3C]
	ldr r4, [r7, #0x1C]
	ldr r2, _0816C740 @ =0x08216B1C
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x07
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r7, #0x44]
	adds r0, r4, #0x0
	bl sub_8163CD4
	ldr r0, [r7, #0x44]
	movs r1, #0x0A
	str r1, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r1, #0x04
	ldr r2, _0816C71C @ =0x00005007
	movs r3, #0x00
	bl sub_8163ADC
	ldr r1, [r7, #0x44]
	movs r0, #0x90
	lsls r0, r0, #0x09
	str r0, [r1, #0x18]
	mov r0, r10
	str r0, [r1, #0x1C]
	ldr r4, [r7, #0x1C]
	ldr r2, _0816C744 @ =0x08216B24
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x0A
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r7, #0x48]
	adds r0, r4, #0x0
	bl sub_8163CD4
	ldr r0, [r7, #0x48]
	movs r1, #0x25
	str r1, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r1, #0x04
	ldr r2, _0816C71C @ =0x00005007
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r7, #0x48]
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, [r7, #0x48]
	movs r1, #0xF0
	lsls r1, r1, #0x07
	str r1, [r0, #0x18]
	mov r1, r9
	str r1, [r0, #0x1C]
	ldr r2, [r0, #0x10]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r7, #0x1C]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8163864
	movs r0, #0x00
	ldr r2, [sp, #0x014]
	strh r0, [r2, #0x00]
	ldr r1, [sp, #0x018]
	strh r0, [r1, #0x00]
	movs r2, #0x00
	str r2, [r7, #0x64]
	ldr r0, _0816C70C @ =0x02000080
	strh r2, [r0, #0x00]
	ldr r0, _0816C748 @ =0x0000FFFF
	ldr r1, _0816C714 @ =0x0300034C
	strh r0, [r1, #0x02]
	adds r0, r7, #0x0
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0816C708: .4byte dword_8218C5C @ =0x08218C5C
_0816C70C: .4byte 0x02000080
_0816C710: .4byte dword_8218E7A @ =0x08218E7A
_0816C714: .4byte 0x0300034C
_0816C718: .4byte 0x06006800
_0816C71C: .4byte 0x00005007
_0816C720: .4byte dword_8216AF4 @ =0x08216AF4
_0816C724: .4byte dword_8CDD220 @ =0x08CDD220
_0816C728: .4byte dword_8216AFC @ =0x08216AFC
_0816C72C: .4byte dword_8216B04 @ =0x08216B04
_0816C730: .4byte dword_8216B0C @ =0x08216B0C
_0816C734: .4byte dword_8216AEC @ =0x08216AEC
_0816C738: .4byte dword_8216B14 @ =0x08216B14
_0816C73C: .4byte dword_8216A9C @ =0x08216A9C
_0816C740: .4byte dword_8216B1C @ =0x08216B1C
_0816C744: .4byte dword_8216B24 @ =0x08216B24
_0816C748: .4byte 0x0000FFFF
