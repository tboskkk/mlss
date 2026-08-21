	.syntax unified
	.text

	thumb_func_start sub_81068A8
sub_81068A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r0, _08106914 @ =0x00002038
	mov r8, r0
	bl sub_8082AAC
	ldr r7, _08106918 @ =0x00002067
	adds r0, r7, #0x0
	bl sub_8082AAC
	ldr r6, _0810691C @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r5, #0xD0
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	ldr r1, _08106920 @ =0x00002001
	cmp r0, #0x00
	beq _081068D4
	adds r1, #0x4D
_081068D4:
	adds r0, r1, #0x0
	bl sub_8082AAC
	mov r0, r8
	bl sub_8082A6C
	adds r0, r7, #0x0
	bl sub_8082A6C
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	ldr r1, _08106920 @ =0x00002001
	cmp r0, #0x00
	beq _081068F4
	adds r1, #0x4D
_081068F4:
	adds r0, r1, #0x0
	bl sub_8082A6C
	movs r0, #0x04
	strh r0, [r4, #0x10]
	ldr r1, _08106924 @ =0x08105D0D
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106914: .4byte 0x00002038
_08106918: .4byte 0x00002067
_0810691C: .4byte 0x03000FD8
_08106920: .4byte 0x00002001
_08106924: .4byte sub_8105D0C
