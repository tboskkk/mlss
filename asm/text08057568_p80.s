	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A2E7C
sub_80A2E7C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A2EE8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8087CE4
	adds r5, r4, #0x0
	adds r5, #0x81
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A2EE0
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2EAE
	cmp r1, #0x04
	bne _080A2EDC
_080A2EAE:
	ldr r2, _080A2EEC @ =0x03001038
	ldr r0, _080A2EF0 @ =0x0819832C
	ldr r1, _080A2EF4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_080A2EDC:
	ldr r0, _080A2EF8 @ =0x080A3B25
	str r0, [r6, #0x4C]
_080A2EE0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A2EE8: .4byte 0x03000FD8
_080A2EEC: .4byte 0x03001038
_080A2EF0: .4byte 0x0819832C
_080A2EF4: .4byte 0x08198220
_080A2EF8: .4byte sub_80A3B24
	thumb_func_start sub_80A2EFC
sub_80A2EFC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080A2F60 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A2F58
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2F24
	cmp r1, #0x04
	bne _080A2F54
_080A2F24:
	ldr r2, _080A2F64 @ =0x03001038
	ldr r0, _080A2F68 @ =0x0819832C
	ldr r1, _080A2F6C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x04
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A2F54:
	ldr r0, _080A2F70 @ =0x080A2F75
	str r0, [r5, #0x4C]
_080A2F58:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A2F60: .4byte 0x03000FD8
_080A2F64: .4byte 0x03001038
_080A2F68: .4byte 0x0819832C
_080A2F6C: .4byte 0x08198220
_080A2F70: .4byte sub_80A2F74
	thumb_func_start sub_80A2F74
sub_80A2F74:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A302C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
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
	beq _080A3024
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2FBA
	cmp r1, #0x04
	bne _080A2FD2
_080A2FBA:
	ldr r2, _080A3030 @ =0x00002024
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A2FD2:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2FE4
	cmp r1, #0x04
	bne _080A3014
_080A2FE4:
	ldr r2, _080A3034 @ =0x03001038
	ldr r0, _080A3038 @ =0x0819832C
	ldr r1, _080A303C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A3014:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A3040 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A3044 @ =0x080A3049
	str r0, [r6, #0x4C]
_080A3024:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A302C: .4byte 0x03000FD8
_080A3030: .4byte 0x00002024
_080A3034: .4byte 0x03001038
_080A3038: .4byte 0x0819832C
_080A303C: .4byte 0x08198220
_080A3040: .4byte 0x00000FFF
_080A3044: .4byte sub_80A3048
	thumb_func_start sub_80A3048
sub_80A3048:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080A312C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	movs r7, #0x80
	lsls r7, r7, #0x07
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r7
	bge _080A307E
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A307E:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r5, r1, #0x0
	cmp r0, #0x00
	beq _080A308E
	b _080A3198
_080A308E:
	adds r2, r7, #0x0
	movs r1, #0x00
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, r1
	blt _080A30A8
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A30AA
_080A30A8:
	movs r1, #0x00
_080A30AA:
	adds r5, r6, #0x0
	adds r5, #0xAE
	cmp r1, #0x00
	beq _080A30CE
	ldr r0, _080A3130 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080A30CE
	ldrh r0, [r5, #0x00]
	ldr r1, _080A3134 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r5, #0x00]
_080A30CE:
	ldrh r0, [r5, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	bne _080A3198
	adds r1, r7, #0x0
	ldr r0, _080A3138 @ =0x00007FFF
	cmp r1, r0
	ble _080A30E0
	adds r1, r0, #0x0
_080A30E0:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080A30FA
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080A30FC
_080A30FA:
	movs r2, #0x00
_080A30FC:
	cmp r2, #0x00
	beq _080A313C
	ldr r0, _080A312C @ =0x03000FD8
	ldr r3, [r0, #0x00]
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
	ldrh r1, [r5, #0x00]
	ldr r0, _080A3134 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	b _080A3198
_080A312C: .4byte 0x03000FD8
_080A3130: .4byte 0x0300034C
_080A3134: .4byte 0x00000FFF
_080A3138: .4byte 0x00007FFF
_080A313C:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r7
	bgt _080A3198
	ldr r0, _080A31F8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A315C
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A3198
_080A315C:
	ldr r4, _080A31FC @ =0x03000FD8
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
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A3198
	ldrh r0, [r5, #0x00]
	ldr r1, _080A3200 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r5, #0x00]
_080A3198:
	ldrh r0, [r5, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080A320C
	movs r1, #0x00
	adds r2, r7, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A31AE
	adds r1, r0, #0x0
_080A31AE:
	ldr r0, _080A3204 @ =0x00007FFF
	cmp r2, r0
	ble _080A31B6
	adds r2, r0, #0x0
_080A31B6:
	cmp r2, r1
	bge _080A31BC
	adds r1, r2, #0x0
_080A31BC:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080A31D6
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A31D8
_080A31D6:
	movs r1, #0x00
_080A31D8:
	cmp r1, #0x00
	beq _080A320C
	cmp r3, #0x01
	ble _080A320C
	ldrh r0, [r5, #0x00]
	ldr r1, _080A3200 @ =0x00000FFF
	ands r1, r0
	strh r1, [r5, #0x00]
	ldr r1, _080A3208 @ =0x080A3651
	mov r2, r8
	str r1, [r2, #0x4C]
	mov r0, r8
	bl _call_via_r1
	b _080A328E
	.byte 0x00, 0x00
_080A31F8: .4byte 0x0300034C
_080A31FC: .4byte 0x03000FD8
_080A3200: .4byte 0x00000FFF
_080A3204: .4byte 0x00007FFF
_080A3208: .4byte sub_80A3650
_080A320C:
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	beq _080A328E
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A3230
	cmp r2, #0x04
	bne _080A324C
_080A3230:
	ldr r2, _080A3298 @ =0x00002024
	adds r0, r6, #0x0
	movs r1, #0x03
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
_080A324C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A325A
	cmp r2, #0x04
	bne _080A3288
_080A325A:
	ldr r2, _080A329C @ =0x03001038
	ldr r0, _080A32A0 @ =0x0819832C
	ldr r1, _080A32A4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_080A3288:
	ldr r0, _080A32A8 @ =0x080A32AD
	mov r4, r8
	str r0, [r4, #0x4C]
_080A328E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A3298: .4byte 0x00002024
_080A329C: .4byte 0x03001038
_080A32A0: .4byte 0x0819832C
_080A32A4: .4byte 0x08198220
_080A32A8: .4byte sub_80A32AC
	thumb_func_start sub_80A32AC
sub_80A32AC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A3318 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r7, [r6, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A330E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7E
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
	ldr r0, _080A331C @ =0x08052002
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r0, _080A3320 @ =0x080A3325
	str r0, [r6, #0x4C]
_080A330E:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A3318: .4byte 0x03000FD8
_080A331C: .4byte 0x08052002
_080A3320: .4byte sub_80A3324
