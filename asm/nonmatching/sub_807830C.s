	.syntax unified
	.text

	thumb_func_start sub_807830C
sub_807830C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	adds r7, r0, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078324
	adds r0, #0xFF
_08078324:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x02C]
	cmp r1, #0x00
	bge _08078336
	adds r1, #0xFF
_08078336:
	asrs r0, r1, #0x08
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x00
	bge _08078348
	adds r1, #0xFF
_08078348:
	asrs r0, r1, #0x08
	str r0, [sp, #0x008]
	ldr r0, [r7, #0x30]
	ldr r0, _080784FC @ =0x03000EB0
	adds r2, r7, #0x0
	adds r2, #0x9C
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	mov r9, r2
	cmp r0, #0x00
	bge _08078364
	adds r0, #0xFF
_08078364:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldr r0, _08078500 @ =0x03000EB8
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078374
	adds r0, #0xFF
_08078374:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, _08078504 @ =0x03000EC0
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078384
	adds r0, #0xFF
_08078384:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	add r0, sp, #0x00C
	add r1, sp, #0x010
	add r2, sp, #0x014
	movs r3, #0x00
	bl sub_807FC08
	ldr r4, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	subs r4, r4, r0
	ldr r5, [sp, #0x004]
	ldr r0, [sp, #0x010]
	subs r5, r5, r0
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r2, _08078508 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	ldr r1, _0807850C @ =0x0819832C
	ldr r0, _08078510 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r0, _08078508 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r8
	lsls r5, r5, #0x08
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r2, _08078514 @ =0x03000EC8
	mov r3, r9
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	strh r4, [r1, #0x00]
	ldr r2, _08078518 @ =0x03000ECC
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	ldr r3, _0807851C @ =0x0300034C
	ldr r2, _08078520 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	strh r4, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r4, [r2, #0x1E]
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x01C]
	ldr r3, [sp, #0x02C]
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x020]
	mov r0, r10
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x024]
	ldr r0, _080784FC @ =0x03000EB0
	mov r2, r9
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r0, r1, r0
	ldr r3, [r0, #0x00]
	ldr r0, _08078500 @ =0x03000EB8
	adds r0, r1, r0
	ldr r2, [r0, #0x00]
	ldr r0, _08078504 @ =0x03000EC0
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r1, [sp, #0x01C]
	subs r3, r3, r1
	str r3, [sp, #0x028]
	ldr r3, [sp, #0x020]
	subs r3, r2, r3
	mov r10, r3
	ldr r1, [sp, #0x024]
	subs r1, r0, r1
	mov r9, r1
	adds r4, r7, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _080784E8
	mov r7, r8
	mov r8, r9
	mov r6, r10
	ldr r5, [sp, #0x028]
_0807847C:
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	adds r0, r5, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x01C]
	adds r0, r1, r0
	str r0, [r4, #0x04]
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	adds r0, r6, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	mov r0, r8
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x024]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _080784C0
	adds r1, #0xFF
_080784C0:
	asrs r1, r1, #0x08
	movs r0, #0x08
	negs r0, r0
	cmp r1, r0
	bge _080784D0
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r4, #0x04]
_080784D0:
	ldr r4, [r4, #0x00]
	mov r2, r9
	lsls r0, r2, #0x01
	add r8, r0
	mov r3, r10
	lsls r0, r3, #0x01
	adds r6, r6, r0
	ldr r1, [sp, #0x028]
	lsls r0, r1, #0x01
	adds r5, r5, r0
	cmp r4, #0x00
	bne _0807847C
_080784E8:
	ldr r0, [sp, #0x018]
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080784FC: .4byte 0x03000EB0
_08078500: .4byte 0x03000EB8
_08078504: .4byte 0x03000EC0
_08078508: .4byte 0x03001038
_0807850C: .4byte 0x0819832C
_08078510: .4byte 0x08198220
_08078514: .4byte 0x03000EC8
_08078518: .4byte 0x03000ECC
_0807851C: .4byte 0x0300034C
_08078520: .4byte 0x00000888
