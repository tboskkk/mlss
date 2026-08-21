	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8145C58
sub_8145C58:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r3, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r7, [r0, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08145C86
	b _08145DB4
_08145C86:
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08145C94
	b _08145D98
_08145C94:
	adds r0, r6, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145CA8
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _08145CB4
_08145CA8:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08145CB4:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r3, [r0, #0x28]
	add r6, sp, #0x004
	ldr r2, _08145CF4 @ =0x03001038
	ldr r0, _08145CF8 @ =0x0819832C
	ldr r1, _08145CFC @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08145D00
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08145D04
_08145CF4: .4byte 0x03001038
_08145CF8: .4byte 0x0819832C
_08145CFC: .4byte 0x08198220
_08145D00:
	movs r1, #0x01
	negs r1, r1
_08145D04:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	strb r0, [r6, #0x00]
	ldr r2, _08145D8C @ =0x03001038
	ldr r0, _08145D90 @ =0x0819832C
	ldr r1, _08145D94 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	add r1, sp, #0x004
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	beq _08145D3A
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
_08145D3A:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r0, r0, r7
	adds r0, #0x22
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r2, [r0, #0x26]
	lsls r4, r4, #0x08
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_813B394
	movs r1, #0xBE
	lsls r1, r1, #0x01
	add r1, r8
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08145DC8
_08145D8C: .4byte 0x03001038
_08145D90: .4byte 0x0819832C
_08145D94: .4byte 0x08198220
_08145D98:
	ldr r0, _08145DAC @ =0x0000020F
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08145DB0 @ =0x08146E9D
	str r0, [r3, #0x00]
	b _08145DC8
_08145DAC: .4byte 0x0000020F
_08145DB0: .4byte sub_8146E9C
_08145DB4:
	adds r0, r5, #0x0
	bl sub_813ADF0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08145DC8
	ldrb r0, [r4, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x00]
_08145DC8:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8145DD4
sub_8145DD4:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	ldr r0, _08145E7C @ =0x0000033E
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r3, #0xEE
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	adds r3, #0x08
	adds r1, r5, r3
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0xF4
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x00]
	ldr r1, _08145E80 @ =0x0000033D
	adds r2, r5, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r3, r5, r1
	movs r4, #0x00
	strh r0, [r3, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r2, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	movs r3, #0xD8
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x06]
	adds r2, #0x20
	strb r0, [r2, #0x00]
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r0, r5, r1
	strh r4, [r0, #0x00]
	subs r3, #0x18
	adds r1, r5, r3
	ldr r0, _08145E84 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _08145E88 @ =0x08145E8D
	str r0, [r1, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08145E7C: .4byte 0x0000033E
_08145E80: .4byte 0x0000033D
_08145E84: .4byte sub_813B380
_08145E88: .4byte sub_8145E8C
	thumb_func_start sub_8145E8C
sub_8145E8C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r4, #0x0
	adds r7, #0x58
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r3, r4, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08145EC4
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08145EBC @ =0x08146005
	str r0, [r2, #0x00]
	ldr r0, _08145EC0 @ =0x0814616D
	str r0, [r2, #0x08]
	b _08145FF0
	.byte 0x00, 0x00
_08145EBC: .4byte sub_8146004
_08145EC0: .4byte sub_814616C
_08145EC4:
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r5, r4, r1
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08145ED4
	subs r0, #0x01
	b _08145F18
_08145ED4:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x08
	bl sub_81DD77C
	adds r1, r0, #0x0
	adds r3, r4, #0x0
	adds r3, #0x24
	movs r0, #0x07
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r3, _08145F44 @ =0x03001038
	ldr r1, _08145F48 @ =0x0819832C
	ldr r2, _08145F4C @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x1E
_08145F18:
	strh r0, [r5, #0x00]
	movs r0, #0x03
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x11
	movs r3, #0x00
	bl sub_8139FB0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145FF0
	adds r0, r6, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145F50
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _08145F5C
_08145F44: .4byte 0x03001038
_08145F48: .4byte 0x0819832C
_08145F4C: .4byte 0x08198220
_08145F50:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08145F5C:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r3, [r0, #0x28]
	ldr r2, _08145F9C @ =0x03001038
	ldr r0, _08145FA0 @ =0x0819832C
	ldr r1, _08145FA4 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r5, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08145FA8
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08145FAC
	.byte 0x00, 0x00
_08145F9C: .4byte 0x03001038
_08145FA0: .4byte 0x0819832C
_08145FA4: .4byte 0x08198220
_08145FA8:
	movs r1, #0x01
	negs r1, r1
_08145FAC:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, _08145FF8 @ =0x03001038
	ldr r0, _08145FFC @ =0x0819832C
	ldr r1, _08146000 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, r5
	beq _08145FE2
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
_08145FE2:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_08145FF0:
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08145FF8: .4byte 0x03001038
_08145FFC: .4byte 0x0819832C
_08146000: .4byte 0x08198220
	thumb_func_start sub_8146004
sub_8146004:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	adds r0, r0, r4
	ldrb r1, [r0, #0x0E]
	ldr r2, _08146080 @ =0x000002DE
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	subs r1, #0xC0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146084 @ =0x0000020D
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146088 @ =0x0814608D
	str r0, [r5, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146080: .4byte 0x000002DE
_08146084: .4byte 0x0000020D
_08146088: .4byte sub_814608C
	thumb_func_start sub_814608C
sub_814608C:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _08146146
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _081460E2
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	subs r2, #0x9A
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	b _081460FE
_081460E2:
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	negs r0, r0
	ldr r2, _08146128 @ =0x00000242
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
_081460FE:
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0814613C
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0814612C
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	b _08146130
_08146128: .4byte 0x00000242
_0814612C:
	movs r0, #0x04
	orrs r0, r1
_08146130:
	strb r0, [r2, #0x00]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
_0814613C:
	movs r0, #0xBE
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146146:
	ldr r2, _08146168 @ =0x000002DE
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08146162
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, [r6, #0x08]
	str r0, [r6, #0x00]
_08146162:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08146168: .4byte 0x000002DE
	thumb_func_start sub_814616C
sub_814616C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	mov r8, r0
	adds r6, r1, #0x0
	str r2, [sp, #0x020]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	ldr r3, _081461DC @ =0x0000020E
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	adds r0, r0, r4
	ldrb r1, [r0, #0x0A]
	ldr r2, _081461E0 @ =0x000002DE
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r1, r6, r3
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	mov r0, r8
	add r1, sp, #0x010
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081461F0
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	b _081461FC
_081461DC: .4byte 0x0000020E
_081461E0: .4byte 0x000002DE
_081461E4:
	ldr r0, _081461EC @ =0x08146499
	ldr r4, [sp, #0x020]
	str r0, [r4, #0x00]
	b _08146480
_081461EC: .4byte sub_8146498
_081461F0:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081461FC:
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x28]
	mov r9, r0
	movs r0, #0x00
	mov r10, r0
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x024]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x028]
	mov r3, sp
	adds r3, #0x1C
	str r3, [sp, #0x02C]
	mov r4, sp
	adds r4, #0x08
	str r4, [sp, #0x030]
	mov r0, sp
	adds r0, #0x0C
	str r0, [sp, #0x034]
	mov r5, r9
	movs r7, #0x00
_0814622A:
	ldr r2, _08146258 @ =0x03001038
	ldr r1, _0814625C @ =0x0819832C
	ldr r0, _08146260 @ =0x08198220
	subs r1, r1, r0
	ldr r2, [r2, #0x00]
	adds r2, r2, r1
	mov r0, r9
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r4, r0, #0x0
	cmp r4, #0x01
	beq _081462EC
	cmp r4, #0x01
	bgt _08146264
	cmp r4, #0x00
	beq _08146270
	b _08146408
	.byte 0x00, 0x00
_08146258: .4byte 0x03001038
_0814625C: .4byte 0x0819832C
_08146260: .4byte 0x08198220
_08146264:
	cmp r4, #0x02
	beq _0814634C
	cmp r4, #0x03
	bne _0814626E
	b _08146396
_0814626E:
	b _08146408
_08146270:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	adds r1, r0, #0x0
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x01
	beq _081462A8
	cmp r1, #0x01
	bcc _08146294
	cmp r1, #0x02
	beq _081462C4
	cmp r1, #0x03
	beq _081462D6
	b _08146408
_08146294:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, _081462A4 @ =0xFFFFA000
	adds r2, r2, r3
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	b _081463E8
_081462A4: .4byte 0xFFFFA000
_081462A8:
	ldr r1, [r5, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x06
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	ldr r3, _081462C0 @ =0xFFFFE000
	adds r2, r2, r3
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	b _081463E8
	.byte 0x00, 0x00
_081462C0: .4byte 0xFFFFE000
_081462C4:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	b _081463E8
_081462D6:
	ldr r1, [r5, #0x0C]
	ldr r0, _081462E8 @ =0xFFFFE000
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	b _081463E8
_081462E8: .4byte 0xFFFFE000
_081462EC:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	adds r1, r0, #0x0
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x01
	beq _08146324
	cmp r1, #0x01
	bcc _08146310
	cmp r1, #0x02
	beq _08146330
	cmp r1, #0x03
	beq _0814633E
	b _08146408
_08146310:
	ldr r1, [r5, #0x0C]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r1, r1, r2
	ldr r2, [r5, #0x10]
	ldr r3, _08146320 @ =0xFFFFE000
	b _081463E0
	.byte 0x00, 0x00
_08146320: .4byte 0xFFFFE000
_08146324:
	ldr r1, [r5, #0x0C]
	movs r4, #0xC0
	lsls r4, r4, #0x07
	adds r1, r1, r4
	ldr r2, [r5, #0x10]
	b _081463E2
_08146330:
	ldr r1, [r5, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x06
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	b _081463E2
_0814633E:
	ldr r1, [r5, #0x0C]
	ldr r0, _08146348 @ =0xFFFFD000
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	b _081463E2
_08146348: .4byte 0xFFFFD000
_0814634C:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	adds r1, r0, #0x0
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x01
	beq _0814637C
	cmp r1, #0x01
	bcc _08146370
	cmp r1, #0x02
	beq _0814638A
	cmp r1, #0x03
	beq _081463D4
	b _08146408
_08146370:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, _08146378 @ =0xFFFFD000
	b _081463E0
_08146378: .4byte 0xFFFFD000
_0814637C:
	ldr r1, [r5, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x06
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	b _081463E2
_0814638A:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	movs r4, #0xC0
	lsls r4, r4, #0x07
	adds r2, r2, r4
	b _081463E2
_08146396:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	ands r0, r4
	cmp r0, #0x01
	beq _081463C8
	cmp r0, #0x01
	bcc _081463B6
	cmp r0, #0x02
	beq _081463D4
	cmp r0, #0x03
	beq _081463F4
	b _08146408
_081463B6:
	ldr r1, [r5, #0x0C]
	ldr r0, _081463C4 @ =0xFFFFE000
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	b _081463E2
	.byte 0x00, 0x00
_081463C4: .4byte 0xFFFFE000
_081463C8:
	ldr r1, [r5, #0x0C]
	movs r4, #0xC0
	lsls r4, r4, #0x06
	adds r1, r1, r4
	ldr r2, [r5, #0x10]
	b _081463E2
_081463D4:
	ldr r1, [r5, #0x0C]
	ldr r0, _081463F0 @ =0xFFFFE000
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x06
_081463E0:
	adds r2, r2, r3
_081463E2:
	ldr r3, [r5, #0x14]
	str r7, [sp, #0x000]
	str r7, [sp, #0x004]
_081463E8:
	adds r0, r6, #0x0
	bl sub_8047F60
	b _08146408
_081463F0: .4byte 0xFFFFE000
_081463F4:
	ldr r1, [r5, #0x0C]
	ldr r4, _08146490 @ =0xFFFFA000
	adds r1, r1, r4
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	str r7, [sp, #0x000]
	str r7, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
_08146408:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	ldr r3, [sp, #0x028]
	str r3, [sp, #0x000]
	ldr r4, [sp, #0x02C]
	str r4, [sp, #0x004]
	ldr r3, [sp, #0x030]
	strb r7, [r3, #0x00]
	movs r3, #0x01
	ldr r4, [sp, #0x034]
	strb r3, [r4, #0x00]
	ldr r3, [sp, #0x024]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0814645C
	ldr r2, [r6, #0x0C]
	ldr r3, [r6, #0x10]
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r4, [sp, #0x008]
	mov r0, r8
	adds r1, r6, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814645C
	b _081461E4
_0814645C:
	movs r0, #0x01
	add r10, r0
	mov r1, r10
	cmp r1, #0x03
	bgt _08146468
	b _0814622A
_08146468:
	ldr r1, [r6, #0x34]
	ldr r2, [r6, #0x38]
	ldr r3, [r6, #0x3C]
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
	ldr r0, _08146494 @ =0x08146499
	ldr r2, [sp, #0x020]
	str r0, [r2, #0x00]
_08146480:
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08146490: .4byte 0xFFFFA000
_08146494: .4byte sub_8146498
	thumb_func_start sub_8146498
sub_8146498:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _08146552
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _081464EE
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	subs r2, #0x9A
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	b _0814650A
_081464EE:
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	negs r0, r0
	ldr r2, _08146534 @ =0x00000242
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
_0814650A:
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08146548
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08146538
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	b _0814653C
_08146534: .4byte 0x00000242
_08146538:
	movs r0, #0x04
	orrs r0, r1
_0814653C:
	strb r0, [r2, #0x00]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146548:
	movs r0, #0xBE
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146552:
	ldr r2, _081465A4 @ =0x000002DE
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0814659E
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081465A8 @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081465AC @ =0x081465B1
	str r0, [r6, #0x00]
_0814659E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081465A4: .4byte 0x000002DE
_081465A8: .4byte 0x0000020D
_081465AC: .4byte sub_81465B0
	thumb_func_start sub_81465B0
sub_81465B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r7, [r0, #0x00]
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081465DE
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _081465EA
_081465DE:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081465EA:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	ldrb r0, [r0, #0x12]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _08146654 @ =0x03001038
	ldr r0, _08146658 @ =0x0819832C
	ldr r1, _0814665C @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08146660
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08146664
_08146654: .4byte 0x03001038
_08146658: .4byte 0x0819832C
_0814665C: .4byte 0x08198220
_08146660:
	movs r1, #0x01
	negs r1, r1
_08146664:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	adds r1, r0, #0x0
	adds r1, #0x04
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	ldrb r0, [r0, #0x16]
	adds r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldr r0, _081466A0 @ =0x0813B1E9
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _081466A4 @ =0x081466A9
	str r0, [r1, #0x0C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081466A0: .4byte sub_813B1E8
_081466A4: .4byte sub_81466A8
	thumb_func_start sub_81466A8
sub_81466A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	mov r10, r2
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x00C]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r5, [r0, #0x00]
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081466E6
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _081466F2
_081466E6:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081466F2:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	ldr r2, _0814673C @ =0x03001038
	ldr r0, _08146740 @ =0x0819832C
	ldr r1, _08146744 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r7, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r5, #0x0
	bl sub_8146DC8
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	cmp r6, #0x01
	beq _08146796
	cmp r6, #0x01
	bgt _08146748
	cmp r6, #0x00
	beq _08146752
	b _08146864
_0814673C: .4byte 0x03001038
_08146740: .4byte 0x0819832C
_08146744: .4byte 0x08198220
_08146748:
	cmp r6, #0x02
	beq _081467D4
	cmp r6, #0x03
	beq _0814681A
	b _08146864
_08146752:
	ldr r0, [r4, #0x10]
	ldr r2, [r7, #0x10]
	subs r0, r0, r2
	ldr r1, _08146778 @ =0xFFFFF000
	cmp r0, r1
	blt _08146780
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _0814677C @ =0x08146005
	mov r2, r10
	str r0, [r2, #0x00]
	b _08146AE2
	.byte 0x00, 0x00
_08146778: .4byte 0xFFFFF000
_0814677C: .4byte sub_8146004
_08146780:
	ldr r1, [r7, #0x0C]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	b _08146812
_08146796:
	ldr r0, [r4, #0x0C]
	ldr r2, [r7, #0x0C]
	subs r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x05
	cmp r0, r1
	bgt _081467BC
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _081467B8 @ =0x08146005
	b _08146ADE
_081467B8: .4byte sub_8146004
_081467BC:
	movs r0, #0xA0
	lsls r0, r0, #0x04
	adds r1, r2, r0
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	str r6, [sp, #0x000]
	b _0814680E
_081467D4:
	ldr r0, [r4, #0x10]
	ldr r2, [r7, #0x10]
	subs r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x05
	cmp r0, r1
	bgt _081467FC
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _081467F8 @ =0x08146005
	b _08146ADE
	.byte 0x00, 0x00
_081467F8: .4byte sub_8146004
_081467FC:
	ldr r1, [r7, #0x0C]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
_0814680E:
	movs r0, #0x00
	str r0, [sp, #0x004]
_08146812:
	adds r0, r5, #0x0
	bl sub_8047F60
	b _08146864
_0814681A:
	ldr r0, [r4, #0x0C]
	ldr r2, [r7, #0x0C]
	subs r0, r0, r2
	ldr r1, _0814683C @ =0xFFFFF000
	cmp r0, r1
	blt _08146844
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _08146840 @ =0x08146005
	b _08146ADE
	.byte 0x00, 0x00
_0814683C: .4byte 0xFFFFF000
_08146840: .4byte sub_8146004
_08146844:
	ldr r0, _081468F8 @ =0xFFFFF600
	adds r1, r2, r0
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
_08146864:
	adds r1, r6, #0x0
	adds r1, #0x08
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	mov r9, r1
	mov r1, r9
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [sp, #0x00C]
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r3, [r0, #0x1A]
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	mov r4, sp
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A284
	cmp r6, #0x00
	bne _08146938
	ldr r2, _081468FC @ =0x00000242
	adds r2, r2, r5
	mov r8, r2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	cmp r1, #0x00
	bge _081468BC
	negs r1, r1
_081468BC:
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _081468CC
	negs r0, r0
_081468CC:
	cmp r1, r0
	blt _08146900
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r6, [sp, #0x000]
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r4, #0x00]
	mov r2, r8
	movs r0, #0x00
	ldsh r1, [r2, r0]
	lsrs r1, r1, #0x1F
	mov r2, r9
	ands r1, r2
	b _08146A52
	.byte 0x00, 0x00
_081468F8: .4byte 0xFFFFF600
_081468FC: .4byte 0x00000242
_08146900:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r6, [sp, #0x000]
	movs r1, #0x09
	movs r3, #0x00
	bl sub_801E150
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r1, #0x10
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r1, _08146934 @ =0x0000027A
	adds r0, r5, r1
	movs r1, #0x06
	strh r1, [r0, #0x00]
	adds r2, #0x02
	b _08146A98
	.byte 0x00, 0x00
_08146934: .4byte 0x0000027A
_08146938:
	cmp r6, #0x01
	bne _08146988
	ldr r1, _08146984 @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	bge _0814694A
	negs r1, r1
_0814694A:
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r6, r5, r0
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _0814695A
	negs r0, r0
_0814695A:
	cmp r1, r0
	ble _08146960
	b _08146A68
_08146960:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	mvns r1, r1
	b _08146A4C
	.byte 0x00, 0x00
_08146984: .4byte 0x00000242
_08146988:
	cmp r6, #0x02
	bne _08146A0C
	ldr r0, _081469D0 @ =0x00000242
	adds r6, r5, r0
	movs r2, #0x00
	ldsh r1, [r6, r2]
	cmp r1, #0x00
	bge _0814699A
	negs r1, r1
_0814699A:
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _081469AA
	negs r0, r0
_081469AA:
	cmp r1, r0
	blt _081469D4
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	mvns r1, r1
	b _08146A4C
_081469D0: .4byte 0x00000242
_081469D4:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x09
	movs r3, #0x00
	bl sub_801E150
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r1, #0x10
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r1, _08146A08 @ =0x0000027A
	adds r0, r5, r1
	movs r1, #0x06
	strh r1, [r0, #0x00]
	adds r2, #0x02
	b _08146A98
_08146A08: .4byte 0x0000027A
_08146A0C:
	ldr r1, _08146A64 @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	bge _08146A1A
	negs r1, r1
_08146A1A:
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r6, r5, r0
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _08146A2A
	negs r0, r0
_08146A2A:
	cmp r1, r0
	bgt _08146A68
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r6, r2]
_08146A4C:
	lsrs r1, r1, #0x1F
	mov r0, r9
	ands r1, r0
_08146A52:
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	b _08146AA8
	.byte 0x00, 0x00
_08146A64: .4byte 0x00000242
_08146A68:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_801E150
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r1, #0x06
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	subs r2, #0x06
_08146A98:
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r5, r2
	strh r1, [r0, #0x00]
_08146AA8:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	ldr r2, [sp, #0x00C]
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r2, r0
	movs r0, #0x0F
	strh r0, [r1, #0x00]
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r2, r2, r1
	ldrb r1, [r2, #0x00]
	subs r0, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146AF4 @ =0x0000020D
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146AF8 @ =0x08146AFD
_08146ADE:
	mov r1, r10
	str r0, [r1, #0x00]
_08146AE2:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146AF4: .4byte 0x0000020D
_08146AF8: .4byte sub_8146AFC
	thumb_func_start sub_8146AFC
sub_8146AFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r6, r5, r2
	ldrb r1, [r6, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08146B68
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08146B68
	ldr r2, _08146C3C @ =0x03001038
	ldr r0, _08146C40 @ =0x0819832C
	ldr r1, _08146C44 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldrb r0, [r6, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6, #0x00]
_08146B68:
	ldr r1, _08146C48 @ =0x00000242
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, _08146C4C @ =0x0000020F
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08146BCE
	ldr r2, _08146C50 @ =0x00000216
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08146BCE
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08146BCE
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08146C68
_08146BCE:
	ldr r2, _08146C3C @ =0x03001038
	ldr r0, _08146C40 @ =0x0819832C
	ldr r1, _08146C44 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _08146C54 @ =0x0000020D
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146C58 @ =0x0813B1E9
	str r0, [r7, #0x00]
	ldr r0, _08146C5C @ =0x08146005
	str r0, [r7, #0x0C]
	mov r0, r9
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _08146C64
	ldr r0, _08146C60 @ =0x0814616D
	b _08146C66
_08146C3C: .4byte 0x03001038
_08146C40: .4byte 0x0819832C
_08146C44: .4byte 0x08198220
_08146C48: .4byte 0x00000242
_08146C4C: .4byte 0x0000020F
_08146C50: .4byte 0x00000216
_08146C54: .4byte 0x0000020D
_08146C58: .4byte sub_813B1E8
_08146C5C: .4byte sub_8146004
_08146C60: .4byte sub_814616C
_08146C64:
	ldr r0, _08146C74 @ =0x08146E41
_08146C66:
	str r0, [r7, #0x08]
_08146C68:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08146C74: .4byte sub_8146E40
	thumb_func_start sub_8146C78
sub_8146C78:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _08146D3A
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08146CD4
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r2, _08146CD0 @ =0x00000242
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r3, #0x00
	ldsh r1, [r0, r3]
	b _08146CF0
	.byte 0x00, 0x00
_08146CD0: .4byte 0x00000242
_08146CD4:
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	negs r0, r0
	ldr r2, _08146D1C @ =0x00000242
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	movs r3, #0x00
	ldsh r1, [r1, r3]
_08146CF0:
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08146D30
	movs r3, #0xBF
	lsls r3, r3, #0x01
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08146D20
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	b _08146D24
	.byte 0x00, 0x00
_08146D1C: .4byte 0x00000242
_08146D20:
	movs r0, #0x04
	orrs r0, r1
_08146D24:
	strb r0, [r2, #0x00]
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146D30:
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146D3A:
	ldr r3, _08146DBC @ =0x000002DE
	adds r1, r4, r3
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08146DB6
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _08146DC0 @ =0x0000020D
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	subs r3, #0x95
	adds r0, r5, r3
	ldrh r0, [r0, #0x00]
	subs r3, #0x20
	adds r1, r5, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x06]
	adds r2, #0x20
	strb r0, [r2, #0x00]
	ldr r0, _08146DC4 @ =0x08145E8D
	str r0, [r6, #0x00]
_08146DB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08146DBC: .4byte 0x000002DE
_08146DC0: .4byte 0x0000020D
_08146DC4: .4byte sub_8145E8C
