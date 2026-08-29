	.syntax unified
	.text

	thumb_func_start sub_816B000
sub_816B000:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _0816B01C @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0816B018
	ldr r0, _0816B020 @ =0x00000474
	adds r1, r2, r0
	movs r0, #0x04
	str r0, [r1, #0x00]
_0816B018:
	pop {r0}
	bx r0
_0816B01C: .4byte 0x0300034C
_0816B020: .4byte 0x00000474
