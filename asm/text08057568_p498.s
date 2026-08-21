	.include "asm/macros.inc"

	.syntax unified
	.text

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
