	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E9CA8
sub_80E9CA8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r2, #0x0
	ldr r0, [sp, #0x00C]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x3C
	bgt _080E9CC0
	adds r0, r4, #0x0
	bl sub_80E9C14
	b _080E9CFE
_080E9CC0:
	adds r0, r2, #0x0
	subs r0, #0x3D
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r0, _080E9CE0 @ =0x00001B8F
	cmp r1, r0
	bgt _080E9CE4
	lsrs r2, r2, #0x10
	adds r0, r5, #0x0
	adds r1, r3, #0x0
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080E9CFE
	.byte 0x00, 0x00
_080E9CE0: .4byte 0x00001B8F
_080E9CE4:
	ldr r0, _080E9CF0 @ =0x00001D17
	cmp r1, r0
	ble _080E9CF4
	movs r0, #0x00
	b _080E9CFE
	.byte 0x00, 0x00
_080E9CF0: .4byte 0x00001D17
_080E9CF4:
	lsrs r0, r2, #0x10
	bl sub_80E99E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080E9CFE:
	pop {r4, r5}
	pop {r1}
	bx r1
