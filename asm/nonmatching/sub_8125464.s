	.syntax unified
	.text

	thumb_func_start sub_8125464
sub_8125464:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _081254F0 @ =0x08CDC3B8
	str r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x48
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x06
	strh r1, [r0, #0x00]
	ldr r2, _081254F4 @ =0x0300034C
	ldr r0, _081254F8 @ =0x00000888
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	subs r1, #0x38
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081254AE
	movs r1, #0x03
	bl sub_80FAFD8
_081254AE:
	bl sub_8021FD4
	ldr r0, [r4, #0x54]
	cmp r0, #0x00
	beq _081254BC
	bl free_heap_8018D9C
_081254BC:
	movs r1, #0xAE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081254CE
	movs r1, #0x03
	bl sub_81166AC
_081254CE:
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081254E0
	movs r1, #0x03
	bl process_remove
_081254E0:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081254F0: .4byte 0x08CDC3B8
_081254F4: .4byte 0x0300034C
_081254F8: .4byte 0x00000888
