	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_813C758
sub_813C758:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r3, r4, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r3, #0x00]
	adds r1, r4, #0x0
	bl sub_81386C0
	adds r1, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	bl sub_81370C4
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_813805C
	adds r0, r4, #0x0
	bl sub_81381D4
	adds r0, r4, #0x0
	bl sub_8139200
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0813C7D4 @ =0x0813C4AD
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0813C7D4: .4byte sub_813C4AC
	thumb_func_start sub_813C7D8
sub_813C7D8:
	push {r4, lr}
	ldr r2, _0813C808 @ =0x0000033E
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r4, #0x00]
	movs r2, #0x9B
	lsls r2, r2, #0x01
	adds r3, r1, r2
	movs r2, #0x01
	strb r2, [r3, #0x00]
	ldr r2, _0813C80C @ =0x000002B6
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_813C88C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813C808: .4byte 0x0000033E
_0813C80C: .4byte 0x000002B6
	thumb_func_start sub_813C810
sub_813C810:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r3, r4, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r3, #0x00]
	movs r1, #0xFF
	bl sub_8138F64
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_8137550
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_813805C
	adds r0, r4, #0x0
	bl sub_81381D4
	adds r0, r4, #0x0
	bl sub_8139200
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0813C888 @ =0x0813C4AD
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0813C888: .4byte sub_813C4AC
	thumb_func_start sub_813C88C
sub_813C88C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _0813C8CC @ =0x0813B381
	str r2, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, _0813C8D0 @ =0x0813C759
	str r1, [r0, #0x00]
	adds r3, #0x04
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813C8CC: .4byte sub_813B380
_0813C8D0: .4byte sub_813C758
	thumb_func_start sub_813C8D4
sub_813C8D4:
	push {r4, r5, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldr r3, [r2, #0x00]
	adds r0, r5, #0x0
	bl _call_via_r3
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0813C97C
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813C980
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x28]
	add r0, sp, #0x008
	movs r1, #0x18
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	movs r1, #0x19
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	movs r1, #0x1A
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	movs r1, #0x1B
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	movs r1, #0x1C
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	movs r1, #0x1D
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r5, #0x08
	ldsh r3, [r0, r5]
	movs r5, #0x0A
	ldsh r1, [r0, r5]
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813C980
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813C974 @ =0x0813D7F9
	str r0, [r1, #0x00]
	movs r5, #0xCE
	lsls r5, r5, #0x01
	adds r1, r4, r5
	ldr r0, _0813C978 @ =0x0813C989
	str r0, [r1, #0x00]
	b _0813C980
_0813C974: .4byte sub_813D7F8
_0813C978: .4byte sub_813C988
_0813C97C:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_0813C980:
	add sp, #0x018
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_813C988
sub_813C988:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813C9B4
	add r1, sp, #0x004
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_0813C9B4:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x28]
	mov r8, r0
	ldr r1, [r0, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0813C9EE
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0813C9F0
_0813C9EE:
	ldr r1, _0813CAC0 @ =0x0000FFFF
_0813C9F0:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r1, r0
	beq _0813CA08
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	bl sub_80478AC
_0813CA08:
	movs r2, #0xA4
	lsls r2, r2, #0x01
	adds r7, r5, r2
	ldr r3, [r7, #0x00]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	bl _call_via_r3
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0813CADA
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	mov r12, r0
	mov r3, r12
	adds r3, #0x30
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	add r0, sp, #0x008
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r3, #0x01
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	adds r3, #0x01
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	adds r3, #0x01
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	adds r3, #0x01
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	adds r3, #0x01
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	mov r2, r8
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813CAD0
	movs r0, #0xA0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _0813CAC4 @ =0x0813D779
	str r0, [r1, #0x00]
	movs r2, #0xA2
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r0, _0813CAC8 @ =0x0813D851
	str r0, [r1, #0x00]
	ldr r1, _0813CACC @ =0x081392F5
	str r1, [r7, #0x00]
	adds r2, #0x08
	adds r0, r5, r2
	str r1, [r0, #0x00]
	b _0813CADA
_0813CAC0: .4byte 0x0000FFFF
_0813CAC4: .4byte sub_813D778
_0813CAC8: .4byte sub_813D850
_0813CACC: .4byte sub_81392F4
_0813CAD0:
	movs r0, #0xA0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _0813CAE8 @ =0x0813D851
	str r0, [r1, #0x00]
_0813CADA:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813CAE8: .4byte sub_813D850
	thumb_func_start sub_813CAEC
sub_813CAEC:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	bl _call_via_r3
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0813CBE0
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813CBE4
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	add r4, sp, #0x008
	movs r2, #0x08
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x00]
	movs r2, #0x0A
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x06]
	movs r2, #0x0C
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x02]
	movs r2, #0x0E
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x04]
	ldr r2, _0813CBD4 @ =0x00007FFF
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813CBE4
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x18
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	movs r0, #0x19
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	movs r0, #0x1A
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x08]
	movs r0, #0x1B
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r0, #0x1C
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	movs r0, #0x1D
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	movs r2, #0x08
	ldsh r3, [r4, r2]
	movs r1, #0x0A
	ldsh r0, [r4, r1]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813CBE4
	movs r2, #0xCC
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r0, _0813CBD8 @ =0x0813D7F9
	str r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _0813CBDC @ =0x0813CBED
	str r0, [r1, #0x00]
	b _0813CBE4
	.byte 0x00, 0x00
_0813CBD4: .4byte 0x00007FFF
_0813CBD8: .4byte sub_813D7F8
_0813CBDC: .4byte sub_813CBEC
_0813CBE0:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_0813CBE4:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_813CBEC
sub_813CBEC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r5, #0x0
	adds r7, #0x58
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813CC18
	add r1, sp, #0x004
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_0813CC18:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0813CC4E
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0813CC50
_0813CC4E:
	ldr r1, _0813CD88 @ =0x0000FFFF
_0813CC50:
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r1, r0
	beq _0813CC68
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0x0
	bl sub_80478AC
_0813CC68:
	movs r2, #0xA4
	lsls r2, r2, #0x01
	adds r2, r2, r7
	mov r8, r2
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0813CC8C
	b _0813CDA6
_0813CC8C:
	movs r2, #0xAE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	add r4, sp, #0x008
	movs r2, #0x08
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x00]
	movs r2, #0x0A
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x06]
	movs r2, #0x0C
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x02]
	movs r2, #0x0E
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x04]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0813CD8C @ =0x00007FFF
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813CD9C
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x30
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x31
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	adds r0, r1, #0x0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r4, #0x08]
	adds r0, r1, #0x0
	adds r0, #0x33
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	adds r0, r1, #0x0
	adds r0, #0x34
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r0, r1, #0x0
	adds r0, #0x35
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	movs r2, #0x08
	ldsh r3, [r4, r2]
	movs r1, #0x0A
	ldsh r0, [r4, r1]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813CD9C
	movs r2, #0xA0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0813CD90 @ =0x0813D779
	str r0, [r1, #0x00]
	movs r0, #0xA2
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0813CD94 @ =0x0813D6FD
	str r0, [r1, #0x00]
	ldr r1, _0813CD98 @ =0x081392F5
	mov r2, r8
	str r1, [r2, #0x00]
	movs r2, #0xA6
	lsls r2, r2, #0x01
	adds r0, r7, r2
	str r1, [r0, #0x00]
	b _0813CDA6
_0813CD88: .4byte 0x0000FFFF
_0813CD8C: .4byte 0x00007FFF
_0813CD90: .4byte sub_813D778
_0813CD94: .4byte sub_813D6FC
_0813CD98: .4byte sub_81392F4
_0813CD9C:
	movs r0, #0xA0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0813CDB4 @ =0x0813D6FD
	str r0, [r1, #0x00]
_0813CDA6:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813CDB4: .4byte sub_813D6FC
	thumb_func_start sub_813CDB8
sub_813CDB8:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r6, r4, r0
	ldr r3, [r6, #0x00]
	adds r0, r5, #0x0
	adds r2, r6, #0x0
	bl _call_via_r3
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0813CE80
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813CE84
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x28]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	add r0, sp, #0x008
	movs r1, #0x18
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	movs r1, #0x19
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	movs r1, #0x1A
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	movs r1, #0x1B
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	movs r1, #0x1C
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	movs r1, #0x1D
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r5, #0x08
	ldsh r3, [r0, r5]
	movs r5, #0x0A
	ldsh r1, [r0, r5]
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813CE84
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r5, #0xCC
	lsls r5, r5, #0x01
	adds r1, r4, r5
	ldr r0, _0813CE74 @ =0x0813939D
	str r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813CE78 @ =0x0813D049
	str r0, [r1, #0x00]
	ldr r0, _0813CE7C @ =0x0813CE8D
	str r0, [r6, #0x00]
	b _0813CE84
	.byte 0x00, 0x00
_0813CE74: .4byte sub_813939C
_0813CE78: .4byte sub_813D048
_0813CE7C: .4byte sub_813CE8C
_0813CE80:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_0813CE84:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_813CE8C
sub_813CE8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x008]
	mov r8, r1
	str r2, [sp, #0x00C]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r8
	ldr r7, [r0, #0x00]
	movs r0, #0x58
	adds r0, r0, r7
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r7, r1
	str r1, [sp, #0x010]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r5, _0813CF7C @ =0x0000020D
	mov r3, r8
	adds r2, r3, r5
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r6, r8
	adds r6, #0x24
	ldrb r2, [r6, #0x00]
	lsls r2, r2, #0x1D
	lsrs r2, r2, #0x1E
	adds r0, r7, #0x0
	movs r1, #0x08
	bl sub_8047154
	mov r0, r10
	lsls r4, r0, #0x01
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r7, #0x0
	bl sub_804790C
	ldr r3, [sp, #0x010]
	adds r4, r3, r4
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r7, #0x0
	bl sub_804794C
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r3, r7, r0
	ldrb r2, [r3, #0x00]
	movs r1, #0x09
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	strb r0, [r3, #0x00]
	adds r5, r7, r5
	ldrb r0, [r5, #0x00]
	ands r1, r0
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	subs r0, #0x20
	ands r1, r0
	strb r1, [r5, #0x00]
	mov r1, r8
	ldr r4, [r1, #0x0C]
	ldr r2, [r1, #0x10]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r3, r0, r1
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	beq _0813CF90
	cmp r0, #0x02
	bhi _0813CF80
	cmp r0, #0x00
	beq _0813CF86
	b _0813CF9E
	.byte 0x00, 0x00
_0813CF7C: .4byte 0x0000020D
_0813CF80:
	cmp r0, #0x04
	beq _0813CFA2
	b _0813CF9E
_0813CF86:
	ldr r0, _0813CF8C @ =0xFFFFFF00
	adds r2, r2, r0
	b _0813CFA8
_0813CF8C: .4byte 0xFFFFFF00
_0813CF90:
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r4, r4, r1
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r2, r0
	b _0813CFA8
_0813CF9E:
	ldr r0, _0813D014 @ =0xFFFFF800
	adds r4, r4, r0
_0813CFA2:
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r2, r2, r1
_0813CFA8:
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_8047F60
	mov r0, r8
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r1, #0x04
	mov r0, r8
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0x85
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r3, r10
	lsls r1, r3, #0x01
	ldr r0, [sp, #0x010]
	adds r0, #0x28
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	add r2, r9
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0813D020
	ldr r0, _0813D018 @ =0x0813915D
	ldr r1, [sp, #0x00C]
	str r0, [r1, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r3, #0xD6
	lsls r3, r3, #0x01
	adds r0, r0, r3
	ldr r1, _0813D01C @ =0x0813D0F1
	str r1, [r0, #0x00]
	b _0813D038
_0813D014: .4byte 0xFFFFF800
_0813D018: .4byte sub_813915C
_0813D01C: .4byte sub_813D0F0
_0813D020:
	movs r0, #0xA0
	lsls r0, r0, #0x01
	add r0, r9
	movs r1, #0xA2
	lsls r1, r1, #0x01
	add r1, r9
	ldr r2, [r1, #0x00]
	str r2, [r0, #0x00]
	ldr r0, [sp, #0x008]
	mov r1, r8
	bl _call_via_r2
_0813D038:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_813D048
sub_813D048:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D0BE
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0xCC
	lsls r0, r0, #0x01
	b _0813D0DA
_0813D0BE:
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r5, r1
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_813D0F0
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _0813D0E8 @ =0x0813939D
	str r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x01
_0813D0DA:
	adds r1, r5, r0
	ldr r0, _0813D0EC @ =0x0813D64D
	str r0, [r1, #0x00]
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0813D0E8: .4byte sub_813939C
_0813D0EC: .4byte sub_813D64C
	thumb_func_start sub_813D0F0
sub_813D0F0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r1
	str r2, [sp, #0x000]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	add r1, r10
	ldr r6, [r1, #0x00]
	movs r1, #0xFF
	bl sub_8138F64
	mov r8, r0
	ldr r3, _0813D1F4 @ =0x03001038
	ldr r1, [r0, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r1, r1, r0
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _0813D120
	adds r0, r1, #0x3
_0813D120:
	asrs r0, r0, #0x02
	muls r0, r1
	cmp r0, #0x00
	bge _0813D12A
	adds r0, #0x03
_0813D12A:
	asrs r2, r0, #0x02
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r0, [r6, #0x10]
	subs r1, r1, r0
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _0813D13C
	adds r0, r1, #0x3
_0813D13C:
	asrs r0, r0, #0x02
	muls r0, r1
	cmp r0, #0x00
	bge _0813D146
	adds r0, #0x03
_0813D146:
	asrs r0, r0, #0x02
	adds r0, r2, r0
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	mov r9, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x98
	lsls r2, r2, #0x01
	adds r1, r6, r2
	adds r1, r1, r0
	movs r0, #0x00
	ldsh r7, [r1, r0]
	mov r1, r8
	ldr r0, [r1, #0x0C]
	ldr r5, [r6, #0x0C]
	subs r0, r0, r5
	lsls r0, r0, #0x06
	mov r1, r9
	bl __divsi3
	adds r4, r0, #0x0
	muls r4, r7
	adds r4, r4, r5
	mov r2, r8
	ldr r0, [r2, #0x10]
	ldr r5, [r6, #0x10]
	subs r0, r0, r5
	lsls r0, r0, #0x06
	mov r1, r9
	bl __divsi3
	muls r0, r7
	adds r7, r0, r5
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	adds r3, r7, #0x0
	bl sub_8137BB0
	adds r0, r6, #0x0
	bl sub_8138364
	ldr r0, _0813D1F8 @ =0x0000020D
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldr r0, [r2, #0x00]
	ldr r1, _0813D1FC @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	movs r2, #0xEB
	lsls r2, r2, #0x01
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0813D200 @ =0x0813D205
	ldr r2, [sp, #0x000]
	str r0, [r2, #0x00]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D1F4: .4byte 0x03001038
_0813D1F8: .4byte 0x0000020D
_0813D1FC: .4byte 0xFFFC7FFF
_0813D200: .4byte sub_813D204
	thumb_func_start sub_813D204
sub_813D204:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r5, r2, #0x0
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x25
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	beq _0813D248
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r1, r4, r2
	subs r2, #0x90
	adds r0, r4, r2
	ldr r2, [r0, #0x00]
	ldrh r0, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	negs r0, r0
	strh r0, [r1, #0x00]
	ldr r0, _0813D260 @ =0x0000020D
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0813D248:
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0813D264
	adds r0, r4, #0x0
	bl sub_8138364
	b _0813D276
_0813D260: .4byte 0x0000020D
_0813D264:
	ldr r0, _0813D27C @ =0x0813D5B9
	str r0, [r5, #0x00]
	ldr r0, _0813D280 @ =0x0000020E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0813D276:
	pop {r4, r5}
	pop {r0}
	bx r0
_0813D27C: .4byte sub_813D5B8
_0813D280: .4byte 0x0000020E
	thumb_func_start sub_813D284
sub_813D284:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r6, r5, r0
	ldr r3, [r6, #0x00]
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	bl _call_via_r3
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0813D394
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D398
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r7, [r0, #0x28]
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	add r4, sp, #0x008
	movs r2, #0x08
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x00]
	movs r2, #0x0A
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x06]
	movs r2, #0x0C
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x02]
	movs r2, #0x0E
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x04]
	ldr r2, _0813D384 @ =0x00007FFF
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D398
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x18
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	movs r0, #0x19
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	movs r0, #0x1A
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x08]
	movs r0, #0x1B
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r0, #0x1C
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	movs r0, #0x1D
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	movs r2, #0x08
	ldsh r3, [r4, r2]
	movs r1, #0x0A
	ldsh r0, [r4, r1]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r7, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D398
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xCC
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r0, _0813D388 @ =0x0813939D
	str r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _0813D38C @ =0x0813D3A1
	str r0, [r1, #0x00]
	ldr r0, _0813D390 @ =0x0813CE8D
	str r0, [r6, #0x00]
	b _0813D398
_0813D384: .4byte 0x00007FFF
_0813D388: .4byte sub_813939C
_0813D38C: .4byte sub_813D3A0
_0813D390: .4byte sub_813CE8C
_0813D394:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_0813D398:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_813D3A0
sub_813D3A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	adds r0, r7, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	ldr r2, [r6, #0x0C]
	ldr r3, [r6, #0x10]
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813D4C0
	adds r0, r7, #0x0
	add r1, sp, #0x00C
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D4C0
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x28]
	mov r8, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	add r4, sp, #0x010
	movs r2, #0x08
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x00]
	movs r2, #0x0A
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x06]
	movs r2, #0x0C
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x02]
	movs r2, #0x0E
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x04]
	ldr r2, _0813D4B8 @ =0x00007FFF
	adds r0, r4, #0x0
	mov r1, r8
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D4C0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x18
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	movs r0, #0x19
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	movs r0, #0x1A
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x08]
	movs r0, #0x1B
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r0, #0x1C
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	movs r0, #0x1D
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	movs r2, #0x08
	ldsh r3, [r4, r2]
	movs r1, #0x0A
	ldsh r0, [r4, r1]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	mov r2, r8
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D4C0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_813D0F0
	movs r2, #0xCC
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r0, _0813D4BC @ =0x0813939D
	str r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x01
	adds r1, r5, r0
	b _0813D4FC
	.byte 0x00, 0x00
_0813D4B8: .4byte 0x00007FFF
_0813D4BC: .4byte sub_813939C
_0813D4C0:
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r9
_0813D4FC:
	ldr r0, _0813D510 @ =0x0813D515
	str r0, [r1, #0x00]
	add sp, #0x020
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D510: .4byte sub_813D514
	thumb_func_start sub_813D514
sub_813D514:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8138944
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	adds r0, r4, #0x0
	movs r1, #0x0B
	bl sub_8138FD4
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x0F
	bl sub_8138944
	movs r3, #0xCC
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r2, _0813D568 @ =0x0813D285
	str r2, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, _0813D56C @ =0x08139421
	str r1, [r0, #0x00]
	adds r3, #0x0C
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
_0813D568: .4byte sub_813D284
_0813D56C: .4byte sub_8139420
	thumb_func_start sub_813D570
sub_813D570:
	push {r4, lr}
	ldr r2, _0813D5AC @ =0x0000033E
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r4, #0x00]
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r2, r1, r3
	ldr r3, [r2, #0x00]
	ldr r2, _0813D5B0 @ =0x0000020D
	adds r3, r3, r2
	ldrb r4, [r3, #0x00]
	movs r2, #0x05
	negs r2, r2
	ands r2, r4
	strb r2, [r3, #0x00]
	ldr r3, _0813D5B4 @ =0x000002B6
	adds r4, r1, r3
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_813D514
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D5AC: .4byte 0x0000033E
_0813D5B0: .4byte 0x0000020D
_0813D5B4: .4byte 0x000002B6
	thumb_func_start sub_813D5B8
sub_813D5B8:
	push {r4, r5, r6, lr}
	adds r5, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	subs r1, #0xB0
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r1, [r0, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x24
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1E
	cmp r1, r0
	bne _0813D63C
	ldr r0, _0813D644 @ =0x0000020D
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldr r0, [r2, #0x00]
	ldr r1, _0813D648 @ =0xFFFC7FFF
	ands r0, r1
	str r0, [r2, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
_0813D63C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D644: .4byte 0x0000020D
_0813D648: .4byte 0xFFFC7FFF
	thumb_func_start sub_813D64C
sub_813D64C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8138944
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	adds r0, r4, #0x0
	movs r1, #0x0B
	bl sub_8138FD4
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x0F
	bl sub_8138944
	movs r3, #0xCC
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r2, _0813D6A0 @ =0x0813CDB9
	str r2, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, _0813D6A4 @ =0x08139421
	str r1, [r0, #0x00]
	adds r3, #0x0C
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
_0813D6A0: .4byte sub_813CDB8
_0813D6A4: .4byte sub_8139420
	thumb_func_start sub_813D6A8
sub_813D6A8:
	push {r4, r5, r6, lr}
	ldr r2, _0813D6F0 @ =0x0000033E
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r4, #0x00]
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r6, r1, r2
	ldr r3, [r6, #0x00]
	ldr r5, _0813D6F4 @ =0x0000020D
	adds r3, r3, r5
	ldrb r4, [r3, #0x00]
	movs r2, #0x05
	negs r2, r2
	ands r2, r4
	strb r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	adds r3, r3, r5
	ldrb r2, [r3, #0x00]
	movs r4, #0x08
	orrs r2, r4
	strb r2, [r3, #0x00]
	ldr r2, _0813D6F8 @ =0x000002B6
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_813D64C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D6F0: .4byte 0x0000033E
_0813D6F4: .4byte 0x0000020D
_0813D6F8: .4byte 0x000002B6
	thumb_func_start sub_813D6FC
sub_813D6FC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8138944
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	adds r0, r4, #0x0
	movs r1, #0x0B
	bl sub_8138FD4
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _0813D744 @ =0x0813CAED
	str r2, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, _0813D748 @ =0x08139421
	str r1, [r0, #0x00]
	adds r3, #0x04
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D744: .4byte sub_813CAEC
_0813D748: .4byte sub_8139420
	thumb_func_start sub_813D74C
sub_813D74C:
	push {r4, lr}
	ldr r2, _0813D770 @ =0x0000033E
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r4, #0x00]
	ldr r2, _0813D774 @ =0x000002B6
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_813D6FC
	pop {r4}
	pop {r0}
	bx r0
_0813D770: .4byte 0x0000033E
_0813D774: .4byte 0x000002B6
	thumb_func_start sub_813D778
sub_813D778:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r5, r4, r1
	ldr r3, [r5, #0x00]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl _call_via_r3
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0813D7F0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	movs r2, #0x36
	ldsh r1, [r1, r2]
	cmp r0, r1
	bcs _0813D7E0
	adds r0, r4, #0x0
	movs r1, #0x1C
	bl sub_8139070
	ldr r1, _0813D7D8 @ =0x08136C3D
	str r1, [r5, #0x00]
	movs r2, #0xD2
	lsls r2, r2, #0x01
	adds r0, r4, r2
	str r1, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813D7DC @ =0x0813D8CD
	str r0, [r1, #0x00]
	b _0813D7F0
_0813D7D8: .4byte sub_8136C3C
_0813D7DC: .4byte sub_813D8CC
_0813D7E0:
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r2, #0xCE
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
_0813D7F0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_813D7F8
sub_813D7F8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r0, r5, #0x0
	movs r1, #0x0F
	bl sub_8138944
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r3, r5, r0
	movs r1, #0xCE
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r1, _0813D84C @ =0x08136D01
	str r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r5, r2
	str r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D84C: .4byte sub_8136D00
	thumb_func_start sub_813D850
sub_813D850:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8138944
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	adds r0, r4, #0x0
	movs r1, #0x0B
	bl sub_8138FD4
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _0813D898 @ =0x0813C8D5
	str r2, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, _0813D89C @ =0x08139421
	str r1, [r0, #0x00]
	adds r3, #0x04
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D898: .4byte sub_813C8D4
_0813D89C: .4byte sub_8139420
	thumb_func_start sub_813D8A0
sub_813D8A0:
	push {r4, lr}
	ldr r2, _0813D8C4 @ =0x0000033E
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r4, #0x00]
	ldr r2, _0813D8C8 @ =0x000002B6
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_813D850
	pop {r4}
	pop {r0}
	bx r0
_0813D8C4: .4byte 0x0000033E
_0813D8C8: .4byte 0x000002B6
	thumb_func_start sub_813D8CC
sub_813D8CC:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r5, r4, r1
	ldr r3, [r5, #0x00]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl _call_via_r3
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0813D90E
	adds r0, r4, #0x0
	movs r1, #0x20
	bl sub_8138944
	ldr r1, _0813D914 @ =0x08136EFD
	str r1, [r5, #0x00]
	movs r2, #0xD2
	lsls r2, r2, #0x01
	adds r0, r4, r2
	str r1, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813D918 @ =0x0813939D
	str r0, [r1, #0x00]
_0813D90E:
	pop {r4, r5}
	pop {r0}
	bx r0
_0813D914: .4byte sub_8136EFC
_0813D918: .4byte sub_813939C
	.byte 0xF0, 0xB5, 0x85, 0xB0, 0x05, 0x1C, 0x0E, 0x1C, 0x17, 0x1C, 0x04, 0xAC, 0x21, 0x1C, 0xBE, 0xF7
	.byte 0x0B, 0xFA, 0x00, 0x06, 0x00, 0x28, 0x25, 0xD0, 0x20, 0x78, 0x80, 0x00, 0x40, 0x19, 0x84, 0x6A
	.byte 0x68, 0x46, 0x12, 0x30, 0x00, 0x21, 0x01, 0x80, 0x10, 0x4A, 0x69, 0x46, 0x9C, 0xF0, 0xA8, 0xFE
	.byte 0x6B, 0x46, 0xF2, 0x68, 0x0E, 0x48, 0x01, 0x1C, 0x50, 0x18, 0x18, 0x80, 0x30, 0x69, 0x41, 0x18
	.byte 0xD9, 0x80, 0x69, 0x46, 0x80, 0x25, 0xAD, 0x01, 0x2B, 0x1C, 0xD2, 0x18, 0x4A, 0x80, 0xC0, 0x18
	.byte 0x88, 0x80, 0x08, 0x4A, 0x68, 0x46, 0x21, 0x1C, 0x00, 0x23, 0xBE, 0xF7, 0x33, 0xFA, 0x00, 0x06
	.byte 0x00, 0x28, 0x0B, 0xD1, 0x04, 0x48, 0x38, 0x60, 0x1D, 0xE0, 0x00, 0x00, 0x08, 0x00, 0x00, 0x01
	.byte 0x00, 0xE0, 0xFF, 0xFF, 0xFF, 0x7F, 0x00, 0x00, 0x21, 0x94, 0x13, 0x08, 0x0C, 0x48, 0x38, 0x60
	.byte 0x0C, 0x48, 0x31, 0x18, 0x7F, 0x20, 0x08, 0x70, 0xEA, 0x25, 0x6D, 0x00, 0x71, 0x19, 0x78, 0x20
	.byte 0x08, 0x80, 0xEB, 0x20, 0x40, 0x00, 0x32, 0x18, 0x11, 0x78, 0x02, 0x20, 0x40, 0x42, 0x08, 0x40
	.byte 0x02, 0x21, 0x08, 0x43, 0x10, 0x70, 0x05, 0xB0, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x59, 0xDF, 0x13, 0x08, 0x39, 0x02, 0x00, 0x00
	thumb_func_start sub_813D9D4
sub_813D9D4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813DA52
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x28]
	add r0, sp, #0x004
	movs r3, #0x00
	ldsh r2, [r4, r3]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x00]
	adds r4, #0x02
	movs r3, #0x00
	ldsh r2, [r4, r3]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x06]
	adds r4, #0x02
	movs r3, #0x00
	ldsh r2, [r4, r3]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x02]
	movs r3, #0x02
	ldsh r2, [r4, r3]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x04]
	ldr r2, _0813DA5C @ =0x00007FFF
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813DA52
	ldr r0, _0813DA60 @ =0x0813DA65
	str r0, [r7, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
_0813DA52:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813DA5C: .4byte 0x00007FFF
_0813DA60: .4byte sub_813DA64
	thumb_func_start sub_813DA64
sub_813DA64:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	movs r0, #0x58
	adds r0, r0, r6
	mov r10, r0
	adds r0, r7, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_813774C
	movs r1, #0x00
	mov r9, r1
	add r0, sp, #0x010
	mov r2, r9
	strh r2, [r0, #0x00]
	movs r3, #0xDC
	lsls r3, r3, #0x01
	adds r5, r6, r3
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x0C]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0813DAAC
	adds r0, #0x03
_0813DAAC:
	asrs r3, r0, #0x02
	movs r2, #0xDD
	lsls r2, r2, #0x01
	adds r4, r6, r2
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x10]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0813DAC4
	adds r0, #0x03
_0813DAC4:
	asrs r1, r0, #0x02
	ldr r2, _0813DC00 @ =0x03001038
	adds r0, r3, #0x0
	muls r0, r3
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r2, #0xE6
	lsls r2, r2, #0x01
	adds r1, r6, r2
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	movs r3, #0xE8
	lsls r3, r3, #0x01
	adds r0, r6, r3
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x01
	subs r2, #0xA4
	adds r0, r6, r2
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r3, #0x02
	adds r1, r6, r3
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r5, r0]
	lsls r1, r1, #0x08
	str r1, [r6, #0x0C]
	movs r3, #0x00
	ldsh r2, [r4, r3]
	lsls r2, r2, #0x08
	str r2, [r6, #0x10]
	movs r0, #0x01
	negs r0, r0
	str r0, [r6, #0x14]
	mov r0, r9
	str r0, [r6, #0x18]
	movs r3, #0xC1
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	add r3, sp, #0x014
	add r4, sp, #0x018
	str r4, [sp, #0x000]
	add r4, sp, #0x01C
	str r4, [sp, #0x004]
	add r5, sp, #0x008
	movs r4, #0x00
	strb r4, [r5, #0x00]
	add r4, sp, #0x00C
	movs r5, #0x01
	strb r5, [r4, #0x00]
	bl sub_803FBA4
	ldr r1, [sp, #0x014]
	str r1, [r6, #0x14]
	ldr r2, [r6, #0x0C]
	ldr r3, [r6, #0x10]
	ldr r0, [r6, #0x18]
	adds r1, r1, r0
	str r1, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	add r0, sp, #0x010
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813DC10
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813DC10
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	eors r0, r5
	ands r0, r5
	cmp r0, #0x00
	beq _0813DC10
	ldr r2, [r6, #0x0C]
	ldr r3, [r6, #0x10]
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813DC10
	adds r0, r6, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	bl sub_8047154
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_8044630
	ldr r2, _0813DC04 @ =0x00000217
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	ldr r3, _0813DC08 @ =0x0000020E
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0813DC0C @ =0x0813DC55
	mov r1, r8
	str r0, [r1, #0x00]
	b _0813DC42
	.byte 0x00, 0x00
_0813DC00: .4byte 0x03001038
_0813DC04: .4byte 0x00000217
_0813DC08: .4byte 0x0000020E
_0813DC0C: .4byte sub_813DC54
_0813DC10:
	movs r0, #0xBD
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0813DC28
	ldr r0, _0813DC24 @ =0x0813B1E9
	mov r2, r8
	str r0, [r2, #0x00]
	b _0813DC42
_0813DC24: .4byte sub_813B1E8
_0813DC28:
	mov r3, r8
	ldr r0, [r3, #0x04]
	str r0, [r3, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r10
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
_0813DC42:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_813DC54
sub_813DC54:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	ldrb r1, [r5, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0813DD20
	movs r0, #0x58
	adds r0, r0, r4
	mov r8, r0
	adds r0, r6, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	ldr r2, [r0, #0x0C]
	ldr r1, [r4, #0x0C]
	subs r2, r2, r1
	ldr r1, [r0, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0813DCAC
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _0813DCB0
_0813DCAC:
	movs r3, #0x01
	negs r3, r3
_0813DCB0:
	adds r2, r4, #0x0
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r0
	orrs r1, r3
	strb r1, [r2, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r5, #0x12]
	movs r1, #0xBE
	lsls r1, r1, #0x01
	add r1, r8
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r3, _0813DD2C @ =0x0813DD31
	str r3, [r7, #0x00]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	bl _call_via_r3
_0813DD20:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813DD2C: .4byte sub_813DD30
	thumb_func_start sub_813DD30
sub_813DD30:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r6, r4, r2
	ldrh r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0813DDC6
	ldrb r1, [r5, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0813DDA2
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x9B
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r6, #0x00]
	ldrb r0, [r5, #0x12]
	movs r1, #0x09
	negs r1, r1
	ands r1, r0
	strb r1, [r5, #0x12]
	ldrh r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0813DDD0
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x12]
	b _0813DE06
_0813DDA2:
	movs r1, #0x2C
	ldsh r0, [r5, r1]
	cmp r0, #0x7F
	ble _0813DDB6
	movs r2, #0x9D
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r0, #0x14
	strh r0, [r1, #0x00]
	b _0813DE06
_0813DDB6:
	cmp r0, #0x3F
	ble _0813DE06
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x0C
	strh r0, [r1, #0x00]
	b _0813DE06
_0813DDC6:
	subs r0, #0x01
	strh r0, [r6, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0813DE06
_0813DDD0:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r1, #0x08
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r5, #0x12]
	ldr r3, _0813DE10 @ =0x0813DE15
	str r3, [r7, #0x00]
	mov r0, r8
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	bl _call_via_r3
_0813DE06:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813DE10: .4byte sub_813DE14
	thumb_func_start sub_813DE14
sub_813DE14:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0813DE94
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0813DE60 @ =0x0000020E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0813DE68
	ldr r0, _0813DE64 @ =0x0813B1E9
	str r0, [r5, #0x00]
	b _0813DEDE
_0813DE60: .4byte 0x0000020E
_0813DE64: .4byte sub_813B1E8
_0813DE68:
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	ldr r0, _0813DE90 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	b _0813DEDE
	.byte 0x00, 0x00
_0813DE90: .4byte 0x0000FBFF
_0813DE94:
	movs r1, #0x2C
	ldsh r0, [r2, r1]
	cmp r0, #0x7F
	ble _0813DED0
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x04
	b _0813DEDC
_0813DED0:
	cmp r0, #0x3F
	ble _0813DEDE
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x0C
_0813DEDC:
	strh r0, [r1, #0x00]
_0813DEDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_813DEE4
sub_813DEE4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _0813DF50 @ =0x0000033E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0813DF54 @ =0x0000020D
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x04
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_813DFA4
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813DF50: .4byte 0x0000033E
_0813DF54: .4byte 0x0000020D
