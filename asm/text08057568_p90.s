	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_819B1B8
sub_819B1B8:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	ldr r5, _0819B220 @ =0x03007FF0
	ldr r2, [r5, #0x00]
	lsls r6, r3, #0x01
	movs r0, #0x93
	lsls r0, r0, #0x03
	adds r2, r2, r0
	adds r2, r2, r6
	lsls r0, r1, #0x08
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, _0819B224 @ =0x00000494
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0819B21A
	movs r4, #0x00
	adds r7, r5, #0x0
	adds r0, r6, r3
	lsls r5, r0, #0x07
_0819B1EA:
	ldr r0, [r7, #0x00]
	adds r0, r0, r5
	lsls r1, r4, #0x05
	adds r2, r0, r1
	ldrh r1, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0819B214
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0819B214
	ldr r1, _0819B228 @ =0x08A80688
	lsls r0, r4, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x08]
	adds r0, r2, #0x0
	bl _call_via_r1
_0819B214:
	adds r4, #0x01
	cmp r4, #0x0B
	ble _0819B1EA
_0819B21A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0819B220: .4byte 0x03007FF0
_0819B224: .4byte 0x00000494
_0819B228: .4byte 0x08A80688
	thumb_func_start sub_819B22C
sub_819B22C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r0, _0819B288 @ =0x0821CC40
	mov r2, r8
	lsls r1, r2, #0x02
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	mov r9, r4
	ldrh r5, [r4, #0x00]
	adds r4, #0x02
	ldr r0, _0819B28C @ =0x03007FF0
	ldr r6, [r0, #0x00]
	movs r7, #0x00
_0819B24C:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _0819B272
	ldrh r1, [r4, #0x00]
	add r1, r9
	adds r4, #0x02
	adds r0, r6, #0x0
	bl sub_819B040
	ldr r0, _0819B28C @ =0x03007FF0
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x01
	movs r2, #0x96
	lsls r2, r2, #0x03
	adds r0, r0, r2
	adds r0, r0, r1
	mov r1, r8
	strh r1, [r0, #0x00]
_0819B272:
	adds r7, #0x01
	adds r6, #0x20
	lsrs r5, r5, #0x01
	cmp r7, #0x0B
	ble _0819B24C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0819B288: .4byte 0x0821CC40
_0819B28C: .4byte 0x03007FF0
	thumb_func_start sub_819B290
sub_819B290:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	movs r5, #0x00
	ldr r0, _0819B2D8 @ =0x03007FF0
	ldr r4, [r0, #0x00]
	ldr r0, _0819B2DC @ =0x0000FFFE
	adds r7, r0, #0x0
_0819B29E:
	ldrh r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0819B2CA
	ldr r0, _0819B2D8 @ =0x03007FF0
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x01
	movs r2, #0x96
	lsls r2, r2, #0x03
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, r6
	bne _0819B2CA
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_819B070
	ldrh r0, [r4, #0x00]
	ands r0, r7
	strh r0, [r4, #0x00]
_0819B2CA:
	adds r5, #0x01
	adds r4, #0x20
	cmp r5, #0x0B
	ble _0819B29E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0819B2D8: .4byte 0x03007FF0
_0819B2DC: .4byte 0x0000FFFE
	thumb_func_start sub_819B2E0
sub_819B2E0:
	push {r4, r5, r6, lr}
	movs r5, #0x00
	ldr r0, _0819B314 @ =0x03007FF0
	ldr r4, [r0, #0x00]
	ldr r0, _0819B318 @ =0x0000FFFE
	adds r6, r0, #0x0
_0819B2EC:
	ldrh r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0819B304
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_819B070
	ldrh r0, [r4, #0x00]
	ands r0, r6
	strh r0, [r4, #0x00]
_0819B304:
	adds r5, #0x01
	adds r4, #0x20
	cmp r5, #0x0B
	ble _0819B2EC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0819B314: .4byte 0x03007FF0
_0819B318: .4byte 0x0000FFFE
