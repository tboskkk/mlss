	.syntax unified
	.text

	thumb_func_start sub_8161580
sub_8161580:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _0816159C @ =0x08CDD090
	str r0, [r2, #0x04]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08161596
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_08161596:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816159C: .4byte 0x08CDD090
