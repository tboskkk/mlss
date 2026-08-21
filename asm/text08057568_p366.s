	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8059D8C
sub_8059D8C:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, _08059DA4 @ =0x0300034C
	ldr r1, _08059DA8 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08059DB0
	ldr r2, _08059DAC @ =0x088D4808
	b _08059DB2
_08059DA4: .4byte 0x0300034C
_08059DA8: .4byte 0x00000888
_08059DAC: .4byte 0x088D4808
_08059DB0:
	ldr r2, _08059DD0 @ =0x088C8730
_08059DB2:
	ldr r1, _08059DD4 @ =0x083AAD68
	ldr r0, _08059DD8 @ =0x03000DE8
	ldrb r0, [r0, #0x05]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r0, r2, r0
	ldr r1, [r3, #0x78]
	movs r2, #0x78
	bl CpuFastSet
	pop {r0}
	bx r0
_08059DD0: .4byte 0x088C8730
_08059DD4: .4byte 0x083AAD68
_08059DD8: .4byte 0x03000DE8
