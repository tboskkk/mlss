	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806A7A0
sub_806A7A0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806A7BA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_0806A7BA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x95, 0xA8, 0x06, 0x08
	thumb_func_start sub_806A7CC
sub_806A7CC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8086C64
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_806A7EC
sub_806A7EC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806A810 @ =0x0808750D
	str r0, [r5, #0x4C]
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806A810: .4byte sub_808750C
	thumb_func_start sub_806A814
sub_806A814:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A832
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0xFF
	strh r1, [r0, #0x00]
	ldr r0, _0806A838 @ =0x0806A8B1
	str r0, [r4, #0x4C]
_0806A832:
	pop {r4}
	pop {r0}
	bx r0
_0806A838: .4byte sub_806A8B0
	thumb_func_start sub_806A83C
sub_806A83C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A878
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	bl sub_8199F30
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r4, [r1, #0x00]
	adds r1, #0x04
	ldr r1, [r1, #0x00]
	bl __umodsi3
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r4, [r0, #0x00]
	ldr r0, _0806A880 @ =0x0806A47D
	str r0, [r5, #0x4C]
_0806A878:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A880: .4byte sub_806A47C
	.byte 0x01, 0x20, 0x70, 0x47, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xE1, 0xA8, 0x06, 0x08
	thumb_func_start sub_806A894
sub_806A894:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A8AC @ =0x0806A909
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806A8AC: .4byte sub_806A908
	thumb_func_start sub_806A8B0
sub_806A8B0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806A8D4
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A8DC @ =0x0808750D
	str r0, [r4, #0x4C]
_0806A8D4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A8DC: .4byte sub_808750C
	thumb_func_start sub_806A8E0
sub_806A8E0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0806A8FC
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A904 @ =0x0806A3F9
	str r0, [r4, #0x4C]
_0806A8FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A904: .4byte sub_806A3F8
	thumb_func_start sub_806A908
sub_806A908:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806A972
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806A978 @ =0x0806A97D
	str r0, [r4, #0x4C]
	movs r0, #0x89
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0806A972:
	pop {r4}
	pop {r0}
	bx r0
_0806A978: .4byte sub_806A97C
