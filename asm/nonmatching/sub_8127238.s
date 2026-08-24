	.syntax unified
	.text

	thumb_func_start sub_8127238
sub_8127238:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	adds r0, #0xEE
	str r0, [sp, #0x018]
	ldrb r1, [r0, #0x00]
	mov r10, r1
	cmp r1, #0x01
	beq _08127254
	b _0812779E
_08127254:
	ldr r1, _0812730C @ =0x083BADAC
	ldr r0, _08127310 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r4, r0, r2
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	ldr r0, _08127314 @ =0x03001034
	ldr r1, [r7, #0x58]
	movs r2, #0xF2
	lsls r2, r2, #0x04
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	adds r0, r7, #0x0
	adds r0, #0xF0
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08127318
	mov r5, r10
	ands r5, r0
	lsls r0, r5, #0x1A
	movs r1, #0xE0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	mov r9, r0
	adds r5, r7, #0x0
	adds r5, #0x64
	ldr r1, [r7, #0x58]
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r5, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	mov r2, r9
	lsls r4, r2, #0x02
	add r4, r8
	ldr r3, [r4, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x04
	bl sub_8199D5C
	movs r6, #0x00
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	adds r4, r5, #0x0
	movs r5, #0xFA
	adds r5, r5, r7
	mov r10, r5
	cmp r0, #0x00
	bne _081272E8
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _081272E8
	b _0812763A
_081272E8:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r6, #0x01
	mov r1, r9
	lsls r0, r1, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	adds r1, r0, r6
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _081272E8
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _081272E8
	b _0812763A
	.byte 0x00, 0x00
_0812730C: .4byte dword_83BADAC @ =0x083BADAC
_08127310: .4byte 0x0300034C
_08127314: .4byte 0x03001034
_08127318:
	adds r0, r7, #0x0
	adds r0, #0xEA
	ldrh r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08127392
	adds r4, r7, #0x0
	adds r4, #0x64
	ldr r1, [r7, #0x58]
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x09
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	mov r2, r8
	ldr r3, [r2, #0x20]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x04
	bl sub_8199D5C
	movs r5, #0x00
	mov r0, r8
	ldr r1, [r0, #0x20]
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	movs r2, #0xFA
	adds r2, r2, r7
	mov r10, r2
	cmp r0, #0x00
	bne _08127374
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08127374
	b _0812763A
_08127374:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r5, #0x01
	mov r1, r8
	ldr r0, [r1, #0x20]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08127374
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08127374
	b _0812763A
_08127392:
	adds r0, r7, #0x0
	adds r0, #0xE8
	ldrh r1, [r0, #0x00]
	ldr r0, _0812741C @ =0x0000FFFF
	cmp r1, r0
	bne _08127424
	ldr r1, _08127420 @ =0x083BADC0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x64
	ldr r1, [r7, #0x58]
	str r2, [sp, #0x000]
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x09
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	ldr r3, [r5, #0x1C]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x0B
	bl sub_8199D5C
	movs r6, #0x00
	mov r2, r8
	ldr r0, [r2, #0x1C]
	ldrb r0, [r0, #0x00]
	ldr r1, [sp, #0x018]
	str r1, [sp, #0x01C]
	movs r2, #0xFA
	adds r2, r2, r7
	mov r10, r2
	cmp r0, #0x00
	bne _081273F8
	ldr r0, [r5, #0x1C]
	subs r0, #0x01
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _081273F8
	b _0812763A
_081273F8:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r6, #0x01
	mov r1, r8
	ldr r0, [r1, #0x1C]
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081273F8
	ldr r0, [r5, #0x1C]
	adds r0, r6, r0
	subs r0, #0x01
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _081273F8
	b _0812763A
	.byte 0x00, 0x00
_0812741C: .4byte 0x0000FFFF
_08127420: .4byte dword_83BADC0 @ =0x083BADC0
_08127424:
	adds r0, r7, #0x0
	adds r0, #0xFB
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #0x00
	beq _08127498
	adds r4, r7, #0x0
	adds r4, #0x64
	ldr r1, [r7, #0x58]
	str r2, [sp, #0x000]
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x09
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	mov r2, r8
	ldr r3, [r2, #0x28]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x04
	bl sub_8199D5C
	movs r5, #0x00
	mov r0, r8
	ldr r1, [r0, #0x28]
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	movs r2, #0xFA
	adds r2, r2, r7
	mov r10, r2
	b _0812748A
_0812747A:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r5, #0x01
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
_0812748A:
	cmp r0, #0x00
	bne _0812747A
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0812747A
	b _08127504
_08127498:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	cmp r2, #0x00
	beq _08127530
	adds r4, r7, #0x0
	adds r4, #0x64
	ldr r1, [r7, #0x58]
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	mov r0, r8
	ldr r3, [r0, #0x24]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x04
	bl sub_8199D5C
	movs r5, #0x00
	mov r2, r8
	ldr r1, [r2, #0x24]
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	movs r2, #0xFA
	adds r2, r2, r7
	mov r10, r2
	b _081274F8
_081274E8:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r5, #0x01
	mov r1, r8
	ldr r0, [r1, #0x24]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
_081274F8:
	cmp r0, #0x00
	bne _081274E8
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _081274E8
_08127504:
	ldr r0, [r7, #0x58]
	mov r2, r8
	ldr r1, [r2, #0x30]
	str r1, [sp, #0x000]
	movs r4, #0x05
	str r4, [sp, #0x004]
	movs r1, #0x0B
	movs r2, #0x0C
	movs r3, #0x30
	bl sub_8083860
	ldr r0, [r7, #0x58]
	mov r5, r8
	ldr r1, [r5, #0x34]
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x0B
	movs r2, #0x0C
	movs r3, #0x3C
	bl sub_8083860
	b _0812763A
_08127530:
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _081275A2
	adds r4, r7, #0x0
	adds r4, #0x64
	ldr r1, [r7, #0x58]
	str r2, [sp, #0x000]
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x05
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x0B
	movs r3, #0x00
	bl sub_8199D78
	mov r0, r8
	ldr r3, [r0, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x04
	bl sub_8199D5C
	movs r5, #0x00
	mov r2, r8
	ldr r1, [r2, #0x18]
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	movs r2, #0xFA
	adds r2, r2, r7
	mov r10, r2
	cmp r0, #0x00
	bne _08127584
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _0812763A
_08127584:
	adds r0, r4, #0x0
	bl sub_8199624
	adds r5, #0x01
	mov r1, r8
	ldr r0, [r1, #0x18]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08127584
	subs r0, r1, #0x1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08127584
	b _0812763A
_081275A2:
	movs r6, #0x00
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	movs r5, #0xF1
	adds r5, r5, r7
	mov r9, r5
	movs r0, #0xFA
	adds r0, r0, r7
	mov r10, r0
	mov r4, r8
	movs r1, #0x80
	lsls r1, r1, #0x0B
	mov r8, r1
_081275BC:
	mov r2, r9
	ldrb r0, [r2, #0x00]
	mov r5, r10
	movs r1, #0x00
	ldsb r1, [r5, r1]
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _081275D8
	cmp r6, #0x00
	beq _081275D8
	cmp r6, #0x03
	bne _081275EE
_081275D8:
	ldr r0, [r7, #0x58]
	mov r1, r8
	lsrs r3, r1, #0x10
	ldr r1, [r4, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x0B
	movs r2, #0x00
	bl sub_8083860
_081275EE:
	adds r2, r4, #0x4
	mov r12, r2
	movs r3, #0xC0
	lsls r3, r3, #0x0C
	add r3, r8
	adds r2, r6, #0x1
	mov r5, r9
	ldrb r0, [r5, #0x00]
	mov r5, r10
	movs r1, #0x00
	ldsb r1, [r5, r1]
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08127616
	cmp r2, #0x00
	beq _08127616
	cmp r2, #0x03
	bne _0812762C
_08127616:
	ldr r0, [r7, #0x58]
	lsrs r3, r3, #0x10
	mov r2, r12
	ldr r1, [r2, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x0B
	movs r2, #0x00
	bl sub_8083860
_0812762C:
	adds r4, #0x08
	movs r5, #0xC0
	lsls r5, r5, #0x0D
	add r8, r5
	adds r6, #0x02
	cmp r6, #0x03
	ble _081275BC
_0812763A:
	ldr r0, [r7, #0x58]
	movs r2, #0xB0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x28]
	ldr r1, [r1, #0x04]
	movs r5, #0xCA
	lsls r5, r5, #0x01
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	movs r2, #0xF2
	lsls r2, r2, #0x04
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r0, _081276F0 @ =0x03001034
	ldr r1, [r7, #0x5C]
	movs r2, #0x8A
	lsls r2, r2, #0x04
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	mov r0, r10
	movs r2, #0x00
	ldsb r2, [r0, r2]
	lsls r0, r2, #0x03
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r0, r7, r0
	subs r5, #0x82
	adds r0, r0, r5
	ldrh r1, [r0, #0x00]
	ldr r0, _081276F4 @ =0x0000FFFF
	cmp r1, r0
	bne _08127700
	ldr r1, _081276F8 @ =0x083BADC0
	ldr r0, _081276FC @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r4, r7, #0x0
	adds r4, #0xB4
	ldr r1, [r7, #0x5C]
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x0B
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x17
	movs r3, #0x00
	bl sub_8199D78
	ldr r3, [r5, #0x28]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x08
	bl sub_8199D5C
	adds r5, r7, #0x0
	adds r5, #0xBC
_081276CE:
	ldr r1, [r5, #0x00]
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	bne _081276E0
	ldrb r0, [r1, #0x01]
	cmp r0, #0x00
	bne _081276E0
	adds r0, r1, #0x2
	str r0, [r5, #0x00]
_081276E0:
	adds r0, r4, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081276CE
	b _08127776
	.byte 0x00, 0x00
_081276F0: .4byte 0x03001034
_081276F4: .4byte 0x0000FFFF
_081276F8: .4byte dword_83BADC0 @ =0x083BADC0
_081276FC: .4byte 0x0300034C
_08127700:
	adds r0, r7, #0x0
	adds r0, #0xF1
	ldrb r0, [r0, #0x00]
	asrs r0, r2
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08127776
	adds r4, r7, #0x0
	adds r4, #0xB4
	ldr r1, [r7, #0x5C]
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x0B
	str r0, [sp, #0x010]
	movs r0, #0x04
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	movs r2, #0x17
	movs r3, #0x00
	bl sub_8199D78
	mov r0, r10
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r7, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	bl sub_8123308
	adds r3, r0, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x08
	bl sub_8199D5C
	adds r5, r7, #0x0
	adds r5, #0xBC
_08127758:
	ldr r1, [r5, #0x00]
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	bne _0812776A
	ldrb r0, [r1, #0x01]
	cmp r0, #0x00
	bne _0812776A
	adds r0, r1, #0x2
	str r0, [r5, #0x00]
_0812776A:
	adds r0, r4, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08127758
_08127776:
	ldr r0, [r7, #0x5C]
	movs r2, #0xB0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x28]
	ldr r1, [r1, #0x04]
	movs r5, #0xCA
	lsls r5, r5, #0x01
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	movs r2, #0x8A
	lsls r2, r2, #0x04
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	b _081278DC
_0812779E:
	mov r0, r10
	cmp r0, #0x02
	bne _0812780C
	ldr r4, _08127808 @ =0x03001034
	ldr r1, [r7, #0x58]
	movs r2, #0xF2
	lsls r2, r2, #0x04
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r0, [r7, #0x60]
	movs r1, #0xB0
	lsls r1, r1, #0x01
	adds r6, r7, r1
	ldr r1, [r6, #0x00]
	ldr r1, [r1, #0x28]
	ldr r2, [r1, #0x04]
	movs r5, #0xCA
	lsls r5, r5, #0x01
	adds r2, r2, r5
	ldr r1, [r7, #0x58]
	ldr r2, [r2, #0x00]
	subs r1, r1, r2
	bl sub_80E9384
	ldr r1, [r7, #0x5C]
	movs r2, #0x8A
	lsls r2, r2, #0x04
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r0, [r7, #0x60]
	ldr r1, [r6, #0x00]
	ldr r1, [r1, #0x28]
	ldr r2, [r1, #0x04]
	adds r2, r2, r5
	ldr r1, [r7, #0x5C]
	ldr r2, [r2, #0x00]
	subs r1, r1, r2
	bl sub_80E9384
	ldr r1, [r7, #0x54]
	movs r2, #0x80
	lsls r2, r2, #0x04
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x01C]
	b _081278DC
_08127808: .4byte 0x03001034
_0812780C:
	ldr r5, [sp, #0x018]
	str r5, [sp, #0x01C]
	mov r0, r10
	cmp r0, #0x03
	bne _081278DC
	ldr r0, [r7, #0x60]
	movs r4, #0xF2
	lsls r4, r4, #0x04
	adds r1, r4, #0x0
	bl sub_80E9414
	adds r1, r0, #0x0
	movs r2, #0xB0
	lsls r2, r2, #0x01
	adds r6, r7, r2
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x28]
	ldr r0, [r0, #0x04]
	movs r5, #0xCA
	lsls r5, r5, #0x01
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r7, #0x58]
	ldr r0, _0812790C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x28]
	ldr r1, [r0, #0x04]
	adds r1, r1, r5
	ldr r0, [r7, #0x58]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	bl sub_8127E38
	movs r1, #0xE0
	lsls r1, r1, #0x08
	mov r9, r1
	mov r2, r9
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [r7, #0x54]
	movs r1, #0x0B
	str r1, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x01
	mov r8, r0
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #0x0B
	bl sub_8127DB4
	ldr r0, [r7, #0x60]
	movs r4, #0x8A
	lsls r4, r4, #0x04
	adds r1, r4, #0x0
	bl sub_80E9414
	adds r1, r0, #0x0
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x28]
	ldr r0, [r0, #0x04]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r7, #0x5C]
	ldr r2, _0812790C @ =0x03001034
	ldr r3, [r2, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x28]
	ldr r1, [r0, #0x04]
	adds r1, r1, r5
	ldr r0, [r7, #0x5C]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	bl sub_8127E38
	mov r5, r9
	orrs r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r7, #0x54]
	mov r2, r10
	str r2, [sp, #0x000]
	str r0, [sp, #0x004]
	mov r5, r8
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x20
	movs r2, #0x78
	movs r3, #0x17
	bl sub_8127DB4
_081278DC:
	movs r0, #0x00
	ldr r1, [sp, #0x01C]
	strb r0, [r1, #0x00]
	ldr r2, _0812790C @ =0x03001034
	ldr r0, _08127910 @ =0x08198154
	ldr r1, _08127914 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, [r7, #0x54]
	ldr r1, _08127918 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl _call_via_r3
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0812790C: .4byte 0x03001034
_08127910: .4byte dword_8198154 @ =0x08198154
_08127914: .4byte dword_81980D8 @ =0x081980D8
_08127918: .4byte 0x0600D000
