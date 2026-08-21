	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_804FA30
sub_804FA30:
	push {r4, r5, r6, lr}
	adds r4, r3, #0x0
	ldr r5, [sp, #0x010]
	ldr r6, [sp, #0x014]
	ldr r0, [r0, #0x40]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl get_coldef_ptr_by_xz
	adds r3, r0, #0x0
	ldr r1, [r3, #0x00]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1C
	lsls r2, r0, #0x0B
	lsrs r1, r1, #0x1F
	lsls r2, r1
	str r2, [r4, #0x00]
	ldrb r1, [r3, #0x02]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	beq _0804FA82
	ldr r0, [r3, #0x00]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x1C
	lsls r1, r1, #0x0B
	lsrs r0, r0, #0x1F
	lsls r1, r0
	adds r1, r2, r1
	str r1, [r5, #0x00]
	ldr r2, [r3, #0x00]
	lsls r0, r2, #0x08
	lsrs r0, r0, #0x1C
	lsls r0, r0, #0x0B
	lsrs r2, r2, #0x1F
	lsls r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x00]
	b _0804FA8A
_0804FA82:
	movs r0, #0x01
	negs r0, r0
	str r0, [r6, #0x00]
	str r0, [r5, #0x00]
_0804FA8A:
	adds r0, r3, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
