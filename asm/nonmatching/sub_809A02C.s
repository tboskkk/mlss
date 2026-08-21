	.syntax unified
	.text

	thumb_func_start sub_809A02C
sub_809A02C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x4C]
	ldr r1, [r4, #0x50]
	cmp r1, #0x00
	beq _0809A03C
	bl _call_via_r1
_0809A03C:
	ldr r0, [r4, #0x4C]
	cmp r5, r0
	beq _0809A048
	str r0, [r4, #0x50]
	ldr r0, _0809A068 @ =0x0809A02D
	str r0, [r4, #0x4C]
_0809A048:
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0809A062
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x50]
	str r0, [r4, #0x4C]
_0809A062:
	pop {r4, r5}
	pop {r0}
	bx r0
_0809A068: .4byte sub_809A02C
