	.syntax unified
	.text

	thumb_func_start sub_8137BB0
sub_8137BB0:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, [r5, #0x0C]
	cmp r1, #0x00
	bge _08137BC0
	adds r1, #0xFF
_08137BC0:
	asrs r1, r1, #0x08
	movs r6, #0xE2
	lsls r6, r6, #0x01
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08137BD2
	adds r0, #0xFF
_08137BD2:
	asrs r0, r0, #0x08
	movs r6, #0xE3
	lsls r6, r6, #0x01
	adds r1, r5, r6
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08137BE8
	adds r1, #0xFF
_08137BE8:
	asrs r1, r1, #0x08
	movs r6, #0xE4
	lsls r6, r6, #0x01
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	cmp r4, #0x01
	bne _08137BFE
	ldr r0, [r5, #0x0C]
	adds r2, r2, r0
	ldr r0, [r5, #0x10]
	adds r3, r3, r0
_08137BFE:
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r6, #0xB4
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xAF
	lsls r1, r1, #0x02
	adds r0, r5, r1
	str r2, [r0, #0x00]
	subs r6, #0x10
	adds r0, r5, r6
	str r3, [r0, #0x00]
	ldr r4, _08137CC4 @ =0x03001038
	ldr r0, [r5, #0x0C]
	subs r2, r2, r0
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _08137C2E
	adds r0, r2, #0x3
_08137C2E:
	asrs r0, r0, #0x02
	muls r0, r2
	cmp r0, #0x00
	bge _08137C38
	adds r0, #0x03
_08137C38:
	asrs r2, r0, #0x02
	ldr r0, [r5, #0x10]
	subs r3, r3, r0
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08137C46
	adds r0, r3, #0x3
_08137C46:
	asrs r0, r0, #0x02
	muls r0, r3
	cmp r0, #0x00
	bge _08137C50
	adds r0, #0x03
_08137C50:
	asrs r0, r0, #0x02
	adds r0, r2, r0
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r0, _08137CC8 @ =0x0000023E
	adds r2, r5, r0
	ldrh r3, [r2, #0x00]
	movs r6, #0xB6
	lsls r6, r6, #0x02
	adds r0, r5, r6
	strh r3, [r0, #0x00]
	ldrh r3, [r2, #0x00]
	subs r6, #0x96
	adds r0, r5, r6
	strh r3, [r0, #0x00]
	movs r0, #0x00
	ldsh r3, [r2, r0]
	lsls r1, r1, #0x03
	adds r1, r3, r1
	ldr r0, _08137CCC @ =0x0819832C
	ldr r2, _08137CD0 @ =0x08198220
	subs r0, r0, r2
	ldr r4, [r4, #0x00]
	adds r4, r4, r0
	negs r0, r3
	muls r0, r3
	lsrs r2, r1, #0x1F
	adds r2, r1, r2
	asrs r2, r2, #0x01
	adds r0, r0, r2
	bl _call_via_r4
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r5, r2
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08137CA6
	movs r0, #0x01
	str r0, [r1, #0x00]
_08137CA6:
	ldr r3, _08137CD4 @ =0x000002DE
	adds r1, r5, r3
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xF8
	ldrh r0, [r2, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x04
	adds r1, r6, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08137CC4: .4byte 0x03001038
_08137CC8: .4byte 0x0000023E
_08137CCC: .4byte 0x0819832C
_08137CD0: .4byte 0x08198220
_08137CD4: .4byte 0x000002DE
