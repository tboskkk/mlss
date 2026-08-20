	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_808201C
sub_808201C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	mov r8, r0
	bl sub_8082B00
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x00
	bne _0808206E
	ldr r5, _0808207C @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r6, [r0, #0x00]
	ldr r0, [r6, #0x48]
	ldr r0, [r0, #0x08]
	bl sprite_heap_free
	ldr r1, _08082080 @ =0x00002091
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	adds r6, r0, #0x0
	str r7, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	str r6, [r0, #0x00]
	ldr r0, _08082084 @ =0x08081189
	mov r1, r8
	str r0, [r1, #0x04]
_0808206E:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808207C: .4byte 0x03000FD8
_08082080: .4byte 0x00002091
_08082084: .4byte sub_8081188
	thumb_func_start sub_8082088
sub_8082088:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r7, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08082142
	movs r5, #0x00
_0808209A:
	ldr r0, _0808214C @ =0x00002084
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	ldr r6, _08082150 @ =0x03000FD8
	ldr r1, [r6, #0x00]
	lsls r2, r5, #0x02
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r4, r5, #0x1
	ldr r0, _0808214C @ =0x00002084
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	ldr r1, [r6, #0x00]
	lsls r4, r4, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r5, #0x2
	ldr r0, _0808214C @ =0x00002084
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	ldr r1, [r6, #0x00]
	lsls r4, r4, #0x02
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r4, r5, #0x3
	ldr r0, _0808214C @ =0x00002084
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	ldr r1, [r6, #0x00]
	lsls r4, r4, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r4
	str r0, [r1, #0x00]
	adds r5, #0x04
	cmp r5, #0x07
	ble _0808209A
	movs r1, #0xE0
	lsls r1, r1, #0x07
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	adds r5, r0, #0x0
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x00]
	str r5, [r0, #0x00]
	ldr r0, _08082154 @ =0x0808201D
	str r0, [r7, #0x04]
_08082142:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808214C: .4byte 0x00002084
_08082150: .4byte 0x03000FD8
_08082154: .4byte sub_808201C
