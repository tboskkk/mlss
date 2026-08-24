	.syntax unified
	.text

	thumb_func_start sub_8048174
sub_8048174:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	adds r6, r1, #0x0
	ldr r1, _080481B4 @ =0x083A09DC
	adds r4, r3, #0x0
	adds r4, #0x54
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	movs r2, #0x04
	ldsh r1, [r3, r2]
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	movs r2, #0x00
	ldsb r2, [r0, r2]
	ldrh r0, [r3, #0x04]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x04
	bls _080481A4
	asrs r0, r1, #0x10
	adds r5, r4, #0x0
	cmp r0, #0x0D
	bne _0804824E
_080481A4:
	adds r5, r4, #0x0
	cmp r6, #0x06
	bhi _0804824E
	lsls r0, r6, #0x02
	ldr r1, _080481B8 @ =lbl_080481BC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080481B4: .4byte dword_83A09DC @ =0x083A09DC
_080481B8: .4byte lbl_080481BC
lbl_080481BC:
	.4byte _080481D8
	.4byte _080481F8
	.4byte _08048208
	.4byte _08048230
	.4byte _08048240
	.4byte _0804824E
	.4byte _0804824E
_080481D8:
	adds r5, r3, #0
	adds r5, #84 @ 0x54
	cmp r2, #1
	bne.n _0804824E
	ldr r1, [pc, #16] @ (0x80481f4)
	adds r0, r3, r1
	ldrb r1, [r0, #0]
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	bne.n _0804824E
	movs r2, #0
	b.n _0804824E
	movs r0, r0
	lsls r3, r2, #8
	movs r0, r0
_080481F8:
	adds r0, r3, #0
	adds r0, #84 @ 0x54
	ldrb r1, [r0, #0]
	adds r5, r0, #0
	cmp r1, #0
	bne.n _08048266
	movs r2, #23
	b.n _0804824E
_08048208:
	adds r0, r3, #0
	adds r0, #84 @ 0x54
	ldrb r1, [r0, #0]
	adds r5, r0, #0
	cmp r1, #0
	bne.n _08048266
	cmp r2, #1
	bne.n _08048228
	ldr r2, [pc, #16] @ (0x804822c)
	adds r0, r3, r2
	ldrb r1, [r0, #0]
	movs r0, #32
	ands r0, r1
	movs r2, #15
	cmp r0, #0
	bne.n _0804824E
_08048228:
	movs r2, #11
	b.n _0804824E
	lsls r3, r2, #8
	movs r0, r0
_08048230:
	adds r0, r3, #0
	adds r0, #84 @ 0x54
	ldrb r1, [r0, #0]
	adds r5, r0, #0
	cmp r1, #1
	bne.n _0804824E
	movs r2, #16
	b.n _0804824E
_08048240:
	adds r0, r3, #0
	adds r0, #84 @ 0x54
	ldrb r1, [r0, #0]
	adds r5, r0, #0
	cmp r1, #1
	bne.n _0804824E
	movs r2, #18
_0804824E:
	ldrb r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08048266
	cmp r6, #0x02
	bne _08048266
	cmp r2, #0x07
	bne _08048260
	movs r2, #0x0C
	b _08048266
_08048260:
	cmp r2, #0x09
	bne _08048266
	movs r2, #0x0E
_08048266:
	cmp r2, #0x07
	bne _0804829C
	ldr r1, _08048298 @ =0x00000345
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x08
	beq _08048294
	subs r1, #0x02
	adds r0, r3, r1
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08048294
	movs r1, #0x2C
	ldsh r0, [r3, r1]
	cmp r0, #0x06
	beq _08048294
	cmp r0, #0x07
	bne _080482CC
_08048294:
	movs r2, #0x08
	b _080482CC
_08048298: .4byte 0x00000345
_0804829C:
	cmp r2, #0x0C
	bne _080482CC
	ldr r1, _080482DC @ =0x00000345
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x0D
	beq _080482CA
	subs r1, #0x02
	adds r0, r3, r1
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080482CA
	movs r1, #0x2C
	ldsh r0, [r3, r1]
	cmp r0, #0x06
	beq _080482CA
	cmp r0, #0x07
	bne _080482CC
_080482CA:
	movs r2, #0x0D
_080482CC:
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	strb r2, [r0, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080482DC: .4byte 0x00000345
