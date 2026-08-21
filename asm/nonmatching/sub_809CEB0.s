	.syntax unified
	.text

	thumb_func_start sub_809CEB0
sub_809CEB0:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809CFBC
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x8B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x8C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0809CEEA
	adds r1, #0xFF
_0809CEEA:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0809CEF4
	adds r2, #0xFF
_0809CEF4:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0809CEFE
	adds r3, #0xFF
_0809CEFE:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809CFC4 @ =0x00001E47
	bl sub_80DF024
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _0809CF12
	adds r0, #0xFF
_0809CF12:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x15
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0809CF20
	adds r0, #0xFF
_0809CF20:
	asrs r0, r0, #0x08
	adds r3, r0, #0x1
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0809CF2C
	adds r0, #0xFF
_0809CF2C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0809CFC8 @ =0x0000403D
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	bl sub_807FA50
	str r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r1, [r0, #0x04]
	adds r1, r4, #0x0
	adds r1, #0x0C
	str r1, [r0, #0x08]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r1, #0x78
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x26
	movs r0, #0x02
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, _0809CFCC @ =0x0809CFD5
	str r0, [r4, #0x4C]
	ldr r0, _0809CFD0 @ =0x0809D24D
	str r0, [r5, #0x4C]
_0809CFBC:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_0809CFC4: .4byte 0x00001E47
_0809CFC8: .4byte 0x0000403D
_0809CFCC: .4byte sub_809CFD4
_0809CFD0: .4byte sub_809D24C
