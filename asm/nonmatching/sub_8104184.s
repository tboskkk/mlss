	.syntax unified
	.text

	thumb_func_start sub_8104184
sub_8104184:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _081042B8 @ =0x03000FD8
	mov r9, r0
	ldr r0, [r0, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r6, [r1, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r1, [r1, #0x00]
	mov r8, r1
	ldr r1, _081042BC @ =0x00000342
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	movs r5, #0x7F
	ands r5, r0
	ldr r0, _081042C0 @ =0x0300034C
	adds r4, r0, #0x0
	adds r4, #0x42
	ldrh r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _081041D0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	subs r5, #0x01
_081041D0:
	ldrh r1, [r4, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081041E6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r5, #0x01
_081041E6:
	cmp r5, #0x00
	bge _08104220
	movs r5, #0x05
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _081041F4
	adds r0, #0xFF
_081041F4:
	asrs r7, r0, #0x08
	ldr r4, [r6, #0x3C]
	cmp r4, #0x00
	bge _081041FE
	adds r4, #0xFF
_081041FE:
	asrs r4, r4, #0x08
	mov r2, r9
	ldr r0, [r2, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x20
	subs r2, r2, r0
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_810D228
_08104220:
	cmp r5, #0x05
	ble _0810425A
	movs r5, #0x00
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0810422E
	adds r0, #0xFF
_0810422E:
	asrs r7, r0, #0x08
	ldr r4, [r6, #0x3C]
	cmp r4, #0x00
	bge _08104238
	adds r4, #0xFF
_08104238:
	asrs r4, r4, #0x08
	ldr r0, _081042B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x70
	subs r2, r2, r0
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_810D228
_0810425A:
	ldr r1, _081042B8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r2, _081042BC @ =0x00000342
	adds r0, r0, r2
	ldrb r2, [r0, #0x00]
	cmp r5, r2
	beq _081042A6
	strb r5, [r0, #0x00]
	ldr r0, [r1, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x04
	adds r1, #0x30
	adds r0, r0, r1
	movs r1, #0xA0
	subs r2, r1, r0
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0810428E
	adds r0, #0xFF
_0810428E:
	asrs r3, r0, #0x08
	ldr r1, [r6, #0x3C]
	cmp r1, #0x00
	bge _08104298
	adds r1, #0xFF
_08104298:
	asrs r1, r1, #0x08
	ldr r0, _081042C4 @ =0x00007001
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x05
	bl sub_810A648
_081042A6:
	ldr r2, _081042C0 @ =0x0300034C
	ldrh r1, [r2, #0x3E]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _081042C8
	mov r0, r8
	movs r1, #0x01
	b _081042D4
_081042B8: .4byte 0x03000FD8
_081042BC: .4byte 0x00000342
_081042C0: .4byte 0x0300034C
_081042C4: .4byte 0x00007001
_081042C8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081042DE
	mov r0, r8
	movs r1, #0x02
_081042D4:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _081042F8
_081042DE:
	adds r0, r2, #0x0
	adds r0, #0x40
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	beq _081042F8
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_081042F8:
	ldr r0, _08104348 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08104338
	mov r2, r8
	ldr r0, [r2, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810431C
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0810431C:
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, _0810434C @ =0x08104801
	mov r1, r10
	str r0, [r1, #0x04]
_08104338:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08104348: .4byte 0x0300034C
_0810434C: .4byte sub_8104800
