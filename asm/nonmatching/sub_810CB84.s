	.syntax unified
	.text

	thumb_func_start sub_810CB84
sub_810CB84:
	push {lr}
	add sp, #-0x008
	ldr r0, _0810CBBC @ =0x084FB588
	ldrh r0, [r0, #0x0E]
	lsls r0, r0, #0x02
	ldr r2, _0810CBC0 @ =0x089F808C
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r0, _0810CBC4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0xF8
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r2, [r0, #0x00]
	movs r0, #0xC4
	lsls r0, r0, #0x05
	adds r2, r2, r0
	movs r3, #0x90
	lsls r3, r3, #0x04
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	bl sub_80827F0
	add sp, #0x008
	pop {r0}
	bx r0
_0810CBBC: .4byte 0x084FB588
_0810CBC0: .4byte 0x089F808C
_0810CBC4: .4byte 0x03000FD8
