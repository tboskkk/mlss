	.syntax unified
	.text

	thumb_func_start sub_8059F24
sub_8059F24:
	mov r12, r0
	ldr r3, _08059F70 @ =0x02000014
	adds r0, #0x5A
	ldrh r2, [r0, #0x00]
	ldr r1, _08059F74 @ =0x000001FF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	mov r0, r12
	adds r0, #0x5C
	ldrh r2, [r0, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _08059F78 @ =0x0200001C
	mov r0, r12
	adds r0, #0x5E
	ldrh r0, [r0, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _08059F7C @ =0x02000016
	mov r0, r12
	adds r0, #0x60
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r12
	adds r0, #0x62
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r12
	adds r0, #0x64
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	bx lr
	.byte 0x00, 0x00
_08059F70: .4byte 0x02000014
_08059F74: .4byte 0x000001FF
_08059F78: .4byte 0x0200001C
_08059F7C: .4byte 0x02000016
