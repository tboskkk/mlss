	.syntax unified
	.text

	thumb_func_start sub_8132CE8
sub_8132CE8:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x08]
	movs r2, #0x90
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r4, [r1, #0x0C]
	adds r0, r0, r4
	strh r0, [r1, #0x0C]
	movs r0, #0xB2
	adds r0, r0, r3
	mov r12, r0
	adds r0, r3, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	mov r2, r12
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAE
	movs r4, #0x00
	ldsh r0, [r0, r4]
	ldr r2, [r3, #0x10]
	adds r2, r2, r0
	str r2, [r3, #0x10]
	adds r0, r3, #0x0
	adds r0, #0xB0
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	mov r0, r12
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	ldr r0, _08132D48 @ =0xFFFFF000
	cmp r2, r0
	bge _08132D42
	adds r0, r3, #0x0
	bl sub_807C298
_08132D42:
	pop {r4}
	pop {r0}
	bx r0
_08132D48: .4byte 0xFFFFF000
