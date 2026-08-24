	.syntax unified
	.text

	thumb_func_start sub_8099AB8
sub_8099AB8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08099B08
	bl sub_80E3C3C
	movs r5, #0x80
	lsls r5, r5, #0x02
	ldr r0, [r4, #0x30]
	adds r4, r0, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _08099BB4
_08099AD8:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	bge _08099AE0
	adds r0, #0xFF
_08099AE0:
	asrs r0, r0, #0x08
	ldr r1, [r4, #0x08]
	cmp r1, #0x00
	bge _08099AEA
	adds r1, #0xFF
_08099AEA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x0C]
	cmp r2, #0x00
	bge _08099AF4
	adds r2, #0xFF
_08099AF4:
	asrs r2, r2, #0x08
	str r5, [sp, #0x000]
	movs r3, #0x00
	bl sub_80E38E8
	adds r5, #0x02
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _08099AD8
	b _08099BB4
_08099B08:
	ldr r2, _08099BBC @ =0x03001034
	ldr r0, _08099BC0 @ =0x08198154
	ldr r1, _08099BC4 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08099BC8 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08099BCC @ =0x00003CD0
	adds r0, r0, r1
	ldr r1, _08099BD0 @ =0x02000460
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _08099BD4 @ =0x0300034C
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _08099BD8 @ =0x03000D74
	ldr r0, [r2, #0x00]
	ldrh r1, [r0, #0x28]
	strh r1, [r0, #0x2A]
	ldrh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	movs r3, #0x00
	adds r5, r2, #0x0
	ldr r2, _08099BDC @ =0x00001FFF
	ldr r0, _08099BE0 @ =0x0000FFFF
	adds r4, r0, #0x0
_08099B48:
	ldr r0, [r5, #0x00]
	lsls r1, r3, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r2
	bne _08099B5A
	orrs r0, r4
	strh r0, [r1, #0x00]
_08099B5A:
	adds r1, r3, #0x1
	ldr r0, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r2
	bne _08099B6E
	orrs r0, r4
	strh r0, [r1, #0x00]
_08099B6E:
	adds r1, r3, #0x2
	ldr r0, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r2
	bne _08099B82
	orrs r0, r4
	strh r0, [r1, #0x00]
_08099B82:
	adds r1, r3, #0x3
	ldr r0, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r2
	bne _08099B96
	orrs r0, r4
	strh r0, [r1, #0x00]
_08099B96:
	adds r1, r3, #0x4
	ldr r0, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r2
	bne _08099BAA
	orrs r0, r4
	strh r0, [r1, #0x00]
_08099BAA:
	adds r3, #0x05
	cmp r3, #0x0E
	ble _08099B48
	movs r0, #0x00
	str r0, [r6, #0x04]
_08099BB4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08099BBC: .4byte 0x03001034
_08099BC0: .4byte dword_8198154 @ =0x08198154
_08099BC4: .4byte dword_81980D8 @ =0x081980D8
_08099BC8: .4byte 0x03000FDC
_08099BCC: .4byte 0x00003CD0
_08099BD0: .4byte 0x02000460
_08099BD4: .4byte 0x0300034C
_08099BD8: .4byte 0x03000D74
_08099BDC: .4byte 0x00001FFF
_08099BE0: .4byte 0x0000FFFF
