	.syntax unified
	.text

	thumb_func_start sub_80E588C
sub_80E588C:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	mov r8, r0
	mov r9, r1
	adds r6, r2, #0x0
	mov r10, r3
	ldr r5, _080E594C @ =0x03001034
	ldr r4, _080E5950 @ =0x03000FB8
	ldr r1, [r4, #0x00]
	ldr r3, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x34
	bl _call_via_r3
	ldr r0, _080E5954 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r3, [r5, #0x00]
	movs r0, #0x00
	movs r2, #0x34
	bl _call_via_r3
	ldr r0, [r4, #0x00]
	movs r3, #0x01
	movs r2, #0x01
	strh r2, [r0, #0x28]
	strh r2, [r0, #0x2A]
	movs r1, #0x02
	strh r1, [r0, #0x2C]
	strh r2, [r0, #0x2E]
	adds r0, #0x32
	strb r3, [r0, #0x00]
	movs r4, #0xDE
	lsls r4, r4, #0x01
	ldr r2, _080E5958 @ =0x08200148
	movs r0, #0x01
	adds r1, r4, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	mov r0, r8
	str r1, [r0, #0x04]
	ldr r3, [r5, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r2, _080E595C @ =0x08200150
	movs r0, #0x10
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	mov r1, r9
	adds r2, r6, #0x0
	mov r3, r10
	bl sub_80E94AC
	mov r1, r8
	str r0, [r1, #0x00]
	adds r6, #0x20
	ldr r2, _080E5960 @ =0x08200158
	movs r0, #0x01
	adds r1, r6, #0x0
	bl alloc_heap_8018CEC
	mov r3, r8
	ldr r2, [r3, #0x04]
	movs r3, #0xBE
	lsls r3, r3, #0x01
	adds r1, r2, r3
	str r0, [r1, #0x00]
	adds r0, #0x1F
	movs r1, #0x20
	negs r1, r1
	ands r0, r1
	adds r3, #0x18
	adds r1, r2, r3
	mov r3, r9
	subs r0, r0, r3
	str r0, [r1, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x01
	adds r1, r2, r0
	ldr r0, _080E5964 @ =0x083B8F64
	str r0, [r1, #0x00]
	mov r0, r8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080E594C: .4byte 0x03001034
_080E5950: .4byte 0x03000FB8
_080E5954: .4byte 0x03000FBC
_080E5958: .4byte dword_8200148 @ =0x08200148
_080E595C: .4byte dword_8200150 @ =0x08200150
_080E5960: .4byte dword_8200158 @ =0x08200158
_080E5964: .4byte dword_83B8F64 @ =0x083B8F64
