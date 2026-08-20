	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E1880
sub_80E1880:
	push {r4, lr}
	adds r4, r2, #0x0
	ldr r3, [r0, #0x08]
	cmp r3, #0x00
	beq _080E18CE
	cmp r1, #0x00
	beq _080E18BC
	lsls r1, r1, #0x01
	ldr r0, _080E18A8 @ =0x0838F8B2
	adds r2, r1, r0
	ldrb r1, [r3, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080E18AC
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	subs r0, r0, r1
	b _080E18B2
	.byte 0x00, 0x00
_080E18A8: .4byte 0x0838F8B2
_080E18AC:
	ldrh r0, [r2, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r0, r1
_080E18B2:
	strh r0, [r3, #0x00]
	ldrh r0, [r2, #0x02]
	ldrh r1, [r3, #0x02]
	adds r0, r0, r1
	strh r0, [r3, #0x02]
_080E18BC:
	cmp r4, #0x00
	beq _080E18CE
	lsls r0, r4, #0x01
	ldr r1, _080E18D4 @ =0x0838F8B2
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	strh r1, [r3, #0x04]
	ldrh r0, [r0, #0x02]
	strh r0, [r3, #0x06]
_080E18CE:
	pop {r4}
	pop {r0}
	bx r0
_080E18D4: .4byte 0x0838F8B2
	thumb_func_start sub_80E18D8
sub_80E18D8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x0C]
	ldrh r0, [r1, #0x00]
	movs r2, #0x02
	ldsh r1, [r1, r2]
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	bl sub_807BC90
	str r4, [r5, #0x08]
	ldr r1, _080E1904 @ =0x080E1AB1
	str r1, [r5, #0x04]
	adds r0, r5, #0x0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
_080E1904: .4byte sub_80E1AB0
	thumb_func_start sub_80E1908
sub_80E1908:
	push {lr}
	ldr r1, [r0, #0x0C]
	ldrh r2, [r1, #0x00]
	strh r2, [r0, #0x10]
	adds r1, #0x02
	str r1, [r0, #0x0C]
	ldr r1, _080E1920 @ =0x080DF5ED
	str r1, [r0, #0x04]
	bl _call_via_r1
	pop {r0}
	bx r0
_080E1920: .4byte sub_80DF5EC
	thumb_func_start sub_80E1924
sub_80E1924:
	push {lr}
	ldr r1, [r0, #0x0C]
	ldrh r2, [r1, #0x00]
	strh r2, [r0, #0x10]
	adds r1, #0x02
	str r1, [r0, #0x0C]
	ldr r1, _080E193C @ =0x080E1AF1
	str r1, [r0, #0x04]
	bl _call_via_r1
	pop {r0}
	bx r0
_080E193C: .4byte sub_80E1AF0
	thumb_func_start sub_80E1940
sub_80E1940:
	push {lr}
	ldr r1, [r0, #0x0C]
	ldrh r2, [r1, #0x00]
	strh r2, [r0, #0x10]
	adds r1, #0x02
	str r1, [r0, #0x0C]
	ldr r1, _080E1958 @ =0x080DF2B1
	str r1, [r0, #0x04]
	bl _call_via_r1
	pop {r0}
	bx r0
_080E1958: .4byte sub_80DF2B0
	thumb_func_start sub_80E195C
sub_80E195C:
	push {r4, r5, r6, lr}
	mov r12, r1
	mov r2, r12
	adds r2, #0x78
	ldrh r5, [r2, #0x00]
	mov r3, r12
	adds r3, #0x7A
	ldrh r6, [r3, #0x00]
	movs r1, #0x00
	strh r1, [r2, #0x00]
	strh r1, [r3, #0x00]
	str r1, [r0, #0x5C]
	str r1, [r0, #0x60]
	cmp r5, #0x00
	beq _080E19A0
	mov r4, r12
	adds r4, #0x7E
	ldrb r1, [r4, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _080E19A0
	mov r0, r12
	adds r0, #0x08
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldrb r1, [r4, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080E19A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80E19A8
sub_80E19A8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	ble _080E19BC
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _080E19C4
_080E19BC:
	bl sub_807F6D0
	movs r0, #0x00
	str r0, [r4, #0x04]
_080E19C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
