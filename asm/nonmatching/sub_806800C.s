	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _08068046
	ldr r0, _08068050 @ =0x0806819D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08068026
	adds r1, #0xFF
_08068026:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08068030
	adds r2, #0xFF
_08068030:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806803A
	adds r3, #0xFF
_0806803A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08068054 @ =0x000010C6
	bl sub_80DF024
	movs r0, #0x00
_08068046:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08068050: .4byte sub_806819C
_08068054: .4byte 0x000010C6
