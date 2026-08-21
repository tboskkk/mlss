	.syntax unified
	.text

	thumb_func_start sub_814706C
sub_814706C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r3, [r0, #0x36]
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	mov r4, sp
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_813A284
	ldr r0, _081470B4 @ =0x081470B9
	str r0, [r5, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081470B4: .4byte sub_81470B8
