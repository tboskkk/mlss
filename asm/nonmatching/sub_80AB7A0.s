	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080AB860 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080AB7DC
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r2, [r5, #0x08]
	movs r1, #0x06
	ldsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080AB7DC
	strh r1, [r2, #0x06]
_080AB7DC:
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _080AB858
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AB800
	cmp r2, #0x04
	bne _080AB818
_080AB800:
	ldr r2, _080AB864 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB818:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB826
	cmp r2, #0x04
	bne _080AB854
_080AB826:
	ldr r2, _080AB868 @ =0x03001038
	ldr r0, _080AB86C @ =0x0819832C
	ldr r1, _080AB870 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0C
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_080AB854:
	ldr r0, _080AB874 @ =0x080AB879
	str r0, [r7, #0x4C]
_080AB858:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AB860: .4byte 0x03000FD8
_080AB864: .4byte 0x00002030
_080AB868: .4byte 0x03001038
_080AB86C: .4byte 0x0819832C
_080AB870: .4byte 0x08198220
_080AB874: .4byte sub_80AB878
