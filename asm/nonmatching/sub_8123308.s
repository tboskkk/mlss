	.syntax unified
	.text

	thumb_func_start sub_8123308
sub_8123308:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08123334 @ =0x083C03E8
	ldr r2, _08123338 @ =room_props_table
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r3
	ldr r0, _0812333C @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bx lr
_08123334: .4byte dword_83C03E8 @ =0x083C03E8
_08123338: .4byte room_props_table
_0812333C: .4byte 0x0300034C
