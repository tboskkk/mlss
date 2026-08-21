	.syntax unified
	.text

	thumb_func_start sub_8096608
sub_8096608:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r6, r0, #0x0
	ldr r7, _08096634 @ =0x03000FD8
	ldr r3, [r7, #0x00]
	ldr r0, [r3, #0x70]
	adds r0, #0x08
	str r0, [sp, #0x00C]
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r4, #0x00
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	ble _08096638
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _0809678A
_08096634: .4byte 0x03000FD8
_08096638:
	ldr r5, [r6, #0x28]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r2, [r0, #0x00]
	ldrh r1, [r2, #0x08]
	ldr r0, _0809667C @ =0x0000FFFF
	cmp r1, r0
	bne _08096680
	adds r4, r5, #0x0
	adds r4, #0xF6
	movs r3, #0x00
	ldsh r0, [r4, r3]
	adds r1, r5, #0x0
	adds r1, #0xF8
	movs r3, #0x00
	ldsh r1, [r1, r3]
	ldrh r2, [r2, #0x08]
	bl sub_8117C50
	strh r0, [r4, #0x00]
	adds r4, #0x06
	movs r1, #0x00
	ldsh r0, [r4, r1]
	adds r1, r5, #0x0
	adds r1, #0xFE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	ldr r2, [r7, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldr r2, [r2, #0x00]
	b _08096690
_0809667C: .4byte 0x0000FFFF
_08096680:
	adds r4, r5, #0x0
	adds r4, #0xF6
	movs r1, #0x00
	ldsh r0, [r4, r1]
	adds r1, r5, #0x0
	adds r1, #0xF8
	movs r3, #0x00
	ldsh r1, [r1, r3]
_08096690:
	ldrh r2, [r2, #0x08]
	bl sub_8117C50
	strh r0, [r4, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r0, [r4, #0x00]
	lsrs r0, r0, #0x07
	str r0, [sp, #0x010]
	movs r1, #0xD8
	adds r1, r1, r5
	mov r9, r1
	ldr r2, [r1, #0x00]
	str r2, [sp, #0x014]
	movs r3, #0xDC
	adds r3, r3, r5
	mov r8, r3
	ldr r0, [r3, #0x00]
	str r0, [sp, #0x018]
	adds r7, r5, #0x0
	adds r7, #0xE0
	ldr r1, [r7, #0x00]
	mov r10, r1
	adds r0, r5, #0x0
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	mov r12, r0
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _080966D8
	adds r2, #0xFF
_080966D8:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _080966E2
	adds r3, #0xFF
_080966E2:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080966EC
	adds r0, #0xFF
_080966EC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	mov r0, r12
	bl sub_807AFD4
	ldr r3, [sp, #0x014]
	mov r0, r9
	str r3, [r0, #0x00]
	ldr r1, [sp, #0x018]
	mov r2, r8
	str r1, [r2, #0x00]
	mov r3, r10
	str r3, [r7, #0x00]
	ldr r0, [sp, #0x010]
	lsls r2, r0, #0x07
	ldrb r1, [r4, #0x00]
	movs r0, #0x7F
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x00]
	ldr r0, _0809679C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	movs r1, #0x05
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x28
	ldr r3, [sp, #0x00C]
	cmp r6, r3
	bne _08096762
	movs r1, #0x36
_08096762:
	movs r2, #0x7C
	ldr r4, [sp, #0x00C]
	cmp r6, r4
	bne _0809676C
	movs r2, #0x5C
_0809676C:
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	movs r2, #0x20
	bl sub_808842C
	ldr r0, _080967A0 @ =0x08096E09
	str r0, [r6, #0x4C]
_0809678A:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809679C: .4byte 0x03000FD8
_080967A0: .4byte sub_8096E08
