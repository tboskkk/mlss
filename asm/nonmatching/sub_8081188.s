	.syntax unified
	.text

	thumb_func_start sub_8081188
sub_8081188:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r9, r0
	bl sub_8082B00
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x00
	bne _0808125C
	ldr r6, _0808126C @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0x08]
	bl sprite_heap_free
	ldr r0, [r6, #0x00]
	movs r5, #0x91
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl process_enable
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	ldr r2, _08081270 @ =0x06004020
	ldr r3, _08081274 @ =0x00003FE0
	movs r1, #0x0C
	mov r8, r1
	str r1, [sp, #0x000]
	movs r1, #0x00
	bl sub_80F8D6C
	ldr r2, [r6, #0x00]
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	movs r3, #0xA0
	lsls r3, r3, #0x02
	adds r1, r1, r3
	str r0, [r1, #0x00]
	adds r2, r2, r5
	ldr r0, [r2, #0x00]
	ldr r2, _08081278 @ =0x060082C0
	movs r3, #0xF5
	lsls r3, r3, #0x06
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x01
	bl sub_80F8D6C
	ldr r2, [r6, #0x00]
	adds r4, r2, r4
	ldr r1, [r4, #0x00]
	movs r3, #0xA1
	lsls r3, r3, #0x02
	adds r1, r1, r3
	str r0, [r1, #0x00]
	adds r2, r2, r5
	ldr r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	movs r2, #0xA2
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	str r7, [sp, #0x004]
	movs r1, #0xE0
	lsls r1, r1, #0x07
	str r1, [sp, #0x008]
	movs r1, #0x0F
	str r1, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x0F
	bl sub_80F8CC0
	ldr r1, [r6, #0x00]
	ldr r3, _0808127C @ =0x000002BF
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	adds r5, r1, r5
	ldr r0, [r5, #0x00]
	ldr r2, _08081280 @ =0x0850300C
	subs r3, #0x09
	adds r1, r1, r3
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x05
	adds r2, #0x04
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	bl sub_80F8EB0
	ldr r0, _08081284 @ =0x08081FD5
	mov r1, r9
	str r0, [r1, #0x04]
_0808125C:
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808126C: .4byte 0x03000FD8
_08081270: .4byte 0x06004020
_08081274: .4byte 0x00003FE0
_08081278: .4byte 0x060082C0
_0808127C: .4byte 0x000002BF
_08081280: .4byte 0x0850300C
_08081284: .4byte sub_8081FD4
