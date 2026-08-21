	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8106954
sub_8106954:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0810698C
	cmp r2, #0x00
	bne _0810697E
	adds r0, #0x2A
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x1B
	lsrs r4, r4, #0x1B
	adds r4, r4, r1
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x1F
	bl sub_81DD77C
	cmp r4, r0
	ble _0810698C
	ldrh r0, [r5, #0x2A]
	b _08106980
_0810697E:
	ldrh r0, [r5, #0x28]
_08106980:
	lsrs r0, r0, #0x05
	cmp r0, #0x00
	beq _0810698C
	movs r1, #0x01
	bl sub_81059D8
_0810698C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
