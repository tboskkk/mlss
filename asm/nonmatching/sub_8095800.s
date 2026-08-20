	.syntax unified
	.text

	thumb_func_start sub_8095800
sub_8095800:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08095814
	cmp r1, #0x04
	bne _08095844
_08095814:
	ldr r2, _08095850 @ =0x03001038
	ldr r0, _08095854 @ =0x0819832C
	ldr r1, _08095858 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08095844:
	ldr r0, _0809585C @ =0x08095861
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08095850: .4byte 0x03001038
_08095854: .4byte 0x0819832C
_08095858: .4byte 0x08198220
_0809585C: .4byte sub_8095860
