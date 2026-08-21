	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80899E4
sub_80899E4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8086C64
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8089A04
sub_8089A04:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_810DD7C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x11, 0x9D, 0x08, 0x08
	thumb_func_start sub_8089A30
sub_8089A30:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08089A48
	adds r0, #0x07
_08089A48:
	asrs r0, r0, #0x03
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _08089AA8
	ldr r0, [r4, #0x28]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, _08089A94 @ =0x08087541
	str r0, [r1, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r1, #0x6C]
	str r2, [r4, #0x6C]
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08089A9C
	ldr r0, _08089A98 @ =0x08089AC9
	str r0, [r1, #0x4C]
	adds r0, r1, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08089AA2
	.byte 0x00, 0x00
_08089A94: .4byte sub_8087540
_08089A98: .4byte sub_8089AC8
_08089A9C:
	adds r0, r1, #0x0
	bl sub_8086700
_08089AA2:
	adds r0, r4, #0x0
	bl sub_807C298
_08089AA8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
