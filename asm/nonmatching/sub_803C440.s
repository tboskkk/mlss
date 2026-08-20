	.syntax unified
	.text

	thumb_func_start sub_803C440
sub_803C440:
	push {lr}
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1C
	beq _0803C460
	cmp r0, #0x15
	bne _0803C462
_0803C460:
	movs r1, #0x01
_0803C462:
	adds r0, r1, #0x0
	pop {r1}
	bx r1
