	.syntax unified
	.text

	thumb_func_start sub_8148AB0
sub_8148AB0:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08148AF6
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08148AFA
_08148AF6:
	movs r0, #0x00
	b _08148AFC
_08148AFA:
	movs r0, #0x01
_08148AFC:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r1}
	bx r1
