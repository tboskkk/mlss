	.syntax unified
	.text

	thumb_func_start sub_8078000
sub_8078000:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	bl sub_807830C
	ldr r5, [r6, #0x28]
	movs r0, #0x08
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _08078124 @ =0x03000EB0
	adds r7, r6, #0x0
	adds r7, #0x9C
	ldr r0, [r7, #0x00]
	lsls r4, r0, #0x02
	adds r1, r4, r1
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bge _0807803C
	adds r1, #0xFF
_0807803C:
	asrs r2, r1, #0x08
	ldr r0, _08078128 @ =0x03000EB8
	adds r0, r4, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807804A
	adds r0, #0xFF
_0807804A:
	asrs r3, r0, #0x08
	ldr r0, _0807812C @ =0x03000EC0
	adds r0, r4, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078058
	adds r0, #0xFF
_08078058:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _08078130 @ =0x00004025
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x03
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x2C]
	str r0, [r5, #0x2C]
	ldr r0, [r1, #0x6C]
	str r0, [r5, #0x6C]
	movs r2, #0x77
	adds r2, r2, r6
	mov r12, r2
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, #0x1A
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08078134 @ =0x08078235
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	subs r1, #0x10
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x28
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bne _08078138
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08078142
	cmp r0, #0x02
	bne _08078148
	b _08078142
	.byte 0x00, 0x00
_08078124: .4byte 0x03000EB0
_08078128: .4byte 0x03000EB8
_0807812C: .4byte 0x03000EC0
_08078130: .4byte 0x00004025
_08078134: .4byte sub_8078234
_08078138:
	ldr r0, [r2, #0x00]
	cmp r0, #0x02
	bgt _08078148
	cmp r0, #0x01
	blt _08078148
_08078142:
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r5, #0x10]
_08078148:
	ldr r0, _08078158 @ =0x0807815D
	str r0, [r6, #0x4C]
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08078158: .4byte sub_807815C
