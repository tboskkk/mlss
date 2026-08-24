	push {r4, lr}
	ldr r4, _080E4FE8 @ =0x03000F94
	ldr r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
	ldr r0, _080E4FEC @ =0x03000FA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _080E5004
	cmp r0, #0x01
	bgt _080E4FF0
	cmp r0, #0x00
	beq _080E4FFA
	b _080E5028
_080E4FE8: .4byte 0x03000F94
_080E4FEC: .4byte 0x03000FA0
_080E4FF0:
	cmp r0, #0x02
	beq _080E500C
	cmp r0, #0x03
	beq _080E5014
	b _080E5028
_080E4FFA:
	ldr r1, _080E5000 @ =0x040000B0
	b _080E5016
	.byte 0x00, 0x00
_080E5000: .4byte 0x040000B0
_080E5004:
	ldr r1, _080E5008 @ =0x040000BC
	b _080E5016
_080E5008: .4byte 0x040000BC
_080E500C:
	ldr r1, _080E5010 @ =0x040000C8
	b _080E5016
_080E5010: .4byte 0x040000C8
_080E5014:
	ldr r1, _080E5044 @ =0x040000D4
_080E5016:
	ldrh r2, [r1, #0x0A]
	ldr r0, _080E5048 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r2, [r1, #0x0A]
	ldr r0, _080E504C @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
_080E5028:
	ldr r0, _080E5050 @ =0x03000F9C
	ldr r1, [r0, #0x00]
	movs r0, #0x02
	bl sub_8018B78
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldrh r1, [r2, #0x00]
	ldr r0, _080E5054 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_080E5044: .4byte 0x040000D4
_080E5048: .4byte 0x0000C5FF
_080E504C: .4byte 0x00007FFF
_080E5050: .4byte 0x03000F9C
_080E5054: .4byte 0x00009FFF
