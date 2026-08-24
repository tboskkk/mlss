	.syntax unified
	.text

	thumb_func_start sub_812F5D8
sub_812F5D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	mov r10, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _0812F9C4 @ =0x08CDC418
	mov r1, r10
	str r0, [r1, #0x18]
	movs r0, #0xAA
	lsls r0, r0, #0x02
	add r0, r10
	bl sub_801B75C
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x80
	strh r1, [r0, #0x00]
	ldr r2, _0812F9C8 @ =0x0300034C
	ldrh r0, [r2, #0x02]
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r2, #0x02]
	ldr r6, _0812F9CC @ =0x0000088A
	adds r2, r2, r6
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	bl sub_8019628
	bl sub_8017E34
	ldr r7, _0812F9D0 @ =0x03001034
	movs r1, #0xC3
	lsls r1, r1, #0x02
	add r1, r10
	ldr r3, [r7, #0x00]
	movs r0, #0x00
	movs r2, #0xC0
	bl _call_via_r3
	ldr r4, _0812F9D4 @ =0x03001008
	ldr r0, _0812F9D8 @ =0x00000514
	ldr r2, _0812F9DC @ =0x082124EC
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_Zero
	str r0, [r4, #0x00]
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	movs r4, #0xA1
	lsls r4, r4, #0x02
	add r4, r10
	ldr r0, _0812F9E0 @ =0x0819941C
	ldr r1, _0812F9E4 @ =0x08198784
	subs r0, r0, r1
	ldr r2, _0812F9E8 @ =0x082124F4
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r4, #0x00]
	ldr r1, _0812F9EC @ =0x0851F9E8
	bl sub_81994EC
	movs r4, #0xA4
	lsls r4, r4, #0x02
	add r4, r10
	ldr r2, _0812F9F0 @ =0x082124FC
	movs r0, #0x14
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_Zero
	str r0, [r4, #0x00]
	movs r4, #0xA2
	lsls r4, r4, #0x02
	add r4, r10
	ldr r0, _0812F9F4 @ =0x00000F1F
	ldr r2, _0812F9F8 @ =0x08212504
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r4, #0x00]
	movs r2, #0xA3
	lsls r2, r2, #0x02
	add r2, r10
	adds r0, #0x1F
	movs r1, #0x20
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x04
	ldr r2, _0812F9FC @ =0x0821250C
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	adds r6, r0, #0x0
	adds r3, r6, #0x0
	movs r0, #0xF0
	lsls r0, r0, #0x08
	movs r1, #0x20
	ldr r2, _0812FA00 @ =0x08198154
	mov r8, r2
	ldr r7, _0812FA04 @ =0x081980D8
	mov r2, r10
	adds r2, #0x9C
	str r2, [sp, #0x01C]
	subs r2, #0x72
	str r2, [sp, #0x028]
	subs r2, #0x08
	str r2, [sp, #0x020]
	adds r2, #0x01
	str r2, [sp, #0x024]
_0812F6DA:
	movs r4, #0x1E
	subs r5, r1, #0x1
_0812F6DE:
	adds r1, r0, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0x0
	strh r1, [r3, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0x0
	strh r2, [r3, #0x02]
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0x0
	strh r1, [r3, #0x04]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0x0
	strh r2, [r3, #0x06]
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r1, [r3, #0x08]
	adds r3, #0x0A
	subs r4, #0x05
	cmp r4, #0x00
	bne _0812F6DE
	adds r3, #0x04
	adds r1, r5, #0x0
	cmp r1, #0x00
	bne _0812F6DA
	mov r0, r8
	subs r7, r0, r7
	ldr r1, _0812F9D0 @ =0x03001034
	ldr r3, [r1, #0x00]
	adds r3, r3, r7
	ldr r1, _0812FA08 @ =0x0600F800
	adds r0, r6, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl _call_via_r3
	cmp r6, #0x00
	beq _0812F740
	adds r0, r6, #0x0
	bl free_heap_8018D9C
_0812F740:
	ldr r1, _0812FA0C @ =0x06008000
	movs r2, #0xF0
	lsls r2, r2, #0x07
	ldr r6, _0812F9D0 @ =0x03001034
	ldr r3, [r6, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	movs r0, #0x00
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x80
	bl sub_8020994
	ldr r0, _0812FA10 @ =0x03000C78
	str r5, [r0, #0x00]
	ldr r6, _0812FA14 @ =0x083C41B4
	adds r0, r6, #0x0
	bl sub_80198B0
	movs r1, #0x9A
	lsls r1, r1, #0x02
	add r1, r10
	strh r0, [r1, #0x00]
	movs r4, #0x9B
	lsls r4, r4, #0x02
	add r4, r10
	ldrh r0, [r1, #0x00]
	ldr r2, _0812FA18 @ =0x08212514
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	ldr r0, _0812FA1C @ =0x03000C84
	ldr r2, [r0, #0x00]
	adds r0, r6, #0x0
	bl _call_via_r2
	movs r6, #0x9C
	lsls r6, r6, #0x02
	add r6, r10
	movs r0, #0xA0
	lsls r0, r0, #0x08
	ldr r2, _0812FA20 @ =0x0821251C
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r6, #0x00]
	movs r1, #0x9D
	lsls r1, r1, #0x02
	add r1, r10
	str r1, [sp, #0x010]
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	add r2, r10
	mov r8, r2
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r2, #0x9F
	lsls r2, r2, #0x02
	add r2, r10
	mov r9, r2
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r4, #0xA0
	lsls r4, r4, #0x02
	add r4, r10
	adds r0, r0, r1
	str r0, [r4, #0x00]
	ldr r0, _0812F9D0 @ =0x03001034
	ldr r3, [r0, #0x00]
	adds r3, r3, r7
	ldr r0, _0812FA24 @ =0x083C3DB4
	ldr r1, [r6, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x03
	adds r2, r6, #0x0
	bl _call_via_r3
	ldr r1, _0812F9D0 @ =0x03001034
	ldr r3, [r1, #0x00]
	adds r3, r3, r7
	ldr r0, _0812FA28 @ =0x083C2DB4
	ldr r2, [sp, #0x010]
	ldr r1, [r2, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x05
	bl _call_via_r3
	ldr r0, _0812F9D0 @ =0x03001034
	ldr r3, [r0, #0x00]
	adds r3, r3, r7
	ldr r0, _0812FA2C @ =0x083C2034
	mov r2, r8
	ldr r1, [r2, #0x00]
	movs r2, #0xD8
	lsls r2, r2, #0x04
	bl _call_via_r3
	ldr r0, _0812FA30 @ =0x00010001
	mov r2, r9
	ldr r1, [r2, #0x00]
	ldr r2, _0812F9D0 @ =0x03001034
	ldr r3, [r2, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl _call_via_r3
	ldr r0, _0812F9D0 @ =0x03001034
	ldr r3, [r0, #0x00]
	adds r3, r3, r7
	ldr r0, _0812FA34 @ =0x083C6E50
	ldr r1, [r4, #0x00]
	adds r2, r6, #0x0
	bl _call_via_r3
	movs r6, #0x00
	ldr r1, _0812FA38 @ =0x000001FF
	mov r8, r1
	ldr r7, _0812FA3C @ =0x00000FFF
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r5, r2, #0x0
_0812F846:
	ldr r1, [r4, #0x00]
	lsls r3, r6, #0x01
	adds r1, r3, r1
	ldrh r2, [r1, #0x00]
	adds r0, r7, #0x0
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	ldrh r0, [r3, #0x00]
	orrs r0, r5
	strh r0, [r3, #0x00]
	adds r1, r6, #0x1
	ldr r2, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r2, r1, r2
	ldrh r3, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r3
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	orrs r0, r5
	strh r0, [r1, #0x00]
	adds r1, r6, #0x2
	ldr r2, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r2, r1, r2
	ldrh r3, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r3
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	orrs r0, r5
	strh r0, [r1, #0x00]
	adds r1, r6, #0x3
	ldr r2, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r2, r1, r2
	ldrh r3, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r3
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	orrs r0, r5
	strh r0, [r1, #0x00]
	adds r6, #0x04
	cmp r6, r8
	bls _0812F846
	ldr r4, _0812FA40 @ =0x083C160C
	ldrh r1, [r4, #0x00]
	movs r0, #0x09
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	adds r4, #0x02
	ldrh r1, [r4, #0x00]
	movs r0, #0x09
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	adds r4, #0x02
	ldrh r1, [r4, #0x00]
	movs r0, #0x09
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	adds r4, #0x02
	movs r5, #0x03
_0812F8E6:
	ldrh r1, [r4, #0x00]
	movs r0, #0x09
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldrh r1, [r4, #0x02]
	movs r0, #0x09
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldrh r1, [r4, #0x04]
	movs r0, #0x09
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldrh r1, [r4, #0x06]
	movs r0, #0x09
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	adds r4, #0x08
	adds r5, #0x04
	cmp r5, #0x12
	bls _0812F8E6
	movs r6, #0x00
	add r0, sp, #0x00C
	strh r6, [r0, #0x00]
	ldr r0, _0812FA44 @ =0x083C1632
	ldrh r1, [r0, #0x00]
	str r6, [sp, #0x000]
	add r2, sp, #0x00C
	str r2, [sp, #0x004]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x008]
	movs r0, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r0, _0812FA44 @ =0x083C1632
	ldrh r1, [r0, #0x02]
	str r6, [sp, #0x000]
	add r2, sp, #0x00C
	str r2, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	mov r9, r6
	mov r8, r4
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x02C]
	ldr r7, _0812FA48 @ =0x083C1636
	ldr r5, _0812FA4C @ =0x083C18D6
_0812F968:
	mov r1, r9
	lsls r1, r1, #0x01
	str r1, [sp, #0x014]
	ldrh r1, [r7, #0x00]
	ldrh r2, [r7, #0x02]
	mov r6, r8
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x09
	mov r3, r8
	bl sub_8020DD0
	mov r1, r9
	lsls r1, r1, #0x02
	str r1, [sp, #0x030]
	movs r4, #0xF3
	lsls r4, r4, #0x02
	add r4, r10
	adds r4, r4, r1
	str r0, [r4, #0x00]
	ldrh r1, [r7, #0x04]
	movs r2, #0x00
	str r2, [sp, #0x000]
	mov r2, r8
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r4, #0x00]
	ldrb r0, [r7, #0x06]
	movs r2, #0x03
	ands r2, r0
	ldrb r0, [r3, #0x1F]
	movs r6, #0x04
	negs r6, r6
	adds r1, r6, #0x0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x1F]
	ldr r1, [r4, #0x00]
	ldrh r0, [r7, #0x08]
	strh r0, [r1, #0x0E]
	ldr r1, [r4, #0x00]
	ldrh r0, [r5, #0x00]
	strh r0, [r1, #0x00]
	b _0812FA50
_0812F9C4: .4byte dword_8CDC418 @ =0x08CDC418
_0812F9C8: .4byte 0x0300034C
_0812F9CC: .4byte 0x0000088A
_0812F9D0: .4byte 0x03001034
_0812F9D4: .4byte 0x03001008
_0812F9D8: .4byte 0x00000514
_0812F9DC: .4byte dword_82124EC @ =0x082124EC
_0812F9E0: .4byte 0x0819941C
_0812F9E4: .4byte 0x08198784
_0812F9E8: .4byte dword_82124F4 @ =0x082124F4
_0812F9EC: .4byte 0x0851F9E8
_0812F9F0: .4byte dword_82124FC @ =0x082124FC
_0812F9F4: .4byte 0x00000F1F
_0812F9F8: .4byte dword_8212504 @ =0x08212504
_0812F9FC: .4byte dword_821250C @ =0x0821250C
_0812FA00: .4byte dword_8198154 @ =0x08198154
_0812FA04: .4byte dword_81980D8 @ =0x081980D8
_0812FA08: .4byte 0x0600F800
_0812FA0C: .4byte 0x06008000
_0812FA10: .4byte 0x03000C78
_0812FA14: .4byte dword_83C41B4 @ =0x083C41B4
_0812FA18: .4byte dword_8212514 @ =0x08212514
_0812FA1C: .4byte 0x03000C84
_0812FA20: .4byte dword_821251C @ =0x0821251C
_0812FA24: .4byte dword_83C3DB4 @ =0x083C3DB4
_0812FA28: .4byte dword_83C2DB4 @ =0x083C2DB4
_0812FA2C: .4byte dword_83C2034 @ =0x083C2034
_0812FA30: .4byte 0x00010001
_0812FA34: .4byte dword_83C6E50 @ =0x083C6E50
_0812FA38: .4byte 0x000001FF
_0812FA3C: .4byte 0x00000FFF
_0812FA40: .4byte word_83C160C @ =0x083C160C
_0812FA44: .4byte word_83C1632 @ =0x083C1632
_0812FA48: .4byte word_83C1636 @ =0x083C1636
_0812FA4C: .4byte dword_83C18D6 @ =0x083C18D6
_0812FA50:
	ldr r1, [r4, #0x00]
	ldrh r0, [r5, #0x02]
	strh r0, [r1, #0x02]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x02C]
	stm r2!, {r0}
	str r2, [sp, #0x02C]
	movs r1, #0xBE
	lsls r1, r1, #0x01
	add r1, r10
	ldr r6, [sp, #0x030]
	adds r1, r1, r6
	movs r2, #0x02
	ldsh r0, [r5, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	ldr r6, [sp, #0x028]
	ldr r0, [sp, #0x014]
	adds r6, r6, r0
	str r6, [sp, #0x018]
	movs r1, #0x00
	strh r1, [r6, #0x00]
	adds r7, #0x0C
	adds r5, #0x04
	movs r2, #0x01
	add r9, r2
	mov r6, r9
	cmp r6, #0x37
	bhi _0812FA90
	b _0812F968
_0812FA90:
	ldr r1, _0812FBF0 @ =0x03000C78
	ldr r0, _0812FBF4 @ =0x0800063C
	str r0, [r1, #0x00]
	movs r6, #0xB0
	lsls r6, r6, #0x02
	add r6, r10
	ldr r7, _0812FBF8 @ =0x08212524
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r7, #0x0
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r7, #0x0
	bl process_add
	ldr r0, _0812FBFC @ =0x08CDC428
	str r0, [r4, #0x18]
	str r4, [r6, #0x00]
	mov r0, r10
	str r0, [r4, #0x14]
	movs r1, #0xAE
	lsls r1, r1, #0x02
	add r1, r10
	mov r8, r1
	ldr r4, _0812FC00 @ =0x0821252C
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x08
	bl init_ybpa_process_8114B4C
	mov r2, r8
	str r0, [r2, #0x00]
	mov r6, r10
	str r6, [r0, #0x14]
	bl process_disable
	movs r6, #0xAF
	lsls r6, r6, #0x02
	add r6, r10
	ldr r0, _0812FC04 @ =0x00000A5C
	ldr r4, _0812FC08 @ =0x08212534
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	ldr r1, _0812FC0C @ =0x00000207
	mov r9, r1
	movs r7, #0x00
	str r7, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r2, r8
	ldr r1, [r2, #0x00]
	str r1, [sp, #0x008]
	movs r1, #0x08
	adds r2, r4, #0x0
	mov r3, r9
	bl sub_805CCE0
	str r0, [r6, #0x00]
	ldr r2, _0812FC10 @ =0x03001034
	ldr r0, _0812FC14 @ =0x08198154
	ldr r1, _0812FC18 @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _0812FC1C @ =0x083B8F24
	ldr r4, _0812FC20 @ =0x0300034C
	ldr r6, _0812FC24 @ =0x00000888
	adds r0, r4, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _0812FB3A
	adds r2, #0x20
_0812FB3A:
	ldr r1, _0812FC28 @ =0x02000260
	adds r0, r2, #0x0
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x02]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r2, #0x0
	movs r2, #0x00
	orrs r0, r1
	strh r0, [r4, #0x02]
	mov r6, r10
	ldrb r1, [r6, #0x1C]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	subs r1, #0x06
	ands r0, r1
	subs r1, #0x08
	ands r0, r1
	adds r1, #0x0C
	ands r0, r1
	subs r1, #0x1C
	ands r0, r1
	strb r0, [r6, #0x1C]
	ldrh r1, [r6, #0x1C]
	ldr r0, _0812FC2C @ =0xFFFFF03F
	ands r0, r1
	strh r0, [r6, #0x1C]
	mov r0, r9
	strh r0, [r6, #0x1E]
	ldr r1, [sp, #0x020]
	strb r2, [r1, #0x00]
	ldr r6, [sp, #0x024]
	strb r2, [r6, #0x00]
	mov r0, r10
	strh r7, [r0, #0x24]
	ldr r0, _0812FC30 @ =0x0300100C
	strh r7, [r0, #0x00]
	movs r0, #0x99
	lsls r0, r0, #0x02
	add r0, r10
	strh r7, [r0, #0x00]
	ldr r0, _0812FC34 @ =0x00000266
	add r0, r10
	strh r7, [r0, #0x00]
	movs r0, #0xC1
	lsls r0, r0, #0x02
	add r0, r10
	strh r7, [r0, #0x00]
	movs r1, #0xC2
	lsls r1, r1, #0x02
	add r1, r10
	ldr r0, _0812FC38 @ =0x083C1A6A
	str r0, [r1, #0x00]
	movs r0, #0x97
	lsls r0, r0, #0x02
	add r0, r10
	str r7, [r0, #0x00]
	movs r0, #0xA6
	lsls r0, r0, #0x02
	add r0, r10
	strh r7, [r0, #0x00]
	ldr r0, _0812FC3C @ =0x00000296
	add r0, r10
	strh r7, [r0, #0x00]
	movs r0, #0xA7
	lsls r0, r0, #0x02
	add r0, r10
	strh r7, [r0, #0x00]
	ldr r0, _0812FC40 @ =0x0000029A
	add r0, r10
	strh r7, [r0, #0x00]
	ldr r1, _0812FC44 @ =0x02000008
	ldr r2, _0812FC48 @ =0x00001F08
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	mov r0, r10
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0812FBF0: .4byte 0x03000C78
_0812FBF4: .4byte 0x0800063C
_0812FBF8: .4byte dword_8212524 @ =0x08212524
_0812FBFC: .4byte dword_8CDC428 @ =0x08CDC428
_0812FC00: .4byte dword_821252C @ =0x0821252C
_0812FC04: .4byte 0x00000A5C
_0812FC08: .4byte dword_8212534 @ =0x08212534
_0812FC0C: .4byte 0x00000207
_0812FC10: .4byte 0x03001034
_0812FC14: .4byte dword_8198154 @ =0x08198154
_0812FC18: .4byte dword_81980D8 @ =0x081980D8
_0812FC1C: .4byte dword_83B8F24 @ =0x083B8F24
_0812FC20: .4byte 0x0300034C
_0812FC24: .4byte 0x00000888
_0812FC28: .4byte 0x02000260
_0812FC2C: .4byte 0xFFFFF03F
_0812FC30: .4byte 0x0300100C
_0812FC34: .4byte 0x00000266
_0812FC38: .4byte dword_83C1A6A @ =0x083C1A6A
_0812FC3C: .4byte 0x00000296
_0812FC40: .4byte 0x0000029A
_0812FC44: .4byte 0x02000008
_0812FC48: .4byte 0x00001F08
