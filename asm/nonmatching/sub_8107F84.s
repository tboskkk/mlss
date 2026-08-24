	.syntax unified
	.text

	thumb_func_start sub_8107F84
sub_8107F84:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08107FDE
	adds r1, r5, #0x0
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bge _08107FE2
	ldr r0, _08107FC8 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, #0x37
	ldrb r0, [r2, #0x00]
	cmp r0, #0x0F
	beq _08107FCC
	cmp r0, #0x11
	bne _08107FCE
	subs r6, #0x3C
	b _08107FCE
_08107FC8: .4byte 0x03000FF4
_08107FCC:
	subs r6, #0x1E
_08107FCE:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r6, r0
	bge _0810804C
_08107FDE:
	movs r0, #0x00
	b _08108074
_08107FE2:
	ldr r2, _0810807C @ =0x08201123
	adds r0, r5, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x1C]
	lsrs r0, r0, #0x02
	movs r1, #0x03
	ands r0, r1
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x64
	subs r0, r0, r1
	cmp r0, #0x64
	beq _08107FDE
	cmp r0, #0x00
	beq _08108026
	movs r1, #0x03
	bl __divsi3
	adds r4, r0, #0x0
	subs r4, r6, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	cmp r4, r0
	bge _08108022
	movs r1, #0x00
_08108022:
	cmp r1, #0x00
	beq _08107FDE
_08108026:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0810804C
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r0, r5, r2
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	movs r0, #0x93
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x01
	strh r0, [r1, #0x00]
_0810804C:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _08108080 @ =0x0000FFFC
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
_08108074:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0810807C: .4byte 0x08201123
_08108080: .4byte 0x0000FFFC
