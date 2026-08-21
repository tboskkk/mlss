	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80801BC
sub_80801BC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	movs r0, #0x12
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	ldr r3, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _080801D8
	adds r1, #0xFF
_080801D8:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _080801E0
	adds r0, #0xFF
_080801E0:
	asrs r2, r0, #0x08
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x0E
	bl sub_807F7BC
	ldr r0, _08080218 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0808020E
	movs r0, #0x1E
	strh r0, [r4, #0x16]
	ldr r0, _0808021C @ =0x0808027D
	str r0, [r5, #0x04]
_0808020E:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080218: .4byte 0x03000FD8
_0808021C: .4byte sub_808027C
	thumb_func_start sub_8080220
sub_8080220:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08080270
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08080254
	ldr r2, _08080250 @ =0x00002039
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	b _08080260
	.byte 0x00, 0x00
_08080250: .4byte 0x00002039
_08080254:
	ldr r2, _08080278 @ =0x00002068
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_08080260:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08080270:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080278: .4byte 0x00002068
	thumb_func_start sub_808027C
sub_808027C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r0, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0808028E
	adds r1, #0xFF
_0808028E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _08080298
	adds r2, #0xFF
_08080298:
	asrs r2, r2, #0x08
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r3, #0x0E
	bl sub_807F7BC
	ldr r0, _080802C0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	ble _080802C4
	subs r0, r1, #0x1
	strh r0, [r4, #0x16]
	b _080802CE
_080802C0: .4byte 0x03000FD8
_080802C4:
	strh r6, [r4, #0x12]
	movs r0, #0x16
	strh r0, [r4, #0x16]
	ldr r0, _080802D8 @ =0x0807D0CD
	str r0, [r5, #0x04]
_080802CE:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080802D8: .4byte sub_807D0CC
	thumb_func_start sub_80802DC
sub_80802DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	ldr r0, _08080520 @ =0x0300034C
	ldr r1, _08080524 @ =0x00000884
	adds r0, r0, r1
	movs r2, #0x00
	mov r8, r2
	str r2, [r0, #0x00]
	ldr r5, _08080528 @ =0x03000FD8
	ldr r4, [r5, #0x00]
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r4, r4, r3
	ldr r6, _0808052C @ =0x082000B4
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r6, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r6, #0x0
	movs r3, #0x08
	bl init_ybpa_process_8114B4C
	str r0, [r4, #0x00]
	ldr r1, [r5, #0x00]
	movs r4, #0xB5
	lsls r4, r4, #0x02
	adds r0, r1, r4
	mov r2, r8
	strh r2, [r0, #0x00]
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r1, r1, r3
	movs r0, #0x10
	strb r0, [r1, #0x00]
	ldr r3, [r5, #0x00]
	ldr r2, _08080530 @ =0x03000FDC
	ldr r4, [r2, #0x00]
	movs r1, #0xE8
	lsls r1, r1, #0x05
	adds r0, r4, r1
	str r0, [r3, #0x3C]
	adds r7, r2, #0x0
	adds r2, r1, #0x0
	mov r12, r7
	adds r5, r4, #0x0
	adds r0, r5, r2
	ldr r3, _08080534 @ =0x00001D1C
	adds r4, r5, r3
	str r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r3, #0x1C
	adds r4, r5, r3
	str r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r3, #0x1C
	adds r4, r5, r3
	str r4, [r0, #0x00]
	adds r1, #0x54
	movs r4, #0x54
	mov r8, r4
	movs r6, #0x43
_08080366:
	ldr r5, [r7, #0x00]
	adds r3, r5, r2
	mov r4, r8
	adds r0, r3, r4
	adds r4, r5, r1
	adds r4, #0x1C
	str r4, [r0, #0x00]
	mov r0, r8
	adds r0, #0x1C
	ldr r5, [r7, #0x00]
	adds r3, r5, r2
	adds r0, r3, r0
	adds r4, r1, r5
	adds r4, #0x38
	str r4, [r0, #0x00]
	mov r0, r8
	adds r0, #0x38
	ldr r5, [r7, #0x00]
	adds r3, r5, r2
	adds r0, r3, r0
	adds r4, r1, r5
	adds r4, #0x54
	str r4, [r0, #0x00]
	mov r0, r8
	adds r0, #0x54
	ldr r5, [r7, #0x00]
	adds r3, r5, r2
	adds r0, r3, r0
	adds r4, r1, r5
	adds r4, #0x70
	str r4, [r0, #0x00]
	adds r1, #0x70
	movs r0, #0x70
	add r8, r0
	subs r6, #0x04
	cmp r6, #0x00
	bge _08080366
	mov r2, r12
	ldr r1, [r2, #0x00]
	ldr r3, _08080538 @ =0x000024C4
	adds r2, r1, r3
	movs r0, #0x00
	str r0, [r2, #0x00]
	ldr r2, _08080528 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	movs r4, #0x8E
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r3, _0808053C @ =0x000032E0
	adds r1, r1, r3
	str r1, [r0, #0x00]
	movs r6, #0x00
	ldr r0, _08080520 @ =0x0300034C
	mov r10, r0
	mov r9, r2
	mov r4, r12
	adds r5, r3, #0x0
_080803D8:
	ldr r0, [r4, #0x00]
	lsls r2, r6, #0x04
	adds r1, r0, r5
	adds r1, r1, r2
	adds r0, r0, r3
	adds r0, #0x10
	str r0, [r1, #0x00]
	adds r1, r6, #0x1
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r2, r0, r5
	adds r2, r2, r1
	adds r0, r3, r0
	adds r0, #0x20
	str r0, [r2, #0x00]
	adds r1, r6, #0x2
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r2, r0, r5
	adds r2, r2, r1
	adds r0, r3, r0
	adds r0, #0x30
	str r0, [r2, #0x00]
	adds r1, r6, #0x3
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r2, r0, r5
	adds r2, r2, r1
	adds r0, r3, r0
	adds r0, #0x40
	str r0, [r2, #0x00]
	adds r1, r6, #0x4
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r2, r0, r5
	adds r2, r2, r1
	adds r0, r3, r0
	adds r0, #0x50
	str r0, [r2, #0x00]
	adds r3, #0x50
	adds r6, #0x05
	cmp r6, #0x0E
	ble _080803D8
	mov r1, r12
	ldr r3, [r1, #0x00]
	lsls r1, r6, #0x04
	ldr r2, _0808053C @ =0x000032E0
	adds r0, r3, r2
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	mov r4, r9
	ldr r0, [r4, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _08080540 @ =0x000024E0
	adds r1, r3, r2
	str r1, [r0, #0x00]
	mov r4, r12
	adds r7, r2, #0x0
	adds r5, r3, #0x0
	adds r3, r2, #0x0
	adds r0, r5, r3
	ldr r1, _08080544 @ =0x000024FC
	adds r3, r5, r1
	str r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r1, #0x1C
	adds r3, r5, r1
	str r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r1, #0x1C
	adds r3, r5, r1
	str r3, [r0, #0x00]
	adds r2, #0x54
	movs r3, #0x54
	mov r8, r3
	movs r6, #0x7B
_08080476:
	ldr r5, [r4, #0x00]
	adds r1, r5, r7
	mov r3, r8
	adds r0, r1, r3
	adds r3, r5, r2
	adds r3, #0x1C
	str r3, [r0, #0x00]
	mov r0, r8
	adds r0, #0x1C
	ldr r5, [r4, #0x00]
	adds r1, r5, r7
	adds r0, r1, r0
	adds r3, r2, r5
	adds r3, #0x38
	str r3, [r0, #0x00]
	mov r0, r8
	adds r0, #0x38
	ldr r5, [r4, #0x00]
	adds r1, r5, r7
	adds r0, r1, r0
	adds r3, r2, r5
	adds r3, #0x54
	str r3, [r0, #0x00]
	mov r0, r8
	adds r0, #0x54
	ldr r5, [r4, #0x00]
	adds r1, r5, r7
	adds r0, r1, r0
	adds r3, r2, r5
	adds r3, #0x70
	str r3, [r0, #0x00]
	adds r2, #0x70
	movs r0, #0x70
	add r8, r0
	subs r6, #0x04
	cmp r6, #0x00
	bge _08080476
	movs r1, #0x00
	mov r2, r12
	ldr r0, [r2, #0x00]
	ldr r3, _08080548 @ =0x000032C4
	adds r0, r0, r3
	str r1, [r0, #0x00]
	mov r4, r9
	ldr r0, [r4, #0x00]
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, _0808054C @ =0x000008C4
	add r1, r10
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
	movs r0, #0x02
	ldr r1, _08080550 @ =0x0807D381
	bl sub_8018B78
	ldr r4, [r4, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r4, r4, r2
	movs r0, #0xA3
	lsls r0, r0, #0x02
	ldr r2, _08080554 @ =0x082000BC
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_80843C0
	str r0, [r4, #0x00]
	bl sub_80823C0
	bl sub_80E3DD0
	ldr r0, _08080558 @ =0x0808055D
	ldr r3, [sp, #0x000]
	str r0, [r3, #0x04]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08080520: .4byte 0x0300034C
_08080524: .4byte 0x00000884
_08080528: .4byte 0x03000FD8
_0808052C: .4byte 0x082000B4
_08080530: .4byte 0x03000FDC
_08080534: .4byte 0x00001D1C
_08080538: .4byte 0x000024C4
_0808053C: .4byte 0x000032E0
_08080540: .4byte 0x000024E0
_08080544: .4byte 0x000024FC
_08080548: .4byte 0x000032C4
_0808054C: .4byte 0x000008C4
_08080550: .4byte sub_807D380
_08080554: .4byte 0x082000BC
_08080558: .4byte sub_808055C
	thumb_func_start sub_808055C
sub_808055C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r7, r0, #0x0
	bl sub_80E3DA4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080805D0
	ldr r6, _080805D8 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8085440
	bl sub_80E3D70
	ldr r0, [r6, #0x00]
	movs r5, #0x93
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08080594
	movs r1, #0x03
	bl sub_8082D60
_08080594:
	ldr r4, [r6, #0x00]
	adds r4, r4, r5
	ldr r0, _080805DC @ =0x0000077C
	ldr r5, _080805E0 @ =0x082000C4
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	ldr r2, [r6, #0x00]
	movs r3, #0xAE
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldrb r3, [r1, #0x00]
	movs r1, #0x10
	str r1, [sp, #0x000]
	movs r1, #0x50
	str r1, [sp, #0x004]
	movs r6, #0x92
	lsls r6, r6, #0x02
	adds r1, r2, r6
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x008]
	movs r1, #0x09
	adds r2, r5, #0x0
	bl sub_8082D74
	str r0, [r4, #0x00]
	ldr r0, _080805E4 @ =0x080805E9
	str r0, [r7, #0x04]
_080805D0:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080805D8: .4byte 0x03000FD8
_080805DC: .4byte 0x0000077C
_080805E0: .4byte 0x082000C4
_080805E4: .4byte sub_80805E8
	thumb_func_start sub_80805E8
sub_80805E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	mov r8, r0
	ldr r7, _0808065C @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	movs r2, #0x1C
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08080608
	b _08080806
_08080608:
	movs r6, #0x91
	lsls r6, r6, #0x02
	adds r0, r1, r6
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808061A
	movs r1, #0x03
	bl sub_80F2130
_0808061A:
	ldr r4, [r7, #0x00]
	adds r4, r4, r6
	ldr r5, _08080660 @ =0x082000CC
	movs r0, #0x34
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x07
	adds r2, r5, #0x0
	bl init_ybai_process_80F2070
	str r0, [r4, #0x00]
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	bl process_disable
	ldr r2, [r7, #0x00]
	ldr r1, _08080664 @ =0x000002B6
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x05
	ldr r1, _08080668 @ =0x0850300C
	adds r0, r0, r1
	str r0, [r2, #0x1C]
	ldrb r0, [r0, #0x00]
	movs r4, #0x7F
	ands r4, r0
	movs r5, #0x64
	b _0808068E
	.byte 0x00, 0x00
_0808065C: .4byte 0x03000FD8
_08080660: .4byte 0x082000CC
_08080664: .4byte 0x000002B6
_08080668: .4byte 0x0850300C
_0808066C:
	ldr r0, _080806EC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, _080806F0 @ =0x000002B6
	adds r1, r2, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x1C]
	adds r0, #0x20
	str r0, [r2, #0x1C]
	subs r5, r5, r4
	cmp r5, #0x00
	bge _08080688
	movs r5, #0x00
_08080688:
	ldrb r0, [r0, #0x00]
	movs r4, #0x7F
	ands r4, r0
_0808068E:
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	cmp r4, r0
	bcc _0808066C
	ldr r0, _080806EC @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r2, [r3, #0x1C]
	ldrb r0, [r2, #0x02]
	lsls r0, r0, #0x02
	ldr r1, _080806F4 @ =0x0850476C
	adds r4, r0, r1
	movs r1, #0xB8
	lsls r1, r1, #0x02
	adds r5, r3, r1
	adds r7, r2, #0x0
	adds r7, #0x08
	movs r2, #0xBB
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	movs r3, #0x00
	ldr r6, _080806F8 @ =0x08500AA0
	adds r2, r7, #0x0
_080806C6:
	ldrb r1, [r2, #0x02]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x00
	bne _080806FC
	ldrh r1, [r2, #0x00]
	movs r0, #0x2C
	muls r0, r1
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80213A0
	b _08080718
_080806EC: .4byte 0x03000FD8
_080806F0: .4byte 0x000002B6
_080806F4: .4byte 0x0850476C
_080806F8: .4byte 0x08500AA0
_080806FC:
	cmp r3, #0x05
	beq _08080706
	adds r2, #0x04
	adds r3, #0x01
	b _080806C6
_08080706:
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x11
	adds r1, #0x10
	movs r0, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sprite_heap_alloc
_08080718:
	str r0, [r5, #0x00]
	movs r3, #0x00
	ldr r6, _08080748 @ =0x08500AA0
	adds r2, r7, #0x0
_08080720:
	ldrb r1, [r2, #0x02]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x02
	bne _0808074C
	ldrh r1, [r2, #0x00]
	movs r0, #0x2C
	muls r0, r1
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	lsls r2, r2, #0x0C
	lsrs r2, r2, #0x16
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80213A0
	b _0808076A
	.byte 0x00, 0x00
_08080748: .4byte 0x08500AA0
_0808074C:
	cmp r3, #0x05
	beq _08080756
	adds r2, #0x04
	adds r3, #0x01
	b _08080720
_08080756:
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x0C
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x05
	adds r1, #0x10
	movs r0, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sprite_heap_alloc
_0808076A:
	str r0, [r5, #0x04]
	movs r3, #0x00
	ldr r4, [r4, #0x00]
	ldr r0, _0808079C @ =0x08500AA0
	mov r12, r0
	adds r2, r7, #0x0
	lsls r6, r4, #0x02
_08080778:
	ldrb r1, [r2, #0x02]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x04
	bne _080807A0
	ldrh r1, [r2, #0x00]
	movs r0, #0x2C
	muls r0, r1
	add r0, r12
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x00]
	movs r0, #0x00
	lsrs r2, r6, #0x16
	movs r3, #0x01
	bl sub_80213A0
	b _080807BC
	.byte 0x00, 0x00
_0808079C: .4byte 0x08500AA0
_080807A0:
	cmp r3, #0x05
	beq _080807AA
	adds r2, #0x04
	adds r3, #0x01
	b _08080778
_080807AA:
	lsls r1, r4, #0x02
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x05
	adds r1, #0x10
	movs r0, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sprite_heap_alloc
_080807BC:
	str r0, [r5, #0x08]
	ldr r5, _08080814 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r4, _08080818 @ =0x000002B9
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _080807D4
	ldr r0, _0808081C @ =0x084FCCD8
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
_080807D4:
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _080807E6
	ldr r0, _08080820 @ =0x084FCCE0
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
_080807E6:
	movs r1, #0xE0
	lsls r1, r1, #0x07
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r2, sp, #0x00C
	str r2, [sp, #0x004]
	movs r0, #0x0B
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r0, _08080824 @ =0x08080829
	mov r1, r8
	str r0, [r1, #0x04]
_08080806:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080814: .4byte 0x03000FD8
_08080818: .4byte 0x000002B9
_0808081C: .4byte 0x084FCCD8
_08080820: .4byte 0x084FCCE0
_08080824: .4byte sub_8080828
	thumb_func_start sub_8080828
sub_8080828:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x00C]
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08080842
	b _08080A2A
_08080842:
	ldr r0, _08080988 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x1C]
	adds r0, #0x08
	str r0, [sp, #0x010]
	movs r0, #0x00
	mov r10, r0
	ldr r4, [sp, #0x010]
_08080852:
	ldrb r1, [r4, #0x02]
	movs r5, #0x01
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08080868
	ldrh r1, [r4, #0x00]
	mov r0, r10
	movs r2, #0x01
	bl sub_807B838
_08080868:
	mov r2, r10
	adds r2, #0x01
	ldrb r1, [r4, #0x06]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08080880
	ldrh r1, [r4, #0x04]
	adds r0, r2, #0x0
	movs r2, #0x01
	bl sub_807B838
_08080880:
	mov r2, r10
	adds r2, #0x02
	ldrb r1, [r4, #0x0A]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08080898
	ldrh r1, [r4, #0x08]
	adds r0, r2, #0x0
	movs r2, #0x01
	bl sub_807B838
_08080898:
	adds r4, #0x0C
	movs r1, #0x03
	add r10, r1
	mov r0, r10
	cmp r0, #0x05
	ble _08080852
	movs r1, #0x00
	mov r10, r1
_080808A8:
	ldr r0, _08080988 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x58
	mov r9, r0
	mov r0, r10
	lsls r2, r0, #0x02
	ldr r1, [sp, #0x010]
	adds r0, r2, r1
	ldrb r1, [r0, #0x02]
	movs r0, #0x30
	ands r0, r1
	adds r4, r2, #0x0
	mov r1, r10
	adds r1, #0x01
	str r1, [sp, #0x014]
	cmp r0, #0x00
	beq _08080968
	mov r1, r9
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08080968
	movs r7, #0x00
	movs r0, #0x30
	mov r8, r0
	mov r6, r9
	ldr r5, [sp, #0x010]
_080808E8:
	cmp r10, r7
	beq _0808090C
	ldrb r2, [r5, #0x02]
	ldr r1, [sp, #0x010]
	adds r0, r4, r1
	ldrb r3, [r0, #0x02]
	mov r1, r8
	ands r1, r2
	mov r0, r8
	ands r0, r3
	cmp r1, r0
	bne _0808090C
	mov r1, r9
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x00]
	bl sub_807FDE8
_0808090C:
	adds r1, r5, #0x4
	adds r0, r7, #0x1
	cmp r10, r0
	beq _08080934
	ldrb r2, [r1, #0x02]
	ldr r1, [sp, #0x010]
	adds r0, r4, r1
	ldrb r3, [r0, #0x02]
	mov r1, r8
	ands r1, r2
	mov r0, r8
	ands r0, r3
	cmp r1, r0
	bne _08080934
	mov r1, r9
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x04]
	bl sub_807FDE8
_08080934:
	adds r1, r5, #0x0
	adds r1, #0x08
	adds r0, r7, #0x2
	cmp r10, r0
	beq _0808095E
	ldrb r2, [r1, #0x02]
	ldr r1, [sp, #0x010]
	adds r0, r4, r1
	ldrb r3, [r0, #0x02]
	mov r1, r8
	ands r1, r2
	mov r0, r8
	ands r0, r3
	cmp r1, r0
	bne _0808095E
	mov r1, r9
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x08]
	bl sub_807FDE8
_0808095E:
	adds r6, #0x0C
	adds r5, #0x0C
	adds r7, #0x03
	cmp r7, #0x05
	ble _080808E8
_08080968:
	ldr r0, [sp, #0x014]
	mov r10, r0
	cmp r0, #0x05
	ble _080808A8
	ldr r5, _08080988 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r1, _0808098C @ =0x000002B9
	adds r0, r0, r1
	ldrb r4, [r0, #0x00]
	cmp r4, #0x01
	beq _080809A0
	cmp r4, #0x01
	bgt _08080990
	cmp r4, #0x00
	beq _0808099A
	b _08080A20
_08080988: .4byte 0x03000FD8
_0808098C: .4byte 0x000002B9
_08080990:
	cmp r4, #0x02
	beq _080809DC
	cmp r4, #0x03
	beq _080809FC
	b _08080A20
_0808099A:
	movs r1, #0x01
	negs r1, r1
	b _080809A6
_080809A0:
	movs r1, #0x01
	negs r1, r1
	movs r4, #0x00
_080809A6:
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x06
	movs r2, #0x36
	movs r3, #0x5C
	bl sub_807AFD4
	movs r1, #0x02
	negs r1, r1
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x28
	movs r3, #0x7C
	bl sub_807AFD4
	ldr r2, [r5, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x80
	ldr r0, [r2, #0x70]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r2, #0x74]
	str r0, [r1, #0x00]
	b _08080A20
_080809DC:
	movs r1, #0x01
	negs r1, r1
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x06
	movs r2, #0x2F
	movs r3, #0x73
	bl sub_807AFD4
	ldr r0, [r5, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x80
	ldr r1, [r0, #0x70]
	b _08080A1A
_080809FC:
	movs r1, #0x02
	negs r1, r1
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x2F
	movs r3, #0x73
	bl sub_807AFD4
	ldr r0, [r5, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x80
	ldr r1, [r0, #0x74]
_08080A1A:
	str r1, [r2, #0x00]
	adds r0, #0x84
	str r4, [r0, #0x00]
_08080A20:
	movs r0, #0x00
	ldr r1, [sp, #0x00C]
	strh r0, [r1, #0x10]
	ldr r0, _08080A3C @ =0x08080A41
	str r0, [r1, #0x04]
_08080A2A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080A3C: .4byte sub_8080A40
	thumb_func_start sub_8080A40
sub_8080A40:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	movs r0, #0x10
	ldsh r5, [r7, r0]
	cmp r5, #0x05
	bgt _08080B1E
	movs r0, #0x06
	subs r1, r0, r5
	movs r0, #0x01
	ands r1, r0
	cmp r5, #0x06
	bge _08080A62
	cmp r1, #0x00
	beq _08080AA2
_08080A62:
	ldr r0, _08080A94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08080A9C
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	beq _08080A9C
	adds r0, r4, #0x0
	bl _call_via_r1
	adds r0, r5, #0x1
	strh r0, [r7, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x08
	str r0, [r7, #0x0C]
	ldr r0, _08080A98 @ =0x08082159
	b _08080BA0
	.byte 0x00, 0x00
_08080A94: .4byte 0x03000FD8
_08080A98: .4byte sub_8082158
_08080A9C:
	adds r5, #0x01
	cmp r5, #0x05
	bgt _08080B1E
_08080AA2:
	ldr r0, _08080AD4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08080ADC
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	beq _08080ADC
	adds r0, r4, #0x0
	bl _call_via_r1
	adds r0, r5, #0x1
	strh r0, [r7, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x08
	str r0, [r7, #0x0C]
	ldr r0, _08080AD8 @ =0x08082159
	b _08080BA0
	.byte 0x00, 0x00
_08080AD4: .4byte 0x03000FD8
_08080AD8: .4byte sub_8082158
_08080ADC:
	adds r6, r5, #0x1
	ldr r0, _08080B10 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08080B18
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	beq _08080B18
	adds r0, r4, #0x0
	bl _call_via_r1
	adds r0, r6, #0x1
	strh r0, [r7, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x08
	str r0, [r7, #0x0C]
	ldr r0, _08080B14 @ =0x08082159
	b _08080BA0
	.byte 0x00, 0x00
_08080B10: .4byte 0x03000FD8
_08080B14: .4byte sub_8082158
_08080B18:
	adds r5, #0x02
	cmp r5, #0x05
	ble _08080AA2
_08080B1E:
	ldr r1, _08080BB0 @ =0x0000700A
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, _08080BB4 @ =0x03000FD8
	ldr r1, [r1, #0x00]
	str r0, [r1, #0x00]
	ldr r1, _08080BB8 @ =0x08080BE1
	mov r8, r1
	str r1, [r7, #0x04]
	movs r4, #0x00
	strh r4, [r7, #0x10]
	ldr r6, _08080BBC @ =0x084FB4FC
	adds r0, r6, #0x0
	adds r0, #0x6C
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r5, _08080BC0 @ =0x089F2CE0
	adds r0, r0, r5
	ldr r1, [r0, #0x00]
	adds r1, r1, r5
	ldr r2, _08080BC4 @ =0x06016800
	movs r3, #0x80
	lsls r3, r3, #0x02
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x02
	bl sub_80827F0
	ldr r2, _08080BC8 @ =0x03001034
	ldr r0, _08080BCC @ =0x08198154
	ldr r1, _08080BD0 @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r4, _08080BD4 @ =0x0300034C
	ldr r2, _08080BD8 @ =0x00000888
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x6E
	cmp r0, #0x00
	beq _08080B7E
	movs r1, #0x70
_08080B7E:
	adds r0, r1, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r0, r0, r5
	ldr r1, _08080BDC @ =0x020003C0
	movs r2, #0x20
	bl _call_via_r3
	ldrh r0, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	mov r0, r8
_08080BA0:
	str r0, [r7, #0x04]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080BB0: .4byte 0x0000700A
_08080BB4: .4byte 0x03000FD8
_08080BB8: .4byte sub_8080BE0
_08080BBC: .4byte 0x084FB4FC
_08080BC0: .4byte 0x089F2CE0
_08080BC4: .4byte 0x06016800
_08080BC8: .4byte 0x03001034
_08080BCC: .4byte 0x08198154
_08080BD0: .4byte 0x081980D8
_08080BD4: .4byte 0x0300034C
_08080BD8: .4byte 0x00000888
_08080BDC: .4byte 0x020003C0
	thumb_func_start sub_8080BE0
sub_8080BE0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x010]
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08080BFA
	b _08080D9E
_08080BFA:
	ldr r0, _08080DB0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08080DB4 @ =0x00003A68
	adds r5, r0, r1
	movs r7, #0x00
	movs r2, #0x01
	negs r2, r2
	mov r8, r2
	add r6, sp, #0x00C
_08080C0C:
	ldr r4, _08080DB8 @ =0x0000700A
	adds r1, r7, r4
	mov r0, r8
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	mov r3, r8
	bl sub_8020DD0
	adds r4, r0, #0x0
	movs r1, #0x00
	str r1, [sp, #0x000]
	mov r2, r8
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sprite_show_8020CBC
	movs r0, #0x78
	strh r0, [r4, #0x00]
	movs r0, #0x50
	strh r0, [r4, #0x02]
	movs r2, #0x00
	strb r2, [r6, #0x00]
	ldr r1, _08080DBC @ =0x03000D74
	ldr r0, [r1, #0x00]
	ldr r1, [r0, #0x3C]
	adds r0, r4, #0x0
	add r2, sp, #0x00C
	bl sub_801E80C
	ldrh r2, [r4, #0x30]
	str r2, [sp, #0x014]
	ldrb r0, [r4, #0x13]
	movs r2, #0x05
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8021308
	ldr r0, _08080DC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	movs r4, #0xE0
	lsls r4, r4, #0x01
	adds r0, r0, r4
	adds r0, r0, r1
	str r5, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	strh r0, [r5, #0x00]
	adds r5, #0x02
	ldr r1, _08080DBC @ =0x03000D74
	ldr r0, [r1, #0x00]
	ldr r2, [r0, #0x3C]
	ldrb r0, [r6, #0x00]
	subs r0, #0x01
	strb r0, [r6, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xFF
	beq _08080CF2
	movs r4, #0xFF
	lsls r4, r4, #0x08
	mov r10, r4
	ldr r0, _08080DC4 @ =0x000001FF
	mov r9, r0
	movs r1, #0xFE
	lsls r1, r1, #0x08
	mov r12, r1
	add r3, sp, #0x00C
_08080CA2:
	ldrh r1, [r2, #0x00]
	ldrb r0, [r2, #0x00]
	subs r0, #0x50
	strh r0, [r5, #0x00]
	adds r5, #0x02
	mov r4, r10
	ands r1, r4
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r4, #0x0
	orrs r1, r0
	strh r1, [r5, #0x00]
	adds r5, #0x02
	ldrh r1, [r2, #0x02]
	adds r0, r1, #0x0
	mov r4, r9
	ands r0, r4
	subs r0, #0x78
	strh r0, [r5, #0x00]
	adds r5, #0x02
	mov r0, r12
	ands r1, r0
	strh r1, [r5, #0x00]
	adds r5, #0x02
	ldrh r0, [r2, #0x04]
	ldr r1, _08080DC8 @ =0x00000FFF
	ands r0, r1
	ldr r4, _08080DCC @ =0xFFFFB800
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	adds r5, #0x02
	ldr r2, [r2, #0x10]
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xFF
	bne _08080CA2
_08080CF2:
	adds r7, #0x01
	cmp r7, #0x07
	ble _08080C0C
	ldr r0, _08080DBC @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x08]
	ldr r2, [sp, #0x014]
	adds r0, r0, r2
	strh r0, [r1, #0x08]
	ldr r0, _08080DC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sprite_heap_free
	movs r7, #0x00
_08080D10:
	ldr r0, _08080DC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x04
	beq _08080D2E
	cmp r1, #0x02
	bne _08080D50
_08080D2E:
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r0, [r2, #0x10]
	adds r0, #0x25
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r3, r0, #0x0
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082E1C
_08080D50:
	adds r1, r7, #0x1
	ldr r0, _08080DC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x04
	beq _08080D70
	cmp r1, #0x02
	bne _08080D92
_08080D70:
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r0, [r2, #0x10]
	adds r0, #0x25
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r3, r0, #0x0
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082E1C
_08080D92:
	adds r7, #0x02
	cmp r7, #0x07
	ble _08080D10
	ldr r0, _08080DD0 @ =0x08080DD5
	ldr r4, [sp, #0x010]
	str r0, [r4, #0x04]
_08080D9E:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080DB0: .4byte 0x03000FDC
_08080DB4: .4byte 0x00003A68
_08080DB8: .4byte 0x0000700A
_08080DBC: .4byte 0x03000D74
_08080DC0: .4byte 0x03000FD8
_08080DC4: .4byte 0x000001FF
_08080DC8: .4byte 0x00000FFF
_08080DCC: .4byte 0xFFFFB800
_08080DD0: .4byte sub_8080DD4
	thumb_func_start sub_8080DD4
sub_8080DD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x000]
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08080DEE
	b _080810E2
_08080DEE:
	movs r4, #0x00
_08080DF0:
	ldr r6, _080810F4 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x04
	bne _08080E18
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	bl sub_8081D84
_08080E18:
	adds r1, r4, #0x1
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x04
	bne _08080E3E
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	bl sub_8081D84
_08080E3E:
	adds r1, r4, #0x2
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x04
	bne _08080E64
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	bl sub_8081D84
_08080E64:
	adds r4, #0x03
	cmp r4, #0x05
	ble _08080DF0
	ldr r0, _080810F8 @ =0x00007001
	bl sub_8082AAC
	ldr r0, _080810FC @ =0x00002083
	bl sub_8082AAC
	ldr r0, [r6, #0x00]
	ldr r1, _08081100 @ =0x000002B9
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bne _08080E84
	b _08080FAC
_08080E84:
	ldr r0, _08081104 @ =0x00002039
	bl sub_8082AAC
	ldr r0, _08081108 @ =0x00002025
	bl sub_8082AAC
	ldr r0, _0808110C @ =0x0000203A
	bl sub_8082AAC
	ldr r0, _08081110 @ =0x0000203B
	bl sub_8082AAC
	ldr r0, _08081114 @ =0x0000203C
	bl sub_8082AAC
	ldr r0, _08081118 @ =0x0000203D
	bl sub_8082AAC
	ldr r0, _0808111C @ =0x00002002
	bl sub_8082AAC
	ldr r0, _08081120 @ =0x00002029
	bl sub_8082AAC
	ldr r0, _08081124 @ =0x0000203F
	bl sub_8082AAC
	ldr r0, _08081128 @ =0x00002028
	bl sub_8082AAC
	ldr r0, _0808112C @ =0x0000203E
	bl sub_8082AAC
	ldr r0, _08081130 @ =0x0000202A
	bl sub_8082AAC
	ldr r0, _08081134 @ =0x0000202C
	bl sub_8082AAC
	ldr r0, _08081138 @ =0x00002020
	bl sub_8082AAC
	ldr r7, _0808113C @ =0x084FB814
	str r7, [sp, #0x008]
	movs r0, #0x00
	mov r9, r0
	movs r1, #0x05
	str r1, [sp, #0x004]
_08080EE4:
	ldrh r0, [r7, #0x00]
	bl sub_8082AAC
	ldr r0, [sp, #0x008]
	adds r0, #0x02
	mov r8, r0
	mov r0, r9
	add r0, r8
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldr r6, [sp, #0x008]
	adds r6, #0x04
	mov r1, r9
	adds r0, r1, r6
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldr r5, [sp, #0x008]
	adds r5, #0x24
	mov r1, r9
	adds r0, r1, r5
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldr r0, _08081140 @ =0x084FB83A
	add r0, r9
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldrh r0, [r7, #0x28]
	bl sub_8082AAC
	adds r0, r7, #0x6
	mov r10, r0
	mov r4, r9
	adds r4, #0x06
	ldrh r0, [r7, #0x06]
	bl sub_8082AAC
	mov r1, r8
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	adds r0, r4, r6
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	adds r0, r4, r5
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldr r0, _08081140 @ =0x084FB83A
	adds r4, r4, r0
	ldrh r0, [r4, #0x00]
	bl sub_8082AAC
	mov r1, r10
	ldrh r0, [r1, #0x28]
	bl sub_8082AAC
	movs r0, #0x0C
	adds r0, r0, r7
	mov r10, r0
	mov r4, r9
	adds r4, #0x0C
	ldrh r0, [r7, #0x0C]
	bl sub_8082AAC
	add r8, r4
	mov r1, r8
	ldrh r0, [r1, #0x00]
	bl sub_8082AAC
	adds r6, r4, r6
	ldrh r0, [r6, #0x00]
	bl sub_8082AAC
	adds r5, r4, r5
	ldrh r0, [r5, #0x00]
	bl sub_8082AAC
	ldr r0, _08081140 @ =0x084FB83A
	adds r4, r4, r0
	ldrh r0, [r4, #0x00]
	bl sub_8082AAC
	mov r1, r10
	ldrh r0, [r1, #0x28]
	bl sub_8082AAC
	adds r7, #0x12
	movs r0, #0x12
	add r9, r0
	ldr r1, [sp, #0x004]
	subs r1, #0x03
	str r1, [sp, #0x004]
	cmp r1, #0x00
	bge _08080EE4
_08080FAC:
	ldr r0, _080810F4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08081100 @ =0x000002B9
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _08080FBC
	b _080810C0
_08080FBC:
	ldr r0, _08081144 @ =0x00002068
	bl sub_8082AAC
	ldr r0, _08081148 @ =0x00002054
	bl sub_8082AAC
	ldr r0, _0808114C @ =0x00002069
	bl sub_8082AAC
	ldr r0, _08081150 @ =0x0000206A
	bl sub_8082AAC
	ldr r0, _08081154 @ =0x0000206B
	bl sub_8082AAC
	ldr r0, _08081158 @ =0x0000206C
	bl sub_8082AAC
	ldr r0, _0808115C @ =0x0000204F
	bl sub_8082AAC
	ldr r0, _08081160 @ =0x00002058
	bl sub_8082AAC
	ldr r0, _08081164 @ =0x0000206E
	bl sub_8082AAC
	ldr r0, _08081168 @ =0x00002057
	bl sub_8082AAC
	ldr r0, _0808116C @ =0x0000206D
	bl sub_8082AAC
	ldr r0, _08081170 @ =0x00002059
	bl sub_8082AAC
	ldr r0, _08081174 @ =0x0000205B
	bl sub_8082AAC
	ldr r0, _08081178 @ =0x00002021
	bl sub_8082AAC
	ldr r0, _0808113C @ =0x084FB814
	str r0, [sp, #0x010]
	movs r7, #0x00
	movs r1, #0x05
	str r1, [sp, #0x00C]
_0808101A:
	ldr r1, [sp, #0x010]
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r0, _0808113C @ =0x084FB814
	adds r0, #0x02
	mov r8, r0
	adds r0, r7, r0
	ldrh r0, [r0, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r6, _0808113C @ =0x084FB814
	adds r6, #0x04
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r5, _0808113C @ =0x084FB814
	adds r5, #0x24
	adds r0, r7, r5
	ldrh r0, [r0, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r1, _08081140 @ =0x084FB83A
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r1, [sp, #0x010]
	ldrh r0, [r1, #0x28]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r0, [sp, #0x010]
	adds r0, #0x06
	mov r10, r0
	adds r4, r7, #0x6
	ldr r1, [sp, #0x010]
	ldrh r0, [r1, #0x06]
	adds r0, #0x01
	bl sub_8082AAC
	add r8, r4
	mov r1, r8
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	adds r6, r4, r6
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	adds r5, r4, r5
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r0, _08081140 @ =0x084FB83A
	adds r4, r4, r0
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	mov r1, r10
	ldrh r0, [r1, #0x28]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r0, [sp, #0x010]
	adds r0, #0x0C
	str r0, [sp, #0x010]
	adds r7, #0x0C
	ldr r1, [sp, #0x00C]
	subs r1, #0x02
	str r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _0808101A
_080810C0:
	ldr r0, _0808117C @ =0x0000017B
	bl sub_8082898
	movs r0, #0xB9
	lsls r0, r0, #0x01
	bl sub_8082898
	ldr r1, _08081180 @ =0x00008004
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80214A4
	ldr r0, _08081184 @ =0x08082089
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x04]
_080810E2:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080810F4: .4byte 0x03000FD8
_080810F8: .4byte 0x00007001
_080810FC: .4byte 0x00002083
_08081100: .4byte 0x000002B9
_08081104: .4byte 0x00002039
_08081108: .4byte 0x00002025
_0808110C: .4byte 0x0000203A
_08081110: .4byte 0x0000203B
_08081114: .4byte 0x0000203C
_08081118: .4byte 0x0000203D
_0808111C: .4byte 0x00002002
_08081120: .4byte 0x00002029
_08081124: .4byte 0x0000203F
_08081128: .4byte 0x00002028
_0808112C: .4byte 0x0000203E
_08081130: .4byte 0x0000202A
_08081134: .4byte 0x0000202C
_08081138: .4byte 0x00002020
_0808113C: .4byte 0x084FB814
_08081140: .4byte 0x084FB83A
_08081144: .4byte 0x00002068
_08081148: .4byte 0x00002054
_0808114C: .4byte 0x00002069
_08081150: .4byte 0x0000206A
_08081154: .4byte 0x0000206B
_08081158: .4byte 0x0000206C
_0808115C: .4byte 0x0000204F
_08081160: .4byte 0x00002058
_08081164: .4byte 0x0000206E
_08081168: .4byte 0x00002057
_0808116C: .4byte 0x0000206D
_08081170: .4byte 0x00002059
_08081174: .4byte 0x0000205B
_08081178: .4byte 0x00002021
_0808117C: .4byte 0x0000017B
_08081180: .4byte 0x00008004
_08081184: .4byte sub_8082088
	thumb_func_start sub_8081188
sub_8081188:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r9, r0
	bl sub_8082B00
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x00
	bne _0808125C
	ldr r6, _0808126C @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0x08]
	bl sprite_heap_free
	ldr r0, [r6, #0x00]
	movs r5, #0x91
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl process_enable
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	ldr r2, _08081270 @ =0x06004020
	ldr r3, _08081274 @ =0x00003FE0
	movs r1, #0x0C
	mov r8, r1
	str r1, [sp, #0x000]
	movs r1, #0x00
	bl sub_80F8D6C
	ldr r2, [r6, #0x00]
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	movs r3, #0xA0
	lsls r3, r3, #0x02
	adds r1, r1, r3
	str r0, [r1, #0x00]
	adds r2, r2, r5
	ldr r0, [r2, #0x00]
	ldr r2, _08081278 @ =0x060082C0
	movs r3, #0xF5
	lsls r3, r3, #0x06
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x01
	bl sub_80F8D6C
	ldr r2, [r6, #0x00]
	adds r4, r2, r4
	ldr r1, [r4, #0x00]
	movs r3, #0xA1
	lsls r3, r3, #0x02
	adds r1, r1, r3
	str r0, [r1, #0x00]
	adds r2, r2, r5
	ldr r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	movs r2, #0xA2
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	str r7, [sp, #0x004]
	movs r1, #0xE0
	lsls r1, r1, #0x07
	str r1, [sp, #0x008]
	movs r1, #0x0F
	str r1, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x0F
	bl sub_80F8CC0
	ldr r1, [r6, #0x00]
	ldr r3, _0808127C @ =0x000002BF
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	adds r5, r1, r5
	ldr r0, [r5, #0x00]
	ldr r2, _08081280 @ =0x0850300C
	subs r3, #0x09
	adds r1, r1, r3
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x05
	adds r2, #0x04
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	bl sub_80F8EB0
	ldr r0, _08081284 @ =0x08081FD5
	mov r1, r9
	str r0, [r1, #0x04]
_0808125C:
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808126C: .4byte 0x03000FD8
_08081270: .4byte 0x06004020
_08081274: .4byte 0x00003FE0
_08081278: .4byte 0x060082C0
_0808127C: .4byte 0x000002BF
_08081280: .4byte 0x0850300C
_08081284: .4byte sub_8081FD4
	thumb_func_start sub_8081288
sub_8081288:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	beq _0808129A
	b _08081390
_0808129A:
	ldr r2, _080812C4 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldrb r1, [r3, #0x0A]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x0A]
	str r5, [r4, #0x08]
	ldr r3, [r2, #0x00]
	ldr r1, _080812C8 @ =0x000002BE
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080812CC
	ldr r0, [r3, #0x70]
	b _080812CE
	.byte 0x00, 0x00
_080812C4: .4byte 0x03000FD8
_080812C8: .4byte 0x000002BE
_080812CC:
	ldr r0, [r3, #0x74]
_080812CE:
	adds r3, r0, #0x0
	adds r3, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080812E0
	str r3, [r4, #0x08]
_080812E0:
	ldr r3, [r4, #0x08]
	cmp r3, #0x00
	beq _0808131C
	ldr r0, [r2, #0x00]
	ldr r1, _080812FC @ =0x000002BA
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x05
	bhi _08081380
	lsls r0, r0, #0x02
	ldr r1, _08081300 @ =0x08081304
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080812FC: .4byte 0x000002BA
_08081300: .4byte 0x08081304
	.byte 0x1C, 0x13, 0x08, 0x08, 0x38, 0x13, 0x08, 0x08, 0x40, 0x13, 0x08, 0x08, 0x4C, 0x13, 0x08, 0x08
	.byte 0x74, 0x13, 0x08, 0x08, 0x60, 0x13, 0x08, 0x08
_0808131C:
	ldr r0, _08081330 @ =0x08081F85
	str r0, [r4, #0x04]
	bl sub_80E3D1C
	ldr r0, _08081334 @ =0x080FC91D
	movs r1, #0x00
	bl sub_807FF48
	b _08081390
	.byte 0x00, 0x00
_08081330: .4byte sub_8081F84
_08081334: .4byte sub_80FC91C
	.byte 0x18, 0x1C, 0x9C, 0x30, 0x00, 0x21, 0x12, 0xE0, 0x01, 0x48, 0x60, 0x60, 0x24, 0xE0, 0x00, 0x00
	.byte 0xA1, 0x17, 0x08, 0x08, 0x18, 0x1C, 0x9C, 0x30, 0x00, 0x21, 0x01, 0x60, 0x01, 0x48, 0x60, 0x60
	.byte 0x1A, 0xE0, 0x00, 0x00, 0xFD, 0x18, 0x08, 0x08, 0x18, 0x1C, 0x9C, 0x30, 0x01, 0x21, 0x01, 0x60
	.byte 0x01, 0x48, 0x60, 0x60, 0x10, 0xE0, 0x00, 0x00, 0x05, 0x1D, 0x08, 0x08, 0x01, 0x48, 0x60, 0x60
	.byte 0x0A, 0xE0, 0x00, 0x00, 0xE9, 0x1B, 0x08, 0x08
_08081380:
	ldr r0, _08081398 @ =0x08081F85
	str r0, [r4, #0x04]
	bl sub_80E3D1C
	ldr r0, _0808139C @ =0x080FC91D
	movs r1, #0x00
	bl sub_807FF48
_08081390:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08081398: .4byte sub_8081F84
_0808139C: .4byte sub_80FC91C
	thumb_func_start sub_80813A0
sub_80813A0:
	push {r4, lr}
	ldr r0, _0808143C @ =0x0000017B
	bl sub_8082898
	movs r4, #0x00
_080813AA:
	ldr r0, _08081440 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xFA
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080813EC
	cmp r4, #0x00
	blt _080813EC
	cmp r4, #0x05
	bgt _080813EC
	lsls r0, r4, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x04
	beq _080813DC
	cmp r2, #0x02
	bne _080813EC
_080813DC:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080813EC
	ldrh r0, [r0, #0x02]
	bl sub_8082898
_080813EC:
	adds r2, r4, #0x1
	ldr r0, _08081440 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xFA
	lsls r3, r3, #0x01
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08081430
	cmp r2, #0x00
	blt _08081430
	cmp r2, #0x05
	bgt _08081430
	lsls r0, r2, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x04
	beq _08081420
	cmp r2, #0x02
	bne _08081430
_08081420:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08081430
	ldrh r0, [r0, #0x02]
	bl sub_8082898
_08081430:
	adds r4, #0x02
	cmp r4, #0x07
	ble _080813AA
	pop {r4}
	pop {r0}
	bx r0
_0808143C: .4byte 0x0000017B
_08081440: .4byte 0x03000FD8
	thumb_func_start sub_8081444
sub_8081444:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	movs r5, #0x00
	movs r6, #0x00
	mov r8, r6
	movs r7, #0x00
	ldr r0, _08081558 @ =0x03001038
	mov r10, r0
	ldr r0, _0808155C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x58
	movs r1, #0x05
	mov r12, r1
_08081468:
	ldr r2, [r4, #0x00]
	adds r3, r2, #0x0
	adds r3, #0x08
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0808149C
	ldr r0, [r3, #0x38]
	adds r5, r5, r0
	ldr r0, [r3, #0x3C]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x40]
	adds r0, r1, r0
	cmp r8, r0
	bge _0808149A
	mov r8, r0
_0808149A:
	adds r7, #0x01
_0808149C:
	ldr r2, [r4, #0x04]
	adds r3, r2, #0x0
	adds r3, #0x08
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080814D0
	ldr r0, [r3, #0x38]
	adds r5, r5, r0
	ldr r0, [r3, #0x3C]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x40]
	adds r0, r1, r0
	cmp r8, r0
	bge _080814CE
	mov r8, r0
_080814CE:
	adds r7, #0x01
_080814D0:
	ldr r2, [r4, #0x08]
	adds r3, r2, #0x0
	adds r3, #0x08
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08081504
	ldr r0, [r3, #0x38]
	adds r5, r5, r0
	ldr r0, [r3, #0x3C]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x40]
	adds r0, r1, r0
	cmp r8, r0
	bge _08081502
	mov r8, r0
_08081502:
	adds r7, #0x01
_08081504:
	adds r4, #0x0C
	movs r0, #0x03
	negs r0, r0
	add r12, r0
	mov r1, r12
	cmp r1, #0x00
	bge _08081468
	ldr r0, _08081560 @ =0x0819832C
	ldr r1, _08081564 @ =0x08198220
	subs r4, r0, r1
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	mov r0, r9
	str r5, [r0, #0x10]
	str r5, [r0, #0x38]
	str r6, [r0, #0x14]
	str r6, [r0, #0x3C]
	mov r1, r8
	str r1, [r0, #0x18]
	str r1, [r0, #0x40]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08081558: .4byte 0x03001038
_0808155C: .4byte 0x03000FD8
_08081560: .4byte 0x0819832C
_08081564: .4byte 0x08198220
	thumb_func_start sub_8081568
sub_8081568:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	mov r8, r0
	movs r7, #0x00
	ldr r0, _0808160C @ =0x03000FD8
	mov r9, r0
_0808157A:
	ldr r0, _0808160C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	beq _08081598
	b _08081784
_08081598:
	mov r1, r8
	ldr r1, [r1, #0x28]
	mov r12, r1
	movs r0, #0x81
	lsls r0, r0, #0x01
	add r0, r12
	movs r4, #0x00
	ldsh r2, [r0, r4]
	ldr r3, [r5, #0x28]
	movs r1, #0x82
	lsls r1, r1, #0x01
	adds r0, r3, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r0, #0x66
	muls r2, r0
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r1, r0, #0x04
	adds r0, r0, r1
	subs r2, r2, r0
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080815CC
	ldr r1, _08081610 @ =0x000001FF
	adds r0, r2, r1
_080815CC:
	asrs r2, r0, #0x09
	cmp r2, #0x01
	bgt _080815D4
	movs r2, #0x02
_080815D4:
	adds r4, r2, #0x0
	mov r0, r8
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080815E2
	lsls r4, r4, #0x01
_080815E2:
	ldr r0, _08081614 @ =0x0000012B
	add r0, r12
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bne _080816D2
	cmp r4, #0x00
	ble _08081666
	ldr r0, _08081618 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x8A
	ldrb r1, [r2, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0xFF
	beq _0808161C
	adds r0, r1, #0x0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	b _0808161E
_0808160C: .4byte 0x03000FD8
_08081610: .4byte 0x000001FF
_08081614: .4byte 0x0000012B
_08081618: .4byte 0x03000FF4
_0808161C:
	movs r1, #0x00
_0808161E:
	adds r2, r1, #0x0
	ldr r6, [r6, #0x00]
	mov r12, r6
	mov r1, r12
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _08081638
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r2, r2, r1
_08081638:
	mov r1, r12
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _08081646
	lsls r0, r0, #0x06
	adds r2, r2, r0
_08081646:
	mov r1, r12
	adds r1, #0x8D
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _08081658
	movs r1, #0x4C
	muls r0, r1
	adds r0, r2, r0
	b _0808165A
_08081658:
	adds r0, r2, #0x0
_0808165A:
	cmp r0, #0x00
	bge _08081660
	adds r0, #0xFF
_08081660:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	b _080816D0
_08081666:
	ldr r0, _08081684 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x8A
	ldrb r1, [r2, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0xFF
	beq _08081688
	adds r0, r1, #0x0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	b _0808168A
	.byte 0x00, 0x00
_08081684: .4byte 0x03000FF4
_08081688:
	movs r1, #0x00
_0808168A:
	adds r2, r1, #0x0
	ldr r6, [r6, #0x00]
	mov r12, r6
	mov r1, r12
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080816A4
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r2, r2, r1
_080816A4:
	mov r1, r12
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080816B2
	lsls r0, r0, #0x06
	adds r2, r2, r0
_080816B2:
	mov r1, r12
	adds r1, #0x8D
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080816C4
	movs r1, #0x4C
	muls r0, r1
	adds r0, r2, r0
	b _080816C6
_080816C4:
	adds r0, r2, #0x0
_080816C6:
	cmp r0, #0x00
	bge _080816CC
	adds r0, #0xFF
_080816CC:
	asrs r0, r0, #0x08
	subs r0, r4, r0
_080816D0:
	adds r4, r0, #0x0
_080816D2:
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0D]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080816E2
	lsls r4, r4, #0x01
_080816E2:
	adds r3, #0xF6
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r4
	bgt _080816F8
	movs r0, #0x00
	strh r0, [r3, #0x00]
	adds r0, r5, #0x0
	bl sub_8086700
	b _080816FE
_080816F8:
	ldrh r0, [r3, #0x00]
	subs r0, r0, r4
	strh r0, [r3, #0x00]
_080816FE:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08081706
	adds r1, #0xFF
_08081706:
	asrs r6, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08081710
	adds r2, #0xFF
_08081710:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0808171A
	adds r3, #0xFF
_0808171A:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r0, #0x0B
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_807CC3C
	ldr r0, _0808179C @ =0x0000017B
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08081744
	adds r1, #0xFF
_08081744:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0808174E
	adds r2, #0xFF
_0808174E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08081758
	adds r3, #0xFF
_08081758:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	bl sub_80DF024
	ldr r0, [r5, #0x28]
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x08]
	movs r1, #0x08
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08081776
	movs r2, #0x01
_08081776:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x18
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08081784:
	adds r7, #0x01
	cmp r7, #0x05
	bgt _0808178C
	b _0808157A
_0808178C:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808179C: .4byte 0x0000017B
	thumb_func_start sub_80817A0
sub_80817A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r8, r0
	ldr r6, [r0, #0x08]
	ldr r0, _080818E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _080818EC @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	ldr r2, _080818F0 @ =0x00002054
	cmp r0, #0x00
	bne _080817C4
	subs r2, #0x2F
_080817C4:
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080817E2
	adds r1, #0xFF
_080817E2:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080817EC
	adds r2, #0xFF
_080817EC:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080817F6
	adds r3, #0xFF
_080817F6:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0xF0
	lsls r0, r0, #0x01
	bl sub_80DF024
	movs r7, #0x00
	ldr r2, _080818F4 @ =0xFFFF0000
	mov r9, r2
_08081808:
	ldr r0, _080818E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08081868
	ldr r1, [r6, #0x28]
	movs r5, #0x84
	lsls r5, r5, #0x01
	adds r0, r1, r5
	movs r2, #0x00
	ldsh r3, [r0, r2]
	ldr r0, [r4, #0x28]
	adds r0, r0, r5
	movs r5, #0x00
	ldsh r2, [r0, r5]
	adds r1, #0xEC
	movs r5, #0x00
	ldsh r0, [r1, r5]
	mov r1, r9
	asrs r5, r1, #0x10
	movs r1, #0x8C
	cmp r0, r5
	bne _0808184A
	movs r1, #0x78
_0808184A:
	adds r0, r1, #0x0
	muls r0, r3
	adds r1, r2, #0x0
	bl __divsi3
	adds r1, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8108180
	adds r0, r4, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_08081868:
	adds r1, r7, #0x1
	ldr r0, _080818E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080818CA
	ldr r1, [r6, #0x28]
	movs r2, #0x84
	lsls r2, r2, #0x01
	adds r0, r1, r2
	movs r5, #0x00
	ldsh r3, [r0, r5]
	ldr r0, [r4, #0x28]
	adds r0, r0, r2
	movs r5, #0x00
	ldsh r2, [r0, r5]
	adds r1, #0xEC
	movs r5, #0x00
	ldsh r0, [r1, r5]
	mov r1, r9
	asrs r5, r1, #0x10
	movs r1, #0x8C
	cmp r0, r5
	bne _080818AC
	movs r1, #0x78
_080818AC:
	adds r0, r1, #0x0
	muls r0, r3
	adds r1, r2, #0x0
	bl __divsi3
	adds r1, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8108180
	adds r0, r4, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_080818CA:
	adds r7, #0x02
	cmp r7, #0x05
	ble _08081808
	movs r0, #0x1E
	mov r2, r8
	strh r0, [r2, #0x10]
	ldr r0, _080818F8 @ =0x08081CC1
	str r0, [r2, #0x04]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080818E8: .4byte 0x03000FD8
_080818EC: .4byte 0x000002BE
_080818F0: .4byte 0x00002054
_080818F4: .4byte 0xFFFF0000
_080818F8: .4byte sub_8081CC0
	thumb_func_start sub_80818FC
sub_80818FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r5, [r7, #0x08]
	adds r0, r5, #0x0
	bl sub_8081444
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	adds r6, r0, #0x1
	ldr r0, _08081940 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0D]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0808192E
	lsls r6, r6, #0x01
_0808192E:
	ldr r0, [r5, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xF6
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r6
	bgt _08081944
	movs r0, #0x00
	b _08081948
_08081940: .4byte 0x03000FD8
_08081944:
	ldrh r0, [r1, #0x00]
	subs r0, r0, r6
_08081948:
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08081952
	adds r1, #0xFF
_08081952:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0808195C
	adds r2, #0xFF
_0808195C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08081966
	adds r3, #0xFF
_08081966:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r0, #0x0B
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	bl sub_807CC3C
	ldr r0, _08081A4C @ =0x084FB814
	ldrh r2, [r0, #0x0A]
	ldr r0, _08081A50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, _08081A54 @ =0x000002BE
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	ands r4, r0
	cmp r4, #0x00
	beq _0808199C
	adds r2, #0x01
_0808199C:
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x04
	strh r0, [r7, #0x10]
	ldr r0, _08081A58 @ =0x03001038
	mov r9, r0
	ldr r1, _08081A5C @ =0x0819832C
	ldr r0, _08081A60 @ =0x08198220
	subs r4, r1, r0
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r4
	ldr r1, [r5, #0x28]
	adds r1, #0xD8
	movs r2, #0x03
	mov r8, r2
	ldr r0, [r5, #0x38]
	mov r2, r8
	muls r2, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	cmp r0, #0x00
	bge _080819DE
	adds r0, #0xFF
_080819DE:
	asrs r0, r0, #0x08
	movs r1, #0x04
	bl _call_via_r3
	adds r6, r0, #0x0
	mov r3, r9
	ldr r0, [r3, #0x00]
	adds r2, r0, r4
	ldr r0, [r5, #0x28]
	adds r0, #0xDC
	ldr r1, [r5, #0x3C]
	mov r3, r8
	muls r3, r1
	adds r1, r3, #0x0
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08081A04
	adds r0, #0xFF
_08081A04:
	asrs r0, r0, #0x08
	movs r1, #0x04
	bl _call_via_r2
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r5, #0x40]
	cmp r2, #0x00
	bge _08081A26
	adds r2, #0xFF
_08081A26:
	asrs r2, r2, #0x08
	adds r2, #0x18
	adds r0, r5, #0x0
	movs r1, #0xE0
	lsls r1, r1, #0x03
	bl sub_808842C
	ldrh r0, [r7, #0x10]
	subs r0, #0x01
	strh r0, [r7, #0x10]
	ldr r0, _08081A64 @ =0x08081C7D
	str r0, [r7, #0x04]
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08081A4C: .4byte 0x084FB814
_08081A50: .4byte 0x03000FD8
_08081A54: .4byte 0x000002BE
_08081A58: .4byte 0x03001038
_08081A5C: .4byte 0x0819832C
_08081A60: .4byte 0x08198220
_08081A64: .4byte sub_8081C7C
	thumb_func_start sub_8081A68
sub_8081A68:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08081B28
	movs r1, #0x10
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	beq _08081B20
	adds r6, r0, #0x0
	ldr r1, _08081B14 @ =0x03001038
	mov r10, r1
	ldr r1, _08081B18 @ =0x0819832C
	ldr r0, _08081B1C @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	mov r1, r10
	ldr r0, [r1, #0x00]
	mov r1, r8
	adds r3, r0, r1
	ldr r1, [r4, #0x28]
	adds r1, #0xD8
	subs r7, r6, #0x1
	ldr r0, [r4, #0x38]
	adds r2, r0, #0x0
	muls r2, r7
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	cmp r0, #0x00
	bge _08081AB8
	adds r0, #0xFF
_08081AB8:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	bl _call_via_r3
	mov r9, r0
	mov r1, r10
	ldr r0, [r1, #0x00]
	mov r1, r8
	adds r2, r0, r1
	ldr r0, [r4, #0x28]
	adds r0, #0xDC
	ldr r1, [r4, #0x3C]
	muls r1, r7
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08081ADC
	adds r0, #0xFF
_08081ADC:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r9
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r4, #0x40]
	cmp r2, #0x00
	bge _08081AFE
	adds r2, #0xFF
_08081AFE:
	asrs r2, r2, #0x08
	adds r2, #0x14
	adds r0, r4, #0x0
	movs r1, #0xE0
	lsls r1, r1, #0x03
	bl sub_808842C
	ldrh r0, [r5, #0x10]
	subs r0, #0x01
	strh r0, [r5, #0x10]
	b _08081B28
_08081B14: .4byte 0x03001038
_08081B18: .4byte 0x0819832C
_08081B1C: .4byte 0x08198220
_08081B20:
	movs r0, #0x14
	strh r0, [r5, #0x10]
	ldr r0, _08081B38 @ =0x08081B3D
	str r0, [r5, #0x04]
_08081B28:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08081B38: .4byte sub_8081B3C
	thumb_func_start sub_8081B3C
sub_8081B3C:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r6, [r5, #0x08]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r7, [r0, r2]
	cmp r7, #0x00
	bne _08081BB0
	ldr r0, _08081BA0 @ =0x00000111
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r4, #0x01
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r0, _08081BA4 @ =0x0807DD39
	adds r1, r6, #0x0
	bl sub_807FF48
	ldr r0, _08081BA8 @ =0x08081C55
	str r0, [r5, #0x04]
	strh r7, [r5, #0x10]
	ldr r3, _08081BAC @ =0x03000FD8
	ldr r1, [r3, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r3, [r3, #0x00]
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	ldrb r1, [r0, #0x00]
	mvns r1, r1
	adds r3, r3, r5
	ands r1, r4
	lsls r1, r1, #0x02
	ldrb r2, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _08081BDE
	.byte 0x00, 0x00
_08081BA0: .4byte 0x00000111
_08081BA4: .4byte sub_807DD38
_08081BA8: .4byte sub_8081C54
_08081BAC: .4byte 0x03000FD8
_08081BB0:
	ldrh r1, [r5, #0x10]
	movs r2, #0x10
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	ble _08081BC0
	subs r0, r1, #0x1
	strh r0, [r5, #0x10]
	b _08081BDE
_08081BC0:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08081BE4 @ =0x08081F85
	str r0, [r5, #0x04]
_08081BDE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08081BE4: .4byte sub_8081F84
	thumb_func_start sub_8081BE8
sub_8081BE8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	ldr r0, [r4, #0x28]
	movs r1, #0xC8
	bl sub_810835C
	ldr r0, _08081C48 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08081C4C @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	movs r6, #0xB3
	lsls r6, r6, #0x01
	cmp r0, #0x00
	bne _08081C10
	subs r6, #0x0C
_08081C10:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08081C18
	adds r1, #0xFF
_08081C18:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08081C22
	adds r2, #0xFF
_08081C22:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08081C2C
	adds r3, #0xFF
_08081C2C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_80DF024
	movs r0, #0x3C
	strh r0, [r5, #0x10]
	ldr r0, _08081C50 @ =0x08082181
	str r0, [r5, #0x04]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08081C48: .4byte 0x03000FD8
_08081C4C: .4byte 0x000002BE
_08081C50: .4byte sub_8082180
