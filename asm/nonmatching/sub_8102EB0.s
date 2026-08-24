	.syntax unified
	.text

	thumb_func_start sub_8102EB0
sub_8102EB0:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x008
	adds r6, r0, #0x0
	ldr r4, _08102F38 @ =0x00007003
	adds r0, r4, #0x0
	bl sub_8082AAC
	adds r0, r4, #0x0
	bl sub_8082A6C
	adds r4, #0x01
	adds r0, r4, #0x0
	bl sub_8082AAC
	adds r0, r4, #0x0
	bl sub_8082A6C
	ldr r0, _08102F3C @ =0x084FB588
	mov r8, r0
	ldrh r0, [r0, #0x02]
	lsls r0, r0, #0x02
	ldr r5, _08102F40 @ =0x089F808C
	adds r0, r0, r5
	ldr r1, [r0, #0x00]
	adds r1, r1, r5
	ldr r2, _08102F44 @ =0x06008000
	movs r3, #0x92
	lsls r3, r3, #0x04
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x02
	bl sub_80827F0
	ldr r0, _08102F48 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r0, #0x02
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x00]
	adds r1, r1, r5
	ldr r2, _08102F4C @ =0x06008920
	movs r3, #0xA4
	lsls r3, r3, #0x03
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x02
	bl sub_80827F0
	strh r4, [r6, #0x10]
	movs r0, #0x03
	strh r0, [r6, #0x18]
	ldr r0, _08102F50 @ =0x08106BB1
	str r0, [r6, #0x04]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08102F38: .4byte 0x00007003
_08102F3C: .4byte word_84FB588 @ =0x084FB588
_08102F40: .4byte dword_89F808C @ =0x089F808C
_08102F44: .4byte 0x06008000
_08102F48: .4byte 0x0300034C
_08102F4C: .4byte 0x06008920
_08102F50: .4byte sub_8106BB0
