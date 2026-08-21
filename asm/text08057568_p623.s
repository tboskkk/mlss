	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8105E00
sub_8105E00:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08105E14
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08105E58
_08105E14:
	ldr r0, [r4, #0x08]
	bl sub_807FB64
	ldr r0, _08105E60 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	movs r1, #0x04
	cmp r2, #0x00
	beq _08105E3A
	movs r1, #0x01
_08105E3A:
	ldr r3, _08105E64 @ =0x00002001
	cmp r2, #0x00
	beq _08105E42
	adds r3, #0x4D
_08105E42:
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x10
	strh r0, [r4, #0x10]
	ldr r1, _08105E68 @ =0x08105E6D
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_08105E58:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08105E60: .4byte 0x03000FD8
_08105E64: .4byte 0x00002001
_08105E68: .4byte sub_8105E6C
	thumb_func_start sub_8105E6C
sub_8105E6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldrh r0, [r7, #0x10]
	movs r1, #0x10
	ldsh r2, [r7, r1]
	cmp r2, #0x00
	beq _08105E86
	subs r0, #0x01
	strh r0, [r7, #0x10]
	b _08105F10
_08105E86:
	ldr r0, _08105F1C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r5, [r7, #0x08]
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	str r2, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	mov r2, r8
	movs r3, #0x00
	bl sub_801E150
	adds r0, r5, #0x0
	bl sub_807BC90
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08105EC4
	adds r0, #0xFF
_08105EC4:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x00]
	ldr r1, [r4, #0x3C]
	ldr r0, [r4, #0x40]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08105ED4
	adds r1, #0xFF
_08105ED4:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r5, #0x02]
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r5, #0x12]
	ldr r0, _08105F20 @ =0x083B950C
	ldrb r0, [r0, #0x01]
	strh r0, [r7, #0x10]
	ldr r0, _08105F24 @ =0x08106875
	str r0, [r7, #0x04]
	movs r0, #0x29
	mov r1, r8
	bl play_sfx_80195B4
_08105F10:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08105F1C: .4byte 0x03000FD8
_08105F20: .4byte 0x083B950C
_08105F24: .4byte sub_8106874
	thumb_func_start sub_8105F28
sub_8105F28:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldrh r0, [r6, #0x10]
	movs r2, #0x10
	ldsh r1, [r6, r2]
	mov r8, r1
	cmp r1, #0x00
	beq _08105F48
	subs r0, #0x01
	strh r0, [r6, #0x10]
	b _08105FFC
_08105F48:
	ldr r0, _0810600C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _08106010 @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r7, [r1, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x08]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	mov r10, r1
	mov r1, r10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, _08106014 @ =0x00002088
	adds r0, r4, #0x0
	bl sub_807FB78
	movs r2, #0x01
	negs r2, r2
	mov r9, r2
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08105FAC
	adds r0, #0xFF
_08105FAC:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08105FBC
	adds r0, #0xFF
_08105FBC:
	asrs r1, r0, #0x08
	adds r0, r7, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r7, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	mov r1, r10
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _08106018 @ =0x00000155
	mov r1, r9
	bl play_sfx_80195B4
	movs r0, #0x40
	strh r0, [r6, #0x10]
	ldr r1, _0810601C @ =0x08106841
	str r1, [r6, #0x04]
	adds r0, r6, #0x0
	bl _call_via_r1
_08105FFC:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810600C: .4byte 0x03000FD8
_08106010: .4byte 0x0000033F
_08106014: .4byte 0x00002088
_08106018: .4byte 0x00000155
_0810601C: .4byte sub_8106840
	thumb_func_start sub_8106020
sub_8106020:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldrh r0, [r7, #0x10]
	movs r2, #0x10
	ldsh r1, [r7, r2]
	mov r8, r1
	cmp r1, #0x00
	beq _0810603E
	subs r0, #0x01
	strh r0, [r7, #0x10]
	b _081060D2
_0810603E:
	ldr r0, _081060E0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r7, #0x08]
	ldr r1, _081060E4 @ =0x00008004
	adds r0, r4, #0x0
	bl sub_807FB78
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	mov r2, r9
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08106086
	adds r0, #0xFF
_08106086:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08106096
	adds r1, #0xFF
_08106096:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _081060E8 @ =0x083B950C
	ldrb r0, [r0, #0x00]
	strh r0, [r7, #0x10]
	ldr r0, _081060EC @ =0x081060F1
	str r0, [r7, #0x04]
	movs r0, #0x28
	mov r1, r9
	bl play_sfx_80195B4
_081060D2:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081060E0: .4byte 0x03000FD8
_081060E4: .4byte 0x00008004
_081060E8: .4byte 0x083B950C
_081060EC: .4byte sub_81060F0
	thumb_func_start sub_81060F0
sub_81060F0:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08106104
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08106164
_08106104:
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r7, _0810616C @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x02
	adds r0, r1, r6
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r3, _08106170 @ =0x00002038
	cmp r2, #0x00
	beq _0810612C
	adds r3, #0x2F
_0810612C:
	adds r0, r5, #0x0
	movs r1, #0x03
	adds r2, r3, #0x0
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
	ldr r0, _08106174 @ =0x08106179
	str r0, [r4, #0x04]
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	movs r2, #0xE9
	cmp r0, #0x00
	beq _0810615A
	adds r2, #0x19
_0810615A:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
_08106164:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810616C: .4byte 0x03000FD8
_08106170: .4byte 0x00002038
_08106174: .4byte sub_8106178
	thumb_func_start sub_8106178
sub_8106178:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, _08106204 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081061FC
	adds r0, r2, #0x0
	movs r1, #0x04
	cmp r0, #0x00
	beq _081061AC
	movs r1, #0x01
_081061AC:
	ldr r2, _08106208 @ =0x00002001
	cmp r0, #0x00
	beq _081061B4
	adds r2, #0x4D
_081061B4:
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x00]
	ldr r2, _0810620C @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08106210 @ =0x08106791
	str r0, [r6, #0x04]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x53
	bl play_sfx_80195B4
_081061FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106204: .4byte 0x03000FD8
_08106208: .4byte 0x00002001
_0810620C: .4byte 0x0000033F
_08106210: .4byte sub_8106790
