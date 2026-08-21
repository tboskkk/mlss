	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8143E90
sub_8143E90:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	str r2, [sp, #0x00C]
	movs r0, #0x58
	adds r0, r0, r6
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r5, #0xD1
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143ED0
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _08143EDC
_08143ED0:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08143EDC:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	ldr r1, [r2, #0x0C]
	ldr r3, [r6, #0x0C]
	subs r0, r1, r3
	adds r1, r1, r0
	mov r12, r1
	ldr r1, [r2, #0x10]
	ldr r2, [r6, #0x10]
	subs r0, r1, r2
	adds r7, r1, r0
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r0, r4, r5
	ldr r1, [r0, #0x00]
	movs r5, #0x04
	ldsh r0, [r1, r5]
	adds r5, r3, #0x0
	cmp r0, #0x55
	bne _08143F1A
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	movs r1, #0xD8
	lsls r1, r1, #0x06
	b _08143F20
_08143F1A:
	ldr r0, [r1, #0x14]
	movs r1, #0xC0
	lsls r1, r1, #0x05
_08143F20:
	adds r3, r0, r1
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x2E]
	mov r1, r12
	subs r5, r1, r5
	subs r4, r7, r2
	str r0, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x00
	strb r0, [r1, #0x00]
	mov r0, r8
	mov r1, r12
	adds r2, r7, #0x0
	bl sub_813A44C
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _08143F50
	negs r1, r5
_08143F50:
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08143F58
	negs r0, r4
_08143F58:
	cmp r1, r0
	ble _08143F7E
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x04
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
	b _08143F9E
_08143F7E:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldr r0, [r2, #0x00]
	movs r1, #0x03
	cmp r4, #0x00
	blt _08143F8E
	movs r1, #0x05
_08143F8E:
	adds r0, #0x21
	strb r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
_08143F9E:
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r5, r6, r4
	ldr r0, [r5, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r2, #0x01
	movs r3, #0x00
	bl sub_801E150
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	add r4, r8
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r0, #0x03
	adds r1, #0x21
	strb r0, [r1, #0x00]
	ldr r3, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldrb r0, [r0, #0x11]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	mov r0, r8
	bl sub_8047928
	mov r0, r8
	movs r1, #0x01
	bl sub_804776C
	mov r0, r8
	movs r1, #0x01
	bl sub_804761C
	ldr r0, _0814401C @ =0x08144021
	ldr r1, [sp, #0x00C]
	str r0, [r1, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814401C: .4byte sub_8144020
	thumb_func_start sub_8144020
sub_8144020:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r9, r0
	mov r8, r1
	str r2, [sp, #0x000]
	mov r0, r8
	adds r0, #0x58
	str r0, [sp, #0x004]
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r8
	ldr r7, [r0, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814406C
	movs r2, #0x85
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814406C:
	ldr r1, _08144154 @ =0x00000242
	adds r0, r7, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r7, #0x0C]
	adds r0, r0, r1
	str r0, [r7, #0x0C]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r7, r3
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r3, #0x98
	adds r2, r7, r3
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	movs r0, #0x92
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x00C]
	ldr r1, _08144158 @ =0x00000117
	add r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0814417C
	movs r0, #0x8B
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r0, [r0, #0x00]
	mov r12, r0
	ldrb r0, [r1, #0x00]
	add r0, r12
	cmp r12, r0
	bge _0814417C
	ldr r2, _0814415C @ =0x00000272
	mov r10, r2
	subs r3, #0x68
	adds r3, r7, r3
	str r3, [sp, #0x014]
	mov r0, r12
	str r0, [sp, #0x010]
_081440D4:
	mov r1, r12
	lsls r0, r1, #0x02
	add r0, r9
	ldr r4, [r0, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08144164
	mov r3, r10
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	lsrs r6, r0, #0x01
	ldr r5, [r7, #0x0C]
	adds r1, r5, r6
	adds r0, r4, r3
	ldrh r0, [r0, #0x00]
	lsrs r3, r0, #0x01
	ldr r2, [r4, #0x0C]
	subs r0, r2, r3
	cmp r1, r0
	blt _08144164
	subs r1, r5, r6
	adds r0, r2, r3
	cmp r1, r0
	bgt _08144164
	ldr r1, _08144160 @ =0x00000276
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	ldr r2, [r4, #0x10]
	subs r0, r2, r0
	ldr r1, [r7, #0x10]
	cmp r1, r0
	blt _08144164
	ldr r3, _08144160 @ =0x00000276
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	subs r0, r1, r0
	cmp r0, r2
	bgt _08144164
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r1, r0
	ldr r0, [sp, #0x014]
	ldrh r1, [r0, #0x00]
	adds r1, r3, r1
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r2, r2, r0
	cmp r1, r2
	blt _08144164
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	adds r0, r2, r0
	cmp r3, r0
	bgt _08144164
	movs r2, #0x01
	str r2, [sp, #0x00C]
	b _0814417C
_08144154: .4byte 0x00000242
_08144158: .4byte 0x00000117
_0814415C: .4byte 0x00000272
_08144160: .4byte 0x00000276
_08144164:
	mov r0, r12
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r12, r0
	ldr r0, _0814421C @ =0x00000117
	add r0, r9
	ldrb r0, [r0, #0x00]
	ldr r3, [sp, #0x010]
	adds r0, r3, r0
	cmp r12, r0
	blt _081440D4
_0814417C:
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r1, _08144220 @ =0x02000001
	ands r0, r1
	cmp r0, #0x00
	beq _081441C8
	ldr r0, [r7, #0x24]
	movs r1, #0xFC
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	bne _081441C8
	ldr r2, _08144224 @ =0x00000216
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _081441C8
	adds r0, r7, #0x0
	adds r0, #0x25
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _081441C8
	adds r0, r7, #0x0
	adds r0, #0x4C
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	bne _081441C8
	ldr r3, [sp, #0x00C]
	cmp r3, #0x00
	beq _0814420A
_081441C8:
	ldr r2, _08144228 @ =0x0000020D
	add r2, r8
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804776C
	ldr r1, [sp, #0x004]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	ldr r3, [sp, #0x008]
	adds r0, r0, r3
	adds r0, #0x3E
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	ldr r0, _0814422C @ =0x0813B1E9
	ldr r3, [sp, #0x000]
	str r0, [r3, #0x00]
	ldr r0, _08144230 @ =0x0813B361
	str r0, [r3, #0x0C]
	ldr r0, _08144234 @ =0x0814396D
	str r0, [r3, #0x04]
_0814420A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814421C: .4byte 0x00000117
_08144220: .4byte 0x02000001
_08144224: .4byte 0x00000216
_08144228: .4byte 0x0000020D
_0814422C: .4byte sub_813B1E8
_08144230: .4byte sub_813B360
_08144234: .4byte sub_814396C
