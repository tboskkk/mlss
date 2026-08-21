	.include "asm/macros.inc"

	.syntax unified
	.text

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
