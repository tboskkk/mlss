	.syntax unified
	.text

	thumb_func_start sub_807A698
sub_807A698:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r3, _0807A6F4 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r1, r2, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	bics r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x0A]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0A]
	movs r6, #0x00
	mov r12, r3
	movs r4, #0x00
_0807A6CE:
	movs r3, #0x01
	lsls r3, r6
	mov r0, r12
	ldr r2, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x2C]
	adds r0, r4, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807A6F8
	ldrh r0, [r2, #0x14]
	bics r0, r3
	strh r0, [r2, #0x14]
	b _0807A6FE
_0807A6F4: .4byte 0x03000FD8
_0807A6F8:
	ldrh r0, [r2, #0x14]
	orrs r3, r0
	strh r3, [r2, #0x14]
_0807A6FE:
	adds r1, r4, #0x0
	adds r1, #0x1C
	adds r0, r6, #0x1
	movs r3, #0x01
	lsls r3, r0
	mov r5, r12
	ldr r2, [r5, #0x00]
	movs r7, #0x92
	lsls r7, r7, #0x02
	adds r0, r2, r7
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x2C]
	adds r1, r1, r0
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807A72A
	ldrh r0, [r2, #0x14]
	bics r0, r3
	strh r0, [r2, #0x14]
	b _0807A730
_0807A72A:
	ldrh r0, [r2, #0x14]
	orrs r3, r0
	strh r3, [r2, #0x14]
_0807A730:
	adds r4, #0x38
	adds r6, #0x02
	cmp r6, #0x07
	ble _0807A6CE
	movs r6, #0x00
_0807A73A:
	ldr r0, _0807A8F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807A762
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807A762
	adds r0, r2, #0x0
	bl sub_807BDDC
_0807A762:
	adds r1, r6, #0x1
	ldr r0, _0807A8F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807A78C
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807A78C
	adds r0, r2, #0x0
	bl sub_807BDDC
_0807A78C:
	adds r6, #0x02
	cmp r6, #0x07
	ble _0807A73A
	movs r6, #0x00
	ldr r7, _0807A8F0 @ =0x03000FD8
	mov r12, r7
_0807A798:
	mov r1, r12
	ldr r0, [r1, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _0807A7EC
	adds r0, r3, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807A7EC
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807A7EC
	ldr r1, [r3, #0x18]
	ldr r0, [r3, #0x40]
	subs r5, r1, r0
	ldr r1, [r3, #0x1C]
	ldr r0, [r3, #0x44]
	subs r4, r1, r0
	ldr r1, [r3, #0x20]
	ldr r0, [r3, #0x48]
	subs r1, r1, r0
	cmp r2, r3
	beq _0807A7EC
_0807A7D4:
	ldr r0, [r2, #0x18]
	adds r0, r0, r5
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x1C]
	adds r0, r0, r4
	str r0, [r2, #0x1C]
	ldr r0, [r2, #0x20]
	adds r0, r0, r1
	str r0, [r2, #0x20]
	ldr r2, [r2, #0x00]
	cmp r2, r3
	bne _0807A7D4
_0807A7EC:
	adds r1, r6, #0x1
	mov r2, r12
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _0807A842
	adds r0, r3, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807A842
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807A842
	ldr r1, [r3, #0x18]
	ldr r0, [r3, #0x40]
	subs r5, r1, r0
	ldr r1, [r3, #0x1C]
	ldr r0, [r3, #0x44]
	subs r4, r1, r0
	ldr r1, [r3, #0x20]
	ldr r0, [r3, #0x48]
	subs r1, r1, r0
	cmp r2, r3
	beq _0807A842
_0807A82A:
	ldr r0, [r2, #0x18]
	adds r0, r0, r5
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x1C]
	adds r0, r0, r4
	str r0, [r2, #0x1C]
	ldr r0, [r2, #0x20]
	adds r0, r0, r1
	str r0, [r2, #0x20]
	ldr r2, [r2, #0x00]
	cmp r2, r3
	bne _0807A82A
_0807A842:
	adds r6, #0x02
	cmp r6, #0x07
	ble _0807A798
	movs r6, #0x00
_0807A84A:
	mov r5, r12
	ldr r0, [r5, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r2, [r1, #0x18]
	ldr r0, [r1, #0x40]
	subs r7, r2, r0
	ldr r2, [r1, #0x1C]
	ldr r0, [r1, #0x44]
	subs r4, r2, r0
	ldr r2, [r1, #0x20]
	ldr r0, [r1, #0x48]
	subs r2, r2, r0
	ldr r3, [r1, #0x38]
	adds r5, r6, #0x1
	cmp r3, #0x00
	beq _0807A898
	movs r6, #0x08
_0807A872:
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0807A892
	ldr r0, [r3, #0x10]
	adds r0, r0, r7
	str r0, [r3, #0x10]
	ldr r0, [r3, #0x14]
	adds r0, r0, r4
	str r0, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r0, r0, r2
	str r0, [r3, #0x18]
_0807A892:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _0807A872
_0807A898:
	adds r6, r5, #0x0
	cmp r6, #0x07
	ble _0807A84A
	mov r7, r12
	ldr r2, [r7, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0807A8AE
	b _0807AB72
_0807A8AE:
	ldr r6, [r2, #0x70]
	adds r0, r6, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0807A8BE
	b _0807A9CA
_0807A8BE:
	adds r7, r6, #0x0
	adds r7, #0x08
	ldr r2, [r2, #0x74]
	mov r8, r2
	mov r5, r8
	adds r5, #0x08
	ldr r2, [r5, #0x08]
	ldrh r3, [r2, #0x16]
	ldrb r0, [r2, #0x1E]
	lsls r4, r0, #0x1C
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807A8F4 @ =0x0000206D
	cmp r0, r1
	bne _0807A8F8
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
_0807A8F0: .4byte 0x03000FD8
_0807A8F4: .4byte 0x0000206D
_0807A8F8:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807A92C @ =0x0000206E
	cmp r0, r1
	bne _0807A93A
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0807A930
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bhi _0807A930
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
	.byte 0x00, 0x00
_0807A92C: .4byte 0x0000206E
_0807A930:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	b _0807AAD6
_0807A93A:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807A964 @ =0x00002075
	cmp r0, r1
	bne _0807A976
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807A968
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
	.byte 0x00, 0x00
_0807A964: .4byte 0x00002075
_0807A968:
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
_0807A976:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r3, r0
	ldr r0, _0807A994 @ =0x0000206C
	cmp r3, r0
	beq _0807A998
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
_0807A994: .4byte 0x0000206C
_0807A998:
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	cmp r1, #0x02
	bne _0807A9AA
	adds r0, #0x02
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bhi _0807A9C0
_0807A9AA:
	cmp r1, #0x03
	beq _0807A9C0
	cmp r1, #0x05
	beq _0807A9B4
	b _0807AACE
_0807A9B4:
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bhi _0807A9C0
	b _0807AACE
_0807A9C0:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	b _0807AAD6
_0807A9CA:
	ldr r2, [r2, #0x74]
	mov r8, r2
	mov r7, r8
	adds r7, #0x08
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r2, [r5, #0x08]
	ldrh r3, [r2, #0x16]
	ldrb r0, [r2, #0x1E]
	lsls r4, r0, #0x1C
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807A9FC @ =0x0000203E
	cmp r0, r1
	bne _0807AA00
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
_0807A9FC: .4byte 0x0000203E
_0807AA00:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807AA34 @ =0x0000203F
	cmp r0, r1
	bne _0807AA42
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0807AA38
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bhi _0807AA38
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
	.byte 0x00, 0x00
_0807AA34: .4byte 0x0000203F
_0807AA38:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	b _0807AAD6
_0807AA42:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807AA6C @ =0x00002046
	cmp r0, r1
	bne _0807AA7E
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807AA70
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
	.byte 0x00, 0x00
_0807AA6C: .4byte 0x00002046
_0807AA70:
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
_0807AA7E:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r3, r0
	ldr r0, _0807AA9C @ =0x0000203D
	cmp r3, r0
	beq _0807AAA0
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
_0807AA9C: .4byte 0x0000203D
_0807AAA0:
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	cmp r1, #0x02
	bne _0807AAB2
	adds r0, #0x02
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bhi _0807AAC4
_0807AAB2:
	cmp r1, #0x03
	beq _0807AAC4
	cmp r1, #0x05
	bne _0807AACE
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0807AACE
_0807AAC4:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	b _0807AAD6
_0807AACE:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
_0807AAD6:
	adds r1, r5, #0x0
	adds r1, #0x75
_0807AADA:
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x04]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x06]
	strh r0, [r1, #0x06]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x08]
	strh r0, [r1, #0x08]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0A]
	strh r0, [r1, #0x0A]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0C]
	strh r0, [r1, #0x0C]
	ldr r3, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r3, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x11]
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x07
	ldrb r2, [r3, #0x11]
	movs r0, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r3, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x12]
	movs r1, #0x06
	ands r1, r0
	ldrb r2, [r3, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r3, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldrb r2, [r3, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
_0807AB72:
	mov r2, r12
	ldr r0, [r2, #0x00]
	ldr r5, [r0, #0x78]
	cmp r5, #0x00
	bne _0807AB7E
	b _0807AD20
_0807AB7E:
	ldr r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x40]
	ldr r2, [r5, #0x08]
	cmp r2, #0x00
	bne _0807AB92
	b _0807AD18
_0807AB92:
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807AB9E
	b _0807AD18
_0807AB9E:
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	beq _0807ABB0
	movs r0, #0x78
	strh r0, [r2, #0x00]
	ldr r1, [r5, #0x08]
	movs r0, #0x50
	strh r0, [r1, #0x02]
	b _0807AD18
_0807ABB0:
	ldr r1, [r5, #0x28]
	cmp r1, #0x00
	beq _0807ABBE
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r0, r5
	beq _0807ABD8
_0807ABBE:
	ldr r0, _0807ABD4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r7, #0x93
	lsls r7, r7, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	bl sub_8082B6C
	b _0807AD18
	.byte 0x00, 0x00
_0807ABD4: .4byte 0x03000FD8
_0807ABD8:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807ABE6
	b _0807AD18
_0807ABE6:
	ldr r0, _0807AD08 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	bl sub_8082B6C
	ldr r6, [r5, #0x28]
	cmp r6, #0x00
	bne _0807AC00
	b _0807AD18
_0807AC00:
	adds r0, r6, #0x0
	adds r0, #0x08
	cmp r0, r5
	beq _0807AC0A
	b _0807AD18
_0807AC0A:
	adds r0, #0xE4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0807AC16
	b _0807AD18
_0807AC16:
	movs r7, #0x8F
	lsls r7, r7, #0x01
	adds r0, r6, r7
	ldrh r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r1, r2, #0x0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x00
	beq _0807AD10
	ldr r4, _0807AD0C @ =0x08392B58
	subs r7, #0x0C
	adds r2, r6, r7
	ldrb r1, [r2, #0x00]
	adds r0, r1, #0x1
	strb r0, [r2, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r4
	adds r3, r6, #0x0
	adds r3, #0xCF
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	movs r7, #0x00
	mov r12, r7
_0807AC4E:
	movs r7, #0x04
	ldsh r0, [r4, r7]
	cmp r0, r1
	bge _0807AC66
	adds r4, #0x06
	movs r7, #0x04
	ldsh r0, [r4, r7]
	cmp r0, r9
	bne _0807AC4E
	mov r4, r8
	mov r0, r12
	strb r0, [r2, #0x00]
_0807AC66:
	ldrh r0, [r4, #0x00]
	strb r0, [r3, #0x00]
	ldr r1, [r6, #0x10]
	ldrh r0, [r4, #0x00]
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x10]
	ldrh r0, [r4, #0x02]
	ldrh r7, [r1, #0x02]
	adds r0, r0, r7
	strh r0, [r1, #0x02]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	beq _0807ACAE
	movs r3, #0x08
_0807AC86:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0807ACA8
	ldr r1, [r2, #0x08]
	ldrh r0, [r4, #0x00]
	ldrh r7, [r1, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	ldr r1, [r2, #0x08]
	ldrh r0, [r4, #0x02]
	ldrh r7, [r1, #0x02]
	adds r0, r0, r7
	strh r0, [r1, #0x02]
_0807ACA8:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _0807AC86
_0807ACAE:
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0807AD18
	adds r3, r0, #0x0
	cmp r3, r6
	beq _0807AD18
_0807ACBA:
	ldr r1, [r3, #0x10]
	ldrh r0, [r4, #0x00]
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x10]
	ldrh r0, [r4, #0x02]
	ldrh r7, [r1, #0x02]
	adds r0, r0, r7
	strh r0, [r1, #0x02]
	ldr r2, [r3, #0x38]
	cmp r2, #0x00
	beq _0807AD00
	movs r0, #0x08
	mov r8, r0
_0807ACD8:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x00
	beq _0807ACFA
	ldr r1, [r2, #0x08]
	ldrh r0, [r4, #0x00]
	ldrh r7, [r1, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	ldr r1, [r2, #0x08]
	ldrh r0, [r4, #0x02]
	ldrh r7, [r1, #0x02]
	adds r0, r0, r7
	strh r0, [r1, #0x02]
_0807ACFA:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _0807ACD8
_0807AD00:
	ldr r3, [r3, #0x00]
	cmp r3, r6
	bne _0807ACBA
	b _0807AD18
_0807AD08: .4byte 0x03000FD8
_0807AD0C: .4byte word_8392B58 @ =0x08392B58
_0807AD10:
	movs r2, #0x89
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strb r0, [r1, #0x00]
_0807AD18:
	ldr r5, [r5, #0x00]
	cmp r5, #0x00
	beq _0807AD20
	b _0807AB7E
_0807AD20:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
