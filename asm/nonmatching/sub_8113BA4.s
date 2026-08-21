	.syntax unified
	.text

	thumb_func_start sub_8113BA4
sub_8113BA4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08113BCE
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08113BCE
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x86
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	b _08113CBA
_08113BCE:
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r2, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r1, r2, r3
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _08113BE4
	ldr r6, _08113C48 @ =0x000080FF
	adds r1, r2, r6
_08113BE4:
	asrs r0, r1, #0x08
	movs r2, #0xFF
	ldr r1, _08113C4C @ =0x08198584
	ands r0, r2
	lsls r2, r0, #0x01
	adds r1, r2, r1
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bge _08113BFA
	adds r0, #0x3F
_08113BFA:
	asrs r0, r0, #0x06
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	movs r6, #0xA0
	lsls r6, r6, #0x07
	adds r1, r1, r6
	str r1, [r4, #0x10]
	ldr r0, _08113C50 @ =0x08198504
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08113C18
	adds r0, #0x3F
_08113C18:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x04
	movs r2, #0xD8
	lsls r2, r2, #0x07
	adds r0, r0, r2
	str r0, [r4, #0x14]
	adds r7, r5, #0x0
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x28]
	ldr r6, _08113C54 @ =0x00000113
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08113C5C
	ldr r1, _08113C58 @ =0x08201164
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r6, #0x00
	ldsh r0, [r2, r6]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r3, r0
	b _08113C6E
_08113C48: .4byte 0x000080FF
_08113C4C: .4byte 0x08198584
_08113C50: .4byte 0x08198504
_08113C54: .4byte 0x00000113
_08113C58: .4byte 0x08201164
_08113C5C:
	ldr r1, _08113CC4 @ =0x08201164
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r6, #0x00
	ldsh r0, [r2, r6]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	subs r0, r3, r0
_08113C6E:
	adds r6, r2, #0x0
	str r0, [r7, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, _08113CC8 @ =0xFFFFC000
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	cmp r0, r1
	bls _08113CBA
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08113C88
	adds r2, #0xFF
_08113C88:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08113C92
	adds r3, #0xFF
_08113C92:
	asrs r3, r3, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x20
	negs r1, r1
	bl sub_808843C
	ldr r1, _08113CCC @ =0x0820114C
	movs r2, #0x00
	ldsh r0, [r6, r2]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_80880C4
	ldr r0, _08113CD0 @ =0x08113E21
	str r0, [r4, #0x4C]
_08113CBA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08113CC4: .4byte 0x08201164
_08113CC8: .4byte 0xFFFFC000
_08113CCC: .4byte 0x0820114C
_08113CD0: .4byte sub_8113E20
