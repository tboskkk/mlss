	.syntax unified
	.text

	thumb_func_start sub_807BBDC
sub_807BBDC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r1
	ldrh r1, [r0, #0x14]
	movs r7, #0x00
	cmp r1, #0x00
	beq _0807BC80
_0807BBF0:
	movs r0, #0x01
	ands r0, r1
	lsrs r1, r1, #0x01
	mov r8, r1
	adds r1, r7, #0x1
	mov r9, r1
	cmp r0, #0x00
	beq _0807BC78
	movs r2, #0x00
	ldr r3, _0807BC34 @ =0x03000FD8
	mov r12, r3
	movs r5, #0x00
	mov r0, r10
	lsls r6, r0, #0x18
_0807BC0C:
	mov r1, r12
	ldr r0, [r1, #0x00]
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r1, r5, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r7
	bne _0807BC38
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807BC38
	lsls r1, r2, #0x18
	b _0807BC64
_0807BC34: .4byte 0x03000FD8
_0807BC38:
	adds r1, r5, #0x0
	adds r1, #0x1C
	adds r4, r2, #0x1
	mov r3, r12
	ldr r0, [r3, #0x00]
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r1, r1, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r7
	bne _0807BC70
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807BC70
	lsls r1, r4, #0x18
_0807BC64:
	lsrs r1, r1, #0x18
	adds r0, r3, #0x0
	lsrs r2, r6, #0x18
	bl sub_8115048
	b _0807BC78
_0807BC70:
	adds r5, #0x38
	adds r2, #0x02
	cmp r2, #0x07
	ble _0807BC0C
_0807BC78:
	mov r1, r8
	mov r7, r9
	cmp r1, #0x00
	bne _0807BBF0
_0807BC80:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
