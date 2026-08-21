	.syntax unified
	.text

	thumb_func_start sub_8112268
sub_8112268:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _081122C0
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0811227E
	adds r2, #0xFF
_0811227E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08112288
	adds r3, #0xFF
_08112288:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0811229E
	movs r0, #0x13
	b _081122A0
_0811229E:
	movs r0, #0x12
_081122A0:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r1, r4, #0x0
	adds r1, #0xB8
	ldr r0, _081122C8 @ =0x00001B45
	strh r0, [r1, #0x00]
	ldr r0, _081122CC @ =0x081121E9
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
_081122C0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081122C8: .4byte 0x00001B45
_081122CC: .4byte sub_81121E8
