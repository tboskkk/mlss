	.syntax unified
	.text

	thumb_func_start sub_8126C3C
sub_8126C3C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	adds r7, r0, #0x0
	add r1, sp, #0x00C
	ldr r0, _08126D30 @ =0x08210F44
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	add r0, sp, #0x01C
	mov r8, r0
	mov r1, r8
	ldr r0, _08126D34 @ =0x08210F54
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r0, #0xF2
	adds r0, r0, r7
	mov r9, r0
	ldrb r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08126D44
	ldr r1, _08126D38 @ =0x00006003
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x4C
	str r0, [sp, #0x004]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r1, _08126D3C @ =0x00006005
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x1C]
	str r5, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x1C]
	bl sprite_show_8020CBC
	ldr r1, [r7, #0x1C]
	adds r0, r7, #0x0
	adds r0, #0xFA
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x05
	adds r0, #0x20
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x1C]
	movs r0, #0x16
	strh r0, [r1, #0x02]
	ldr r1, [r7, #0x1C]
	ldr r0, _08126D40 @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldr r2, [r7, #0x1C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x1C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x1C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x1C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x1C]
	ldrb r1, [r2, #0x10]
	movs r0, #0x3F
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r1, [r7, #0x1C]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x1C]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x01
	mov r1, r9
	strb r0, [r1, #0x00]
	b _081270C6
	.byte 0x00, 0x00
_08126D30: .4byte dword_8210F44 @ =0x08210F44
_08126D34: .4byte dword_8210F54 @ =0x08210F54
_08126D38: .4byte 0x00006003
_08126D3C: .4byte 0x00006005
_08126D40: .4byte 0x0000EFFF
_08126D44:
	cmp r5, #0x01
	beq _08126D4A
	b _08126E90
_08126D4A:
	ldr r1, _08126E88 @ =0x00006005
	movs r6, #0x01
	negs r6, r6
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x00
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r5, r7, #0x0
	adds r5, #0xEC
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r4, r7, #0x0
	adds r4, #0x38
	adds r1, r4, r1
	str r0, [r1, #0x00]
	ldrh r1, [r5, #0x00]
	lsls r0, r1, #0x02
	adds r0, r4, r0
	ldr r0, [r0, #0x00]
	adds r1, #0x03
	movs r2, #0x00
	str r2, [sp, #0x000]
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r0, [r0, #0x00]
	bl sprite_show_8020CBC
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r1, [r1, #0x00]
	add r0, sp
	adds r0, #0x0C
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r1, [r1, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x02]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	ldr r0, _08126E8C @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r3, #0x10
	orrs r0, r3
	strb r0, [r2, #0x1F]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x10]
	movs r0, #0x3F
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x12]
	orrs r0, r3
	strb r0, [r1, #0x12]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x04
	beq _08126E80
	b _081270C6
_08126E80:
	movs r0, #0x02
	mov r2, r9
	strb r0, [r2, #0x00]
	b _081270C6
_08126E88: .4byte 0x00006005
_08126E8C: .4byte 0x0000EFFF
_08126E90:
	movs r3, #0x00
	mov r8, r3
	mov r4, r9
	str r4, [sp, #0x03C]
	adds r0, r7, #0x0
	adds r0, #0xEC
	str r0, [sp, #0x038]
	adds r1, r7, #0x0
	adds r1, #0x20
	str r1, [sp, #0x030]
	movs r6, #0x01
	negs r6, r6
_08126EA8:
	movs r2, #0x00
	mov r9, r2
	mov r3, r8
	lsls r0, r3, #0x03
	adds r3, #0x01
	str r3, [sp, #0x034]
	mov r4, r8
	subs r1, r0, r4
	lsls r1, r1, #0x02
	adds r2, r7, r1
	str r2, [sp, #0x02C]
	ldr r3, [sp, #0x030]
	adds r4, r0, r3
	movs r0, #0x00
	mov r10, r0
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r7, r2
	adds r5, r1, r0
_08126ECE:
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08126FB0
	ldr r3, [sp, #0x02C]
	movs r0, #0x8C
	lsls r0, r0, #0x01
	adds r1, r3, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	beq _08126EE6
	cmp r0, r9
	bne _08126FB0
_08126EE6:
	ldrh r1, [r5, #0x00]
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x00]
	ldrb r1, [r5, #0x02]
	movs r2, #0x00
	str r2, [sp, #0x000]
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	ldrb r1, [r5, #0x02]
	ldrb r2, [r5, #0x03]
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r4, #0x00]
	movs r0, #0xBC
	mov r2, r10
	subs r0, r0, r2
	movs r2, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x68
	mov r3, r8
	cmp r3, #0x00
	beq _08126F34
	movs r0, #0xB4
_08126F34:
	strh r0, [r1, #0x02]
	ldr r1, [r4, #0x00]
	ldr r0, _08126FAC @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x30
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x10]
	movs r3, #0x3F
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	adds r3, #0x3C
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	subs r3, #0x1E
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x12]
	adds r3, #0x1A
	adds r1, r3, #0x0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _08127086
	.byte 0x00, 0x00
_08126FAC: .4byte 0x0000EFFF
_08126FB0:
	adds r0, r7, #0x0
	adds r0, #0xF1
	ldrb r1, [r0, #0x00]
	mov r0, r8
	asrs r1, r0
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _08127084
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x4C
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _08127078 @ =0x00006002
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _0812707C @ =0x00006006
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	mov r1, r9
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r4, #0x00]
	movs r0, #0xBC
	mov r3, r10
	subs r0, r0, r3
	movs r2, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x68
	mov r3, r8
	cmp r3, #0x00
	beq _0812701A
	movs r0, #0xB4
_0812701A:
	strh r0, [r1, #0x02]
	ldr r1, [r4, #0x00]
	ldr r0, _08127080 @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x30
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x10]
	movs r3, #0x3F
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	adds r3, #0x3C
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	subs r3, #0x1E
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08127086
	.byte 0x00, 0x00
_08127078: .4byte 0x00006002
_0812707C: .4byte 0x00006006
_08127080: .4byte 0x0000EFFF
_08127084:
	str r1, [r4, #0x00]
_08127086:
	adds r4, #0x04
	movs r0, #0x28
	add r10, r0
	adds r5, #0x08
	movs r1, #0x01
	add r9, r1
	mov r2, r9
	cmp r2, #0x01
	bgt _0812709A
	b _08126ECE
_0812709A:
	ldr r3, [sp, #0x034]
	mov r8, r3
	cmp r3, #0x02
	bgt _081270A4
	b _08126EA8
_081270A4:
	movs r4, #0x00
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _081270D8 @ =0x03000D48
	ldr r0, _081270DC @ =0x0203FFB8
	ldr r0, [r0, #0x3C]
	ldr r3, _081270E0 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r0, [sp, #0x03C]
	strb r4, [r0, #0x00]
	ldr r1, [sp, #0x038]
	strh r4, [r1, #0x00]
_081270C6:
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081270D8: .4byte 0x03000D48
_081270DC: .4byte 0x0203FFB8
_081270E0: .4byte 0x00000A14
