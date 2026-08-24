	.syntax unified
	.text

	thumb_func_start sub_81232E0
sub_81232E0:
	lsls r0, r0, #0x10
	ldr r1, _08123300 @ =0x083C03E8
	lsrs r0, r0, #0x0E
	adds r0, r0, r1
	ldr r1, _08123304 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_08123300: .4byte dword_83C03E8 @ =0x083C03E8
_08123304: .4byte 0x0300034C
