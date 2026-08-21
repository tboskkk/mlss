	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_808FDA4
sub_808FDA4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0808FDFC @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _0808FE00 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	movs r1, #0x8A
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r2, #0x2A]
	str r1, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x30
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _0808FE04 @ =0x0808FE2D
	str r0, [r4, #0x4C]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0808FDFC: .4byte 0x084FE8A8
_0808FE00: .4byte 0x03000FF4
_0808FE04: .4byte sub_808FE2C
	thumb_func_start sub_808FE08
sub_808FE08:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0808FE28
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_808FE50
_0808FE28:
	pop {r0}
	bx r0
	thumb_func_start sub_808FE2C
sub_808FE2C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0808FE4C
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_808FEB4
_0808FE4C:
	pop {r0}
	bx r0
	thumb_func_start sub_808FE50
sub_808FE50:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _0808FEA4 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _0808FEA8 @ =0x002E4559
	bl _call_via_r1
	subs r0, #0x25
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x1E
	movs r0, #0x25
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r2, _0808FEAC @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
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
	ldr r0, _0808FEB0 @ =0x0808FF19
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0808FEA4: .4byte 0x03001038
_0808FEA8: .4byte 0x002E4559
_0808FEAC: .4byte 0x0000204D
_0808FEB0: .4byte sub_808FF18
	thumb_func_start sub_808FEB4
sub_808FEB4:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _0808FF0C @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _0808FF10 @ =0x00318790
	bl _call_via_r1
	subs r0, #0x2C
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x1E
	movs r0, #0x2C
	negs r0, r0
	str r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
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
	ldr r0, _0808FF14 @ =0x0808FF89
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808FF0C: .4byte 0x03001038
_0808FF10: .4byte 0x00318790
_0808FF14: .4byte sub_808FF88
	thumb_func_start sub_808FF18
sub_808FF18:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _0808FF7A
	ldr r0, _0808FF80 @ =0x0808FFF9
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0808FF7A
	ldr r2, _0808FF84 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x06
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
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_0808FF7A:
	pop {r4}
	pop {r0}
	bx r0
_0808FF80: .4byte sub_808FFF8
_0808FF84: .4byte 0x0000204D
	thumb_func_start sub_808FF88
sub_808FF88:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _0808FFEC
	ldr r0, _0808FFF4 @ =0x08090051
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0808FFEC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x06
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
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_0808FFEC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808FFF4: .4byte sub_8090050
	thumb_func_start sub_808FFF8
sub_808FFF8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _08090042
	subs r2, #0x3B
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r2, _08090048 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0809004C @ =0x080900A9
	str r0, [r4, #0x4C]
_08090042:
	pop {r4}
	pop {r0}
	bx r0
_08090048: .4byte 0x0000204D
_0809004C: .4byte sub_80900A8
	thumb_func_start sub_8090050
sub_8090050:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0809009C
	subs r2, #0x3B
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080900A4 @ =0x080900D5
	str r0, [r4, #0x4C]
_0809009C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080900A4: .4byte sub_80900D4
	thumb_func_start sub_80900A8
sub_80900A8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080900C8
	ldr r2, _080900D0 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080900C8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080900D0: .4byte 0x0000204D
	thumb_func_start sub_80900D4
sub_80900D4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080900F6
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080900F6:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x22, 0x1C, 0xB2, 0x32, 0x23, 0x1C, 0x94, 0x33, 0x19, 0x68, 0x10, 0x88
	.byte 0x40, 0x18, 0x10, 0x80, 0x00, 0x20, 0x11, 0x5E, 0x20, 0x6C, 0x40, 0x18, 0xA0, 0x61, 0x09, 0x48
	.byte 0x81, 0x8F, 0x01, 0x20, 0x08, 0x40, 0x00, 0x28, 0x0E, 0xD0, 0x1A, 0x68, 0x7A, 0x21, 0x49, 0x42
	.byte 0x89, 0x1A, 0x88, 0x00, 0x40, 0x18, 0x40, 0x00, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12
	.byte 0x10, 0x18, 0x03, 0xE0, 0x4C, 0x03, 0x00, 0x03, 0x7A, 0x20, 0x40, 0x42, 0x18, 0x60, 0x20, 0x1C
	.byte 0xB2, 0x30, 0x00, 0x21, 0x40, 0x5E, 0x00, 0x28, 0x19, 0xDC, 0x80, 0x22, 0x92, 0x01, 0x20, 0x1C
	.byte 0x06, 0x21, 0x00, 0x23, 0xF2, 0xF7, 0x5C, 0xFE, 0xA2, 0x68, 0x91, 0x7C, 0x07, 0x20, 0x40, 0x42
	.byte 0x08, 0x40, 0x02, 0x21, 0x08, 0x43, 0x90, 0x74, 0x22, 0x1C, 0x77, 0x32, 0x11, 0x78, 0x08, 0x20
	.byte 0x40, 0x42, 0x08, 0x40, 0x01, 0x21, 0x08, 0x43, 0x10, 0x70, 0x02, 0x48, 0xE0, 0x64, 0x10, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x95, 0x01, 0x09, 0x08
	thumb_func_start sub_8090194
sub_8090194:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r3, r4, #0x0
	adds r3, #0x94
	ldr r1, [r3, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, _080901D8 @ =0x0300034C
	ldrh r1, [r0, #0x3C]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080901DC
	ldr r2, [r3, #0x00]
	movs r1, #0x7A
	negs r1, r1
	subs r1, r1, r2
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	cmp r0, #0x00
	bge _080901D2
	adds r0, #0xFF
_080901D2:
	asrs r0, r0, #0x08
	adds r0, r2, r0
	b _080901E0
_080901D8: .4byte 0x0300034C
_080901DC:
	movs r0, #0x7A
	negs r0, r0
_080901E0:
	str r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r1, [r4, #0x18]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _08090216
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0809021C @ =0x08090379
	str r0, [r4, #0x4C]
_08090216:
	pop {r4}
	pop {r0}
	bx r0
_0809021C: .4byte sub_8090378
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x22, 0x1C, 0xB2, 0x32, 0x23, 0x1C, 0x94, 0x33, 0x19, 0x68, 0x10, 0x88
	.byte 0x40, 0x18, 0x10, 0x80, 0x00, 0x20, 0x11, 0x5E, 0x20, 0x6C, 0x40, 0x18, 0xA0, 0x61, 0x09, 0x48
	.byte 0x81, 0x8F, 0x02, 0x20, 0x08, 0x40, 0x00, 0x28, 0x0E, 0xD0, 0x1A, 0x68, 0x7A, 0x21, 0x49, 0x42
	.byte 0x89, 0x1A, 0x88, 0x00, 0x40, 0x18, 0x40, 0x00, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12
	.byte 0x10, 0x18, 0x03, 0xE0, 0x4C, 0x03, 0x00, 0x03, 0x7A, 0x20, 0x40, 0x42, 0x18, 0x60, 0x20, 0x1C
	.byte 0xB2, 0x30, 0x00, 0x21, 0x40, 0x5E, 0x00, 0x28, 0x18, 0xDC, 0x0E, 0x4A, 0x20, 0x1C, 0x06, 0x21
	.byte 0x00, 0x23, 0xF2, 0xF7, 0xCB, 0xFD, 0xA2, 0x68, 0x91, 0x7C, 0x07, 0x20, 0x40, 0x42, 0x08, 0x40
	.byte 0x02, 0x21, 0x08, 0x43, 0x90, 0x74, 0x22, 0x1C, 0x77, 0x32, 0x11, 0x78, 0x08, 0x20, 0x40, 0x42
	.byte 0x08, 0x40, 0x01, 0x21, 0x08, 0x43, 0x10, 0x70, 0x03, 0x48, 0xE0, 0x64, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x4D, 0x20, 0x00, 0x00, 0xBD, 0x02, 0x09, 0x08
	thumb_func_start sub_80902BC
sub_80902BC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r3, r4, #0x0
	adds r3, #0x94
	ldr r1, [r3, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, _08090300 @ =0x0300034C
	ldrh r1, [r0, #0x3C]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08090304
	ldr r2, [r3, #0x00]
	movs r1, #0x7A
	negs r1, r1
	subs r1, r1, r2
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	cmp r0, #0x00
	bge _080902FA
	adds r0, #0xFF
_080902FA:
	asrs r0, r0, #0x08
	adds r0, r2, r0
	b _08090308
_08090300: .4byte 0x0300034C
_08090304:
	movs r0, #0x7A
	negs r0, r0
_08090308:
	str r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r1, [r4, #0x18]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0809033C
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r2, _08090344 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08090348 @ =0x0809034D
	str r0, [r4, #0x4C]
_0809033C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08090344: .4byte 0x0000204D
_08090348: .4byte sub_809034C
	thumb_func_start sub_809034C
sub_809034C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809036C
	ldr r2, _08090374 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0809036C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08090374: .4byte 0x0000204D
	thumb_func_start sub_8090378
sub_8090378:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809039A
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0809039A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80903A0
sub_80903A0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080903BC
	adds r0, r4, #0x0
	bl sub_8090420
	b _080903CA
_080903BC:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _080903CA
	adds r0, r4, #0x0
	bl sub_80903DC
_080903CA:
	ldr r0, _080903D8 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080903D8: .4byte sub_8087540
	thumb_func_start sub_80903DC
sub_80903DC:
	ldr r1, _08090414 @ =0x084FE9A4
	str r1, [r0, #0x6C]
	ldr r1, _08090418 @ =0x03000FF4
	ldr r3, [r1, #0x00]
	adds r3, #0x3C
	movs r1, #0x77
	adds r1, r1, r0
	mov r12, r1
	ldrb r2, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldr r1, [r0, #0x28]
	movs r2, #0x8A
	lsls r2, r2, #0x01
	adds r1, r1, r2
	ldrh r2, [r3, #0x2A]
	str r2, [r1, #0x00]
	ldr r1, _0809041C @ =0x08090461
	str r1, [r0, #0x4C]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
_08090414: .4byte 0x084FE9A4
_08090418: .4byte 0x03000FF4
_0809041C: .4byte sub_8090460
	thumb_func_start sub_8090420
sub_8090420:
	ldr r1, _08090454 @ =0x084FE8A8
	str r1, [r0, #0x6C]
	ldr r1, _08090458 @ =0x03000FF4
	ldr r3, [r1, #0x00]
	movs r1, #0x77
	adds r1, r1, r0
	mov r12, r1
	ldrb r2, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldr r1, [r0, #0x28]
	movs r2, #0x8A
	lsls r2, r2, #0x01
	adds r1, r1, r2
	ldrh r2, [r3, #0x2A]
	str r2, [r1, #0x00]
	ldr r1, _0809045C @ =0x080904C5
	str r1, [r0, #0x4C]
	movs r0, #0x01
	bx lr
_08090454: .4byte 0x084FE8A8
_08090458: .4byte 0x03000FF4
_0809045C: .4byte sub_80904C4
	thumb_func_start sub_8090460
sub_8090460:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _080904B4 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _080904B8 @ =0x003F1440
	bl _call_via_r1
	subs r0, #0x48
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x1E
	movs r0, #0x48
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r2, _080904BC @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
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
	ldr r0, _080904C0 @ =0x08090529
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080904B4: .4byte 0x03001038
_080904B8: .4byte 0x003F1440
_080904BC: .4byte 0x0000204D
_080904C0: .4byte sub_8090528
	thumb_func_start sub_80904C4
sub_80904C4:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _0809051C @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08090520 @ =0x004D1E40
	bl _call_via_r1
	subs r0, #0x58
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x1E
	movs r0, #0x58
	negs r0, r0
	str r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
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
	ldr r0, _08090524 @ =0x08090599
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809051C: .4byte 0x03001038
_08090520: .4byte 0x004D1E40
_08090524: .4byte sub_8090598
	thumb_func_start sub_8090528
sub_8090528:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _0809058A
	ldr r0, _08090590 @ =0x08090609
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0809058A
	ldr r2, _08090594 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x06
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
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_0809058A:
	pop {r4}
	pop {r0}
	bx r0
_08090590: .4byte sub_8090608
_08090594: .4byte 0x0000204D
	thumb_func_start sub_8090598
sub_8090598:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _080905FC
	ldr r0, _08090604 @ =0x08090661
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080905FC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x06
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
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_080905FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08090604: .4byte sub_8090660
	thumb_func_start sub_8090608
sub_8090608:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _08090652
	subs r2, #0x3B
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r2, _08090658 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0809065C @ =0x080906B9
	str r0, [r4, #0x4C]
_08090652:
	pop {r4}
	pop {r0}
	bx r0
_08090658: .4byte 0x0000204D
_0809065C: .4byte sub_80906B8
	thumb_func_start sub_8090660
sub_8090660:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080906AC
	subs r2, #0x3B
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080906B4 @ =0x080906E5
	str r0, [r4, #0x4C]
_080906AC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080906B4: .4byte sub_80906E4
	thumb_func_start sub_80906B8
sub_80906B8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080906D8
	ldr r2, _080906E0 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080906D8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080906E0: .4byte 0x0000204D
	thumb_func_start sub_80906E4
sub_80906E4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08090706
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08090706:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_809070C
sub_809070C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08090728
	adds r0, r4, #0x0
	bl sub_809078C
	b _08090736
_08090728:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08090736
	adds r0, r4, #0x0
	bl sub_8090748
_08090736:
	ldr r0, _08090744 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08090744: .4byte sub_8087540
