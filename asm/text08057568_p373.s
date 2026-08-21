	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80587BC
sub_80587BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _0805887C @ =0x086FFC20
	mov r9, r6
	ldr r3, _08058880 @ =0x03000DD0
	ldrb r7, [r3, #0x04]
	ldr r2, _08058884 @ =0x083AAC4C
	lsls r1, r7, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r6
	ldr r1, [r1, #0x00]
	adds r5, r1, r6
	movs r4, #0x00
	mov r10, r3
	mov r8, r2
	adds r2, r0, #0x0
	adds r2, #0xA8
	ldr r3, _08058888 @ =0x000007FF
	mov r12, r2
_080587EC:
	ldr r1, [r2, #0x00]
	lsls r0, r4, #0x01
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r3
	bls _080587EC
	lsls r0, r7, #0x02
	add r0, r8
	ldrh r0, [r0, #0x02]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r5, r6, r0
	movs r4, #0x00
	mov r2, r12
	movs r7, #0x80
	lsls r7, r7, #0x05
	ldr r6, _08058888 @ =0x000007FF
_0805881A:
	ldr r1, [r2, #0x00]
	lsls r0, r4, #0x01
	adds r1, r0, r1
	adds r1, r1, r7
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bls _0805881A
	mov r1, r10
	ldrb r0, [r1, #0x0A]
	cmp r0, #0x00
	beq _0805886E
	ldr r2, _0805888C @ =0x089744D0
	ldr r1, _08058890 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldrh r0, [r0, #0x04]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r5, r0, r2
	movs r4, #0x00
	mov r2, r12
	movs r6, #0x80
	lsls r6, r6, #0x06
	ldr r3, _08058894 @ =0x000003FF
_08058856:
	ldr r1, [r2, #0x00]
	lsls r0, r4, #0x01
	adds r1, r0, r1
	adds r1, r1, r6
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r3
	bls _08058856
_0805886E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805887C: .4byte 0x086FFC20
_08058880: .4byte 0x03000DD0
_08058884: .4byte 0x083AAC4C
_08058888: .4byte 0x000007FF
_0805888C: .4byte 0x089744D0
_08058890: .4byte 0x083B7108
_08058894: .4byte 0x000003FF
	thumb_func_start sub_8058898
sub_8058898:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r7, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _080588E0
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	b _0805890A
_080588E0:
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r4, r5, #0x0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	adds r2, r2, r4
_0805890A:
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r4, r6, #0x0
	adds r4, #0x94
	ldr r1, [r4, #0x00]
	lsls r2, r0, #0x01
	adds r1, r2, r1
	mov r0, r12
	lsls r3, r0, #0x03
	adds r3, r3, r7
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, [r4, #0x00]
	lsls r2, r5, #0x01
	adds r0, r2, r0
	ldrh r1, [r3, #0x04]
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x06]
	strh r0, [r2, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
