	.syntax unified
	.text

	thumb_func_start sub_80F095C
sub_80F095C:
	push {lr}
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	blt _080F097C
	cmp r1, #0x01
	ble _080F096E
	cmp r1, #0x02
	beq _080F0976
	b _080F097C
_080F096E:
	ldr r0, [r0, #0x14]
	bl sub_8029170
	b _080F097C
_080F0976:
	ldr r0, [r0, #0x14]
	bl sub_80291C8
_080F097C:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
