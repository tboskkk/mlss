	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810B754
sub_810B754:
	push {r4, r5, lr}
	add sp, #-0x00C
	movs r5, #0x00
	bl sub_810D00C
	ldr r4, _0810B7DC @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x12
	str r1, [sp, #0x004]
	movs r1, #0x03
	str r1, [sp, #0x008]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x0D
	bl sub_8084578
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80847B0
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x91
	str r1, [sp, #0x004]
	movs r1, #0x00
	movs r2, #0x07
	movs r3, #0x06
	bl sub_808520C
	ldr r0, _0810B7E0 @ =0x0810CC4D
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807D2D0
	adds r4, r0, #0x0
	movs r0, #0x18
	strh r0, [r4, #0x14]
	ldr r0, _0810B7E4 @ =0x0810CC0D
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807D2D0
	str r4, [r0, #0x08]
	ldr r0, _0810B7E8 @ =0x0810CBDD
	movs r1, #0x18
	movs r2, #0x00
	bl sub_807D2D0
	str r4, [r0, #0x08]
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_0810B7DC: .4byte 0x03000FD8
_0810B7E0: .4byte sub_810CC4C
_0810B7E4: .4byte sub_810CC0C
_0810B7E8: .4byte sub_810CBDC
	thumb_func_start sub_810B7EC
sub_810B7EC:
	push {r4, lr}
	ldr r4, _0810B860 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0810B85A
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0810B84C
	ldr r0, _0810B864 @ =0x0810CEC1
	movs r1, #0x00
	bl sub_807FF48
	ldr r2, [r4, #0x00]
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r1, r2, r3
	str r0, [r1, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, _0810B868 @ =0x0810CDFD
	ldr r2, _0810B86C @ =0x0810AB35
	movs r1, #0x86
	bl sub_807D2D0
	ldr r1, [r4, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	str r0, [r1, #0x0C]
	ldr r1, _0810B870 @ =0x0200001A
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x16]
	ldr r1, _0810B874 @ =0x02000048
	ldr r3, _0810B878 @ =0x00003F3F
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _0810B87C @ =0x00003F3B
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
_0810B84C:
	ldr r0, _0810B880 @ =0x0810B885
	movs r1, #0x88
	movs r2, #0x00
	bl sub_807D2D0
	movs r1, #0x18
	strh r1, [r0, #0x14]
_0810B85A:
	pop {r4}
	pop {r0}
	bx r0
_0810B860: .4byte 0x03000FD8
_0810B864: .4byte sub_810CEC0
_0810B868: .4byte sub_810CDFC
_0810B86C: .4byte sub_810AB34
_0810B870: .4byte 0x0200001A
_0810B874: .4byte 0x02000048
_0810B878: .4byte 0x00003F3F
_0810B87C: .4byte 0x00003F3B
_0810B880: .4byte sub_810B884
