	.syntax unified
	.text

	thumb_func_start sub_8087124
sub_8087124:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08087198
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0808714C
	ldr r0, _08087148 @ =0x08032012
	b _0808714E
_08087148: .4byte 0x08032012
_0808714C:
	ldr r0, _080871A0 @ =0x08032013
_0808714E:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	cmp r0, #0x00
	bgt _08087198
	ldr r1, [r4, #0x28]
	cmp r1, #0x00
	beq _08087196
	movs r2, #0x00
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r4, r0
	beq _0808718A
	ldr r0, [r1, #0x38]
	cmp r0, #0x00
	beq _08087186
	cmp r4, r0
	beq _0808718A
_0808717A:
	ldr r0, [r0, #0x30]
	cmp r0, #0x00
	beq _08087186
	cmp r4, r0
	bne _0808717A
	movs r2, #0x01
_08087186:
	cmp r2, #0x00
	beq _08087196
_0808718A:
	adds r0, r4, #0x0
	adds r0, #0x80
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _080871A4 @ =0x08087525
	str r0, [r4, #0x4C]
_08087196:
	movs r0, #0x00
_08087198:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_080871A0: .4byte 0x08032013
_080871A4: .4byte sub_8087524
