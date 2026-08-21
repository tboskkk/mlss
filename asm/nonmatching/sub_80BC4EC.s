	.syntax unified
	.text

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
