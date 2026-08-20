	.syntax unified
	.text

	thumb_func_start sub_816332C
sub_816332C:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	beq _08163340
	ldr r0, [r1, #0x40]
	movs r1, #0x00
	cmp r0, #0x01
	bne _08163342
_08163340:
	movs r1, #0x01
_08163342:
	cmp r1, #0x00
	beq _08163388
	ldr r1, [r2, #0x04]
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	beq _08163356
	ldr r0, [r1, #0x40]
	movs r1, #0x00
	cmp r0, #0x01
	bne _08163358
_08163356:
	movs r1, #0x01
_08163358:
	cmp r1, #0x00
	beq _08163388
	ldr r1, [r2, #0x08]
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	beq _0816336C
	ldr r0, [r1, #0x40]
	movs r1, #0x00
	cmp r0, #0x01
	bne _0816336E
_0816336C:
	movs r1, #0x01
_0816336E:
	cmp r1, #0x00
	beq _08163388
	ldr r1, [r2, #0x0C]
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	beq _08163382
	ldr r0, [r1, #0x40]
	movs r1, #0x00
	cmp r0, #0x01
	bne _08163384
_08163382:
	movs r1, #0x01
_08163384:
	cmp r1, #0x00
	bne _0816338C
_08163388:
	movs r0, #0x00
	b _0816338E
_0816338C:
	movs r0, #0x01
_0816338E:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
