	.syntax unified
	.text

	thumb_func_start sub_81DCDF4
sub_81DCDF4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r0, r1, #0x0
	ldr r4, _081DCE1C @ =0x03001BD4
	movs r1, #0x00
	str r1, [r4, #0x00]
	bl sub_81DD23C
	adds r1, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _081DCE16
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _081DCE16
	str r0, [r5, #0x00]
_081DCE16:
	adds r0, r1, #0x0
	pop {r4, r5, pc}
	.byte 0x00, 0x00
_081DCE1C: .4byte 0x03001BD4
