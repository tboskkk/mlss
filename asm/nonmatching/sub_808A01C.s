	.syntax unified
	.text

	thumb_func_start sub_808A01C
sub_808A01C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x28]
	ldr r1, [r6, #0x2C]
	mov r8, r1
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	adds r0, #0xAE
	adds r1, r6, #0x0
	adds r1, #0xB0
	adds r2, r6, #0x0
	adds r2, #0xB2
	mov r4, r8
	ldr r3, [r4, #0x10]
	ldr r4, [r6, #0x38]
	subs r3, r3, r4
	mov r5, r8
	ldr r4, [r5, #0x14]
	ldr r5, [r6, #0x3C]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	mov r5, r8
	ldr r4, [r5, #0x18]
	ldr r5, [r6, #0x40]
	subs r4, r4, r5
	str r4, [sp, #0x004]
	movs r4, #0xC0
	lsls r4, r4, #0x02
	str r4, [sp, #0x008]
	bl sub_8087968
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r6, #0x0
	bl sub_807F4FC
	ldr r0, _0808A088 @ =0x0808873D
	str r0, [r6, #0x4C]
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808A088: .4byte sub_808873C
	.byte 0x00, 0x21, 0xC1, 0x64, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
