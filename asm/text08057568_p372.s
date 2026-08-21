	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8058278
sub_8058278:
	push {r4, r5, r6, lr}
	mov r12, r0
	movs r5, #0x00
_0805827E:
	lsls r2, r5, #0x01
	mov r3, r12
	adds r3, #0x4E
	adds r3, r3, r2
	mov r1, r12
	adds r1, #0x72
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x52
	movs r6, #0x00
	ldsh r4, [r0, r6]
	adds r0, #0x2C
	adds r0, r0, r2
	movs r6, #0x00
	ldsh r0, [r0, r6]
	muls r0, r4
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	mov r3, r12
	adds r3, #0x54
	adds r3, r3, r2
	mov r1, r12
	adds r1, #0x78
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x58
	movs r6, #0x00
	ldsh r4, [r0, r6]
	adds r0, #0x2C
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r4
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	adds r0, r5, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x01
	bls _0805827E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_80582DC
sub_80582DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	mov r12, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
_080582EE:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r5, _0805833C @ =room_solidity_index_table
	adds r1, r0, r5
	ldrh r0, [r1, #0x00]
	ldr r2, _08058340 @ =0x0000FFFF
	cmp r0, r2
	bne _0805830C
	b _08058454
_0805830C:
	lsls r0, r0, #0x02
	ldr r5, _08058344 @ =0x08754D74
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r6, r1, r0
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r3, r0, r1
	movs r0, #0x03
	ands r0, r3
	cmp r0, #0x00
	bne _08058348
	ldr r2, [sp, #0x000]
	lsls r1, r2, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r1
	movs r5, #0xFC
	ands r5, r3
	strh r5, [r0, #0x00]
	adds r4, r1, #0x0
	b _0805835E
	.byte 0x00, 0x00
_0805833C: .4byte room_solidity_index_table
_08058340: .4byte 0x0000FFFF
_08058344: .4byte 0x08754D74
_08058348:
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r1, r12
	adds r1, #0x2A
	adds r1, r1, r2
	asrs r0, r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x18
	strh r5, [r1, #0x00]
	adds r4, r2, #0x0
_0805835E:
	mov r1, r12
	adds r1, #0x30
	adds r1, r1, r4
	ldrb r0, [r6, #0x01]
	lsls r3, r0, #0x02
	adds r3, r3, r0
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x18
	strh r3, [r1, #0x00]
	mov r2, r12
	adds r2, #0x42
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _080584F0 @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x26]
	adds r2, #0x48
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	strh r0, [r2, #0x00]
	ldr r1, _080584F0 @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x28]
	adds r2, #0x36
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x04
	strh r0, [r2, #0x00]
	mov r2, r12
	adds r2, #0x3C
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	strh r0, [r2, #0x00]
	movs r0, #0x02
	mov r8, r0
	movs r1, #0x00
	mov r9, r1
	movs r0, #0x00
	cmp r0, r3
	bcs _08058454
	lsls r5, r5, #0x10
	str r5, [sp, #0x00C]
	lsrs r2, r5, #0x10
	str r2, [sp, #0x010]
	str r3, [sp, #0x004]
_080583D2:
	movs r2, #0x00
	adds r0, #0x01
	str r0, [sp, #0x018]
	ldr r5, [sp, #0x010]
	cmp r2, r5
	bcs _08058448
	ldr r0, [sp, #0x000]
	lsls r0, r0, #0x0B
	str r0, [sp, #0x014]
	movs r1, #0x98
	add r1, r12
	mov r10, r1
	ldr r5, [sp, #0x00C]
	lsrs r5, r5, #0x10
	str r5, [sp, #0x008]
_080583F0:
	mov r1, r8
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r1, r6, r1
	ldrb r4, [r1, #0x00]
	movs r5, #0x00
	adds r7, r2, #0x4
_08058402:
	movs r2, #0xC0
	ands r2, r4
	lsls r2, r2, #0x02
	mov r1, r8
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r1, r6, r1
	ldrb r3, [r1, #0x00]
	orrs r3, r2
	ldr r0, [sp, #0x014]
	add r0, r9
	mov r2, r10
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	lsls r0, r4, #0x1A
	lsrs r4, r0, #0x18
	mov r0, r9
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	adds r0, r5, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x03
	bls _08058402
	lsls r0, r7, #0x10
	lsrs r2, r0, #0x10
	ldr r5, [sp, #0x008]
	cmp r2, r5
	bcc _080583F0
_08058448:
	ldr r1, [sp, #0x018]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x004]
	cmp r0, r2
	bcc _080583D2
_08058454:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x02
	bhi _08058464
	b _080582EE
_08058464:
	movs r5, #0x00
	str r5, [sp, #0x000]
	ldr r4, _080584F4 @ =room_solidity_index_table
	ldr r3, _080584F0 @ =0x0000FFFF
_0805846C:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	cmp r0, r3
	bne _080584D2
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r2
	mov r5, r12
	ldrh r1, [r5, #0x2E]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x30
	adds r0, r0, r2
	ldrh r1, [r5, #0x34]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x36
	adds r0, r0, r2
	ldrh r1, [r5, #0x3A]
	strh r1, [r0, #0x00]
	mov r1, r12
	adds r1, #0x3C
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x42
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x46
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x48
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x4C
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
_080584D2:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x01
	bls _0805846C
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080584F0: .4byte 0x0000FFFF
_080584F4: .4byte room_solidity_index_table
	thumb_func_start sub_80584F8
sub_80584F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	adds r6, r0, #0x0
	ldr r0, _08058674 @ =0x00000579
	adds r1, r6, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x004]
_08058512:
	ldr r2, _08058678 @ =room_solidity_index_table
	movs r1, #0x02
	ldr r3, [sp, #0x004]
	subs r1, r1, r3
	lsls r1, r1, #0x01
	ldrh r0, [r6, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	ldr r0, _0805867C @ =0x0000FFFF
	adds r3, #0x01
	str r3, [sp, #0x030]
	cmp r1, r0
	bne _08058532
	b _0805879C
_08058532:
	adds r0, r6, #0x0
	adds r0, #0x8A
	ldr r4, [sp, #0x004]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08058546
	b _08058680
_08058546:
	lsls r1, r4, #0x01
	adds r0, r6, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r0, #0x4E
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
	adds r0, r6, #0x0
	adds r0, #0x54
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	movs r5, #0x12
	str r5, [sp, #0x00C]
	movs r0, #0x0D
	str r0, [sp, #0x010]
	movs r2, #0x00
	str r1, [sp, #0x038]
	str r1, [sp, #0x024]
_08058588:
	movs r3, #0x00
	lsls r7, r2, #0x10
	ldr r1, [sp, #0x00C]
	cmp r3, r1
	bge _08058662
	ldr r2, [sp, #0x014]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	asrs r1, r7, #0x10
	ldr r4, [sp, #0x018]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	str r1, [sp, #0x020]
	str r1, [sp, #0x028]
	movs r5, #0x42
	adds r5, r5, r6
	mov r10, r5
	movs r0, #0x48
	adds r0, r0, r6
	mov r9, r0
	ldr r1, [sp, #0x004]
	lsls r1, r1, #0x0B
	str r1, [sp, #0x02C]
	adds r2, r6, #0x0
	adds r2, #0x98
	str r2, [sp, #0x034]
_080585C2:
	lsls r1, r3, #0x10
	asrs r0, r1, #0x10
	ldr r3, [sp, #0x01C]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ldr r5, [sp, #0x020]
	lsrs r4, r5, #0x10
	lsrs r5, r0, #0x10
	mov r8, r1
	cmp r0, #0x00
	bge _080585E8
	ldr r0, [sp, #0x038]
	add r0, r10
	ldrh r1, [r0, #0x00]
_080585DE:
	adds r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	blt _080585DE
_080585E8:
	lsls r0, r4, #0x10
	lsls r1, r5, #0x10
	cmp r0, #0x00
	bge _08058600
	ldr r0, [sp, #0x038]
	add r0, r9
	ldrh r2, [r0, #0x00]
_080585F6:
	adds r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	blt _080585F6
_08058600:
	asrs r0, r1, #0x10
	ldr r1, [sp, #0x024]
	add r1, r10
	ldrh r1, [r1, #0x00]
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x024]
	add r1, r9
	ldrh r1, [r1, #0x00]
	bl __modsi3
	mov r1, r8
	asrs r4, r1, #0x10
	ldr r3, [sp, #0x01C]
	adds r2, r3, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x008]
	muls r0, r1
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x02C]
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r5, [sp, #0x034]
	ldr r1, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	ldr r1, [sp, #0x004]
	ldr r5, [sp, #0x028]
	asrs r3, r5, #0x10
	bl sub_8058898
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x00C]
	cmp r4, r0
	blt _080585C2
_08058662:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r7, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x010]
	cmp r0, r3
	blt _08058588
	b _0805879C
_08058674: .4byte 0x00000579
_08058678: .4byte room_solidity_index_table
_0805867C: .4byte 0x0000FFFF
_08058680:
	ldr r4, [sp, #0x004]
	lsls r2, r4, #0x01
	adds r0, r6, #0x0
	adds r0, #0x2A
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r0, #0x4E
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
	adds r0, r6, #0x0
	adds r0, #0x54
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x14
	subs r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	movs r5, #0x12
	str r5, [sp, #0x00C]
	movs r0, #0x0D
	str r0, [sp, #0x010]
	cmp r1, #0x00
	bne _080586D4
	movs r4, #0x11
	str r4, [sp, #0x00C]
	ldr r5, [sp, #0x014]
	lsls r0, r5, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x09
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
_080586D4:
	adds r1, #0x0F
	adds r0, r6, #0x0
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _080586EC
	ldr r0, [sp, #0x00C]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
_080586EC:
	adds r1, r3, #0x0
	cmp r1, #0x00
	bne _08058704
	movs r5, #0x0C
	str r5, [sp, #0x010]
	ldr r3, [sp, #0x018]
	lsls r0, r3, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x09
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
_08058704:
	adds r1, #0x0A
	adds r0, r6, #0x0
	adds r0, #0x48
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _0805871C
	ldr r0, [sp, #0x00C]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
_0805871C:
	movs r2, #0x00
	ldr r5, [sp, #0x010]
	cmp r2, r5
	bge _0805879C
	ldr r1, [sp, #0x018]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r10, r0
_0805872C:
	movs r3, #0x00
	lsls r7, r2, #0x10
	ldr r2, [sp, #0x00C]
	cmp r3, r2
	bge _0805878C
	ldr r4, [sp, #0x014]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x03C]
	asrs r0, r7, #0x10
	add r0, r10
	lsls r5, r0, #0x10
	mov r9, r5
	ldr r2, [sp, #0x008]
	adds r1, r0, #0x0
	muls r1, r2
	mov r8, r1
_0805874E:
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	ldr r3, [sp, #0x03C]
	adds r2, r4, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r5, [sp, #0x004]
	lsls r0, r5, #0x0B
	add r0, r8
	adds r0, r0, r4
	adds r0, r0, r3
	adds r1, r6, #0x0
	adds r1, #0x98
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	mov r5, r9
	asrs r3, r5, #0x10
	bl sub_8058898
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x00C]
	cmp r4, r0
	blt _0805874E
_0805878C:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r7, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x010]
	cmp r0, r3
	blt _0805872C
_0805879C:
	ldr r4, [sp, #0x030]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	cmp r0, #0x02
	bhi _080587AA
	b _08058512
_080587AA:
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80587BC
sub_80587BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _0805887C @ =0x086FFC20
	mov r9, r6
	ldr r3, _08058880 @ =0x03000DD0
	ldrb r7, [r3, #0x04]
	ldr r2, _08058884 @ =0x083AAC4C
	lsls r1, r7, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r6
	ldr r1, [r1, #0x00]
	adds r5, r1, r6
	movs r4, #0x00
	mov r10, r3
	mov r8, r2
	adds r2, r0, #0x0
	adds r2, #0xA8
	ldr r3, _08058888 @ =0x000007FF
	mov r12, r2
_080587EC:
	ldr r1, [r2, #0x00]
	lsls r0, r4, #0x01
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r3
	bls _080587EC
	lsls r0, r7, #0x02
	add r0, r8
	ldrh r0, [r0, #0x02]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r5, r6, r0
	movs r4, #0x00
	mov r2, r12
	movs r7, #0x80
	lsls r7, r7, #0x05
	ldr r6, _08058888 @ =0x000007FF
_0805881A:
	ldr r1, [r2, #0x00]
	lsls r0, r4, #0x01
	adds r1, r0, r1
	adds r1, r1, r7
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bls _0805881A
	mov r1, r10
	ldrb r0, [r1, #0x0A]
	cmp r0, #0x00
	beq _0805886E
	ldr r2, _0805888C @ =0x089744D0
	ldr r1, _08058890 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldrh r0, [r0, #0x04]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r5, r0, r2
	movs r4, #0x00
	mov r2, r12
	movs r6, #0x80
	lsls r6, r6, #0x06
	ldr r3, _08058894 @ =0x000003FF
_08058856:
	ldr r1, [r2, #0x00]
	lsls r0, r4, #0x01
	adds r1, r0, r1
	adds r1, r1, r6
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r3
	bls _08058856
_0805886E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805887C: .4byte 0x086FFC20
_08058880: .4byte 0x03000DD0
_08058884: .4byte 0x083AAC4C
_08058888: .4byte 0x000007FF
_0805888C: .4byte 0x089744D0
_08058890: .4byte 0x083B7108
_08058894: .4byte 0x000003FF
	thumb_func_start sub_8058898
sub_8058898:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r7, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _080588E0
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	b _0805890A
_080588E0:
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r4, r5, #0x0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	adds r2, r2, r4
_0805890A:
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r4, r6, #0x0
	adds r4, #0x94
	ldr r1, [r4, #0x00]
	lsls r2, r0, #0x01
	adds r1, r2, r1
	mov r0, r12
	lsls r3, r0, #0x03
	adds r3, r3, r7
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, [r4, #0x00]
	lsls r2, r5, #0x01
	adds r0, r2, r0
	ldrh r1, [r3, #0x04]
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x06]
	strh r0, [r2, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8058944
sub_8058944:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x050
	mov r10, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r9, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	adds r0, #0x8A
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r12, r0
	cmp r0, #0x00
	beq _0805897A
	b _08058B84
_0805897A:
	ldr r0, [sp, #0x008]
	lsls r2, r0, #0x01
	mov r5, r10
	adds r5, #0x4E
	adds r7, r5, r2
	ldrh r3, [r7, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
	mov r4, r10
	adds r4, #0x54
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	mov r6, r9
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	strh r0, [r7, #0x00]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r6, [r1, #0x00]
	adds r0, r0, r6
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	adds r6, r2, #0x0
	str r5, [sp, #0x03C]
	str r4, [sp, #0x040]
	cmp r0, #0x00
	bge _080589CC
	mov r2, r12
	strh r2, [r7, #0x00]
	b _080589E0
_080589CC:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	mov r1, r10
	adds r1, #0x36
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	subs r1, #0xF0
	cmp r0, r1
	ble _080589E0
	strh r1, [r7, #0x00]
_080589E0:
	ldr r5, [sp, #0x040]
	adds r2, r5, r6
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _080589F2
	movs r0, #0x00
	strh r0, [r2, #0x00]
	b _08058A06
_080589F2:
	movs r3, #0x00
	ldsh r0, [r2, r3]
	mov r1, r10
	adds r1, #0x3C
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	cmp r0, r1
	ble _08058A06
	strh r1, [r2, #0x00]
_08058A06:
	ldr r5, [sp, #0x03C]
	adds r0, r5, r6
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	ldr r2, [sp, #0x040]
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsrs r3, r1, #0x10
	str r3, [sp, #0x01C]
	asrs r1, r1, #0x10
	ldr r5, [sp, #0x00C]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08058A90
	adds r0, #0x01
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	mov r3, r8
	lsls r7, r3, #0x10
	ldr r5, [sp, #0x010]
	lsls r5, r5, #0x10
	mov r9, r5
	mov r3, r10
	adds r3, #0x5A
	str r3, [sp, #0x044]
	mov r5, r10
	adds r5, #0x60
	str r5, [sp, #0x048]
	cmp r0, r1
	bgt _08058AE0
	mov r0, r10
	adds r0, #0x42
	adds r0, r0, r6
	mov r8, r0
	ldr r0, _08058A8C @ =0xFFFF0000
	adds r5, r7, r0
_08058A5E:
	asrs r4, r2, #0x10
	mov r1, r8
	ldrh r0, [r1, #0x00]
	subs r0, #0x10
	cmp r4, r0
	bge _08058A7C
	adds r2, r4, #0x0
	adds r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r3, r5, #0x10
	bl sub_805905C
_08058A7C:
	adds r0, r4, #0x1
	lsls r2, r0, #0x10
	ldr r3, [sp, #0x01C]
	lsls r0, r3, #0x10
	cmp r2, r0
	ble _08058A5E
	b _08058AE0
	.byte 0x00, 0x00
_08058A8C: .4byte 0xFFFF0000
_08058A90:
	mov r5, r8
	lsls r7, r5, #0x10
	ldr r2, [sp, #0x010]
	lsls r2, r2, #0x10
	mov r9, r2
	mov r3, r10
	adds r3, #0x5A
	str r3, [sp, #0x044]
	mov r5, r10
	adds r5, #0x60
	str r5, [sp, #0x048]
	cmp r1, r0
	bge _08058AE0
	subs r0, #0x01
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, r1
	blt _08058AE0
	ldr r0, _08058B2C @ =0xFFFF0000
	adds r0, r0, r7
	mov r8, r0
	str r1, [sp, #0x04C]
_08058ABC:
	asrs r4, r2, #0x10
	cmp r4, #0x00
	ble _08058AD4
	subs r2, r4, #0x1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	mov r5, r8
	asrs r3, r5, #0x10
	bl sub_805905C
_08058AD4:
	subs r0, r4, #0x1
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	ldr r1, [sp, #0x04C]
	cmp r0, r1
	bge _08058ABC
_08058AE0:
	asrs r1, r7, #0x10
	mov r2, r9
	asrs r0, r2, #0x10
	cmp r1, r0
	ble _08058B30
	adds r0, #0x01
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, r1
	bgt _08058B64
	mov r0, r10
	adds r0, #0x48
	adds r0, r0, r6
	mov r8, r0
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058B2C @ =0xFFFF0000
	adds r5, r0, r1
_08058B04:
	asrs r4, r3, #0x10
	mov r2, r8
	ldrh r0, [r2, #0x00]
	subs r0, #0x0B
	cmp r4, r0
	bge _08058B22
	adds r3, r4, #0x0
	adds r3, #0x0B
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r2, r5, #0x10
	bl sub_8058ED0
_08058B22:
	adds r0, r4, #0x1
	lsls r3, r0, #0x10
	cmp r3, r7
	ble _08058B04
	b _08058B64
_08058B2C: .4byte 0xFFFF0000
_08058B30:
	cmp r1, r0
	bge _08058B64
	subs r0, #0x01
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, r1
	blt _08058B64
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058B80 @ =0xFFFF0000
	adds r5, r0, r1
_08058B46:
	asrs r4, r3, #0x10
	cmp r4, #0x00
	ble _08058B5C
	subs r3, r4, #0x1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r2, r5, #0x10
	bl sub_8058ED0
_08058B5C:
	subs r0, r4, #0x1
	lsls r3, r0, #0x10
	cmp r3, r7
	bge _08058B46
_08058B64:
	ldr r2, [sp, #0x044]
	adds r1, r2, r6
	ldr r3, [sp, #0x03C]
	adds r0, r3, r6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r5, [sp, #0x048]
	adds r1, r5, r6
	ldr r2, [sp, #0x040]
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	b _08058EBC
	.byte 0x00, 0x00
_08058B80: .4byte 0xFFFF0000
_08058B84:
	ldr r3, [sp, #0x008]
	lsls r6, r3, #0x01
	mov r3, r10
	adds r3, #0x5A
	adds r3, r3, r6
	ldrh r1, [r3, #0x00]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
	mov r2, r10
	adds r2, #0x60
	adds r2, r2, r6
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	mov r5, r9
	lsls r5, r5, #0x10
	mov r12, r5
	asrs r5, r5, #0x10
	adds r1, r5, r1
	strh r1, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	mov r0, r8
	lsls r0, r0, #0x10
	mov r9, r0
	asrs r4, r0, #0x10
	adds r1, r4, r1
	strh r1, [r2, #0x00]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x020]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x024]
	movs r1, #0x4E
	add r1, r10
	mov r8, r1
	adds r7, r1, r6
	ldrh r2, [r7, #0x00]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
	mov r3, r10
	adds r3, #0x54
	adds r1, r3, r6
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	adds r5, r5, r2
	strh r5, [r7, #0x00]
	ldrh r0, [r1, #0x00]
	adds r4, r4, r0
	strh r4, [r1, #0x00]
	ldrh r2, [r7, #0x00]
	movs r5, #0x00
	ldsh r0, [r7, r5]
	mov r1, r8
	str r1, [sp, #0x03C]
	str r3, [sp, #0x040]
	mov r3, r12
	str r3, [sp, #0x034]
	mov r5, r9
	str r5, [sp, #0x038]
	cmp r0, #0x00
	bge _08058C30
	mov r0, r10
	adds r0, #0x36
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	adds r0, r2, r0
	b _08058C42
_08058C30:
	movs r0, #0x00
	ldsh r1, [r7, r0]
	mov r0, r10
	adds r0, #0x36
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08058C44
	subs r0, r2, r0
_08058C42:
	strh r0, [r7, #0x00]
_08058C44:
	ldr r1, [sp, #0x040]
	adds r2, r1, r6
	ldrh r3, [r2, #0x00]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _08058C5E
	mov r0, r10
	adds r0, #0x3C
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	adds r0, r3, r0
	b _08058C70
_08058C5E:
	movs r0, #0x00
	ldsh r1, [r2, r0]
	mov r0, r10
	adds r0, #0x3C
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08058C72
	subs r0, r3, r0
_08058C70:
	strh r0, [r2, #0x00]
_08058C72:
	ldr r1, [sp, #0x03C]
	adds r0, r1, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	ldr r2, [sp, #0x040]
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [sp, #0x034]
	cmp r3, #0x00
	ble _08058D1C
	ldr r5, [sp, #0x020]
	lsls r1, r5, #0x10
	ldr r2, [sp, #0x014]
	lsls r0, r2, #0x10
	adds r5, r0, #0x0
	cmp r1, r5
	beq _08058D1C
	movs r4, #0x00
	ldr r3, [sp, #0x00C]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x028]
	mov r0, r10
	adds r0, #0x42
	adds r0, r0, r6
	mov r9, r0
	b _08058CFE
_08058CBA:
	adds r4, r7, #0x0
	adds r4, #0x10
	ldr r1, [sp, #0x028]
	adds r0, r1, r4
	mov r2, r9
	ldrh r1, [r2, #0x00]
	bl __modsi3
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	ldr r1, _08058D18 @ =0xFFFF0000
	adds r3, r3, r1
	asrs r0, r5, #0x10
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x10
	ldr r1, _08058D18 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r3, r3, #0x10
	bl sub_80592C8
	adds r0, r7, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08058CFE:
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	ldr r2, [sp, #0x034]
	asrs r0, r2, #0x10
	cmp r0, #0x00
	bge _08058D0C
	adds r0, #0x0F
_08058D0C:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r7, r0
	blt _08058CBA
	b _08058DA2
	.byte 0x00, 0x00
_08058D18: .4byte 0xFFFF0000
_08058D1C:
	ldr r3, [sp, #0x034]
	asrs r2, r3, #0x10
	cmp r2, #0x00
	bge _08058DA2
	ldr r5, [sp, #0x020]
	lsls r1, r5, #0x10
	ldr r3, [sp, #0x014]
	lsls r0, r3, #0x10
	adds r5, r0, #0x0
	cmp r1, r5
	beq _08058DA2
	negs r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	movs r4, #0x00
	ldr r1, [sp, #0x00C]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x02C]
	mov r0, r10
	adds r0, #0x42
	adds r7, r0, r6
	b _08058D8A
_08058D4C:
	adds r4, #0x01
	ldr r2, [sp, #0x02C]
	subs r0, r2, r4
	ldrh r1, [r7, #0x00]
	bl __modsi3
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	ldr r1, _08058DCC @ =0xFFFF0000
	adds r3, r3, r1
	asrs r0, r5, #0x10
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x10
	ldr r1, _08058DCC @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r3, r3, #0x10
	bl sub_80592C8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
_08058D8A:
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bge _08058D9A
	adds r0, #0x0F
_08058D9A:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r4, r0
	blt _08058D4C
_08058DA2:
	ldr r3, [sp, #0x038]
	cmp r3, #0x00
	ble _08058E2C
	ldr r5, [sp, #0x024]
	lsls r1, r5, #0x10
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	adds r7, r0, #0x0
	cmp r1, r7
	beq _08058E2C
	movs r4, #0x00
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058DCC @ =0xFFFF0000
	adds r5, r0, r1
	b _08058E10
	.byte 0x00, 0x00
_08058DCC: .4byte 0xFFFF0000
_08058DD0:
	adds r0, r4, #0x0
	adds r0, #0x0B
	add r0, r8
	mov r1, r10
	adds r1, #0x48
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	bl __modsi3
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldr r2, [sp, #0x020]
	lsls r0, r2, #0x10
	ldr r1, _08058E28 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	asrs r0, r7, #0x10
	adds r0, r0, r4
	adds r0, #0x0B
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r2, r5, #0x10
	bl sub_8059190
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08058E10:
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	ldr r2, [sp, #0x038]
	asrs r0, r2, #0x10
	cmp r0, #0x00
	bge _08058E1E
	adds r0, #0x0F
_08058E1E:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r4, r0
	blt _08058DD0
	b _08058EBC
_08058E28: .4byte 0xFFFF0000
_08058E2C:
	ldr r5, [sp, #0x038]
	asrs r3, r5, #0x10
	cmp r3, #0x00
	bge _08058EBC
	ldr r0, [sp, #0x024]
	lsls r1, r0, #0x10
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	adds r7, r0, #0x0
	cmp r1, r7
	beq _08058EBC
	negs r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r4, #0x00
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x030]
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058E60 @ =0xFFFF0000
	adds r1, r1, r0
	mov r9, r1
	b _08058EA4
_08058E60: .4byte 0xFFFF0000
_08058E64:
	adds r4, r5, #0x1
	ldr r2, [sp, #0x030]
	subs r0, r2, r4
	mov r1, r10
	adds r1, #0x48
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	bl __modsi3
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldr r1, [sp, #0x020]
	lsls r0, r1, #0x10
	ldr r2, _08058ECC @ =0xFFFF0000
	adds r0, r0, r2
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	asrs r0, r7, #0x10
	subs r0, r0, r5
	subs r0, #0x01
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	mov r5, r9
	asrs r2, r5, #0x10
	bl sub_8059190
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
_08058EA4:
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bge _08058EB4
	adds r0, #0x0F
_08058EB4:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r5, r0
	blt _08058E64
_08058EBC:
	add sp, #0x050
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08058ECC: .4byte 0xFFFF0000
	thumb_func_start sub_8058ED0
sub_8058ED0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r12, r1
	lsls r2, r2, #0x10
	adds r0, #0xA8
	ldr r7, [r0, #0x00]
	ldr r0, _08058FD0 @ =0x00000579
	adds r1, r4, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	lsrs r1, r2, #0x10
	mov r9, r1
	asrs r2, r2, #0x10
	mov r8, r2
	movs r0, #0x0F
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ands r0, r3
	mov r2, r12
	lsls r5, r2, #0x0B
	lsls r1, r0, #0x06
	adds r1, r5, r1
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x000]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x05
	adds r0, r5, r0
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x004]
	movs r6, #0x80
	lsls r6, r6, #0x03
	adds r2, r6, #0x0
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r2, _08058FD4 @ =room_solidity_index_table
	movs r0, #0x02
	mov r1, r12
	subs r0, r0, r1
	lsls r0, r0, #0x01
	ldrh r1, [r4, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _08058FD8 @ =0x0000FFFF
	cmp r1, r0
	beq _0805904A
	mov r2, r12
	lsls r1, r2, #0x01
	adds r0, r4, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	mov r6, r8
	cmp r6, #0x00
	bge _08058F64
	movs r1, #0x00
	mov r9, r1
_08058F64:
	adds r1, r3, #0x0
	muls r1, r0
	adds r1, r5, r1
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r6, #0x00
	mov r12, r6
	adds r6, r4, #0x0
	adds r6, #0x94
	adds r5, r4, #0x0
	adds r5, #0x98
_08058F84:
	mov r0, r12
	add r0, r9
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0x00
	beq _08058FDC
	movs r0, #0x0F
	ands r4, r0
	lsls r4, r4, #0x01
	ldr r0, [sp, #0x008]
	adds r3, r0, r4
	ldr r1, [r6, #0x00]
	lsls r3, r3, #0x01
	adds r1, r3, r1
	mov r2, r8
	add r2, r12
	ldr r0, [r5, #0x00]
	lsls r2, r2, #0x01
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r3, r3, r0
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x02]
	strh r0, [r3, #0x02]
	add r4, r10
	b _08059016
	.byte 0x00, 0x00
_08058FD0: .4byte 0x00000579
_08058FD4: .4byte room_solidity_index_table
_08058FD8: .4byte 0x0000FFFF
_08058FDC:
	movs r0, #0x0F
	ands r4, r0
	lsls r4, r4, #0x01
	ldr r1, [sp, #0x000]
	adds r3, r1, r4
	ldr r1, [r6, #0x00]
	lsls r3, r3, #0x01
	adds r1, r3, r1
	mov r2, r8
	add r2, r12
	ldr r0, [r5, #0x00]
	lsls r2, r2, #0x01
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r3, r3, r0
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x02]
	strh r0, [r3, #0x02]
	ldr r0, [sp, #0x004]
	adds r4, r0, r4
_08059016:
	ldr r1, [r6, #0x00]
	lsls r4, r4, #0x01
	adds r1, r4, r1
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r4, r4, r0
	ldr r0, [r5, #0x00]
	adds r2, r2, r0
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x06]
	strh r0, [r4, #0x02]
	mov r0, r12
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	cmp r0, #0x11
	bls _08058F84
_0805904A:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805905C
sub_805905C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r3, r3, #0x10
	adds r0, #0xA8
	ldr r6, [r0, #0x00]
	ldr r0, _08059108 @ =0x00000579
	adds r1, r4, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r12, r2
	movs r0, #0x0F
	ands r0, r2
	lsrs r1, r3, #0x10
	mov r10, r1
	asrs r3, r3, #0x10
	lsls r7, r5, #0x0B
	lsls r0, r0, #0x01
	adds r0, r7, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x000]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	ldr r2, _0805910C @ =room_solidity_index_table
	movs r0, #0x02
	subs r0, r0, r5
	lsls r0, r0, #0x01
	ldrh r1, [r4, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _08059110 @ =0x0000FFFF
	cmp r1, r0
	beq _0805917E
	lsls r1, r5, #0x01
	adds r0, r4, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	mov r9, r0
	cmp r3, #0x00
	bge _080590D0
	movs r0, #0x00
	mov r10, r0
_080590D0:
	mov r1, r10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, r9
	muls r2, r0
	adds r0, r2, #0x0
	adds r0, r7, r0
	add r0, r12
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0x00
	mov r8, r0
	adds r5, r4, #0x0
	adds r5, #0x94
	adds r4, #0x98
_080590EE:
	mov r0, r8
	add r0, r10
	movs r1, #0x0F
	ands r0, r1
	lsls r1, r0, #0x06
	movs r0, #0x10
	mov r2, r12
	ands r0, r2
	cmp r0, #0x00
	beq _08059114
	ldr r0, [sp, #0x004]
	b _08059116
	.byte 0x00, 0x00
_08059108: .4byte 0x00000579
_0805910C: .4byte room_solidity_index_table
_08059110: .4byte 0x0000FFFF
_08059114:
	ldr r0, [sp, #0x000]
_08059116:
	adds r2, r0, r1
	ldr r1, [r5, #0x00]
	lsls r2, r2, #0x01
	adds r1, r2, r1
	ldr r0, [r4, #0x00]
	lsls r3, r7, #0x01
	adds r0, r3, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, r2, r1
	ldr r0, [r4, #0x00]
	adds r0, r3, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
	ldr r1, [r5, #0x00]
	adds r1, r2, r1
	adds r1, #0x40
	ldr r0, [r4, #0x00]
	adds r0, r3, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	adds r2, r2, r0
	adds r2, #0x42
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x06]
	strh r0, [r2, #0x00]
	mov r1, r9
	adds r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0x0C
	bls _080590EE
_0805917E:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8059190
sub_8059190:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	ldr r0, [sp, #0x034]
	ldr r4, [sp, #0x038]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r12, r4
	ldr r0, _08059204 @ =0x00000579
	adds r1, r5, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _08059208 @ =room_solidity_index_table
	movs r0, #0x02
	mov r1, r9
	subs r0, r0, r1
	lsls r0, r0, #0x01
	ldrh r1, [r5, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _0805920C @ =0x0000FFFF
	cmp r1, r0
	beq _080592B6
	mov r2, r9
	lsls r0, r2, #0x01
	adds r1, r5, #0x0
	adds r1, #0x2A
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	mov r10, r1
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	str r0, [sp, #0x010]
	cmp r1, #0x00
	bge _08059210
	adds r0, r5, #0x0
	adds r0, #0x48
	ldr r4, [sp, #0x010]
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	adds r0, r0, r3
	b _08059220
_08059204: .4byte 0x00000579
_08059208: .4byte room_solidity_index_table
_0805920C: .4byte 0x0000FFFF
_08059210:
	adds r0, r5, #0x0
	adds r0, #0x48
	ldr r7, [sp, #0x010]
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08059224
	subs r0, r3, r0
_08059220:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08059224:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bge _08059240
	adds r1, r5, #0x0
	adds r1, #0x42
	ldr r2, [sp, #0x010]
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r8, r1
	b _08059256
_08059240:
	adds r1, r5, #0x0
	adds r1, #0x42
	ldr r4, [sp, #0x010]
	adds r0, r1, r4
	ldrh r0, [r0, #0x00]
	mov r8, r1
	cmp r2, r0
	blt _08059256
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08059256:
	movs r4, #0x00
	mov r7, r12
	lsls r7, r7, #0x10
	str r7, [sp, #0x00C]
	lsls r0, r3, #0x10
	mov r2, r9
	lsls r1, r2, #0x0B
	adds r3, r5, #0x0
	adds r3, #0x98
	str r3, [sp, #0x008]
	asrs r0, r0, #0x10
	mov r7, r10
	muls r7, r0
	adds r0, r7, #0x0
	adds r1, r1, r0
	mov r10, r1
_08059276:
	adds r0, r4, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x010]
	add r1, r8
	ldrh r1, [r1, #0x00]
	bl __modsi3
	ldr r1, [sp, #0x004]
	adds r2, r4, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r0, r10
	ldr r3, [sp, #0x008]
	ldr r1, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r9
	ldr r7, [sp, #0x00C]
	asrs r3, r7, #0x10
	bl sub_8058898
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x11
	bls _08059276
_080592B6:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80592C8
sub_80592C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r5, r0, #0x0
	ldr r0, [sp, #0x03C]
	ldr r4, [sp, #0x040]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r10, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x004]
	ldr r0, _08059340 @ =0x00000579
	adds r1, r5, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _08059344 @ =room_solidity_index_table
	movs r0, #0x02
	mov r1, r10
	subs r0, r0, r1
	lsls r0, r0, #0x01
	ldrh r1, [r5, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _08059348 @ =0x0000FFFF
	cmp r1, r0
	beq _080593EA
	mov r2, r10
	lsls r0, r2, #0x01
	adds r1, r5, #0x0
	adds r1, #0x2A
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	str r1, [sp, #0x008]
	lsls r1, r6, #0x10
	asrs r2, r1, #0x10
	mov r8, r0
	cmp r2, #0x00
	bge _0805934C
	adds r1, r5, #0x0
	adds r1, #0x48
	adds r0, r1, r0
	ldrh r0, [r0, #0x00]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r9, r1
	b _08059362
	.byte 0x00, 0x00
_08059340: .4byte 0x00000579
_08059344: .4byte room_solidity_index_table
_08059348: .4byte 0x0000FFFF
_0805934C:
	adds r1, r5, #0x0
	adds r1, #0x48
	mov r4, r8
	adds r0, r1, r4
	ldrh r0, [r0, #0x00]
	mov r9, r1
	cmp r2, r0
	blt _08059362
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08059362:
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x00
	bge _08059376
	adds r0, r5, #0x0
	adds r0, #0x42
	add r0, r8
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	b _08059384
_08059376:
	adds r0, r5, #0x0
	adds r0, #0x42
	add r0, r8
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08059388
	subs r0, r7, r0
_08059384:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08059388:
	movs r4, #0x00
	lsls r3, r3, #0x10
	str r3, [sp, #0x014]
	mov r0, r10
	lsls r0, r0, #0x0B
	str r0, [sp, #0x00C]
	adds r1, r5, #0x0
	adds r1, #0x98
	str r1, [sp, #0x010]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x018]
_080593A0:
	adds r0, r4, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r9
	add r1, r8
	ldrh r1, [r1, #0x00]
	bl __modsi3
	ldr r2, [sp, #0x004]
	adds r3, r4, r2
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r7, [sp, #0x008]
	muls r0, r7
	ldr r1, [sp, #0x00C]
	adds r0, r1, r0
	ldr r2, [sp, #0x018]
	adds r0, r0, r2
	ldr r7, [sp, #0x010]
	ldr r1, [r7, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r10
	ldr r7, [sp, #0x014]
	asrs r2, r7, #0x10
	bl sub_8058898
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x0C
	bls _080593A0
_080593EA:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0x09, 0x06, 0x08, 0x0E, 0x12, 0x04, 0x12, 0x0C, 0x10, 0x28, 0x00, 0xD9
	.byte 0x8B, 0xE0, 0x80, 0x00, 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x00, 0x00, 0x1C, 0x94
	.byte 0x05, 0x08, 0x60, 0x94, 0x05, 0x08, 0x6C, 0x94, 0x05, 0x08, 0x78, 0x94, 0x05, 0x08, 0x84, 0x94
	.byte 0x05, 0x08, 0x90, 0x94, 0x05, 0x08, 0x9C, 0x94, 0x05, 0x08, 0xA8, 0x94, 0x05, 0x08, 0xB4, 0x94
	.byte 0x05, 0x08, 0xC0, 0x94, 0x05, 0x08, 0xCC, 0x94, 0x05, 0x08, 0xD8, 0x94, 0x05, 0x08, 0xE4, 0x94
	.byte 0x05, 0x08, 0xF0, 0x94, 0x05, 0x08, 0xFC, 0x94, 0x05, 0x08, 0x08, 0x95, 0x05, 0x08, 0x14, 0x95
	.byte 0x05, 0x08, 0x20, 0x95, 0x05, 0x08, 0x01, 0x48, 0x02, 0x70, 0x5E, 0xE0, 0x00, 0x00, 0xD0, 0x0D
	.byte 0x00, 0x03, 0x01, 0x48, 0x82, 0x70, 0x58, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48
	.byte 0xC2, 0x70, 0x52, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x02, 0x71, 0x4C, 0xE0
	.byte 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x42, 0x71, 0x46, 0xE0, 0x00, 0x00, 0xD0, 0x0D
	.byte 0x00, 0x03, 0x01, 0x48, 0x82, 0x71, 0x40, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48
	.byte 0xC2, 0x71, 0x3A, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x02, 0x72, 0x34, 0xE0
	.byte 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x42, 0x72, 0x2E, 0xE0, 0x00, 0x00, 0xD0, 0x0D
	.byte 0x00, 0x03, 0x01, 0x48, 0x82, 0x72, 0x28, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48
	.byte 0xC2, 0x72, 0x22, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x82, 0x81, 0x1C, 0xE0
	.byte 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0xC2, 0x81, 0x16, 0xE0, 0x00, 0x00, 0xD0, 0x0D
	.byte 0x00, 0x03, 0x01, 0x48, 0x02, 0x82, 0x10, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48
	.byte 0x42, 0x82, 0x0A, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x02, 0x75, 0x04, 0xE0
	.byte 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x42, 0x70, 0x01, 0xBC, 0x00, 0x47, 0xD0, 0x0D
	.byte 0x00, 0x03
	thumb_func_start sub_805952C
sub_805952C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	strh r1, [r7, #0x22]
	strh r2, [r7, #0x24]
	movs r0, #0x02
_08059540:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	str r0, [sp, #0x004]
	cmp r2, #0x02
	beq _08059634
	adds r0, r7, #0x0
	adds r0, #0x8A
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r10, r0
	cmp r0, #0x00
	bne _08059634
	lsls r6, r2, #0x01
	movs r0, #0x4E
	adds r0, r0, r7
	mov r8, r0
	adds r0, r0, r6
	mov r12, r0
	adds r1, r7, #0x0
	adds r1, #0x72
	adds r1, r1, r6
	movs r2, #0x5E
	adds r2, r2, r7
	mov r9, r2
	movs r3, #0x00
	ldsh r2, [r2, r3]
	adds r0, r7, #0x0
	adds r0, #0x7E
	adds r0, r0, r6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r0, r2
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	mov r1, r12
	strh r0, [r1, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x54
	adds r2, r4, r6
	str r2, [sp, #0x008]
	adds r1, r7, #0x0
	adds r1, #0x78
	adds r1, r1, r6
	adds r3, r7, #0x0
	adds r3, #0x64
	movs r5, #0x00
	ldsh r2, [r3, r5]
	adds r0, r7, #0x0
	adds r0, #0x84
	adds r0, r0, r6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r0, r2
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r1, [sp, #0x008]
	strh r0, [r1, #0x00]
	mov r2, r12
	movs r5, #0x00
	ldsh r0, [r2, r5]
	adds r5, r4, #0x0
	str r3, [sp, #0x000]
	cmp r0, #0x00
	bge _080595D2
	mov r0, r10
	strh r0, [r2, #0x00]
	b _080595EA
_080595D2:
	mov r1, r12
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r1, r7, #0x0
	adds r1, #0x36
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	subs r1, #0xF0
	cmp r0, r1
	ble _080595EA
	mov r3, r12
	strh r1, [r3, #0x00]
_080595EA:
	ldr r0, [sp, #0x004]
	asrs r3, r0, #0x0F
	adds r2, r5, r3
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _080595FE
	movs r3, #0x00
	strh r3, [r2, #0x00]
	b _08059612
_080595FE:
	movs r1, #0x00
	ldsh r0, [r2, r1]
	adds r1, r7, #0x0
	adds r1, #0x3C
	adds r1, r1, r3
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	cmp r0, r1
	ble _08059612
	strh r1, [r2, #0x00]
_08059612:
	ldr r2, [sp, #0x004]
	asrs r1, r2, #0x0F
	adds r4, r7, #0x0
	adds r4, #0x5A
	adds r2, r4, r1
	mov r3, r8
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x60
	adds r2, r3, r1
	adds r1, r5, r1
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	adds r5, r3, #0x0
	b _08059670
_08059634:
	ldr r5, [sp, #0x004]
	asrs r2, r5, #0x0F
	adds r0, r7, #0x0
	adds r0, #0x4E
	adds r0, r0, r2
	ldrh r1, [r7, #0x22]
	strh r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x54
	adds r0, r0, r2
	ldrh r1, [r7, #0x24]
	strh r1, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x5A
	adds r1, r3, r2
	ldrh r0, [r7, #0x22]
	strh r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x60
	adds r2, r1, r2
	ldrh r0, [r7, #0x24]
	strh r0, [r2, #0x00]
	movs r0, #0x5E
	adds r0, r0, r7
	mov r9, r0
	adds r2, r7, #0x0
	adds r2, #0x64
	str r2, [sp, #0x000]
	adds r4, r3, #0x0
	adds r5, r1, #0x0
_08059670:
	ldr r3, [sp, #0x004]
	asrs r1, r3, #0x10
	lsls r2, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x66
	adds r0, r0, r2
	movs r3, #0x00
	strh r3, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x6C
	adds r0, r0, r2
	strh r3, [r0, #0x00]
	subs r1, #0x01
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r1, #0x00
	blt _08059694
	b _08059540
_08059694:
	ldr r3, _080596F0 @ =0x02000014
	ldrh r2, [r4, #0x00]
	ldr r1, _080596F4 @ =0x000001FF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	adds r0, r7, #0x0
	adds r0, #0x5C
	ldrh r2, [r0, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _080596F8 @ =0x0200001C
	mov r3, r9
	ldrh r0, [r3, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080596FC @ =0x02000016
	ldrb r0, [r5, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0x62
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r5, [sp, #0x000]
	ldrb r0, [r5, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	bl sub_80584F8
	ldr r0, _08059700 @ =0x00000579
	adds r1, r7, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080596F0: .4byte 0x02000014
_080596F4: .4byte 0x000001FF
_080596F8: .4byte 0x0200001C
_080596FC: .4byte 0x02000016
_08059700: .4byte 0x00000579
	thumb_func_start sub_8059704
sub_8059704:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r3, #0x0
	ldr r6, [sp, #0x018]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl process_add
	ldr r0, _080597E0 @ =0x08CDC278
	str r0, [r7, #0x18]
	movs r4, #0x00
	ldr r0, _080597E4 @ =0x0000FFFB
	strh r0, [r7, #0x1C]
	strh r5, [r7, #0x1E]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	adds r0, r7, #0x0
	adds r0, #0x7C
	strh r6, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	ldr r2, _080597E8 @ =0x081E27C4
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x68]
	movs r0, #0xC0
	lsls r0, r0, #0x07
	ldr r2, _080597EC @ =0x081E27CC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x70]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r2, _080597F0 @ =0x081E27D4
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x78]
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x68]
	ldr r2, _080597F4 @ =0x01000C00
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x70]
	ldr r2, _080597F8 @ =0x01001800
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x78]
	ldr r2, _080597FC @ =0x01000080
	mov r0, sp
	bl CpuFastSet
	ldrh r1, [r7, #0x1E]
	ldr r0, _08059800 @ =0x00007FFF
	ands r0, r1
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r2, _08059804 @ =room_props_table
	ldr r0, _08059808 @ =0x03000DE8
	adds r1, r1, r2
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	adds r0, r7, #0x0
	adds r0, #0x52
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x0A
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x0A
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x0A
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, r7, #0x0
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080597E0: .4byte 0x08CDC278
_080597E4: .4byte 0x0000FFFB
_080597E8: .4byte 0x081E27C4
_080597EC: .4byte 0x081E27CC
_080597F0: .4byte 0x081E27D4
_080597F4: .4byte 0x01000C00
_080597F8: .4byte 0x01001800
_080597FC: .4byte 0x01000080
_08059800: .4byte 0x00007FFF
_08059804: .4byte room_props_table
_08059808: .4byte 0x03000DE8
