	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8106790
sub_8106790:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _081067C8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r3, _081067CC @ =0x0000033F
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x10]
	ldrb r1, [r0, #0x12]
	movs r3, #0x08
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _081067C2
	strh r3, [r2, #0x10]
	ldr r1, _081067D0 @ =0x08106215
	str r1, [r2, #0x04]
	adds r0, r2, #0x0
	bl _call_via_r1
_081067C2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081067C8: .4byte 0x03000FD8
_081067CC: .4byte 0x0000033F
_081067D0: .4byte sub_8106214
	thumb_func_start sub_81067D4
sub_81067D4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _081067E8
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
	b _0810682E
_081067E8:
	ldr r5, _08106834 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	ldr r4, _08106838 @ =0x0000033F
	adds r0, r1, r4
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x20
	strh r0, [r6, #0x10]
	ldr r1, _0810683C @ =0x08106021
	str r1, [r6, #0x04]
	adds r0, r6, #0x0
	bl _call_via_r1
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	movs r2, #0xF3
	cmp r0, #0x00
	beq _08106824
	adds r2, #0x10
_08106824:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
_0810682E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08106834: .4byte 0x03000FD8
_08106838: .4byte 0x0000033F
_0810683C: .4byte sub_8106020
