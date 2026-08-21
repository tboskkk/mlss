	.syntax unified
	.text

	thumb_func_start sub_807F4FC
sub_807F4FC:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x34]
	cmp r0, #0x00
	bne _0807F528
	ldr r0, _0807F52C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x54]
	str r0, [r2, #0x34]
	str r2, [r1, #0x54]
	ldr r0, _0807F530 @ =0x0810DD7D
	str r0, [r2, #0x58]
	ldr r0, _0807F534 @ =0x08086C65
	str r0, [r2, #0x5C]
	ldr r0, _0807F538 @ =0x08087125
	str r0, [r2, #0x60]
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0807F528:
	pop {r0}
	bx r0
_0807F52C: .4byte 0x03000FD8
_0807F530: .4byte sub_810DD7C
_0807F534: .4byte sub_8086C64
_0807F538: .4byte sub_8087124
