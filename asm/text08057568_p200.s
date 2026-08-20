	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810D6C4
sub_810D6C4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0810D6EC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0xC5
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, _0810D6F0 @ =0xFFFFFC00
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _0810D6F4
	adds r0, r4, #0x0
	bl sub_810971C
	b _0810D704
	.byte 0x00, 0x00
_0810D6EC: .4byte 0x03000FD8
_0810D6F0: .4byte 0xFFFFFC00
_0810D6F4:
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_81092B8
	adds r0, r4, #0x0
	bl sub_810971C
_0810D704:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
