	.syntax unified
	.text

	thumb_func_start sub_81994EC
sub_81994EC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _08199574 @ =0x03001070
	str r1, [r0, #0x00]
	ldr r1, _08199578 @ =0x03001074
	movs r0, #0x00
	str r0, [r1, #0x00]
	cmp r6, #0x00
	beq _081995B4
	ldr r4, _0819957C @ =0x08198784
	ldr r5, _08199580 @ =0x0819941C
	subs r5, r5, r4
	lsls r2, r5, #0x0A
	lsrs r2, r2, #0x0B
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl CpuSet
	ldr r1, _08199584 @ =0x03001040
	str r6, [r1, #0x00]
	ldr r0, _08199588 @ =0x08198958
	subs r0, r4, r0
	subs r0, r6, r0
	str r0, [r1, #0x04]
	ldr r0, _0819958C @ =0x08198BE0
	subs r0, r4, r0
	subs r0, r6, r0
	str r0, [r1, #0x08]
	ldr r0, _08199590 @ =0x08198C78
	subs r0, r4, r0
	subs r0, r6, r0
	str r0, [r1, #0x0C]
	ldr r0, _08199594 @ =0x081987F4
	subs r0, r4, r0
	subs r0, r6, r0
	str r0, [r1, #0x10]
	ldr r0, _08199598 @ =0x081989F4
	subs r0, r4, r0
	subs r0, r6, r0
	str r0, [r1, #0x14]
	ldr r0, _0819959C @ =0x08198D58
	subs r0, r4, r0
	subs r0, r6, r0
	str r0, [r1, #0x18]
	ldr r0, _081995A0 @ =0x08198E54
	subs r0, r4, r0
	subs r0, r6, r0
	str r0, [r1, #0x1C]
	ldr r0, _081995A4 @ =0x081988A8
	subs r0, r4, r0
	subs r0, r6, r0
	str r0, [r1, #0x20]
	ldr r0, _081995A8 @ =0x08198AEC
	subs r0, r4, r0
	subs r0, r6, r0
	str r0, [r1, #0x24]
	ldr r0, _081995AC @ =0x08198FC4
	subs r0, r4, r0
	subs r0, r6, r0
	str r0, [r1, #0x28]
	ldr r0, _081995B0 @ =0x081990EC
	subs r4, r4, r0
	subs r4, r6, r4
	str r4, [r1, #0x2C]
	adds r5, r6, r5
	adds r0, r5, #0x0
	b _081995E8
	.byte 0x00, 0x00
_08199574: .4byte 0x03001070
_08199578: .4byte 0x03001074
_0819957C: .4byte 0x08198784
_08199580: .4byte 0x0819941C
_08199584: .4byte 0x03001040
_08199588: .4byte 0x08198958
_0819958C: .4byte 0x08198BE0
_08199590: .4byte 0x08198C78
_08199594: .4byte 0x081987F4
_08199598: .4byte 0x081989F4
_0819959C: .4byte 0x08198D58
_081995A0: .4byte 0x08198E54
_081995A4: .4byte 0x081988A8
_081995A8: .4byte 0x08198AEC
_081995AC: .4byte 0x08198FC4
_081995B0: .4byte 0x081990EC
_081995B4:
	ldr r1, _081995F0 @ =0x03001040
	ldr r0, _081995F4 @ =0x08198784
	str r0, [r1, #0x00]
	ldr r0, _081995F8 @ =0x08198958
	str r0, [r1, #0x04]
	ldr r0, _081995FC @ =0x08198BE0
	str r0, [r1, #0x08]
	ldr r0, _08199600 @ =0x08198C78
	str r0, [r1, #0x0C]
	ldr r0, _08199604 @ =0x081987F4
	str r0, [r1, #0x10]
	ldr r0, _08199608 @ =0x081989F4
	str r0, [r1, #0x14]
	ldr r0, _0819960C @ =0x08198D58
	str r0, [r1, #0x18]
	ldr r0, _08199610 @ =0x08198E54
	str r0, [r1, #0x1C]
	ldr r0, _08199614 @ =0x081988A8
	str r0, [r1, #0x20]
	ldr r0, _08199618 @ =0x08198AEC
	str r0, [r1, #0x24]
	ldr r0, _0819961C @ =0x08198FC4
	str r0, [r1, #0x28]
	ldr r0, _08199620 @ =0x081990EC
	str r0, [r1, #0x2C]
	movs r0, #0x00
_081995E8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081995F0: .4byte 0x03001040
_081995F4: .4byte 0x08198784
_081995F8: .4byte 0x08198958
_081995FC: .4byte 0x08198BE0
_08199600: .4byte 0x08198C78
_08199604: .4byte 0x081987F4
_08199608: .4byte 0x081989F4
_0819960C: .4byte 0x08198D58
_08199610: .4byte 0x08198E54
_08199614: .4byte 0x081988A8
_08199618: .4byte 0x08198AEC
_0819961C: .4byte 0x08198FC4
_08199620: .4byte 0x081990EC
