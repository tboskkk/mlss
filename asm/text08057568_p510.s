	.include "asm/macros.inc"

	.syntax unified
	.text

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
