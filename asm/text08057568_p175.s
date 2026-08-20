	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E8EA0
sub_80E8EA0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x14
	ldr r0, [r4, #0x00]
	adds r2, r0, r1
	ldrb r0, [r2, #0x0F]
	cmp r0, #0x00
	bne _080E8EB6
	movs r0, #0x00
	b _080E8EDA
_080E8EB6:
	ldrb r0, [r2, #0x0D]
	cmp r0, #0x00
	beq _080E8ED8
	subs r0, #0x01
	strb r0, [r2, #0x0D]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _080E8ED8
	ldr r4, [r4, #0x00]
	adds r4, r4, r1
	ldr r0, [r4, #0x00]
	bl sprite_hide_8021F20
	strb r5, [r4, #0x0F]
	movs r0, #0x00
	b _080E8EDA
_080E8ED8:
	movs r0, #0x01
_080E8EDA:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80E8EE0
sub_80E8EE0:
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x14
	ldr r4, [r0, #0x00]
	adds r4, r4, r1
	ldr r0, [r4, #0x00]
	bl sprite_hide_8021F20
	movs r0, #0x00
	strb r0, [r4, #0x0F]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80E8EFC
sub_80E8EFC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, [r5, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _080E8F16
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_080E8F16:
	pop {r4, r5}
	pop {r0}
	bx r0
