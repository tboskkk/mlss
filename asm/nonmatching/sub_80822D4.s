	.syntax unified
	.text

	thumb_func_start sub_80822D4
sub_80822D4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x08]
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	ble _080822F4
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _080822F4
	adds r0, r5, #0x0
	bl sub_8081568
_080822F4:
	adds r0, r5, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08082310
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08082318 @ =0x0808231D
	str r0, [r4, #0x04]
_08082310:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082318: .4byte sub_808231C
