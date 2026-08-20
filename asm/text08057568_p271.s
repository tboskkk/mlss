	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E9AF8
sub_80E9AF8:
	push {lr}
	ldr r0, _080E9B08 @ =0x03000FC4
	ldr r0, [r0, #0x00]
	bl free_heap_memory_8018C68
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E9B08: .4byte 0x03000FC4
	thumb_func_start sub_80E9B0C
sub_80E9B0C:
	push {r4, r5, r6, lr}
	ldr r6, _080E9B38 @ =0x03000FC4
	ldr r4, _080E9B3C @ =0x08001010
	ldr r5, _080E9B40 @ =0x08000F9C
	subs r4, r4, r5
	ldr r2, _080E9B44 @ =0x08200198
	movs r0, #0x00
	adds r1, r4, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r6, #0x00]
	lsls r4, r4, #0x0A
	lsrs r4, r4, #0x0B
	adds r0, r5, #0x0
	adds r2, r4, #0x0
	bl CpuSet
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E9B38: .4byte 0x03000FC4
_080E9B3C: .4byte 0x08001010
_080E9B40: .4byte 0x08000F9C
_080E9B44: .4byte 0x08200198
	.byte 0x00, 0xB5, 0x00, 0x04, 0x01, 0x0C, 0x0A, 0x48, 0x81, 0x42, 0x17, 0xD8, 0x09, 0x4A, 0x88, 0x18
	.byte 0x00, 0x04, 0x09, 0x49, 0x09, 0x68, 0xC0, 0x0B, 0xE5, 0x22, 0x92, 0x00, 0x89, 0x18, 0x09, 0x18
	.byte 0x08, 0x88, 0x00, 0x28, 0x02, 0xD0, 0x01, 0x38, 0x00, 0x04, 0x00, 0x0C, 0x08, 0x80, 0x06, 0xE0
	.byte 0x17, 0x1D, 0x00, 0x00, 0x28, 0xE3, 0xFF, 0xFF, 0xC0, 0x0F, 0x00, 0x03, 0x00, 0x20, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00
	thumb_func_start sub_80E9B8C
sub_80E9B8C:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080E9BC0 @ =0x00001D17
	cmp r1, r0
	bhi _080E9BD0
	ldr r0, _080E9BC4 @ =0xFFFFE328
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _080E9BC8 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	lsrs r1, r1, #0x0F
	movs r2, #0xE5
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r1, r0, r1
	ldrh r2, [r1, #0x00]
	ldr r0, _080E9BCC @ =0x0000FFFE
	cmp r2, r0
	bhi _080E9BBA
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080E9BBA:
	strh r2, [r1, #0x00]
	adds r0, r2, #0x0
	b _080E9BD2
_080E9BC0: .4byte 0x00001D17
_080E9BC4: .4byte 0xFFFFE328
_080E9BC8: .4byte 0x03000FC0
_080E9BCC: .4byte 0x0000FFFE
_080E9BD0:
	movs r0, #0x00
_080E9BD2:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80E9BD8
sub_80E9BD8:
	push {r4, lr}
	adds r4, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x0F
	bgt _080E9BEC
	lsls r0, r2, #0x02
	adds r0, r0, r1
	str r3, [r0, #0x00]
	b _080E9C08
_080E9BEC:
	cmp r2, #0x34
	bgt _080E9BFA
	lsls r0, r2, #0x02
	adds r0, r0, r4
	subs r0, #0x40
	str r3, [r0, #0x00]
	b _080E9C08
_080E9BFA:
	ldr r0, _080E9C10 @ =0x03000FC0
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x0
	subs r0, #0x35
	lsls r0, r0, #0x02
	adds r1, r1, r0
	str r3, [r1, #0x00]
_080E9C08:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E9C10: .4byte 0x03000FC0
	thumb_func_start sub_80E9C14
sub_80E9C14:
	push {lr}
	adds r3, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x0F
	bgt _080E9C26
	lsls r0, r2, #0x02
	adds r0, r0, r1
	b _080E9C46
_080E9C26:
	cmp r2, #0x34
	ble _080E9C40
	ldr r0, _080E9C3C @ =0x03000FC0
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x0
	subs r0, #0x35
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	b _080E9C48
	.byte 0x00, 0x00
_080E9C3C: .4byte 0x03000FC0
_080E9C40:
	lsls r0, r2, #0x02
	adds r0, r0, r3
	subs r0, #0x40
_080E9C46:
	ldr r0, [r0, #0x00]
_080E9C48:
	pop {r1}
	bx r1
	thumb_func_start sub_80E9C4C
sub_80E9C4C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r2, #0x0
	adds r6, r3, #0x0
	ldr r0, [sp, #0x010]
	ldr r3, [sp, #0x014]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x3C
	bgt _080E9C68
	adds r0, r4, #0x0
	bl sub_80E9BD8
	b _080E9C9C
_080E9C68:
	adds r0, r2, #0x0
	subs r0, #0x3D
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r0, _080E9C88 @ =0x00001B8F
	cmp r1, r0
	bgt _080E9C8C
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_80E9958
	b _080E9C9C
	.byte 0x00, 0x00
_080E9C88: .4byte 0x00001B8F
_080E9C8C:
	ldr r0, _080E9CA4 @ =0x00001D17
	cmp r1, r0
	bgt _080E9C9C
	lsrs r0, r2, #0x10
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x10
	bl sub_80E9A6C
_080E9C9C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E9CA4: .4byte 0x00001D17
	thumb_func_start sub_80E9CA8
sub_80E9CA8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r2, #0x0
	ldr r0, [sp, #0x00C]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x3C
	bgt _080E9CC0
	adds r0, r4, #0x0
	bl sub_80E9C14
	b _080E9CFE
_080E9CC0:
	adds r0, r2, #0x0
	subs r0, #0x3D
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r0, _080E9CE0 @ =0x00001B8F
	cmp r1, r0
	bgt _080E9CE4
	lsrs r2, r2, #0x10
	adds r0, r5, #0x0
	adds r1, r3, #0x0
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080E9CFE
	.byte 0x00, 0x00
_080E9CE0: .4byte 0x00001B8F
_080E9CE4:
	ldr r0, _080E9CF0 @ =0x00001D17
	cmp r1, r0
	ble _080E9CF4
	movs r0, #0x00
	b _080E9CFE
	.byte 0x00, 0x00
_080E9CF0: .4byte 0x00001D17
_080E9CF4:
	lsrs r0, r2, #0x10
	bl sub_80E99E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080E9CFE:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80E9D04
sub_80E9D04:
	push {r4, lr}
	ldr r4, _080E9D18 @ =0x03000FC0
	ldr r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_080E9D18: .4byte 0x03000FC0
	thumb_func_start sub_80E9D1C
sub_80E9D1C:
	push {r4, r5, lr}
	ldr r4, _080E9D44 @ =0x03000FC0
	movs r5, #0xAE
	lsls r5, r5, #0x03
	ldr r2, _080E9D48 @ =0x08200190
	movs r0, #0x01
	adds r1, r5, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	ldr r0, _080E9D4C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	pop {r4, r5}
	pop {r0}
	bx r0
_080E9D44: .4byte 0x03000FC0
_080E9D48: .4byte 0x08200190
_080E9D4C: .4byte 0x03001034
	thumb_func_start sub_80E9D50
sub_80E9D50:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r10, r1
	adds r5, r3, #0x0
	ldr r6, [r5, #0x04]
	ldr r1, [r5, #0x0C]
	lsls r7, r1, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ands r7, r0
	movs r0, #0x03
	ands r1, r0
	orrs r7, r1
	ldr r1, _080E9DB0 @ =0x083BA4B4
	ldr r2, [r5, #0x08]
	ldrb r0, [r5, #0x08]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	mov r9, r0
	asrs r4, r2, #0x08
	movs r0, #0xFF
	mov r8, r0
	mov r2, r8
	ands r4, r2
	cmp r4, #0x00
	bne _080E9D9E
	ldr r1, [r5, #0x14]
	mov r0, r10
	bl sub_80E9310
	lsrs r4, r0, #0x10
	mov r0, r8
	ands r4, r0
_080E9D9E:
	adds r0, r4, #0x2
	lsls r0, r0, #0x02
	movs r1, #0x70
	subs r2, r1, r0
	cmp r2, #0x00
	bge _080E9DB4
	movs r2, #0x0A
	b _080E9DC0
	.byte 0x00, 0x00
_080E9DB0: .4byte 0x083BA4B4
_080E9DB4:
	lsls r1, r4, #0x03
	movs r0, #0xE8
	subs r0, r0, r1
	cmp r2, r0
	ble _080E9DC0
	adds r2, r0, #0x0
_080E9DC0:
	cmp r6, #0x00
	bge _080E9DC8
	movs r6, #0x0A
	b _080E9DD6
_080E9DC8:
	mov r0, r9
	lsls r1, r0, #0x03
	movs r0, #0x94
	subs r0, r0, r1
	cmp r6, r0
	ble _080E9DD6
	adds r6, r0, #0x0
_080E9DD6:
	ldrb r1, [r5, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r3, r6, #0x10
	asrs r3, r3, #0x10
	str r4, [sp, #0x000]
	mov r4, r9
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	str r7, [sp, #0x00C]
	ldrb r0, [r5, #0x10]
	str r0, [sp, #0x010]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x014]
	mov r0, r10
	bl sub_80E5BCC
	movs r0, #0x01
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80E9E10
sub_80E9E10:
	push {r4, lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080E9E60
	cmp r2, #0x01
	bgt _080E9E22
	cmp r2, #0x00
	beq _080E9E2C
	b _080E9ED2
_080E9E22:
	cmp r2, #0x02
	beq _080E9E8C
	cmp r2, #0x03
	beq _080E9EA8
	b _080E9ED2
_080E9E2C:
	ldr r3, _080E9E5C @ =0x03000D44
	ldr r1, [r3, #0x00]
	adds r1, #0x28
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [r3, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x1F
	lsrs r1, r1, #0x1F
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	orrs r0, r1
	cmp r0, #0x00
	bne _080E9ED2
	adds r0, r3, #0x0
	bl process_disable
	b _080E9ED2
	.byte 0x00, 0x00
_080E9E5C: .4byte 0x03000D44
_080E9E60:
	ldr r4, _080E9E88 @ =0x03000D44
	ldr r1, [r4, #0x00]
	adds r1, #0x28
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x20]
	adds r2, r0, #0x0
	adds r2, #0x28
	ldrb r2, [r2, #0x00]
	lsls r2, r2, #0x1A
	lsrs r2, r2, #0x1C
	bl sub_801BC40
	ldr r0, [r4, #0x00]
	bl process_enable
	b _080E9ED2
_080E9E88: .4byte 0x03000D44
_080E9E8C:
	ldr r3, _080E9EA4 @ =0x03000D44
	ldr r1, [r3, #0x00]
	adds r1, #0x28
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	bl process_enable
	b _080E9ED2
_080E9EA4: .4byte 0x03000D44
_080E9EA8:
	ldr r3, _080E9EDC @ =0x03000D44
	ldr r1, [r3, #0x00]
	adds r1, #0x28
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [r3, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x1F
	lsrs r1, r1, #0x1F
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	orrs r0, r1
	cmp r0, #0x00
	bne _080E9ED2
	adds r0, r3, #0x0
	bl process_disable
_080E9ED2:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080E9EDC: .4byte 0x03000D44
	thumb_func_start sub_80E9EE0
sub_80E9EE0:
	push {r4, r5, lr}
	adds r4, r2, #0x0
	ldr r3, [r4, #0x00]
	movs r0, #0x02
	ands r0, r3
	cmp r0, #0x00
	bne _080E9F84
	ldr r0, _080E9F08 @ =0x03000FF4
	lsls r1, r3, #0x04
	subs r1, r1, r3
	lsls r1, r1, #0x02
	ldr r0, [r0, #0x00]
	adds r2, r0, r1
	adds r4, #0x04
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9F0C
	cmp r0, #0x01
	beq _080E9F48
	b _080EA056
_080E9F08: .4byte 0x03000FF4
_080E9F0C:
	ldrh r3, [r2, #0x0E]
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9F1A
	cmp r0, #0x01
	beq _080E9F32
	b _080E9F44
_080E9F1A:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0x12]
	cmp r0, r1
	ble _080E9F44
	adds r3, r1, #0x0
	b _080E9F44
_080E9F32:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bgt _080E9F44
	movs r3, #0x01
_080E9F44:
	strh r3, [r2, #0x0E]
	b _080EA056
_080E9F48:
	ldrh r3, [r2, #0x14]
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9F56
	cmp r0, #0x01
	beq _080E9F6E
	b _080E9F80
_080E9F56:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0x18]
	cmp r0, r1
	ble _080E9F80
	adds r3, r1, #0x0
	b _080E9F80
_080E9F6E:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bge _080E9F80
	movs r3, #0x00
_080E9F80:
	strh r3, [r2, #0x14]
	b _080EA056
_080E9F84:
	ldr r0, _080E9F98 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r4, #0x04
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9F9C
	cmp r0, #0x01
	beq _080E9FFC
	b _080EA056
	.byte 0x00, 0x00
_080E9F98: .4byte 0x03000FF4
_080E9F9C:
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080E9FA8
	cmp r0, #0x01
	beq _080E9FD4
	b _080EA056
_080E9FA8:
	movs r5, #0x02
_080E9FAA:
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x0E]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0x12]
	cmp r0, r1
	ble _080E9FBE
	adds r3, r1, #0x0
_080E9FBE:
	strh r3, [r2, #0x0E]
	lsls r0, r5, #0x10
	ldr r1, _080E9FD0 @ =0xFFFF0000
	adds r0, r0, r1
	adds r2, #0x3C
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080E9FAA
	b _080EA056
_080E9FD0: .4byte 0xFFFF0000
_080E9FD4:
	movs r5, #0x02
_080E9FD6:
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x0E]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bgt _080E9FE6
	movs r3, #0x01
_080E9FE6:
	strh r3, [r2, #0x0E]
	lsls r0, r5, #0x10
	ldr r1, _080E9FF8 @ =0xFFFF0000
	adds r0, r0, r1
	adds r2, #0x3C
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080E9FD6
	b _080EA056
_080E9FF8: .4byte 0xFFFF0000
_080E9FFC:
	ldm r4!, {r0}
	cmp r0, #0x00
	beq _080EA008
	cmp r0, #0x01
	beq _080EA034
	b _080EA056
_080EA008:
	movs r5, #0x02
_080EA00A:
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0x18]
	cmp r0, r1
	ble _080EA01E
	adds r3, r1, #0x0
_080EA01E:
	strh r3, [r2, #0x14]
	lsls r0, r5, #0x10
	ldr r1, _080EA030 @ =0xFFFF0000
	adds r0, r0, r1
	adds r2, #0x3C
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080EA00A
	b _080EA056
_080EA030: .4byte 0xFFFF0000
_080EA034:
	movs r5, #0x02
_080EA036:
	ldr r1, [r4, #0x00]
	ldrh r0, [r2, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bge _080EA046
	movs r3, #0x00
_080EA046:
	strh r3, [r2, #0x14]
	lsls r0, r5, #0x10
	ldr r1, _080EA060 @ =0xFFFF0000
	adds r0, r0, r1
	adds r2, #0x3C
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080EA036
_080EA056:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EA060: .4byte 0xFFFF0000
	thumb_func_start sub_80EA064
sub_80EA064:
	push {r4, r5, lr}
	ldm r2!, {r0}
	cmp r0, #0x00
	bne _080EA138
	ldr r0, _080EA0A4 @ =0x03000FF4
	ldr r4, [r0, #0x00]
	ldm r2!, {r0}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r5, r1, #0x0
	ldrh r0, [r2, #0x00]
	movs r3, #0x00
	ldsh r2, [r2, r3]
	cmp r2, #0x08
	ble _080EA08C
	adds r4, #0x3C
	adds r0, r2, #0x0
	subs r0, #0x09
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080EA08C:
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0x02
	bgt _080EA0BE
	cmp r1, #0x00
	beq _080EA0A8
	ldrb r2, [r4, #0x07]
	lsrs r1, r2, #0x02
	movs r0, #0x01
	lsls r0, r3
	bics r1, r0
	b _080EA0B2
_080EA0A4: .4byte 0x03000FF4
_080EA0A8:
	ldrb r2, [r4, #0x07]
	lsrs r1, r2, #0x02
	movs r0, #0x01
	lsls r0, r3
	orrs r1, r0
_080EA0B2:
	lsls r1, r1, #0x02
	movs r0, #0x03
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x07]
	b _080EA138
_080EA0BE:
	cmp r3, #0x05
	bgt _080EA0FE
	subs r0, r3, #0x3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, #0x00
	beq _080EA0DE
	ldrb r3, [r4, #0x08]
	lsls r2, r3, #0x1A
	lsrs r2, r2, #0x1A
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	lsls r0, r1
	bics r2, r0
	b _080EA0F2
_080EA0DE:
	ldrb r3, [r4, #0x08]
	lsls r2, r3, #0x1A
	lsrs r2, r2, #0x1A
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	lsls r0, r1
	orrs r2, r0
	movs r0, #0x3F
	ands r2, r0
_080EA0F2:
	movs r0, #0x40
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x08]
	b _080EA138
_080EA0FE:
	subs r0, r3, #0x6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r5, #0x00
	beq _080EA11A
	ldrh r3, [r4, #0x08]
	lsls r2, r3, #0x14
	lsrs r2, r2, #0x1A
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	lsls r0, r1
	bics r2, r0
	b _080EA12E
_080EA11A:
	ldrh r3, [r4, #0x08]
	lsls r2, r3, #0x14
	lsrs r2, r2, #0x1A
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	lsls r0, r1
	orrs r2, r0
	movs r0, #0x3F
	ands r2, r0
_080EA12E:
	lsls r2, r2, #0x06
	ldr r0, _080EA140 @ =0xFFFFF03F
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #0x08]
_080EA138:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080EA140: .4byte 0xFFFFF03F
	thumb_func_start sub_80EA144
sub_80EA144:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r1
	adds r5, r2, #0x0
	mov r10, r3
	ldm r5!, {r0}
	mov r8, r0
	ldm r5!, {r0}
	cmp r0, #0x01
	bne _080EA162
	b _080EA266
_080EA162:
	cmp r0, #0x01
	bgt _080EA16C
	cmp r0, #0x00
	beq _080EA174
	b _080EA32A
_080EA16C:
	cmp r0, #0x02
	bne _080EA172
	b _080EA2CE
_080EA172:
	b _080EA32A
_080EA174:
	ldm r5!, {r3}
	asrs r0, r3, #0x07
	subs r0, #0x01
	cmp r0, #0x05
	bhi _080EA200
	lsls r0, r0, #0x02
	ldr r1, _080EA188 @ =0x080EA18C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080EA188: .4byte 0x080EA18C
	.byte 0xA4, 0xA1, 0x0E, 0x08, 0xB4, 0xA1, 0x0E, 0x08, 0xD4, 0xA1, 0x0E, 0x08, 0xC4, 0xA1, 0x0E, 0x08
	.byte 0xFC, 0xA1, 0x0E, 0x08, 0xE4, 0xA1, 0x0E, 0x08, 0x02, 0x48, 0x7F, 0x21, 0x19, 0x40, 0xBA, 0x31
	.byte 0x20, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x02, 0x48, 0x7F, 0x21, 0x19, 0x40, 0xF2, 0x31
	.byte 0x18, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x02, 0x48, 0x7F, 0x21, 0x19, 0x40, 0x8A, 0x31
	.byte 0x10, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x02, 0x48, 0x7F, 0x21, 0x19, 0x40, 0xAA, 0x31
	.byte 0x08, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x04, 0x48, 0x7F, 0x21, 0x19, 0x40, 0x95, 0x22
	.byte 0x52, 0x00, 0x89, 0x18, 0x00, 0x68, 0x46, 0x18, 0x04, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x04, 0x3D, 0x66, 0xE0
_080EA200:
	ldrb r0, [r6, #0x00]
	movs r1, #0x00
	cmp r0, #0xFF
	beq _080EA20A
	adds r1, r0, #0x0
_080EA20A:
	adds r4, r1, #0x0
	ldm r5!, {r0}
	cmp r0, #0x00
	beq _080EA218
	cmp r0, #0x01
	beq _080EA24A
	b _080EA32A
_080EA218:
	ldr r2, [r5, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r3, #0x07
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x7F
	ands r3, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r3, #0x0
	bl sub_8122E30
	movs r2, #0x00
	ldrb r1, [r6, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _080EA246
	movs r2, #0x01
_080EA246:
	adds r7, r2, #0x0
	b _080EA32A
_080EA24A:
	ldr r1, [r5, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	bge _080EA260
	movs r0, #0x00
	strb r0, [r6, #0x00]
	b _080EA328
_080EA260:
	strb r4, [r6, #0x00]
	movs r7, #0x01
	b _080EA32A
_080EA266:
	adds r5, #0x04
	ldm r5!, {r0}
	cmp r0, #0x00
	beq _080EA27C
	cmp r0, #0x01
	beq _080EA2A4
	ldr r2, _080EA278 @ =0x03000FF4
	b _080EA2C6
	.byte 0x00, 0x00
_080EA278: .4byte 0x03000FF4
_080EA27C:
	ldr r2, _080EA29C @ =0x03000FF4
	ldr r0, [r2, #0x00]
	adds r0, #0x88
	ldr r1, [r5, #0x00]
	ldrh r0, [r0, #0x00]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080EA2A0 @ =0x0000270F
	cmp r0, r1
	ble _080EA2C4
	adds r4, r1, #0x0
	movs r7, #0x00
	b _080EA2C6
	.byte 0x00, 0x00
_080EA29C: .4byte 0x03000FF4
_080EA2A0: .4byte 0x0000270F
_080EA2A4:
	ldr r2, _080EA2C0 @ =0x03000FF4
	ldr r0, [r2, #0x00]
	adds r0, #0x88
	ldr r1, [r5, #0x00]
	ldrh r0, [r0, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	bge _080EA2C4
	movs r4, #0x00
	movs r7, #0x00
	b _080EA2C6
	.byte 0x00, 0x00
_080EA2C0: .4byte 0x03000FF4
_080EA2C4:
	movs r7, #0x01
_080EA2C6:
	ldr r0, [r2, #0x00]
	adds r0, #0x88
	strh r4, [r0, #0x00]
	b _080EA32A
_080EA2CE:
	ldr r1, _080EA300 @ =0x03000FF4
	ldr r2, [r5, #0x00]
	movs r0, #0x7F
	ands r0, r2
	asrs r0, r0, #0x03
	adds r0, #0xB2
	ldr r1, [r1, #0x00]
	adds r6, r1, r0
	adds r1, r2, #0x0
	cmp r2, #0x00
	bge _080EA2E6
	adds r1, r2, #0x7
_080EA2E6:
	asrs r1, r1, #0x03
	lsls r1, r1, #0x03
	subs r1, r2, r1
	movs r0, #0x80
	lsls r0, r0, #0x09
	lsls r0, r1
	lsrs r4, r0, #0x10
	ldr r1, [r5, #0x04]
	cmp r1, #0x00
	beq _080EA304
	cmp r1, #0x01
	beq _080EA314
	b _080EA32A
_080EA300: .4byte 0x03000FF4
_080EA304:
	ldrb r1, [r6, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _080EA328
	orrs r1, r4
	b _080EA322
_080EA314:
	ldrb r1, [r6, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080EA328
	bics r1, r4
_080EA322:
	strb r1, [r6, #0x00]
	movs r7, #0x01
	b _080EA32A
_080EA328:
	movs r7, #0x00
_080EA32A:
	mov r0, r8
	cmp r0, #0x00
	blt _080EA346
	mov r1, r9
	adds r1, #0x18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
_080EA346:
	movs r0, #0x01
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80EA358
sub_80EA358:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r1, #0x0
	adds r6, r3, #0x0
	ldm r2!, {r3}
	ldr r0, [r2, #0x00]
	cmp r0, #0xFF
	bne _080EA378
	ldr r0, _080EA374 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x88
	ldrh r4, [r0, #0x00]
	b _080EA452
	.byte 0x00, 0x00
_080EA374: .4byte 0x03000FF4
_080EA378:
	asrs r0, r0, #0x07
	subs r0, #0x01
	cmp r0, #0x05
	bhi _080EA44C
	lsls r0, r0, #0x02
	ldr r1, _080EA38C @ =0x080EA390
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EA38C: .4byte 0x080EA390
	.byte 0xA8, 0xA3, 0x0E, 0x08, 0xC0, 0xA3, 0x0E, 0x08, 0xF0, 0xA3, 0x0E, 0x08, 0xD8, 0xA3, 0x0E, 0x08
	.byte 0x24, 0xA4, 0x0E, 0x08, 0x08, 0xA4, 0x0E, 0x08, 0x10, 0x68, 0x7F, 0x21, 0x08, 0x40, 0x03, 0x49
	.byte 0x09, 0x68, 0x40, 0x18, 0xBA, 0x30, 0x04, 0x78, 0x48, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x10, 0x68, 0x7F, 0x21, 0x08, 0x40, 0x03, 0x49, 0x09, 0x68, 0x40, 0x18, 0xF2, 0x30, 0x04, 0x78
	.byte 0x3C, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x10, 0x68, 0x7F, 0x21, 0x08, 0x40, 0x03, 0x49
	.byte 0x09, 0x68, 0x40, 0x18, 0x8A, 0x30, 0x04, 0x78, 0x30, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x10, 0x68, 0x7F, 0x21, 0x08, 0x40, 0x03, 0x49, 0x09, 0x68, 0x40, 0x18, 0xAA, 0x30, 0x04, 0x78
	.byte 0x24, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x10, 0x68, 0x7F, 0x21, 0x08, 0x40, 0x04, 0x49
	.byte 0x09, 0x68, 0x40, 0x18, 0x95, 0x21, 0x49, 0x00, 0x40, 0x18, 0x04, 0x78, 0x16, 0xE0, 0x00, 0x00
	.byte 0xF4, 0x0F, 0x00, 0x03, 0x12, 0x68, 0x7F, 0x20, 0x10, 0x40, 0xC0, 0x10, 0x11, 0x49, 0x09, 0x68
	.byte 0x40, 0x18, 0xB2, 0x30, 0x01, 0x78, 0x10, 0x1C, 0x00, 0x2A, 0x00, 0xDA, 0xD0, 0x1D, 0xC0, 0x10
	.byte 0xC0, 0x00, 0x10, 0x1A, 0x0C, 0x1C, 0x04, 0x41, 0x01, 0x20, 0x04, 0x40
_080EA44C:
	cmp r4, #0xFF
	bne _080EA452
	movs r4, #0x00
_080EA452:
	adds r1, r5, #0x0
	adds r1, #0x18
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	thumb_func_start sub_80EA478
sub_80EA478:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	mov r8, r1
	adds r5, r2, #0x0
	mov r7, r8
	adds r7, #0xA6
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	adds r4, r0, #0x0
	adds r4, #0x54
	ldr r0, [r5, #0x00]
	movs r1, #0x19
	negs r1, r1
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x03
	bne _080EA4A8
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	b _080EA4B0
_080EA4A8:
	cmp r6, #0x04
	bne _080EA4B2
	ldr r0, [r4, #0x00]
	subs r0, #0x01
_080EA4B0:
	str r0, [r4, #0x00]
_080EA4B2:
	ldrb r1, [r5, #0x04]
	ldr r2, [r5, #0x08]
	ldr r3, [r4, #0x00]
	mov r0, r12
	bl script_test_condition
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	beq _080EA4E0
	ldr r0, [r5, #0x0C]
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	bne _080EA4F4
	ldrb r0, [r7, #0x00]
	subs r0, #0x01
	strb r0, [r7, #0x00]
	movs r0, #0x00
	b _080EA506
_080EA4E0:
	ldr r0, [r5, #0x00]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x18
	bne _080EA4F4
	ldrb r0, [r7, #0x00]
	subs r0, #0x01
	strb r0, [r7, #0x00]
	str r2, [r4, #0x00]
	b _080EA508
_080EA4F4:
	cmp r6, #0x01
	bne _080EA4FE
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	b _080EA506
_080EA4FE:
	cmp r6, #0x02
	bne _080EA508
	ldr r0, [r4, #0x00]
	subs r0, #0x01
_080EA506:
	str r0, [r4, #0x00]
_080EA508:
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
