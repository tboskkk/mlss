	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A67F0
sub_80A67F0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A6894 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r0, #0xAB
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9A
	bl play_sfx_80195B4
	ldr r0, [r5, #0x34]
	bl sub_807FB34
	movs r0, #0x00
	str r0, [r5, #0x34]
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A682A
	cmp r1, #0x04
	bne _080A6846
_080A682A:
	ldr r2, _080A6898 @ =0x00002055
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A6846:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A6858
	cmp r1, #0x04
	bne _080A6888
_080A6858:
	ldr r2, _080A689C @ =0x03001038
	ldr r0, _080A68A0 @ =0x0819832C
	ldr r1, _080A68A4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x01
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A6888:
	ldr r0, _080A68A8 @ =0x080A6BD9
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A6894: .4byte 0x03000FD8
_080A6898: .4byte 0x00002055
_080A689C: .4byte 0x03001038
_080A68A0: .4byte 0x0819832C
_080A68A4: .4byte 0x08198220
_080A68A8: .4byte sub_80A6BD8
