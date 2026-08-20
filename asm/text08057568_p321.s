	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_813B5B4
sub_813B5B4:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _0813B604 @ =0x000002DE
	adds r3, r2, r0
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0813B60C
	ldr r1, _0813B608 @ =0x00000242
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x18]
	ldrh r1, [r3, #0x00]
	subs r1, #0x01
	strh r1, [r3, #0x00]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	b _0813B60E
	.byte 0x00, 0x00
_0813B604: .4byte 0x000002DE
_0813B608: .4byte 0x00000242
_0813B60C:
	movs r0, #0x00
_0813B60E:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x02, 0x1C, 0x0A, 0x48, 0x13, 0x18, 0x18, 0x88, 0x00, 0x28, 0x12, 0xD0, 0xB7, 0x21
	.byte 0x89, 0x00, 0x50, 0x18, 0x00, 0x24, 0x01, 0x5F, 0x90, 0x69, 0x40, 0x18, 0x90, 0x61, 0x19, 0x88
	.byte 0x01, 0x39, 0x19, 0x80, 0x09, 0x04, 0x09, 0x0C, 0x48, 0x42, 0x08, 0x43, 0xC0, 0x0F, 0x02, 0xE0
	.byte 0xDE, 0x02, 0x00, 0x00, 0x00, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	thumb_func_start sub_813B650
sub_813B650:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _0813B690 @ =0x000002DE
	adds r3, r2, r0
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0813B698
	ldr r1, _0813B694 @ =0x00000242
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldrh r1, [r3, #0x00]
	subs r1, #0x01
	strh r1, [r3, #0x00]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	b _0813B69A
	.byte 0x00, 0x00
_0813B690: .4byte 0x000002DE
_0813B694: .4byte 0x00000242
_0813B698:
	movs r0, #0x00
_0813B69A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_813B6A0
sub_813B6A0:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _0813B6D0 @ =0x000002DE
	adds r3, r2, r0
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0813B6D4
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x18]
	ldrh r1, [r3, #0x00]
	subs r1, #0x01
	strh r1, [r3, #0x00]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	b _0813B6D6
_0813B6D0: .4byte 0x000002DE
_0813B6D4:
	movs r0, #0x00
_0813B6D6:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_813B6DC
sub_813B6DC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	cmp r3, #0x00
	beq _0813B6F4
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	adds r5, r5, r0
_0813B6F4:
	ldr r1, _0813B738 @ =0x000002DE
	adds r0, r4, r1
	strh r6, [r0, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r5, [r0, #0x00]
	ldr r0, [r2, #0x00]
	subs r5, r5, r0
	ldr r2, _0813B73C @ =0x03001038
	ldr r0, _0813B740 @ =0x0819832C
	ldr r1, _0813B744 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B738: .4byte 0x000002DE
_0813B73C: .4byte 0x03001038
_0813B740: .4byte 0x0819832C
_0813B744: .4byte 0x08198220
	thumb_func_start sub_813B748
sub_813B748:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _0813B788 @ =0x000002DE
	adds r3, r2, r0
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0813B790
	ldr r1, _0813B78C @ =0x00000242
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldrh r1, [r3, #0x00]
	subs r1, #0x01
	strh r1, [r3, #0x00]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	b _0813B792
	.byte 0x00, 0x00
_0813B788: .4byte 0x000002DE
_0813B78C: .4byte 0x00000242
_0813B790:
	movs r0, #0x00
_0813B792:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_813B798
sub_813B798:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	adds r5, r2, #0x0
	add r0, sp, #0x01C
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0813B7BC
	ldr r0, [r6, #0x0C]
	adds r7, r7, r0
	ldr r0, [r6, #0x10]
	adds r5, r5, r0
_0813B7BC:
	ldr r1, _0813B830 @ =0x000002DE
	adds r0, r6, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r7, [r0, #0x00]
	adds r2, #0x10
	adds r0, r6, r2
	str r5, [r0, #0x00]
	ldr r0, [r6, #0x0C]
	subs r7, r7, r0
	ldr r0, [r6, #0x10]
	subs r5, r5, r0
	ldr r0, _0813B834 @ =0x03001038
	mov r9, r0
	ldr r4, _0813B838 @ =0x0819832C
	ldr r0, _0813B83C @ =0x08198220
	subs r4, r4, r0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r7, #0x0
	mov r1, r8
	bl _call_via_r2
	ldr r2, _0813B840 @ =0x00000242
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	mov r1, r8
	bl _call_via_r2
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B830: .4byte 0x000002DE
_0813B834: .4byte 0x03001038
_0813B838: .4byte 0x0819832C
_0813B83C: .4byte 0x08198220
_0813B840: .4byte 0x00000242
	.byte 0x30, 0xB5, 0x43, 0x69, 0x82, 0x69, 0x9D, 0x18, 0x4B, 0x69, 0x8A, 0x69, 0x9C, 0x18, 0x9D, 0x22
	.byte 0x92, 0x00, 0x80, 0x18, 0x00, 0x88, 0x89, 0x18, 0x0B, 0x88, 0x00, 0x21, 0x28, 0x18, 0xA0, 0x42
	.byte 0x03, 0xDB, 0xE0, 0x18, 0x85, 0x42, 0x00, 0xDC, 0x01, 0x21, 0x08, 0x1C, 0x30, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00
