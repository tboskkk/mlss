	.syntax unified
	.text

	thumb_func_start sub_8018FC4
sub_8018FC4:
	push {r4, r5, r6, lr}
	ldr r4, _08019008 @ =0x0300034C
	ldr r1, _0801900C @ =0x0000088D
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0801905A
	ldr r1, _08019010 @ =0x00000896
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r6, [r0, r1]
	ldr r1, _08019014 @ =0x00000894
	adds r0, r4, r1
	ldrh r3, [r0, #0x00]
	subs r1, #0x02
	adds r0, r4, r1
	ldrb r2, [r0, #0x00]
	movs r0, #0x89
	lsls r0, r0, #0x04
	adds r5, r4, r0
	adds r0, #0x03
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bne _08019018
	strh r3, [r5, #0x00]
	movs r4, #0x00
	b _08019036
_08019008: .4byte 0x0300034C
_0801900C: .4byte 0x0000088D
_08019010: .4byte 0x00000896
_08019014: .4byte 0x00000894
_08019018:
	ldrh r1, [r5, #0x00]
	adds r0, r6, #0x0
	adds r1, r1, r0
	cmp r0, #0x00
	ble _08019028
	cmp r1, r3
	ble _08019032
	b _08019030
_08019028:
	cmp r0, #0x00
	bge _08019032
	cmp r1, r3
	bge _08019032
_08019030:
	adds r1, r3, #0x0
_08019032:
	strh r1, [r5, #0x00]
	movs r4, #0x01
_08019036:
	ldr r1, _0801909C @ =0x0300034C
	ldr r0, _080190A0 @ =0x0000088D
	adds r3, r1, r0
	lsls r4, r4, #0x02
	ldrb r2, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3, #0x00]
	movs r0, #0x89
	lsls r0, r0, #0x04
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x08
	movs r0, #0x00
	bl sub_819B9B4
_0801905A:
	ldr r4, _0801909C @ =0x0300034C
	ldr r1, _080190A0 @ =0x0000088D
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0801910C
	movs r1, #0x8B
	lsls r1, r1, #0x04
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r6, [r0, r1]
	ldr r1, _080190A4 @ =0x000008AC
	adds r0, r4, r1
	ldrh r3, [r0, #0x00]
	subs r1, #0x04
	adds r0, r4, r1
	ldrb r2, [r0, #0x00]
	ldr r0, _080190A8 @ =0x0000089C
	adds r5, r4, r0
	adds r0, #0x0E
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bne _080190AC
	strh r3, [r5, #0x00]
	movs r2, #0x00
	b _080190CA
_0801909C: .4byte 0x0300034C
_080190A0: .4byte 0x0000088D
_080190A4: .4byte 0x000008AC
_080190A8: .4byte 0x0000089C
_080190AC:
	ldrh r1, [r5, #0x00]
	adds r0, r6, #0x0
	adds r1, r1, r0
	cmp r0, #0x00
	ble _080190BC
	cmp r1, r3
	ble _080190C6
	b _080190C4
_080190BC:
	cmp r0, #0x00
	bge _080190C6
	cmp r1, r3
	bge _080190C6
_080190C4:
	adds r1, r3, #0x0
_080190C6:
	strh r1, [r5, #0x00]
	movs r2, #0x01
_080190CA:
	ldr r4, _0801914C @ =0x0300034C
	ldr r1, _08019150 @ =0x0000088D
	adds r5, r4, r1
	lsls r2, r2, #0x03
	ldrb r1, [r5, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x00]
	ldr r0, _08019154 @ =0x0000089C
	adds r6, r4, r0
	ldrh r1, [r6, #0x00]
	lsrs r1, r1, #0x08
	movs r0, #0x01
	bl sub_819B9B4
	ldrh r6, [r6, #0x00]
	movs r1, #0x8A
	lsls r1, r1, #0x04
	adds r4, r4, r1
	strh r6, [r4, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0801910C
	lsls r0, r6, #0x10
	cmp r0, #0x00
	bne _0801910C
	movs r0, #0x00
	bl sub_8019628
_0801910C:
	ldr r4, _0801914C @ =0x0300034C
	ldr r1, _08019150 @ =0x0000088D
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080191C2
	ldr r1, _08019158 @ =0x000008B2
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r6, [r0, r1]
	ldr r1, _0801915C @ =0x000008AE
	adds r0, r4, r1
	ldrh r3, [r0, #0x00]
	subs r1, #0x05
	adds r0, r4, r1
	ldrb r2, [r0, #0x00]
	ldr r0, _08019160 @ =0x0000089E
	adds r5, r4, r0
	adds r0, #0x0D
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bne _08019164
	strh r3, [r5, #0x00]
	movs r2, #0x00
	b _08019182
_0801914C: .4byte 0x0300034C
_08019150: .4byte 0x0000088D
_08019154: .4byte 0x0000089C
_08019158: .4byte 0x000008B2
_0801915C: .4byte 0x000008AE
_08019160: .4byte 0x0000089E
_08019164:
	ldrh r1, [r5, #0x00]
	adds r0, r6, #0x0
	adds r1, r1, r0
	cmp r0, #0x00
	ble _08019174
	cmp r1, r3
	ble _0801917E
	b _0801917C
_08019174:
	cmp r0, #0x00
	bge _0801917E
	cmp r1, r3
	bge _0801917E
_0801917C:
	adds r1, r3, #0x0
_0801917E:
	strh r1, [r5, #0x00]
	movs r2, #0x01
_08019182:
	ldr r4, _08019204 @ =0x0300034C
	ldr r1, _08019208 @ =0x0000088D
	adds r5, r4, r1
	lsls r2, r2, #0x04
	ldrb r1, [r5, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x00]
	ldr r0, _0801920C @ =0x0000089E
	adds r6, r4, r0
	ldrh r1, [r6, #0x00]
	lsrs r1, r1, #0x08
	movs r0, #0x02
	bl sub_819B9B4
	ldrh r6, [r6, #0x00]
	ldr r1, _08019210 @ =0x000008A2
	adds r4, r4, r1
	strh r6, [r4, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _080191C2
	lsls r0, r6, #0x10
	cmp r0, #0x00
	bne _080191C2
	movs r0, #0x01
	bl sub_8019628
_080191C2:
	ldr r4, _08019204 @ =0x0300034C
	ldr r1, _08019208 @ =0x0000088D
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08019260
	ldr r1, _08019214 @ =0x000008BC
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r6, [r0, r1]
	ldr r1, _08019218 @ =0x000008B8
	adds r0, r4, r1
	ldrh r3, [r0, #0x00]
	subs r1, #0x04
	adds r0, r4, r1
	ldrb r2, [r0, #0x00]
	ldr r0, _0801921C @ =0x000008A4
	adds r5, r4, r0
	adds r0, #0x12
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bne _08019220
	strh r3, [r5, #0x00]
	movs r4, #0x00
	b _0801923E
	.byte 0x00, 0x00
_08019204: .4byte 0x0300034C
_08019208: .4byte 0x0000088D
_0801920C: .4byte 0x0000089E
_08019210: .4byte 0x000008A2
_08019214: .4byte 0x000008BC
_08019218: .4byte 0x000008B8
_0801921C: .4byte 0x000008A4
_08019220:
	ldrh r1, [r5, #0x00]
	adds r0, r6, #0x0
	adds r1, r1, r0
	cmp r0, #0x00
	ble _08019230
	cmp r1, r3
	ble _0801923A
	b _08019238
_08019230:
	cmp r0, #0x00
	bge _0801923A
	cmp r1, r3
	bge _0801923A
_08019238:
	adds r1, r3, #0x0
_0801923A:
	strh r1, [r5, #0x00]
	movs r4, #0x01
_0801923E:
	ldr r1, _080192A4 @ =0x0300034C
	ldr r0, _080192A8 @ =0x0000088D
	adds r3, r1, r0
	lsls r4, r4, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3, #0x00]
	ldr r0, _080192AC @ =0x000008A4
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	lsrs r1, r1, #0x08
	movs r0, #0x01
	bl sub_819BA10
_08019260:
	ldr r2, _080192A4 @ =0x0300034C
	ldr r1, _080192A8 @ =0x0000088D
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080192FA
	ldr r1, _080192B0 @ =0x000008BE
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r6, [r0, r1]
	ldr r1, _080192B4 @ =0x000008BA
	adds r0, r4, r1
	ldrh r3, [r0, #0x00]
	subs r1, #0x05
	adds r0, r4, r1
	ldrb r2, [r0, #0x00]
	ldr r0, _080192B8 @ =0x000008A6
	adds r5, r4, r0
	adds r0, #0x11
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r2
	bne _080192BC
	strh r3, [r5, #0x00]
	movs r3, #0x00
	b _080192DA
	.byte 0x00, 0x00
_080192A4: .4byte 0x0300034C
_080192A8: .4byte 0x0000088D
_080192AC: .4byte 0x000008A4
_080192B0: .4byte 0x000008BE
_080192B4: .4byte 0x000008BA
_080192B8: .4byte 0x000008A6
_080192BC:
	ldrh r1, [r5, #0x00]
	adds r0, r6, #0x0
	adds r1, r1, r0
	cmp r0, #0x00
	ble _080192CC
	cmp r1, r3
	ble _080192D6
	b _080192D4
_080192CC:
	cmp r0, #0x00
	bge _080192D6
	cmp r1, r3
	bge _080192D6
_080192D4:
	adds r1, r3, #0x0
_080192D6:
	strh r1, [r5, #0x00]
	movs r3, #0x01
_080192DA:
	ldr r1, _08019300 @ =0x0000088D
	adds r2, r4, r1
	lsls r3, r3, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r1, _08019304 @ =0x000008A6
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x08
	movs r0, #0x02
	bl sub_819BA10
_080192FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08019300: .4byte 0x0000088D
_08019304: .4byte 0x000008A6
