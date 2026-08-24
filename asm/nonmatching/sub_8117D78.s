	.syntax unified
	.text

	thumb_func_start sub_8117D78
sub_8117D78:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	ldr r0, _08117ED0 @ =0x08CDC398
	str r0, [r5, #0x18]
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
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08117DA6
	bl free_heap_8018D9C
_08117DA6:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08117DB6
	bl free_heap_8018D9C
_08117DB6:
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08117DC6
	bl free_heap_8018D9C
_08117DC6:
	movs r1, #0xFE
	lsls r1, r1, #0x01
	adds r4, r5, r1
	movs r6, #0x07
_08117DCE:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08117DD8
	bl free_heap_8018D9C
_08117DD8:
	subs r0, r4, #0x4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08117DE4
	bl free_heap_8018D9C
_08117DE4:
	adds r0, r4, #0x0
	subs r0, #0x08
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08117DF2
	bl free_heap_8018D9C
_08117DF2:
	adds r0, r4, #0x0
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08117E00
	bl free_heap_8018D9C
_08117E00:
	subs r4, #0x10
	subs r6, #0x04
	cmp r6, #0x00
	bge _08117DCE
	ldr r0, _08117ED4 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _08117ED8 @ =0x00000225
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08117E36
	ldr r1, _08117EDC @ =0x00000151
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _08117E36
	ldr r0, [r5, #0x28]
	cmp r0, #0x00
	beq _08117E36
	movs r1, #0x03
	bl sub_8059E5C
_08117E36:
	ldr r0, [r5, #0x24]
	cmp r0, #0x00
	beq _08117E42
	movs r1, #0x03
	bl sub_80FAFD8
_08117E42:
	bl sub_8021FD4
	adds r4, r5, #0x0
	adds r4, #0x88
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08117E5A
	bl free_heap_8018D9C
_08117E5A:
	movs r1, #0x96
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08117E6A
	bl free_heap_8018D9C
_08117E6A:
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08117E7A
	bl free_heap_8018D9C
_08117E7A:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08117E84
	bl free_heap_8018D9C
_08117E84:
	movs r1, #0xA2
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08117E94
	bl free_heap_8018D9C
_08117E94:
	movs r1, #0x88
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08117EA4
	bl free_heap_8018D9C
_08117EA4:
	ldr r0, [r5, #0x2C]
	bl free_heap_8018DA8
	ldr r0, [r5, #0x20]
	cmp r0, #0x00
	beq _08117EB6
	movs r1, #0x03
	bl sub_81166AC
_08117EB6:
	ldr r0, [r5, #0x1C]
	cmp r0, #0x00
	beq _08117EC2
	movs r1, #0x03
	bl process_remove
_08117EC2:
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl process_remove
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08117ED0: .4byte 0x08CDC398
_08117ED4: .4byte 0x03000FC0
_08117ED8: .4byte 0x00000225
_08117EDC: .4byte 0x00000151
