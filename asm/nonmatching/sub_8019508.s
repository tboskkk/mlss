	.syntax unified
	.text

	thumb_func_start sub_8019508
sub_8019508:
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	cmp r5, #0x00
	bne _08019530
	ldr r0, _0801952C @ =0x0300034C
	lsls r1, r2, #0x08
	movs r3, #0x89
	lsls r3, r3, #0x04
	adds r0, r0, r3
	strh r1, [r0, #0x00]
	movs r0, #0x00
	adds r1, r2, #0x0
	bl sub_819B9B4
	b _0801956C
_0801952C: .4byte 0x0300034C
_08019530:
	lsls r0, r2, #0x08
	ldr r4, _08019574 @ =0x0300034C
	ldr r2, _08019578 @ =0x00000894
	adds r1, r4, r2
	movs r2, #0x00
	strh r0, [r1, #0x00]
	ldr r3, _0801957C @ =0x00000892
	adds r1, r4, r3
	strb r5, [r1, #0x00]
	adds r3, #0x01
	adds r1, r4, r3
	strb r2, [r1, #0x00]
	ldr r1, _08019580 @ =0x0000088D
	adds r3, r4, r1
	ldrb r1, [r3, #0x00]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r3, #0x00]
	movs r2, #0x89
	lsls r2, r2, #0x04
	adds r1, r4, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x08
	subs r0, r0, r1
	adds r1, r5, #0x0
	bl __divsi3
	ldr r3, _08019584 @ =0x00000896
	adds r4, r4, r3
	strh r0, [r4, #0x00]
_0801956C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08019574: .4byte 0x0300034C
_08019578: .4byte 0x00000894
_0801957C: .4byte 0x00000892
_08019580: .4byte 0x0000088D
_08019584: .4byte 0x00000896
