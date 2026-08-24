	.syntax unified
	.text

	thumb_func_start sub_80802DC
sub_80802DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	ldr r0, _08080520 @ =0x0300034C
	ldr r1, _08080524 @ =0x00000884
	adds r0, r0, r1
	movs r2, #0x00
	mov r8, r2
	str r2, [r0, #0x00]
	ldr r5, _08080528 @ =0x03000FD8
	ldr r4, [r5, #0x00]
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r4, r4, r3
	ldr r6, _0808052C @ =0x082000B4
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r6, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r6, #0x0
	movs r3, #0x08
	bl init_ybpa_process_8114B4C
	str r0, [r4, #0x00]
	ldr r1, [r5, #0x00]
	movs r4, #0xB5
	lsls r4, r4, #0x02
	adds r0, r1, r4
	mov r2, r8
	strh r2, [r0, #0x00]
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r1, r1, r3
	movs r0, #0x10
	strb r0, [r1, #0x00]
	ldr r3, [r5, #0x00]
	ldr r2, _08080530 @ =0x03000FDC
	ldr r4, [r2, #0x00]
	movs r1, #0xE8
	lsls r1, r1, #0x05
	adds r0, r4, r1
	str r0, [r3, #0x3C]
	adds r7, r2, #0x0
	adds r2, r1, #0x0
	mov r12, r7
	adds r5, r4, #0x0
	adds r0, r5, r2
	ldr r3, _08080534 @ =0x00001D1C
	adds r4, r5, r3
	str r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r3, #0x1C
	adds r4, r5, r3
	str r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r3, #0x1C
	adds r4, r5, r3
	str r4, [r0, #0x00]
	adds r1, #0x54
	movs r4, #0x54
	mov r8, r4
	movs r6, #0x43
_08080366:
	ldr r5, [r7, #0x00]
	adds r3, r5, r2
	mov r4, r8
	adds r0, r3, r4
	adds r4, r5, r1
	adds r4, #0x1C
	str r4, [r0, #0x00]
	mov r0, r8
	adds r0, #0x1C
	ldr r5, [r7, #0x00]
	adds r3, r5, r2
	adds r0, r3, r0
	adds r4, r1, r5
	adds r4, #0x38
	str r4, [r0, #0x00]
	mov r0, r8
	adds r0, #0x38
	ldr r5, [r7, #0x00]
	adds r3, r5, r2
	adds r0, r3, r0
	adds r4, r1, r5
	adds r4, #0x54
	str r4, [r0, #0x00]
	mov r0, r8
	adds r0, #0x54
	ldr r5, [r7, #0x00]
	adds r3, r5, r2
	adds r0, r3, r0
	adds r4, r1, r5
	adds r4, #0x70
	str r4, [r0, #0x00]
	adds r1, #0x70
	movs r0, #0x70
	add r8, r0
	subs r6, #0x04
	cmp r6, #0x00
	bge _08080366
	mov r2, r12
	ldr r1, [r2, #0x00]
	ldr r3, _08080538 @ =0x000024C4
	adds r2, r1, r3
	movs r0, #0x00
	str r0, [r2, #0x00]
	ldr r2, _08080528 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	movs r4, #0x8E
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r3, _0808053C @ =0x000032E0
	adds r1, r1, r3
	str r1, [r0, #0x00]
	movs r6, #0x00
	ldr r0, _08080520 @ =0x0300034C
	mov r10, r0
	mov r9, r2
	mov r4, r12
	adds r5, r3, #0x0
_080803D8:
	ldr r0, [r4, #0x00]
	lsls r2, r6, #0x04
	adds r1, r0, r5
	adds r1, r1, r2
	adds r0, r0, r3
	adds r0, #0x10
	str r0, [r1, #0x00]
	adds r1, r6, #0x1
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r2, r0, r5
	adds r2, r2, r1
	adds r0, r3, r0
	adds r0, #0x20
	str r0, [r2, #0x00]
	adds r1, r6, #0x2
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r2, r0, r5
	adds r2, r2, r1
	adds r0, r3, r0
	adds r0, #0x30
	str r0, [r2, #0x00]
	adds r1, r6, #0x3
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r2, r0, r5
	adds r2, r2, r1
	adds r0, r3, r0
	adds r0, #0x40
	str r0, [r2, #0x00]
	adds r1, r6, #0x4
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r2, r0, r5
	adds r2, r2, r1
	adds r0, r3, r0
	adds r0, #0x50
	str r0, [r2, #0x00]
	adds r3, #0x50
	adds r6, #0x05
	cmp r6, #0x0E
	ble _080803D8
	mov r1, r12
	ldr r3, [r1, #0x00]
	lsls r1, r6, #0x04
	ldr r2, _0808053C @ =0x000032E0
	adds r0, r3, r2
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	mov r4, r9
	ldr r0, [r4, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _08080540 @ =0x000024E0
	adds r1, r3, r2
	str r1, [r0, #0x00]
	mov r4, r12
	adds r7, r2, #0x0
	adds r5, r3, #0x0
	adds r3, r2, #0x0
	adds r0, r5, r3
	ldr r1, _08080544 @ =0x000024FC
	adds r3, r5, r1
	str r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r1, #0x1C
	adds r3, r5, r1
	str r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r1, #0x1C
	adds r3, r5, r1
	str r3, [r0, #0x00]
	adds r2, #0x54
	movs r3, #0x54
	mov r8, r3
	movs r6, #0x7B
_08080476:
	ldr r5, [r4, #0x00]
	adds r1, r5, r7
	mov r3, r8
	adds r0, r1, r3
	adds r3, r5, r2
	adds r3, #0x1C
	str r3, [r0, #0x00]
	mov r0, r8
	adds r0, #0x1C
	ldr r5, [r4, #0x00]
	adds r1, r5, r7
	adds r0, r1, r0
	adds r3, r2, r5
	adds r3, #0x38
	str r3, [r0, #0x00]
	mov r0, r8
	adds r0, #0x38
	ldr r5, [r4, #0x00]
	adds r1, r5, r7
	adds r0, r1, r0
	adds r3, r2, r5
	adds r3, #0x54
	str r3, [r0, #0x00]
	mov r0, r8
	adds r0, #0x54
	ldr r5, [r4, #0x00]
	adds r1, r5, r7
	adds r0, r1, r0
	adds r3, r2, r5
	adds r3, #0x70
	str r3, [r0, #0x00]
	adds r2, #0x70
	movs r0, #0x70
	add r8, r0
	subs r6, #0x04
	cmp r6, #0x00
	bge _08080476
	movs r1, #0x00
	mov r2, r12
	ldr r0, [r2, #0x00]
	ldr r3, _08080548 @ =0x000032C4
	adds r0, r0, r3
	str r1, [r0, #0x00]
	mov r4, r9
	ldr r0, [r4, #0x00]
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, _0808054C @ =0x000008C4
	add r1, r10
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
	movs r0, #0x02
	ldr r1, _08080550 @ =0x0807D381
	bl sub_8018B78
	ldr r4, [r4, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r4, r4, r2
	movs r0, #0xA3
	lsls r0, r0, #0x02
	ldr r2, _08080554 @ =0x082000BC
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_80843C0
	str r0, [r4, #0x00]
	bl sub_80823C0
	bl sub_80E3DD0
	ldr r0, _08080558 @ =0x0808055D
	ldr r3, [sp, #0x000]
	str r0, [r3, #0x04]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08080520: .4byte 0x0300034C
_08080524: .4byte 0x00000884
_08080528: .4byte 0x03000FD8
_0808052C: .4byte dword_82000B4 @ =0x082000B4
_08080530: .4byte 0x03000FDC
_08080534: .4byte 0x00001D1C
_08080538: .4byte 0x000024C4
_0808053C: .4byte 0x000032E0
_08080540: .4byte 0x000024E0
_08080544: .4byte 0x000024FC
_08080548: .4byte 0x000032C4
_0808054C: .4byte 0x000008C4
_08080550: .4byte sub_807D380
_08080554: .4byte dword_82000BC @ =0x082000BC
_08080558: .4byte sub_808055C
