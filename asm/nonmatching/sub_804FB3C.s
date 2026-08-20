	.syntax unified
	.text

	thumb_func_start sub_804FB3C
sub_804FB3C:
	push {lr}
	ldr r2, [r0, #0x20]
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x03
	beq _0804FB54
	ldrb r1, [r2, #0x02]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x03
	bne _0804FB5C
_0804FB54:
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1E
	b _0804FB60
_0804FB5C:
	movs r0, #0x01
	negs r0, r0
_0804FB60:
	pop {r1}
	bx r1
