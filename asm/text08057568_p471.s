	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start btl_80FC310
btl_80FC310: @ 080FC310
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _080FC424 @ =0x08CDC338
	str r0, [r5, #0x18]
	ldr r1, _080FC428 @ =0x0300034C
	adds r2, r1, #0x0
	adds r2, #0x44
	movs r0, #0x0A
	strb r0, [r2, #0x00]
	adds r1, #0x45
	movs r0, #0x02
	strb r0, [r1, #0x00]
	ldr r4, _080FC42C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080FC3F0
	bl sub_810CDB4
	ldr r0, [r4, #0x00]
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x02
	bl sub_8018B78
	ldr r0, [r4, #0x00]
	ldr r4, [r0, #0x78]
	cmp r4, #0x00
	beq _080FC35A
_080FC34E:
	adds r0, r4, #0x0
	bl sub_807C298
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _080FC34E
_080FC35A:
	ldr r4, _080FC42C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC370
	movs r1, #0x03
	bl sub_80F2130
_080FC370:
	ldr r0, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC384
	movs r1, #0x03
	bl sub_8082D60
_080FC384:
	ldr r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC398
	movs r1, #0x03
	bl sub_81166AC
_080FC398:
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC3AC
	movs r1, #0x03
	bl sub_80854F8
_080FC3AC:
	ldr r0, [r4, #0x00]
	movs r1, #0xBC
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC3C0
	movs r1, #0x03
	bl sub_80E2EDC
_080FC3C0:
	ldr r0, _080FC430 @ =0x02000010
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
	bl sub_8021FD4
_080FC3F0:
	ldr r4, _080FC434 @ =0x03000FDC
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080FC400
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
_080FC400:
	ldr r0, [r5, #0x14]
	bl process_enable
	ldr r1, _080FC428 @ =0x0300034C
	adds r1, #0x79
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl process_remove
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FC424: .4byte 0x08CDC338
_080FC428: .4byte 0x0300034C
_080FC42C: .4byte 0x03000FD8
_080FC430: .4byte 0x02000010
_080FC434: .4byte 0x03000FDC
	thumb_func_start btl_80FC438
btl_80FC438: @ 080FC438
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r0, _080FC588 @ =0x03000FD8
	mov r8, r0
	movs r4, #0xEA
	lsls r4, r4, #0x02
	ldr r2, _080FC58C @ =0x082001F8
	movs r0, #0x00
	adds r1, r4, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	mov r2, r8
	str r1, [r2, #0x00]
	ldr r0, _080FC590 @ =0x03001034
	mov r9, r0
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	mov r2, r8
	ldr r1, [r2, #0x00]
	subs r4, #0xD0
	adds r1, r1, r4
	ldr r5, _080FC594 @ =0x03000FDC
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	ldr r6, _080FC598 @ =0x00008E5C
	ldr r2, _080FC59C @ =0x08200200
	movs r0, #0x01
	adds r1, r6, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r5, #0x00]
	mov r0, r9
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r6, #0x0
	bl _call_via_r3
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r4, r2, r4
	ldr r1, [r4, #0x00]
	ldr r0, _080FC5A0 @ =0x0000FFFE
	strh r0, [r1, #0x06]
	movs r4, #0xF8
	lsls r4, r4, #0x01
	adds r2, r2, r4
	ldr r0, [r5, #0x00]
	ldr r1, _080FC5A4 @ =0x0000548F
	adds r0, r0, r1
	movs r1, #0x20
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x00]
	movs r3, #0x00
	mov r4, r8
	adds r7, r4, #0x0
	movs r2, #0x00
	movs r6, #0x98
	lsls r6, r6, #0x01
_080FC4BC:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r2, r6
	adds r0, r3, #0x1
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r2, r6
	adds r0, r3, #0x2
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r2, r6
	adds r0, r3, #0x3
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r2, r6
	adds r3, #0x04
	cmp r3, #0x07
	ble _080FC4BC
	ldr r2, [r7, #0x00]
	ldr r0, _080FC5A8 @ =0x080802DD
	str r0, [r2, #0x24]
	ldr r1, _080FC5AC @ =0x03000FE0
	ldr r0, _080FC5B0 @ =0x080FC8A5
	str r0, [r1, #0x00]
	movs r4, #0xB6
	lsls r4, r4, #0x02
	adds r0, r2, r4
	ldr r3, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	subs r4, #0x22
	adds r0, r2, r4
	strh r1, [r0, #0x00]
	ldrb r0, [r3, #0x05]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	ldr r1, _080FC5B4 @ =0x000002B9
	adds r2, r2, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x00]
	ldrb r1, [r3, #0x02]
	movs r2, #0xAE
	lsls r2, r2, #0x02
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	ldr r0, [r7, #0x00]
	ldrb r1, [r3, #0x04]
	adds r4, #0x04
	adds r0, r0, r4
	strb r1, [r0, #0x00]
	ldr r2, [r7, #0x00]
	ldrb r1, [r3, #0x05]
	lsls r1, r1, #0x1B
	ldr r0, _080FC5B8 @ =0x000002BE
	adds r2, r2, r0
	movs r4, #0x01
	lsrs r1, r1, #0x1F
	ldrb r3, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0xAA
	bl sub_8020994
	ldr r2, _080FC5BC @ =0x0203FFB8
	ldrb r0, [r2, #0x00]
	orrs r0, r4
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FC588: .4byte 0x03000FD8
_080FC58C: .4byte 0x082001F8
_080FC590: .4byte 0x03001034
_080FC594: .4byte 0x03000FDC
_080FC598: .4byte 0x00008E5C
_080FC59C: .4byte 0x08200200
_080FC5A0: .4byte 0x0000FFFE
_080FC5A4: .4byte 0x0000548F
_080FC5A8: .4byte sub_80802DC
_080FC5AC: .4byte 0x03000FE0
_080FC5B0: .4byte btl_80FC8A4
_080FC5B4: .4byte 0x000002B9
_080FC5B8: .4byte 0x000002BE
_080FC5BC: .4byte 0x0203FFB8
	thumb_func_start btl_80FC5C0
btl_80FC5C0: @ 080FC5C0
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	mov r0, sp
	bl sub_8199470
	bl sub_8018818
	ldr r4, _080FC65C @ =0x0300034C
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r5, _080FC660 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0xAD
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrh r1, [r4, #0x2A]
	ldrh r0, [r0, #0x00]
	ands r0, r1
	cmp r0, #0x00
	beq _080FC5FA
	ldr r0, _080FC664 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080FC5FA:
	ldr r0, [r5, #0x00]
	ldr r2, _080FC668 @ =0x000002C1
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080FC61E
	ldrh r1, [r4, #0x2A]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x00
	beq _080FC61E
	ldr r0, _080FC664 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080FC61E:
	ldr r3, _080FC660 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x07]
	movs r1, #0x1F
	orrs r0, r1
	strb r0, [r2, #0x07]
	ldr r2, _080FC65C @ =0x0300034C
	ldr r1, _080FC66C @ =0x00000884
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC684
	ldr r1, [r3, #0x00]
	ldrb r0, [r1, #0x10]
	cmp r0, #0x00
	beq _080FC684
	subs r0, #0x01
	strb r0, [r1, #0x10]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x10]
	cmp r0, #0x00
	bne _080FC674
	ldr r0, _080FC670 @ =0x00000888
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _080FC684
	.byte 0x00, 0x00
_080FC65C: .4byte 0x0300034C
_080FC660: .4byte 0x03000FD8
_080FC664: .4byte 0x0000015F
_080FC668: .4byte 0x000002C1
_080FC66C: .4byte 0x00000884
_080FC670: .4byte 0x00000888
_080FC674:
	ldr r1, _080FC880 @ =0x00000888
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080FC684
	b _080FC878
_080FC684:
	ldr r6, _080FC884 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC698
	bl sub_8082B20
_080FC698:
	ldr r0, [r6, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC6AA
	bl sub_808539C
_080FC6AA:
	bl sub_807A698
	ldr r0, [r6, #0x00]
	adds r0, #0x40
	bl sub_807FFFC
	bl sub_807AF64
	bl sub_8020A78
	ldr r0, [r6, #0x00]
	adds r0, #0x44
	bl sub_807FFFC
	ldr r0, [r6, #0x00]
	adds r0, #0x48
	bl sub_807FFFC
	bl sub_807C3E8
	ldr r7, _080FC888 @ =0x03000D74
	ldr r1, [r7, #0x00]
	ldrb r0, [r1, #0x02]
	cmp r0, #0x00
	beq _080FC6E8
	ldr r2, _080FC88C @ =0x03000D48
	ldr r0, [r1, #0x3C]
	ldr r1, [r1, #0x38]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
_080FC6E8:
	bl sub_8109C08
	bl sub_8107380
	ldr r1, [r7, #0x00]
	ldrb r0, [r1, #0x02]
	cmp r0, #0x00
	beq _080FC71E
	ldr r0, [r1, #0x38]
	ldr r5, [r0, #0x0C]
	movs r0, #0x00
	str r0, [r5, #0x10]
	ldr r2, _080FC890 @ =0x03000D4C
	ldr r0, _080FC894 @ =0x0203FFB8
	ldr r0, [r0, #0x3C]
	ldr r4, _080FC898 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r4, r4, r1
	ldr r1, [r4, #0x00]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	str r0, [r4, #0x00]
	ldr r0, [r7, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [r5, #0x10]
_080FC71E:
	ldr r5, _080FC898 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r4, r5, r2
	ldr r0, [r4, #0x00]
	bl sub_807C6D0
	str r0, [r4, #0x00]
	bl sub_8021F7C
	bl sub_807AD2C
	ldr r3, [r6, #0x00]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC746
	b _080FC852
_080FC746:
	ldrh r0, [r5, #0x3E]
	movs r7, #0x01
	ldr r4, _080FC89C @ =0x000002BE
	adds r3, r3, r4
	adds r1, r7, #0x0
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	mov r12, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r2, [r6, #0x00]
	ldrh r1, [r5, #0x3E]
	lsrs r1, r1, #0x01
	ands r1, r7
	adds r2, r2, r4
	lsls r1, r1, #0x07
	ldrb r3, [r2, #0x00]
	movs r5, #0x7F
	adds r0, r5, #0x0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r4, [r6, #0x00]
	ldr r0, [r4, #0x7C]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _080FC7B8
	ldr r0, _080FC89C @ =0x000002BE
	adds r4, r4, r0
	ldrb r2, [r4, #0x00]
	lsls r3, r2, #0x19
	lsrs r3, r3, #0x1F
	lsrs r0, r2, #0x07
	adds r1, r7, #0x0
	ands r1, r0
	lsls r1, r1, #0x06
	mov r0, r12
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r1, [r6, #0x00]
	ldr r2, _080FC89C @ =0x000002BE
	adds r1, r1, r2
	lsls r3, r3, #0x07
	ldrb r2, [r1, #0x00]
	adds r0, r5, #0x0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x00]
_080FC7B8:
	ldr r0, [r6, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x58
	movs r2, #0x80
	lsls r2, r2, #0x01
	ldr r0, [r0, #0x58]
	cmp r0, #0x00
	beq _080FC7D0
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC7D0
	strh r2, [r0, #0x0A]
_080FC7D0:
	ldr r0, [r1, #0x04]
	cmp r0, #0x00
	beq _080FC7DE
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC7DE
	strh r2, [r0, #0x0A]
_080FC7DE:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080FC7EC
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC7EC
	strh r2, [r0, #0x0A]
_080FC7EC:
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	beq _080FC7FA
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC7FA
	strh r2, [r0, #0x0A]
_080FC7FA:
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	beq _080FC808
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC808
	strh r2, [r0, #0x0A]
_080FC808:
	ldr r0, [r1, #0x14]
	cmp r0, #0x00
	beq _080FC816
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC816
	strh r2, [r0, #0x0A]
_080FC816:
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	beq _080FC824
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC824
	strh r2, [r0, #0x0A]
_080FC824:
	ldr r0, [r1, #0x1C]
	cmp r0, #0x00
	beq _080FC832
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC832
	strh r2, [r0, #0x0A]
_080FC832:
	ldr r4, _080FC884 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x20
	ldr r1, [r1, #0x24]
	bl _call_via_r1
	bl sub_807E084
	ldr r1, [r4, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
_080FC852:
	ldr r4, _080FC884 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	adds r0, #0x4C
	bl sub_807FFFC
	mov r0, sp
	ldrb r0, [r0, #0x00]
	bl sub_8082584
	ldr r0, [r4, #0x00]
	ldr r4, [r0, #0x24]
	cmp r4, #0x00
	bne _080FC878
	movs r0, #0x03
	movs r1, #0x00
	bl sub_8018B78
	ldr r0, _080FC8A0 @ =0x03000FE0
	str r4, [r0, #0x00]
_080FC878:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FC880: .4byte 0x00000888
_080FC884: .4byte 0x03000FD8
_080FC888: .4byte 0x03000D74
_080FC88C: .4byte 0x03000D48
_080FC890: .4byte 0x03000D4C
_080FC894: .4byte 0x0203FFB8
_080FC898: .4byte 0x0300034C
_080FC89C: .4byte 0x000002BE
_080FC8A0: .4byte 0x03000FE0
	thumb_func_start btl_80FC8A4
btl_80FC8A4: @ 080FC8A4
	push {r4, lr}
	add sp, #-0x004
	mov r0, sp
	bl sub_8199470
	ldr r4, _080FC8E8 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x20
	ldr r1, [r1, #0x24]
	bl _call_via_r1
	ldr r0, [r4, #0x00]
	adds r0, #0x4C
	bl sub_807FFFC
	mov r0, sp
	ldrb r0, [r0, #0x00]
	bl sub_8082584
	ldr r0, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC8E0
	ldr r1, _080FC8EC @ =0x03000FE0
	ldr r0, _080FC8F0 @ =0x080FC5C1
	str r0, [r1, #0x00]
_080FC8E0:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080FC8E8: .4byte 0x03000FD8
_080FC8EC: .4byte 0x03000FE0
_080FC8F0: .4byte btl_80FC5C0
