	.syntax unified
	.text

	thumb_func_start sub_806B15C
sub_806B15C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_8087124
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _0806B190
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x14
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x80
	str r4, [r0, #0x00]
	ldr r0, _0806B18C @ =0x0806B0ED
	str r0, [r5, #0x4C]
	movs r0, #0x00
	b _0806B192
_0806B18C: .4byte sub_806B0EC
_0806B190:
	adds r0, r4, #0x0
_0806B192:
	pop {r4, r5}
	pop {r1}
	bx r1
