	.syntax unified
	.text

	thumb_func_start sub_80FBDE0
sub_80FBDE0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	bge _080FBDF6
	adds r0, #0xFF
_080FBDF6:
	lsls r0, r0, #0x08
	lsrs r2, r0, #0x10
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _080FBE02
	adds r0, #0xFF
_080FBE02:
	lsls r0, r0, #0x08
	lsrs r3, r0, #0x10
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080FBE12
	adds r0, #0xFF
_080FBE12:
	lsls r0, r0, #0x08
	lsrs r1, r0, #0x10
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r4, r0
	blt _080FBE54
	movs r2, #0x02
	ldsh r0, [r5, r2]
	cmp r4, r0
	bgt _080FBE54
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	movs r2, #0x06
	ldsh r0, [r5, r2]
	cmp r4, r0
	blt _080FBE54
	movs r2, #0x04
	ldsh r0, [r5, r2]
	cmp r4, r0
	bgt _080FBE54
	lsls r0, r1, #0x10
	lsls r1, r6, #0x10
	asrs r3, r0, #0x10
	cmp r0, r1
	blt _080FBE54
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r3, r0
	bgt _080FBE54
	movs r0, #0x01
	b _080FBE56
_080FBE54:
	movs r0, #0x00
_080FBE56:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
