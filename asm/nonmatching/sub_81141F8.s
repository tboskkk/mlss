	.syntax unified
	.text

	thumb_func_start sub_81141F8
sub_81141F8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0811424C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x60]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r0, [r3, #0x28]
	ldr r2, _08114250 @ =0x00000113
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08114260
	ldr r0, [r1, #0x64]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r2, #0x28]
	ldr r1, _08114250 @ =0x00000113
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08114260
	ldr r0, [r3, #0x50]
	str r0, [r3, #0x4C]
	ldr r0, [r2, #0x50]
	str r0, [r2, #0x4C]
	str r1, [r3, #0x50]
	str r1, [r2, #0x50]
	ldr r1, [r3, #0x4C]
	cmp r1, #0x00
	beq _0811423C
	ldr r0, _08114254 @ =0x081141F5
	cmp r1, r0
	bne _08114248
_0811423C:
	ldr r1, [r2, #0x4C]
	cmp r1, #0x00
	beq _0811425C
	ldr r0, _08114254 @ =0x081141F5
	cmp r1, r0
	beq _0811425C
_08114248:
	ldr r0, _08114258 @ =0x081141F9
	b _0811425E
_0811424C: .4byte 0x03000FD8
_08114250: .4byte 0x00000113
_08114254: .4byte 0x081141F5
_08114258: .4byte sub_81141F8
_0811425C:
	ldr r0, _08114268 @ =0x081145F9
_0811425E:
	str r0, [r4, #0x4C]
_08114260:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08114268: .4byte sub_81145F8
