	.syntax unified
	.text

	thumb_func_start sub_8106B0C
sub_8106B0C:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r5, r0, #0x0
	ldr r1, _08106B78 @ =0x0200001C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r4, _08106B7C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x06
	str r1, [sp, #0x000]
	movs r1, #0x0C
	str r1, [sp, #0x004]
	ldr r1, _08106B80 @ =0x084FB588
	adds r1, #0x4C
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08106B84 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x92
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x0C
	movs r3, #0x05
	bl sub_8084F28
	ldr r0, [r4, #0x00]
	adds r0, #0x4C
	ldr r1, _08106B88 @ =0x08104DB9
	bl sub_807FFD8
	ldr r1, [r4, #0x00]
	movs r2, #0xDD
	lsls r2, r2, #0x02
	adds r1, r1, r2
	str r0, [r1, #0x00]
	ldr r0, _08106B8C @ =0x08103D75
	str r0, [r5, #0x04]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x36
	bl play_sfx_80195B4
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_08106B78: .4byte 0x0200001C
_08106B7C: .4byte 0x03000FD8
_08106B80: .4byte 0x084FB588
_08106B84: .4byte 0x089F808C
_08106B88: .4byte sub_8104DB8
_08106B8C: .4byte sub_8103D74
