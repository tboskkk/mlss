	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8132B8C
sub_8132B8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r5, r4, #0x0
	adds r5, #0xB2
	movs r0, #0x94
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldrh r0, [r5, #0x00]
	adds r0, r0, r1
	strh r0, [r5, #0x00]
	adds r7, r4, #0x0
	adds r7, #0xAE
	movs r1, #0x00
	ldsh r0, [r7, r1]
	ldr r2, [r4, #0x10]
	adds r2, r2, r0
	str r2, [r4, #0x10]
	adds r6, r4, #0x0
	adds r6, #0xB0
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, _08132C48 @ =0xFFFFF000
	cmp r2, r0
	bge _08132C3C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x28]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x14]
	ldr r0, [r1, #0x48]
	str r0, [r4, #0x18]
	ldr r3, [r1, #0x40]
	ldr r1, _08132C4C @ =0xFFFF1700
	adds r3, r3, r1
	movs r0, #0xA0
	lsls r0, r0, #0x03
	str r0, [sp, #0x000]
	movs r0, #0x8C
	lsls r0, r0, #0x06
	str r0, [sp, #0x004]
	movs r0, #0x80
	lsls r0, r0, #0x07
	str r0, [sp, #0x008]
	movs r0, #0xA0
	lsls r0, r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_808552C
	mov r2, r8
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, _08132C50 @ =0x08132C55
	str r0, [r4, #0x4C]
_08132C3C:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08132C48: .4byte 0xFFFFF000
_08132C4C: .4byte 0xFFFF1700
_08132C50: .4byte sub_8132C54
	thumb_func_start sub_8132C54
sub_8132C54:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r5, [r1, #0x0C]
	adds r0, r0, r5
	strh r0, [r1, #0x0C]
	adds r3, r4, #0x0
	adds r3, #0xB2
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r2, [r4, #0x10]
	adds r2, r2, r0
	str r2, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r3, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0x40]
	movs r1, #0xB8
	lsls r1, r1, #0x05
	adds r0, r0, r1
	cmp r2, r0
	bgt _08132CDC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	adds r0, #0x08
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x28]
	ldr r2, [r0, #0x10]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r1, [r4, #0x28]
	ldr r0, _08132CE4 @ =0x08132D4D
	str r0, [r1, #0x54]
	adds r0, r4, #0x0
	bl sub_807C298
_08132CDC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08132CE4: .4byte sub_8132D4C
