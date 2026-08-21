	.include "asm/macros.inc"

	.syntax unified
	.text

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
