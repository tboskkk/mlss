	.syntax unified
	.text

	thumb_func_start sub_8158E18
sub_8158E18:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08158E44
	ldr r1, _08158E3C @ =0x083CB0F0
	ldr r0, _08158E40 @ =0x03001018
	ldr r0, [r0, #0x00]
	movs r3, #0xF9
	lsls r3, r3, #0x05
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	adds r0, r0, r1
	ldrh r0, [r0, #0x1C]
	b _08158E5A
	.byte 0x00, 0x00
_08158E3C: .4byte 0x083CB0F0
_08158E40: .4byte 0x03001018
_08158E44:
	ldr r1, _08158E68 @ =0x083CB0F0
	ldr r0, _08158E6C @ =0x03001018
	ldr r0, [r0, #0x00]
	movs r3, #0xF9
	lsls r3, r3, #0x05
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	adds r0, r0, r1
	ldrh r0, [r0, #0x1C]
	subs r0, #0x64
_08158E5A:
	strh r0, [r2, #0x14]
	adds r1, r2, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	pop {r0}
	bx r0
_08158E68: .4byte 0x083CB0F0
_08158E6C: .4byte 0x03001018
