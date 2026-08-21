	.syntax unified
	.text

	thumb_func_start sub_814AADC
sub_814AADC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r12, r0
	ldr r2, _0814AB18 @ =0x000002DE
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x03
	bls _0814AB66
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0814AB1C
	ldr r0, [r4, #0x0C]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	b _0814AB22
	.byte 0x00, 0x00
_0814AB18: .4byte 0x000002DE
_0814AB1C:
	ldr r0, [r4, #0x0C]
	ldr r1, _0814ABA0 @ =0xFFFFFC00
	adds r0, r0, r1
_0814AB22:
	str r0, [r4, #0x0C]
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x34]
	subs r1, r1, r0
	ldr r2, _0814ABA4 @ =0x00000242
	adds r0, r4, r2
	movs r2, #0x00
	strh r1, [r0, #0x00]
	ldr r1, _0814ABA8 @ =0x000002DE
	adds r0, r4, r1
	strh r2, [r0, #0x00]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	add r2, r12
	ldrh r1, [r2, #0x00]
	ldr r0, _0814ABAC @ =0x0000FFFE
	cmp r1, r0
	bhi _0814AB4A
	adds r0, r1, #0x1
	strh r0, [r2, #0x00]
_0814AB4A:
	movs r3, #0xBF
	lsls r3, r3, #0x01
	add r3, r12
	ldrb r2, [r3, #0x00]
	lsrs r1, r2, #0x02
	movs r0, #0x01
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0814AB66:
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	cmp r0, #0x1D
	bls _0814AB96
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814AB96
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x0D
	bl sub_814B4C8
_0814AB96:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814ABA0: .4byte 0xFFFFFC00
_0814ABA4: .4byte 0x00000242
_0814ABA8: .4byte 0x000002DE
_0814ABAC: .4byte 0x0000FFFE
