	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8158E90
sub_8158E90:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	ldr r1, [r4, #0x04]
	bl sub_8160854
	lsls r0, r0, #0x10
	asrs r2, r0, #0x08
	str r2, [r4, #0x44]
	ldr r0, [r4, #0x08]
	cmp r0, r2
	ble _08158EBE
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x04]
	ldr r1, [r4, #0x0C]
	subs r1, r0, r1
	strh r1, [r4, #0x14]
	ldr r1, [r4, #0x10]
	subs r1, r2, r1
	strh r1, [r4, #0x18]
	str r0, [r4, #0x0C]
	str r2, [r4, #0x10]
	b _08158EC4
_08158EBE:
	adds r0, r4, #0x0
	bl sub_815FACC
_08158EC4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8158ECC
sub_8158ECC:
	push {lr}
	adds r1, r2, #0x0
	bl sub_815FAE4
	pop {r0}
	bx r0
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x90, 0x68, 0x88, 0x42, 0x02, 0xDD, 0x91, 0x60, 0x00, 0x20, 0x10, 0x83
	.byte 0x01, 0xBC, 0x00, 0x47
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
