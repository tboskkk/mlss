	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8106650
sub_8106650:
	push {lr}
	adds r2, r0, #0x0
	movs r1, #0x10
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	beq _08106678
	ldr r0, _08106674 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x00]
	adds r1, #0x40
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x10]
	subs r0, #0x01
	strh r0, [r2, #0x10]
	b _0810667E
	.byte 0x00, 0x00
_08106674: .4byte 0x03000FD8
_08106678:
	strh r0, [r2, #0x18]
	ldr r0, _08106684 @ =0x08106609
	str r0, [r2, #0x04]
_0810667E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106684: .4byte sub_8106608
	thumb_func_start sub_8106688
sub_8106688:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, _081066C4 @ =0x0200000C
	ldrh r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x10
	ldr r1, _081066C8 @ =0x0200001E
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldr r2, _081066CC @ =0x03001034
	ldr r0, _081066D0 @ =0x11111111
	ldr r1, _081066D4 @ =0x06008000
	ldr r3, [r2, #0x00]
	movs r2, #0x20
	bl _call_via_r3
	movs r1, #0x00
	movs r0, #0x40
	strh r0, [r4, #0x10]
	strh r1, [r4, #0x18]
	ldr r0, _081066D8 @ =0x081064F9
	str r0, [r4, #0x04]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081066C4: .4byte 0x0200000C
_081066C8: .4byte 0x0200001E
_081066CC: .4byte 0x03001034
_081066D0: .4byte 0x11111111
_081066D4: .4byte 0x06008000
_081066D8: .4byte sub_81064F8
	thumb_func_start sub_81066DC
sub_81066DC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _081066F0
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08106714
_081066F0:
	ldr r0, _0810671C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r0, r1, r2
	adds r2, #0x04
	adds r1, r1, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	bne _08106714
	bl sub_807F6D0
	movs r0, #0x20
	strh r0, [r4, #0x10]
	ldr r0, _08106720 @ =0x081063A9
	str r0, [r4, #0x04]
_08106714:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810671C: .4byte 0x03000FD8
_08106720: .4byte sub_81063A8
	thumb_func_start sub_8106724
sub_8106724:
	push {r4, lr}
	ldr r0, _08106774 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x02
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, _08106778 @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r4, _0810677C @ =0x00007009
	adds r0, r4, #0x0
	bl sub_8082AAC
	adds r0, r4, #0x0
	bl sub_8082A6C
	ldr r3, _08106780 @ =0x03001034
	ldr r0, _08106784 @ =0x80008000
	ldr r1, _08106788 @ =0x0600F800
	movs r2, #0xA0
	lsls r2, r2, #0x03
	ldr r3, [r3, #0x00]
	bl _call_via_r3
	ldr r0, _0810678C @ =0x08106291
	movs r1, #0x00
	bl sub_807FF48
	movs r1, #0x00
	strh r1, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106774: .4byte 0x03000FD8
_08106778: .4byte 0x000002BF
_0810677C: .4byte 0x00007009
_08106780: .4byte 0x03001034
_08106784: .4byte 0x80008000
_08106788: .4byte 0x0600F800
_0810678C: .4byte sub_8106290
	thumb_func_start sub_8106790
sub_8106790:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _081067C8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r3, _081067CC @ =0x0000033F
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x10]
	ldrb r1, [r0, #0x12]
	movs r3, #0x08
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _081067C2
	strh r3, [r2, #0x10]
	ldr r1, _081067D0 @ =0x08106215
	str r1, [r2, #0x04]
	adds r0, r2, #0x0
	bl _call_via_r1
_081067C2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081067C8: .4byte 0x03000FD8
_081067CC: .4byte 0x0000033F
_081067D0: .4byte sub_8106214
	thumb_func_start sub_81067D4
sub_81067D4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _081067E8
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
	b _0810682E
_081067E8:
	ldr r5, _08106834 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	ldr r4, _08106838 @ =0x0000033F
	adds r0, r1, r4
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x20
	strh r0, [r6, #0x10]
	ldr r1, _0810683C @ =0x08106021
	str r1, [r6, #0x04]
	adds r0, r6, #0x0
	bl _call_via_r1
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	movs r2, #0xF3
	cmp r0, #0x00
	beq _08106824
	adds r2, #0x10
_08106824:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
_0810682E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08106834: .4byte 0x03000FD8
_08106838: .4byte 0x0000033F
_0810683C: .4byte sub_8106020
	thumb_func_start sub_8106840
sub_8106840:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08106854
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08106868
_08106854:
	ldr r0, [r4, #0x08]
	bl sub_807FB64
	movs r0, #0x20
	strh r0, [r4, #0x10]
	ldr r1, _08106870 @ =0x081067D5
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_08106868:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106870: .4byte sub_81067D4
	thumb_func_start sub_8106874
sub_8106874:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08106888
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _0810689C
_08106888:
	ldr r0, [r4, #0x08]
	bl sub_807FB64
	movs r0, #0x10
	strh r0, [r4, #0x10]
	ldr r1, _081068A4 @ =0x08105F29
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_0810689C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081068A4: .4byte sub_8105F28
	thumb_func_start sub_81068A8
sub_81068A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r0, _08106914 @ =0x00002038
	mov r8, r0
	bl sub_8082AAC
	ldr r7, _08106918 @ =0x00002067
	adds r0, r7, #0x0
	bl sub_8082AAC
	ldr r6, _0810691C @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r5, #0xD0
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	ldr r1, _08106920 @ =0x00002001
	cmp r0, #0x00
	beq _081068D4
	adds r1, #0x4D
_081068D4:
	adds r0, r1, #0x0
	bl sub_8082AAC
	mov r0, r8
	bl sub_8082A6C
	adds r0, r7, #0x0
	bl sub_8082A6C
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	ldr r1, _08106920 @ =0x00002001
	cmp r0, #0x00
	beq _081068F4
	adds r1, #0x4D
_081068F4:
	adds r0, r1, #0x0
	bl sub_8082A6C
	movs r0, #0x04
	strh r0, [r4, #0x10]
	ldr r1, _08106924 @ =0x08105D0D
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106914: .4byte 0x00002038
_08106918: .4byte 0x00002067
_0810691C: .4byte 0x03000FD8
_08106920: .4byte 0x00002001
_08106924: .4byte sub_8105D0C
	thumb_func_start sub_8106928
sub_8106928:
	push {lr}
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	adds r2, r0, #0x0
	mvns r0, r2
	lsrs r1, r0, #0x1F
	cmp r2, #0x5B
	ble _08106942
	adds r1, #0x01
_08106942:
	cmp r2, #0x61
	ble _08106948
	adds r1, #0x01
_08106948:
	movs r0, #0x80
	lsls r0, r0, #0x02
	bl sub_81059D8
	pop {r0}
	bx r0
	thumb_func_start sub_8106954
sub_8106954:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0810698C
	cmp r2, #0x00
	bne _0810697E
	adds r0, #0x2A
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x1B
	lsrs r4, r4, #0x1B
	adds r4, r4, r1
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x1F
	bl sub_81DD77C
	cmp r4, r0
	ble _0810698C
	ldrh r0, [r5, #0x2A]
	b _08106980
_0810697E:
	ldrh r0, [r5, #0x28]
_08106980:
	lsrs r0, r0, #0x05
	cmp r0, #0x00
	beq _0810698C
	movs r1, #0x01
	bl sub_81059D8
_0810698C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8106994
sub_8106994:
	push {lr}
	ldr r1, _081069AC @ =0x03000FD8
	ldr r1, [r1, #0x00]
	ldr r0, [r0, #0x6C]
	ldrb r0, [r0, #0x0A]
	ldr r2, _081069B0 @ =0x000002F9
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	bl sub_810CA30
	pop {r0}
	bx r0
_081069AC: .4byte 0x03000FD8
_081069B0: .4byte 0x000002F9
