	.syntax unified
	.text

	thumb_func_start sub_812418C
sub_812418C:
	push {r4, r5, lr}
	add sp, #-0x004
	ldr r0, _08124254 @ =0x03000FFC
	ldr r4, [r0, #0x00]
	movs r5, #0x00
	str r5, [sp, #0x000]
	ldr r2, _08124258 @ =0x01000800
	mov r0, sp
	adds r1, r4, #0x0
	bl CpuFastSet
	movs r0, #0x4D
	strb r0, [r4, #0x00]
	movs r0, #0x41
	strb r0, [r4, #0x01]
	movs r0, #0x4C
	strb r0, [r4, #0x02]
	movs r0, #0x52
	strb r0, [r4, #0x03]
	movs r0, #0x50
	strb r0, [r4, #0x04]
	movs r0, #0x47
	strb r0, [r4, #0x05]
	strb r5, [r4, #0x06]
	strb r5, [r4, #0x07]
	ldrb r1, [r4, #0x08]
	subs r0, #0x4F
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	subs r1, #0x08
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	strb r0, [r4, #0x08]
	ldrb r0, [r4, #0x08]
	ldrb r1, [r4, #0x09]
	adds r0, r0, r1
	ldrb r2, [r4, #0x0A]
	adds r1, r0, r2
	ldrb r0, [r4, #0x0B]
	adds r0, r1, r0
	ldrb r3, [r4, #0x0C]
	adds r1, r0, r3
	ldrb r0, [r4, #0x0D]
	adds r0, r1, r0
	ldrb r2, [r4, #0x0E]
	adds r1, r0, r2
	strb r1, [r4, #0x0F]
	bl sub_81251DC
	ldr r1, _0812425C @ =0x00004E20
	str r1, [r0, #0x00]
	movs r1, #0x03
	str r1, [r0, #0x04]
	ldrb r1, [r0, #0x00]
	ldrb r2, [r0, #0x01]
	adds r1, r1, r2
	ldrb r3, [r0, #0x02]
	adds r2, r1, r3
	ldrb r1, [r0, #0x03]
	adds r1, r2, r1
	ldrb r3, [r0, #0x04]
	adds r2, r1, r3
	ldrb r1, [r0, #0x05]
	adds r1, r2, r1
	ldrb r3, [r0, #0x06]
	adds r2, r1, r3
	strb r2, [r0, #0x07]
	movs r0, #0x00
	bl sub_8019628
	movs r0, #0x01
	bl sub_8019628
	ldr r1, _08124260 @ =0x040000BC
	ldrh r2, [r1, #0x0A]
	ldr r3, _08124264 @ =0x0000C5FF
	adds r0, r3, #0x0
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r4, [r1, #0x0A]
	ldr r2, _08124268 @ =0x00007FFF
	adds r0, r2, #0x0
	ands r0, r4
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
	ldr r0, _0812426C @ =0x040000C8
	ldrh r1, [r0, #0x0A]
	ands r3, r1
	strh r3, [r0, #0x0A]
	ldrh r1, [r0, #0x0A]
	ands r2, r1
	strh r2, [r0, #0x0A]
	ldrh r0, [r0, #0x0A]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08124254: .4byte 0x03000FFC
_08124258: .4byte 0x01000800
_0812425C: .4byte 0x00004E20
_08124260: .4byte 0x040000BC
_08124264: .4byte 0x0000C5FF
_08124268: .4byte 0x00007FFF
_0812426C: .4byte 0x040000C8
