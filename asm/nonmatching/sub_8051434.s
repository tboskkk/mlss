	.syntax unified
	.text

	thumb_func_start sub_8051434
sub_8051434:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, _08051480 @ =0x0000020F
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0805147A
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldr r3, [r1, #0x00]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _08051456
	adds r0, #0xFF
_08051456:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	ldr r3, [r1, #0x00]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08051464
	adds r0, #0xFF
_08051464:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x02]
	ldr r1, [r1, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0F
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0C
	strh r0, [r1, #0x0E]
_0805147A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051480: .4byte 0x0000020F
