	.syntax unified
	.text

	thumb_func_start sub_8059D04
sub_8059D04:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r5, _08059D7C @ =0x086FFC20
	mov r9, r5
	ldr r1, _08059D80 @ =0x03000DE8
	ldrb r7, [r1, #0x04]
	ldr r2, _08059D84 @ =0x083AAC4C
	lsls r1, r7, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	adds r4, r1, r5
	movs r3, #0x00
	mov r8, r2
	ldr r2, [r0, #0x74]
	ldr r6, _08059D88 @ =0x000007FF
	mov r12, r2
_08059D2E:
	lsls r0, r3, #0x01
	adds r1, r0, r2
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r6
	bls _08059D2E
	lsls r0, r7, #0x02
	add r0, r8
	ldrh r0, [r0, #0x02]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r4, r5, r0
	movs r3, #0x00
	mov r2, r12
	movs r6, #0x80
	lsls r6, r6, #0x05
	ldr r5, _08059D88 @ =0x000007FF
_08059D5A:
	lsls r0, r3, #0x01
	adds r1, r0, r2
	adds r1, r1, r6
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	bls _08059D5A
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08059D7C: .4byte 0x086FFC20
_08059D80: .4byte 0x03000DE8
_08059D84: .4byte 0x083AAC4C
_08059D88: .4byte 0x000007FF
