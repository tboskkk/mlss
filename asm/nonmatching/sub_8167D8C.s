	.syntax unified
	.text

	thumb_func_start sub_8167D8C
sub_8167D8C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x6C]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08167DE6
	ldr r0, [r5, #0x28]
	ldr r3, [r0, #0x18]
	ldr r2, [r0, #0x1C]
	ldr r1, [r0, #0x3C]
	adds r2, r2, r1
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x40]
	mov r12, r1
	ldr r4, _08167DEC @ =0xFFFFF800
	adds r2, r2, r4
	str r3, [r1, #0x00]
	str r2, [r1, #0x04]
	str r0, [r1, #0x08]
	ldr r0, [r5, #0x2C]
	ldr r3, [r0, #0x18]
	ldr r2, [r0, #0x1C]
	ldr r1, [r0, #0x3C]
	adds r2, r2, r1
	ldr r1, [r0, #0x20]
	adds r2, r2, r4
	mov r0, r12
	adds r0, #0xA8
	str r3, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r1, [r0, #0x00]
	movs r2, #0x8D
	lsls r2, r2, #0x02
	add r2, r12
	ldr r0, _08167DF0 @ =0x08001DF8
	ldr r1, _08167DF4 @ =0x08001DF8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	mov r0, r12
	bl _call_via_r1
_08167DE6:
	pop {r4, r5}
	pop {r0}
	bx r0
_08167DEC: .4byte 0xFFFFF800
_08167DF0: .4byte dword_8001DF8 @ =0x08001DF8
_08167DF4: .4byte dword_8001DF8 @ =0x08001DF8
