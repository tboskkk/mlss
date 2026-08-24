	.syntax unified
	.text

	thumb_func_start sub_80837F8
sub_80837F8:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r2, _08083830 @ =0x083B8F0C
	ldrh r6, [r3, #0x02]
	lsrs r1, r6, #0x0E
	ldrh r7, [r3, #0x00]
	lsrs r0, r7, #0x0E
	lsls r0, r0, #0x02
	adds r1, r1, r0
	adds r2, r1, r2
	ldrb r2, [r2, #0x00]
	ldr r0, _08083834 @ =0x083B8F18
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	cmn r4, r2
	blt _08083828
	cmp r4, #0xEF
	bgt _08083828
	cmn r5, r0
	blt _08083828
	cmp r5, #0x9F
	ble _08083838
_08083828:
	movs r0, #0x01
	strh r0, [r3, #0x06]
	b _08083854
	.byte 0x00, 0x00
_08083830: .4byte dword_83B8F0C @ =0x083B8F0C
_08083834: .4byte dword_83B8F18 @ =0x083B8F18
_08083838:
	ldr r1, _0808385C @ =0x000001FF
	ands r1, r4
	movs r0, #0xFE
	lsls r0, r0, #0x08
	ands r0, r6
	orrs r0, r1
	strh r0, [r3, #0x02]
	movs r1, #0xFF
	ands r1, r5
	movs r0, #0xFF
	lsls r0, r0, #0x08
	ands r0, r7
	orrs r0, r1
	strh r0, [r3, #0x00]
_08083854:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808385C: .4byte 0x000001FF
