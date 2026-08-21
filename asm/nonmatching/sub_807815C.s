	.syntax unified
	.text

	thumb_func_start sub_807815C
sub_807815C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	bl sub_807830C
	adds r7, r6, #0x0
	adds r7, #0xAC
	ldrh r0, [r7, #0x00]
	subs r0, #0x01
	strh r0, [r7, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x12
	bgt _0807820A
	ldr r0, _08078218 @ =0x03001038
	mov r9, r0
	ldr r4, _0807821C @ =0x0819832C
	ldr r0, _08078220 @ =0x08198220
	subs r4, r4, r0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldr r1, _08078224 @ =0x03000EC8
	adds r5, r6, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r7, r3]
	bl _call_via_r2
	mov r8, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r1, _08078228 @ =0x03000ECC
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r7, r3]
	bl _call_via_r2
	ldr r3, _0807822C @ =0x0300034C
	ldr r2, _08078230 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r6, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	mov r3, r8
	strh r3, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r3, [r2, #0x1E]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	cmp r0, #0x01
	bne _0807820A
	adds r0, r6, #0x0
	bl sub_807C298
_0807820A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08078218: .4byte 0x03001038
_0807821C: .4byte 0x0819832C
_08078220: .4byte 0x08198220
_08078224: .4byte 0x03000EC8
_08078228: .4byte 0x03000ECC
_0807822C: .4byte 0x0300034C
_08078230: .4byte 0x00000888
