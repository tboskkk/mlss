	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A5E8C
sub_80A5E8C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A5F4C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A5F46
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x87
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A5ECA
	cmp r1, #0x04
	bne _080A5EE6
_080A5ECA:
	ldr r2, _080A5F50 @ =0x00002055
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A5EE6:
	ldr r0, _080A5F54 @ =0x0000208B
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	str r0, [r5, #0x34]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A5F06
	cmp r1, #0x04
	bne _080A5F36
_080A5F06:
	ldr r2, _080A5F58 @ =0x03001038
	ldr r0, _080A5F5C @ =0x0819832C
	ldr r1, _080A5F60 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x52
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A5F36:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A5F64 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A5F68 @ =0x080A5F6D
	str r0, [r6, #0x4C]
_080A5F46:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A5F4C: .4byte 0x03000FD8
_080A5F50: .4byte 0x00002055
_080A5F54: .4byte 0x0000208B
_080A5F58: .4byte 0x03001038
_080A5F5C: .4byte 0x0819832C
_080A5F60: .4byte 0x08198220
_080A5F64: .4byte 0x00000FFF
_080A5F68: .4byte sub_80A5F6C
	thumb_func_start sub_80A5F6C
sub_80A5F6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080A6078 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x07
	mov r8, r0
	adds r0, r6, #0x0
	bl sub_80884AC
	ldr r4, [r6, #0x34]
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r6, #0x08]
	ldrh r0, [r0, #0x00]
	adds r0, #0x14
	strh r0, [r4, #0x00]
	ldr r0, [r6, #0x08]
	ldrh r0, [r0, #0x02]
	subs r0, #0x0E
	strh r0, [r4, #0x02]
	ldr r0, [r6, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x01
	strh r0, [r4, #0x0E]
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r8
	bge _080A5FCA
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A5FCA:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r7, r1, #0x0
	cmp r0, #0x00
	beq _080A5FDA
	b _080A60DC
_080A5FDA:
	mov r2, r8
	movs r1, #0x00
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080A5FF4
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A5FF6
_080A5FF4:
	movs r1, #0x00
_080A5FF6:
	adds r7, r6, #0x0
	adds r7, #0xAE
	cmp r1, #0x00
	beq _080A601A
	ldr r0, _080A607C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080A601A
	ldrh r0, [r7, #0x00]
	ldr r1, _080A6080 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r7, #0x00]
_080A601A:
	ldrh r0, [r7, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	bne _080A60DC
	mov r1, r8
	ldr r0, _080A6084 @ =0x00007FFF
	cmp r1, r0
	ble _080A602C
	adds r1, r0, #0x0
_080A602C:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080A6046
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080A6048
_080A6046:
	movs r2, #0x00
_080A6048:
	cmp r2, #0x00
	beq _080A6088
	ldr r0, _080A6078 @ =0x03000FD8
	ldr r3, [r0, #0x00]
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
	ldrh r1, [r7, #0x00]
	ldr r0, _080A6080 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
	b _080A60DC
_080A6078: .4byte 0x03000FD8
_080A607C: .4byte 0x0300034C
_080A6080: .4byte 0x00000FFF
_080A6084: .4byte 0x00007FFF
_080A6088:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r8
	bgt _080A60DC
	ldr r0, _080A613C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A60DC
	ldr r4, _080A6140 @ =0x03000FD8
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
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A60DC
	ldrh r0, [r7, #0x00]
	ldr r1, _080A6144 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r7, #0x00]
_080A60DC:
	ldrh r0, [r7, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080A6150
	movs r1, #0x00
	mov r2, r8
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A60F2
	adds r1, r0, #0x0
_080A60F2:
	ldr r0, _080A6148 @ =0x00007FFF
	cmp r2, r0
	ble _080A60FA
	adds r2, r0, #0x0
_080A60FA:
	cmp r2, r1
	bge _080A6100
	adds r1, r2, #0x0
_080A6100:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080A611A
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A611C
_080A611A:
	movs r1, #0x00
_080A611C:
	cmp r1, #0x00
	beq _080A6150
	cmp r3, #0x01
	ble _080A6150
	ldrh r0, [r7, #0x00]
	ldr r1, _080A6144 @ =0x00000FFF
	ands r1, r0
	strh r1, [r7, #0x00]
	ldr r1, _080A614C @ =0x080A6405
	mov r2, r10
	str r1, [r2, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080A61DC
	.byte 0x00, 0x00
_080A613C: .4byte 0x0300034C
_080A6140: .4byte 0x03000FD8
_080A6144: .4byte 0x00000FFF
_080A6148: .4byte 0x00007FFF
_080A614C: .4byte sub_80A6404
_080A6150:
	movs r4, #0x79
	adds r4, r4, r6
	mov r8, r4
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A61DC
	movs r0, #0xAB
	lsls r0, r0, #0x01
	movs r5, #0x01
	negs r5, r5
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	ldr r4, [r6, #0x34]
	movs r0, #0x00
	mov r9, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x01
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x12]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A619E
	cmp r1, #0x04
	bne _080A61CE
_080A619E:
	ldr r2, _080A61EC @ =0x03001038
	ldr r0, _080A61F0 @ =0x0819832C
	ldr r1, _080A61F4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x78
	bl _call_via_r2
	adds r1, r6, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	mov r1, r9
	strh r1, [r0, #0x00]
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A61CE:
	ldrh r0, [r7, #0x00]
	ldr r1, _080A61F8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r7, #0x00]
	ldr r0, _080A61FC @ =0x080A6201
	mov r4, r10
	str r0, [r4, #0x4C]
_080A61DC:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A61EC: .4byte 0x03001038
_080A61F0: .4byte 0x0819832C
_080A61F4: .4byte 0x08198220
_080A61F8: .4byte 0x00000FFF
_080A61FC: .4byte sub_80A6200
	thumb_func_start sub_80A6200
sub_80A6200:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r0, _080A6308 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r7, r5, #0x0
	adds r7, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x07
	mov r9, r0
	adds r0, r7, #0x0
	bl sub_80884AC
	ldr r4, [r7, #0x34]
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x00]
	adds r0, #0x14
	strh r0, [r4, #0x00]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x02]
	subs r0, #0x0E
	strh r0, [r4, #0x02]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x01
	strh r0, [r4, #0x0E]
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080A625A
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A625A:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r6, r1, #0x0
	cmp r0, #0x00
	beq _080A626A
	b _080A636C
_080A626A:
	mov r2, r9
	movs r1, #0x00
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080A6284
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A6286
_080A6284:
	movs r1, #0x00
_080A6286:
	adds r6, r7, #0x0
	adds r6, #0xAE
	cmp r1, #0x00
	beq _080A62AA
	ldr r0, _080A630C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080A62AA
	ldrh r0, [r6, #0x00]
	ldr r1, _080A6310 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r6, #0x00]
_080A62AA:
	ldrh r0, [r6, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	bne _080A636C
	mov r1, r9
	ldr r0, _080A6314 @ =0x00007FFF
	cmp r1, r0
	ble _080A62BC
	adds r1, r0, #0x0
_080A62BC:
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080A62D6
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080A62D8
_080A62D6:
	movs r2, #0x00
_080A62D8:
	cmp r2, #0x00
	beq _080A6318
	ldr r0, _080A6308 @ =0x03000FD8
	ldr r3, [r0, #0x00]
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
	ldrh r1, [r6, #0x00]
	ldr r0, _080A6310 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r6, #0x00]
	b _080A636C
_080A6308: .4byte 0x03000FD8
_080A630C: .4byte 0x0300034C
_080A6310: .4byte 0x00000FFF
_080A6314: .4byte 0x00007FFF
_080A6318:
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r9
	bgt _080A636C
	ldr r0, _080A63CC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A636C
	ldr r4, _080A63D0 @ =0x03000FD8
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
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A636C
	ldrh r0, [r6, #0x00]
	ldr r1, _080A63D4 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r6, #0x00]
_080A636C:
	ldrh r0, [r6, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080A63E0
	movs r1, #0x00
	mov r2, r9
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A6382
	adds r1, r0, #0x0
_080A6382:
	ldr r0, _080A63D8 @ =0x00007FFF
	cmp r2, r0
	ble _080A638A
	adds r2, r0, #0x0
_080A638A:
	cmp r2, r1
	bge _080A6390
	adds r1, r2, #0x0
_080A6390:
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080A63AA
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A63AC
_080A63AA:
	movs r1, #0x00
_080A63AC:
	cmp r1, #0x00
	beq _080A63E0
	cmp r3, #0x01
	ble _080A63E0
	ldrh r0, [r6, #0x00]
	ldr r1, _080A63D4 @ =0x00000FFF
	ands r1, r0
	strh r1, [r6, #0x00]
	ldr r1, _080A63DC @ =0x080A67F1
	mov r2, r8
	str r1, [r2, #0x4C]
	mov r0, r8
	bl _call_via_r1
	b _080A63F4
	.byte 0x00, 0x00
_080A63CC: .4byte 0x0300034C
_080A63D0: .4byte 0x03000FD8
_080A63D4: .4byte 0x00000FFF
_080A63D8: .4byte 0x00007FFF
_080A63DC: .4byte sub_80A67F0
_080A63E0:
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A63F4
	ldr r0, _080A6400 @ =0x080A6405
	mov r4, r8
	str r0, [r4, #0x4C]
_080A63F4:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A6400: .4byte sub_80A6404
	thumb_func_start sub_80A6404
sub_80A6404:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A64AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r0, #0x87
	bl stop_sfx_80195A8
	movs r0, #0xAB
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9B
	bl play_sfx_80195B4
	ldr r0, [r5, #0x34]
	bl sub_807FB34
	movs r0, #0x00
	str r0, [r5, #0x34]
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A6444
	cmp r1, #0x04
	bne _080A6460
_080A6444:
	ldr r2, _080A64B0 @ =0x00002055
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A6460:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A6472
	cmp r1, #0x04
	bne _080A64A2
_080A6472:
	ldr r2, _080A64B4 @ =0x03001038
	ldr r0, _080A64B8 @ =0x0819832C
	ldr r1, _080A64BC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A64A2:
	ldr r0, _080A64C0 @ =0x080A6C45
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A64AC: .4byte 0x03000FD8
_080A64B0: .4byte 0x00002055
_080A64B4: .4byte 0x03001038
_080A64B8: .4byte 0x0819832C
_080A64BC: .4byte 0x08198220
_080A64C0: .4byte sub_80A6C44
