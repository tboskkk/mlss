	.syntax unified
	.text

	thumb_func_start sub_801BD50
sub_801BD50:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r6, _0801BD80 @ =0x03000D44
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0801BD7A
	ldr r4, _0801BD84 @ =0x081E23C8
	movs r0, #0x2C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	adds r2, r4, #0x0
	bl time_init
	str r0, [r6, #0x00]
	bl process_disable
_0801BD7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0801BD80: .4byte 0x03000D44
_0801BD84: .4byte 0x081E23C8
