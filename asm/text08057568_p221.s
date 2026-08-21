	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_814281C
sub_814281C:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _0814286E
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r6
	adds r0, #0x44
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08142874 @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _08142878 @ =0x0813B361
	str r0, [r5, #0x0C]
	ldr r0, _0814287C @ =0x081428FD
	str r0, [r5, #0x04]
_0814286E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08142874: .4byte sub_813B1E8
_08142878: .4byte sub_813B360
_0814287C: .4byte sub_81428FC
	thumb_func_start sub_8142880
sub_8142880:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x008
	mov r12, r1
	mov r8, r2
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r3, [r0, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	add r2, r12
	ldrh r0, [r2, #0x00]
	adds r0, r0, r3
	adds r0, #0x38
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	movs r6, #0x00
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r3
	ldrh r5, [r0, #0x3C]
	movs r0, #0xEE
	lsls r0, r0, #0x01
	add r0, r12
	ldr r1, [r0, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x01
	add r0, r12
	ldr r2, [r0, #0x00]
	movs r0, #0xF2
	lsls r0, r0, #0x01
	add r0, r12
	movs r4, #0xF4
	lsls r4, r4, #0x01
	add r4, r12
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	str r5, [sp, #0x000]
	add r0, sp, #0x004
	strb r6, [r0, #0x00]
	mov r0, r12
	bl sub_813A44C
	ldr r0, _081428F8 @ =0x0814281D
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081428F8: .4byte sub_814281C
	thumb_func_start sub_81428FC
sub_81428FC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r1, #0x0
	mov r8, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r6, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r1, [r0, #0x30]
	adds r0, r6, #0x0
	adds r2, r5, #0x0
	bl sub_813A5C8
	ldr r0, _08142948 @ =0x081411BD
	mov r1, r8
	str r0, [r1, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08142948: .4byte sub_81411BC
	thumb_func_start sub_814294C
sub_814294C:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	ldr r3, _081429B0 @ =0x0000033E
	adds r2, r5, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_8139AA0
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r2, #0x00
	str r2, [r0, #0x00]
	adds r4, #0x23
	ldrb r1, [r4, #0x00]
	movs r3, #0xBE
	lsls r3, r3, #0x02
	adds r0, r5, r3
	strh r1, [r0, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	strh r2, [r0, #0x00]
	movs r3, #0xCC
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldr r0, _081429B4 @ =0x081410D1
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _081429B8 @ =0x081428FD
	str r0, [r1, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_081429B0: .4byte 0x0000033E
_081429B4: .4byte sub_81410D0
_081429B8: .4byte sub_81428FC
	thumb_func_start sub_81429BC
sub_81429BC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	movs r0, #0xD8
	lsls r0, r0, #0x01
	adds r4, r6, r0
	ldr r5, [r4, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r2, r6, r1
	strh r0, [r2, #0x00]
	adds r1, #0xC4
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r5
	ldrb r0, [r0, #0x1A]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x16]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, _08142A0C @ =0x081407A1
	str r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08142A0C: .4byte sub_81407A0
	thumb_func_start sub_8142A10
sub_8142A10:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldrb r5, [r0, #0x0B]
	movs r4, #0x00
	cmp r4, r5
	bcs _08142A62
_08142A28:
	lsls r3, r4, #0x13
	movs r0, #0xC0
	lsls r0, r0, #0x0C
	adds r3, r3, r0
	lsrs r3, r3, #0x10
	mov r0, sp
	adds r1, r6, #0x0
	movs r2, #0x22
	bl sub_8139BB0
	mov r0, sp
	adds r1, r7, #0x0
	ldr r2, _08142A54 @ =0x00007FFF
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08142A58
	movs r0, #0x01
	b _08142A64
	.byte 0x00, 0x00
_08142A54: .4byte 0x00007FFF
_08142A58:
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	bcc _08142A28
_08142A62:
	movs r0, #0x00
_08142A64:
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
