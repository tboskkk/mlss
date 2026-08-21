	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8158310
sub_8158310:
	push {lr}
	adds r2, r0, #0x0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x00
	bge _08158322
	movs r0, #0x00
	str r0, [r2, #0x1C]
	b _08158324
_08158322:
	str r1, [r2, #0x1C]
_08158324:
	adds r0, r2, #0x0
	bl sub_8158258
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8158330
sub_8158330:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08158340
	bl sub_8021308
_08158340:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0815834A
	bl sub_8021308
_0815834A:
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	beq _08158354
	bl sub_8021308
_08158354:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08158362
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_08158362:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8158368
sub_8158368:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, [sp, #0x010]
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	beq _081583D6
	cmp r0, #0x04
	beq _081583E6
	adds r0, r4, #0x0
	bl sub_8154950
	adds r0, r4, #0x0
	bl sub_8154AAC
	ldrh r0, [r4, #0x1C]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x18]
	adds r0, r0, r2
	strh r0, [r4, #0x18]
	movs r1, #0x14
	ldsh r0, [r4, r1]
	ldr r1, [r4, #0x04]
	adds r1, r1, r0
	str r1, [r4, #0x04]
	movs r0, #0x18
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	adds r0, r6, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	ldr r1, [r4, #0x08]
	cmp r1, r0
	ble _081583F4
	movs r0, #0x00
	strh r0, [r4, #0x18]
	ldr r1, [r4, #0x04]
	adds r0, r6, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r4, #0x08]
	b _081583F4
_081583D6:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	b _081583F4
_081583E6:
	ldr r1, [r4, #0x30]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
_081583F4:
	movs r0, #0x00
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0xB5, 0x00, 0x21, 0x24, 0x30, 0x00, 0x78, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x08, 0x1C
	.byte 0x02, 0xBC, 0x08, 0x47, 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x0C, 0x48, 0x00, 0x68, 0x0C, 0x49
	.byte 0x40, 0x18, 0x00, 0x88, 0x40, 0x42, 0x00, 0x21, 0x20, 0x83, 0x20, 0x68, 0x00, 0x91, 0x02, 0x21
	.byte 0x00, 0x22, 0x00, 0x23, 0xC5, 0xF6, 0x8E, 0xFE, 0x0A, 0x20, 0xE0, 0x86, 0x24, 0x34, 0x02, 0x20
	.byte 0x20, 0x70, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x18, 0x10, 0x00, 0x03
	.byte 0x1C, 0x1F, 0x00, 0x00
	thumb_func_start sub_8158450
sub_8158450:
	push {lr}
	ldr r2, _08158460 @ =0x08CDC5B0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08158460: .4byte 0x08CDC5B0
	thumb_func_start sub_8158464
sub_8158464:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	bl sub_815F8F4
	ldr r0, _0815848C @ =0x08CDC5B0
	str r0, [r4, #0x30]
	movs r0, #0x00
	strh r5, [r4, #0x34]
	strh r0, [r4, #0x36]
	strh r0, [r4, #0x38]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_0815848C: .4byte 0x08CDC5B0
	thumb_func_start sub_8158490
sub_8158490:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [sp, #0x00C]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	beq _081584F2
	cmp r0, #0x04
	beq _08158502
	ldrh r0, [r4, #0x1C]
	ldrh r2, [r4, #0x14]
	adds r0, r0, r2
	strh r0, [r4, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4, #0x20]
	adds r1, r1, r0
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r1, #0x14
	ldsh r0, [r4, r1]
	ldr r1, [r4, #0x04]
	adds r1, r1, r0
	str r1, [r4, #0x04]
	movs r0, #0x18
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	adds r0, r5, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	ldr r1, [r4, #0x08]
	cmp r1, r0
	ble _08158510
	ldr r1, [r4, #0x04]
	adds r0, r5, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r4, #0x08]
	b _08158510
_081584F2:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	b _08158510
_08158502:
	ldr r1, [r4, #0x30]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
_08158510:
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8158518
sub_8158518:
	push {lr}
	ldr r2, _08158528 @ =0x08CDC5F0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08158528: .4byte 0x08CDC5F0
	thumb_func_start sub_815852C
sub_815852C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _08158550 @ =0x08CDC5F0
	str r0, [r5, #0x30]
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08158550: .4byte 0x08CDC5F0
	.byte 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_8158558
sub_8158558:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	beq _0815856C
	cmp r0, #0x04
	beq _0815857C
	b _08158592
_0815856C:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	b _08158592
_0815857C:
	ldr r1, [r4, #0x30]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
_08158592:
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_815859C
sub_815859C:
	push {lr}
	ldr r2, _081585AC @ =0x08CDC670
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081585AC: .4byte 0x08CDC670
	thumb_func_start sub_81585B0
sub_81585B0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _081585D4 @ =0x08CDC670
	str r0, [r5, #0x30]
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081585D4: .4byte 0x08CDC670
	thumb_func_start sub_81585D8
sub_81585D8:
	push {lr}
	ldr r2, _081585E8 @ =0x08CDC630
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081585E8: .4byte 0x08CDC630
	thumb_func_start sub_81585EC
sub_81585EC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	bl sub_815F8F4
	ldr r0, _08158618 @ =0x08CDC630
	str r0, [r4, #0x30]
	strh r5, [r4, #0x34]
	ldr r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r0, [r4, #0x38]
	str r1, [r4, #0x3C]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08158618: .4byte 0x08CDC630
	thumb_func_start sub_815861C
sub_815861C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_815FAA4
	ldr r2, [r4, #0x34]
	cmp r2, #0x00
	beq _0815864A
	ldr r1, [r5, #0x00]
	ldr r0, [r4, #0x04]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x34]
	ldr r1, [r5, #0x04]
	ldr r0, _08158650 @ =0x03001014
	ldr r0, [r0, #0x00]
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r0, r0, #0x08
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x02]
_0815864A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08158650: .4byte 0x03001014
	thumb_func_start sub_8158654
sub_8158654:
	push {lr}
	ldr r2, _08158664 @ =0x08CDC6B0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08158664: .4byte 0x08CDC6B0
	thumb_func_start sub_8158668
sub_8158668:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r1, #0x0
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0x0
	cmp r0, #0x04
	beq _081586A2
	cmp r0, #0x04
	bgt _08158684
	cmp r0, #0x03
	beq _0815868A
	b _081586B4
_08158684:
	cmp r1, #0x0C
	beq _081586AA
	b _081586B4
_0815868A:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _081586F4
_081586A2:
	adds r0, r4, #0x0
	bl sub_815FAFC
	b _081586F4
_081586AA:
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	b _081586F4
_081586B4:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _081586C8
	cmp r0, #0x01
	ble _081586F4
	cmp r0, #0x02
	beq _081586D8
	b _081586F4
_081586C8:
	ldr r1, [r4, #0x04]
	adds r0, r2, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r4, #0x08]
	b _081586F4
_081586D8:
	adds r0, r4, #0x0
	movs r1, #0x3C
	bl sub_815FA70
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x12]
	movs r1, #0x07
	negs r1, r1
	ands r1, r2
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x12]
_081586F4:
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_81586FC
sub_81586FC:
	push {lr}
	ldr r2, _0815870C @ =0x08CDC6F0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815870C: .4byte 0x08CDC6F0
	thumb_func_start sub_8158710
sub_8158710:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _08158734 @ =0x08CDC6F0
	str r0, [r5, #0x30]
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08158734: .4byte 0x08CDC6F0
	thumb_func_start sub_8158738
sub_8158738:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_815FAA4
	ldr r2, [r4, #0x34]
	cmp r2, #0x00
	beq _0815875E
	ldr r1, [r5, #0x00]
	ldr r0, [r4, #0x04]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x34]
	ldr r1, [r5, #0x04]
	ldr r0, [r4, #0x08]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x02]
_0815875E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8158764
sub_8158764:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0815878C @ =0x08CDC730
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	cmp r0, #0x00
	beq _0815877C
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x34]
_0815877C:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_815FB14
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815878C: .4byte 0x08CDC730
