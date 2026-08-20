	.syntax unified
	.text

	thumb_func_start sub_810FEF4
sub_810FEF4:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0810FF10
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x0C
	strh r1, [r0, #0x00]
	ldr r0, _0810FF14 @ =0x08110035
	str r0, [r2, #0x4C]
_0810FF10:
	pop {r0}
	bx r0
_0810FF14: .4byte sub_8110034
