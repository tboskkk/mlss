	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E8878
sub_80E8878:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	ldr r4, [sp, #0x02C]
	ldr r5, [sp, #0x030]
	ldr r6, [sp, #0x034]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x004]
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x008]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r9, r4
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r10, r6
	movs r7, #0x00
	ldr r5, [r0, #0x00]
_080E88B0:
	ldrb r6, [r5, #0x0F]
	cmp r6, #0x00
	bne _080E8920
	ldr r4, [r5, #0x00]
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_801E150
	mov r0, sp
	ldrb r0, [r0, #0x04]
	strb r0, [r5, #0x0C]
	mov r1, sp
	ldrb r1, [r1, #0x08]
	strb r1, [r5, #0x0E]
	mov r2, r9
	strh r2, [r5, #0x04]
	mov r0, r8
	strh r0, [r5, #0x06]
	strh r6, [r5, #0x08]
	strh r6, [r5, #0x0A]
	mov r1, r10
	strb r1, [r5, #0x0D]
	movs r0, #0x01
	strb r0, [r5, #0x0F]
	ldrb r1, [r4, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r2, #0x31
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	adds r2, #0x24
	adds r1, r2, #0x0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	adds r2, #0x09
	adds r1, r2, #0x0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x1F]
	strh r6, [r4, #0x0E]
	adds r0, r4, #0x0
	bl sprite_show_8020CBC
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	b _080E8934
_080E8920:
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r0, r2
	adds r5, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080E88B0
	movs r0, #0xFF
_080E8934:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80E8944
sub_80E8944:
	add sp, #-0x010
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x034]
	str r1, [sp, #0x038]
	str r2, [sp, #0x03C]
	str r3, [sp, #0x040]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bne _080E8964
	movs r0, #0x00
	b _080E8B72
_080E8964:
	movs r0, #0x00
	mov r8, r0
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r2, #0x00
	str r2, [sp, #0x008]
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x038]
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	mov r9, r0
	add r1, sp, #0x034
	movs r2, #0x20
	movs r0, #0x20
	strb r0, [r1, #0x0D]
	adds r0, r1, #0x0
	ldrb r0, [r0, #0x0C]
	str r0, [sp, #0x00C]
	adds r0, r1, #0x0
	ldrb r0, [r0, #0x0D]
	str r0, [sp, #0x010]
	ldrb r0, [r1, #0x12]
	orrs r0, r2
	strb r0, [r1, #0x12]
_080E899A:
	ldr r0, [sp, #0x03C]
	ldrb r4, [r0, #0x00]
_080E899E:
	add r0, sp, #0x034
	ldrb r0, [r0, #0x0C]
	ldr r1, [sp, #0x000]
	cmp r1, r0
	bcs _080E89AA
	str r0, [sp, #0x000]
_080E89AA:
	add r0, sp, #0x034
	ldrb r1, [r0, #0x12]
	movs r3, #0x20
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _080E89E8
	add r0, sp, #0x034
	strb r1, [r0, #0x0C]
	adds r2, r0, #0x0
	adds r1, r0, #0x0
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1C
	add r0, r9
	ldrb r1, [r1, #0x0D]
	adds r0, r0, r1
	strb r0, [r2, #0x0D]
	ldr r0, [sp, #0x038]
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	mov r9, r0
	adds r1, r2, #0x0
	ldrb r0, [r1, #0x12]
	orrs r0, r3
	strb r0, [r1, #0x12]
_080E89E8:
	add r0, sp, #0x034
	ldrb r0, [r0, #0x0D]
	add r0, r9
	cmp r8, r0
	bcs _080E89F4
	mov r8, r0
_080E89F4:
	cmp r4, #0x00
	bne _080E8A24
	movs r2, #0x20
	negs r2, r2
	add r8, r2
	ldr r0, [sp, #0x004]
	ldr r1, [sp, #0x000]
	cmp r0, r1
	bcs _080E8A08
	str r1, [sp, #0x004]
_080E8A08:
	ldr r2, [sp, #0x008]
	cmp r2, r8
	bcs _080E8A12
	mov r0, r8
	str r0, [sp, #0x008]
_080E8A12:
	ldr r1, _080E8A20 @ =0x0000FFFF
	ldr r2, [sp, #0x008]
	ands r1, r2
	ldr r2, [sp, #0x004]
	lsls r0, r2, #0x10
	orrs r0, r1
	b _080E8B72
_080E8A20: .4byte 0x0000FFFF
_080E8A24:
	cmp r4, #0xFF
	bne _080E8A9E
	ldr r1, [sp, #0x03C]
	ldrb r2, [r1, #0x01]
	movs r0, #0xE0
	ands r0, r2
	cmp r0, #0x00
	bne _080E8A3A
	movs r5, #0x1F
	ands r5, r2
	b _080E8A3C
_080E8A3A:
	movs r5, #0x00
_080E8A3C:
	ldrb r4, [r1, #0x02]
	adds r0, r1, #0x2
	str r0, [sp, #0x03C]
	add r0, sp, #0x034
	movs r1, #0x01
	bl sub_8199888
	cmp r5, #0x11
	beq _080E8A50
	b _080E8B5C
_080E8A50:
	cmp r4, #0x01
	beq _080E8A56
	b _080E8B5C
_080E8A56:
	ldr r0, [sp, #0x048]
	ands r4, r0
	cmp r4, #0x00
	beq _080E8A9A
	add r0, sp, #0x034
	mov r1, sp
	ldrb r1, [r1, #0x0C]
	strb r1, [r0, #0x0C]
	mov r2, sp
	ldrb r2, [r2, #0x10]
	strb r2, [r0, #0x0D]
	adds r2, r0, #0x0
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x20
	negs r0, r0
	add r8, r0
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x000]
	cmp r1, r2
	bcs _080E8A86
	str r2, [sp, #0x004]
_080E8A86:
	ldr r0, [sp, #0x008]
	cmp r0, r8
	bcs _080E8A90
	mov r1, r8
	str r1, [sp, #0x008]
_080E8A90:
	movs r2, #0x00
	mov r8, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	b _080E8B5C
_080E8A9A:
	movs r4, #0x00
	b _080E899E
_080E8A9E:
	cmp r4, #0x20
	bne _080E8AB6
	add r2, sp, #0x034
	adds r1, r2, #0x0
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1C
	ldrb r1, [r1, #0x0C]
	adds r0, r0, r1
	strb r0, [r2, #0x0C]
	b _080E8B56
_080E8AB6:
	movs r0, #0xFF
	subs r0, r0, r4
	ldr r2, [sp, #0x038]
	cmp r0, #0x05
	bgt _080E8AD4
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _080E8AD4
	ldr r0, [sp, #0x03C]
	adds r0, #0x01
	str r0, [sp, #0x03C]
	adds r7, r1, #0x0
	b _080E8AD6
_080E8AD4:
	ldr r7, [r2, #0x00]
_080E8AD6:
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x18
	mov r12, r0
	ldr r0, [sp, #0x03C]
	ldrb r4, [r0, #0x00]
	movs r1, #0x0F
	mov r10, r1
	mov r0, r12
	lsrs r2, r0, #0x18
	ands r2, r1
	lsls r3, r2, #0x02
	add r0, sp, #0x034
	ldrb r1, [r0, #0x12]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080E8AFA
	lsls r3, r2, #0x03
_080E8AFA:
	cmp r9, r3
	bcs _080E8B00
	mov r9, r3
_080E8B00:
	add r2, sp, #0x034
	adds r1, r2, #0x0
	adds r0, r1, #0x0
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	ldrb r1, [r1, #0x0C]
	adds r6, r0, r1
	strb r6, [r2, #0x0C]
	adds r0, r2, #0x0
	ldrb r5, [r0, #0x12]
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0x00
	beq _080E8B42
	adds r3, r2, #0x0
	lsrs r1, r4, #0x03
	lsls r1, r1, #0x02
	adds r1, r1, r7
	movs r0, #0x07
	ands r4, r0
	lsls r2, r4, #0x02
	ldr r0, [r1, #0x04]
	lsrs r0, r2
	mov r1, r10
	ands r0, r1
	adds r0, #0x01
	lsls r1, r5, #0x1E
	lsrs r1, r1, #0x1F
	lsls r0, r1
	adds r0, r6, r0
	strb r0, [r3, #0x0C]
	b _080E8B56
_080E8B42:
	add r2, sp, #0x034
	mov r0, r12
	lsrs r1, r0, #0x1A
	movs r0, #0xFC
	ands r1, r0
	lsls r0, r5, #0x1E
	lsrs r0, r0, #0x1F
	lsls r1, r0
	adds r1, r6, r1
	strb r1, [r2, #0x0C]
_080E8B56:
	ldr r0, [sp, #0x03C]
	adds r0, #0x01
	str r0, [sp, #0x03C]
_080E8B5C:
	movs r1, #0x00
	cmp r1, #0x00
	bne _080E8B64
	b _080E899A
_080E8B64:
	ldr r0, [sp, #0x03C]
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080E8B6E
	b _080E899A
_080E8B6E:
	str r1, [sp, #0x03C]
	b _080E899A
_080E8B72:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x010
	bx r3
	thumb_func_start sub_80E8B84
sub_80E8B84:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r3, [r4, #0x08]
	subs r0, r3, #0x1
	ldrb r2, [r0, #0x00]
	adds r5, r2, #0x0
	ldrb r6, [r3, #0x00]
	cmp r1, #0x00
	beq _080E8C1C
	cmp r2, #0x0A
	bls _080E8B9E
	adds r0, r3, #0x1
	str r0, [r4, #0x08]
_080E8B9E:
	cmp r2, #0x0E
	beq _080E8BB6
	cmp r2, #0x0E
	bgt _080E8BAC
	cmp r2, #0x0A
	beq _080E8C0C
	b _080E8C1C
_080E8BAC:
	cmp r5, #0x0F
	beq _080E8BD4
	cmp r5, #0x10
	beq _080E8BEC
	b _080E8C1C
_080E8BB6:
	ldr r0, _080E8BD0 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	str r0, [r1, #0x0C]
	adds r0, r1, #0x0
	adds r0, #0x10
	ldr r1, [r1, #0x04]
	ldrh r1, [r1, #0x00]
	bl sub_80E8D20
	str r0, [r4, #0x08]
	b _080E8C1C
	.byte 0x00, 0x00
_080E8BD0: .4byte 0x03000FBC
_080E8BD4:
	ldr r0, _080E8BE8 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	str r0, [r1, #0x0C]
	adds r0, r1, #0x0
	adds r0, #0x10
	ldr r1, [r1, #0x00]
	ldr r2, [r1, #0x00]
	movs r1, #0x00
	b _080E8BFE
_080E8BE8: .4byte 0x03000FBC
_080E8BEC:
	ldr r0, _080E8C08 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	str r0, [r1, #0x0C]
	adds r0, r1, #0x0
	adds r0, #0x10
	ldr r1, [r1, #0x00]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
_080E8BFE:
	bl sub_80E8C28
	str r0, [r4, #0x08]
	b _080E8C1C
	.byte 0x00, 0x00
_080E8C08: .4byte 0x03000FBC
_080E8C0C:
	ldr r0, _080E8C24 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	beq _080E8C1C
	str r0, [r4, #0x08]
	movs r0, #0x00
	str r0, [r1, #0x0C]
_080E8C1C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E8C24: .4byte 0x03000FBC
	thumb_func_start sub_80E8C28
sub_80E8C28:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0x0
	adds r5, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r4, r7, #0x0
	movs r0, #0x00
	mov r10, r0
	cmp r5, #0x00
	bge _080E8C56
	cmp r6, #0x00
	beq _080E8C4E
	movs r1, #0x01
	mov r10, r1
	b _080E8C54
_080E8C4E:
	movs r0, #0x2D
	strb r0, [r7, #0x00]
	adds r4, r7, #0x1
_080E8C54:
	negs r5, r5
_080E8C56:
	ldr r1, _080E8C78 @ =0x000F4240
	adds r0, r5, #0x0
	bl __modsi3
	adds r5, r0, #0x0
	movs r0, #0x00
	mov r12, r0
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r3, r0, #0x0
	cmp r2, #0x00
	beq _080E8C7C
	movs r0, #0x06
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080E8C7E
_080E8C78: .4byte 0x000F4240
_080E8C7C:
	movs r0, #0x00
_080E8C7E:
	adds r2, r0, #0x0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x05
	bhi _080E8CEC
	ldr r0, _080E8CCC @ =0x083B9538
	mov r9, r0
	asrs r3, r3, #0x10
	mov r8, r3
_080E8C90:
	movs r6, #0x00
	asrs r0, r1, #0x0E
	add r0, r9
	ldr r3, [r0, #0x00]
	lsrs r0, r1, #0x10
	cmp r0, #0x05
	bne _080E8CA2
	movs r1, #0x01
	mov r12, r1
_080E8CA2:
	lsls r2, r2, #0x10
	cmp r5, r3
	bcc _080E8CB4
_080E8CA8:
	subs r5, r5, r3
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r5, r3
	bcs _080E8CA8
_080E8CB4:
	cmp r6, #0x00
	bne _080E8CBE
	mov r0, r12
	cmp r0, #0x00
	beq _080E8CD0
_080E8CBE:
	adds r0, r6, #0x0
	adds r0, #0x30
	strb r0, [r4, #0x00]
	movs r1, #0x01
	mov r12, r1
	b _080E8CDA
	.byte 0x00, 0x00
_080E8CCC: .4byte 0x083B9538
_080E8CD0:
	movs r0, #0x20
	strb r0, [r4, #0x00]
	mov r0, r8
	cmp r0, #0x00
	beq _080E8CDC
_080E8CDA:
	adds r4, #0x01
_080E8CDC:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x05
	bls _080E8C90
_080E8CEC:
	movs r0, #0xFF
	strb r0, [r4, #0x00]
	movs r0, #0x0A
	strb r0, [r4, #0x01]
	movs r0, #0x00
	strb r0, [r4, #0x02]
	mov r0, r10
	cmp r0, #0x00
	beq _080E8D0E
_080E8CFE:
	subs r4, #0x01
	cmp r4, r7
	beq _080E8D0A
	ldrb r0, [r4, #0x00]
	cmp r0, #0x20
	bne _080E8CFE
_080E8D0A:
	movs r0, #0x2D
	strb r0, [r4, #0x00]
_080E8D0E:
	adds r0, r7, #0x0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
