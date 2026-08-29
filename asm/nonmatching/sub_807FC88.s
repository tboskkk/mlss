	.syntax unified
	.text

	thumb_func_start sub_807FC88
sub_807FC88:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r0, _0807FCCC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r7, #0x00
	ldr r1, [r0, #0x1C]
	adds r6, r0, #0x0
	adds r6, #0x58
	adds r5, r1, #0x0
	adds r5, #0x08
_0807FC9C:
	ldrb r0, [r5, #0x02]
	lsls r0, r0, #0x1C
	asrs r0, r0, #0x1D
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _0807FCD0
	ldr r2, [r6, #0x00]
	ldr r0, [r2, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807FCD0
	cmp r4, #0x00
	blt _0807FCC8
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _0807FCD0
_0807FCC8:
	adds r0, r7, #0x0
	b _0807FD3E
_0807FCCC: .4byte 0x03000FD8
_0807FCD0:
	adds r3, r7, #0x1
	ldrb r0, [r5, #0x06]
	lsls r0, r0, #0x1C
	asrs r0, r0, #0x1D
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _0807FCFE
	ldr r2, [r6, #0x04]
	ldr r0, [r2, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807FCFE
	cmp r4, #0x00
	blt _0807FD2C
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	beq _0807FD2C
_0807FCFE:
	adds r3, r7, #0x2
	ldrb r0, [r5, #0x0A]
	lsls r0, r0, #0x1C
	asrs r0, r0, #0x1D
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _0807FD30
	ldr r2, [r6, #0x08]
	ldr r0, [r2, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807FD30
	cmp r4, #0x00
	blt _0807FD2C
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _0807FD30
_0807FD2C:
	adds r0, r3, #0x0
	b _0807FD3E
_0807FD30:
	adds r6, #0x0C
	adds r5, #0x0C
	adds r7, #0x03
	cmp r7, #0x05
	ble _0807FC9C
	movs r0, #0x01
	negs r0, r0
_0807FD3E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
