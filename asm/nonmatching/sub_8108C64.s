	.syntax unified
	.text

	thumb_func_start sub_8108C64
sub_8108C64:
	push {lr}
	adds r3, r0, #0x0
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrh r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08108C88
	ldr r0, _08108C8C @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x86
	lsls r0, r0, #0x01
	adds r1, r3, r0
	subs r0, #0x0C
	strh r0, [r1, #0x00]
_08108C88:
	pop {r0}
	bx r0
_08108C8C: .4byte 0x0000FFDF
