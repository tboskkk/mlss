	.syntax unified
	.text

	thumb_func_start sub_8082B6C
sub_8082B6C:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r2, r1, #0x0
	ldr r3, [r2, #0x08]
	cmp r3, #0x00
	beq _08082BEE
	ldr r0, [r2, #0x38]
	cmp r0, #0x00
	bge _08082B80
	adds r0, #0xFF
_08082B80:
	asrs r4, r0, #0x08
	ldr r1, [r2, #0x3C]
	cmp r1, #0x00
	bge _08082B8A
	adds r1, #0xFF
_08082B8A:
	asrs r6, r1, #0x08
	ldr r1, [r2, #0x40]
	cmp r1, #0x00
	bge _08082B94
	adds r1, #0xFF
_08082B94:
	asrs r1, r1, #0x08
	subs r1, r6, r1
	ldr r7, _08082BE4 @ =0x00000774
	adds r0, r5, r7
	ldrh r0, [r0, #0x00]
	subs r0, r4, r0
	strh r0, [r3, #0x00]
	ldr r4, _08082BE8 @ =0x00000776
	adds r0, r5, r4
	ldrh r0, [r0, #0x00]
	subs r1, r1, r0
	strh r1, [r3, #0x02]
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _08082BEE
	adds r0, r2, #0x0
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r7, #0xF8
	lsls r7, r7, #0x01
	adds r0, r0, r7
	subs r0, r0, r6
	adds r1, r2, #0x0
	adds r1, #0x75
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08082BEC
	strh r4, [r3, #0x0E]
	b _08082BEE
_08082BE4: .4byte 0x00000774
_08082BE8: .4byte 0x00000776
_08082BEC:
	strh r0, [r3, #0x0E]
_08082BEE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
