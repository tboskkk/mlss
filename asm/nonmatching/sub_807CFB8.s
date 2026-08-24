	.syntax unified
	.text

	thumb_func_start sub_807CFB8
sub_807CFB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r8, r0
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	ldr r0, _0807D06C @ =0x03001034
	mov r9, r0
	ldr r0, _0807D070 @ =0x08198154
	ldr r1, _0807D074 @ =0x081980D8
	subs r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _0807D078 @ =0x084FB588
	ldr r4, _0807D07C @ =0x0300034C
	ldr r1, _0807D080 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x1A
	cmp r0, #0x00
	beq _0807CFF0
	movs r1, #0x1C
_0807CFF0:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0807D084 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0807D088 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	movs r6, #0x00
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r5, _0807D08C @ =0x03000FD8
	ldr r2, [r5, #0x00]
	ldr r3, _0807D090 @ =0x0807F835
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x48]
	str r0, [r1, #0x00]
	str r3, [r1, #0x04]
	strh r6, [r1, #0x10]
	str r1, [r2, #0x48]
	adds r7, r1, #0x0
	ldr r0, [r5, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	mov r2, r9
	ldr r3, [r2, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	str r6, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	mov r2, r8
	cmp r2, #0x09
	bhi _0807D094
	ldr r0, [sp, #0x004]
	adds r0, #0x04
	b _0807D098
	.byte 0x00, 0x00
_0807D06C: .4byte 0x03001034
_0807D070: .4byte dword_8198154 @ =0x08198154
_0807D074: .4byte dword_81980D8 @ =0x081980D8
_0807D078: .4byte word_84FB588 @ =0x084FB588
_0807D07C: .4byte 0x0300034C
_0807D080: .4byte 0x00000888
_0807D084: .4byte dword_89F808C @ =0x089F808C
_0807D088: .4byte 0x02000440
_0807D08C: .4byte 0x03000FD8
_0807D090: .4byte sub_807F834
_0807D094:
	ldr r0, [sp, #0x004]
	adds r0, #0x08
_0807D098:
	str r0, [r4, #0x04]
	ldr r0, [r4, #0x04]
	lsls r0, r0, #0x08
	str r0, [r4, #0x04]
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x08
	str r0, [r4, #0x08]
	movs r0, #0xFF
	lsls r0, r0, #0x08
	strh r0, [r4, #0x12]
	movs r0, #0x0A
	strh r0, [r4, #0x16]
	mov r0, r8
	bl sub_8083F88
	str r0, [r7, #0x08]
	str r4, [r7, #0x0C]
	adds r0, r7, #0x0
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
