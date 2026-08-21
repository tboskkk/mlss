	.syntax unified
	.text

	thumb_func_start sub_80BB8D8
sub_80BB8D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080BB9F8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x008]
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x008]
	subs r3, r3, r0
	str r3, [sp, #0x008]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	negs r0, r0
	add r0, r10
	str r0, [sp, #0x00C]
	mov r10, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080BB94A
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BB94A:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r7, r1, #0x0
	cmp r0, #0x00
	beq _080BB95A
	b _080BBD72
_080BB95A:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bge _080BB962
	movs r1, #0x00
_080BB962:
	ldr r0, _080BB9FC @ =0x00007FFF
	cmp r1, r0
	ble _080BB96A
	adds r1, r0, #0x0
_080BB96A:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080BB980
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080BB982
_080BB980:
	movs r2, #0x00
_080BB982:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r9, r3
	adds r7, r5, #0x0
	adds r7, #0xAE
	cmp r2, #0x00
	beq _080BBA64
	ldr r2, _080BB9F8 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080BBA00
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BB9B4
	movs r1, #0x80
_080BB9A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BB9A8
_080BB9B4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BB9C8
	movs r1, #0x80
_080BB9BC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BB9BC
_080BB9C8:
	mov r2, r8
	cmp r2, #0x00
	beq _080BB9DC
	movs r1, #0x80
_080BB9D0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BB9D0
_080BB9DC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BBA5C
	movs r1, #0x08
_080BB9E6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BB9F0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BB9F0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BB9E6
	b _080BBA5C
_080BB9F8: .4byte 0x03000FD8
_080BB9FC: .4byte 0x00007FFF
_080BBA00:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BBA16
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBA0A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBA0A
_080BBA16:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BBA2C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBA20:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBA20
_080BBA2C:
	mov r2, r8
	cmp r2, #0x00
	beq _080BBA42
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBA36:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBA36
_080BBA42:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BBA5C
	movs r1, #0x10
_080BBA4C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BBA56
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BBA56:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BBA4C
_080BBA5C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080BBA64:
	mov r1, r10
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r1, #0x00
	bge _080BBA70
	movs r1, #0x00
_080BBA70:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080BBA7A
	adds r1, r0, #0x0
_080BBA7A:
	ldr r0, _080BBBAC @ =0x00007FFF
	cmp r2, r0
	ble _080BBA82
	adds r2, r0, #0x0
_080BBA82:
	cmp r2, r1
	bge _080BBA88
	adds r1, r2, #0x0
_080BBA88:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080BBAA0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080BBAA2
_080BBAA0:
	movs r1, #0x00
_080BBAA2:
	cmp r1, #0x00
	beq _080BBAE0
	movs r4, #0x01
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x04
	bl sub_807E680
	ldr r0, _080BBBB0 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	ands r4, r0
	cmp r4, #0x00
	beq _080BBAE0
	movs r2, #0x08
	negs r2, r2
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	bl sub_807EAE4
	ldrh r1, [r7, #0x00]
	ldr r0, _080BBBB4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
_080BBAE0:
	ldrh r0, [r7, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080BBAEA
	b _080BBD72
_080BBAEA:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080BBBAC @ =0x00007FFF
	cmp r1, r0
	ble _080BBAF6
	adds r1, r0, #0x0
_080BBAF6:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080BBB0E
	mov r4, r9
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080BBB10
_080BBB0E:
	movs r2, #0x00
_080BBB10:
	cmp r2, #0x00
	bne _080BBB16
	b _080BBC24
_080BBB16:
	ldr r3, _080BBBB8 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldrh r1, [r7, #0x00]
	ldr r0, _080BBBB4 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BBBBC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BBB62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBB56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBB56
_080BBB62:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080BBB78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBB6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBB6C
_080BBB78:
	mov r2, r8
	cmp r2, #0x00
	beq _080BBB8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBB82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBB82
_080BBB8E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BBC18
	movs r1, #0x10
_080BBB98:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BBBA2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BBBA2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BBB98
	b _080BBC18
	.byte 0x00, 0x00
_080BBBAC: .4byte 0x00007FFF
_080BBBB0: .4byte 0x0300034C
_080BBBB4: .4byte 0x00000FFF
_080BBBB8: .4byte 0x03000FD8
_080BBBBC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BBBD2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBBC6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBBC6
_080BBBD2:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080BBBE8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBBDC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBBDC
_080BBBE8:
	mov r2, r8
	cmp r2, #0x00
	beq _080BBBFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBBF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBBF2
_080BBBFE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BBC18
	movs r1, #0x10
_080BBC08:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BBC12
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BBC12:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BBC08
_080BBC18:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080BBD72
_080BBC24:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080BBC34
	b _080BBD72
_080BBC34:
	ldr r0, _080BBCF0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080BBC4A
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080BBC4A
	b _080BBD72
_080BBC4A:
	ldr r2, _080BBCF4 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080BBD72
	ldrh r1, [r7, #0x00]
	ldr r0, _080BBCF8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BBCFC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BBCA8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBC9C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBC9C
_080BBCA8:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080BBCBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBCB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBCB2
_080BBCBE:
	mov r2, r8
	cmp r2, #0x00
	beq _080BBCD4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBCC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBCC8
_080BBCD4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BBD58
	movs r1, #0x10
_080BBCDE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BBCE8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BBCE8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BBCDE
	b _080BBD58
_080BBCF0: .4byte 0x0300034C
_080BBCF4: .4byte 0x03000FD8
_080BBCF8: .4byte 0x00000FFF
_080BBCFC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BBD12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBD06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBD06
_080BBD12:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080BBD28
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBD1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBD1C
_080BBD28:
	mov r2, r8
	cmp r2, #0x00
	beq _080BBD3E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BBD32:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BBD32
_080BBD3E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BBD58
	movs r1, #0x10
_080BBD48:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BBD52
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BBD52:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BBD48
_080BBD58:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x08
	negs r2, r2
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	bl sub_807EAE4
_080BBD72:
	ldrh r0, [r7, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	beq _080BBDE4
	ldr r2, [sp, #0x00C]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r2, #0x00
	bge _080BBD86
	movs r2, #0x00
_080BBD86:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080BBD90
	adds r2, r0, #0x0
_080BBD90:
	ldr r0, _080BBDDC @ =0x00007FFF
	cmp r3, r0
	ble _080BBD98
	adds r3, r0, #0x0
_080BBD98:
	cmp r3, r2
	bge _080BBD9E
	adds r2, r3, #0x0
_080BBD9E:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080BBDB8
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r3
	ble _080BBDBA
_080BBDB8:
	movs r2, #0x00
_080BBDBA:
	cmp r2, #0x00
	beq _080BBDE4
	cmp r1, #0x02
	bne _080BBDE4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BBDD6
	cmp r1, #0x04
	beq _080BBDD6
	b _080BBEDA
_080BBDD6:
	ldr r0, _080BBDE0 @ =0x080BD195
	str r0, [r5, #0x4C]
	b _080BBEDA
_080BBDDC: .4byte 0x00007FFF
_080BBDE0: .4byte sub_80BD194
_080BBDE4:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bge _080BBDEC
	movs r1, #0x00
_080BBDEC:
	ldr r0, _080BBEEC @ =0x00007FFF
	cmp r1, r0
	ble _080BBDF4
	adds r1, r0, #0x0
_080BBDF4:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080BBE0E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080BBE10
_080BBE0E:
	movs r2, #0x00
_080BBE10:
	cmp r2, #0x00
	beq _080BBE3E
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BBE26
	cmp r1, #0x04
	bne _080BBE3E
_080BBE26:
	ldr r2, _080BBEF0 @ =0x00002033
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BBE3E:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BBEDA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080BBE6A
	cmp r2, #0x04
	bne _080BBE82
_080BBE6A:
	ldr r2, _080BBEF0 @ =0x00002033
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BBE82:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BBE90
	cmp r2, #0x04
	bne _080BBED4
_080BBE90:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080BBE98
	adds r1, #0xFF
_080BBE98:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080BBEAE
	adds r2, #0xFF
_080BBEAE:
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
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_080BBED4:
	ldr r0, _080BBEF4 @ =0x080BBEF9
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080BBEDA:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BBEEC: .4byte 0x00007FFF
_080BBEF0: .4byte 0x00002033
_080BBEF4: .4byte sub_80BBEF8
