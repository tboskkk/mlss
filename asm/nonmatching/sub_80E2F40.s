	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r1, _080E2FF4 @ =0x0200000C
	ldr r2, _080E2FF8 @ =0x00001E04
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x0C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x08
	strh r0, [r1, #0x00]
	movs r3, #0x00
	ldr r7, _080E2FFC @ =0x0000014F
	ldr r0, _080E3000 @ =0x03000FDC
	mov r12, r0
	mov r6, r12
	ldr r5, _080E3004 @ =0x00005470
	ldr r4, _080E3008 @ =0x80008000
	ldr r2, _080E300C @ =0x0839FFE8
_080E2F68:
	ldr r1, [r6, #0x00]
	lsls r0, r3, #0x02
	adds r1, r1, r5
	adds r1, r1, r0
	ldr r0, [r2, #0x00]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	adds r0, r3, #0x1
	ldr r1, [r6, #0x00]
	lsls r0, r0, #0x02
	adds r1, r1, r5
	adds r1, r1, r0
	ldr r0, [r2, #0x04]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	adds r0, r3, #0x2
	ldr r1, [r6, #0x00]
	lsls r0, r0, #0x02
	adds r1, r1, r5
	adds r1, r1, r0
	ldr r0, [r2, #0x08]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	adds r0, r3, #0x3
	ldr r1, [r6, #0x00]
	lsls r0, r0, #0x02
	adds r1, r1, r5
	adds r1, r1, r0
	ldr r0, [r2, #0x0C]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	adds r2, #0x10
	adds r3, #0x04
	cmp r3, r7
	ble _080E2F68
	mov r1, r12
	ldr r0, [r1, #0x00]
	ldr r2, _080E3004 @ =0x00005470
	adds r0, r0, r2
	ldr r1, _080E3010 @ =0x0600F000
	movs r2, #0xA8
	lsls r2, r2, #0x03
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r2, _080E3014 @ =0x03001034
	ldr r0, _080E3018 @ =0x08198154
	ldr r1, _080E301C @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _080E3020 @ =0x083A04E8
	ldr r1, _080E3024 @ =0x02000180
	movs r2, #0x20
	bl _call_via_r3
	ldr r0, _080E3028 @ =0x0300034C
	ldr r1, _080E302C @ =0x0000FFFF
	strh r1, [r0, #0x02]
	ldr r1, _080E3030 @ =0x00000884
	adds r0, r0, r1
	movs r1, #0x01
	negs r1, r1
	str r1, [r0, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E2FF4: .4byte 0x0200000C
_080E2FF8: .4byte 0x00001E04
_080E2FFC: .4byte 0x0000014F
_080E3000: .4byte 0x03000FDC
_080E3004: .4byte 0x00005470
_080E3008: .4byte 0x80008000
_080E300C: .4byte 0x0839FFE8
_080E3010: .4byte 0x0600F000
_080E3014: .4byte 0x03001034
_080E3018: .4byte 0x08198154
_080E301C: .4byte 0x081980D8
_080E3020: .4byte 0x083A04E8
_080E3024: .4byte 0x02000180
_080E3028: .4byte 0x0300034C
_080E302C: .4byte 0x0000FFFF
_080E3030: .4byte 0x00000884
