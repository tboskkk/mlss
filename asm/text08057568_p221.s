	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8142A10
sub_8142A10:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldrb r5, [r0, #0x0B]
	movs r4, #0x00
	cmp r4, r5
	bcs _08142A62
_08142A28:
	lsls r3, r4, #0x13
	movs r0, #0xC0
	lsls r0, r0, #0x0C
	adds r3, r3, r0
	lsrs r3, r3, #0x10
	mov r0, sp
	adds r1, r6, #0x0
	movs r2, #0x22
	bl sub_8139BB0
	mov r0, sp
	adds r1, r7, #0x0
	ldr r2, _08142A54 @ =0x00007FFF
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08142A58
	movs r0, #0x01
	b _08142A64
	.byte 0x00, 0x00
_08142A54: .4byte 0x00007FFF
_08142A58:
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	bcc _08142A28
_08142A62:
	movs r0, #0x00
_08142A64:
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
