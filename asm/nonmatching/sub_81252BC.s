	.syntax unified
	.text

	thumb_func_start sub_81252BC
sub_81252BC:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	movs r5, #0x00
	movs r0, #0x00
	bl sub_80195F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _081252D4
	movs r5, #0x01
_081252D4:
	ldr r7, _08125318 @ =0x0300034C
	ldr r1, _0812531C @ =0x00000898
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	strb r0, [r6, #0x00]
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0x00
	movs r1, #0x00
	adds r2, r4, #0x0
	bl sub_80193B4
	movs r0, #0x01
	bl sub_80195F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _081252FE
	movs r0, #0x02
	orrs r5, r0
_081252FE:
	ldr r1, _08125320 @ =0x0000089A
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	strb r0, [r6, #0x01]
	movs r0, #0x01
	movs r1, #0x00
	adds r2, r4, #0x0
	bl sub_80193B4
	adds r0, r5, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08125318: .4byte 0x0300034C
_0812531C: .4byte 0x00000898
_08125320: .4byte 0x0000089A
