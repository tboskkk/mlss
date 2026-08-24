	.syntax unified
	.text

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
