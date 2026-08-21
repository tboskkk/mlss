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
