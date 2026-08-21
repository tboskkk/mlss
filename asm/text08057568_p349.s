	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8098540
sub_8098540:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_807EA24
	ldr r0, _08098564 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r0, #0x08
	cmp r4, r0
	bne _08098568
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08098574
	.byte 0x00, 0x00
_08098564: .4byte 0x03000FD8
_08098568:
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08098574:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08098596
	cmp r1, #0x04
	bne _080985F2
_08098596:
	ldr r0, [r4, #0x28]
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r5, r0, #0x0
	adds r5, #0x64
	movs r0, #0x1E
	ldsh r3, [r4, r0]
	cmp r5, r3
	beq _080985D4
	ldr r2, _080985C8 @ =0x03001038
	ldr r0, _080985CC @ =0x0819832C
	ldr r1, _080985D0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	subs r1, r5, r3
	bl _call_via_r2
	adds r2, r0, #0x0
	b _080985DA
_080985C8: .4byte 0x03001038
_080985CC: .4byte 0x0819832C
_080985D0: .4byte 0x08198220
_080985D4:
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r2, r1, #0x0
_080985DA:
	adds r1, r4, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r2, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_080985F2:
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	str r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0xA4
	adds r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _08098618 @ =0x0809861D
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_08098618: .4byte sub_809861C
	thumb_func_start sub_809861C
sub_809861C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r0, _080986FC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [r1, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r6, r4, #0x0
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0809866E
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _0809866E
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r0, #0x04
	str r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	subs r0, #0x01
	str r0, [r6, #0x00]
	adds r0, r4, #0x0
	bl sub_8097CB4
_0809866E:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080986F2
	cmp r4, r8
	bne _0809868C
	ldr r1, [r7, #0x4C]
	ldr r0, _08098700 @ =0x08098365
	cmp r1, r0
	bne _0809868C
	ldr r0, _08098704 @ =0x08098541
	str r0, [r7, #0x4C]
_0809868C:
	cmp r4, r7
	bne _080986A0
	mov r0, r8
	ldr r1, [r0, #0x4C]
	ldr r0, _08098700 @ =0x08098365
	cmp r1, r0
	bne _080986A0
	ldr r0, _08098704 @ =0x08098541
	mov r1, r8
	str r0, [r1, #0x4C]
_080986A0:
	ldr r0, _080986FC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	ldr r1, [r1, #0x74]
	adds r5, r1, #0x0
	adds r5, #0x08
	cmp r4, r0
	bne _080986BE
	adds r0, r4, #0x0
	movs r1, #0x01
	ldr r2, _08098708 @ =0x00002027
	movs r3, #0x00
	bl sub_8082E1C
_080986BE:
	cmp r4, r5
	bne _080986CE
	adds r0, r4, #0x0
	movs r1, #0x01
	ldr r2, _0809870C @ =0x00002056
	movs r3, #0x00
	bl sub_8082E1C
_080986CE:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	subs r0, #0x26
	strh r1, [r0, #0x00]
	ldr r0, _08098700 @ =0x08098365
	str r0, [r4, #0x4C]
_080986F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080986FC: .4byte 0x03000FD8
_08098700: .4byte sub_8098364
_08098704: .4byte sub_8098540
_08098708: .4byte 0x00002027
_0809870C: .4byte 0x00002056
