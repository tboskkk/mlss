	.syntax unified
	.text

	thumb_func_start sub_8108B50
sub_8108B50:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08108B68
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08108B76
_08108B68:
	ldr r0, _08108B7C @ =0x00000151
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08108B80 @ =0x08108B11
	str r0, [r4, #0x04]
_08108B76:
	pop {r4}
	pop {r0}
	bx r0
_08108B7C: .4byte 0x00000151
_08108B80: .4byte sub_8108B10
