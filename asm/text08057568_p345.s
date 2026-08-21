	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_813BA80
sub_813BA80:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	bl sub_8139F08
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _0813BA9C
	ldr r0, [r5, #0x08]
	b _0813BAE2
_0813BA9C:
	ldr r0, _0813BAAC @ =0x000002DE
	adds r2, r4, r0
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0813BAB0
	movs r0, #0x00
	b _0813BADC
	.byte 0x00, 0x00
_0813BAAC: .4byte 0x000002DE
_0813BAB0:
	ldr r1, _0813BAEC @ =0x00000242
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	lsrs r0, r0, #0x1F
_0813BADC:
	cmp r0, #0x00
	bne _0813BAE4
	ldr r0, [r5, #0x04]
_0813BAE2:
	str r0, [r5, #0x00]
_0813BAE4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813BAEC: .4byte 0x00000242
	thumb_func_start sub_813BAF0
sub_813BAF0:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _0813BB0C
	ldr r0, [r5, #0x08]
	b _0813BB52
_0813BB0C:
	ldr r0, _0813BB1C @ =0x000002DE
	adds r2, r4, r0
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0813BB20
	movs r0, #0x00
	b _0813BB4C
	.byte 0x00, 0x00
_0813BB1C: .4byte 0x000002DE
_0813BB20:
	ldr r1, _0813BB5C @ =0x00000242
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	lsrs r0, r0, #0x1F
_0813BB4C:
	cmp r0, #0x00
	bne _0813BB54
	ldr r0, [r5, #0x04]
_0813BB52:
	str r0, [r5, #0x00]
_0813BB54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813BB5C: .4byte 0x00000242
