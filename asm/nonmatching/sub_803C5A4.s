	.syntax unified
	.text

	thumb_func_start sub_803C5A4
sub_803C5A4:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r0, [r5, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x28
	adds r1, r4, #0x0
	bl sub_80461B4
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r7, r6, r0
	ldr r0, [r7, #0x00]
	adds r1, r4, #0x0
	bl sub_80461B4
	ldr r0, [r5, #0x00]
	bl sub_8047B78
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0803C5EE
	ldr r0, [r7, #0x00]
	bl sub_8047B78
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0803C5EE
	adds r0, r6, #0x0
	bl sub_802EA70
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_802DF80
_0803C5EE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
