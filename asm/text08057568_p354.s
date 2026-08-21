	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80CC764
sub_80CC764:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080CC81C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
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
	bne _080CC78E
	b _080CC958
_080CC78E:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC7AC
	cmp r1, #0x04
	bne _080CC7EA
_080CC7AC:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC7BA
	adds r0, #0xFF
_080CC7BA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC7C8
	adds r0, #0xFF
_080CC7C8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC7D6
	adds r0, #0xFF
_080CC7D6:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080CC7EA:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CC7FE
	cmp r2, #0x04
	bne _080CC860
_080CC7FE:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CC824
	ldr r2, _080CC820 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CC830
_080CC81C: .4byte 0x03000FD8
_080CC820: .4byte 0x00002002
_080CC824:
	ldr r2, _080CC8FC @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CC830:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CC846
	movs r2, #0x01
_080CC846:
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
_080CC860:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CC86E
	cmp r2, #0x04
	bne _080CC878
_080CC86E:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080CC878:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CC88C
	cmp r2, #0x04
	bne _080CC8CE
_080CC88C:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC89A
	adds r0, #0xFF
_080CC89A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC8A8
	adds r0, #0xFF
_080CC8A8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC8B6
	adds r0, #0xFF
_080CC8B6:
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
_080CC8CE:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC8DC
	cmp r1, #0x04
	bne _080CC940
_080CC8DC:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CC904
	ldr r2, _080CC900 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CC910
	.byte 0x00, 0x00
_080CC8FC: .4byte 0x0000204F
_080CC900: .4byte 0x00002002
_080CC904:
	ldr r2, _080CC960 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CC910:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CC926
	movs r2, #0x01
_080CC926:
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
_080CC940:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CC94E
	cmp r2, #0x04
	bne _080CC958
_080CC94E:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080CC958:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CC960: .4byte 0x0000204F
	thumb_func_start sub_80CC964
sub_80CC964:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CCA1C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r1, [r1, #0x74]
	adds r4, r1, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC988
	cmp r1, #0x04
	bne _080CC9A4
_080CC988:
	ldr r2, _080CCA20 @ =0x00002035
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
_080CC9A4:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CC9B8
	cmp r2, #0x04
	bne _080CC9D4
_080CC9B8:
	ldr r2, _080CCA24 @ =0x00002064
	adds r0, r4, #0x0
	movs r1, #0x07
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
_080CC9D4:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CC9E2
	cmp r2, #0x04
	bne _080CCA12
_080CC9E2:
	ldr r2, _080CCA28 @ =0x03001038
	ldr r0, _080CCA2C @ =0x0819832C
	ldr r1, _080CCA30 @ =0x08198220
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
_080CCA12:
	ldr r0, _080CCA34 @ =0x080CCA39
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CCA1C: .4byte 0x03000FD8
_080CCA20: .4byte 0x00002035
_080CCA24: .4byte 0x00002064
_080CCA28: .4byte 0x03001038
_080CCA2C: .4byte 0x0819832C
_080CCA30: .4byte 0x08198220
_080CCA34: .4byte sub_80CCA38
	thumb_func_start sub_80CCA38
sub_80CCA38:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080CCB60 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r4, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CCB56
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	ldr r1, _080CCB64 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x50
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080CCB68 @ =0x050323AB
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bgt _080CCAC6
	ldr r1, _080CCB64 @ =0x00000111
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CCB10
_080CCAC6:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080CCACE
	adds r1, #0xFF
_080CCACE:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r1, [r4, #0x3C]
	cmp r1, #0x00
	bge _080CCAE4
	adds r1, #0xFF
_080CCAE4:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r1, r0
	adds r0, r3, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x1C]
	lsrs r0, r0, #0x04
	ldr r1, _080CCB6C @ =0x00002F6F
	cmp r0, #0x00
	bne _080CCB04
	subs r1, #0xDC
_080CCB04:
	str r4, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80DF024
_080CCB10:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCB22
	cmp r1, #0x04
	bne _080CCB52
_080CCB22:
	ldr r2, _080CCB70 @ =0x03001038
	ldr r0, _080CCB74 @ =0x0819832C
	ldr r1, _080CCB78 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
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
_080CCB52:
	ldr r0, _080CCB7C @ =0x080CCB81
	str r0, [r7, #0x4C]
_080CCB56:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CCB60: .4byte 0x03000FD8
_080CCB64: .4byte 0x00000111
_080CCB68: .4byte 0x050323AB
_080CCB6C: .4byte 0x00002F6F
_080CCB70: .4byte 0x03001038
_080CCB74: .4byte 0x0819832C
_080CCB78: .4byte 0x08198220
_080CCB7C: .4byte sub_80CCB80
	thumb_func_start sub_80CCB80
sub_80CCB80:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080CCC38 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
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
	bne _080CCBAA
	b _080CCD74
_080CCBAA:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCBC8
	cmp r1, #0x04
	bne _080CCC06
_080CCBC8:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCBD6
	adds r0, #0xFF
_080CCBD6:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCBE4
	adds r0, #0xFF
_080CCBE4:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCBF2
	adds r0, #0xFF
_080CCBF2:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080CCC06:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CCC1A
	cmp r2, #0x04
	bne _080CCC7C
_080CCC1A:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CCC40
	ldr r2, _080CCC3C @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CCC4C
_080CCC38: .4byte 0x03000FD8
_080CCC3C: .4byte 0x00002002
_080CCC40:
	ldr r2, _080CCD18 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CCC4C:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CCC62
	movs r2, #0x01
_080CCC62:
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
_080CCC7C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CCC8A
	cmp r2, #0x04
	bne _080CCC94
_080CCC8A:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080CCC94:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CCCA8
	cmp r2, #0x04
	bne _080CCCEA
_080CCCA8:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCCB6
	adds r0, #0xFF
_080CCCB6:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCCC4
	adds r0, #0xFF
_080CCCC4:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCCD2
	adds r0, #0xFF
_080CCCD2:
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
_080CCCEA:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCCF8
	cmp r1, #0x04
	bne _080CCD5C
_080CCCF8:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CCD20
	ldr r2, _080CCD1C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CCD2C
	.byte 0x00, 0x00
_080CCD18: .4byte 0x0000204F
_080CCD1C: .4byte 0x00002002
_080CCD20:
	ldr r2, _080CCD7C @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CCD2C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CCD42
	movs r2, #0x01
_080CCD42:
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
_080CCD5C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CCD6A
	cmp r2, #0x04
	bne _080CCD74
_080CCD6A:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080CCD74:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CCD7C: .4byte 0x0000204F
	thumb_func_start sub_80CCD80
sub_80CCD80:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CCDE0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
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
	beq _080CCDDA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCDBE
	cmp r1, #0x04
	bne _080CCDD6
_080CCDBE:
	ldr r2, _080CCDE4 @ =0x00002035
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CCDD6:
	ldr r0, _080CCDE8 @ =0x080CB781
	str r0, [r6, #0x4C]
_080CCDDA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CCDE0: .4byte 0x03000FD8
_080CCDE4: .4byte 0x00002035
_080CCDE8: .4byte sub_80CB780
	thumb_func_start sub_80CCDEC
sub_80CCDEC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080CCE40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CCE38
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCE18
	cmp r1, #0x04
	bne _080CCE34
_080CCE18:
	ldr r2, _080CCE44 @ =0x00002034
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
_080CCE34:
	ldr r0, _080CCE48 @ =0x080C9855
	str r0, [r5, #0x4C]
_080CCE38:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CCE40: .4byte 0x03000FD8
_080CCE44: .4byte 0x00002034
_080CCE48: .4byte sub_80C9854
	thumb_func_start sub_80CCE4C
sub_80CCE4C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080CCE74 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CCE6E
	ldr r0, _080CCE78 @ =0x080C8A7D
	str r0, [r5, #0x4C]
_080CCE6E:
	pop {r4, r5}
	pop {r0}
	bx r0
_080CCE74: .4byte 0x03000FD8
_080CCE78: .4byte sub_80C8A7C
	.byte 0x70, 0xB5, 0x4E, 0x46, 0x45, 0x46, 0x60, 0xB4, 0x81, 0x46, 0x1F, 0x4A, 0x83, 0x6A, 0x18, 0x1C
	.byte 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F, 0x08, 0x01, 0x40, 0x1A, 0x80, 0x00, 0x3C, 0x30, 0x11, 0x68
	.byte 0x09, 0x1A, 0x8A, 0x20, 0x40, 0x00, 0x1A, 0x18, 0x48, 0x8D, 0x10, 0x60, 0x17, 0x48, 0x00, 0x68
	.byte 0x05, 0x6F, 0x08, 0x21, 0x49, 0x19, 0x88, 0x46, 0x44, 0x6F, 0x26, 0x1C, 0x08, 0x36, 0x4A, 0x46
	.byte 0xD0, 0x6A, 0xF0, 0x62, 0xC8, 0x62, 0xD1, 0x6E, 0xF1, 0x66, 0x42, 0x46, 0xD1, 0x66, 0x00, 0x23
	.byte 0x03, 0x65, 0x33, 0x65, 0x13, 0x65, 0x02, 0x1C, 0x7C, 0x32, 0x80, 0x21, 0x49, 0x00, 0x11, 0x80
	.byte 0x84, 0x34, 0x21, 0x80, 0x84, 0x35, 0x29, 0x80, 0x09, 0x49, 0x4C, 0x46, 0xE1, 0x64, 0xB3, 0x84
	.byte 0x41, 0x46, 0x8B, 0x84, 0xBA, 0xF7, 0xE0, 0xF8, 0x01, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0xD8, 0x0F, 0x00, 0x03
	.byte 0x11, 0xCF, 0x0C, 0x08
	thumb_func_start sub_80CCF10
sub_80CCF10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r7, _080CD018 @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r0, #0x03
	strb r0, [r1, #0x0E]
	ldr r4, [r7, #0x00]
	ldr r0, _080CD01C @ =0x03000FF4
	ldr r3, [r0, #0x00]
	ldrb r0, [r3, #0x0B]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	movs r2, #0x01
	adds r1, r2, #0x0
	ands r1, r0
	ldrb r0, [r3, #0x0D]
	lsrs r0, r0, #0x02
	ands r0, r2
	lsls r0, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r4, #0x0A]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r1, [r7, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r0, [r0, #0x2C]
	mov r9, r0
	movs r1, #0x01
	negs r1, r1
	mov r8, r1
	movs r0, #0x53
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCF7E
	cmp r1, #0x04
	bne _080CCFC2
_080CCF7E:
	ldr r0, [r7, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x0C
	ldr r0, [r7, #0x00]
	movs r7, #0x93
	lsls r7, r7, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x64
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080CCFC2:
	adds r2, r5, #0x0
	adds r2, #0x88
	mov r1, r9
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080CCFD0
	adds r0, #0xFF
_080CCFD0:
	asrs r0, r0, #0x08
	lsls r1, r0, #0x10
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080CCFDC
	adds r0, #0xFF
_080CCFDC:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CCFF8
	cmp r2, #0x04
	bne _080CD060
_080CCFF8:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CD024
	ldr r2, _080CD020 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CD030
	.byte 0x00, 0x00
_080CD018: .4byte 0x03000FD8
_080CD01C: .4byte 0x03000FF4
_080CD020: .4byte 0x00002002
_080CD024:
	ldr r2, _080CD124 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CD030:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CD046
	movs r2, #0x01
_080CD046:
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
_080CD060:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CD06E
	cmp r2, #0x04
	bne _080CD078
_080CD06E:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080CD078:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r7, r1, #0x0
	cmp r2, #0x02
	beq _080CD08C
	cmp r2, #0x04
	bne _080CD0D4
_080CD08C:
	ldr r5, _080CD128 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x50
	ldr r0, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x64
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080CD0D4:
	adds r2, r6, #0x0
	adds r2, #0x88
	mov r4, r9
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080CD0E2
	adds r0, #0xFF
_080CD0E2:
	asrs r0, r0, #0x08
	lsls r1, r0, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080CD0EE
	adds r0, #0xFF
_080CD0EE:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CD104
	cmp r2, #0x04
	bne _080CD16C
_080CD104:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CD130
	ldr r2, _080CD12C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CD13C
	.byte 0x00, 0x00
_080CD124: .4byte 0x0000204F
_080CD128: .4byte 0x03000FD8
_080CD12C: .4byte 0x00002002
_080CD130:
	ldr r2, _080CD184 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CD13C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CD152
	movs r2, #0x01
_080CD152:
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
_080CD16C:
	ldr r0, _080CD188 @ =0x080D2EF1
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
	.byte 0x00, 0x00
_080CD184: .4byte 0x0000204F
_080CD188: .4byte sub_80D2EF0
