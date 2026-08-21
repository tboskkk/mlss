	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8151064
sub_8151064:
	push {r4, r5, r6, lr}
	ldr r0, _081510A8 @ =0x04000006
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _081510AC @ =0x04000018
	movs r2, #0x00
	strh r2, [r0, #0x00]
	ldr r1, _081510B0 @ =0x0400001A
	movs r0, #0x80
	subs r0, r0, r3
	strh r0, [r1, #0x00]
	ldr r0, _081510B4 @ =0x03001014
	ldr r4, [r0, #0x00]
	movs r5, #0x02
	ldsh r1, [r4, r5]
	adds r5, r0, #0x0
	cmp r3, r1
	bgt _081510C4
	ldr r1, _081510B8 @ =0x04000050
	movs r0, #0xDF
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x1F
	strh r0, [r1, #0x00]
	ldr r0, _081510BC @ =0x04000040
	strh r2, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2, #0x00]
	ldr r0, _081510C0 @ =0x0000DFFF
	ands r0, r1
	b _08151116
	.byte 0x00, 0x00
_081510A8: .4byte 0x04000006
_081510AC: .4byte 0x04000018
_081510B0: .4byte 0x0400001A
_081510B4: .4byte 0x03001014
_081510B8: .4byte 0x04000050
_081510BC: .4byte 0x04000040
_081510C0: .4byte 0x0000DFFF
_081510C4:
	movs r0, #0xA0
	subs r0, r0, r1
	cmp r3, r0
	ble _081510F4
	ldr r1, _081510E8 @ =0x04000050
	movs r0, #0xDF
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x1F
	strh r0, [r1, #0x00]
	ldr r0, _081510EC @ =0x04000040
	strh r2, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2, #0x00]
	ldr r0, _081510F0 @ =0x0000DFFF
	ands r0, r1
	b _08151116
_081510E8: .4byte 0x04000050
_081510EC: .4byte 0x04000040
_081510F0: .4byte 0x0000DFFF
_081510F4:
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x06
	adds r1, r6, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08151144 @ =0x04000050
	ldr r2, _08151148 @ =0x00003F44
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r2, _0815114C @ =0x04000040
	lsls r1, r3, #0x01
	adds r0, r4, #0x4
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
_08151116:
	strh r0, [r2, #0x00]
	ldr r0, _08151150 @ =0x03001018
	ldr r0, [r0, #0x00]
	ldr r6, _08151154 @ =0x00001CC4
	adds r0, r0, r6
	ldrh r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0815113E
	movs r2, #0xA0
	lsls r2, r2, #0x13
	ldr r0, [r5, #0x00]
	lsls r1, r3, #0x01
	movs r3, #0xE6
	lsls r3, r3, #0x01
	adds r0, r0, r3
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
_0815113E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08151144: .4byte 0x04000050
_08151148: .4byte 0x00003F44
_0815114C: .4byte 0x04000040
_08151150: .4byte 0x03001018
_08151154: .4byte 0x00001CC4
	thumb_func_start sub_8151158
sub_8151158:
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0x0
	mov r12, r1
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsrs r7, r0, #0x01
	adds r0, r2, #0x0
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsrs r5, r0, #0x01
	mov r0, r12
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsrs r6, r0, #0x01
	mov r0, r12
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsrs r4, r0, #0x01
	ldr r1, [r2, #0x04]
	mov r3, r12
	ldr r0, [r3, #0x04]
	cmp r1, r0
	ble _0815118A
	subs r0, r1, r0
	b _08151190
_0815118A:
	cmp r1, r0
	bge _08151196
	subs r0, r0, r1
_08151190:
	lsls r0, r0, #0x08
	lsrs r3, r0, #0x10
	b _08151198
_08151196:
	movs r3, #0x00
_08151198:
	ldr r1, [r2, #0x08]
	asrs r1, r1, #0x08
	subs r1, r1, r5
	mov r2, r12
	ldr r0, [r2, #0x08]
	asrs r0, r0, #0x08
	subs r0, r0, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _081511B6
	subs r0, r1, r0
	b _081511BC
_081511B6:
	cmp r1, r0
	bge _081511C2
	subs r0, r0, r1
_081511BC:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _081511C4
_081511C2:
	movs r2, #0x00
_081511C4:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, r6
	cmp r0, r1
	bgt _081511DC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, r4
	cmp r0, r1
	bgt _081511DC
	movs r0, #0x01
	b _081511DE
_081511DC:
	movs r0, #0x00
_081511DE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
