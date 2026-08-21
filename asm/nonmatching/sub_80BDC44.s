	.syntax unified
	.text

	thumb_func_start sub_80BDC44
sub_80BDC44:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r0, _080BDD08 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r0, [r0, #0x2C]
	mov r8, r0
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080BDD0C @ =0x03001038
	ldr r2, _080BDD10 @ =0x0819832C
	ldr r3, _080BDD14 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080BDCA2
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080BDCA4
_080BDCA2:
	movs r1, #0x00
_080BDCA4:
	mov r4, r8
	adds r4, #0xA8
	cmp r1, #0x00
	beq _080BDD38
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080BDCD4
	movs r0, #0x00
	str r0, [r4, #0x00]
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x08
	bl sub_807EAE4
	mov r2, r8
	ldr r0, [r2, #0x28]
	ldr r1, _080BDD18 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BDCD4:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BDCE6
	cmp r1, #0x04
	bne _080BDD38
_080BDCE6:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BDD1C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080BDD28
	.byte 0x00, 0x00
_080BDD08: .4byte 0x03000FD8
_080BDD0C: .4byte 0x03001038
_080BDD10: .4byte 0x0819832C
_080BDD14: .4byte 0x08198220
_080BDD18: .4byte 0x00000111
_080BDD1C:
	ldr r2, _080BDE3C @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080BDD28:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BDD38:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080BDD6C
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [r6, #0x18]
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2, #0x40]
	cmp r0, r1
	bge _080BDD6C
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BDD66
	cmp r1, #0x04
	bne _080BDD6C
_080BDD66:
	ldr r0, _080BDE40 @ =0x080BE729
	mov r1, r8
	str r0, [r1, #0x4C]
_080BDD6C:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BDE2E
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BDD8C
	cmp r1, #0x04
	bne _080BDDB2
_080BDD8C:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BDDB2:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080BDDC6
	cmp r2, #0x04
	bne _080BDDDE
_080BDDC6:
	ldr r2, _080BDE44 @ =0x00002024
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BDDDE:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BDDEC
	cmp r2, #0x04
	bne _080BDE1C
_080BDDEC:
	ldr r2, _080BDE48 @ =0x03001038
	ldr r0, _080BDE4C @ =0x0819832C
	ldr r1, _080BDE50 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
	bl _call_via_r2
	adds r2, r7, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BDE1C:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080BDE54 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080BDE58 @ =0x080BDE5D
	mov r2, r9
	str r0, [r2, #0x4C]
_080BDE2E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BDE3C: .4byte 0x0000204D
_080BDE40: .4byte sub_80BE728
_080BDE44: .4byte 0x00002024
_080BDE48: .4byte 0x03001038
_080BDE4C: .4byte 0x0819832C
_080BDE50: .4byte 0x08198220
_080BDE54: .4byte 0x00000FFF
_080BDE58: .4byte sub_80BDE5C
