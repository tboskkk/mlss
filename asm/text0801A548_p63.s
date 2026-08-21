	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80291C8
sub_80291C8:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0xFC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	cmp r0, #0x02
	bgt _080291E8
	cmp r0, #0x01
	blt _080291E8
	movs r2, #0xC5
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	bl sub_8116610
_080291E8:
	pop {r0}
	bx r0
	thumb_func_start sub_80291EC
sub_80291EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	mov r8, r2
	ldr r0, [sp, #0x02C]
	ldr r2, [sp, #0x030]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r2, #0x10
	ldr r1, _08029234 @ =0x0300034C
	ldr r0, _08029238 @ =0x00000884
	adds r1, r1, r0
	lsrs r6, r2, #0x10
	orrs r2, r5
	ldr r0, [r1, #0x00]
	orrs r0, r2
	str r0, [r1, #0x00]
	cmp r7, #0x00
	bne _0802923C
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08029246
	adds r0, r4, #0x0
	bl sub_80290E0
	b _08029246
	.byte 0x00, 0x00
_08029234: .4byte 0x0300034C
_08029238: .4byte 0x00000884
_0802923C:
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_8029120
_08029246:
	adds r0, r4, #0x0
	adds r0, #0xF4
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	movs r1, #0xC5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	lsls r0, r7, #0x18
	lsrs r1, r0, #0x18
	mov r3, r8
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	str r5, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08029272
	ldr r0, _08029298 @ =0x03000E00
	ldr r0, [r0, #0x00]
_08029272:
	str r0, [sp, #0x008]
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08029280
	ldr r0, _0802929C @ =0x03000E04
	ldr r0, [r0, #0x00]
_08029280:
	str r0, [sp, #0x00C]
	adds r0, r2, #0x0
	mov r2, r9
	bl sub_81151E4
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08029298: .4byte 0x03000E00
_0802929C: .4byte 0x03000E04
	thumb_func_start sub_80292A0
sub_80292A0:
	push {lr}
	ldr r2, _080292D4 @ =0x0300034C
	ldr r1, _080292D8 @ =0x00000888
	adds r2, r2, r1
	ldrb r3, [r2, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r3
	strb r1, [r2, #0x00]
	movs r2, #0x06
	ldsh r0, [r0, r2]
	cmp r0, #0x06
	bne _080292D0
	ldr r0, _080292DC @ =0x03001034
	ldr r1, _080292E0 @ =0x0600C000
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	movs r2, #0x20
	bl _call_via_r3
	ldr r1, _080292E4 @ =0x02000008
	ldr r2, _080292E8 @ =0x00001508
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
_080292D0:
	pop {r0}
	bx r0
_080292D4: .4byte 0x0300034C
_080292D8: .4byte 0x00000888
_080292DC: .4byte 0x03001034
_080292E0: .4byte 0x0600C000
_080292E4: .4byte 0x02000008
_080292E8: .4byte 0x00001508
	thumb_func_start sub_80292EC
sub_80292EC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r5, #0x00
	b _0802931A
_080292F4:
	lsls r1, r5, #0x02
	adds r0, r4, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08029318
	movs r3, #0xCE
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r1, [r0, #0x00]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08029318:
	adds r5, #0x01
_0802931A:
	ldr r1, _0802937C @ =0x0000010B
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r5, r0
	blt _080292F4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xB0
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xB4
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xB8
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xBC
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xC0
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802937C: .4byte 0x0000010B
	thumb_func_start sub_8029380
sub_8029380:
	push {r4, r5, r6, lr}
	adds r1, r0, #0x0
	movs r2, #0x89
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080293B0
	adds r6, r1, #0x0
	adds r6, #0x30
	movs r4, #0x00
	adds r2, #0x01
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r4, r0
	bge _080293B0
	adds r5, r1, r2
_080293A2:
	ldm r6!, {r0}
	bl sub_80507E0
	adds r4, #0x01
	ldrb r0, [r5, #0x00]
	cmp r4, r0
	blt _080293A2
_080293B0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80293B8
sub_80293B8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r0, #0xC8
	ldr r5, [r0, #0x00]
	movs r4, #0x00
	b _080293E4
_080293C4:
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r2, r4, #0x02
	movs r3, #0xAE
	lsls r3, r3, #0x01
	adds r1, r1, r3
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r4, #0x01
	adds r5, #0x02
_080293E4:
	movs r1, #0x86
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	cmp r4, r0
	blt _080293C4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80293F8
sub_80293F8:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x86
	lsls r1, r1, #0x01
	adds r4, r7, r1
	adds r1, r4, #0x0
	bl sub_80FB7BC
	adds r1, r7, #0x0
	adds r1, #0xC8
	str r0, [r1, #0x00]
	ldr r2, _08029458 @ =0x03000C78
	movs r1, #0x00
	str r1, [r2, #0x00]
	adds r6, r0, #0x0
	movs r5, #0x00
	ldrb r4, [r4, #0x00]
	cmp r5, r4
	bge _0802944A
_08029422:
	ldrh r1, [r6, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r2, r5, #0x02
	adds r1, #0x5C
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r5, #0x01
	adds r6, #0x02
	movs r1, #0x86
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r5, r0
	blt _08029422
_0802944A:
	ldr r1, _08029458 @ =0x03000C78
	ldr r0, _0802945C @ =0x0800063C
	str r0, [r1, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08029458: .4byte 0x03000C78
_0802945C: .4byte 0x0800063C
	thumb_func_start sub_8029460
sub_8029460:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x1C]
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x08]
	ldr r1, _08029498 @ =0x06010400
	movs r2, #0x98
	lsls r2, r2, #0x03
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r0, [r5, #0x1C]
	ldr r0, [r0, #0x0C]
	ldr r0, [r0, #0x08]
	ldr r1, _0802949C @ =0x060108C0
	movs r2, #0xA0
	lsls r2, r2, #0x03
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08029498: .4byte 0x06010400
_0802949C: .4byte 0x060108C0
	thumb_func_start sub_80294A0
sub_80294A0:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r5, _08029558 @ =0x0839F5E2
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	str r0, [r1, #0x2C]
	adds r5, #0x02
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	str r0, [r1, #0x30]
	adds r5, #0x02
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	str r0, [r1, #0x34]
	adds r5, #0x02
	movs r7, #0x03
_080294E4:
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r2, r7, #0x02
	adds r1, #0x2C
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r4, r7, #0x1
	ldrh r1, [r5, #0x02]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r4, r4, #0x02
	adds r1, #0x2C
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r7, #0x2
	ldrh r1, [r5, #0x04]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r4, r4, #0x02
	adds r1, #0x2C
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r7, #0x3
	ldrh r1, [r5, #0x06]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
	ldr r1, [r6, #0x1C]
	lsls r4, r4, #0x02
	adds r1, #0x2C
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r5, #0x08
	adds r7, #0x04
	cmp r7, #0x0A
	ble _080294E4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08029558: .4byte 0x0839F5E2
	thumb_func_start sub_802955C
sub_802955C:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r1, _08029618 @ =0x03000C78
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r5, _0802961C @ =0x0839F5CC
	ldrh r1, [r5, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	str r0, [r1, #0x00]
	adds r5, #0x02
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	str r0, [r1, #0x04]
	adds r5, #0x02
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	str r0, [r1, #0x08]
	adds r5, #0x02
	movs r6, #0x03
_080295A4:
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r2, r6, #0x02
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r4, r6, #0x1
	ldrh r1, [r5, #0x02]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r4, r4, #0x02
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r6, #0x2
	ldrh r1, [r5, #0x04]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r4, r4, #0x02
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r6, #0x3
	ldrh r1, [r5, #0x06]
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, [r7, #0x1C]
	lsls r4, r4, #0x02
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r5, #0x08
	adds r6, #0x04
	cmp r6, #0x0A
	ble _080295A4
	ldr r1, _08029618 @ =0x03000C78
	ldr r0, _08029620 @ =0x0800063C
	str r0, [r1, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08029618: .4byte 0x03000C78
_0802961C: .4byte 0x0839F5CC
_08029620: .4byte 0x0800063C
	thumb_func_start sub_8029624
sub_8029624:
	push {r4, r5, r6, lr}
	ldr r1, [r0, #0x1C]
	mov r12, r1
	movs r3, #0x97
	lsls r3, r3, #0x02
	add r3, r12
	movs r6, #0x20
	ldr r1, _080296CC @ =0x0000027E
	adds r4, r0, r1
	adds r1, #0x02
	adds r5, r0, r1
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08029658
	ldrh r0, [r3, #0x04]
	ldrh r1, [r4, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldrh r0, [r3, #0x06]
	ldrh r1, [r5, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x02]
_08029658:
	movs r3, #0x99
	lsls r3, r3, #0x02
	add r3, r12
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0802967C
	ldrh r0, [r3, #0x04]
	ldrh r1, [r4, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldrh r0, [r3, #0x06]
	ldrh r1, [r5, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x02]
_0802967C:
	movs r3, #0x9B
	lsls r3, r3, #0x02
	add r3, r12
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080296A0
	ldrh r0, [r3, #0x04]
	ldrh r1, [r4, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldrh r0, [r3, #0x06]
	ldrh r1, [r5, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x02]
_080296A0:
	movs r3, #0x9D
	lsls r3, r3, #0x02
	add r3, r12
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080296C4
	ldrh r0, [r3, #0x04]
	ldrh r1, [r4, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldrh r0, [r3, #0x06]
	ldrh r1, [r5, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x02]
_080296C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080296CC: .4byte 0x0000027E
	.byte 0x30, 0xB5, 0xC4, 0x69, 0x97, 0x21, 0x89, 0x00, 0x60, 0x18, 0x02, 0x68, 0x91, 0x7C, 0x20, 0x25
	.byte 0x28, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x02, 0xD1, 0x10, 0x1C, 0xF7, 0xF7, 0x29, 0xFB, 0x99, 0x21
	.byte 0x89, 0x00, 0x60, 0x18, 0x02, 0x68, 0x91, 0x7C, 0x28, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x02, 0xD1
	.byte 0x10, 0x1C, 0xF7, 0xF7, 0x1D, 0xFB, 0x9B, 0x21, 0x89, 0x00, 0x60, 0x18, 0x02, 0x68, 0x91, 0x7C
	.byte 0x28, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x02, 0xD1, 0x10, 0x1C, 0xF7, 0xF7, 0x11, 0xFB, 0x9D, 0x21
	.byte 0x89, 0x00, 0x60, 0x18, 0x02, 0x68, 0x91, 0x7C, 0x28, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x02, 0xD1
	.byte 0x10, 0x1C, 0xF7, 0xF7, 0x05, 0xFB, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47
	thumb_func_start sub_802973C
sub_802973C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	ldr r5, [sp, #0x02C]
	add r4, sp, #0x030
	ldrb r4, [r4, #0x00]
	ldr r6, [r1, #0x0C]
	ldr r7, [r1, #0x10]
	mov r8, r7
	ldr r7, [r1, #0x14]
	mov r9, r7
	lsls r5, r5, #0x08
	movs r7, #0xF0
	lsls r7, r7, #0x04
	adds r5, r5, r7
	ldr r1, [r1, #0x18]
	adds r1, r1, r5
	str r1, [sp, #0x000]
	str r2, [sp, #0x004]
	add r1, sp, #0x008
	strb r3, [r1, #0x00]
	add r1, sp, #0x00C
	strb r4, [r1, #0x00]
	adds r1, r6, #0x0
	mov r2, r8
	mov r3, r9
	bl sub_80262CC
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8029788
sub_8029788:
	push {r4, lr}
	adds r1, r0, #0x0
	adds r4, r1, #0x0
	adds r4, #0xFC
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x15
	asrs r0, r0, #0x1C
	cmp r0, #0x00
	bne _080297A6
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	bl sub_805C6B8
_080297A6:
	ldrh r0, [r4, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x03
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80297B8
sub_80297B8:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x15
	asrs r0, r0, #0x1C
	cmp r0, #0x00
	bne _080297D4
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	bl sub_805BFF0
_080297D4:
	pop {r0}
	bx r0
	thumb_func_start sub_80297D8
sub_80297D8:
	push {r4, lr}
	adds r4, r0, #0x0
	cmp r1, #0x00
	bne _080297F8
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_805BED8
	adds r2, r4, #0x0
	adds r2, #0xFC
	ldrh r1, [r2, #0x00]
	ldr r0, _08029800 @ =0xFFFFF87F
	ands r0, r1
	strh r0, [r2, #0x00]
_080297F8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08029800: .4byte 0xFFFFF87F
