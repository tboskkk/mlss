	.syntax unified
	.text

	thumb_func_start sub_81DD104
sub_81DD104:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	movs r5, #0x00
	movs r6, #0x01
	negs r6, r6
	adds r0, r6, #0x0
	bl sub_81DCE7C
	mov r8, r0
	cmp r0, #0x14
	bne _081DD126
	adds r0, r6, #0x0
	b _081DD19A
_081DD126:
	movs r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _081DD130
	movs r5, #0x02
_081DD130:
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _081DD13E
	movs r0, #0x04
	orrs r5, r0
_081DD13E:
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r4
	cmp r0, #0x00
	beq _081DD14C
	movs r0, #0x04
	orrs r5, r0
_081DD14C:
	movs r1, #0x08
	ands r4, r1
	cmp r4, #0x00
	beq _081DD15C
	movs r0, #0x05
	negs r0, r0
	ands r5, r0
	orrs r5, r1
_081DD15C:
	str r7, [sp, #0x000]
	adds r0, r7, #0x0
	bl strlen
	str r0, [sp, #0x008]
	str r5, [sp, #0x004]
	movs r2, #0x01
	adds r0, r2, #0x0
	mov r1, sp
	swi #171
	adds r3, r0, #0x0
	cmp r3, #0x00
	blt _081DD194
	ldr r0, _081DD190 @ =0x03001A78
	mov r1, r8
	lsls r2, r1, #0x03
	adds r1, r2, r0
	str r3, [r1, #0x00]
	adds r0, #0x04
	adds r2, r2, r0
	movs r0, #0x00
	str r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x20
	b _081DD19A
	.byte 0x00, 0x00
_081DD190: .4byte 0x03001A78
_081DD194:
	adds r0, r3, #0x0
	bl sub_81DCF6C
_081DD19A:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00, 0x0E, 0xB4, 0x00, 0xB5, 0x01, 0x99, 0xFF, 0xF7, 0xAB, 0xFF, 0xFF, 0xF7, 0xE7, 0xFE
	.byte 0x08, 0xBC, 0x03, 0xB0, 0x18, 0x47
