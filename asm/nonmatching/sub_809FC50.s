	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	str r0, [sp, #0x000]
	adds r0, #0x0C
	str r0, [sp, #0x004]
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x28]
	adds r0, #0x08
	mov r8, r0
	ldr r2, [r0, #0x30]
	str r2, [sp, #0x008]
	ldrh r0, [r2, #0x1C]
	adds r0, #0x06
	strh r0, [r2, #0x1C]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _0809FC82
	strh r1, [r2, #0x1C]
_0809FC82:
	ldr r3, [sp, #0x008]
	movs r0, #0x1C
	ldsh r3, [r3, r0]
	str r3, [sp, #0x00C]
	ldr r2, [sp, #0x008]
	ldr r1, [r2, #0x10]
	mov r3, r8
	ldr r0, [r3, #0x10]
	subs r6, r1, r0
	ldr r1, [r2, #0x14]
	ldr r0, [r3, #0x14]
	subs r1, r1, r0
	mov r10, r1
	ldr r0, [r2, #0x18]
	ldr r1, _0809FF3C @ =0xFFFFE000
	adds r0, r0, r1
	ldr r1, [r3, #0x18]
	subs r0, r0, r1
	str r0, [sp, #0x010]
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0809FCB0
	adds r0, #0x0F
_0809FCB0:
	asrs r0, r0, #0x04
	muls r0, r6
	cmp r0, #0x00
	bge _0809FCBA
	adds r0, #0x0F
_0809FCBA:
	asrs r1, r0, #0x04
	mov r0, r10
	cmp r0, #0x00
	bge _0809FCC4
	adds r0, #0x0F
_0809FCC4:
	asrs r0, r0, #0x04
	mov r2, r10
	muls r2, r0
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0809FCD2
	adds r0, #0x0F
_0809FCD2:
	asrs r0, r0, #0x04
	adds r0, r1, r0
	ldr r3, _0809FF40 @ =0x03001038
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	lsls r5, r0, #0x04
	cmp r5, #0x23
	bgt _0809FCE6
	movs r5, #0x24
_0809FCE6:
	ldr r1, _0809FF44 @ =0x0819832C
	ldr r0, _0809FF48 @ =0x08198220
	subs r7, r1, r0
	ldr r0, _0809FF40 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	ldr r1, [sp, #0x00C]
	lsls r4, r1, #0x03
	adds r0, r4, r1
	lsls r0, r0, #0x02
	muls r0, r6
	adds r1, r5, #0x0
	bl _call_via_r2
	str r0, [sp, #0x014]
	ldr r3, _0809FF40 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	mov r1, r10
	lsls r0, r1, #0x03
	add r0, r10
	lsls r0, r0, #0x0A
	adds r1, r5, #0x0
	bl _call_via_r2
	movs r1, #0x8C
	muls r0, r1
	str r4, [sp, #0x01C]
	cmp r0, #0x00
	bge _0809FD24
	adds r0, #0xFF
_0809FD24:
	asrs r0, r0, #0x08
	str r0, [sp, #0x018]
	movs r5, #0x04
	ldr r2, [sp, #0x014]
	subs r2, r6, r2
	mov r9, r2
	adds r6, r7, #0x0
	ldr r3, [sp, #0x010]
	lsls r7, r3, #0x02
	lsls r4, r2, #0x02
_0809FD38:
	ldr r0, _0809FF40 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	adds r0, r4, #0x0
	movs r1, #0x05
	bl _call_via_r2
	ldr r1, [sp, #0x014]
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2, #0x10]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x04]
	ldr r0, _0809FF40 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	mov r1, r10
	ldr r3, [sp, #0x018]
	subs r0, r1, r3
	muls r0, r5
	movs r1, #0x05
	bl _call_via_r2
	ldr r1, [sp, #0x018]
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2, #0x14]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x08]
	ldr r0, _0809FF40 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	adds r0, r7, #0x0
	movs r1, #0x05
	bl _call_via_r2
	mov r2, r8
	ldr r1, [r2, #0x18]
	adds r0, r0, r1
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r0, r3
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x0C]
	ldr r2, [r1, #0x00]
	str r2, [sp, #0x004]
	ldr r3, [sp, #0x010]
	subs r7, r7, r3
	mov r0, r9
	subs r4, r4, r0
	subs r5, #0x01
	cmp r5, #0x00
	bge _0809FD38
	ldr r1, [sp, #0x008]
	ldr r1, [r1, #0x30]
	str r1, [sp, #0x008]
	ldr r1, [r1, #0x10]
	mov r2, r8
	ldr r0, [r2, #0x10]
	subs r6, r1, r0
	ldr r3, [sp, #0x008]
	ldr r1, [r3, #0x14]
	ldr r0, [r2, #0x14]
	subs r1, r1, r0
	mov r10, r1
	ldr r0, [r3, #0x18]
	ldr r1, _0809FF3C @ =0xFFFFE000
	adds r0, r0, r1
	ldr r1, [r2, #0x18]
	subs r0, r0, r1
	str r0, [sp, #0x010]
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0809FDD2
	adds r0, #0x0F
_0809FDD2:
	asrs r0, r0, #0x04
	muls r0, r6
	cmp r0, #0x00
	bge _0809FDDC
	adds r0, #0x0F
_0809FDDC:
	asrs r1, r0, #0x04
	mov r0, r10
	cmp r0, #0x00
	bge _0809FDE6
	adds r0, #0x0F
_0809FDE6:
	asrs r0, r0, #0x04
	mov r2, r10
	muls r2, r0
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0809FDF4
	adds r0, #0x0F
_0809FDF4:
	asrs r0, r0, #0x04
	adds r0, r1, r0
	ldr r3, _0809FF40 @ =0x03001038
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	lsls r5, r0, #0x04
	cmp r5, #0x23
	bgt _0809FE08
	movs r5, #0x24
_0809FE08:
	ldr r1, _0809FF44 @ =0x0819832C
	ldr r0, _0809FF48 @ =0x08198220
	subs r7, r1, r0
	ldr r0, _0809FF40 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	ldr r1, [sp, #0x01C]
	ldr r3, [sp, #0x00C]
	adds r0, r1, r3
	lsls r0, r0, #0x02
	muls r0, r6
	adds r1, r5, #0x0
	bl _call_via_r2
	str r0, [sp, #0x014]
	ldr r0, _0809FF40 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	mov r1, r10
	lsls r0, r1, #0x03
	add r0, r10
	lsls r0, r0, #0x0A
	adds r1, r5, #0x0
	bl _call_via_r2
	movs r1, #0x8C
	muls r0, r1
	cmp r0, #0x00
	bge _0809FE44
	adds r0, #0xFF
_0809FE44:
	asrs r0, r0, #0x08
	str r0, [sp, #0x018]
	ldr r3, _0809FF40 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	ldr r0, [sp, #0x014]
	subs r4, r6, r0
	lsls r0, r4, #0x02
	movs r1, #0x05
	bl _call_via_r2
	ldr r1, [sp, #0x000]
	ldr r2, [r1, #0x30]
	ldr r3, [sp, #0x014]
	adds r0, r0, r3
	mov r3, r8
	ldr r1, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r0, _0809FF40 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	mov r1, r10
	ldr r3, [sp, #0x018]
	subs r0, r1, r3
	lsls r0, r0, #0x02
	movs r1, #0x05
	bl _call_via_r2
	ldr r1, [sp, #0x000]
	ldr r2, [r1, #0x30]
	ldr r3, [sp, #0x018]
	adds r0, r0, r3
	mov r3, r8
	ldr r1, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	ldr r0, _0809FF40 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	ldr r1, [sp, #0x010]
	lsls r0, r1, #0x02
	movs r1, #0x05
	bl _call_via_r2
	ldr r3, [sp, #0x000]
	ldr r2, [r3, #0x30]
	mov r3, r8
	ldr r1, [r3, #0x18]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r2, #0x18]
	movs r5, #0x03
	mov r9, r4
	ldr r2, [sp, #0x010]
	lsls r0, r2, #0x01
	adds r6, r0, r2
	lsls r0, r4, #0x01
	adds r4, r0, r4
_0809FEBE:
	ldr r3, _0809FF40 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	adds r0, r4, #0x0
	movs r1, #0x05
	bl _call_via_r2
	ldr r1, [sp, #0x014]
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2, #0x10]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x04]
	ldr r0, _0809FF40 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	mov r1, r10
	ldr r3, [sp, #0x018]
	subs r0, r1, r3
	muls r0, r5
	movs r1, #0x05
	bl _call_via_r2
	ldr r1, [sp, #0x018]
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2, #0x14]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x08]
	ldr r0, _0809FF40 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	adds r0, r6, #0x0
	movs r1, #0x05
	bl _call_via_r2
	mov r2, r8
	ldr r1, [r2, #0x18]
	adds r0, r0, r1
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r0, r3
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x0C]
	ldr r2, [r1, #0x00]
	str r2, [sp, #0x004]
	ldr r3, [sp, #0x010]
	subs r6, r6, r3
	mov r0, r9
	subs r4, r4, r0
	subs r5, #0x01
	cmp r5, #0x00
	bge _0809FEBE
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809FF3C: .4byte 0xFFFFE000
_0809FF40: .4byte 0x03001038
_0809FF44: .4byte 0x0819832C
_0809FF48: .4byte 0x08198220
