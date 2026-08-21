	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A07B0
sub_80A07B0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A07D0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080A07D0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80A07D8
sub_80A07D8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r0, #0x00
	strh r0, [r5, #0x1C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	bl sub_8087CE4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	negs r4, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r0, r0
	orrs r0, r4
	cmp r0, #0x00
	blt _080A0820
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0xD8
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x30]
	adds r0, #0x84
	movs r1, #0xA0
	lsls r1, r1, #0x06
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x3C
	bl sub_80883A0
	ldr r0, _080A0828 @ =0x0809F479
	str r0, [r5, #0x4C]
_080A0820:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A0828: .4byte sub_809F478
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x45, 0x08, 0x0A, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xA9, 0x08, 0x0A, 0x08
	thumb_func_start sub_80A0844
sub_80A0844:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x20
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
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080A086C
	adds r1, #0xFF
_080A086C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080A0876
	adds r2, #0xFF
_080A0876:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080A0880
	adds r3, #0xFF
_080A0880:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080A08A0 @ =0x00002AC7
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	ldr r0, _080A08A4 @ =0x0809FF4D
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080A08A0: .4byte 0x00002AC7
_080A08A4: .4byte sub_809FF4C
	thumb_func_start sub_80A08A8
sub_80A08A8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x18
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080A08CC
	adds r1, #0xFF
_080A08CC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080A08D6
	adds r2, #0xFF
_080A08D6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080A08E0
	adds r3, #0xFF
_080A08E0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080A08F8 @ =0x00002AAF
	bl sub_80DF024
	ldr r0, _080A08FC @ =0x0809F1ED
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A08F8: .4byte 0x00002AAF
_080A08FC: .4byte sub_809F1EC
	thumb_func_start sub_80A0900
sub_80A0900:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	mov r9, r0
	ldr r2, _080A0988 @ =0x03000FF4
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x3C
	ldr r1, [r2, #0x00]
	subs r1, r1, r0
	movs r0, #0x8A
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrh r0, [r1, #0x2A]
	str r0, [r2, #0x00]
	ldr r0, _080A098C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r5
	mov r8, r1
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r2, r9
	ldr r0, [r2, #0x2C]
	str r0, [r6, #0x2C]
	str r0, [r1, #0x2C]
	ldr r1, [r2, #0x6C]
	str r1, [r6, #0x6C]
	mov r2, r8
	str r1, [r2, #0x6C]
	movs r3, #0x00
	str r3, [r0, #0x50]
	str r3, [r6, #0x50]
	str r3, [r2, #0x50]
	adds r2, r0, #0x0
	adds r2, #0x7C
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r2, #0x00]
	adds r4, #0x84
	strh r1, [r4, #0x00]
	adds r5, #0x84
	strh r1, [r5, #0x00]
	ldr r1, _080A0990 @ =0x080A0995
	mov r4, r9
	str r1, [r4, #0x4C]
	strh r3, [r6, #0x24]
	mov r1, r8
	strh r3, [r1, #0x24]
	bl sub_80870B4
	movs r0, #0x01
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080A0988: .4byte 0x03000FF4
_080A098C: .4byte 0x03000FD8
_080A0990: .4byte sub_80A0994
	thumb_func_start sub_80A0994
sub_80A0994:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080A0A98 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x28]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A09C8
	adds r1, r5, #0x0
	adds r1, #0x7C
	ldr r0, _080A0A9C @ =0x00000199
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r1, #0x19
	strb r1, [r0, #0x00]
_080A09C8:
	ldr r0, [r5, #0x28]
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _080A09E8
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0x66
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r1, #0x06
	strb r1, [r0, #0x00]
_080A09E8:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080A09F0
	adds r1, #0xFF
_080A09F0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080A09FA
	adds r2, #0xFF
_080A09FA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080A0A04
	adds r3, #0xFF
_080A0A04:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x01
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A0A20
	cmp r1, #0x04
	bne _080A0A66
_080A0A20:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A0A2E
	adds r0, #0xFF
_080A0A2E:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x18
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A0A40
	adds r0, #0xFF
_080A0A40:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A0A4E
	adds r0, #0xFF
_080A0A4E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
_080A0A66:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A0A78
	cmp r1, #0x04
	bne _080A0AE0
_080A0A78:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A0AA4
	ldr r2, _080A0AA0 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A0AB0
	.byte 0x00, 0x00
_080A0A98: .4byte 0x03000FD8
_080A0A9C: .4byte 0x00000199
_080A0AA0: .4byte 0x00002002
_080A0AA4:
	ldr r2, _080A0AEC @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A0AB0:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080A0AC6
	movs r2, #0x01
_080A0AC6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A0AE0:
	ldr r0, _080A0AF0 @ =0x080A0AF5
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A0AEC: .4byte 0x0000204F
_080A0AF0: .4byte sub_80A0AF4
	thumb_func_start sub_80A0AF4
sub_80A0AF4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A0B60 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8087CE4
	adds r5, r4, #0x0
	adds r5, #0x81
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A0B58
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A0B26
	cmp r1, #0x04
	bne _080A0B54
_080A0B26:
	ldr r2, _080A0B64 @ =0x03001038
	ldr r0, _080A0B68 @ =0x0819832C
	ldr r1, _080A0B6C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x02
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_080A0B54:
	ldr r0, _080A0B70 @ =0x080A0B75
	str r0, [r6, #0x4C]
_080A0B58:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A0B60: .4byte 0x03000FD8
_080A0B64: .4byte 0x03001038
_080A0B68: .4byte 0x0819832C
_080A0B6C: .4byte 0x08198220
_080A0B70: .4byte sub_80A0B74
	thumb_func_start sub_80A0B74
sub_80A0B74:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A0BC8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A0BEC
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A0BA8
	cmp r1, #0x04
	bne _080A0BE8
_080A0BA8:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A0BCC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _080A0BD8
_080A0BC8: .4byte 0x03000FD8
_080A0BCC:
	ldr r2, _080A0BF4 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_080A0BD8:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A0BE8:
	ldr r0, _080A0BF8 @ =0x080A0BFD
	str r0, [r6, #0x4C]
_080A0BEC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A0BF4: .4byte 0x0000204D
_080A0BF8: .4byte sub_80A0BFC
	thumb_func_start sub_80A0BFC
sub_80A0BFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080A0CA0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r5, [r0, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080A0C24
	b _080A0D62
_080A0C24:
	movs r1, #0x01
	negs r1, r1
	mov r8, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A0C42
	cmp r1, #0x04
	bne _080A0CF2
_080A0C42:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080A0C4A
	adds r1, #0xFF
_080A0C4A:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080A0C60
	adds r0, #0xFF
_080A0C60:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080A0C76
	adds r3, #0xFF
_080A0C76:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080A0CA4
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080A0CB4
	.byte 0x00, 0x00
_080A0CA0: .4byte 0x03000FD8
_080A0CA4:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080A0CB4:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080A0CBC
	adds r0, #0xFF
_080A0CBC:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080A0D24 @ =0x03001038
	ldr r0, _080A0D28 @ =0x0819832C
	ldr r1, _080A0D2C @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080A0CD6
	adds r1, #0x3F
_080A0CD6:
	asrs r1, r1, #0x06
	adds r1, #0x26
	ldr r0, _080A0D30 @ =0x000005A4
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080A0CF2:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A0D04
	cmp r1, #0x04
	bne _080A0D50
_080A0D04:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A0D34
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080A0D40
_080A0D24: .4byte 0x03001038
_080A0D28: .4byte 0x0819832C
_080A0D2C: .4byte 0x08198220
_080A0D30: .4byte 0x000005A4
_080A0D34:
	ldr r2, _080A0D70 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080A0D40:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A0D50:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A0D74 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A0D78 @ =0x080A0D7D
	mov r1, r9
	str r0, [r1, #0x4C]
_080A0D62:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A0D70: .4byte 0x0000204D
_080A0D74: .4byte 0x00000FFF
_080A0D78: .4byte sub_80A0D7C
	thumb_func_start sub_80A0D7C
sub_80A0D7C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080A0EAC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r8, r1
	mov r10, r8
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r1, r0, #0x03
	mov r3, r8
	subs r3, r3, r1
	mov r8, r3
	lsls r0, r0, #0x02
	mov r6, r10
	adds r7, r0, r6
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r7
	bge _080A0DD8
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A0DD8:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r6, r1, #0x0
	cmp r0, #0x00
	beq _080A0DE8
	b _080A0F18
_080A0DE8:
	mov r1, r8
	adds r2, r7, #0x0
	cmp r1, #0x00
	bge _080A0DF2
	movs r1, #0x00
_080A0DF2:
	cmp r7, #0x00
	bge _080A0DF8
	movs r2, #0x00
_080A0DF8:
	cmp r1, r10
	ble _080A0DFE
	mov r1, r10
_080A0DFE:
	ldr r0, _080A0EB0 @ =0x00007FFF
	cmp r2, r0
	ble _080A0E06
	adds r2, r0, #0x0
_080A0E06:
	cmp r2, r1
	bge _080A0E0C
	adds r1, r2, #0x0
_080A0E0C:
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r0, r1
	blt _080A0E22
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A0E24
_080A0E22:
	movs r1, #0x00
_080A0E24:
	adds r6, r5, #0x0
	adds r6, #0xAE
	cmp r1, #0x00
	beq _080A0E48
	ldr r0, _080A0EB4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080A0E48
	ldrh r0, [r6, #0x00]
	ldr r1, _080A0EB8 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r6, #0x00]
_080A0E48:
	ldrh r0, [r6, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	bne _080A0F18
	adds r1, r7, #0x0
	cmp r7, #0x00
	bge _080A0E58
	movs r1, #0x00
_080A0E58:
	ldr r0, _080A0EB0 @ =0x00007FFF
	cmp r1, r0
	ble _080A0E60
	adds r1, r0, #0x0
_080A0E60:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080A0E7A
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A0E7C
_080A0E7A:
	movs r2, #0x00
_080A0E7C:
	cmp r2, #0x00
	beq _080A0EBC
	ldr r0, _080A0EAC @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldrh r1, [r6, #0x00]
	ldr r0, _080A0EB8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r6, #0x00]
	b _080A0F18
_080A0EAC: .4byte 0x03000FD8
_080A0EB0: .4byte 0x00007FFF
_080A0EB4: .4byte 0x0300034C
_080A0EB8: .4byte 0x00000FFF
_080A0EBC:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r7
	bgt _080A0F18
	ldr r0, _080A0F7C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A0EDC
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A0F18
_080A0EDC:
	ldr r4, _080A0F80 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
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
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A0F18
	ldrh r0, [r6, #0x00]
	ldr r1, _080A0F84 @ =0x00000FFF
	ands r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r0, r4, #0x0
	orrs r1, r0
	strh r1, [r6, #0x00]
_080A0F18:
	ldrh r0, [r6, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080A0F90
	mov r2, r10
	adds r1, r7, #0x0
	cmp r1, #0x00
	bge _080A0F2A
	movs r1, #0x00
_080A0F2A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080A0F34
	adds r2, r0, #0x0
_080A0F34:
	ldr r0, _080A0F88 @ =0x00007FFF
	cmp r1, r0
	ble _080A0F3C
	adds r1, r0, #0x0
_080A0F3C:
	cmp r1, r2
	bge _080A0F42
	adds r2, r1, #0x0
_080A0F42:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080A0F5C
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080A0F5E
_080A0F5C:
	movs r2, #0x00
_080A0F5E:
	cmp r2, #0x00
	beq _080A0F90
	cmp r3, #0x01
	ble _080A0F90
	ldrh r0, [r6, #0x00]
	ldr r1, _080A0F84 @ =0x00000FFF
	ands r1, r0
	strh r1, [r6, #0x00]
	ldr r1, _080A0F8C @ =0x080A158D
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080A113E
_080A0F7C: .4byte 0x0300034C
_080A0F80: .4byte 0x03000FD8
_080A0F84: .4byte 0x00000FFF
_080A0F88: .4byte 0x00007FFF
_080A0F8C: .4byte sub_80A158C
_080A0F90:
	mov r2, r8
	cmp r2, #0x00
	bge _080A0F98
	movs r2, #0x00
_080A0F98:
	ldr r0, _080A1038 @ =0x00007FFF
	cmp r2, r0
	ble _080A0FA0
	adds r2, r0, #0x0
_080A0FA0:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	adds r6, r0, #0x0
	cmp r1, r2
	bgt _080A0FBC
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080A0FBE
_080A0FBC:
	movs r1, #0x00
_080A0FBE:
	cmp r1, #0x00
	beq _080A0FCA
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080A0FCA:
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080A103C @ =0x03001038
	ldr r2, _080A1040 @ =0x0819832C
	ldr r3, _080A1044 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, r2
	bgt _080A0FFE
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080A1000
_080A0FFE:
	movs r1, #0x00
_080A1000:
	cmp r1, #0x00
	beq _080A1064
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1016
	cmp r1, #0x04
	bne _080A1064
_080A1016:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A1048
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080A1054
	.byte 0x00, 0x00
_080A1038: .4byte 0x00007FFF
_080A103C: .4byte 0x03001038
_080A1040: .4byte 0x0819832C
_080A1044: .4byte 0x08198220
_080A1048:
	ldr r2, _080A112C @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080A1054:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A1064:
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, r2
	bgt _080A107E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080A1080
_080A107E:
	movs r1, #0x00
_080A1080:
	cmp r1, #0x00
	beq _080A10DA
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1096
	cmp r1, #0x04
	bne _080A10B4
_080A1096:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x07
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
_080A10B4:
	mov r6, r9
	ldr r1, [r6, #0x40]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	ble _080A10DA
	str r5, [r6, #0x2C]
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A10D4
	cmp r1, #0x04
	bne _080A10DA
_080A10D4:
	ldr r0, _080A1130 @ =0x080A1AB9
	mov r1, r9
	str r0, [r1, #0x4C]
_080A10DA:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A113E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2A
	bl play_sfx_80195B4
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080A1134 @ =0x040A1000
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r9
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080A1138
	adds r0, r5, #0x0
	bl sub_8086764
	b _080A113E
_080A112C: .4byte 0x0000204D
_080A1130: .4byte sub_80A1AB8
_080A1134: .4byte 0x040A1000
_080A1138:
	ldr r0, _080A1150 @ =0x080A1155
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x4C]
_080A113E:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A1150: .4byte sub_80A1154
