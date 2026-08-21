	.syntax unified
	.text

	thumb_func_start sub_81398FC
sub_81398FC:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139930 @ =0x0813B381
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _08139934 @ =0x08139509
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	movs r2, #0xD6
	lsls r2, r2, #0x01
	add r2, r12
	ldr r1, _08139938 @ =0x081396D9
	str r1, [r2, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
_08139930: .4byte sub_813B380
_08139934: .4byte sub_8139508
_08139938: .4byte sub_81396D8
