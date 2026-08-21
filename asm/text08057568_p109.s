	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8068798
sub_8068798:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, _080687E4 @ =0xFFFFFECD
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x04
	cmp r0, r1
	ble _080687C6
	ldr r2, _080687E8 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r4, #0x18]
	cmp r0, r1
	bgt _080687C6
	str r1, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080687C6:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080687CE
	adds r1, #0xFF
_080687CE:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _080687DE
	adds r0, r4, #0x0
	bl sub_807C298
_080687DE:
	pop {r4}
	pop {r0}
	bx r0
_080687E4: .4byte 0xFFFFFECD
_080687E8: .4byte 0xFFFFFF00
	thumb_func_start sub_80687EC
sub_80687EC:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _08068814 @ =0xFFFFFDCD
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08068800
	adds r3, #0xFF
	adds r0, r1, r3
_08068800:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08068810
	adds r0, r2, #0x0
	bl sub_807C298
_08068810:
	pop {r0}
	bx r0
_08068814: .4byte 0xFFFFFDCD
