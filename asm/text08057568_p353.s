	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80BB798
sub_80BB798:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080BB850 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BB7C0
	cmp r1, #0x04
	bne _080BB7C4
_080BB7C0:
	ldr r0, _080BB854 @ =0x080BC235
	str r0, [r2, #0x4C]
_080BB7C4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080BB7E2
	cmp r2, #0x04
	bne _080BB7FA
_080BB7E2:
	ldr r2, _080BB858 @ =0x00002033
	adds r0, r6, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BB7FA:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BB808
	cmp r2, #0x04
	bne _080BB8AC
_080BB808:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080BB810
	adds r1, #0xFF
_080BB810:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080BB81A
	adds r2, #0xFF
_080BB81A:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080BB824
	adds r3, #0xFF
_080BB824:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	adds r3, #0x06
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080BB85C
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080BB86C
	.byte 0x00, 0x00
_080BB850: .4byte 0x03000FD8
_080BB854: .4byte sub_80BC234
_080BB858: .4byte 0x00002033
_080BB85C:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080BB86C:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080BB874
	adds r0, #0xFF
_080BB874:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080BB8C4 @ =0x03001038
	ldr r0, _080BB8C8 @ =0x0819832C
	ldr r1, _080BB8CC @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080BB88E
	adds r1, #0x3F
_080BB88E:
	asrs r1, r1, #0x06
	adds r1, #0x30
	movs r0, #0x90
	lsls r0, r0, #0x04
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_8088164
_080BB8AC:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080BB8D0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080BB8D4 @ =0x080BB8D9
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BB8C4: .4byte 0x03001038
_080BB8C8: .4byte 0x0819832C
_080BB8CC: .4byte 0x08198220
_080BB8D0: .4byte 0x00000FFF
_080BB8D4: .4byte sub_80BB8D8
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
	thumb_func_start sub_80BBEF8
sub_80BBEF8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080BC028 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r7, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, _080BC02C @ =0xFFFFFC00
	adds r1, r1, r0
	ldr r2, [r5, #0x18]
	subs r2, r2, r1
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	muls r0, r2
	cmp r0, #0x00
	bge _080BBFB2
	adds r2, r6, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080BC030 @ =0x0403228A
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080BBF7C
	ldr r2, _080BC034 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080BBFB2
_080BBF7C:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080BBF84
	adds r1, #0xFF
_080BBF84:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080BBF9A
	adds r2, #0xFF
_080BBF9A:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080BC038 @ =0x000006E3
	str r4, [sp, #0x000]
	movs r3, #0x14
	bl sub_80DF024
_080BBFB2:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BC020
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080BBFD2
	adds r1, #0xFF
_080BBFD2:
	asrs r1, r1, #0x08
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _080BBFDC
	adds r0, #0xFF
_080BBFDC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080BBFE8
	adds r3, #0xFF
_080BBFE8:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC004
	cmp r1, #0x04
	bne _080BC01C
_080BC004:
	ldr r2, _080BC03C @ =0x00002033
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BC01C:
	ldr r0, _080BC040 @ =0x080C0A59
	str r0, [r7, #0x4C]
_080BC020:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BC028: .4byte 0x03000FD8
_080BC02C: .4byte 0xFFFFFC00
_080BC030: .4byte 0x0403228A
_080BC034: .4byte 0x00000111
_080BC038: .4byte 0x000006E3
_080BC03C: .4byte 0x00002033
_080BC040: .4byte sub_80C0A58
	thumb_func_start sub_80BC044
sub_80BC044:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080BC0EC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r2, [r1, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080BC066
	b _080BC228
_080BC066:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC078
	cmp r1, #0x04
	bne _080BC0BA
_080BC078:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BC086
	adds r0, #0xFF
_080BC086:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BC094
	adds r0, #0xFF
_080BC094:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BC0A2
	adds r0, #0xFF
_080BC0A2:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080BC0BA:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080BC0CE
	cmp r2, #0x04
	bne _080BC130
_080BC0CE:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BC0F4
	ldr r2, _080BC0F0 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BC100
_080BC0EC: .4byte 0x03000FD8
_080BC0F0: .4byte 0x00002002
_080BC0F4:
	ldr r2, _080BC1CC @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BC100:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080BC116
	movs r2, #0x01
_080BC116:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BC130:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BC13E
	cmp r2, #0x04
	bne _080BC148
_080BC13E:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080BC148:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080BC15C
	cmp r2, #0x04
	bne _080BC19E
_080BC15C:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BC16A
	adds r0, #0xFF
_080BC16A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BC178
	adds r0, #0xFF
_080BC178:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BC186
	adds r0, #0xFF
_080BC186:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080BC19E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC1AC
	cmp r1, #0x04
	bne _080BC210
_080BC1AC:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BC1D4
	ldr r2, _080BC1D0 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BC1E0
	.byte 0x00, 0x00
_080BC1CC: .4byte 0x0000204F
_080BC1D0: .4byte 0x00002002
_080BC1D4:
	ldr r2, _080BC230 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BC1E0:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080BC1F6
	movs r2, #0x01
_080BC1F6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BC210:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BC21E
	cmp r2, #0x04
	bne _080BC228
_080BC21E:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080BC228:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BC230: .4byte 0x0000204F
	thumb_func_start sub_80BC234
sub_80BC234:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080BC2BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080BC256
	adds r1, #0xFF
_080BC256:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080BC260
	adds r2, #0xFF
_080BC260:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080BC26A
	adds r3, #0xFF
_080BC26A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080BC2C0 @ =0x000005DF
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC286
	cmp r1, #0x04
	bne _080BC2A2
_080BC286:
	ldr r2, _080BC2C4 @ =0x00002062
	adds r0, r4, #0x0
	movs r1, #0x03
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
_080BC2A2:
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	ldr r0, _080BC2C8 @ =0x080BC2CD
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BC2BC: .4byte 0x03000FD8
_080BC2C0: .4byte 0x000005DF
_080BC2C4: .4byte 0x00002062
_080BC2C8: .4byte sub_80BC2CC
	thumb_func_start sub_80BC2CC
sub_80BC2CC:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080BC374 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BC36C
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x53
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC304
	cmp r1, #0x04
	bne _080BC350
_080BC304:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080BC30C
	adds r0, #0xFF
_080BC30C:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x20
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080BC326
	adds r2, #0xFF
_080BC326:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x18
	adds r0, r5, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080BC350:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC362
	cmp r1, #0x04
	bne _080BC36C
_080BC362:
	ldr r0, _080BC378 @ =0x080C0A09
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_8088560
_080BC36C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BC374: .4byte 0x03000FD8
_080BC378: .4byte sub_80C0A08
	thumb_func_start sub_80BC37C
sub_80BC37C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r3, _080BC400 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC3A8
	cmp r1, #0x04
	bne _080BC3F4
_080BC3A8:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080BC3B0
	adds r1, #0xFF
_080BC3B0:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080BC3C6
	adds r2, #0xFF
_080BC3C6:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x17
	bl sub_808843C
	movs r1, #0x18
	adds r0, r4, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_8088164
_080BC3F4:
	ldr r0, _080BC404 @ =0x080BC409
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BC400: .4byte 0x03000FD8
_080BC404: .4byte sub_80BC408
	thumb_func_start sub_80BC408
sub_80BC408:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080BC4DC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	mov r0, r8
	ldr r6, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BC4D0
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC44C
	cmp r1, #0x04
	bne _080BC464
_080BC44C:
	ldr r2, _080BC4E0 @ =0x00002024
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BC464:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC476
	cmp r1, #0x04
	bne _080BC4BE
_080BC476:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080BC47E
	adds r0, #0xFF
_080BC47E:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x18
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080BC498
	adds r2, #0xFF
_080BC498:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xB3
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	bl sub_80880C4
_080BC4BE:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080BC4E4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080BC4E8 @ =0x080BC4ED
	mov r1, r8
	str r0, [r1, #0x4C]
_080BC4D0:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BC4DC: .4byte 0x03000FD8
_080BC4E0: .4byte 0x00002024
_080BC4E4: .4byte 0x00000FFF
_080BC4E8: .4byte sub_80BC4EC
	thumb_func_start sub_80BC4EC
sub_80BC4EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080BC618 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r9
	subs r2, r2, r0
	str r2, [sp, #0x00C]
	str r2, [sp, #0x008]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r9, r3
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080BC566
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BC566:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080BC576
	b _080BCA8A
_080BC576:
	mov r1, r12
	cmp r1, #0x00
	bge _080BC57E
	movs r1, #0x00
_080BC57E:
	ldr r0, _080BC61C @ =0x00007FFF
	cmp r1, r0
	ble _080BC586
	adds r1, r0, #0x0
_080BC586:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080BC59C
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080BC59E
_080BC59C:
	movs r2, #0x00
_080BC59E:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080BC684
	ldr r2, _080BC618 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080BC620
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BC5D2
	movs r1, #0x40
_080BC5C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC5C6
_080BC5D2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BC5E6
	movs r1, #0x40
_080BC5DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC5DA
_080BC5E6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BC5FA
	movs r1, #0x40
_080BC5EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC5EE
_080BC5FA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BC67C
	movs r1, #0x04
_080BC604:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BC60E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BC60E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BC604
	b _080BC67C
	.byte 0x00, 0x00
_080BC618: .4byte 0x03000FD8
_080BC61C: .4byte 0x00007FFF
_080BC620:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BC636
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC62A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC62A
_080BC636:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BC64C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC640:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC640
_080BC64C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BC662
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC656:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC656
_080BC662:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BC67C
	movs r1, #0x10
_080BC66C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BC676
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BC676:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BC66C
_080BC67C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080BC684:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080BC68E
	movs r1, #0x00
_080BC68E:
	mov r3, r9
	cmp r3, #0x00
	bge _080BC696
	movs r2, #0x00
_080BC696:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080BC6A0
	adds r1, r0, #0x0
_080BC6A0:
	ldr r0, _080BC788 @ =0x00007FFF
	cmp r2, r0
	ble _080BC6A8
	adds r2, r0, #0x0
_080BC6A8:
	cmp r2, r1
	bge _080BC6AE
	adds r1, r2, #0x0
_080BC6AE:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080BC6C6
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080BC6C8
_080BC6C6:
	movs r1, #0x00
_080BC6C8:
	cmp r1, #0x00
	bne _080BC6CE
	b _080BC80A
_080BC6CE:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080BC78C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080BC6EC
	b _080BC80A
_080BC6EC:
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080BC790 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080BC7F6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BC794
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080BC740
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC734:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC734
_080BC740:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BC756
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC74A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC74A
_080BC756:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BC76C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC760:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC760
_080BC76C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BC7F2
	movs r1, #0x10
_080BC776:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BC780
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BC780:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BC776
	b _080BC7F2
_080BC788: .4byte 0x00007FFF
_080BC78C: .4byte 0x0300034C
_080BC790: .4byte 0x03000FD8
_080BC794:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080BC7AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC7A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC7A0
_080BC7AC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BC7C2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC7B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC7B6
_080BC7C2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BC7D8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC7CC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC7CC
_080BC7D8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BC7F2
	movs r1, #0x10
_080BC7E2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BC7EC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BC7EC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BC7E2
_080BC7F2:
	bl sub_807F448
_080BC7F6:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080BC8E0 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080BC80A:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080BC816
	b _080BCA8A
_080BC816:
	mov r1, r9
	cmp r1, #0x00
	bge _080BC81E
	movs r1, #0x00
_080BC81E:
	ldr r0, _080BC8E4 @ =0x00007FFF
	cmp r1, r0
	ble _080BC826
	adds r1, r0, #0x0
_080BC826:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080BC83E
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080BC840
_080BC83E:
	movs r2, #0x00
_080BC840:
	cmp r2, #0x00
	bne _080BC846
	b _080BC954
_080BC846:
	ldr r3, _080BC8E8 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080BC8E0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BC8EC
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BC896
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC88A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC88A
_080BC896:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BC8AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC8A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC8A0
_080BC8AC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BC8C2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC8B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC8B6
_080BC8C2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BC948
	movs r1, #0x10
_080BC8CC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BC8D6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BC8D6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BC8CC
	b _080BC948
	.byte 0x00, 0x00
_080BC8E0: .4byte 0x00000FFF
_080BC8E4: .4byte 0x00007FFF
_080BC8E8: .4byte 0x03000FD8
_080BC8EC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BC902
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC8F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC8F6
_080BC902:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BC918
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC90C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC90C
_080BC918:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BC92E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC922:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC922
_080BC92E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BC948
	movs r1, #0x10
_080BC938:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BC942
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BC942:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BC938
_080BC948:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080BCA8A
_080BC954:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080BC960
	b _080BCA8A
_080BC960:
	ldr r0, _080BCA18 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080BC96E
	b _080BCA8A
_080BC96E:
	ldr r2, _080BCA1C @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080BCA8A
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080BCA20 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BCA24
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BC9D0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC9C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC9C4
_080BC9D0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BC9E6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC9DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC9DA
_080BC9E6:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BC9FC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BC9F0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BC9F0
_080BC9FC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BCA80
	movs r1, #0x10
_080BCA06:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BCA10
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BCA10:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BCA06
	b _080BCA80
_080BCA18: .4byte 0x0300034C
_080BCA1C: .4byte 0x03000FD8
_080BCA20: .4byte 0x00000FFF
_080BCA24:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BCA3A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BCA2E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BCA2E
_080BCA3A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BCA50
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BCA44:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BCA44
_080BCA50:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BCA66
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BCA5A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BCA5A
_080BCA66:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BCA80
	movs r1, #0x10
_080BCA70:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BCA7A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BCA7A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BCA70
_080BCA80:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
_080BCA8A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080BCB04
	ldr r1, [sp, #0x00C]
	mov r2, r9
	cmp r1, #0x00
	bge _080BCA9E
	movs r1, #0x00
_080BCA9E:
	cmp r2, #0x00
	bge _080BCAA4
	movs r2, #0x00
_080BCAA4:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080BCAAE
	adds r1, r0, #0x0
_080BCAAE:
	ldr r0, _080BCAF8 @ =0x00007FFF
	cmp r2, r0
	ble _080BCAB6
	adds r2, r0, #0x0
_080BCAB6:
	cmp r2, r1
	bge _080BCABC
	adds r1, r2, #0x0
_080BCABC:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080BCAD6
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080BCAD8
_080BCAD6:
	movs r1, #0x00
_080BCAD8:
	cmp r1, #0x00
	beq _080BCB04
	cmp r3, #0x01
	ble _080BCB04
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080BCAFC @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080BCB00 @ =0x080BD9FD
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080BCBE0
_080BCAF8: .4byte 0x00007FFF
_080BCAFC: .4byte 0x00000FFF
_080BCB00: .4byte sub_80BD9FC
_080BCB04:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BCBE0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080BCB30
	cmp r2, #0x04
	bne _080BCB48
_080BCB30:
	ldr r2, _080BCBF0 @ =0x00002062
	adds r0, r5, #0x0
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BCB48:
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BCB62
	cmp r2, #0x04
	bne _080BCB66
_080BCB62:
	ldr r0, _080BCBF4 @ =0x080C09AD
	str r0, [r5, #0x4C]
_080BCB66:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080BCB84
	cmp r2, #0x04
	bne _080BCB9C
_080BCB84:
	ldr r2, _080BCBF8 @ =0x00002024
	adds r0, r6, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BCB9C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BCBAA
	cmp r2, #0x04
	bne _080BCBDA
_080BCBAA:
	ldr r2, _080BCBFC @ =0x03001038
	ldr r0, _080BCC00 @ =0x0819832C
	ldr r1, _080BCC04 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x05
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BCBDA:
	ldr r0, _080BCC08 @ =0x080BCC0D
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080BCBE0:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BCBF0: .4byte 0x00002062
_080BCBF4: .4byte sub_80C09AC
_080BCBF8: .4byte 0x00002024
_080BCBFC: .4byte 0x03001038
_080BCC00: .4byte 0x0819832C
_080BCC04: .4byte 0x08198220
_080BCC08: .4byte sub_80BCC0C
	thumb_func_start sub_80BCC0C
sub_80BCC0C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080BCCC8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BCCC0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7E
	bl play_sfx_80195B4
	adds r2, r4, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080BCCCC @ =0x0403238A
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080BCC86
	ldr r2, _080BCCD0 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080BCCBC
_080BCC86:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080BCC8E
	adds r1, #0xFF
_080BCC8E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080BCCA4
	adds r2, #0xFF
_080BCCA4:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r5, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080BCCBC:
	ldr r0, _080BCCD4 @ =0x080BCCD9
	str r0, [r7, #0x4C]
_080BCCC0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BCCC8: .4byte 0x03000FD8
_080BCCCC: .4byte 0x0403238A
_080BCCD0: .4byte 0x00000111
_080BCCD4: .4byte sub_80BCCD8
	thumb_func_start sub_80BCCD8
sub_80BCCD8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080BCD94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BCDB8
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BCD06
	cmp r1, #0x04
	bne _080BCD60
_080BCD06:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080BCD0E
	adds r0, #0xFF
_080BCD0E:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x20
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080BCD28
	adds r2, #0xFF
_080BCD28:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080BCD4C
	adds r0, #0xFF
_080BCD4C:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
_080BCD60:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BCD72
	cmp r1, #0x04
	bne _080BCDB4
_080BCD72:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BCD98
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080BCDA4
	.byte 0x00, 0x00
_080BCD94: .4byte 0x03000FD8
_080BCD98:
	ldr r2, _080BCDC0 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080BCDA4:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BCDB4:
	ldr r0, _080BCDC4 @ =0x080BCDC9
	str r0, [r6, #0x4C]
_080BCDB8:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BCDC0: .4byte 0x0000204D
_080BCDC4: .4byte sub_80BCDC8
	thumb_func_start sub_80BCDC8
sub_80BCDC8:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080BCE24 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BCE48
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2E
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BCE08
	cmp r1, #0x04
	bne _080BCE44
_080BCE08:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r6
	bne _080BCE28
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080BCE34
_080BCE24: .4byte 0x03000FD8
_080BCE28:
	ldr r2, _080BCE50 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080BCE34:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BCE44:
	ldr r0, _080BCE54 @ =0x080BCE59
	str r0, [r7, #0x4C]
_080BCE48:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BCE50: .4byte 0x0000204D
_080BCE54: .4byte sub_80BCE58
	thumb_func_start sub_80BCE58
sub_80BCE58:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080BCEF8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BCF54
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BCE84
	cmp r1, #0x04
	bne _080BCEC6
_080BCE84:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BCE92
	adds r0, #0xFF
_080BCE92:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BCEA0
	adds r0, #0xFF
_080BCEA0:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BCEAE
	adds r0, #0xFF
_080BCEAE:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080BCEC6:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080BCEDA
	cmp r2, #0x04
	bne _080BCF3C
_080BCEDA:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BCF00
	ldr r2, _080BCEFC @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BCF0C
_080BCEF8: .4byte 0x03000FD8
_080BCEFC: .4byte 0x00002002
_080BCF00:
	ldr r2, _080BCF5C @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BCF0C:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080BCF22
	movs r2, #0x01
_080BCF22:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BCF3C:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BCF4A
	cmp r2, #0x04
	bne _080BCF54
_080BCF4A:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080BCF54:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BCF5C: .4byte 0x0000204F
	thumb_func_start sub_80BCF60
sub_80BCF60:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r7, _080BD014 @ =0x03000FD8
	ldr r3, [r7, #0x00]
	ldr r2, [r3, #0x74]
	adds r6, r2, #0x0
	adds r6, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BD05E
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BCF92
	cmp r1, #0x04
	bne _080BCFE4
_080BCF92:
	ldr r5, [r6, #0x3C]
	cmp r5, #0x00
	bge _080BCF9A
	adds r5, #0xFF
_080BCF9A:
	asrs r5, r5, #0x08
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r4, r4, r2
	ldr r0, [r7, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r5
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080BCFE4:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BCFF6
	cmp r1, #0x04
	bne _080BD058
_080BCFF6:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BD01C
	ldr r2, _080BD018 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BD028
_080BD014: .4byte 0x03000FD8
_080BD018: .4byte 0x00002002
_080BD01C:
	ldr r2, _080BD06C @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BD028:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080BD03E
	movs r2, #0x01
_080BD03E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BD058:
	ldr r0, _080BD070 @ =0x080BD075
	mov r1, r8
	str r0, [r1, #0x4C]
_080BD05E:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BD06C: .4byte 0x0000204F
_080BD070: .4byte sub_80BD074
	thumb_func_start sub_80BD074
sub_80BD074:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080BD128 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BD188
	ldr r0, [r4, #0x10]
	ldr r1, _080BD12C @ =0xFFFED000
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r0, [r4, #0x38]
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD0B2
	cmp r1, #0x04
	bne _080BD0F4
_080BD0B2:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD0C0
	adds r0, #0xFF
_080BD0C0:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD0CE
	adds r0, #0xFF
_080BD0CE:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD0DC
	adds r0, #0xFF
_080BD0DC:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080BD0F4:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080BD108
	cmp r2, #0x04
	bne _080BD170
_080BD108:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BD134
	ldr r2, _080BD130 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BD140
	.byte 0x00, 0x00
_080BD128: .4byte 0x03000FD8
_080BD12C: .4byte 0xFFFED000
_080BD130: .4byte 0x00002002
_080BD134:
	ldr r2, _080BD190 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BD140:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080BD156
	movs r2, #0x01
_080BD156:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BD170:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BD17E
	cmp r2, #0x04
	bne _080BD188
_080BD17E:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080BD188:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BD190: .4byte 0x0000204F
	thumb_func_start sub_80BD194
sub_80BD194:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080BD294 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	adds r5, r3, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x2C]
	ldr r0, [r4, #0x28]
	ldr r1, _080BD298 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080BD29C @ =0x0403248A
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080BD1FE
	ldr r2, _080BD298 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080BD234
_080BD1FE:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080BD206
	adds r1, #0xFF
_080BD206:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080BD21C
	adds r2, #0xFF
_080BD21C:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080BD2A0 @ =0x00000733
	str r4, [sp, #0x000]
	movs r3, #0x10
	bl sub_80DF024
_080BD234:
	adds r1, r5, #0x0
	adds r1, #0xA8
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0xA0
	lsls r2, r2, #0x0A
	adds r0, r0, r2
	str r0, [r1, #0x00]
	subs r1, #0x04
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD260
	cmp r1, #0x04
	bne _080BD278
_080BD260:
	ldr r2, _080BD2A4 @ =0x00002033
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BD278:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x04
	bl sub_807E680
	ldr r0, _080BD2A8 @ =0x080BD2AD
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BD294: .4byte 0x03000FD8
_080BD298: .4byte 0x00000111
_080BD29C: .4byte 0x0403248A
_080BD2A0: .4byte 0x00000733
_080BD2A4: .4byte 0x00002033
_080BD2A8: .4byte sub_80BD2AC
	thumb_func_start sub_80BD2AC
sub_80BD2AC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080BD360 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r3, [r5, #0x2C]
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD2CE
	cmp r1, #0x04
	bne _080BD302
_080BD2CE:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080BD2D6
	adds r1, #0xFF
_080BD2D6:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080BD2E0
	adds r2, #0xFF
_080BD2E0:
	asrs r2, r2, #0x08
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _080BD2EA
	adds r3, #0xFF
_080BD2EA:
	asrs r3, r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080BD302:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD314
	cmp r1, #0x04
	bne _080BD344
_080BD314:
	ldr r2, _080BD364 @ =0x03001038
	ldr r0, _080BD368 @ =0x0819832C
	ldr r1, _080BD36C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x32
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BD344:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x04
	bl sub_807E680
	ldr r0, _080BD370 @ =0x080BD375
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080BD360: .4byte 0x03000FD8
_080BD364: .4byte 0x03001038
_080BD368: .4byte 0x0819832C
_080BD36C: .4byte 0x08198220
_080BD370: .4byte sub_80BD374
	thumb_func_start sub_80BD374
sub_80BD374:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080BD53C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x04
	bl sub_807E680
	ldr r0, _080BD540 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080BD3C0
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
_080BD3C0:
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r5, #0x0
	adds r2, #0xAC
	cmp r1, r0
	bne _080BD3DA
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bgt _080BD3E8
_080BD3DA:
	ldr r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xB0
	adds r3, r5, #0x0
	adds r3, #0x86
	cmp r0, #0x02
	ble _080BD494
_080BD3E8:
	movs r2, #0x08
	negs r2, r2
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x02
	adds r1, r4, #0x0
	bl sub_807EAE4
	adds r2, r4, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080BD544 @ =0x0403248A
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r4, #0x24]
	adds r0, #0x01
	strh r0, [r4, #0x24]
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bgt _080BD442
	ldr r2, _080BD548 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080BD478
_080BD442:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080BD44A
	adds r1, #0xFF
_080BD44A:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080BD460
	adds r2, #0xFF
_080BD460:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080BD54C @ =0x00000733
	str r7, [sp, #0x000]
	movs r3, #0x10
	bl sub_80DF024
_080BD478:
	adds r2, r4, #0x0
	adds r2, #0xA8
	adds r3, r4, #0x0
	adds r3, #0x7E
	movs r5, #0x00
	ldsh r0, [r3, r5]
	movs r1, #0xA0
	lsls r1, r1, #0x0A
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA4
	movs r0, #0x00
	str r0, [r1, #0x00]
_080BD494:
	movs r5, #0x00
	ldsh r1, [r3, r5]
	ldr r0, [r2, #0x00]
	movs r2, #0x79
	adds r2, r2, r4
	mov r12, r2
	cmp r0, r1
	bge _080BD4AC
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080BD4AC:
	mov r5, r12
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080BD4BA
	b _080BD84E
_080BD4BA:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r2, _080BD53C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BD550
	adds r1, r4, #0x0
	adds r3, r2, #0x0
	adds r5, r6, #0x0
	adds r5, #0x76
	movs r0, #0x76
	adds r0, r0, r4
	mov r8, r0
	cmp r4, #0x00
	beq _080BD4F4
	movs r2, #0x80
	lsls r2, r2, #0x01
_080BD4E8:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080BD4E8
_080BD4F4:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080BD50A
	movs r2, #0x80
	lsls r2, r2, #0x01
_080BD4FE:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080BD4FE
_080BD50A:
	adds r1, r7, #0x0
	cmp r7, #0x00
	beq _080BD520
	movs r2, #0x80
	lsls r2, r2, #0x01
_080BD514:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080BD514
_080BD520:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080BD5B8
	movs r2, #0x10
_080BD52A:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080BD534
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080BD534:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080BD52A
	b _080BD5B8
_080BD53C: .4byte 0x03000FD8
_080BD540: .4byte 0x0300034C
_080BD544: .4byte 0x0403248A
_080BD548: .4byte 0x00000111
_080BD54C: .4byte 0x00000733
_080BD550:
	adds r1, r4, #0x0
	adds r3, r2, #0x0
	adds r5, r6, #0x0
	adds r5, #0x76
	movs r2, #0x76
	adds r2, r2, r4
	mov r8, r2
	cmp r4, #0x00
	beq _080BD572
	movs r2, #0x80
	lsls r2, r2, #0x01
_080BD566:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080BD566
_080BD572:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080BD588
	movs r2, #0x80
	lsls r2, r2, #0x01
_080BD57C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080BD57C
_080BD588:
	adds r1, r7, #0x0
	cmp r7, #0x00
	beq _080BD59E
	movs r2, #0x80
	lsls r2, r2, #0x01
_080BD592:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080BD592
_080BD59E:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080BD5B8
	movs r2, #0x10
_080BD5A8:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080BD5B2
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080BD5B2:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080BD5A8
_080BD5B8:
	bl sub_807F448
	adds r0, r4, #0x0
	bl sub_807EA24
	ldr r0, [r7, #0x28]
	ldr r1, _080BD660 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _080BD5E4
	adds r0, r7, #0x0
	bl sub_8086700
_080BD5E4:
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD5F2
	cmp r1, #0x04
	bne _080BD634
_080BD5F2:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD600
	adds r0, #0xFF
_080BD600:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD60E
	adds r0, #0xFF
_080BD60E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD61C
	adds r0, #0xFF
_080BD61C:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080BD634:
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD642
	cmp r1, #0x04
	bne _080BD6A4
_080BD642:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BD668
	ldr r2, _080BD664 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BD674
_080BD660: .4byte 0x00000111
_080BD664: .4byte 0x00002002
_080BD668:
	ldr r2, _080BD744 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BD674:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080BD68A
	movs r2, #0x01
_080BD68A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BD6A4:
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD6B2
	cmp r1, #0x04
	bne _080BD6BC
_080BD6B2:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080BD6BC:
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bne _080BD7A8
	mov r1, r8
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD6D2
	cmp r1, #0x04
	bne _080BD714
_080BD6D2:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD6E0
	adds r0, #0xFF
_080BD6E0:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD6EE
	adds r0, #0xFF
_080BD6EE:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD6FC
	adds r0, #0xFF
_080BD6FC:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080BD714:
	mov r2, r8
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD724
	cmp r1, #0x04
	bne _080BD788
_080BD724:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BD74C
	ldr r2, _080BD748 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BD758
	.byte 0x00, 0x00
_080BD744: .4byte 0x0000204F
_080BD748: .4byte 0x00002002
_080BD74C:
	ldr r2, _080BD7A4 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BD758:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080BD76E
	movs r2, #0x01
_080BD76E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BD788:
	mov r7, r8
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD798
	cmp r1, #0x04
	bne _080BD84E
_080BD798:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
	b _080BD84E
_080BD7A4: .4byte 0x0000204F
_080BD7A8:
	mov r1, r8
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD7B8
	cmp r1, #0x04
	bne _080BD7FC
_080BD7B8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080BD7C0
	adds r1, #0xFF
_080BD7C0:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080BD7D6
	adds r2, #0xFF
_080BD7D6:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_080BD7FC:
	mov r2, r8
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD80C
	cmp r1, #0x04
	bne _080BD848
_080BD80C:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BD82C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080BD838
_080BD82C:
	ldr r2, _080BD85C @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080BD838:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BD848:
	ldr r0, _080BD860 @ =0x080BD865
	mov r7, r9
	str r0, [r7, #0x4C]
_080BD84E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BD85C: .4byte 0x0000204D
_080BD860: .4byte sub_80BD864
	thumb_func_start sub_80BD864
sub_80BD864:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080BD8C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BD8E4
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2E
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD8A4
	cmp r1, #0x04
	bne _080BD8E0
_080BD8A4:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r6
	bne _080BD8C4
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080BD8D0
_080BD8C0: .4byte 0x03000FD8
_080BD8C4:
	ldr r2, _080BD8EC @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080BD8D0:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BD8E0:
	ldr r0, _080BD8F0 @ =0x080BD8F5
	str r0, [r7, #0x4C]
_080BD8E4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BD8EC: .4byte 0x0000204D
_080BD8F0: .4byte sub_80BD8F4
	thumb_func_start sub_80BD8F4
sub_80BD8F4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080BD994 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BD9F0
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD920
	cmp r1, #0x04
	bne _080BD962
_080BD920:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD92E
	adds r0, #0xFF
_080BD92E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD93C
	adds r0, #0xFF
_080BD93C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD94A
	adds r0, #0xFF
_080BD94A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080BD962:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080BD976
	cmp r2, #0x04
	bne _080BD9D8
_080BD976:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BD99C
	ldr r2, _080BD998 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BD9A8
_080BD994: .4byte 0x03000FD8
_080BD998: .4byte 0x00002002
_080BD99C:
	ldr r2, _080BD9F8 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BD9A8:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080BD9BE
	movs r2, #0x01
_080BD9BE:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BD9D8:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BD9E6
	cmp r2, #0x04
	bne _080BD9F0
_080BD9E6:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080BD9F0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BD9F8: .4byte 0x0000204F
	thumb_func_start sub_80BD9FC
sub_80BD9FC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080BDAEC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r3, [r7, #0x2C]
	ldr r0, [r3, #0x28]
	ldr r1, _080BDAF0 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xA8
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, [r3, #0x40]
	cmp r0, #0x00
	bne _080BDA40
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BDA3C
	cmp r1, #0x04
	bne _080BDA40
_080BDA3C:
	ldr r0, _080BDAF4 @ =0x080BE729
	str r0, [r3, #0x4C]
_080BDA40:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080BDA48
	adds r1, #0xFF
_080BDA48:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080BDA52
	adds r2, #0xFF
_080BDA52:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080BDA5C
	adds r3, #0xFF
_080BDA5C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080BDAF8 @ =0x000005DF
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080BDA7A
	cmp r2, #0x04
	bne _080BDA96
_080BDA7A:
	ldr r2, _080BDAFC @ =0x00002062
	adds r0, r4, #0x0
	movs r1, #0x04
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
_080BDA96:
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r5, #0x00
	strb r5, [r0, #0x00]
	adds r0, #0x01
	strb r5, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BDAB0
	cmp r2, #0x04
	bne _080BDAE0
_080BDAB0:
	ldr r2, _080BDB00 @ =0x03001038
	ldr r0, _080BDB04 @ =0x0819832C
	ldr r1, _080BDB08 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BDAE0:
	ldr r0, _080BDB0C @ =0x080BDB11
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BDAEC: .4byte 0x03000FD8
_080BDAF0: .4byte 0x00000111
_080BDAF4: .4byte sub_80BE728
_080BDAF8: .4byte 0x000005DF
_080BDAFC: .4byte 0x00002062
_080BDB00: .4byte 0x03001038
_080BDB04: .4byte 0x0819832C
_080BDB08: .4byte 0x08198220
_080BDB0C: .4byte sub_80BDB10
	thumb_func_start sub_80BDB10
sub_80BDB10:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080BDC04 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080BDB66
	ldr r1, [r5, #0x40]
	lsls r1, r1, #0x06
	adds r0, r4, #0x0
	adds r0, #0xCD
	movs r2, #0x00
	ldsb r2, [r0, r2]
	subs r0, #0x47
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r2
	cmp r1, r0
	bge _080BDB66
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BDB62
	cmp r1, #0x04
	bne _080BDB66
_080BDB62:
	ldr r0, _080BDC08 @ =0x080BE729
	str r0, [r5, #0x4C]
_080BDB66:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r7, #0x20
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080BDC2E
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080BDB8A
	cmp r2, #0x04
	bne _080BDBD4
_080BDB8A:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080BDB92
	adds r1, #0xFF
_080BDB92:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080BDBA8
	adds r2, #0xFF
_080BDBA8:
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
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r7, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080BDBD4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BDBE2
	cmp r2, #0x04
	bne _080BDC28
_080BDBE2:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BDC0C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080BDC18
	.byte 0x00, 0x00
_080BDC04: .4byte 0x03000FD8
_080BDC08: .4byte sub_80BE728
_080BDC0C:
	ldr r2, _080BDC3C @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080BDC18:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BDC28:
	ldr r0, _080BDC40 @ =0x080BDC45
	mov r3, r8
	str r0, [r3, #0x4C]
_080BDC2E:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BDC3C: .4byte 0x0000204D
_080BDC40: .4byte sub_80BDC44
	thumb_func_start sub_80BDC44
sub_80BDC44:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r0, _080BDD08 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r0, [r0, #0x2C]
	mov r8, r0
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080BDD0C @ =0x03001038
	ldr r2, _080BDD10 @ =0x0819832C
	ldr r3, _080BDD14 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080BDCA2
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080BDCA4
_080BDCA2:
	movs r1, #0x00
_080BDCA4:
	mov r4, r8
	adds r4, #0xA8
	cmp r1, #0x00
	beq _080BDD38
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080BDCD4
	movs r0, #0x00
	str r0, [r4, #0x00]
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x08
	bl sub_807EAE4
	mov r2, r8
	ldr r0, [r2, #0x28]
	ldr r1, _080BDD18 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BDCD4:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BDCE6
	cmp r1, #0x04
	bne _080BDD38
_080BDCE6:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BDD1C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080BDD28
	.byte 0x00, 0x00
_080BDD08: .4byte 0x03000FD8
_080BDD0C: .4byte 0x03001038
_080BDD10: .4byte 0x0819832C
_080BDD14: .4byte 0x08198220
_080BDD18: .4byte 0x00000111
_080BDD1C:
	ldr r2, _080BDE3C @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080BDD28:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BDD38:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080BDD6C
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [r6, #0x18]
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2, #0x40]
	cmp r0, r1
	bge _080BDD6C
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BDD66
	cmp r1, #0x04
	bne _080BDD6C
_080BDD66:
	ldr r0, _080BDE40 @ =0x080BE729
	mov r1, r8
	str r0, [r1, #0x4C]
_080BDD6C:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BDE2E
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BDD8C
	cmp r1, #0x04
	bne _080BDDB2
_080BDD8C:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BDDB2:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080BDDC6
	cmp r2, #0x04
	bne _080BDDDE
_080BDDC6:
	ldr r2, _080BDE44 @ =0x00002024
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BDDDE:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BDDEC
	cmp r2, #0x04
	bne _080BDE1C
_080BDDEC:
	ldr r2, _080BDE48 @ =0x03001038
	ldr r0, _080BDE4C @ =0x0819832C
	ldr r1, _080BDE50 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
	bl _call_via_r2
	adds r2, r7, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BDE1C:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080BDE54 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080BDE58 @ =0x080BDE5D
	mov r2, r9
	str r0, [r2, #0x4C]
_080BDE2E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BDE3C: .4byte 0x0000204D
_080BDE40: .4byte sub_80BE728
_080BDE44: .4byte 0x00002024
_080BDE48: .4byte 0x03001038
_080BDE4C: .4byte 0x0819832C
_080BDE50: .4byte 0x08198220
_080BDE54: .4byte 0x00000FFF
_080BDE58: .4byte sub_80BDE5C
	thumb_func_start sub_80BDE5C
sub_80BDE5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080BDF44 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080BDEA2
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BDEA2:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080BDEB2
	b _080BE3D0
_080BDEB2:
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080BDECA
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080BDECC
_080BDECA:
	movs r1, #0x00
_080BDECC:
	movs r2, #0x7E
	adds r2, r2, r5
	mov r10, r2
	movs r3, #0xAE
	adds r3, r3, r5
	mov r8, r3
	cmp r1, #0x00
	beq _080BDFAC
	ldr r2, _080BDF44 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080BDF48
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BDF00
	movs r1, #0x40
_080BDEF4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BDEF4
_080BDF00:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BDF14
	movs r1, #0x40
_080BDF08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BDF08
_080BDF14:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BDF28
	movs r1, #0x40
_080BDF1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BDF1C
_080BDF28:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BDFA4
	movs r1, #0x04
_080BDF32:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BDF3C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BDF3C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BDF32
	b _080BDFA4
_080BDF44: .4byte 0x03000FD8
_080BDF48:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BDF5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BDF52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BDF52
_080BDF5E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BDF74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BDF68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BDF68
_080BDF74:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BDF8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BDF7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BDF7E
_080BDF8A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BDFA4
	movs r1, #0x10
_080BDF94:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BDF9E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BDF9E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BDF94
_080BDFA4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080BDFAC:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080BDFBC
	adds r1, r0, #0x0
_080BDFBC:
	ldr r0, _080BE0B4 @ =0x00007FFF
	cmp r2, r0
	ble _080BDFC4
	adds r2, r0, #0x0
_080BDFC4:
	cmp r2, r1
	bge _080BDFCA
	adds r1, r2, #0x0
_080BDFCA:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080BDFE2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080BDFE4
_080BDFE2:
	movs r1, #0x00
_080BDFE4:
	cmp r1, #0x00
	bne _080BDFEA
	b _080BE136
_080BDFEA:
	movs r2, #0x18
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080BE0B8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080BE00A
	b _080BE136
_080BE00A:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r3, #0x10
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080BE0BC @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080BE122
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BE0C0
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080BE06C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE060:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE060
_080BE06C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BE082
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE076:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE076
_080BE082:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BE098
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE08C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE08C
_080BE098:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BE11E
	movs r1, #0x10
_080BE0A2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BE0AC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BE0AC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BE0A2
	b _080BE11E
_080BE0B4: .4byte 0x00007FFF
_080BE0B8: .4byte 0x0300034C
_080BE0BC: .4byte 0x03000FD8
_080BE0C0:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080BE0D8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE0CC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE0CC
_080BE0D8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BE0EE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE0E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE0E2
_080BE0EE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BE104
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE0F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE0F8
_080BE104:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BE11E
	movs r1, #0x10
_080BE10E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BE118
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BE118:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BE10E
_080BE11E:
	bl sub_807F448
_080BE122:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080BE208 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080BE136:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080BE142
	b _080BE3D0
_080BE142:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080BE20C @ =0x00007FFF
	cmp r1, r0
	ble _080BE14E
	adds r1, r0, #0x0
_080BE14E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080BE166
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080BE168
_080BE166:
	movs r2, #0x00
_080BE168:
	cmp r2, #0x00
	bne _080BE16E
	b _080BE27C
_080BE16E:
	ldr r3, _080BE210 @ =0x03000FD8
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
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080BE208 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BE214
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BE1BE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE1B2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE1B2
_080BE1BE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BE1D4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE1C8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE1C8
_080BE1D4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BE1EA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE1DE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE1DE
_080BE1EA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BE270
	movs r1, #0x10
_080BE1F4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BE1FE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BE1FE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BE1F4
	b _080BE270
	.byte 0x00, 0x00
_080BE208: .4byte 0x00000FFF
_080BE20C: .4byte 0x00007FFF
_080BE210: .4byte 0x03000FD8
_080BE214:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BE22A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE21E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE21E
_080BE22A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BE240
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE234:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE234
_080BE240:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BE256
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE24A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE24A
_080BE256:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BE270
	movs r1, #0x10
_080BE260:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BE26A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BE26A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BE260
_080BE270:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080BE3D0
_080BE27C:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080BE28C
	b _080BE3D0
_080BE28C:
	ldr r0, _080BE350 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080BE2A2
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080BE2A2
	b _080BE3D0
_080BE2A2:
	ldr r2, _080BE354 @ =0x03000FD8
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
	beq _080BE2D2
	b _080BE3D0
_080BE2D2:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080BE358 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BE35C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BE306
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE2FA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE2FA
_080BE306:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BE31C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE310:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE310
_080BE31C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BE332
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE326:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE326
_080BE332:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BE3B8
	movs r1, #0x10
_080BE33C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BE346
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BE346:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BE33C
	b _080BE3B8
	.byte 0x00, 0x00
_080BE350: .4byte 0x0300034C
_080BE354: .4byte 0x03000FD8
_080BE358: .4byte 0x00000FFF
_080BE35C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BE372
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE366:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE366
_080BE372:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BE388
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE37C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE37C
_080BE388:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BE39E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BE392:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BE392
_080BE39E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BE3B8
	movs r1, #0x10
_080BE3A8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BE3B2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BE3B2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BE3A8
_080BE3B8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x10
	bl sub_807EAE4
_080BE3D0:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080BE440
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080BE3EA
	adds r1, r0, #0x0
_080BE3EA:
	ldr r0, _080BE434 @ =0x00007FFF
	cmp r2, r0
	ble _080BE3F2
	adds r2, r0, #0x0
_080BE3F2:
	cmp r2, r1
	bge _080BE3F8
	adds r1, r2, #0x0
_080BE3F8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080BE412
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080BE414
_080BE412:
	movs r1, #0x00
_080BE414:
	cmp r1, #0x00
	beq _080BE440
	cmp r3, #0x01
	ble _080BE440
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080BE438 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080BE43C @ =0x080BE9F5
	mov r3, r9
	str r1, [r3, #0x4C]
	mov r0, r9
	bl _call_via_r1
	b _080BE49C
_080BE434: .4byte 0x00007FFF
_080BE438: .4byte 0x00000FFF
_080BE43C: .4byte sub_80BE9F4
_080BE440:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BE49C
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BE460
	cmp r1, #0x04
	bne _080BE464
_080BE460:
	ldr r0, _080BE4AC @ =0x080C0931
	str r0, [r6, #0x4C]
_080BE464:
	mov r9, r5
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BE478
	cmp r1, #0x04
	bne _080BE496
_080BE478:
	ldr r2, _080BE4B0 @ =0x00002024
	mov r0, r9
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	mov r4, r9
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BE496:
	ldr r0, _080BE4B4 @ =0x080BE4B9
	mov r1, r9
	str r0, [r1, #0x4C]
_080BE49C:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BE4AC: .4byte sub_80C0930
_080BE4B0: .4byte 0x00002024
_080BE4B4: .4byte sub_80BE4B8
	thumb_func_start sub_80BE4B8
sub_80BE4B8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080BE55C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BE580
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BE4E6
	cmp r1, #0x04
	bne _080BE52A
_080BE4E6:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080BE4EE
	adds r1, #0xFF
_080BE4EE:
	asrs r1, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080BE504
	adds r2, #0xFF
_080BE504:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_080BE52A:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BE53C
	cmp r1, #0x04
	bne _080BE57C
_080BE53C:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BE560
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080BE56C
_080BE55C: .4byte 0x03000FD8
_080BE560:
	ldr r2, _080BE588 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080BE56C:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BE57C:
	ldr r0, _080BE58C @ =0x080BE591
	str r0, [r5, #0x4C]
_080BE580:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080BE588: .4byte 0x0000204D
_080BE58C: .4byte sub_80BE590
	thumb_func_start sub_80BE590
sub_80BE590:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080BE5EC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BE610
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2E
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BE5D0
	cmp r1, #0x04
	bne _080BE60C
_080BE5D0:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r6
	bne _080BE5F0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080BE5FC
_080BE5EC: .4byte 0x03000FD8
_080BE5F0:
	ldr r2, _080BE618 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080BE5FC:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BE60C:
	ldr r0, _080BE61C @ =0x080BE621
	str r0, [r7, #0x4C]
_080BE610:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BE618: .4byte 0x0000204D
_080BE61C: .4byte sub_80BE620
	thumb_func_start sub_80BE620
sub_80BE620:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080BE6C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BE71C
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BE64C
	cmp r1, #0x04
	bne _080BE68E
_080BE64C:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BE65A
	adds r0, #0xFF
_080BE65A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BE668
	adds r0, #0xFF
_080BE668:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BE676
	adds r0, #0xFF
_080BE676:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080BE68E:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080BE6A2
	cmp r2, #0x04
	bne _080BE704
_080BE6A2:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BE6C8
	ldr r2, _080BE6C4 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BE6D4
_080BE6C0: .4byte 0x03000FD8
_080BE6C4: .4byte 0x00002002
_080BE6C8:
	ldr r2, _080BE724 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BE6D4:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080BE6EA
	movs r2, #0x01
_080BE6EA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BE704:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BE712
	cmp r2, #0x04
	bne _080BE71C
_080BE712:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080BE71C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BE724: .4byte 0x0000204F
	thumb_func_start sub_80BE728
sub_80BE728:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _080BE754 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r4, #0x28]
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1D]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080BE758
	movs r0, #0x00
	b _080BE8B6
	.byte 0x00, 0x00
_080BE754: .4byte 0x03000FD8
_080BE758:
	movs r0, #0x02
	adds r1, r2, #0x0
	movs r2, #0x2E
	movs r3, #0x08
	bl sub_807EAE4
	adds r7, r4, #0x0
	movs r0, #0x8A
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	ldr r1, _080BE8C0 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080BE8C4 @ =0x0801058A
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080BE7CA
	ldr r2, _080BE8C0 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080BE800
_080BE7CA:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080BE7D2
	adds r1, #0xFF
_080BE7D2:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080BE7E8
	adds r2, #0xFF
_080BE7E8:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080BE8C8 @ =0x00002E93
	str r4, [sp, #0x000]
	movs r3, #0x16
	bl sub_80DF024
_080BE800:
	adds r0, r4, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	str r2, [r0, #0x00]
	ldr r1, [r4, #0x28]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080BE848
	str r2, [r4, #0x4C]
	adds r2, r1, #0x0
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	adds r5, r7, #0x0
	adds r5, #0x7C
	cmp r0, #0x00
	bne _080BE83C
	movs r3, #0x80
_080BE82A:
	ldr r2, [r2, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080BE82A
_080BE83C:
	adds r4, r2, #0x0
	adds r4, #0x08
	ldrh r1, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	strh r1, [r0, #0x00]
_080BE848:
	str r7, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BE85C
	cmp r1, #0x04
	bne _080BE8B4
_080BE85C:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BE86A
	adds r0, #0xFF
_080BE86A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BE878
	adds r0, #0xFF
_080BE878:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BE886
	adds r0, #0xFF
_080BE886:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BE8A0
	adds r0, #0xFF
_080BE8A0:
	asrs r0, r0, #0x08
	adds r0, #0x60
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080BE8B4:
	ldr r0, _080BE8CC @ =0x080C0981
_080BE8B6:
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BE8C0: .4byte 0x00000111
_080BE8C4: .4byte 0x0801058A
_080BE8C8: .4byte 0x00002E93
_080BE8CC: .4byte sub_80C0980
	thumb_func_start sub_80BE8D0
sub_80BE8D0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r7, _080BE98C @ =0x03000FD8
	ldr r3, [r7, #0x00]
	ldr r2, [r3, #0x74]
	adds r6, r2, #0x0
	adds r6, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BE9E2
	ldr r0, [r6, #0x38]
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r6, #0x38]
	str r0, [r6, #0x10]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BE908
	cmp r1, #0x04
	bne _080BE95A
_080BE908:
	ldr r5, [r6, #0x3C]
	cmp r5, #0x00
	bge _080BE910
	adds r5, #0xFF
_080BE910:
	asrs r5, r5, #0x08
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, [r7, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r5
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080BE95A:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080BE96E
	cmp r2, #0x04
	bne _080BE9D0
_080BE96E:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BE994
	ldr r2, _080BE990 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BE9A0
_080BE98C: .4byte 0x03000FD8
_080BE990: .4byte 0x00002002
_080BE994:
	ldr r2, _080BE9EC @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BE9A0:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080BE9B6
	movs r2, #0x01
_080BE9B6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BE9D0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BE9DE
	cmp r2, #0x04
	bne _080BE9E2
_080BE9DE:
	ldr r0, _080BE9F0 @ =0x080BD075
	str r0, [r6, #0x4C]
_080BE9E2:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BE9EC: .4byte 0x0000204F
_080BE9F0: .4byte sub_80BD074
	thumb_func_start sub_80BE9F4
sub_80BE9F4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080BEAB4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r6, #0x2C]
	adds r0, #0xA8
	movs r1, #0x01
	str r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _080BEA14
	adds r0, #0xFF
_080BEA14:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x1C
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080BEA22
	adds r2, #0xFF
_080BEA22:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080BEA2C
	adds r3, #0xFF
_080BEA2C:
	asrs r3, r3, #0x08
	adds r3, #0x10
	str r4, [sp, #0x000]
	ldr r0, _080BEAB8 @ =0x00002FE6
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BEA4A
	cmp r1, #0x04
	bne _080BEA66
_080BEA4A:
	ldr r2, _080BEABC @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
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
_080BEA66:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BEA78
	cmp r1, #0x04
	bne _080BEAA8
_080BEA78:
	ldr r2, _080BEAC0 @ =0x03001038
	ldr r0, _080BEAC4 @ =0x0819832C
	ldr r1, _080BEAC8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x05
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BEAA8:
	ldr r0, _080BEACC @ =0x080BEAD1
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BEAB4: .4byte 0x03000FD8
_080BEAB8: .4byte 0x00002FE6
_080BEABC: .4byte 0x00002025
_080BEAC0: .4byte 0x03001038
_080BEAC4: .4byte 0x0819832C
_080BEAC8: .4byte 0x08198220
_080BEACC: .4byte sub_80BEAD0
	thumb_func_start sub_80BEAD0
sub_80BEAD0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080BEB28 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x86
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x07
	subs r3, r0, r1
	cmp r3, #0x00
	blt _080BEB38
	ldr r6, [r5, #0x18]
	cmp r6, #0x00
	beq _080BEB38
	ldr r2, _080BEB2C @ =0x03001038
	ldr r0, _080BEB30 @ =0x0819832C
	ldr r1, _080BEB34 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	muls r0, r3
	adds r1, r4, #0x0
	adds r1, #0x82
	movs r4, #0x00
	ldsh r1, [r1, r4]
	adds r1, r3, r1
	bl _call_via_r2
	b _080BEB3A
	.byte 0x00, 0x00
_080BEB28: .4byte 0x03000FD8
_080BEB2C: .4byte 0x03001038
_080BEB30: .4byte 0x0819832C
_080BEB34: .4byte 0x08198220
_080BEB38:
	movs r0, #0x00
_080BEB3A:
	str r0, [r5, #0x18]
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BEB88
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7D
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BEB66
	cmp r1, #0x04
	bne _080BEB82
_080BEB66:
	ldr r2, _080BEB94 @ =0x00002062
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BEB82:
	ldr r0, _080BEB98 @ =0x080BEB9D
	mov r1, r8
	str r0, [r1, #0x4C]
_080BEB88:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BEB94: .4byte 0x00002062
_080BEB98: .4byte sub_80BEB9C
	thumb_func_start sub_80BEB9C
sub_80BEB9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080BEBF4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r7, r6, #0x0
	adds r7, #0x08
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080BEBBC
	b _080BECFC
_080BEBBC:
	adds r3, r6, #0x0
	adds r3, #0xB6
	ldrh r1, [r3, #0x00]
	ldr r4, _080BEBF8 @ =0x00000FFF
	adds r0, r4, #0x0
	ands r0, r1
	lsls r1, r0, #0x10
	cmp r0, #0x03
	bhi _080BEC00
	ldr r2, _080BEBFC @ =0x083B89DC
	lsrs r0, r1, #0x0F
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	lsls r0, r0, #0x01
	adds r2, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xBA
	b _080BEC92
_080BEBF4: .4byte 0x03000FD8
_080BEBF8: .4byte 0x00000FFF
_080BEBFC: .4byte 0x083B89DC
_080BEC00:
	ldr r5, _080BEC28 @ =0x083B89E4
	movs r1, #0x00
	ldsb r1, [r5, r1]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080BEC2C
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x00
	ldsb r1, [r5, r1]
	b _080BEC46
	.byte 0x00, 0x00
_080BEC28: .4byte 0x083B89E4
_080BEC2C:
	movs r4, #0x00
	ldsb r4, [r5, r4]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x02
	ldsb r1, [r5, r1]
_080BEC46:
	adds r1, r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	movs r1, #0x01
	ldsb r1, [r5, r1]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080BEC72
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x01
	ldsb r1, [r5, r1]
	b _080BEC8C
_080BEC72:
	movs r4, #0x01
	ldsb r4, [r5, r4]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x03
	ldsb r1, [r5, r1]
_080BEC8C:
	adds r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
_080BEC92:
	strh r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BECA6
	cmp r1, #0x04
	bne _080BECF6
_080BECA6:
	adds r3, r7, #0x0
	adds r3, #0xB0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	beq _080BECD8
	ldr r2, _080BECCC @ =0x03001038
	ldr r0, _080BECD0 @ =0x0819832C
	ldr r1, _080BECD4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r4, #0x00
	ldsh r1, [r3, r4]
	bl _call_via_r2
	b _080BECDC
_080BECCC: .4byte 0x03001038
_080BECD0: .4byte 0x0819832C
_080BECD4: .4byte 0x08198220
_080BECD8:
	movs r0, #0x80
	lsls r0, r0, #0x07
_080BECDC:
	adds r2, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r2, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_080BECF6:
	ldr r0, _080BED08 @ =0x080BED0D
	mov r1, r8
	str r0, [r1, #0x4C]
_080BECFC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BED08: .4byte sub_80BED0C
