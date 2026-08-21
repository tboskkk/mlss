	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8158EEC
sub_8158EEC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08158F24 @ =0x08CDC9F0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	beq _08158F16
	bl sub_815FAFC
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	beq _08158F16
	ldr r1, [r2, #0x30]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08158F16:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_815FB14
	pop {r4, r5}
	pop {r0}
	bx r0
_08158F24: .4byte 0x08CDC9F0
	thumb_func_start sub_8158F28
sub_8158F28:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	bl sub_815F8F4
	ldr r0, _08158F5C @ =0x08CDC9F0
	str r0, [r4, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x24
	movs r1, #0x00
	strb r1, [r0, #0x00]
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	adds r0, #0x1C
	strh r1, [r0, #0x00]
	str r1, [r4, #0x3C]
	str r1, [r4, #0x44]
	adds r0, r4, #0x0
	bl sub_815F97C
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08158F5C: .4byte 0x08CDC9F0
