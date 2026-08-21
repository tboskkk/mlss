	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80872A8
sub_80872A8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r5, [r0, r2]
	cmp r5, #0x00
	bne _080872E4
	ldr r0, _080872D8 @ =0x00000111
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080872DC @ =0x0807DD39
	adds r1, r4, #0x0
	bl sub_807FF48
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r5, [r0, #0x00]
	ldr r0, _080872E0 @ =0x08087BA1
	b _08087310
_080872D8: .4byte 0x00000111
_080872DC: .4byte sub_807DD38
_080872E0: .4byte 0x08087BA1
_080872E4:
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080872F4
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08087312
_080872F4:
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
_08087310:
	str r0, [r4, #0x4C]
_08087312:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8087318
sub_8087318:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0808732A
	adds r1, #0xFF
_0808732A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08087334
	adds r2, #0xFF
_08087334:
	asrs r2, r2, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_808842C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_8088560
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8087360
sub_8087360:
	push {lr}
	ldr r0, _0808737C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08087380
	ldr r0, [r2, #0x7C]
	adds r0, #0x08
	bl sub_8097F30
	b _08087388
	.byte 0x00, 0x00
_0808737C: .4byte 0x03000FD8
_08087380:
	ldr r0, [r2, #0x7C]
	adds r0, #0x08
	bl sub_80970B8
_08087388:
	pop {r0}
	bx r0
	thumb_func_start sub_808738C
sub_808738C:
	push {r4, lr}
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _080873B0
	bl sub_807B7A8
	adds r0, r4, #0x0
	bl sub_807FE40
	adds r0, r4, #0x0
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x05
	bhi _080873B0
	adds r1, r4, #0x0
	adds r1, #0xF0
	movs r0, #0x00
	str r0, [r1, #0x00]
_080873B0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80873B8
sub_80873B8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r5, [r6, #0x08]
	cmp r4, #0x00
	beq _08087414
	ldr r2, _08087408 @ =0x03001038
	ldr r0, _0808740C @ =0x0819832C
	ldr r1, _08087410 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsls r0, r4, #0x04
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r3, #0x00
	ldsh r1, [r1, r3]
	bl _call_via_r2
	adds r4, r0, #0x0
	cmp r4, #0x00
	bgt _080873EE
	movs r4, #0x01
_080873EE:
	cmp r4, #0x7E
	ble _080873F4
	movs r4, #0x7F
_080873F4:
	adds r0, r5, #0x0
	adds r0, #0x20
	strb r4, [r0, #0x00]
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	b _0808741C
_08087408: .4byte 0x03001038
_0808740C: .4byte 0x0819832C
_08087410: .4byte 0x08198220
_08087414:
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
_0808741C:
	strb r0, [r5, #0x12]
	ldr r0, _08087428 @ =0x08087BA5
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08087428: .4byte sub_8087BA4
	.byte 0x81, 0x68, 0xBA, 0x31, 0x00, 0x22, 0x0A, 0x80, 0x01, 0x49, 0x41, 0x60, 0x70, 0x47, 0x00, 0x00
	.byte 0xD1, 0x7B, 0x08, 0x08, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_8087444
sub_8087444:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, [r6, #0x28]
	ldr r1, [r5, #0x00]
	cmp r1, #0x00
	beq _08087482
_08087450:
	adds r4, r1, #0x0
	ldr r1, _0808746C @ =0x00000111
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08087474
	ldr r0, _08087470 @ =0x08087C21
	adds r1, r4, #0x0
	bl sub_807FF48
	b _0808747C
	.byte 0x00, 0x00
_0808746C: .4byte 0x00000111
_08087470: .4byte sub_8087C20
_08087474:
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8086700
_0808747C:
	ldr r1, [r4, #0x00]
	cmp r1, r5
	bne _08087450
_08087482:
	ldr r1, _0808749C @ =0x00000111
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080874A4
	ldr r0, _080874A0 @ =0x08087C21
	adds r1, r5, #0x0
	bl sub_807FF48
	b _080874AA
	.byte 0x00, 0x00
_0808749C: .4byte 0x00000111
_080874A0: .4byte sub_8087C20
_080874A4:
	adds r0, r6, #0x0
	bl sub_8086700
_080874AA:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80874B4
sub_80874B4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08087508 @ =0x08087C4D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08087508: .4byte sub_8087C4C
