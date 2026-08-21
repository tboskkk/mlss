	.syntax unified
	.text

	thumb_func_start sub_8019650
sub_8019650:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	adds r0, r5, #0x1
	bl sub_819B99C
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _0801967E
	ldr r0, _08019690 @ =0x0300034C
	lsls r1, r5, #0x01
	movs r2, #0x8A
	lsls r2, r2, #0x04
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	lsrs r4, r0, #0x08
	cmp r4, #0x00
	bne _0801967E
	movs r4, #0xFF
_0801967E:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80193B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08019690: .4byte 0x0300034C
