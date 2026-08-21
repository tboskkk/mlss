	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810591C
sub_810591C:
	push {r4, r5, r6, r7, lr}
	ldr r0, _08105944 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	bne _08105940
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	bne _08105940
	ldrb r2, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _08105948
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x0B]
_08105940:
	movs r0, #0x00
	b _081059CE
_08105944: .4byte 0x03000FD8
_08105948:
	movs r7, #0x00
	adds r3, r1, #0x0
	adds r3, #0x58
	ldr r5, _081059D4 @ =0x00000111
	movs r6, #0x01
_08105952:
	ldr r2, [r3, #0x00]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x38
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	ldr r2, [r3, #0x04]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	ldr r2, [r3, #0x08]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	ldr r2, [r3, #0x0C]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r3, #0x10
	adds r7, #0x04
	cmp r7, #0x07
	ble _08105952
	movs r0, #0x01
_081059CE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_081059D4: .4byte 0x00000111
