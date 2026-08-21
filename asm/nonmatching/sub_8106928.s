	.syntax unified
	.text

	thumb_func_start sub_8106928
sub_8106928:
	push {lr}
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	adds r2, r0, #0x0
	mvns r0, r2
	lsrs r1, r0, #0x1F
	cmp r2, #0x5B
	ble _08106942
	adds r1, #0x01
_08106942:
	cmp r2, #0x61
	ble _08106948
	adds r1, #0x01
_08106948:
	movs r0, #0x80
	lsls r0, r0, #0x02
	bl sub_81059D8
	pop {r0}
	bx r0
