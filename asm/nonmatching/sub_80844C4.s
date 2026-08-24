	.syntax unified
	.text

	thumb_func_start sub_80844C4
sub_80844C4:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	ldr r4, _0808454C @ =0x03001034
	ldr r1, _08084550 @ =0x06004000
	movs r2, #0x90
	lsls r2, r2, #0x08
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r1, _08084554 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #0x05
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r6, _08084558 @ =0x084FB588
	ldrh r0, [r6, #0x00]
	lsls r0, r0, #0x02
	ldr r5, _0808455C @ =0x089F808C
	adds r0, r0, r5
	ldr r1, [r0, #0x00]
	adds r1, r1, r5
	ldr r2, _08084560 @ =0x06008000
	movs r3, #0xB0
	lsls r3, r3, #0x02
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x02
	bl sub_80827F0
	ldr r0, _08084564 @ =0x08198154
	ldr r1, _08084568 @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r4, #0x00]
	adds r3, r1, r0
	ldr r4, _0808456C @ =0x0300034C
	ldr r1, _08084570 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x12
	cmp r0, #0x00
	beq _08084524
	movs r1, #0x14
_08084524:
	adds r0, r1, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r0, r0, r5
	ldr r1, _08084574 @ =0x02000180
	movs r2, #0xC0
	bl _call_via_r3
	ldrh r1, [r4, #0x02]
	movs r2, #0xFC
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x02]
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0808454C: .4byte 0x03001034
_08084550: .4byte 0x06004000
_08084554: .4byte 0x0600F000
_08084558: .4byte word_84FB588 @ =0x084FB588
_0808455C: .4byte dword_89F808C @ =0x089F808C
_08084560: .4byte 0x06008000
_08084564: .4byte dword_8198154 @ =0x08198154
_08084568: .4byte dword_81980D8 @ =0x081980D8
_0808456C: .4byte 0x0300034C
_08084570: .4byte 0x00000888
_08084574: .4byte 0x02000180
