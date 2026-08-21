	.syntax unified
	.text

	thumb_func_start sub_80772F0
sub_80772F0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077340
	adds r0, r2, #0x0
	bl sub_807C298
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807731E
	adds r1, #0xFF
_0807731E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077328
	adds r2, #0xFF
_08077328:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077332
	adds r3, #0xFF
_08077332:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077348 @ =0x00002515
	bl sub_80DF024
	ldr r0, _0807734C @ =0x080775A5
	str r0, [r4, #0x4C]
_08077340:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077348: .4byte 0x00002515
_0807734C: .4byte sub_80775A4
