	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_809EA4C
sub_809EA4C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	beq _0809EA64
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _0809EAC8
_0809EA64:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r6, [r0, #0x00]
	cmp r6, #0x00
	bne _0809EAC8
	ldr r4, [r5, #0x28]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x40]
	ldr r2, _0809EAD0 @ =0xFFFFF600
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x44]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x48]
	movs r3, #0xD0
	lsls r3, r3, #0x04
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, [r4, #0x48]
	movs r1, #0xD0
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB2
	strh r6, [r0, #0x00]
	ldr r0, _0809EAD4 @ =0x0809EAD9
	str r0, [r5, #0x4C]
_0809EAC8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809EAD0: .4byte 0xFFFFF600
_0809EAD4: .4byte sub_809EAD8
	thumb_func_start sub_809EAD8
sub_809EAD8:
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
	bge _0809EAF0
	adds r0, #0x07
_0809EAF0:
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
	bne _0809EB50
	ldr r0, [r4, #0x28]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, _0809EB3C @ =0x08087541
	str r0, [r1, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r1, #0x6C]
	str r2, [r4, #0x6C]
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _0809EB44
	ldr r0, _0809EB40 @ =0x0809EB71
	str r0, [r1, #0x4C]
	adds r0, r1, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809EB4A
	.byte 0x00, 0x00
_0809EB3C: .4byte sub_8087540
_0809EB40: .4byte sub_809EB70
_0809EB44:
	adds r0, r1, #0x0
	bl sub_8086700
_0809EB4A:
	adds r0, r4, #0x0
	bl sub_807C298
_0809EB50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
