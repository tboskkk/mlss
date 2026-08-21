	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8067C98
sub_8067C98:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r2, [r6, #0x08]
	adds r7, r6, #0x0
	adds r7, #0x8C
	ldr r1, [r7, #0x00]
	ldrh r0, [r2, #0x0C]
	adds r0, r0, r1
	strh r0, [r2, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r5, r6, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _08067D30
	adds r0, #0xFF
_08067D30:
	asrs r0, r0, #0x08
	cmp r0, #0x08
	bgt _08067DBC
	movs r0, #0x08
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r0, #0x02
	str r0, [r6, #0x14]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067D4E
	adds r1, #0xFF
_08067D4E:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08067D58
	adds r2, #0xFF
_08067D58:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08067D62
	adds r3, #0xFF
_08067D62:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08067D98 @ =0x000010A5
	bl sub_80DF024
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x00]
	cmp r1, #0x00
	beq _08067D9C
	cmp r1, #0x01
	beq _08067DA4
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x02
	b _08067DAC
_08067D98: .4byte 0x000010A5
_08067D9C:
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0x99
	b _08067DAC
_08067DA4:
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x01
_08067DAC:
	str r0, [r1, #0x00]
	ldr r0, _08067DC4 @ =0x08068125
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3B
	bl play_sfx_80195B4
_08067DBC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08067DC4: .4byte sub_8068124
	thumb_func_start sub_8067DC8
sub_8067DC8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _08067E40
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	ldr r0, _08067E48 @ =0x080680A1
	str r0, [r4, #0x4C]
_08067E40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08067E48: .4byte sub_80680A0
	thumb_func_start sub_8067E4C
sub_8067E4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08067E64
	b _08067F6C
_08067E64:
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08067E78
	adds r1, #0xFF
_08067E78:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08067E82
	adds r2, #0xFF
_08067E82:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08067E8C
	adds r3, #0xFF
_08067E8C:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08067F78 @ =0x000010B5
	bl sub_80DF024
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08067EA0
	adds r0, #0xFF
_08067EA0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x12
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _08067EAE
	adds r3, #0xFF
_08067EAE:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08067EB8
	adds r0, #0xFF
_08067EB8:
	asrs r0, r0, #0x08
	adds r0, #0x04
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067F7C @ =0x00004107
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	movs r1, #0x77
	adds r1, r1, r5
	mov r12, r1
	adds r6, r5, #0x0
	adds r6, #0x74
	adds r7, r5, #0x0
	adds r7, #0xA0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #0x00
	beq _08067EF6
_08067EF0:
	ldr r0, [r0, #0x30]
	cmp r0, #0x00
	bne _08067EF0
_08067EF6:
	str r4, [r0, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r12
	ldrb r2, [r1, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08067F80 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08067F84 @ =0x08068059
	str r0, [r4, #0x58]
	ldr r0, _08067F88 @ =0x0806800D
	str r0, [r4, #0x5C]
	ldrb r1, [r6, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08067F8C @ =0x08068075
	str r0, [r4, #0x4C]
	ldr r0, [r7, #0x00]
	mov r1, r8
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r0, _08067F90 @ =0x08067F95
	str r0, [r5, #0x4C]
_08067F6C:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08067F78: .4byte 0x000010B5
_08067F7C: .4byte 0x00004107
_08067F80: .4byte sub_8087540
_08067F84: .4byte sub_8068058
_08067F88: .4byte sub_806800C
_08067F8C: .4byte sub_8068074
_08067F90: .4byte sub_8067F94
	thumb_func_start sub_8067F94
sub_8067F94:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08067FBC
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08067FF0
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08067FBC:
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08068000
	subs r1, #0x02
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08067FF0
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08067FEC @ =0x08067E4D
	b _08067FFE
	.byte 0x00, 0x00
_08067FEC: .4byte sub_8067E4C
_08067FF0:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068008 @ =0x0808750D
_08067FFE:
	str r0, [r4, #0x4C]
_08068000:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068008: .4byte sub_808750C
	thumb_func_start sub_806800C
sub_806800C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _08068046
	ldr r0, _08068050 @ =0x0806819D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08068026
	adds r1, #0xFF
_08068026:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08068030
	adds r2, #0xFF
_08068030:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806803A
	adds r3, #0xFF
_0806803A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08068054 @ =0x000010C6
	bl sub_80DF024
	movs r0, #0x00
_08068046:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08068050: .4byte sub_806819C
_08068054: .4byte 0x000010C6
	thumb_func_start sub_8068058
sub_8068058:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08068070 @ =0x080681ED
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_08068070: .4byte sub_80681EC
	thumb_func_start sub_8068074
sub_8068074:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _0806809C @ =0xFFFFFECD
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08068088
	adds r0, r1, #0x0
	subs r0, #0x34
_08068088:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08068098
	adds r0, r2, #0x0
	bl sub_807C298
_08068098:
	pop {r0}
	bx r0
_0806809C: .4byte 0xFFFFFECD
	thumb_func_start sub_80680A0
sub_80680A0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080680C8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, _080680D0 @ =0x0806822D
	str r0, [r4, #0x4C]
_080680C8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080680D0: .4byte sub_806822C
	thumb_func_start sub_80680D4
sub_80680D4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r1, #0x28]
	ldr r0, [r0, #0x38]
	cmp r1, r0
	beq _080680E6
	movs r0, #0x01
	b _08068112
_080680E6:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080680EE
	adds r1, #0xFF
_080680EE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080680F8
	adds r2, #0xFF
_080680F8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08068102
	adds r3, #0xFF
_08068102:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806811C @ =0x000010AD
	bl sub_80DF024
	ldr r0, _08068120 @ =0x08068269
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08068112:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806811C: .4byte 0x000010AD
_08068120: .4byte sub_8068268
	thumb_func_start sub_8068124
sub_8068124:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x84
	ldr r1, [r2, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r2, #0x10]
	cmp r1, #0x00
	bge _08068138
	adds r1, #0xFF
_08068138:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08068148
	adds r0, r2, #0x0
	bl sub_807C298
_08068148:
	pop {r0}
	bx r0
