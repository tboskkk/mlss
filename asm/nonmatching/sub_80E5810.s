	.syntax unified
	.text

	thumb_func_start sub_80E5810
sub_80E5810:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r6, _080E5868 @ =0x03000FB4
	ldr r5, _080E586C @ =0x08001AF8
	ldr r0, _080E5870 @ =0x08001010
	mov r8, r0
	subs r5, r5, r0
	ldr r4, _080E5874 @ =0x0819941C
	ldr r0, _080E5878 @ =0x08198784
	subs r4, r4, r0
	adds r4, r5, r4
	ldr r1, _080E587C @ =0x08000F9C
	ldr r0, _080E5880 @ =0x08000DB4
	subs r1, r1, r0
	adds r1, r4, r1
	ldr r2, _080E5884 @ =0x08200130
	movs r0, #0x00
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r6, #0x00]
	lsls r2, r5, #0x09
	lsrs r2, r2, #0x0B
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, r8
	bl CpuSet
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldr r1, _080E5888 @ =0x0851F9E8
	bl sub_81994EC
	ldr r0, [r6, #0x00]
	adds r0, r0, r4
	bl sub_80E3FD8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080E5868: .4byte 0x03000FB4
_080E586C: .4byte dword_8001AF8 @ =0x08001AF8
_080E5870: .4byte dword_8001010 @ =0x08001010
_080E5874: .4byte 0x0819941C
_080E5878: .4byte 0x08198784
_080E587C: .4byte dword_8000F9C @ =0x08000F9C
_080E5880: .4byte dword_8000DB4 @ =0x08000DB4
_080E5884: .4byte dword_8200130 @ =0x08200130
_080E5888: .4byte 0x0851F9E8
