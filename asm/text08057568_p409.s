	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_807F680
sub_807F680:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrh r1, [r4, #0x10]
	movs r3, #0x10
	ldsh r0, [r4, r3]
	cmp r0, #0x00
	ble _0807F6A8
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807F6C8
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _0807F6C8
_0807F6A8:
	ldr r1, [r2, #0x40]
	ldr r0, [r2, #0x18]
	cmp r1, r0
	blt _0807F6C8
	movs r0, #0xC0
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _0807F6C8
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x04]
_0807F6C8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807F6D0
sub_807F6D0:
	push {lr}
	ldr r0, _0807F6E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8116610
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807F6E8: .4byte 0x03000FD8
	thumb_func_start sub_807F6EC
sub_807F6EC:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, _0807F704 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_81165CC
	pop {r0}
	bx r0
_0807F704: .4byte 0x03000FD8
	thumb_func_start sub_807F708
sub_807F708:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r1, [sp, #0x020]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0807F750 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r3, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_81151E4
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807F750: .4byte 0x03000FD8
	thumb_func_start sub_807F754
sub_807F754:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r3, r2, #0x0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0807F79C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0xFF
	str r1, [sp, #0x000]
	ldr r1, _0807F7A0 @ =0x0300034C
	ldrh r2, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x07
	ands r1, r2
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl sub_81151E4
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_0807F79C: .4byte 0x03000FD8
_0807F7A0: .4byte 0x0300034C
	.byte 0x03, 0x48, 0x01, 0x88, 0x02, 0x20, 0x08, 0x40, 0x00, 0x04, 0x00, 0x0C, 0x70, 0x47, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x04, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_807F7BC
sub_807F7BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r7, r3, #0x0
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	beq _0807F7D8
	adds r0, r5, #0x0
	bl sub_810D260
	adds r4, r0, #0x0
_0807F7D8:
	movs r2, #0xFF
	ands r2, r6
	ldr r0, _0807F828 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r1, r0, r3
	ldr r1, [r1, #0x00]
	mov r8, r0
	movs r0, #0x0F
	mov r12, r0
	ldr r6, _0807F82C @ =0x000001FF
	ldr r3, _0807F830 @ =0xFFFF8000
	adds r0, r3, #0x0
	orrs r2, r0
	lsls r3, r7, #0x0C
_0807F7F6:
	adds r0, r5, #0x0
	mov r7, r12
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
	bne _0807F7F6
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r8
	str r1, [r0, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807F828: .4byte 0x0300034C
_0807F82C: .4byte 0x000001FF
_0807F830: .4byte 0xFFFF8000
