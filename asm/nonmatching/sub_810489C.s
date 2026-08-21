	.syntax unified
	.text

	thumb_func_start sub_810489C
sub_810489C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r8, r0
	adds r5, r1, #0x0
	ldrh r0, [r0, #0x10]
	ldr r7, _081048EC @ =0x000007FF
	ands r7, r0
	lsls r0, r0, #0x10
	asrs r6, r0, #0x1B
	cmp r7, #0x00
	bne _081048D4
	adds r6, #0x01
	cmp r6, #0x0A
	bne _081048C0
	movs r6, #0x00
_081048C0:
	ldr r0, _081048F0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _081048F4 @ =0x00008E34
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	bl sub_8083F88
	mov r2, r8
	strh r0, [r2, #0x16]
_081048D4:
	adds r7, #0x01
	cmp r7, r5
	bne _081048DC
	movs r7, #0x00
_081048DC:
	cmp r6, #0x00
	beq _081048FC
	ldr r0, _081048F0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	adds r0, r0, r6
	ldr r3, _081048F8 @ =0x00008E33
	adds r0, r0, r3
	b _08104904
_081048EC: .4byte 0x000007FF
_081048F0: .4byte 0x03000FDC
_081048F4: .4byte 0x00008E34
_081048F8: .4byte 0x00008E33
_081048FC:
	ldr r0, _08104964 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08104968 @ =0x00008E3D
	adds r0, r0, r1
_08104904:
	ldrb r0, [r0, #0x00]
	bl sub_8083F88
	mov r9, r0
	ldr r0, _0810496C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _08104970 @ =0x00000342
	adds r0, r0, r2
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x04
	adds r4, #0x28
	ldr r2, _08104974 @ =0x03001038
	ldr r0, _08104978 @ =0x0819832C
	ldr r1, _0810497C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsls r0, r7, #0x06
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r3, r8
	movs r1, #0x16
	ldsh r0, [r3, r1]
	movs r1, #0xB8
	bl sub_810D260
	adds r2, r0, #0x0
	mov r3, r8
	movs r1, #0x16
	ldsh r0, [r3, r1]
	str r5, [sp, #0x000]
	mov r1, r9
	adds r3, r4, #0x0
	bl sub_8109FEC
	lsls r0, r6, #0x0B
	orrs r7, r0
	adds r0, r7, #0x0
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08104964: .4byte 0x03000FDC
_08104968: .4byte 0x00008E3D
_0810496C: .4byte 0x03000FD8
_08104970: .4byte 0x00000342
_08104974: .4byte 0x03001038
_08104978: .4byte 0x0819832C
_0810497C: .4byte 0x08198220
