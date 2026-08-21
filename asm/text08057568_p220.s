	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81145C8
sub_81145C8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081145EA
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	ldr r1, _081145F0 @ =0x081147B5
	cmp r0, #0x00
	beq _081145E8
	ldr r1, _081145F4 @ =0x081147D1
_081145E8:
	str r1, [r4, #0x4C]
_081145EA:
	pop {r4}
	pop {r0}
	bx r0
_081145F0: .4byte sub_81147B4
_081145F4: .4byte sub_81147D0
	thumb_func_start sub_81145F8
sub_81145F8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r1, #0x1D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08114624 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x60]
	adds r4, r0, #0x0
	adds r4, #0x08
	b _0811462E
	.byte 0x00, 0x00
_08114624: .4byte 0x03000FD8
_08114628:
	ldr r0, [r4, #0x30]
	bl sub_807C298
_0811462E:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08114628
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08114650 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x64]
	adds r4, r0, #0x0
	adds r4, #0x08
	b _0811465A
_08114650: .4byte 0x03000FD8
_08114654:
	ldr r0, [r4, #0x30]
	bl sub_807C298
_0811465A:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08114654
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0811467C @ =0x08114855
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0811467C: .4byte sub_8114854
	thumb_func_start sub_8114680
sub_8114680:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x1B
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
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081146A8
	adds r1, #0xFF
_081146A8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _081146B2
	adds r2, #0xFF
_081146B2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _081146BC
	adds r3, #0xFF
_081146BC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _081146D4 @ =0x00002AAF
	bl sub_80DF024
	ldr r0, _081146D8 @ =0x081134A9
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081146D4: .4byte 0x00002AAF
_081146D8: .4byte sub_81134A8
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
