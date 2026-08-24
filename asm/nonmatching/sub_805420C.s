	.syntax unified
	.text

	thumb_func_start sub_805420C
sub_805420C:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r1, _08054250 @ =0x083A2918
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r1, [r1, #0x02]
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsrs r0, r0, #0x19
	movs r2, #0x0F
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsrs r1, r1, #0x19
	movs r3, #0x0A
	subs r3, r3, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r4, #0x0
	adds r0, #0x48
	ldr r1, [r4, #0x40]
	str r6, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r4, #0xC8
	lsls r4, r4, #0x08
	str r4, [sp, #0x008]
	bl generate_window_bg_8051B98
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08054250: .4byte 0x083A2918
