	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8081E74
sub_8081E74:
	push {lr}
	ldr r0, _08081E98 @ =0x00002027
	bl sub_8082AAC
	ldr r0, _08081E9C @ =0x00002046
	bl sub_8082AAC
	ldr r0, _08081EA0 @ =0x00002056
	bl sub_8082AAC
	ldr r0, _08081EA4 @ =0x00002075
	bl sub_8082AAC
	ldr r0, _08081EA8 @ =0x00002089
	bl sub_8082AAC
	pop {r0}
	bx r0
_08081E98: .4byte 0x00002027
_08081E9C: .4byte 0x00002046
_08081EA0: .4byte 0x00002056
_08081EA4: .4byte 0x00002075
_08081EA8: .4byte 0x00002089
	thumb_func_start sub_8081EAC
sub_8081EAC:
	push {r4, r5, lr}
	ldr r4, _08081F14 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x02]
	ldr r2, _08081F18 @ =0x00004188
	adds r0, r1, r2
	bl sub_8082AAC
	ldr r0, [r4, #0x00]
	ldr r1, _08081F1C @ =0x00000349
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	ldr r0, _08081F20 @ =0x084FCE8C
	lsls r4, r1, #0x01
	adds r4, r4, r0
	ldrh r0, [r4, #0x00]
	bl sub_8082898
	ldrh r0, [r4, #0x00]
	bl sub_8082898
	ldr r4, _08081F24 @ =0x084FCEB0
	cmp r4, #0x00
	beq _08081F2C
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081F2C
	ldr r1, _08081F28 @ =0x0000FFFF
	cmp r0, r1
	beq _08081F04
	adds r5, r1, #0x0
_08081EF4:
	bl sub_8082898
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081F2C
	cmp r0, r5
	bne _08081EF4
_08081F04:
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081F2C
	bl sub_8082AAC
	b _08081F04
	.byte 0x00, 0x00
_08081F14: .4byte 0x03000FD8
_08081F18: .4byte 0x00004188
_08081F1C: .4byte 0x00000349
_08081F20: .4byte 0x084FCE8C
_08081F24: .4byte 0x084FCEB0
_08081F28: .4byte 0x0000FFFF
_08081F2C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8081F34
sub_8081F34:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _08081F80 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xFA
	lsls r3, r3, #0x01
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08081F7A
	cmp r2, #0x00
	blt _08081F7A
	cmp r2, #0x05
	bgt _08081F7A
	lsls r0, r2, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x04
	beq _08081F6A
	cmp r2, #0x02
	bne _08081F7A
_08081F6A:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08081F7A
	ldrh r0, [r0, #0x02]
	bl sub_8082898
_08081F7A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08081F80: .4byte 0x03000FD8
	thumb_func_start sub_8081F84
sub_8081F84:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08081FA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl process_enable
	ldr r1, _08081FAC @ =0x080FC9A5
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
_08081FA8: .4byte 0x03000FD8
_08081FAC: .4byte sub_80FC9A4
	thumb_func_start sub_8081FB0
sub_8081FB0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08081FCA
	bl sub_8082A28
	bl sub_80813A0
	ldr r0, _08081FD0 @ =0x08081289
	str r0, [r4, #0x04]
_08081FCA:
	pop {r4}
	pop {r0}
	bx r0
_08081FD0: .4byte sub_8081288
	thumb_func_start sub_8081FD4
sub_8081FD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r3, _08082010 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	ldr r1, _08082014 @ =0x000002BF
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0808200A
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl process_disable
	ldr r1, _08082018 @ =0x08081FB1
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_0808200A:
	pop {r4}
	pop {r0}
	bx r0
_08082010: .4byte 0x03000FD8
_08082014: .4byte 0x000002BF
_08082018: .4byte sub_8081FB0
	thumb_func_start sub_808201C
sub_808201C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	mov r8, r0
	bl sub_8082B00
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x00
	bne _0808206E
	ldr r5, _0808207C @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r6, [r0, #0x00]
	ldr r0, [r6, #0x48]
	ldr r0, [r0, #0x08]
	bl sprite_heap_free
	ldr r1, _08082080 @ =0x00002091
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	adds r6, r0, #0x0
	str r7, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	str r6, [r0, #0x00]
	ldr r0, _08082084 @ =0x08081189
	mov r1, r8
	str r0, [r1, #0x04]
_0808206E:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808207C: .4byte 0x03000FD8
_08082080: .4byte 0x00002091
_08082084: .4byte sub_8081188
	thumb_func_start sub_8082088
sub_8082088:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r7, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08082142
	movs r5, #0x00
_0808209A:
	ldr r0, _0808214C @ =0x00002084
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	ldr r6, _08082150 @ =0x03000FD8
	ldr r1, [r6, #0x00]
	lsls r2, r5, #0x02
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r4, r5, #0x1
	ldr r0, _0808214C @ =0x00002084
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	ldr r1, [r6, #0x00]
	lsls r4, r4, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r5, #0x2
	ldr r0, _0808214C @ =0x00002084
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	ldr r1, [r6, #0x00]
	lsls r4, r4, #0x02
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r5, #0x3
	ldr r0, _0808214C @ =0x00002084
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	ldr r1, [r6, #0x00]
	lsls r4, r4, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r5, #0x04
	cmp r5, #0x07
	ble _0808209A
	movs r1, #0xE0
	lsls r1, r1, #0x07
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	adds r5, r0, #0x0
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x00]
	str r5, [r0, #0x00]
	ldr r0, _08082154 @ =0x0808201D
	str r0, [r7, #0x04]
_08082142:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808214C: .4byte 0x00002084
_08082150: .4byte 0x03000FD8
_08082154: .4byte sub_808201C
	thumb_func_start sub_8082158
sub_8082158:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r1, [r4, #0x4C]
	cmp r1, #0x00
	beq _08082170
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	bne _08082174
_08082170:
	ldr r0, _0808217C @ =0x08080A41
	str r0, [r5, #0x04]
_08082174:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808217C: .4byte sub_8080A40
	thumb_func_start sub_8082180
sub_8082180:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80E3D1C
	ldr r0, _080821B0 @ =0x080FC91D
	movs r1, #0x00
	bl sub_807FF48
	ldr r0, _080821B4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0x04
	strb r0, [r1, #0x10]
	ldr r1, _080821B8 @ =0x0300034C
	ldr r0, _080821BC @ =0x00000888
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _080821C0 @ =0x0808225D
	str r0, [r4, #0x04]
	pop {r4}
	pop {r0}
	bx r0
_080821B0: .4byte sub_80FC91C
_080821B4: .4byte 0x03000FD8
_080821B8: .4byte 0x0300034C
_080821BC: .4byte 0x00000888
_080821C0: .4byte sub_808225C
	thumb_func_start sub_80821C4
sub_80821C4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x08]
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	ble _080821DA
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _080821F8
_080821DA:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08082200 @ =0x08081F85
	str r0, [r4, #0x04]
_080821F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082200: .4byte sub_8081F84
	thumb_func_start sub_8082204
sub_8082204:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x01
	ble _08082216
	subs r0, r1, #0x1
	b _08082218
_08082216:
	movs r0, #0x01
_08082218:
	strh r0, [r4, #0x10]
	bl sub_80E3D1C
	ldr r0, _08082248 @ =0x080FC91D
	movs r1, #0x00
	bl sub_807FF48
	ldr r0, _0808224C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0x04
	strb r0, [r1, #0x10]
	ldr r1, _08082250 @ =0x0300034C
	ldr r0, _08082254 @ =0x00000888
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _08082258 @ =0x0808227D
	str r0, [r4, #0x04]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082248: .4byte sub_80FC91C
_0808224C: .4byte 0x03000FD8
_08082250: .4byte 0x0300034C
_08082254: .4byte 0x00000888
_08082258: .4byte sub_808227C
