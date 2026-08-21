	.syntax unified
	.text

	thumb_func_start sub_8076B2C
sub_8076B2C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0x8C
	ldr r0, [r1, #0x00]
	ldr r2, _08076C0C @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
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
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
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
	movs r2, #0xE0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	blt _08076C04
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08076BD0
	adds r1, #0xFF
_08076BD0:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08076BDA
	adds r2, #0xFF
_08076BDA:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08076BE4
	adds r3, #0xFF
_08076BE4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08076C10 @ =0x000025C7
	bl sub_80DF024
	adds r0, r6, #0x0
	bl sub_807C298
	ldr r0, [r6, #0x28]
	adds r0, #0xB0
	movs r1, #0x01
	str r1, [r0, #0x00]
	subs r1, #0x02
	movs r0, #0xCC
	bl play_sfx_80195B4
_08076C04:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08076C0C: .4byte 0xFFFFF800
_08076C10: .4byte 0x000025C7
