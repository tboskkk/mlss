	.syntax unified
	.text

	thumb_func_start sub_808225C
sub_808225C:
	push {lr}
	adds r1, r0, #0x0
	ldrh r2, [r1, #0x10]
	movs r3, #0x10
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _08082270
	subs r0, r2, #0x1
	strh r0, [r1, #0x10]
	b _08082274
_08082270:
	ldr r0, _08082278 @ =0x08081F85
	str r0, [r1, #0x04]
_08082274:
	pop {r0}
	bx r0
_08082278: .4byte sub_8081F84
