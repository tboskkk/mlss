	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start script_cmd_use_ability
script_cmd_use_ability: @ 080F5510
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x000]
	mov r10, r1
	adds r7, r2, #0x0
	ldr r3, _080F5558 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	mov r0, r10
	adds r0, #0xFD
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1A
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x7C]
	str r0, [sp, #0x004]
	ldr r0, [r7, #0x08]
	movs r1, #0x04
	ands r0, r1
	adds r6, r3, #0x0
	cmp r0, #0x00
	bne _080F555C
	ldr r1, [sp, #0x004]
	ldr r0, [r1, #0x54]
	cmp r0, #0x00
	beq _080F555C
	mov r2, r10
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x00]
	b _080F56F4
_080F5558: .4byte 0x03000FD8
_080F555C:
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	beq _080F55D0
	ldr r3, [r6, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r0, r3, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _080F55D0
	movs r4, #0x03
	ands r4, r1
	cmp r4, #0x00
	beq _080F55D0
	ldrb r1, [r3, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080F55D0
	adds r0, r3, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r1, r1, r2
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldrh r1, [r1, #0x00]
	ldrh r0, [r0, #0x00]
	orrs r1, r0
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	ands r1, r0
	cmp r1, #0x00
	bne _080F55D0
	cmp r4, #0x03
	beq _080F55C2
	ldr r0, _080F55CC @ =0x080FD8BD
	movs r1, #0x00
	bl sub_807FF48
	ldr r1, [r6, #0x00]
	adds r1, r1, r5
	ldrb r0, [r1, #0x00]
	movs r2, #0x03
	orrs r0, r2
	strb r0, [r1, #0x00]
_080F55C2:
	mov r1, r10
	ldr r0, [r1, #0x14]
	str r0, [r1, #0x00]
	b _080F56F4
	.byte 0x00, 0x00
_080F55CC: .4byte sub_80FD8BC
_080F55D0:
	ldr r0, [r7, #0x00]
	ldr r2, [sp, #0x004]
	adds r2, #0x08
	str r2, [sp, #0x008]
	cmp r0, #0x08
	ble _080F563E
	movs r3, #0x02
	mov r9, r3
	cmp r0, #0x0F
	bne _080F55E8
	movs r0, #0x01
	mov r9, r0
_080F55E8:
	movs r2, #0x00
	mov r8, r2
_080F55EC:
	ldr r0, _080F5674 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _080F5630
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1E
	cmp r0, r9
	bne _080F5630
	mov r1, r8
	lsls r4, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r4, r4, r2
	lsrs r3, r4, #0x10
	mov r8, r3
	asrs r4, r4, #0x10
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080F5630
	str r5, [r7, #0x00]
_080F5630:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x07
	ble _080F55EC
_080F563E:
	ldr r3, _080F5674 @ =0x03000FD8
	ldr r1, [r3, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x08]
	movs r1, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080F5678
	ldr r1, [r3, #0x00]
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r1, #0x08
	ldr r2, [r7, #0x04]
	ldr r0, [sp, #0x008]
	bl sub_8086318
	b _080F568E
	.byte 0x00, 0x00
_080F5674: .4byte 0x03000FD8
_080F5678:
	ldr r1, [r3, #0x00]
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r1, #0x08
	ldr r2, [r7, #0x04]
	ldr r0, [sp, #0x008]
	bl sub_8086150
_080F568E:
	ldr r0, [r7, #0x08]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F56A8
	mov r2, r10
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
_080F56A8:
	ldr r1, [r7, #0x0C]
	ldr r3, _080F5708 @ =0xFFFF0000
	cmp r1, r3
	ble _080F56B6
	ldr r0, [sp, #0x004]
	adds r0, #0xA4
	str r1, [r0, #0x00]
_080F56B6:
	ldr r1, [r7, #0x10]
	cmp r1, r3
	ble _080F56C2
	ldr r0, [sp, #0x004]
	adds r0, #0xA8
	str r1, [r0, #0x00]
_080F56C2:
	ldr r2, [r7, #0x14]
	cmp r2, r3
	ble _080F56CE
	ldr r0, [sp, #0x004]
	adds r0, #0xAC
	str r2, [r0, #0x00]
_080F56CE:
	ldr r0, _080F570C @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r1, [r3, #0x24]
	ldr r0, _080F5710 @ =0x08100E5D
	cmp r1, r0
	beq _080F56F4
	movs r2, #0x80
	lsls r2, r2, #0x02
	ldr r0, [sp, #0x000]
	ldr r1, [r0, #0x2C]
	ldr r0, _080F5714 @ =0x00001788
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	orrs r0, r2
	str r0, [r1, #0x00]
	movs r0, #0x0A
	strh r0, [r3, #0x30]
	ldr r0, _080F5718 @ =0x08106DF1
	str r0, [r3, #0x24]
_080F56F4:
	movs r0, #0x00
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F5708: .4byte 0xFFFF0000
_080F570C: .4byte 0x03000FD8
_080F5710: .4byte sub_8100E5C
_080F5714: .4byte 0x00001788
_080F5718: .4byte sub_8106DF0
	thumb_func_start sub_80F571C
sub_80F571C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r6, r2, #0x0
	ldr r3, _080F5760 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldm r6!, {r1}
	lsls r1, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x7C]
	mov r10, r0
	ldr r0, [r6, #0x08]
	movs r1, #0x04
	ands r0, r1
	adds r7, r3, #0x0
	cmp r0, #0x00
	bne _080F5764
	mov r1, r10
	ldr r0, [r1, #0x54]
	cmp r0, #0x00
	beq _080F5764
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x00]
	b _080F58FC
	.byte 0x00, 0x00
_080F5760: .4byte 0x03000FD8
_080F5764:
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	beq _080F57D8
	ldr r3, [r7, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r0, r3, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _080F57D8
	movs r4, #0x03
	ands r4, r1
	cmp r4, #0x00
	beq _080F57D8
	ldrb r1, [r3, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080F57D8
	adds r0, r3, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r1, r1, r2
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldrh r1, [r1, #0x00]
	ldrh r0, [r0, #0x00]
	orrs r1, r0
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	ands r1, r0
	cmp r1, #0x00
	bne _080F57D8
	cmp r4, #0x03
	beq _080F57CA
	ldr r0, _080F57D4 @ =0x080FD8BD
	movs r1, #0x00
	bl sub_807FF48
	ldr r1, [r7, #0x00]
	adds r1, r1, r5
	ldrb r0, [r1, #0x00]
	movs r2, #0x03
	orrs r0, r2
	strb r0, [r1, #0x00]
_080F57CA:
	ldr r1, [sp, #0x004]
	ldr r0, [r1, #0x14]
	str r0, [r1, #0x00]
	b _080F58FC
	.byte 0x00, 0x00
_080F57D4: .4byte sub_80FD8BC
_080F57D8:
	ldr r0, [r6, #0x00]
	mov r2, r10
	adds r2, #0x08
	str r2, [sp, #0x008]
	cmp r0, #0x08
	ble _080F5846
	movs r3, #0x02
	mov r9, r3
	cmp r0, #0x0F
	bne _080F57F0
	movs r0, #0x01
	mov r9, r0
_080F57F0:
	movs r2, #0x00
	mov r8, r2
_080F57F4:
	ldr r0, _080F587C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r7, r2, #0x0
	cmp r0, #0x00
	beq _080F5838
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1E
	cmp r0, r9
	bne _080F5838
	mov r1, r8
	lsls r4, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r4, r4, r2
	lsrs r3, r4, #0x10
	mov r8, r3
	asrs r4, r4, #0x10
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080F5838
	str r5, [r6, #0x00]
_080F5838:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r7, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x07
	ble _080F57F4
_080F5846:
	ldr r3, _080F587C @ =0x03000FD8
	ldr r1, [r3, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x08]
	movs r1, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080F5880
	ldr r1, [r3, #0x00]
	ldr r0, [r6, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r1, #0x08
	ldr r2, [r6, #0x04]
	ldr r0, [sp, #0x008]
	bl sub_8086318
	b _080F5896
	.byte 0x00, 0x00
_080F587C: .4byte 0x03000FD8
_080F5880:
	ldr r1, [r3, #0x00]
	ldr r0, [r6, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r1, #0x08
	ldr r2, [r6, #0x04]
	ldr r0, [sp, #0x008]
	bl sub_8086150
_080F5896:
	ldr r0, [r6, #0x08]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F58B0
	ldr r2, [sp, #0x004]
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
_080F58B0:
	ldr r1, [r6, #0x0C]
	ldr r3, _080F5910 @ =0xFFFF0000
	cmp r1, r3
	ble _080F58BE
	mov r0, r10
	adds r0, #0xA4
	str r1, [r0, #0x00]
_080F58BE:
	ldr r1, [r6, #0x10]
	cmp r1, r3
	ble _080F58CA
	mov r0, r10
	adds r0, #0xA8
	str r1, [r0, #0x00]
_080F58CA:
	ldr r2, [r6, #0x14]
	cmp r2, r3
	ble _080F58D6
	mov r0, r10
	adds r0, #0xAC
	str r2, [r0, #0x00]
_080F58D6:
	ldr r0, _080F5914 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r1, [r3, #0x24]
	ldr r0, _080F5918 @ =0x08100E5D
	cmp r1, r0
	beq _080F58FC
	movs r2, #0x80
	lsls r2, r2, #0x02
	ldr r0, [sp, #0x000]
	ldr r1, [r0, #0x2C]
	ldr r0, _080F591C @ =0x00001788
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	orrs r0, r2
	str r0, [r1, #0x00]
	movs r0, #0x0A
	strh r0, [r3, #0x30]
	ldr r0, _080F5920 @ =0x08106DF1
	str r0, [r3, #0x24]
_080F58FC:
	movs r0, #0x00
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F5910: .4byte 0xFFFF0000
_080F5914: .4byte 0x03000FD8
_080F5918: .4byte sub_8100E5C
_080F591C: .4byte 0x00001788
_080F5920: .4byte sub_8106DF0
