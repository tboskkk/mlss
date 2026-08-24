	.syntax unified
	.text

	thumb_func_start sub_810D11C
sub_810D11C:
	push {r4, lr}
	add sp, #-0x008
	ldr r0, _0810D15C @ =0x084FB588
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #0x02
	ldr r2, _0810D160 @ =0x089F808C
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r0, _0810D164 @ =0x03000FDC
	ldr r2, [r0, #0x00]
	ldr r0, _0810D168 @ =0x00004E70
	adds r2, r2, r0
	movs r3, #0x01
	negs r3, r3
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x00
	bl sub_80827F0
	ldr r0, _0810D16C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xAF
	lsls r1, r1, #0x02
	adds r0, r0, r1
	strb r4, [r0, #0x00]
	add sp, #0x008
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D15C: .4byte word_84FB588 @ =0x084FB588
_0810D160: .4byte dword_89F808C @ =0x089F808C
_0810D164: .4byte 0x03000FDC
_0810D168: .4byte 0x00004E70
_0810D16C: .4byte 0x03000FD8
