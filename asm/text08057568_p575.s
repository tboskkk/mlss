	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81329AC
sub_81329AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0x90
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
	ldr r4, [r5, #0x10]
	ldr r0, _08132A98 @ =0xFFFFFC00
	adds r4, r4, r0
	str r4, [r5, #0x10]
	adds r7, r5, #0x0
	adds r7, #0xAE
	movs r1, #0x00
	ldsh r0, [r7, r1]
	lsls r0, r0, #0x08
	subs r0, r4, r0
	movs r2, #0x88
	adds r2, r2, r5
	mov r9, r2
	ldr r1, [r2, #0x00]
	muls r0, r1
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r1, [r6, #0x00]
	bl __divsi3
	movs r3, #0xB0
	adds r3, r3, r5
	mov r10, r3
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r3, #0x00
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x08
	subs r0, r4, r0
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r1, [r1, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	movs r1, #0xB2
	adds r1, r1, r5
	mov r8, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x18]
	movs r3, #0x00
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	adds r0, r0, r1
	cmp r4, r0
	bge _08132A86
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	ldr r4, _08132A9C @ =0xFFFF3800
	mov r0, r9
	ldr r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x0B
	negs r0, r0
	ldr r1, [r6, #0x00]
	bl __divsi3
	str r0, [sp, #0x000]
	movs r1, #0x00
	str r1, [sp, #0x004]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	movs r0, #0x80
	lsls r0, r0, #0x03
	str r0, [sp, #0x00C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x010]
	str r1, [sp, #0x014]
	adds r0, r7, #0x0
	mov r1, r10
	mov r2, r8
	adds r3, r4, #0x0
	bl sub_808552C
	adds r1, r5, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	ldr r0, _08132AA0 @ =0x08132CE9
	str r0, [r5, #0x4C]
_08132A86:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08132A98: .4byte 0xFFFFFC00
_08132A9C: .4byte 0xFFFF3800
_08132AA0: .4byte sub_8132CE8
	thumb_func_start sub_8132AA4
sub_8132AA4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
	ldr r4, [r5, #0x10]
	ldr r0, _08132B7C @ =0xFFFFFD80
	adds r4, r4, r0
	str r4, [r5, #0x10]
	adds r7, r5, #0x0
	adds r7, #0xAE
	movs r1, #0x00
	ldsh r0, [r7, r1]
	lsls r0, r0, #0x08
	subs r0, r4, r0
	movs r2, #0x88
	adds r2, r2, r5
	mov r9, r2
	ldr r1, [r2, #0x00]
	muls r0, r1
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r1, [r6, #0x00]
	bl __divsi3
	movs r3, #0xB0
	adds r3, r3, r5
	mov r10, r3
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r3, #0x00
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x08
	subs r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	muls r0, r4
	ldr r1, [r6, #0x00]
	bl __divsi3
	movs r1, #0xB2
	adds r1, r1, r5
	mov r8, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r1, _08132B80 @ =0x000005FF
	cmp r0, r1
	bgt _08132B6A
	ldr r4, _08132B84 @ =0xFFFF6000
	mov r3, r9
	ldr r1, [r3, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x0D
	negs r0, r0
	ldr r1, [r6, #0x00]
	bl __divsi3
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r0, #0xE0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	movs r0, #0xA0
	lsls r0, r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x010]
	movs r1, #0x00
	str r1, [sp, #0x014]
	adds r0, r7, #0x0
	mov r1, r10
	mov r2, r8
	adds r3, r4, #0x0
	bl sub_808552C
	adds r1, r5, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	ldr r0, _08132B88 @ =0x08132B8D
	str r0, [r5, #0x4C]
_08132B6A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08132B7C: .4byte 0xFFFFFD80
_08132B80: .4byte 0x000005FF
_08132B84: .4byte 0xFFFF6000
_08132B88: .4byte sub_8132B8C
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
