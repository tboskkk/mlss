	.syntax unified
	.text

	thumb_func_start sub_8092898
sub_8092898:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _080928B8 @ =0x08092899
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _080928BC
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0809298E
	.byte 0x00, 0x00
_080928B8: .4byte sub_8092898
_080928BC:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _08092924
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
	ldr r2, _08092914 @ =0x03001038
	ldr r0, _08092918 @ =0x0819832C
	ldr r1, _0809291C @ =0x08198220
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
	ldr r0, _08092920 @ =0x08092DD5
	str r0, [r4, #0x4C]
	b _0809298E
	.byte 0x00, 0x00
_08092914: .4byte 0x03001038
_08092918: .4byte 0x0819832C
_0809291C: .4byte 0x08198220
_08092920: .4byte sub_8092DD4
_08092924:
	cmp r1, #0x08
	bgt _08092944
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809297E
	ldr r2, _08092940 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809297E
_08092940: .4byte 0x00002054
_08092944:
	cmp r1, #0x11
	bgt _08092964
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0809297E
	ldr r2, _08092960 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _0809297E
_08092960: .4byte 0x00002054
_08092964:
	cmp r1, #0x1A
	bgt _0809297E
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0809297E
	ldr r2, _08092994 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0809297E:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x03
	strh r0, [r5, #0x00]
_0809298E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08092994: .4byte 0x00002054
