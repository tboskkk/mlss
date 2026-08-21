	.syntax unified
	.text

	thumb_func_start sub_81428FC
sub_81428FC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r1, #0x0
	mov r8, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r6, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r1, [r0, #0x30]
	adds r0, r6, #0x0
	adds r2, r5, #0x0
	bl sub_813A5C8
	ldr r0, _08142948 @ =0x081411BD
	mov r1, r8
	str r0, [r1, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08142948: .4byte sub_81411BC
