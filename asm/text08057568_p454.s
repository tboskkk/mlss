	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80D1FA4
sub_80D1FA4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080D2050 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2048
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1FD2
	cmp r1, #0x04
	bne _080D2016
_080D1FD2:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D1FDA
	adds r1, #0xFF
_080D1FDA:
	asrs r1, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D1FF0
	adds r2, #0xFF
_080D1FF0:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
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
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_080D2016:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2028
	cmp r1, #0x04
	bne _080D2044
_080D2028:
	ldr r2, _080D2054 @ =0x00002036
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
_080D2044:
	ldr r0, _080D2058 @ =0x080D205D
	str r0, [r5, #0x4C]
_080D2048:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D2050: .4byte 0x03000FD8
_080D2054: .4byte 0x00002036
_080D2058: .4byte sub_80D205C
	thumb_func_start sub_80D205C
sub_80D205C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D20E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087EFC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D20DE
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D2092
	adds r1, #0xFF
_080D2092:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D209C
	adds r2, #0xFF
_080D209C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D20A6
	adds r3, #0xFF
_080D20A6:
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
	beq _080D20C2
	cmp r1, #0x04
	bne _080D20DA
_080D20C2:
	ldr r2, _080D20EC @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D20DA:
	ldr r0, _080D20F0 @ =0x080D20F5
	str r0, [r6, #0x4C]
_080D20DE:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D20E8: .4byte 0x03000FD8
_080D20EC: .4byte 0x00002036
_080D20F0: .4byte sub_80D20F4
	thumb_func_start sub_80D20F4
sub_80D20F4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D21A4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D2116
	b _080D22E0
_080D2116:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2134
	cmp r1, #0x04
	bne _080D2172
_080D2134:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2142
	adds r0, #0xFF
_080D2142:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2150
	adds r0, #0xFF
_080D2150:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D215E
	adds r0, #0xFF
_080D215E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080D2172:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080D2186
	cmp r2, #0x04
	bne _080D21E8
_080D2186:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D21AC
	ldr r2, _080D21A8 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D21B8
_080D21A4: .4byte 0x03000FD8
_080D21A8: .4byte 0x00002002
_080D21AC:
	ldr r2, _080D2284 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D21B8:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D21CE
	movs r2, #0x01
_080D21CE:
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
_080D21E8:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D21F6
	cmp r2, #0x04
	bne _080D2200
_080D21F6:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D2200:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D2214
	cmp r2, #0x04
	bne _080D2256
_080D2214:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2222
	adds r0, #0xFF
_080D2222:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2230
	adds r0, #0xFF
_080D2230:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D223E
	adds r0, #0xFF
_080D223E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080D2256:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2264
	cmp r1, #0x04
	bne _080D22C8
_080D2264:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D228C
	ldr r2, _080D2288 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D2298
	.byte 0x00, 0x00
_080D2284: .4byte 0x0000204F
_080D2288: .4byte 0x00002002
_080D228C:
	ldr r2, _080D22E8 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D2298:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D22AE
	movs r2, #0x01
_080D22AE:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D22C8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D22D6
	cmp r2, #0x04
	bne _080D22E0
_080D22D6:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D22E0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D22E8: .4byte 0x0000204F
	thumb_func_start sub_80D22EC
sub_80D22EC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, [r4, #0x2C]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2304
	cmp r1, #0x04
	bne _080D2370
_080D2304:
	ldr r1, [r3, #0x38]
	ldr r0, [r4, #0x38]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080D2310
	adds r0, #0xFF
_080D2310:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r5, r0, #0x01
	ldr r1, [r3, #0x3C]
	ldr r0, [r4, #0x3C]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080D2330
	adds r1, #0xFF
_080D2330:
	asrs r2, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080D235C
	adds r0, #0xFF
_080D235C:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
_080D2370:
	ldr r0, _080D237C @ =0x080D2381
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D237C: .4byte sub_80D2380
	thumb_func_start sub_80D2380
sub_80D2380:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r5, [r6, #0x2C]
	bl sub_8087CE4
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D2482
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x9C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D23B8
	cmp r1, #0x04
	bne _080D247E
_080D23B8:
	ldr r1, [r5, #0x38]
	ldr r0, [r6, #0x38]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080D23C4
	adds r0, #0xFF
_080D23C4:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r3, r0, #0x01
	ldr r1, [r5, #0x3C]
	ldr r0, [r6, #0x3C]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080D23E4
	adds r1, #0xFF
_080D23E4:
	asrs r2, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r1, [r5, #0x18]
	cmp r1, #0x00
	bge _080D240C
	adds r1, #0xFF
_080D240C:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	movs r2, #0x00
	ldsb r2, [r0, r2]
	adds r1, r1, r2
	movs r0, #0x50
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r7, r0, #0x01
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080D242E
	adds r4, r2, #0x0
	b _080D243E
_080D242E:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D243E:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D2446
	adds r0, #0xFF
_080D2446:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D248C @ =0x03001038
	ldr r0, _080D2490 @ =0x0819832C
	ldr r1, _080D2494 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D2464
	adds r1, #0x3F
_080D2464:
	asrs r1, r1, #0x06
	adds r1, r7, r1
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080D247E:
	ldr r0, _080D2498 @ =0x080D249D
	str r0, [r6, #0x4C]
_080D2482:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D248C: .4byte 0x03001038
_080D2490: .4byte 0x0819832C
_080D2494: .4byte 0x08198220
_080D2498: .4byte sub_80D249C
	thumb_func_start sub_80D249C
sub_80D249C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x2C]
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D24B8
	b _080D25EC
_080D24B8:
	ldr r0, [r4, #0x28]
	ldr r1, _080D2538 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x19
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D253C @ =0x0423448C
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D2520
	ldr r2, _080D2538 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D25D6
_080D2520:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	cmp r0, #0x08
	bhi _080D25A0
	lsls r0, r0, #0x02
	ldr r1, _080D2540 @ =0x080D2544
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080D2538: .4byte 0x00000111
_080D253C: .4byte 0x0423448C
_080D2540: .4byte 0x080D2544
	.byte 0x68, 0x25, 0x0D, 0x08, 0xA0, 0x25, 0x0D, 0x08, 0x68, 0x25, 0x0D, 0x08, 0xA0, 0x25, 0x0D, 0x08
	.byte 0x68, 0x25, 0x0D, 0x08, 0xA0, 0x25, 0x0D, 0x08, 0x68, 0x25, 0x0D, 0x08, 0xA0, 0x25, 0x0D, 0x08
	.byte 0x68, 0x25, 0x0D, 0x08, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C
	.byte 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA
	.byte 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18
	.byte 0x00, 0x94, 0x7D, 0x20, 0x00, 0x23, 0x0C, 0xF0, 0x43, 0xFD, 0x1A, 0xE0
_080D25A0:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D25A8
	adds r1, #0xFF
_080D25A8:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D25BE
	adds r2, #0xFF
_080D25BE:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080D25D6:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D25E8
	cmp r1, #0x04
	bne _080D25EC
_080D25E8:
	ldr r0, _080D25F4 @ =0x080D2D29
	str r0, [r5, #0x4C]
_080D25EC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D25F4: .4byte sub_80D2D28
	thumb_func_start sub_80D25F8
sub_80D25F8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080D265C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2624
	cmp r1, #0x04
	bne _080D2628
_080D2624:
	ldr r0, _080D2660 @ =0x080D29D5
	str r0, [r2, #0x4C]
_080D2628:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D263A
	cmp r1, #0x04
	bne _080D2652
_080D263A:
	ldr r2, _080D2664 @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D2652:
	ldr r0, _080D2668 @ =0x080D266D
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_080D265C: .4byte 0x03000FD8
_080D2660: .4byte sub_80D29D4
_080D2664: .4byte 0x00002036
_080D2668: .4byte sub_80D266C
	thumb_func_start sub_80D266C
sub_80D266C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080D2718 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2710
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D269A
	cmp r1, #0x04
	bne _080D26DE
_080D269A:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D26A2
	adds r1, #0xFF
_080D26A2:
	asrs r1, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D26B8
	adds r2, #0xFF
_080D26B8:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
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
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_080D26DE:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D26F0
	cmp r1, #0x04
	bne _080D270C
_080D26F0:
	ldr r2, _080D271C @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x0A
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
_080D270C:
	ldr r0, _080D2720 @ =0x080D2725
	str r0, [r5, #0x4C]
_080D2710:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D2718: .4byte 0x03000FD8
_080D271C: .4byte 0x00002036
_080D2720: .4byte sub_80D2724
	thumb_func_start sub_80D2724
sub_80D2724:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D27A8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087EFC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D27CC
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x65
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D275C
	adds r1, #0xFF
_080D275C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D2766
	adds r2, #0xFF
_080D2766:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D2770
	adds r3, #0xFF
_080D2770:
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
	beq _080D278C
	cmp r1, #0x04
	bne _080D27C8
_080D278C:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r6
	bne _080D27AC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080D27B8
_080D27A8: .4byte 0x03000FD8
_080D27AC:
	ldr r2, _080D27D4 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080D27B8:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D27C8:
	ldr r0, _080D27D8 @ =0x080D27DD
	str r0, [r7, #0x4C]
_080D27CC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D27D4: .4byte 0x0000204D
_080D27D8: .4byte sub_80D27DC
	thumb_func_start sub_80D27DC
sub_80D27DC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D288C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D27FE
	b _080D29C8
_080D27FE:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D281C
	cmp r1, #0x04
	bne _080D285A
_080D281C:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D282A
	adds r0, #0xFF
_080D282A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2838
	adds r0, #0xFF
_080D2838:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2846
	adds r0, #0xFF
_080D2846:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080D285A:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080D286E
	cmp r2, #0x04
	bne _080D28D0
_080D286E:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D2894
	ldr r2, _080D2890 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D28A0
_080D288C: .4byte 0x03000FD8
_080D2890: .4byte 0x00002002
_080D2894:
	ldr r2, _080D296C @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D28A0:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D28B6
	movs r2, #0x01
_080D28B6:
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
_080D28D0:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D28DE
	cmp r2, #0x04
	bne _080D28E8
_080D28DE:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D28E8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D28FC
	cmp r2, #0x04
	bne _080D293E
_080D28FC:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D290A
	adds r0, #0xFF
_080D290A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2918
	adds r0, #0xFF
_080D2918:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2926
	adds r0, #0xFF
_080D2926:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080D293E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D294C
	cmp r1, #0x04
	bne _080D29B0
_080D294C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D2974
	ldr r2, _080D2970 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D2980
	.byte 0x00, 0x00
_080D296C: .4byte 0x0000204F
_080D2970: .4byte 0x00002002
_080D2974:
	ldr r2, _080D29D0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D2980:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D2996
	movs r2, #0x01
_080D2996:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D29B0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D29BE
	cmp r2, #0x04
	bne _080D29C8
_080D29BE:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D29C8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D29D0: .4byte 0x0000204F
	thumb_func_start sub_80D29D4
sub_80D29D4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r6, [r4, #0x2C]
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	cmp r0, #0x08
	bhi _080D2A48
	lsls r0, r0, #0x02
	ldr r1, _080D29F4 @ =0x080D29F8
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080D29F4: .4byte 0x080D29F8
	.byte 0x1C, 0x2A, 0x0D, 0x08, 0x48, 0x2A, 0x0D, 0x08, 0x1C, 0x2A, 0x0D, 0x08, 0x48, 0x2A, 0x0D, 0x08
	.byte 0x1C, 0x2A, 0x0D, 0x08, 0x48, 0x2A, 0x0D, 0x08, 0x1C, 0x2A, 0x0D, 0x08, 0x48, 0x2A, 0x0D, 0x08
	.byte 0x1C, 0x2A, 0x0D, 0x08, 0x21, 0x69, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x62, 0x69
	.byte 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0xA3, 0x69, 0x00, 0x2B, 0x00, 0xDA, 0xFF, 0x33
	.byte 0x1B, 0x12, 0x00, 0x94, 0x01, 0x48, 0x0C, 0xF0, 0xF1, 0xFA, 0x14, 0xE0, 0x02, 0x30, 0x00, 0x00
_080D2A48:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D2A50
	adds r1, #0xFF
_080D2A50:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D2A5A
	adds r2, #0xFF
_080D2A5A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D2A64
	adds r3, #0xFF
_080D2A64:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x00
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2A80
	cmp r1, #0x04
	bne _080D2AE2
_080D2A80:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080D2A88
	adds r0, #0xFF
_080D2A88:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r5, r0, #0x0
	subs r5, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080D2AA2
	adds r0, #0xFF
_080D2AA2:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080D2AB8
	adds r3, #0xFF
_080D2AB8:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	movs r2, #0x33
	bl sub_8088274
_080D2AE2:
	ldr r0, _080D2AF0 @ =0x080D2AF5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D2AF0: .4byte sub_80D2AF4
	thumb_func_start sub_80D2AF4
sub_80D2AF4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x2C]
	bl sub_8087EFC
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D2B10
	b _080D2D1C
_080D2B10:
	ldr r0, [r4, #0x28]
	ldr r1, _080D2B94 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x5F
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D2B98 @ =0x0423458C
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D2B7A
	ldr r2, _080D2B94 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D2B7A
	b _080D2D06
_080D2B7A:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	cmp r0, #0x08
	bls _080D2B88
	b _080D2CD0
_080D2B88:
	lsls r0, r0, #0x02
	ldr r1, _080D2B9C @ =0x080D2BA0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080D2B94: .4byte 0x00000111
_080D2B98: .4byte 0x0423458C
_080D2B9C: .4byte 0x080D2BA0
	.byte 0xC4, 0x2B, 0x0D, 0x08, 0xD0, 0x2C, 0x0D, 0x08, 0xF8, 0x2B, 0x0D, 0x08, 0xD0, 0x2C, 0x0D, 0x08
	.byte 0x2C, 0x2C, 0x0D, 0x08, 0xD0, 0x2C, 0x0D, 0x08, 0x60, 0x2C, 0x0D, 0x08, 0xD0, 0x2C, 0x0D, 0x08
	.byte 0x94, 0x2C, 0x0D, 0x08, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C
	.byte 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA
	.byte 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18
	.byte 0x00, 0x48, 0x66, 0xE0, 0xAC, 0x2E, 0x00, 0x00, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31
	.byte 0x09, 0x12, 0x20, 0x1C, 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B
	.byte 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06
	.byte 0x00, 0x16, 0x12, 0x18, 0x00, 0x48, 0x4C, 0xE0, 0xC5, 0x2E, 0x00, 0x00, 0xA1, 0x6B, 0x00, 0x29
	.byte 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C, 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16
	.byte 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30
	.byte 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18, 0x00, 0x48, 0x32, 0xE0, 0xE3, 0x2E, 0x00, 0x00
	.byte 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C, 0xC3, 0x30, 0x00, 0x78
	.byte 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12
	.byte 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18, 0x00, 0x48, 0x18, 0xE0
	.byte 0x01, 0x2F, 0x00, 0x00, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C
	.byte 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA
	.byte 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18
	.byte 0x02, 0x48, 0x00, 0x94, 0x00, 0x23, 0x0C, 0xF0, 0xAD, 0xF9, 0x1C, 0xE0, 0x1F, 0x2F, 0x00, 0x00
_080D2CD0:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D2CD8
	adds r1, #0xFF
_080D2CD8:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D2CEE
	adds r2, #0xFF
_080D2CEE:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080D2D06:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2D18
	cmp r1, #0x04
	bne _080D2D1C
_080D2D18:
	ldr r0, _080D2D24 @ =0x080D2D29
	str r0, [r5, #0x4C]
_080D2D1C:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D2D24: .4byte sub_80D2D28
