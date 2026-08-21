	.syntax unified
	.text

	thumb_func_start sub_8108B84
sub_8108B84:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08108BD2
	ldr r0, [r5, #0x08]
	adds r1, r0, #0x0
	adds r1, #0x08
	adds r6, r0, #0x0
	adds r6, #0xEC
	movs r2, #0x00
	ldsh r0, [r6, r2]
	movs r4, #0x01
	negs r4, r4
	ldr r2, _08108BD8 @ =0x0000205A
	cmp r0, r4
	bne _08108BAC
	subs r2, #0x2F
_08108BAC:
	adds r0, r1, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x00
	ldsh r0, [r6, r1]
	movs r1, #0xFE
	cmp r0, r4
	bne _08108BC2
	movs r1, #0xF0
_08108BC2:
	adds r0, r1, #0x0
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x10
	strh r0, [r5, #0x10]
	ldr r0, _08108BDC @ =0x08108B51
	str r0, [r5, #0x04]
_08108BD2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08108BD8: .4byte 0x0000205A
_08108BDC: .4byte sub_8108B50
