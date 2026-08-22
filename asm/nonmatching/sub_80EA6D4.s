	.syntax unified
	.text

	thumb_func_start sub_80EA6D4
sub_80EA6D4:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	ldr r5, [sp, #0x00C]
	movs r0, #0x00
	str r0, [r5, #0x00]
	str r0, [r3, #0x00]
	str r0, [r2, #0x00]
	ldm r4!, {r0}
	cmp r0, #0x09
	bhi _080EA75A
	lsls r0, r0, #0x02
	ldr r1, _080EA6F4 @ =lbl_080EA6F8
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EA6F4: .4byte lbl_080EA6F8
lbl_080EA6F8:
	.4byte _080EA748
	.4byte _080EA720
	.4byte _080EA724
	.4byte _080EA72A
	.4byte _080EA734
	.4byte _080EA72E
	.4byte _080EA73A
	.4byte _080EA742
	.4byte _080EA750
	.4byte _080EA754
_080EA720:
	ldr r0, [r4, #0]
	b.n _080EA746
_080EA724:
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	b.n _080EA75A
_080EA72A:
	ldr r0, [r4, #0]
	b.n _080EA732
_080EA72E:
	ldr r0, [r4, #0]
	negs r0, r0
_080EA732:
	str r0, [r2, #0]
_080EA734:
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	b.n _080EA75A
_080EA73A:
	ldr r0, [r4, #0]
	negs r0, r0
	str r0, [r2, #0]
	b.n _080EA75A
_080EA742:
	ldr r0, [r4, #0]
	negs r0, r0
_080EA746:
	str r0, [r2, #0]
_080EA748:
	ldr r0, [r4, #0]
	negs r0, r0
	str r0, [r3, #0]
	b.n _080EA75A
_080EA750:
	ldr r0, [r4, #0]
	b.n _080EA758
_080EA754:
	ldr r0, [r4, #0]
	negs r0, r0
_080EA758:
	str r0, [r5, #0]
_080EA75A:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _080EA772
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x04
	str r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x04
	str r0, [r3, #0x00]
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x04
	str r0, [r5, #0x00]
_080EA772:
	pop {r4, r5}
	pop {r0}
	bx r0
