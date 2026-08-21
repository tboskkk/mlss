	.syntax unified
	.text

	thumb_func_start sub_80795D4
sub_80795D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079640
	movs r7, #0x01
	movs r0, #0x07
	mov r8, r0
_080795EE:
	bl sub_8199F30
	movs r1, #0x07
	bl __umodsi3
	adds r0, #0x01
	lsls r5, r0, #0x0D
	bl sub_8199F30
	mov r1, r8
	ands r0, r1
	adds r0, #0x04
	lsls r4, r0, #0x0C
	bl sub_8199F30
	movs r1, #0x03
	ands r1, r0
	adds r1, #0x02
	lsls r1, r1, #0x0C
	movs r0, #0xB0
	lsls r0, r0, #0x07
	cmp r5, r0
	bgt _0807962A
	ldr r2, _0807964C @ =0xFFFFD000
	adds r0, r4, r2
	cmp r1, r0
	ble _08079626
	movs r7, #0x00
_08079626:
	cmp r7, #0x00
	bne _080795EE
_0807962A:
	str r5, [r6, #0x10]
	str r4, [r6, #0x14]
	str r1, [r6, #0x18]
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079650 @ =0x08079655
	str r0, [r6, #0x4C]
_08079640:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807964C: .4byte 0xFFFFD000
_08079650: .4byte sub_8079654
