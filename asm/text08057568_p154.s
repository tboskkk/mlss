	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8082B20
sub_8082B20:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	movs r0, #0xEF
	lsls r0, r0, #0x03
	adds r7, r3, r0
	ldr r1, [r7, #0x00]
	subs r0, #0x04
	adds r6, r3, r0
	ldr r0, [r6, #0x00]
	cmp r1, r0
	beq _08082B60
	ldrh r1, [r7, #0x00]
	ldrh r0, [r6, #0x00]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _08082B68 @ =0x0000077A
	adds r4, r3, r0
	subs r0, #0x04
	adds r5, r3, r0
	ldrh r2, [r4, #0x00]
	ldrh r0, [r5, #0x00]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r3, #0x0
	bl sub_805A954
	ldrh r0, [r7, #0x00]
	strh r0, [r6, #0x00]
	ldrh r0, [r4, #0x00]
	strh r0, [r5, #0x00]
_08082B60:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082B68: .4byte 0x0000077A
	thumb_func_start sub_8082B6C
sub_8082B6C:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r2, r1, #0x0
	ldr r3, [r2, #0x08]
	cmp r3, #0x00
	beq _08082BEE
	ldr r0, [r2, #0x38]
	cmp r0, #0x00
	bge _08082B80
	adds r0, #0xFF
_08082B80:
	asrs r4, r0, #0x08
	ldr r1, [r2, #0x3C]
	cmp r1, #0x00
	bge _08082B8A
	adds r1, #0xFF
_08082B8A:
	asrs r6, r1, #0x08
	ldr r1, [r2, #0x40]
	cmp r1, #0x00
	bge _08082B94
	adds r1, #0xFF
_08082B94:
	asrs r1, r1, #0x08
	subs r1, r6, r1
	ldr r7, _08082BE4 @ =0x00000774
	adds r0, r5, r7
	ldrh r0, [r0, #0x00]
	subs r0, r4, r0
	strh r0, [r3, #0x00]
	ldr r4, _08082BE8 @ =0x00000776
	adds r0, r5, r4
	ldrh r0, [r0, #0x00]
	subs r1, r1, r0
	strh r1, [r3, #0x02]
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _08082BEE
	adds r0, r2, #0x0
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r7, #0xF8
	lsls r7, r7, #0x01
	adds r0, r0, r7
	subs r0, r0, r6
	adds r1, r2, #0x0
	adds r1, #0x75
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08082BEC
	strh r4, [r3, #0x0E]
	b _08082BEE
_08082BE4: .4byte 0x00000774
_08082BE8: .4byte 0x00000776
_08082BEC:
	strh r0, [r3, #0x0E]
_08082BEE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x30, 0xB5, 0x08, 0x4C, 0x03, 0x19, 0x00, 0x25, 0x5C, 0x5F, 0x0B, 0x68, 0x1B, 0x19, 0x0B, 0x60
	.byte 0x05, 0x49, 0x40, 0x18, 0x00, 0x23, 0xC1, 0x5E, 0x10, 0x68, 0x40, 0x18, 0x10, 0x60, 0x30, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x74, 0x07, 0x00, 0x00, 0x76, 0x07, 0x00, 0x00
	thumb_func_start sub_8082C20
sub_8082C20:
	push {r4, r5, r6, lr}
	ldr r5, _08082C50 @ =0x00000774
	adds r4, r0, r5
	movs r6, #0x00
	ldsh r5, [r4, r6]
	ldr r4, [r1, #0x00]
	subs r4, r4, r5
	str r4, [r1, #0x00]
	ldr r1, _08082C54 @ =0x00000776
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	movs r5, #0xF8
	lsls r5, r5, #0x01
	adds r0, r0, r5
	str r0, [r3, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082C50: .4byte 0x00000774
_08082C54: .4byte 0x00000776
	thumb_func_start sub_8082C58
sub_8082C58:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, [r1, #0x00]
	ldr r4, [r2, #0x00]
	mov r8, r4
	ldr r5, [r3, #0x00]
	subs r5, r4, r5
	ldr r7, _08082C94 @ =0x00000774
	adds r4, r0, r7
	movs r7, #0x00
	ldsh r4, [r4, r7]
	subs r6, r6, r4
	str r6, [r1, #0x00]
	ldr r1, _08082C98 @ =0x00000776
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	subs r5, r5, r0
	str r5, [r2, #0x00]
	movs r0, #0xF8
	lsls r0, r0, #0x01
	mov r7, r8
	subs r0, r0, r7
	str r0, [r3, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08082C94: .4byte 0x00000774
_08082C98: .4byte 0x00000776
	.byte 0x30, 0xB5, 0x09, 0x4D, 0x44, 0x19, 0x24, 0x88, 0x12, 0x1B, 0x0A, 0x80, 0x07, 0x4A, 0x80, 0x18
	.byte 0x00, 0x88, 0x1B, 0x1A, 0x4B, 0x80, 0x03, 0x9B, 0xF8, 0x24, 0x64, 0x00, 0x18, 0x19, 0xC8, 0x81
	.byte 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x74, 0x07, 0x00, 0x00, 0x76, 0x07, 0x00, 0x00
