	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0xB2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldrh r0, [r2, #0x00]
	adds r0, #0x20
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0805FEA2
	adds r0, #0xFF
_0805FEA2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0805FEAE
	adds r0, #0xFF
_0805FEAE:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0805FEBA
	adds r0, #0xFF
_0805FEBA:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x004]
	movs r0, #0x88
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _0805FEDC
	adds r0, r4, #0x0
	bl sub_807C298
	b _0805FEEC
_0805FEDC:
	ldr r1, [sp, #0x000]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bge _0805FEEC
	adds r0, r4, #0x0
	bl sub_807C298
_0805FEEC:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
