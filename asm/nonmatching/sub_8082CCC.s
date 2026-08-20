	.syntax unified
	.text

	thumb_func_start sub_8082CCC
sub_8082CCC:
	push {r4, r5, r6, lr}
	ldr r5, [sp, #0x010]
	subs r5, r3, r5
	ldr r6, _08082CF8 @ =0x00000774
	adds r4, r0, r6
	ldrh r4, [r4, #0x00]
	subs r2, r2, r4
	strh r2, [r1, #0x00]
	ldr r2, _08082CFC @ =0x00000776
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	subs r5, r5, r0
	strh r5, [r1, #0x02]
	movs r6, #0xF8
	lsls r6, r6, #0x01
	adds r0, r6, #0x0
	subs r0, r0, r3
	strh r0, [r1, #0x0E]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082CF8: .4byte 0x00000774
_08082CFC: .4byte 0x00000776
