	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E8B84
sub_80E8B84:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r3, [r4, #0x08]
	subs r0, r3, #0x1
	ldrb r2, [r0, #0x00]
	adds r5, r2, #0x0
	ldrb r6, [r3, #0x00]
	cmp r1, #0x00
	beq _080E8C1C
	cmp r2, #0x0A
	bls _080E8B9E
	adds r0, r3, #0x1
	str r0, [r4, #0x08]
_080E8B9E:
	cmp r2, #0x0E
	beq _080E8BB6
	cmp r2, #0x0E
	bgt _080E8BAC
	cmp r2, #0x0A
	beq _080E8C0C
	b _080E8C1C
_080E8BAC:
	cmp r5, #0x0F
	beq _080E8BD4
	cmp r5, #0x10
	beq _080E8BEC
	b _080E8C1C
_080E8BB6:
	ldr r0, _080E8BD0 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	str r0, [r1, #0x0C]
	adds r0, r1, #0x0
	adds r0, #0x10
	ldr r1, [r1, #0x04]
	ldrh r1, [r1, #0x00]
	bl sub_80E8D20
	str r0, [r4, #0x08]
	b _080E8C1C
	.byte 0x00, 0x00
_080E8BD0: .4byte 0x03000FBC
_080E8BD4:
	ldr r0, _080E8BE8 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	str r0, [r1, #0x0C]
	adds r0, r1, #0x0
	adds r0, #0x10
	ldr r1, [r1, #0x00]
	ldr r2, [r1, #0x00]
	movs r1, #0x00
	b _080E8BFE
_080E8BE8: .4byte 0x03000FBC
_080E8BEC:
	ldr r0, _080E8C08 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	str r0, [r1, #0x0C]
	adds r0, r1, #0x0
	adds r0, #0x10
	ldr r1, [r1, #0x00]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
_080E8BFE:
	bl sub_80E8C28
	str r0, [r4, #0x08]
	b _080E8C1C
	.byte 0x00, 0x00
_080E8C08: .4byte 0x03000FBC
_080E8C0C:
	ldr r0, _080E8C24 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	beq _080E8C1C
	str r0, [r4, #0x08]
	movs r0, #0x00
	str r0, [r1, #0x0C]
_080E8C1C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E8C24: .4byte 0x03000FBC
	thumb_func_start sub_80E8C28
sub_80E8C28:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0x0
	adds r5, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r4, r7, #0x0
	movs r0, #0x00
	mov r10, r0
	cmp r5, #0x00
	bge _080E8C56
	cmp r6, #0x00
	beq _080E8C4E
	movs r1, #0x01
	mov r10, r1
	b _080E8C54
_080E8C4E:
	movs r0, #0x2D
	strb r0, [r7, #0x00]
	adds r4, r7, #0x1
_080E8C54:
	negs r5, r5
_080E8C56:
	ldr r1, _080E8C78 @ =0x000F4240
	adds r0, r5, #0x0
	bl __modsi3
	adds r5, r0, #0x0
	movs r0, #0x00
	mov r12, r0
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r3, r0, #0x0
	cmp r2, #0x00
	beq _080E8C7C
	movs r0, #0x06
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080E8C7E
_080E8C78: .4byte 0x000F4240
_080E8C7C:
	movs r0, #0x00
_080E8C7E:
	adds r2, r0, #0x0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x05
	bhi _080E8CEC
	ldr r0, _080E8CCC @ =0x083B9538
	mov r9, r0
	asrs r3, r3, #0x10
	mov r8, r3
_080E8C90:
	movs r6, #0x00
	asrs r0, r1, #0x0E
	add r0, r9
	ldr r3, [r0, #0x00]
	lsrs r0, r1, #0x10
	cmp r0, #0x05
	bne _080E8CA2
	movs r1, #0x01
	mov r12, r1
_080E8CA2:
	lsls r2, r2, #0x10
	cmp r5, r3
	bcc _080E8CB4
_080E8CA8:
	subs r5, r5, r3
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r5, r3
	bcs _080E8CA8
_080E8CB4:
	cmp r6, #0x00
	bne _080E8CBE
	mov r0, r12
	cmp r0, #0x00
	beq _080E8CD0
_080E8CBE:
	adds r0, r6, #0x0
	adds r0, #0x30
	strb r0, [r4, #0x00]
	movs r1, #0x01
	mov r12, r1
	b _080E8CDA
	.byte 0x00, 0x00
_080E8CCC: .4byte 0x083B9538
_080E8CD0:
	movs r0, #0x20
	strb r0, [r4, #0x00]
	mov r0, r8
	cmp r0, #0x00
	beq _080E8CDC
_080E8CDA:
	adds r4, #0x01
_080E8CDC:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x05
	bls _080E8C90
_080E8CEC:
	movs r0, #0xFF
	strb r0, [r4, #0x00]
	movs r0, #0x0A
	strb r0, [r4, #0x01]
	movs r0, #0x00
	strb r0, [r4, #0x02]
	mov r0, r10
	cmp r0, #0x00
	beq _080E8D0E
_080E8CFE:
	subs r4, #0x01
	cmp r4, r7
	beq _080E8D0A
	ldrb r0, [r4, #0x00]
	cmp r0, #0x20
	bne _080E8CFE
_080E8D0A:
	movs r0, #0x2D
	strb r0, [r4, #0x00]
_080E8D0E:
	adds r0, r7, #0x0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
