	.syntax unified
	.text

	thumb_func_start sub_815E114
sub_815E114:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0815E18C
	adds r0, r5, #0x0
	bl sub_815A6D8
	cmp r0, #0x01
	bne _0815E15C
	ldr r1, [r4, #0x04]
	movs r2, #0x08
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
	ldr r2, _0815E154 @ =0x082127A8
	movs r0, #0x1C
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	adds r1, r5, #0x0
	bl sub_815E1A0
	ldr r2, _0815E158 @ =0x00001E94
	adds r1, r5, r2
	str r0, [r1, #0x00]
	b _0815E18C
_0815E154: .4byte 0x082127A8
_0815E158: .4byte 0x00001E94
_0815E15C:
	cmp r0, #0x02
	bne _0815E18C
	ldr r1, [r4, #0x04]
	movs r2, #0x08
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
	ldr r2, _0815E194 @ =0x082127A8
	movs r0, #0x18
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	bl sub_815EA08
	ldr r0, _0815E198 @ =0x08CDCA70
	str r0, [r4, #0x04]
	ldr r1, _0815E19C @ =0x00001E94
	adds r0, r5, r1
	str r4, [r0, #0x00]
_0815E18C:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_0815E194: .4byte 0x082127A8
_0815E198: .4byte 0x08CDCA70
_0815E19C: .4byte 0x00001E94
