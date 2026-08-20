	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_808FCD8
sub_808FCD8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0808FCF4
	adds r0, r4, #0x0
	bl sub_808FDA4
	b _0808FD02
_0808FCF4:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0808FD02
	adds r0, r4, #0x0
	bl sub_808FD3C
_0808FD02:
	ldr r0, _0808FD10 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0808FD10: .4byte sub_8087540
	thumb_func_start sub_808FD14
sub_808FD14:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0808FD30
	adds r0, r2, #0x0
	bl sub_808F100
	b _0808FD36
_0808FD30:
	adds r0, r2, #0x0
	bl sub_808F658
_0808FD36:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_808FD3C
sub_808FD3C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0808FD94 @ =0x084FE9A4
	str r0, [r4, #0x6C]
	ldr r0, _0808FD98 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r2, #0x3C
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
	ldr r2, _0808FD9C @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x06
	str r0, [r1, #0x00]
	ldr r0, _0808FDA0 @ =0x0808FE09
	str r0, [r4, #0x4C]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0808FD94: .4byte 0x084FE9A4
_0808FD98: .4byte 0x03000FF4
_0808FD9C: .4byte 0x0000204D
_0808FDA0: .4byte sub_808FE08
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
	thumb_func_start sub_8090748
sub_8090748:
	ldr r1, _08090780 @ =0x084FE9A4
	str r1, [r0, #0x6C]
	ldr r1, _08090784 @ =0x03000FF4
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
	ldr r1, _08090788 @ =0x080907CD
	str r1, [r0, #0x4C]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
_08090780: .4byte 0x084FE9A4
_08090784: .4byte 0x03000FF4
_08090788: .4byte sub_80907CC
	thumb_func_start sub_809078C
sub_809078C:
	ldr r1, _080907C0 @ =0x084FE8A8
	str r1, [r0, #0x6C]
	ldr r1, _080907C4 @ =0x03000FF4
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
	ldr r1, _080907C8 @ =0x08090831
	str r1, [r0, #0x4C]
	movs r0, #0x01
	bx lr
_080907C0: .4byte 0x084FE8A8
_080907C4: .4byte 0x03000FF4
_080907C8: .4byte sub_8090830
	thumb_func_start sub_80907CC
sub_80907CC:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _08090820 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08090824 @ =0x0096F390
	bl _call_via_r1
	subs r0, #0xAC
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x1E
	movs r0, #0xAC
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r2, _08090828 @ =0x0000204D
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
	ldr r0, _0809082C @ =0x08090895
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08090820: .4byte 0x03001038
_08090824: .4byte 0x0096F390
_08090828: .4byte 0x0000204D
_0809082C: .4byte sub_8090894
	thumb_func_start sub_8090830
sub_8090830:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _08090888 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _0809088C @ =0x00A50A10
	bl _call_via_r1
	subs r0, #0xBC
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x1E
	movs r0, #0xBC
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
	ldr r0, _08090890 @ =0x08090905
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08090888: .4byte 0x03001038
_0809088C: .4byte 0x00A50A10
_08090890: .4byte sub_8090904
	thumb_func_start sub_8090894
sub_8090894:
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
	bgt _080908F6
	ldr r0, _080908FC @ =0x08090975
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080908F6
	ldr r2, _08090900 @ =0x0000204D
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
_080908F6:
	pop {r4}
	pop {r0}
	bx r0
_080908FC: .4byte sub_8090974
_08090900: .4byte 0x0000204D
	thumb_func_start sub_8090904
sub_8090904:
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
	bgt _08090968
	ldr r0, _08090970 @ =0x080909CD
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08090968
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
_08090968:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08090970: .4byte sub_80909CC
	thumb_func_start sub_8090974
sub_8090974:
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
	bgt _080909BE
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
	ldr r2, _080909C4 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080909C8 @ =0x08090A25
	str r0, [r4, #0x4C]
_080909BE:
	pop {r4}
	pop {r0}
	bx r0
_080909C4: .4byte 0x0000204D
_080909C8: .4byte sub_8090A24
	thumb_func_start sub_80909CC
sub_80909CC:
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
	bgt _08090A18
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
	ldr r0, _08090A20 @ =0x08090A51
	str r0, [r4, #0x4C]
_08090A18:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08090A20: .4byte sub_8090A50
	thumb_func_start sub_8090A24
sub_8090A24:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08090A44
	ldr r2, _08090A4C @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08090A44:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08090A4C: .4byte 0x0000204D
	thumb_func_start sub_8090A50
sub_8090A50:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08090A72
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08090A72:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8090A78
sub_8090A78:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08090A94
	adds r0, r4, #0x0
	bl sub_8090B1C
	b _08090AA2
_08090A94:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08090AA2
	adds r0, r4, #0x0
	bl sub_8090AB4
_08090AA2:
	ldr r0, _08090AB0 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08090AB0: .4byte sub_8087540
	thumb_func_start sub_8090AB4
sub_8090AB4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08090B0C @ =0x084FE9A4
	str r0, [r4, #0x6C]
	ldr r0, _08090B10 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r2, #0x3C
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
	ldr r2, _08090B14 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x60
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, _08090B18 @ =0x08090B81
	str r0, [r4, #0x4C]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08090B0C: .4byte 0x084FE9A4
_08090B10: .4byte 0x03000FF4
_08090B14: .4byte 0x0000204D
_08090B18: .4byte sub_8090B80
	thumb_func_start sub_8090B1C
sub_8090B1C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08090B74 @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _08090B78 @ =0x03000FF4
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
	movs r1, #0x60
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, _08090B7C @ =0x08090BA5
	str r0, [r4, #0x4C]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08090B74: .4byte 0x084FE8A8
_08090B78: .4byte 0x03000FF4
_08090B7C: .4byte sub_8090BA4
	thumb_func_start sub_8090B80
sub_8090B80:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08090BA0
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_8090BC8
_08090BA0:
	pop {r0}
	bx r0
	thumb_func_start sub_8090BA4
sub_8090BA4:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08090BC4
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_8090C2C
_08090BC4:
	pop {r0}
	bx r0
	thumb_func_start sub_8090BC8
sub_8090BC8:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _08090C1C @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08090C20 @ =0x0025A739
	bl _call_via_r1
	subs r0, #0x2B
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x1E
	movs r0, #0x2B
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r2, _08090C24 @ =0x0000204D
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
	ldr r0, _08090C28 @ =0x08090C91
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08090C1C: .4byte 0x03001038
_08090C20: .4byte 0x0025A739
_08090C24: .4byte 0x0000204D
_08090C28: .4byte sub_8090C90
	thumb_func_start sub_8090C2C
sub_8090C2C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _08090C84 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08090C88 @ =0x002928A1
	bl _call_via_r1
	subs r0, #0x2F
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x1E
	movs r0, #0x2F
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
	ldr r0, _08090C8C @ =0x08090D01
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08090C84: .4byte 0x03001038
_08090C88: .4byte 0x002928A1
_08090C8C: .4byte sub_8090D00
	thumb_func_start sub_8090C90
sub_8090C90:
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
	bgt _08090CF2
	ldr r0, _08090CF8 @ =0x08090D71
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08090CF2
	ldr r2, _08090CFC @ =0x0000204D
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
_08090CF2:
	pop {r4}
	pop {r0}
	bx r0
_08090CF8: .4byte sub_8090D70
_08090CFC: .4byte 0x0000204D
	thumb_func_start sub_8090D00
sub_8090D00:
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
	bgt _08090D64
	ldr r0, _08090D6C @ =0x08090DC9
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08090D64
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
_08090D64:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08090D6C: .4byte sub_8090DC8
	thumb_func_start sub_8090D70
sub_8090D70:
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
	bgt _08090DBA
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
	ldr r2, _08090DC0 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08090DC4 @ =0x08090E21
	str r0, [r4, #0x4C]
_08090DBA:
	pop {r4}
	pop {r0}
	bx r0
_08090DC0: .4byte 0x0000204D
_08090DC4: .4byte sub_8090E20
	thumb_func_start sub_8090DC8
sub_8090DC8:
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
	bgt _08090E14
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
	ldr r0, _08090E1C @ =0x08090E4D
	str r0, [r4, #0x4C]
_08090E14:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08090E1C: .4byte sub_8090E4C
	thumb_func_start sub_8090E20
sub_8090E20:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08090E40
	ldr r2, _08090E48 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08090E40:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08090E48: .4byte 0x0000204D
	thumb_func_start sub_8090E4C
sub_8090E4C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08090E6E
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08090E6E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8090E74
sub_8090E74:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08090ED8 @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _08090EDC @ =0x03000FF4
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
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x06
	bl sub_81DD77C
	adds r5, r0, #0x4
	cmp r5, #0x00
	beq _08090EE4
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r5, [r0, #0x00]
	ldr r0, _08090EE0 @ =0x08091D79
	b _08090EE6
	.byte 0x00, 0x00
_08090ED8: .4byte 0x084FE8A8
_08090EDC: .4byte 0x03000FF4
_08090EE0: .4byte sub_8091D78
_08090EE4:
	ldr r0, _08090F08 @ =0x08091D35
_08090EE6:
	str r0, [r4, #0x4C]
	ldr r0, _08090F0C @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08090F10 @ =0x00689E40
	bl _call_via_r1
	subs r0, #0x58
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_08090F08: .4byte sub_8091D34
_08090F0C: .4byte 0x03001038
_08090F10: .4byte 0x00689E40
	thumb_func_start sub_8090F14
sub_8090F14:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08090F78 @ =0x084FE9A4
	str r0, [r4, #0x6C]
	ldr r0, _08090F7C @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r2, #0x3C
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
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x16
	bl sub_81DD77C
	adds r5, r0, #0x0
	adds r5, #0x0A
	cmp r5, #0x00
	beq _08090F88
	ldr r2, _08090F80 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r5, [r0, #0x00]
	ldr r0, _08090F84 @ =0x08091D11
	b _08090F8A
_08090F78: .4byte 0x084FE9A4
_08090F7C: .4byte 0x03000FF4
_08090F80: .4byte 0x0000204D
_08090F84: .4byte sub_8091D10
_08090F88:
	ldr r0, _08090FAC @ =0x08091CC9
_08090F8A:
	str r0, [r4, #0x4C]
	ldr r0, _08090FB0 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08090FB4 @ =0x00559440
	bl _call_via_r1
	subs r0, #0x48
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_08090FAC: .4byte sub_8091CC8
_08090FB0: .4byte 0x03001038
_08090FB4: .4byte 0x00559440
	thumb_func_start sub_8090FB8
sub_8090FB8:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _08090FC8
	adds r2, #0xFF
_08090FC8:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _08090FD2
	adds r3, #0xFF
_08090FD2:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08090FDC
	adds r0, #0xFF
_08090FDC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r2, r0, #0x0
	str r2, [r5, #0x30]
	movs r0, #0x76
	adds r0, r0, r2
	mov r12, r0
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x44
	movs r1, #0xF6
	strb r1, [r0, #0x00]
	adds r3, r2, #0x0
	adds r3, #0x45
	movs r0, #0x08
	strb r0, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x46
	strb r1, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x47
	movs r0, #0x0A
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0xF4
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0x04
	strb r0, [r1, #0x00]
	adds r3, #0x32
	ldrb r1, [r3, #0x00]
	subs r0, #0x0C
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x08
	ldr r0, [r2, #0x40]
	str r0, [r1, #0x00]
	ldr r0, _08091088 @ =0x084FE8B4
	str r0, [r2, #0x6C]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x40
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	ldr r0, _0809108C @ =0x08087541
	str r0, [r2, #0x68]
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r4, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	bl sub_8091090
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08091088: .4byte 0x084FE8B4
_0809108C: .4byte sub_8087540
	thumb_func_start sub_8091090
sub_8091090:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _080910B0 @ =0x08091091
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _080910B4
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0809116A
	.byte 0x00, 0x00
_080910B0: .4byte sub_8091090
_080910B4:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _080910CE
	ldr r2, _08091130 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080910CE:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x03
	bne _080910E2
	ldr r2, _08091130 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_080910E2:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x06
	bne _080910F6
	ldr r2, _08091130 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_080910F6:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x09
	bne _0809110A
	ldr r2, _08091130 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0809110A:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x0C
	beq _0809113C
	ldr r0, _08091134 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _0809115A
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, _08091138 @ =0x08091175
	str r0, [r4, #0x4C]
	b _0809116A
_08091130: .4byte 0x00002025
_08091134: .4byte 0x0300034C
_08091138: .4byte sub_8091174
_0809113C:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	strh r6, [r5, #0x00]
	ldr r0, _08091170 @ =0x08091275
	str r0, [r4, #0x4C]
_0809115A:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_0809116A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08091170: .4byte sub_8091274
	thumb_func_start sub_8091174
sub_8091174:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08091194 @ =0x08091175
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091198
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0809126A
	.byte 0x00, 0x00
_08091194: .4byte sub_8091174
_08091198:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _08091200
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
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
	ldr r2, _080911F0 @ =0x03001038
	ldr r0, _080911F4 @ =0x0819832C
	ldr r1, _080911F8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0A
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080911FC @ =0x08091C45
	str r0, [r4, #0x4C]
	b _0809126A
	.byte 0x00, 0x00
_080911F0: .4byte 0x03001038
_080911F4: .4byte 0x0819832C
_080911F8: .4byte 0x08198220
_080911FC: .4byte sub_8091C44
_08091200:
	cmp r1, #0x05
	bgt _08091220
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809125A
	ldr r2, _0809121C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809125A
_0809121C: .4byte 0x00002025
_08091220:
	cmp r1, #0x0B
	bgt _08091240
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0809125A
	ldr r2, _0809123C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _0809125A
_0809123C: .4byte 0x00002025
_08091240:
	cmp r1, #0x11
	bgt _0809125A
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0809125A
	ldr r2, _08091270 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0809125A:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x03
	strh r0, [r5, #0x00]
_0809126A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08091270: .4byte 0x00002025
	thumb_func_start sub_8091274
sub_8091274:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0809128C
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0809139E
_0809128C:
	ldr r0, _080912D4 @ =0x0300034C
	ldrh r5, [r0, #0x3C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x00
	bne _080912DC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x16
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0x9C
	adds r0, #0x0A
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080912D8 @ =0x08091BE1
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _0809139E
_080912D4: .4byte 0x0300034C
_080912D8: .4byte sub_8091BE0
_080912DC:
	adds r3, r4, #0x0
	adds r3, #0xAC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x31
	ble _08091388
	ldr r0, [r4, #0x28]
	ldr r1, _0809133C @ =0x0000012D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1E
	bne _08091354
	ldr r0, _08091340 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x09]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _08091350
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
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
	ldr r2, _08091344 @ =0x03001038
	ldr r0, _08091348 @ =0x0819832C
	ldr r1, _0809134C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0A
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	b _08091370
	.byte 0x00, 0x00
_0809133C: .4byte 0x0000012D
_08091340: .4byte 0x03000FD8
_08091344: .4byte 0x03001038
_08091348: .4byte 0x0819832C
_0809134C: .4byte 0x08198220
_08091350:
	movs r0, #0x32
	b _0809139C
_08091354:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
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
_08091370:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08091384 @ =0x08091C45
	str r0, [r4, #0x4C]
	b _0809139E
	.byte 0x00, 0x00
_08091384: .4byte sub_8091C44
_08091388:
	cmp r0, #0x18
	ble _08091398
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08091398:
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
_0809139C:
	strh r0, [r3, #0x00]
_0809139E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80913A4
sub_80913A4:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _080913BC
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08091540
_080913BC:
	ldr r6, [r4, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x2A
	adds r5, r6, #0x0
	adds r5, #0xA4
	ldr r0, [r2, #0x00]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r3, _08091448 @ =0x03001038
	ldr r1, _0809144C @ =0x0819832C
	ldr r2, _08091450 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	movs r1, #0xB4
	lsls r1, r1, #0x01
	bl _call_via_r2
	ldr r2, _08091454 @ =0x08198584
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08091406
	adds r0, #0x3F
_08091406:
	asrs r0, r0, #0x06
	movs r2, #0x16
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x40]
	movs r7, #0xB0
	lsls r7, r7, #0x05
	adds r1, r0, r7
	ldr r0, _08091458 @ =0x08198504
	adds r0, r3, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0809142A
	adds r0, #0x3F
_0809142A:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	str r0, [r6, #0x18]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0809145C
	ldr r0, [r5, #0x00]
	movs r7, #0xC0
	lsls r7, r7, #0x04
	adds r0, r0, r7
	b _08091462
_08091448: .4byte 0x03001038
_0809144C: .4byte 0x0819832C
_08091450: .4byte 0x08198220
_08091454: .4byte 0x08198584
_08091458: .4byte 0x08198504
_0809145C:
	ldr r0, [r5, #0x00]
	ldr r1, _08091520 @ =0xFFFFF400
	adds r0, r0, r1
_08091462:
	str r0, [r5, #0x00]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x02
	bne _0809147C
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x01
	bl sub_8082E1C
_0809147C:
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x03
	bne _08091490
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x02
	bl sub_8082E1C
_08091490:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x04
	bne _080914A4
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x03
	bl sub_8082E1C
_080914A4:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x05
	bne _080914B8
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x04
	bl sub_8082E1C
_080914B8:
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x06
	bne _080914CC
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x05
	bl sub_8082E1C
_080914CC:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x07
	bne _08091530
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	strh r0, [r5, #0x00]
	ldr r0, _08091528 @ =0x08091B91
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08091540
	ldr r3, _0809152C @ =0x00000111
	adds r2, r0, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _08091540
_08091520: .4byte 0xFFFFF400
_08091524: .4byte 0x00002025
_08091528: .4byte sub_8091B90
_0809152C: .4byte 0x00000111
_08091530:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_08091540:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8091548
sub_8091548:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _08091558
	adds r2, #0xFF
_08091558:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _08091562
	adds r3, #0xFF
_08091562:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0809156C
	adds r0, #0xFF
_0809156C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r2, r0, #0x0
	str r2, [r5, #0x30]
	movs r0, #0x76
	adds r0, r0, r2
	mov r12, r0
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x44
	movs r1, #0xF6
	strb r1, [r0, #0x00]
	adds r3, r2, #0x0
	adds r3, #0x45
	movs r0, #0x08
	strb r0, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x46
	strb r1, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x47
	movs r0, #0x0A
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0xF4
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0x04
	strb r0, [r1, #0x00]
	adds r3, #0x32
	ldrb r1, [r3, #0x00]
	subs r0, #0x0C
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x08
	ldr r0, [r2, #0x40]
	str r0, [r1, #0x00]
	ldr r0, _08091618 @ =0x084FE8B4
	str r0, [r2, #0x6C]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x40
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	ldr r0, _0809161C @ =0x08087541
	str r0, [r2, #0x68]
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r4, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	bl sub_8091620
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08091618: .4byte 0x084FE8B4
_0809161C: .4byte sub_8087540
	thumb_func_start sub_8091620
sub_8091620:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _08091640 @ =0x08091621
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _08091644
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _080916FE
	.byte 0x00, 0x00
_08091640: .4byte sub_8091620
_08091644:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0809165E
	ldr r2, _080916C4 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809165E:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x02
	bne _08091672
	ldr r2, _080916C4 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_08091672:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x04
	bne _08091686
	ldr r2, _080916C4 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_08091686:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x06
	bne _0809169A
	ldr r2, _080916C4 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0809169A:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x08
	beq _080916D0
	ldr r0, _080916C8 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _080916EE
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	strh r1, [r5, #0x00]
	ldr r0, _080916CC @ =0x08091709
	str r0, [r4, #0x4C]
	b _080916FE
	.byte 0x00, 0x00
_080916C4: .4byte 0x00002054
_080916C8: .4byte 0x0300034C
_080916CC: .4byte sub_8091708
_080916D0:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	strh r6, [r5, #0x00]
	ldr r0, _08091704 @ =0x08091809
	str r0, [r4, #0x4C]
_080916EE:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_080916FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08091704: .4byte sub_8091808
	thumb_func_start sub_8091708
sub_8091708:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08091728 @ =0x08091709
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0809172C
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _080917FE
	.byte 0x00, 0x00
_08091728: .4byte sub_8091708
_0809172C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _08091794
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
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
	ldr r2, _08091784 @ =0x03001038
	ldr r0, _08091788 @ =0x0819832C
	ldr r1, _0809178C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0C
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08091790 @ =0x08091C45
	str r0, [r4, #0x4C]
	b _080917FE
	.byte 0x00, 0x00
_08091784: .4byte 0x03001038
_08091788: .4byte 0x0819832C
_0809178C: .4byte 0x08198220
_08091790: .4byte sub_8091C44
_08091794:
	cmp r1, #0x05
	bgt _080917B4
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080917EE
	ldr r2, _080917B0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080917EE
_080917B0: .4byte 0x00002054
_080917B4:
	cmp r1, #0x0B
	bgt _080917D4
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _080917EE
	ldr r2, _080917D0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _080917EE
_080917D0: .4byte 0x00002054
_080917D4:
	cmp r1, #0x11
	bgt _080917EE
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _080917EE
	ldr r2, _08091804 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_080917EE:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x02
	strh r0, [r5, #0x00]
_080917FE:
	pop {r4, r5}
	pop {r0}
	bx r0
_08091804: .4byte 0x00002054
	thumb_func_start sub_8091808
sub_8091808:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091820
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08091932
_08091820:
	ldr r0, _08091868 @ =0x0300034C
	ldrh r5, [r0, #0x3C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x00
	bne _08091870
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x06
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0x9C
	adds r0, #0x08
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809186C @ =0x08091B31
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _08091932
_08091868: .4byte 0x0300034C
_0809186C: .4byte sub_8091B30
_08091870:
	adds r3, r4, #0x0
	adds r3, #0xAC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x26
	ble _0809191C
	ldr r0, [r4, #0x28]
	ldr r1, _080918D0 @ =0x0000012D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1E
	bne _080918E8
	ldr r0, _080918D4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x09]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _080918E4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
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
	ldr r2, _080918D8 @ =0x03001038
	ldr r0, _080918DC @ =0x0819832C
	ldr r1, _080918E0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0C
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	b _08091904
	.byte 0x00, 0x00
_080918D0: .4byte 0x0000012D
_080918D4: .4byte 0x03000FD8
_080918D8: .4byte 0x03001038
_080918DC: .4byte 0x0819832C
_080918E0: .4byte 0x08198220
_080918E4:
	movs r0, #0x27
	b _08091930
_080918E8:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
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
_08091904:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08091918 @ =0x08091C45
	str r0, [r4, #0x4C]
	b _08091932
	.byte 0x00, 0x00
_08091918: .4byte sub_8091C44
_0809191C:
	cmp r0, #0x17
	ble _0809192C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_0809192C:
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
_08091930:
	strh r0, [r3, #0x00]
_08091932:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8091938
sub_8091938:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091950
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08091AD8
_08091950:
	ldr r6, [r4, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x2A
	adds r5, r6, #0x0
	adds r5, #0xA4
	ldr r0, [r2, #0x00]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r3, _080919DC @ =0x03001038
	ldr r1, _080919E0 @ =0x0819832C
	ldr r2, _080919E4 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	movs r1, #0xB4
	lsls r1, r1, #0x01
	bl _call_via_r2
	ldr r2, _080919E8 @ =0x08198584
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _0809199A
	adds r0, #0x3F
_0809199A:
	asrs r0, r0, #0x06
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x40]
	movs r1, #0xD0
	lsls r1, r1, #0x05
	adds r2, r0, r1
	ldr r0, _080919EC @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080919BE
	adds r0, #0x3F
_080919BE:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r2, r0
	str r0, [r6, #0x18]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080919F4
	ldr r0, [r5, #0x00]
	ldr r1, _080919F0 @ =0x00000998
	b _080919F8
_080919DC: .4byte 0x03001038
_080919E0: .4byte 0x0819832C
_080919E4: .4byte 0x08198220
_080919E8: .4byte 0x08198584
_080919EC: .4byte 0x08198504
_080919F0: .4byte 0x00000998
_080919F4:
	ldr r0, [r5, #0x00]
	ldr r1, _08091AB8 @ =0xFFFFF668
_080919F8:
	adds r0, r0, r1
	str r0, [r5, #0x00]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x03
	bne _08091A14
	ldr r2, _08091ABC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x01
	bl sub_8082E1C
_08091A14:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x05
	bne _08091A28
	ldr r2, _08091ABC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x02
	bl sub_8082E1C
_08091A28:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x06
	bne _08091A3C
	ldr r2, _08091ABC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x03
	bl sub_8082E1C
_08091A3C:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x07
	bne _08091A50
	ldr r2, _08091ABC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x04
	bl sub_8082E1C
_08091A50:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x08
	bne _08091A64
	ldr r2, _08091ABC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x05
	bl sub_8082E1C
_08091A64:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x09
	bne _08091AC8
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	strh r0, [r5, #0x00]
	ldr r0, _08091AC0 @ =0x08091AE1
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08091AD8
	ldr r1, _08091AC4 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _08091AD8
_08091AB8: .4byte 0xFFFFF668
_08091ABC: .4byte 0x00002054
_08091AC0: .4byte sub_8091AE0
_08091AC4: .4byte 0x00000111
_08091AC8:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_08091AD8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8091AE0
sub_8091AE0:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08091AF8
	ldr r0, _08091B10 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08091AF8:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091B14
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08091B2C
	.byte 0x00, 0x00
_08091B10: .4byte 0x00000111
_08091B14:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x17
	ble _08091B2C
	adds r0, r3, #0x0
	bl sub_808DD2C
_08091B2C:
	pop {r0}
	bx r0
	thumb_func_start sub_8091B30
sub_8091B30:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091B48
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08091B86
_08091B48:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08091B58
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08091B86
_08091B58:
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	movs r0, #0xA0
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08091B8C @ =0x08091939
	str r0, [r4, #0x4C]
_08091B86:
	pop {r4}
	pop {r0}
	bx r0
_08091B8C: .4byte sub_8091938
	thumb_func_start sub_8091B90
sub_8091B90:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08091BA8
	ldr r0, _08091BC0 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08091BA8:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091BC4
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08091BDC
	.byte 0x00, 0x00
_08091BC0: .4byte 0x00000111
_08091BC4:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _08091BDC
	adds r0, r3, #0x0
	bl sub_808DD2C
_08091BDC:
	pop {r0}
	bx r0
	thumb_func_start sub_8091BE0
sub_8091BE0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091BF8
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08091C34
_08091BF8:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08091C08
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08091C34
_08091C08:
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	ldr r0, _08091C3C @ =0xFFFFFE34
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08091C40 @ =0x080913A5
	str r0, [r4, #0x4C]
_08091C34:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08091C3C: .4byte 0xFFFFFE34
_08091C40: .4byte sub_80913A4
	thumb_func_start sub_8091C44
sub_8091C44:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091C5C
	adds r0, r2, #0x0
	bl sub_808DD2C
	b _08091C6E
_08091C5C:
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08091C6E
	adds r0, r2, #0x0
	bl sub_808DD2C
_08091C6E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
