	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80C0F30
sub_80C0F30:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080C0F90 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	ldr r4, [r0, #0x74]
	ldr r5, [r1, #0x54]
	cmp r5, #0x00
	bne _080C0F88
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C0F54
	cmp r1, #0x04
	bne _080C0F84
_080C0F54:
	ldr r2, _080C0F94 @ =0x03001038
	ldr r0, _080C0F98 @ =0x0819832C
	ldr r1, _080C0F9C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C0F84:
	ldr r0, _080C0FA0 @ =0x080C0FA5
	str r0, [r6, #0x4C]
_080C0F88:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C0F90: .4byte 0x03000FD8
_080C0F94: .4byte 0x03001038
_080C0F98: .4byte 0x0819832C
_080C0F9C: .4byte 0x08198220
_080C0FA0: .4byte sub_80C0FA4
	thumb_func_start sub_80C0FA4
sub_80C0FA4:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080C1048 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C1040
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C0FE8
	cmp r1, #0x04
	bne _080C1004
_080C0FE8:
	ldr r2, _080C104C @ =0x00002063
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C1004:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1016
	cmp r1, #0x04
	bne _080C103C
_080C1016:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C103C:
	ldr r0, _080C1050 @ =0x080C1055
	str r0, [r7, #0x4C]
_080C1040:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C1048: .4byte 0x03000FD8
_080C104C: .4byte 0x00002063
_080C1050: .4byte sub_80C1054
	thumb_func_start sub_80C1054
sub_80C1054:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C10F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C10EA
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1080
	cmp r1, #0x04
	bne _080C1098
_080C1080:
	ldr r2, _080C10F4 @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C1098:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C10AA
	cmp r1, #0x04
	bne _080C10DA
_080C10AA:
	ldr r2, _080C10F8 @ =0x03001038
	ldr r0, _080C10FC @ =0x0819832C
	ldr r1, _080C1100 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C10DA:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C1104 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C1108 @ =0x080C110D
	str r0, [r5, #0x4C]
_080C10EA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080C10F0: .4byte 0x03000FD8
_080C10F4: .4byte 0x00002063
_080C10F8: .4byte 0x03001038
_080C10FC: .4byte 0x0819832C
_080C1100: .4byte 0x08198220
_080C1104: .4byte 0x00000FFF
_080C1108: .4byte sub_80C110C
	thumb_func_start sub_80C110C
sub_80C110C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080C11F4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080C1152
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C1152:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C1162
	b _080C1678
_080C1162:
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080C117A
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080C117C
_080C117A:
	movs r1, #0x00
_080C117C:
	movs r2, #0x7E
	adds r2, r2, r5
	mov r9, r2
	movs r3, #0xAE
	adds r3, r3, r5
	mov r8, r3
	cmp r1, #0x00
	beq _080C125C
	ldr r2, _080C11F4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C11F8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C11B0
	movs r1, #0x33
_080C11A4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C11A4
_080C11B0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C11C4
	movs r1, #0x33
_080C11B8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C11B8
_080C11C4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C11D8
	movs r1, #0x33
_080C11CC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C11CC
_080C11D8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C1254
	movs r1, #0x03
_080C11E2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C11EC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C11EC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C11E2
	b _080C1254
_080C11F4: .4byte 0x03000FD8
_080C11F8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C120E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1202:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1202
_080C120E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C1224
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1218:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1218
_080C1224:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C123A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C122E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C122E
_080C123A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C1254
	movs r1, #0x10
_080C1244:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C124E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C124E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C1244
_080C1254:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C125C:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C126C
	adds r1, r0, #0x0
_080C126C:
	ldr r0, _080C1364 @ =0x00007FFF
	cmp r2, r0
	ble _080C1274
	adds r2, r0, #0x0
_080C1274:
	cmp r2, r1
	bge _080C127A
	adds r1, r2, #0x0
_080C127A:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C1292
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C1294
_080C1292:
	movs r1, #0x00
_080C1294:
	cmp r1, #0x00
	bne _080C129A
	b _080C13E6
_080C129A:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C1368 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080C12B8
	b _080C13E6
_080C12B8:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C136C @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C13D2
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C1370
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080C131A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C130E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C130E
_080C131A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C1330
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1324:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1324
_080C1330:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C1346
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C133A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C133A
_080C1346:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C13CE
	movs r1, #0x10
_080C1350:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C135A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C135A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C1350
	b _080C13CE
	.byte 0x00, 0x00
_080C1364: .4byte 0x00007FFF
_080C1368: .4byte 0x0300034C
_080C136C: .4byte 0x03000FD8
_080C1370:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080C1388
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C137C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C137C
_080C1388:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C139E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1392:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1392
_080C139E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C13B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C13A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C13A8
_080C13B4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C13CE
	movs r1, #0x10
_080C13BE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C13C8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C13C8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C13BE
_080C13CE:
	bl sub_807F448
_080C13D2:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C14B8 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C13E6:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C13F2
	b _080C1678
_080C13F2:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080C14BC @ =0x00007FFF
	cmp r1, r0
	ble _080C13FE
	adds r1, r0, #0x0
_080C13FE:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C1416
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C1418
_080C1416:
	movs r2, #0x00
_080C1418:
	cmp r2, #0x00
	bne _080C141E
	b _080C152C
_080C141E:
	ldr r3, _080C14C0 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C14B8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C14C4
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C146E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1462:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1462
_080C146E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C1484
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1478:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1478
_080C1484:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C149A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C148E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C148E
_080C149A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C1520
	movs r1, #0x10
_080C14A4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C14AE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C14AE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C14A4
	b _080C1520
	.byte 0x00, 0x00
_080C14B8: .4byte 0x00000FFF
_080C14BC: .4byte 0x00007FFF
_080C14C0: .4byte 0x03000FD8
_080C14C4:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C14DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C14CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C14CE
_080C14DA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C14F0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C14E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C14E4
_080C14F0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C1506
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C14FA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C14FA
_080C1506:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C1520
	movs r1, #0x10
_080C1510:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C151A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C151A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C1510
_080C1520:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C1678
_080C152C:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080C153C
	b _080C1678
_080C153C:
	ldr r0, _080C15F8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C154A
	b _080C1678
_080C154A:
	ldr r2, _080C15FC @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C157A
	b _080C1678
_080C157A:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C1600 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C1604
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C15AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C15A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C15A2
_080C15AE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C15C4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C15B8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C15B8
_080C15C4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C15DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C15CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C15CE
_080C15DA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C1660
	movs r1, #0x10
_080C15E4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C15EE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C15EE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C15E4
	b _080C1660
	.byte 0x00, 0x00
_080C15F8: .4byte 0x0300034C
_080C15FC: .4byte 0x03000FD8
_080C1600: .4byte 0x00000FFF
_080C1604:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C161A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C160E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C160E
_080C161A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C1630
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1624:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1624
_080C1630:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C1646
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C163A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C163A
_080C1646:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C1660
	movs r1, #0x10
_080C1650:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C165A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C165A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C1650
_080C1660:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080C1678:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C16E8
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C1692
	adds r1, r0, #0x0
_080C1692:
	ldr r0, _080C16DC @ =0x00007FFF
	cmp r2, r0
	ble _080C169A
	adds r2, r0, #0x0
_080C169A:
	cmp r2, r1
	bge _080C16A0
	adds r1, r2, #0x0
_080C16A0:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080C16BA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C16BC
_080C16BA:
	movs r1, #0x00
_080C16BC:
	cmp r1, #0x00
	beq _080C16E8
	cmp r3, #0x01
	ble _080C16E8
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C16E0 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080C16E4 @ =0x080C1ED5
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080C176A
_080C16DC: .4byte 0x00007FFF
_080C16E0: .4byte 0x00000FFF
_080C16E4: .4byte sub_80C1ED4
_080C16E8:
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _080C176A
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C170C
	cmp r2, #0x04
	bne _080C1728
_080C170C:
	ldr r2, _080C177C @ =0x00002063
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C1728:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C1736
	cmp r2, #0x04
	bne _080C1764
_080C1736:
	ldr r2, _080C1780 @ =0x03001038
	ldr r0, _080C1784 @ =0x0819832C
	ldr r1, _080C1788 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x07
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_080C1764:
	ldr r0, _080C178C @ =0x080C1791
	mov r4, r10
	str r0, [r4, #0x4C]
_080C176A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C177C: .4byte 0x00002063
_080C1780: .4byte 0x03001038
_080C1784: .4byte 0x0819832C
_080C1788: .4byte 0x08198220
_080C178C: .4byte sub_80C1790
	thumb_func_start sub_80C1790
sub_80C1790:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C1820 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C1818
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7E
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C17D2
	cmp r1, #0x04
	bne _080C17EE
_080C17D2:
	ldr r2, _080C1824 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C17EE:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C17F6
	adds r1, #0xFF
_080C17F6:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C1800
	adds r2, #0xFF
_080C1800:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C180A
	adds r3, #0xFF
_080C180A:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x00
	bl sub_80DF024
	ldr r0, _080C1828 @ =0x080C182D
	str r0, [r7, #0x4C]
_080C1818:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C1820: .4byte 0x03000FD8
_080C1824: .4byte 0x00002034
_080C1828: .4byte sub_80C182C
	thumb_func_start sub_80C182C
sub_80C182C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080C18CC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C18C4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1862
	cmp r1, #0x04
	bne _080C187E
_080C1862:
	ldr r2, _080C18D0 @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C187E:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1890
	cmp r1, #0x04
	bne _080C18C0
_080C1890:
	ldr r2, _080C18D4 @ =0x03001038
	ldr r0, _080C18D8 @ =0x0819832C
	ldr r1, _080C18DC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x23
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C18C0:
	ldr r0, _080C18E0 @ =0x080C18E5
	str r0, [r6, #0x4C]
_080C18C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C18CC: .4byte 0x03000FD8
_080C18D0: .4byte 0x00002063
_080C18D4: .4byte 0x03001038
_080C18D8: .4byte 0x0819832C
_080C18DC: .4byte 0x08198220
_080C18E0: .4byte sub_80C18E4
	thumb_func_start sub_80C18E4
sub_80C18E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080C19D8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	mov r1, r8
	ldr r6, [r1, #0x2C]
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C19CA
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x7E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C1926
	adds r1, #0xFF
_080C1926:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C1930
	adds r2, #0xFF
_080C1930:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C193A
	adds r3, #0xFF
_080C193A:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x00
	bl sub_80DF024
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1956
	cmp r1, #0x04
	bne _080C199A
_080C1956:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C195E
	adds r0, #0xFF
_080C195E:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x0A
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080C1978
	adds r2, #0xFF
_080C1978:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C199A:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C19AC
	cmp r1, #0x04
	bne _080C19C4
_080C19AC:
	ldr r2, _080C19DC @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C19C4:
	ldr r0, _080C19E0 @ =0x080C19E5
	mov r1, r8
	str r0, [r1, #0x4C]
_080C19CA:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C19D8: .4byte 0x03000FD8
_080C19DC: .4byte 0x00002034
_080C19E0: .4byte sub_80C19E4
	thumb_func_start sub_80C19E4
sub_80C19E4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C1AD0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C1AC8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r4, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080C1AD4 @ =0x0803008B
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080C1A5E
	ldr r2, _080C1AD8 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C1A96
_080C1A5E:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080C1A66
	adds r0, #0xFF
_080C1A66:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x4
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080C1A7E
	adds r2, #0xFF
_080C1A7E:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080C1ADC @ =0x000006E3
	str r5, [sp, #0x000]
	movs r3, #0x10
	bl sub_80DF024
_080C1A96:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1AA8
	cmp r1, #0x04
	bne _080C1AC4
_080C1AA8:
	ldr r2, _080C1AE0 @ =0x00002034
	adds r0, r6, #0x0
	movs r1, #0x0B
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
_080C1AC4:
	ldr r0, _080C1AE4 @ =0x080C1AE9
	str r0, [r7, #0x4C]
_080C1AC8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C1AD0: .4byte 0x03000FD8
_080C1AD4: .4byte 0x0803008B
_080C1AD8: .4byte 0x00000111
_080C1ADC: .4byte 0x000006E3
_080C1AE0: .4byte 0x00002034
_080C1AE4: .4byte sub_80C1AE8
	thumb_func_start sub_80C1AE8
sub_80C1AE8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C1B24 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C1BA8
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bne _080C1B2C
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C1B1C
	cmp r2, #0x04
	bne _080C1BA8
_080C1B1C:
	ldr r0, _080C1B28 @ =0x080C1CE5
	str r0, [r4, #0x4C]
	b _080C1BA8
	.byte 0x00, 0x00
_080C1B24: .4byte 0x03000FD8
_080C1B28: .4byte sub_80C1CE4
_080C1B2C:
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1B3E
	cmp r1, #0x04
	bne _080C1B98
_080C1B3E:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080C1B46
	adds r0, #0xFF
_080C1B46:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x3A
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080C1B60
	adds r2, #0xFF
_080C1B60:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080C1B84
	adds r0, #0xFF
_080C1B84:
	asrs r0, r0, #0x08
	adds r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080C1B98:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C1BB0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C1BB4 @ =0x080C1BB9
	str r0, [r6, #0x4C]
_080C1BA8:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080C1BB0: .4byte 0x00000FFF
_080C1BB4: .4byte sub_80C1BB8
	thumb_func_start sub_80C1BB8
sub_80C1BB8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C1C40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080C1C44 @ =0x03001038
	ldr r2, _080C1C48 @ =0x0819832C
	ldr r3, _080C1C4C @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080C1C06
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080C1C08
_080C1C06:
	movs r1, #0x00
_080C1C08:
	cmp r1, #0x00
	beq _080C1C6C
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1C1E
	cmp r1, #0x04
	bne _080C1C6C
_080C1C1E:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C1C50
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080C1C5C
	.byte 0x00, 0x00
_080C1C40: .4byte 0x03000FD8
_080C1C44: .4byte 0x03001038
_080C1C48: .4byte 0x0819832C
_080C1C4C: .4byte 0x08198220
_080C1C50:
	ldr r2, _080C1CDC @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080C1C5C:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C1C6C:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C1CD4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1C8C
	cmp r1, #0x04
	bne _080C1CAA
_080C1C8C:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
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
_080C1CAA:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080C1CB2
	adds r1, #0xFF
_080C1CB2:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080C1CBC
	adds r2, #0xFF
_080C1CBC:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080C1CC6
	adds r3, #0xFF
_080C1CC6:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x33
	bl sub_80DF024
	ldr r0, _080C1CE0 @ =0x080C87A5
	str r0, [r7, #0x4C]
_080C1CD4:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C1CDC: .4byte 0x0000204D
_080C1CE0: .4byte sub_80C87A4
	thumb_func_start sub_80C1CE4
sub_80C1CE4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C1D8C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080C1D06
	b _080C1EC8
_080C1D06:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1D18
	cmp r1, #0x04
	bne _080C1D5A
_080C1D18:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C1D26
	adds r0, #0xFF
_080C1D26:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C1D34
	adds r0, #0xFF
_080C1D34:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C1D42
	adds r0, #0xFF
_080C1D42:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080C1D5A:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C1D6E
	cmp r2, #0x04
	bne _080C1DD0
_080C1D6E:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C1D94
	ldr r2, _080C1D90 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C1DA0
_080C1D8C: .4byte 0x03000FD8
_080C1D90: .4byte 0x00002002
_080C1D94:
	ldr r2, _080C1E6C @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C1DA0:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C1DB6
	movs r2, #0x01
_080C1DB6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C1DD0:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C1DDE
	cmp r2, #0x04
	bne _080C1DE8
_080C1DDE:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080C1DE8:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C1DFC
	cmp r2, #0x04
	bne _080C1E3E
_080C1DFC:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C1E0A
	adds r0, #0xFF
_080C1E0A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C1E18
	adds r0, #0xFF
_080C1E18:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C1E26
	adds r0, #0xFF
_080C1E26:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C1E3E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1E4C
	cmp r1, #0x04
	bne _080C1EB0
_080C1E4C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C1E74
	ldr r2, _080C1E70 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C1E80
	.byte 0x00, 0x00
_080C1E6C: .4byte 0x0000204F
_080C1E70: .4byte 0x00002002
_080C1E74:
	ldr r2, _080C1ED0 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C1E80:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C1E96
	movs r2, #0x01
_080C1E96:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C1EB0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C1EBE
	cmp r2, #0x04
	bne _080C1EC8
_080C1EBE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C1EC8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C1ED0: .4byte 0x0000204F
	thumb_func_start sub_80C1ED4
sub_80C1ED4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C1F5C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1EF2
	cmp r1, #0x04
	bne _080C1F0E
_080C1EF2:
	ldr r2, _080C1F60 @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C1F0E:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1F20
	cmp r1, #0x04
	bne _080C1F50
_080C1F20:
	ldr r2, _080C1F64 @ =0x03001038
	ldr r0, _080C1F68 @ =0x0819832C
	ldr r1, _080C1F6C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x02
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C1F50:
	ldr r0, _080C1F70 @ =0x080C1F75
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C1F5C: .4byte 0x03000FD8
_080C1F60: .4byte 0x00002063
_080C1F64: .4byte 0x03001038
_080C1F68: .4byte 0x0819832C
_080C1F6C: .4byte 0x08198220
_080C1F70: .4byte sub_80C1F74
	thumb_func_start sub_80C1F74
sub_80C1F74:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080C1FFC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C1FF4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1FB4
	cmp r1, #0x04
	bne _080C1FE4
_080C1FB4:
	ldr r2, _080C2000 @ =0x03001038
	ldr r0, _080C2004 @ =0x0819832C
	ldr r1, _080C2008 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x18
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C1FE4:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C200C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C2010 @ =0x080C2015
	str r0, [r7, #0x4C]
_080C1FF4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C1FFC: .4byte 0x03000FD8
_080C2000: .4byte 0x03001038
_080C2004: .4byte 0x0819832C
_080C2008: .4byte 0x08198220
_080C200C: .4byte 0x00000FFF
_080C2010: .4byte sub_80C2014
	thumb_func_start sub_80C2014
sub_80C2014:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r7, _080C2138 @ =0x03000FD8
	ldr r0, [r7, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r10
	ldr r0, [r0, #0x2C]
	mov r8, r0
	adds r0, r5, #0x0
	bl sub_80884AC
	ldr r1, [r5, #0x08]
	mov r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r1, [r3, r2]
	cmp r1, #0x00
	bge _080C2050
	adds r1, #0x3F
_080C2050:
	asrs r1, r1, #0x06
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	subs r0, r0, r1
	mov r1, r9
	strh r0, [r1, #0x06]
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r2, #0xC0
	mov r12, r2
	mov r0, r12
	ands r0, r1
	cmp r0, #0x00
	bne _080C2070
	b _080C2650
_080C2070:
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080C208A
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C208A:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080C209A
	b _080C25DE
_080C209A:
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x0A]
	mov r0, r12
	ands r0, r1
	adds r7, r3, #0x0
	cmp r0, #0x00
	beq _080C21A0
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080C20C0
	movs r4, #0x00
	ldsh r0, [r7, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080C20C2
_080C20C0:
	movs r1, #0x00
_080C20C2:
	adds r7, r5, #0x0
	adds r7, #0x7E
	movs r0, #0xAE
	adds r0, r0, r5
	mov r9, r0
	cmp r1, #0x00
	beq _080C21A0
	ldr r2, _080C2138 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C213C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C20F4
	movs r1, #0x33
_080C20E8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C20E8
_080C20F4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2108
	movs r1, #0x33
_080C20FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C20FC
_080C2108:
	mov r2, r8
	cmp r2, #0x00
	beq _080C211C
	movs r1, #0x33
_080C2110:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2110
_080C211C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2198
	movs r1, #0x03
_080C2126:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2130
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2130:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2126
	b _080C2198
_080C2138: .4byte 0x03000FD8
_080C213C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2152
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2146:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2146
_080C2152:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2168
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C215C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C215C
_080C2168:
	mov r2, r8
	cmp r2, #0x00
	beq _080C217E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2172:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2172
_080C217E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2198
	movs r1, #0x10
_080C2188:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2192
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2192:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2188
_080C2198:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C21A0:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C21B0
	adds r1, r0, #0x0
_080C21B0:
	ldr r0, _080C21FC @ =0x00007FFF
	cmp r2, r0
	ble _080C21B8
	adds r2, r0, #0x0
_080C21B8:
	cmp r2, r1
	bge _080C21BE
	adds r1, r2, #0x0
_080C21BE:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, r1
	blt _080C21D4
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C21D6
_080C21D4:
	movs r1, #0x00
_080C21D6:
	cmp r1, #0x00
	bne _080C21DC
	b _080C234E
_080C21DC:
	ldr r0, _080C2200 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _080C2204
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	b _080C221A
_080C21FC: .4byte 0x00007FFF
_080C2200: .4byte 0x03000FD8
_080C2204:
	cmp r1, #0x40
	bne _080C221A
	movs r1, #0xFF
	lsls r1, r1, #0x18
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
_080C221A:
	ldr r0, _080C22D0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C2228
	b _080C234E
_080C2228:
	movs r0, #0x07
	adds r1, r5, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C22D4 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C233A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C22D8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C2288
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C227C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C227C
_080C2288:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C229E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2292:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2292
_080C229E:
	mov r2, r8
	cmp r2, #0x00
	beq _080C22B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C22A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C22A8
_080C22B4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2336
	movs r1, #0x10
_080C22BE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C22C8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C22C8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C22BE
	b _080C2336
_080C22D0: .4byte 0x0300034C
_080C22D4: .4byte 0x03000FD8
_080C22D8:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C22F0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C22E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C22E4
_080C22F0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2306
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C22FA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C22FA
_080C2306:
	mov r2, r8
	cmp r2, #0x00
	beq _080C231C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2310:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2310
_080C231C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2336
	movs r1, #0x10
_080C2326:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2330
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2330:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2326
_080C2336:
	bl sub_807F448
_080C233A:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	ldr r1, _080C241C @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r9
	strh r1, [r3, #0x00]
_080C234E:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C235A
	b _080C25DE
_080C235A:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080C2420 @ =0x00007FFF
	cmp r1, r0
	ble _080C2366
	adds r1, r0, #0x0
_080C2366:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C237C
	movs r3, #0x00
	ldsh r0, [r7, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080C237E
_080C237C:
	movs r2, #0x00
_080C237E:
	cmp r2, #0x00
	bne _080C2384
	b _080C2490
_080C2384:
	ldr r3, _080C2424 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r4, r9
	ldrh r1, [r4, #0x00]
	ldr r0, _080C241C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C2428
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C23D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C23C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C23C6
_080C23D2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C23E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C23DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C23DC
_080C23E8:
	mov r2, r8
	cmp r2, #0x00
	beq _080C23FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C23F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C23F2
_080C23FE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2484
	movs r1, #0x10
_080C2408:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2412
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2412:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2408
	b _080C2484
	.byte 0x00, 0x00
_080C241C: .4byte 0x00000FFF
_080C2420: .4byte 0x00007FFF
_080C2424: .4byte 0x03000FD8
_080C2428:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C243E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2432:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2432
_080C243E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2454
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2448:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2448
_080C2454:
	mov r2, r8
	cmp r2, #0x00
	beq _080C246A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C245E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C245E
_080C246A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2484
	movs r1, #0x10
_080C2474:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C247E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C247E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2474
_080C2484:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C25DE
_080C2490:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	movs r4, #0x80
	lsls r4, r4, #0x07
	cmp r0, r4
	ble _080C249E
	b _080C25DE
_080C249E:
	ldr r0, _080C2560 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C24B4
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C24B4
	b _080C25DE
_080C24B4:
	ldr r2, _080C2564 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080C25DE
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080C2568 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C256C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2516
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C250A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C250A
_080C2516:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C252C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2520:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2520
_080C252C:
	mov r2, r8
	cmp r2, #0x00
	beq _080C2542
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2536:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2536
_080C2542:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C25C8
	movs r1, #0x10
_080C254C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2556
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2556:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C254C
	b _080C25C8
	.byte 0x00, 0x00
_080C2560: .4byte 0x0300034C
_080C2564: .4byte 0x03000FD8
_080C2568: .4byte 0x00000FFF
_080C256C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2582
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2576:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2576
_080C2582:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2598
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C258C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C258C
_080C2598:
	mov r2, r8
	cmp r2, #0x00
	beq _080C25AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C25A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C25A2
_080C25AE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C25C8
	movs r1, #0x10
_080C25B8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C25C2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C25C2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C25B8
_080C25C8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
_080C25DE:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C2650
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C25F8
	adds r1, r0, #0x0
_080C25F8:
	ldr r0, _080C2644 @ =0x00007FFF
	cmp r2, r0
	ble _080C2600
	adds r2, r0, #0x0
_080C2600:
	cmp r2, r1
	bge _080C2606
	adds r1, r2, #0x0
_080C2606:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080C2620
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C2622
_080C2620:
	movs r1, #0x00
_080C2622:
	cmp r1, #0x00
	beq _080C2650
	cmp r3, #0x01
	ble _080C2650
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080C2648 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080C264C @ =0x080C3315
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080C26C8
	.byte 0x00, 0x00
_080C2644: .4byte 0x00007FFF
_080C2648: .4byte 0x00000FFF
_080C264C: .4byte sub_80C3314
_080C2650:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C26C8
	ldr r0, [r5, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x06]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C2678
	cmp r1, #0x04
	bne _080C2694
_080C2678:
	ldr r2, _080C26D8 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C2694:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C26A6
	cmp r1, #0x04
	bne _080C26C2
_080C26A6:
	ldr r2, _080C26DC @ =0x00002063
	adds r0, r6, #0x0
	movs r1, #0x0C
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
_080C26C2:
	ldr r0, _080C26E0 @ =0x080C8745
	mov r4, r10
	str r0, [r4, #0x4C]
_080C26C8:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C26D8: .4byte 0x00002034
_080C26DC: .4byte 0x00002063
_080C26E0: .4byte sub_80C8744
	thumb_func_start sub_80C26E4
sub_80C26E4:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080C2794 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C278E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C2720
	cmp r1, #0x04
	bne _080C273C
_080C2720:
	ldr r2, _080C2798 @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C273C:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C274E
	cmp r1, #0x04
	bne _080C277E
_080C274E:
	ldr r2, _080C279C @ =0x03001038
	ldr r0, _080C27A0 @ =0x0819832C
	ldr r1, _080C27A4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C277E:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C27A8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C27AC @ =0x080C27B1
	str r0, [r7, #0x4C]
_080C278E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C2794: .4byte 0x03000FD8
_080C2798: .4byte 0x00002063
_080C279C: .4byte 0x03001038
_080C27A0: .4byte 0x0819832C
_080C27A4: .4byte 0x08198220
_080C27A8: .4byte 0x00000FFF
_080C27AC: .4byte sub_80C27B0
	thumb_func_start sub_80C27B0
sub_80C27B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C28C8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x03
	mov r2, r9
	subs r2, r2, r0
	str r2, [sp, #0x008]
	lsls r1, r1, #0x01
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C2818
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C2818:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C2828
	b _080C2D5C
_080C2828:
	mov r1, r12
	cmp r1, #0x00
	bge _080C2830
	movs r1, #0x00
_080C2830:
	ldr r0, _080C28CC @ =0x00007FFF
	cmp r1, r0
	ble _080C2838
	adds r1, r0, #0x0
_080C2838:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C284E
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C2850
_080C284E:
	movs r2, #0x00
_080C2850:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C2934
	ldr r2, _080C28C8 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C28D0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2884
	movs r1, #0x33
_080C2878:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2878
_080C2884:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2898
	movs r1, #0x33
_080C288C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C288C
_080C2898:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C28AC
	movs r1, #0x33
_080C28A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C28A0
_080C28AC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C292C
	movs r1, #0x03
_080C28B6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C28C0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C28C0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C28B6
	b _080C292C
_080C28C8: .4byte 0x03000FD8
_080C28CC: .4byte 0x00007FFF
_080C28D0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C28E6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C28DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C28DA
_080C28E6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C28FC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C28F0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C28F0
_080C28FC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2912
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2906:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2906
_080C2912:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C292C
	movs r1, #0x10
_080C291C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2926
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2926:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C291C
_080C292C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C2934:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C293E
	movs r1, #0x00
_080C293E:
	mov r3, r9
	cmp r3, #0x00
	bge _080C2946
	movs r2, #0x00
_080C2946:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C2950
	adds r1, r0, #0x0
_080C2950:
	ldr r0, _080C2A48 @ =0x00007FFF
	cmp r2, r0
	ble _080C2958
	adds r2, r0, #0x0
_080C2958:
	cmp r2, r1
	bge _080C295E
	adds r1, r2, #0x0
_080C295E:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C2976
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C2978
_080C2976:
	movs r1, #0x00
_080C2978:
	cmp r1, #0x00
	bne _080C297E
	b _080C2ACA
_080C297E:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x14
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C2A4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080C299C
	b _080C2ACA
_080C299C:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r7, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r4, _080C2A50 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C2AB6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C2A54
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C29FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C29F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C29F2
_080C29FE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2A14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A08
_080C2A14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2A2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A1E
_080C2A2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2AB2
	movs r1, #0x10
_080C2A34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2A3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2A3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2A34
	b _080C2AB2
	.byte 0x00, 0x00
_080C2A48: .4byte 0x00007FFF
_080C2A4C: .4byte 0x0300034C
_080C2A50: .4byte 0x03000FD8
_080C2A54:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C2A6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A60
_080C2A6C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2A82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A76
_080C2A82:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2A98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A8C
_080C2A98:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2AB2
	movs r1, #0x10
_080C2AA2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2AAC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2AAC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2AA2
_080C2AB2:
	bl sub_807F448
_080C2AB6:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C2BA0 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C2ACA:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C2AD6
	b _080C2D5C
_080C2AD6:
	mov r1, r9
	cmp r1, #0x00
	bge _080C2ADE
	movs r1, #0x00
_080C2ADE:
	ldr r0, _080C2BA4 @ =0x00007FFF
	cmp r1, r0
	ble _080C2AE6
	adds r1, r0, #0x0
_080C2AE6:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C2AFE
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C2B00
_080C2AFE:
	movs r2, #0x00
_080C2B00:
	cmp r2, #0x00
	bne _080C2B06
	b _080C2C14
_080C2B06:
	ldr r3, _080C2BA8 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C2BA0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C2BAC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2B56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2B4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2B4A
_080C2B56:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2B6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2B60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2B60
_080C2B6C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2B82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2B76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2B76
_080C2B82:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2C08
	movs r1, #0x10
_080C2B8C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2B96
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2B96:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2B8C
	b _080C2C08
	.byte 0x00, 0x00
_080C2BA0: .4byte 0x00000FFF
_080C2BA4: .4byte 0x00007FFF
_080C2BA8: .4byte 0x03000FD8
_080C2BAC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2BC2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2BB6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2BB6
_080C2BC2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2BD8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2BCC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2BCC
_080C2BD8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2BEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2BE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2BE2
_080C2BEE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2C08
	movs r1, #0x10
_080C2BF8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2C02
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2C02:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2BF8
_080C2C08:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	b _080C2D5C
_080C2C14:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C2C20
	b _080C2D5C
_080C2C20:
	ldr r0, _080C2CDC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C2C2E
	b _080C2D5C
_080C2C2E:
	ldr r2, _080C2CE0 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C2C5E
	b _080C2D5C
_080C2C5E:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C2CE4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C2CE8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2C92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2C86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2C86
_080C2C92:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2CA8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2C9C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2C9C
_080C2CA8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2CBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2CB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2CB2
_080C2CBE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2D44
	movs r1, #0x10
_080C2CC8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2CD2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2CD2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2CC8
	b _080C2D44
	.byte 0x00, 0x00
_080C2CDC: .4byte 0x0300034C
_080C2CE0: .4byte 0x03000FD8
_080C2CE4: .4byte 0x00000FFF
_080C2CE8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2CFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2CF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2CF2
_080C2CFE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2D14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2D08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2D08
_080C2D14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2D2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2D1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2D1E
_080C2D2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2D44
	movs r1, #0x10
_080C2D34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2D3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2D3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2D34
_080C2D44:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r7, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080C2D5C:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C2DD4
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C2D72
	movs r1, #0x00
_080C2D72:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C2D7C
	adds r2, r0, #0x0
_080C2D7C:
	ldr r0, _080C2DC8 @ =0x00007FFF
	cmp r1, r0
	ble _080C2D84
	adds r1, r0, #0x0
_080C2D84:
	cmp r1, r2
	bge _080C2D8A
	adds r2, r1, #0x0
_080C2D8A:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C2DA4
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C2DA6
_080C2DA4:
	movs r2, #0x00
_080C2DA6:
	cmp r2, #0x00
	beq _080C2DD4
	cmp r3, #0x01
	ble _080C2DD4
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C2DCC @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C2DD0 @ =0x080C3F71
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C2EF0
	.byte 0x00, 0x00
_080C2DC8: .4byte 0x00007FFF
_080C2DCC: .4byte 0x00000FFF
_080C2DD0: .4byte sub_80C3F70
_080C2DD4:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080C2DE4
	b _080C2EF0
_080C2DE4:
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	movs r0, #0x7D
	mov r1, r9
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	mov r10, r1
	cmp r2, #0x02
	beq _080C2E06
	cmp r2, #0x04
	bne _080C2EB8
_080C2E06:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C2E0E
	adds r0, #0xFF
_080C2E0E:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r7, r0, #0x0
	subs r7, #0x0A
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080C2E28
	adds r0, #0xFF
_080C2E28:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r2, r0, #0x3
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080C2E40
	adds r3, #0xFF
_080C2E40:
	asrs r3, r3, #0x08
	adds r4, r6, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x15
	mov r1, r9
	str r1, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r6, #0x28]
	adds r0, #0x08
	cmp r6, r0
	bne _080C2E6A
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080C2E7A
_080C2E6A:
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r6, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080C2E7A:
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080C2E82
	adds r0, #0xFF
_080C2E82:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080C2F00 @ =0x03001038
	ldr r0, _080C2F04 @ =0x0819832C
	ldr r1, _080C2F08 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080C2E9C
	adds r1, #0x3F
_080C2E9C:
	asrs r1, r1, #0x06
	subs r1, #0x05
	movs r0, #0x19
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080C2EB8:
	mov r2, r10
	ldrb r0, [r2, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C2EC8
	cmp r2, #0x04
	bne _080C2EE0
_080C2EC8:
	ldr r2, _080C2F0C @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C2EE0:
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C2F10 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r0, _080C2F14 @ =0x080C86E5
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080C2EF0:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C2F00: .4byte 0x03001038
_080C2F04: .4byte 0x0819832C
_080C2F08: .4byte 0x08198220
_080C2F0C: .4byte 0x00002034
_080C2F10: .4byte 0x00000FFF
_080C2F14: .4byte sub_80C86E4
	thumb_func_start sub_80C2F18
sub_80C2F18:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C3070 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080C2F40
	b _080C3066
_080C2F40:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r4, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080C3074 @ =0x0403018B
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080C2F94
	ldr r2, _080C3078 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C2FCC
_080C2F94:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080C2F9C
	adds r0, #0xFF
_080C2F9C:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x4
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080C2FB4
	adds r2, #0xFF
_080C2FB4:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080C307C @ =0x000006E3
	str r5, [sp, #0x000]
	movs r3, #0x10
	bl sub_80DF024
_080C2FCC:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C2FE0
	cmp r2, #0x04
	bne _080C303C
_080C2FE0:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C2FEE
	adds r0, #0xFF
_080C2FEE:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3000
	adds r0, #0xFF
_080C3000:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3012
	adds r0, #0xFF
_080C3012:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080C3028
	adds r0, #0xFF
_080C3028:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r6, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080C303C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C304A
	cmp r2, #0x04
	bne _080C3062
_080C304A:
	ldr r2, _080C3080 @ =0x00002034
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C3062:
	ldr r0, _080C3084 @ =0x080C3089
	str r0, [r7, #0x4C]
_080C3066:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C3070: .4byte 0x03000FD8
_080C3074: .4byte 0x0403018B
_080C3078: .4byte 0x00000111
_080C307C: .4byte 0x000006E3
_080C3080: .4byte 0x00002034
_080C3084: .4byte sub_80C3088
	thumb_func_start sub_80C3088
sub_80C3088:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C3118 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C310E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080C30BE
	adds r1, #0xFF
_080C30BE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080C30C8
	adds r2, #0xFF
_080C30C8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080C30D2
	adds r3, #0xFF
_080C30D2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C30EE
	cmp r1, #0x04
	bne _080C310A
_080C30EE:
	ldr r2, _080C311C @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C310A:
	ldr r0, _080C3120 @ =0x080C3125
	str r0, [r6, #0x4C]
_080C310E:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C3118: .4byte 0x03000FD8
_080C311C: .4byte 0x00002034
_080C3120: .4byte sub_80C3124
	thumb_func_start sub_80C3124
sub_80C3124:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C31CC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080C3146
	b _080C3308
_080C3146:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C3158
	cmp r1, #0x04
	bne _080C319A
_080C3158:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3166
	adds r0, #0xFF
_080C3166:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3174
	adds r0, #0xFF
_080C3174:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3182
	adds r0, #0xFF
_080C3182:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080C319A:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C31AE
	cmp r2, #0x04
	bne _080C3210
_080C31AE:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C31D4
	ldr r2, _080C31D0 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C31E0
_080C31CC: .4byte 0x03000FD8
_080C31D0: .4byte 0x00002002
_080C31D4:
	ldr r2, _080C32AC @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C31E0:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C31F6
	movs r2, #0x01
_080C31F6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C3210:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C321E
	cmp r2, #0x04
	bne _080C3228
_080C321E:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080C3228:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C323C
	cmp r2, #0x04
	bne _080C327E
_080C323C:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C324A
	adds r0, #0xFF
_080C324A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3258
	adds r0, #0xFF
_080C3258:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3266
	adds r0, #0xFF
_080C3266:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C327E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C328C
	cmp r1, #0x04
	bne _080C32F0
_080C328C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C32B4
	ldr r2, _080C32B0 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C32C0
	.byte 0x00, 0x00
_080C32AC: .4byte 0x0000204F
_080C32B0: .4byte 0x00002002
_080C32B4:
	ldr r2, _080C3310 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C32C0:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C32D6
	movs r2, #0x01
_080C32D6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C32F0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C32FE
	cmp r2, #0x04
	bne _080C3308
_080C32FE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C3308:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C3310: .4byte 0x0000204F
	thumb_func_start sub_80C3314
sub_80C3314:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r3, _080C33A0 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x70]
	adds r4, r1, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r2, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r2, #0x06]
	adds r1, #0x7E
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C334A
	cmp r1, #0x04
	bne _080C3366
_080C334A:
	ldr r2, _080C33A4 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C3366:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C3378
	cmp r1, #0x04
	bne _080C3394
_080C3378:
	ldr r2, _080C33A8 @ =0x00002063
	adds r0, r5, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C3394:
	ldr r0, _080C33AC @ =0x080C8685
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C33A0: .4byte 0x03000FD8
_080C33A4: .4byte 0x00002034
_080C33A8: .4byte 0x00002063
_080C33AC: .4byte sub_80C8684
	thumb_func_start sub_80C33B0
sub_80C33B0:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080C3460 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C345A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C33EC
	cmp r1, #0x04
	bne _080C3408
_080C33EC:
	ldr r2, _080C3464 @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C3408:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C341A
	cmp r1, #0x04
	bne _080C344A
_080C341A:
	ldr r2, _080C3468 @ =0x03001038
	ldr r0, _080C346C @ =0x0819832C
	ldr r1, _080C3470 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C344A:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C3474 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C3478 @ =0x080C347D
	str r0, [r7, #0x4C]
_080C345A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C3460: .4byte 0x03000FD8
_080C3464: .4byte 0x00002063
_080C3468: .4byte 0x03001038
_080C346C: .4byte 0x0819832C
_080C3470: .4byte 0x08198220
_080C3474: .4byte 0x00000FFF
_080C3478: .4byte sub_80C347C
	thumb_func_start sub_80C347C
sub_80C347C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C3594 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x03
	mov r2, r9
	subs r2, r2, r0
	str r2, [sp, #0x008]
	lsls r1, r1, #0x01
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C34E4
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C34E4:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C34F4
	b _080C3A28
_080C34F4:
	mov r1, r12
	cmp r1, #0x00
	bge _080C34FC
	movs r1, #0x00
_080C34FC:
	ldr r0, _080C3598 @ =0x00007FFF
	cmp r1, r0
	ble _080C3504
	adds r1, r0, #0x0
_080C3504:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C351A
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C351C
_080C351A:
	movs r2, #0x00
_080C351C:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C3600
	ldr r2, _080C3594 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C359C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C3550
	movs r1, #0x33
_080C3544:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3544
_080C3550:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C3564
	movs r1, #0x33
_080C3558:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3558
_080C3564:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C3578
	movs r1, #0x33
_080C356C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C356C
_080C3578:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C35F8
	movs r1, #0x03
_080C3582:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C358C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C358C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C3582
	b _080C35F8
_080C3594: .4byte 0x03000FD8
_080C3598: .4byte 0x00007FFF
_080C359C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C35B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C35A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C35A6
_080C35B2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C35C8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C35BC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C35BC
_080C35C8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C35DE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C35D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C35D2
_080C35DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C35F8
	movs r1, #0x10
_080C35E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C35F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C35F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C35E8
_080C35F8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C3600:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C360A
	movs r1, #0x00
_080C360A:
	mov r3, r9
	cmp r3, #0x00
	bge _080C3612
	movs r2, #0x00
_080C3612:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C361C
	adds r1, r0, #0x0
_080C361C:
	ldr r0, _080C3714 @ =0x00007FFF
	cmp r2, r0
	ble _080C3624
	adds r2, r0, #0x0
_080C3624:
	cmp r2, r1
	bge _080C362A
	adds r1, r2, #0x0
_080C362A:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C3642
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C3644
_080C3642:
	movs r1, #0x00
_080C3644:
	cmp r1, #0x00
	bne _080C364A
	b _080C3796
_080C364A:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C3718 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080C3668
	b _080C3796
_080C3668:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080C371C @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C3782
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C3720
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C36CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C36BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C36BE
_080C36CA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C36E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C36D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C36D4
_080C36E0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C36F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C36EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C36EA
_080C36F6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C377E
	movs r1, #0x10
_080C3700:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C370A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C370A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C3700
	b _080C377E
	.byte 0x00, 0x00
_080C3714: .4byte 0x00007FFF
_080C3718: .4byte 0x0300034C
_080C371C: .4byte 0x03000FD8
_080C3720:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C3738
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C372C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C372C
_080C3738:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C374E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3742:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3742
_080C374E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C3764
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3758:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3758
_080C3764:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C377E
	movs r1, #0x10
_080C376E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C3778
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C3778:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C376E
_080C377E:
	bl sub_807F448
_080C3782:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C386C @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C3796:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C37A2
	b _080C3A28
_080C37A2:
	mov r1, r9
	cmp r1, #0x00
	bge _080C37AA
	movs r1, #0x00
_080C37AA:
	ldr r0, _080C3870 @ =0x00007FFF
	cmp r1, r0
	ble _080C37B2
	adds r1, r0, #0x0
_080C37B2:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C37CA
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C37CC
_080C37CA:
	movs r2, #0x00
_080C37CC:
	cmp r2, #0x00
	bne _080C37D2
	b _080C38E0
_080C37D2:
	ldr r3, _080C3874 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C386C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C3878
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C3822
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3816:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3816
_080C3822:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C3838
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C382C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C382C
_080C3838:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C384E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3842:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3842
_080C384E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C38D4
	movs r1, #0x10
_080C3858:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C3862
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C3862:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C3858
	b _080C38D4
	.byte 0x00, 0x00
_080C386C: .4byte 0x00000FFF
_080C3870: .4byte 0x00007FFF
_080C3874: .4byte 0x03000FD8
_080C3878:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C388E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3882:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3882
_080C388E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C38A4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3898:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3898
_080C38A4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C38BA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C38AE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C38AE
_080C38BA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C38D4
	movs r1, #0x10
_080C38C4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C38CE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C38CE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C38C4
_080C38D4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080C3A28
_080C38E0:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C38EC
	b _080C3A28
_080C38EC:
	ldr r0, _080C39A8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C38FA
	b _080C3A28
_080C38FA:
	ldr r2, _080C39AC @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C392A
	b _080C3A28
_080C392A:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C39B0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C39B4
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C395E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3952:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3952
_080C395E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C3974
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3968:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3968
_080C3974:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C398A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C397E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C397E
_080C398A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C3A10
	movs r1, #0x10
_080C3994:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C399E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C399E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C3994
	b _080C3A10
	.byte 0x00, 0x00
_080C39A8: .4byte 0x0300034C
_080C39AC: .4byte 0x03000FD8
_080C39B0: .4byte 0x00000FFF
_080C39B4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C39CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C39BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C39BE
_080C39CA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C39E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C39D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C39D4
_080C39E0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C39F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C39EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C39EA
_080C39F6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C3A10
	movs r1, #0x10
_080C3A00:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C3A0A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C3A0A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C3A00
_080C3A10:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080C3A28:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C3AA0
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C3A3E
	movs r1, #0x00
_080C3A3E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C3A48
	adds r2, r0, #0x0
_080C3A48:
	ldr r0, _080C3A94 @ =0x00007FFF
	cmp r1, r0
	ble _080C3A50
	adds r1, r0, #0x0
_080C3A50:
	cmp r1, r2
	bge _080C3A56
	adds r2, r1, #0x0
_080C3A56:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C3A70
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C3A72
_080C3A70:
	movs r2, #0x00
_080C3A72:
	cmp r2, #0x00
	beq _080C3AA0
	cmp r3, #0x01
	ble _080C3AA0
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C3A98 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C3A9C @ =0x080C5279
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C3B5C
	.byte 0x00, 0x00
_080C3A94: .4byte 0x00007FFF
_080C3A98: .4byte 0x00000FFF
_080C3A9C: .4byte sub_80C5278
_080C3AA0:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C3B5C
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x7D
	mov r1, r8
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C3AD0
	cmp r2, #0x04
	bne _080C3B30
_080C3AD0:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080C3AD8
	adds r0, #0xFF
_080C3AD8:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x0A
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080C3AF2
	adds r0, #0xFF
_080C3AF2:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r2, r0, #0x3
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080C3B0A
	adds r3, #0xFF
_080C3B0A:
	asrs r3, r3, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x15
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C3B30:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C3B3E
	cmp r2, #0x04
	bne _080C3B56
_080C3B3E:
	ldr r2, _080C3B6C @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C3B56:
	ldr r0, _080C3B70 @ =0x080C3B75
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x4C]
_080C3B5C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C3B6C: .4byte 0x00002034
_080C3B70: .4byte sub_80C3B74
	thumb_func_start sub_80C3B74
sub_80C3B74:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C3CCC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080C3B9C
	b _080C3CC2
_080C3B9C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r4, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080C3CD0 @ =0x0403018B
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080C3BF0
	ldr r2, _080C3CD4 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C3C28
_080C3BF0:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080C3BF8
	adds r0, #0xFF
_080C3BF8:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x6
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080C3C10
	adds r2, #0xFF
_080C3C10:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080C3CD8 @ =0x000006F7
	str r5, [sp, #0x000]
	movs r3, #0x14
	bl sub_80DF024
_080C3C28:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C3C3C
	cmp r2, #0x04
	bne _080C3C98
_080C3C3C:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3C4A
	adds r0, #0xFF
_080C3C4A:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3C5C
	adds r0, #0xFF
_080C3C5C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3C6E
	adds r0, #0xFF
_080C3C6E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080C3C84
	adds r0, #0xFF
_080C3C84:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r6, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080C3C98:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C3CA6
	cmp r2, #0x04
	bne _080C3CBE
_080C3CA6:
	ldr r2, _080C3CDC @ =0x00002034
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C3CBE:
	ldr r0, _080C3CE0 @ =0x080C3CE5
	str r0, [r7, #0x4C]
_080C3CC2:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C3CCC: .4byte 0x03000FD8
_080C3CD0: .4byte 0x0403018B
_080C3CD4: .4byte 0x00000111
_080C3CD8: .4byte 0x000006F7
_080C3CDC: .4byte 0x00002034
_080C3CE0: .4byte sub_80C3CE4
	thumb_func_start sub_80C3CE4
sub_80C3CE4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C3D74 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C3D6A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080C3D1A
	adds r1, #0xFF
_080C3D1A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080C3D24
	adds r2, #0xFF
_080C3D24:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080C3D2E
	adds r3, #0xFF
_080C3D2E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C3D4A
	cmp r1, #0x04
	bne _080C3D66
_080C3D4A:
	ldr r2, _080C3D78 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C3D66:
	ldr r0, _080C3D7C @ =0x080C3D81
	str r0, [r6, #0x4C]
_080C3D6A:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C3D74: .4byte 0x03000FD8
_080C3D78: .4byte 0x00002034
_080C3D7C: .4byte sub_80C3D80
	thumb_func_start sub_80C3D80
sub_80C3D80:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C3E28 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080C3DA2
	b _080C3F64
_080C3DA2:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C3DB4
	cmp r1, #0x04
	bne _080C3DF6
_080C3DB4:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3DC2
	adds r0, #0xFF
_080C3DC2:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3DD0
	adds r0, #0xFF
_080C3DD0:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3DDE
	adds r0, #0xFF
_080C3DDE:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080C3DF6:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C3E0A
	cmp r2, #0x04
	bne _080C3E6C
_080C3E0A:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C3E30
	ldr r2, _080C3E2C @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C3E3C
_080C3E28: .4byte 0x03000FD8
_080C3E2C: .4byte 0x00002002
_080C3E30:
	ldr r2, _080C3F08 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C3E3C:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C3E52
	movs r2, #0x01
_080C3E52:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C3E6C:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C3E7A
	cmp r2, #0x04
	bne _080C3E84
_080C3E7A:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080C3E84:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C3E98
	cmp r2, #0x04
	bne _080C3EDA
_080C3E98:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3EA6
	adds r0, #0xFF
_080C3EA6:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3EB4
	adds r0, #0xFF
_080C3EB4:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C3EC2
	adds r0, #0xFF
_080C3EC2:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C3EDA:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C3EE8
	cmp r1, #0x04
	bne _080C3F4C
_080C3EE8:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C3F10
	ldr r2, _080C3F0C @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C3F1C
	.byte 0x00, 0x00
_080C3F08: .4byte 0x0000204F
_080C3F0C: .4byte 0x00002002
_080C3F10:
	ldr r2, _080C3F6C @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C3F1C:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C3F32
	movs r2, #0x01
_080C3F32:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C3F4C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C3F5A
	cmp r2, #0x04
	bne _080C3F64
_080C3F5A:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C3F64:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C3F6C: .4byte 0x0000204F
	thumb_func_start sub_80C3F70
sub_80C3F70:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080C4028 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080C3F90
	adds r1, #0xFF
_080C3F90:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080C3F9A
	adds r2, #0xFF
_080C3F9A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080C3FA4
	adds r3, #0xFF
_080C3FA4:
	asrs r3, r3, #0x08
	adds r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080C402C @ =0x00002FE6
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C3FC2
	cmp r1, #0x04
	bne _080C407E
_080C3FC2:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080C3FCA
	adds r0, #0xFF
_080C3FCA:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r7, r0, #0x0
	subs r7, #0x0A
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080C3FE4
	adds r0, #0xFF
_080C3FE4:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r2, r0, #0x3
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080C3FFC
	adds r3, #0xFF
_080C3FFC:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x15
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080C4030
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080C4040
_080C4028: .4byte 0x03000FD8
_080C402C: .4byte 0x00002FE6
_080C4030:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080C4040:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080C4048
	adds r0, #0xFF
_080C4048:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080C40C8 @ =0x03001038
	ldr r0, _080C40CC @ =0x0819832C
	ldr r1, _080C40D0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080C4062
	adds r1, #0x3F
_080C4062:
	asrs r1, r1, #0x06
	adds r1, #0x0C
	movs r0, #0x90
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080C407E:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C4090
	cmp r1, #0x04
	bne _080C40A8
_080C4090:
	ldr r2, _080C40D4 @ =0x00002034
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C40A8:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C40D8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C40DC @ =0x080C40E1
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C40C8: .4byte 0x03001038
_080C40CC: .4byte 0x0819832C
_080C40D0: .4byte 0x08198220
_080C40D4: .4byte 0x00002034
_080C40D8: .4byte 0x00000FFF
_080C40DC: .4byte sub_80C40E0
	thumb_func_start sub_80C40E0
sub_80C40E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C41FC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x02
	adds r0, r2, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r9
	subs r1, r1, r0
	str r1, [sp, #0x008]
	add r9, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r9
	bge _080C414A
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C414A:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C415A
	b _080C4694
_080C415A:
	mov r1, r12
	cmp r1, #0x00
	bge _080C4162
	movs r1, #0x00
_080C4162:
	ldr r0, _080C4200 @ =0x00007FFF
	cmp r1, r0
	ble _080C416A
	adds r1, r0, #0x0
_080C416A:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080C4180
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080C4182
_080C4180:
	movs r2, #0x00
_080C4182:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r10, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r8, r4
	cmp r2, #0x00
	beq _080C4268
	ldr r2, _080C41FC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C4204
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C41B6
	movs r1, #0x33
_080C41AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C41AA
_080C41B6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C41CA
	movs r1, #0x33
_080C41BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C41BE
_080C41CA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C41DE
	movs r1, #0x33
_080C41D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C41D2
_080C41DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4260
	movs r1, #0x03
_080C41E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C41F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C41F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C41E8
	b _080C4260
	.byte 0x00, 0x00
_080C41FC: .4byte 0x03000FD8
_080C4200: .4byte 0x00007FFF
_080C4204:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C421A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C420E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C420E
_080C421A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4230
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4224:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4224
_080C4230:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4246
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C423A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C423A
_080C4246:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4260
	movs r1, #0x10
_080C4250:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C425A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C425A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4250
_080C4260:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C4268:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C4272
	movs r1, #0x00
_080C4272:
	mov r0, r9
	cmp r0, #0x00
	bge _080C427A
	movs r2, #0x00
_080C427A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C4284
	adds r1, r0, #0x0
_080C4284:
	ldr r0, _080C437C @ =0x00007FFF
	cmp r2, r0
	ble _080C428C
	adds r2, r0, #0x0
_080C428C:
	cmp r2, r1
	bge _080C4292
	adds r1, r2, #0x0
_080C4292:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080C42AA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C42AC
_080C42AA:
	movs r1, #0x00
_080C42AC:
	cmp r1, #0x00
	bne _080C42B2
	b _080C43FC
_080C42B2:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C4380 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C42D0
	b _080C43FC
_080C42D0:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C4384 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C43EA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C4388
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C4332
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4326:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4326
_080C4332:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4348
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C433C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C433C
_080C4348:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C435E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4352:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4352
_080C435E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C43E6
	movs r1, #0x10
_080C4368:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4372
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4372:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4368
	b _080C43E6
	.byte 0x00, 0x00
_080C437C: .4byte 0x00007FFF
_080C4380: .4byte 0x0300034C
_080C4384: .4byte 0x03000FD8
_080C4388:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C43A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4394:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4394
_080C43A0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C43B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C43AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C43AA
_080C43B6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C43CC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C43C0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C43C0
_080C43CC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C43E6
	movs r1, #0x10
_080C43D6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C43E0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C43E0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C43D6
_080C43E6:
	bl sub_807F448
_080C43EA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C44D0 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080C43FC:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C4408
	b _080C4694
_080C4408:
	mov r1, r9
	cmp r1, #0x00
	bge _080C4410
	movs r1, #0x00
_080C4410:
	ldr r0, _080C44D4 @ =0x00007FFF
	cmp r1, r0
	ble _080C4418
	adds r1, r0, #0x0
_080C4418:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C4430
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C4432
_080C4430:
	movs r2, #0x00
_080C4432:
	cmp r2, #0x00
	bne _080C4438
	b _080C4544
_080C4438:
	ldr r3, _080C44D8 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C44D0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C44DC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4488
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C447C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C447C
_080C4488:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C449E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4492:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4492
_080C449E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C44B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C44A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C44A8
_080C44B4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4538
	movs r1, #0x10
_080C44BE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C44C8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C44C8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C44BE
	b _080C4538
_080C44D0: .4byte 0x00000FFF
_080C44D4: .4byte 0x00007FFF
_080C44D8: .4byte 0x03000FD8
_080C44DC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C44F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C44E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C44E6
_080C44F2:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4508
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C44FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C44FC
_080C4508:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C451E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4512:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4512
_080C451E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4538
	movs r1, #0x10
_080C4528:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4532
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4532:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4528
_080C4538:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C4694
_080C4544:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C4550
	b _080C4694
_080C4550:
	ldr r0, _080C4614 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C4566
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C4566
	b _080C4694
_080C4566:
	ldr r2, _080C4618 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C4596
	b _080C4694
_080C4596:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C461C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C4620
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C45CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C45BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C45BE
_080C45CA:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C45E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C45D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C45D4
_080C45E0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C45F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C45EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C45EA
_080C45F6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C467C
	movs r1, #0x10
_080C4600:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C460A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C460A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4600
	b _080C467C
	.byte 0x00, 0x00
_080C4614: .4byte 0x0300034C
_080C4618: .4byte 0x03000FD8
_080C461C: .4byte 0x00000FFF
_080C4620:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4636
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C462A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C462A
_080C4636:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C464C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4640:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4640
_080C464C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4662
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4656:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4656
_080C4662:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C467C
	movs r1, #0x10
_080C466C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4676
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4676:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C466C
_080C467C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C4694:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r7, r0, #0x0C
	cmp r7, #0x00
	bne _080C46A0
	b _080C47B2
_080C46A0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080C46AC
	movs r2, #0x00
_080C46AC:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C46B6
	adds r1, r0, #0x0
_080C46B6:
	ldr r0, _080C46EC @ =0x00007FFF
	cmp r2, r0
	ble _080C46BE
	adds r2, r0, #0x0
_080C46BE:
	cmp r2, r1
	bge _080C46C4
	adds r1, r2, #0x0
_080C46C4:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080C46DE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C46E0
_080C46DE:
	movs r1, #0x00
_080C46E0:
	cmp r1, #0x00
	beq _080C47B2
	cmp r7, #0x01
	ble _080C46F4
	ldr r4, _080C46F0 @ =0x0403038B
	b _080C46F6
_080C46EC: .4byte 0x00007FFF
_080C46F0: .4byte 0x0403038B
_080C46F4:
	ldr r4, _080C473C @ =0x0403028B
_080C46F6:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0x09
	ands r4, r0
	cmp r4, #0x00
	bne _080C4740
	cmp r1, #0x01
	bne _080C4740
	adds r0, r5, #0x0
	bl sub_8086764
	b _080C47F8
	.byte 0x00, 0x00
_080C473C: .4byte 0x0403028B
_080C4740:
	cmp r7, #0x01
	ble _080C4770
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C474C
	adds r1, #0xFF
_080C474C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C4756
	adds r2, #0xFF
_080C4756:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C4760
	adds r3, #0xFF
_080C4760:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080C476C @ =0x00002E7A
	bl sub_80DF024
	b _080C479A
_080C476C: .4byte 0x00002E7A
_080C4770:
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _080C4778
	adds r0, #0xFF
_080C4778:
	asrs r0, r0, #0x08
	adds r1, r0, #0x4
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C4784
	adds r2, #0xFF
_080C4784:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C478E
	adds r3, #0xFF
_080C478E:
	asrs r3, r3, #0x08
	adds r3, #0x14
	str r6, [sp, #0x000]
	ldr r0, _080C4808 @ =0x000006F7
	bl sub_80DF024
_080C479A:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C480C @ =0x00000FFF
	ands r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080C47B2:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C47F8
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C47D0
	cmp r1, #0x04
	bne _080C47E8
_080C47D0:
	ldr r2, _080C4810 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C47E8:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C480C @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r0, _080C4814 @ =0x080C4819
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080C47F8:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C4808: .4byte 0x000006F7
_080C480C: .4byte 0x00000FFF
_080C4810: .4byte 0x00002034
_080C4814: .4byte sub_80C4818
	thumb_func_start sub_80C4818
sub_80C4818:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C4934 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x02
	adds r0, r2, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r9
	subs r1, r1, r0
	str r1, [sp, #0x008]
	add r9, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r9
	bge _080C4882
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C4882:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C4892
	b _080C4DCC
_080C4892:
	mov r1, r12
	cmp r1, #0x00
	bge _080C489A
	movs r1, #0x00
_080C489A:
	ldr r0, _080C4938 @ =0x00007FFF
	cmp r1, r0
	ble _080C48A2
	adds r1, r0, #0x0
_080C48A2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080C48B8
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080C48BA
_080C48B8:
	movs r2, #0x00
_080C48BA:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r10, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r8, r4
	cmp r2, #0x00
	beq _080C49A0
	ldr r2, _080C4934 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C493C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C48EE
	movs r1, #0x33
_080C48E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C48E2
_080C48EE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4902
	movs r1, #0x33
_080C48F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C48F6
_080C4902:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4916
	movs r1, #0x33
_080C490A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C490A
_080C4916:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4998
	movs r1, #0x03
_080C4920:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C492A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C492A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4920
	b _080C4998
	.byte 0x00, 0x00
_080C4934: .4byte 0x03000FD8
_080C4938: .4byte 0x00007FFF
_080C493C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4952
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4946:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4946
_080C4952:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4968
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C495C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C495C
_080C4968:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C497E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4972:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4972
_080C497E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4998
	movs r1, #0x10
_080C4988:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4992
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4992:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4988
_080C4998:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C49A0:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C49AA
	movs r1, #0x00
_080C49AA:
	mov r0, r9
	cmp r0, #0x00
	bge _080C49B2
	movs r2, #0x00
_080C49B2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C49BC
	adds r1, r0, #0x0
_080C49BC:
	ldr r0, _080C4AB4 @ =0x00007FFF
	cmp r2, r0
	ble _080C49C4
	adds r2, r0, #0x0
_080C49C4:
	cmp r2, r1
	bge _080C49CA
	adds r1, r2, #0x0
_080C49CA:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080C49E2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C49E4
_080C49E2:
	movs r1, #0x00
_080C49E4:
	cmp r1, #0x00
	bne _080C49EA
	b _080C4B34
_080C49EA:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C4AB8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C4A08
	b _080C4B34
_080C4A08:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C4ABC @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C4B22
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C4AC0
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C4A6A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4A5E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4A5E
_080C4A6A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4A80
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4A74:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4A74
_080C4A80:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4A96
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4A8A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4A8A
_080C4A96:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4B1E
	movs r1, #0x10
_080C4AA0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4AAA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4AAA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4AA0
	b _080C4B1E
	.byte 0x00, 0x00
_080C4AB4: .4byte 0x00007FFF
_080C4AB8: .4byte 0x0300034C
_080C4ABC: .4byte 0x03000FD8
_080C4AC0:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C4AD8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4ACC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4ACC
_080C4AD8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4AEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4AE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4AE2
_080C4AEE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4B04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4AF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4AF8
_080C4B04:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4B1E
	movs r1, #0x10
_080C4B0E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4B18
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4B18:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4B0E
_080C4B1E:
	bl sub_807F448
_080C4B22:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C4C08 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080C4B34:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C4B40
	b _080C4DCC
_080C4B40:
	mov r1, r9
	cmp r1, #0x00
	bge _080C4B48
	movs r1, #0x00
_080C4B48:
	ldr r0, _080C4C0C @ =0x00007FFF
	cmp r1, r0
	ble _080C4B50
	adds r1, r0, #0x0
_080C4B50:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C4B68
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C4B6A
_080C4B68:
	movs r2, #0x00
_080C4B6A:
	cmp r2, #0x00
	bne _080C4B70
	b _080C4C7C
_080C4B70:
	ldr r3, _080C4C10 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C4C08 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C4C14
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4BC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4BB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4BB4
_080C4BC0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4BD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4BCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4BCA
_080C4BD6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4BEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4BE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4BE0
_080C4BEC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4C70
	movs r1, #0x10
_080C4BF6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4C00
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4C00:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4BF6
	b _080C4C70
_080C4C08: .4byte 0x00000FFF
_080C4C0C: .4byte 0x00007FFF
_080C4C10: .4byte 0x03000FD8
_080C4C14:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4C2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4C1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4C1E
_080C4C2A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4C40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4C34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4C34
_080C4C40:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4C56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4C4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4C4A
_080C4C56:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4C70
	movs r1, #0x10
_080C4C60:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4C6A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4C6A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4C60
_080C4C70:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C4DCC
_080C4C7C:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C4C88
	b _080C4DCC
_080C4C88:
	ldr r0, _080C4D4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C4C9E
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C4C9E
	b _080C4DCC
_080C4C9E:
	ldr r2, _080C4D50 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C4CCE
	b _080C4DCC
_080C4CCE:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C4D54 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C4D58
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4D02
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4CF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4CF6
_080C4D02:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4D18
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D0C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D0C
_080C4D18:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4D2E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D22:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D22
_080C4D2E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4DB4
	movs r1, #0x10
_080C4D38:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4D42
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4D42:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4D38
	b _080C4DB4
	.byte 0x00, 0x00
_080C4D4C: .4byte 0x0300034C
_080C4D50: .4byte 0x03000FD8
_080C4D54: .4byte 0x00000FFF
_080C4D58:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4D6E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D62:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D62
_080C4D6E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4D84
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D78
_080C4D84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4D9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D8E
_080C4D9A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4DB4
	movs r1, #0x10
_080C4DA4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4DAE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4DAE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4DA4
_080C4DB4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C4DCC:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r7, r0, #0x0C
	cmp r7, #0x00
	bne _080C4DD8
	b _080C4EEA
_080C4DD8:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080C4DE4
	movs r2, #0x00
_080C4DE4:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C4DEE
	adds r1, r0, #0x0
_080C4DEE:
	ldr r0, _080C4E24 @ =0x00007FFF
	cmp r2, r0
	ble _080C4DF6
	adds r2, r0, #0x0
_080C4DF6:
	cmp r2, r1
	bge _080C4DFC
	adds r1, r2, #0x0
_080C4DFC:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080C4E16
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C4E18
_080C4E16:
	movs r1, #0x00
_080C4E18:
	cmp r1, #0x00
	beq _080C4EEA
	cmp r7, #0x01
	ble _080C4E2C
	ldr r4, _080C4E28 @ =0x0403038B
	b _080C4E2E
_080C4E24: .4byte 0x00007FFF
_080C4E28: .4byte 0x0403038B
_080C4E2C:
	ldr r4, _080C4E74 @ =0x0403028B
_080C4E2E:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0x09
	ands r4, r0
	cmp r4, #0x00
	bne _080C4E78
	cmp r1, #0x01
	bne _080C4E78
	adds r0, r5, #0x0
	bl sub_8086764
	b _080C4FCC
	.byte 0x00, 0x00
_080C4E74: .4byte 0x0403028B
_080C4E78:
	cmp r7, #0x01
	ble _080C4EA8
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C4E84
	adds r1, #0xFF
_080C4E84:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C4E8E
	adds r2, #0xFF
_080C4E8E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C4E98
	adds r3, #0xFF
_080C4E98:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080C4EA4 @ =0x00002E7A
	bl sub_80DF024
	b _080C4ED2
_080C4EA4: .4byte 0x00002E7A
_080C4EA8:
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _080C4EB0
	adds r0, #0xFF
_080C4EB0:
	asrs r0, r0, #0x08
	adds r1, r0, #0x4
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C4EBC
	adds r2, #0xFF
_080C4EBC:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C4EC6
	adds r3, #0xFF
_080C4EC6:
	asrs r3, r3, #0x08
	adds r3, #0x14
	str r6, [sp, #0x000]
	ldr r0, _080C4FDC @ =0x000006F7
	bl sub_80DF024
_080C4ED2:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C4FE0 @ =0x00000FFF
	ands r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080C4EEA:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080C4F08
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080C4F0A
_080C4F08:
	movs r1, #0x00
_080C4F0A:
	cmp r1, #0x00
	beq _080C4F18
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
_080C4F18:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C4FCC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C4F44
	cmp r2, #0x04
	bne _080C4F5C
_080C4F44:
	ldr r2, _080C4FE4 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C4F5C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C4F6A
	cmp r2, #0x04
	bne _080C4FC6
_080C4F6A:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C4F78
	adds r0, #0xFF
_080C4F78:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C4F8A
	adds r0, #0xFF
_080C4F8A:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C4F9C
	adds r0, #0xFF
_080C4F9C:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080C4FB2
	adds r0, #0xFF
_080C4FB2:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080C4FC6:
	ldr r0, _080C4FE8 @ =0x080C4FED
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080C4FCC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C4FDC: .4byte 0x000006F7
_080C4FE0: .4byte 0x00000FFF
_080C4FE4: .4byte 0x00002034
_080C4FE8: .4byte sub_80C4FEC
	thumb_func_start sub_80C4FEC
sub_80C4FEC:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C507C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C5072
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080C5022
	adds r1, #0xFF
_080C5022:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080C502C
	adds r2, #0xFF
_080C502C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080C5036
	adds r3, #0xFF
_080C5036:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C5052
	cmp r1, #0x04
	bne _080C506E
_080C5052:
	ldr r2, _080C5080 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C506E:
	ldr r0, _080C5084 @ =0x080C5089
	str r0, [r6, #0x4C]
_080C5072:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C507C: .4byte 0x03000FD8
_080C5080: .4byte 0x00002034
_080C5084: .4byte sub_80C5088
	thumb_func_start sub_80C5088
sub_80C5088:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C5130 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080C50AA
	b _080C526C
_080C50AA:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C50BC
	cmp r1, #0x04
	bne _080C50FE
_080C50BC:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C50CA
	adds r0, #0xFF
_080C50CA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C50D8
	adds r0, #0xFF
_080C50D8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C50E6
	adds r0, #0xFF
_080C50E6:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080C50FE:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C5112
	cmp r2, #0x04
	bne _080C5174
_080C5112:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C5138
	ldr r2, _080C5134 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C5144
_080C5130: .4byte 0x03000FD8
_080C5134: .4byte 0x00002002
_080C5138:
	ldr r2, _080C5210 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C5144:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C515A
	movs r2, #0x01
_080C515A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C5174:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C5182
	cmp r2, #0x04
	bne _080C518C
_080C5182:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080C518C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C51A0
	cmp r2, #0x04
	bne _080C51E2
_080C51A0:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C51AE
	adds r0, #0xFF
_080C51AE:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C51BC
	adds r0, #0xFF
_080C51BC:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C51CA
	adds r0, #0xFF
_080C51CA:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C51E2:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C51F0
	cmp r1, #0x04
	bne _080C5254
_080C51F0:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C5218
	ldr r2, _080C5214 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C5224
	.byte 0x00, 0x00
_080C5210: .4byte 0x0000204F
_080C5214: .4byte 0x00002002
_080C5218:
	ldr r2, _080C5274 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C5224:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C523A
	movs r2, #0x01
_080C523A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C5254:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C5262
	cmp r2, #0x04
	bne _080C526C
_080C5262:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C526C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C5274: .4byte 0x0000204F
	thumb_func_start sub_80C5278
sub_80C5278:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080C52CC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r7, r6, #0x0
	adds r7, #0x08
	mov r0, r9
	ldr r0, [r0, #0x2C]
	mov r8, r0
	adds r3, r6, #0x0
	adds r3, #0xB6
	ldrh r0, [r3, #0x00]
	ldr r4, _080C52D0 @ =0x00000FFF
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x03
	bgt _080C52D8
	ldr r2, _080C52D4 @ =0x083B89F8
	lsls r0, r1, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xBA
	b _080C536A
	.byte 0x00, 0x00
_080C52CC: .4byte 0x03000FD8
_080C52D0: .4byte 0x00000FFF
_080C52D4: .4byte 0x083B89F8
_080C52D8:
	ldr r5, _080C5300 @ =0x083B8A00
	movs r1, #0x00
	ldsb r1, [r5, r1]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C5304
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x00
	ldsb r1, [r5, r1]
	b _080C531E
	.byte 0x00, 0x00
_080C5300: .4byte 0x083B8A00
_080C5304:
	movs r4, #0x00
	ldsb r4, [r5, r4]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x02
	ldsb r1, [r5, r1]
_080C531E:
	adds r1, r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	movs r1, #0x01
	ldsb r1, [r5, r1]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C534A
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x01
	ldsb r1, [r5, r1]
	b _080C5364
_080C534A:
	movs r4, #0x01
	ldsb r4, [r5, r4]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x03
	ldsb r1, [r5, r1]
_080C5364:
	adds r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
_080C536A:
	strh r1, [r0, #0x00]
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _080C5374
	adds r1, #0xFF
_080C5374:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x14]
	cmp r2, #0x00
	bge _080C537E
	adds r2, #0xFF
_080C537E:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x18]
	cmp r3, #0x00
	bge _080C5388
	adds r3, #0xFF
_080C5388:
	asrs r3, r3, #0x08
	adds r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080C5458 @ =0x00002FE6
	bl sub_80DF024
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080C53A8
	cmp r2, #0x04
	bne _080C5410
_080C53A8:
	mov r1, r8
	ldr r0, [r1, #0x38]
	cmp r0, #0x00
	bge _080C53B2
	adds r0, #0xFF
_080C53B2:
	asrs r0, r0, #0x08
	mov r1, r8
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x0A
	mov r1, r8
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080C53CE
	adds r0, #0xFF
_080C53CE:
	asrs r0, r0, #0x08
	mov r1, r8
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r2, r0, #0x3
	mov r0, r8
	ldr r3, [r0, #0x40]
	cmp r3, #0x00
	bge _080C53E8
	adds r3, #0xFF
_080C53E8:
	asrs r3, r3, #0x08
	mov r0, r8
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x15
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_80880C4
_080C5410:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C541E
	cmp r2, #0x04
	bne _080C5436
_080C541E:
	ldr r2, _080C545C @ =0x00002034
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C5436:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C5460 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C5464 @ =0x080C5469
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C5458: .4byte 0x00002FE6
_080C545C: .4byte 0x00002034
_080C5460: .4byte 0x00000FFF
_080C5464: .4byte sub_80C5468
	thumb_func_start sub_80C5468
sub_80C5468:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C5590 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C54DE
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C54DE:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C54EE
	b _080C5A2C
_080C54EE:
	mov r1, r12
	cmp r1, #0x00
	bge _080C54F6
	movs r1, #0x00
_080C54F6:
	ldr r0, _080C5594 @ =0x00007FFF
	cmp r1, r0
	ble _080C54FE
	adds r1, r0, #0x0
_080C54FE:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C5514
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C5516
_080C5514:
	movs r2, #0x00
_080C5516:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C55FC
	ldr r2, _080C5590 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C5598
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C554A
	movs r1, #0x33
_080C553E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C553E
_080C554A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C555E
	movs r1, #0x33
_080C5552:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5552
_080C555E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5572
	movs r1, #0x33
_080C5566:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5566
_080C5572:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C55F4
	movs r1, #0x03
_080C557C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5586
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5586:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C557C
	b _080C55F4
	.byte 0x00, 0x00
_080C5590: .4byte 0x03000FD8
_080C5594: .4byte 0x00007FFF
_080C5598:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C55AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C55A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C55A2
_080C55AE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C55C4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C55B8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C55B8
_080C55C4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C55DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C55CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C55CE
_080C55DA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C55F4
	movs r1, #0x10
_080C55E4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C55EE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C55EE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C55E4
_080C55F4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C55FC:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C5606
	movs r1, #0x00
_080C5606:
	mov r3, r9
	cmp r3, #0x00
	bge _080C560E
	movs r2, #0x00
_080C560E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C5618
	adds r1, r0, #0x0
_080C5618:
	ldr r0, _080C5710 @ =0x00007FFF
	cmp r2, r0
	ble _080C5620
	adds r2, r0, #0x0
_080C5620:
	cmp r2, r1
	bge _080C5626
	adds r1, r2, #0x0
_080C5626:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C563E
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C5640
_080C563E:
	movs r1, #0x00
_080C5640:
	cmp r1, #0x00
	bne _080C5646
	b _080C5792
_080C5646:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C5714 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C5664
	b _080C5792
_080C5664:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C5718 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C577E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C571C
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C56C6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C56BA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C56BA
_080C56C6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C56DC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C56D0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C56D0
_080C56DC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C56F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C56E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C56E6
_080C56F2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C577A
	movs r1, #0x10
_080C56FC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5706
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5706:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C56FC
	b _080C577A
	.byte 0x00, 0x00
_080C5710: .4byte 0x00007FFF
_080C5714: .4byte 0x0300034C
_080C5718: .4byte 0x03000FD8
_080C571C:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C5734
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5728:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5728
_080C5734:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C574A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C573E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C573E
_080C574A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5760
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5754:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5754
_080C5760:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C577A
	movs r1, #0x10
_080C576A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5774
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5774:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C576A
_080C577A:
	bl sub_807F448
_080C577E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C5868 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C5792:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C579E
	b _080C5A2C
_080C579E:
	mov r1, r9
	cmp r1, #0x00
	bge _080C57A6
	movs r1, #0x00
_080C57A6:
	ldr r0, _080C586C @ =0x00007FFF
	cmp r1, r0
	ble _080C57AE
	adds r1, r0, #0x0
_080C57AE:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C57C6
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C57C8
_080C57C6:
	movs r2, #0x00
_080C57C8:
	cmp r2, #0x00
	bne _080C57CE
	b _080C58DC
_080C57CE:
	ldr r3, _080C5870 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C5868 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C5874
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C581E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5812:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5812
_080C581E:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C5834
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5828:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5828
_080C5834:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C584A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C583E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C583E
_080C584A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C58D0
	movs r1, #0x10
_080C5854:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C585E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C585E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5854
	b _080C58D0
	.byte 0x00, 0x00
_080C5868: .4byte 0x00000FFF
_080C586C: .4byte 0x00007FFF
_080C5870: .4byte 0x03000FD8
_080C5874:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C588A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C587E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C587E
_080C588A:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C58A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5894:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5894
_080C58A0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C58B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C58AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C58AA
_080C58B6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C58D0
	movs r1, #0x10
_080C58C0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C58CA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C58CA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C58C0
_080C58D0:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C5A2C
_080C58DC:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C58E8
	b _080C5A2C
_080C58E8:
	ldr r0, _080C59AC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C58FE
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C58FE
	b _080C5A2C
_080C58FE:
	ldr r2, _080C59B0 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C592E
	b _080C5A2C
_080C592E:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C59B4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C59B8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5962
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5956:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5956
_080C5962:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C5978
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C596C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C596C
_080C5978:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C598E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5982:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5982
_080C598E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5A14
	movs r1, #0x10
_080C5998:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C59A2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C59A2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5998
	b _080C5A14
	.byte 0x00, 0x00
_080C59AC: .4byte 0x0300034C
_080C59B0: .4byte 0x03000FD8
_080C59B4: .4byte 0x00000FFF
_080C59B8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C59CE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C59C2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C59C2
_080C59CE:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C59E4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C59D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C59D8
_080C59E4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C59FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C59EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C59EE
_080C59FA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5A14
	movs r1, #0x10
_080C5A04:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5A0E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5A0E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5A04
_080C5A14:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C5A2C:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C5AA4
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C5A42
	movs r1, #0x00
_080C5A42:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C5A4C
	adds r2, r0, #0x0
_080C5A4C:
	ldr r0, _080C5A98 @ =0x00007FFF
	cmp r1, r0
	ble _080C5A54
	adds r1, r0, #0x0
_080C5A54:
	cmp r1, r2
	bge _080C5A5A
	adds r2, r1, #0x0
_080C5A5A:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C5A74
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C5A76
_080C5A74:
	movs r2, #0x00
_080C5A76:
	cmp r2, #0x00
	beq _080C5AA4
	cmp r3, #0x01
	ble _080C5AA4
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C5A9C @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C5AA0 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C5AEC
	.byte 0x00, 0x00
_080C5A98: .4byte 0x00007FFF
_080C5A9C: .4byte 0x00000FFF
_080C5AA0: .4byte sub_80C65BC
_080C5AA4:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C5AEC
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C5AC2
	cmp r1, #0x04
	bne _080C5ADA
_080C5AC2:
	ldr r2, _080C5AFC @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C5ADA:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C5B00 @ =0x00000FFF
	ands r1, r0
	mov r2, r8
	strh r1, [r2, #0x00]
	ldr r0, _080C5B04 @ =0x080C5B09
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080C5AEC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C5AFC: .4byte 0x00002034
_080C5B00: .4byte 0x00000FFF
_080C5B04: .4byte sub_80C5B08
	thumb_func_start sub_80C5B08
sub_80C5B08:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C5C30 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C5B7E
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C5B7E:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C5B8E
	b _080C60CC
_080C5B8E:
	mov r1, r12
	cmp r1, #0x00
	bge _080C5B96
	movs r1, #0x00
_080C5B96:
	ldr r0, _080C5C34 @ =0x00007FFF
	cmp r1, r0
	ble _080C5B9E
	adds r1, r0, #0x0
_080C5B9E:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C5BB4
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C5BB6
_080C5BB4:
	movs r2, #0x00
_080C5BB6:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C5C9C
	ldr r2, _080C5C30 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C5C38
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5BEA
	movs r1, #0x33
_080C5BDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5BDE
_080C5BEA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5BFE
	movs r1, #0x33
_080C5BF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5BF2
_080C5BFE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5C12
	movs r1, #0x33
_080C5C06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5C06
_080C5C12:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5C94
	movs r1, #0x03
_080C5C1C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5C26
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5C26:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5C1C
	b _080C5C94
	.byte 0x00, 0x00
_080C5C30: .4byte 0x03000FD8
_080C5C34: .4byte 0x00007FFF
_080C5C38:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5C4E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5C42:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5C42
_080C5C4E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5C64
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5C58:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5C58
_080C5C64:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5C7A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5C6E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5C6E
_080C5C7A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5C94
	movs r1, #0x10
_080C5C84:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5C8E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5C8E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5C84
_080C5C94:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C5C9C:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C5CA6
	movs r1, #0x00
_080C5CA6:
	mov r3, r9
	cmp r3, #0x00
	bge _080C5CAE
	movs r2, #0x00
_080C5CAE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C5CB8
	adds r1, r0, #0x0
_080C5CB8:
	ldr r0, _080C5DB0 @ =0x00007FFF
	cmp r2, r0
	ble _080C5CC0
	adds r2, r0, #0x0
_080C5CC0:
	cmp r2, r1
	bge _080C5CC6
	adds r1, r2, #0x0
_080C5CC6:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C5CDE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C5CE0
_080C5CDE:
	movs r1, #0x00
_080C5CE0:
	cmp r1, #0x00
	bne _080C5CE6
	b _080C5E32
_080C5CE6:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C5DB4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C5D04
	b _080C5E32
_080C5D04:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C5DB8 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C5E1E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C5DBC
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C5D66
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5D5A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5D5A
_080C5D66:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5D7C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5D70:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5D70
_080C5D7C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5D92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5D86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5D86
_080C5D92:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5E1A
	movs r1, #0x10
_080C5D9C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5DA6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5DA6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5D9C
	b _080C5E1A
	.byte 0x00, 0x00
_080C5DB0: .4byte 0x00007FFF
_080C5DB4: .4byte 0x0300034C
_080C5DB8: .4byte 0x03000FD8
_080C5DBC:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C5DD4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5DC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5DC8
_080C5DD4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5DEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5DDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5DDE
_080C5DEA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5E00
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5DF4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5DF4
_080C5E00:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5E1A
	movs r1, #0x10
_080C5E0A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5E14
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5E14:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5E0A
_080C5E1A:
	bl sub_807F448
_080C5E1E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C5F08 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C5E32:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C5E3E
	b _080C60CC
_080C5E3E:
	mov r1, r9
	cmp r1, #0x00
	bge _080C5E46
	movs r1, #0x00
_080C5E46:
	ldr r0, _080C5F0C @ =0x00007FFF
	cmp r1, r0
	ble _080C5E4E
	adds r1, r0, #0x0
_080C5E4E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C5E66
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C5E68
_080C5E66:
	movs r2, #0x00
_080C5E68:
	cmp r2, #0x00
	bne _080C5E6E
	b _080C5F7C
_080C5E6E:
	ldr r3, _080C5F10 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C5F08 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C5F14
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5EBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5EB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5EB2
_080C5EBE:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C5ED4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5EC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5EC8
_080C5ED4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5EEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5EDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5EDE
_080C5EEA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5F70
	movs r1, #0x10
_080C5EF4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5EFE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5EFE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5EF4
	b _080C5F70
	.byte 0x00, 0x00
_080C5F08: .4byte 0x00000FFF
_080C5F0C: .4byte 0x00007FFF
_080C5F10: .4byte 0x03000FD8
_080C5F14:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5F2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5F1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5F1E
_080C5F2A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C5F40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5F34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5F34
_080C5F40:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5F56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5F4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5F4A
_080C5F56:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5F70
	movs r1, #0x10
_080C5F60:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5F6A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5F6A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5F60
_080C5F70:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C60CC
_080C5F7C:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C5F88
	b _080C60CC
_080C5F88:
	ldr r0, _080C604C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C5F9E
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C5F9E
	b _080C60CC
_080C5F9E:
	ldr r2, _080C6050 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C5FCE
	b _080C60CC
_080C5FCE:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C6054 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C6058
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6002
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5FF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5FF6
_080C6002:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C6018
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C600C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C600C
_080C6018:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C602E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6022:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6022
_080C602E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C60B4
	movs r1, #0x10
_080C6038:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6042
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6042:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6038
	b _080C60B4
	.byte 0x00, 0x00
_080C604C: .4byte 0x0300034C
_080C6050: .4byte 0x03000FD8
_080C6054: .4byte 0x00000FFF
_080C6058:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C606E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6062:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6062
_080C606E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C6084
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6078:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6078
_080C6084:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C609A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C608E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C608E
_080C609A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C60B4
	movs r1, #0x10
_080C60A4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C60AE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C60AE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C60A4
_080C60B4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C60CC:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C6144
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C60E2
	movs r1, #0x00
_080C60E2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C60EC
	adds r2, r0, #0x0
_080C60EC:
	ldr r0, _080C6138 @ =0x00007FFF
	cmp r1, r0
	ble _080C60F4
	adds r1, r0, #0x0
_080C60F4:
	cmp r1, r2
	bge _080C60FA
	adds r2, r1, #0x0
_080C60FA:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C6114
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C6116
_080C6114:
	movs r2, #0x00
_080C6116:
	cmp r2, #0x00
	beq _080C6144
	cmp r3, #0x01
	ble _080C6144
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C613C @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C6140 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C6240
	.byte 0x00, 0x00
_080C6138: .4byte 0x00007FFF
_080C613C: .4byte 0x00000FFF
_080C6140: .4byte sub_80C65BC
_080C6144:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080C6162
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080C6164
_080C6162:
	movs r1, #0x00
_080C6164:
	cmp r1, #0x00
	beq _080C6172
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
_080C6172:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C6240
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080C6250 @ =0x0403048B
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080C61D4
	ldr r2, _080C6254 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C620C
_080C61D4:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C61DC
	adds r0, #0xFF
_080C61DC:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x6
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080C61F4
	adds r2, #0xFF
_080C61F4:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080C6258 @ =0x0000070B
	str r6, [sp, #0x000]
	movs r3, #0x14
	bl sub_80DF024
_080C620C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C621E
	cmp r1, #0x04
	bne _080C623A
_080C621E:
	ldr r2, _080C625C @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C623A:
	ldr r0, _080C6260 @ =0x080C6265
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080C6240:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C6250: .4byte 0x0403048B
_080C6254: .4byte 0x00000111
_080C6258: .4byte 0x0000070B
_080C625C: .4byte 0x00002034
_080C6260: .4byte sub_80C6264
	thumb_func_start sub_80C6264
sub_80C6264:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080C6324 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C631C
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6292
	cmp r1, #0x04
	bne _080C62AA
_080C6292:
	ldr r2, _080C6328 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C62AA:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C62BC
	cmp r1, #0x04
	bne _080C6318
_080C62BC:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C62CA
	adds r0, #0xFF
_080C62CA:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C62DC
	adds r0, #0xFF
_080C62DC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C62EE
	adds r0, #0xFF
_080C62EE:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080C6304
	adds r0, #0xFF
_080C6304:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080C6318:
	ldr r0, _080C632C @ =0x080C6331
	str r0, [r5, #0x4C]
_080C631C:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080C6324: .4byte 0x03000FD8
_080C6328: .4byte 0x00002034
_080C632C: .4byte sub_80C6330
	thumb_func_start sub_80C6330
sub_80C6330:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C63C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C63B6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080C6366
	adds r1, #0xFF
_080C6366:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080C6370
	adds r2, #0xFF
_080C6370:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080C637A
	adds r3, #0xFF
_080C637A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6396
	cmp r1, #0x04
	bne _080C63B2
_080C6396:
	ldr r2, _080C63C4 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C63B2:
	ldr r0, _080C63C8 @ =0x080C63CD
	str r0, [r6, #0x4C]
_080C63B6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C63C0: .4byte 0x03000FD8
_080C63C4: .4byte 0x00002034
_080C63C8: .4byte sub_80C63CC
	thumb_func_start sub_80C63CC
sub_80C63CC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C6474 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080C63EE
	b _080C65B0
_080C63EE:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6400
	cmp r1, #0x04
	bne _080C6442
_080C6400:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C640E
	adds r0, #0xFF
_080C640E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C641C
	adds r0, #0xFF
_080C641C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C642A
	adds r0, #0xFF
_080C642A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080C6442:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C6456
	cmp r2, #0x04
	bne _080C64B8
_080C6456:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C647C
	ldr r2, _080C6478 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C6488
_080C6474: .4byte 0x03000FD8
_080C6478: .4byte 0x00002002
_080C647C:
	ldr r2, _080C6554 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C6488:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C649E
	movs r2, #0x01
_080C649E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C64B8:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C64C6
	cmp r2, #0x04
	bne _080C64D0
_080C64C6:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080C64D0:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C64E4
	cmp r2, #0x04
	bne _080C6526
_080C64E4:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C64F2
	adds r0, #0xFF
_080C64F2:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C6500
	adds r0, #0xFF
_080C6500:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C650E
	adds r0, #0xFF
_080C650E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C6526:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6534
	cmp r1, #0x04
	bne _080C6598
_080C6534:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C655C
	ldr r2, _080C6558 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C6568
	.byte 0x00, 0x00
_080C6554: .4byte 0x0000204F
_080C6558: .4byte 0x00002002
_080C655C:
	ldr r2, _080C65B8 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C6568:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C657E
	movs r2, #0x01
_080C657E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C6598:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C65A6
	cmp r2, #0x04
	bne _080C65B0
_080C65A6:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C65B0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C65B8: .4byte 0x0000204F
	thumb_func_start sub_80C65BC
sub_80C65BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080C6620 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r7, r6, #0x0
	adds r7, #0x08
	mov r0, r9
	ldr r0, [r0, #0x2C]
	mov r8, r0
	ldr r0, [r0, #0x28]
	ldr r1, _080C6624 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r3, r6, #0x0
	adds r3, #0xB6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r4, _080C6628 @ =0x00000FFF
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x04
	bgt _080C6630
	ldr r2, _080C662C @ =0x083B8A04
	lsls r0, r1, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xBA
	b _080C66C2
_080C6620: .4byte 0x03000FD8
_080C6624: .4byte 0x00000111
_080C6628: .4byte 0x00000FFF
_080C662C: .4byte 0x083B8A04
_080C6630:
	ldr r5, _080C6658 @ =0x083B8A0E
	movs r1, #0x00
	ldsb r1, [r5, r1]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C665C
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x00
	ldsb r1, [r5, r1]
	b _080C6676
	.byte 0x00, 0x00
_080C6658: .4byte 0x083B8A0E
_080C665C:
	movs r4, #0x00
	ldsb r4, [r5, r4]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x02
	ldsb r1, [r5, r1]
_080C6676:
	adds r1, r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	movs r1, #0x01
	ldsb r1, [r5, r1]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C66A2
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x01
	ldsb r1, [r5, r1]
	b _080C66BC
_080C66A2:
	movs r4, #0x01
	ldsb r4, [r5, r4]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x03
	ldsb r1, [r5, r1]
_080C66BC:
	adds r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
_080C66C2:
	strh r1, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080C6790 @ =0x0403058B
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r1, r8
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r7, #0x24]
	adds r0, #0x01
	strh r0, [r7, #0x24]
	mov r2, r8
	ldr r1, [r2, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bgt _080C6710
	ldr r2, _080C6794 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C674C
_080C6710:
	mov r3, r8
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _080C671A
	adds r1, #0xFF
_080C671A:
	asrs r1, r1, #0x08
	mov r0, r8
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov r0, r8
	ldr r2, [r0, #0x3C]
	cmp r2, #0x00
	bge _080C6732
	adds r2, #0xFF
_080C6732:
	asrs r2, r2, #0x08
	mov r0, r8
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080C6798 @ =0x00002E93
	mov r3, r8
	str r3, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080C674C:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C675E
	cmp r1, #0x04
	bne _080C677A
_080C675E:
	ldr r2, _080C679C @ =0x00002034
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C677A:
	ldr r0, _080C67A0 @ =0x080C67A5
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C6790: .4byte 0x0403058B
_080C6794: .4byte 0x00000111
_080C6798: .4byte 0x00002E93
_080C679C: .4byte 0x00002034
_080C67A0: .4byte sub_80C67A4
	thumb_func_start sub_80C67A4
sub_80C67A4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080C67F8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r3, [r2, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C68B2
	ldr r1, _080C67FC @ =0x083B8A12
	ldr r6, _080C6800 @ =0x000002BF
	adds r0, r2, r6
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	cmp r2, #0x00
	beq _080C680C
	adds r0, r3, #0x0
	adds r0, #0xB6
	ldrh r1, [r0, #0x00]
	ldr r0, _080C6804 @ =0x00000FFF
	ands r0, r1
	cmp r2, r0
	bgt _080C680C
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C67F2
	cmp r1, #0x04
	bne _080C68B2
_080C67F2:
	ldr r0, _080C6808 @ =0x080C8609
	b _080C68B0
	.byte 0x00, 0x00
_080C67F8: .4byte 0x03000FD8
_080C67FC: .4byte 0x083B8A12
_080C6800: .4byte 0x000002BF
_080C6804: .4byte 0x00000FFF
_080C6808: .4byte sub_80C8608
_080C680C:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C6820
	cmp r2, #0x04
	bne _080C687C
_080C6820:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C682E
	adds r0, #0xFF
_080C682E:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C6840
	adds r0, #0xFF
_080C6840:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C6852
	adds r0, #0xFF
_080C6852:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080C6868
	adds r0, #0xFF
_080C6868:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080C687C:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C688A
	cmp r2, #0x04
	bne _080C68A2
_080C688A:
	ldr r2, _080C68BC @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C68A2:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C68C0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C68C4 @ =0x080C68C9
_080C68B0:
	str r0, [r5, #0x4C]
_080C68B2:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C68BC: .4byte 0x00002034
_080C68C0: .4byte 0x00000FFF
_080C68C4: .4byte sub_80C68C8
	thumb_func_start sub_80C68C8
sub_80C68C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080C6A00 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r3, r4, #0x0
	adds r3, #0xB6
	ldrh r0, [r3, #0x00]
	movs r2, #0x0F
	mov r9, r2
	lsrs r0, r0, #0x0C
	str r0, [sp, #0x00C]
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r2, r10
	subs r2, r2, r0
	mov r8, r2
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r10
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r10, r0
	movs r0, #0x86
	adds r0, r0, r4
	mov r12, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r10
	bge _080C694E
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C694E:
	ldrh r0, [r3, #0x00]
	lsrs r0, r0, #0x0C
	mov r2, r9
	ands r0, r2
	mov r9, r3
	cmp r0, #0x00
	beq _080C695E
	b _080C6E90
_080C695E:
	mov r1, r8
	cmp r1, #0x00
	bge _080C6966
	movs r1, #0x00
_080C6966:
	ldr r0, _080C6A04 @ =0x00007FFF
	cmp r1, r0
	ble _080C696E
	adds r1, r0, #0x0
_080C696E:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080C6986
	mov r4, r12
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080C6988
_080C6986:
	movs r2, #0x00
_080C6988:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r8, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r9, r4
	cmp r2, #0x00
	beq _080C6A6C
	ldr r2, _080C6A00 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C6A08
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C69BC
	movs r1, #0x33
_080C69B0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C69B0
_080C69BC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C69D0
	movs r1, #0x33
_080C69C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C69C4
_080C69D0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C69E4
	movs r1, #0x33
_080C69D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C69D8
_080C69E4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6A64
	movs r1, #0x03
_080C69EE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C69F8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C69F8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C69EE
	b _080C6A64
_080C6A00: .4byte 0x03000FD8
_080C6A04: .4byte 0x00007FFF
_080C6A08:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6A1E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6A12:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6A12
_080C6A1E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6A34
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6A28:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6A28
_080C6A34:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6A4A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6A3E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6A3E
_080C6A4A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6A64
	movs r1, #0x10
_080C6A54:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6A5E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6A5E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6A54
_080C6A64:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C6A6C:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080C6A76
	movs r1, #0x00
_080C6A76:
	mov r0, r10
	cmp r0, #0x00
	bge _080C6A7E
	movs r2, #0x00
_080C6A7E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C6A88
	adds r1, r0, #0x0
_080C6A88:
	ldr r0, _080C6B80 @ =0x00007FFF
	cmp r2, r0
	ble _080C6A90
	adds r2, r0, #0x0
_080C6A90:
	cmp r2, r1
	bge _080C6A96
	adds r1, r2, #0x0
_080C6A96:
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080C6AAE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C6AB0
_080C6AAE:
	movs r1, #0x00
_080C6AB0:
	cmp r1, #0x00
	bne _080C6AB6
	b _080C6C00
_080C6AB6:
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x18
	bl sub_807E680
	ldr r0, _080C6B84 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080C6AD6
	b _080C6C00
_080C6AD6:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080C6B88 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C6BEE
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C6B8C
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C6B38
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6B2C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6B2C
_080C6B38:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6B4E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6B42:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6B42
_080C6B4E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6B64
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6B58:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6B58
_080C6B64:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6BEA
	movs r1, #0x10
_080C6B6E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6B78
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6B78:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6B6E
	b _080C6BEA
_080C6B80: .4byte 0x00007FFF
_080C6B84: .4byte 0x0300034C
_080C6B88: .4byte 0x03000FD8
_080C6B8C:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C6BA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6B98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6B98
_080C6BA4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6BBA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6BAE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6BAE
_080C6BBA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6BD0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6BC4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6BC4
_080C6BD0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6BEA
	movs r1, #0x10
_080C6BDA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6BE4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6BE4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6BDA
_080C6BEA:
	bl sub_807F448
_080C6BEE:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080C6CD4 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080C6C00:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C6C0C
	b _080C6E90
_080C6C0C:
	mov r1, r10
	cmp r1, #0x00
	bge _080C6C14
	movs r1, #0x00
_080C6C14:
	ldr r0, _080C6CD8 @ =0x00007FFF
	cmp r1, r0
	ble _080C6C1C
	adds r1, r0, #0x0
_080C6C1C:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C6C34
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C6C36
_080C6C34:
	movs r2, #0x00
_080C6C36:
	cmp r2, #0x00
	bne _080C6C3C
	b _080C6D48
_080C6C3C:
	ldr r3, _080C6CDC @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080C6CD4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r9
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C6CE0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6C8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6C80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6C80
_080C6C8C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6CA2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6C96:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6C96
_080C6CA2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6CB8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6CAC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6CAC
_080C6CB8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6D3C
	movs r1, #0x10
_080C6CC2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6CCC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6CCC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6CC2
	b _080C6D3C
_080C6CD4: .4byte 0x00000FFF
_080C6CD8: .4byte 0x00007FFF
_080C6CDC: .4byte 0x03000FD8
_080C6CE0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6CF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6CEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6CEA
_080C6CF6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6D0C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6D00:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6D00
_080C6D0C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6D22
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6D16:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6D16
_080C6D22:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6D3C
	movs r1, #0x10
_080C6D2C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6D36
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6D36:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6D2C
_080C6D3C:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080C6E90
_080C6D48:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080C6D54
	b _080C6E90
_080C6D54:
	ldr r0, _080C6E10 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C6D62
	b _080C6E90
_080C6D62:
	ldr r2, _080C6E14 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C6D92
	b _080C6E90
_080C6D92:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080C6E18 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C6E1C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6DC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6DBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6DBA
_080C6DC6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6DDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6DD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6DD0
_080C6DDC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6DF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6DE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6DE6
_080C6DF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6E78
	movs r1, #0x10
_080C6DFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6E06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6E06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6DFC
	b _080C6E78
	.byte 0x00, 0x00
_080C6E10: .4byte 0x0300034C
_080C6E14: .4byte 0x03000FD8
_080C6E18: .4byte 0x00000FFF
_080C6E1C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6E32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6E26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6E26
_080C6E32:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6E48
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6E3C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6E3C
_080C6E48:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6E5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6E52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6E52
_080C6E5E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6E78
	movs r1, #0x10
_080C6E68:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6E72
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6E72:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6E68
_080C6E78:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080C6E90:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C6F08
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	mov r4, r10
	cmp r4, #0x00
	bge _080C6EA8
	movs r2, #0x00
_080C6EA8:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C6EB2
	adds r1, r0, #0x0
_080C6EB2:
	ldr r0, _080C6EFC @ =0x00007FFF
	cmp r2, r0
	ble _080C6EBA
	adds r2, r0, #0x0
_080C6EBA:
	cmp r2, r1
	bge _080C6EC0
	adds r1, r2, #0x0
_080C6EC0:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080C6EDA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C6EDC
_080C6EDA:
	movs r1, #0x00
_080C6EDC:
	cmp r1, #0x00
	beq _080C6F08
	cmp r3, #0x01
	ble _080C6F08
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080C6F00 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080C6F04 @ =0x080C724D
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C7028
_080C6EFC: .4byte 0x00007FFF
_080C6F00: .4byte 0x00000FFF
_080C6F04: .4byte sub_80C724C
_080C6F08:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x01
	bne _080C6F52
	ldr r1, [sp, #0x00C]
	cmp r0, r1
	beq _080C6F52
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r10
	bge _080C6F52
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6F36
	cmp r1, #0x04
	bne _080C6F52
_080C6F36:
	ldr r2, _080C7038 @ =0x00002063
	adds r0, r6, #0x0
	movs r1, #0x08
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
_080C6F52:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C7028
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x59
	bl play_sfx_80195B4
	ldr r0, [r7, #0x28]
	ldr r3, _080C703C @ =0x00000111
	adds r2, r0, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x28]
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bne _080C6F8C
	adds r0, r7, #0x0
	bl sub_8086700
_080C6F8C:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C6F94
	adds r1, #0xFF
_080C6F94:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C6F9E
	adds r2, #0xFF
_080C6F9E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C6FA8
	adds r3, #0xFF
_080C6FA8:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6FC4
	cmp r1, #0x04
	bne _080C6FE0
_080C6FC4:
	ldr r2, _080C7040 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C6FE0:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6FF2
	cmp r1, #0x04
	bne _080C7022
_080C6FF2:
	ldr r2, _080C7044 @ =0x03001038
	ldr r0, _080C7048 @ =0x0819832C
	ldr r1, _080C704C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x2F
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C7022:
	ldr r0, _080C7050 @ =0x080C7055
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080C7028:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C7038: .4byte 0x00002063
_080C703C: .4byte 0x00000111
_080C7040: .4byte 0x00002034
_080C7044: .4byte 0x03001038
_080C7048: .4byte 0x0819832C
_080C704C: .4byte 0x08198220
_080C7050: .4byte sub_80C7054
	thumb_func_start sub_80C7054
sub_80C7054:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C7104 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	adds r0, r7, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080C707C
	b _080C7240
_080C707C:
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C708E
	cmp r1, #0x04
	bne _080C70D0
_080C708E:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C709C
	adds r0, #0xFF
_080C709C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C70AA
	adds r0, #0xFF
_080C70AA:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C70B8
	adds r0, #0xFF
_080C70B8:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C70D0:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C70E4
	cmp r2, #0x04
	bne _080C7148
_080C70E4:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C710C
	ldr r2, _080C7108 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C7118
	.byte 0x00, 0x00
_080C7104: .4byte 0x03000FD8
_080C7108: .4byte 0x00002002
_080C710C:
	ldr r2, _080C71E4 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C7118:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080C712E
	movs r2, #0x01
_080C712E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C7148:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C7156
	cmp r2, #0x04
	bne _080C7160
_080C7156:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C7160:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C7174
	cmp r2, #0x04
	bne _080C71B6
_080C7174:
	ldr r3, [r7, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C7182
	adds r0, #0xFF
_080C7182:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C7190
	adds r0, #0xFF
_080C7190:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C719E
	adds r0, #0xFF
_080C719E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_80880C4
_080C71B6:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C71C4
	cmp r1, #0x04
	bne _080C7228
_080C71C4:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C71EC
	ldr r2, _080C71E8 @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C71F8
	.byte 0x00, 0x00
_080C71E4: .4byte 0x0000204F
_080C71E8: .4byte 0x00002002
_080C71EC:
	ldr r2, _080C7248 @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C71F8:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080C720E
	movs r2, #0x01
_080C720E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C7228:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C7236
	cmp r2, #0x04
	bne _080C7240
_080C7236:
	movs r0, #0x00
	str r0, [r7, #0x4C]
	adds r0, r7, #0x0
	bl sub_808863C
_080C7240:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C7248: .4byte 0x0000204F
	thumb_func_start sub_80C724C
sub_80C724C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080C72A0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r6
	mov r8, r1
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	adds r3, r6, #0x0
	adds r3, #0xB6
	ldrh r0, [r3, #0x00]
	ldr r4, _080C72A4 @ =0x00000FFF
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x03
	bgt _080C72AC
	ldr r2, _080C72A8 @ =0x083B89F8
	lsls r0, r1, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xBA
	b _080C733E
_080C72A0: .4byte 0x03000FD8
_080C72A4: .4byte 0x00000FFF
_080C72A8: .4byte 0x083B89F8
_080C72AC:
	ldr r5, _080C72D4 @ =0x083B8A00
	movs r1, #0x00
	ldsb r1, [r5, r1]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C72D8
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x00
	ldsb r1, [r5, r1]
	b _080C72F2
	.byte 0x00, 0x00
_080C72D4: .4byte 0x083B8A00
_080C72D8:
	movs r4, #0x00
	ldsb r4, [r5, r4]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x02
	ldsb r1, [r5, r1]
_080C72F2:
	adds r1, r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	movs r1, #0x01
	ldsb r1, [r5, r1]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C731E
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x01
	ldsb r1, [r5, r1]
	b _080C7338
_080C731E:
	movs r4, #0x01
	ldsb r4, [r5, r4]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x03
	ldsb r1, [r5, r1]
_080C7338:
	adds r1, r1, r0
	mov r0, r8
	adds r0, #0xB2
_080C733E:
	strh r1, [r0, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	bge _080C734A
	adds r0, #0xFF
_080C734A:
	asrs r0, r0, #0x08
	subs r1, r0, #0x4
	mov r0, r8
	ldr r2, [r0, #0x14]
	cmp r2, #0x00
	bge _080C7358
	adds r2, #0xFF
_080C7358:
	asrs r2, r2, #0x08
	mov r0, r8
	ldr r3, [r0, #0x18]
	cmp r3, #0x00
	bge _080C7364
	adds r3, #0xFF
_080C7364:
	asrs r3, r3, #0x08
	mov r0, r8
	str r0, [sp, #0x000]
	ldr r0, _080C7400 @ =0x00002FE6
	bl sub_80DF024
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C7384
	cmp r2, #0x04
	bne _080C73A0
_080C7384:
	ldr r2, _080C7404 @ =0x00002063
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C73A0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C73AE
	cmp r2, #0x04
	bne _080C73DE
_080C73AE:
	ldr r2, _080C7408 @ =0x03001038
	ldr r0, _080C740C @ =0x0819832C
	ldr r1, _080C7410 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x04
	bl _call_via_r2
	adds r2, r7, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C73DE:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C7414 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C7418 @ =0x080C741D
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C7400: .4byte 0x00002FE6
_080C7404: .4byte 0x00002063
_080C7408: .4byte 0x03001038
_080C740C: .4byte 0x0819832C
_080C7410: .4byte 0x08198220
_080C7414: .4byte 0x00000FFF
_080C7418: .4byte sub_80C741C
	thumb_func_start sub_80C741C
sub_80C741C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080C750C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r6, r7, #0x0
	adds r6, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	mov r1, r8
	ldr r5, [r1, #0x2C]
	bl sub_80884AC
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C7500
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C7462
	cmp r1, #0x04
	bne _080C74C4
_080C7462:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080C746A
	adds r0, #0xFF
_080C746A:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x0A
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080C7484
	adds r0, #0xFF
_080C7484:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r2, r0, #0x3
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080C749C
	adds r3, #0xFF
_080C749C:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x15
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080C74C4:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C74D6
	cmp r1, #0x04
	bne _080C74EE
_080C74D6:
	ldr r2, _080C7510 @ =0x00002034
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C74EE:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C7514 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C7518 @ =0x080C751D
	mov r1, r8
	str r0, [r1, #0x4C]
_080C7500:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C750C: .4byte 0x03000FD8
_080C7510: .4byte 0x00002034
_080C7514: .4byte 0x00000FFF
_080C7518: .4byte sub_80C751C
	thumb_func_start sub_80C751C
sub_80C751C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C7644 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C7592
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C7592:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C75A2
	b _080C7AE0
_080C75A2:
	mov r1, r12
	cmp r1, #0x00
	bge _080C75AA
	movs r1, #0x00
_080C75AA:
	ldr r0, _080C7648 @ =0x00007FFF
	cmp r1, r0
	ble _080C75B2
	adds r1, r0, #0x0
_080C75B2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C75C8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C75CA
_080C75C8:
	movs r2, #0x00
_080C75CA:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C76B0
	ldr r2, _080C7644 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C764C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C75FE
	movs r1, #0x33
_080C75F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C75F2
_080C75FE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7612
	movs r1, #0x33
_080C7606:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7606
_080C7612:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7626
	movs r1, #0x33
_080C761A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C761A
_080C7626:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C76A8
	movs r1, #0x03
_080C7630:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C763A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C763A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7630
	b _080C76A8
	.byte 0x00, 0x00
_080C7644: .4byte 0x03000FD8
_080C7648: .4byte 0x00007FFF
_080C764C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7662
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7656:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7656
_080C7662:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7678
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C766C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C766C
_080C7678:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C768E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7682:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7682
_080C768E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C76A8
	movs r1, #0x10
_080C7698:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C76A2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C76A2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7698
_080C76A8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C76B0:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C76BA
	movs r1, #0x00
_080C76BA:
	mov r3, r9
	cmp r3, #0x00
	bge _080C76C2
	movs r2, #0x00
_080C76C2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C76CC
	adds r1, r0, #0x0
_080C76CC:
	ldr r0, _080C77C4 @ =0x00007FFF
	cmp r2, r0
	ble _080C76D4
	adds r2, r0, #0x0
_080C76D4:
	cmp r2, r1
	bge _080C76DA
	adds r1, r2, #0x0
_080C76DA:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C76F2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C76F4
_080C76F2:
	movs r1, #0x00
_080C76F4:
	cmp r1, #0x00
	bne _080C76FA
	b _080C7846
_080C76FA:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C77C8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C7718
	b _080C7846
_080C7718:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C77CC @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C7832
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C77D0
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C777A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C776E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C776E
_080C777A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7790
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7784:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7784
_080C7790:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C77A6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C779A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C779A
_080C77A6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C782E
	movs r1, #0x10
_080C77B0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C77BA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C77BA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C77B0
	b _080C782E
	.byte 0x00, 0x00
_080C77C4: .4byte 0x00007FFF
_080C77C8: .4byte 0x0300034C
_080C77CC: .4byte 0x03000FD8
_080C77D0:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C77E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C77DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C77DC
_080C77E8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C77FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C77F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C77F2
_080C77FE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7814
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7808:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7808
_080C7814:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C782E
	movs r1, #0x10
_080C781E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7828
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7828:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C781E
_080C782E:
	bl sub_807F448
_080C7832:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C791C @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C7846:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C7852
	b _080C7AE0
_080C7852:
	mov r1, r9
	cmp r1, #0x00
	bge _080C785A
	movs r1, #0x00
_080C785A:
	ldr r0, _080C7920 @ =0x00007FFF
	cmp r1, r0
	ble _080C7862
	adds r1, r0, #0x0
_080C7862:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C787A
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C787C
_080C787A:
	movs r2, #0x00
_080C787C:
	cmp r2, #0x00
	bne _080C7882
	b _080C7990
_080C7882:
	ldr r3, _080C7924 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C791C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7928
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C78D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C78C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C78C6
_080C78D2:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C78E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C78DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C78DC
_080C78E8:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C78FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C78F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C78F2
_080C78FE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7984
	movs r1, #0x10
_080C7908:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7912
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7912:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7908
	b _080C7984
	.byte 0x00, 0x00
_080C791C: .4byte 0x00000FFF
_080C7920: .4byte 0x00007FFF
_080C7924: .4byte 0x03000FD8
_080C7928:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C793E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7932:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7932
_080C793E:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C7954
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7948:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7948
_080C7954:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C796A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C795E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C795E
_080C796A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7984
	movs r1, #0x10
_080C7974:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C797E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C797E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7974
_080C7984:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C7AE0
_080C7990:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C799C
	b _080C7AE0
_080C799C:
	ldr r0, _080C7A60 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C79B2
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C79B2
	b _080C7AE0
_080C79B2:
	ldr r2, _080C7A64 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C79E2
	b _080C7AE0
_080C79E2:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C7A68 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7A6C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7A16
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A0A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A0A
_080C7A16:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C7A2C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A20:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A20
_080C7A2C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7A42
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A36:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A36
_080C7A42:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7AC8
	movs r1, #0x10
_080C7A4C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7A56
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7A56:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7A4C
	b _080C7AC8
	.byte 0x00, 0x00
_080C7A60: .4byte 0x0300034C
_080C7A64: .4byte 0x03000FD8
_080C7A68: .4byte 0x00000FFF
_080C7A6C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7A82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A76
_080C7A82:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C7A98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A8C
_080C7A98:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7AAE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7AA2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7AA2
_080C7AAE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7AC8
	movs r1, #0x10
_080C7AB8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7AC2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7AC2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7AB8
_080C7AC8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C7AE0:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C7B58
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C7AF6
	movs r1, #0x00
_080C7AF6:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C7B00
	adds r2, r0, #0x0
_080C7B00:
	ldr r0, _080C7B4C @ =0x00007FFF
	cmp r1, r0
	ble _080C7B08
	adds r1, r0, #0x0
_080C7B08:
	cmp r1, r2
	bge _080C7B0E
	adds r2, r1, #0x0
_080C7B0E:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C7B28
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C7B2A
_080C7B28:
	movs r2, #0x00
_080C7B2A:
	cmp r2, #0x00
	beq _080C7B58
	cmp r3, #0x01
	ble _080C7B58
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C7B50 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C7B54 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C7BA0
	.byte 0x00, 0x00
_080C7B4C: .4byte 0x00007FFF
_080C7B50: .4byte 0x00000FFF
_080C7B54: .4byte sub_80C65BC
_080C7B58:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7BA0
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C7B76
	cmp r1, #0x04
	bne _080C7B8E
_080C7B76:
	ldr r2, _080C7BB0 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C7B8E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C7BB4 @ =0x00000FFF
	ands r1, r0
	mov r2, r8
	strh r1, [r2, #0x00]
	ldr r0, _080C7BB8 @ =0x080C7BBD
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080C7BA0:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C7BB0: .4byte 0x00002034
_080C7BB4: .4byte 0x00000FFF
_080C7BB8: .4byte sub_80C7BBC
	thumb_func_start sub_80C7BBC
sub_80C7BBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C7CE4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C7C32
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C7C32:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C7C42
	b _080C8180
_080C7C42:
	mov r1, r12
	cmp r1, #0x00
	bge _080C7C4A
	movs r1, #0x00
_080C7C4A:
	ldr r0, _080C7CE8 @ =0x00007FFF
	cmp r1, r0
	ble _080C7C52
	adds r1, r0, #0x0
_080C7C52:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C7C68
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C7C6A
_080C7C68:
	movs r2, #0x00
_080C7C6A:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C7D50
	ldr r2, _080C7CE4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C7CEC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7C9E
	movs r1, #0x33
_080C7C92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7C92
_080C7C9E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7CB2
	movs r1, #0x33
_080C7CA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7CA6
_080C7CB2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7CC6
	movs r1, #0x33
_080C7CBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7CBA
_080C7CC6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7D48
	movs r1, #0x03
_080C7CD0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7CDA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7CDA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7CD0
	b _080C7D48
	.byte 0x00, 0x00
_080C7CE4: .4byte 0x03000FD8
_080C7CE8: .4byte 0x00007FFF
_080C7CEC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7D02
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7CF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7CF6
_080C7D02:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7D18
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7D0C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7D0C
_080C7D18:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7D2E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7D22:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7D22
_080C7D2E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7D48
	movs r1, #0x10
_080C7D38:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7D42
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7D42:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7D38
_080C7D48:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C7D50:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C7D5A
	movs r1, #0x00
_080C7D5A:
	mov r3, r9
	cmp r3, #0x00
	bge _080C7D62
	movs r2, #0x00
_080C7D62:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C7D6C
	adds r1, r0, #0x0
_080C7D6C:
	ldr r0, _080C7E64 @ =0x00007FFF
	cmp r2, r0
	ble _080C7D74
	adds r2, r0, #0x0
_080C7D74:
	cmp r2, r1
	bge _080C7D7A
	adds r1, r2, #0x0
_080C7D7A:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C7D92
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C7D94
_080C7D92:
	movs r1, #0x00
_080C7D94:
	cmp r1, #0x00
	bne _080C7D9A
	b _080C7EE6
_080C7D9A:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C7E68 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C7DB8
	b _080C7EE6
_080C7DB8:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C7E6C @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C7ED2
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7E70
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C7E1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E0E
_080C7E1A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7E30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E24
_080C7E30:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7E46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E3A
_080C7E46:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7ECE
	movs r1, #0x10
_080C7E50:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7E5A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7E5A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7E50
	b _080C7ECE
	.byte 0x00, 0x00
_080C7E64: .4byte 0x00007FFF
_080C7E68: .4byte 0x0300034C
_080C7E6C: .4byte 0x03000FD8
_080C7E70:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C7E88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E7C
_080C7E88:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7E9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E92
_080C7E9E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7EB4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7EA8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7EA8
_080C7EB4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7ECE
	movs r1, #0x10
_080C7EBE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7EC8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7EC8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7EBE
_080C7ECE:
	bl sub_807F448
_080C7ED2:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C7FBC @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C7EE6:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C7EF2
	b _080C8180
_080C7EF2:
	mov r1, r9
	cmp r1, #0x00
	bge _080C7EFA
	movs r1, #0x00
_080C7EFA:
	ldr r0, _080C7FC0 @ =0x00007FFF
	cmp r1, r0
	ble _080C7F02
	adds r1, r0, #0x0
_080C7F02:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C7F1A
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C7F1C
_080C7F1A:
	movs r2, #0x00
_080C7F1C:
	cmp r2, #0x00
	bne _080C7F22
	b _080C8030
_080C7F22:
	ldr r3, _080C7FC4 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C7FBC @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7FC8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7F72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7F66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7F66
_080C7F72:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7F88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7F7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7F7C
_080C7F88:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7F9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7F92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7F92
_080C7F9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8024
	movs r1, #0x10
_080C7FA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7FB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7FB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7FA8
	b _080C8024
	.byte 0x00, 0x00
_080C7FBC: .4byte 0x00000FFF
_080C7FC0: .4byte 0x00007FFF
_080C7FC4: .4byte 0x03000FD8
_080C7FC8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7FDE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7FD2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7FD2
_080C7FDE:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7FF4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7FE8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7FE8
_080C7FF4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C800A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7FFE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7FFE
_080C800A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8024
	movs r1, #0x10
_080C8014:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C801E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C801E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8014
_080C8024:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C8180
_080C8030:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C803C
	b _080C8180
_080C803C:
	ldr r0, _080C8100 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C8052
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C8052
	b _080C8180
_080C8052:
	ldr r2, _080C8104 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C8082
	b _080C8180
_080C8082:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C8108 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C810C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C80B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C80AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C80AA
_080C80B6:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C80CC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C80C0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C80C0
_080C80CC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C80E2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C80D6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C80D6
_080C80E2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8168
	movs r1, #0x10
_080C80EC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C80F6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C80F6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C80EC
	b _080C8168
	.byte 0x00, 0x00
_080C8100: .4byte 0x0300034C
_080C8104: .4byte 0x03000FD8
_080C8108: .4byte 0x00000FFF
_080C810C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8122
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8116:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8116
_080C8122:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C8138
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C812C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C812C
_080C8138:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C814E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8142:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8142
_080C814E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8168
	movs r1, #0x10
_080C8158:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C8162
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C8162:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8158
_080C8168:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C8180:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C81F8
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C8196
	movs r1, #0x00
_080C8196:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C81A0
	adds r2, r0, #0x0
_080C81A0:
	ldr r0, _080C81EC @ =0x00007FFF
	cmp r1, r0
	ble _080C81A8
	adds r1, r0, #0x0
_080C81A8:
	cmp r1, r2
	bge _080C81AE
	adds r2, r1, #0x0
_080C81AE:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C81C8
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C81CA
_080C81C8:
	movs r2, #0x00
_080C81CA:
	cmp r2, #0x00
	beq _080C81F8
	cmp r3, #0x01
	ble _080C81F8
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C81F0 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C81F4 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C828E
	.byte 0x00, 0x00
_080C81EC: .4byte 0x00007FFF
_080C81F0: .4byte 0x00000FFF
_080C81F4: .4byte sub_80C65BC
_080C81F8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C828E
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080C82A0 @ =0x0403048B
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080C8250
	ldr r3, _080C82A4 @ =0x00000111
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C8288
_080C8250:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C8258
	adds r0, #0xFF
_080C8258:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x4
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080C8270
	adds r2, #0xFF
_080C8270:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080C82A8 @ =0x0000070B
	str r6, [sp, #0x000]
	movs r3, #0x18
	bl sub_80DF024
_080C8288:
	ldr r0, _080C82AC @ =0x080C8609
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080C828E:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C82A0: .4byte 0x0403048B
_080C82A4: .4byte 0x00000111
_080C82A8: .4byte 0x0000070B
_080C82AC: .4byte sub_80C8608
	thumb_func_start sub_80C82B0
sub_80C82B0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080C8370 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C8368
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C82DE
	cmp r1, #0x04
	bne _080C82F6
_080C82DE:
	ldr r2, _080C8374 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C82F6:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C8308
	cmp r1, #0x04
	bne _080C8364
_080C8308:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8316
	adds r0, #0xFF
_080C8316:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8328
	adds r0, #0xFF
_080C8328:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C833A
	adds r0, #0xFF
_080C833A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080C8350
	adds r0, #0xFF
_080C8350:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080C8364:
	ldr r0, _080C8378 @ =0x080C837D
	str r0, [r5, #0x4C]
_080C8368:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080C8370: .4byte 0x03000FD8
_080C8374: .4byte 0x00002034
_080C8378: .4byte sub_80C837C
	thumb_func_start sub_80C837C
sub_80C837C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C840C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C8402
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080C83B2
	adds r1, #0xFF
_080C83B2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080C83BC
	adds r2, #0xFF
_080C83BC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080C83C6
	adds r3, #0xFF
_080C83C6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C83E2
	cmp r1, #0x04
	bne _080C83FE
_080C83E2:
	ldr r2, _080C8410 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C83FE:
	ldr r0, _080C8414 @ =0x080C8419
	str r0, [r6, #0x4C]
_080C8402:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C840C: .4byte 0x03000FD8
_080C8410: .4byte 0x00002034
_080C8414: .4byte sub_80C8418
	thumb_func_start sub_80C8418
sub_80C8418:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C84C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080C843A
	b _080C85FC
_080C843A:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C844C
	cmp r1, #0x04
	bne _080C848E
_080C844C:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C845A
	adds r0, #0xFF
_080C845A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8468
	adds r0, #0xFF
_080C8468:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8476
	adds r0, #0xFF
_080C8476:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080C848E:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C84A2
	cmp r2, #0x04
	bne _080C8504
_080C84A2:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C84C8
	ldr r2, _080C84C4 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C84D4
_080C84C0: .4byte 0x03000FD8
_080C84C4: .4byte 0x00002002
_080C84C8:
	ldr r2, _080C85A0 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C84D4:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C84EA
	movs r2, #0x01
_080C84EA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C8504:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C8512
	cmp r2, #0x04
	bne _080C851C
_080C8512:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080C851C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C8530
	cmp r2, #0x04
	bne _080C8572
_080C8530:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C853E
	adds r0, #0xFF
_080C853E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C854C
	adds r0, #0xFF
_080C854C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C855A
	adds r0, #0xFF
_080C855A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C8572:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C8580
	cmp r1, #0x04
	bne _080C85E4
_080C8580:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C85A8
	ldr r2, _080C85A4 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C85B4
	.byte 0x00, 0x00
_080C85A0: .4byte 0x0000204F
_080C85A4: .4byte 0x00002002
_080C85A8:
	ldr r2, _080C8604 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C85B4:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C85CA
	movs r2, #0x01
_080C85CA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C85E4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C85F2
	cmp r2, #0x04
	bne _080C85FC
_080C85F2:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C85FC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C8604: .4byte 0x0000204F
	thumb_func_start sub_80C8608
sub_80C8608:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080C8674 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r3, [r6, #0x2C]
	ldr r0, [r3, #0x28]
	ldr r1, _080C8678 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080C863A
	adds r0, r3, #0x0
	bl sub_8086700
_080C863A:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C864C
	cmp r1, #0x04
	bne _080C8668
_080C864C:
	ldr r2, _080C867C @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C8668:
	ldr r0, _080C8680 @ =0x080C82B1
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C8674: .4byte 0x03000FD8
_080C8678: .4byte 0x00000111
_080C867C: .4byte 0x00002034
_080C8680: .4byte sub_80C82B0
	thumb_func_start sub_80C8684
sub_80C8684:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C86D8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C86D0
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C86B0
	cmp r1, #0x04
	bne _080C86CC
_080C86B0:
	ldr r2, _080C86DC @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C86CC:
	ldr r0, _080C86E0 @ =0x080C33B1
	str r0, [r5, #0x4C]
_080C86D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C86D8: .4byte 0x03000FD8
_080C86DC: .4byte 0x00002063
_080C86E0: .4byte sub_80C33B0
	thumb_func_start sub_80C86E4
sub_80C86E4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080C8738 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C8732
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C8716
	cmp r1, #0x04
	bne _080C872E
_080C8716:
	ldr r2, _080C873C @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C872E:
	ldr r0, _080C8740 @ =0x080C2F19
	str r0, [r6, #0x4C]
_080C8732:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080C8738: .4byte 0x03000FD8
_080C873C: .4byte 0x00002034
_080C8740: .4byte sub_80C2F18
	thumb_func_start sub_80C8744
sub_80C8744:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C8798 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C8790
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C8770
	cmp r1, #0x04
	bne _080C878C
_080C8770:
	ldr r2, _080C879C @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C878C:
	ldr r0, _080C87A0 @ =0x080C26E5
	str r0, [r5, #0x4C]
_080C8790:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C8798: .4byte 0x03000FD8
_080C879C: .4byte 0x00002063
_080C87A0: .4byte sub_80C26E4
	thumb_func_start sub_80C87A4
sub_80C87A4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C87F8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C87F0
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C87D0
	cmp r1, #0x04
	bne _080C87EC
_080C87D0:
	ldr r2, _080C87FC @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C87EC:
	ldr r0, _080C8800 @ =0x080C1CE5
	str r0, [r5, #0x4C]
_080C87F0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C87F8: .4byte 0x03000FD8
_080C87FC: .4byte 0x00002034
_080C8800: .4byte sub_80C1CE4
	thumb_func_start sub_80C8804
sub_80C8804:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C882C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C8826
	ldr r0, _080C8830 @ =0x080C0F31
	str r0, [r5, #0x4C]
_080C8826:
	pop {r4, r5}
	pop {r0}
	bx r0
_080C882C: .4byte 0x03000FD8
_080C8830: .4byte sub_80C0F30
	.byte 0x70, 0xB5, 0x4E, 0x46, 0x45, 0x46, 0x60, 0xB4, 0x81, 0x46, 0x1F, 0x4A, 0x83, 0x6A, 0x18, 0x1C
	.byte 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F, 0x08, 0x01, 0x40, 0x1A, 0x80, 0x00, 0x3C, 0x30, 0x11, 0x68
	.byte 0x09, 0x1A, 0x8A, 0x20, 0x40, 0x00, 0x1A, 0x18, 0x48, 0x8D, 0x10, 0x60, 0x17, 0x48, 0x00, 0x68
	.byte 0x05, 0x6F, 0x08, 0x21, 0x49, 0x19, 0x88, 0x46, 0x44, 0x6F, 0x26, 0x1C, 0x08, 0x36, 0x4A, 0x46
	.byte 0xD0, 0x6A, 0xF0, 0x62, 0xC8, 0x62, 0xD1, 0x6E, 0xF1, 0x66, 0x42, 0x46, 0xD1, 0x66, 0x00, 0x23
	.byte 0x03, 0x65, 0x33, 0x65, 0x13, 0x65, 0x02, 0x1C, 0x7C, 0x32, 0x80, 0x21, 0x49, 0x00, 0x11, 0x80
	.byte 0x84, 0x34, 0x21, 0x80, 0x84, 0x35, 0x29, 0x80, 0x09, 0x49, 0x4C, 0x46, 0xE1, 0x64, 0xB3, 0x84
	.byte 0x41, 0x46, 0x8B, 0x84, 0xBE, 0xF7, 0x04, 0xFC, 0x01, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0xD8, 0x0F, 0x00, 0x03
	.byte 0xC9, 0x88, 0x0C, 0x08
	thumb_func_start sub_80C88C8
sub_80C88C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r3, _080C8A68 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	movs r5, #0x06
	strb r5, [r0, #0x0E]
	ldr r4, [r3, #0x00]
	ldr r0, _080C8A6C @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x46
	ldrb r2, [r0, #0x00]
	lsrs r2, r2, #0x03
	movs r0, #0x01
	ands r2, r0
	adds r1, #0x48
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1B
	movs r1, #0x01
	ands r0, r1
	lsls r0, r0, #0x01
	adds r2, r2, r0
	lsls r2, r2, #0x06
	ldrb r1, [r4, #0x0A]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r1, [r0, #0x74]
	adds r7, r1, #0x0
	adds r7, #0x08
	adds r0, r4, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x10
	adds r1, #0x7D
	strb r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x53
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x02
	beq _080C8942
	cmp r5, #0x04
	bne _080C898A
_080C8942:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8950
	adds r0, #0xFF
_080C8950:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8962
	adds r0, #0xFF
_080C8962:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8974
	adds r0, #0xFF
_080C8974:
	asrs r3, r0, #0x08
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080C898A:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C899E
	cmp r2, #0x04
	bne _080C89B6
_080C899E:
	ldr r2, _080C8A70 @ =0x00002034
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C89B6:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C89C4
	cmp r2, #0x04
	bne _080C89CE
_080C89C4:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808862C
_080C89CE:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C89E2
	cmp r2, #0x04
	bne _080C8A2C
_080C89E2:
	ldr r3, [r7, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C89F0
	adds r0, #0xFF
_080C89F0:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x0A
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8A02
	adds r0, #0xFF
_080C8A02:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8A14
	adds r0, #0xFF
_080C8A14:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_80880C4
_080C8A2C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C8A3A
	cmp r2, #0x04
	bne _080C8A52
_080C8A3A:
	ldr r2, _080C8A74 @ =0x00002063
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C8A52:
	ldr r0, _080C8A78 @ =0x080CCE4D
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C8A68: .4byte 0x03000FD8
_080C8A6C: .4byte 0x03000FF4
_080C8A70: .4byte 0x00002034
_080C8A74: .4byte 0x00002063
_080C8A78: .4byte sub_80CCE4C
