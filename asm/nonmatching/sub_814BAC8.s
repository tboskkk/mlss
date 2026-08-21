	.syntax unified
	.text

	thumb_func_start sub_814BAC8
sub_814BAC8:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _0814BB18 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x23
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	adds r0, #0x20
	movs r1, #0x20
	strb r1, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0814BB1C @ =0x0814979D
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _0814BB20 @ =0x0814BA71
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0814BB18: .4byte 0x0000033E
_0814BB1C: .4byte sub_814979C
_0814BB20: .4byte sub_814BA70
