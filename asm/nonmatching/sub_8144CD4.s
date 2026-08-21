	.syntax unified
	.text

	thumb_func_start sub_8144CD4
sub_8144CD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	str r2, [sp, #0x018]
	adds r0, r6, #0x0
	adds r0, #0x58
	str r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r6
	mov r8, r1
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x30]
	mov r10, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	mov r9, r0
	adds r0, r5, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08144D30
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08144D3C
_08144D30:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08144D3C:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r7, [r0, #0x28]
	ldr r3, [sp, #0x01C]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x1A
	ldsh r4, [r0, r2]
	cmp r4, #0x00
	beq _08144D86
	cmp r4, #0x01
	beq _08144DB6
	mov r3, r9
	str r3, [sp, #0x000]
	mov r0, r8
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	mov r0, r8
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	mov r3, r10
	b _08144ECA
_08144D86:
	mov r0, r9
	str r0, [sp, #0x000]
	mov r0, r8
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	mov r0, r8
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	str r4, [sp, #0x010]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	mov r3, r10
	bl sub_813AA5C
	b _08144ECE
_08144DB6:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	ands r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _08144E54
	mov r1, r9
	str r1, [sp, #0x000]
	mov r2, r8
	adds r2, #0x40
	str r2, [sp, #0x020]
	movs r0, #0x00
	ldsb r0, [r2, r0]
	str r0, [sp, #0x004]
	mov r4, r8
	adds r4, #0x41
	movs r0, #0x00
	ldsb r0, [r4, r0]
	str r0, [sp, #0x008]
	movs r3, #0x22
	str r3, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	mov r3, r10
	bl sub_813AA5C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _08144ECE
	ldr r2, _08144E48 @ =0x03001038
	ldr r0, _08144E4C @ =0x0819832C
	ldr r1, _08144E50 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r0, r10
	movs r1, #0x02
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r1, r9
	str r1, [sp, #0x000]
	ldr r2, [sp, #0x020]
	movs r0, #0x00
	ldsb r0, [r2, r0]
	str r0, [sp, #0x004]
	movs r0, #0x00
	ldsb r0, [r4, r0]
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r1, #0x00
	str r1, [sp, #0x010]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	bl sub_813AA5C
	b _08144ECE
	.byte 0x00, 0x00
_08144E48: .4byte 0x03001038
_08144E4C: .4byte 0x0819832C
_08144E50: .4byte 0x08198220
_08144E54:
	mov r2, r9
	str r2, [sp, #0x000]
	mov r3, r8
	adds r3, #0x40
	str r3, [sp, #0x024]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	str r0, [sp, #0x004]
	mov r0, r8
	adds r0, #0x41
	str r0, [sp, #0x028]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r1, #0x22
	str r1, [sp, #0x00C]
	str r4, [sp, #0x010]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	mov r3, r10
	bl sub_813AC5C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _08144ECE
	ldr r2, _08144F3C @ =0x03001038
	ldr r0, _08144F40 @ =0x0819832C
	ldr r1, _08144F44 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r0, r10
	movs r1, #0x02
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r2, r9
	str r2, [sp, #0x000]
	ldr r1, [sp, #0x024]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	str r0, [sp, #0x004]
	ldr r2, [sp, #0x028]
	movs r0, #0x00
	ldsb r0, [r2, r0]
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	str r4, [sp, #0x010]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r7, #0x0
_08144ECA:
	bl sub_813AC5C
_08144ECE:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08144F3C @ =0x03001038
	ldr r0, _08144F40 @ =0x0819832C
	ldr r1, _08144F44 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r1, [r0, #0x00]
	ldr r3, [sp, #0x01C]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _08144F48 @ =0x08144F4D
	ldr r3, [sp, #0x018]
	str r0, [r3, #0x00]
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08144F3C: .4byte 0x03001038
_08144F40: .4byte 0x0819832C
_08144F44: .4byte 0x08198220
_08144F48: .4byte sub_8144F4C
