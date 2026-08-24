	.syntax unified
	.text

	thumb_func_start sub_8134CAC
sub_8134CAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x164
	ldr r3, [r1, #0x00]
	mov r12, r3
	ldr r4, [r2, #0x00]
	str r4, [sp, #0x000]
	mov r5, r12
	muls r5, r4
	str r5, [sp, #0x004]
	ldr r3, [r1, #0x04]
	mov r10, r3
	ldr r4, [r2, #0x10]
	str r4, [sp, #0x008]
	mov r5, r10
	muls r5, r4
	str r5, [sp, #0x00C]
	ldr r3, [r1, #0x08]
	mov r9, r3
	ldr r4, [r2, #0x20]
	str r4, [sp, #0x010]
	mov r5, r9
	muls r5, r4
	str r5, [sp, #0x014]
	ldr r7, [r1, #0x0C]
	ldr r3, [r2, #0x30]
	str r3, [sp, #0x018]
	adds r4, r7, #0x0
	muls r4, r3
	str r4, [sp, #0x01C]
	ldr r5, [r2, #0x04]
	str r5, [sp, #0x020]
	mov r3, r12
	muls r3, r5
	str r3, [sp, #0x024]
	ldr r4, [r2, #0x14]
	str r4, [sp, #0x028]
	mov r5, r10
	muls r5, r4
	str r5, [sp, #0x02C]
	ldr r3, [r2, #0x24]
	str r3, [sp, #0x030]
	mov r4, r9
	muls r4, r3
	str r4, [sp, #0x034]
	ldr r5, [r2, #0x34]
	str r5, [sp, #0x038]
	adds r3, r7, #0x0
	muls r3, r5
	str r3, [sp, #0x03C]
	ldr r4, [r2, #0x08]
	str r4, [sp, #0x040]
	mov r5, r12
	muls r5, r4
	str r5, [sp, #0x044]
	ldr r3, [r2, #0x18]
	str r3, [sp, #0x048]
	mov r4, r10
	muls r4, r3
	str r4, [sp, #0x04C]
	ldr r5, [r2, #0x28]
	str r5, [sp, #0x050]
	mov r3, r9
	muls r3, r5
	str r3, [sp, #0x054]
	ldr r4, [r2, #0x38]
	str r4, [sp, #0x058]
	adds r5, r7, #0x0
	muls r5, r4
	str r5, [sp, #0x05C]
	ldr r3, [r2, #0x0C]
	str r3, [sp, #0x060]
	mov r4, r12
	muls r4, r3
	str r4, [sp, #0x064]
	ldr r5, [r2, #0x1C]
	str r5, [sp, #0x068]
	mov r3, r10
	muls r3, r5
	str r3, [sp, #0x06C]
	ldr r4, [r2, #0x2C]
	str r4, [sp, #0x070]
	mov r5, r9
	muls r5, r4
	str r5, [sp, #0x074]
	ldr r2, [r2, #0x3C]
	str r2, [sp, #0x078]
	adds r3, r7, #0x0
	muls r3, r2
	str r3, [sp, #0x07C]
	ldr r5, [r1, #0x10]
	ldr r2, [sp, #0x000]
	adds r4, r5, #0x0
	muls r4, r2
	str r4, [sp, #0x080]
	ldr r4, [r1, #0x14]
	ldr r5, [sp, #0x008]
	adds r3, r4, #0x0
	muls r3, r5
	str r3, [sp, #0x084]
	ldr r3, [r1, #0x18]
	ldr r4, [sp, #0x010]
	adds r2, r3, #0x0
	muls r2, r4
	str r2, [sp, #0x088]
	ldr r2, [r1, #0x1C]
	ldr r3, [sp, #0x018]
	adds r5, r2, #0x0
	muls r5, r3
	str r5, [sp, #0x08C]
	ldr r5, [r1, #0x10]
	ldr r3, [sp, #0x020]
	adds r4, r5, #0x0
	muls r4, r3
	str r4, [sp, #0x090]
	ldr r5, [r1, #0x14]
	ldr r3, [sp, #0x028]
	adds r4, r5, #0x0
	muls r4, r3
	str r4, [sp, #0x094]
	ldr r5, [r1, #0x18]
	ldr r3, [sp, #0x030]
	adds r4, r5, #0x0
	muls r4, r3
	str r4, [sp, #0x098]
	ldr r5, [sp, #0x038]
	adds r4, r2, #0x0
	muls r4, r5
	str r4, [sp, #0x09C]
	ldr r4, [r1, #0x10]
	ldr r5, [sp, #0x040]
	adds r3, r4, #0x0
	muls r3, r5
	str r3, [sp, #0x0A0]
	ldr r4, [r1, #0x14]
	ldr r5, [sp, #0x048]
	adds r3, r4, #0x0
	muls r3, r5
	str r3, [sp, #0x0A4]
	ldr r4, [r1, #0x18]
	ldr r5, [sp, #0x050]
	adds r3, r4, #0x0
	muls r3, r5
	str r3, [sp, #0x0A8]
	ldr r4, [sp, #0x058]
	adds r3, r2, #0x0
	muls r3, r4
	str r3, [sp, #0x0AC]
	ldr r3, [r1, #0x10]
	ldr r4, [sp, #0x060]
	adds r5, r3, #0x0
	muls r5, r4
	str r5, [sp, #0x0B0]
	ldr r3, [r1, #0x14]
	ldr r4, [sp, #0x068]
	adds r5, r3, #0x0
	muls r5, r4
	str r5, [sp, #0x0B4]
	ldr r3, [r1, #0x18]
	ldr r4, [sp, #0x070]
	adds r5, r3, #0x0
	muls r5, r4
	str r5, [sp, #0x0B8]
	ldr r3, [sp, #0x078]
	adds r5, r2, #0x0
	muls r5, r3
	str r5, [sp, #0x0BC]
	ldr r5, [r1, #0x20]
	ldr r2, [sp, #0x000]
	adds r4, r5, #0x0
	muls r4, r2
	str r4, [sp, #0x0C0]
	ldr r4, [r1, #0x24]
	ldr r5, [sp, #0x008]
	adds r3, r4, #0x0
	muls r3, r5
	str r3, [sp, #0x158]
	ldr r3, [r1, #0x28]
	ldr r4, [sp, #0x010]
	adds r2, r3, #0x0
	muls r2, r4
	str r2, [sp, #0x0C4]
	ldr r2, [r1, #0x2C]
	ldr r3, [sp, #0x018]
	adds r5, r2, #0x0
	muls r5, r3
	str r5, [sp, #0x0C8]
	ldr r5, [r1, #0x20]
	ldr r3, [sp, #0x020]
	adds r4, r5, #0x0
	muls r4, r3
	str r4, [sp, #0x0CC]
	ldr r5, [r1, #0x24]
	ldr r3, [sp, #0x028]
	adds r4, r5, #0x0
	muls r4, r3
	str r4, [sp, #0x0D0]
	ldr r5, [r1, #0x28]
	ldr r3, [sp, #0x030]
	adds r4, r5, #0x0
	muls r4, r3
	str r4, [sp, #0x0D4]
	ldr r5, [sp, #0x038]
	adds r4, r2, #0x0
	muls r4, r5
	str r4, [sp, #0x0D8]
	ldr r4, [r1, #0x20]
	ldr r5, [sp, #0x040]
	adds r3, r4, #0x0
	muls r3, r5
	str r3, [sp, #0x0DC]
	ldr r4, [r1, #0x24]
	ldr r5, [sp, #0x048]
	adds r3, r4, #0x0
	muls r3, r5
	str r3, [sp, #0x0E0]
	ldr r4, [r1, #0x28]
	ldr r5, [sp, #0x050]
	adds r3, r4, #0x0
	muls r3, r5
	str r3, [sp, #0x0E4]
	ldr r4, [sp, #0x058]
	adds r3, r2, #0x0
	muls r3, r4
	str r3, [sp, #0x0E8]
	ldr r3, [r1, #0x20]
	ldr r4, [sp, #0x060]
	adds r5, r3, #0x0
	muls r5, r4
	str r5, [sp, #0x0EC]
	ldr r3, [r1, #0x24]
	ldr r4, [sp, #0x068]
	adds r5, r3, #0x0
	muls r5, r4
	str r5, [sp, #0x0F0]
	ldr r3, [r1, #0x28]
	ldr r4, [sp, #0x070]
	adds r5, r3, #0x0
	muls r5, r4
	str r5, [sp, #0x0F4]
	ldr r3, [sp, #0x078]
	adds r5, r2, #0x0
	muls r5, r3
	str r5, [sp, #0x0F8]
	ldr r4, [r1, #0x30]
	str r4, [sp, #0x0FC]
	ldr r2, [sp, #0x000]
	adds r5, r4, #0x0
	muls r5, r2
	str r5, [sp, #0x100]
	ldr r3, [r1, #0x34]
	str r3, [sp, #0x104]
	ldr r5, [sp, #0x008]
	adds r4, r3, #0x0
	muls r4, r5
	str r4, [sp, #0x108]
	ldr r2, [r1, #0x38]
	ldr r4, [sp, #0x010]
	adds r3, r2, #0x0
	muls r3, r4
	str r3, [sp, #0x10C]
	ldr r1, [r1, #0x3C]
	ldr r3, [sp, #0x018]
	adds r5, r1, #0x0
	muls r5, r3
	str r5, [sp, #0x110]
	ldr r5, [sp, #0x0FC]
	ldr r3, [sp, #0x020]
	adds r4, r5, #0x0
	muls r4, r3
	str r4, [sp, #0x114]
	ldr r5, [sp, #0x104]
	ldr r3, [sp, #0x028]
	adds r4, r5, #0x0
	muls r4, r3
	str r4, [sp, #0x118]
	ldr r5, [sp, #0x030]
	adds r4, r2, #0x0
	muls r4, r5
	str r4, [sp, #0x11C]
	ldr r4, [sp, #0x038]
	adds r3, r1, #0x0
	muls r3, r4
	str r3, [sp, #0x120]
	ldr r3, [sp, #0x0FC]
	ldr r4, [sp, #0x040]
	adds r5, r3, #0x0
	muls r5, r4
	str r5, [sp, #0x124]
	ldr r3, [sp, #0x104]
	ldr r4, [sp, #0x048]
	adds r5, r3, #0x0
	muls r5, r4
	str r5, [sp, #0x128]
	ldr r3, [sp, #0x050]
	adds r5, r2, #0x0
	muls r5, r3
	str r5, [sp, #0x12C]
	ldr r5, [sp, #0x058]
	adds r4, r1, #0x0
	muls r4, r5
	str r4, [sp, #0x130]
	ldr r4, [sp, #0x0FC]
	ldr r5, [sp, #0x060]
	adds r3, r4, #0x0
	muls r3, r5
	str r3, [sp, #0x134]
	ldr r4, [sp, #0x104]
	ldr r5, [sp, #0x068]
	adds r3, r4, #0x0
	muls r3, r5
	str r3, [sp, #0x138]
	ldr r4, [sp, #0x070]
	adds r3, r2, #0x0
	muls r3, r4
	str r3, [sp, #0x15C]
	ldr r2, [sp, #0x078]
	adds r5, r1, #0x0
	muls r5, r2
	str r5, [sp, #0x160]
	ldr r3, [sp, #0x004]
	ldr r4, [sp, #0x00C]
	adds r3, r3, r4
	mov r8, r3
	ldr r5, [sp, #0x014]
	add r8, r5
	ldr r1, [sp, #0x01C]
	add r8, r1
	ldr r2, [sp, #0x024]
	ldr r3, [sp, #0x02C]
	adds r2, r2, r3
	mov r9, r2
	ldr r4, [sp, #0x034]
	add r9, r4
	ldr r5, [sp, #0x03C]
	add r9, r5
	ldr r1, [sp, #0x044]
	ldr r2, [sp, #0x04C]
	adds r1, r1, r2
	mov r10, r1
	ldr r3, [sp, #0x054]
	add r10, r3
	ldr r4, [sp, #0x05C]
	add r10, r4
	ldr r5, [sp, #0x064]
	ldr r1, [sp, #0x06C]
	adds r5, r5, r1
	mov r12, r5
	ldr r2, [sp, #0x074]
	add r12, r2
	ldr r3, [sp, #0x07C]
	add r12, r3
	ldr r4, [sp, #0x080]
	ldr r5, [sp, #0x084]
	adds r3, r4, r5
	ldr r1, [sp, #0x088]
	adds r3, r3, r1
	ldr r2, [sp, #0x08C]
	adds r3, r3, r2
	ldr r5, [sp, #0x090]
	ldr r1, [sp, #0x094]
	adds r4, r5, r1
	ldr r2, [sp, #0x098]
	adds r4, r4, r2
	ldr r5, [sp, #0x09C]
	adds r4, r4, r5
	ldr r1, [sp, #0x0A0]
	ldr r2, [sp, #0x0A4]
	adds r5, r1, r2
	ldr r1, [sp, #0x0A8]
	adds r5, r5, r1
	ldr r2, [sp, #0x0AC]
	adds r5, r5, r2
	ldr r1, [sp, #0x0B0]
	ldr r2, [sp, #0x0B4]
	adds r6, r1, r2
	ldr r1, [sp, #0x0B8]
	adds r6, r6, r1
	ldr r2, [sp, #0x0BC]
	adds r6, r6, r2
	ldr r1, [sp, #0x0C0]
	ldr r2, [sp, #0x158]
	adds r7, r1, r2
	ldr r1, [sp, #0x0C4]
	adds r7, r7, r1
	ldr r2, [sp, #0x0C8]
	adds r7, r7, r2
	ldr r1, [sp, #0x0CC]
	ldr r2, [sp, #0x0D0]
	adds r1, r1, r2
	str r1, [sp, #0x13C]
	ldr r2, [sp, #0x0D4]
	adds r1, r1, r2
	ldr r2, [sp, #0x0D8]
	adds r1, r1, r2
	str r1, [sp, #0x13C]
	ldr r1, [sp, #0x0DC]
	ldr r2, [sp, #0x0E0]
	adds r1, r1, r2
	str r1, [sp, #0x140]
	ldr r2, [sp, #0x0E4]
	adds r1, r1, r2
	ldr r2, [sp, #0x0E8]
	adds r1, r1, r2
	str r1, [sp, #0x140]
	ldr r1, [sp, #0x0EC]
	ldr r2, [sp, #0x0F0]
	adds r1, r1, r2
	str r1, [sp, #0x144]
	ldr r2, [sp, #0x0F4]
	adds r1, r1, r2
	ldr r2, [sp, #0x0F8]
	adds r1, r1, r2
	str r1, [sp, #0x144]
	ldr r1, [sp, #0x100]
	ldr r2, [sp, #0x108]
	adds r1, r1, r2
	str r1, [sp, #0x148]
	ldr r2, [sp, #0x10C]
	adds r1, r1, r2
	ldr r2, [sp, #0x110]
	adds r1, r1, r2
	str r1, [sp, #0x148]
	ldr r1, [sp, #0x114]
	ldr r2, [sp, #0x118]
	adds r1, r1, r2
	str r1, [sp, #0x14C]
	ldr r2, [sp, #0x11C]
	adds r1, r1, r2
	ldr r2, [sp, #0x120]
	adds r1, r1, r2
	str r1, [sp, #0x14C]
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x128]
	adds r1, r1, r2
	str r1, [sp, #0x150]
	ldr r2, [sp, #0x12C]
	adds r1, r1, r2
	ldr r2, [sp, #0x130]
	adds r1, r1, r2
	str r1, [sp, #0x150]
	ldr r1, [sp, #0x134]
	ldr r2, [sp, #0x138]
	adds r1, r1, r2
	str r1, [sp, #0x154]
	ldr r2, [sp, #0x15C]
	adds r1, r1, r2
	ldr r2, [sp, #0x160]
	adds r1, r1, r2
	str r1, [sp, #0x154]
	ldr r1, _08135080 @ =0x08CDC470
	str r1, [r0, #0x40]
	mov r1, r8
	str r1, [r0, #0x00]
	mov r2, r9
	str r2, [r0, #0x04]
	mov r1, r10
	str r1, [r0, #0x08]
	mov r2, r12
	str r2, [r0, #0x0C]
	str r3, [r0, #0x10]
	str r4, [r0, #0x14]
	str r5, [r0, #0x18]
	str r6, [r0, #0x1C]
	str r7, [r0, #0x20]
	ldr r3, [sp, #0x13C]
	str r3, [r0, #0x24]
	ldr r4, [sp, #0x140]
	str r4, [r0, #0x28]
	ldr r5, [sp, #0x144]
	str r5, [r0, #0x2C]
	ldr r1, [sp, #0x148]
	str r1, [r0, #0x30]
	ldr r2, [sp, #0x14C]
	str r2, [r0, #0x34]
	ldr r3, [sp, #0x150]
	str r3, [r0, #0x38]
	ldr r4, [sp, #0x154]
	str r4, [r0, #0x3C]
	add sp, #0x164
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08135080: .4byte 0x08CDC470
