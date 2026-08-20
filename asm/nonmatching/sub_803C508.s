	.syntax unified
	.text

	thumb_func_start sub_803C508
sub_803C508:
	push {lr}
	adds r1, r0, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	movs r2, #0x04
	ldsh r0, [r0, r2]
	cmp r0, #0x0C
	bgt _0803C530
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	ldsh r0, [r0, r1]
	cmp r0, #0x0C
	bgt _0803C530
	movs r0, #0x00
	b _0803C532
_0803C530:
	movs r0, #0x01
_0803C532:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
