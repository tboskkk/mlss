	.syntax unified
	.text

	thumb_func_start sub_812AA78
sub_812AA78:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _0812AAD8 @ =0x08CDC3F8
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
	ldr r0, _0812AADC @ =0x0600D000
	bl sub_80184F4
	bl sub_8021FD4
	ldr r0, [r4, #0x24]
	cmp r0, #0x00
	beq _0812AAAC
	movs r1, #0x03
	bl sub_80FAFD8
_0812AAAC:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	beq _0812AAB6
	bl free_heap_8018D9C
_0812AAB6:
	adds r0, r4, #0x0
	adds r0, #0xBD
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0812AAE0
	ldr r0, [r4, #0x58]
	cmp r0, #0x00
	beq _0812AACA
	bl free_heap_8018D9C
_0812AACA:
	ldr r0, [r4, #0x54]
	cmp r0, #0x00
	beq _0812AAD4
	bl free_heap_8018D9C
_0812AAD4:
	ldr r0, [r4, #0x40]
	b _0812AB0E
_0812AAD8: .4byte 0x08CDC3F8
_0812AADC: .4byte 0x0600D000
_0812AAE0:
	adds r0, r4, #0x0
	adds r0, #0xBE
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0812AB18
	ldr r0, [r4, #0x50]
	cmp r0, #0x00
	beq _0812AAF8
	bl free_heap_8018D9C
_0812AAF8:
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _0812AB02
	bl free_heap_8018D9C
_0812AB02:
	ldr r0, [r4, #0x48]
	cmp r0, #0x00
	beq _0812AB0C
	bl free_heap_8018D9C
_0812AB0C:
	ldr r0, [r4, #0x44]
_0812AB0E:
	cmp r0, #0x00
	beq _0812AB2C
	bl free_heap_8018D9C
	b _0812AB2C
_0812AB18:
	ldr r0, [r4, #0x58]
	cmp r0, #0x00
	beq _0812AB22
	bl free_heap_8018D9C
_0812AB22:
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	beq _0812AB2C
	bl free_heap_8018D9C
_0812AB2C:
	ldr r0, [r4, #0x28]
	bl free_heap_8018DA8
	movs r5, #0x00
	str r5, [r4, #0x28]
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _0812AB42
	movs r1, #0x03
	bl sub_81166AC
_0812AB42:
	str r5, [r4, #0x20]
	ldr r0, [r4, #0x1C]
	cmp r0, #0x00
	beq _0812AB50
	movs r1, #0x03
	bl process_remove
_0812AB50:
	str r5, [r4, #0x1C]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl process_remove
	pop {r4, r5, r6}
	pop {r0}
	bx r0
