	.syntax unified
	.text

	thumb_func_start sub_814616C
sub_814616C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	mov r8, r0
	adds r6, r1, #0x0
	str r2, [sp, #0x020]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	ldr r3, _081461DC @ =0x0000020E
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	adds r0, r0, r4
	ldrb r1, [r0, #0x0A]
	ldr r2, _081461E0 @ =0x000002DE
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r1, r6, r3
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	mov r0, r8
	add r1, sp, #0x010
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081461F0
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	b _081461FC
_081461DC: .4byte 0x0000020E
_081461E0: .4byte 0x000002DE
_081461E4:
	ldr r0, _081461EC @ =0x08146499
	ldr r4, [sp, #0x020]
	str r0, [r4, #0x00]
	b _08146480
_081461EC: .4byte sub_8146498
_081461F0:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081461FC:
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x28]
	mov r9, r0
	movs r0, #0x00
	mov r10, r0
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x024]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x028]
	mov r3, sp
	adds r3, #0x1C
	str r3, [sp, #0x02C]
	mov r4, sp
	adds r4, #0x08
	str r4, [sp, #0x030]
	mov r0, sp
	adds r0, #0x0C
	str r0, [sp, #0x034]
	mov r5, r9
	movs r7, #0x00
_0814622A:
	ldr r2, _08146258 @ =0x03001038
	ldr r1, _0814625C @ =0x0819832C
	ldr r0, _08146260 @ =0x08198220
	subs r1, r1, r0
	ldr r2, [r2, #0x00]
	adds r2, r2, r1
	mov r0, r9
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r4, r0, #0x0
	cmp r4, #0x01
	beq _081462EC
	cmp r4, #0x01
	bgt _08146264
	cmp r4, #0x00
	beq _08146270
	b _08146408
	.byte 0x00, 0x00
_08146258: .4byte 0x03001038
_0814625C: .4byte 0x0819832C
_08146260: .4byte 0x08198220
_08146264:
	cmp r4, #0x02
	beq _0814634C
	cmp r4, #0x03
	bne _0814626E
	b _08146396
_0814626E:
	b _08146408
_08146270:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	adds r1, r0, #0x0
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x01
	beq _081462A8
	cmp r1, #0x01
	bcc _08146294
	cmp r1, #0x02
	beq _081462C4
	cmp r1, #0x03
	beq _081462D6
	b _08146408
_08146294:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, _081462A4 @ =0xFFFFA000
	adds r2, r2, r3
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	b _081463E8
_081462A4: .4byte 0xFFFFA000
_081462A8:
	ldr r1, [r5, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x06
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	ldr r3, _081462C0 @ =0xFFFFE000
	adds r2, r2, r3
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	b _081463E8
	.byte 0x00, 0x00
_081462C0: .4byte 0xFFFFE000
_081462C4:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	b _081463E8
_081462D6:
	ldr r1, [r5, #0x0C]
	ldr r0, _081462E8 @ =0xFFFFE000
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	b _081463E8
_081462E8: .4byte 0xFFFFE000
_081462EC:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	adds r1, r0, #0x0
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x01
	beq _08146324
	cmp r1, #0x01
	bcc _08146310
	cmp r1, #0x02
	beq _08146330
	cmp r1, #0x03
	beq _0814633E
	b _08146408
_08146310:
	ldr r1, [r5, #0x0C]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r1, r1, r2
	ldr r2, [r5, #0x10]
	ldr r3, _08146320 @ =0xFFFFE000
	b _081463E0
	.byte 0x00, 0x00
_08146320: .4byte 0xFFFFE000
_08146324:
	ldr r1, [r5, #0x0C]
	movs r4, #0xC0
	lsls r4, r4, #0x07
	adds r1, r1, r4
	ldr r2, [r5, #0x10]
	b _081463E2
_08146330:
	ldr r1, [r5, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x06
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	b _081463E2
_0814633E:
	ldr r1, [r5, #0x0C]
	ldr r0, _08146348 @ =0xFFFFD000
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	b _081463E2
_08146348: .4byte 0xFFFFD000
_0814634C:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	adds r1, r0, #0x0
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x01
	beq _0814637C
	cmp r1, #0x01
	bcc _08146370
	cmp r1, #0x02
	beq _0814638A
	cmp r1, #0x03
	beq _081463D4
	b _08146408
_08146370:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, _08146378 @ =0xFFFFD000
	b _081463E0
_08146378: .4byte 0xFFFFD000
_0814637C:
	ldr r1, [r5, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x06
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	b _081463E2
_0814638A:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	movs r4, #0xC0
	lsls r4, r4, #0x07
	adds r2, r2, r4
	b _081463E2
_08146396:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	ands r0, r4
	cmp r0, #0x01
	beq _081463C8
	cmp r0, #0x01
	bcc _081463B6
	cmp r0, #0x02
	beq _081463D4
	cmp r0, #0x03
	beq _081463F4
	b _08146408
_081463B6:
	ldr r1, [r5, #0x0C]
	ldr r0, _081463C4 @ =0xFFFFE000
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	b _081463E2
	.byte 0x00, 0x00
_081463C4: .4byte 0xFFFFE000
_081463C8:
	ldr r1, [r5, #0x0C]
	movs r4, #0xC0
	lsls r4, r4, #0x06
	adds r1, r1, r4
	ldr r2, [r5, #0x10]
	b _081463E2
_081463D4:
	ldr r1, [r5, #0x0C]
	ldr r0, _081463F0 @ =0xFFFFE000
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x06
_081463E0:
	adds r2, r2, r3
_081463E2:
	ldr r3, [r5, #0x14]
	str r7, [sp, #0x000]
	str r7, [sp, #0x004]
_081463E8:
	adds r0, r6, #0x0
	bl sub_8047F60
	b _08146408
_081463F0: .4byte 0xFFFFE000
_081463F4:
	ldr r1, [r5, #0x0C]
	ldr r4, _08146490 @ =0xFFFFA000
	adds r1, r1, r4
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	str r7, [sp, #0x000]
	str r7, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
_08146408:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	ldr r3, [sp, #0x028]
	str r3, [sp, #0x000]
	ldr r4, [sp, #0x02C]
	str r4, [sp, #0x004]
	ldr r3, [sp, #0x030]
	strb r7, [r3, #0x00]
	movs r3, #0x01
	ldr r4, [sp, #0x034]
	strb r3, [r4, #0x00]
	ldr r3, [sp, #0x024]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0814645C
	ldr r2, [r6, #0x0C]
	ldr r3, [r6, #0x10]
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r4, [sp, #0x008]
	mov r0, r8
	adds r1, r6, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814645C
	b _081461E4
_0814645C:
	movs r0, #0x01
	add r10, r0
	mov r1, r10
	cmp r1, #0x03
	bgt _08146468
	b _0814622A
_08146468:
	ldr r1, [r6, #0x34]
	ldr r2, [r6, #0x38]
	ldr r3, [r6, #0x3C]
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
	ldr r0, _08146494 @ =0x08146499
	ldr r2, [sp, #0x020]
	str r0, [r2, #0x00]
_08146480:
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08146490: .4byte 0xFFFFA000
_08146494: .4byte sub_8146498
