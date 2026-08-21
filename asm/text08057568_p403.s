	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8072294
sub_8072294:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	adds r1, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x32
	bhi _080722D0
	ldr r2, [r4, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xF6
	movs r3, #0x00
	ldsh r1, [r1, r3]
	cmp r1, #0x00
	beq _080722D0
	adds r0, r2, #0x0
	movs r1, #0xC8
	bl sub_810835C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080722D0:
	ldr r1, _080722DC @ =0x0807223D
	str r1, [r5, #0x4C]
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080722DC: .4byte sub_807223C
	thumb_func_start sub_80722E0
sub_80722E0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, _080722F4 @ =0x080722F9
	str r1, [r4, #0x4C]
	pop {r4}
	pop {r1}
	bx r1
_080722F4: .4byte sub_80722F8
	thumb_func_start sub_80722F8
sub_80722F8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x14
	str r2, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807232A
	ldr r0, [r4, #0x10]
	subs r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0807231E
	adds r0, #0xFF
_0807231E:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08072348
	b _0807233C
_0807232A:
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08072336
	adds r0, #0xFF
_08072336:
	asrs r0, r0, #0x08
	cmp r0, #0xFF
	ble _08072348
_0807233C:
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	bl sub_807C298
_08072348:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
