	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8105C10
sub_8105C10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08105C68 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r1, r2
	ldr r2, [r0, #0x00]
	ldr r0, _08105C6C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, _08105C70 @ =0x000002BE
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x1D
	movs r4, #0x00
	mov r9, r1
	cmp r4, r5
	bge _08105CF6
	movs r6, #0x7F
	ldr r7, _08105C74 @ =0x03000FDC
	mov r8, r7
	ldr r0, _08105C78 @ =0x083BE67C
	mov r12, r0
	ldr r1, _08105C7C @ =0x083BBDD0
	mov r10, r1
_08105C48:
	mov r7, r8
	ldr r0, [r7, #0x00]
	lsls r1, r4, #0x01
	ldr r7, _08105C80 @ =0x00008E4E
	adds r0, r0, r7
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	lsrs r0, r1, #0x07
	cmp r0, #0x02
	beq _08105C92
	cmp r0, #0x02
	bgt _08105C84
	cmp r0, #0x01
	beq _08105C8E
	b _08105CBA
	.byte 0x00, 0x00
_08105C68: .4byte 0x0300034C
_08105C6C: .4byte 0x03000FD8
_08105C70: .4byte 0x000002BE
_08105C74: .4byte 0x03000FDC
_08105C78: .4byte 0x083BE67C
_08105C7C: .4byte 0x083BBDD0
_08105C80: .4byte 0x00008E4E
_08105C84:
	cmp r0, #0x03
	beq _08105CA6
	cmp r0, #0x04
	beq _08105CB0
	b _08105CBA
_08105C8E:
	movs r3, #0x0C
	b _08105CBA
_08105C92:
	adds r0, r6, #0x0
	ands r0, r1
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x02
	add r1, r12
	ldrb r0, [r1, #0x11]
	adds r3, r0, #0x0
	adds r3, #0x0C
	b _08105CBA
_08105CA6:
	adds r0, r6, #0x0
	ands r0, r1
	adds r3, r0, #0x0
	adds r3, #0x08
	b _08105CBA
_08105CB0:
	adds r0, r6, #0x0
	ands r0, r1
	lsls r0, r0, #0x04
	add r0, r10
	ldrb r3, [r0, #0x02]
_08105CBA:
	movs r0, #0x0B
	muls r0, r4
	adds r0, #0x32
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	movs r0, #0x77
	strh r0, [r2, #0x00]
	adds r2, #0x02
	adds r1, r3, #0x0
	adds r1, #0xA8
	movs r0, #0x00
	cmp r3, #0x05
	beq _08105CE4
	cmp r3, #0x07
	beq _08105CE4
	cmp r3, #0x08
	beq _08105CE4
	cmp r3, #0x09
	bne _08105CE6
_08105CE4:
	movs r0, #0x01
_08105CE6:
	adds r0, #0x0B
	lsls r0, r0, #0x0C
	orrs r1, r0
	strh r1, [r2, #0x00]
	adds r2, #0x04
	adds r4, #0x01
	cmp r4, r5
	blt _08105C48
_08105CF6:
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r9
	str r2, [r0, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
