	.syntax unified
	.text

	thumb_func_start sub_80E8DE4
sub_80E8DE4:
	push {r4, r5, lr}
	bl sub_80E5810
	ldr r0, _080E8E50 @ =0x080E8B85
	bl sub_8199F24
	ldr r4, _080E8E54 @ =0x03000FB8
	ldr r2, _080E8E58 @ =0x08200170
	movs r0, #0x01
	movs r1, #0x34
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	ldr r0, _080E8E5C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	movs r2, #0x34
	bl _call_via_r3
	bl sub_80E8D90
	ldr r0, _080E8E60 @ =0x0839EEB8
	ldr r4, [r0, #0x1C]
	ldr r0, [r4, #0x0C]
	adds r4, r4, r0
	adds r0, r4, #0x0
	bl sub_80198B0
	adds r1, r0, #0x0
	ldr r2, _080E8E64 @ =0x08200178
	movs r0, #0x01
	bl alloc_heap_8018CEC
	adds r5, r0, #0x0
	ldr r0, _080E8E68 @ =0x03000C84
	ldr r2, [r0, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, _080E8E6C @ =0x040000D4
	str r5, [r1, #0x00]
	ldr r0, _080E8E70 @ =0x06010000
	str r0, [r1, #0x04]
	ldr r0, _080E8E74 @ =0x840000A0
	str r0, [r1, #0x08]
	ldr r0, [r1, #0x08]
	adds r0, r5, #0x0
	bl free_heap_memory_8018C68
	pop {r4, r5}
	pop {r0}
	bx r0
_080E8E50: .4byte sub_80E8B84
_080E8E54: .4byte 0x03000FB8
_080E8E58: .4byte dword_8200170 @ =0x08200170
_080E8E5C: .4byte 0x03001034
_080E8E60: .4byte dword_839EEB8 @ =0x0839EEB8
_080E8E64: .4byte dword_8200178 @ =0x08200178
_080E8E68: .4byte 0x03000C84
_080E8E6C: .4byte 0x040000D4
_080E8E70: .4byte 0x06010000
_080E8E74: .4byte 0x840000A0
