	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8146E40
sub_8146E40:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	movs r3, #0xF2
	lsls r3, r3, #0x01
	adds r0, r6, r3
	adds r3, #0x04
	adds r4, r6, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r1, r6, r0
	subs r0, #0xDC
	strh r0, [r1, #0x00]
	ldr r2, _08146E94 @ =0x000002DE
	adds r1, r6, r2
	movs r0, #0x3C
	strh r0, [r1, #0x00]
	ldr r0, _08146E98 @ =0x08146C79
	str r0, [r5, #0x00]
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146E94: .4byte 0x000002DE
_08146E98: .4byte sub_8146C78
	thumb_func_start sub_8146E9C
sub_8146E9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	adds r7, r5, #0x0
	adds r7, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08146ECA
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _08146ED6
_08146ECA:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08146ED6:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r3, [r0, #0x2E]
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	mov r12, sp
	movs r0, #0x00
	mov r4, r12
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A284
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r4, #0xC4
	lsls r4, r4, #0x01
	adds r1, r7, r4
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	ldr r0, _08146F28 @ =0x0814704D
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146F28: .4byte sub_814704C
	thumb_func_start sub_8146F2C
sub_8146F2C:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r0, r0, r4
	ldrb r1, [r0, #0x1E]
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldr r0, [r2, #0x00]
	ldr r1, _08146FA0 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r0, _08146FA4 @ =0x0000020F
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146FA8 @ =0x08145C59
	str r0, [r5, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146FA0: .4byte 0xFFFC7FFF
_08146FA4: .4byte 0x0000020F
_08146FA8: .4byte sub_8145C58
	thumb_func_start sub_8146FAC
sub_8146FAC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r1, #0x0
	mov r8, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r6, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r1, [r0, #0x30]
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	bl sub_813A5C8
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _0814700C @ =0x08145B89
	mov r1, r8
	str r0, [r1, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0814700C: .4byte sub_8145B88
	thumb_func_start sub_8147010
sub_8147010:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _08147040 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08147044 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08147048 @ =0x08146FAD
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08147040: .4byte 0x0000033E
_08147044: .4byte sub_813B380
_08147048: .4byte sub_8146FAC
	thumb_func_start sub_814704C
sub_814704C:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r4, r2, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08147060
	ldr r0, _08147068 @ =0x0814706D
	str r0, [r4, #0x00]
_08147060:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147068: .4byte sub_814706C
	thumb_func_start sub_814706C
sub_814706C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r3, [r0, #0x36]
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	mov r4, sp
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_813A284
	ldr r0, _081470B4 @ =0x081470B9
	str r0, [r5, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081470B4: .4byte sub_81470B8
	thumb_func_start sub_81470B8
sub_81470B8:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081470E8
	adds r0, r5, #0x0
	adds r0, #0x3E
	ldrb r0, [r0, #0x00]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _081470F0 @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _081470F4 @ =0x08146FAD
	str r0, [r6, #0x0C]
_081470E8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081470F0: .4byte sub_813B1E8
_081470F4: .4byte sub_8146FAC
	thumb_func_start sub_81470F8
sub_81470F8:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _0814718C @ =0x0000033E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8148C20
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _08147190 @ =0x0000020F
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08147194 @ =0x0000020E
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08147198 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r4, r4, r1
	ldr r0, _0814719C @ =0x08148D41
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814718C: .4byte 0x0000033E
_08147190: .4byte 0x0000020F
_08147194: .4byte 0x0000020E
_08147198: .4byte sub_813B380
_0814719C: .4byte sub_8148D40
	thumb_func_start sub_81471A0
sub_81471A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r7, r0, #0x0
	mov r10, r1
	str r2, [sp, #0x020]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x58
	str r1, [sp, #0x024]
	str r0, [sp, #0x028]
	add r4, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081471E0
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _081471E4
_081471E0:
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
_081471E4:
	strb r0, [r4, #0x00]
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r6, [r0, #0x28]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	movs r4, #0x04
	ldsh r0, [r0, r4]
	cmp r0, #0x04
	bne _081472E2
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x04
	ldsh r0, [r0, r2]
	cmp r0, #0x04
	bne _081472E2
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	adds r3, #0x42
	adds r3, r3, r6
	mov r9, r3
	movs r4, #0x00
	ldsh r1, [r3, r4]
	lsls r2, r1, #0x03
	subs r2, r2, r1
	lsls r2, r2, #0x03
	adds r2, r2, r1
	ldr r1, [r6, #0x0C]
	adds r1, r1, r2
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r2, r2, r6
	mov r8, r2
	movs r3, #0x00
	ldsh r2, [r2, r3]
	lsls r3, r2, #0x03
	subs r3, r3, r2
	lsls r3, r3, #0x03
	adds r3, r3, r2
	ldr r2, [r6, #0x10]
	adds r2, r2, r3
	add r3, sp, #0x014
	add r4, sp, #0x018
	str r4, [sp, #0x000]
	add r4, sp, #0x01C
	str r4, [sp, #0x004]
	add r5, sp, #0x008
	movs r4, #0x00
	strb r4, [r5, #0x00]
	add r5, sp, #0x00C
	movs r4, #0x01
	strb r4, [r5, #0x00]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _08147270
	b _08147424
_08147270:
	mov r0, r9
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r2, [r6, #0x0C]
	adds r2, r2, r0
	mov r3, r8
	movs r0, #0x00
	ldsh r1, [r3, r0]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r3, [r6, #0x10]
	adds r3, r3, r0
	ldr r0, [sp, #0x014]
	str r0, [sp, #0x000]
	movs r5, #0x01
	str r5, [sp, #0x004]
	str r4, [sp, #0x008]
	adds r0, r7, #0x0
	mov r1, r10
	bl sub_813A068
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _081472B0
	b _08147424
_081472B0:
	mov r2, r9
	movs r3, #0x00
	ldsh r1, [r2, r3]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r1, [r6, #0x0C]
	adds r1, r1, r0
	mov r0, r8
	movs r3, #0x00
	ldsh r2, [r0, r3]
	lsls r0, r2, #0x03
	subs r0, r0, r2
	lsls r0, r0, #0x03
	adds r0, r0, r2
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	ldr r3, [sp, #0x014]
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r0, [sp, #0x028]
	bl sub_8047F60
	b _0814738A
_081472E2:
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r4, _08147434 @ =0x00000242
	adds r4, r4, r6
	mov r9, r4
	movs r1, #0x00
	ldsh r2, [r4, r1]
	lsls r2, r2, #0x05
	ldr r1, [r6, #0x0C]
	adds r1, r1, r2
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r2, r2, r6
	mov r8, r2
	movs r4, #0x00
	ldsh r3, [r2, r4]
	lsls r3, r3, #0x05
	ldr r2, [r6, #0x10]
	adds r2, r2, r3
	add r3, sp, #0x014
	add r4, sp, #0x018
	str r4, [sp, #0x000]
	add r4, sp, #0x01C
	str r4, [sp, #0x004]
	add r5, sp, #0x008
	movs r4, #0x00
	strb r4, [r5, #0x00]
	add r5, sp, #0x00C
	movs r4, #0x01
	strb r4, [r5, #0x00]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _08147424
	mov r2, r9
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x05
	ldr r2, [r6, #0x0C]
	adds r2, r2, r0
	mov r4, r8
	movs r3, #0x00
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x05
	ldr r3, [r6, #0x10]
	adds r3, r3, r0
	ldr r0, [sp, #0x014]
	str r0, [sp, #0x000]
	movs r5, #0x01
	str r5, [sp, #0x004]
	str r1, [sp, #0x008]
	adds r0, r7, #0x0
	mov r1, r10
	bl sub_813A068
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _08147424
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x05
	ldr r1, [r6, #0x0C]
	adds r1, r1, r0
	mov r3, r8
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x05
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	ldr r3, [sp, #0x014]
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r0, [sp, #0x028]
	bl sub_8047F60
_0814738A:
	movs r5, #0xA5
	lsls r5, r5, #0x02
	ldr r3, [sp, #0x028]
	adds r0, r3, r5
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x11]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r4, [sp, #0x024]
	movs r0, #0xC4
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r4, #0xD1
	lsls r4, r4, #0x02
	add r4, r10
	ldr r1, [r4, #0x00]
	ldr r2, _08147438 @ =0x0000020D
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	bl sub_804776C
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	bl sub_804761C
	ldr r2, [r4, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r1, #0x01
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	movs r4, #0xDD
	lsls r4, r4, #0x01
	adds r1, r1, r4
	strh r0, [r1, #0x00]
	ldr r1, [sp, #0x024]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r1, r2
	strh r6, [r0, #0x00]
	ldr r0, _0814743C @ =0x08148CF9
	ldr r3, [sp, #0x020]
	str r0, [r3, #0x00]
_08147424:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08147434: .4byte 0x00000242
_08147438: .4byte 0x0000020D
_0814743C: .4byte sub_8148CF8
	thumb_func_start sub_8147440
sub_8147440:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	adds r5, r1, #0x0
	mov r10, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r9, r0
	add r4, sp, #0x00C
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08147476
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _0814747A
_08147476:
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
_0814747A:
	strb r0, [r4, #0x00]
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x28]
	movs r4, #0xD1
	lsls r4, r4, #0x02
	adds r1, r5, r4
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x0C]
	str r0, [r5, #0x0C]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r1, #0x00]
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x10]
	subs r1, r1, r0
	cmp r1, #0x00
	blt _081474BA
	movs r4, #0xA0
	lsls r4, r4, #0x08
	adds r1, r1, r4
	ldr r0, [r2, #0x18]
	b _081474C0
_081474BA:
	ldr r0, [r2, #0x18]
	movs r1, #0xA0
	lsls r1, r1, #0x08
_081474C0:
	adds r0, r0, r1
	str r0, [r5, #0x18]
	movs r0, #0xAC
	lsls r0, r0, #0x01
	add r0, r9
	ldr r6, [r0, #0x00]
	movs r0, #0xAE
	lsls r0, r0, #0x01
	add r0, r9
	ldr r7, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x30
	ldrh r1, [r0, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r4, #0x00
	mov r12, r4
	strh r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x2E
	ldrh r0, [r0, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	ldr r4, _08147520 @ =0x0000027A
	adds r0, r5, r4
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	mov r0, r12
	str r0, [sp, #0x008]
	mov r0, r8
	bl sub_813B920
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147528
	ldr r0, _08147524 @ =0x08148C61
	mov r1, r10
	str r0, [r1, #0x00]
	b _08147572
	.byte 0x00, 0x00
_08147520: .4byte 0x0000027A
_08147524: .4byte 0x08148C61
_08147528:
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r2, r5, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	ldr r0, _08147584 @ =0x0000020F
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x32
	ldrh r1, [r0, #0x00]
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r9
	strh r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x34
	ldrh r1, [r0, #0x00]
	ldr r2, _08147588 @ =0x0000023E
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r0, _0814758C @ =0x08148CA5
	mov r4, r10
	str r0, [r4, #0x00]
_08147572:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147584: .4byte 0x0000020F
_08147588: .4byte 0x0000023E
_0814758C: .4byte sub_8148CA4
	thumb_func_start sub_8147590
sub_8147590:
	push {r4, r5, r6, lr}
	adds r5, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r4, r5, r1
	ldr r3, [r4, #0x00]
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r4, [r4, #0x00]
	ldr r0, _08147630 @ =0x0814796D
	cmp r4, r0
	beq _08147656
	ldr r0, _08147634 @ =0x08148B61
	cmp r4, r0
	beq _08147656
	movs r2, #0xBB
	lsls r2, r2, #0x02
	adds r3, r5, r2
	ldr r1, [r3, #0x00]
	ldr r0, [r5, #0x14]
	subs r4, r1, r0
	ldr r1, _08147638 @ =0x08198504
	movs r0, #0xBD
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r6, #0xFF
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _081475D8
	adds r0, #0x3F
_081475D8:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	adds r0, r4, r0
	str r0, [r5, #0x18]
	movs r4, #0xBE
	lsls r4, r4, #0x02
	adds r0, r5, r4
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r0, #0x00
	bge _08147606
	adds r0, #0x0F
_08147606:
	asrs r0, r0, #0x04
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	ands r0, r6
	str r0, [r2, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	ldr r1, [r3, #0x00]
	ldr r0, [r5, #0x14]
	subs r0, r1, r0
	cmp r0, r2
	ble _0814763C
	adds r0, r1, #0x0
	subs r0, #0x60
	str r0, [r3, #0x00]
	ldr r1, [r5, #0x14]
	subs r0, r0, r1
	cmp r0, r2
	bgt _08147656
	b _08147652
	.byte 0x00, 0x00
_08147630: .4byte sub_814796C
_08147634: .4byte sub_8148B60
_08147638: .4byte 0x08198504
_0814763C:
	cmp r0, r2
	bge _08147656
	adds r0, r1, #0x0
	adds r0, #0x60
	str r0, [r3, #0x00]
	ldr r1, [r5, #0x14]
	subs r0, r0, r1
	cmp r0, r2
	blt _08147656
	movs r2, #0x80
	lsls r2, r2, #0x06
_08147652:
	adds r0, r1, r2
	str r0, [r3, #0x00]
_08147656:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_814765C
sub_814765C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	mov r9, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r7, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r6, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147696
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _081476A2
_08147696:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081476A2:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x28]
	mov r8, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r3, [r0, #0x30]
	lsls r4, r4, #0x01
	adds r4, r4, r5
	ldrh r0, [r4, #0x00]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	mov r2, r8
	bl sub_813AA5C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r4, #0x08]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _08147724 @ =0x08147729
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08147724: .4byte sub_8147728
	thumb_func_start sub_8147728
sub_8147728:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r5
	mov r10, r0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _081477C6
	add r4, sp, #0x014
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081477B8
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x14
	movs r3, #0x22
	bl sub_8139CAC
	ldr r3, _081477AC @ =0x000007FF
	ldr r0, _081477B0 @ =0x00007FFF
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081477B8
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8148AB0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081477B8
	ldr r0, _081477B4 @ =0x08147811
	str r0, [r7, #0x00]
	b _081477F8
_081477AC: .4byte 0x000007FF
_081477B0: .4byte 0x00007FFF
_081477B4: .4byte sub_8147810
_081477B8:
	mov r0, r8
	ldrh r1, [r0, #0x1A]
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r9
	strh r1, [r0, #0x00]
	b _081477CA
_081477C6:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_081477CA:
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081477F8
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x28]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	ldr r0, _08147808 @ =0x0813B1E9
	str r0, [r7, #0x00]
	ldr r0, _0814780C @ =0x0814765D
	str r0, [r7, #0x0C]
_081477F8:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08147808: .4byte sub_813B1E8
_0814780C: .4byte sub_814765C
	thumb_func_start sub_8147810
sub_8147810:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r5, [r0, #0x00]
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147842
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _0814784E
_08147842:
	movs r7, #0x82
	lsls r7, r7, #0x02
	adds r0, r4, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814784E:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r7, [r0, #0x28]
	ldr r1, [r7, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r2, r1, r0
	ldr r1, [r7, #0x10]
	ldr r0, [r6, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08147878
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814787A
_08147878:
	movs r0, #0xFF
_0814787A:
	movs r1, #0x00
	mov r12, r1
	strb r0, [r6, #0x02]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	movs r4, #0xBC
	lsls r4, r4, #0x01
	add r4, r8
	ldrh r0, [r4, #0x00]
	adds r0, r0, r5
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r3, [r0, #0x2E]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	mov r0, sp
	mov r7, r12
	strb r7, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_813A284
	ldrh r0, [r4, #0x00]
	adds r0, r0, r5
	adds r0, #0x36
	ldrb r0, [r0, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldr r0, _081478D8 @ =0x081478DD
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081478D8: .4byte sub_81478DC
	thumb_func_start sub_81478DC
sub_81478DC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	adds r7, r5, #0x0
	adds r7, #0x58
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081478FC
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08147908
_081478FC:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08147908:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x14
	movs r3, #0x26
	bl sub_8139CAC
	ldr r3, _08147934 @ =0x00007FFF
	str r3, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814793C
	ldr r0, _08147938 @ =0x0814796D
	b _0814795C
	.byte 0x00, 0x00
_08147934: .4byte 0x00007FFF
_08147938: .4byte sub_814796C
_0814793C:
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0814795A
	adds r0, r5, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814795E
_0814795A:
	ldr r0, _08147968 @ =0x08147811
_0814795C:
	str r0, [r6, #0x00]
_0814795E:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147968: .4byte sub_8147810
	thumb_func_start sub_814796C
sub_814796C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	adds r7, r6, #0x0
	adds r7, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814799E
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _081479AA
_0814799E:
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081479AA:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	adds r4, r7, r0
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r5, [r0, #0x3E]
	ldr r1, [r2, #0x0C]
	ldr r2, [r2, #0x10]
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r6, #0x0
	adds r3, r5, #0x0
	bl sub_813A284
	ldrh r0, [r4, #0x00]
	add r0, r8
	adds r0, #0x3A
	ldrb r4, [r0, #0x00]
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x18]
	adds r1, r1, r0
	lsls r0, r4, #0x08
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_813B394
	ldr r2, _08147A30 @ =0x03001038
	ldr r0, _08147A34 @ =0x0819832C
	ldr r1, _08147A38 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, _08147A3C @ =0x00000242
	adds r3, r6, r1
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _08147A40
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08147A44
	.byte 0x00, 0x00
_08147A30: .4byte 0x03001038
_08147A34: .4byte 0x0819832C
_08147A38: .4byte 0x08198220
_08147A3C: .4byte 0x00000242
_08147A40:
	movs r1, #0x01
	negs r1, r1
_08147A44:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, _08147AC4 @ =0x03001038
	ldr r0, _08147AC8 @ =0x0819832C
	ldr r1, _08147ACC @ =0x08198220
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
	cmp r0, r4
	beq _08147A7A
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
_08147A7A:
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	subs r3, #0x8C
	adds r1, r7, r3
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r0, #0xC6
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	adds r3, #0x08
	adds r1, r7, r3
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x00]
	ldr r0, _08147AD0 @ =0x08148B61
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147AC4: .4byte 0x03001038
_08147AC8: .4byte 0x0819832C
_08147ACC: .4byte 0x08198220
_08147AD0: .4byte sub_8148B60
	thumb_func_start sub_8147AD4
sub_8147AD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r7, r1, #0x0
	mov r8, r2
	adds r4, r7, #0x0
	adds r4, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r6, [r0, #0x00]
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x0C]
	subs r2, r1, r0
	movs r3, #0xF0
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08147B1C
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08147B1E
_08147B1C:
	movs r0, #0xFF
_08147B1E:
	movs r1, #0x00
	mov r12, r1
	strb r0, [r7, #0x02]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	adds r0, #0x4A
	ldrh r5, [r0, #0x00]
	movs r3, #0xC2
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, [r0, #0x00]
	adds r2, #0x10
	adds r0, r4, r2
	ldr r2, [r0, #0x00]
	adds r3, #0x08
	adds r0, r4, r3
	adds r3, #0x04
	adds r4, r4, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	str r5, [sp, #0x000]
	add r0, sp, #0x004
	mov r4, r12
	strb r4, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_813A44C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x46
	ldrb r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _08147B98 @ =0x08148B05
	mov r2, r8
	str r0, [r2, #0x00]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147B98: .4byte sub_8148B04
	thumb_func_start sub_8147B9C
sub_8147B9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r5, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r6, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147BD4
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08147BE0
_08147BD4:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08147BE0:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x28]
	lsls r4, r4, #0x01
	adds r4, r4, r7
	ldrh r3, [r4, #0x30]
	ldrh r0, [r4, #0x00]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_813AA5C
	ldr r2, _08147C80 @ =0x083A05EC
	ldr r1, _08147C84 @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldr r0, [r2, #0x00]
	ldrh r1, [r4, #0x08]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08147C88 @ =0x08147C8D
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08147C80: .4byte 0x083A05EC
_08147C84: .4byte 0x00000216
_08147C88: .4byte sub_8147C8C
	thumb_func_start sub_8147C8C
sub_8147C8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r7, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r2, r2, r5
	mov r9, r2
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08147CD8
	adds r0, r3, #0x0
	adds r1, r5, #0x0
	bl sub_81489E0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147CD4
	ldr r0, _08147CD0 @ =0x08147DC5
	mov r1, r8
	str r0, [r1, #0x00]
	b _08147DAE
_08147CD0: .4byte sub_8147DC4
_08147CD4:
	ldrh r0, [r7, #0x1A]
	b _08147CDA
_08147CD8:
	subs r0, #0x01
_08147CDA:
	strh r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08147DAE
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r0, #0x3B
	bls _08147D74
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	adds r0, #0x4A
	ldrb r0, [r0, #0x00]
	adds r2, #0x22
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldr r2, _08147D6C @ =0x083A05EC
	ldr r1, _08147D70 @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x10
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
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
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	b _08147DA4
	.byte 0x00, 0x00
_08147D6C: .4byte 0x083A05EC
_08147D70: .4byte 0x00000216
_08147D74:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x28]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_8047928
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08147DA4:
	ldr r0, _08147DBC @ =0x0813B1E9
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _08147DC0 @ =0x08147B9D
	str r0, [r1, #0x0C]
_08147DAE:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147DBC: .4byte sub_813B1E8
_08147DC0: .4byte sub_8147B9C
	thumb_func_start sub_8147DC4
sub_8147DC4:
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r4, r7, r1
	strh r0, [r4, #0x00]
	ldr r2, _08147E70 @ =0x083A05EC
	adds r1, #0x46
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r3, r7, r1
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r3, #0x00]
	ldrh r0, [r4, #0x00]
	adds r0, r0, r5
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08147E74 @ =0x0000020D
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08147E78 @ =0x08147E7D
	str r0, [r6, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147E70: .4byte 0x083A05EC
_08147E74: .4byte 0x0000020D
_08147E78: .4byte sub_8147E7C
	thumb_func_start sub_8147E7C
sub_8147E7C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	adds r6, r4, r3
	ldrb r1, [r6, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08147F14
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r0, [r5, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08147EB2
	b _08148024
_08147EB2:
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	adds r0, r0, r2
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r2, _08147F10 @ =0x083A05EC
	adds r3, #0x40
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x08
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldrb r1, [r6, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
	b _08148024
	.byte 0x00, 0x00
_08147F10: .4byte 0x083A05EC
_08147F14:
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08148024
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147F3A
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _08147F46
_08147F3A:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08147F46:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x28]
	ldr r1, [r2, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r5, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r4, #0x10]
	subs r2, r1, r0
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _08147F60
	negs r1, r5
_08147F60:
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _08147F68
	negs r0, r2
_08147F68:
	cmp r1, r0
	ble _08147FA8
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r5, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r3, #0x02
	cmp r5, #0x00
	bge _08147F94
	movs r3, #0x06
_08147F94:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r2, [r0, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r1, r0, #0x0
	b _08147FD0
_08147FA8:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	mvns r2, r2
	asrs r2, r2, #0x1F
	movs r3, #0x02
	adds r0, r2, #0x0
	ands r0, r3
	adds r1, #0x21
	strb r0, [r1, #0x00]
	movs r0, #0x04
	adds r1, r4, #0x0
	adds r1, #0x24
	ands r2, r0
	ldrb r3, [r1, #0x00]
	subs r0, #0x0C
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0x00]
_08147FD0:
	ldr r2, _0814802C @ =0x083A05EC
	ldr r3, _08148030 @ =0x00000216
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	adds r0, r0, r1
	adds r0, #0x08
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	adds r1, #0x0C
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
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
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08148034 @ =0x08148039
	str r0, [r7, #0x00]
_08148024:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814802C: .4byte 0x083A05EC
_08148030: .4byte 0x00000216
_08148034: .4byte sub_8148038
	thumb_func_start sub_8148038
sub_8148038:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r1, #0x0
	str r2, [sp, #0x008]
	movs r0, #0x58
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r2, r2, r7
	mov r9, r2
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r6, [r0, #0x00]
	adds r1, #0xE4
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0814807A
	b _0814823A
_0814807A:
	adds r0, r6, #0x0
	bl sub_81488F0
	ldr r2, _081480B0 @ =0x03001038
	ldr r0, _081480B4 @ =0x0819832C
	ldr r1, _081480B8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r4, r7, #0x0
	adds r4, #0x24
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r10, r4
	cmp r5, #0x01
	beq _081480EC
	cmp r5, #0x01
	bgt _081480BC
	cmp r5, #0x00
	beq _081480C6
	b _08148148
	.byte 0x00, 0x00
_081480B0: .4byte 0x03001038
_081480B4: .4byte 0x0819832C
_081480B8: .4byte 0x08198220
_081480BC:
	cmp r5, #0x02
	beq _08148106
	cmp r5, #0x03
	beq _08148126
	b _08148148
_081480C6:
	ldr r1, [r7, #0x0C]
	ldr r2, _081480E8 @ =0x00000276
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	ldr r2, [r7, #0x10]
	subs r2, r2, r0
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	b _0814811E
	.byte 0x00, 0x00
_081480E8: .4byte 0x00000276
_081480EC:
	ldr r1, [r7, #0x0C]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r3, r3, r0
	str r5, [sp, #0x000]
	b _0814811A
_08148106:
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
_0814811A:
	movs r0, #0x00
	str r0, [sp, #0x004]
_0814811E:
	adds r0, r6, #0x0
	bl sub_8047F60
	b _08148148
_08148126:
	ldr r1, [r7, #0x0C]
	ldr r2, _0814824C @ =0xFFFFF600
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
_08148148:
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r1, r6, r4
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	movs r2, #0x00
	strb r0, [r1, #0x00]
	movs r3, #0xB9
	lsls r3, r3, #0x02
	adds r1, r6, r3
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xBA
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	adds r3, #0x08
	adds r1, r6, r3
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r2, [r0, #0x00]
	adds r3, #0x04
	adds r0, r6, r3
	str r2, [r0, #0x00]
	ldr r0, _08148250 @ =0x0000030A
	adds r1, r6, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r3, #0x1C
	adds r1, r6, r3
	adds r0, #0x80
	strh r0, [r1, #0x00]
	movs r1, #0xCB
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r2, [r0, #0x00]
	adds r3, #0x1C
	adds r0, r6, r3
	str r2, [r0, #0x00]
	ldr r0, _08148254 @ =0x0000030E
	adds r1, r6, r0
	movs r0, #0xC0
	strh r0, [r1, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r1, r6, r2
	adds r0, #0x80
	strh r0, [r1, #0x00]
	adds r0, #0x38
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x00C]
	adds r0, r0, r3
	ldrh r0, [r0, #0x2A]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldr r2, _08148258 @ =0x083A05EC
	ldr r1, _0814825C @ =0x00000216
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	mov r3, r10
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	adds r0, r0, r1
	adds r0, #0x08
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	adds r1, #0x10
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r4, r7, r4
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08148260 @ =0x08148265
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x00]
_0814823A:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814824C: .4byte 0xFFFFF600
_08148250: .4byte 0x0000030A
_08148254: .4byte 0x0000030E
_08148258: .4byte 0x083A05EC
_0814825C: .4byte 0x00000216
_08148260: .4byte sub_8148264
	thumb_func_start sub_8148264
sub_8148264:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	adds r5, r0, #0x0
	str r1, [sp, #0x00C]
	str r2, [sp, #0x010]
	adds r0, r1, #0x0
	adds r0, #0x58
	str r0, [sp, #0x014]
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldr r6, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r4, r1, r3
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r7, [r0, #0x00]
	adds r0, r5, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081482CC
	ldr r3, [sp, #0x00C]
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x28]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	ldr r0, _081482C4 @ =0x0813B1E9
	ldr r3, [sp, #0x010]
	str r0, [r3, #0x00]
	ldr r0, _081482C8 @ =0x08147B9D
	str r0, [r3, #0x0C]
	b _081486B8
_081482C4: .4byte sub_813B1E8
_081482C8: .4byte sub_8147B9C
_081482CC:
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_813B8A8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814831C
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_813B878
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814831C
	movs r1, #0x04
	ldsh r0, [r4, r1]
	cmp r0, #0x05
	bne _0814831C
	ldr r2, _08148314 @ =0x0000030E
	adds r0, r7, r2
	movs r1, #0xA0
	lsls r1, r1, #0x03
	strh r1, [r0, #0x00]
	movs r3, #0xC4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldr r0, _08148318 @ =0x0000020D
	adds r2, r7, r0
	b _081486A8
	.byte 0x00, 0x00
_08148314: .4byte 0x0000030E
_08148318: .4byte 0x0000020D
_0814831C:
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	movs r3, #0x04
	ldsh r0, [r1, r3]
	cmp r0, #0x04
	beq _08148358
	adds r2, #0x04
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	movs r3, #0x04
	ldsh r0, [r0, r3]
	cmp r0, #0x04
	beq _08148358
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	movs r1, #0xA4
	lsls r1, r1, #0x06
	adds r5, r0, r1
	ldr r2, [sp, #0x014]
	movs r3, #0xBC
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x3A]
	b _08148376
_08148358:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r5, r1, r0
	ldr r2, [sp, #0x014]
	movs r3, #0xBC
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x32]
_08148376:
	str r0, [sp, #0x018]
	ldr r2, [sp, #0x018]
	ldr r0, _081483D0 @ =0x0000030A
	adds r1, r7, r0
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bge _08148388
	negs r2, r2
_08148388:
	strh r2, [r1, #0x00]
	ldr r1, [sp, #0x018]
	adds r1, #0x80
	movs r0, #0xC3
	lsls r0, r0, #0x02
	adds r2, r7, r0
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	bge _0814839E
	negs r1, r1
_0814839E:
	strh r1, [r2, #0x00]
	ldr r1, [r4, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r2, r1, r0
	cmp r2, #0x00
	bge _081483AC
	negs r2, r2
_081483AC:
	ldr r1, [r4, #0x10]
	ldr r0, [r7, #0x10]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _081483B8
	negs r1, r1
_081483B8:
	cmp r2, r1
	blt _081483D8
	ldr r0, _081483D4 @ =0x0000030E
	adds r1, r7, r0
	movs r0, #0xA0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r1, r7, r2
	movs r0, #0xC0
	b _081483EA
_081483D0: .4byte 0x0000030A
_081483D4: .4byte 0x0000030E
_081483D8:
	ldr r3, _081486C8 @ =0x0000030E
	adds r1, r7, r3
	movs r0, #0xC0
	strh r0, [r1, #0x00]
	movs r0, #0xC4
	lsls r0, r0, #0x02
	adds r1, r7, r0
	movs r0, #0xA0
	lsls r0, r0, #0x01
_081483EA:
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	ldr r3, [sp, #0x018]
	str r3, [sp, #0x000]
	add r3, sp, #0x004
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	adds r3, r5, #0x0
	bl sub_813A44C
	ldr r1, _081486CC @ =0x00000242
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	adds r3, #0x96
	adds r2, r7, r3
	strh r0, [r2, #0x00]
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r0, r7, r0
	str r0, [sp, #0x01C]
	adds r3, #0x02
	adds r0, r7, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x01C]
	str r0, [r3, #0x00]
	movs r0, #0xB9
	lsls r0, r0, #0x02
	adds r0, r0, r7
	mov r10, r0
	movs r3, #0x00
	ldsh r1, [r1, r3]
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	mov r1, r10
	str r0, [r1, #0x00]
	movs r3, #0xBA
	lsls r3, r3, #0x02
	adds r3, r7, r3
	str r3, [sp, #0x020]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r1, #0xBB
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldr r0, [r2, #0x00]
	ldr r3, [sp, #0x01C]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r1, _081486D0 @ =0x08198584
	movs r0, #0xCB
	lsls r0, r0, #0x02
	adds r0, r7, r0
	str r0, [sp, #0x028]
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0814847C
	adds r0, #0xFF
_0814847C:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _08148490
	adds r0, #0x3F
_08148490:
	asrs r0, r0, #0x06
	str r0, [sp, #0x024]
	ldr r1, _081486D4 @ =0x08198504
	movs r0, #0xCA
	lsls r0, r0, #0x02
	adds r0, r7, r0
	str r0, [sp, #0x02C]
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081484A6
	adds r0, #0xFF
_081484A6:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _081484BA
	adds r0, #0x3F
_081484BA:
	asrs r0, r0, #0x06
	mov r8, r0
	ldr r6, _081486D8 @ =0x03001038
	ldr r4, _081486DC @ =0x0819832C
	ldr r0, _081486E0 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r4
	movs r0, #0xBD
	lsls r0, r0, #0x02
	adds r0, r0, r7
	mov r9, r0
	ldr r0, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x01
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r2, [sp, #0x024]
	adds r1, r2, #0x0
	muls r1, r0
	mov r3, r10
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x0C]
	ldr r2, [r6, #0x00]
	adds r2, r2, r4
	movs r1, #0xBC
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	mov r1, r8
	muls r1, r0
	ldr r2, [sp, #0x020]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x18]
	ldr r3, [sp, #0x01C]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	ldr r1, _081486C8 @ =0x0000030E
	adds r0, r7, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r3, [sp, #0x028]
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08148528
	adds r0, #0xFF
_08148528:
	asrs r0, r0, #0x08
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x028]
	str r0, [r2, #0x00]
	movs r3, #0xC4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r3, [sp, #0x02C]
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _0814854A
	adds r0, #0xFF
_0814854A:
	asrs r0, r0, #0x08
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x02C]
	str r0, [r2, #0x00]
	ldr r3, _081486E4 @ =0x0000030A
	adds r0, r7, r3
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r3, r9
	ldr r0, [r3, #0x00]
	adds r1, r0, r1
	str r1, [r3, #0x00]
	cmp r1, #0x00
	blt _08148574
	movs r0, #0x16
	ldr r2, [sp, #0x018]
	muls r0, r2
	cmp r1, r0
	ble _08148586
_08148574:
	ldr r3, _081486E8 @ =0x000002B5
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
_08148586:
	movs r0, #0xBC
	lsls r0, r0, #0x02
	adds r2, r7, r0
	movs r1, #0xC3
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r2, #0x00]
	adds r1, r0, r1
	str r1, [r2, #0x00]
	cmp r1, #0x00
	blt _081485AA
	movs r0, #0x16
	ldr r2, [sp, #0x018]
	muls r0, r2
	cmp r1, r0
	ble _081485BA
_081485AA:
	ldr r3, _081486E8 @ =0x000002B5
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_081485BA:
	ldr r0, _081486E8 @ =0x000002B5
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x00
	beq _081485DC
	ldr r3, _081486E4 @ =0x0000030A
	adds r1, r7, r3
	ldrh r0, [r1, #0x00]
	negs r0, r0
	strh r0, [r1, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_081485DC:
	ldrb r1, [r2, #0x00]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	beq _081485FA
	movs r0, #0xC3
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldrh r0, [r1, #0x00]
	negs r0, r0
	strh r0, [r1, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x00]
_081485FA:
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08148626
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r3, [sp, #0x00C]
	ldr r0, _081486EC @ =0x0000020D
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081486F0 @ =0x08147B9D
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
_08148626:
	ldr r0, [r7, #0x0C]
	ldr r1, [r7, #0x34]
	subs r0, r0, r1
	ldr r2, _081486CC @ =0x00000242
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x38]
	subs r0, r0, r1
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	ldr r0, [sp, #0x014]
	subs r2, #0xC8
	adds r1, r0, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x00
	bne _081486B8
	adds r3, #0xA0
	adds r1, r7, r3
	ldr r0, [r7, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xBA
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldr r0, [r7, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r2, [r0, #0x00]
	adds r3, #0x0C
	adds r0, r7, r3
	str r2, [r0, #0x00]
	adds r1, #0x16
	adds r0, r7, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	adds r3, #0x1C
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	movs r1, #0xCB
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r2, [r0, #0x00]
	adds r3, #0x1C
	adds r0, r7, r3
	str r2, [r0, #0x00]
	subs r1, #0x1E
	adds r0, r7, r1
	movs r1, #0xA0
	lsls r1, r1, #0x03
	strh r1, [r0, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	ldr r3, _081486EC @ =0x0000020D
	adds r2, r7, r3
_081486A8:
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081486F4 @ =0x081486F9
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
_081486B8:
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081486C8: .4byte 0x0000030E
_081486CC: .4byte 0x00000242
_081486D0: .4byte 0x08198584
_081486D4: .4byte 0x08198504
_081486D8: .4byte 0x03001038
_081486DC: .4byte 0x0819832C
_081486E0: .4byte 0x08198220
_081486E4: .4byte 0x0000030A
_081486E8: .4byte 0x000002B5
_081486EC: .4byte 0x0000020D
_081486F0: .4byte sub_8147B9C
_081486F4: .4byte sub_81486F8
	thumb_func_start sub_81486F8
sub_81486F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r1, [sp, #0x000]
	str r2, [sp, #0x004]
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r7, [r0, #0x00]
	ldr r1, _081488C4 @ =0x08198584
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08148720
	adds r0, #0xFF
_08148720:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _08148734
	adds r0, #0x3F
_08148734:
	asrs r0, r0, #0x06
	mov r10, r0
	ldr r1, _081488C8 @ =0x08198504
	movs r3, #0xCA
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08148748
	adds r0, #0xFF
_08148748:
	asrs r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _0814875A
	adds r0, #0x3F
_0814875A:
	asrs r0, r0, #0x06
	mov r8, r0
	ldr r0, _081488CC @ =0x03001038
	mov r9, r0
	ldr r4, _081488D0 @ =0x0819832C
	ldr r0, _081488D4 @ =0x08198220
	subs r4, r4, r0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	movs r3, #0xBD
	lsls r3, r3, #0x02
	adds r6, r7, r3
	ldr r0, [r6, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x01
	adds r1, r5, #0x0
	bl _call_via_r2
	movs r2, #0xB9
	lsls r2, r2, #0x02
	adds r1, r7, r2
	mov r2, r10
	muls r2, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	str r0, [r7, #0x0C]
	mov r3, r9
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	movs r4, #0xBC
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	movs r2, #0xBA
	lsls r2, r2, #0x02
	adds r1, r7, r2
	mov r2, r8
	muls r2, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	str r0, [r7, #0x10]
	movs r3, #0xE8
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	movs r4, #0xD8
	lsls r4, r4, #0x01
	adds r1, r7, r4
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	adds r0, #0x42
	ldrh r3, [r0, #0x00]
	ldr r0, [r7, #0x18]
	adds r0, r0, r3
	str r0, [r7, #0x18]
	ldr r0, _081488D8 @ =0x0000030A
	adds r2, r7, r0
	strh r3, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x80
	movs r4, #0xC3
	lsls r4, r4, #0x02
	adds r0, r7, r4
	strh r1, [r0, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r6, #0x00]
	adds r1, r0, r1
	str r1, [r6, #0x00]
	cmp r1, #0x00
	blt _081487FC
	movs r2, #0xC0
	lsls r2, r2, #0x04
	adds r0, r3, r2
	cmp r1, r0
	ble _08148804
_081487FC:
	movs r4, #0xC0
	lsls r4, r4, #0x04
	adds r0, r3, r4
	str r0, [r6, #0x00]
_08148804:
	movs r0, #0xBC
	lsls r0, r0, #0x02
	adds r2, r7, r0
	movs r1, #0xC3
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x00]
	adds r1, r0, r1
	str r1, [r2, #0x00]
	cmp r1, #0x00
	blt _08148828
	movs r4, #0xC0
	lsls r4, r4, #0x04
	adds r0, r3, r4
	cmp r1, r0
	ble _08148830
_08148828:
	movs r1, #0xC0
	lsls r1, r1, #0x04
	adds r0, r3, r1
	str r0, [r2, #0x00]
_08148830:
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldr r4, _081488DC @ =0x0000030E
	adds r0, r7, r4
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r3, #0xFF
	lsls r3, r3, #0x08
	cmp r0, r3
	ble _08148850
	movs r0, #0x00
	str r0, [r2, #0x00]
_08148850:
	movs r4, #0xCA
	lsls r4, r4, #0x02
	adds r2, r7, r4
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, r3
	ble _0814886E
	movs r0, #0x00
	str r0, [r2, #0x00]
_0814886E:
	ldr r0, [r7, #0x0C]
	ldr r1, [r7, #0x34]
	subs r0, r0, r1
	ldr r2, _081488E0 @ =0x00000242
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x38]
	subs r0, r0, r1
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x18]
	ldr r0, _081488E4 @ =0x00013FFF
	cmp r1, r0
	ble _081488B4
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r4, [sp, #0x000]
	ldr r0, _081488E8 @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081488EC @ =0x08147B9D
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x00]
_081488B4:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081488C4: .4byte 0x08198584
_081488C8: .4byte 0x08198504
_081488CC: .4byte 0x03001038
_081488D0: .4byte 0x0819832C
_081488D4: .4byte 0x08198220
_081488D8: .4byte 0x0000030A
_081488DC: .4byte 0x0000030E
_081488E0: .4byte 0x00000242
_081488E4: .4byte 0x00013FFF
_081488E8: .4byte 0x0000020D
_081488EC: .4byte sub_8147B9C
	thumb_func_start sub_81488F0
sub_81488F0:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	ldr r2, _0814892C @ =0x083A05EC
	ldr r1, _08148930 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r5, [r1, #0x00]
	cmp r5, #0x01
	beq _08148964
	cmp r5, #0x01
	bgt _08148934
	cmp r5, #0x00
	beq _0814893E
	b _081489D2
_0814892C: .4byte 0x083A05EC
_08148930: .4byte 0x00000216
_08148934:
	cmp r5, #0x02
	beq _08148984
	cmp r5, #0x03
	beq _081489AA
	b _081489D2
_0814893E:
	ldr r1, [r4, #0x0C]
	ldr r2, _08148960 @ =0x00000276
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	ldr r2, [r4, #0x10]
	subs r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x90
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	b _081489A2
	.byte 0x00, 0x00
_08148960: .4byte 0x00000276
_08148964:
	ldr r1, [r4, #0x0C]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r1, r1, r2
	ldr r2, [r4, #0x10]
	movs r0, #0xA0
	lsls r0, r0, #0x03
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	adds r3, r3, r0
	str r5, [sp, #0x000]
	b _0814899E
_08148984:
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x90
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
_0814899E:
	movs r0, #0x00
	str r0, [sp, #0x004]
_081489A2:
	adds r0, r6, #0x0
	bl sub_8047F60
	b _081489D2
_081489AA:
	ldr r1, [r4, #0x0C]
	ldr r2, _081489DC @ =0xFFFFF600
	adds r1, r1, r2
	ldr r2, [r4, #0x10]
	movs r0, #0xA0
	lsls r0, r0, #0x03
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
_081489D2:
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081489DC: .4byte 0xFFFFF600
	thumb_func_start sub_81489E0
sub_81489E0:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081489FA
	movs r0, #0x00
	b _08148A30
_081489FA:
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _08148A2E
	movs r1, #0x01
_08148A2E:
	adds r0, r1, #0x0
_08148A30:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_8148A38
sub_8148A38:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	ldr r0, _08148A9C @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r1, [r5, #0x00]
	ldr r0, _08148AA0 @ =0x0000020D
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	ldr r0, [r5, #0x00]
	bl sub_8148DA4
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08148AA4 @ =0x0000033D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08148AA8 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08148AAC @ =0x08147B9D
	str r0, [r4, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148A9C: .4byte 0x0000033E
_08148AA0: .4byte 0x0000020D
_08148AA4: .4byte 0x0000033D
_08148AA8: .4byte sub_813B380
_08148AAC: .4byte sub_8147B9C
	thumb_func_start sub_8148AB0
sub_8148AB0:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08148AF6
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08148AFA
_08148AF6:
	movs r0, #0x00
	b _08148AFC
_08148AFA:
	movs r0, #0x01
_08148AFC:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_8148B04
sub_8148B04:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _08148B52
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r5
	adds r0, #0x52
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08148B58 @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _08148B5C @ =0x0814765D
	str r0, [r6, #0x0C]
_08148B52:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08148B58: .4byte sub_813B1E8
_08148B5C: .4byte sub_814765C
	thumb_func_start sub_8148B60
sub_8148B60:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, _08148BB4 @ =0x00000242
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
	adds r0, r4, #0x0
	bl sub_813ADF0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _08148BAC
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	ldr r0, _08148BB8 @ =0x08147AD5
	str r0, [r5, #0x00]
_08148BAC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148BB4: .4byte 0x00000242
_08148BB8: .4byte sub_8147AD4
	thumb_func_start sub_8148BBC
sub_8148BBC:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _08148C14 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r1, #0xBB
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r3, #0xBD
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r2, #0x00
	str r2, [r0, #0x00]
	movs r1, #0x10
	adds r3, #0x04
	adds r0, r4, r3
	strh r1, [r0, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	strh r2, [r0, #0x00]
	movs r3, #0xCC
	lsls r3, r3, #0x01
	adds r1, r4, r3
	ldr r0, _08148C18 @ =0x08147591
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08148C1C @ =0x0814765D
	str r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08148C14: .4byte 0x0000033E
_08148C18: .4byte sub_8147590
_08148C1C: .4byte sub_814765C
	thumb_func_start sub_8148C20
sub_8148C20:
	ldr r1, _08148C58 @ =0x0000020D
	adds r3, r0, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x09
	negs r1, r1
	ands r1, r2
	strb r1, [r3, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r3, r0, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	movs r2, #0x7F
	ands r1, r2
	subs r2, #0xA0
	ands r1, r2
	strb r1, [r3, #0x00]
	ldr r1, _08148C5C @ =0x0000020F
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	movs r1, #0x05
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_08148C58: .4byte 0x0000020D
_08148C5C: .4byte 0x0000020F
	.byte 0x8C, 0x46, 0x85, 0x23, 0x9B, 0x00, 0x63, 0x44, 0x19, 0x78, 0x08, 0x20, 0x40, 0x42, 0x08, 0x40
	.byte 0x04, 0x21, 0x08, 0x43, 0x18, 0x70, 0xA5, 0x20, 0x80, 0x00, 0x60, 0x44, 0x03, 0x68, 0x99, 0x7C
	.byte 0x07, 0x20, 0x40, 0x42, 0x08, 0x40, 0x98, 0x74, 0xD8, 0x20, 0x40, 0x00, 0x60, 0x44, 0x00, 0x68
	.byte 0xC1, 0x8E, 0xB7, 0x20, 0x80, 0x00, 0x60, 0x44, 0x01, 0x80, 0x01, 0x48, 0x10, 0x60, 0x70, 0x47
	.byte 0x2D, 0x8E, 0x14, 0x08
	thumb_func_start sub_8148CA4
sub_8148CA4:
	push {r4, r5, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r3, r0
	movs r5, #0x00
	ldsh r1, [r2, r5]
	ldr r0, [r3, #0x18]
	subs r0, r0, r1
	str r0, [r3, #0x18]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	movs r5, #0xDD
	lsls r5, r5, #0x01
	adds r1, r1, r5
	strh r0, [r1, #0x00]
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	ldrh r5, [r2, #0x00]
	adds r0, r0, r5
	strh r0, [r2, #0x00]
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bgt _08148CEC
	movs r0, #0x00
	str r0, [r3, #0x18]
	ldr r0, _08148CF4 @ =0x08148C61
	str r0, [r4, #0x00]
_08148CEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148CF4: .4byte 0x08148C61
	thumb_func_start sub_8148CF8
sub_8148CF8:
	push {r4, r5, lr}
	adds r5, r2, #0x0
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r1, r0
	ldr r1, [r4, #0x00]
	ldr r0, _08148D38 @ =0x0000023B
	adds r2, r1, r0
	movs r0, #0xF0
	strb r0, [r2, #0x00]
	adds r0, #0xE4
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3B
	bls _08148D32
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	bl sub_804776C
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _08148D3C @ =0x08147441
	str r0, [r5, #0x00]
_08148D32:
	pop {r4, r5}
	pop {r0}
	bx r0
_08148D38: .4byte 0x0000023B
_08148D3C: .4byte sub_8147440
	thumb_func_start sub_8148D40
sub_8148D40:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _08148D98
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	adds r1, r0, r1
	adds r1, #0x2A
	ldrb r1, [r1, #0x00]
	movs r3, #0xE9
	lsls r3, r3, #0x01
	adds r2, r4, r3
	strh r1, [r2, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	adds r3, #0x42
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08148DA0 @ =0x081471A1
	str r0, [r5, #0x00]
_08148D98:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148DA0: .4byte sub_81471A0
	thumb_func_start sub_8148DA4
sub_8148DA4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _08148E1C @ =0x0000020D
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08148E20 @ =0x0000020E
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	movs r3, #0x04
	orrs r0, r3
	strb r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	ldr r1, _08148E24 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r0, _08148E28 @ =0x0000020F
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_801E150
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148E1C: .4byte 0x0000020D
_08148E20: .4byte 0x0000020E
_08148E24: .4byte 0xFFFC7FFF
_08148E28: .4byte 0x0000020F
	thumb_func_start sub_8148E2C
sub_8148E2C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x52
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r2, _08148E8C @ =0x00000283
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmn r1, r0
	bge _08148E86
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r1, _08148E90 @ =0x0000020F
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08148E94 @ =0x08148D41
	str r0, [r5, #0x00]
_08148E86:
	pop {r4, r5}
	pop {r0}
	bx r0
_08148E8C: .4byte 0x00000283
_08148E90: .4byte 0x0000020F
_08148E94: .4byte sub_8148D40
	thumb_func_start sub_8148E98
sub_8148E98:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	str r2, [sp, #0x018]
	movs r0, #0x58
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r7, r5, r1
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	mov r8, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x30]
	mov r9, r0
	ldrh r4, [r4, #0x0A]
	adds r0, r6, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08148F06
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08148F12
_08148F06:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08148F12:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x28]
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	mov r3, r9
	bl sub_813AA5C
	lsls r0, r4, #0x08
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	ldr r2, _08148FC4 @ =0x000002DE
	adds r0, r5, r2
	ldrh r2, [r0, #0x00]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_813B6DC
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x02
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldrb r1, [r3, #0x00]
	movs r2, #0x08
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x24
	ldrb r0, [r1, #0x00]
	ands r2, r0
	strb r2, [r1, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08148FC8 @ =0x08148FCD
	ldr r2, [sp, #0x018]
	str r0, [r2, #0x00]
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08148FC4: .4byte 0x000002DE
_08148FC8: .4byte sub_8148FCC
	thumb_func_start sub_8148FCC
sub_8148FCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r5, r4, r2
	ldrb r1, [r5, #0x00]
	movs r0, #0x01
	mov r10, r0
	movs r2, #0x01
	mov r9, r2
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	bne _08149078
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08149022
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08149022:
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081490D8
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldrh r0, [r6, #0x08]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r1, [r0, #0x28]
	adds r2, #0x08
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	mov r2, r10
	orrs r0, r2
	strb r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x24
	ldrb r0, [r2, #0x00]
	ands r1, r0
	strb r1, [r2, #0x00]
	ldrb r0, [r5, #0x00]
	mov r1, r10
	orrs r0, r1
	strb r0, [r5, #0x00]
	b _081490D8
_08149078:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814909A
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814909A:
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _081490D8
	str r1, [r4, #0x18]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	mov r1, r9
	ands r0, r1
	cmp r0, #0x00
	beq _081490D4
	ldr r0, _081490D0 @ =0x08148E99
	b _081490D6
_081490D0: .4byte sub_8148E98
_081490D4:
	ldr r0, _081490E8 @ =0x081490ED
_081490D6:
	str r0, [r7, #0x00]
_081490D8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081490E8: .4byte sub_81490EC
	thumb_func_start sub_81490EC
sub_81490EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	str r0, [sp, #0x00C]
	mov r8, r1
	str r2, [sp, #0x010]
	mov r0, r8
	adds r0, #0x58
	str r0, [sp, #0x014]
	movs r1, #0x80
	lsls r1, r1, #0x01
	add r1, r8
	str r1, [sp, #0x018]
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	ldr r4, [r0, #0x00]
	movs r0, #0xDA
	lsls r0, r0, #0x01
	add r0, r8
	ldr r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldrh r1, [r1, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x26]
	str r0, [sp, #0x01C]
	adds r1, r1, r4
	adds r1, #0x2E
	ldrb r1, [r1, #0x00]
	str r1, [sp, #0x020]
	ldrh r5, [r5, #0x0A]
	str r5, [sp, #0x024]
	ldr r0, [sp, #0x00C]
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149160
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x00C]
	adds r0, r0, r2
	b _08149172
_08149160:
	ldr r3, [sp, #0x00C]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	adds r0, r0, r3
_08149172:
	ldr r0, [r0, #0x28]
	mov r9, r0
	mov r2, r9
	ldr r1, [r2, #0x0C]
	mov r3, r8
	ldr r0, [r3, #0x0C]
	subs r6, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r3, #0x10]
	subs r7, r1, r0
	ldr r0, _08149294 @ =0x03001038
	mov r10, r0
	ldr r5, _08149298 @ =0x0819832C
	ldr r0, _0814929C @ =0x08198220
	subs r5, r5, r0
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r5
	adds r0, r6, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r6, r0, #0x0
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	adds r0, r7, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r7, r0, #0x0
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	mov r2, r10
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r4, r0, #0x0
	lsls r4, r4, #0x04
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r6, r0, #0x0
	muls r6, r1
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r2, [sp, #0x020]
	adds r1, r0, #0x0
	muls r1, r2
	adds r7, r1, #0x0
	ldr r3, [sp, #0x024]
	lsls r0, r3, #0x08
	mov r1, r9
	ldr r2, [r1, #0x14]
	adds r2, r2, r0
	mov r3, r8
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x18]
	adds r0, r0, r1
	subs r5, r2, r0
	ldr r0, [sp, #0x00C]
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	movs r4, #0x01
	strb r4, [r0, #0x00]
	mov r0, r8
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	adds r3, r5, #0x0
	bl sub_813A44C
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x02
	bl sub_8047154
	movs r3, #0x85
	lsls r3, r3, #0x02
	add r3, r8
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3, #0x00]
	mov r2, r8
	adds r2, #0x24
	ldrb r0, [r2, #0x00]
	ands r1, r0
	strb r1, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [sp, #0x014]
	movs r3, #0xBC
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x018]
	adds r0, r0, r2
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r3, [sp, #0x014]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081492A0 @ =0x08148E99
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08149294: .4byte 0x03001038
_08149298: .4byte 0x0819832C
_0814929C: .4byte 0x08198220
_081492A0: .4byte sub_8148E98
	.byte 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x0C, 0x1C, 0x13, 0x1C, 0xD8, 0x21, 0x49, 0x00, 0x60, 0x18
	.byte 0x07, 0x68, 0xDA, 0x22, 0x52, 0x00, 0xA0, 0x18, 0x06, 0x68, 0xEB, 0x20, 0x40, 0x00, 0x25, 0x18
	.byte 0x29, 0x78, 0x01, 0x22, 0x90, 0x46, 0x01, 0x20, 0x08, 0x40, 0x00, 0x28, 0x3A, 0xD1, 0xA5, 0x21
	.byte 0x89, 0x00, 0x60, 0x18, 0x00, 0x68, 0x23, 0x30, 0x00, 0x78, 0x01, 0x28, 0x07, 0xD9, 0x85, 0x20
	.byte 0x80, 0x00, 0x22, 0x18, 0x11, 0x78, 0x08, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x70, 0x20, 0x1C
	.byte 0xF2, 0xF7, 0x5E, 0xF9, 0x00, 0x06, 0x00, 0x28, 0x46, 0xD1, 0xB5, 0x22, 0x92, 0x00, 0xA1, 0x18
	.byte 0x30, 0x89, 0x00, 0x02, 0x08, 0x60, 0xE8, 0x21, 0x49, 0x00, 0x60, 0x18, 0x00, 0x88, 0x40, 0x00
	.byte 0xC0, 0x19, 0x41, 0x8E, 0x08, 0x32, 0xA0, 0x18, 0x01, 0x80, 0x85, 0x20, 0x80, 0x00, 0x23, 0x18
	.byte 0x1A, 0x78, 0x08, 0x21, 0x49, 0x42, 0x08, 0x1C, 0x10, 0x40, 0x42, 0x46, 0x10, 0x43, 0x18, 0x70
	.byte 0x22, 0x1C, 0x24, 0x32, 0x10, 0x78, 0x01, 0x40, 0x11, 0x70, 0x28, 0x78, 0x41, 0x46, 0x08, 0x43
	.byte 0x28, 0x70, 0x21, 0xE0, 0xA5, 0x22, 0x92, 0x00, 0xA0, 0x18, 0x00, 0x68, 0x81, 0x7C, 0x08, 0x20
	.byte 0x08, 0x40, 0x00, 0x28, 0x07, 0xD0, 0x85, 0x20, 0x80, 0x00, 0x22, 0x18, 0x11, 0x78, 0x08, 0x20
	.byte 0x40, 0x42, 0x08, 0x40, 0x10, 0x70, 0xB7, 0x21, 0x89, 0x00, 0x60, 0x18, 0x00, 0x22, 0x81, 0x5E
	.byte 0xA0, 0x69, 0x40, 0x1A, 0xA0, 0x61, 0xB5, 0x22, 0x92, 0x00, 0xA1, 0x18, 0x09, 0x68, 0x88, 0x42
	.byte 0x02, 0xDC, 0xA1, 0x61, 0x03, 0x48, 0x18, 0x60, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x99, 0x8E, 0x14, 0x08, 0xF0, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x0E, 0x1C
	.byte 0x37, 0x1C, 0x58, 0x37, 0xA5, 0x21, 0x89, 0x00, 0x70, 0x18, 0x02, 0x68, 0xEC, 0x20, 0x40, 0x00
	.byte 0x35, 0x18, 0x28, 0x78, 0x80, 0x07, 0x20, 0x21, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x21, 0x10, 0x1C
	.byte 0x20, 0x30, 0x01, 0x70, 0xD0, 0x21, 0x49, 0x00, 0x72, 0x18, 0x20, 0x1C, 0x31, 0x1C, 0x00, 0xF0
	.byte 0x41, 0xF8, 0x29, 0x78, 0x48, 0x07, 0x00, 0x28, 0x07, 0xDB, 0x88, 0x07, 0x00, 0x28, 0x04, 0xDB
	.byte 0xA0, 0x6A, 0x04, 0x21, 0x40, 0x5E, 0x04, 0x28, 0x04, 0xD0, 0xE0, 0x6A, 0x04, 0x21, 0x40, 0x5E
	.byte 0x04, 0x28, 0x0D, 0xD1, 0x20, 0x1C, 0x69, 0x46, 0xB2, 0xF7, 0xA2, 0xFC, 0x00, 0x06, 0x00, 0x28
	.byte 0x06, 0xD0, 0xC0, 0x21, 0x49, 0x00, 0x78, 0x18, 0x01, 0x78, 0x02, 0x22, 0x11, 0x43, 0x01, 0x70
	.byte 0x80, 0x21, 0x89, 0x00, 0x60, 0x18, 0x00, 0x68, 0x80, 0x69, 0x00, 0x28, 0x0D, 0xD1, 0x04, 0x31
	.byte 0x60, 0x18, 0x00, 0x68, 0x80, 0x69, 0x00, 0x28, 0x07, 0xD1, 0xC0, 0x20, 0x40, 0x00, 0x3A, 0x18
	.byte 0x11, 0x78, 0x03, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x70, 0xA4, 0x21, 0x49, 0x00, 0x7A, 0x18
	.byte 0x13, 0x68, 0x20, 0x1C, 0x31, 0x1C, 0x91, 0xF0, 0x13, 0xFB, 0x01, 0xB0, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_8149458
sub_8149458:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	add r5, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08149480
	movs r3, #0xEC
	lsls r3, r3, #0x01
	adds r2, r6, r3
	b _081494CC
_08149480:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r1, [r0, #0x28]
	mov r2, sp
	movs r3, #0x00
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x04
	subs r0, #0x20
	strh r0, [r2, #0x00]
	adds r4, #0x02
	movs r3, #0x00
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x04
	subs r0, #0x20
	strh r0, [r2, #0x06]
	adds r4, #0x02
	movs r3, #0x00
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x04
	adds r0, #0x20
	strh r0, [r2, #0x02]
	movs r3, #0x02
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x04
	adds r0, #0x20
	strh r0, [r2, #0x04]
	ldr r2, _081494D8 @ =0x00007FFF
	mov r0, sp
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081494DC
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r2, r6, r0
_081494CC:
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _081494EA
_081494D8: .4byte 0x00007FFF
_081494DC:
	movs r1, #0xEC
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
_081494EA:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81494F4
sub_81494F4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	mov r1, sp
	movs r0, #0x03
	strb r0, [r1, #0x00]
	mov r4, sp
	adds r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	strb r0, [r4, #0x00]
	mov r0, sp
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bge _08149548
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	b _0814955A
_08149548:
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	adds r1, r1, r2
	ldr r2, _0814959C @ =0xFFFFDC00
	adds r1, r1, r2
	str r1, [r0, #0x00]
_0814955A:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081495A0 @ =0x0814BB81
	str r0, [r7, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814959C: .4byte 0xFFFFDC00
_081495A0: .4byte sub_814BB80
	thumb_func_start sub_81495A4
sub_81495A4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	beq _081495F4
	movs r1, #0xEC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1F
	cmp r0, #0x00
	beq _08149650
	lsls r0, r1, #0x1E
	cmp r0, #0x00
	bge _08149650
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149650
	ldr r0, _081495F0 @ =0x08149661
	b _08149652
_081495F0: .4byte sub_8149660
_081495F4:
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08149614
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08149654
_08149614:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x28]
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r2, r2, r0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	movs r1, #0xB4
	lsls r1, r1, #0x06
	adds r0, r0, r1
	cmp r2, r0
	bgt _08149654
	movs r2, #0xEC
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1F
	cmp r0, #0x00
	beq _08149650
	lsls r0, r1, #0x1E
	cmp r0, #0x00
	bge _08149650
	ldr r0, _0814964C @ =0x08149661
	b _08149652
_0814964C: .4byte sub_8149660
_08149650:
	ldr r0, _0814965C @ =0x0814BC69
_08149652:
	str r0, [r6, #0x00]
_08149654:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0814965C: .4byte sub_814BC68
	thumb_func_start sub_8149660
sub_8149660:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081496C8
	adds r0, r5, #0x0
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #0x02
	bl sub_813A5C8
	adds r0, r5, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x07
	movs r2, #0x00
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081496C4 @ =0x0814BC1D
	b _0814977E
	.byte 0x00, 0x00
_081496C4: .4byte sub_814BC1C
_081496C8:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	mov r8, r0
	ldr r1, [r0, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r7, r1, r0
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r0, [r5, #0x10]
	subs r6, r1, r0
	ldr r2, _08149790 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, _08149794 @ =0x2D900000
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _081496FE
	adds r0, #0xFF
_081496FE:
	asrs r4, r0, #0x08
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl __divsi3
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r7, r1, #0x05
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl __divsi3
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r6, r1, #0x05
	mov r0, r8
	ldr r4, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r4, r4, r0
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r4, r4, r1
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	movs r3, #0x28
	bl sub_813B798
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x28
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r3, #0x04
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r0, _08149798 @ =0x0814BB25
_0814977E:
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149790: .4byte 0x03001038
_08149794: .4byte 0x2D900000
_08149798: .4byte sub_814BB24
	thumb_func_start sub_814979C
sub_814979C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r2, [r0, #0x00]
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r4, r6, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1E
	movs r1, #0x20
	cmp r0, #0x00
	bge _081497D4
	movs r1, #0x40
_081497D4:
	adds r0, r2, #0x0
	adds r0, #0x20
	strb r1, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r6, r1
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl sub_8149458
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x1D
	cmp r0, #0x00
	blt _08149800
	lsls r0, r1, #0x1E
	cmp r0, #0x00
	blt _08149800
	ldr r0, [r7, #0x28]
	movs r3, #0x04
	ldsh r0, [r0, r3]
	cmp r0, #0x04
	beq _0814980A
_08149800:
	ldr r0, [r7, #0x2C]
	movs r4, #0x04
	ldsh r0, [r0, r4]
	cmp r0, #0x04
	bne _08149890
_0814980A:
	add r4, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149890
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x28]
	mov r12, r0
	ldr r0, [r6, #0x0C]
	cmp r0, #0x00
	bge _0814982C
	adds r0, #0xFF
_0814982C:
	lsls r0, r0, #0x08
	lsrs r1, r0, #0x10
	ldr r2, [r6, #0x10]
	cmp r2, #0x00
	bge _08149838
	adds r2, #0xFF
_08149838:
	lsls r2, r2, #0x08
	mov r3, sp
	movs r4, #0x00
	ldsh r0, [r5, r4]
	lsls r0, r0, #0x04
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r3, #0x00]
	adds r5, #0x02
	movs r4, #0x00
	ldsh r0, [r5, r4]
	lsls r0, r0, #0x04
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r3, #0x06]
	adds r5, #0x02
	movs r4, #0x00
	ldsh r0, [r5, r4]
	lsls r0, r0, #0x04
	adds r1, r1, r0
	strh r1, [r3, #0x02]
	mov r1, sp
	movs r3, #0x02
	ldsh r0, [r5, r3]
	lsls r0, r0, #0x04
	adds r2, r2, r0
	strh r2, [r1, #0x04]
	ldr r2, _081498D8 @ =0x00007FFF
	mov r0, sp
	mov r1, r12
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149890
	movs r0, #0xC0
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x00]
_08149890:
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x18]
	cmp r0, #0x00
	bne _081498BC
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x18]
	cmp r0, #0x00
	bne _081498BC
	movs r2, #0xC0
	lsls r2, r2, #0x01
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_081498BC:
	movs r2, #0xA4
	lsls r2, r2, #0x01
	add r2, r8
	ldr r3, [r2, #0x00]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl _call_via_r3
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081498D8: .4byte 0x00007FFF
	thumb_func_start sub_81498DC
sub_81498DC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	mov r1, sp
	movs r0, #0x03
	strb r0, [r1, #0x00]
	mov r4, sp
	adds r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	strb r0, [r4, #0x00]
	mov r0, sp
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bge _08149930
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	b _08149942
_08149930:
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	adds r1, r1, r2
	ldr r2, _08149984 @ =0xFFFFDC00
	adds r1, r1, r2
	str r1, [r0, #0x00]
_08149942:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08149988 @ =0x0814B989
	str r0, [r7, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08149984: .4byte 0xFFFFDC00
_08149988: .4byte sub_814B988
	thumb_func_start sub_814998C
sub_814998C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081499F4
	adds r0, r5, #0x0
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #0x02
	bl sub_813A5C8
	adds r0, r5, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x07
	movs r2, #0x00
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081499F0 @ =0x0814BA11
	b _08149AAA
	.byte 0x00, 0x00
_081499F0: .4byte sub_814BA10
_081499F4:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	mov r8, r0
	ldr r1, [r0, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r7, r1, r0
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r0, [r5, #0x10]
	subs r6, r1, r0
	ldr r2, _08149ABC @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, _08149AC0 @ =0x2D900000
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08149A2A
	adds r0, #0xFF
_08149A2A:
	asrs r4, r0, #0x08
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl __divsi3
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r7, r1, #0x05
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl __divsi3
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r6, r1, #0x05
	mov r0, r8
	ldr r4, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r4, r4, r0
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r4, r4, r1
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	movs r3, #0x28
	bl sub_813B798
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x28
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r3, #0x04
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r0, _08149AC4 @ =0x0814B92D
_08149AAA:
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149ABC: .4byte 0x03001038
_08149AC0: .4byte 0x2D900000
_08149AC4: .4byte sub_814B92C
	thumb_func_start sub_8149AC8
sub_8149AC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	mov r8, r0
	adds r4, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	movs r3, #0xEC
	lsls r3, r3, #0x01
	adds r6, r4, r3
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1F
	cmp r0, #0x00
	beq _08149B02
	add r5, sp, #0x010
	mov r0, r8
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149B02
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1E
	cmp r0, #0x00
	blt _08149B06
_08149B02:
	movs r0, #0x00
	b _08149B70
_08149B06:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r5, [r0, #0x28]
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	bge _08149B16
	adds r0, #0xFF
_08149B16:
	lsls r0, r0, #0x08
	lsrs r1, r0, #0x10
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08149B22
	adds r0, #0xFF
_08149B22:
	lsls r2, r0, #0x08
	mov r3, sp
	movs r4, #0x10
	ldsh r0, [r7, r4]
	lsls r0, r0, #0x04
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r3, #0x00]
	movs r4, #0x12
	ldsh r0, [r7, r4]
	lsls r0, r0, #0x04
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r3, #0x06]
	movs r4, #0x14
	ldsh r0, [r7, r4]
	lsls r0, r0, #0x04
	adds r1, r1, r0
	strh r1, [r3, #0x02]
	mov r1, sp
	movs r3, #0x16
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x04
	adds r2, r2, r0
	strh r2, [r1, #0x04]
	ldr r2, _08149B7C @ =0x00007FFF
	mov r0, sp
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	movs r1, #0x00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08149B6E
	movs r1, #0x01
_08149B6E:
	adds r0, r1, #0x0
_08149B70:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08149B7C: .4byte 0x00007FFF
	thumb_func_start sub_8149B80
sub_8149B80:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r1, #0x0
	mov r9, r2
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r6, r7, r1
	movs r1, #0x00
	mov r8, r1
	strh r0, [r6, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x01
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	ldrh r0, [r6, #0x00]
	adds r5, r5, r0
	ldrb r0, [r5, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r7, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08149C44 @ =0x08149C4D
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, _08149C48 @ =0x0814B849
	str r0, [r1, #0x04]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08149C44: .4byte sub_8149C4C
_08149C48: .4byte sub_814B848
	thumb_func_start sub_8149C4C
sub_8149C4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x00C]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x010]
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x014]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08149C8A
	b _08149E00
_08149C8A:
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08149C9E
	b _08149E34
_08149C9E:
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149CB2
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _08149CBE
_08149CB2:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08149CBE:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	mov r8, r0
	ldr r2, [sp, #0x00C]
	movs r3, #0xC2
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldr r1, [r0, #0x00]
	movs r4, #0xC4
	lsls r4, r4, #0x01
	adds r0, r2, r4
	ldr r2, [r0, #0x00]
	ldr r5, [sp, #0x00C]
	adds r3, #0x08
	adds r0, r5, r3
	adds r3, #0x04
	adds r4, r5, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r5, #0x00
	str r5, [sp, #0x004]
	adds r0, r7, #0x0
	bl sub_8047F60
	mov r0, r8
	ldr r1, [r0, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r1, r1, r0
	mov r9, r1
	mov r2, r8
	ldr r1, [r2, #0x10]
	ldr r0, [r7, #0x10]
	subs r6, r1, r0
	ldr r5, _08149DF4 @ =0x0819832C
	ldr r0, _08149DF8 @ =0x08198220
	subs r5, r5, r0
	ldr r3, _08149DFC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r4, r2, r5
	mov r1, r9
	mov r0, r9
	muls r0, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r4
	mov r10, r0
	ldr r2, [sp, #0x014]
	ldrh r0, [r2, #0x0A]
	lsls r0, r0, #0x08
	mov r3, r8
	ldr r4, [r3, #0x14]
	adds r4, r4, r0
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	subs r4, r4, r0
	movs r1, #0xBC
	lsls r1, r1, #0x01
	ldr r0, [sp, #0x00C]
	adds r1, r0, r1
	str r1, [sp, #0x018]
	ldrh r0, [r1, #0x00]
	ldr r2, [sp, #0x010]
	adds r0, r0, r2
	ldrb r0, [r0, #0x10]
	mov r8, r0
	ldr r3, _08149DFC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	mov r0, r9
	mov r1, r10
	bl _call_via_r2
	mov r1, r8
	muls r1, r0
	mov r9, r1
	ldr r3, _08149DFC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	adds r0, r6, #0x0
	mov r1, r10
	bl _call_via_r2
	mov r6, r8
	muls r6, r0
	ldr r5, [sp, #0x018]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x010]
	adds r0, r0, r1
	ldrh r0, [r0, #0x08]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	movs r2, #0x01
	strb r2, [r0, #0x00]
	adds r0, r7, #0x0
	mov r1, r9
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	bl sub_813A44C
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r4, r7, r3
	ldr r0, [r4, #0x00]
	movs r5, #0x00
	str r5, [sp, #0x000]
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	ldr r2, [sp, #0x018]
	ldrh r0, [r2, #0x00]
	ldr r3, [sp, #0x010]
	adds r0, r0, r3
	ldrb r0, [r0, #0x04]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r2, r7, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r5, [sp, #0x00C]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08149E34
	.byte 0x00, 0x00
_08149DF4: .4byte 0x0819832C
_08149DF8: .4byte 0x08198220
_08149DFC: .4byte 0x03001038
_08149E00:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x2C
	ldsh r0, [r0, r2]
	cmp r0, #0xFF
	ble _08149E24
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_08149E24:
	adds r0, r7, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08149E34
	ldr r0, _08149E44 @ =0x08149E49
	str r0, [r5, #0x00]
_08149E34:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149E44: .4byte sub_8149E48
	thumb_func_start sub_8149E48
sub_8149E48:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	mov r9, r2
	adds r7, r4, #0x0
	adds r7, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r6, [r0, #0x00]
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149E82
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _08149E8E
_08149E82:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08149E8E:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r3, [r0, #0x28]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldrh r1, [r6, #0x08]
	movs r0, #0xB5
	lsls r0, r0, #0x02
	adds r2, r4, r0
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r1, [r0, #0x14]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08149EF0 @ =0x0814B7A5
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149EF0: .4byte sub_814B7A4
	thumb_func_start sub_8149EF4
sub_8149EF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	str r0, [sp, #0x020]
	adds r7, r1, #0x0
	str r2, [sp, #0x024]
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x028]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x02C]
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	mov r8, r0
	ldr r0, [sp, #0x020]
	add r1, sp, #0x010
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149F3A
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r3, [sp, #0x020]
	adds r0, r0, r3
	b _08149F4C
_08149F3A:
	ldr r4, [sp, #0x020]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	adds r0, r0, r4
_08149F4C:
	ldr r5, [r0, #0x28]
	ldr r1, [r5, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r1, r1, r0
	str r1, [sp, #0x030]
	ldr r1, [r5, #0x10]
	ldr r0, [r7, #0x10]
	subs r1, r1, r0
	mov r10, r1
	ldr r4, _0814A03C @ =0x0819832C
	ldr r0, _0814A040 @ =0x08198220
	subs r4, r4, r0
	ldr r3, _0814A044 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r6, r2, r4
	ldr r1, [sp, #0x030]
	adds r0, r1, #0x0
	muls r0, r1
	mov r3, r10
	mov r1, r10
	muls r1, r3
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r6
	mov r9, r0
	mov r1, r8
	ldrh r0, [r1, #0x0A]
	lsls r0, r0, #0x08
	str r0, [sp, #0x038]
	ldr r2, [r5, #0x14]
	adds r2, r2, r0
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	subs r2, r2, r0
	str r2, [sp, #0x034]
	ldr r2, [sp, #0x028]
	movs r3, #0xBC
	lsls r3, r3, #0x01
	adds r2, r2, r3
	mov r8, r2
	ldrh r0, [r2, #0x00]
	ldr r1, [sp, #0x02C]
	adds r0, r0, r1
	adds r0, #0x28
	ldrb r6, [r0, #0x00]
	ldr r3, _0814A044 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r0, [sp, #0x030]
	mov r1, r9
	bl _call_via_r2
	adds r1, r0, #0x0
	muls r1, r6
	str r1, [sp, #0x030]
	ldr r3, _0814A044 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r10
	mov r1, r9
	bl _call_via_r2
	adds r4, r0, #0x0
	muls r4, r6
	mov r10, r4
	mov r1, r8
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x02C]
	adds r0, r0, r2
	ldrh r6, [r0, #0x20]
	ldr r3, [sp, #0x020]
	movs r4, #0xC1
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x03C]
	add r4, sp, #0x018
	str r4, [sp, #0x000]
	add r4, sp, #0x01C
	str r4, [sp, #0x004]
	add r4, sp, #0x008
	movs r3, #0x00
	mov r9, r3
	strb r3, [r4, #0x00]
	add r4, sp, #0x00C
	movs r3, #0x01
	mov r8, r3
	strb r3, [r4, #0x00]
	ldr r3, [sp, #0x03C]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0814A048
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	ldr r4, [sp, #0x038]
	adds r3, r3, r4
	str r6, [sp, #0x000]
	add r0, sp, #0x004
	mov r4, r9
	strb r4, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_813A44C
	b _0814A05C
	.byte 0x00, 0x00
_0814A03C: .4byte 0x0819832C
_0814A040: .4byte 0x08198220
_0814A044: .4byte 0x03001038
_0814A048:
	str r6, [sp, #0x000]
	add r0, sp, #0x004
	mov r1, r8
	strb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ldr r1, [sp, #0x030]
	mov r2, r10
	ldr r3, [sp, #0x034]
	bl sub_813A44C
_0814A05C:
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r1, [r0, #0x00]
	ldr r2, [sp, #0x028]
	subs r3, #0x9C
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	ldr r4, [sp, #0x02C]
	adds r0, r0, r4
	ldrb r0, [r0, #0x1C]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _0814A0A0 @ =0x0814B805
	ldr r1, [sp, #0x024]
	str r0, [r1, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814A0A0: .4byte sub_814B804
	thumb_func_start sub_814A0A4
sub_814A0A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r7, [r0, #0x00]
	adds r0, r5, #0x0
	add r1, sp, #0x010
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A0E0
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	b _0814A0EC
_0814A0E0:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814A0EC:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r3, [r0, #0x28]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldrh r1, [r7, #0x08]
	movs r0, #0xB5
	lsls r0, r0, #0x02
	adds r2, r4, r0
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x2C]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814A160 @ =0x0814B7A5
	str r0, [r6, #0x00]
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x12
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A164 @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A16C
	ldr r0, _0814A168 @ =0x08149EF5
	b _0814A16E
_0814A160: .4byte sub_814B7A4
_0814A164: .4byte 0x00007FFF
_0814A168: .4byte sub_8149EF4
_0814A16C:
	ldr r0, _0814A180 @ =0x0814A185
_0814A16E:
	str r0, [r6, #0x04]
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A180: .4byte sub_814A184
	thumb_func_start sub_814A184
sub_814A184:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r1, #0x0
	str r2, [sp, #0x008]
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x00C]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x010]
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x0C]
	subs r1, r1, r0
	mov r9, r1
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x10]
	subs r5, r1, r0
	ldr r2, _0814A240 @ =0x03001038
	mov r10, r2
	ldr r4, _0814A244 @ =0x0819832C
	ldr r0, _0814A248 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r2, #0x00]
	adds r6, r2, r4
	mov r1, r9
	mov r0, r9
	muls r0, r1
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r6
	mov r8, r0
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	ldr r1, [sp, #0x010]
	adds r0, r0, r1
	adds r0, #0x40
	ldrb r6, [r0, #0x00]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	mov r0, r9
	mov r1, r8
	bl _call_via_r2
	adds r1, r0, #0x0
	muls r1, r6
	mov r9, r1
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	mov r1, r8
	bl _call_via_r2
	adds r5, r0, #0x0
	muls r5, r6
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r1, r0
	movs r1, #0xF2
	lsls r1, r1, #0x01
	adds r0, r7, r1
	movs r2, #0xF4
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	adds r2, r2, r0
	cmp r3, r2
	ble _0814A24C
	movs r3, #0x80
	lsls r3, r3, #0x06
	b _0814A252
	.byte 0x00, 0x00
_0814A240: .4byte 0x03001038
_0814A244: .4byte 0x0819832C
_0814A248: .4byte 0x08198220
_0814A24C:
	ldr r1, _0814A2BC @ =0xFFFFE000
	adds r0, r3, r1
	subs r3, r2, r0
_0814A252:
	ldr r2, [sp, #0x00C]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	adds r4, r2, r0
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x010]
	adds r0, r0, r1
	ldrh r0, [r0, #0x38]
	str r0, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	mov r1, r9
	adds r2, r5, #0x0
	bl sub_813A44C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	ldr r2, [sp, #0x010]
	adds r0, r0, r2
	adds r0, #0x34
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _0814A2C0 @ =0x0814A2C9
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x00]
	ldr r0, _0814A2C4 @ =0x0814B731
	str r0, [r1, #0x04]
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A2BC: .4byte 0xFFFFE000
_0814A2C0: .4byte sub_814A2C8
_0814A2C4: .4byte sub_814B730
	thumb_func_start sub_814A2C8
sub_814A2C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0814A2E6
	adds r0, #0xFF
_0814A2E6:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0814A2FA
	adds r0, #0xFF
_0814A2FA:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r3, _0814A418 @ =0x03001038
	mov r8, r3
	ldr r1, _0814A41C @ =0x0819832C
	ldr r0, _0814A420 @ =0x08198220
	subs r6, r1, r0
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	ldr r0, [r4, #0x0C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	mov r9, r1
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	ldr r0, [r4, #0x10]
	mov r1, r9
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	subs r1, #0x78
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814A370
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814A370:
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x014]
	mov r1, sp
	ldr r0, [sp, #0x010]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r2, #0x0
	subs r0, #0x19
	strh r0, [r1, #0x00]
	mov r3, sp
	mov r0, r10
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0x0
	subs r0, #0x13
	strh r0, [r3, #0x06]
	mov r0, sp
	adds r2, #0x19
	strh r2, [r0, #0x02]
	adds r1, #0x13
	strh r1, [r0, #0x04]
	ldr r0, [r7, #0x04]
	ldr r1, _0814A424 @ =0x0814B6CD
	mov r10, r1
	cmp r0, r10
	beq _0814A3FE
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, r5
	mov r0, sp
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r1, r0
	blt _0814A3FE
	subs r0, r2, r5
	mov r1, sp
	movs r2, #0x02
	ldsh r1, [r1, r2]
	cmp r0, r1
	bgt _0814A3FE
	mov r0, sp
	ldr r3, [sp, #0x01C]
	lsls r1, r3, #0x10
	asrs r5, r1, #0x10
	movs r1, #0x06
	ldsh r0, [r0, r1]
	cmp r5, r0
	blt _0814A3FE
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	mov r1, r9
	bl _call_via_r2
	subs r0, r5, r0
	mov r1, sp
	movs r2, #0x04
	ldsh r1, [r1, r2]
	cmp r0, r1
	bgt _0814A3FE
	mov r3, r10
	str r3, [r7, #0x04]
_0814A3FE:
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bne _0814A408
	ldr r0, [r7, #0x04]
	str r0, [r7, #0x00]
_0814A408:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814A418: .4byte 0x03001038
_0814A41C: .4byte 0x0819832C
_0814A420: .4byte 0x08198220
_0814A424: .4byte sub_814B6CC
	thumb_func_start sub_814A428
sub_814A428:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r7, r6, r2
	ldrh r0, [r7, #0x00]
	cmp r0, #0x00
	beq _0814A4DE
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r6, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r6, #0x18]
	subs r0, r0, r1
	str r0, [r6, #0x18]
	ldr r1, [r6, #0x14]
	adds r1, r1, r0
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0814A512
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r5, #0x00
	str r5, [sp, #0x000]
	movs r1, #0x02
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	add r0, r8
	adds r0, #0x4C
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	strh r5, [r7, #0x00]
	b _0814A512
_0814A4DE:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x2C
	ldsh r1, [r0, r2]
	ldr r0, _0814A520 @ =0x0000084F
	cmp r1, r0
	ble _0814A512
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _0814A524 @ =0x0814B67D
	str r3, [r4, #0x00]
	ldr r0, _0814A528 @ =0x0814B86D
	str r0, [r4, #0x04]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl _call_via_r3
_0814A512:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A520: .4byte 0x0000084F
_0814A524: .4byte sub_814B67C
_0814A528: .4byte sub_814B86C
	.byte 0x70, 0xB5, 0x82, 0xB0, 0x04, 0x1C, 0x0D, 0x1C, 0x2E, 0x1C, 0x58, 0x36, 0x01, 0xA9, 0xB1, 0xF7
	.byte 0x03, 0xFC, 0x00, 0x06, 0x00, 0x28, 0x0A, 0xD0, 0x20, 0x1C, 0x29, 0x1C, 0x00, 0x22, 0xEF, 0xF7
	.byte 0x9D, 0xFC, 0x00, 0x06, 0x00, 0x16, 0x01, 0x21, 0x49, 0x42, 0x88, 0x42, 0x05, 0xD1, 0x20, 0x1C
	.byte 0x29, 0x1C, 0x00, 0x22, 0x00, 0xF0, 0xB2, 0xFF, 0x53, 0xE0, 0xDA, 0x21, 0x49, 0x00, 0x68, 0x18
	.byte 0x00, 0x68, 0x08, 0x22, 0x80, 0x5E, 0x00, 0x28, 0x1B, 0xD0, 0x20, 0x1C, 0x29, 0x1C, 0x00, 0xF0
	.byte 0xBB, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x14, 0xD0, 0x80, 0x21, 0x89, 0x00, 0x60, 0x18, 0x00, 0x68
	.byte 0x04, 0x22, 0x80, 0x5E, 0x02, 0x28, 0x06, 0xD0, 0x04, 0x31, 0x60, 0x18, 0x00, 0x68, 0x04, 0x22
	.byte 0x80, 0x5E, 0x02, 0x28, 0x05, 0xD1, 0x20, 0x1C, 0x29, 0x1C, 0x02, 0x22, 0x00, 0xF0, 0x8E, 0xFF
	.byte 0x2F, 0xE0, 0x01, 0xA8, 0x00, 0x78, 0x80, 0x00, 0x00, 0x19, 0x84, 0x6A, 0xBC, 0x21, 0x49, 0x00
	.byte 0x70, 0x18, 0x00, 0x88, 0xAC, 0x22, 0x52, 0x00, 0xB1, 0x18, 0x09, 0x68, 0x40, 0x00, 0x40, 0x18
	.byte 0x06, 0x8D, 0xE1, 0x68, 0xE8, 0x68, 0x0A, 0x1A, 0x21, 0x69, 0x28, 0x69, 0x09, 0x1A, 0x10, 0x1C
	.byte 0x08, 0x43, 0x00, 0x28, 0x07, 0xD0, 0x10, 0x1C, 0x9E, 0xF7, 0xD6, 0xFF, 0x00, 0x04, 0x00, 0x0C
	.byte 0x10, 0x30, 0x01, 0x0A, 0x00, 0xE0, 0xFF, 0x21, 0x00, 0x20, 0xA9, 0x70, 0xE1, 0x68, 0x22, 0x69
	.byte 0x6B, 0x46, 0x18, 0x70, 0x28, 0x1C, 0x33, 0x1C, 0xEF, 0xF7, 0x3E, 0xFE, 0x28, 0x1C, 0xF1, 0xF7
	.byte 0x21, 0xF8, 0x02, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_814A618
sub_814A618:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	mov r12, r1
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r3, [r0, #0x00]
	movs r5, #0xEA
	lsls r5, r5, #0x01
	add r5, r12
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	beq _0814A694
	adds r4, r3, #0x0
	adds r4, #0x23
	ldrb r0, [r4, #0x00]
	cmp r0, #0x08
	bls _0814A654
	movs r2, #0x83
	lsls r2, r2, #0x02
	add r2, r12
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	subs r1, #0xC0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814A654:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x0D
	bls _0814A6BC
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A6BC
	movs r2, #0x83
	lsls r2, r2, #0x02
	add r2, r12
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	mov r1, r12
	movs r2, #0x03
	bl sub_814B038
	movs r0, #0x00
	strh r0, [r5, #0x00]
	b _0814A6BC
_0814A694:
	adds r0, r3, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0814A6BC
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A6BC
	adds r0, r6, #0x0
	mov r1, r12
	movs r2, #0x04
	bl sub_814B4C8
_0814A6BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814A6C4
sub_814A6C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	adds r4, r1, #0x0
	ldr r6, _0814A7A0 @ =0x03001038
	ldr r1, _0814A7A4 @ =0x0819832C
	ldr r0, _0814A7A8 @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r4, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0814A720
	adds r0, r5, #0x0
	muls r0, r5
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r5
	bl _call_via_r2
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
_0814A720:
	movs r5, #0xB7
	lsls r5, r5, #0x02
	adds r2, r4, r5
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814A7BC
	movs r3, #0xEB
	lsls r3, r3, #0x01
	adds r5, r4, r3
	ldrb r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0814A75E
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x06
	bl sub_814B038
	ldrb r1, [r5, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_0814A75E:
	ldr r1, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r1, r0
	bgt _0814A7BC
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r5, _0814A7AC @ =0x0000020F
	adds r2, r4, r5
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A7B0
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
	b _0814A802
	.byte 0x00, 0x00
_0814A7A0: .4byte 0x03001038
_0814A7A4: .4byte 0x0819832C
_0814A7A8: .4byte 0x08198220
_0814A7AC: .4byte 0x0000020F
_0814A7B0:
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x07
	bl sub_814B4C8
	b _0814A802
_0814A7BC:
	ldr r0, _0814A810 @ =0x00000242
	adds r1, r4, r0
	movs r3, #0x00
	ldsh r2, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #0x02
	add r1, r8
	ldr r3, [r1, #0x00]
	adds r0, r3, r0
	movs r5, #0x00
	ldsh r1, [r0, r5]
	cmp r1, #0x00
	bge _0814A7D8
	adds r1, #0x03
_0814A7D8:
	asrs r1, r1, #0x02
	adds r1, r2, r1
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r5, #0x00
	ldsh r2, [r1, r5]
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0814A7F8
	adds r0, #0x03
_0814A7F8:
	asrs r1, r0, #0x02
	adds r1, r2, r1
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0814A802:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A810: .4byte 0x00000242
	thumb_func_start sub_814A814
sub_814A814:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r6, r4, r0
	ldrh r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0814A880
	movs r1, #0x23
	adds r1, r1, r3
	mov r12, r1
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	bls _0814A854
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	subs r1, #0xC0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814A854:
	mov r1, r12
	ldrb r0, [r1, #0x00]
	cmp r0, #0x03
	bls _0814A906
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A906
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x08
	bl sub_814B038
	movs r0, #0x00
	strh r0, [r6, #0x00]
	b _0814A906
_0814A880:
	movs r0, #0x23
	adds r0, r0, r3
	mov r12, r0
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0814A8A2
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814A8A2:
	mov r1, r12
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	bls _0814A906
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A906
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A8F8 @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A8FC
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_814B4C8
	b _0814A906
_0814A8F8: .4byte 0x00007FFF
_0814A8FC:
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x09
	bl sub_814B4C8
_0814A906:
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814A910
sub_814A910:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r5, r0
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r4, r5, r1
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0814A946
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814B4F4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A942
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x01
	bl sub_814B4C8
	b _0814A984
_0814A942:
	movs r0, #0x28
	b _0814A948
_0814A946:
	subs r0, #0x01
_0814A948:
	strh r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814A984
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r4, [r0, #0x30]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	movs r1, #0x00
	ldsh r2, [r0, r1]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_813A5C8
_0814A984:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814A98C
sub_814A98C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r5, #0x0
	adds r7, #0x58
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814A9CC
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A9C8 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A9C6
	b _0814AABC
_0814A9C6:
	b _0814A9EA
_0814A9C8: .4byte 0x00007FFF
_0814A9CC:
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A9F8 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814A9FC
_0814A9EA:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x09
	bl sub_814B4C8
	b _0814AAD2
	.byte 0x00, 0x00
_0814A9F8: .4byte 0x00007FFF
_0814A9FC:
	ldr r1, _0814AA34 @ =0x00000246
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x0C
	beq _0814AA38
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x08
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0814AA38
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814B4F4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814AA38
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x02
	bl sub_814B4C8
	b _0814AAD2
_0814AA34: .4byte 0x00000246
_0814AA38:
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x28]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	subs r2, #0x20
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r7, [r0, #0x28]
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814AA78
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r1, r0, #0x08
	b _0814AA7A
_0814AA78:
	movs r1, #0xFF
_0814AA7A:
	movs r0, #0x00
	strb r1, [r5, #0x02]
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	mov r3, sp
	strb r0, [r3, #0x00]
	adds r0, r5, #0x0
	adds r3, r7, #0x0
	bl sub_813A284
	ldr r1, _0814AAC8 @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	ldr r2, [r5, #0x0C]
	adds r2, r2, r0
	adds r1, #0x02
	adds r0, r5, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r3, [r5, #0x10]
	adds r3, r3, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814AACC
_0814AABC:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_814B4C8
	b _0814AAD2
_0814AAC8: .4byte 0x00000242
_0814AACC:
	adds r0, r5, #0x0
	bl sub_813B650
_0814AAD2:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814AADC
sub_814AADC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r12, r0
	ldr r2, _0814AB18 @ =0x000002DE
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x03
	bls _0814AB66
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0814AB1C
	ldr r0, [r4, #0x0C]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	b _0814AB22
	.byte 0x00, 0x00
_0814AB18: .4byte 0x000002DE
_0814AB1C:
	ldr r0, [r4, #0x0C]
	ldr r1, _0814ABA0 @ =0xFFFFFC00
	adds r0, r0, r1
_0814AB22:
	str r0, [r4, #0x0C]
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x34]
	subs r1, r1, r0
	ldr r2, _0814ABA4 @ =0x00000242
	adds r0, r4, r2
	movs r2, #0x00
	strh r1, [r0, #0x00]
	ldr r1, _0814ABA8 @ =0x000002DE
	adds r0, r4, r1
	strh r2, [r0, #0x00]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	add r2, r12
	ldrh r1, [r2, #0x00]
	ldr r0, _0814ABAC @ =0x0000FFFE
	cmp r1, r0
	bhi _0814AB4A
	adds r0, r1, #0x1
	strh r0, [r2, #0x00]
_0814AB4A:
	movs r3, #0xBF
	lsls r3, r3, #0x01
	add r3, r12
	ldrb r2, [r3, #0x00]
	lsrs r1, r2, #0x02
	movs r0, #0x01
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0814AB66:
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	cmp r0, #0x1D
	bls _0814AB96
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814AB96
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x0D
	bl sub_814B4C8
_0814AB96:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814ABA0: .4byte 0xFFFFFC00
_0814ABA4: .4byte 0x00000242
_0814ABA8: .4byte 0x000002DE
_0814ABAC: .4byte 0x0000FFFE
	thumb_func_start sub_814ABB0
sub_814ABB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	adds r4, r1, #0x0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	bne _0814AC50
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r3, r4, r1
	ldr r0, [r4, #0x14]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r0, r0, r2
	str r0, [r3, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldr r0, [r3, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	subs r1, #0xDC
	strh r1, [r0, #0x00]
	ldr r3, _0814AC3C @ =0x0000023E
	adds r0, r4, r3
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x01
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r3, _0814AC40 @ =0x03001038
	ldr r0, _0814AC44 @ =0x0819832C
	ldr r2, _0814AC48 @ =0x08198220
	subs r0, r0, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	asrs r0, r1, #0x01
	ldr r3, _0814AC4C @ =0xFFFC0000
	adds r0, r0, r3
	bl _call_via_r2
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r4, r2
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0814AC34
	movs r0, #0x01
	str r0, [r1, #0x00]
_0814AC34:
	movs r0, #0x01
	strh r0, [r5, #0x00]
	b _0814AD16
	.byte 0x00, 0x00
_0814AC3C: .4byte 0x0000023E
_0814AC40: .4byte 0x03001038
_0814AC44: .4byte 0x0819832C
_0814AC48: .4byte 0x08198220
_0814AC4C: .4byte 0xFFFC0000
_0814AC50:
	cmp r0, #0x01
	bne _0814AD16
	ldr r6, _0814ACFC @ =0x03001038
	ldr r1, _0814AD00 @ =0x0819832C
	ldr r0, _0814AD04 @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB5
	lsls r3, r3, #0x02
	adds r0, r4, r3
	subs r3, #0x10
	adds r1, r4, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0814ACA2
	adds r0, r5, #0x0
	muls r0, r5
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r5
	bl _call_via_r2
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
_0814ACA2:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r4, r0
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814AD16
	ldr r1, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r1, r0
	bgt _0814AD16
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r3, _0814AD08 @ =0x0000020F
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814AD0C
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
	b _0814AD16
_0814ACFC: .4byte 0x03001038
_0814AD00: .4byte 0x0819832C
_0814AD04: .4byte 0x08198220
_0814AD08: .4byte 0x0000020F
_0814AD0C:
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x07
	bl sub_814B4C8
_0814AD16:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814AD24
sub_814AD24:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	adds r7, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r4, r7, r1
	cmp r2, #0x00
	bne _0814AD98
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0xE9
	lsls r6, r6, #0x01
	adds r1, r7, r6
	movs r0, #0x50
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	mov r9, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r1, [r0, #0x30]
	adds r0, r7, #0x0
	mov r2, r9
	bl sub_813A5C8
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814AD94 @ =0x0814A911
	b _0814B020
_0814AD94: .4byte sub_814A910
_0814AD98:
	cmp r2, #0x01
	bne _0814ADB8
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814ADB4 @ =0x0814A98D
	b _0814B020
_0814ADB4: .4byte sub_814A98C
_0814ADB8:
	cmp r2, #0x02
	bne _0814ADCC
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814ADC8 @ =0x0814A619
	b _0814B020
	.byte 0x00, 0x00
_0814ADC8: .4byte sub_814A618
_0814ADCC:
	cmp r2, #0x04
	beq _0814ADD2
	b _0814AF2C
_0814ADD2:
	movs r4, #0xB0
	lsls r4, r4, #0x03
	mov r9, r4
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r4, r10
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	mov r3, r9
	bl sub_813A284
	ldr r1, [r4, #0x00]
	ldr r3, [r1, #0x0C]
	ldr r5, _0814AF00 @ =0x00000242
	adds r0, r1, r5
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldr r0, [r7, #0x0C]
	subs r3, r3, r0
	adds r5, r7, r5
	strh r3, [r5, #0x00]
	ldr r3, [r1, #0x10]
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r0, r1, r4
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldr r0, [r7, #0x10]
	subs r3, r3, r0
	adds r4, r7, r4
	strh r3, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_813B178
	ldr r0, _0814AF04 @ =0x03001038
	mov r8, r0
	ldr r6, _0814AF08 @ =0x0819832C
	ldr r0, _0814AF0C @ =0x08198220
	subs r6, r6, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r6
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r1, #0x20
	bl _call_via_r2
	strh r0, [r5, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x20
	bl _call_via_r2
	strh r0, [r4, #0x00]
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r3, r7, r2
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	movs r4, #0xA0
	lsls r4, r4, #0x06
	adds r0, r0, r4
	str r0, [r3, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	mov r4, r8
	ldr r2, [r4, #0x00]
	adds r2, r2, r6
	ldr r0, [r3, #0x00]
	subs r0, r0, r1
	movs r1, #0x01
	bl _call_via_r2
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	str r0, [r1, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r7, r3
	mov r4, r9
	strh r4, [r0, #0x00]
	adds r2, #0x7E
	adds r0, r7, r2
	strh r4, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r1, r1, #0x01
	add r1, r9
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	asrs r0, r1, #0x01
	ldr r4, _0814AF10 @ =0xFFE1C000
	adds r0, r0, r4
	bl _call_via_r2
	movs r6, #0x92
	lsls r6, r6, #0x02
	adds r1, r7, r6
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0814AED0
	movs r0, #0x01
	str r0, [r1, #0x00]
_0814AED0:
	ldr r0, _0814AF14 @ =0x0000020F
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r10
	adds r1, r7, #0x0
	movs r2, #0x04
	bl sub_814B038
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r0, #0x13
	bls _0814AF1C
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814AF18 @ =0x0814A6C5
	b _0814B020
_0814AF00: .4byte 0x00000242
_0814AF04: .4byte 0x03001038
_0814AF08: .4byte 0x0819832C
_0814AF0C: .4byte 0x08198220
_0814AF10: .4byte 0xFFE1C000
_0814AF14: .4byte 0x0000020F
_0814AF18: .4byte sub_814A6C4
_0814AF1C:
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814AF28 @ =0x0814B531
	b _0814B020
	.byte 0x00, 0x00
_0814AF28: .4byte sub_814B530
_0814AF2C:
	cmp r2, #0x07
	bne _0814AF4C
	movs r4, #0x84
	lsls r4, r4, #0x02
	adds r2, r7, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x01
	adds r1, r7, r6
	ldr r0, _0814AF48 @ =0x0814A815
	b _0814B020
_0814AF48: .4byte sub_814A814
_0814AF4C:
	cmp r2, #0x09
	bne _0814AF90
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r2, [r0, #0x00]
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814AF8C @ =0x0814B5D1
	b _0814B020
_0814AF8C: .4byte sub_814B5D0
_0814AF90:
	cmp r2, #0x0A
	bne _0814AFCC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x28]
	movs r4, #0xE9
	lsls r4, r4, #0x01
	adds r1, r7, r4
	strh r0, [r1, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x01
	adds r1, r7, r6
	ldr r0, _0814AFC4 @ =0x0813B1E9
	str r0, [r1, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814AFC8 @ =0x0814A911
	b _0814B020
	.byte 0x00, 0x00
_0814AFC4: .4byte sub_813B1E8
_0814AFC8: .4byte sub_814A910
_0814AFCC:
	cmp r2, #0x0B
	bne _0814AFE0
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814AFDC @ =0x0814B531
	b _0814B020
	.byte 0x00, 0x00
_0814AFDC: .4byte sub_814B530
_0814AFE0:
	cmp r2, #0x0C
	bne _0814B004
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0xD0
	lsls r4, r4, #0x01
	adds r1, r7, r4
	ldr r0, _0814B000 @ =0x0814AADD
	b _0814B020
	.byte 0x00, 0x00
_0814B000: .4byte sub_814AADC
_0814B004:
	cmp r0, #0x0D
	bne _0814B022
	movs r6, #0x84
	lsls r6, r6, #0x02
	adds r2, r7, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814B034 @ =0x0814ABB1
_0814B020:
	str r0, [r1, #0x00]
_0814B022:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B034: .4byte sub_814ABB0
	thumb_func_start sub_814B038
sub_814B038:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r4, r5, #0x0
	adds r4, #0x58
	cmp r2, #0x00
	bne _0814B092
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r5, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0814B436
_0814B092:
	cmp r2, #0x01
	bne _0814B0F4
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x20
	movs r1, #0x30
	strb r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r2, [r0, #0x00]
	ldr r1, [r2, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r3, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r3, #0x0
	orrs r0, r1
	cmp r0, #0x00
	bne _0814B0E2
	b _0814B352
_0814B0E2:
	adds r0, r3, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	b _0814B348
_0814B0F4:
	cmp r2, #0x02
	bne _0814B136
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	adds r0, #0x20
	movs r3, #0x00
	movs r1, #0x31
	strb r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x03
	movs r2, #0x00
	b _0814B3D8
_0814B136:
	cmp r2, #0x03
	bne _0814B19C
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	cmp r1, r0
	blt _0814B180
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	b _0814B18A
_0814B180:
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_0814B18A:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x04
	movs r2, #0x00
	b _0814B3D6
_0814B19C:
	cmp r2, #0x04
	bne _0814B20A
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	movs r3, #0xB3
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	cmp r1, r0
	blt _0814B1F2
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	b _0814B1FC
_0814B1F2:
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_0814B1FC:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	b _0814B436
_0814B20A:
	cmp r2, #0x05
	bne _0814B210
	b _0814B436
_0814B210:
	cmp r2, #0x06
	bne _0814B246
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x07
	movs r2, #0x00
	b _0814B3D6
_0814B246:
	cmp r2, #0x07
	bne _0814B280
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x08
	movs r2, #0x00
	b _0814B3D6
_0814B280:
	cmp r2, #0x08
	bne _0814B2BA
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x09
	movs r2, #0x00
	b _0814B3D6
_0814B2BA:
	cmp r2, #0x09
	bne _0814B35E
	movs r3, #0xEE
	lsls r3, r3, #0x01
	adds r0, r5, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814B2EE
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814B2F0
_0814B2EE:
	movs r0, #0xFF
_0814B2F0:
	strb r0, [r5, #0x02]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xC2
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	movs r3, #0xC4
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814B352
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
_0814B348:
	asrs r0, r0, #0x0D
	movs r1, #0x07
	ands r0, r1
	asrs r1, r0, #0x01
	b _0814B354
_0814B352:
	movs r1, #0x00
_0814B354:
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	b _0814B436
_0814B35E:
	cmp r2, #0x0A
	bne _0814B3E4
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
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
	ldr r1, _0814B3BC @ =0x00000242
	adds r3, r5, r1
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0814B3C0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _0814B3C4
	.byte 0x00, 0x00
_0814B3BC: .4byte 0x00000242
_0814B3C0:
	movs r3, #0x01
	negs r3, r3
_0814B3C4:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r3, #0x0
_0814B3D6:
	movs r3, #0x00
_0814B3D8:
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	b _0814B436
_0814B3E4:
	cmp r2, #0x0B
	beq _0814B436
	cmp r2, #0x0C
	beq _0814B436
	cmp r2, #0x0D
	bne _0814B436
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	adds r0, #0x20
	movs r3, #0x00
	movs r1, #0x11
	strb r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
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
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
_0814B436:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B440
sub_814B440:
	push {lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0x0
	cmp r2, #0x00
	bne _0814B456
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x50
	b _0814B4C0
_0814B456:
	cmp r2, #0x01
	bne _0814B464
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x41
	b _0814B4C0
_0814B464:
	cmp r2, #0x02
	bne _0814B472
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x01
	b _0814B4C0
_0814B472:
	cmp r2, #0x03
	beq _0814B4C2
	cmp r2, #0x04
	bne _0814B48A
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0814B4C2
_0814B48A:
	cmp r2, #0x05
	beq _0814B4C2
	cmp r2, #0x06
	beq _0814B4C2
	cmp r2, #0x07
	bne _0814B4A0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x01
	b _0814B4C0
_0814B4A0:
	cmp r0, #0x08
	beq _0814B4C2
	cmp r0, #0x09
	beq _0814B4C2
	cmp r0, #0x0A
	beq _0814B4C2
	cmp r0, #0x0B
	beq _0814B4C2
	cmp r0, #0x0C
	beq _0814B4C2
	cmp r0, #0x0D
	bne _0814B4C2
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x00
_0814B4C0:
	strh r0, [r1, #0x00]
_0814B4C2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B4C8
sub_814B4C8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	adds r2, r5, #0x0
	bl sub_814B440
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_814AD24
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_814B038
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B4F4
sub_814B4F4:
	push {r4, r5, lr}
	add sp, #-0x014
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	add r0, sp, #0x004
	movs r2, #0x24
	movs r3, #0x0A
	bl sub_8139CAC
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	movs r0, #0x30
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x30
	bl sub_80FBB50
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _0814B526
	movs r1, #0x01
_0814B526:
	adds r0, r1, #0x0
	add sp, #0x014
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_814B530
sub_814B530:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0x0
	ldr r6, _0814B5C4 @ =0x03001038
	ldr r1, _0814B5C8 @ =0x0819832C
	ldr r0, _0814B5CC @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _0814B58A
	adds r0, r4, #0x0
	muls r0, r4
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r4
	bl _call_via_r2
	ldr r1, [r5, #0x18]
	adds r1, r1, r0
	str r1, [r5, #0x18]
_0814B58A:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814B5B8
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _0814B5B8
	movs r0, #0x00
	str r0, [r5, #0x18]
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
_0814B5B8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B5C4: .4byte 0x03001038
_0814B5C8: .4byte 0x0819832C
_0814B5CC: .4byte 0x08198220
	thumb_func_start sub_814B5D0
sub_814B5D0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814B5EC
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_814B4C8
_0814B5EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x1D, 0x48, 0x2A, 0x18, 0x10, 0x78, 0x10, 0x21
	.byte 0x08, 0x43, 0x10, 0x70, 0x28, 0x1C, 0xEE, 0xF7, 0x4A, 0xFA, 0x19, 0x48, 0x2A, 0x18, 0x11, 0x78
	.byte 0x05, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x70, 0xEE, 0x22, 0x52, 0x00, 0xA9, 0x18, 0xE8, 0x68
	.byte 0x08, 0x60, 0xF0, 0x20, 0x40, 0x00, 0x29, 0x18, 0x28, 0x69, 0x08, 0x60, 0x08, 0x32, 0xA9, 0x18
	.byte 0x68, 0x69, 0x08, 0x60, 0xF4, 0x20, 0x40, 0x00, 0x29, 0x18, 0xA8, 0x69, 0x08, 0x60, 0x20, 0x1C
	.byte 0x29, 0x1C, 0x00, 0x22, 0xFF, 0xF7, 0x3F, 0xFF, 0xCC, 0x22, 0x52, 0x00, 0xA9, 0x18, 0x09, 0x48
	.byte 0x08, 0x60, 0x4E, 0xF0, 0x6C, 0xFC, 0x01, 0x1C, 0x04, 0x20, 0x92, 0xF0, 0x8E, 0xF8, 0xE8, 0x22
	.byte 0x52, 0x00, 0xA9, 0x18, 0x08, 0x80, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x3E, 0x03
	.byte 0x00, 0x00, 0x0D, 0x02, 0x00, 0x00, 0x81, 0xB3, 0x13, 0x08
	thumb_func_start sub_814B67C
sub_814B67C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r1
	adds r0, #0x50
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _0814B6C4 @ =0x0000020E
	adds r4, r4, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _0814B6C8 @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x0C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B6C4: .4byte 0x0000020E
_0814B6C8: .4byte sub_813B1E8
	thumb_func_start sub_814B6CC
sub_814B6CC:
	push {r4, r5, lr}
	mov r12, r1
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r4, [r0, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	movs r0, #0xF2
	lsls r0, r0, #0x01
	add r0, r12
	movs r1, #0xF4
	lsls r1, r1, #0x01
	add r1, r12
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	adds r0, #0x44
	ldrh r1, [r0, #0x00]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	add r1, r12
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _0814B72C @ =0x0814A429
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814B72C: .4byte sub_814A428
	thumb_func_start sub_814B730
sub_814B730:
	push {r4, r5, lr}
	mov r12, r1
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r4, [r0, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	mov r1, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	ldr r5, _0814B798 @ =0xFFFFD000
	adds r0, r0, r5
	str r0, [r3, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	adds r0, #0x44
	ldrh r1, [r0, #0x00]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0814B79C @ =0x0814B7A5
	str r0, [r2, #0x00]
	ldr r0, _0814B7A0 @ =0x0814A185
	str r0, [r2, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814B798: .4byte 0xFFFFD000
_0814B79C: .4byte sub_814B7A4
_0814B7A0: .4byte sub_814A184
	thumb_func_start sub_814B7A4
sub_814B7A4:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814B7CC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814B7CC:
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r3, #0x18]
	subs r2, r0, r1
	str r2, [r3, #0x18]
	ldr r0, [r3, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	bne _0814B7F8
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _0814B7FC
_0814B7F8:
	ldr r0, [r4, #0x04]
	str r0, [r4, #0x00]
_0814B7FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B804
sub_814B804:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814B82E
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814B82E:
	adds r0, r3, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814B83E
	ldr r0, _0814B844 @ =0x0814A0A5
	str r0, [r4, #0x00]
_0814B83E:
	pop {r4}
	pop {r0}
	bx r0
_0814B844: .4byte sub_814A0A4
