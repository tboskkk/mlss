	.syntax unified
	.text

	thumb_func_start tld_init_8127A94
tld_init_8127A94:
	push {r4, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _08127AAC @ =0x08CDC3C8
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
_08127AAC: .4byte 0x08CDC3C8
