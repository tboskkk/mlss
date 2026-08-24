	.syntax unified
	.text

	thumb_func_start copy_callarm_fill_memory
copy_callarm_fill_memory: @ 08199424
	push {r4, r5, lr}
	cmp r0, #0x00
	beq _08199458
	adds r4, r0, #0x3
	movs r0, #0x04
	negs r0, r0
	ands r4, r0
	ldr r0, _0819944C @ =0x081980D8
	ldr r5, _08199450 @ =0x08198220
	subs r5, r5, r0
	lsls r2, r5, #0x0A
	lsrs r2, r2, #0x0B
	adds r1, r4, #0x0
	bl CpuSet
	ldr r0, _08199454 @ =0x03001034
	str r4, [r0, #0x00]
	adds r4, r4, r5
	adds r0, r4, #0x0
	b _08199460
_0819944C: .4byte dword_81980D8 @ =0x081980D8
_08199450: .4byte 0x08198220
_08199454: .4byte 0x03001034
_08199458:
	ldr r1, _08199468 @ =0x03001034
	ldr r0, _0819946C @ =0x081980D8
	str r0, [r1, #0x00]
	movs r0, #0x00
_08199460:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08199468: .4byte 0x03001034
_0819946C: .4byte dword_81980D8 @ =0x081980D8
