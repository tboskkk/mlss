	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80FC0C0
sub_80FC0C0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r5, #0x0C
	movs r0, #0x0C
	ldsb r0, [r5, r0]
	cmp r0, #0x00
	bge _080FC104
	ldrb r1, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080FC0EE
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FC0FE
	movs r0, #0x00
	b _080FC11C
_080FC0EE:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	mov r1, sp
	strb r0, [r1, #0x00]
_080FC0FE:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _080FC108
_080FC104:
	movs r0, #0x0C
	ldsb r0, [r5, r0]
_080FC108:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r1, [r0, #0x28]
	ldr r2, _080FC124 @ =0x00007FFF
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080FC11C:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_080FC124: .4byte 0x00007FFF
	thumb_func_start sub_80FC128
sub_80FC128:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r0, #0x0C
	ldr r1, [r1, #0x00]
	movs r3, #0x08
	ldsh r2, [r0, r3]
	movs r4, #0x0A
	ldsh r3, [r0, r4]
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80FC148
sub_80FC148:
	push {lr}
	adds r0, r1, #0x0
	ldr r1, [r0, #0x00]
	adds r0, #0x0C
	ldr r2, _080FC160 @ =0x00007FFF
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
_080FC160: .4byte 0x00007FFF
	thumb_func_start sub_80FC164
sub_80FC164:
	push {lr}
	adds r2, r0, #0x0
	ldr r3, [r1, #0x00]
	adds r1, #0x0C
	movs r0, #0x0C
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	blt _080FC178
	ldrb r1, [r1, #0x0C]
	b _080FC184
_080FC178:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r1, r0, #0x1F
_080FC184:
	movs r0, #0x00
	ldsb r0, [r3, r0]
	cmp r0, r1
	beq _080FC190
	movs r0, #0x00
	b _080FC192
_080FC190:
	movs r0, #0x01
_080FC192:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80FC198
sub_80FC198:
	push {lr}
	ldr r2, _080FC1E4 @ =0x03000FFC
	ldr r0, _080FC1E8 @ =0x03000D40
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r1, r0, #0x03
	subs r1, r1, r0
	lsls r1, r1, #0x05
	subs r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, #0x10
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	ldr r2, _080FC1EC @ =0x040000D4
	movs r3, #0xEE
	lsls r3, r3, #0x01
	adds r1, r0, r3
	str r1, [r2, #0x00]
	ldr r1, _080FC1F0 @ =0x03000FC0
	ldr r3, [r1, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x20
	str r1, [r2, #0x04]
	ldr r1, _080FC1F4 @ =0x840000DB
	str r1, [r2, #0x08]
	ldr r1, [r2, #0x08]
	movs r1, #0xA9
	lsls r1, r1, #0x03
	adds r0, r0, r1
	movs r2, #0xE5
	lsls r2, r2, #0x02
	adds r1, r3, r2
	movs r2, #0xD4
	bl CpuSet
	pop {r0}
	bx r0
_080FC1E4: .4byte 0x03000FFC
_080FC1E8: .4byte 0x03000D40
_080FC1EC: .4byte 0x040000D4
_080FC1F0: .4byte 0x03000FC0
_080FC1F4: .4byte 0x840000DB
	thumb_func_start sub_80FC1F8
sub_80FC1F8:
	push {r4, lr}
	ldr r2, _080FC248 @ =0x03000FFC
	ldr r0, _080FC24C @ =0x03000D40
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, #0x10
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	ldr r2, _080FC250 @ =0x040000D4
	ldr r0, _080FC254 @ =0x03000FC0
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x20
	str r0, [r2, #0x00]
	movs r4, #0xEE
	lsls r4, r4, #0x01
	adds r0, r1, r4
	str r0, [r2, #0x04]
	ldr r0, _080FC258 @ =0x840000DB
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
	movs r2, #0xE5
	lsls r2, r2, #0x02
	adds r0, r3, r2
	movs r4, #0xA9
	lsls r4, r4, #0x03
	adds r1, r1, r4
	movs r2, #0xD4
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FC248: .4byte 0x03000FFC
_080FC24C: .4byte 0x03000D40
_080FC250: .4byte 0x040000D4
_080FC254: .4byte 0x03000FC0
_080FC258: .4byte 0x840000DB
	thumb_func_start init_btl_process_80FC25C
init_btl_process_80FC25C: @ 080FC25C
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r5, r3, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _080FC2F0 @ =0x08CDC338
	str r0, [r6, #0x18]
	ldr r0, _080FC2F4 @ =0x03000FDC
	str r5, [r0, #0x00]
	ldr r4, _080FC2F8 @ =0x0300034C
	movs r1, #0x8D
	lsls r1, r1, #0x04
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x1C]
	bl sub_819A138
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrh r0, [r2, #0x00]
	ldr r3, _080FC2FC @ =0x000003FF
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x44
	movs r0, #0x0A
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0x08
	strb r0, [r1, #0x00]
	ldr r1, _080FC300 @ =0x03000FE0
	ldr r0, _080FC304 @ =0x080FC439
	str r0, [r1, #0x00]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	cmp r0, #0x00
	bgt _080FC2E6
	ldr r0, _080FC308 @ =0x0850300C
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x05
	adds r1, r1, r0
	ldrb r0, [r1, #0x03]
	strb r0, [r5, #0x02]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bgt _080FC2E6
	ldr r1, _080FC30C @ =0x08200205
	ldr r0, [r6, #0x14]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	strb r0, [r5, #0x02]
_080FC2E6:
	adds r0, r6, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080FC2F0: .4byte 0x08CDC338
_080FC2F4: .4byte 0x03000FDC
_080FC2F8: .4byte 0x0300034C
_080FC2FC: .4byte 0x000003FF
_080FC300: .4byte 0x03000FE0
_080FC304: .4byte btl_80FC438
_080FC308: .4byte 0x0850300C
_080FC30C: .4byte 0x08200205
	thumb_func_start btl_80FC310
btl_80FC310: @ 080FC310
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _080FC424 @ =0x08CDC338
	str r0, [r5, #0x18]
	ldr r1, _080FC428 @ =0x0300034C
	adds r2, r1, #0x0
	adds r2, #0x44
	movs r0, #0x0A
	strb r0, [r2, #0x00]
	adds r1, #0x45
	movs r0, #0x02
	strb r0, [r1, #0x00]
	ldr r4, _080FC42C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080FC3F0
	bl sub_810CDB4
	ldr r0, [r4, #0x00]
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x02
	bl sub_8018B78
	ldr r0, [r4, #0x00]
	ldr r4, [r0, #0x78]
	cmp r4, #0x00
	beq _080FC35A
_080FC34E:
	adds r0, r4, #0x0
	bl sub_807C298
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _080FC34E
_080FC35A:
	ldr r4, _080FC42C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC370
	movs r1, #0x03
	bl sub_80F2130
_080FC370:
	ldr r0, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC384
	movs r1, #0x03
	bl sub_8082D60
_080FC384:
	ldr r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC398
	movs r1, #0x03
	bl sub_81166AC
_080FC398:
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC3AC
	movs r1, #0x03
	bl sub_80854F8
_080FC3AC:
	ldr r0, [r4, #0x00]
	movs r1, #0xBC
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC3C0
	movs r1, #0x03
	bl sub_80E2EDC
_080FC3C0:
	ldr r0, _080FC430 @ =0x02000010
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
	bl sub_8021FD4
_080FC3F0:
	ldr r4, _080FC434 @ =0x03000FDC
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080FC400
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
_080FC400:
	ldr r0, [r5, #0x14]
	bl process_enable
	ldr r1, _080FC428 @ =0x0300034C
	adds r1, #0x79
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl process_remove
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FC424: .4byte 0x08CDC338
_080FC428: .4byte 0x0300034C
_080FC42C: .4byte 0x03000FD8
_080FC430: .4byte 0x02000010
_080FC434: .4byte 0x03000FDC
	thumb_func_start btl_80FC438
btl_80FC438: @ 080FC438
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r0, _080FC588 @ =0x03000FD8
	mov r8, r0
	movs r4, #0xEA
	lsls r4, r4, #0x02
	ldr r2, _080FC58C @ =0x082001F8
	movs r0, #0x00
	adds r1, r4, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	mov r2, r8
	str r1, [r2, #0x00]
	ldr r0, _080FC590 @ =0x03001034
	mov r9, r0
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	mov r2, r8
	ldr r1, [r2, #0x00]
	subs r4, #0xD0
	adds r1, r1, r4
	ldr r5, _080FC594 @ =0x03000FDC
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	ldr r6, _080FC598 @ =0x00008E5C
	ldr r2, _080FC59C @ =0x08200200
	movs r0, #0x01
	adds r1, r6, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r5, #0x00]
	mov r0, r9
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r6, #0x0
	bl _call_via_r3
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r4, r2, r4
	ldr r1, [r4, #0x00]
	ldr r0, _080FC5A0 @ =0x0000FFFE
	strh r0, [r1, #0x06]
	movs r4, #0xF8
	lsls r4, r4, #0x01
	adds r2, r2, r4
	ldr r0, [r5, #0x00]
	ldr r1, _080FC5A4 @ =0x0000548F
	adds r0, r0, r1
	movs r1, #0x20
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x00]
	movs r3, #0x00
	mov r4, r8
	adds r7, r4, #0x0
	movs r2, #0x00
	movs r6, #0x98
	lsls r6, r6, #0x01
_080FC4BC:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r2, r6
	adds r0, r3, #0x1
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r2, r6
	adds r0, r3, #0x2
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r2, r6
	adds r0, r3, #0x3
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r2, r6
	adds r3, #0x04
	cmp r3, #0x07
	ble _080FC4BC
	ldr r2, [r7, #0x00]
	ldr r0, _080FC5A8 @ =0x080802DD
	str r0, [r2, #0x24]
	ldr r1, _080FC5AC @ =0x03000FE0
	ldr r0, _080FC5B0 @ =0x080FC8A5
	str r0, [r1, #0x00]
	movs r4, #0xB6
	lsls r4, r4, #0x02
	adds r0, r2, r4
	ldr r3, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	subs r4, #0x22
	adds r0, r2, r4
	strh r1, [r0, #0x00]
	ldrb r0, [r3, #0x05]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	ldr r1, _080FC5B4 @ =0x000002B9
	adds r2, r2, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x00]
	ldrb r1, [r3, #0x02]
	movs r2, #0xAE
	lsls r2, r2, #0x02
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	ldr r0, [r7, #0x00]
	ldrb r1, [r3, #0x04]
	adds r4, #0x04
	adds r0, r0, r4
	strb r1, [r0, #0x00]
	ldr r2, [r7, #0x00]
	ldrb r1, [r3, #0x05]
	lsls r1, r1, #0x1B
	ldr r0, _080FC5B8 @ =0x000002BE
	adds r2, r2, r0
	movs r4, #0x01
	lsrs r1, r1, #0x1F
	ldrb r3, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0xAA
	bl sub_8020994
	ldr r2, _080FC5BC @ =0x0203FFB8
	ldrb r0, [r2, #0x00]
	orrs r0, r4
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FC588: .4byte 0x03000FD8
_080FC58C: .4byte 0x082001F8
_080FC590: .4byte 0x03001034
_080FC594: .4byte 0x03000FDC
_080FC598: .4byte 0x00008E5C
_080FC59C: .4byte 0x08200200
_080FC5A0: .4byte 0x0000FFFE
_080FC5A4: .4byte 0x0000548F
_080FC5A8: .4byte sub_80802DC
_080FC5AC: .4byte 0x03000FE0
_080FC5B0: .4byte btl_80FC8A4
_080FC5B4: .4byte 0x000002B9
_080FC5B8: .4byte 0x000002BE
_080FC5BC: .4byte 0x0203FFB8
	thumb_func_start btl_80FC5C0
btl_80FC5C0: @ 080FC5C0
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	mov r0, sp
	bl sub_8199470
	bl sub_8018818
	ldr r4, _080FC65C @ =0x0300034C
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r5, _080FC660 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0xAD
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrh r1, [r4, #0x2A]
	ldrh r0, [r0, #0x00]
	ands r0, r1
	cmp r0, #0x00
	beq _080FC5FA
	ldr r0, _080FC664 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080FC5FA:
	ldr r0, [r5, #0x00]
	ldr r2, _080FC668 @ =0x000002C1
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080FC61E
	ldrh r1, [r4, #0x2A]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x00
	beq _080FC61E
	ldr r0, _080FC664 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080FC61E:
	ldr r3, _080FC660 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x07]
	movs r1, #0x1F
	orrs r0, r1
	strb r0, [r2, #0x07]
	ldr r2, _080FC65C @ =0x0300034C
	ldr r1, _080FC66C @ =0x00000884
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC684
	ldr r1, [r3, #0x00]
	ldrb r0, [r1, #0x10]
	cmp r0, #0x00
	beq _080FC684
	subs r0, #0x01
	strb r0, [r1, #0x10]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x10]
	cmp r0, #0x00
	bne _080FC674
	ldr r0, _080FC670 @ =0x00000888
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _080FC684
	.byte 0x00, 0x00
_080FC65C: .4byte 0x0300034C
_080FC660: .4byte 0x03000FD8
_080FC664: .4byte 0x0000015F
_080FC668: .4byte 0x000002C1
_080FC66C: .4byte 0x00000884
_080FC670: .4byte 0x00000888
_080FC674:
	ldr r1, _080FC880 @ =0x00000888
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080FC684
	b _080FC878
_080FC684:
	ldr r6, _080FC884 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC698
	bl sub_8082B20
_080FC698:
	ldr r0, [r6, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC6AA
	bl sub_808539C
_080FC6AA:
	bl sub_807A698
	ldr r0, [r6, #0x00]
	adds r0, #0x40
	bl sub_807FFFC
	bl sub_807AF64
	bl sub_8020A78
	ldr r0, [r6, #0x00]
	adds r0, #0x44
	bl sub_807FFFC
	ldr r0, [r6, #0x00]
	adds r0, #0x48
	bl sub_807FFFC
	bl sub_807C3E8
	ldr r7, _080FC888 @ =0x03000D74
	ldr r1, [r7, #0x00]
	ldrb r0, [r1, #0x02]
	cmp r0, #0x00
	beq _080FC6E8
	ldr r2, _080FC88C @ =0x03000D48
	ldr r0, [r1, #0x3C]
	ldr r1, [r1, #0x38]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
_080FC6E8:
	bl sub_8109C08
	bl sub_8107380
	ldr r1, [r7, #0x00]
	ldrb r0, [r1, #0x02]
	cmp r0, #0x00
	beq _080FC71E
	ldr r0, [r1, #0x38]
	ldr r5, [r0, #0x0C]
	movs r0, #0x00
	str r0, [r5, #0x10]
	ldr r2, _080FC890 @ =0x03000D4C
	ldr r0, _080FC894 @ =0x0203FFB8
	ldr r0, [r0, #0x3C]
	ldr r4, _080FC898 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r4, r4, r1
	ldr r1, [r4, #0x00]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	str r0, [r4, #0x00]
	ldr r0, [r7, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [r5, #0x10]
_080FC71E:
	ldr r5, _080FC898 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r4, r5, r2
	ldr r0, [r4, #0x00]
	bl sub_807C6D0
	str r0, [r4, #0x00]
	bl sub_8021F7C
	bl sub_807AD2C
	ldr r3, [r6, #0x00]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC746
	b _080FC852
_080FC746:
	ldrh r0, [r5, #0x3E]
	movs r7, #0x01
	ldr r4, _080FC89C @ =0x000002BE
	adds r3, r3, r4
	adds r1, r7, #0x0
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	mov r12, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r2, [r6, #0x00]
	ldrh r1, [r5, #0x3E]
	lsrs r1, r1, #0x01
	ands r1, r7
	adds r2, r2, r4
	lsls r1, r1, #0x07
	ldrb r3, [r2, #0x00]
	movs r5, #0x7F
	adds r0, r5, #0x0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r4, [r6, #0x00]
	ldr r0, [r4, #0x7C]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _080FC7B8
	ldr r0, _080FC89C @ =0x000002BE
	adds r4, r4, r0
	ldrb r2, [r4, #0x00]
	lsls r3, r2, #0x19
	lsrs r3, r3, #0x1F
	lsrs r0, r2, #0x07
	adds r1, r7, #0x0
	ands r1, r0
	lsls r1, r1, #0x06
	mov r0, r12
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r1, [r6, #0x00]
	ldr r2, _080FC89C @ =0x000002BE
	adds r1, r1, r2
	lsls r3, r3, #0x07
	ldrb r2, [r1, #0x00]
	adds r0, r5, #0x0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x00]
_080FC7B8:
	ldr r0, [r6, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x58
	movs r2, #0x80
	lsls r2, r2, #0x01
	ldr r0, [r0, #0x58]
	cmp r0, #0x00
	beq _080FC7D0
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC7D0
	strh r2, [r0, #0x0A]
_080FC7D0:
	ldr r0, [r1, #0x04]
	cmp r0, #0x00
	beq _080FC7DE
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC7DE
	strh r2, [r0, #0x0A]
_080FC7DE:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080FC7EC
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC7EC
	strh r2, [r0, #0x0A]
_080FC7EC:
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	beq _080FC7FA
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC7FA
	strh r2, [r0, #0x0A]
_080FC7FA:
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	beq _080FC808
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC808
	strh r2, [r0, #0x0A]
_080FC808:
	ldr r0, [r1, #0x14]
	cmp r0, #0x00
	beq _080FC816
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC816
	strh r2, [r0, #0x0A]
_080FC816:
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	beq _080FC824
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC824
	strh r2, [r0, #0x0A]
_080FC824:
	ldr r0, [r1, #0x1C]
	cmp r0, #0x00
	beq _080FC832
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _080FC832
	strh r2, [r0, #0x0A]
_080FC832:
	ldr r4, _080FC884 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x20
	ldr r1, [r1, #0x24]
	bl _call_via_r1
	bl sub_807E084
	ldr r1, [r4, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
_080FC852:
	ldr r4, _080FC884 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	adds r0, #0x4C
	bl sub_807FFFC
	mov r0, sp
	ldrb r0, [r0, #0x00]
	bl sub_8082584
	ldr r0, [r4, #0x00]
	ldr r4, [r0, #0x24]
	cmp r4, #0x00
	bne _080FC878
	movs r0, #0x03
	movs r1, #0x00
	bl sub_8018B78
	ldr r0, _080FC8A0 @ =0x03000FE0
	str r4, [r0, #0x00]
_080FC878:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FC880: .4byte 0x00000888
_080FC884: .4byte 0x03000FD8
_080FC888: .4byte 0x03000D74
_080FC88C: .4byte 0x03000D48
_080FC890: .4byte 0x03000D4C
_080FC894: .4byte 0x0203FFB8
_080FC898: .4byte 0x0300034C
_080FC89C: .4byte 0x000002BE
_080FC8A0: .4byte 0x03000FE0
	thumb_func_start btl_80FC8A4
btl_80FC8A4: @ 080FC8A4
	push {r4, lr}
	add sp, #-0x004
	mov r0, sp
	bl sub_8199470
	ldr r4, _080FC8E8 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x20
	ldr r1, [r1, #0x24]
	bl _call_via_r1
	ldr r0, [r4, #0x00]
	adds r0, #0x4C
	bl sub_807FFFC
	mov r0, sp
	ldrb r0, [r0, #0x00]
	bl sub_8082584
	ldr r0, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC8E0
	ldr r1, _080FC8EC @ =0x03000FE0
	ldr r0, _080FC8F0 @ =0x080FC5C1
	str r0, [r1, #0x00]
_080FC8E0:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080FC8E8: .4byte 0x03000FD8
_080FC8EC: .4byte 0x03000FE0
_080FC8F0: .4byte btl_80FC5C0
	thumb_func_start btl_update_80FC8F4
btl_update_80FC8F4: @ 080FC8F4
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, _080FC918 @ =0x03000FE0
	ldr r0, [r4, #0x00]
	bl _call_via_r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080FC912
	cmp r5, #0x00
	beq _080FC912
	adds r0, r5, #0x0
	movs r1, #0x03
	bl btl_80FC310
_080FC912:
	pop {r4, r5}
	pop {r0}
	bx r0
_080FC918: .4byte 0x03000FE0
	thumb_func_start sub_80FC91C
sub_80FC91C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_80E3CF4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FC998
	ldr r0, _080FC94C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x03]
	movs r1, #0x03
	ldsb r1, [r0, r1]
	cmp r1, #0x00
	ble _080FC950
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x01
	bl sub_8019308
	b _080FC994
_080FC94C: .4byte 0x03000FD8
_080FC950:
	movs r4, #0x01
	negs r4, r4
	cmp r1, r4
	beq _080FC96C
	adds r0, r2, #0x3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _080FC978
	movs r0, #0x01
	bl sub_8019610
	cmp r0, #0x0A
	beq _080FC978
_080FC96C:
	movs r0, #0x01
	movs r1, #0x0A
	adds r2, r4, #0x0
	bl sub_8019308
	b _080FC994
_080FC978:
	ldr r0, _080FC9A0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x03]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	bne _080FC994
	movs r0, #0x01
	bl sub_8019628
_080FC994:
	movs r0, #0x00
	str r0, [r5, #0x04]
_080FC998:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FC9A0: .4byte 0x03000FD8
	thumb_func_start sub_80FC9A4
sub_80FC9A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	bl sub_801A548
	movs r2, #0x00
	ldr r6, _080FCA80 @ =0x03000FD8
_080FC9B4:
	ldr r5, _080FCA80 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	beq _080FC9EA
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x18]
	str r0, [r1, #0x40]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x1C]
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x20]
	str r0, [r1, #0x48]
_080FC9EA:
	movs r4, #0x87
	lsls r4, r4, #0x01
	adds r0, r1, r4
	movs r3, #0x00
	strh r3, [r0, #0x00]
	adds r1, r2, #0x1
	ldr r0, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	beq _080FCA2A
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x18]
	str r0, [r1, #0x40]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x1C]
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x20]
	str r0, [r1, #0x48]
_080FCA2A:
	adds r0, r1, r4
	strh r3, [r0, #0x00]
	adds r2, #0x02
	cmp r2, #0x07
	ble _080FC9B4
	ldr r0, [r6, #0x00]
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FCA9C
	adds r4, r0, #0x0
	ldr r1, _080FCA84 @ =0x0000012B
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	bne _080FCA54
	adds r1, #0x55
	adds r0, r4, #0x0
	movs r2, #0xC8
	bl sub_810857C
_080FCA54:
	movs r3, #0x96
	lsls r3, r3, #0x01
	adds r5, r4, r3
	ldrb r0, [r5, #0x00]
	cmp r0, #0x16
	bne _080FCA6C
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	movs r2, #0xC8
	bl sub_81086B4
_080FCA6C:
	ldr r0, [r6, #0x00]
	ldrb r1, [r5, #0x00]
	cmp r1, #0x0C
	beq _080FCA88
	movs r3, #0x00
	cmp r1, #0x0D
	bne _080FCA8A
	movs r3, #0x02
	b _080FCA8A
	.byte 0x00, 0x00
_080FCA80: .4byte 0x03000FD8
_080FCA84: .4byte 0x0000012B
_080FCA88:
	movs r3, #0x01
_080FCA8A:
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r2, r0, r5
	lsls r3, r3, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
_080FCA9C:
	ldr r6, _080FCB84 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	ldr r1, _080FCB88 @ =0x0000012B
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	bne _080FCAB8
	adds r1, #0x55
	adds r0, r4, #0x0
	movs r2, #0xC8
	bl sub_810857C
_080FCAB8:
	movs r3, #0x96
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x16
	bne _080FCAD0
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	movs r2, #0xC8
	bl sub_81086B4
_080FCAD0:
	movs r2, #0x00
	ldr r0, [r6, #0x00]
	movs r1, #0xCB
	lsls r1, r1, #0x02
	adds r5, r0, r1
	ldr r0, _080FCB8C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x8A
	movs r3, #0x00
	ldr r7, _080FCB90 @ =0x080FCB9D
_080FCAE6:
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _080FCAF8
	cmp r0, #0x00
	beq _080FCAF8
	adds r0, r5, r2
	strb r3, [r0, #0x00]
	adds r2, #0x01
_080FCAF8:
	adds r1, r3, #0x1
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _080FCB0C
	cmp r0, #0x00
	beq _080FCB0C
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
_080FCB0C:
	adds r1, r3, #0x2
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _080FCB20
	cmp r0, #0x00
	beq _080FCB20
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
_080FCB20:
	adds r1, r3, #0x3
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _080FCB34
	cmp r0, #0x00
	beq _080FCB34
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
_080FCB34:
	adds r1, r3, #0x4
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _080FCB48
	cmp r0, #0x00
	beq _080FCB48
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
_080FCB48:
	adds r1, r3, #0x5
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _080FCB5C
	cmp r0, #0x00
	beq _080FCB5C
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
_080FCB5C:
	adds r3, #0x06
	cmp r3, #0x11
	ble _080FCAE6
	ldr r0, [r6, #0x00]
	ldr r3, _080FCB94 @ =0x00000341
	adds r0, r0, r3
	strb r2, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldr r5, _080FCB98 @ =0x000002BB
	adds r0, r0, r5
	movs r1, #0x01
	strb r1, [r0, #0x00]
	mov r0, r8
	str r7, [r0, #0x04]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FCB84: .4byte 0x03000FD8
_080FCB88: .4byte 0x0000012B
_080FCB8C: .4byte 0x03000FF4
_080FCB90: .4byte sub_80FCB9C
_080FCB94: .4byte 0x00000341
_080FCB98: .4byte 0x000002BB
	thumb_func_start sub_80FCB9C
sub_80FCB9C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	bl sub_80E3CF4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _080FCC4A
	ldr r4, _080FCC50 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_80844C4
	movs r0, #0x00
	bl sub_8105790
	ldr r0, [r4, #0x00]
	ldr r1, _080FCC54 @ =0x0000034A
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0xD3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, _080FCC58 @ =0x0000034E
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0xD4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x80
	strb r2, [r0, #0x00]
	ldr r0, [r4, #0x00]
	subs r1, #0x05
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, _080FCC5C @ =0x0000034D
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, _080FCC60 @ =0x0000034F
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, _080FCC64 @ =0x00000351
	adds r0, r0, r1
	strb r2, [r0, #0x00]
	ldr r3, _080FCC68 @ =0x03001034
	ldr r0, _080FCC6C @ =0x33333333
	ldr r1, _080FCC70 @ =0x06017600
	movs r2, #0x80
	lsls r2, r2, #0x02
	ldr r3, [r3, #0x00]
	bl _call_via_r3
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0A]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0A]
	movs r0, #0x01
	bl sub_80F75D8
	ldr r0, [r4, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	strh r5, [r0, #0x0A]
	ldr r0, _080FCC74 @ =0x080FCC79
	str r0, [r6, #0x04]
_080FCC4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080FCC50: .4byte 0x03000FD8
_080FCC54: .4byte 0x0000034A
_080FCC58: .4byte 0x0000034E
_080FCC5C: .4byte 0x0000034D
_080FCC60: .4byte 0x0000034F
_080FCC64: .4byte 0x00000351
_080FCC68: .4byte 0x03001034
_080FCC6C: .4byte 0x33333333
_080FCC70: .4byte 0x06017600
_080FCC74: .4byte sub_80FCC78
	thumb_func_start sub_80FCC78
sub_80FCC78:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0x00
	movs r5, #0x00
_080FCC84:
	ldr r7, _080FCD4C @ =0x03000FD8
	ldr r0, [r7, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x70]
	cmp r1, #0x00
	beq _080FCC9E
	adds r0, r4, #0x0
	adds r0, #0x08
	bl _call_via_r1
_080FCC9E:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _080FCCDA
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_807F47C
	adds r0, r4, #0x0
	adds r0, #0xB6
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x7E
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x02
	ldrb r0, [r2, #0x00]
	movs r3, #0x11
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	str r5, [r4, #0x74]
	str r5, [r4, #0x70]
	str r5, [r4, #0x5C]
_080FCCDA:
	adds r1, r6, #0x1
	ldr r0, [r7, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x70]
	cmp r1, #0x00
	beq _080FCCF4
	adds r0, r4, #0x0
	adds r0, #0x08
	bl _call_via_r1
_080FCCF4:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _080FCD30
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_807F47C
	adds r0, r4, #0x0
	adds r0, #0xB6
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x7E
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x02
	ldrb r0, [r2, #0x00]
	movs r3, #0x11
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	str r5, [r4, #0x74]
	str r5, [r4, #0x70]
	str r5, [r4, #0x5C]
_080FCD30:
	adds r6, #0x02
	cmp r6, #0x07
	ble _080FCC84
	bl sub_8082994
	ldr r1, [r7, #0x00]
	ldrb r0, [r1, #0x04]
	cmp r0, #0x00
	beq _080FCD48
	ldrb r0, [r1, #0x05]
	cmp r0, #0x00
	bne _080FCD54
_080FCD48:
	ldr r0, _080FCD50 @ =0x08101471
	b _080FCD56
_080FCD4C: .4byte 0x03000FD8
_080FCD50: .4byte sub_8101470
_080FCD54:
	ldr r0, _080FCD64 @ =0x080FCD69
_080FCD56:
	mov r1, r8
	str r0, [r1, #0x04]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FCD64: .4byte sub_80FCD68
	thumb_func_start sub_80FCD68
sub_80FCD68:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	movs r7, #0x00
	movs r0, #0x00
	mov r9, r0
	mov r8, r0
	movs r1, #0x00
	str r1, [sp, #0x000]
	ldr r0, _080FCE60 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	beq _080FCDDA
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080FCDDA
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	mvns r0, r0
	cmp r0, #0x00
	beq _080FCDDA
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080FCDDA
	movs r0, #0x01
	str r0, [sp, #0x000]
_080FCDDA:
	movs r6, #0x00
_080FCDDC:
	ldr r0, _080FCE60 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080FCDFC
	cmp r1, #0x04
	bne _080FCE8A
_080FCDFC:
	movs r3, #0x88
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	movs r5, #0x80
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080FCE8A
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x02
	negs r1, r1
	cmp r0, r1
	bne _080FCE36
	ldr r0, [sp, #0x000]
	cmp r0, #0x00
	beq _080FCE36
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080FCE8A
_080FCE36:
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0E
	beq _080FCE64
	movs r2, #0x83
	lsls r2, r2, #0x01
	adds r0, r4, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r2, #0x16
	adds r1, r4, r2
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080FCE5A
	adds r0, #0xFF
_080FCE5A:
	asrs r5, r0, #0x08
	b _080FCE66
	.byte 0x00, 0x00
_080FCE60: .4byte 0x03000FD8
_080FCE64:
	ldr r5, _080FCF4C @ =0x7FFFFFFF
_080FCE66:
	cmp r5, r9
	bne _080FCE7E
	movs r0, #0x01
	add r8, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	mov r0, r8
	bl sub_81DD77C
	cmp r0, #0x00
	beq _080FCE86
_080FCE7E:
	cmp r5, r9
	ble _080FCE8A
	movs r1, #0x01
	mov r8, r1
_080FCE86:
	adds r7, r4, #0x0
	mov r9, r5
_080FCE8A:
	adds r6, #0x01
	cmp r6, #0x07
	ble _080FCDDC
	cmp r7, #0x00
	bne _080FCF58
	movs r3, #0x00
	ldr r2, _080FCF50 @ =0x03000FD8
	mov r8, r2
	mov r6, r8
	movs r0, #0x06
	mov r12, r0
	movs r5, #0x88
	lsls r5, r5, #0x01
	movs r7, #0x7F
_080FCEA6:
	ldr r0, [r6, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x06
	beq _080FCEC8
	adds r2, r4, r5
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
_080FCEC8:
	adds r1, r3, #0x1
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x06
	beq _080FCEEC
	adds r2, r4, r5
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
_080FCEEC:
	adds r1, r3, #0x2
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x06
	beq _080FCF10
	adds r2, r4, r5
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
_080FCF10:
	adds r1, r3, #0x3
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x06
	beq _080FCF34
	adds r2, r4, r5
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
_080FCF34:
	adds r3, #0x04
	cmp r3, #0x07
	ble _080FCEA6
	mov r2, r8
	ldr r1, [r2, #0x00]
	ldr r0, _080FCF54 @ =0x000002BB
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	b _080FD07C
	.byte 0x00, 0x00
_080FCF4C: .4byte 0x7FFFFFFF
_080FCF50: .4byte 0x03000FD8
_080FCF54: .4byte 0x000002BB
_080FCF58:
	ldr r1, [sp, #0x000]
	cmp r1, #0x00
	beq _080FCFBA
	ldr r0, _080FCF8C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080FCFBA
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	cmp r0, #0x01
	beq _080FCF90
	cmp r0, #0x02
	beq _080FCFA8
	b _080FCFBA
	.byte 0x00, 0x00
_080FCF8C: .4byte 0x03000FD8
_080FCF90:
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080FCFBA
	b _080FCFB8
_080FCFA8:
	adds r0, r7, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080FCFBA
_080FCFB8:
	adds r7, r3, #0x0
_080FCFBA:
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x15
	bne _080FD014
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	cmp r0, #0x01
	beq _080FCFF4
	cmp r0, #0x01
	bcc _080FCFE0
	cmp r0, #0x02
	beq _080FCFFE
	b _080FD006
_080FCFE0:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _080FCFF0 @ =0x0000F3FF
	ands r0, r1
	strh r0, [r2, #0x00]
	b _080FD006
_080FCFF0: .4byte 0x0000F3FF
_080FCFF4:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81084B4
	b _080FD006
_080FCFFE:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81083EC
_080FD006:
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldr r2, _080FD08C @ =0xFFFC7FFF
	ands r1, r2
	str r1, [r0, #0x00]
_080FD014:
	ldr r0, _080FD090 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	str r7, [r0, #0x7C]
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x87
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	movs r4, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _080FD094 @ =0x080FD09D
	mov r1, r10
	str r0, [r1, #0x04]
	bl sub_810CBC8
	mov r2, r10
	strh r4, [r2, #0x18]
	adds r0, r7, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080FD07C
	bl sub_810C950
	movs r2, #0x96
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0B
	bne _080FD066
	movs r0, #0x01
	mov r1, r10
	strh r0, [r1, #0x18]
_080FD066:
	ldr r2, _080FD098 @ =0x0000012B
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bne _080FD07C
	mov r1, r10
	ldrh r0, [r1, #0x18]
	movs r1, #0x02
	orrs r0, r1
	mov r2, r10
	strh r0, [r2, #0x18]
_080FD07C:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FD08C: .4byte 0xFFFC7FFF
_080FD090: .4byte 0x03000FD8
_080FD094: .4byte sub_80FD09C
_080FD098: .4byte 0x0000012B
	thumb_func_start sub_80FD09C
sub_80FD09C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080FD11C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x7C]
	bl sub_80813A0
	movs r1, #0x18
	ldsh r0, [r6, r1]
	ldr r1, _080FD120 @ =0x080FD39D
	cmp r0, #0x00
	beq _080FD0B6
	ldr r1, _080FD124 @ =0x080FD1AD
_080FD0B6:
	str r1, [r6, #0x04]
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x21
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x00]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r5, r4, r1
	ldrh r1, [r5, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080FD138
	ldr r0, _080FD128 @ =0x00000121
	adds r0, r0, r4
	mov r12, r0
	ldrb r3, [r0, #0x00]
	lsls r2, r3, #0x19
	lsrs r2, r2, #0x1D
	subs r2, #0x01
	movs r0, #0x07
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x71
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	movs r0, #0x07
	ands r2, r0
	cmp r2, #0x00
	bne _080FD192
	adds r0, r4, #0x0
	bl sub_8108928
	ldr r0, _080FD12C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080FD130 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, [r6, #0x04]
	str r1, [r0, #0x00]
	ldr r0, _080FD134 @ =0x0810707D
	str r0, [r6, #0x04]
	b _080FD192
_080FD11C: .4byte 0x03000FD8
_080FD120: .4byte sub_80FD39C
_080FD124: .4byte sub_80FD1AC
_080FD128: .4byte 0x00000121
_080FD12C: .4byte 0x03000FDC
_080FD130: .4byte 0x00008E58
_080FD134: .4byte sub_810707C
_080FD138:
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080FD192
	ldr r0, _080FD198 @ =0x00000121
	adds r0, r0, r4
	mov r12, r0
	ldrb r3, [r0, #0x00]
	lsls r2, r3, #0x19
	lsrs r2, r2, #0x1D
	subs r2, #0x01
	movs r0, #0x07
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x71
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	movs r0, #0x07
	ands r2, r0
	cmp r2, #0x00
	bne _080FD192
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r2, #0xA0
	lsls r2, r2, #0x03
	movs r1, #0x10
	bl sub_8087318
	ldr r0, _080FD19C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080FD1A0 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, [r6, #0x04]
	str r1, [r0, #0x00]
	ldr r0, _080FD1A4 @ =0x08107041
	str r0, [r6, #0x04]
	ldrh r1, [r5, #0x00]
	ldr r0, _080FD1A8 @ =0x0000FCFF
	ands r0, r1
	strh r0, [r5, #0x00]
_080FD192:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080FD198: .4byte 0x00000121
_080FD19C: .4byte 0x03000FDC
_080FD1A0: .4byte 0x00008E58
_080FD1A4: .4byte sub_8107040
_080FD1A8: .4byte 0x0000FCFF
