	.syntax unified
	.text

	thumb_func_start sub_815033C
sub_815033C:
	push {lr}
	mov r12, r0
	lsls r1, r1, #0x18
	ldr r3, _08150368 @ =0x00000212
	add r3, r12
	ldrh r2, [r3, #0x00]
	ldr r0, _0815036C @ =0xFFFFFE7F
	ands r0, r2
	strh r0, [r3, #0x00]
	movs r2, #0xAD
	lsls r2, r2, #0x02
	add r2, r12
	movs r0, #0x00
	strb r0, [r2, #0x00]
	cmp r1, #0x00
	bne _08150374
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r0, _08150370 @ =0x0814EC49
	b _0815037C
	.byte 0x00, 0x00
_08150368: .4byte 0x00000212
_0815036C: .4byte 0xFFFFFE7F
_08150370: .4byte sub_814EC48
_08150374:
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r0, _08150384 @ =0x0814ECE1
_0815037C:
	str r0, [r1, #0x00]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08150384: .4byte sub_814ECE0
