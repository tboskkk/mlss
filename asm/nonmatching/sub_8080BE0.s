	.syntax unified
	.text

	thumb_func_start sub_8080BE0
sub_8080BE0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x010]
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08080BFA
	b _08080D9E
_08080BFA:
	ldr r0, _08080DB0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08080DB4 @ =0x00003A68
	adds r5, r0, r1
	movs r7, #0x00
	movs r2, #0x01
	negs r2, r2
	mov r8, r2
	add r6, sp, #0x00C
_08080C0C:
	ldr r4, _08080DB8 @ =0x0000700A
	adds r1, r7, r4
	mov r0, r8
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	mov r3, r8
	bl sub_8020DD0
	adds r4, r0, #0x0
	movs r1, #0x00
	str r1, [sp, #0x000]
	mov r2, r8
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sprite_show_8020CBC
	movs r0, #0x78
	strh r0, [r4, #0x00]
	movs r0, #0x50
	strh r0, [r4, #0x02]
	movs r2, #0x00
	strb r2, [r6, #0x00]
	ldr r1, _08080DBC @ =0x03000D74
	ldr r0, [r1, #0x00]
	ldr r1, [r0, #0x3C]
	adds r0, r4, #0x0
	add r2, sp, #0x00C
	bl sub_801E80C
	ldrh r2, [r4, #0x30]
	str r2, [sp, #0x014]
	ldrb r0, [r4, #0x13]
	movs r2, #0x05
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8021308
	ldr r0, _08080DC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	movs r4, #0xE0
	lsls r4, r4, #0x01
	adds r0, r0, r4
	adds r0, r0, r1
	str r5, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	strh r0, [r5, #0x00]
	adds r5, #0x02
	ldr r1, _08080DBC @ =0x03000D74
	ldr r0, [r1, #0x00]
	ldr r2, [r0, #0x3C]
	ldrb r0, [r6, #0x00]
	subs r0, #0x01
	strb r0, [r6, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xFF
	beq _08080CF2
	movs r4, #0xFF
	lsls r4, r4, #0x08
	mov r10, r4
	ldr r0, _08080DC4 @ =0x000001FF
	mov r9, r0
	movs r1, #0xFE
	lsls r1, r1, #0x08
	mov r12, r1
	add r3, sp, #0x00C
_08080CA2:
	ldrh r1, [r2, #0x00]
	ldrb r0, [r2, #0x00]
	subs r0, #0x50
	strh r0, [r5, #0x00]
	adds r5, #0x02
	mov r4, r10
	ands r1, r4
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r4, #0x0
	orrs r1, r0
	strh r1, [r5, #0x00]
	adds r5, #0x02
	ldrh r1, [r2, #0x02]
	adds r0, r1, #0x0
	mov r4, r9
	ands r0, r4
	subs r0, #0x78
	strh r0, [r5, #0x00]
	adds r5, #0x02
	mov r0, r12
	ands r1, r0
	strh r1, [r5, #0x00]
	adds r5, #0x02
	ldrh r0, [r2, #0x04]
	ldr r1, _08080DC8 @ =0x00000FFF
	ands r0, r1
	ldr r4, _08080DCC @ =0xFFFFB800
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	adds r5, #0x02
	ldr r2, [r2, #0x10]
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xFF
	bne _08080CA2
_08080CF2:
	adds r7, #0x01
	cmp r7, #0x07
	ble _08080C0C
	ldr r0, _08080DBC @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x08]
	ldr r2, [sp, #0x014]
	adds r0, r0, r2
	strh r0, [r1, #0x08]
	ldr r0, _08080DC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sprite_heap_free
	movs r7, #0x00
_08080D10:
	ldr r0, _08080DC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x04
	beq _08080D2E
	cmp r1, #0x02
	bne _08080D50
_08080D2E:
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r0, [r2, #0x10]
	adds r0, #0x25
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r3, r0, #0x0
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082E1C
_08080D50:
	adds r1, r7, #0x1
	ldr r0, _08080DC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x04
	beq _08080D70
	cmp r1, #0x02
	bne _08080D92
_08080D70:
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r0, [r2, #0x10]
	adds r0, #0x25
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r3, r0, #0x0
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082E1C
_08080D92:
	adds r7, #0x02
	cmp r7, #0x07
	ble _08080D10
	ldr r0, _08080DD0 @ =0x08080DD5
	ldr r4, [sp, #0x010]
	str r0, [r4, #0x04]
_08080D9E:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080DB0: .4byte 0x03000FDC
_08080DB4: .4byte 0x00003A68
_08080DB8: .4byte 0x0000700A
_08080DBC: .4byte 0x03000D74
_08080DC0: .4byte 0x03000FD8
_08080DC4: .4byte 0x000001FF
_08080DC8: .4byte 0x00000FFF
_08080DCC: .4byte 0xFFFFB800
_08080DD0: .4byte sub_8080DD4
