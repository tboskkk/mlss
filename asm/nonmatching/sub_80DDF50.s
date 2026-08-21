	.syntax unified
	.text

	thumb_func_start sub_80DDF50
sub_80DDF50:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	movs r5, #0x01
	negs r5, r5
	movs r4, #0x00
	ldr r0, _080DDFEC @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x8A
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080DDF80
	cmp r0, #0xFF
	beq _080DDF80
	movs r4, #0x46
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x46
	bl sub_81DD77C
	cmp r0, #0x45
	bhi _080DDF80
	movs r5, #0x00
_080DDF80:
	ldr r0, _080DDFEC @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x8B
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080DDFA4
	cmp r0, #0xFF
	beq _080DDFA4
	adds r4, #0x19
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	cmp r0, #0x18
	bhi _080DDFA4
	movs r5, #0x01
_080DDFA4:
	ldr r0, _080DDFEC @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x8C
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080DDFC8
	cmp r0, #0xFF
	beq _080DDFC8
	adds r4, #0x05
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	cmp r0, #0x04
	bhi _080DDFC8
	movs r5, #0x02
_080DDFC8:
	movs r1, #0x01
	negs r1, r1
	cmp r5, r1
	beq _080DDFF4
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80F7068
	ldr r0, [r6, #0x28]
	movs r2, #0x80
	negs r2, r2
	adds r1, r2, #0x0
	ldr r2, _080DDFF0 @ =0x00000113
	adds r0, r0, r2
	orrs r5, r1
	strb r5, [r0, #0x00]
	b _080DDFFE
	.byte 0x00, 0x00
_080DDFEC: .4byte 0x03000FF4
_080DDFF0: .4byte 0x00000113
_080DDFF4:
	ldr r0, [r6, #0x28]
	ldr r2, _080DE018 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_080DDFFE:
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _080DE00A
	bl _call_via_r1
_080DE00A:
	ldr r0, _080DE01C @ =0x080DEAC1
	str r0, [r7, #0x4C]
	movs r0, #0x01
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080DE018: .4byte 0x00000113
_080DE01C: .4byte sub_80DEAC0
