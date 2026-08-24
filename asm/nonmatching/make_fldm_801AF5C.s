	.syntax unified
	.text

	thumb_func_start make_fldm_801AF5C
make_fldm_801AF5C: @ 0801AF5C
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	movs r0, #0xC9
	lsls r0, r0, #0x02
	ldr r5, _0801AF9C @ =0x081E23B0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	adds r2, r0, #0x0
	movs r3, #0x01
	negs r3, r3
	cmp r4, #0x00
	bne _0801AF7E
	movs r3, #0x73
_0801AF7E:
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
	add r1, sp, #0x004
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl init_fldm_8021FF8
	add sp, #0x008
	pop {r4, r5}
	pop {r0}
	bx r0
_0801AF9C: .4byte dword_81E23B0 @ =0x081E23B0
