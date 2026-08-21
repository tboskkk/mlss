	.syntax unified
	.text

	thumb_func_start sub_80EA88C
sub_80EA88C:
	push {lr}
	ldm r2!, {r0}
	cmp r0, #0x00
	bne _080EA89E
	ldrh r0, [r2, #0x00]
	ldrh r1, [r2, #0x04]
	ldr r2, [r2, #0x08]
	bl sub_801ABE8
_080EA89E:
	movs r0, #0x01
	pop {r1}
	bx r1
