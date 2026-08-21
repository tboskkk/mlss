	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8108B50
sub_8108B50:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08108B68
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08108B76
_08108B68:
	ldr r0, _08108B7C @ =0x00000151
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08108B80 @ =0x08108B11
	str r0, [r4, #0x04]
_08108B76:
	pop {r4}
	pop {r0}
	bx r0
_08108B7C: .4byte 0x00000151
_08108B80: .4byte sub_8108B10
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
	thumb_func_start sub_8108BE0
sub_8108BE0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08108C1C
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	ldr r2, _08108C14 @ =0x0000205A
	cmp r1, r0
	bne _08108C08
	subs r2, #0x2F
_08108C08:
	adds r0, r2, #0x0
	bl sub_8082AAC
	ldr r0, _08108C18 @ =0x08108B85
	b _08108C2E
	.byte 0x00, 0x00
_08108C14: .4byte 0x0000205A
_08108C18: .4byte sub_8108B84
_08108C1C:
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x21
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x00]
	movs r0, #0x00
_08108C2E:
	str r0, [r4, #0x04]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
