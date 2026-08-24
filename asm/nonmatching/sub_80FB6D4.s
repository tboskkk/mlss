	.syntax unified
	.text

	thumb_func_start sub_80FB6D4
sub_80FB6D4:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0E
	ldr r1, _080FB708 @ =0x083D6C58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldrb r0, [r3, #0x03]
	lsls r0, r0, #0x08
	ldrb r1, [r3, #0x02]
	orrs r0, r1
	subs r3, r3, r0
	ldr r4, _080FB70C @ =0x082FBDC4
	ldr r0, _080FB710 @ =0x00000222
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r3
	ldrh r2, [r0, #0x00]
	ldrb r0, [r4, #0x01]
	lsls r0, r0, #0x08
	ldrb r1, [r4, #0x00]
	orrs r1, r0
	movs r0, #0x00
	b _080FB72A
	.byte 0x00, 0x00
_080FB708: .4byte dword_83D6C58 @ =0x083D6C58
_080FB70C: .4byte byte_82FBDC4 @ =0x082FBDC4
_080FB710: .4byte 0x00000222
_080FB714:
	cmp r1, r2
	bne _080FB71C
	movs r0, #0x01
	b _080FB732
_080FB71C:
	adds r4, #0x09
	ldrb r0, [r4, #0x01]
	lsls r0, r0, #0x08
	ldrb r1, [r4, #0x00]
	orrs r1, r0
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
_080FB72A:
	strb r0, [r5, #0x00]
	cmp r1, #0x00
	bne _080FB714
	movs r0, #0x00
_080FB732:
	pop {r4, r5}
	pop {r1}
	bx r1
