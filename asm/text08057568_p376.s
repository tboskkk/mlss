	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_805A6EC
sub_805A6EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r0, _0805A768 @ =0x08A46198
	mov r9, r0
	ldr r2, _0805A76C @ =0x083AFC5C
	mov r3, r8
	ldrh r1, [r3, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x03]
	mov r10, r0
	movs r2, #0x00
_0805A710:
	lsls r0, r2, #0x01
	mov r3, r10
	lsls r1, r3, #0x02
	adds r0, r0, r1
	ldr r1, _0805A770 @ =0x083AFF3C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	ldr r3, _0805A774 @ =0x0000FFFF
	cmp r0, r3
	beq _0805A778
	lsls r0, r0, #0x02
	ldr r1, _0805A768 @ =0x08A46198
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r3, r9
	adds r7, r3, r0
	movs r0, #0x00
	adds r1, r2, #0x1
	mov r12, r1
	lsls r6, r2, #0x09
	mov r3, r8
	ldr r5, [r3, #0x3C]
_0805A73C:
	movs r2, #0x00
	adds r4, r0, #0x1
	lsls r3, r0, #0x05
_0805A742:
	adds r1, r6, r2
	adds r1, r3, r1
	lsls r1, r1, #0x01
	adds r1, r1, r5
	adds r0, r3, r2
	adds r0, r7, r0
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1F
	bls _0805A742
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A73C
	b _0805A7A8
	.byte 0x00, 0x00
_0805A768: .4byte 0x08A46198
_0805A76C: .4byte 0x083AFC5C
_0805A770: .4byte 0x083AFF3C
_0805A774: .4byte 0x0000FFFF
_0805A778:
	movs r0, #0x00
	adds r1, r2, #0x1
	mov r12, r1
	lsls r5, r2, #0x09
	mov r1, r8
	ldr r3, [r1, #0x3C]
	movs r6, #0x00
_0805A786:
	movs r2, #0x00
	adds r4, r0, #0x1
	lsls r1, r0, #0x05
_0805A78C:
	adds r0, r5, r2
	adds r0, r1, r0
	lsls r0, r0, #0x01
	adds r0, r0, r3
	strh r6, [r0, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1F
	bls _0805A78C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A786
_0805A7A8:
	mov r3, r12
	lsls r0, r3, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x01
	bls _0805A710
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805A7C0
sub_805A7C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r2, _0805A85C @ =0x083AFC5C
	ldrh r1, [r0, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x03]
	str r0, [sp, #0x004]
	movs r0, #0x00
	mov r9, r0
_0805A7E2:
	mov r1, r9
	lsls r0, r1, #0x01
	ldr r2, [sp, #0x004]
	lsls r1, r2, #0x02
	adds r0, r0, r1
	ldr r3, _0805A860 @ =0x083AFF3C
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	mov r1, r9
	adds r1, #0x01
	str r1, [sp, #0x008]
	ldr r2, _0805A864 @ =0x0000FFFF
	cmp r0, r2
	beq _0805A840
	movs r0, #0x00
	mov r3, r9
	lsls r3, r3, #0x09
	mov r10, r3
_0805A806:
	movs r4, #0x00
	lsls r6, r0, #0x10
	lsls r5, r0, #0x05
	adds r7, r0, #0x1
_0805A80E:
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	mov r1, r10
	adds r0, r5, r1
	adds r0, r0, r4
	mov r3, r8
	ldr r1, [r3, #0x3C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r0, r8
	mov r1, r9
	asrs r3, r6, #0x10
	bl sub_805A868
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1F
	bls _0805A80E
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A806
_0805A840:
	ldr r1, [sp, #0x008]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r0, #0x01
	bls _0805A7E2
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805A85C: .4byte 0x083AFC5C
_0805A860: .4byte 0x083AFF3C
_0805A864: .4byte 0x0000FFFF
	thumb_func_start sub_805A868
sub_805A868:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	mov r12, r0
	ldr r7, [r6, #0x44]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _0805A8AC
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
	b _0805A8D6
_0805A8AC:
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
_0805A8D6:
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r3, [r6, #0x38]
	lsls r1, r0, #0x01
	adds r1, r1, r3
	mov r0, r12
	lsls r2, r0, #0x03
	adds r2, r2, r7
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x02]
	strh r0, [r1, #0x02]
	lsls r0, r4, #0x01
	adds r0, r0, r3
	ldrh r1, [r2, #0x04]
	strh r1, [r0, #0x00]
	ldrh r1, [r2, #0x06]
	strh r1, [r0, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
