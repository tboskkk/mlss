	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80477A8
sub_80477A8:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r3, _08047800 @ =0x0000020D
	adds r5, r0, r3
	ldrb r4, [r5, #0x00]
	movs r3, #0x11
	negs r3, r3
	ands r3, r4
	strb r3, [r5, #0x00]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r6, r0, r3
	ldr r5, [r6, #0x00]
	movs r3, #0x03
	mov r8, r3
	mov r3, r8
	ands r1, r3
	ldrb r4, [r5, #0x1F]
	movs r3, #0x04
	negs r3, r3
	ands r3, r4
	orrs r3, r1
	strb r3, [r5, #0x1F]
	ldr r5, [r6, #0x00]
	adds r3, r2, #0x0
	mov r1, r8
	ands r3, r1
	lsls r3, r3, #0x02
	ldrb r4, [r5, #0x1F]
	movs r1, #0x0D
	negs r1, r1
	ands r1, r4
	orrs r1, r3
	strb r1, [r5, #0x1F]
	movs r3, #0x8F
	lsls r3, r3, #0x02
	adds r0, r0, r3
	strb r2, [r0, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08047800: .4byte 0x0000020D
	thumb_func_start sub_8047804
sub_8047804:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	movs r2, #0xAA
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	ldrh r3, [r1, #0x00]
	movs r5, #0x86
	lsls r5, r5, #0x02
	adds r2, r4, r5
	ldrh r0, [r2, #0x00]
	adds r5, #0x04
	adds r1, r4, r5
	strh r0, [r1, #0x00]
	strh r3, [r2, #0x00]
	ldrh r0, [r1, #0x00]
	cmp r0, r3
	beq _08047842
	adds r0, r4, #0x0
	bl sub_8040790
	movs r3, #0x01
	negs r3, r3
	adds r0, r4, #0x0
	movs r1, #0x01
	adds r2, r3, #0x0
	bl sub_8040804
_08047842:
	ldr r1, _08047854 @ =0x00000215
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08047854: .4byte 0x00000215
	thumb_func_start sub_8047858
sub_8047858:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	movs r2, #0xAA
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	lsrs r1, r1, #0x17
	adds r1, r1, r0
	ldrh r3, [r1, #0x00]
	movs r5, #0x86
	lsls r5, r5, #0x02
	adds r2, r4, r5
	ldrh r0, [r2, #0x00]
	adds r5, #0x02
	adds r1, r4, r5
	strh r0, [r1, #0x00]
	strh r3, [r2, #0x00]
	ldrh r0, [r1, #0x00]
	cmp r0, r3
	beq _08047896
	adds r0, r4, #0x0
	bl sub_8040790
	movs r3, #0x01
	negs r3, r3
	adds r0, r4, #0x0
	movs r1, #0x01
	adds r2, r3, #0x0
	bl sub_8040804
_08047896:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80478AC
sub_80478AC:
	push {r4, r5, r6, lr}
	mov r12, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r4, r12
	adds r4, #0x24
	movs r6, #0x07
	adds r3, r1, #0x0
	ands r3, r6
	ldrb r5, [r4, #0x00]
	movs r2, #0x08
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r5
	orrs r0, r3
	strb r0, [r4, #0x00]
	lsls r1, r1, #0x05
	mov r0, r12
	strb r1, [r0, #0x02]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	mov r3, r12
	adds r3, #0x4C
	ands r0, r6
	ldrb r1, [r3, #0x00]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	mov r1, r12
	ldrb r0, [r1, #0x02]
	adds r1, #0x2A
	strb r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	add r0, r12
	ldr r2, [r1, #0x3C]
	movs r1, #0x00
	bl _call_via_r2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
