	.syntax unified
	.text

	thumb_func_start sub_8109600
sub_8109600:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	cmp r0, #0x00
	bne _08109612
_0810960C:
	mov r0, r8
	cmp r0, #0x00
	beq _0810960C
_08109612:
	mov r0, r8
	bl sub_810971C
	ldr r0, _0810970C @ =0x08109601
	mov r1, r8
	str r0, [r1, #0x04]
	ldr r7, _08109710 @ =0x03000FD8
	ldr r2, [r7, #0x00]
	movs r3, #0xC5
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldr r3, _08109714 @ =0xFFFFFC00
	adds r0, r3, #0x0
	ldrh r3, [r1, #0x00]
	adds r0, r0, r3
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08109702
	movs r6, #0x00
	adds r5, r7, #0x0
	movs r4, #0x00
	movs r1, #0xBF
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0810965E
	ldr r0, [r1, #0x4C]
	str r6, [r0, #0x04]
	adds r0, r1, #0x0
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r6, [r0, #0x00]
_0810965E:
	ldr r0, [r5, #0x00]
	movs r6, #0x04
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08109682
	ldr r0, [r1, #0x4C]
	str r4, [r0, #0x04]
	adds r0, r1, #0x0
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
_08109682:
	ldr r0, [r5, #0x00]
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _081096A4
	ldr r0, [r1, #0x4C]
	str r4, [r0, #0x04]
	adds r0, r1, #0x0
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r3, #0xC1
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r4, [r0, #0x00]
_081096A4:
	ldr r0, [r5, #0x00]
	movs r1, #0xC2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _081096C6
	ldr r0, [r1, #0x4C]
	str r4, [r0, #0x04]
	adds r0, r1, #0x0
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r2, #0xC2
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r4, [r0, #0x00]
_081096C6:
	ldr r0, [r7, #0x00]
	movs r3, #0xC3
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _081096E8
	ldr r0, [r1, #0x4C]
	str r4, [r0, #0x04]
	adds r0, r1, #0x0
	bl sub_807C298
	ldr r0, [r7, #0x00]
	movs r1, #0xC3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
_081096E8:
	ldr r0, [r7, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _081096FC
	mov r3, r8
	str r4, [r3, #0x04]
	str r4, [r1, #0x00]
_081096FC:
	ldr r0, _08109718 @ =0x0300034C
	adds r0, #0x45
	strb r6, [r0, #0x00]
_08109702:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810970C: .4byte sub_8109600
_08109710: .4byte 0x03000FD8
_08109714: .4byte 0xFFFFFC00
_08109718: .4byte 0x0300034C
