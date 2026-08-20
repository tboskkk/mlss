	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F53E0
sub_80F53E0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r2, #0x0
	ldr r0, _080F5408 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldm r4!, {r0}
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r0, r1, r0
	ldr r3, [r0, #0x00]
	adds r5, r3, #0x0
	adds r5, #0x08
	ldm r4!, {r0}
	cmp r0, #0x01
	beq _080F5452
	cmp r0, #0x01
	bgt _080F540C
	cmp r0, #0x00
	beq _080F5412
	b _080F546C
_080F5408: .4byte 0x03000FD8
_080F540C:
	cmp r0, #0x02
	beq _080F5462
	b _080F546C
_080F5412:
	adds r3, #0x80
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x1D
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x03
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080F5434
	adds r1, #0xFF
_080F5434:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080F543E
	adds r2, #0xFF
_080F543E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080F5448
	adds r3, #0xFF
_080F5448:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	bl sub_80DF024
	b _080F546C
_080F5452:
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r1, r0
	ldr r1, [r0, #0x00]
	adds r0, r3, #0x0
	bl sub_807FDE8
	b _080F546C
_080F5462:
	ldr r1, [r4, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r0, r3, r2
	strh r1, [r0, #0x00]
_080F546C:
	movs r0, #0x01
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F5478
sub_80F5478:
	push {r4, lr}
	ldr r0, _080F5498 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldm r2!, {r0}
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	ldm r2!, {r0}
	cmp r0, #0x01
	beq _080F54C4
	cmp r0, #0x01
	bgt _080F549C
	cmp r0, #0x00
	beq _080F54A2
	b _080F5500
_080F5498: .4byte 0x03000FD8
_080F549C:
	cmp r0, #0x02
	beq _080F54E8
	b _080F5500
_080F54A2:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r3, r4, r0
	ldrh r1, [r3, #0x00]
	ldr r0, _080F54BC @ =0x0000FFF3
	ands r0, r1
	strh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	ldr r2, _080F54C0 @ =0x7FFFFFFF
	adds r0, r4, #0x0
	bl sub_810857C
	b _080F5500
_080F54BC: .4byte 0x0000FFF3
_080F54C0: .4byte 0x7FFFFFFF
_080F54C4:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r3, r4, r0
	ldrh r1, [r3, #0x00]
	ldr r0, _080F54E0 @ =0x0000FFCF
	ands r0, r1
	strh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	ldr r2, _080F54E4 @ =0x7FFFFFFF
	adds r0, r4, #0x0
	bl sub_81086B4
	b _080F5500
	.byte 0x00, 0x00
_080F54E0: .4byte 0x0000FFCF
_080F54E4: .4byte 0x7FFFFFFF
_080F54E8:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r3, r4, r0
	ldrh r1, [r3, #0x00]
	ldr r0, _080F5508 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	ldr r2, _080F550C @ =0x7FFFFFFF
	adds r0, r4, #0x0
	bl sub_81087F0
_080F5500:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_080F5508: .4byte 0x0000FF3F
_080F550C: .4byte 0x7FFFFFFF
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
	thumb_func_start sub_80F5924
sub_80F5924:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	ldm r4!, {r0}
	cmp r0, #0x05
	bls _080F5934
	b _080F5A90
_080F5934:
	lsls r0, r0, #0x02
	ldr r1, _080F5940 @ =0x080F5944
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F5940: .4byte 0x080F5944
	.byte 0x5C, 0x59, 0x0F, 0x08, 0xC8, 0x59, 0x0F, 0x08, 0x18, 0x5A, 0x0F, 0x08, 0x00, 0x5A, 0x0F, 0x08
	.byte 0x38, 0x5A, 0x0F, 0x08, 0x50, 0x5A, 0x0F, 0x08, 0x19, 0x48, 0x00, 0x68, 0x22, 0x68, 0x91, 0x00
	.byte 0x58, 0x30, 0x40, 0x18, 0x05, 0x68, 0x28, 0x1C, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x14, 0x38
	.byte 0x00, 0x68, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x06, 0x12, 0x28, 0x1C, 0xDC, 0x30, 0x00, 0x68
	.byte 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x03, 0x12, 0x28, 0x1C, 0xE0, 0x30, 0x00, 0x68, 0x00, 0x28
	.byte 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x00, 0x90, 0x88, 0x27, 0x7F, 0x00, 0xE8, 0x19, 0x00, 0x78
	.byte 0x40, 0x06, 0xC0, 0x0F, 0x01, 0x90, 0x00, 0x20, 0x02, 0x90, 0x10, 0x1C, 0x32, 0x1C, 0x85, 0xF7
	.byte 0x0F, 0xFB, 0x20, 0x68, 0x8C, 0xF7, 0xBC, 0xFA, 0x28, 0x69, 0x86, 0xF7, 0x67, 0xF9, 0x65, 0xE0
	.byte 0xD8, 0x0F, 0x00, 0x03, 0x0B, 0x48, 0x01, 0x68, 0x20, 0x68, 0x80, 0x00, 0x58, 0x31, 0x09, 0x18
	.byte 0x0C, 0x68, 0x09, 0x49, 0x60, 0x18, 0x01, 0x78, 0x02, 0x20, 0x08, 0x40, 0x00, 0x06, 0x05, 0x0E
	.byte 0x00, 0x2D, 0x43, 0xD1, 0x20, 0x1C, 0x08, 0x30, 0x90, 0xF7, 0x88, 0xFE, 0x8F, 0x23, 0x5B, 0x00
	.byte 0xE0, 0x18, 0x4A, 0xE0, 0xD8, 0x0F, 0x00, 0x03, 0x11, 0x01, 0x00, 0x00, 0x04, 0x48, 0x01, 0x68
	.byte 0x20, 0x68, 0x80, 0x00, 0x58, 0x31, 0x09, 0x18, 0x08, 0x68, 0x91, 0xF7, 0xBD, 0xFC, 0x3D, 0xE0
	.byte 0xD8, 0x0F, 0x00, 0x03, 0x06, 0x48, 0x01, 0x68, 0x20, 0x68, 0x80, 0x00, 0x58, 0x31, 0x09, 0x18
	.byte 0x0C, 0x68, 0x20, 0x1C, 0x85, 0xF7, 0xBE, 0xFE, 0x20, 0x1C, 0x8A, 0xF7, 0x07, 0xFA, 0x2D, 0xE0
	.byte 0xD8, 0x0F, 0x00, 0x03, 0x04, 0x48, 0x01, 0x68, 0x20, 0x68, 0x80, 0x00, 0x58, 0x31, 0x09, 0x18
	.byte 0x08, 0x68, 0x85, 0xF7, 0xAF, 0xFE, 0x21, 0xE0, 0xD8, 0x0F, 0x00, 0x03, 0x09, 0x48, 0x01, 0x68
	.byte 0x20, 0x68, 0x80, 0x00, 0x58, 0x31, 0x09, 0x18, 0x0C, 0x68, 0x07, 0x4F, 0xE0, 0x19, 0x01, 0x78
	.byte 0x02, 0x20, 0x08, 0x40, 0x00, 0x06, 0x05, 0x0E, 0x00, 0x2D, 0x07, 0xD0, 0x58, 0x69, 0x18, 0x60
	.byte 0x00, 0x20, 0x0C, 0xE0, 0xD8, 0x0F, 0x00, 0x03, 0x11, 0x01, 0x00, 0x00, 0x20, 0x1C, 0x08, 0x30
	.byte 0x91, 0xF7, 0xDE, 0xFC, 0x8F, 0x21, 0x49, 0x00, 0x60, 0x18, 0x05, 0x80
_080F5A90:
	movs r0, #0x01
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F5A9C
sub_80F5A9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r3, r1, #0x0
	ldr r0, _080F5AC0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldm r2!, {r0}
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r5, [r1, #0x00]
	ldm r2!, {r0}
	cmp r0, #0x00
	beq _080F5AC4
	cmp r0, #0x01
	beq _080F5B12
	b _080F5B36
_080F5AC0: .4byte 0x03000FD8
_080F5AC4:
	ldr r7, [r2, #0x00]
	movs r0, #0x00
	mov r8, r0
	adds r6, r5, #0x0
	adds r6, #0xF6
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, r7
	bgt _080F5B0A
	ldr r4, _080F5AEC @ =0x00000111
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080F5AF0
	ldr r0, [r3, #0x14]
	str r0, [r3, #0x00]
	movs r0, #0x00
	b _080F5B4E
_080F5AEC: .4byte 0x00000111
_080F5AF0:
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8086700
	mov r0, r8
	strh r0, [r6, #0x00]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r5, r1
	mov r1, r8
	strh r1, [r0, #0x00]
	b _080F5B3A
_080F5B0A:
	ldrh r0, [r6, #0x00]
	subs r0, r0, r7
	strh r0, [r6, #0x00]
	b _080F5B36
_080F5B12:
	ldr r7, [r2, #0x00]
	movs r4, #0x03
	mov r8, r4
	adds r2, r5, #0x0
	adds r2, #0xF6
	movs r0, #0x00
	ldsh r3, [r2, r0]
	adds r1, r3, r7
	adds r0, r5, #0x0
	adds r0, #0xF8
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _080F5B30
	subs r7, r0, r3
_080F5B30:
	ldrh r0, [r2, #0x00]
	adds r0, r0, r7
	strh r0, [r2, #0x00]
_080F5B36:
	adds r4, r5, #0x0
	adds r4, #0x08
_080F5B3A:
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	mov r2, r8
	movs r3, #0x00
	bl sub_807D5E8
	movs r0, #0x01
_080F5B4E:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F5B5C
sub_80F5B5C:
	push {r4, r5, lr}
	ldr r0, _080F5B78 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x7C]
	ldr r4, [r3, #0x38]
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F5BBA
	cmp r2, #0x01
	bgt _080F5B7C
	cmp r2, #0x00
	beq _080F5B86
	b _080F5BF6
	.byte 0x00, 0x00
_080F5B78: .4byte 0x03000FD8
_080F5B7C:
	cmp r2, #0x02
	beq _080F5B86
	cmp r2, #0x03
	beq _080F5BBA
	b _080F5BF6
_080F5B86:
	adds r1, r3, #0x0
	adds r1, #0x80
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x10]
	cmp r1, #0x00
	beq _080F5B9E
	ldrb r0, [r1, #0x12]
	orrs r0, r2
	strb r0, [r1, #0x12]
_080F5B9E:
	cmp r4, #0x00
	beq _080F5BF6
	adds r1, r4, #0x0
	adds r1, #0x78
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	cmp r1, #0x00
	beq _080F5BF6
	ldrb r0, [r1, #0x12]
	orrs r0, r2
	strb r0, [r1, #0x12]
	b _080F5BF6
_080F5BBA:
	adds r2, r3, #0x0
	adds r2, #0x80
	ldrb r1, [r2, #0x00]
	movs r5, #0x11
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x10]
	cmp r2, #0x00
	beq _080F5BD8
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
_080F5BD8:
	cmp r4, #0x00
	beq _080F5BF6
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	beq _080F5BF6
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
_080F5BF6:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F5C00
sub_80F5C00:
	push {r4, lr}
	ldr r0, [r2, #0x00]
	cmp r0, #0x3F
	bne _080F5C14
	adds r0, r1, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r2, #0x00]
_080F5C14:
	ldr r0, _080F5C30 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldm r2!, {r0}
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	ldr r1, [r2, #0x00]
	asrs r0, r1, #0x01
	cmp r0, #0x00
	beq _080F5C34
	cmp r0, #0x01
	beq _080F5C68
	b _080F5C86
_080F5C30: .4byte 0x03000FD8
_080F5C34:
	movs r2, #0x01
	ands r2, r1
	movs r0, #0x7F
	adds r0, r0, r4
	mov r12, r0
	lsls r3, r2, #0x07
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	orrs r0, r3
	mov r1, r12
	strb r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x80
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	lsls r2, r2, #0x01
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	b _080F5C86
_080F5C68:
	adds r2, r1, #0x0
	ands r2, r0
	adds r4, #0x80
	lsls r3, r2, #0x02
	ldrb r1, [r4, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	lsls r2, r2, #0x03
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x00]
_080F5C86:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F5C90
sub_80F5C90:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r2, #0x0
	ldm r5!, {r0}
	cmp r0, #0x01
	beq _080F5D3C
	cmp r0, #0x01
	bgt _080F5CA6
	cmp r0, #0x00
	beq _080F5CAC
	b _080F5DA2
_080F5CA6:
	cmp r0, #0x02
	beq _080F5D48
	b _080F5DA2
_080F5CAC:
	ldr r3, [r5, #0x00]
	cmp r3, #0x00
	bne _080F5CC8
	ldr r0, _080F5CC4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xBB
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x16
	b _080F5CEC
	.byte 0x00, 0x00
_080F5CC4: .4byte 0x03000FD8
_080F5CC8:
	cmp r3, #0x01
	bne _080F5CE0
	ldr r0, _080F5CDC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xBB
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	lsls r1, r1, #0x0C
	b _080F5CEC
_080F5CDC: .4byte 0x03000FD8
_080F5CE0:
	ldr r0, _080F5D30 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _080F5D34 @ =0x000002EE
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x12
_080F5CEC:
	lsrs r4, r1, #0x16
	adds r7, r0, #0x0
	ldr r0, [r7, #0x00]
	lsls r1, r3, #0x02
	movs r6, #0xB8
	lsls r6, r6, #0x02
	adds r0, r0, r6
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F5D06
	bl sprite_heap_free
_080F5D06:
	ldr r1, _080F5D38 @ =0x08500A98
	ldr r2, [r5, #0x04]
	movs r0, #0x2C
	muls r0, r2
	adds r1, #0x08
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	adds r1, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	ldr r2, [r7, #0x00]
	ldr r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r2, r2, r6
	adds r2, r2, r1
	str r0, [r2, #0x00]
	b _080F5DA2
_080F5D30: .4byte 0x03000FD8
_080F5D34: .4byte 0x000002EE
_080F5D38: .4byte 0x08500A98
_080F5D3C:
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	blt _080F5DA2
	bl nullsub_3
	b _080F5DA2
_080F5D48:
	ldr r0, _080F5DAC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r5, #0x04]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r12, r0
	ldr r1, [r5, #0x00]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080F5D64
	adds r0, #0xFF
_080F5D64:
	asrs r6, r0, #0x08
	mov r0, r12
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080F5D72
	adds r0, #0xFF
_080F5D72:
	asrs r3, r0, #0x08
	mov r0, r12
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080F5D80
	adds r0, #0xFF
_080F5D80:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	movs r4, #0x00
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	bne _080F5D92
	movs r4, #0x01
_080F5D92:
	str r4, [sp, #0x008]
	adds r0, r2, #0x0
	adds r2, r6, #0x0
	bl sub_807AFD4
	ldr r0, [r5, #0x04]
	bl sub_8081F34
_080F5DA2:
	movs r0, #0x01
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F5DAC: .4byte 0x03000FD8
	thumb_func_start script_cmd_load_sprite
script_cmd_load_sprite: @ 080F5DB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r2, #0x0
	ldm r4!, {r0}
	cmp r0, #0x01
	beq _080F5DE2
	cmp r0, #0x01
	bgt _080F5DC8
	cmp r0, #0x00
	beq _080F5DD4
	b _080F5F16
_080F5DC8:
	cmp r0, #0x02
	beq _080F5DF0
	cmp r0, #0x03
	bne _080F5DD2
	b _080F5ED8
_080F5DD2:
	b _080F5F16
_080F5DD4:
	ldr r0, [r4, #0x00]
	bl sub_8082AAC
	ldr r0, [r4, #0x00]
	bl sub_8082A6C
	b _080F5F16
_080F5DE2:
	ldrh r0, [r4, #0x00]
	bl sub_8082898
	ldrh r0, [r4, #0x00]
	bl sub_8082920
	b _080F5F16
_080F5DF0:
	ldr r0, _080F5E8C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r0, r1, r0
	ldr r5, [r0, #0x00]
	ldr r0, [r4, #0x04]
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xE4
	ldr r3, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	str r3, [r1, #0x00]
	adds r2, #0x08
	movs r0, #0x00
	ldsh r3, [r2, r0]
	adds r1, #0x08
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	strh r3, [r1, #0x00]
	subs r2, #0x21
	movs r3, #0x00
	ldsb r3, [r2, r3]
	subs r1, #0x21
	ldrb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	strb r3, [r1, #0x00]
	adds r2, #0x01
	movs r3, #0x00
	ldsb r3, [r2, r3]
	adds r1, #0x01
	ldrb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	strb r3, [r1, #0x00]
	adds r2, #0x01
	movs r3, #0x00
	ldsb r3, [r2, r3]
	adds r1, #0x01
	ldrb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	strb r3, [r1, #0x00]
	adds r2, #0x23
	ldr r3, [r2, #0x00]
	adds r1, #0x23
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	str r3, [r1, #0x00]
	ldr r1, [r5, #0x10]
	ldr r2, [r4, #0x10]
	mov r8, r2
	str r2, [r5, #0x10]
	str r1, [r4, #0x10]
	ldrb r0, [r1, #0x12]
	lsls r0, r0, #0x1A
	lsrs r7, r0, #0x1F
	ldrb r0, [r2, #0x12]
	lsls r0, r0, #0x1A
	lsrs r6, r0, #0x1F
	cmp r7, #0x00
	beq _080F5E90
	cmp r6, #0x00
	bne _080F5E9E
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r2, #0x01
	negs r2, r2
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	b _080F5E9A
	.byte 0x00, 0x00
_080F5E8C: .4byte 0x03000FD8
_080F5E90:
	cmp r6, #0x00
	beq _080F5EB4
	adds r0, r1, #0x0
	bl sub_807FB64
_080F5E9A:
	cmp r6, #0x00
	beq _080F5EB4
_080F5E9E:
	cmp r7, #0x00
	bne _080F5EBE
	adds r0, r5, #0x0
	adds r0, #0x08
	movs r2, #0x01
	negs r2, r2
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	b _080F5EBE
_080F5EB4:
	cmp r7, #0x00
	beq _080F5EBE
	mov r0, r8
	bl sub_807FB64
_080F5EBE:
	ldr r1, [r5, #0x18]
	ldr r0, [r4, #0x18]
	str r0, [r5, #0x18]
	str r1, [r4, #0x18]
	ldr r1, [r5, #0x1C]
	ldr r0, [r4, #0x1C]
	str r0, [r5, #0x1C]
	str r1, [r4, #0x1C]
	ldr r1, [r5, #0x20]
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x20]
	str r1, [r4, #0x20]
	b _080F5F16
_080F5ED8:
	ldr r0, _080F5F24 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r5, [r1, #0x00]
	adds r3, r5, #0x0
	adds r3, #0xE4
	ldr r1, _080F5F28 @ =0x08500A98
	ldr r2, [r4, #0x04]
	movs r0, #0x2C
	muls r0, r2
	adds r1, #0x08
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	ldrb r0, [r0, #0x04]
	adds r1, r5, #0x0
	adds r1, #0xCB
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x05]
	adds r0, r5, #0x0
	adds r0, #0xCC
	strb r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x06]
	adds r0, r5, #0x0
	adds r0, #0xCD
	strb r1, [r0, #0x00]
_080F5F16:
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F5F24: .4byte 0x03000FD8
_080F5F28: .4byte 0x08500A98
	thumb_func_start sub_80F5F2C
sub_80F5F2C:
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0x2C]
	ldr r3, _080F5F48 @ =0x0000179C
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F5F4C
	adds r0, r1, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r3, r0, #0x1C
	b _080F5F52
	.byte 0x00, 0x00
_080F5F48: .4byte 0x0000179C
_080F5F4C:
	subs r0, #0x07
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080F5F52:
	ldr r0, _080F5FF4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	mov r12, r0
	mov r5, r12
	adds r5, #0x08
	lsls r0, r3, #0x02
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	adds r4, r3, #0x0
	adds r4, #0x08
	mov r6, r12
	adds r6, #0xBC
	adds r0, r3, #0x0
	adds r0, #0xBC
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xC0
	ldrh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0xC0
	strh r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xC2
	ldrh r0, [r0, #0x00]
	mov r1, r12
	adds r1, #0xC2
	strh r0, [r1, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xC4
	ldr r1, [r5, #0x38]
	ldr r0, [r4, #0x38]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080F5FA4
	adds r0, #0xFF
_080F5FA4:
	asrs r0, r0, #0x08
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	mov r1, r12
	adds r1, #0xC4
	strh r0, [r1, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xC6
	ldr r1, [r5, #0x3C]
	ldr r0, [r4, #0x3C]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080F5FC0
	adds r0, #0xFF
_080F5FC0:
	asrs r0, r0, #0x08
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	mov r2, r12
	adds r2, #0xC6
	strh r0, [r2, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xC8
	ldr r1, [r5, #0x40]
	ldr r0, [r4, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080F5FDC
	adds r0, #0xFF
_080F5FDC:
	asrs r0, r0, #0x08
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	mov r1, r12
	adds r1, #0xC8
	strh r0, [r1, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x00]
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080F5FF4: .4byte 0x03000FD8
	thumb_func_start sub_80F5FF8
sub_80F5FF8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	adds r7, r2, #0x0
	ldr r2, [r0, #0x2C]
	ldm r7!, {r1}
	ldr r0, _080F60B4 @ =0x0000179D
	mov r10, r0
	add r2, r10
	lsls r1, r1, #0x07
	ldrb r3, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bge _080F6026
	negs r0, r0
	str r0, [r7, #0x00]
_080F6026:
	mov r1, r9
	ldr r5, [r1, #0x2C]
	ldr r0, [r7, #0x00]
	ldr r1, [r7, #0x04]
	bl __divsi3
	ldr r1, _080F60B8 @ =0x0000179F
	adds r6, r5, r1
	movs r1, #0x1F
	mov r8, r1
	mov r1, r8
	ands r0, r1
	lsls r3, r0, #0x02
	ldrb r2, [r6, #0x00]
	movs r4, #0x7D
	negs r4, r4
	adds r1, r4, #0x0
	ands r1, r2
	orrs r1, r3
	strb r1, [r6, #0x00]
	ldr r3, _080F60BC @ =0x0000179E
	adds r5, r5, r3
	lsls r0, r0, #0x05
	ldrh r2, [r5, #0x00]
	ldr r1, _080F60C0 @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r5, #0x00]
	adds r7, #0x04
	mov r0, r9
	ldr r2, [r0, #0x2C]
	adds r2, r2, r3
	ldm r7!, {r1}
	mov r0, r8
	ands r1, r0
	ldrb r3, [r2, #0x00]
	movs r0, #0x20
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r9
	ldr r2, [r1, #0x2C]
	ldr r1, [r7, #0x00]
	add r2, r10
	movs r0, #0x1F
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r0, [r2, #0x00]
	ands r4, r0
	orrs r4, r1
	strb r4, [r2, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x2C]
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F60B4: .4byte 0x0000179D
_080F60B8: .4byte 0x0000179F
_080F60BC: .4byte 0x0000179E
_080F60C0: .4byte 0xFFFFFC1F
	thumb_func_start sub_80F60C4
sub_80F60C4:
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	ldr r1, _080F6108 @ =0x03001038
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x00]
	bl _call_via_r1
	ldr r1, [r6, #0x04]
	muls r0, r1
	cmp r0, #0x00
	bge _080F60E0
	adds r0, #0x1F
_080F60E0:
	asrs r4, r0, #0x05
	ldr r3, _080F610C @ =0x03000FD8
	ldr r0, [r3, #0x00]
	ldr r2, _080F6110 @ =0x0000035A
	adds r1, r0, r2
	movs r2, #0x00
	strh r2, [r1, #0x00]
	movs r1, #0xD6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	strh r2, [r0, #0x00]
	ldr r0, [r6, #0x00]
	cmp r0, #0x07
	bhi _080F61C6
	lsls r0, r0, #0x02
	ldr r1, _080F6114 @ =0x080F6118
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F6108: .4byte 0x03001038
_080F610C: .4byte 0x03000FD8
_080F6110: .4byte 0x0000035A
_080F6114: .4byte 0x080F6118
	.byte 0x38, 0x61, 0x0F, 0x08, 0x48, 0x61, 0x0F, 0x08, 0x56, 0x61, 0x0F, 0x08, 0x64, 0x61, 0x0F, 0x08
	.byte 0x7C, 0x61, 0x0F, 0x08, 0x8C, 0x61, 0x0F, 0x08, 0xA4, 0x61, 0x0F, 0x08, 0xB4, 0x61, 0x0F, 0x08
	.byte 0x19, 0x68, 0x70, 0x68, 0x40, 0x42, 0x01, 0x4A, 0x35, 0xE0, 0x00, 0x00, 0x5A, 0x03, 0x00, 0x00
	.byte 0x18, 0x68, 0xD6, 0x23, 0x9B, 0x00, 0xC1, 0x18, 0x0C, 0x80, 0x61, 0x42, 0x14, 0xE0, 0x18, 0x68
	.byte 0x71, 0x68, 0xD6, 0x23, 0x9B, 0x00, 0xC0, 0x18, 0x01, 0x80, 0x30, 0xE0, 0x18, 0x68, 0xD6, 0x22
	.byte 0x92, 0x00, 0x81, 0x18, 0x0C, 0x80, 0x02, 0x4B, 0xC0, 0x18, 0x04, 0x80, 0x27, 0xE0, 0x00, 0x00
	.byte 0x5A, 0x03, 0x00, 0x00, 0x18, 0x68, 0x71, 0x68, 0x01, 0x4A, 0x80, 0x18, 0x01, 0x80, 0x1E, 0xE0
	.byte 0x5A, 0x03, 0x00, 0x00, 0x18, 0x68, 0x62, 0x42, 0xD6, 0x23, 0x9B, 0x00, 0xC1, 0x18, 0x0A, 0x80
	.byte 0x01, 0x49, 0x40, 0x18, 0x04, 0x80, 0x12, 0xE0, 0x5A, 0x03, 0x00, 0x00, 0x19, 0x68, 0x70, 0x68
	.byte 0x40, 0x42, 0xD6, 0x22, 0x92, 0x00, 0x89, 0x18, 0x08, 0x80, 0x08, 0xE0, 0x18, 0x68, 0x62, 0x42
	.byte 0xD6, 0x23, 0x9B, 0x00, 0xC1, 0x18, 0x0A, 0x80, 0x10, 0x49, 0x40, 0x18, 0x02, 0x80
_080F61C6:
	ldr r4, _080F6208 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r5, #0x93
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	ldr r1, [r4, #0x00]
	movs r3, #0xD5
	lsls r3, r3, #0x02
	adds r2, r1, r3
	strh r0, [r2, #0x00]
	adds r1, r1, r5
	ldr r0, [r1, #0x00]
	bl sub_8082D40
	ldr r2, [r4, #0x00]
	ldr r3, _080F620C @ =0x00000356
	adds r1, r2, r3
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x08]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F6210
	movs r0, #0x0F
	adds r3, r1, #0x0
	ands r3, r0
	b _080F6212
	.byte 0x00, 0x00, 0x5A, 0x03, 0x00, 0x00
_080F6208: .4byte 0x03000FD8
_080F620C: .4byte 0x00000356
_080F6210:
	lsls r3, r1, #0x04
_080F6212:
	movs r1, #0xD7
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r1, #0x00
	strh r3, [r0, #0x00]
	ldr r0, _080F6238 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _080F623C @ =0x0000035E
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldrh r2, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	cmp r1, #0x00
	beq _080F6240
	movs r1, #0xA0
	lsls r1, r1, #0x03
	b _080F6244
_080F6238: .4byte 0x03000FD8
_080F623C: .4byte 0x0000035E
_080F6240:
	movs r1, #0x80
	lsls r1, r1, #0x01
_080F6244:
	orrs r1, r2
	strh r1, [r0, #0x00]
	movs r0, #0x00
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80F6250
sub_80F6250:
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	ldr r4, _080F62A4 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r5, #0x93
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	ldr r1, [r4, #0x00]
	movs r3, #0xD5
	lsls r3, r3, #0x02
	adds r2, r1, r3
	strh r0, [r2, #0x00]
	adds r1, r1, r5
	ldr r0, [r1, #0x00]
	bl sub_8082D40
	ldr r2, [r4, #0x00]
	ldr r3, _080F62A8 @ =0x00000356
	adds r1, r2, r3
	strh r0, [r1, #0x00]
	ldm r6!, {r1}
	adds r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldm r6!, {r1}
	adds r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r1, [r6, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F62AC
	movs r0, #0x0F
	adds r3, r1, #0x0
	ands r3, r0
	b _080F62AE
	.byte 0x00, 0x00
_080F62A4: .4byte 0x03000FD8
_080F62A8: .4byte 0x00000356
_080F62AC:
	lsls r3, r1, #0x04
_080F62AE:
	movs r1, #0xD7
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r1, #0x00
	strh r3, [r0, #0x00]
	ldr r0, _080F62D4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _080F62D8 @ =0x0000035E
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldrh r2, [r0, #0x00]
	ldr r1, [r6, #0x04]
	cmp r1, #0x00
	beq _080F62DC
	movs r1, #0xA0
	lsls r1, r1, #0x03
	b _080F62E0
_080F62D4: .4byte 0x03000FD8
_080F62D8: .4byte 0x0000035E
_080F62DC:
	movs r1, #0x80
	lsls r1, r1, #0x01
_080F62E0:
	orrs r1, r2
	strh r1, [r0, #0x00]
	movs r0, #0x00
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80F62EC
sub_80F62EC:
	push {r4, lr}
	add sp, #-0x010
	adds r4, r2, #0x0
	ldr r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F639A
	movs r0, #0x04
	ands r1, r0
	cmp r1, #0x00
	bne _080F630E
	ldr r0, _080F636C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x04]
	cmp r0, #0x00
	beq _080F6394
_080F630E:
	ldr r2, _080F6370 @ =0x03001034
	ldr r0, _080F6374 @ =0x08198154
	ldr r1, _080F6378 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _080F637C @ =0x02000080
	ldr r1, _080F6380 @ =0x03000FDC
	ldr r1, [r1, #0x00]
	ldr r2, _080F6384 @ =0x00003AF0
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #0x03
	bl _call_via_r3
	ldr r3, _080F636C @ =0x03000FD8
	ldr r1, [r3, #0x00]
	ldr r0, _080F6388 @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x02
	ands r0, r1
	movs r2, #0x00
	cmp r0, #0x00
	beq _080F6354
	ldr r2, _080F638C @ =0x00007FFF
_080F6354:
	ldr r0, _080F6390 @ =0x0000FFFF
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	adds r0, r3, #0x0
	movs r1, #0x04
	movs r3, #0x10
	bl sub_81151E4
	b _080F63AA
_080F636C: .4byte 0x03000FD8
_080F6370: .4byte 0x03001034
_080F6374: .4byte 0x08198154
_080F6378: .4byte 0x081980D8
_080F637C: .4byte 0x02000080
_080F6380: .4byte 0x03000FDC
_080F6384: .4byte 0x00003AF0
_080F6388: .4byte 0x000002BF
_080F638C: .4byte 0x00007FFF
_080F6390: .4byte 0x0000FFFF
_080F6394:
	bl sub_8106724
	b _080F63AA
_080F639A:
	ldr r0, _080F63B4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _080F63B8 @ =0x000002BF
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1, #0x00]
_080F63AA:
	movs r0, #0x01
	add sp, #0x010
	pop {r4}
	pop {r1}
	bx r1
_080F63B4: .4byte 0x03000FD8
_080F63B8: .4byte 0x000002BF
	thumb_func_start sub_80F63BC
sub_80F63BC:
	push {r4, lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F63F4
	cmp r2, #0x01
	bgt _080F63CE
	cmp r2, #0x00
	beq _080F63D4
	b _080F649A
_080F63CE:
	cmp r2, #0x02
	beq _080F6480
	b _080F649A
_080F63D4:
	ldr r0, _080F63EC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _080F63F0 @ =0x00000351
	adds r1, r0, r2
	movs r2, #0x80
	strb r2, [r1, #0x00]
	movs r1, #0xD4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	strb r2, [r0, #0x00]
	b _080F649A
	.byte 0x00, 0x00
_080F63EC: .4byte 0x03000FD8
_080F63F0: .4byte 0x00000351
_080F63F4:
	ldr r4, _080F6474 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8109600
	bl sub_810D170
	bl sub_810CCC8
	bl sub_810CCB0
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x7C]
	adds r0, #0x08
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x00]
	ldr r1, _080F6478 @ =0x00000346
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _080F6448
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _080F6448
	adds r0, r1, #0x0
	adds r0, #0x08
	bl sub_8086424
_080F6448:
	ldr r0, _080F6474 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _080F6468
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _080F6468
	adds r0, r1, #0x0
	adds r0, #0x08
	bl sub_8086424
_080F6468:
	ldr r0, _080F6474 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _080F647C @ =0x08100E5D
	str r0, [r1, #0x24]
	b _080F649A
	.byte 0x00, 0x00
_080F6474: .4byte 0x03000FD8
_080F6478: .4byte 0x00000346
_080F647C: .4byte sub_8100E5C
_080F6480:
	ldr r0, _080F64A4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0xAD
	lsls r0, r0, #0x02
	adds r2, r1, r0
	movs r0, #0x00
	strh r0, [r2, #0x00]
	ldr r2, _080F64A8 @ =0x000002C1
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	subs r0, #0x09
	ands r0, r2
	strb r0, [r1, #0x00]
_080F649A:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F64A4: .4byte 0x03000FD8
_080F64A8: .4byte 0x000002C1
	thumb_func_start sub_80F64AC
sub_80F64AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	mov r10, r0
	mov r9, r3
	movs r0, #0x04
	ldsh r1, [r3, r0]
	add r3, sp, #0x01C
	movs r0, #0x00
	str r0, [sp, #0x000]
	mov r0, r10
	add r2, sp, #0x018
	bl sub_80F7B1C
	mov r1, r9
	ldr r2, [r1, #0x04]
	cmp r2, #0x07
	bgt _080F64EC
	ldr r0, _080F64E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F64FC
	.byte 0x00, 0x00
_080F64E8: .4byte 0x03000FD8
_080F64EC:
	ldr r1, _080F6554 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
_080F64FC:
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [sp, #0x018]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _080F6558 @ =0x083BA4B4
	mov r3, r9
	ldrb r0, [r3, #0x08]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	mov r8, r0
	ldr r1, [r3, #0x0C]
	movs r5, #0x1F
	ands r5, r1
	lsls r0, r1, #0x01
	movs r3, #0xF0
	lsls r3, r3, #0x02
	adds r2, r3, #0x0
	ands r0, r2
	orrs r5, r0
	lsls r1, r1, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ands r1, r0
	orrs r5, r1
	movs r0, #0x03
	ands r0, r5
	mov r3, r9
	ldr r7, [r3, #0x08]
	cmp r0, #0x02
	bne _080F656E
	mov r0, r8
	cmp r0, #0x03
	bhi _080F655C
	movs r1, #0x04
	mov r8, r1
	b _080F656E
	.byte 0x00, 0x00
_080F6554: .4byte 0x03000FDC
_080F6558: .4byte 0x083BA4B4
_080F655C:
	mov r0, r8
	adds r0, #0x01
	movs r2, #0x02
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080F656E:
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r5, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _080F659C
	movs r2, #0x02
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x01C]
	subs r1, r1, r0
	mov r0, r8
	adds r0, #0x03
	lsls r0, r0, #0x10
	asrs r0, r0, #0x0D
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080F6594
	movs r2, #0x01
_080F6594:
	lsls r0, r2, #0x08
	ands r0, r3
	orrs r5, r0
	b _080F65BE
_080F659C:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0x00
	beq _080F65BE
	movs r0, #0x80
	ands r0, r5
	movs r1, #0x18
	cmp r0, #0x00
	beq _080F65B0
	ldr r1, _080F65E4 @ =0x0000FFE8
_080F65B0:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080F65BE:
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r5
	movs r1, #0x80
	lsls r1, r1, #0x02
	cmp r0, r1
	bne _080F65E8
	ldr r2, [sp, #0x01C]
	subs r2, #0x0D
	mov r1, r8
	adds r1, #0x02
	lsls r1, r1, #0x03
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	subs r2, r2, r1
	str r2, [sp, #0x01C]
	b _080F65EE
	.byte 0x00, 0x00
_080F65E4: .4byte 0x0000FFE8
_080F65E8:
	ldr r0, [sp, #0x01C]
	subs r0, #0x02
	str r0, [sp, #0x01C]
_080F65EE:
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	bge _080F6606
	movs r0, #0x00
	str r0, [sp, #0x01C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _080F6630
	movs r0, #0x10
	b _080F6626
_080F6606:
	mov r3, r8
	lsls r1, r3, #0x03
	adds r0, r0, r1
	adds r0, #0x14
	cmp r0, #0x9F
	ble _080F6630
	movs r0, #0x90
	subs r1, r0, r1
	str r1, [sp, #0x01C]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r5
	cmp r0, #0x00
	beq _080F6630
	adds r0, r1, #0x0
	subs r0, #0x10
_080F6626:
	str r0, [sp, #0x01C]
	movs r0, #0x40
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_080F6630:
	asrs r4, r7, #0x08
	movs r7, #0xFF
	ands r4, r7
	cmp r4, #0x00
	bne _080F664A
	mov r1, r10
	ldr r0, [r1, #0x30]
	mov r2, r9
	ldr r1, [r2, #0x14]
	bl sub_80E9310
	lsrs r4, r0, #0x10
	ands r4, r7
_080F664A:
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080F6670
	adds r0, r4, #0x2
	movs r1, #0x03
	bl __divsi3
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _080F6670
	ldr r0, [sp, #0x018]
	adds r0, #0x04
	str r0, [sp, #0x018]
_080F6670:
	lsls r0, r4, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x00
	bne _080F667C
	movs r4, #0x02
	movs r7, #0x02
_080F667C:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _080F6690
	movs r6, #0x20
	ldr r0, _080F668C @ =0x0000FF7F
	ands r5, r0
	movs r0, #0x40
	b _080F6698
_080F668C: .4byte 0x0000FF7F
_080F6690:
	cmp r0, #0xEF
	ble _080F669A
	movs r6, #0xD0
	movs r0, #0xC0
_080F6698:
	orrs r5, r0
_080F669A:
	ldr r0, [sp, #0x018]
	subs r0, #0x10
	lsls r1, r4, #0x02
	subs r3, r0, r1
	str r3, [sp, #0x018]
	adds r1, r3, #0x0
	adds r1, #0x18
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r6, r0, #0x0
	cmp r1, r2
	ble _080F66B8
	adds r0, r2, #0x0
	subs r0, #0x18
	b _080F66C8
_080F66B8:
	lsls r1, r4, #0x03
	adds r0, r3, r1
	adds r0, #0x08
	cmp r0, r2
	bge _080F66CA
	adds r0, r2, #0x0
	subs r0, #0x08
	subs r0, r0, r1
_080F66C8:
	str r0, [sp, #0x018]
_080F66CA:
	asrs r2, r6, #0x10
	cmp r2, #0x17
	bgt _080F6708
	movs r1, #0xC0
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0xC0
	bne _080F66E4
	adds r0, r2, #0x0
	adds r0, #0x30
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080F66E6
_080F66E4:
	movs r6, #0x18
_080F66E6:
	movs r3, #0x00
	str r3, [sp, #0x018]
	ldr r0, _080F6704 @ =0x0000FF7F
	ands r5, r0
	movs r0, #0x40
	orrs r5, r0
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	lsls r1, r4, #0x01
	subs r0, r0, r1
	subs r0, #0x18
	adds r6, r2, #0x0
	cmp r3, r0
	bge _080F673C
	b _080F673A
_080F6704: .4byte 0x0000FF7F
_080F6708:
	cmp r2, #0xD7
	ble _080F673C
	movs r1, #0xC0
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x40
	bne _080F6720
	adds r0, r2, #0x0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080F6722
_080F6720:
	movs r6, #0xD8
_080F6722:
	lsls r0, r4, #0x03
	movs r1, #0xD0
	subs r1, r1, r0
	str r1, [sp, #0x018]
	movs r0, #0xC0
	orrs r5, r0
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	subs r0, #0x18
	adds r6, r2, #0x0
	cmp r1, r0
	ble _080F673C
_080F673A:
	str r0, [sp, #0x018]
_080F673C:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	bge _080F6764
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080F6760
	asrs r1, r6, #0x10
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080F6754
	adds r0, r1, #0x7
_080F6754:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080F6796
_080F6760:
	movs r0, #0x00
	b _080F6796
_080F6764:
	lsls r1, r4, #0x03
	adds r0, r0, r1
	adds r0, #0x20
	cmp r0, #0xF0
	ble _080F6798
	movs r0, #0xD0
	subs r1, r0, r1
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x02
	bne _080F6794
	subs r1, #0x08
	asrs r2, r6, #0x10
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080F6786
	adds r0, r2, #0x7
_080F6786:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _080F6796
_080F6794:
	adds r0, r1, #0x0
_080F6796:
	str r0, [sp, #0x018]
_080F6798:
	ldr r2, [sp, #0x018]
	asrs r4, r6, #0x10
	subs r4, r4, r2
	ldr r3, _080F67E8 @ =0xFFFFFF00
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r6, r10
	ldr r0, [r6, #0x30]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, [sp, #0x01C]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r7, [sp, #0x000]
	mov r6, r8
	str r6, [sp, #0x004]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x008]
	str r5, [sp, #0x00C]
	mov r5, r9
	ldrb r4, [r5, #0x10]
	str r4, [sp, #0x010]
	ldr r4, [r5, #0x14]
	str r4, [sp, #0x014]
	bl sub_80E5BCC
	movs r0, #0x01
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F67E8: .4byte 0xFFFFFF00
	thumb_func_start sub_80F67EC
sub_80F67EC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r6, r0, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	str r2, [sp, #0x010]
	str r2, [sp, #0x00C]
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	beq _080F6848
	movs r0, #0x00
	ldsh r1, [r5, r0]
	add r3, sp, #0x010
	str r2, [sp, #0x000]
	adds r0, r6, #0x0
	add r2, sp, #0x00C
	bl sub_80F7B1C
	ldr r2, [r5, #0x00]
	cmp r2, #0x07
	bgt _080F682C
	ldr r0, _080F6828 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F683C
	.byte 0x00, 0x00
_080F6828: .4byte 0x03000FD8
_080F682C:
	ldr r1, _080F68B8 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F683C:
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	ldr r0, [sp, #0x010]
	subs r0, r0, r1
	str r0, [sp, #0x010]
_080F6848:
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x04]
	cmp r0, #0xFF
	bne _080F6858
	ldr r0, _080F68BC @ =0x083B950C
	adds r0, r2, r0
	ldrb r0, [r0, #0x00]
	str r0, [r5, #0x14]
_080F6858:
	ldr r0, [r6, #0x28]
	ldrb r1, [r5, #0x00]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r3, [r5, #0x08]
	movs r7, #0x0C
	ldsh r4, [r5, r7]
	str r4, [sp, #0x000]
	movs r7, #0x10
	ldsh r4, [r5, r7]
	str r4, [sp, #0x004]
	ldrb r4, [r5, #0x14]
	str r4, [sp, #0x008]
	bl sub_80F1F7C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x3F
	beq _080F68AE
	ldr r0, [r6, #0x28]
	lsls r2, r2, #0x04
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldr r1, [sp, #0x00C]
	strh r1, [r0, #0x08]
	ldr r1, [sp, #0x010]
	strh r1, [r0, #0x0A]
	ldr r0, [r6, #0x28]
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r3, [r1, #0x00]
	ldrh r0, [r1, #0x08]
	ldrh r2, [r1, #0x04]
	adds r0, r0, r2
	strh r0, [r3, #0x00]
	ldrh r2, [r1, #0x0A]
	ldrh r1, [r1, #0x06]
	adds r2, r2, r1
	strh r2, [r3, #0x02]
	ldr r7, _080F68C0 @ =0x00007FFF
	adds r0, r7, #0x0
	subs r0, r0, r2
	strh r0, [r3, #0x0E]
_080F68AE:
	movs r0, #0x01
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F68B8: .4byte 0x03000FDC
_080F68BC: .4byte 0x083B950C
_080F68C0: .4byte 0x00007FFF
	thumb_func_start sub_80F68C4
sub_80F68C4:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F68E8
	ldr r0, _080F68E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	b _080F68F8
	.byte 0x00, 0x00
_080F68E4: .4byte 0x03000FD8
_080F68E8:
	ldr r1, _080F6954 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r2, r0, r1
_080F68F8:
	ldr r1, [r2, #0x08]
	cmp r1, #0x00
	beq _080F694E
	ldrb r0, [r1, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r0, r0, r4
	ldrh r1, [r1, #0x16]
	orrs r0, r1
	adds r1, r2, #0x0
	adds r1, #0x70
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r1, #0x02
	strh r0, [r1, #0x00]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x07
	bgt _080F694E
	ldr r0, _080F6958 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	adds r3, r2, #0x0
	adds r3, #0x76
	lsrs r1, r1, #0x1F
	ldrb r2, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F694E:
	pop {r4}
	pop {r0}
	bx r0
_080F6954: .4byte 0x03000FDC
_080F6958: .4byte 0x03000FD8
	thumb_func_start sub_80F695C
sub_80F695C:
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F6980
	ldr r0, _080F697C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	mov r12, r0
	b _080F6992
	.byte 0x00, 0x00
_080F697C: .4byte 0x03000FD8
_080F6980:
	ldr r1, _080F6A04 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r1, r1, r0
	mov r12, r1
_080F6992:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x07
	bgt _080F69C4
	ldr r0, _080F6A08 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	mov r1, r12
	adds r1, #0x76
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1F
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r3, r3, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F69C4:
	mov r1, r12
	ldr r3, [r1, #0x08]
	cmp r3, #0x00
	beq _080F69FE
	mov r0, r12
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	mov r5, r12
	adds r5, #0x72
	ldrh r1, [r5, #0x00]
	mov r4, r12
	adds r4, #0x70
	ldrh r2, [r4, #0x00]
	mov r0, r12
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	strh r0, [r5, #0x00]
	strh r0, [r4, #0x00]
_080F69FE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080F6A04: .4byte 0x03000FDC
_080F6A08: .4byte 0x03000FD8
	thumb_func_start sub_80F6A0C
sub_80F6A0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	cmp r3, #0x07
	bgt _080F6A38
	ldr r0, _080F6A34 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F6A48
_080F6A34: .4byte 0x03000FD8
_080F6A38:
	ldr r1, _080F6ABC @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F6A48:
	ldr r7, [r0, #0x08]
	cmp r7, #0x00
	beq _080F6AAA
	ldrb r4, [r7, #0x11]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1F
	ldrh r6, [r7, #0x0E]
	ldr r0, [r7, #0x5C]
	mov r8, r0
	ldr r1, [r7, #0x60]
	mov r9, r1
	movs r0, #0x29
	adds r0, r0, r7
	mov r10, r0
	ldrb r5, [r0, #0x00]
	lsls r5, r5, #0x1E
	lsrs r5, r5, #0x1F
	adds r0, r7, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r3, #0x00
	bl sub_801E150
	lsls r4, r4, #0x06
	ldrb r1, [r7, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r7, #0x11]
	strh r6, [r7, #0x0E]
	mov r1, r8
	str r1, [r7, #0x5C]
	mov r0, r9
	str r0, [r7, #0x60]
	lsls r5, r5, #0x01
	mov r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	mov r1, r10
	strb r0, [r1, #0x00]
_080F6AAA:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F6ABC: .4byte 0x03000FDC
	thumb_func_start sub_80F6AC0
sub_80F6AC0:
	push {r4, r5, lr}
	adds r4, r2, #0x0
	lsls r1, r1, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsrs r5, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F6AE8
	ldr r0, _080F6AE4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	b _080F6AF8
_080F6AE4: .4byte 0x03000FD8
_080F6AE8:
	ldr r1, _080F6B10 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r2, r0, r1
_080F6AF8:
	cmp r3, #0x00
	beq _080F6B34
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0x00
	beq _080F6B14
	movs r0, #0x0F
	ands r4, r0
	lsls r1, r4, #0x04
	adds r0, r2, #0x0
	adds r0, #0x7C
	b _080F6B28
_080F6B10: .4byte 0x03000FDC
_080F6B14:
	cmp r4, #0x00
	beq _080F6B20
	lsls r1, r4, #0x08
	adds r0, r2, #0x0
	adds r0, #0x7C
	b _080F6B28
_080F6B20:
	adds r0, r2, #0x0
	adds r0, #0x90
	ldrh r1, [r0, #0x00]
	subs r0, #0x14
_080F6B28:
	strh r1, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r0, [r1, #0x00]
	b _080F6B3E
_080F6B34:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0x0
	bl sub_80F76B8
_080F6B3E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80F6B44
sub_80F6B44:
	push {r4, r5, r6, lr}
	adds r6, r2, #0x0
	lsls r1, r1, #0x10
	ldr r0, _080F6B78 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x0E
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r5, [r0, r2]
	adds r2, r1, #0x0
	adds r0, r6, #0x0
	subs r0, #0x08
	cmp r0, #0x15
	bls _080F6B6C
	b _080F6C88
_080F6B6C:
	lsls r0, r0, #0x02
	ldr r1, _080F6B7C @ =0x080F6B80
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F6B78: .4byte 0x03000FD8
_080F6B7C: .4byte 0x080F6B80
	.byte 0xD8, 0x6B, 0x0F, 0x08, 0xE2, 0x6B, 0x0F, 0x08, 0xF2, 0x6B, 0x0F, 0x08, 0xF8, 0x6B, 0x0F, 0x08
	.byte 0x88, 0x6C, 0x0F, 0x08, 0x88, 0x6C, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x0C, 0x6C, 0x0F, 0x08
	.byte 0x12, 0x6C, 0x0F, 0x08, 0x1E, 0x6C, 0x0F, 0x08, 0x24, 0x6C, 0x0F, 0x08, 0x2C, 0x6C, 0x0F, 0x08
	.byte 0x34, 0x6C, 0x0F, 0x08, 0x88, 0x6C, 0x0F, 0x08, 0x88, 0x6C, 0x0F, 0x08, 0x88, 0x6C, 0x0F, 0x08
	.byte 0x3C, 0x6C, 0x0F, 0x08, 0x46, 0x6C, 0x0F, 0x08, 0x52, 0x6C, 0x0F, 0x08, 0x88, 0x6C, 0x0F, 0x08
	.byte 0x6C, 0x6C, 0x0F, 0x08, 0x7C, 0x6C, 0x0F, 0x08, 0x10, 0x1C, 0xF6, 0x30, 0x00, 0x21, 0x40, 0x5E
	.byte 0x26, 0xE1, 0x00, 0x2D, 0x0F, 0xDA, 0x81, 0x21, 0x49, 0x00, 0x50, 0x18, 0x00, 0x22, 0x80, 0x5E
	.byte 0x1E, 0xE1, 0x83, 0x21, 0x49, 0x00, 0x0E, 0xE0, 0x00, 0x2D, 0x04, 0xDA, 0x10, 0x1C, 0xFC, 0x30
	.byte 0x00, 0x21, 0x40, 0x5E, 0x14, 0xE1, 0x01, 0x20, 0x40, 0x42, 0x11, 0xE1, 0x82, 0x21, 0x49, 0x00
	.byte 0x01, 0xE0, 0x84, 0x21, 0x49, 0x00, 0x50, 0x18, 0x00, 0x22, 0x80, 0x5E, 0x08, 0xE1, 0x8F, 0x21
	.byte 0x49, 0x00, 0x0D, 0xE0, 0x10, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0x01, 0xE1, 0x10, 0x1C, 0xA8, 0x30
	.byte 0x00, 0x68, 0xFD, 0xE0, 0x10, 0x1C, 0xAC, 0x30, 0x00, 0x68, 0xF9, 0xE0, 0x87, 0x21, 0x49, 0x00
	.byte 0x50, 0x18, 0x00, 0x88, 0xF4, 0xE0, 0x10, 0x1C, 0x7E, 0x30, 0x00, 0x78, 0x40, 0x07, 0x80, 0x0F
	.byte 0xEE, 0xE0, 0x10, 0x1C, 0x7E, 0x30, 0x00, 0x78, 0x06, 0x21, 0x01, 0x40, 0x02, 0x29, 0x01, 0xD0
	.byte 0x04, 0x29, 0x01, 0xD1, 0x01, 0x20, 0xE3, 0xE0, 0x00, 0x20, 0xE1, 0xE0, 0x02, 0x49, 0x50, 0x18
	.byte 0x00, 0x78, 0x80, 0x07, 0xC0, 0x0F, 0xDB, 0xE0, 0x11, 0x01, 0x00, 0x00, 0x88, 0x21, 0x49, 0x00
	.byte 0x50, 0x18, 0x00, 0x78, 0xC0, 0x09, 0xD3, 0xE0
_080F6C88:
	cmp r5, #0x00
	blt _080F6C8E
	b _080F6D8C
_080F6C8E:
	ldr r2, _080F6CB0 @ =0x03000FF4
	lsls r1, r5, #0x04
	subs r1, r1, r5
	lsls r1, r1, #0x02
	ldr r0, [r2, #0x00]
	subs r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x3C
	cmp r6, #0x1B
	bls _080F6CA4
	b _080F6E2C
_080F6CA4:
	lsls r0, r6, #0x02
	ldr r1, _080F6CB4 @ =0x080F6CB8
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F6CB0: .4byte 0x03000FF4
_080F6CB4: .4byte 0x080F6CB8
	.byte 0x28, 0x6D, 0x0F, 0x08, 0x2C, 0x6D, 0x0F, 0x08, 0x30, 0x6D, 0x0F, 0x08, 0x34, 0x6D, 0x0F, 0x08
	.byte 0x38, 0x6D, 0x0F, 0x08, 0x3C, 0x6D, 0x0F, 0x08, 0x40, 0x6D, 0x0F, 0x08, 0x44, 0x6D, 0x0F, 0x08
	.byte 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08
	.byte 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08
	.byte 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08
	.byte 0x2C, 0x6E, 0x0F, 0x08, 0x48, 0x6D, 0x0F, 0x08, 0x50, 0x6D, 0x0F, 0x08, 0x58, 0x6D, 0x0F, 0x08
	.byte 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x60, 0x6D, 0x0F, 0x08
	.byte 0x20, 0x8A, 0x81, 0xE0, 0x60, 0x8B, 0x7F, 0xE0, 0xE0, 0x8B, 0x7D, 0xE0, 0xE0, 0x8A, 0x7B, 0xE0
	.byte 0x60, 0x8A, 0x79, 0xE0, 0xA0, 0x8B, 0x77, 0xE0, 0x20, 0x8C, 0x75, 0xE0, 0x20, 0x8B, 0x73, 0xE0
	.byte 0x20, 0x1C, 0x30, 0x30, 0x00, 0x78, 0x6F, 0xE0, 0x60, 0x68, 0x00, 0x02, 0x00, 0x0A, 0x6B, 0xE0
	.byte 0x10, 0x68, 0x88, 0x30, 0x00, 0x88, 0x67, 0xE0, 0x09, 0x4B, 0x20, 0x1C, 0x30, 0x30, 0x00, 0x78
	.byte 0x01, 0x38, 0x42, 0x00, 0x12, 0x18, 0xE9, 0x43, 0xC8, 0x00, 0x40, 0x18, 0x41, 0x01, 0x40, 0x18
	.byte 0x80, 0x18, 0x80, 0x00, 0xC0, 0x18, 0xC1, 0x88, 0x00, 0x7A, 0x00, 0x04, 0x08, 0x43, 0x53, 0xE0
	.byte 0xAC, 0xAE, 0x3B, 0x08
_080F6D8C:
	ldr r2, _080F6DAC @ =0x03000FDC
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x2C
	muls r0, r1
	ldr r1, _080F6DB0 @ =0x000033E0
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	cmp r6, #0x17
	bhi _080F6E2C
	lsls r0, r6, #0x02
	ldr r1, _080F6DB4 @ =0x080F6DB8
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080F6DAC: .4byte 0x03000FDC
_080F6DB0: .4byte 0x000033E0
_080F6DB4: .4byte 0x080F6DB8
	.byte 0x18, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x1C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08
	.byte 0x18, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x1C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08
	.byte 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08
	.byte 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08
	.byte 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08, 0x2C, 0x6E, 0x0F, 0x08
	.byte 0x2C, 0x6E, 0x0F, 0x08, 0x20, 0x6E, 0x0F, 0x08, 0x24, 0x6E, 0x0F, 0x08, 0x28, 0x6E, 0x0F, 0x08
	.byte 0xD8, 0x88, 0x09, 0xE0, 0x58, 0x8B, 0x07, 0xE0, 0x18, 0x79, 0x05, 0xE0, 0x98, 0x8C, 0x03, 0xE0
	.byte 0xD8, 0x8C, 0x01, 0xE0
_080F6E2C:
	movs r0, #0x01
	negs r0, r0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F6E38
sub_80F6E38:
	push {r4, lr}
	ldr r0, _080F6E78 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F6EE6
	movs r3, #0x10
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x02
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _080F6EE6
	ldr r0, [r2, #0x7C]
	ldr r3, [r0, #0x34]
	cmp r3, #0x00
	beq _080F6E80
	ldr r1, [r2, #0x24]
	ldr r0, _080F6E7C @ =0x080FFEFD
	cmp r1, r0
	bne _080F6EE6
	ldr r0, [r3, #0x28]
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	adds r0, #0x11
	b _080F6EF2
_080F6E78: .4byte 0x03000FD8
_080F6E7C: .4byte sub_80FFEFC
_080F6E80:
	adds r0, r1, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x05
	bne _080F6E8E
	movs r0, #0x10
	b _080F6EF2
_080F6E8E:
	ldr r0, _080F6EA4 @ =0x00000343
	adds r3, r2, r0
	ldrb r1, [r3, #0x00]
	movs r4, #0x80
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F6EA8
	ldrb r0, [r3, #0x00]
	adds r0, #0x04
	b _080F6EF2
_080F6EA4: .4byte 0x00000343
_080F6EA8:
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r3, r2, r1
	ldrb r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F6EBE
	ldrb r0, [r3, #0x00]
	adds r0, #0x07
	b _080F6EF2
_080F6EBE:
	ldr r0, _080F6ED4 @ =0x00000345
	adds r3, r2, r0
	ldrb r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F6ED8
	ldrb r0, [r3, #0x00]
	adds r0, #0x19
	b _080F6EF2
	.byte 0x00, 0x00
_080F6ED4: .4byte 0x00000345
_080F6ED8:
	ldr r1, _080F6EEC @ =0x00000342
	adds r2, r2, r1
	ldrb r1, [r2, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F6EF0
_080F6EE6:
	movs r0, #0x01
	negs r0, r0
	b _080F6EF2
_080F6EEC: .4byte 0x00000342
_080F6EF0:
	ldrb r0, [r2, #0x00]
_080F6EF2:
	pop {r4}
	pop {r1}
	bx r1
