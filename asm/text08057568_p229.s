	.include "asm/macros.inc"

	.syntax unified
	.text

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
