	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_811448C
sub_811448C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _081144C0
	ldr r0, _081144C8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x0C]
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	str r5, [r4, #0x4C]
_081144C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081144C8: .4byte 0x03000FD8
	thumb_func_start sub_81144CC
sub_81144CC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x00
	bne _08114514
	ldr r5, [r4, #0x2C]
	ldr r0, _0811451C @ =0x08114791
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0811450E
	ldr r0, [r5, #0x28]
	ldr r1, _08114520 @ =0x081140C1
	str r1, [r0, #0x54]
	ldr r2, _08114524 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0811450E:
	adds r0, r5, #0x0
	adds r0, #0xA8
	str r6, [r0, #0x00]
_08114514:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0811451C: .4byte sub_8114790
_08114520: .4byte sub_81140C0
_08114524: .4byte 0x00000113
	thumb_func_start sub_8114528
sub_8114528:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _0811454A
	ldr r0, [r4, #0x28]
	ldr r2, _08114550 @ =0x00000113
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	ldr r0, _08114554 @ =0x081141F5
	str r0, [r4, #0x50]
	str r0, [r4, #0x4C]
_0811454A:
	pop {r4}
	pop {r0}
	bx r0
_08114550: .4byte 0x00000113
_08114554: .4byte 0x081141F5
