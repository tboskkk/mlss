	.syntax unified
	.text

	thumb_func_start sub_80C0F30
sub_80C0F30:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080C0F90 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	ldr r4, [r0, #0x74]
	ldr r5, [r1, #0x54]
	cmp r5, #0x00
	bne _080C0F88
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C0F54
	cmp r1, #0x04
	bne _080C0F84
_080C0F54:
	ldr r2, _080C0F94 @ =0x03001038
	ldr r0, _080C0F98 @ =0x0819832C
	ldr r1, _080C0F9C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C0F84:
	ldr r0, _080C0FA0 @ =0x080C0FA5
	str r0, [r6, #0x4C]
_080C0F88:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C0F90: .4byte 0x03000FD8
_080C0F94: .4byte 0x03001038
_080C0F98: .4byte 0x0819832C
_080C0F9C: .4byte 0x08198220
_080C0FA0: .4byte sub_80C0FA4
