	.syntax unified
	.text

	thumb_func_start sub_80CBF64
sub_80CBF64:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080CC04C @ =0x03000FD8
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
	bge _080CBFAA
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CBFAA:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080CBFBA
	b _080CC4DE
_080CBFBA:
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080CBFD2
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080CBFD4
_080CBFD2:
	movs r1, #0x00
_080CBFD4:
	movs r2, #0x7E
	adds r2, r2, r5
	mov r9, r2
	movs r3, #0xAE
	adds r3, r3, r5
	mov r8, r3
	cmp r1, #0x00
	beq _080CC0B4
	ldr r2, _080CC04C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CC050
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC008
	movs r1, #0x33
_080CBFFC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CBFFC
_080CC008:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC01C
	movs r1, #0x33
_080CC010:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC010
_080CC01C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CC030
	movs r1, #0x33
_080CC024:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC024
_080CC030:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC0AC
	movs r1, #0x03
_080CC03A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC044
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC044:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC03A
	b _080CC0AC
_080CC04C: .4byte 0x03000FD8
_080CC050:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC066
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC05A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC05A
_080CC066:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC07C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC070:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC070
_080CC07C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CC092
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC086:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC086
_080CC092:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC0AC
	movs r1, #0x10
_080CC09C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC0A6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC0A6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC09C
_080CC0AC:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CC0B4:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CC0C4
	adds r1, r0, #0x0
_080CC0C4:
	ldr r0, _080CC1C0 @ =0x00007FFF
	cmp r2, r0
	ble _080CC0CC
	adds r2, r0, #0x0
_080CC0CC:
	cmp r2, r1
	bge _080CC0D2
	adds r1, r2, #0x0
_080CC0D2:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080CC0EA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080CC0EC
_080CC0EA:
	movs r1, #0x00
_080CC0EC:
	cmp r1, #0x00
	bne _080CC0F2
	b _080CC242
_080CC0F2:
	movs r2, #0x1C
	negs r2, r2
	movs r3, #0x0C
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_807E680
	ldr r0, _080CC1C4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080CC114
	b _080CC242
_080CC114:
	movs r2, #0x28
	negs r2, r2
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x02
	adds r1, r6, #0x0
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080CC1C8 @ =0x03000FD8
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
	bne _080CC22E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CC1CC
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080CC178
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC16C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC16C
_080CC178:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC18E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC182:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC182
_080CC18E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CC1A4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC198:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC198
_080CC1A4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC22A
	movs r1, #0x10
_080CC1AE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC1B8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC1B8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC1AE
	b _080CC22A
_080CC1C0: .4byte 0x00007FFF
_080CC1C4: .4byte 0x0300034C
_080CC1C8: .4byte 0x03000FD8
_080CC1CC:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080CC1E4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC1D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC1D8
_080CC1E4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC1FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC1EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC1EE
_080CC1FA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CC210
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC204:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC204
_080CC210:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC22A
	movs r1, #0x10
_080CC21A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC224
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC224:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC21A
_080CC22A:
	bl sub_807F448
_080CC22E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080CC314 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080CC242:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CC24E
	b _080CC4DE
_080CC24E:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080CC318 @ =0x00007FFF
	cmp r1, r0
	ble _080CC25A
	adds r1, r0, #0x0
_080CC25A:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080CC272
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080CC274
_080CC272:
	movs r2, #0x00
_080CC274:
	cmp r2, #0x00
	bne _080CC27A
	b _080CC388
_080CC27A:
	ldr r3, _080CC31C @ =0x03000FD8
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
	ldr r0, _080CC314 @ =0x00000FFF
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
	beq _080CC320
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC2CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC2BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC2BE
_080CC2CA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC2E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC2D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC2D4
_080CC2E0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CC2F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC2EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC2EA
_080CC2F6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC37C
	movs r1, #0x10
_080CC300:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC30A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC30A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC300
	b _080CC37C
	.byte 0x00, 0x00
_080CC314: .4byte 0x00000FFF
_080CC318: .4byte 0x00007FFF
_080CC31C: .4byte 0x03000FD8
_080CC320:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC336
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC32A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC32A
_080CC336:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC34C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC340:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC340
_080CC34C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CC362
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC356:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC356
_080CC362:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC37C
	movs r1, #0x10
_080CC36C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC376
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC376:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC36C
_080CC37C:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080CC4DE
_080CC388:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080CC398
	b _080CC4DE
_080CC398:
	ldr r0, _080CC45C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080CC3AE
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080CC3AE
	b _080CC4DE
_080CC3AE:
	ldr r2, _080CC460 @ =0x03000FD8
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
	beq _080CC3DE
	b _080CC4DE
_080CC3DE:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080CC464 @ =0x00000FFF
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
	beq _080CC468
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC412
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC406:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC406
_080CC412:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC428
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC41C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC41C
_080CC428:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CC43E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC432:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC432
_080CC43E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC4C4
	movs r1, #0x10
_080CC448:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC452
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC452:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC448
	b _080CC4C4
	.byte 0x00, 0x00
_080CC45C: .4byte 0x0300034C
_080CC460: .4byte 0x03000FD8
_080CC464: .4byte 0x00000FFF
_080CC468:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC47E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC472:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC472
_080CC47E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC494
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC488:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC488
_080CC494:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CC4AA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC49E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC49E
_080CC4AA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC4C4
	movs r1, #0x10
_080CC4B4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC4BE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC4BE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC4B4
_080CC4C4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r2, #0x28
	negs r2, r2
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	bl sub_807EAE4
_080CC4DE:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080CC550
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CC4F8
	adds r1, r0, #0x0
_080CC4F8:
	ldr r0, _080CC544 @ =0x00007FFF
	cmp r2, r0
	ble _080CC500
	adds r2, r0, #0x0
_080CC500:
	cmp r2, r1
	bge _080CC506
	adds r1, r2, #0x0
_080CC506:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080CC520
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CC522
_080CC520:
	movs r1, #0x00
_080CC522:
	cmp r1, #0x00
	beq _080CC550
	cmp r3, #0x01
	ble _080CC550
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080CC548 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080CC54C @ =0x080CC965
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080CC60A
	.byte 0x00, 0x00
_080CC544: .4byte 0x00007FFF
_080CC548: .4byte 0x00000FFF
_080CC54C: .4byte sub_80CC964
_080CC550:
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x00
	beq _080CC60A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x32
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC57C
	cmp r1, #0x04
	bne _080CC598
_080CC57C:
	ldr r2, _080CC61C @ =0x00002035
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
_080CC598:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CC5AC
	cmp r2, #0x04
	bne _080CC5C8
_080CC5AC:
	ldr r2, _080CC620 @ =0x00002064
	adds r0, r5, #0x0
	movs r1, #0x08
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
_080CC5C8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CC5D6
	cmp r2, #0x04
	bne _080CC604
_080CC5D6:
	ldr r2, _080CC624 @ =0x03001038
	ldr r0, _080CC628 @ =0x0819832C
	ldr r1, _080CC62C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r7, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r7, #0x00]
_080CC604:
	ldr r0, _080CC630 @ =0x080CC635
	mov r4, r10
	str r0, [r4, #0x4C]
_080CC60A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CC61C: .4byte 0x00002035
_080CC620: .4byte 0x00002064
_080CC624: .4byte 0x03001038
_080CC628: .4byte 0x0819832C
_080CC62C: .4byte 0x08198220
_080CC630: .4byte sub_80CC634
