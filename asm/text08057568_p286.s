	.include "asm/macros.inc"

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
_0810D15C: .4byte 0x084FB588
_0810D160: .4byte 0x089F808C
_0810D164: .4byte 0x03000FDC
_0810D168: .4byte 0x00004E70
_0810D16C: .4byte 0x03000FD8
	thumb_func_start sub_810D170
sub_810D170:
	push {r4, r5, lr}
	ldr r5, _0810D1A0 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0810D19A
	adds r0, r1, #0x0
	adds r0, #0x80
	movs r4, #0x00
	str r4, [r0, #0x00]
	adds r0, r1, #0x0
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
_0810D19A:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810D1A0: .4byte 0x03000FD8
	thumb_func_start sub_810D1A4
sub_810D1A4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	adds r3, r2, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810D1CE
	adds r0, r2, #0x0
	bl sub_8085A6C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0810D1D2
_0810D1CE:
	movs r0, #0x00
	str r0, [r4, #0x04]
_0810D1D2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_810D1D8
sub_810D1D8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0810D220 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x7C]
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bge _0810D1EC
	adds r0, #0xFF
_0810D1EC:
	asrs r0, r0, #0x08
	subs r3, r0, #0x4
	ldr r1, [r2, #0x44]
	cmp r1, #0x00
	bge _0810D1F8
	adds r1, #0xFF
_0810D1F8:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810D206
	adds r0, #0xFF
_0810D206:
	asrs r2, r0, #0x08
	adds r2, #0x18
	ldr r0, _0810D224 @ =0x00007001
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	adds r3, r4, #0x0
	bl sub_810A648
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D220: .4byte 0x03000FD8
_0810D224: .4byte 0x00007001
