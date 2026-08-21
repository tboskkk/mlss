	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A6CB0
sub_80A6CB0:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	mov r9, r0
	ldr r2, _080A6D38 @ =0x03000FF4
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
	ldr r0, _080A6D3C @ =0x03000FD8
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
	ldr r1, _080A6D40 @ =0x080A6D45
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
_080A6D38: .4byte 0x03000FF4
_080A6D3C: .4byte 0x03000FD8
_080A6D40: .4byte sub_80A6D44
	thumb_func_start sub_80A6D44
sub_80A6D44:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r5, _080A6E2C @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r0, #0x00
	strb r0, [r1, #0x0E]
	ldr r6, [r5, #0x00]
	ldr r0, _080A6E30 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x08]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x1A
	movs r4, #0x01
	adds r2, r4, #0x0
	ands r2, r0
	ldrb r3, [r1, #0x0B]
	lsrs r3, r3, #0x06
	ldrb r0, [r1, #0x0C]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	orrs r0, r3
	ands r0, r4
	lsls r0, r0, #0x01
	adds r2, r2, r0
	lsls r2, r2, #0x06
	ldrb r1, [r6, #0x0A]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r2
	strb r0, [r6, #0x0A]
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A6DB2
	cmp r1, #0x04
	bne _080A6DF8
_080A6DB2:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6DC0
	adds r0, #0xFF
_080A6DC0:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x14
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6DD2
	adds r0, #0xFF
_080A6DD2:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6DE4
	adds r0, #0xFF
_080A6DE4:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080A6DF8:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A6E0C
	cmp r2, #0x04
	bne _080A6E74
_080A6E0C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A6E38
	ldr r2, _080A6E34 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A6E44
	.byte 0x00, 0x00
_080A6E2C: .4byte 0x03000FD8
_080A6E30: .4byte 0x03000FF4
_080A6E34: .4byte 0x00002002
_080A6E38:
	ldr r2, _080A6F18 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A6E44:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080A6E5A
	movs r2, #0x01
_080A6E5A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A6E74:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A6E82
	cmp r2, #0x04
	bne _080A6E8C
_080A6E82:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080A6E8C:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A6EA0
	cmp r2, #0x04
	bne _080A6EEA
_080A6EA0:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6EAE
	adds r0, #0xFF
_080A6EAE:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x22
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6EC0
	adds r0, #0xFF
_080A6EC0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A6ED2
	adds r0, #0xFF
_080A6ED2:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080A6EEA:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A6EF8
	cmp r2, #0x04
	bne _080A6F5C
_080A6EF8:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A6F20
	ldr r2, _080A6F1C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A6F2C
	.byte 0x00, 0x00
_080A6F18: .4byte 0x0000204F
_080A6F1C: .4byte 0x00002002
_080A6F20:
	ldr r2, _080A6F70 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A6F2C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080A6F42
	movs r2, #0x01
_080A6F42:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A6F5C:
	ldr r0, _080A6F74 @ =0x080AC5A5
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A6F70: .4byte 0x0000204F
_080A6F74: .4byte sub_80AC5A4
	thumb_func_start sub_80A6F78
sub_80A6F78:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A6FD8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	ldr r0, [r0, #0x74]
	ldr r5, [r0, #0x54]
	cmp r5, #0x00
	bne _080A6FD0
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A6F9C
	cmp r1, #0x04
	bne _080A6FCC
_080A6F9C:
	ldr r2, _080A6FDC @ =0x03001038
	ldr r0, _080A6FE0 @ =0x0819832C
	ldr r1, _080A6FE4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A6FCC:
	ldr r0, _080A6FE8 @ =0x080A6FED
	str r0, [r6, #0x4C]
_080A6FD0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A6FD8: .4byte 0x03000FD8
_080A6FDC: .4byte 0x03001038
_080A6FE0: .4byte 0x0819832C
_080A6FE4: .4byte 0x08198220
_080A6FE8: .4byte sub_80A6FEC
	thumb_func_start sub_80A6FEC
sub_80A6FEC:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080A7084 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A707E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A7030
	cmp r1, #0x04
	bne _080A704C
_080A7030:
	ldr r2, _080A7088 @ =0x0000202F
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
_080A704C:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A705E
	cmp r1, #0x04
	bne _080A707A
_080A705E:
	ldr r2, _080A708C @ =0x0000205F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A707A:
	ldr r0, _080A7090 @ =0x080A7095
	str r0, [r7, #0x4C]
_080A707E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A7084: .4byte 0x03000FD8
_080A7088: .4byte 0x0000202F
_080A708C: .4byte 0x0000205F
_080A7090: .4byte sub_80A7094
	thumb_func_start sub_80A7094
sub_80A7094:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080A7194 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r4, r7, #0x0
	adds r4, #0x08
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A7186
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x2B
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A70DC
	cmp r1, #0x04
	bne _080A713E
_080A70DC:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080A70E4
	adds r1, #0xFF
_080A70E4:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov r12, r1
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080A70FC
	adds r0, #0xFF
_080A70FC:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080A7112
	adds r3, #0xFF
_080A7112:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x0C
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r12
	bl sub_808843C
	movs r1, #0x2F
	adds r0, r7, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	ldr r1, _080A7198 @ =0x00000466
	adds r0, r4, #0x0
	bl sub_8088164
_080A713E:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A7150
	cmp r1, #0x04
	bne _080A716C
_080A7150:
	ldr r2, _080A719C @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x0E
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
_080A716C:
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A71A0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A71A4 @ =0x080A71A9
	mov r1, r9
	str r0, [r1, #0x4C]
_080A7186:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A7194: .4byte 0x03000FD8
_080A7198: .4byte 0x00000466
_080A719C: .4byte 0x00002030
_080A71A0: .4byte 0x00000FFF
_080A71A4: .4byte sub_80A71A8
	thumb_func_start sub_80A71A8
sub_80A71A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	str r0, [sp, #0x004]
	ldr r0, _080A72E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r7, [r0, #0x74]
	adds r6, r7, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x00C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x03
	ldr r3, [sp, #0x00C]
	subs r0, r3, r0
	str r0, [sp, #0x008]
	lsls r0, r1, #0x02
	subs r3, r3, r0
	str r3, [sp, #0x00C]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r1, r1, r0
	mov r10, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r10
	bge _080A7216
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A7216:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r2, r4, #0x0
	adds r2, #0xB4
	str r2, [sp, #0x014]
	mov r9, r1
	adds r7, #0xCD
	str r7, [sp, #0x018]
	adds r4, #0x81
	str r4, [sp, #0x010]
	cmp r0, #0x00
	beq _080A7234
	b _080A776A
_080A7234:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bge _080A723C
	movs r1, #0x00
_080A723C:
	ldr r0, _080A72E8 @ =0x00007FFF
	cmp r1, r0
	ble _080A7244
	adds r1, r0, #0x0
_080A7244:
	ldr r4, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080A7258
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A725A
_080A7258:
	movs r2, #0x00
_080A725A:
	adds r7, r5, #0x0
	adds r7, #0x7E
	adds r0, r5, #0x0
	adds r0, #0xAC
	str r0, [sp, #0x014]
	movs r1, #0xAE
	adds r1, r1, r5
	mov r9, r1
	adds r3, r6, #0x0
	adds r3, #0xC5
	str r3, [sp, #0x018]
	adds r4, r5, #0x0
	adds r4, #0x79
	str r4, [sp, #0x010]
	cmp r2, #0x00
	beq _080A7350
	ldr r2, _080A72E4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080A72EC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A729E
	movs r1, #0x33
_080A7292:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7292
_080A729E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A72B2
	movs r1, #0x33
_080A72A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A72A6
_080A72B2:
	mov r2, r8
	cmp r2, #0x00
	beq _080A72C6
	movs r1, #0x33
_080A72BA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A72BA
_080A72C6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7348
	movs r1, #0x03
_080A72D0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A72DA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A72DA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A72D0
	b _080A7348
	.byte 0x00, 0x00
_080A72E4: .4byte 0x03000FD8
_080A72E8: .4byte 0x00007FFF
_080A72EC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7302
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A72F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A72F6
_080A7302:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7318
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A730C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A730C
_080A7318:
	mov r2, r8
	cmp r2, #0x00
	beq _080A732E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7322:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7322
_080A732E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7348
	movs r1, #0x10
_080A7338:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7342
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7342:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7338
_080A7348:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080A7350:
	ldr r1, [sp, #0x00C]
	mov r2, r10
	cmp r1, #0x00
	bge _080A735A
	movs r1, #0x00
_080A735A:
	mov r0, r10
	cmp r0, #0x00
	bge _080A7362
	movs r2, #0x00
_080A7362:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A736C
	adds r1, r0, #0x0
_080A736C:
	ldr r0, _080A745C @ =0x00007FFF
	cmp r2, r0
	ble _080A7374
	adds r2, r0, #0x0
_080A7374:
	cmp r2, r1
	bge _080A737A
	adds r1, r2, #0x0
_080A737A:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, r1
	blt _080A738E
	ldr r4, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A7390
_080A738E:
	movs r1, #0x00
_080A7390:
	cmp r1, #0x00
	bne _080A7396
	b _080A74DC
_080A7396:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080A7460 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A73B4
	b _080A74DC
_080A73B4:
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080A7464 @ =0x03000FD8
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
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A74CA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A7468
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A7414
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7408:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7408
_080A7414:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A742A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A741E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A741E
_080A742A:
	mov r2, r8
	cmp r2, #0x00
	beq _080A7440
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7434:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7434
_080A7440:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A74C6
	movs r1, #0x10
_080A744A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7454
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7454:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A744A
	b _080A74C6
_080A745C: .4byte 0x00007FFF
_080A7460: .4byte 0x0300034C
_080A7464: .4byte 0x03000FD8
_080A7468:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A7480
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7474:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7474
_080A7480:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7496
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A748A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A748A
_080A7496:
	mov r2, r8
	cmp r2, #0x00
	beq _080A74AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A74A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A74A0
_080A74AC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A74C6
	movs r1, #0x10
_080A74B6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A74C0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A74C0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A74B6
_080A74C6:
	bl sub_807F448
_080A74CA:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080A75AC @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080A74DC:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080A74E8
	b _080A776A
_080A74E8:
	mov r1, r10
	cmp r1, #0x00
	bge _080A74F0
	movs r1, #0x00
_080A74F0:
	ldr r0, _080A75B0 @ =0x00007FFF
	cmp r1, r0
	ble _080A74F8
	adds r1, r0, #0x0
_080A74F8:
	ldr r2, [sp, #0x014]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080A750C
	movs r4, #0x00
	ldsh r0, [r7, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A750E
_080A750C:
	movs r2, #0x00
_080A750E:
	cmp r2, #0x00
	bne _080A7514
	b _080A7620
_080A7514:
	ldr r3, _080A75B4 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080A75AC @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r9
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A75B8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7564
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7558:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7558
_080A7564:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A757A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A756E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A756E
_080A757A:
	mov r2, r8
	cmp r2, #0x00
	beq _080A7590
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7584:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7584
_080A7590:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7614
	movs r1, #0x10
_080A759A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A75A4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A75A4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A759A
	b _080A7614
_080A75AC: .4byte 0x00000FFF
_080A75B0: .4byte 0x00007FFF
_080A75B4: .4byte 0x03000FD8
_080A75B8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A75CE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A75C2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A75C2
_080A75CE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A75E4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A75D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A75D8
_080A75E4:
	mov r2, r8
	cmp r2, #0x00
	beq _080A75FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A75EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A75EE
_080A75FA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7614
	movs r1, #0x10
_080A7604:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A760E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A760E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7604
_080A7614:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080A776A
_080A7620:
	movs r1, #0x00
	ldsh r0, [r7, r1]
	cmp r0, r10
	ble _080A762A
	b _080A776A
_080A762A:
	ldr r0, _080A76EC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A7640
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080A7640
	b _080A776A
_080A7640:
	ldr r2, _080A76F0 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080A776A
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080A76F4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A76F8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A76A2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7696:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7696
_080A76A2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A76B8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A76AC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A76AC
_080A76B8:
	mov r2, r8
	cmp r2, #0x00
	beq _080A76CE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A76C2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A76C2
_080A76CE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7754
	movs r1, #0x10
_080A76D8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A76E2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A76E2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A76D8
	b _080A7754
	.byte 0x00, 0x00
_080A76EC: .4byte 0x0300034C
_080A76F0: .4byte 0x03000FD8
_080A76F4: .4byte 0x00000FFF
_080A76F8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A770E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7702:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7702
_080A770E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7724
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7718:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7718
_080A7724:
	mov r2, r8
	cmp r2, #0x00
	beq _080A773A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A772E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A772E
_080A773A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7754
	movs r1, #0x10
_080A7744:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A774E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A774E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7744
_080A7754:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080A776A:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	beq _080A77F0
	movs r3, #0x80
	lsls r3, r3, #0x07
	mov r2, r10
	cmp r2, #0x00
	bge _080A7780
	movs r2, #0x00
_080A7780:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r3, r0
	ble _080A778A
	adds r3, r0, #0x0
_080A778A:
	ldr r0, _080A78F4 @ =0x00007FFF
	cmp r2, r0
	ble _080A7792
	adds r2, r0, #0x0
_080A7792:
	cmp r2, r3
	bge _080A7798
	adds r3, r2, #0x0
_080A7798:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r3
	blt _080A77B0
	ldr r3, [sp, #0x014]
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r3, #0x01
	cmp r0, r2
	ble _080A77B2
_080A77B0:
	movs r3, #0x00
_080A77B2:
	cmp r3, #0x00
	beq _080A77F0
	cmp r1, #0x02
	bne _080A77F0
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	bne _080A77EC
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080A77CE
	adds r1, #0xFF
_080A77CE:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080A77D8
	adds r2, #0xFF
_080A77D8:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A77E2
	adds r3, #0xFF
_080A77E2:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080A78F8 @ =0x00002F7D
	bl sub_80DF024
_080A77EC:
	movs r0, #0x01
	str r0, [r4, #0x00]
_080A77F0:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bge _080A77F8
	movs r1, #0x00
_080A77F8:
	ldr r0, _080A78F4 @ =0x00007FFF
	cmp r1, r0
	ble _080A7800
	adds r1, r0, #0x0
_080A7800:
	ldr r2, [sp, #0x014]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080A7818
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A781A
_080A7818:
	movs r2, #0x00
_080A781A:
	cmp r2, #0x00
	beq _080A7826
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080A7826:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080A782E
	movs r1, #0x00
_080A782E:
	ldr r0, _080A78F4 @ =0x00007FFF
	cmp r1, r0
	ble _080A7836
	adds r1, r0, #0x0
_080A7836:
	ldr r2, [sp, #0x014]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080A784E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A7850
_080A784E:
	movs r2, #0x00
_080A7850:
	cmp r2, #0x00
	beq _080A785C
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080A785C:
	movs r2, #0x80
	lsls r2, r2, #0x07
	ldr r1, [sp, #0x014]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, r2
	bgt _080A7878
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080A787A
_080A7878:
	movs r1, #0x00
_080A787A:
	cmp r1, #0x00
	beq _080A789E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	ldr r2, _080A78FC @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A789E:
	ldr r1, [sp, #0x018]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	adds r4, r0, #0x0
	subs r4, #0x09
	ldr r3, [r5, #0x18]
	ldr r0, [r5, #0x40]
	cmp r3, r0
	bge _080A78D2
	lsls r1, r4, #0x08
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	cmp r3, r0
	bge _080A78D2
	ldr r2, _080A7900 @ =0x03001038
	ldr r0, _080A7904 @ =0x0819832C
	ldr r1, _080A7908 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x06]
_080A78D2:
	ldr r2, [sp, #0x010]
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A78E4
	ldr r0, _080A790C @ =0x080A7911
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080A78E4:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A78F4: .4byte 0x00007FFF
_080A78F8: .4byte 0x00002F7D
_080A78FC: .4byte 0x00002030
_080A7900: .4byte 0x03001038
_080A7904: .4byte 0x0819832C
_080A7908: .4byte 0x08198220
_080A790C: .4byte sub_80A7910
	thumb_func_start sub_80A7910
sub_80A7910:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080A7980 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	mov r0, r9
	ldr r5, [r0, #0x2C]
	ldr r1, [r2, #0x08]
	ldrh r3, [r1, #0x06]
	movs r7, #0x06
	ldsh r0, [r1, r7]
	cmp r0, #0xFF
	bgt _080A7954
	adds r0, r3, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r1, [r2, #0x08]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080A794E
	b _080A7A88
_080A794E:
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
_080A7954:
	ldr r1, [r2, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _080A7988
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A797A
	cmp r1, #0x04
	beq _080A797A
	b _080A7A88
_080A797A:
	ldr r0, _080A7984 @ =0x080A83A1
	str r0, [r6, #0x4C]
	b _080A7A88
_080A7980: .4byte 0x03000FD8
_080A7984: .4byte sub_80A83A0
_080A7988:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r6, #0x08]
	adds r0, #0x20
	movs r1, #0x08
	strb r1, [r0, #0x00]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r7, #0x01
	negs r7, r7
	mov r8, r7
	movs r0, #0x2B
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A79CC
	cmp r1, #0x04
	bne _080A7A76
_080A79CC:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080A79D4
	adds r1, #0xFF
_080A79D4:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080A79EA
	adds r0, #0xFF
_080A79EA:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080A7A00
	adds r3, #0xFF
_080A7A00:
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
	bne _080A7A28
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080A7A38
_080A7A28:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080A7A38:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080A7A40
	adds r0, #0xFF
_080A7A40:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080A7A98 @ =0x03001038
	ldr r0, _080A7A9C @ =0x0819832C
	ldr r1, _080A7AA0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080A7A5A
	adds r1, #0x3F
_080A7A5A:
	asrs r1, r1, #0x06
	adds r1, #0x3C
	movs r0, #0xE1
	lsls r0, r0, #0x04
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	ldr r1, _080A7AA4 @ =0x00000566
	adds r0, r6, #0x0
	bl sub_8088164
_080A7A76:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A7AA8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A7AAC @ =0x080A7AB1
	mov r1, r9
	str r0, [r1, #0x4C]
_080A7A88:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A7A98: .4byte 0x03001038
_080A7A9C: .4byte 0x0819832C
_080A7AA0: .4byte 0x08198220
_080A7AA4: .4byte 0x00000566
_080A7AA8: .4byte 0x00000FFF
_080A7AAC: .4byte sub_80A7AB0
	thumb_func_start sub_80A7AB0
sub_80A7AB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080A7BC8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r2, r0, #0x02
	adds r2, r2, r0
	lsls r1, r2, #0x01
	mov r3, r9
	subs r3, r3, r1
	mov r12, r3
	lsls r1, r0, #0x03
	subs r0, r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	add r9, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080A7B16
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A7B16:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080A7B26
	b _080A8064
_080A7B26:
	mov r1, r12
	cmp r1, #0x00
	bge _080A7B2E
	movs r1, #0x00
_080A7B2E:
	ldr r0, _080A7BCC @ =0x00007FFF
	cmp r1, r0
	ble _080A7B36
	adds r1, r0, #0x0
_080A7B36:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A7B4C
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A7B4E
_080A7B4C:
	movs r2, #0x00
_080A7B4E:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080A7C34
	ldr r2, _080A7BC8 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080A7BD0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7B82
	movs r1, #0x4C
_080A7B76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7B76
_080A7B82:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A7B96
	movs r1, #0x4C
_080A7B8A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7B8A
_080A7B96:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7BAA
	movs r1, #0x4C
_080A7B9E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7B9E
_080A7BAA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7C2C
	movs r1, #0x04
_080A7BB4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7BBE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7BBE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7BB4
	b _080A7C2C
	.byte 0x00, 0x00
_080A7BC8: .4byte 0x03000FD8
_080A7BCC: .4byte 0x00007FFF
_080A7BD0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7BE6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7BDA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7BDA
_080A7BE6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A7BFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7BF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7BF0
_080A7BFC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7C12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7C06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7C06
_080A7C12:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7C2C
	movs r1, #0x10
_080A7C1C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7C26
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7C26:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7C1C
_080A7C2C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080A7C34:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080A7C3E
	movs r1, #0x00
_080A7C3E:
	mov r3, r9
	cmp r3, #0x00
	bge _080A7C46
	movs r2, #0x00
_080A7C46:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A7C50
	adds r1, r0, #0x0
_080A7C50:
	ldr r0, _080A7D48 @ =0x00007FFF
	cmp r2, r0
	ble _080A7C58
	adds r2, r0, #0x0
_080A7C58:
	cmp r2, r1
	bge _080A7C5E
	adds r1, r2, #0x0
_080A7C5E:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080A7C76
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080A7C78
_080A7C76:
	movs r1, #0x00
_080A7C78:
	cmp r1, #0x00
	bne _080A7C7E
	b _080A7DCA
_080A7C7E:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080A7D4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A7C9C
	b _080A7DCA
_080A7C9C:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080A7D50 @ =0x03000FD8
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
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A7DB6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A7D54
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A7CFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7CF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7CF2
_080A7CFE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A7D14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7D08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7D08
_080A7D14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7D2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7D1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7D1E
_080A7D2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7DB2
	movs r1, #0x10
_080A7D34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7D3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7D3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7D34
	b _080A7DB2
	.byte 0x00, 0x00
_080A7D48: .4byte 0x00007FFF
_080A7D4C: .4byte 0x0300034C
_080A7D50: .4byte 0x03000FD8
_080A7D54:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A7D6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7D60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7D60
_080A7D6C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A7D82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7D76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7D76
_080A7D82:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7D98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7D8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7D8C
_080A7D98:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7DB2
	movs r1, #0x10
_080A7DA2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7DAC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7DAC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7DA2
_080A7DB2:
	bl sub_807F448
_080A7DB6:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080A7EA0 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080A7DCA:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080A7DD6
	b _080A8064
_080A7DD6:
	mov r1, r9
	cmp r1, #0x00
	bge _080A7DDE
	movs r1, #0x00
_080A7DDE:
	ldr r0, _080A7EA4 @ =0x00007FFF
	cmp r1, r0
	ble _080A7DE6
	adds r1, r0, #0x0
_080A7DE6:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A7DFE
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A7E00
_080A7DFE:
	movs r2, #0x00
_080A7E00:
	cmp r2, #0x00
	bne _080A7E06
	b _080A7F14
_080A7E06:
	ldr r3, _080A7EA8 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080A7EA0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A7EAC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7E56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7E4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7E4A
_080A7E56:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A7E6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7E60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7E60
_080A7E6C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7E82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7E76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7E76
_080A7E82:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7F08
	movs r1, #0x10
_080A7E8C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7E96
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7E96:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7E8C
	b _080A7F08
	.byte 0x00, 0x00
_080A7EA0: .4byte 0x00000FFF
_080A7EA4: .4byte 0x00007FFF
_080A7EA8: .4byte 0x03000FD8
_080A7EAC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7EC2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7EB6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7EB6
_080A7EC2:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A7ED8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7ECC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7ECC
_080A7ED8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7EEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7EE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7EE2
_080A7EEE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7F08
	movs r1, #0x10
_080A7EF8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7F02
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7F02:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7EF8
_080A7F08:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080A8064
_080A7F14:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080A7F20
	b _080A8064
_080A7F20:
	ldr r0, _080A7FE4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A7F36
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080A7F36
	b _080A8064
_080A7F36:
	ldr r2, _080A7FE8 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080A7F66
	b _080A8064
_080A7F66:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080A7FEC @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A7FF0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7F9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7F8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7F8E
_080A7F9A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A7FB0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7FA4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7FA4
_080A7FB0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7FC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7FBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7FBA
_080A7FC6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A804C
	movs r1, #0x10
_080A7FD0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7FDA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7FDA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7FD0
	b _080A804C
	.byte 0x00, 0x00
_080A7FE4: .4byte 0x0300034C
_080A7FE8: .4byte 0x03000FD8
_080A7FEC: .4byte 0x00000FFF
_080A7FF0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A8006
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7FFA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7FFA
_080A8006:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A801C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8010:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8010
_080A801C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A8032
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8026:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8026
_080A8032:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A804C
	movs r1, #0x10
_080A803C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8046
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8046:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A803C
_080A804C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
_080A8064:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080A8070
	b _080A8178
_080A8070:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080A807C
	movs r2, #0x00
_080A807C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A8086
	adds r1, r0, #0x0
_080A8086:
	ldr r0, _080A80BC @ =0x00007FFF
	cmp r2, r0
	ble _080A808E
	adds r2, r0, #0x0
_080A808E:
	cmp r2, r1
	bge _080A8094
	adds r1, r2, #0x0
_080A8094:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080A80AE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A80B0
_080A80AE:
	movs r1, #0x00
_080A80B0:
	cmp r1, #0x00
	beq _080A8178
	cmp r4, #0x01
	ble _080A80C4
	ldr r7, _080A80C0 @ =0x040A1188
	b _080A80C6
_080A80BC: .4byte 0x00007FFF
_080A80C0: .4byte 0x040A1188
_080A80C4:
	ldr r7, _080A8108 @ =0x040A1088
_080A80C6:
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
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080A810C
	cmp r1, #0x01
	bne _080A810C
	adds r0, r5, #0x0
	bl sub_8086764
	b _080A81E4
	.byte 0x00, 0x00
_080A8108: .4byte 0x040A1088
_080A810C:
	cmp r4, #0x01
	ble _080A813C
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080A8118
	adds r1, #0xFF
_080A8118:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080A8122
	adds r2, #0xFF
_080A8122:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A812C
	adds r3, #0xFF
_080A812C:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080A8138 @ =0x00002E10
	bl sub_80DF024
	b _080A8162
_080A8138: .4byte 0x00002E10
_080A813C:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080A8144
	adds r1, #0xFF
_080A8144:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080A814E
	adds r2, #0xFF
_080A814E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A8158
	adds r3, #0xFF
_080A8158:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080A81F4 @ =0x000006E3
	bl sub_80DF024
_080A8162:
	mov r2, r8
	ldrh r1, [r2, #0x00]
	ldr r0, _080A81F8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080A8178:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080A8196
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080A8198
_080A8196:
	movs r1, #0x00
_080A8198:
	cmp r1, #0x00
	beq _080A81D0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A81B8
	cmp r1, #0x04
	bne _080A81D0
_080A81B8:
	ldr r2, _080A81FC @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A81D0:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A81E4
	ldr r0, _080A8200 @ =0x080A8205
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080A81E4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A81F4: .4byte 0x000006E3
_080A81F8: .4byte 0x00000FFF
_080A81FC: .4byte 0x00002030
_080A8200: .4byte sub_80A8204
	thumb_func_start sub_80A8204
sub_80A8204:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080A82AC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r2, [r1, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080A8226
	b _080A838E
_080A8226:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A8238
	cmp r1, #0x04
	bne _080A827A
_080A8238:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A8246
	adds r0, #0xFF
_080A8246:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A8254
	adds r0, #0xFF
_080A8254:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A8262
	adds r0, #0xFF
_080A8262:
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
_080A827A:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080A828E
	cmp r2, #0x04
	bne _080A82F0
_080A828E:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A82B4
	ldr r2, _080A82B0 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A82C0
_080A82AC: .4byte 0x03000FD8
_080A82B0: .4byte 0x00002002
_080A82B4:
	ldr r2, _080A8398 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A82C0:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080A82D6
	movs r2, #0x01
_080A82D6:
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
_080A82F0:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A82FE
	cmp r2, #0x04
	bne _080A8308
_080A82FE:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080A8308:
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A8328
	cmp r2, #0x04
	bne _080A8376
_080A8328:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A8336
	adds r0, #0xFF
_080A8336:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A8344
	adds r0, #0xFF
_080A8344:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A8352
	adds r0, #0xFF
_080A8352:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080A8364
	adds r0, #0xFF
_080A8364:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080A839C @ =0x000007CC
	adds r0, r5, #0x0
	bl sub_8088164
_080A8376:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A8384
	cmp r2, #0x04
	bne _080A838E
_080A8384:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080A838E:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A8398: .4byte 0x0000204F
_080A839C: .4byte 0x000007CC
	thumb_func_start sub_80A83A0
sub_80A83A0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080A8470 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r1, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A83C6
	cmp r1, #0x04
	bne _080A83CA
_080A83C6:
	ldr r0, _080A8474 @ =0x080A98B9
	str r0, [r2, #0x4C]
_080A83CA:
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080A83EA
	cmp r2, #0x04
	bne _080A843C
_080A83EA:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080A83F2
	adds r1, #0xFF
_080A83F2:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080A8408
	adds r2, #0xFF
_080A8408:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080A8428
	adds r0, #0xFF
_080A8428:
	asrs r0, r0, #0x08
	adds r0, #0x32
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	bl sub_8088164
_080A843C:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A844A
	cmp r2, #0x04
	bne _080A8462
_080A844A:
	ldr r2, _080A8478 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A8462:
	ldr r0, _080A847C @ =0x080A8481
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A8470: .4byte 0x03000FD8
_080A8474: .4byte sub_80A98B8
_080A8478: .4byte 0x00002030
_080A847C: .4byte sub_80A8480
	thumb_func_start sub_80A8480
sub_80A8480:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080A8528 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080A852C @ =0x03001038
	ldr r2, _080A8530 @ =0x0819832C
	ldr r3, _080A8534 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080A84CC
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080A84CE
_080A84CC:
	movs r1, #0x00
_080A84CE:
	cmp r1, #0x00
	beq _080A8522
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A84EE
	cmp r1, #0x04
	bne _080A851E
_080A84EE:
	ldr r2, _080A852C @ =0x03001038
	ldr r0, _080A8530 @ =0x0819832C
	ldr r1, _080A8534 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0C
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A851E:
	ldr r0, _080A8538 @ =0x080A853D
	str r0, [r7, #0x4C]
_080A8522:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A8528: .4byte 0x03000FD8
_080A852C: .4byte 0x03001038
_080A8530: .4byte 0x0819832C
_080A8534: .4byte 0x08198220
_080A8538: .4byte sub_80A853C
	thumb_func_start sub_80A853C
sub_80A853C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080A85E0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r7, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r6, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A85D6
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A8574
	cmp r1, #0x04
	bne _080A85C6
_080A8574:
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A857C
	adds r3, #0xFF
_080A857C:
	asrs r3, r3, #0x08
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080A8586
	adds r1, #0xFF
_080A8586:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080A859C
	adds r2, #0xFF
_080A859C:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x28
	adds r0, r6, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	ldr r1, _080A85E4 @ =0x00000533
	adds r0, r5, #0x0
	bl sub_8088164
_080A85C6:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A85E8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A85EC @ =0x080A85F1
	str r0, [r7, #0x4C]
_080A85D6:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A85E0: .4byte 0x03000FD8
_080A85E4: .4byte 0x00000533
_080A85E8: .4byte 0x00000FFF
_080A85EC: .4byte sub_80A85F0
	thumb_func_start sub_80A85F0
sub_80A85F0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x004]
	ldr r0, _080A8728 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r8, r0
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r2, _080A872C @ =0x03001038
	ldr r0, _080A8730 @ =0x0819832C
	ldr r1, _080A8734 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0E
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r1, [r1, #0x00]
	bl _call_via_r2
	mov r10, r0
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	mov r3, r10
	subs r6, r3, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	subs r3, r3, r0
	str r3, [sp, #0x008]
	str r3, [sp, #0x00C]
	lsls r1, r1, #0x03
	add r10, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080A8678
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A8678:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080A8688
	b _080A8D58
_080A8688:
	adds r1, r6, #0x0
	cmp r1, #0x00
	bge _080A8690
	movs r1, #0x00
_080A8690:
	ldr r0, _080A8738 @ =0x00007FFF
	cmp r1, r0
	ble _080A8698
	adds r1, r0, #0x0
_080A8698:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A86AE
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A86B0
_080A86AE:
	movs r2, #0x00
_080A86B0:
	adds r0, r5, #0x0
	adds r0, #0x7E
	str r0, [sp, #0x010]
	movs r1, #0xAE
	adds r1, r1, r5
	mov r9, r1
	cmp r2, #0x00
	beq _080A87A0
	ldr r2, _080A8728 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080A873C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A86E4
	movs r1, #0x4C
_080A86D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A86D8
_080A86E4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A86F8
	movs r1, #0x4C
_080A86EC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A86EC
_080A86F8:
	mov r2, r8
	cmp r2, #0x00
	beq _080A870C
	movs r1, #0x4C
_080A8700:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8700
_080A870C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8798
	movs r1, #0x04
_080A8716:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8720
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8720:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8716
	b _080A8798
_080A8728: .4byte 0x03000FD8
_080A872C: .4byte 0x03001038
_080A8730: .4byte 0x0819832C
_080A8734: .4byte 0x08198220
_080A8738: .4byte 0x00007FFF
_080A873C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A8752
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8746:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8746
_080A8752:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8768
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A875C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A875C
_080A8768:
	mov r2, r8
	cmp r2, #0x00
	beq _080A877E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8772:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8772
_080A877E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8798
	movs r1, #0x10
_080A8788:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8792
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8792:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8788
_080A8798:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080A87A0:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080A87AA
	movs r1, #0x00
_080A87AA:
	mov r3, r10
	cmp r3, #0x00
	bge _080A87B2
	movs r2, #0x00
_080A87B2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A87BC
	adds r1, r0, #0x0
_080A87BC:
	ldr r0, _080A881C @ =0x00007FFF
	cmp r2, r0
	ble _080A87C4
	adds r2, r0, #0x0
_080A87C4:
	cmp r2, r1
	bge _080A87CA
	adds r1, r2, #0x0
_080A87CA:
	ldr r4, [sp, #0x010]
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080A87E2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080A87E4
_080A87E2:
	movs r1, #0x00
_080A87E4:
	cmp r1, #0x00
	bne _080A87EA
	b _080A8ABC
_080A87EA:
	movs r6, #0x24
	negs r6, r6
	movs r4, #0x00
	str r4, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r6, #0x0
	bl sub_807E680
	ldr r0, _080A8820 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _080A8824
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	adds r3, r6, #0x0
	bl sub_807E680
	b _080A8838
_080A881C: .4byte 0x00007FFF
_080A8820: .4byte 0x03000FD8
_080A8824:
	cmp r1, #0x40
	bne _080A8838
	movs r1, #0xFF
	lsls r1, r1, #0x18
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r2, #0x00
	adds r3, r6, #0x0
	bl sub_807E680
_080A8838:
	ldr r4, _080A8904 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	ldr r2, _080A8908 @ =0x0300034C
	cmp r0, #0x00
	bne _080A884A
	b _080A8988
_080A884A:
	ldrh r1, [r2, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A8856
	b _080A8988
_080A8856:
	movs r0, #0x07
	adds r1, r5, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	adds r0, r5, #0x0
	bl sub_807EA24
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
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A896E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A890C
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A88BA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A88AE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A88AE
_080A88BA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A88D0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A88C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A88C4
_080A88D0:
	mov r2, r8
	cmp r2, #0x00
	beq _080A88E6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A88DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A88DA
_080A88E6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A896A
	movs r1, #0x10
_080A88F0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A88FA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A88FA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A88F0
	b _080A896A
	.byte 0x00, 0x00
_080A8904: .4byte 0x03000FD8
_080A8908: .4byte 0x0300034C
_080A890C:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A8924
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8918:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8918
_080A8924:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A893A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A892E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A892E
_080A893A:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8950
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8944:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8944
_080A8950:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A896A
	movs r1, #0x10
_080A895A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8964
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8964:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A895A
_080A896A:
	bl sub_807F448
_080A896E:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	ldr r1, _080A8984 @ =0x00000FFF
	ands r1, r0
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r9
	strh r1, [r3, #0x00]
	b _080A8ABC
_080A8984: .4byte 0x00000FFF
_080A8988:
	ldrh r1, [r2, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080A8994
	b _080A8ABC
_080A8994:
	movs r0, #0x01
	adds r1, r7, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080A8A44 @ =0x03000FD8
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
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A8AAA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A8A48
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A89FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A89EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A89EE
_080A89FA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8A10
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8A04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8A04
_080A8A10:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8A26
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8A1A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8A1A
_080A8A26:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8AA6
	movs r1, #0x10
_080A8A30:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8A3A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8A3A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8A30
	b _080A8AA6
	.byte 0x00, 0x00
_080A8A44: .4byte 0x03000FD8
_080A8A48:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A8A60
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8A54:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8A54
_080A8A60:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8A76
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8A6A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8A6A
_080A8A76:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8A8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8A80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8A80
_080A8A8C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8AA6
	movs r1, #0x10
_080A8A96:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8AA0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8AA0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8A96
_080A8AA6:
	bl sub_807F448
_080A8AAA:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	ldr r1, _080A8B90 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r4, #0x00]
_080A8ABC:
	mov r3, r9
	ldrh r0, [r3, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080A8AC8
	b _080A8D58
_080A8AC8:
	mov r1, r10
	cmp r1, #0x00
	bge _080A8AD0
	movs r1, #0x00
_080A8AD0:
	ldr r0, _080A8B94 @ =0x00007FFF
	cmp r1, r0
	ble _080A8AD8
	adds r1, r0, #0x0
_080A8AD8:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080A8AF0
	ldr r2, [sp, #0x010]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080A8AF2
_080A8AF0:
	movs r2, #0x00
_080A8AF2:
	cmp r2, #0x00
	bne _080A8AF8
	b _080A8C0A
_080A8AF8:
	ldr r3, _080A8B98 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r4, r9
	ldrh r1, [r4, #0x00]
	ldr r0, _080A8B90 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A8B9C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A8B46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8B3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8B3A
_080A8B46:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8B5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8B50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8B50
_080A8B5C:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8B72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8B66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8B66
_080A8B72:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8BF8
	movs r1, #0x10
_080A8B7C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8B86
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8B86:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8B7C
	b _080A8BF8
	.byte 0x00, 0x00
_080A8B90: .4byte 0x00000FFF
_080A8B94: .4byte 0x00007FFF
_080A8B98: .4byte 0x03000FD8
_080A8B9C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A8BB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8BA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8BA6
_080A8BB2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8BC8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8BBC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8BBC
_080A8BC8:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8BDE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8BD2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8BD2
_080A8BDE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8BF8
	movs r1, #0x10
_080A8BE8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8BF2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8BF2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8BE8
_080A8BF8:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080A8D58
_080A8C0A:
	ldr r3, [sp, #0x010]
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r10
	ble _080A8C16
	b _080A8D58
_080A8C16:
	ldr r0, _080A8CD8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080A8C24
	b _080A8D58
_080A8C24:
	ldr r4, _080A8CDC @ =0x03000FD8
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
	beq _080A8C52
	b _080A8D58
_080A8C52:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080A8CE0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r3, r9
	strh r0, [r3, #0x00]
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A8CE4
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A8C90
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8C84:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8C84
_080A8C90:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8CA6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8C9A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8C9A
_080A8CA6:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8CBC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8CB0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8CB0
_080A8CBC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8D42
	movs r1, #0x10
_080A8CC6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8CD0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8CD0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8CC6
	b _080A8D42
_080A8CD8: .4byte 0x0300034C
_080A8CDC: .4byte 0x03000FD8
_080A8CE0: .4byte 0x00000FFF
_080A8CE4:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A8CFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8CF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8CF0
_080A8CFC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8D12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8D06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8D06
_080A8D12:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8D28
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8D1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8D1C
_080A8D28:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8D42
	movs r1, #0x10
_080A8D32:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8D3C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8D3C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8D32
_080A8D42:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r7, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
_080A8D58:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080A8DF4
	ldr r1, [sp, #0x00C]
	mov r2, r10
	cmp r1, #0x00
	bge _080A8D6C
	movs r1, #0x00
_080A8D6C:
	mov r0, r10
	cmp r0, #0x00
	bge _080A8D74
	movs r2, #0x00
_080A8D74:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A8D7E
	adds r1, r0, #0x0
_080A8D7E:
	ldr r0, _080A8DC4 @ =0x00007FFF
	cmp r2, r0
	ble _080A8D86
	adds r2, r0, #0x0
_080A8D86:
	cmp r2, r1
	bge _080A8D8C
	adds r1, r2, #0x0
_080A8D8C:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080A8DA6
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A8DA8
_080A8DA6:
	movs r1, #0x00
_080A8DA8:
	cmp r1, #0x00
	beq _080A8DF4
	cmp r3, #0x02
	bne _080A8DD0
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080A8DC8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080A8DCC @ =0x080AC4F9
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	b _080A8DE4
	.byte 0x00, 0x00
_080A8DC4: .4byte 0x00007FFF
_080A8DC8: .4byte 0x00000FFF
_080A8DCC: .4byte sub_80AC4F8
_080A8DD0:
	cmp r3, #0x03
	bne _080A8DF4
	mov r4, r9
	ldrh r0, [r4, #0x00]
	ldr r1, _080A8DEC @ =0x00000FFF
	ands r1, r0
	strh r1, [r4, #0x00]
	ldr r1, _080A8DF0 @ =0x080AA6DD
	ldr r0, [sp, #0x004]
	str r1, [r0, #0x4C]
_080A8DE4:
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080A8EEA
_080A8DEC: .4byte 0x00000FFF
_080A8DF0: .4byte sub_80AA6DC
_080A8DF4:
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080A8DFC
	movs r2, #0x00
_080A8DFC:
	ldr r0, _080A8EFC @ =0x00007FFF
	cmp r2, r0
	ble _080A8E04
	adds r2, r0, #0x0
_080A8E04:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080A8E20
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080A8E22
_080A8E20:
	movs r1, #0x00
_080A8E22:
	cmp r1, #0x00
	beq _080A8E3A
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A8E3A:
	mov r1, r10
	cmp r1, #0x00
	bge _080A8E42
	movs r1, #0x00
_080A8E42:
	ldr r0, _080A8EFC @ =0x00007FFF
	cmp r1, r0
	ble _080A8E4A
	adds r1, r0, #0x0
_080A8E4A:
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080A8E60
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080A8E62
_080A8E60:
	movs r2, #0x00
_080A8E62:
	cmp r2, #0x00
	beq _080A8E70
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #0x12]
_080A8E70:
	adds r4, r5, #0x0
	adds r4, #0x79
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A8EEA
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A8E90
	cmp r1, #0x04
	bne _080A8EBE
_080A8E90:
	ldr r2, _080A8F00 @ =0x03001038
	ldr r0, _080A8F04 @ =0x0819832C
	ldr r1, _080A8F08 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080A8EBE:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080A8EC6
	adds r1, #0xFF
_080A8EC6:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080A8ED0
	adds r2, #0xFF
_080A8ED0:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A8EDA
	adds r3, #0xFF
_080A8EDA:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x00
	bl sub_80DF024
	ldr r0, _080A8F0C @ =0x080A8F11
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080A8EEA:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A8EFC: .4byte 0x00007FFF
_080A8F00: .4byte 0x03001038
_080A8F04: .4byte 0x0819832C
_080A8F08: .4byte 0x08198220
_080A8F0C: .4byte sub_80A8F10
	thumb_func_start sub_80A8F10
sub_80A8F10:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080A8FBC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A8FB2
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A8F48
	cmp r1, #0x04
	bne _080A8FA2
_080A8F48:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080A8F50
	adds r1, #0xFF
_080A8F50:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080A8F66
	adds r0, #0xFF
_080A8F66:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080A8F7C
	adds r3, #0xFF
_080A8F7C:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0xC0
	bl sub_8088274
_080A8FA2:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A8FC0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A8FC4 @ =0x080A8FC9
	str r0, [r7, #0x4C]
_080A8FB2:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A8FBC: .4byte 0x03000FD8
_080A8FC0: .4byte 0x00000FFF
_080A8FC4: .4byte sub_80A8FC8
	thumb_func_start sub_80A8FC8
sub_80A8FC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080A90E0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r2, r0, #0x02
	adds r2, r2, r0
	lsls r1, r2, #0x01
	mov r3, r9
	subs r3, r3, r1
	mov r12, r3
	lsls r1, r0, #0x03
	subs r0, r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	add r9, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080A902E
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A902E:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080A903E
	b _080A957C
_080A903E:
	mov r1, r12
	cmp r1, #0x00
	bge _080A9046
	movs r1, #0x00
_080A9046:
	ldr r0, _080A90E4 @ =0x00007FFF
	cmp r1, r0
	ble _080A904E
	adds r1, r0, #0x0
_080A904E:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A9064
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A9066
_080A9064:
	movs r2, #0x00
_080A9066:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080A914C
	ldr r2, _080A90E0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080A90E8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A909A
	movs r1, #0x66
_080A908E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A908E
_080A909A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A90AE
	movs r1, #0x66
_080A90A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A90A2
_080A90AE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A90C2
	movs r1, #0x66
_080A90B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A90B6
_080A90C2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9144
	movs r1, #0x06
_080A90CC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A90D6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A90D6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A90CC
	b _080A9144
	.byte 0x00, 0x00
_080A90E0: .4byte 0x03000FD8
_080A90E4: .4byte 0x00007FFF
_080A90E8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A90FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A90F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A90F2
_080A90FE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9114
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9108:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9108
_080A9114:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A912A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A911E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A911E
_080A912A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9144
	movs r1, #0x10
_080A9134:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A913E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A913E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9134
_080A9144:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080A914C:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080A9156
	movs r1, #0x00
_080A9156:
	mov r3, r9
	cmp r3, #0x00
	bge _080A915E
	movs r2, #0x00
_080A915E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A9168
	adds r1, r0, #0x0
_080A9168:
	ldr r0, _080A9260 @ =0x00007FFF
	cmp r2, r0
	ble _080A9170
	adds r2, r0, #0x0
_080A9170:
	cmp r2, r1
	bge _080A9176
	adds r1, r2, #0x0
_080A9176:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080A918E
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080A9190
_080A918E:
	movs r1, #0x00
_080A9190:
	cmp r1, #0x00
	bne _080A9196
	b _080A92E2
_080A9196:
	movs r2, #0x14
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080A9264 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A91B6
	b _080A92E2
_080A91B6:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r3, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080A9268 @ =0x03000FD8
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
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A92CE
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A926C
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A9218
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A920C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A920C
_080A9218:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A922E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9222:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9222
_080A922E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A9244
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9238:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9238
_080A9244:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A92CA
	movs r1, #0x10
_080A924E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9258
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9258:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A924E
	b _080A92CA
_080A9260: .4byte 0x00007FFF
_080A9264: .4byte 0x0300034C
_080A9268: .4byte 0x03000FD8
_080A926C:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A9284
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9278:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9278
_080A9284:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A929A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A928E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A928E
_080A929A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A92B0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A92A4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A92A4
_080A92B0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A92CA
	movs r1, #0x10
_080A92BA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A92C4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A92C4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A92BA
_080A92CA:
	bl sub_807F448
_080A92CE:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080A93B8 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080A92E2:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080A92EE
	b _080A957C
_080A92EE:
	mov r1, r9
	cmp r1, #0x00
	bge _080A92F6
	movs r1, #0x00
_080A92F6:
	ldr r0, _080A93BC @ =0x00007FFF
	cmp r1, r0
	ble _080A92FE
	adds r1, r0, #0x0
_080A92FE:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A9316
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A9318
_080A9316:
	movs r2, #0x00
_080A9318:
	cmp r2, #0x00
	bne _080A931E
	b _080A942C
_080A931E:
	ldr r3, _080A93C0 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080A93B8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A93C4
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A936E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9362:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9362
_080A936E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A9384
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9378:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9378
_080A9384:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A939A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A938E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A938E
_080A939A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9420
	movs r1, #0x10
_080A93A4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A93AE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A93AE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A93A4
	b _080A9420
	.byte 0x00, 0x00
_080A93B8: .4byte 0x00000FFF
_080A93BC: .4byte 0x00007FFF
_080A93C0: .4byte 0x03000FD8
_080A93C4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A93DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A93CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A93CE
_080A93DA:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A93F0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A93E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A93E4
_080A93F0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A9406
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A93FA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A93FA
_080A9406:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9420
	movs r1, #0x10
_080A9410:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A941A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A941A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9410
_080A9420:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080A957C
_080A942C:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080A9438
	b _080A957C
_080A9438:
	ldr r0, _080A94FC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A944E
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080A944E
	b _080A957C
_080A944E:
	ldr r2, _080A9500 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080A947E
	b _080A957C
_080A947E:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080A9504 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A9508
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A94B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A94A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A94A6
_080A94B2:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A94C8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A94BC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A94BC
_080A94C8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A94DE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A94D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A94D2
_080A94DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9564
	movs r1, #0x10
_080A94E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A94F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A94F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A94E8
	b _080A9564
	.byte 0x00, 0x00
_080A94FC: .4byte 0x0300034C
_080A9500: .4byte 0x03000FD8
_080A9504: .4byte 0x00000FFF
_080A9508:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A951E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9512:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9512
_080A951E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A9534
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9528:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9528
_080A9534:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A954A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A953E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A953E
_080A954A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9564
	movs r1, #0x10
_080A9554:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A955E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A955E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9554
_080A9564:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x14
	bl sub_807EAE4
_080A957C:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080A9588
	b _080A9690
_080A9588:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080A9594
	movs r2, #0x00
_080A9594:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A959E
	adds r1, r0, #0x0
_080A959E:
	ldr r0, _080A95D4 @ =0x00007FFF
	cmp r2, r0
	ble _080A95A6
	adds r2, r0, #0x0
_080A95A6:
	cmp r2, r1
	bge _080A95AC
	adds r1, r2, #0x0
_080A95AC:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080A95C6
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A95C8
_080A95C6:
	movs r1, #0x00
_080A95C8:
	cmp r1, #0x00
	beq _080A9690
	cmp r4, #0x01
	ble _080A95DC
	ldr r7, _080A95D8 @ =0x040A1388
	b _080A95DE
_080A95D4: .4byte 0x00007FFF
_080A95D8: .4byte 0x040A1388
_080A95DC:
	ldr r7, _080A9620 @ =0x040A1288
_080A95DE:
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
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080A9624
	cmp r1, #0x01
	bne _080A9624
	adds r0, r5, #0x0
	bl sub_8086764
	b _080A96FC
	.byte 0x00, 0x00
_080A9620: .4byte 0x040A1288
_080A9624:
	cmp r4, #0x01
	ble _080A9654
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080A9630
	adds r1, #0xFF
_080A9630:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080A963A
	adds r2, #0xFF
_080A963A:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A9644
	adds r3, #0xFF
_080A9644:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080A9650 @ =0x00002E29
	bl sub_80DF024
	b _080A967A
_080A9650: .4byte 0x00002E29
_080A9654:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080A965C
	adds r1, #0xFF
_080A965C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080A9666
	adds r2, #0xFF
_080A9666:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A9670
	adds r3, #0xFF
_080A9670:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080A970C @ =0x000006F7
	bl sub_80DF024
_080A967A:
	mov r2, r8
	ldrh r1, [r2, #0x00]
	ldr r0, _080A9710 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080A9690:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080A96AE
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080A96B0
_080A96AE:
	movs r1, #0x00
_080A96B0:
	cmp r1, #0x00
	beq _080A96E8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A96D0
	cmp r1, #0x04
	bne _080A96E8
_080A96D0:
	ldr r2, _080A9714 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A96E8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A96FC
	ldr r0, _080A9718 @ =0x080A971D
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080A96FC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A970C: .4byte 0x000006F7
_080A9710: .4byte 0x00000FFF
_080A9714: .4byte 0x00002030
_080A9718: .4byte sub_80A971C
	thumb_func_start sub_80A971C
sub_80A971C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080A97C4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r2, [r1, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080A973E
	b _080A98A6
_080A973E:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A9750
	cmp r1, #0x04
	bne _080A9792
_080A9750:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A975E
	adds r0, #0xFF
_080A975E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A976C
	adds r0, #0xFF
_080A976C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A977A
	adds r0, #0xFF
_080A977A:
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
_080A9792:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080A97A6
	cmp r2, #0x04
	bne _080A9808
_080A97A6:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A97CC
	ldr r2, _080A97C8 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A97D8
_080A97C4: .4byte 0x03000FD8
_080A97C8: .4byte 0x00002002
_080A97CC:
	ldr r2, _080A98B0 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A97D8:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080A97EE
	movs r2, #0x01
_080A97EE:
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
_080A9808:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A9816
	cmp r2, #0x04
	bne _080A9820
_080A9816:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080A9820:
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A9840
	cmp r2, #0x04
	bne _080A988E
_080A9840:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A984E
	adds r0, #0xFF
_080A984E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A985C
	adds r0, #0xFF
_080A985C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A986A
	adds r0, #0xFF
_080A986A:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080A987C
	adds r0, #0xFF
_080A987C:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080A98B4 @ =0x000007CC
	adds r0, r5, #0x0
	bl sub_8088164
_080A988E:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A989C
	cmp r2, #0x04
	bne _080A98A6
_080A989C:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080A98A6:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A98B0: .4byte 0x0000204F
_080A98B4: .4byte 0x000007CC
	thumb_func_start sub_80A98B8
sub_80A98B8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080A9950 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r3, [r5, #0x2C]
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A98DA
	cmp r1, #0x04
	bne _080A991E
_080A98DA:
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _080A98E2
	adds r1, #0xFF
_080A98E2:
	asrs r1, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r3, #0x3C]
	cmp r2, #0x00
	bge _080A98F8
	adds r2, #0xFF
_080A98F8:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
_080A991E:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A9930
	cmp r1, #0x04
	bne _080A9994
_080A9930:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A9958
	ldr r2, _080A9954 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A9964
	.byte 0x00, 0x00
_080A9950: .4byte 0x03000FD8
_080A9954: .4byte 0x00002002
_080A9958:
	ldr r2, _080A99A0 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A9964:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080A997A
	movs r2, #0x01
_080A997A:
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
_080A9994:
	ldr r0, _080A99A4 @ =0x080AC531
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A99A0: .4byte 0x0000204F
_080A99A4: .4byte sub_80AC530
	thumb_func_start sub_80A99A8
sub_80A99A8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080A9A88 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x18]
	ldr r1, _080A9A8C @ =0xFFFFE200
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r0, r6, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A9A80
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8E
	bl play_sfx_80195B4
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r5, #0x18]
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A9A0A
	cmp r1, #0x04
	bne _080A9A26
_080A9A0A:
	ldr r2, _080A9A90 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x05
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
_080A9A26:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A9A38
	cmp r1, #0x04
	bne _080A9A54
_080A9A38:
	ldr r2, _080A9A94 @ =0x0000205F
	adds r0, r5, #0x0
	movs r1, #0x03
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
_080A9A54:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080A9A5C
	adds r1, #0xFF
_080A9A5C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080A9A66
	adds r2, #0xFF
_080A9A66:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080A9A70
	adds r3, #0xFF
_080A9A70:
	asrs r3, r3, #0x08
	adds r3, #0x17
	str r4, [sp, #0x000]
	ldr r0, _080A9A98 @ =0x00002F90
	bl sub_80DF024
	ldr r0, _080A9A9C @ =0x080A9AA1
	str r0, [r7, #0x4C]
_080A9A80:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A9A88: .4byte 0x03000FD8
_080A9A8C: .4byte 0xFFFFE200
_080A9A90: .4byte 0x00002030
_080A9A94: .4byte 0x0000205F
_080A9A98: .4byte 0x00002F90
_080A9A9C: .4byte sub_80A9AA0
	thumb_func_start sub_80A9AA0
sub_80A9AA0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080A9BAC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r7, #0x2C]
	mov r12, r0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A9BA4
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A9AD8
	cmp r1, #0x04
	bne _080A9B38
_080A9AD8:
	mov r0, r12
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bge _080A9AE2
	adds r1, #0xFF
_080A9AE2:
	asrs r1, r1, #0x08
	mov r0, r12
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	mov r1, r12
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080A9AFA
	adds r0, #0xFF
_080A9AFA:
	asrs r0, r0, #0x08
	mov r1, r12
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	mov r0, r12
	ldr r3, [r0, #0x40]
	cmp r3, #0x00
	bge _080A9B12
	adds r3, #0xFF
_080A9B12:
	asrs r3, r3, #0x08
	mov r0, r12
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0xC0
	bl sub_8088274
_080A9B38:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A9B4A
	cmp r1, #0x04
	bne _080A9B66
_080A9B4A:
	ldr r2, _080A9BB0 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x06
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
_080A9B66:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A9B78
	cmp r1, #0x04
	bne _080A9B94
_080A9B78:
	ldr r2, _080A9BB4 @ =0x0000205F
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A9B94:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A9BB8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A9BBC @ =0x080A9BC1
	str r0, [r7, #0x4C]
_080A9BA4:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A9BAC: .4byte 0x03000FD8
_080A9BB0: .4byte 0x00002030
_080A9BB4: .4byte 0x0000205F
_080A9BB8: .4byte 0x00000FFF
_080A9BBC: .4byte sub_80A9BC0
	thumb_func_start sub_80A9BC0
sub_80A9BC0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r4, _080A9CE0 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_8087EFC
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x03
	subs r2, r2, r1
	ldr r3, [sp, #0x008]
	subs r4, r3, r2
	lsls r0, r1, #0x02
	adds r0, r0, r1
	subs r3, r3, r0
	str r3, [sp, #0x008]
	movs r0, #0x80
	lsls r0, r0, #0x07
	adds r0, r0, r2
	mov r10, r0
	adds r3, r6, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080A9C32
	adds r2, r6, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A9C32:
	adds r1, r6, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080A9C42
	b _080AA174
_080A9C42:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080A9C4A
	movs r1, #0x00
_080A9C4A:
	ldr r0, _080A9CE4 @ =0x00007FFF
	cmp r1, r0
	ble _080A9C52
	adds r1, r0, #0x0
_080A9C52:
	adds r0, r6, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A9C68
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080A9C6A
_080A9C68:
	movs r2, #0x00
_080A9C6A:
	adds r6, r5, #0x0
	adds r6, #0x7E
	movs r3, #0xAE
	adds r3, r3, r5
	mov r9, r3
	cmp r2, #0x00
	beq _080A9D4C
	ldr r2, _080A9CE0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080A9CE8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A9C9C
	movs r1, #0x80
_080A9C90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9C90
_080A9C9C:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9CB0
	movs r1, #0x80
_080A9CA4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9CA4
_080A9CB0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9CC4
	movs r1, #0x80
_080A9CB8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9CB8
_080A9CC4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9D44
	movs r1, #0x08
_080A9CCE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9CD8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9CD8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9CCE
	b _080A9D44
_080A9CE0: .4byte 0x03000FD8
_080A9CE4: .4byte 0x00007FFF
_080A9CE8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A9CFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9CF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9CF2
_080A9CFE:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9D14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9D08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9D08
_080A9D14:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9D2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9D1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9D1E
_080A9D2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9D44
	movs r1, #0x10
_080A9D34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9D3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9D3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9D34
_080A9D44:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080A9D4C:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080A9D56
	movs r1, #0x00
_080A9D56:
	mov r0, r10
	cmp r0, #0x00
	bge _080A9D5E
	movs r2, #0x00
_080A9D5E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A9D68
	adds r1, r0, #0x0
_080A9D68:
	ldr r0, _080A9E60 @ =0x00007FFF
	cmp r2, r0
	ble _080A9D70
	adds r2, r0, #0x0
_080A9D70:
	cmp r2, r1
	bge _080A9D76
	adds r1, r2, #0x0
_080A9D76:
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, r1
	blt _080A9D8C
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A9D8E
_080A9D8C:
	movs r1, #0x00
_080A9D8E:
	cmp r1, #0x00
	bne _080A9D94
	b _080A9EE0
_080A9D94:
	movs r2, #0x14
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080A9E64 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A9DB4
	b _080A9EE0
_080A9DB4:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r3, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080A9E68 @ =0x03000FD8
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
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A9ECE
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A9E6C
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A9E16
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E0A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E0A
_080A9E16:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9E2C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E20:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E20
_080A9E2C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9E42
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E36:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E36
_080A9E42:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9ECA
	movs r1, #0x10
_080A9E4C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9E56
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9E56:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9E4C
	b _080A9ECA
	.byte 0x00, 0x00
_080A9E60: .4byte 0x00007FFF
_080A9E64: .4byte 0x0300034C
_080A9E68: .4byte 0x03000FD8
_080A9E6C:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A9E84
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E78
_080A9E84:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9E9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E8E
_080A9E9A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9EB0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9EA4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9EA4
_080A9EB0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9ECA
	movs r1, #0x10
_080A9EBA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9EC4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9EC4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9EBA
_080A9ECA:
	bl sub_807F448
_080A9ECE:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080A9FB4 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080A9EE0:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080A9EEC
	b _080AA174
_080A9EEC:
	mov r1, r10
	cmp r1, #0x00
	bge _080A9EF4
	movs r1, #0x00
_080A9EF4:
	ldr r0, _080A9FB8 @ =0x00007FFF
	cmp r1, r0
	ble _080A9EFC
	adds r1, r0, #0x0
_080A9EFC:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A9F12
	movs r3, #0x00
	ldsh r0, [r6, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080A9F14
_080A9F12:
	movs r2, #0x00
_080A9F14:
	cmp r2, #0x00
	bne _080A9F1A
	b _080AA028
_080A9F1A:
	ldr r3, _080A9FBC @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080A9FB4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A9FC0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A9F6A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9F5E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9F5E
_080A9F6A:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9F80
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9F74:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9F74
_080A9F80:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9F96
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9F8A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9F8A
_080A9F96:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AA01C
	movs r1, #0x10
_080A9FA0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9FAA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9FAA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9FA0
	b _080AA01C
	.byte 0x00, 0x00
_080A9FB4: .4byte 0x00000FFF
_080A9FB8: .4byte 0x00007FFF
_080A9FBC: .4byte 0x03000FD8
_080A9FC0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A9FD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9FCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9FCA
_080A9FD6:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9FEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9FE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9FE0
_080A9FEC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AA002
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9FF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9FF6
_080AA002:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AA01C
	movs r1, #0x10
_080AA00C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AA016
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AA016:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AA00C
_080AA01C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080AA174
_080AA028:
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, r10
	ble _080AA032
	b _080AA174
_080AA032:
	ldr r0, _080AA0F4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080AA048
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080AA048
	b _080AA174
_080AA048:
	ldr r2, _080AA0F8 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080AA078
	b _080AA174
_080AA078:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080AA0FC @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AA100
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AA0AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA0A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA0A0
_080AA0AC:
	mov r2, r8
	cmp r2, #0x00
	beq _080AA0C2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA0B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA0B6
_080AA0C2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AA0D8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA0CC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA0CC
_080AA0D8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AA15C
	movs r1, #0x10
_080AA0E2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AA0EC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AA0EC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AA0E2
	b _080AA15C
_080AA0F4: .4byte 0x0300034C
_080AA0F8: .4byte 0x03000FD8
_080AA0FC: .4byte 0x00000FFF
_080AA100:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AA116
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA10A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA10A
_080AA116:
	mov r2, r8
	cmp r2, #0x00
	beq _080AA12C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA120:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA120
_080AA12C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AA142
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA136:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA136
_080AA142:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AA15C
	movs r1, #0x10
_080AA14C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AA156
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AA156:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AA14C
_080AA15C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x14
	bl sub_807EAE4
_080AA174:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080AA180
	b _080AA288
_080AA180:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	cmp r2, #0x00
	bge _080AA18C
	movs r2, #0x00
_080AA18C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080AA196
	adds r1, r0, #0x0
_080AA196:
	ldr r0, _080AA1CC @ =0x00007FFF
	cmp r2, r0
	ble _080AA19E
	adds r2, r0, #0x0
_080AA19E:
	cmp r2, r1
	bge _080AA1A4
	adds r1, r2, #0x0
_080AA1A4:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080AA1BE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080AA1C0
_080AA1BE:
	movs r1, #0x00
_080AA1C0:
	cmp r1, #0x00
	beq _080AA288
	cmp r4, #0x01
	ble _080AA1D4
	ldr r6, _080AA1D0 @ =0x040A1588
	b _080AA1D6
_080AA1CC: .4byte 0x00007FFF
_080AA1D0: .4byte 0x040A1588
_080AA1D4:
	ldr r6, _080AA218 @ =0x040A1488
_080AA1D6:
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
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080AA21C
	cmp r1, #0x01
	bne _080AA21C
	adds r0, r5, #0x0
	bl sub_8086764
	b _080AA372
	.byte 0x00, 0x00
_080AA218: .4byte 0x040A1488
_080AA21C:
	cmp r4, #0x01
	ble _080AA24C
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080AA228
	adds r1, #0xFF
_080AA228:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AA232
	adds r2, #0xFF
_080AA232:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AA23C
	adds r3, #0xFF
_080AA23C:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080AA248 @ =0x00002E47
	bl sub_80DF024
	b _080AA272
_080AA248: .4byte 0x00002E47
_080AA24C:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080AA254
	adds r1, #0xFF
_080AA254:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AA25E
	adds r2, #0xFF
_080AA25E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AA268
	adds r3, #0xFF
_080AA268:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080AA384 @ =0x0000070B
	bl sub_80DF024
_080AA272:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080AA388 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080AA288:
	ldr r0, [r5, #0x10]
	mov r3, r8
	str r0, [r3, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r3, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r3, #0x18]
	ldr r0, _080AA38C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080AA2AC
	movs r2, #0x00
_080AA2AC:
	ldr r0, _080AA390 @ =0x00007FFF
	cmp r2, r0
	ble _080AA2B4
	adds r2, r0, #0x0
_080AA2B4:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080AA2D0
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AA2D2
_080AA2D0:
	movs r1, #0x00
_080AA2D2:
	cmp r1, #0x00
	beq _080AA2DE
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080AA2DE:
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r2
	bgt _080AA2F8
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AA2FA
_080AA2F8:
	movs r1, #0x00
_080AA2FA:
	cmp r1, #0x00
	beq _080AA35E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA31A
	cmp r1, #0x04
	bne _080AA332
_080AA31A:
	ldr r2, _080AA394 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AA332:
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA344
	cmp r1, #0x04
	bne _080AA35E
_080AA344:
	ldr r2, _080AA398 @ =0x0000205F
	mov r0, r8
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	mov r3, r8
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AA35E:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AA372
	ldr r0, _080AA39C @ =0x080AA3A1
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080AA372:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AA384: .4byte 0x0000070B
_080AA388: .4byte 0x00000FFF
_080AA38C: .4byte 0x03000FD8
_080AA390: .4byte 0x00007FFF
_080AA394: .4byte 0x00002030
_080AA398: .4byte 0x0000205F
_080AA39C: .4byte sub_80AA3A0
	thumb_func_start sub_80AA3A0
sub_80AA3A0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080AA4D0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r6, [r1, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080AA3C2
	b _080AA4C8
_080AA3C2:
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA3D4
	cmp r1, #0x04
	bne _080AA426
_080AA3D4:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA3E2
	adds r0, #0xFF
_080AA3E2:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA3F0
	adds r0, #0xFF
_080AA3F0:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA3FE
	adds r0, #0xFF
_080AA3FE:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080AA414
	adds r0, #0xFF
_080AA414:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	ldr r1, _080AA4D4 @ =0x000007CC
	adds r0, r4, #0x0
	bl sub_8088164
_080AA426:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA438
	cmp r1, #0x04
	bne _080AA442
_080AA438:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_80885C4
_080AA442:
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AA462
	cmp r2, #0x04
	bne _080AA4B0
_080AA462:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA470
	adds r0, #0xFF
_080AA470:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA47E
	adds r0, #0xFF
_080AA47E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA48C
	adds r0, #0xFF
_080AA48C:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080AA49E
	adds r0, #0xFF
_080AA49E:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080AA4D4 @ =0x000007CC
	adds r0, r5, #0x0
	bl sub_8088164
_080AA4B0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AA4BE
	cmp r2, #0x04
	bne _080AA4C8
_080AA4BE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080AA4C8:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080AA4D0: .4byte 0x03000FD8
_080AA4D4: .4byte 0x000007CC
	thumb_func_start sub_80AA4D8
sub_80AA4D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080AA5A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AA5CA
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA510
	cmp r1, #0x04
	bne _080AA572
_080AA510:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AA518
	adds r1, #0xFF
_080AA518:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AA52E
	adds r0, #0xFF
_080AA52E:
	asrs r0, r0, #0x08
	adds r1, r2, #0x0
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AA544
	adds r3, #0xFF
_080AA544:
	asrs r3, r3, #0x08
	subs r3, #0x1E
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080AA55E
	adds r0, #0xFF
_080AA55E:
	asrs r0, r0, #0x08
	adds r0, #0x14
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	bl sub_8088164
_080AA572:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA584
	cmp r1, #0x04
	bne _080AA5C4
_080AA584:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AA5A8
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080AA5B4
_080AA5A4: .4byte 0x03000FD8
_080AA5A8:
	ldr r2, _080AA5D8 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080AA5B4:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AA5C4:
	ldr r0, _080AA5DC @ =0x080AA5E1
	mov r1, r8
	str r0, [r1, #0x4C]
_080AA5CA:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AA5D8: .4byte 0x0000204D
_080AA5DC: .4byte sub_80AA5E0
	thumb_func_start sub_80AA5E0
sub_80AA5E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080AA6C0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	adds r0, r7, #0x0
	bl sub_8087CE4
	adds r5, r4, #0x0
	adds r5, #0x81
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AA6B4
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080AA616
	adds r1, #0xFF
_080AA616:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080AA620
	adds r2, #0xFF
_080AA620:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080AA62A
	adds r3, #0xFF
_080AA62A:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080AA6C4 @ =0x00002F7D
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA650
	cmp r1, #0x04
	bne _080AA67E
_080AA650:
	ldr r2, _080AA6C8 @ =0x03001038
	ldr r0, _080AA6CC @ =0x0819832C
	ldr r1, _080AA6D0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
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
_080AA67E:
	ldr r4, [r6, #0x08]
	ldr r2, _080AA6D4 @ =0x0000205F
	adds r5, r4, #0x0
	adds r5, #0x23
	ldrb r3, [r5, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x02
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	ldrh r2, [r4, #0x16]
	ldrb r0, [r4, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	orrs r2, r0
	ldrb r3, [r5, #0x00]
	adds r0, r6, #0x0
	bl sub_8082E1C
	ldr r0, _080AA6D8 @ =0x080AC4AD
	mov r1, r8
	str r0, [r1, #0x4C]
_080AA6B4:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AA6C0: .4byte 0x03000FD8
_080AA6C4: .4byte 0x00002F7D
_080AA6C8: .4byte 0x03001038
_080AA6CC: .4byte 0x0819832C
_080AA6D0: .4byte 0x08198220
_080AA6D4: .4byte 0x0000205F
_080AA6D8: .4byte sub_80AC4AC
	thumb_func_start sub_80AA6DC
sub_80AA6DC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r3, _080AA7BC @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r1, [r5, #0x38]
	ldr r0, [r4, #0x38]
	cmp r1, r0
	bge _080AA726
	adds r3, r2, #0x0
	adds r3, #0x86
	adds r0, r2, #0x0
	adds r0, #0x82
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r2, #0x0
	adds r1, #0x84
	movs r2, #0x00
	ldsh r1, [r1, r2]
	muls r0, r1
	cmp r0, #0x00
	bge _080AA71E
	adds r0, #0x7F
_080AA71E:
	asrs r1, r0, #0x07
	ldrh r0, [r3, #0x00]
	subs r0, r0, r1
	strh r0, [r3, #0x00]
_080AA726:
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r0, [r4, #0x10]
	ldr r2, [r5, #0x38]
	subs r0, r0, r2
	ldr r1, [r4, #0x38]
	subs r1, r1, r2
	muls r0, r1
	cmp r0, #0x00
	bgt _080AA7B4
	str r2, [r4, #0x10]
	ldr r0, [r5, #0x3C]
	str r0, [r4, #0x14]
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AA756
	cmp r2, #0x04
	bne _080AA772
_080AA756:
	ldr r2, _080AA7C0 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x08
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
_080AA772:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AA780
	cmp r2, #0x04
	bne _080AA7B0
_080AA780:
	ldr r2, _080AA7C4 @ =0x03001038
	ldr r0, _080AA7C8 @ =0x0819832C
	ldr r1, _080AA7CC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AA7B0:
	ldr r0, _080AA7D0 @ =0x080AA7D5
	str r0, [r6, #0x4C]
_080AA7B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AA7BC: .4byte 0x03000FD8
_080AA7C0: .4byte 0x00002030
_080AA7C4: .4byte 0x03001038
_080AA7C8: .4byte 0x0819832C
_080AA7CC: .4byte 0x08198220
_080AA7D0: .4byte sub_80AA7D4
	thumb_func_start sub_80AA7D4
sub_80AA7D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080AA8D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r7, r6, #0x0
	adds r7, #0x08
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r7, #0x0
	bl sub_80884AC
	adds r0, r6, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AA8C4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA814
	cmp r1, #0x04
	bne _080AA884
_080AA814:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AA81C
	adds r1, #0xFF
_080AA81C:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov r12, r1
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AA834
	adds r0, #0xFF
_080AA834:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AA84A
	adds r3, #0xFF
_080AA84A:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _080AA870
	adds r0, #0xFF
_080AA870:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_8088164
_080AA884:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA896
	cmp r1, #0x04
	bne _080AA8B2
_080AA896:
	ldr r2, _080AA8D4 @ =0x0000205F
	adds r0, r5, #0x0
	movs r1, #0x06
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
_080AA8B2:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080AA8D8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080AA8DC @ =0x080AA8E1
	mov r1, r8
	str r0, [r1, #0x4C]
_080AA8C4:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AA8D0: .4byte 0x03000FD8
_080AA8D4: .4byte 0x0000205F
_080AA8D8: .4byte 0x00000FFF
_080AA8DC: .4byte sub_80AA8E0
	thumb_func_start sub_80AA8E0
sub_80AA8E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080AAA38 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r4, #0xCD
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r4, r0, #0x0
	subs r4, #0x0C
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _080AA91A
	adds r0, #0xFF
_080AA91A:
	asrs r0, r0, #0x08
	cmp r0, r4
	bge _080AA950
	ldr r0, [r7, #0x08]
	movs r2, #0x06
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _080AA938
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
_080AA938:
	ldr r2, _080AAA3C @ =0x03001038
	ldr r0, _080AAA40 @ =0x0819832C
	ldr r1, _080AAA44 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, [r5, #0x18]
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x08]
	strh r0, [r1, #0x06]
_080AA950:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	negs r0, r0
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r3, r0, r2
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	subs r0, r2, r0
	str r0, [sp, #0x008]
	adds r4, r0, #0x0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	mov r9, r1
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r10, r0
	cmp r1, r9
	bge _080AA990
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AA990:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080AA9A0
	b _080AAECA
_080AA9A0:
	adds r2, r3, #0x0
	cmp r2, #0x00
	bge _080AA9A8
	movs r2, #0x00
_080AA9A8:
	ldr r0, _080AAA48 @ =0x00007FFF
	cmp r2, r0
	ble _080AA9B0
	adds r2, r0, #0x0
_080AA9B0:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x00C]
	cmp r1, r2
	bgt _080AA9CA
	mov r1, r10
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080AA9CC
_080AA9CA:
	movs r1, #0x00
_080AA9CC:
	cmp r1, #0x00
	beq _080AAAB0
	ldr r2, _080AAA38 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080AAA4C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AA9F4
	movs r1, #0x33
_080AA9E8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA9E8
_080AA9F4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAA08
	movs r1, #0x33
_080AA9FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA9FC
_080AAA08:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAA1C
	movs r1, #0x33
_080AAA10:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAA10
_080AAA1C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAAA8
	movs r1, #0x03
_080AAA26:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAA30
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAA30:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAA26
	b _080AAAA8
_080AAA38: .4byte 0x03000FD8
_080AAA3C: .4byte 0x03001038
_080AAA40: .4byte 0x0819832C
_080AAA44: .4byte 0x08198220
_080AAA48: .4byte 0x00007FFF
_080AAA4C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AAA62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAA56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAA56
_080AAA62:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAA78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAA6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAA6C
_080AAA78:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAA8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAA82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAA82
_080AAA8E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAAA8
	movs r1, #0x10
_080AAA98:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAAA2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAAA2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAA98
_080AAAA8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080AAAB0:
	adds r1, r4, #0x0
	mov r2, r9
	cmp r1, #0x00
	bge _080AAABA
	movs r1, #0x00
_080AAABA:
	mov r4, r9
	cmp r4, #0x00
	bge _080AAAC2
	movs r2, #0x00
_080AAAC2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080AAACC
	adds r1, r0, #0x0
_080AAACC:
	ldr r0, _080AABC0 @ =0x00007FFF
	cmp r2, r0
	ble _080AAAD4
	adds r2, r0, #0x0
_080AAAD4:
	cmp r2, r1
	bge _080AAADA
	adds r1, r2, #0x0
_080AAADA:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080AAAF0
	ldr r1, [sp, #0x00C]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x01
	cmp r0, r2
	ble _080AAAF2
_080AAAF0:
	movs r1, #0x00
_080AAAF2:
	cmp r1, #0x00
	bne _080AAAF8
	b _080AAC40
_080AAAF8:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080AABC4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080AAB16
	b _080AAC40
_080AAB16:
	movs r0, #0x01
	adds r1, r7, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r4, _080AABC8 @ =0x03000FD8
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
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080AAC2E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AABCC
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080AAB76
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAB6A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAB6A
_080AAB76:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAB8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAB80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAB80
_080AAB8C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AABA2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAB96:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAB96
_080AABA2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAC2A
	movs r1, #0x10
_080AABAC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AABB6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AABB6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AABAC
	b _080AAC2A
	.byte 0x00, 0x00
_080AABC0: .4byte 0x00007FFF
_080AABC4: .4byte 0x0300034C
_080AABC8: .4byte 0x03000FD8
_080AABCC:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080AABE4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AABD8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AABD8
_080AABE4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AABFA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AABEE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AABEE
_080AABFA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAC10
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAC04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAC04
_080AAC10:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAC2A
	movs r1, #0x10
_080AAC1A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAC24
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAC24:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAC1A
_080AAC2A:
	bl sub_807F448
_080AAC2E:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	ldr r1, _080AAD14 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r4, #0x00]
_080AAC40:
	mov r3, r8
	ldrh r0, [r3, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080AAC4C
	b _080AAECA
_080AAC4C:
	mov r1, r9
	cmp r1, #0x00
	bge _080AAC54
	movs r1, #0x00
_080AAC54:
	ldr r0, _080AAD18 @ =0x00007FFF
	cmp r1, r0
	ble _080AAC5C
	adds r1, r0, #0x0
_080AAC5C:
	ldr r4, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080AAC72
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080AAC74
_080AAC72:
	movs r2, #0x00
_080AAC74:
	cmp r2, #0x00
	bne _080AAC7A
	b _080AAD88
_080AAC7A:
	ldr r3, _080AAD1C @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080AAD14 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AAD20
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AACCA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AACBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AACBE
_080AACCA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AACE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AACD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AACD4
_080AACE0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AACF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AACEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AACEA
_080AACF6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAD7C
	movs r1, #0x10
_080AAD00:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAD0A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAD0A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAD00
	b _080AAD7C
	.byte 0x00, 0x00
_080AAD14: .4byte 0x00000FFF
_080AAD18: .4byte 0x00007FFF
_080AAD1C: .4byte 0x03000FD8
_080AAD20:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AAD36
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAD2A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAD2A
_080AAD36:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAD4C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAD40:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAD40
_080AAD4C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAD62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAD56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAD56
_080AAD62:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAD7C
	movs r1, #0x10
_080AAD6C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAD76
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAD76:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAD6C
_080AAD7C:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	b _080AAECA
_080AAD88:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080AAD94
	b _080AAECA
_080AAD94:
	ldr r0, _080AAE4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080AADA2
	b _080AAECA
_080AADA2:
	ldr r2, _080AAE50 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080AAECA
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080AAE54 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AAE58
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AAE04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AADF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AADF8
_080AAE04:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAE1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE0E
_080AAE1A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAE30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE24
_080AAE30:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAEB4
	movs r1, #0x10
_080AAE3A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAE44
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAE44:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAE3A
	b _080AAEB4
_080AAE4C: .4byte 0x0300034C
_080AAE50: .4byte 0x03000FD8
_080AAE54: .4byte 0x00000FFF
_080AAE58:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AAE6E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE62:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE62
_080AAE6E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAE84
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE78
_080AAE84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAE9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE8E
_080AAE9A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAEB4
	movs r1, #0x10
_080AAEA4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAEAE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAEAE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAEA4
_080AAEB4:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r7, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080AAECA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080AAF44
	ldr r2, [sp, #0x008]
	mov r1, r9
	cmp r2, #0x00
	bge _080AAEDE
	movs r2, #0x00
_080AAEDE:
	cmp r1, #0x00
	bge _080AAEE4
	movs r1, #0x00
_080AAEE4:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080AAEEE
	adds r2, r0, #0x0
_080AAEEE:
	ldr r0, _080AAF38 @ =0x00007FFF
	cmp r1, r0
	ble _080AAEF6
	adds r1, r0, #0x0
_080AAEF6:
	cmp r1, r2
	bge _080AAEFC
	adds r2, r1, #0x0
_080AAEFC:
	mov r4, r10
	movs r0, #0x00
	ldsh r4, [r4, r0]
	mov r9, r4
	cmp r9, r2
	blt _080AAF16
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080AAF18
_080AAF16:
	movs r2, #0x00
_080AAF18:
	cmp r2, #0x00
	beq _080AAF44
	cmp r3, #0x01
	ble _080AAF44
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080AAF3C @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080AAF40 @ =0x080AB5FD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080AB086
_080AAF38: .4byte 0x00007FFF
_080AAF3C: .4byte 0x00000FFF
_080AAF40: .4byte sub_80AB5FC
_080AAF44:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AAF54
	b _080AB086
_080AAF54:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x30
	mov r1, r8
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	mov r9, r1
	cmp r2, #0x02
	beq _080AAF76
	cmp r2, #0x04
	bne _080AB028
_080AAF76:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080AAF7E
	adds r0, #0xFF
_080AAF7E:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	subs r0, #0x08
	mov r12, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080AAF98
	adds r0, #0xFF
_080AAF98:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080AAFAE
	adds r3, #0xFF
_080AAFAE:
	asrs r3, r3, #0x08
	adds r4, r6, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x08
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r6, #0x28]
	adds r0, #0x08
	cmp r6, r0
	bne _080AAFD8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080AAFE8
_080AAFD8:
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r6, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080AAFE8:
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080AAFF0
	adds r0, #0xFF
_080AAFF0:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080AB098 @ =0x03001038
	ldr r0, _080AB09C @ =0x0819832C
	ldr r1, _080AB0A0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080AB00A
	adds r1, #0x3F
_080AB00A:
	asrs r1, r1, #0x06
	adds r1, #0x40
	movs r0, #0x80
	lsls r0, r0, #0x05
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080AB028:
	mov r2, r9
	ldrb r0, [r2, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB038
	cmp r2, #0x04
	bne _080AB052
_080AB038:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB052:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB064
	cmp r1, #0x04
	bne _080AB080
_080AB064:
	ldr r2, _080AB0A4 @ =0x0000205F
	adds r0, r7, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AB080:
	ldr r0, _080AB0A8 @ =0x080AB0AD
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080AB086:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AB098: .4byte 0x03001038
_080AB09C: .4byte 0x0819832C
_080AB0A0: .4byte 0x08198220
_080AB0A4: .4byte 0x0000205F
_080AB0A8: .4byte sub_80AB0AC
	thumb_func_start sub_80AB0AC
sub_80AB0AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080AB1A4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r5, [r0, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080AB0F4
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r2, [r6, #0x08]
	movs r1, #0x06
	ldsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080AB0F4
	strh r1, [r2, #0x06]
_080AB0F4:
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x00
	bne _080AB106
	b _080AB260
_080AB106:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	mov r8, r1
	cmp r2, #0x02
	beq _080AB124
	cmp r2, #0x04
	bne _080AB140
_080AB124:
	ldr r2, _080AB1A8 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x0C
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
_080AB140:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB152
	cmp r1, #0x04
	bne _080AB16A
_080AB152:
	ldr r2, _080AB1AC @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB16A:
	adds r2, r4, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080AB1B0 @ =0x040A1688
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r4, #0x24]
	adds r1, #0x01
	strh r1, [r4, #0x24]
	cmp r0, #0x01
	bne _080AB1B4
	adds r0, r4, #0x0
	bl sub_8086764
	b _080AB260
_080AB1A4: .4byte 0x03000FD8
_080AB1A8: .4byte 0x00002030
_080AB1AC: .4byte 0x0000204D
_080AB1B0: .4byte 0x040A1688
_080AB1B4:
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080AB1D0
	ldr r3, _080AB270 @ =0x00000111
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AB21C
_080AB1D0:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AB1D8
	adds r1, #0xFF
_080AB1D8:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AB1EE
	adds r0, #0xFF
_080AB1EE:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AB204
	adds r3, #0xFF
_080AB204:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AB274 @ =0x0000070B
	str r5, [sp, #0x000]
	adds r1, r6, #0x0
	bl sub_80DF024
_080AB21C:
	mov r1, r8
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB22C
	cmp r2, #0x04
	bne _080AB25A
_080AB22C:
	ldr r2, _080AB278 @ =0x03001038
	ldr r0, _080AB27C @ =0x0819832C
	ldr r1, _080AB280 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r7, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r7, #0x00]
_080AB25A:
	ldr r0, _080AB284 @ =0x080AB289
	mov r2, r9
	str r0, [r2, #0x4C]
_080AB260:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AB270: .4byte 0x00000111
_080AB274: .4byte 0x0000070B
_080AB278: .4byte 0x03001038
_080AB27C: .4byte 0x0819832C
_080AB280: .4byte 0x08198220
_080AB284: .4byte sub_80AB288
	thumb_func_start sub_80AB288
sub_80AB288:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AB358 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AB350
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x30
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB2CA
	cmp r1, #0x04
	bne _080AB320
_080AB2CA:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080AB2D2
	adds r0, #0xFF
_080AB2D2:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x3C
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080AB2EC
	adds r2, #0xFF
_080AB2EC:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080AB30C
	adds r0, #0xFF
_080AB30C:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080AB320:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB332
	cmp r1, #0x04
	bne _080AB34C
_080AB332:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB34C:
	ldr r0, _080AB35C @ =0x080AB361
	str r0, [r7, #0x4C]
_080AB350:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB358: .4byte 0x03000FD8
_080AB35C: .4byte sub_80AB360
	thumb_func_start sub_80AB360
sub_80AB360:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080AB3F8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AB3F0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080AB396
	adds r1, #0xFF
_080AB396:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080AB3A0
	adds r2, #0xFF
_080AB3A0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080AB3AA
	adds r3, #0xFF
_080AB3AA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB3C6
	cmp r1, #0x04
	bne _080AB3E2
_080AB3C6:
	ldr r2, _080AB3FC @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x08
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
_080AB3E2:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _080AB400 @ =0x080AB405
	str r0, [r6, #0x4C]
_080AB3F0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080AB3F8: .4byte 0x03000FD8
_080AB3FC: .4byte 0x00002034
_080AB400: .4byte sub_80AB404
	thumb_func_start sub_80AB404
sub_80AB404:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080AB4B4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080AB426
	b _080AB5F0
_080AB426:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB444
	cmp r1, #0x04
	bne _080AB482
_080AB444:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB452
	adds r0, #0xFF
_080AB452:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB460
	adds r0, #0xFF
_080AB460:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB46E
	adds r0, #0xFF
_080AB46E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080AB482:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AB496
	cmp r2, #0x04
	bne _080AB4F8
_080AB496:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AB4BC
	ldr r2, _080AB4B8 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AB4C8
_080AB4B4: .4byte 0x03000FD8
_080AB4B8: .4byte 0x00002002
_080AB4BC:
	ldr r2, _080AB594 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AB4C8:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AB4DE
	movs r2, #0x01
_080AB4DE:
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
_080AB4F8:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB506
	cmp r2, #0x04
	bne _080AB510
_080AB506:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080AB510:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AB524
	cmp r2, #0x04
	bne _080AB566
_080AB524:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB532
	adds r0, #0xFF
_080AB532:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB540
	adds r0, #0xFF
_080AB540:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB54E
	adds r0, #0xFF
_080AB54E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080AB566:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB574
	cmp r1, #0x04
	bne _080AB5D8
_080AB574:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AB59C
	ldr r2, _080AB598 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AB5A8
	.byte 0x00, 0x00
_080AB594: .4byte 0x0000204F
_080AB598: .4byte 0x00002002
_080AB59C:
	ldr r2, _080AB5F8 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AB5A8:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AB5BE
	movs r2, #0x01
_080AB5BE:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB5D8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB5E6
	cmp r2, #0x04
	bne _080AB5F0
_080AB5E6:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080AB5F0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB5F8: .4byte 0x0000204F
	thumb_func_start sub_80AB5FC
sub_80AB5FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080AB6C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	mov r0, r10
	ldr r5, [r0, #0x2C]
	movs r1, #0x01
	negs r1, r1
	mov r9, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080AB632
	adds r1, #0xFF
_080AB632:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080AB63C
	adds r2, #0xFF
_080AB63C:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080AB646
	adds r3, #0xFF
_080AB646:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080AB6C4 @ =0x00002F9E
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB662
	cmp r1, #0x04
	bne _080AB718
_080AB662:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AB66A
	adds r1, #0xFF
_080AB66A:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AB680
	adds r0, #0xFF
_080AB680:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AB696
	adds r3, #0xFF
_080AB696:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	adds r3, #0x3C
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080AB6C8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080AB6D8
_080AB6C0: .4byte 0x03000FD8
_080AB6C4: .4byte 0x00002F9E
_080AB6C8:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080AB6D8:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080AB6E0
	adds r0, #0xFF
_080AB6E0:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080AB788 @ =0x03001038
	ldr r0, _080AB78C @ =0x0819832C
	ldr r1, _080AB790 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080AB6FA
	adds r1, #0x3F
_080AB6FA:
	asrs r1, r1, #0x06
	adds r1, #0x40
	movs r0, #0x80
	lsls r0, r0, #0x05
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080AB718:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB72A
	cmp r1, #0x04
	bne _080AB742
_080AB72A:
	ldr r2, _080AB794 @ =0x00002030
	adds r0, r6, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB742:
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB754
	cmp r1, #0x04
	bne _080AB772
_080AB754:
	ldr r2, _080AB798 @ =0x0000205F
	mov r0, r8
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	mov r1, r8
	ldr r2, [r1, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AB772:
	ldr r0, _080AB79C @ =0x080AB7A1
	mov r1, r10
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB788: .4byte 0x03001038
_080AB78C: .4byte 0x0819832C
_080AB790: .4byte 0x08198220
_080AB794: .4byte 0x00002030
_080AB798: .4byte 0x0000205F
_080AB79C: .4byte sub_80AB7A0
	thumb_func_start sub_80AB7A0
sub_80AB7A0:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080AB860 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080AB7DC
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r2, [r5, #0x08]
	movs r1, #0x06
	ldsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080AB7DC
	strh r1, [r2, #0x06]
_080AB7DC:
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _080AB858
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AB800
	cmp r2, #0x04
	bne _080AB818
_080AB800:
	ldr r2, _080AB864 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB818:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB826
	cmp r2, #0x04
	bne _080AB854
_080AB826:
	ldr r2, _080AB868 @ =0x03001038
	ldr r0, _080AB86C @ =0x0819832C
	ldr r1, _080AB870 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0C
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_080AB854:
	ldr r0, _080AB874 @ =0x080AB879
	str r0, [r7, #0x4C]
_080AB858:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AB860: .4byte 0x03000FD8
_080AB864: .4byte 0x00002030
_080AB868: .4byte 0x03001038
_080AB86C: .4byte 0x0819832C
_080AB870: .4byte 0x08198220
_080AB874: .4byte sub_80AB878
	thumb_func_start sub_80AB878
sub_80AB878:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AB924 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AB91C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB8B0
	cmp r1, #0x04
	bne _080AB90C
_080AB8B0:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AB8B8
	adds r1, #0xFF
_080AB8B8:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AB8CE
	adds r0, #0xFF
_080AB8CE:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AB8E4
	adds r3, #0xFF
_080AB8E4:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x04
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0xCC
	bl sub_8088274
_080AB90C:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080AB928 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080AB92C @ =0x080AB931
	str r0, [r7, #0x4C]
_080AB91C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB924: .4byte 0x03000FD8
_080AB928: .4byte 0x00000FFF
_080AB92C: .4byte sub_80AB930
	thumb_func_start sub_80AB930
sub_80AB930:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080ABA40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x01
	adds r0, r2, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r7, r3, r0
	lsls r1, r1, #0x02
	subs r3, r3, r1
	str r3, [sp, #0x008]
	add r10, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080AB992
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AB992:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080AB9A2
	b _080ABECE
_080AB9A2:
	adds r1, r7, #0x0
	cmp r1, #0x00
	bge _080AB9AA
	movs r1, #0x00
_080AB9AA:
	ldr r0, _080ABA44 @ =0x00007FFF
	cmp r1, r0
	ble _080AB9B2
	adds r1, r0, #0x0
_080AB9B2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080AB9C8
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080AB9CA
_080AB9C8:
	movs r2, #0x00
_080AB9CA:
	adds r7, r5, #0x0
	adds r7, #0x7E
	movs r3, #0xAE
	adds r3, r3, r5
	mov r9, r3
	cmp r2, #0x00
	beq _080ABAAC
	ldr r2, _080ABA40 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080ABA48
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AB9FC
	movs r1, #0x33
_080AB9F0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AB9F0
_080AB9FC:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABA10
	movs r1, #0x33
_080ABA04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA04
_080ABA10:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABA24
	movs r1, #0x33
_080ABA18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA18
_080ABA24:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABAA4
	movs r1, #0x03
_080ABA2E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABA38
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABA38:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABA2E
	b _080ABAA4
_080ABA40: .4byte 0x03000FD8
_080ABA44: .4byte 0x00007FFF
_080ABA48:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABA5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABA52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA52
_080ABA5E:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABA74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABA68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA68
_080ABA74:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABA8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABA7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA7E
_080ABA8A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABAA4
	movs r1, #0x10
_080ABA94:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABA9E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABA9E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABA94
_080ABAA4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080ABAAC:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080ABAB6
	movs r1, #0x00
_080ABAB6:
	mov r0, r10
	cmp r0, #0x00
	bge _080ABABE
	movs r2, #0x00
_080ABABE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080ABAC8
	adds r1, r0, #0x0
_080ABAC8:
	ldr r0, _080ABBBC @ =0x00007FFF
	cmp r2, r0
	ble _080ABAD0
	adds r2, r0, #0x0
_080ABAD0:
	cmp r2, r1
	bge _080ABAD6
	adds r1, r2, #0x0
_080ABAD6:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, r1
	blt _080ABAEC
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080ABAEE
_080ABAEC:
	movs r1, #0x00
_080ABAEE:
	cmp r1, #0x00
	bne _080ABAF4
	b _080ABC3C
_080ABAF4:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080ABBC0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080ABB12
	b _080ABC3C
_080ABB12:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080ABBC4 @ =0x03000FD8
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
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080ABC2A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ABBC8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080ABB72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABB66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABB66
_080ABB72:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABB88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABB7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABB7C
_080ABB88:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABB9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABB92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABB92
_080ABB9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABC26
	movs r1, #0x10
_080ABBA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABBB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABBB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABBA8
	b _080ABC26
	.byte 0x00, 0x00
_080ABBBC: .4byte 0x00007FFF
_080ABBC0: .4byte 0x0300034C
_080ABBC4: .4byte 0x03000FD8
_080ABBC8:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080ABBE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABBD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABBD4
_080ABBE0:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABBF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABBEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABBEA
_080ABBF6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABC0C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABC00:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABC00
_080ABC0C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABC26
	movs r1, #0x10
_080ABC16:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABC20
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABC20:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABC16
_080ABC26:
	bl sub_807F448
_080ABC2A:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080ABD10 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080ABC3C:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080ABC48
	b _080ABECE
_080ABC48:
	mov r1, r10
	cmp r1, #0x00
	bge _080ABC50
	movs r1, #0x00
_080ABC50:
	ldr r0, _080ABD14 @ =0x00007FFF
	cmp r1, r0
	ble _080ABC58
	adds r1, r0, #0x0
_080ABC58:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080ABC6E
	movs r3, #0x00
	ldsh r0, [r7, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080ABC70
_080ABC6E:
	movs r2, #0x00
_080ABC70:
	cmp r2, #0x00
	bne _080ABC76
	b _080ABD84
_080ABC76:
	ldr r3, _080ABD18 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080ABD10 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ABD1C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABCC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABCBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABCBA
_080ABCC6:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABCDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABCD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABCD0
_080ABCDC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABCF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABCE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABCE6
_080ABCF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABD78
	movs r1, #0x10
_080ABCFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABD06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABD06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABCFC
	b _080ABD78
	.byte 0x00, 0x00
_080ABD10: .4byte 0x00000FFF
_080ABD14: .4byte 0x00007FFF
_080ABD18: .4byte 0x03000FD8
_080ABD1C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABD32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABD26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABD26
_080ABD32:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABD48
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABD3C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABD3C
_080ABD48:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABD5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABD52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABD52
_080ABD5E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABD78
	movs r1, #0x10
_080ABD68:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABD72
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABD72:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABD68
_080ABD78:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080ABECE
_080ABD84:
	movs r2, #0x00
	ldsh r0, [r7, r2]
	cmp r0, r10
	ble _080ABD8E
	b _080ABECE
_080ABD8E:
	ldr r0, _080ABE50 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080ABDA4
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080ABDA4
	b _080ABECE
_080ABDA4:
	ldr r2, _080ABE54 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080ABECE
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080ABE58 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ABE5C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABE06
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABDFA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABDFA
_080ABE06:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABE1C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE10:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE10
_080ABE1C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABE32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE26
_080ABE32:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABEB8
	movs r1, #0x10
_080ABE3C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABE46
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABE46:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABE3C
	b _080ABEB8
	.byte 0x00, 0x00
_080ABE50: .4byte 0x0300034C
_080ABE54: .4byte 0x03000FD8
_080ABE58: .4byte 0x00000FFF
_080ABE5C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABE72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE66
_080ABE72:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABE88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE7C
_080ABE88:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABE9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE92
_080ABE9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABEB8
	movs r1, #0x10
_080ABEA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABEB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABEB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABEA8
_080ABEB8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080ABECE:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r7, r0, #0x0C
	cmp r7, #0x00
	bne _080ABEDA
	b _080ABFE8
_080ABEDA:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	cmp r2, #0x00
	bge _080ABEE6
	movs r2, #0x00
_080ABEE6:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080ABEF0
	adds r1, r0, #0x0
_080ABEF0:
	ldr r0, _080ABF28 @ =0x00007FFF
	cmp r2, r0
	ble _080ABEF8
	adds r2, r0, #0x0
_080ABEF8:
	cmp r2, r1
	bge _080ABEFE
	adds r1, r2, #0x0
_080ABEFE:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080ABF18
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080ABF1A
_080ABF18:
	movs r1, #0x00
_080ABF1A:
	cmp r1, #0x00
	beq _080ABFE8
	cmp r7, #0x01
	ble _080ABF30
	ldr r4, _080ABF2C @ =0x040B1888
	b _080ABF32
	.byte 0x00, 0x00
_080ABF28: .4byte 0x00007FFF
_080ABF2C: .4byte 0x040B1888
_080ABF30:
	ldr r4, _080ABF78 @ =0x040B1788
_080ABF32:
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
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0x09
	ands r4, r0
	cmp r4, #0x00
	bne _080ABF7C
	cmp r1, #0x01
	bne _080ABF7C
	adds r0, r5, #0x0
	bl sub_8086764
	b _080AC078
	.byte 0x00, 0x00
_080ABF78: .4byte 0x040B1788
_080ABF7C:
	cmp r7, #0x01
	ble _080ABFAC
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080ABF88
	adds r1, #0xFF
_080ABF88:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080ABF92
	adds r2, #0xFF
_080ABF92:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080ABF9C
	adds r3, #0xFF
_080ABF9C:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080ABFA8 @ =0x00002E47
	bl sub_80DF024
	b _080ABFD2
_080ABFA8: .4byte 0x00002E47
_080ABFAC:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080ABFB4
	adds r1, #0xFF
_080ABFB4:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080ABFBE
	adds r2, #0xFF
_080ABFBE:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080ABFC8
	adds r3, #0xFF
_080ABFC8:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080AC088 @ =0x0000070B
	bl sub_80DF024
_080ABFD2:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080AC08C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080ABFE8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AC078
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080ABFFE
	adds r1, #0xFF
_080ABFFE:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AC008
	adds r2, #0xFF
_080AC008:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AC012
	adds r3, #0xFF
_080AC012:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080AC090 @ =0x00002FF9
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC02E
	cmp r1, #0x04
	bne _080AC046
_080AC02E:
	ldr r2, _080AC094 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC046:
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC058
	cmp r1, #0x04
	bne _080AC072
_080AC058:
	ldr r2, _080AC098 @ =0x0000204D
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r3, r8
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC072:
	ldr r0, _080AC09C @ =0x080AC0A1
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080AC078:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AC088: .4byte 0x0000070B
_080AC08C: .4byte 0x00000FFF
_080AC090: .4byte 0x00002FF9
_080AC094: .4byte 0x00002030
_080AC098: .4byte 0x0000204D
_080AC09C: .4byte sub_80AC0A0
	thumb_func_start sub_80AC0A0
sub_80AC0A0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AC168 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AC15E
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC0DA
	cmp r1, #0x04
	bne _080AC130
_080AC0DA:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080AC0E2
	adds r0, #0xFF
_080AC0E2:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x3C
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080AC0FC
	adds r2, #0xFF
_080AC0FC:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080AC11C
	adds r0, #0xFF
_080AC11C:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080AC130:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC142
	cmp r1, #0x04
	bne _080AC15A
_080AC142:
	ldr r2, _080AC16C @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC15A:
	ldr r0, _080AC170 @ =0x080AC175
	str r0, [r7, #0x4C]
_080AC15E:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AC168: .4byte 0x03000FD8
_080AC16C: .4byte 0x00002030
_080AC170: .4byte sub_80AC174
	thumb_func_start sub_80AC174
sub_80AC174:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080AC29C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r2, _080AC2A0 @ =0x00001555
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080AC1A6
	adds r0, r4, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AC1A8
_080AC1A6:
	movs r1, #0x00
_080AC1A8:
	cmp r1, #0x00
	beq _080AC1D6
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC1BE
	cmp r1, #0x04
	bne _080AC1D6
_080AC1BE:
	ldr r2, _080AC2A4 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC1D6:
	ldr r2, _080AC2A8 @ =0x00002AAA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080AC1F2
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AC1F4
_080AC1F2:
	movs r1, #0x00
_080AC1F4:
	cmp r1, #0x00
	beq _080AC222
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC20A
	cmp r1, #0x04
	bne _080AC222
_080AC20A:
	ldr r2, _080AC2A4 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC222:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AC292
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080AC242
	adds r1, #0xFF
_080AC242:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AC24C
	adds r2, #0xFF
_080AC24C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AC256
	adds r3, #0xFF
_080AC256:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC272
	cmp r1, #0x04
	bne _080AC28E
_080AC272:
	ldr r2, _080AC2AC @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x08
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
_080AC28E:
	ldr r0, _080AC2B0 @ =0x080AC2B5
	str r0, [r6, #0x4C]
_080AC292:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AC29C: .4byte 0x03000FD8
_080AC2A0: .4byte 0x00001555
_080AC2A4: .4byte 0x00002030
_080AC2A8: .4byte 0x00002AAA
_080AC2AC: .4byte 0x00002034
_080AC2B0: .4byte sub_80AC2B4
	thumb_func_start sub_80AC2B4
sub_80AC2B4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080AC364 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080AC2D6
	b _080AC4A0
_080AC2D6:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC2F4
	cmp r1, #0x04
	bne _080AC332
_080AC2F4:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC302
	adds r0, #0xFF
_080AC302:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC310
	adds r0, #0xFF
_080AC310:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC31E
	adds r0, #0xFF
_080AC31E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080AC332:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AC346
	cmp r2, #0x04
	bne _080AC3A8
_080AC346:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AC36C
	ldr r2, _080AC368 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AC378
_080AC364: .4byte 0x03000FD8
_080AC368: .4byte 0x00002002
_080AC36C:
	ldr r2, _080AC444 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AC378:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AC38E
	movs r2, #0x01
_080AC38E:
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
_080AC3A8:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AC3B6
	cmp r2, #0x04
	bne _080AC3C0
_080AC3B6:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080AC3C0:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AC3D4
	cmp r2, #0x04
	bne _080AC416
_080AC3D4:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC3E2
	adds r0, #0xFF
_080AC3E2:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC3F0
	adds r0, #0xFF
_080AC3F0:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC3FE
	adds r0, #0xFF
_080AC3FE:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080AC416:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC424
	cmp r1, #0x04
	bne _080AC488
_080AC424:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AC44C
	ldr r2, _080AC448 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AC458
	.byte 0x00, 0x00
_080AC444: .4byte 0x0000204F
_080AC448: .4byte 0x00002002
_080AC44C:
	ldr r2, _080AC4A8 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AC458:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AC46E
	movs r2, #0x01
_080AC46E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC488:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AC496
	cmp r2, #0x04
	bne _080AC4A0
_080AC496:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080AC4A0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AC4A8: .4byte 0x0000204F
	thumb_func_start sub_80AC4AC
sub_80AC4AC:
	push {r4, r5, r6, r7, lr}
	ldr r0, _080AC4F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r7, r5, #0x0
	adds r7, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AC4EA
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC4E2
	cmp r1, #0x04
	bne _080AC4E6
_080AC4E2:
	ldr r0, _080AC4F4 @ =0x080A99A9
	str r0, [r7, #0x4C]
_080AC4E6:
	movs r0, #0x00
	str r0, [r6, #0x4C]
_080AC4EA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AC4F0: .4byte 0x03000FD8
_080AC4F4: .4byte sub_80A99A8
