	.syntax unified
	.text

	thumb_func_start sub_801DF14
sub_801DF14:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	mov r8, r1
	ldr r4, _0801DFA0 @ =0x04000208
	movs r6, #0x00
	strh r6, [r4, #0x00]
	ldrh r0, [r7, #0x0C]
	movs r1, #0xC0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	bl sub_80184F4
	movs r5, #0x01
	strh r5, [r4, #0x00]
	strh r6, [r4, #0x00]
	ldrh r0, [r7, #0x0C]
	ldr r1, _0801DFA4 @ =0x06001400
	adds r0, r0, r1
	bl sub_80184F4
	strh r5, [r4, #0x00]
	strh r6, [r4, #0x00]
	ldrh r0, [r7, #0x0C]
	ldr r1, _0801DFA8 @ =0x06002800
	adds r0, r0, r1
	bl sub_80184F4
	strh r5, [r4, #0x00]
	strh r6, [r4, #0x00]
	ldrh r0, [r7, #0x0C]
	ldr r1, _0801DFAC @ =0x06003C00
	adds r0, r0, r1
	bl sub_80184F4
	strh r5, [r4, #0x00]
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	beq _0801DF68
	bl free_heap_8018D9C
_0801DF68:
	ldr r0, [r7, #0x14]
	cmp r0, #0x00
	beq _0801DF72
	bl free_heap_8018D9C
_0801DF72:
	ldr r0, [r7, #0x08]
	cmp r0, #0x00
	beq _0801DF7C
	bl free_heap_8018D9C
_0801DF7C:
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	beq _0801DF86
	bl free_heap_8018D9C
_0801DF86:
	movs r0, #0x01
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	beq _0801DF96
	adds r0, r7, #0x0
	bl free_heap_8018DA8
_0801DF96:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0801DFA0: .4byte 0x04000208
_0801DFA4: .4byte 0x06001400
_0801DFA8: .4byte 0x06002800
_0801DFAC: .4byte 0x06003C00
