	.syntax unified
	.text

	thumb_func_start sub_809AE80
sub_809AE80:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809AEA6
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0809AEAC @ =0x0809B031
	str r0, [r4, #0x4C]
_0809AEA6:
	pop {r4, r5}
	pop {r0}
	bx r0
_0809AEAC: .4byte 0x0809B031
