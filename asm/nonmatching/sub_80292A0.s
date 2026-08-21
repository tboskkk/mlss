	.syntax unified
	.text

	thumb_func_start sub_80292A0
sub_80292A0:
	push {lr}
	ldr r2, _080292D4 @ =0x0300034C
	ldr r1, _080292D8 @ =0x00000888
	adds r2, r2, r1
	ldrb r3, [r2, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r3
	strb r1, [r2, #0x00]
	movs r2, #0x06
	ldsh r0, [r0, r2]
	cmp r0, #0x06
	bne _080292D0
	ldr r0, _080292DC @ =0x03001034
	ldr r1, _080292E0 @ =0x0600C000
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	movs r2, #0x20
	bl _call_via_r3
	ldr r1, _080292E4 @ =0x02000008
	ldr r2, _080292E8 @ =0x00001508
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
_080292D0:
	pop {r0}
	bx r0
_080292D4: .4byte 0x0300034C
_080292D8: .4byte 0x00000888
_080292DC: .4byte 0x03001034
_080292E0: .4byte 0x0600C000
_080292E4: .4byte 0x02000008
_080292E8: .4byte 0x00001508
