	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8142D10
sub_8142D10:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08142D5E
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	cmp r6, #0x00
	beq _08142D36
	str r4, [r6, #0x00]
_08142D36:
	add r0, sp, #0x004
	adds r1, r7, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142D62
_08142D5E:
	movs r0, #0x00
	b _08142D64
_08142D62:
	movs r0, #0x01
_08142D64:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_8142D6C
sub_8142D6C:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	mov r0, sp
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	mov r0, sp
	movs r1, #0x08
	ldsh r2, [r0, r1]
	movs r1, #0x0A
	ldsh r3, [r0, r1]
	adds r1, r4, #0x0
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142DA0
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142DA4
_08142DA0:
	ldr r0, _08142DAC @ =0x0813E05D
	str r0, [r5, #0x00]
_08142DA4:
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_08142DAC: .4byte sub_813E05C
