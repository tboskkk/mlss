	.syntax unified
	.text

	thumb_func_start sub_807F648
sub_807F648:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8080168
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807F674
	cmp r2, #0x00
	bne _0807F670
	adds r0, r5, #0x0
	bl sub_807DC8C
	b _0807F674
_0807F670:
	ldr r0, _0807F67C @ =0x080801A1
	str r0, [r5, #0x04]
_0807F674:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807F67C: .4byte sub_80801A0
