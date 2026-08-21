	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8085260
sub_8085260:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldrb r0, [r4, #0x02]
	cmp r0, #0x00
	beq _08085320
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _0808529C
	ldr r2, [r4, #0x0C]
	cmp r2, #0x00
	beq _08085320
	ldrb r0, [r4, #0x05]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	movs r3, #0xA0
	lsls r3, r3, #0x02
	adds r1, r7, r3
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r1, r2, #0x0
	bl sub_80E9384
	b _080852A0
_0808529C:
	ldr r0, [r4, #0x0C]
	str r0, [r4, #0x10]
_080852A0:
	movs r0, #0x00
	str r0, [r4, #0x0C]
	ldrb r3, [r4, #0x03]
	movs r0, #0xA2
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldrh r0, [r4, #0x08]
	lsls r0, r0, #0x01
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	subs r3, #0x01
	cmp r3, #0x00
	blt _08085316
_080852BA:
	ldrb r2, [r4, #0x02]
	subs r2, #0x01
	subs r6, r3, #0x1
	adds r5, r1, #0x0
	adds r5, #0x40
	cmp r2, #0x00
	blt _0808530E
	movs r3, #0x00
	lsls r0, r2, #0x01
	adds r1, r0, r1
	movs r0, #0x03
	bics r0, r2
	cmp r2, #0x00
	blt _080852EE
	cmp r0, #0x00
	beq _080852F8
	cmp r0, #0x03
	bge _080852EE
	cmp r0, #0x02
	bge _080852E8
	strh r3, [r1, #0x00]
	subs r1, #0x02
	subs r2, #0x01
_080852E8:
	strh r3, [r1, #0x00]
	subs r1, #0x02
	subs r2, #0x01
_080852EE:
	strh r3, [r1, #0x00]
	subs r1, #0x02
	subs r2, #0x01
	cmp r2, #0x00
	blt _0808530E
_080852F8:
	strh r3, [r1, #0x00]
	subs r0, r1, #0x2
	strh r3, [r0, #0x00]
	subs r0, r1, #0x4
	strh r3, [r0, #0x00]
	subs r0, r1, #0x6
	strh r3, [r0, #0x00]
	subs r1, #0x08
	subs r2, #0x04
	cmp r2, #0x00
	bge _080852F8
_0808530E:
	adds r1, r5, #0x0
	adds r3, r6, #0x0
	cmp r3, #0x00
	bge _080852BA
_08085316:
	ldrh r1, [r4, #0x08]
	ldrh r2, [r4, #0x06]
	adds r0, r7, #0x0
	bl sub_8084614
_08085320:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8085328
sub_8085328:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r1, r0, #0x0
	movs r2, #0xFA
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08085380
	ldr r3, _0808538C @ =0x0000027F
	mov r8, r3
	adds r6, r0, #0x0
	movs r0, #0xA2
	lsls r0, r0, #0x02
	adds r7, r1, r0
	subs r2, #0x04
	adds r5, r1, r2
_0808534C:
	movs r3, #0x04
	ldsh r0, [r4, r3]
	ldr r2, _08085390 @ =0x0600F300
	cmp r0, r8
	bgt _08085358
	ldr r2, _08085394 @ =0x0600F000
_08085358:
	movs r0, #0x04
	ldsh r1, [r4, r0]
	lsls r1, r1, #0x01
	ldr r0, [r7, #0x00]
	adds r0, r0, r1
	adds r1, r2, r1
	movs r3, #0x06
	ldsh r2, [r4, r3]
	ldr r3, _08085398 @ =0x001FFFFF
	ands r2, r3
	bl CpuSet
	ldr r0, [r4, #0x00]
	str r0, [r6, #0x00]
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x00]
	str r4, [r5, #0x00]
	ldr r4, [r6, #0x00]
	cmp r4, #0x00
	bne _0808534C
_08085380:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808538C: .4byte 0x0000027F
_08085390: .4byte 0x0600F300
_08085394: .4byte 0x0600F000
_08085398: .4byte 0x001FFFFF
	thumb_func_start sub_808539C
sub_808539C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	adds r4, r6, #0x0
	adds r4, #0x10
	adds r5, r6, #0x5
	movs r0, #0x0B
	mov r8, r0
_080853AE:
	ldrb r0, [r5, #0x00]
	movs r7, #0x7F
	adds r1, r7, #0x0
	ands r1, r0
	strb r1, [r5, #0x00]
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _080853D6
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x02
	movs r3, #0xA0
	lsls r3, r3, #0x02
	adds r0, r6, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r2, #0x0
	bl sub_80E9384
	movs r0, #0x00
	str r0, [r4, #0x00]
_080853D6:
	ldrb r0, [r5, #0x14]
	adds r1, r7, #0x0
	ands r1, r0
	strb r1, [r5, #0x14]
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	beq _080853FC
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x02
	movs r3, #0xA0
	lsls r3, r3, #0x02
	adds r0, r6, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r2, #0x0
	bl sub_80E9384
	movs r0, #0x00
	str r0, [r4, #0x14]
_080853FC:
	adds r1, r5, #0x0
	adds r1, #0x28
	ldrb r0, [r1, #0x00]
	adds r2, r7, #0x0
	ands r2, r0
	strb r2, [r1, #0x00]
	ldr r3, [r4, #0x28]
	cmp r3, #0x00
	beq _08085426
	lsrs r1, r2, #0x06
	lsls r1, r1, #0x02
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r3, #0x0
	bl sub_80E9384
	movs r0, #0x00
	str r0, [r4, #0x28]
_08085426:
	adds r4, #0x3C
	adds r5, #0x3C
	movs r3, #0x03
	negs r3, r3
	add r8, r3
	mov r0, r8
	cmp r0, #0x00
	bge _080853AE
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
