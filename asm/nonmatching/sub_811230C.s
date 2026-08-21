	.syntax unified
	.text

	thumb_func_start sub_811230C
sub_811230C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	negs r0, r0
	cmp r0, #0x01
	beq _08112330
	ldr r2, _0811232C @ =0x00002057
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	b _0811233C
_0811232C: .4byte 0x00002057
_08112330:
	ldr r2, _08112348 @ =0x00002028
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_0811233C:
	ldr r0, _0811234C @ =0x081125C9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08112348: .4byte 0x00002028
_0811234C: .4byte 0x081125C9
