	.syntax unified
	.text

	thumb_func_start sub_8021EA8
sub_8021EA8:
	push {lr}
	adds r3, r0, #0x0
	adds r2, r1, #0x0
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	beq _08021EC0
	asrs r0, r2, #0x0C
	subs r3, r0, #0x1
	ldr r0, _08021ED0 @ =0x00000FFF
	ands r2, r0
_08021EC0:
	ldr r1, _08021ED4 @ =0x0839EE60
	lsls r0, r3, #0x02
	adds r0, r0, r1
	lsls r1, r2, #0x02
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	pop {r1}
	bx r1
_08021ED0: .4byte 0x00000FFF
_08021ED4: .4byte dword_839EE60 @ =0x0839EE60
