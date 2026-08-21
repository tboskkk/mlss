	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8082898
sub_8082898:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r1, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	bl sub_80E19CC
	adds r6, r0, #0x0
	ldr r0, [sp, #0x000]
	subs r0, #0x01
	str r0, [sp, #0x000]
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _08082912
_080828B8:
	ldr r0, [sp, #0x000]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r5, [r0, #0x00]
	cmp r5, #0x00
	beq _08082904
	ldr r0, _080828D0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080828D4 @ =0x00003660
	adds r4, r0, r1
	b _080828E0
	.byte 0x00, 0x00
_080828D0: .4byte 0x03000FDC
_080828D4: .4byte 0x00003660
_080828D8:
	ldrh r0, [r4, #0x00]
	cmp r0, r5
	beq _08082904
	subs r4, #0x08
_080828E0:
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080828D8
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_80213A0
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _08082904
	ldr r0, _0808291C @ =0x07FFFFFF
	cmp r1, r0
	bhi _08082904
	strh r5, [r4, #0x00]
	str r1, [r4, #0x04]
_08082904:
	ldr r1, [sp, #0x000]
	subs r1, #0x01
	str r1, [sp, #0x000]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080828B8
_08082912:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808291C: .4byte 0x07FFFFFF
	thumb_func_start sub_8082920
sub_8082920:
	push {r4, lr}
	add sp, #-0x004
	adds r1, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	bl sub_80E19CC
	adds r4, r0, #0x0
	ldr r0, [sp, #0x000]
	subs r0, #0x01
	str r0, [sp, #0x000]
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _0808298C
_08082940:
	ldr r0, [sp, #0x000]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0808297E
	movs r2, #0xF0
	lsls r2, r2, #0x08
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0x06
	cmp r2, r0
	beq _0808297E
	movs r0, #0xB0
	lsls r0, r0, #0x08
	cmp r2, r0
	beq _0808297E
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _0808297E
	movs r0, #0xE0
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _0808297E
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
_0808297E:
	ldr r1, [sp, #0x000]
	subs r1, #0x01
	str r1, [sp, #0x000]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08082940
_0808298C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8082994
sub_8082994:
	push {r4, r5, lr}
	ldr r0, _080829CC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xFA
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _080829C4
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080829C4
	movs r5, #0x00
_080829AE:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _080829B8
	bl sprite_heap_free
_080829B8:
	strh r5, [r4, #0x00]
	str r5, [r4, #0x04]
	subs r4, #0x08
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080829AE
_080829C4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080829CC: .4byte 0x03000FD8
	.byte 0x01, 0x20, 0x70, 0x47, 0x10, 0xB5, 0x02, 0x1C, 0x04, 0x48, 0x00, 0x68, 0xFA, 0x21, 0x49, 0x00
	.byte 0x40, 0x18, 0x01, 0x68, 0x00, 0x29, 0x1A, 0xD0, 0x0C, 0x1C, 0x15, 0xE0, 0xD8, 0x0F, 0x00, 0x03
	.byte 0x20, 0x88, 0x90, 0x42, 0x0F, 0xD1, 0x60, 0x68, 0x9F, 0xF7, 0xA6, 0xF9, 0x06, 0xE0, 0x21, 0x1C
	.byte 0x08, 0x39, 0x08, 0x88, 0x20, 0x80, 0x48, 0x68, 0x60, 0x60, 0x0C, 0x1C, 0x20, 0x88, 0x00, 0x28
	.byte 0xF5, 0xD1, 0x01, 0x20, 0x04, 0xE0, 0x08, 0x3C, 0x20, 0x88, 0x00, 0x28, 0xE8, 0xD1, 0x00, 0x20
	.byte 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	thumb_func_start sub_8082A28
sub_8082A28:
	push {lr}
	ldr r2, _08082A3C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08082A40
	movs r0, #0x01
	b _08082A68
_08082A3C: .4byte 0x03000FD8
_08082A40:
	ldr r0, _08082A4C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r3, _08082A50 @ =0x00003660
	adds r1, r0, r3
	b _08082A56
	.byte 0x00, 0x00
_08082A4C: .4byte 0x03000FDC
_08082A50: .4byte 0x00003660
_08082A54:
	subs r1, #0x08
_08082A56:
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08082A54
	ldr r0, [r2, #0x00]
	movs r2, #0xFA
	lsls r2, r2, #0x01
	adds r0, r0, r2
	str r1, [r0, #0x00]
	movs r0, #0x00
_08082A68:
	pop {r1}
	bx r1
	thumb_func_start sub_8082A6C
sub_8082A6C:
	push {lr}
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _08082AA6
	movs r2, #0xF0
	lsls r2, r2, #0x08
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0x06
	cmp r2, r0
	beq _08082AA6
	movs r0, #0xB0
	lsls r0, r0, #0x08
	cmp r2, r0
	beq _08082AA6
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _08082AA6
	movs r0, #0xE0
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _08082AA6
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80214A4
_08082AA6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8082AAC
sub_8082AAC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _08082AF4
	ldr r0, _08082AC0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08082AC4 @ =0x00003660
	adds r4, r0, r1
	b _08082AD0
	.byte 0x00, 0x00
_08082AC0: .4byte 0x03000FDC
_08082AC4: .4byte 0x00003660
_08082AC8:
	ldrh r0, [r4, #0x00]
	cmp r0, r5
	beq _08082AF4
	subs r4, #0x08
_08082AD0:
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08082AC8
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80213A0
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _08082AF4
	ldr r0, _08082AFC @ =0x07FFFFFF
	cmp r1, r0
	bhi _08082AF4
	strh r5, [r4, #0x00]
	str r1, [r4, #0x04]
_08082AF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082AFC: .4byte 0x07FFFFFF
