	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8065A9C
sub_8065A9C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08065AD8
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08065AB2
	adds r1, #0xFF
_08065AB2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065ABC
	adds r2, #0xFF
_08065ABC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065AC6
	adds r3, #0xFF
_08065AC6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08065AE0 @ =0x0000113D
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_08065AD8:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_08065AE0: .4byte 0x0000113D
	thumb_func_start sub_8065AE4
sub_8065AE4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _08065B14
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08065AFA
	bl sub_807C298
_08065AFA:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _08065B1C @ =0x0806589D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08065B14:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08065B1C: .4byte sub_806589C
	thumb_func_start sub_8065B20
sub_8065B20:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065B3E
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r0, _08065B44 @ =0x08065C5D
	str r0, [r4, #0x4C]
_08065B3E:
	pop {r4}
	pop {r0}
	bx r0
_08065B44: .4byte sub_8065C5C
	thumb_func_start sub_8065B48
sub_8065B48:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065B6A
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065B70 @ =0x08065511
	str r0, [r4, #0x4C]
	movs r0, #0x81
	bl stop_sfx_80195A8
_08065B6A:
	pop {r4}
	pop {r0}
	bx r0
_08065B70: .4byte sub_8065510
