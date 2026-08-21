	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_814FC88
sub_814FC88:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r7, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r7, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	ldr r3, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r5, #0x00
	str r5, [sp, #0x004]
	adds r0, r7, #0x0
	bl sub_8047F60
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r6, #0x04
	orrs r0, r6
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r5, [sp, #0x000]
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_801E150
	ldr r0, _0814FDDC @ =0x0000020D
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0814FDE0 @ =0x0000020E
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r0, [r2, #0x00]
	ldr r1, _0814FDE4 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r2, _0814FDE8 @ =0x0000020F
	adds r1, r7, r2
	ldrb r0, [r1, #0x00]
	orrs r0, r6
	strb r0, [r1, #0x00]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r5, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x1C
	subs r2, #0xFF
	adds r1, r7, r2
	movs r2, #0x04
	bl CpuSet
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x18]
	adds r0, r5, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x1A]
	adds r0, r5, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x1C]
	adds r0, r5, #0x0
	adds r0, #0x27
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x1E]
	adds r0, r5, #0x0
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x08]
	adds r0, r5, #0x0
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x0A]
	adds r0, r5, #0x0
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0x2B
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x0E]
	adds r0, r5, #0x0
	adds r0, #0x2C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x28]
	adds r0, r5, #0x0
	adds r0, #0x2D
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x2A]
	adds r0, r5, #0x0
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0x2F
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x2E]
	adds r0, r5, #0x0
	adds r0, #0x30
	adds r1, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814FDDC: .4byte 0x0000020D
_0814FDE0: .4byte 0x0000020E
_0814FDE4: .4byte 0xFFFC7FFF
_0814FDE8: .4byte 0x0000020F
	thumb_func_start sub_814FDEC
sub_814FDEC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r3, #0x0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r6, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	cmp r4, #0x00
	beq _0814FEE8
	adds r0, r7, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814FE54
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _0814FE60
_0814FE54:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814FE60:
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r2, [r0, #0x28]
	ldr r1, [r2, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r4, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r6, #0x10]
	subs r2, r1, r0
	adds r1, r4, #0x0
	cmp r4, #0x00
	bge _0814FE7A
	negs r1, r4
_0814FE7A:
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0814FE82
	negs r0, r2
_0814FE82:
	cmp r1, r0
	ble _0814FEC0
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r4, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r3, #0x02
	cmp r4, #0x00
	bge _0814FEAE
	movs r3, #0x06
_0814FEAE:
	adds r2, r6, #0x0
	adds r2, #0x24
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	b _0814FEE8
_0814FEC0:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	mvns r2, r2
	asrs r2, r2, #0x1F
	movs r3, #0x02
	adds r0, r2, #0x0
	ands r0, r3
	adds r1, #0x21
	strb r0, [r1, #0x00]
	movs r0, #0x04
	adds r3, r6, #0x0
	adds r3, #0x24
	ands r2, r0
	ldrb r1, [r3, #0x00]
	subs r0, #0x0C
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
_0814FEE8:
	mov r2, r8
	cmp r2, #0x01
	beq _0814FF2C
	cmp r2, #0x01
	bgt _0814FEF8
	cmp r2, #0x00
	beq _0814FF00
	b _0814FF98
_0814FEF8:
	mov r0, r8
	cmp r0, #0x02
	beq _0814FF58
	b _0814FF98
_0814FF00:
	ldr r2, _0814FF24 @ =0x083A05EC
	ldr r1, _0814FF28 @ =0x00000216
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x04
	b _0814FF7A
_0814FF24: .4byte 0x083A05EC
_0814FF28: .4byte 0x00000216
_0814FF2C:
	ldr r2, _0814FF50 @ =0x083A05EC
	ldr r1, _0814FF54 @ =0x00000216
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x08
	b _0814FF7A
_0814FF50: .4byte 0x083A05EC
_0814FF54: .4byte 0x00000216
_0814FF58:
	ldr r2, _0814FFA4 @ =0x083A05EC
	ldr r1, _0814FFA8 @ =0x00000216
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x0C
_0814FF7A:
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0814FF98:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814FFA4: .4byte 0x083A05EC
_0814FFA8: .4byte 0x00000216
	thumb_func_start sub_814FFAC
sub_814FFAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	mov r0, r8
	cmp r0, #0x00
	beq _0815001C
	ldr r2, _0814FFF8 @ =0x083A05EC
	ldr r1, _0814FFFC @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08150000
	cmp r0, #0x01
	ble _08150044
	cmp r0, #0x02
	beq _08150014
	b _08150058
_0814FFF8: .4byte 0x083A05EC
_0814FFFC: .4byte 0x00000216
_08150000:
	ldr r0, [r4, #0x0C]
	movs r1, #0x90
	lsls r1, r1, #0x05
	adds r6, r0, r1
	ldr r0, [r4, #0x10]
	ldr r1, _08150010 @ =0xFFFFFA00
	adds r5, r0, r1
	b _08150096
_08150010: .4byte 0xFFFFFA00
_08150014:
	ldr r0, [r4, #0x0C]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	b _08150092
_0815001C:
	ldr r2, _0815004C @ =0x083A05EC
	ldr r1, _08150050 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08150074
	cmp r0, #0x01
	bgt _08150054
_08150044:
	cmp r0, #0x00
	beq _0815005E
	b _08150096
	.byte 0x00, 0x00
_0815004C: .4byte 0x083A05EC
_08150050: .4byte 0x00000216
_08150054:
	cmp r0, #0x02
	beq _0815007C
_08150058:
	cmp r0, #0x03
	beq _0815008E
	b _08150096
_0815005E:
	ldr r0, [r4, #0x0C]
	ldr r1, _0815006C @ =0xFFFFFA00
	adds r6, r0, r1
	ldr r0, [r4, #0x10]
	ldr r1, _08150070 @ =0xFFFFEB00
	adds r5, r0, r1
	b _08150096
_0815006C: .4byte 0xFFFFFA00
_08150070: .4byte 0xFFFFEB00
_08150074:
	ldr r0, [r4, #0x0C]
	movs r1, #0x90
	lsls r1, r1, #0x05
	b _08150092
_0815007C:
	ldr r0, [r4, #0x0C]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r6, r0, r1
	ldr r0, [r4, #0x10]
	movs r1, #0xA0
	lsls r1, r1, #0x04
	adds r5, r0, r1
	b _08150096
_0815008E:
	ldr r0, [r4, #0x0C]
	ldr r1, _081500D4 @ =0xFFFFEE00
_08150092:
	adds r6, r0, r1
	ldr r5, [r4, #0x10]
_08150096:
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0xC0
	lsls r0, r0, #0x03
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_8047F60
	mov r1, r8
	cmp r1, #0x00
	beq _081500D8
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r4, [sp, #0x000]
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_801E150
	b _081500F0
	.byte 0x00, 0x00
_081500D4: .4byte 0xFFFFEE00
_081500D8:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_801E150
_081500F0:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_804761C
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
