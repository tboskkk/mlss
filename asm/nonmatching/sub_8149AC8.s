	.syntax unified
	.text

	thumb_func_start sub_8149AC8
sub_8149AC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	mov r8, r0
	adds r4, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	movs r3, #0xEC
	lsls r3, r3, #0x01
	adds r6, r4, r3
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1F
	cmp r0, #0x00
	beq _08149B02
	add r5, sp, #0x010
	mov r0, r8
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149B02
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1E
	cmp r0, #0x00
	blt _08149B06
_08149B02:
	movs r0, #0x00
	b _08149B70
_08149B06:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r5, [r0, #0x28]
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	bge _08149B16
	adds r0, #0xFF
_08149B16:
	lsls r0, r0, #0x08
	lsrs r1, r0, #0x10
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08149B22
	adds r0, #0xFF
_08149B22:
	lsls r2, r0, #0x08
	mov r3, sp
	movs r4, #0x10
	ldsh r0, [r7, r4]
	lsls r0, r0, #0x04
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r3, #0x00]
	movs r4, #0x12
	ldsh r0, [r7, r4]
	lsls r0, r0, #0x04
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r3, #0x06]
	movs r4, #0x14
	ldsh r0, [r7, r4]
	lsls r0, r0, #0x04
	adds r1, r1, r0
	strh r1, [r3, #0x02]
	mov r1, sp
	movs r3, #0x16
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x04
	adds r2, r2, r0
	strh r2, [r1, #0x04]
	ldr r2, _08149B7C @ =0x00007FFF
	mov r0, sp
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	movs r1, #0x00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08149B6E
	movs r1, #0x01
_08149B6E:
	adds r0, r1, #0x0
_08149B70:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08149B7C: .4byte 0x00007FFF
