	.syntax unified
	.text

	thumb_func_start sub_8158558
sub_8158558:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	beq _0815856C
	cmp r0, #0x04
	beq _0815857C
	b _08158592
_0815856C:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	b _08158592
_0815857C:
	ldr r1, [r4, #0x30]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
_08158592:
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
