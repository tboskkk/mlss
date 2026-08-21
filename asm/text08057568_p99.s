	.include "asm/macros.inc"

	.syntax unified
	.text

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
