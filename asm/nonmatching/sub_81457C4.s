	.syntax unified
	.text

	thumb_func_start sub_81457C4
sub_81457C4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	ldrb r0, [r6, #0x08]
	cmp r0, #0x00
	beq _08145852
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081457EE
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _081457FA
_081457EE:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081457FA:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	ldrb r2, [r6, #0x09]
	movs r1, #0x01
	adds r0, r2, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _08145818
	ldr r0, [r3, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0x00
	ble _0814584E
_08145818:
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	bne _0814582A
	ldr r0, [r3, #0x0C]
	ldr r1, [r5, #0x0C]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0814584E
_0814582A:
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	bne _0814583C
	ldr r0, [r3, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0814584E
_0814583C:
	movs r0, #0x08
	ands r2, r0
	cmp r2, #0x00
	bne _08145852
	ldr r0, [r3, #0x0C]
	ldr r1, [r5, #0x0C]
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _08145852
_0814584E:
	movs r0, #0x00
	b _08145854
_08145852:
	movs r0, #0x01
_08145854:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
