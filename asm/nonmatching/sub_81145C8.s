	.syntax unified
	.text

	thumb_func_start sub_81145C8
sub_81145C8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081145EA
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	ldr r1, _081145F0 @ =0x081147B5
	cmp r0, #0x00
	beq _081145E8
	ldr r1, _081145F4 @ =0x081147D1
_081145E8:
	str r1, [r4, #0x4C]
_081145EA:
	pop {r4}
	pop {r0}
	bx r0
_081145F0: .4byte sub_81147B4
_081145F4: .4byte sub_81147D0
