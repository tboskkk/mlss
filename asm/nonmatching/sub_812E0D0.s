	.syntax unified
	.text

	thumb_func_start sub_812E0D0
sub_812E0D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	adds r7, r0, #0x0
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x02C]
	adds r0, r7, #0x0
	adds r0, #0xB8
	ldrb r0, [r0, #0x00]
	mov r9, r0
	cmp r0, #0x01
	beq _0812E0F2
	bl _0812ED12
_0812E0F2:
	ldr r1, _0812E198 @ =0x083C0D48
	ldr r0, _0812E19C @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r2, r2, r0
	mov r8, r2
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x01C]
	ldr r1, _0812E1A0 @ =0x083C0D70
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x020]
	ldr r1, _0812E1A4 @ =0x083C0D5C
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x024]
	ldr r1, _0812E1A8 @ =0x083C0D84
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x028]
	add r4, sp, #0x01C
	add r0, sp, #0x00C
	adds r1, r4, #0x0
	movs r2, #0x10
	bl memcpy
	adds r0, r7, #0x0
	adds r0, #0xB9
	ldrb r1, [r0, #0x00]
	str r0, [sp, #0x030]
	cmp r1, #0x01
	bne _0812E146
	b _0812E35C
_0812E146:
	ldr r0, _0812E1AC @ =0x03001034
	ldr r1, [r7, #0x5C]
	movs r2, #0xA2
	lsls r2, r2, #0x04
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	adds r0, r7, #0x0
	adds r0, #0xBD
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812E162
	b _0812E25C
_0812E162:
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r1, [r0, #0x00]
	movs r6, #0x7F
	ands r6, r1
	adds r1, r7, #0x0
	adds r1, #0xAA
	adds r5, r6, #0x0
	ldrh r3, [r1, #0x00]
	mov r10, r0
	cmp r5, r3
	bcs _0812E1B4
	ldr r0, [r7, #0x5C]
	ldr r3, _0812E1B0 @ =0x083BBDD0
	ldr r1, [r7, #0x40]
	adds r1, r1, r6
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x04
	adds r3, #0x0C
	adds r2, r2, r3
	mov r3, r8
	ldrb r1, [r3, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	b _0812E2E8
_0812E198: .4byte 0x083C0D48
_0812E19C: .4byte 0x0300034C
_0812E1A0: .4byte 0x083C0D70
_0812E1A4: .4byte 0x083C0D5C
_0812E1A8: .4byte 0x083C0D84
_0812E1AC: .4byte 0x03001034
_0812E1B0: .4byte 0x083BBDD0
_0812E1B4:
	adds r4, r7, #0x0
	adds r4, #0xAE
	cmp r3, r5
	bhi _0812E1F8
	ldrh r0, [r1, #0x00]
	ldrh r2, [r4, #0x00]
	adds r0, r0, r2
	cmp r6, r0
	bge _0812E1F8
	cmp r2, #0x00
	beq _0812E1F8
	ldr r0, [r7, #0x5C]
	ldr r3, _0812E1F4 @ =0x083BE67C
	ldr r1, [r7, #0x40]
	adds r1, r1, r6
	ldrb r2, [r1, #0x00]
	lsls r1, r2, #0x02
	adds r1, r1, r2
	lsls r1, r1, #0x02
	adds r1, r1, r3
	mov r5, r8
	ldrb r2, [r5, #0x00]
	ldr r1, [r1, #0x00]
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
	ldr r1, [r1, #0x04]
	str r1, [sp, #0x000]
	mov r1, r9
	str r1, [sp, #0x004]
	b _0812E2F0
	.byte 0x00, 0x00
_0812E1F4: .4byte 0x083BE67C
_0812E1F8:
	ldrh r0, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r0, r0, r1
	mov r2, r10
	ldrb r1, [r2, #0x00]
	movs r2, #0x7F
	ands r2, r1
	cmp r0, r2
	ble _0812E20C
	b _0812E33C
_0812E20C:
	adds r0, r7, #0x0
	adds r0, #0xA8
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bcc _0812E218
	b _0812E33C
_0812E218:
	adds r0, r7, #0x0
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0812E224
	b _0812E33C
_0812E224:
	ldr r0, [r7, #0x5C]
	ldr r3, _0812E254 @ =0x083BD844
	ldr r1, [r7, #0x40]
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	lsls r2, r1, #0x02
	adds r2, r2, r1
	lsls r2, r2, #0x02
	adds r2, r2, r3
	ldr r1, _0812E258 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x04]
	str r1, [sp, #0x000]
	movs r1, #0x01
	str r1, [sp, #0x004]
	b _0812E2F0
	.byte 0x00, 0x00
_0812E254: .4byte 0x083BD844
_0812E258: .4byte 0x0300034C
_0812E25C:
	adds r0, r7, #0x0
	adds r0, #0xBE
	ldrb r1, [r0, #0x00]
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	beq _0812E300
	adds r0, r7, #0x0
	adds r0, #0xC0
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812E33C
	movs r4, #0x7F
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0812E2BC
	ldr r0, [r7, #0x5C]
	ldr r3, _0812E2B8 @ =0x083BD844
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	adds r2, r4, #0x0
	ands r2, r1
	ldr r1, [r7, #0x40]
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r2, r4, #0x0
	ands r2, r1
	lsls r1, r2, #0x02
	adds r1, r1, r2
	lsls r1, r1, #0x02
	adds r1, r1, r3
	mov r4, r8
	ldrb r2, [r4, #0x00]
	ldr r1, [r1, #0x00]
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
	ldr r1, [r1, #0x04]
	str r1, [sp, #0x000]
	mov r5, r9
	str r5, [sp, #0x004]
	b _0812E2F0
_0812E2B8: .4byte 0x083BD844
_0812E2BC:
	ldr r0, [r7, #0x5C]
	ldr r3, _0812E2FC @ =0x083BE67C
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	adds r2, r4, #0x0
	ands r2, r1
	ldr r1, [r7, #0x40]
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r2, r4, #0x0
	ands r2, r1
	lsls r1, r2, #0x02
	adds r1, r1, r2
	lsls r1, r1, #0x02
	adds r1, r1, r3
	mov r3, r8
	ldrb r2, [r3, #0x00]
	ldr r1, [r1, #0x00]
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
_0812E2E8:
	ldr r1, [r1, #0x04]
	str r1, [sp, #0x000]
	mov r4, r9
	str r4, [sp, #0x004]
_0812E2F0:
	movs r1, #0x1B
	movs r2, #0x00
	movs r3, #0x06
	bl sub_8083860
	b _0812E33C
_0812E2FC: .4byte 0x083BE67C
_0812E300:
	ldr r0, [r7, #0x5C]
	ldr r4, _0812E3B0 @ =0x083BBDD0
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	movs r2, #0x7F
	adds r3, r2, #0x0
	ands r3, r1
	ldr r1, [r7, #0x40]
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	ands r2, r1
	lsls r2, r2, #0x04
	adds r4, #0x0C
	adds r2, r2, r4
	mov r5, r8
	ldrb r1, [r5, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x04]
	str r1, [sp, #0x000]
	mov r1, r9
	str r1, [sp, #0x004]
	movs r1, #0x1B
	movs r2, #0x00
	movs r3, #0x06
	bl sub_8083860
_0812E33C:
	ldr r0, [r7, #0x5C]
	ldr r1, [r7, #0x24]
	ldr r1, [r1, #0x28]
	ldr r1, [r1, #0x04]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	movs r2, #0xA2
	lsls r2, r2, #0x04
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_0812E35C:
	ldr r3, [sp, #0x030]
	ldrb r0, [r3, #0x00]
	cmp r0, #0x02
	bne _0812E366
	b _0812E838
_0812E366:
	ldr r0, _0812E3B4 @ =0x03001034
	ldr r1, [r7, #0x60]
	movs r2, #0xC6
	lsls r2, r2, #0x05
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	adds r0, r7, #0x0
	adds r0, #0xBD
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812E382
	b _0812E4D2
_0812E382:
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r2, [r0, #0x00]
	subs r5, r1, r2
	movs r4, #0xA8
	adds r4, r4, r7
	mov r8, r4
	cmp r5, #0x00
	bge _0812E3A4
	ldrh r0, [r4, #0x00]
	adds r0, r0, r1
	subs r5, r0, r2
_0812E3A4:
	movs r0, #0x00
	mov r9, r0
	ldr r1, _0812E3B8 @ =0x03000C0C
	mov r10, r1
	b _0812E4B0
	.byte 0x00, 0x00
_0812E3B0: .4byte 0x083BBDD0
_0812E3B4: .4byte 0x03001034
_0812E3B8: .4byte 0x03000C0C
_0812E3BC:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	movs r6, #0x7F
	ands r6, r0
	movs r2, #0x01
	mov r12, r2
	adds r0, r7, #0x0
	adds r0, #0xAA
	ldrh r2, [r0, #0x00]
	adds r1, r0, #0x0
	cmp r5, r2
	bge _0812E400
	ldr r0, [r7, #0x60]
	movs r1, #0x0B
	mov r3, r9
	muls r3, r1
	adds r3, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, _0812E3FC @ =0x083BBDD0
	lsls r2, r6, #0x04
	adds r1, #0x0C
	adds r2, r2, r1
	mov r4, r10
	ldrb r1, [r4, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	b _0812E438
	.byte 0x00, 0x00
_0812E3FC: .4byte 0x083BBDD0
_0812E400:
	adds r4, r7, #0x0
	adds r4, #0xAE
	cmp r2, r5
	bgt _0812E450
	ldrh r3, [r4, #0x00]
	adds r0, r2, r3
	cmp r5, r0
	bge _0812E450
	cmp r3, #0x00
	beq _0812E450
	ldr r0, [r7, #0x60]
	movs r1, #0x0B
	mov r3, r9
	muls r3, r1
	adds r3, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, _0812E44C @ =0x083BE67C
	lsls r1, r6, #0x02
	adds r1, r1, r6
	lsls r1, r1, #0x02
	adds r1, r1, r2
	mov r4, r10
	ldrb r2, [r4, #0x00]
	ldr r1, [r1, #0x00]
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
_0812E438:
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	mov r1, r12
	str r1, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x18
	bl sub_8083860
	b _0812E4A0
	.byte 0x00, 0x00
_0812E44C: .4byte 0x083BE67C
_0812E450:
	ldrh r0, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r0, r0, r1
	cmp r0, r5
	bgt _0812E4A0
	mov r2, r8
	ldrh r2, [r2, #0x00]
	cmp r5, r2
	bge _0812E4A0
	adds r0, r7, #0x0
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812E4A0
	ldr r0, [r7, #0x60]
	movs r1, #0x0B
	mov r3, r9
	muls r3, r1
	adds r3, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, _0812E4C4 @ =0x083BD844
	lsls r1, r6, #0x02
	adds r1, r1, r6
	lsls r1, r1, #0x02
	adds r1, r1, r2
	mov r4, r10
	ldrb r2, [r4, #0x00]
	ldr r1, [r1, #0x00]
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	mov r1, r12
	str r1, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x18
	bl sub_8083860
_0812E4A0:
	adds r5, #0x01
	mov r2, r8
	ldrh r2, [r2, #0x00]
	cmp r5, r2
	blt _0812E4AC
	movs r5, #0x00
_0812E4AC:
	movs r3, #0x01
	add r9, r3
_0812E4B0:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	cmp r0, #0x05
	bhi _0812E4C8
	ldrh r0, [r4, #0x00]
	cmp r9, r0
	bge _0812E4C0
	b _0812E3BC
_0812E4C0:
	b _0812E818
	.byte 0x00, 0x00
_0812E4C4: .4byte 0x083BD844
_0812E4C8:
	mov r1, r9
	cmp r1, #0x05
	bgt _0812E4D0
	b _0812E3BC
_0812E4D0:
	b _0812E818
_0812E4D2:
	adds r5, r7, #0x0
	adds r5, #0xBE
	ldrb r1, [r5, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0812E4E2
	b _0812E740
_0812E4E2:
	adds r2, r7, #0x0
	adds r2, #0xC0
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	ands r0, r1
	str r2, [sp, #0x038]
	cmp r0, #0x00
	bne _0812E4F4
	b _0812E662
_0812E4F4:
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r0, [r1, #0x00]
	movs r3, #0x7F
	ands r3, r0
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r4, [r0, #0x00]
	subs r5, r3, r4
	mov r10, r1
	movs r2, #0xA8
	adds r2, r2, r7
	mov r8, r2
	cmp r5, #0x00
	bge _0812E518
	ldrh r0, [r2, #0x00]
	adds r0, r0, r3
	subs r5, r0, r4
_0812E518:
	movs r3, #0x00
	mov r9, r3
	adds r4, r7, #0x0
	adds r4, #0xC1
	str r4, [sp, #0x03C]
	b _0812E63A
_0812E524:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	movs r3, #0x7F
	adds r4, r3, #0x0
	ands r4, r0
	movs r6, #0x09
	ldr r0, [sp, #0x038]
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0812E5BC
	ldr r0, [r7, #0x58]
	lsls r1, r5, #0x01
	adds r1, r1, r0
	ldrh r2, [r1, #0x00]
	mov r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812E55A
	adds r0, r3, #0x0
	ands r0, r1
	cmp r5, r0
	bne _0812E574
_0812E55A:
	ldr r0, _0812E5B0 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x88
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bhi _0812E574
	adds r0, r1, #0x0
	adds r0, #0xBA
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bne _0812E576
_0812E574:
	movs r6, #0x0B
_0812E576:
	ldr r0, [r7, #0x60]
	movs r1, #0x0B
	mov r3, r9
	muls r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, _0812E5B4 @ =0x083BD844
	lsls r2, r4, #0x02
	adds r2, r2, r4
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, _0812E5B8 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r1, r1, r4
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x18
	bl sub_8083860
	b _0812E62A
	.byte 0x00, 0x00
_0812E5B0: .4byte 0x03000FF4
_0812E5B4: .4byte 0x083BD844
_0812E5B8: .4byte 0x0300034C
_0812E5BC:
	ldr r0, [r7, #0x58]
	lsls r1, r5, #0x01
	adds r1, r1, r0
	ldrh r2, [r1, #0x00]
	mov r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812E5D8
	adds r0, r3, #0x0
	ands r0, r1
	cmp r5, r0
	bne _0812E5F2
_0812E5D8:
	ldr r0, _0812E64C @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x88
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bhi _0812E5F2
	adds r0, r1, #0x0
	adds r0, #0xF2
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bne _0812E5F4
_0812E5F2:
	movs r6, #0x0B
_0812E5F4:
	ldr r0, [r7, #0x60]
	movs r1, #0x0B
	mov r3, r9
	muls r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, _0812E650 @ =0x083BE67C
	lsls r2, r4, #0x02
	adds r2, r2, r4
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, _0812E654 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r1, r1, r4
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x18
	bl sub_8083860
_0812E62A:
	adds r5, #0x01
	mov r0, r8
	ldrh r0, [r0, #0x00]
	cmp r5, r0
	blt _0812E636
	movs r5, #0x00
_0812E636:
	movs r1, #0x01
	add r9, r1
_0812E63A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	cmp r0, #0x05
	bhi _0812E658
	ldrh r3, [r2, #0x00]
	cmp r9, r3
	bge _0812E64A
	b _0812E524
_0812E64A:
	b _0812E6A2
_0812E64C: .4byte 0x03000FF4
_0812E650: .4byte 0x083BE67C
_0812E654: .4byte 0x0300034C
_0812E658:
	mov r4, r9
	cmp r4, #0x05
	bgt _0812E660
	b _0812E524
_0812E660:
	b _0812E6A2
_0812E662:
	ldr r0, [r7, #0x60]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x3C]
	str r1, [sp, #0x000]
	movs r4, #0x09
	str r4, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x1C
	movs r3, #0x1F
	bl sub_8083860
	ldr r0, [r7, #0x60]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x40]
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x1C
	movs r3, #0x37
	bl sub_8083860
	adds r5, r7, #0x0
	adds r5, #0xC1
	str r5, [sp, #0x03C]
_0812E6A2:
	ldr r0, [sp, #0x038]
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x00
	beq _0812E6EC
	ldr r0, _0812E6E0 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	ldr r3, [sp, #0x03C]
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, #0x31
	ldrb r0, [r2, #0x00]
	cmp r0, #0xFF
	bne _0812E6C8
	b _0812E818
_0812E6C8:
	ldr r0, [r7, #0x60]
	ldr r3, _0812E6E4 @ =0x083BD844
	ldrb r1, [r2, #0x00]
	lsls r2, r1, #0x02
	adds r2, r2, r1
	lsls r2, r2, #0x02
	adds r2, r2, r3
	ldr r1, _0812E6E8 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r1, r1, r4
	b _0812E714
_0812E6E0: .4byte 0x03000FF4
_0812E6E4: .4byte 0x083BD844
_0812E6E8: .4byte 0x0300034C
_0812E6EC:
	ldr r0, [r7, #0x60]
	ldr r4, _0812E734 @ =0x083BE67C
	ldr r1, _0812E738 @ =0x03000FF4
	ldr r2, [r1, #0x00]
	ldr r5, [sp, #0x03C]
	ldrb r3, [r5, #0x00]
	lsls r1, r3, #0x04
	subs r1, r1, r3
	lsls r1, r1, #0x02
	adds r2, r2, r1
	adds r2, #0x32
	ldrb r1, [r2, #0x00]
	lsls r2, r1, #0x02
	adds r2, r2, r1
	lsls r2, r2, #0x02
	adds r2, r2, r4
	ldr r1, _0812E73C @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r1, r1, r3
_0812E714:
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x0D
	movs r3, #0x4D
	bl sub_8083860
	b _0812E818
	.byte 0x00, 0x00
_0812E734: .4byte 0x083BE67C
_0812E738: .4byte 0x03000FF4
_0812E73C: .4byte 0x0300034C
_0812E740:
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r0, [r1, #0x00]
	movs r3, #0x7F
	ands r3, r0
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r5, [r0, #0x00]
	subs r4, r3, r5
	mov r10, r1
	movs r0, #0xA8
	adds r0, r0, r7
	mov r8, r0
	cmp r4, #0x00
	bge _0812E764
	ldrh r0, [r0, #0x00]
	adds r0, r0, r3
	subs r4, r0, r5
_0812E764:
	movs r6, #0x00
	b _0812E7F8
_0812E768:
	ldr r0, [r7, #0x40]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	movs r5, #0x7F
	adds r2, r5, #0x0
	ands r2, r0
	movs r1, #0x09
	mov r9, r1
	ldr r1, [r7, #0x58]
	lsls r0, r4, #0x01
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	mov r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812E794
	adds r0, r5, #0x0
	ands r0, r1
	cmp r4, r0
	bne _0812E7AE
_0812E794:
	ldr r0, _0812E808 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x88
	ldrh r0, [r0, #0x00]
	cmp r3, r0
	bhi _0812E7AE
	adds r0, r1, #0x0
	adds r0, #0x8A
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x63
	bne _0812E7B2
_0812E7AE:
	movs r1, #0x0B
	mov r9, r1
_0812E7B2:
	ldr r0, [r7, #0x60]
	movs r1, #0x0B
	adds r3, r6, #0x0
	muls r3, r1
	adds r3, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, _0812E80C @ =0x083BBDD0
	lsls r2, r2, #0x04
	adds r1, #0x0C
	adds r2, r2, r1
	ldr r1, _0812E810 @ =0x0300034C
	movs r5, #0x8C
	lsls r5, r5, #0x04
	adds r1, r1, r5
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	mov r1, r9
	str r1, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x18
	bl sub_8083860
	adds r4, #0x01
	mov r2, r8
	ldrh r2, [r2, #0x00]
	cmp r4, r2
	blt _0812E7F6
	movs r4, #0x00
_0812E7F6:
	adds r6, #0x01
_0812E7F8:
	mov r3, r8
	ldrh r0, [r3, #0x00]
	cmp r0, #0x05
	bhi _0812E814
	ldrh r5, [r3, #0x00]
	cmp r6, r5
	blt _0812E768
	b _0812E818
_0812E808: .4byte 0x03000FF4
_0812E80C: .4byte 0x083BBDD0
_0812E810: .4byte 0x0300034C
_0812E814:
	cmp r6, #0x05
	ble _0812E768
_0812E818:
	ldr r0, [r7, #0x60]
	ldr r1, [r7, #0x24]
	ldr r1, [r1, #0x28]
	ldr r1, [r1, #0x04]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	movs r2, #0xC6
	lsls r2, r2, #0x05
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_0812E838:
	ldr r3, [sp, #0x030]
	ldrb r0, [r3, #0x00]
	cmp r0, #0x01
	bne _0812E842
	b _0812EF0C
_0812E842:
	ldr r0, _0812E878 @ =0x03001034
	ldr r1, [r7, #0x64]
	movs r2, #0xD0
	lsls r2, r2, #0x04
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	adds r0, r7, #0x0
	adds r0, #0xBA
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812E87C
	cmp r0, #0x01
	beq _0812E862
	b _0812ECF0
_0812E862:
	ldr r0, [r7, #0x64]
	adds r1, r7, #0x0
	adds r1, #0xBE
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x20]
	b _0812E8A8
	.byte 0x00, 0x00
_0812E878: .4byte 0x03001034
_0812E87C:
	adds r0, r7, #0x0
	adds r0, #0xBD
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0812E8BA
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0812E896
	b _0812ECF0
_0812E896:
	ldr r0, [r7, #0x64]
	adds r1, r7, #0x0
	adds r1, #0xBE
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x0C]
_0812E8A8:
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x08
	movs r3, #0x02
	bl sub_8083860
	b _0812ECF0
_0812E8BA:
	adds r5, r7, #0x0
	adds r5, #0xBE
	ldrb r1, [r5, #0x00]
	movs r0, #0x01
	ands r0, r1
	str r5, [sp, #0x034]
	cmp r0, #0x00
	bne _0812E8CC
	b _0812ECC4
_0812E8CC:
	adds r0, r7, #0x0
	adds r0, #0xC6
	ldrb r1, [r0, #0x00]
	movs r4, #0x80
	mov r9, r4
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	bne _0812E8E0
	b _0812EAC0
_0812E8E0:
	movs r0, #0x00
	mov r8, r0
	ldr r0, [r7, #0x64]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r2, [r1, #0x00]
	adds r4, r7, #0x0
	adds r4, #0xC0
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r1, #0x04
	movs r6, #0x7F
	ands r1, r6
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	mov r9, r1
	str r1, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x08
	movs r3, #0x02
	bl sub_8083860
	ldrb r1, [r4, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	str r4, [sp, #0x038]
	cmp r0, #0x00
	beq _0812E9BA
	ldr r2, [sp, #0x02C]
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _0812E978
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0812E95A
	ldr r0, [r7, #0x64]
	movs r4, #0x01
	mov r8, r4
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x34]
	str r1, [sp, #0x000]
	mov r5, r9
	str r5, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x03
	b _0812E9B2
_0812E95A:
	ldr r0, [r7, #0x64]
	movs r1, #0x01
	mov r8, r1
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x38]
	str r1, [sp, #0x000]
	mov r2, r9
	str r2, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x03
	b _0812E9B2
_0812E978:
	ldr r0, [r7, #0x64]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x34]
	str r1, [sp, #0x000]
	mov r3, r9
	str r3, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x03
	movs r3, #0x12
	bl sub_8083860
	ldr r0, [r7, #0x64]
	movs r4, #0x02
	mov r8, r4
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x38]
	str r1, [sp, #0x000]
	mov r5, r9
	str r5, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x41
_0812E9B2:
	movs r3, #0x12
	bl sub_8083860
	b _0812EA82
_0812E9BA:
	ldr r3, _0812EABC @ =0x083BE67C
	adds r2, r7, #0x0
	adds r2, #0xC4
	ldrb r0, [r2, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r1, [r0, #0x11]
	movs r0, #0x01
	ands r0, r1
	mov r10, r2
	cmp r0, #0x00
	beq _0812EA18
	ldr r1, [sp, #0x02C]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x54
	ands r0, r1
	cmp r0, #0x04
	beq _0812EA18
	ldr r0, [r7, #0x64]
	movs r3, #0x01
	mov r8, r3
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x34]
	str r1, [sp, #0x000]
	mov r4, r9
	str r4, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x03
	movs r3, #0x12
	bl sub_8083860
_0812EA18:
	ldr r3, _0812EABC @ =0x083BE67C
	mov r5, r10
	ldrb r0, [r5, #0x00]
	movs r1, #0x7F
	adds r2, r1, #0x0
	ands r2, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r1, [r0, #0x11]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0812EA82
	ldr r1, [sp, #0x02C]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x54
	ands r0, r1
	cmp r0, #0x00
	beq _0812EA82
	ldr r0, [r7, #0x64]
	mov r3, r8
	lsls r2, r3, #0x05
	subs r2, r2, r3
	lsls r2, r2, #0x11
	movs r4, #0xC0
	lsls r4, r4, #0x0A
	adds r2, r2, r4
	lsrs r2, r2, #0x10
	movs r5, #0x01
	add r8, r5
	ldr r3, [sp, #0x034]
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x38]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x1A
	movs r3, #0x12
	bl sub_8083860
_0812EA82:
	ldr r0, [r7, #0x64]
	mov r4, r8
	lsls r2, r4, #0x05
	subs r2, r2, r4
	lsls r2, r2, #0x11
	movs r5, #0xC0
	lsls r5, r5, #0x0A
	adds r2, r2, r5
	lsrs r2, r2, #0x10
	ldr r3, [sp, #0x034]
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r4, [r1, #0x00]
	ldr r5, [sp, #0x038]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r1, #0x05
	movs r3, #0x7F
	ands r1, r3
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldr r1, [r4, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x1A
	b _0812ECB4
_0812EABC: .4byte 0x083BE67C
_0812EAC0:
	movs r0, #0xC4
	adds r0, r0, r7
	mov r8, r0
	ldrb r1, [r0, #0x00]
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	beq _0812EB22
	ldr r0, [r7, #0x64]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	movs r4, #0x05
	str r4, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x08
	movs r3, #0x02
	bl sub_8083860
	ldr r0, [r7, #0x64]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x2C]
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x03
	movs r3, #0x12
	bl sub_8083860
	ldr r0, [r7, #0x64]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x30]
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x42
	b _0812ECB4
_0812EB22:
	ldr r5, _0812EBF0 @ =0x03000FF4
	ldr r2, [r5, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xC1
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r2, r0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	add r4, sp, #0x020
	strb r0, [r4, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, #0x31
	ldrb r1, [r2, #0x00]
	mov r0, sp
	adds r0, #0x21
	strb r1, [r0, #0x00]
	add r0, sp, #0x01C
	adds r1, r4, #0x0
	movs r2, #0x02
	bl memcpy
	ldr r3, [r5, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r3, r0
	adds r0, #0x32
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, _0812EBF4 @ =0x083BE67C
	adds r0, r0, r1
	ldrb r0, [r0, #0x0A]
	add r1, sp, #0x024
	strb r0, [r1, #0x00]
	ldr r2, _0812EBF8 @ =0x083BD844
	mov r10, r2
	ldrb r2, [r6, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r3, r3, r0
	adds r3, #0x31
	ldrb r2, [r3, #0x00]
	lsls r0, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r2, [r0, #0x0A]
	mov r0, sp
	adds r0, #0x25
	strb r2, [r0, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x02
	bl memcpy
	adds r1, r7, #0x0
	adds r1, #0xC0
	ldrb r2, [r1, #0x00]
	mov r0, r9
	ands r0, r2
	str r1, [sp, #0x038]
	mov r9, r4
	cmp r0, #0x00
	beq _0812EC66
	movs r5, #0xFF
	movs r3, #0x7F
	adds r0, r3, #0x0
	ands r0, r2
	cmp r0, #0x00
	bne _0812EBFC
	mov r4, r8
	ldrb r0, [r4, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r2, _0812EBF4 @ =0x083BE67C
	adds r1, r0, r2
	ldrb r0, [r1, #0x11]
	ldrb r6, [r6, #0x00]
	asrs r0, r6
	movs r3, #0x01
	ands r0, r3
	cmp r0, #0x00
	beq _0812EC1C
	ldrb r5, [r1, #0x0A]
	b _0812EC1C
_0812EBF0: .4byte 0x03000FF4
_0812EBF4: .4byte 0x083BE67C
_0812EBF8: .4byte 0x083BD844
_0812EBFC:
	cmp r0, #0x01
	bne _0812EC1C
	mov r4, r8
	ldrb r0, [r4, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r5, [r0, #0x0A]
_0812EC1C:
	cmp r5, #0x63
	bhi _0812EC66
	ldr r0, _0812ECBC @ =0x083BF370
	lsls r1, r5, #0x03
	adds r2, r1, r0
	ldrb r0, [r2, #0x04]
	movs r3, #0x6B
	cmp r0, #0x00
	beq _0812EC30
	movs r3, #0x80
_0812EC30:
	ldr r0, [sp, #0x038]
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	add r0, r9
	ldrb r0, [r0, #0x00]
	cmp r5, r0
	beq _0812EC66
	ldr r0, [r7, #0x64]
	ldr r1, _0812ECC0 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r1, r1, r4
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x1A
	adds r2, r3, #0x0
	movs r3, #0x12
	bl sub_8083860
_0812EC66:
	ldr r5, [sp, #0x038]
	ldrb r0, [r5, #0x00]
	movs r4, #0x7F
	ands r4, r0
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x1C
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0812ECF0
	add r4, r9
	ldrb r0, [r4, #0x00]
	cmp r0, #0x63
	bhi _0812ECF0
	ldr r0, _0812ECBC @ =0x083BF370
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x03
	adds r2, r1, r0
	ldrb r0, [r2, #0x04]
	movs r3, #0x03
	cmp r0, #0x00
	beq _0812EC94
	movs r3, #0x18
_0812EC94:
	ldr r0, [r7, #0x64]
	ldr r1, _0812ECC0 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r1, r1, r4
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x1A
	adds r2, r3, #0x0
_0812ECB4:
	movs r3, #0x12
	bl sub_8083860
	b _0812ECF0
_0812ECBC: .4byte 0x083BF370
_0812ECC0: .4byte 0x0300034C
_0812ECC4:
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812ECF0
	ldr r0, [r7, #0x64]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x08]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x08
	movs r3, #0x02
	bl sub_8083860
_0812ECF0:
	ldr r0, [r7, #0x64]
	ldr r1, [r7, #0x24]
	ldr r1, [r1, #0x28]
	ldr r1, [r1, #0x04]
	movs r5, #0xCA
	lsls r5, r5, #0x01
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	movs r2, #0xD0
	lsls r2, r2, #0x04
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	b _0812EF0C
_0812ED12:
	.byte 0x48, 0x46, 0x02, 0x28, 0x43, 0xD1, 0x20, 0x4D, 0xF9, 0x6D, 0xA2, 0x22, 0x12, 0x01, 0x2B, 0x68
	.byte 0x00, 0x20, 0xAB, 0xF0, 0xA6, 0xFE, 0x78, 0x6B, 0x79, 0x6A, 0x89, 0x6A, 0x4A, 0x68, 0xCA, 0x24
	.byte 0x64, 0x00, 0x12, 0x19, 0xF9, 0x6D, 0x12, 0x68, 0x89, 0x1A, 0xBA, 0xF7, 0x22, 0xFB, 0x39, 0x6E
	.byte 0xC6, 0x22, 0x52, 0x01, 0x2B, 0x68, 0x00, 0x20, 0xAB, 0xF0, 0x93, 0xFE, 0x78, 0x6B, 0x79, 0x6A
	.byte 0x89, 0x6A, 0x4A, 0x68, 0x12, 0x19, 0x39, 0x6E, 0x12, 0x68, 0x89, 0x1A, 0xBA, 0xF7, 0x11, 0xFB
	.byte 0x79, 0x6E, 0xD0, 0x22, 0x12, 0x01, 0x2B, 0x68, 0x00, 0x20, 0xAB, 0xF0, 0x82, 0xFE, 0x78, 0x6B
	.byte 0x79, 0x6A, 0x89, 0x6A, 0x4A, 0x68, 0x12, 0x19, 0x79, 0x6E, 0x12, 0x68, 0x89, 0x1A, 0xBA, 0xF7
	.byte 0x00, 0xFB, 0xB9, 0x6B, 0x80, 0x22, 0x12, 0x01, 0x2B, 0x68, 0x00, 0x20, 0xAB, 0xF0, 0x71, 0xFE
	.byte 0x39, 0x1C, 0xB9, 0x31, 0x0C, 0x91, 0xB8, 0xE0, 0x00, 0x00, 0x34, 0x10, 0x00, 0x03, 0x3A, 0x1C
	.byte 0xB9, 0x32, 0x0C, 0x92, 0x4B, 0x46, 0x03, 0x2B, 0x00, 0xD0, 0xAE, 0xE0, 0x78, 0x6B, 0xA2, 0x24
	.byte 0x24, 0x01, 0x21, 0x1C, 0xBA, 0xF7, 0x2D, 0xFB, 0x01, 0x1C, 0x78, 0x6A, 0x80, 0x6A, 0x40, 0x68
	.byte 0xCA, 0x25, 0x6D, 0x00, 0x40, 0x19, 0x00, 0x68, 0x09, 0x18, 0xF9, 0x65, 0x56, 0x4E, 0x33, 0x68
	.byte 0x00, 0x20, 0x22, 0x1C, 0xAB, 0xF0, 0x4D, 0xFE, 0x78, 0x6A, 0x80, 0x6A, 0x40, 0x68, 0x40, 0x19
	.byte 0xF9, 0x6D, 0x00, 0x68, 0x09, 0x1A, 0x33, 0x68, 0x00, 0x20, 0x22, 0x1C, 0xAB, 0xF0, 0x41, 0xFE
	.byte 0x78, 0x6A, 0x80, 0x6A, 0x41, 0x68, 0x49, 0x19, 0xF8, 0x6D, 0x09, 0x68, 0x40, 0x1A, 0xF9, 0xF7
	.byte 0x1A, 0xF8, 0xE0, 0x24, 0x24, 0x02, 0xA0, 0x46, 0x41, 0x46, 0x08, 0x43, 0x00, 0x04, 0x00, 0x0C
	.byte 0xB9, 0x6B, 0x4A, 0x46, 0x00, 0x92, 0x01, 0x90, 0x01, 0x23, 0x99, 0x46, 0x02, 0x93, 0x08, 0x1C
	.byte 0x10, 0x21, 0x88, 0x22, 0x1B, 0x23, 0xF8, 0xF7, 0xC4, 0xFF, 0x78, 0x6B, 0xC6, 0x24, 0x64, 0x01
	.byte 0x21, 0x1C, 0xBA, 0xF7, 0xEE, 0xFA, 0x01, 0x1C, 0x78, 0x6A, 0x80, 0x6A, 0x40, 0x68, 0x40, 0x19
	.byte 0x00, 0x68, 0x09, 0x18, 0x39, 0x66, 0x33, 0x68, 0x00, 0x20, 0x22, 0x1C, 0xAB, 0xF0, 0x11, 0xFE
	.byte 0x78, 0x6A, 0x80, 0x6A, 0x40, 0x68, 0x40, 0x19, 0x39, 0x6E, 0x00, 0x68, 0x09, 0x1A, 0x33, 0x68
	.byte 0x00, 0x20, 0x22, 0x1C, 0xAB, 0xF0, 0x05, 0xFE, 0x78, 0x6A, 0x80, 0x6A, 0x41, 0x68, 0x49, 0x19
	.byte 0x38, 0x6E, 0x09, 0x68, 0x40, 0x1A, 0xF8, 0xF7, 0xDE, 0xFF, 0x44, 0x46, 0x20, 0x43, 0x00, 0x04
	.byte 0x00, 0x0C, 0xBA, 0x6B, 0x0B, 0x21, 0x00, 0x91, 0x01, 0x90, 0x48, 0x46, 0x02, 0x90, 0x10, 0x1C
	.byte 0x10, 0x21, 0x08, 0x22, 0x12, 0x23, 0xF8, 0xF7, 0x8C, 0xFF, 0x78, 0x6B, 0xD0, 0x24, 0x24, 0x01
	.byte 0x21, 0x1C, 0xBA, 0xF7, 0xB6, 0xFA, 0x01, 0x1C, 0x78, 0x6A, 0x80, 0x6A, 0x40, 0x68, 0x40, 0x19
	.byte 0x00, 0x68, 0x09, 0x18, 0x79, 0x66, 0x33, 0x68, 0x00, 0x20, 0x22, 0x1C, 0xAB, 0xF0, 0xD9, 0xFD
	.byte 0x78, 0x6A, 0x80, 0x6A, 0x40, 0x68, 0x40, 0x19, 0x79, 0x6E, 0x00, 0x68, 0x09, 0x1A, 0x33, 0x68
	.byte 0x00, 0x20, 0x22, 0x1C, 0xAB, 0xF0, 0xCD, 0xFD, 0x78, 0x6A, 0x80, 0x6A, 0x41, 0x68, 0x49, 0x19
	.byte 0x78, 0x6E, 0x09, 0x68, 0x40, 0x1A, 0xF8, 0xF7, 0xA6, 0xFF, 0x41, 0x46, 0x08, 0x43, 0x00, 0x04
	.byte 0x00, 0x0C, 0xBA, 0x6B, 0x04, 0x21, 0x00, 0x91, 0x01, 0x90, 0x4B, 0x46, 0x02, 0x93, 0x10, 0x1C
	.byte 0x10, 0x21, 0x68, 0x22, 0x1A, 0x23, 0xF8, 0xF7, 0x54, 0xFF
_0812EF0C:
	ldr r2, [sp, #0x030]
	ldrb r0, [r2, #0x00]
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _0812EF1A
	cmp r1, #0x02
	bne _0812EF2C
_0812EF1A:
	adds r1, r7, #0x0
	adds r1, #0xB8
	movs r0, #0x00
	strb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	b _0812EF32
	.byte 0x00, 0x00, 0x34, 0x10, 0x00, 0x03
_0812EF2C:
	adds r0, #0x01
	ldr r4, [sp, #0x030]
	strb r0, [r4, #0x00]
_0812EF32:
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
