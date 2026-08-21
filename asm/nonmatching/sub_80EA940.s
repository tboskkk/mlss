	.syntax unified
	.text

	thumb_func_start sub_80EA940
sub_80EA940:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	ldr r4, [r5, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x04]
	cmp r0, #0x00
	beq _080EA960
	str r0, [r6, #0x00]
_080EA960:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
