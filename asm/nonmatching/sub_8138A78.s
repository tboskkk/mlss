	.syntax unified
	.text

	thumb_func_start sub_8138A78
sub_8138A78:
	push {r4, r5, r6, lr}
	mov r12, r0
	movs r5, #0x80
	lsls r5, r5, #0x01
	add r5, r12
	movs r0, #0xDA
	lsls r0, r0, #0x01
	add r0, r12
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	adds r4, r0, #0x0
	adds r3, r4, #0x4
	movs r0, #0x02
	ldsh r2, [r4, r0]
	ldrb r0, [r4, #0x00]
	movs r6, #0x01
	adds r1, r6, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _08138AA6
	lsls r2, r2, #0x04
_08138AA6:
	adds r0, r2, #0x0
	cmp r1, #0x00
	beq _08138AAE
	adds r0, #0x08
_08138AAE:
	strh r0, [r5, #0x3C]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	adds r3, #0x02
	adds r2, r0, #0x0
	ldrb r0, [r4, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _08138AC4
	lsls r2, r2, #0x04
_08138AC4:
	adds r0, r2, #0x0
	cmp r1, #0x00
	beq _08138ACC
	adds r0, #0x08
_08138ACC:
	strh r0, [r5, #0x38]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	adds r3, #0x02
	adds r2, r0, #0x0
	ldrb r0, [r4, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _08138AE2
	lsls r2, r2, #0x04
_08138AE2:
	adds r0, r2, #0x0
	cmp r1, #0x00
	beq _08138AEA
	adds r0, #0x08
_08138AEA:
	strh r0, [r5, #0x3E]
	movs r0, #0x00
	ldsh r2, [r3, r0]
	ldrb r0, [r4, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _08138AFC
	lsls r2, r2, #0x04
_08138AFC:
	adds r0, r2, #0x0
	cmp r1, #0x00
	beq _08138B04
	adds r0, #0x08
_08138B04:
	strh r0, [r5, #0x3A]
	movs r1, #0x3C
	ldsh r2, [r5, r1]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08138B22
	mov r1, r12
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bge _08138B1E
	adds r0, #0xFF
_08138B1E:
	asrs r0, r0, #0x08
	adds r2, r2, r0
_08138B22:
	strh r2, [r5, #0x3C]
	movs r0, #0x38
	ldsh r2, [r5, r0]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08138B40
	mov r1, r12
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	bge _08138B3C
	adds r0, #0xFF
_08138B3C:
	asrs r0, r0, #0x08
	adds r2, r2, r0
_08138B40:
	strh r2, [r5, #0x38]
	movs r0, #0x3E
	ldsh r2, [r5, r0]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08138B5E
	mov r1, r12
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bge _08138B5A
	adds r0, #0xFF
_08138B5A:
	asrs r0, r0, #0x08
	adds r2, r2, r0
_08138B5E:
	strh r2, [r5, #0x3E]
	movs r0, #0x3A
	ldsh r2, [r5, r0]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08138B7C
	mov r1, r12
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	bge _08138B78
	adds r0, #0xFF
_08138B78:
	asrs r0, r0, #0x08
	adds r2, r2, r0
_08138B7C:
	strh r2, [r5, #0x3A]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
