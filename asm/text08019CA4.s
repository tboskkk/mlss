	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_801A2A0
sub_801A2A0:
	push {r4, r5, lr}
	ldr r5, _0801A300 @ =0x03000D0C
	ldr r2, [r5, #0x00]
	cmp r2, #0x00
	beq _0801A32C
	ldrb r4, [r2, #0x00]
	cmp r4, #0x00
	beq _0801A310
	ldrb r0, [r2, #0x01]
	cmp r0, #0x00
	beq _0801A32C
	ldrb r0, [r2, #0x06]
	cmp r0, #0x00
	beq _0801A32C
	movs r0, #0x02
	negs r0, r0
	str r0, [r2, #0x18]
	ldr r1, [r2, #0x28]
	ldr r0, [r2, #0x24]
	str r0, [r2, #0x28]
	str r1, [r2, #0x24]
	ldrb r0, [r2, #0x04]
	cmp r0, #0x00
	beq _0801A2E0
	ldr r1, [r2, #0x20]
	ldr r0, [r2, #0x1C]
	str r0, [r2, #0x20]
	str r1, [r2, #0x1C]
	movs r1, #0x00
	strb r1, [r2, #0x04]
	ldr r0, [r5, #0x00]
	str r1, [r0, #0x14]
_0801A2E0:
	ldr r1, [r5, #0x00]
	ldr r2, _0801A304 @ =0x04000128
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x07]
	ldr r0, _0801A308 @ =0x0000FEFE
	strh r0, [r2, #0x02]
	ldrh r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _0801A30C @ =0x0400010E
	movs r0, #0xC0
	strh r0, [r1, #0x00]
	b _0801A32C
_0801A300: .4byte 0x03000D0C
_0801A304: .4byte 0x04000128
_0801A308: .4byte 0x0000FEFE
_0801A30C: .4byte 0x0400010E
_0801A310:
	ldrb r0, [r2, #0x09]
	cmp r0, #0x00
	bne _0801A328
	ldr r3, _0801A334 @ =0x04000208
	strh r4, [r3, #0x00]
	ldr r2, _0801A338 @ =0x03007FF8
	ldrh r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
_0801A328:
	ldr r0, [r5, #0x00]
	strb r4, [r0, #0x09]
_0801A32C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801A334: .4byte 0x04000208
_0801A338: .4byte 0x03007FF8
	.byte 0x00, 0xB5, 0x04, 0x48, 0x01, 0x68, 0x08, 0x78, 0x00, 0x28, 0x01, 0xD0, 0x01, 0x20, 0x88, 0x71
	.byte 0x01, 0xBC, 0x00, 0x47, 0x0C, 0x0D, 0x00, 0x03
