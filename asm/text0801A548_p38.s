	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start make_fldm_801AF5C
make_fldm_801AF5C: @ 0801AF5C
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	movs r0, #0xC9
	lsls r0, r0, #0x02
	ldr r5, _0801AF9C @ =0x081E23B0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	adds r2, r0, #0x0
	movs r3, #0x01
	negs r3, r3
	cmp r4, #0x00
	bne _0801AF7E
	movs r3, #0x73
_0801AF7E:
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
	add r1, sp, #0x004
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl init_fldm_8021FF8
	add sp, #0x008
	pop {r4, r5}
	pop {r0}
	bx r0
_0801AF9C: .4byte 0x081E23B0
	thumb_func_start sub_801AFA0
sub_801AFA0:
	push {r4, lr}
	add sp, #-0x004
	ldr r4, _0801AFDC @ =0x03000D40
	ldrb r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801AFD4
	bl sub_80E9AF8
	bl sub_80E9D04
	bl sub_801BD30
	movs r0, #0x00
	str r0, [sp, #0x000]
	ldr r2, _0801AFE0 @ =0x05000001
	mov r0, sp
	adds r1, r4, #0x0
	bl CpuSet
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_0801AFD4:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0801AFDC: .4byte 0x03000D40
_0801AFE0: .4byte 0x05000001
	thumb_func_start sub_801AFE4
sub_801AFE4:
	push {r4, lr}
	ldr r4, _0801B010 @ =0x03000D40
	ldrb r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0801B008
	movs r0, #0x01
	bl sub_801BD50
	bl sub_80E9D1C
	bl sub_80E9B0C
	ldrb r0, [r4, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x00]
_0801B008:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801B010: .4byte 0x03000D40
	.byte 0x00, 0xB5, 0xFF, 0xF7, 0xC3, 0xFF, 0x05, 0x48, 0x00, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xCD, 0xF0
	.byte 0xCD, 0xFE, 0x00, 0x20, 0xFF, 0xF7, 0xDC, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0xB8, 0x0F, 0x00, 0x03
	thumb_func_start sub_801B034
sub_801B034:
	push {r4, lr}
	ldr r0, _0801B058 @ =0x0300034C
	ldrh r1, [r0, #0x28]
	ldr r0, _0801B05C @ =0x00000307
	cmp r1, r0
	bne _0801B064
	ldr r4, _0801B060 @ =0x081E23A0
	movs r0, #0x4C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	bl bclr_init
	b _0801B07A
_0801B058: .4byte 0x0300034C
_0801B05C: .4byte 0x00000307
_0801B060: .4byte 0x081E23A0
_0801B064:
	ldr r4, _0801B080 @ =0x081E23A8
	movs r0, #0x4C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	bl comp_init
_0801B07A:
	pop {r4}
	pop {r0}
	bx r0
_0801B080: .4byte 0x081E23A8
	thumb_func_start sub_801B084
sub_801B084:
	push {lr}
	ldr r0, _0801B0A4 @ =0x0300034C
	ldr r1, _0801B0A8 @ =0x03000D3C
	ldrh r2, [r0, #0x2A]
	ldrh r0, [r1, #0x00]
	ands r0, r2
	cmp r0, #0x00
	beq _0801B09E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x50
	bl play_sfx_80195B4
_0801B09E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801B0A4: .4byte 0x0300034C
_0801B0A8: .4byte 0x03000D3C
