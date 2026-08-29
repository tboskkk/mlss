	.syntax unified
	.text

	thumb_func_start sub_81DC50C
sub_81DC50C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _081DC564 @ =0xFFFFF9B0
	add sp, r4
	mov r7, sp
	ldr r0, _081DC568 @ =0x08CDB630
	ldr r0, [r0, #0x00]
	bl _call_via_r0
	movs r1, #0xC8
	lsls r1, r1, #0x03
	adds r1, r1, r7
	str r0, [r1, #0x00]
	adds r0, #0x04
	ldr r2, _081DC56C @ =0x00000644
	adds r2, r2, r7
	str r0, [r2, #0x00]
	ldr r3, [r1, #0x00]
	ldr r1, [r3, #0x04]
	adds r0, r1, #0x4
	movs r2, #0xC9
	lsls r2, r2, #0x03
	adds r2, r2, r7
	str r0, [r2, #0x00]
	ldr r0, [r1, #0x04]
	cmp r0, #0x00
	beq _081DC5DC
	ldr r3, _081DC570 @ =0x0000064C
	adds r3, r3, r7
	str r7, [r3, #0x00]
	movs r0, #0x00
	str r0, [r7, #0x04]
	str r1, [r7, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x08
	str r7, [r7, #0x08]
	ldr r0, _081DC574 @ =0x081DC578
	str r0, [r1, #0x04]
	mov r0, sp
	str r0, [r1, #0x08]
	b _081DC57A
_081DC564: .4byte 0xFFFFF9B0
_081DC568: .4byte 0x08CDB630
_081DC56C: .4byte 0x00000644
_081DC570: .4byte 0x0000064C
_081DC574: .4byte 0x081DC578
	.byte 0x2E, 0xE0
_081DC57A:
	ldr r1, _081DC5D0 @ =0x0000064C
	adds r1, r1, r7
	ldr r1, [r1, #0x00]
	ldr r2, _081DC5D4 @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2, #0x00]
	str r1, [r2, #0x00]
	movs r2, #0xC9
	lsls r2, r2, #0x03
	adds r2, r2, r7
	ldr r2, [r2, #0x00]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _081DC5BC
_081DC596:
	movs r3, #0xC9
	lsls r3, r3, #0x03
	adds r3, r3, r7
	ldr r3, [r3, #0x00]
	ldr r1, [r3, #0x00]
	ldr r2, [r1, #0x04]
	ldr r0, [r1, #0x08]
	ldr r1, [r1, #0x00]
	str r1, [r3, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	movs r1, #0xC9
	lsls r1, r1, #0x03
	adds r1, r1, r7
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _081DC596
_081DC5BC:
	ldr r2, _081DC5D0 @ =0x0000064C
	adds r2, r2, r7
	ldr r2, [r2, #0x00]
	ldr r0, [r2, #0x00]
	ldr r3, _081DC5D4 @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3, #0x00]
	str r0, [r3, #0x00]
	b _081DC5DC
	.byte 0x00, 0x00
_081DC5D0: .4byte 0x0000064C
_081DC5D4: .4byte 0x00000644
	.byte 0xFF, 0xF7, 0x30, 0xFF
_081DC5DC:
	movs r1, #0xC8
	lsls r1, r1, #0x03
	adds r1, r1, r7
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _081DC5F8
	ldr r2, _081DC618 @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2, #0x00]
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081DC5FC
_081DC5F8:
	bl sub_81DC43C
_081DC5FC:
	ldr r3, _081DC618 @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3, #0x00]
	ldr r1, [r3, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x00]
	str r0, [r3, #0x00]
	ldr r0, [r2, #0x04]
	ldr r7, [r1, #0x08]
	ldr r2, [r2, #0x08]
	mov sp, r2
	mov pc, r0
	.byte 0x00, 0x00
_081DC618: .4byte 0x00000644
