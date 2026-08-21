	.syntax unified
	.text

	thumb_func_start sub_80BED8C
sub_80BED8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080BEE74 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
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
	bge _080BEDD2
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BEDD2:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080BEDE2
	b _080BF2D6
_080BEDE2:
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080BEDFA
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080BEDFC
_080BEDFA:
	movs r1, #0x00
_080BEDFC:
	movs r2, #0x7E
	adds r2, r2, r5
	mov r9, r2
	movs r3, #0xAE
	adds r3, r3, r5
	mov r8, r3
	cmp r1, #0x00
	beq _080BEEDC
	ldr r2, _080BEE74 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080BEE78
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BEE30
	movs r1, #0x40
_080BEE24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BEE24
_080BEE30:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BEE44
	movs r1, #0x40
_080BEE38:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BEE38
_080BEE44:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BEE58
	movs r1, #0x40
_080BEE4C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BEE4C
_080BEE58:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BEED4
	movs r1, #0x04
_080BEE62:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BEE6C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BEE6C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BEE62
	b _080BEED4
_080BEE74: .4byte 0x03000FD8
_080BEE78:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BEE8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BEE82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BEE82
_080BEE8E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BEEA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BEE98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BEE98
_080BEEA4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BEEBA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BEEAE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BEEAE
_080BEEBA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BEED4
	movs r1, #0x10
_080BEEC4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BEECE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BEECE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BEEC4
_080BEED4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080BEEDC:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080BEEEC
	adds r1, r0, #0x0
_080BEEEC:
	ldr r0, _080BEFD4 @ =0x00007FFF
	cmp r2, r0
	ble _080BEEF4
	adds r2, r0, #0x0
_080BEEF4:
	cmp r2, r1
	bge _080BEEFA
	adds r1, r2, #0x0
_080BEEFA:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080BEF12
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080BEF14
_080BEF12:
	movs r1, #0x00
_080BEF14:
	cmp r1, #0x00
	bne _080BEF1A
	b _080BF056
_080BEF1A:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080BEFD8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080BEF38
	b _080BF056
_080BEF38:
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080BEFDC @ =0x03000FD8
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
	bne _080BF042
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BEFE0
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080BEF8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BEF80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BEF80
_080BEF8C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BEFA2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BEF96:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BEF96
_080BEFA2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BEFB8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BEFAC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BEFAC
_080BEFB8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BF03E
	movs r1, #0x10
_080BEFC2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BEFCC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BEFCC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BEFC2
	b _080BF03E
_080BEFD4: .4byte 0x00007FFF
_080BEFD8: .4byte 0x0300034C
_080BEFDC: .4byte 0x03000FD8
_080BEFE0:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080BEFF8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BEFEC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BEFEC
_080BEFF8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BF00E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF002:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF002
_080BF00E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BF024
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF018:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF018
_080BF024:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BF03E
	movs r1, #0x10
_080BF02E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BF038
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BF038:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BF02E
_080BF03E:
	bl sub_807F448
_080BF042:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080BF128 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080BF056:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080BF062
	b _080BF2D6
_080BF062:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080BF12C @ =0x00007FFF
	cmp r1, r0
	ble _080BF06E
	adds r1, r0, #0x0
_080BF06E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080BF086
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080BF088
_080BF086:
	movs r2, #0x00
_080BF088:
	cmp r2, #0x00
	bne _080BF08E
	b _080BF19C
_080BF08E:
	ldr r3, _080BF130 @ =0x03000FD8
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
	ldr r0, _080BF128 @ =0x00000FFF
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
	beq _080BF134
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BF0DE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF0D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF0D2
_080BF0DE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BF0F4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF0E8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF0E8
_080BF0F4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BF10A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF0FE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF0FE
_080BF10A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BF190
	movs r1, #0x10
_080BF114:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BF11E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BF11E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BF114
	b _080BF190
	.byte 0x00, 0x00
_080BF128: .4byte 0x00000FFF
_080BF12C: .4byte 0x00007FFF
_080BF130: .4byte 0x03000FD8
_080BF134:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BF14A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF13E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF13E
_080BF14A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BF160
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF154:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF154
_080BF160:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BF176
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF16A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF16A
_080BF176:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BF190
	movs r1, #0x10
_080BF180:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BF18A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BF18A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BF180
_080BF190:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080BF2D6
_080BF19C:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080BF1AC
	b _080BF2D6
_080BF1AC:
	ldr r0, _080BF264 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080BF1BA
	b _080BF2D6
_080BF1BA:
	ldr r2, _080BF268 @ =0x03000FD8
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
	bne _080BF2D6
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080BF26C @ =0x00000FFF
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
	beq _080BF270
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BF21C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF210:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF210
_080BF21C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BF232
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF226:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF226
_080BF232:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BF248
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF23C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF23C
_080BF248:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BF2CC
	movs r1, #0x10
_080BF252:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BF25C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BF25C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BF252
	b _080BF2CC
_080BF264: .4byte 0x0300034C
_080BF268: .4byte 0x03000FD8
_080BF26C: .4byte 0x00000FFF
_080BF270:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BF286
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF27A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF27A
_080BF286:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BF29C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF290:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF290
_080BF29C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080BF2B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BF2A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BF2A6
_080BF2B2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080BF2CC
	movs r1, #0x10
_080BF2BC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BF2C6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BF2C6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BF2BC
_080BF2CC:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
_080BF2D6:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080BF348
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080BF2F0
	adds r1, r0, #0x0
_080BF2F0:
	ldr r0, _080BF33C @ =0x00007FFF
	cmp r2, r0
	ble _080BF2F8
	adds r2, r0, #0x0
_080BF2F8:
	cmp r2, r1
	bge _080BF2FE
	adds r1, r2, #0x0
_080BF2FE:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080BF318
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080BF31A
_080BF318:
	movs r1, #0x00
_080BF31A:
	cmp r1, #0x00
	beq _080BF348
	cmp r3, #0x01
	ble _080BF348
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080BF340 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080BF344 @ =0x080BF8F5
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080BF39C
	.byte 0x00, 0x00
_080BF33C: .4byte 0x00007FFF
_080BF340: .4byte 0x00000FFF
_080BF344: .4byte sub_80BF8F4
_080BF348:
	adds r4, r5, #0x0
	adds r4, #0x79
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BF39C
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BF368
	cmp r1, #0x04
	bne _080BF396
_080BF368:
	ldr r2, _080BF3AC @ =0x03001038
	ldr r0, _080BF3B0 @ =0x0819832C
	ldr r1, _080BF3B4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x01
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080BF396:
	ldr r0, _080BF3B8 @ =0x080BF3BD
	mov r4, r10
	str r0, [r4, #0x4C]
_080BF39C:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BF3AC: .4byte 0x03001038
_080BF3B0: .4byte 0x0819832C
_080BF3B4: .4byte 0x08198220
_080BF3B8: .4byte sub_80BF3BC
