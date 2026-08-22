	.syntax unified
	.text

	thumb_func_start sub_80F0FA0
sub_80F0FA0:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r0, [r3, #0x00]
	subs r0, #0x02
	cmp r0, #0x0F
	bhi _080F104A
	lsls r0, r0, #0x02
	ldr r1, _080F0FB8 @ =lbl_080F0FBC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080F0FB8: .4byte lbl_080F0FBC
lbl_080F0FBC:
	.4byte _080F1002
	.4byte _080F1026
	.4byte _080F100A
	.4byte _080F102E
	.4byte _080F0FFC
	.4byte _080F101A
	.4byte _080F104A
	.4byte _080F104A
	.4byte _080F104A
	.4byte _080F104A
	.4byte _080F104A
	.4byte _080F104A
	.4byte _080F104A
	.4byte _080F104A
	.4byte _080F1012
	.4byte _080F1036
_080F0FFC:
	adds r0, r4, #0
	bl sub_8047994
_080F1002:
	adds r0, r4, #0
	bl sub_80479A8
	b.n _080F104A
_080F100A:
	adds r0, r4, #0
	bl sub_8047994
	b.n _080F104A
_080F1012:
	adds r0, r4, #0
	bl sub_8047958
	b.n _080F104A
_080F101A:
	adds r0, r4, #0
	bl sub_8047A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _080F104A
_080F1026:
	adds r0, r4, #0
	bl sub_8047A3C
	b.n _080F103C
_080F102E:
	adds r0, r4, #0
	bl sub_8047A1C
	b.n _080F103C
_080F1036:
	adds r0, r4, #0
	bl sub_80479BC
_080F103C:
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _080F104A
	ldr r0, [r5, #20]
	str r0, [r5, #0]
	movs r0, #0
	b.n _080F104C
_080F104A:
	movs r0, #0x01
_080F104C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
