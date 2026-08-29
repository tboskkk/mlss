	.syntax unified
	.text

	thumb_func_start sub_803C66C
sub_803C66C:
	push {r4, lr}
	mov r12, r0
	lsls r1, r1, #0x02
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r4, [r1, #0x00]
	ldr r1, _0803C6C0 @ =0x00000352
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	lsrs r1, r2, #0x07
	movs r0, #0x01
	eors r1, r0
	adds r0, r4, #0x0
	adds r0, #0x10
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	bne _0803C6B2
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0803C6B2
	ldrb r0, [r4, #0x00]
	cmp r0, #0x0A
	bne _0803C6B8
_0803C6B2:
	ldr r0, _0803C6C4 @ =0x0839F970
	adds r0, r3, r0
	ldrb r3, [r0, #0x00]
_0803C6B8:
	adds r0, r3, #0x0
	pop {r4}
	pop {r1}
	bx r1
_0803C6C0: .4byte 0x00000352
_0803C6C4: .4byte 0x0839F970
