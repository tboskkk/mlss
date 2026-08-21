	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81387C8
sub_81387C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0x80
	lsls r6, r6, #0x01
	add r6, r8
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r3, r0, r1
	ldrh r5, [r3, #0x00]
	adds r3, #0x02
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08138816
	movs r1, #0x00
	movs r4, #0x94
	lsls r4, r4, #0x01
	add r4, r8
_081387FC:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081387FC
_08138816:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r2, #0x02
	ands r1, r2
	mov r12, r0
	cmp r1, #0x00
	beq _08138840
	movs r1, #0x00
_08138826:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r6, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138826
_08138840:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08138886
	adds r2, r3, #0x0
	movs r1, #0x00
	adds r7, r6, #0x0
	adds r7, #0x08
_08138854:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x0F
	adds r5, r7, r1
	ldrb r3, [r2, #0x00]
	movs r1, #0x40
	ands r1, r3
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _0813886C
	movs r0, #0x0F
	ands r0, r3
	b _08138872
_0813886C:
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
_08138872:
	strh r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	adds r2, #0x01
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138854
	adds r3, r2, #0x0
_08138886:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081388B2
	movs r1, #0x00
	adds r4, r6, #0x0
	adds r4, #0x10
_08138898:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138898
_081388B2:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _081388DE
	movs r1, #0x00
	adds r4, r6, #0x0
	adds r4, #0x18
_081388C4:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081388C4
_081388DE:
	adds r2, r3, #0x0
	mov r0, r12
	asrs r3, r0, #0x10
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0x00
	beq _08138900
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x30]
	adds r2, #0x01
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x32]
	adds r2, #0x01
_08138900:
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0x00
	beq _08138916
	ldrb r1, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x40
	strb r1, [r0, #0x00]
	ldrb r1, [r2, #0x01]
	adds r0, #0x01
	strb r1, [r0, #0x00]
_08138916:
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r3, r0
	cmp r3, #0x00
	beq _08138934
	mov r0, r12
	lsrs r1, r0, #0x1C
	ldr r3, _08138940 @ =0x0000033D
	add r3, r8
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_08138934:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138940: .4byte 0x0000033D
	thumb_func_start sub_8138944
sub_8138944:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0x80
	lsls r6, r6, #0x01
	add r6, r8
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r3, r0, r1
	ldrh r5, [r3, #0x00]
	adds r3, #0x02
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08138992
	movs r1, #0x00
	movs r4, #0x94
	lsls r4, r4, #0x01
	add r4, r8
_08138978:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138978
_08138992:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r2, #0x02
	ands r1, r2
	mov r12, r0
	cmp r1, #0x00
	beq _081389D4
	movs r1, #0x00
_081389A2:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x0F
	adds r5, r6, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x40
	ands r1, r2
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _081389BC
	movs r0, #0x0F
	ands r0, r2
	lsls r0, r0, #0x04
	b _081389C2
_081389BC:
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x08
_081389C2:
	strh r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	adds r3, #0x01
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081389A2
_081389D4:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08138A16
	movs r1, #0x00
	adds r7, r6, #0x0
	adds r7, #0x08
_081389E6:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x0F
	adds r5, r7, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x40
	ands r1, r2
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _081389FE
	movs r0, #0x0F
	ands r0, r2
	b _08138A04
_081389FE:
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
_08138A04:
	strh r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	adds r3, #0x01
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081389E6
_08138A16:
	mov r0, r12
	asrs r2, r0, #0x10
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _08138A36
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x30]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x32]
	adds r3, #0x01
_08138A36:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _08138A4C
	ldrb r1, [r3, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x40
	strb r1, [r0, #0x00]
	ldrb r1, [r3, #0x01]
	adds r0, #0x01
	strb r1, [r0, #0x00]
_08138A4C:
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r2, r0
	cmp r2, #0x00
	beq _08138A6A
	mov r0, r12
	lsrs r1, r0, #0x1C
	ldr r3, _08138A74 @ =0x0000033D
	add r3, r8
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_08138A6A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08138A74: .4byte 0x0000033D
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
	thumb_func_start sub_8138B84
sub_8138B84:
	push {r4, r5, r6, lr}
	mov r12, r0
	movs r0, #0xDA
	lsls r0, r0, #0x01
	add r0, r12
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r2, [r0, #0x00]
	adds r2, r2, r1
	adds r5, r2, #0x2
	ldrb r0, [r2, #0x00]
	movs r4, #0x98
	lsls r4, r4, #0x01
	add r4, r12
	movs r1, #0x03
	ands r1, r0
	ldrb r3, [r4, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldrb r2, [r2, #0x01]
	movs r1, #0x01
	ands r1, r2
	lsls r1, r1, #0x02
	movs r2, #0x05
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r6, #0x99
	lsls r6, r6, #0x01
	add r6, r12
	movs r3, #0xA9
	lsls r3, r3, #0x01
	add r3, r12
	ldrh r2, [r5, #0x00]
	ldr r1, _08138C14 @ =0x00000131
	add r1, r12
	movs r0, #0x00
	strb r2, [r1, #0x00]
	adds r5, #0x02
	ldr r1, _08138C18 @ =0x00000193
	add r1, r12
	strb r0, [r1, #0x00]
	movs r1, #0xC9
	lsls r1, r1, #0x01
	add r1, r12
	strb r0, [r1, #0x00]
	ldrb r1, [r4, #0x00]
	subs r0, #0x09
	ands r0, r1
	strb r0, [r4, #0x00]
_08138BF0:
	ldrh r0, [r5, #0x00]
	strh r0, [r6, #0x00]
	adds r5, #0x02
	adds r6, #0x02
	ldrh r0, [r5, #0x00]
	strh r0, [r3, #0x00]
	adds r5, #0x02
	adds r3, #0x02
	lsls r0, r2, #0x10
	ldr r1, _08138C1C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	cmp r0, #0x00
	bgt _08138BF0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138C14: .4byte 0x00000131
_08138C18: .4byte 0x00000193
_08138C1C: .4byte 0xFFFF0000
	thumb_func_start sub_8138C20
sub_8138C20:
	push {r4, r5, r6, lr}
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r2
	mov r12, r0
	movs r3, #0xD8
	lsls r3, r3, #0x01
	adds r0, r2, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r5, r0, r1
	adds r4, r5, #0x0
	adds r4, #0x08
	movs r0, #0x00
	movs r1, #0xA3
	lsls r1, r1, #0x01
	adds r6, r2, r1
_08138C46:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r3, r2, #0x01
	mov r0, r12
	adds r0, #0x36
	adds r0, r0, r3
	ldrh r1, [r5, #0x00]
	strh r1, [r0, #0x00]
	adds r5, #0x02
	mov r0, r12
	adds r0, #0x3E
	adds r0, r0, r3
	movs r1, #0x00
	ldsb r1, [r4, r1]
	strh r1, [r0, #0x00]
	adds r3, r6, r3
	movs r0, #0x04
	ldsb r0, [r4, r0]
	strh r0, [r3, #0x00]
	adds r0, r2, #0x4
	lsls r0, r0, #0x01
	adds r0, r6, r0
	movs r1, #0x08
	ldsb r1, [r4, r1]
	strh r1, [r0, #0x00]
	adds r2, #0x01
	lsls r2, r2, #0x10
	adds r4, #0x01
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x03
	ble _08138C46
	pop {r4, r5, r6}
	pop {r0}
	bx r0
