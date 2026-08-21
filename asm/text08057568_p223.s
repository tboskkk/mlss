	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8150388
sub_8150388:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	adds r5, r2, #0x0
	ldr r0, [sp, #0x01C]
	ldr r2, [sp, #0x020]
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	mov r8, r6
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r12, r3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r9, r2
	ldr r7, _081503D4 @ =0x00000283
	adds r0, r4, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x08
	cmp r1, r0
	bgt _081503EA
	cmp r5, r0
	bgt _081503D8
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, r6
	beq _081503E6
	cmp r0, r3
	beq _081503E6
	cmp r0, r2
	bne _0815040C
	b _081503E6
	.byte 0x00, 0x00
_081503D4: .4byte 0x00000283
_081503D8:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, r12
	bne _0815040C
_081503E6:
	movs r0, #0x01
	b _0815040E
_081503EA:
	cmp r5, r0
	bgt _081503FE
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, r9
	bne _0815040C
	b _081503E6
_081503FE:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, r8
	beq _081503E6
_0815040C:
	movs r0, #0x00
_0815040E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
