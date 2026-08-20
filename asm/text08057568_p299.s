	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810D3B8
sub_810D3B8:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	cmp r3, #0x00
	beq _0810D3CA
	bl sub_810D260
	adds r4, r0, #0x0
_0810D3CA:
	movs r2, #0xFF
	ands r2, r6
	ldr r0, _0810D414 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r1, r0, r3
	ldr r1, [r1, #0x00]
	mov r12, r0
	movs r7, #0x0F
	ldr r6, _0810D418 @ =0x000001FF
	ldr r3, _0810D41C @ =0xFFFF8000
	adds r0, r3, #0x0
	orrs r2, r0
	ldr r0, _0810D420 @ =0xFFFFB000
	adds r3, r0, #0x0
_0810D3E8:
	adds r0, r5, #0x0
	ands r0, r7
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r4, #0x08
	ands r4, r6
	strh r2, [r1, #0x00]
	strh r4, [r1, #0x02]
	orrs r0, r3
	strh r0, [r1, #0x04]
	adds r1, #0x08
	lsrs r5, r5, #0x04
	cmp r5, #0x00
	bne _0810D3E8
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r12
	str r1, [r0, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D414: .4byte 0x0300034C
_0810D418: .4byte 0x000001FF
_0810D41C: .4byte 0xFFFF8000
_0810D420: .4byte 0xFFFFB000
	thumb_func_start sub_810D424
sub_810D424:
	push {r4, lr}
	add sp, #-0x004
	ldr r3, _0810D464 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	movs r1, #0xC3
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r4, [r0, #0x00]
	ldrb r1, [r2, #0x07]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0xA0
	orrs r0, r1
	strb r0, [r2, #0x07]
_0810D440:
	cmp r4, #0x00
	beq _0810D440
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x7C]
	ldr r1, [r0, #0x40]
	ldr r2, [r0, #0x44]
	movs r3, #0xC0
	lsls r3, r3, #0x06
	movs r0, #0xE0
	lsls r0, r0, #0x06
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_8109CF4
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_0810D464: .4byte 0x03000FD8
	thumb_func_start sub_810D468
sub_810D468:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _0810D4B8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	movs r3, #0x10
	ldsh r0, [r0, r3]
	lsls r0, r0, #0x02
	movs r4, #0xBF
	lsls r4, r4, #0x02
	adds r3, r1, r4
	adds r3, r3, r0
	ldr r0, [r3, #0x00]
	ldr r5, [r1, #0x7C]
	ldr r2, [r5, #0x44]
	ldr r6, _0810D4BC @ =0xFFFFF800
	adds r2, r2, r6
	movs r4, #0x00
	movs r6, #0xC3
	lsls r6, r6, #0x02
	adds r1, r1, r6
	str r0, [r1, #0x00]
	str r4, [r3, #0x00]
	ldr r1, [r5, #0x40]
	ldr r3, _0810D4C0 @ =0xFFFFE000
	adds r1, r1, r3
	movs r3, #0xE0
	lsls r3, r3, #0x06
	str r3, [sp, #0x000]
	movs r3, #0x00
	bl sub_8109CF4
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0810D4B8: .4byte 0x03000FD8
_0810D4BC: .4byte 0xFFFFF800
_0810D4C0: .4byte 0xFFFFE000
