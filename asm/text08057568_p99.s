	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810D524
sub_810D524:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	ldr r7, _0810D564 @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r2, [r1, #0x00]
	cmp r2, #0x00
	bne _0810D568
	movs r0, #0x00
	movs r1, #0x00
	bl sub_807FF48
	adds r2, r0, #0x0
	ldr r0, [r7, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r2, [r0, #0x00]
	movs r0, #0x00
	strh r4, [r2, #0x12]
	strh r5, [r2, #0x14]
	str r6, [r2, #0x0C]
	strh r0, [r2, #0x18]
	adds r0, r2, #0x0
	bl sub_81092B8
	b _0810D572
	.byte 0x00, 0x00
_0810D564: .4byte 0x03000FD8
_0810D568:
	strh r4, [r2, #0x12]
	strh r5, [r2, #0x14]
	str r6, [r2, #0x0C]
	ldr r1, _0810D578 @ =0x0810D6C5
	str r1, [r2, #0x04]
_0810D572:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0810D578: .4byte sub_810D6C4
	thumb_func_start sub_810D57C
sub_810D57C:
	push {lr}
	ldr r0, _0810D5A8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0810D5B6
	ldr r0, _0810D5AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0810D5B0
	movs r0, #0x00
	bl sub_8108F14
	b _0810D5B6
_0810D5A8: .4byte 0x0300034C
_0810D5AC: .4byte 0x03000FD8
_0810D5B0:
	movs r0, #0x01
	bl sub_8108F14
_0810D5B6:
	ldr r0, _0810D5E0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0810D5EE
	ldr r0, _0810D5E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0810D5E8
	movs r0, #0x00
	bl sub_8108F14
	b _0810D5EE
_0810D5E0: .4byte 0x0300034C
_0810D5E4: .4byte 0x03000FD8
_0810D5E8:
	movs r0, #0x01
	bl sub_8108F14
_0810D5EE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
