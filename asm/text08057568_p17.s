	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8121F1C
sub_8121F1C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	mov r9, r4
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r6, #0x28
	str r6, [sp, #0x000]
	movs r0, #0x04
	str r0, [sp, #0x004]
	movs r5, #0x01
	negs r5, r5
	str r5, [sp, #0x008]
	movs r0, #0x07
	str r0, [sp, #0x00C]
	movs r0, #0x10
	adds r1, r3, #0x0
	adds r2, r7, #0x0
	movs r3, #0x88
	bl sub_8121B5C
	adds r7, r0, #0x0
	cmp r4, #0x63
	bls _08121F6E
	str r6, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x02
	movs r1, #0x63
	b _08121F9A
_08121F6E:
	cmp r4, #0x09
	bhi _08121F8A
	str r6, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x02
	movs r1, #0x00
	adds r2, r7, #0x0
	movs r3, #0xBA
	bl sub_8121B5C
	adds r7, r0, #0x0
_08121F8A:
	str r6, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x06
	str r0, [sp, #0x00C]
	movs r0, #0x12
	mov r1, r9
_08121F9A:
	adds r2, r7, #0x0
	movs r3, #0xBA
	bl sub_8121B5C
	adds r7, r0, #0x0
	mov r0, r8
	cmp r0, #0x3B
	bls _08121FBE
	movs r0, #0x28
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	subs r0, #0x02
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x02
	movs r1, #0x3B
	b _08121FF4
_08121FBE:
	mov r1, r8
	cmp r1, #0x09
	bhi _08121FE0
	movs r0, #0x28
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	subs r0, #0x02
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x02
	movs r1, #0x00
	adds r2, r7, #0x0
	movs r3, #0xC8
	bl sub_8121B5C
	adds r7, r0, #0x0
_08121FE0:
	movs r0, #0x28
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	subs r0, #0x03
	str r0, [sp, #0x008]
	movs r0, #0x06
	str r0, [sp, #0x00C]
	movs r0, #0x12
	mov r1, r8
_08121FF4:
	adds r2, r7, #0x0
	movs r3, #0xC8
	bl sub_8121B5C
	adds r7, r0, #0x0
	movs r0, #0xC5
	mov r9, r0
	movs r4, #0x28
	movs r5, #0x02
	movs r1, #0x4A
	mov r8, r1
	movs r6, #0x01
	ldr r0, _08122090 @ =0x08202F58
	mov r10, r0
	add r0, sp, #0x010
	mov r1, r10
	movs r2, #0x0C
	bl memcpy
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r4, r1
	strh r4, [r7, #0x00]
	mov r0, r9
	strh r0, [r7, #0x02]
	lsls r1, r6, #0x0C
	lsls r5, r5, #0x0A
	orrs r1, r5
	mov r9, r1
	mov r0, r8
	orrs r0, r1
	strh r0, [r7, #0x04]
	adds r7, #0x08
	movs r1, #0x20
	mov r8, r1
	movs r4, #0xAC
	add r0, sp, #0x010
	mov r1, r10
	movs r2, #0x0C
	bl memcpy
	lsls r6, r6, #0x0E
	mov r0, r8
	orrs r6, r0
	strh r6, [r7, #0x00]
	ldr r0, _08122094 @ =0x0000C07C
	strh r0, [r7, #0x02]
	mov r1, r9
	orrs r4, r1
	strh r4, [r7, #0x04]
	adds r7, #0x08
	movs r4, #0xBC
	movs r5, #0xCC
	add r0, sp, #0x010
	mov r1, r10
	movs r2, #0x0C
	bl memcpy
	mov r0, r8
	strh r0, [r7, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r4, r1
	strh r4, [r7, #0x02]
	mov r0, r9
	orrs r5, r0
	strh r5, [r7, #0x04]
	adds r7, #0x08
	adds r0, r7, #0x0
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08122090: .4byte 0x08202F58
_08122094: .4byte 0x0000C07C
	thumb_func_start sub_8122098
sub_8122098:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r4, r2, #0x0
	mov r3, sp
	movs r0, #0xC0
	cmp r1, #0x00
	beq _081220BA
	movs r0, #0xD4
_081220BA:
	strh r0, [r3, #0x00]
	movs r0, #0xC0
	cmp r2, #0x00
	beq _081220C4
	movs r0, #0xD4
_081220C4:
	strh r0, [r3, #0x02]
	movs r2, #0x02
	cmp r1, #0x00
	beq _081220CE
	movs r2, #0x03
_081220CE:
	mov r0, sp
	strb r2, [r0, #0x04]
	movs r0, #0x02
	cmp r4, #0x00
	beq _081220DA
	movs r0, #0x03
_081220DA:
	mov r1, sp
	strb r0, [r1, #0x05]
	movs r0, #0x00
	mov r8, r0
	movs r1, #0xC0
	lsls r1, r1, #0x04
	mov r10, r1
	mov r3, sp
	mov r9, r0
_081220EC:
	movs r6, #0xAC
	mov r0, r9
	subs r6, r6, r0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	ldrh r4, [r3, #0x00]
	adds r4, #0x20
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sp
	add r0, r8
	adds r0, #0x04
	ldrb r5, [r0, #0x00]
	add r0, sp, #0x008
	ldr r1, _0812218C @ =0x08202F58
	movs r2, #0x0C
	str r3, [sp, #0x014]
	bl memcpy
	ldr r1, _08122190 @ =0x000001FF
	adds r0, r1, #0x0
	ands r6, r0
	movs r0, #0x44
	strh r0, [r7, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	strh r0, [r7, #0x02]
	lsls r5, r5, #0x0C
	mov r0, r10
	orrs r5, r0
	orrs r4, r5
	strh r4, [r7, #0x04]
	adds r7, #0x08
	ldr r3, [sp, #0x014]
	ldrh r4, [r3, #0x00]
	adds r4, #0x30
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #0x004
	add r0, r8
	ldrb r5, [r0, #0x00]
	add r0, sp, #0x008
	ldr r1, _0812218C @ =0x08202F58
	movs r2, #0x0C
	bl memcpy
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _08122194 @ =0x00004064
	strh r0, [r7, #0x00]
	orrs r6, r1
	strh r6, [r7, #0x02]
	lsls r5, r5, #0x0C
	mov r1, r10
	orrs r5, r1
	orrs r4, r5
	strh r4, [r7, #0x04]
	adds r0, r7, #0x0
	adds r0, #0x08
	adds r7, r0, #0x0
	ldr r3, [sp, #0x014]
	adds r3, #0x02
	movs r1, #0x28
	add r9, r1
	movs r1, #0x01
	add r8, r1
	mov r1, r8
	cmp r1, #0x01
	ble _081220EC
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0812218C: .4byte 0x08202F58
_08122190: .4byte 0x000001FF
_08122194: .4byte 0x00004064
	thumb_func_start sub_8122198
sub_8122198:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r5, r0, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r9, r3
	add r0, sp, #0x010
	strb r1, [r0, #0x00]
	strb r2, [r0, #0x01]
	movs r6, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x07
	mov r8, r0
	movs r1, #0x98
	mov r10, r1
	movs r7, #0x00
_081221C4:
	movs r4, #0xA0
	subs r4, r4, r7
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add r0, sp, #0x014
	ldr r1, _08122240 @ =0x08202F58
	movs r2, #0x0C
	bl memcpy
	ldr r1, _08122244 @ =0x000001FF
	adds r0, r1, #0x0
	ands r4, r0
	movs r0, #0x60
	movs r1, #0x80
	lsls r1, r1, #0x07
	orrs r0, r1
	strh r0, [r5, #0x00]
	mov r0, r8
	orrs r4, r0
	strh r4, [r5, #0x02]
	mov r1, r10
	strh r1, [r5, #0x04]
	adds r5, #0x08
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x10
	ldrb r1, [r0, #0x00]
	movs r3, #0xB9
	subs r3, r3, r7
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x59
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	subs r0, #0x03
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x10
	adds r2, r5, #0x0
	bl sub_8121B5C
	adds r5, r0, #0x0
	adds r7, #0x28
	adds r6, #0x01
	cmp r6, #0x01
	bgt _0812222C
	cmp r6, #0x00
	beq _081221C4
	mov r0, r9
	cmp r0, #0x00
	beq _081221C4
_0812222C:
	adds r0, r5, #0x0
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08122240: .4byte 0x08202F58
_08122244: .4byte 0x000001FF
	thumb_func_start sub_8122248
sub_8122248:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0x0
	subs r0, #0x64
	movs r1, #0x02
	ands r0, r1
	asrs r0, r0, #0x01
	movs r1, #0x68
	adds r5, r0, #0x0
	muls r5, r1
	cmp r2, #0x65
	beq _081222B0
	cmp r2, #0x65
	bgt _08122278
	cmp r2, #0x64
	beq _08122282
	b _081222EE
_08122278:
	cmp r2, #0x66
	beq _081222C4
	cmp r2, #0x67
	beq _0812229C
	b _081222EE
_08122282:
	ldr r0, _08122298 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x12]
	adds r3, r5, #0x0
	adds r3, #0x48
	str r2, [sp, #0x000]
	b _081222DA
_08122298: .4byte 0x03000FF4
_0812229C:
	ldr r0, _081222AC @ =0x03000FF4
	ldr r1, [r0, #0x00]
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x24]
	b _081222D2
_081222AC: .4byte 0x03000FF4
_081222B0:
	ldr r0, _081222C0 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x18]
	b _081222D2
_081222C0: .4byte 0x03000FF4
_081222C4:
	ldr r0, _08122328 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x1C]
_081222D2:
	adds r3, r5, #0x0
	adds r3, #0x48
	movs r0, #0x64
	str r0, [sp, #0x000]
_081222DA:
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x08
	adds r2, r7, #0x0
	bl sub_8121B5C
	adds r7, r0, #0x0
_081222EE:
	adds r5, #0x40
	mov r8, r5
	movs r5, #0x64
	movs r4, #0x02
	movs r6, #0x6C
	ldr r1, _0812232C @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	orrs r5, r0
	strh r5, [r7, #0x00]
	mov r0, r8
	strh r0, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r6, r0
	strh r6, [r7, #0x04]
	adds r7, #0x08
	adds r0, r7, #0x0
	add sp, #0x01C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08122328: .4byte 0x03000FF4
_0812232C: .4byte 0x08202F58
	thumb_func_start sub_8122330
sub_8122330:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	ldr r0, [sp, #0x048]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x01C]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x020]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _081223A4 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xF2
	ldr r1, [sp, #0x020]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08122384
	movs r0, #0x01
	mov r1, r8
	eors r1, r0
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r2, r0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	ldr r2, [sp, #0x020]
	cmp r0, r2
	bne _08122384
	cmp r3, #0x00
	beq _081223A0
_08122384:
	ldr r1, _081223A8 @ =0x083BE67C
	ldr r3, [sp, #0x020]
	lsls r2, r3, #0x02
	adds r0, r2, r3
	lsls r0, r0, #0x02
	adds r3, r0, r1
	ldrb r0, [r3, #0x11]
	mov r4, r8
	asrs r0, r4
	movs r1, #0x01
	ands r0, r1
	str r2, [sp, #0x024]
	cmp r0, #0x00
	bne _081223AC
_081223A0:
	adds r0, r7, #0x0
	b _081225FA
_081223A4: .4byte 0x03000FF4
_081223A8: .4byte 0x083BE67C
_081223AC:
	ldrb r0, [r3, #0x06]
	cmp r0, #0x64
	bne _081223CC
	ldr r0, _081223C8 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r0, r8
	lsls r2, r0, #0x04
	subs r0, r2, r0
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x10]
	ldrh r0, [r3, #0x08]
	adds r4, r1, r0
	b _081223FC
_081223C8: .4byte 0x03000FF4
_081223CC:
	ldrb r0, [r3, #0x0A]
	cmp r0, #0x64
	bne _081223EC
	ldr r0, _081223E8 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r4, r8
	lsls r2, r4, #0x04
	subs r0, r2, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x10]
	ldrh r0, [r3, #0x0C]
	adds r4, r1, r0
	b _081223FC
_081223E8: .4byte 0x03000FF4
_081223EC:
	ldr r0, _08122464 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r0, r8
	lsls r2, r0, #0x04
	subs r0, r2, r0
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r4, [r1, #0x10]
_081223FC:
	mov r9, r2
	ldr r0, _08122468 @ =0x000003E7
	cmp r4, r0
	ble _08122406
	adds r4, r0, #0x0
_08122406:
	cmp r4, #0x00
	beq _081224B8
	movs r1, #0x64
	mov r10, r1
	str r1, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x08
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	movs r3, #0x48
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r0, _08122464 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r2, r9
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r0, [r1, #0x12]
	cmp r0, r4
	bge _08122470
	movs r6, #0x40
	movs r4, #0x02
	movs r5, #0x6C
	ldr r1, _0812246C @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r1, r10
	orrs r0, r1
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _081224B6
	.byte 0x00, 0x00
_08122464: .4byte 0x03000FF4
_08122468: .4byte 0x000003E7
_0812246C: .4byte 0x08202F58
_08122470:
	cmp r0, r4
	ble _081224A0
	movs r6, #0x40
	movs r4, #0x02
	movs r5, #0x6E
	ldr r1, _0812249C @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r2, r10
	orrs r0, r2
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _081224B6
	.byte 0x00, 0x00
_0812249C: .4byte 0x08202F58
_081224A0:
	movs r5, #0x40
	movs r4, #0x6C
	ldr r1, _081224E0 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	strh r4, [r7, #0x00]
	strh r5, [r7, #0x02]
	ldr r0, _081224E4 @ =0x0000084D
	strh r0, [r7, #0x04]
_081224B6:
	adds r7, #0x08
_081224B8:
	ldr r0, _081224E8 @ =0x083BE67C
	ldr r3, [sp, #0x024]
	ldr r4, [sp, #0x020]
	adds r1, r3, r4
	lsls r1, r1, #0x02
	adds r2, r1, r0
	ldrb r0, [r2, #0x06]
	cmp r0, #0x67
	bne _081224F0
	ldr r0, _081224EC @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r3, r9
	mov r4, r8
	subs r0, r3, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x22]
	ldrh r0, [r2, #0x08]
	adds r4, r1, r0
	b _08122520
_081224E0: .4byte 0x08202F58
_081224E4: .4byte 0x0000084D
_081224E8: .4byte 0x083BE67C
_081224EC: .4byte 0x03000FF4
_081224F0:
	ldrb r0, [r2, #0x0A]
	cmp r0, #0x67
	bne _08122510
	ldr r0, _0812250C @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r3, r9
	mov r4, r8
	subs r0, r3, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x22]
	ldrh r0, [r2, #0x0C]
	adds r4, r1, r0
	b _08122520
_0812250C: .4byte 0x03000FF4
_08122510:
	ldr r0, _08122584 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r2, r9
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r4, [r1, #0x22]
_08122520:
	ldr r0, _08122588 @ =0x000003E7
	cmp r4, r0
	ble _08122528
	adds r4, r0, #0x0
_08122528:
	cmp r4, #0x00
	beq _081225D8
	movs r0, #0x64
	mov r10, r0
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x08
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	movs r3, #0xB0
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r0, _08122584 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r2, r9
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r0, [r1, #0x24]
	cmp r0, r4
	bge _08122590
	movs r6, #0xA8
	movs r4, #0x02
	movs r5, #0x6C
	ldr r1, _0812258C @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r1, r10
	orrs r0, r1
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _081225D6
_08122584: .4byte 0x03000FF4
_08122588: .4byte 0x000003E7
_0812258C: .4byte 0x08202F58
_08122590:
	cmp r0, r4
	ble _081225C0
	movs r6, #0xA8
	movs r4, #0x02
	movs r5, #0x6E
	ldr r1, _081225BC @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r2, r10
	orrs r0, r2
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _081225D6
	.byte 0x00, 0x00
_081225BC: .4byte 0x08202F58
_081225C0:
	movs r5, #0xA8
	movs r4, #0x6C
	ldr r1, _0812260C @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	strh r4, [r7, #0x00]
	strh r5, [r7, #0x02]
	ldr r0, _08122610 @ =0x0000084D
	strh r0, [r7, #0x04]
_081225D6:
	adds r7, #0x08
_081225D8:
	ldr r2, _08122614 @ =0x083BE67C
	ldr r3, [sp, #0x01C]
	lsls r0, r3, #0x02
	adds r0, r0, r3
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x0A]
	ldr r4, [sp, #0x024]
	ldr r3, [sp, #0x020]
	adds r0, r4, r3
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r2, [r0, #0x0A]
	adds r0, r7, #0x0
	bl sub_812290C
	adds r7, r0, #0x0
_081225FA:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0812260C: .4byte 0x08202F58
_08122610: .4byte 0x0000084D
_08122614: .4byte 0x083BE67C
	thumb_func_start sub_8122618
sub_8122618:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	ldr r0, [sp, #0x048]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x01C]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x020]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _08122698 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xBA
	ldr r1, [sp, #0x020]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0812266E
	movs r0, #0x01
	mov r1, r8
	eors r1, r0
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r2, r0
	adds r0, #0x31
	ldrb r0, [r0, #0x00]
	ldr r2, [sp, #0x020]
	cmp r0, r2
	bne _0812266E
	cmp r3, #0x00
	bne _0812266E
	b _081228F6
_0812266E:
	ldr r2, _0812269C @ =0x083BD844
	ldr r3, [sp, #0x020]
	lsls r1, r3, #0x02
	adds r0, r1, r3
	lsls r0, r0, #0x02
	adds r3, r0, r2
	ldrb r0, [r3, #0x06]
	str r1, [sp, #0x024]
	cmp r0, #0x65
	bne _081226A0
	ldr r0, _08122698 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r4, r8
	lsls r2, r4, #0x04
	subs r0, r2, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x16]
	ldrh r0, [r3, #0x08]
	adds r4, r1, r0
	b _081226D0
_08122698: .4byte 0x03000FF4
_0812269C: .4byte 0x083BD844
_081226A0:
	ldrb r0, [r3, #0x0A]
	cmp r0, #0x65
	bne _081226C0
	ldr r0, _081226BC @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r0, r8
	lsls r2, r0, #0x04
	subs r0, r2, r0
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x16]
	ldrh r0, [r3, #0x0C]
	adds r4, r1, r0
	b _081226D0
_081226BC: .4byte 0x03000FF4
_081226C0:
	ldr r0, _08122738 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r3, r8
	lsls r2, r3, #0x04
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r4, [r1, #0x16]
_081226D0:
	mov r9, r2
	ldr r0, _0812273C @ =0x000003E7
	cmp r4, r0
	ble _081226DA
	adds r4, r0, #0x0
_081226DA:
	cmp r4, #0x00
	beq _0812278C
	movs r0, #0x64
	mov r10, r0
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x08
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	movs r3, #0x48
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r0, _08122738 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r2, r9
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r0, [r1, #0x18]
	cmp r0, r4
	bge _08122744
	movs r6, #0x40
	movs r4, #0x02
	movs r5, #0x6C
	ldr r1, _08122740 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r1, r10
	orrs r0, r1
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _0812278A
	.byte 0x00, 0x00
_08122738: .4byte 0x03000FF4
_0812273C: .4byte 0x000003E7
_08122740: .4byte 0x08202F58
_08122744:
	cmp r0, r4
	ble _08122774
	movs r6, #0x40
	movs r4, #0x02
	movs r5, #0x6E
	ldr r1, _08122770 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r2, r10
	orrs r0, r2
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _0812278A
	.byte 0x00, 0x00
_08122770: .4byte 0x08202F58
_08122774:
	movs r5, #0x40
	movs r4, #0x6C
	ldr r1, _081227B4 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	strh r4, [r7, #0x00]
	strh r5, [r7, #0x02]
	ldr r0, _081227B8 @ =0x0000084D
	strh r0, [r7, #0x04]
_0812278A:
	adds r7, #0x08
_0812278C:
	ldr r0, _081227BC @ =0x083BD844
	ldr r3, [sp, #0x024]
	ldr r4, [sp, #0x020]
	adds r1, r3, r4
	lsls r1, r1, #0x02
	adds r2, r1, r0
	ldrb r0, [r2, #0x06]
	cmp r0, #0x66
	bne _081227C4
	ldr r0, _081227C0 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r3, r9
	mov r4, r8
	subs r0, r3, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x1A]
	ldrh r0, [r2, #0x08]
	adds r4, r1, r0
	b _081227F4
_081227B4: .4byte 0x08202F58
_081227B8: .4byte 0x0000084D
_081227BC: .4byte 0x083BD844
_081227C0: .4byte 0x03000FF4
_081227C4:
	ldrb r0, [r2, #0x0A]
	cmp r0, #0x66
	bne _081227E4
	ldr r0, _081227E0 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r3, r9
	mov r4, r8
	subs r0, r3, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r1, [r1, #0x1A]
	ldrh r0, [r2, #0x0C]
	adds r4, r1, r0
	b _081227F4
_081227E0: .4byte 0x03000FF4
_081227E4:
	ldr r0, _08122858 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r2, r9
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r4, [r1, #0x1A]
_081227F4:
	ldr r0, _0812285C @ =0x000003E7
	cmp r4, r0
	ble _081227FC
	adds r4, r0, #0x0
_081227FC:
	cmp r4, #0x00
	beq _081228AC
	movs r0, #0x64
	mov r10, r0
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x08
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	movs r3, #0xB0
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r0, _08122858 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	mov r2, r9
	mov r3, r8
	subs r0, r2, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r0, [r1, #0x1C]
	cmp r0, r4
	bge _08122864
	movs r6, #0xA8
	movs r4, #0x02
	movs r5, #0x6C
	ldr r1, _08122860 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r1, r10
	orrs r0, r1
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _081228AA
_08122858: .4byte 0x03000FF4
_0812285C: .4byte 0x000003E7
_08122860: .4byte 0x08202F58
_08122864:
	cmp r0, r4
	ble _08122894
	movs r6, #0xA8
	movs r4, #0x02
	movs r5, #0x6E
	ldr r1, _08122890 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	lsls r0, r4, #0x0E
	mov r2, r10
	orrs r0, r2
	strh r0, [r7, #0x00]
	strh r6, [r7, #0x02]
	lsls r0, r4, #0x0C
	lsls r4, r4, #0x0A
	orrs r0, r4
	orrs r5, r0
	strh r5, [r7, #0x04]
	b _081228AA
	.byte 0x00, 0x00
_08122890: .4byte 0x08202F58
_08122894:
	movs r5, #0xA8
	movs r4, #0x6C
	ldr r1, _081228C8 @ =0x08202F58
	add r0, sp, #0x010
	movs r2, #0x0C
	bl memcpy
	strh r4, [r7, #0x00]
	strh r5, [r7, #0x02]
	ldr r0, _081228CC @ =0x0000084D
	strh r0, [r7, #0x04]
_081228AA:
	adds r7, #0x08
_081228AC:
	ldr r3, [sp, #0x01C]
	cmp r3, #0xFF
	bne _081228D4
	ldr r0, _081228D0 @ =0x083BD844
	ldr r4, [sp, #0x024]
	ldr r2, [sp, #0x020]
	adds r1, r4, r2
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldrb r2, [r1, #0x0A]
	adds r0, r7, #0x0
	movs r1, #0xFF
	b _081228F0
	.byte 0x00, 0x00
_081228C8: .4byte 0x08202F58
_081228CC: .4byte 0x0000084D
_081228D0: .4byte 0x083BD844
_081228D4:
	ldr r2, _08122908 @ =0x083BD844
	ldr r3, [sp, #0x01C]
	lsls r0, r3, #0x02
	adds r0, r0, r3
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x0A]
	ldr r4, [sp, #0x024]
	ldr r3, [sp, #0x020]
	adds r0, r4, r3
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r2, [r0, #0x0A]
	adds r0, r7, #0x0
_081228F0:
	bl sub_812290C
	adds r7, r0, #0x0
_081228F6:
	adds r0, r7, #0x0
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08122908: .4byte 0x083BD844
	thumb_func_start sub_812290C
sub_812290C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r9, r2
	cmp r1, #0x63
	bhi _08122986
	cmp r8, r9
	beq _0812294A
	cmp r1, #0xFF
	beq _0812294A
	movs r4, #0x78
	movs r5, #0xA4
	lsls r5, r5, #0x01
	ldr r1, _081229DC @ =0x08202F58
	mov r0, sp
	movs r2, #0x0C
	bl memcpy
	strh r4, [r7, #0x00]
	ldr r0, _081229E0 @ =0x00004020
	strh r0, [r7, #0x02]
	strh r5, [r7, #0x04]
	adds r7, #0x08
_0812294A:
	ldr r0, _081229E4 @ =0x083BF370
	mov r2, r8
	lsls r1, r2, #0x03
	adds r1, r1, r0
	ldrb r0, [r1, #0x04]
	cmp r0, #0x00
	beq _08122986
	adds r4, r0, #0x0
	lsls r4, r4, #0x13
	ldr r0, _081229E8 @ =0xFDA00000
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	movs r6, #0x08
	movs r5, #0x02
	ldr r1, _081229DC @ =0x08202F58
	mov r0, sp
	movs r2, #0x0C
	bl memcpy
	ldr r0, _081229EC @ =0x00004074
	strh r0, [r7, #0x00]
	lsls r0, r5, #0x0E
	orrs r6, r0
	strh r6, [r7, #0x02]
	lsls r0, r5, #0x0C
	lsls r5, r5, #0x0A
	orrs r0, r5
	orrs r4, r0
	strh r4, [r7, #0x04]
	adds r7, #0x08
_08122986:
	mov r2, r9
	cmp r2, #0x63
	bhi _081229CA
	cmp r8, r9
	beq _081229CA
	ldr r0, _081229E4 @ =0x083BF370
	lsls r1, r2, #0x03
	adds r1, r1, r0
	ldrb r0, [r1, #0x04]
	cmp r0, #0x00
	beq _081229CA
	adds r4, r0, #0x0
	lsls r4, r4, #0x13
	ldr r0, _081229E8 @ =0xFDA00000
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	movs r6, #0x70
	movs r5, #0x02
	ldr r1, _081229DC @ =0x08202F58
	mov r0, sp
	movs r2, #0x0C
	bl memcpy
	ldr r0, _081229EC @ =0x00004074
	strh r0, [r7, #0x00]
	lsls r0, r5, #0x0E
	orrs r6, r0
	strh r6, [r7, #0x02]
	lsls r0, r5, #0x0C
	lsls r5, r5, #0x0A
	orrs r0, r5
	orrs r4, r0
	strh r4, [r7, #0x04]
	adds r7, #0x08
_081229CA:
	adds r0, r7, #0x0
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081229DC: .4byte 0x08202F58
_081229E0: .4byte 0x00004020
_081229E4: .4byte 0x083BF370
_081229E8: .4byte 0xFDA00000
_081229EC: .4byte 0x00004074
	thumb_func_start sub_81229F0
sub_81229F0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08122A1C @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r0, #0x07
	movs r1, #0x00
	bl sub_8127ECC
	movs r1, #0x84
	lsls r1, r1, #0x04
	adds r4, r4, r1
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8127E50
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08122A1C: .4byte 0x0300034C
	thumb_func_start sub_8122A20
sub_8122A20:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	ldr r0, [sp, #0x048]
	ldr r4, [sp, #0x04C]
	ldr r5, [sp, #0x050]
	ldr r6, [sp, #0x054]
	mov r12, r6
	ldr r6, [sp, #0x058]
	mov r8, r6
	ldr r6, [sp, #0x05C]
	mov r9, r6
	ldr r6, [sp, #0x060]
	mov r10, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x00C]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x010]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x014]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x018]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x01C]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x020]
	mov r0, r12
	lsls r6, r0, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp, #0x024]
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	mov r2, r9
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	mov r5, r10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _08122AF8 @ =0x08202F58
	mov r0, sp
	movs r2, #0x0C
	bl memcpy
	ldr r1, [sp, #0x010]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x00
	bge _08122AA6
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x02
	adds r0, r4, r0
	add r0, sp
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	blt _08122AE6
_08122AA6:
	movs r3, #0xFF
	ldr r0, [sp, #0x010]
	ands r3, r0
	ldr r1, [sp, #0x00C]
	lsls r4, r1, #0x17
	lsrs r4, r4, #0x17
	lsls r1, r5, #0x04
	lsls r0, r6, #0x03
	orrs r1, r0
	lsls r1, r1, #0x18
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x0E
	ldr r5, [sp, #0x014]
	lsls r2, r5, #0x0A
	orrs r0, r2
	orrs r3, r0
	strh r3, [r7, #0x00]
	ldr r6, [sp, #0x01C]
	lsls r0, r6, #0x0E
	lsrs r1, r1, #0x0F
	orrs r0, r1
	orrs r4, r0
	strh r4, [r7, #0x02]
	mov r1, r8
	lsls r0, r1, #0x0C
	ldr r2, [sp, #0x024]
	lsls r1, r2, #0x0A
	orrs r0, r1
	ldr r5, [sp, #0x020]
	orrs r0, r5
	strh r0, [r7, #0x04]
	adds r7, #0x08
_08122AE6:
	adds r0, r7, #0x0
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08122AF8: .4byte 0x08202F58
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x84, 0xB0, 0x0C, 0x9C, 0xA4, 0x46
	.byte 0x0D, 0x9D, 0xAA, 0x46, 0x0E, 0x9C, 0x0F, 0x9F, 0xB8, 0x46, 0x10, 0x9F, 0x12, 0x9D, 0xA9, 0x46
	.byte 0x09, 0x04, 0x09, 0x0C, 0x12, 0x06, 0x1B, 0x06, 0x65, 0x46, 0x2D, 0x06, 0xAC, 0x46, 0x55, 0x46
	.byte 0x2D, 0x06, 0xAA, 0x46, 0x24, 0x06, 0x45, 0x46, 0x2D, 0x04, 0x2D, 0x0C, 0xA8, 0x46, 0x3D, 0x06
	.byte 0x03, 0x95, 0x11, 0x9F, 0x3F, 0x06, 0x00, 0x97, 0x4D, 0x46, 0x2D, 0x04, 0x2D, 0x0C, 0xA9, 0x46
	.byte 0x13, 0x9F, 0x3E, 0x06, 0x14, 0x9F, 0x3D, 0x06, 0xA4, 0x0A, 0x57, 0x46, 0xFF, 0x0A, 0x3C, 0x43
	.byte 0x67, 0x46, 0x3F, 0x0B, 0x3C, 0x43, 0x9B, 0x0B, 0x1C, 0x43, 0x12, 0x0C, 0x14, 0x43, 0x21, 0x43
	.byte 0x01, 0x80, 0x00, 0x99, 0x89, 0x0A, 0x01, 0x91, 0x03, 0x9A, 0xD1, 0x0B, 0x01, 0x9C, 0x0C, 0x43
	.byte 0x47, 0x46, 0x27, 0x43, 0x47, 0x80, 0x2D, 0x0B, 0xB1, 0x0B, 0x0D, 0x43, 0x49, 0x46, 0x29, 0x43
	.byte 0x81, 0x80, 0x08, 0x30, 0x04, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47
	thumb_func_start sub_8122BA0
sub_8122BA0:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	cmp r5, #0x00
	bne _08122BD4
	movs r0, #0x98
	lsls r0, r0, #0x02
	ldr r4, _08122BD0 @ =0x08202F70
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x02
	negs r1, r1
	str r1, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r1, #0x08
	adds r2, r4, #0x0
	adds r3, r6, #0x0
	bl sub_8117C9C
	b _08122BF0
_08122BD0: .4byte 0x08202F70
_08122BD4:
	movs r0, #0x94
	lsls r0, r0, #0x01
	ldr r4, _08122BF8 @ =0x08202F78
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r3, #0x02
	negs r3, r3
	movs r1, #0x08
	adds r2, r4, #0x0
	bl sub_8127EF8
_08122BF0:
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08122BF8: .4byte 0x08202F78
	thumb_func_start sub_8122BFC
sub_8122BFC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	movs r4, #0x00
_08122C02:
	lsls r2, r4, #0x04
	subs r2, r2, r4
	lsls r2, r2, #0x02
	ldr r0, _08122E1C @ =0x083C0578
	adds r0, r2, r0
	ldr r5, _08122E20 @ =0x03000FF4
	ldr r1, [r5, #0x00]
	adds r1, r1, r2
	movs r2, #0x1E
	bl CpuSet
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x01
	bls _08122C02
	adds r6, r5, #0x0
	ldr r4, [r6, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x32
	ldrb r1, [r2, #0x00]
	movs r7, #0x80
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08122C66
	ldr r3, _08122E24 @ =0x083BE67C
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r1, [r0, #0x06]
	adds r0, r4, #0x0
	adds r0, #0x36
	strb r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x32
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x0A]
	adds r2, #0x37
	strb r0, [r2, #0x00]
	movs r0, #0x00
	bl sub_81230D0
_08122C66:
	ldr r4, [r6, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x6E
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08122CA6
	ldr r3, _08122E24 @ =0x083BE67C
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r1, [r0, #0x06]
	adds r0, r4, #0x0
	adds r0, #0x72
	strb r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x6E
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x0A]
	adds r2, #0x73
	strb r0, [r2, #0x00]
	movs r0, #0x01
	bl sub_81230D0
_08122CA6:
	mov r1, sp
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, #0x78
	ldr r2, _08122E28 @ =0x01000008
	mov r0, sp
	bl CpuSet
	ldr r2, _08122E2C @ =0x03000FF8
	ldr r0, [r5, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x78
	str r1, [r2, #0x00]
	adds r0, #0x88
	movs r1, #0x00
	strh r1, [r0, #0x00]
	movs r4, #0x00
	adds r2, r5, #0x0
	movs r3, #0xFF
	adds r6, r2, #0x0
_08122CD0:
	ldr r0, [r2, #0x00]
	adds r0, #0x8A
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1F
	bls _08122CD0
	movs r4, #0x00
	ldr r2, _08122E20 @ =0x03000FF4
	movs r1, #0x00
_08122CEC:
	ldr r0, [r2, #0x00]
	adds r0, #0xB2
	adds r0, r0, r4
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x07
	bls _08122CEC
	movs r4, #0x00
	ldr r3, _08122E20 @ =0x03000FF4
	movs r2, #0xFF
_08122D04:
	ldr r0, [r3, #0x00]
	adds r0, #0xAA
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x07
	bls _08122D04
	movs r4, #0x00
	ldr r3, _08122E20 @ =0x03000FF4
	movs r2, #0xFF
_08122D20:
	ldr r0, [r3, #0x00]
	adds r0, #0xBA
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x37
	bls _08122D20
	movs r4, #0x00
	ldr r3, _08122E20 @ =0x03000FF4
	movs r2, #0xFF
_08122D3C:
	ldr r0, [r3, #0x00]
	adds r0, #0xF2
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x37
	bls _08122D3C
	movs r4, #0x00
	ldr r5, _08122E20 @ =0x03000FF4
	movs r3, #0x95
	lsls r3, r3, #0x01
	movs r2, #0xFF
_08122D5C:
	ldr r0, [r5, #0x00]
	adds r0, r0, r3
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x0F
	bls _08122D5C
	movs r4, #0x00
	ldr r5, _08122E20 @ =0x03000FF4
	movs r3, #0x9D
	lsls r3, r3, #0x01
	movs r2, #0xFF
_08122D7C:
	ldr r0, [r5, #0x00]
	adds r0, r0, r3
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x37
	bls _08122D7C
	movs r4, #0x00
	ldr r5, _08122E20 @ =0x03000FF4
	movs r3, #0xB9
	lsls r3, r3, #0x01
	movs r2, #0xFF
_08122D9C:
	ldr r0, [r5, #0x00]
	adds r0, r0, r3
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x37
	bls _08122D9C
	movs r4, #0x00
	ldr r5, _08122E20 @ =0x03000FF4
	movs r3, #0xD5
	lsls r3, r3, #0x01
	movs r2, #0xFF
_08122DBC:
	ldr r0, [r5, #0x00]
	adds r0, r0, r3
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x0F
	bls _08122DBC
	ldr r0, [r6, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x32
	adds r0, #0xF2
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x6E
	adds r0, #0xF2
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	ldr r1, [r6, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	movs r2, #0xB9
	lsls r2, r2, #0x01
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x6E
	ldrb r0, [r0, #0x00]
	adds r2, #0x01
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	movs r0, #0x00
	bl sub_8018A4C
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08122E1C: .4byte 0x083C0578
_08122E20: .4byte 0x03000FF4
_08122E24: .4byte 0x083BE67C
_08122E28: .4byte 0x01000008
_08122E2C: .4byte 0x03000FF8
	thumb_func_start sub_8122E30
sub_8122E30:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r7, #0x00
	subs r0, #0x01
	cmp r0, #0x0B
	bls _08122E4E
	b _081230C2
_08122E4E:
	lsls r0, r0, #0x02
	ldr r1, _08122E58 @ =0x08122E5C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08122E58: .4byte 0x08122E5C
	.byte 0x56, 0x2F, 0x12, 0x08, 0x08, 0x2F, 0x12, 0x08, 0x8C, 0x30, 0x12, 0x08, 0x00, 0x30, 0x12, 0x08
	.byte 0x30, 0x30, 0x12, 0x08, 0xA2, 0x2F, 0x12, 0x08, 0xC2, 0x30, 0x12, 0x08, 0x8C, 0x2E, 0x12, 0x08
	.byte 0xB4, 0x2E, 0x12, 0x08, 0xC2, 0x30, 0x12, 0x08, 0xC2, 0x30, 0x12, 0x08, 0xDC, 0x2E, 0x12, 0x08
	.byte 0x07, 0x48, 0x00, 0x68, 0x04, 0x1C, 0x88, 0x34, 0x20, 0x88, 0x43, 0x19, 0x23, 0x80, 0x19, 0x04
	.byte 0x04, 0x48, 0x81, 0x42, 0x00, 0xD8, 0x0D, 0xE1, 0x58, 0x1B, 0x20, 0x80, 0x0B, 0xE1, 0x00, 0x00
	.byte 0xF4, 0x0F, 0x00, 0x03, 0x00, 0x00, 0x0F, 0x27, 0x07, 0x48, 0x00, 0x68, 0x03, 0x1C, 0x88, 0x33
	.byte 0xA8, 0x00, 0x40, 0x19, 0x19, 0x88, 0x40, 0x18, 0x18, 0x80, 0x00, 0x04, 0x00, 0x0C, 0x03, 0x49
	.byte 0x88, 0x42, 0x15, 0xD8, 0xF6, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x0F, 0x27, 0x00, 0x00
	.byte 0x08, 0x48, 0x00, 0x68, 0x03, 0x1C, 0x88, 0x33, 0xA8, 0x00, 0x40, 0x19, 0x40, 0x00, 0x1A, 0x88
	.byte 0x80, 0x18, 0x18, 0x80, 0x00, 0x04, 0x00, 0x0C, 0x03, 0x49, 0x88, 0x42, 0x00, 0xD8, 0xE1, 0xE0
	.byte 0x19, 0x80, 0xE0, 0xE0, 0xF4, 0x0F, 0x00, 0x03, 0x0F, 0x27, 0x00, 0x00, 0x00, 0x23, 0x07, 0x48
	.byte 0x80, 0x46, 0x42, 0x46, 0x00, 0x26, 0x10, 0x68, 0xB9, 0x21, 0x49, 0x00, 0x40, 0x18, 0xC0, 0x18
	.byte 0x01, 0x78, 0xFF, 0x29, 0x04, 0xD0, 0xA1, 0x42, 0x11, 0xD1, 0x07, 0xE0, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x04, 0x70, 0x41, 0x46, 0x08, 0x68, 0xF2, 0x30, 0x00, 0x19, 0x06, 0x70, 0x11, 0x68, 0xF2, 0x31
	.byte 0x09, 0x19, 0x08, 0x78, 0x28, 0x18, 0x08, 0x70, 0x10, 0x68, 0xF2, 0x30, 0x4D, 0xE0, 0x58, 0x1C
	.byte 0x00, 0x06, 0x03, 0x0E, 0x2D, 0x2B, 0xDE, 0xD9, 0xB5, 0xE0, 0x00, 0x23, 0x06, 0x4A, 0x90, 0x46
	.byte 0x00, 0x26, 0x10, 0x68, 0x9D, 0x21, 0x49, 0x00, 0x40, 0x18, 0xC0, 0x18, 0x01, 0x78, 0xFF, 0x29
	.byte 0x04, 0xD0, 0xA1, 0x42, 0x11, 0xD1, 0x07, 0xE0, 0xF4, 0x0F, 0x00, 0x03, 0x04, 0x70, 0x41, 0x46
	.byte 0x08, 0x68, 0xBA, 0x30, 0x00, 0x19, 0x06, 0x70, 0x11, 0x68, 0xBA, 0x31, 0x09, 0x19, 0x08, 0x78
	.byte 0x28, 0x18, 0x08, 0x70, 0x10, 0x68, 0xBA, 0x30, 0x27, 0xE0, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E
	.byte 0x2B, 0x2B, 0xDE, 0xD9, 0x8F, 0xE0, 0x00, 0x23, 0x07, 0x4A, 0x90, 0x46, 0x99, 0x46, 0x95, 0x26
	.byte 0x76, 0x00, 0x10, 0x68, 0xD5, 0x21, 0x49, 0x00, 0x40, 0x18, 0xC0, 0x18, 0x01, 0x78, 0xFF, 0x29
	.byte 0x04, 0xD0, 0xA1, 0x42, 0x18, 0xD1, 0x08, 0xE0, 0xF4, 0x0F, 0x00, 0x03, 0x04, 0x70, 0x41, 0x46
	.byte 0x08, 0x68, 0x80, 0x19, 0x00, 0x19, 0x49, 0x46, 0x01, 0x70, 0x11, 0x68, 0x89, 0x19, 0x09, 0x19
	.byte 0x08, 0x78, 0x28, 0x18, 0x08, 0x70, 0x10, 0x68, 0x80, 0x19, 0x01, 0x19, 0x08, 0x78, 0x09, 0x28
	.byte 0x68, 0xD9, 0x09, 0x20, 0x08, 0x70, 0x65, 0xE0, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x06, 0x2B
	.byte 0xD7, 0xD9, 0x60, 0xE0, 0x0A, 0x4A, 0x10, 0x68, 0x8A, 0x30, 0x01, 0x19, 0x08, 0x78, 0xFF, 0x28
	.byte 0x01, 0xD1, 0x00, 0x20, 0x08, 0x70, 0x11, 0x68, 0x8A, 0x31, 0x09, 0x19, 0x08, 0x78, 0x28, 0x18
	.byte 0x08, 0x70, 0x10, 0x68, 0x8A, 0x30, 0x01, 0x19, 0x08, 0x78, 0x63, 0x28, 0x45, 0xD8, 0x49, 0xE0
	.byte 0xF4, 0x0F, 0x00, 0x03, 0x12, 0x4A, 0x91, 0x46, 0x12, 0x49, 0x13, 0x48, 0x0E, 0x1A, 0x12, 0x68
	.byte 0x92, 0x19, 0x20, 0x1C, 0x08, 0x21, 0xB7, 0xF0, 0x15, 0xFD, 0x10, 0x49, 0x88, 0x46, 0x09, 0x68
	.byte 0x25, 0x12, 0xB2, 0x31, 0x49, 0x19, 0x09, 0x78, 0x01, 0x41, 0x00, 0x29, 0x33, 0xD1, 0x48, 0x46
	.byte 0x02, 0x68, 0x92, 0x19, 0x20, 0x1C, 0x08, 0x21, 0xB7, 0xF0, 0x04, 0xFD, 0x41, 0x46, 0x0A, 0x68
	.byte 0xB2, 0x32, 0x52, 0x19, 0x01, 0x21, 0x81, 0x40, 0x10, 0x78, 0x01, 0x43, 0x11, 0x70, 0x21, 0xE0
	.byte 0x38, 0x10, 0x00, 0x03, 0x50, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x0B, 0x4A, 0x10, 0x68, 0xAA, 0x30, 0x01, 0x19, 0x08, 0x78, 0xFF, 0x28, 0x01, 0xD1, 0x00, 0x20
	.byte 0x08, 0x70, 0x11, 0x68, 0xAA, 0x31, 0x09, 0x19, 0x08, 0x78, 0x28, 0x18, 0x08, 0x70, 0x10, 0x68
	.byte 0xAA, 0x30, 0x01, 0x19, 0x08, 0x78, 0x63, 0x28, 0x04, 0xD9, 0x63, 0x20, 0x08, 0x70, 0x02, 0xE0
	.byte 0xF4, 0x0F, 0x00, 0x03, 0x01, 0x27
_081230C2:
	adds r0, r7, #0x0
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_81230D0
sub_81230D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r4, sp
	ldr r3, _08123144 @ =0x083BE67C
	ldr r5, _08123148 @ =0x03000FF4
	ldr r2, [r5, #0x00]
	lsls r0, r0, #0x04
	mov r1, r8
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r6, r2, #0x0
	adds r6, #0x32
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x06]
	strb r0, [r4, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x0A]
	strb r0, [r4, #0x01]
	adds r4, r2, #0x0
	adds r4, #0x31
	ldrb r0, [r4, #0x00]
	adds r6, r3, #0x0
	mov r9, r5
	cmp r0, #0xFF
	beq _08123150
	mov r2, sp
	ldr r3, _0812314C @ =0x083BD844
	adds r1, r0, #0x0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x06]
	strb r0, [r2, #0x02]
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x0A]
	strb r0, [r2, #0x03]
	b _0812315C
_08123144: .4byte 0x083BE67C
_08123148: .4byte 0x03000FF4
_0812314C: .4byte 0x083BD844
_08123150:
	mov r1, sp
	movs r0, #0xFF
	strb r0, [r1, #0x02]
	movs r0, #0x01
	negs r0, r0
	strb r0, [r1, #0x03]
_0812315C:
	add r3, sp, #0x004
	mov r4, r9
	ldr r2, [r4, #0x00]
	mov r0, r8
	lsls r4, r0, #0x04
	subs r0, r4, r0
	lsls r0, r0, #0x02
	adds r2, r2, r0
	movs r1, #0x32
	adds r1, r1, r2
	mov r12, r1
	ldrb r1, [r1, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldrh r0, [r0, #0x08]
	strh r0, [r3, #0x00]
	mov r0, r12
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldrh r0, [r0, #0x0C]
	strh r0, [r3, #0x02]
	adds r5, r2, #0x0
	adds r5, #0x31
	ldrb r0, [r5, #0x00]
	mov r10, r4
	cmp r0, #0xFF
	beq _081231C0
	ldr r2, _081231BC @ =0x083BD844
	adds r1, r0, #0x0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrh r0, [r0, #0x08]
	strh r0, [r3, #0x04]
	ldrb r1, [r5, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrh r0, [r0, #0x0C]
	b _081231C2
	.byte 0x00, 0x00
_081231BC: .4byte 0x083BD844
_081231C0:
	strh r0, [r3, #0x04]
_081231C2:
	strh r0, [r3, #0x06]
	mov r1, r9
	ldr r0, [r1, #0x00]
	mov r4, r10
	mov r1, r8
	subs r2, r4, r1
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldrh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldrh r1, [r0, #0x1A]
	strh r1, [r0, #0x1C]
	ldrh r1, [r0, #0x1E]
	strh r1, [r0, #0x20]
	ldrh r1, [r0, #0x22]
	strh r1, [r0, #0x24]
	ldrh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldrh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	mov r7, r9
	adds r6, r2, #0x0
	ldr r4, _08123210 @ =0x03E70000
	mov r5, sp
	movs r2, #0x03
	mov r12, r2
_081231F6:
	ldrb r0, [r5, #0x00]
	cmp r0, #0x63
	bls _0812327C
	cmp r0, #0xFF
	beq _0812327C
	cmp r0, #0x65
	beq _08123236
	cmp r0, #0x65
	bgt _08123214
	cmp r0, #0x64
	beq _0812321E
	b _0812327C
	.byte 0x00, 0x00
_08123210: .4byte 0x03E70000
_08123214:
	cmp r0, #0x66
	beq _0812324E
	cmp r0, #0x67
	beq _08123266
	b _0812327C
_0812321E:
	ldr r0, [r7, #0x00]
	adds r1, r0, r6
	ldrh r0, [r3, #0x00]
	ldrh r2, [r1, #0x10]
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	lsls r0, r0, #0x10
	lsrs r2, r4, #0x10
	cmp r0, r4
	bls _0812327C
	strh r2, [r1, #0x12]
	b _0812327C
_08123236:
	ldr r0, [r7, #0x00]
	adds r1, r0, r6
	ldrh r0, [r3, #0x00]
	ldrh r2, [r1, #0x16]
	adds r0, r0, r2
	strh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	lsrs r2, r4, #0x10
	cmp r0, r4
	bls _0812327C
	strh r2, [r1, #0x18]
	b _0812327C
_0812324E:
	ldr r0, [r7, #0x00]
	adds r1, r0, r6
	ldrh r0, [r3, #0x00]
	ldrh r2, [r1, #0x1A]
	adds r0, r0, r2
	strh r0, [r1, #0x1C]
	lsls r0, r0, #0x10
	lsrs r2, r4, #0x10
	cmp r0, r4
	bls _0812327C
	strh r2, [r1, #0x1C]
	b _0812327C
_08123266:
	ldr r0, [r7, #0x00]
	adds r1, r0, r6
	ldrh r0, [r3, #0x00]
	ldrh r2, [r1, #0x22]
	adds r0, r0, r2
	strh r0, [r1, #0x24]
	lsls r0, r0, #0x10
	lsrs r2, r4, #0x10
	cmp r0, r4
	bls _0812327C
	strh r2, [r1, #0x24]
_0812327C:
	adds r3, #0x02
	adds r5, #0x01
	movs r0, #0x01
	negs r0, r0
	add r12, r0
	mov r1, r12
	cmp r1, #0x00
	bge _081231F6
	mov r2, r9
	ldr r1, [r2, #0x00]
	mov r3, r10
	mov r4, r8
	subs r0, r3, r4
	lsls r2, r0, #0x02
	adds r1, r1, r2
	ldrh r0, [r1, #0x12]
	ldrh r3, [r1, #0x0E]
	cmp r0, r3
	bcs _081232A4
	strh r0, [r1, #0x0E]
_081232A4:
	mov r4, r9
	ldr r0, [r4, #0x00]
	adds r0, r0, r2
	ldrh r1, [r0, #0x18]
	ldrh r2, [r0, #0x14]
	cmp r1, r2
	bcs _081232B4
	strh r1, [r0, #0x14]
_081232B4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x04, 0x48, 0x41, 0x8D, 0x02, 0x20, 0x08, 0x40, 0x00, 0x28, 0x01, 0xD0
	.byte 0x00, 0x20, 0x10, 0x70, 0x01, 0xBC, 0x00, 0x47, 0x4C, 0x03, 0x00, 0x03
