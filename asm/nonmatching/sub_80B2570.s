	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	str r0, [sp, #0x008]
	ldr r0, _080B26AC @ =0x03000FD8
	mov r10, r0
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r4
	mov r8, r1
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r2, [sp, #0x008]
	ldr r6, [r2, #0x2C]
	mov r0, r8
	bl sub_80884AC
	ldr r0, [r6, #0x28]
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	adds r0, #0x2A
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1B
	ldr r3, [sp, #0x00C]
	adds r3, #0x28
	mov r9, r3
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	adds r1, r1, r0
	str r1, [sp, #0x010]
	cmp r1, #0x00
	bne _080B25C2
	b _080B2898
_080B25C2:
	ldr r0, _080B26B0 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	adds r7, r4, #0x0
	adds r7, #0xA8
	ldr r1, [r7, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _080B25D4
	b _080B2898
_080B25D4:
	adds r4, #0xA4
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	ldr r0, [r7, #0x00]
	movs r1, #0x03
	eors r0, r1
	str r0, [r7, #0x00]
	ldr r1, _080B26B4 @ =0x082000DC
	add r0, sp, #0x004
	movs r2, #0x03
	bl memcpy
	ldr r0, [r6, #0x28]
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x01
	ands r3, r0
	cmp r3, #0x00
	beq _080B2604
	b _080B2898
_080B2604:
	ldr r2, _080B26B8 @ =0x03001038
	ldr r0, _080B26BC @ =0x0819832C
	ldr r1, _080B26C0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r1, r10
	ldr r0, [r1, #0x00]
	ldr r1, _080B26C4 @ =0x000002BF
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	add r0, sp
	adds r0, #0x04
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x03
	ldr r1, [sp, #0x010]
	adds r1, #0x04
	str r3, [sp, #0x018]
	bl _call_via_r2
	ldr r1, [r4, #0x00]
	ldr r3, [sp, #0x018]
	cmp r0, r1
	blt _080B2638
	b _080B2898
_080B2638:
	str r3, [r7, #0x00]
	mov r2, r10
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B26C8
	mov r1, r8
	mov r3, r10
	mov r4, r9
	cmp r1, #0x00
	beq _080B2662
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2656:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2656
_080B2662:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B2678
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B266C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B266C
_080B2678:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B268E
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2682:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2682
_080B268E:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B2728
	movs r2, #0x10
_080B2698:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B26A2
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B26A2:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B2698
	b _080B2728
	.byte 0x00, 0x00
_080B26AC: .4byte 0x03000FD8
_080B26B0: .4byte 0x0300034C
_080B26B4: .4byte 0x082000DC
_080B26B8: .4byte 0x03001038
_080B26BC: .4byte 0x0819832C
_080B26C0: .4byte 0x08198220
_080B26C4: .4byte 0x000002BF
_080B26C8:
	mov r1, r8
	mov r3, r10
	mov r4, r9
	cmp r1, #0x00
	beq _080B26E2
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B26D6:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B26D6
_080B26E2:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B26F8
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B26EC:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B26EC
_080B26F8:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B270E
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2702:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2702
_080B270E:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B2728
	movs r2, #0x10
_080B2718:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B2722
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B2722:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B2718
_080B2728:
	adds r0, r5, #0x0
	bl sub_807EA24
	bl sub_807F448
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x02
	mov r1, r8
	movs r2, #0x28
	bl sub_807EAE4
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x1B
	lsrs r4, r4, #0x1B
	bl sub_8199F30
	adds r1, r0, #0x0
	ldr r0, [sp, #0x010]
	bl sub_81DD77C
	cmp r4, r0
	bhi _080B275C
	ldr r3, [sp, #0x00C]
	ldrh r0, [r3, #0x2A]
	b _080B2760
_080B275C:
	ldr r1, [sp, #0x00C]
	ldrh r0, [r1, #0x28]
_080B2760:
	lsrs r4, r0, #0x05
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_80F6F74
	ldr r0, [r6, #0x28]
	movs r3, #0x91
	lsls r3, r3, #0x01
	adds r2, r0, r3
	ldrh r1, [r2, #0x00]
	ldr r0, _080B27A8 @ =0xFFFFFE7F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r7, #0x00
	lsrs r0, r4, #0x07
	cmp r0, #0x04
	bne _080B27B8
	ldr r1, _080B27AC @ =0x083BBDD0
	movs r0, #0x7F
	ands r4, r0
	lsls r2, r4, #0x04
	adds r0, r2, r1
	ldrb r0, [r0, #0x02]
	ldr r3, _080B27B0 @ =0x00004188
	adds r7, r0, r3
	adds r1, #0x0C
	adds r2, r2, r1
	ldr r0, _080B27B4 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ldr r1, [r2, #0x00]
	b _080B27D8
_080B27A8: .4byte 0xFFFFFE7F
_080B27AC: .4byte 0x083BBDD0
_080B27B0: .4byte 0x00004188
_080B27B4: .4byte 0x0300034C
_080B27B8:
	cmp r0, #0x01
	bne _080B27FC
	ldr r7, _080B27F0 @ =0x00004193
	ldr r2, _080B27F4 @ =0x083BD844
	movs r0, #0x7F
	ands r0, r4
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r0, _080B27F8 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
_080B27D8:
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810D038
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x67
	bl play_sfx_80195B4
	b _080B2832
_080B27F0: .4byte 0x00004193
_080B27F4: .4byte 0x083BD844
_080B27F8: .4byte 0x0300034C
_080B27FC:
	cmp r0, #0x02
	bne _080B2832
	ldr r7, _080B293C @ =0x00004194
	ldr r2, _080B2940 @ =0x083BE67C
	movs r0, #0x7F
	ands r0, r4
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r0, _080B2944 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810D038
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x67
	bl play_sfx_80195B4
_080B2832:
	cmp r7, #0x00
	beq _080B2898
	adds r1, r7, #0x0
	mov r0, r8
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r0, r6, #0x0
	adds r0, #0xC3
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xC4
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	adds r0, r6, #0x0
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	adds r2, r3, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2894
	cmp r1, #0x04
	bne _080B2898
_080B2894:
	ldr r0, _080B2948 @ =0x080B302D
	str r0, [r3, #0x4C]
_080B2898:
	mov r0, r8
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B28A8
	b _080B2BA0
_080B28A8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r2, _080B294C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B2950
	mov r1, r8
	adds r3, r2, #0x0
	adds r4, r5, #0x0
	adds r4, #0xCC
	movs r0, #0xCA
	adds r0, r0, r5
	mov r9, r0
	movs r2, #0x76
	add r2, r8
	mov r10, r2
	adds r7, r5, #0x0
	adds r7, #0x76
	mov r0, r8
	adds r0, #0x84
	str r0, [sp, #0x014]
	mov r2, r8
	cmp r2, #0x00
	beq _080B28F4
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B28E8:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B28E8
_080B28F4:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B290A
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B28FE:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B28FE
_080B290A:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B2920
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2914:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2914
_080B2920:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B29CA
	movs r2, #0x10
_080B292A:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B2934
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B2934:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B292A
	b _080B29CA
_080B293C: .4byte 0x00004194
_080B2940: .4byte 0x083BE67C
_080B2944: .4byte 0x0300034C
_080B2948: .4byte sub_80B302C
_080B294C: .4byte 0x03000FD8
_080B2950:
	mov r1, r8
	adds r3, r2, #0x0
	adds r4, r5, #0x0
	adds r4, #0xCC
	movs r0, #0xCA
	adds r0, r0, r5
	mov r9, r0
	movs r2, #0x76
	add r2, r8
	mov r10, r2
	adds r7, r5, #0x0
	adds r7, #0x76
	mov r0, r8
	adds r0, #0x84
	str r0, [sp, #0x014]
	mov r2, r8
	cmp r2, #0x00
	beq _080B2984
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2978:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2978
_080B2984:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B299A
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B298E:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B298E
_080B299A:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B29B0
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B29A4:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B29A4
_080B29B0:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B29CA
	movs r2, #0x10
_080B29BA:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B29C4
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B29C4:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B29BA
_080B29CA:
	adds r0, r5, #0x0
	bl sub_807EA24
	bl sub_807F448
	ldr r0, [r6, #0x28]
	ldr r3, _080B2AA8 @ =0x00000111
	adds r2, r0, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, _080B2AAC @ =0x040308A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080B2A28
	ldr r3, _080B2AA8 @ =0x00000111
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080B2A74
_080B2A28:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080B2A30
	adds r1, #0xFF
_080B2A30:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080B2A46
	adds r0, #0xFF
_080B2A46:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080B2A5C
	adds r3, #0xFF
_080B2A5C:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080B2AB0 @ =0x00002E47
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080B2A74:
	mov r1, r10
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2A84
	cmp r1, #0x04
	bne _080B2AD2
_080B2A84:
	mov r2, r8
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2AB4
	movs r2, #0x80
	lsls r2, r2, #0x06
	mov r0, r8
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2AC0
	.byte 0x00, 0x00
_080B2AA8: .4byte 0x00000111
_080B2AAC: .4byte 0x040308A8
_080B2AB0: .4byte 0x00002E47
_080B2AB4:
	ldr r2, _080B2B00 @ =0x0000204D
	mov r0, r8
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B2AC0:
	mov r0, r8
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2AD2:
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2AE0
	cmp r1, #0x04
	bne _080B2B20
_080B2AE0:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2B04
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2B10
_080B2B00: .4byte 0x0000204D
_080B2B04:
	ldr r2, _080B2BB0 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B2B10:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2B20:
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2B38
	cmp r1, #0x04
	bne _080B2B92
_080B2B38:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080B2B40
	adds r0, #0xFF
_080B2B40:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x28
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080B2B5A
	adds r2, #0xFF
_080B2B5A:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B2B7E
	adds r0, #0xFF
_080B2B7E:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080B2B92:
	mov r3, r8
	ldr r0, [r3, #0x10]
	ldr r1, [sp, #0x014]
	str r0, [r1, #0x00]
	ldr r0, _080B2BB4 @ =0x080B2BB9
	ldr r2, [sp, #0x008]
	str r0, [r2, #0x4C]
_080B2BA0:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B2BB0: .4byte 0x0000204D
_080B2BB4: .4byte sub_80B2BB8
