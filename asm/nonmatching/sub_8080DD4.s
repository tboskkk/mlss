	.syntax unified
	.text

	thumb_func_start sub_8080DD4
sub_8080DD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x000]
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08080DEE
	b _080810E2
_08080DEE:
	movs r4, #0x00
_08080DF0:
	ldr r6, _080810F4 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x04
	bne _08080E18
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	bl sub_8081D84
_08080E18:
	adds r1, r4, #0x1
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x04
	bne _08080E3E
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	bl sub_8081D84
_08080E3E:
	adds r1, r4, #0x2
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x04
	bne _08080E64
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	bl sub_8081D84
_08080E64:
	adds r4, #0x03
	cmp r4, #0x05
	ble _08080DF0
	ldr r0, _080810F8 @ =0x00007001
	bl sub_8082AAC
	ldr r0, _080810FC @ =0x00002083
	bl sub_8082AAC
	ldr r0, [r6, #0x00]
	ldr r1, _08081100 @ =0x000002B9
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bne _08080E84
	b _08080FAC
_08080E84:
	ldr r0, _08081104 @ =0x00002039
	bl sub_8082AAC
	ldr r0, _08081108 @ =0x00002025
	bl sub_8082AAC
	ldr r0, _0808110C @ =0x0000203A
	bl sub_8082AAC
	ldr r0, _08081110 @ =0x0000203B
	bl sub_8082AAC
	ldr r0, _08081114 @ =0x0000203C
	bl sub_8082AAC
	ldr r0, _08081118 @ =0x0000203D
	bl sub_8082AAC
	ldr r0, _0808111C @ =0x00002002
	bl sub_8082AAC
	ldr r0, _08081120 @ =0x00002029
	bl sub_8082AAC
	ldr r0, _08081124 @ =0x0000203F
	bl sub_8082AAC
	ldr r0, _08081128 @ =0x00002028
	bl sub_8082AAC
	ldr r0, _0808112C @ =0x0000203E
	bl sub_8082AAC
	ldr r0, _08081130 @ =0x0000202A
	bl sub_8082AAC
	ldr r0, _08081134 @ =0x0000202C
	bl sub_8082AAC
	ldr r0, _08081138 @ =0x00002020
	bl sub_8082AAC
	ldr r7, _0808113C @ =0x084FB814
	str r7, [sp, #0x008]
	movs r0, #0x00
	mov r9, r0
	movs r1, #0x05
	str r1, [sp, #0x004]
_08080EE4:
	ldrh r0, [r7, #0x00]
	bl sub_8082AAC
	ldr r0, [sp, #0x008]
	adds r0, #0x02
	mov r8, r0
	mov r0, r9
	add r0, r8
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldr r6, [sp, #0x008]
	adds r6, #0x04
	mov r1, r9
	adds r0, r1, r6
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldr r5, [sp, #0x008]
	adds r5, #0x24
	mov r1, r9
	adds r0, r1, r5
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldr r0, _08081140 @ =0x084FB83A
	add r0, r9
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldrh r0, [r7, #0x28]
	bl sub_8082AAC
	adds r0, r7, #0x6
	mov r10, r0
	mov r4, r9
	adds r4, #0x06
	ldrh r0, [r7, #0x06]
	bl sub_8082AAC
	mov r1, r8
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	adds r0, r4, r6
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	adds r0, r4, r5
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldr r0, _08081140 @ =0x084FB83A
	adds r4, r4, r0
	ldrh r0, [r4, #0x00]
	bl sub_8082AAC
	mov r1, r10
	ldrh r0, [r1, #0x28]
	bl sub_8082AAC
	movs r0, #0x0C
	adds r0, r0, r7
	mov r10, r0
	mov r4, r9
	adds r4, #0x0C
	ldrh r0, [r7, #0x0C]
	bl sub_8082AAC
	add r8, r4
	mov r1, r8
	ldrh r0, [r1, #0x00]
	bl sub_8082AAC
	adds r6, r4, r6
	ldrh r0, [r6, #0x00]
	bl sub_8082AAC
	adds r5, r4, r5
	ldrh r0, [r5, #0x00]
	bl sub_8082AAC
	ldr r0, _08081140 @ =0x084FB83A
	adds r4, r4, r0
	ldrh r0, [r4, #0x00]
	bl sub_8082AAC
	mov r1, r10
	ldrh r0, [r1, #0x28]
	bl sub_8082AAC
	adds r7, #0x12
	movs r0, #0x12
	add r9, r0
	ldr r1, [sp, #0x004]
	subs r1, #0x03
	str r1, [sp, #0x004]
	cmp r1, #0x00
	bge _08080EE4
_08080FAC:
	ldr r0, _080810F4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08081100 @ =0x000002B9
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _08080FBC
	b _080810C0
_08080FBC:
	ldr r0, _08081144 @ =0x00002068
	bl sub_8082AAC
	ldr r0, _08081148 @ =0x00002054
	bl sub_8082AAC
	ldr r0, _0808114C @ =0x00002069
	bl sub_8082AAC
	ldr r0, _08081150 @ =0x0000206A
	bl sub_8082AAC
	ldr r0, _08081154 @ =0x0000206B
	bl sub_8082AAC
	ldr r0, _08081158 @ =0x0000206C
	bl sub_8082AAC
	ldr r0, _0808115C @ =0x0000204F
	bl sub_8082AAC
	ldr r0, _08081160 @ =0x00002058
	bl sub_8082AAC
	ldr r0, _08081164 @ =0x0000206E
	bl sub_8082AAC
	ldr r0, _08081168 @ =0x00002057
	bl sub_8082AAC
	ldr r0, _0808116C @ =0x0000206D
	bl sub_8082AAC
	ldr r0, _08081170 @ =0x00002059
	bl sub_8082AAC
	ldr r0, _08081174 @ =0x0000205B
	bl sub_8082AAC
	ldr r0, _08081178 @ =0x00002021
	bl sub_8082AAC
	ldr r0, _0808113C @ =0x084FB814
	str r0, [sp, #0x010]
	movs r7, #0x00
	movs r1, #0x05
	str r1, [sp, #0x00C]
_0808101A:
	ldr r1, [sp, #0x010]
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r0, _0808113C @ =0x084FB814
	adds r0, #0x02
	mov r8, r0
	adds r0, r7, r0
	ldrh r0, [r0, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r6, _0808113C @ =0x084FB814
	adds r6, #0x04
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r5, _0808113C @ =0x084FB814
	adds r5, #0x24
	adds r0, r7, r5
	ldrh r0, [r0, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r1, _08081140 @ =0x084FB83A
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r1, [sp, #0x010]
	ldrh r0, [r1, #0x28]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r0, [sp, #0x010]
	adds r0, #0x06
	mov r10, r0
	adds r4, r7, #0x6
	ldr r1, [sp, #0x010]
	ldrh r0, [r1, #0x06]
	adds r0, #0x01
	bl sub_8082AAC
	add r8, r4
	mov r1, r8
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	adds r6, r4, r6
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	adds r5, r4, r5
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r0, _08081140 @ =0x084FB83A
	adds r4, r4, r0
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	mov r1, r10
	ldrh r0, [r1, #0x28]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r0, [sp, #0x010]
	adds r0, #0x0C
	str r0, [sp, #0x010]
	adds r7, #0x0C
	ldr r1, [sp, #0x00C]
	subs r1, #0x02
	str r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _0808101A
_080810C0:
	ldr r0, _0808117C @ =0x0000017B
	bl sub_8082898
	movs r0, #0xB9
	lsls r0, r0, #0x01
	bl sub_8082898
	ldr r1, _08081180 @ =0x00008004
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80214A4
	ldr r0, _08081184 @ =0x08082089
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x04]
_080810E2:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080810F4: .4byte 0x03000FD8
_080810F8: .4byte 0x00007001
_080810FC: .4byte 0x00002083
_08081100: .4byte 0x000002B9
_08081104: .4byte 0x00002039
_08081108: .4byte 0x00002025
_0808110C: .4byte 0x0000203A
_08081110: .4byte 0x0000203B
_08081114: .4byte 0x0000203C
_08081118: .4byte 0x0000203D
_0808111C: .4byte 0x00002002
_08081120: .4byte 0x00002029
_08081124: .4byte 0x0000203F
_08081128: .4byte 0x00002028
_0808112C: .4byte 0x0000203E
_08081130: .4byte 0x0000202A
_08081134: .4byte 0x0000202C
_08081138: .4byte 0x00002020
_0808113C: .4byte word_84FB814 @ =0x084FB814
_08081140: .4byte word_84FB83A @ =0x084FB83A
_08081144: .4byte 0x00002068
_08081148: .4byte 0x00002054
_0808114C: .4byte 0x00002069
_08081150: .4byte 0x0000206A
_08081154: .4byte 0x0000206B
_08081158: .4byte 0x0000206C
_0808115C: .4byte 0x0000204F
_08081160: .4byte 0x00002058
_08081164: .4byte 0x0000206E
_08081168: .4byte 0x00002057
_0808116C: .4byte 0x0000206D
_08081170: .4byte 0x00002059
_08081174: .4byte 0x0000205B
_08081178: .4byte 0x00002021
_0808117C: .4byte 0x0000017B
_08081180: .4byte 0x00008004
_08081184: .4byte sub_8082088
