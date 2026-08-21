	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81146DC
sub_81146DC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	cmp r0, #0x00
	bne _0811474E
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r1, r0
	blt _08114726
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08114758 @ =0x08114761
	str r0, [r4, #0x4C]
_08114726:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0811472E
	adds r1, #0xFF
_0811472E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08114738
	adds r2, #0xFF
_08114738:
	asrs r2, r2, #0x08
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08114742
	adds r0, #0xFF
_08114742:
	asrs r3, r0, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0811475C @ =0x00002B03
	bl sub_80DF024
	movs r0, #0x00
_0811474E:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08114758: .4byte sub_8114760
_0811475C: .4byte 0x00002B03
	thumb_func_start sub_8114760
sub_8114760:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0811477A
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08114788
_0811477A:
	movs r0, #0x86
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807C298
_08114788:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
