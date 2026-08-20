	.syntax unified
	.text

	thumb_func_start sub_8161C9C
sub_8161C9C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r2, #0x0
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	beq _08161D14
	ldr r3, [r4, #0x14]
	cmp r3, #0x00
	beq _08161CD6
	ldr r0, [r4, #0x18]
	asrs r0, r0, #0x08
	subs r0, r0, r1
	strh r0, [r3, #0x00]
	strh r0, [r2, #0x00]
	ldr r3, [r4, #0x10]
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #0x1C]
	ldr r1, [r4, #0x20]
	adds r0, r0, r1
	asrs r0, r0, #0x08
	subs r0, r0, r5
	strh r0, [r2, #0x02]
	strh r0, [r3, #0x02]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x3C]
	asrs r0, r0, #0x08
	ldrh r2, [r1, #0x02]
	adds r0, r0, r2
	b _08161CEE
_08161CD6:
	ldr r0, [r4, #0x18]
	asrs r0, r0, #0x08
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x1C]
	ldr r1, [r4, #0x3C]
	adds r0, r0, r1
	ldr r1, [r4, #0x20]
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	asrs r0, r0, #0x08
	subs r0, r0, r5
_08161CEE:
	strh r0, [r1, #0x02]
	ldr r1, [r4, #0x10]
	movs r3, #0x02
	ldsh r0, [r1, r3]
	cmp r0, #0xD0
	ble _08161D00
	movs r0, #0xBC
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
_08161D00:
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x50
	asrs r1, r1, #0x08
	ldr r3, _08161D1C @ =0xFFFFFC00
	adds r1, r1, r3
	ldrh r0, [r0, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x0E]
_08161D14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08161D1C: .4byte 0xFFFFFC00
