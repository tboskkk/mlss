	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E2EDC
sub_80E2EDC:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _080E2EF8 @ =0x08CDC2E8
	str r0, [r2, #0x18]
	ldr r3, [r2, #0x1C]
	cmp r3, #0x00
	beq _080E2EEE
	movs r0, #0x00
	str r0, [r3, #0x00]
_080E2EEE:
	adds r0, r2, #0x0
	bl process_remove
	pop {r0}
	bx r0
_080E2EF8: .4byte 0x08CDC2E8
	.byte 0x70, 0xB5, 0x04, 0x1C, 0x1E, 0x1C, 0x04, 0x9D, 0x09, 0x06, 0x09, 0x0E, 0x36, 0xF7, 0x4E, 0xFD
	.byte 0x0B, 0x48, 0xA0, 0x61, 0x00, 0x20, 0x20, 0x84, 0xE0, 0x61, 0x66, 0x84, 0x21, 0x1C, 0x24, 0x31
	.byte 0x0F, 0x20, 0x05, 0x40, 0xC0, 0x20, 0x05, 0x43, 0x0D, 0x70, 0x01, 0x31, 0x05, 0x20, 0x08, 0x70
	.byte 0x03, 0x20, 0xE0, 0x84, 0x06, 0x20, 0x20, 0x85, 0x20, 0x1C, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0xE8, 0xC2, 0xCD, 0x08
	thumb_func_start sub_80E2F40
sub_80E2F40:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r1, _080E2FF4 @ =0x0200000C
	ldr r2, _080E2FF8 @ =0x00001E04
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x0C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x08
	strh r0, [r1, #0x00]
	movs r3, #0x00
	ldr r7, _080E2FFC @ =0x0000014F
	ldr r0, _080E3000 @ =0x03000FDC
	mov r12, r0
	mov r6, r12
	ldr r5, _080E3004 @ =0x00005470
	ldr r4, _080E3008 @ =0x80008000
	ldr r2, _080E300C @ =0x0839FFE8
_080E2F68:
	ldr r1, [r6, #0x00]
	lsls r0, r3, #0x02
	adds r1, r1, r5
	adds r1, r1, r0
	ldr r0, [r2, #0x00]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	adds r0, r3, #0x1
	ldr r1, [r6, #0x00]
	lsls r0, r0, #0x02
	adds r1, r1, r5
	adds r1, r1, r0
	ldr r0, [r2, #0x04]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	adds r0, r3, #0x2
	ldr r1, [r6, #0x00]
	lsls r0, r0, #0x02
	adds r1, r1, r5
	adds r1, r1, r0
	ldr r0, [r2, #0x08]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	adds r0, r3, #0x3
	ldr r1, [r6, #0x00]
	lsls r0, r0, #0x02
	adds r1, r1, r5
	adds r1, r1, r0
	ldr r0, [r2, #0x0C]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	adds r2, #0x10
	adds r3, #0x04
	cmp r3, r7
	ble _080E2F68
	mov r1, r12
	ldr r0, [r1, #0x00]
	ldr r2, _080E3004 @ =0x00005470
	adds r0, r0, r2
	ldr r1, _080E3010 @ =0x0600F000
	movs r2, #0xA8
	lsls r2, r2, #0x03
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r2, _080E3014 @ =0x03001034
	ldr r0, _080E3018 @ =0x08198154
	ldr r1, _080E301C @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _080E3020 @ =0x083A04E8
	ldr r1, _080E3024 @ =0x02000180
	movs r2, #0x20
	bl _call_via_r3
	ldr r0, _080E3028 @ =0x0300034C
	ldr r1, _080E302C @ =0x0000FFFF
	strh r1, [r0, #0x02]
	ldr r1, _080E3030 @ =0x00000884
	adds r0, r0, r1
	movs r1, #0x01
	negs r1, r1
	str r1, [r0, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E2FF4: .4byte 0x0200000C
_080E2FF8: .4byte 0x00001E04
_080E2FFC: .4byte 0x0000014F
_080E3000: .4byte 0x03000FDC
_080E3004: .4byte 0x00005470
_080E3008: .4byte 0x80008000
_080E300C: .4byte 0x0839FFE8
_080E3010: .4byte 0x0600F000
_080E3014: .4byte 0x03001034
_080E3018: .4byte 0x08198154
_080E301C: .4byte 0x081980D8
_080E3020: .4byte 0x083A04E8
_080E3024: .4byte 0x02000180
_080E3028: .4byte 0x0300034C
_080E302C: .4byte 0x0000FFFF
_080E3030: .4byte 0x00000884
	thumb_func_start sub_80E3034
sub_80E3034:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_80E2F40
	ldr r4, _080E3088 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r0, #0x98
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, _080E308C @ =0x0300034C
	ldr r2, _080E3090 @ =0x000008C4
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r1, _080E3094 @ =0x080E30B1
	movs r0, #0x02
	bl sub_8018B78
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, _080E3098 @ =0x080E3215
	movs r1, #0x00
	bl sub_807FF48
	adds r4, r0, #0x0
	movs r0, #0x00
	cmp r5, #0x00
	bgt _080E307A
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
_080E307A:
	strh r0, [r4, #0x12]
	strh r5, [r4, #0x14]
	cmp r5, #0x00
	bge _080E309C
	movs r0, #0x43
	b _080E309E
	.byte 0x00, 0x00
_080E3088: .4byte 0x03000FD8
_080E308C: .4byte 0x0300034C
_080E3090: .4byte 0x000008C4
_080E3094: .4byte sub_80E30B0
_080E3098: .4byte sub_80E3214
_080E309C:
	movs r0, #0x34
_080E309E:
	strh r0, [r4, #0x16]
	adds r0, r4, #0x0
	bl sub_80E3214
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80E30B0
sub_80E30B0:
	push {r4, r5, r6, r7, lr}
	ldr r7, _080E312C @ =0x03000FD8
	ldr r0, [r7, #0x00]
	movs r1, #0x98
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080E30C6
	bl _call_via_r0
_080E30C6:
	ldr r2, _080E3130 @ =0x03001034
	ldr r0, _080E3134 @ =0x08198154
	ldr r1, _080E3138 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r6, _080E313C @ =0x03000FDC
	ldr r0, [r7, #0x00]
	ldrb r0, [r0, #0x0B]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x09
	ldr r4, _080E3140 @ =0x00003EF0
	adds r1, r1, r4
	ldr r0, [r6, #0x00]
	adds r0, r0, r1
	ldr r5, _080E3144 @ =0x04000010
	adds r1, r5, #0x0
	movs r2, #0x10
	bl _call_via_r3
	ldr r2, _080E3148 @ =0x040000B0
	ldrh r1, [r2, #0x0A]
	ldr r0, _080E314C @ =0x0000C5FF
	ands r0, r1
	strh r0, [r2, #0x0A]
	ldrh r1, [r2, #0x0A]
	ldr r0, _080E3150 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x0A]
	ldrh r0, [r2, #0x0A]
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x0B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x09
	adds r0, r0, r4
	ldr r1, [r6, #0x00]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	str r5, [r2, #0x04]
	ldr r0, _080E3154 @ =0xA6600004
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E312C: .4byte 0x03000FD8
_080E3130: .4byte 0x03001034
_080E3134: .4byte 0x08198154
_080E3138: .4byte 0x081980D8
_080E313C: .4byte 0x03000FDC
_080E3140: .4byte 0x00003EF0
_080E3144: .4byte 0x04000010
_080E3148: .4byte 0x040000B0
_080E314C: .4byte 0x0000C5FF
_080E3150: .4byte 0x00007FFF
_080E3154: .4byte 0xA6600004
	thumb_func_start sub_80E3158
sub_80E3158:
	push {r4, r5, r6, lr}
	ldr r1, _080E31E0 @ =0x040000B0
	ldrh r2, [r1, #0x0A]
	ldr r0, _080E31E4 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r2, [r1, #0x0A]
	ldr r0, _080E31E8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
	ldr r4, _080E31EC @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r5, #0x98
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x00]
	movs r0, #0x02
	bl sub_8018B78
	ldr r6, _080E31F0 @ =0x0200001A
	movs r0, #0x00
	strh r0, [r6, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_80844C4
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r1, _080E31F4 @ =0x04000010
	ldr r0, _080E31F8 @ =0x02000010
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _080E31FC @ =0x02000014
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _080E3200 @ =0x02000018
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _080E3204 @ =0x0200001C
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r1, #0x0A
	ldr r0, _080E3208 @ =0x02000012
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _080E320C @ =0x02000016
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldrh r0, [r6, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _080E3210 @ =0x0200001E
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080E31E0: .4byte 0x040000B0
_080E31E4: .4byte 0x0000C5FF
_080E31E8: .4byte 0x00007FFF
_080E31EC: .4byte 0x03000FD8
_080E31F0: .4byte 0x0200001A
_080E31F4: .4byte 0x04000010
_080E31F8: .4byte 0x02000010
_080E31FC: .4byte 0x02000014
_080E3200: .4byte 0x02000018
_080E3204: .4byte 0x0200001C
_080E3208: .4byte 0x02000012
_080E320C: .4byte 0x02000016
_080E3210: .4byte 0x0200001E
	thumb_func_start sub_80E3214
sub_80E3214:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x058
	adds r4, r0, #0x0
	ldr r0, _080E3284 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x0B]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r1, r0
	lsls r1, r1, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0B]
	movs r1, #0x16
	ldsh r0, [r4, r1]
	str r0, [sp, #0x00C]
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	str r0, [sp, #0x010]
	movs r3, #0x14
	ldsh r2, [r4, r3]
	str r2, [sp, #0x014]
	ldrh r0, [r4, #0x12]
	adds r0, r0, r2
	strh r0, [r4, #0x12]
	movs r5, #0x12
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _080E3260
	adds r0, #0xFF
_080E3260:
	asrs r2, r0, #0x08
	ldr r7, [sp, #0x014]
	cmp r7, #0x00
	ble _080E326C
	cmp r2, #0x3F
	bgt _080E3276
_080E326C:
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _080E328C
	cmp r2, #0x00
	bgt _080E328C
_080E3276:
	ldr r1, _080E3288 @ =0x080E3159
	movs r0, #0x02
	bl sub_8018B78
	movs r0, #0x00
	str r0, [r4, #0x04]
	b _080E388C
_080E3284: .4byte 0x03000FD8
_080E3288: .4byte sub_80E3158
_080E328C:
	ldr r1, _080E33AC @ =0x08198504
	movs r0, #0xFF
	ands r2, r0
	lsls r2, r2, #0x01
	adds r1, r2, r1
	movs r3, #0x00
	ldsh r1, [r1, r3]
	cmp r1, #0x00
	bge _080E32A0
	adds r1, #0x3F
_080E32A0:
	asrs r1, r1, #0x06
	str r1, [sp, #0x018]
	ldr r0, _080E33B0 @ =0x08198584
	adds r0, r2, r0
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _080E32B2
	adds r0, #0x3F
_080E32B2:
	asrs r0, r0, #0x06
	str r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	ldr r5, [sp, #0x018]
	subs r1, r1, r5
	subs r1, r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x04
	cmp r0, #0x00
	bge _080E32CC
	adds r0, #0xFF
_080E32CC:
	asrs r0, r0, #0x08
	mov r10, r0
	ldr r7, [sp, #0x018]
	ldr r0, _080E33B4 @ =0xFFFFFF00
	adds r1, r7, r0
	ldr r2, [sp, #0x01C]
	subs r1, r2, r1
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x04
	cmp r0, #0x00
	bge _080E32E6
	adds r0, #0xFF
_080E32E6:
	asrs r6, r0, #0x08
	ldr r2, _080E33B8 @ =0x03001038
	ldr r0, _080E33BC @ =0x0819832C
	ldr r1, _080E33C0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	ldr r1, [sp, #0x01C]
	bl _call_via_r2
	ldr r3, _080E33B4 @ =0xFFFFFF00
	adds r3, r0, r3
	str r3, [sp, #0x020]
	ldr r2, _080E33C4 @ =0x03000FDC
	ldr r0, _080E33C8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x09
	ldr r4, _080E33CC @ =0x00003EF0
	adds r0, r0, r4
	ldr r1, [r2, #0x00]
	adds r5, r1, r0
	ldr r0, _080E33D0 @ =0x02000010
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x024]
	ldr r0, _080E33D4 @ =0x02000014
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x028]
	ldr r0, _080E33D8 @ =0x02000018
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x02C]
	ldr r0, _080E33DC @ =0x0200001C
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x030]
	ldr r0, _080E33E0 @ =0x02000012
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x034]
	ldr r0, _080E33E4 @ =0x02000016
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x038]
	ldr r0, _080E33E8 @ =0x0200001A
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x03C]
	ldr r0, _080E33EC @ =0x0200001E
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x040]
	movs r4, #0x00
	cmp r4, r6
	bge _080E344E
	movs r7, #0x01
	mov r12, r7
	ldr r0, [sp, #0x00C]
	mov r1, r12
	ands r0, r1
	mov r12, r0
	ldr r3, _080E33F0 @ =0x0000FFFF
	movs r2, #0x80
	lsls r2, r2, #0x05
	movs r7, #0x02
	mov r9, r7
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ands r0, r1
	mov r9, r0
	movs r7, #0x04
	mov r8, r7
	ldr r0, [sp, #0x00C]
	mov r1, r8
	ands r0, r1
	mov r8, r0
	movs r7, #0x08
	adds r0, r7, #0x0
	ldr r1, [sp, #0x00C]
	ands r0, r1
	str r0, [sp, #0x050]
_080E3388:
	mov r7, r10
	subs r0, r4, r7
	ldr r1, [sp, #0x020]
	muls r0, r1
	cmp r0, #0x00
	bge _080E3396
	adds r0, #0xFF
_080E3396:
	asrs r0, r0, #0x08
	mov r7, r10
	subs r1, r0, r7
	mov r0, r12
	cmp r0, #0x00
	beq _080E33F4
	ldr r7, [sp, #0x034]
	adds r0, r1, r7
	ands r0, r3
	b _080E33F6
	.byte 0x00, 0x00
_080E33AC: .4byte 0x08198504
_080E33B0: .4byte 0x08198584
_080E33B4: .4byte 0xFFFFFF00
_080E33B8: .4byte 0x03001038
_080E33BC: .4byte 0x0819832C
_080E33C0: .4byte 0x08198220
_080E33C4: .4byte 0x03000FDC
_080E33C8: .4byte 0x03000FD8
_080E33CC: .4byte 0x00003EF0
_080E33D0: .4byte 0x02000010
_080E33D4: .4byte 0x02000014
_080E33D8: .4byte 0x02000018
_080E33DC: .4byte 0x0200001C
_080E33E0: .4byte 0x02000012
_080E33E4: .4byte 0x02000016
_080E33E8: .4byte 0x0200001A
_080E33EC: .4byte 0x0200001E
_080E33F0: .4byte 0x0000FFFF
_080E33F4:
	subs r0, r2, r4
_080E33F6:
	lsls r0, r0, #0x10
	ldr r7, [sp, #0x024]
	orrs r0, r7
	str r0, [r5, #0x00]
	mov r0, r9
	cmp r0, #0x00
	beq _080E340C
	ldr r7, [sp, #0x038]
	adds r0, r1, r7
	ands r0, r3
	b _080E340E
_080E340C:
	subs r0, r2, r4
_080E340E:
	lsls r0, r0, #0x10
	ldr r7, [sp, #0x028]
	orrs r0, r7
	str r0, [r5, #0x04]
	mov r0, r8
	cmp r0, #0x00
	beq _080E3424
	ldr r7, [sp, #0x03C]
	adds r0, r1, r7
	ands r0, r3
	b _080E3426
_080E3424:
	subs r0, r2, r4
_080E3426:
	lsls r0, r0, #0x10
	ldr r7, [sp, #0x02C]
	orrs r0, r7
	str r0, [r5, #0x08]
	ldr r0, [sp, #0x050]
	cmp r0, #0x00
	beq _080E343C
	ldr r7, [sp, #0x040]
	adds r0, r1, r7
	ands r0, r3
	b _080E343E
_080E343C:
	subs r0, r2, r4
_080E343E:
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x030]
	orrs r0, r1
	str r0, [r5, #0x0C]
	adds r5, #0x10
	adds r4, #0x01
	cmp r4, r6
	blt _080E3388
_080E344E:
	ldr r2, _080E34BC @ =0x03001038
	ldr r0, _080E34C0 @ =0x0819832C
	ldr r1, _080E34C4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	ldr r1, [sp, #0x018]
	bl _call_via_r2
	ldr r2, _080E34C8 @ =0xFFFFFF00
	adds r2, r2, r0
	mov r8, r2
	cmp r4, #0x9F
	bgt _080E352A
	movs r3, #0x01
	ldr r7, [sp, #0x010]
	ands r7, r3
	mov r10, r7
	ldr r3, _080E34CC @ =0x0000FFFF
	movs r2, #0x80
	lsls r2, r2, #0x05
	movs r0, #0x02
	ldr r1, [sp, #0x010]
	ands r1, r0
	mov r12, r1
	movs r7, #0x04
	mov r9, r7
	ldr r0, [sp, #0x010]
	mov r1, r9
	ands r0, r1
	mov r9, r0
	movs r7, #0x08
	adds r0, r7, #0x0
	ldr r1, [sp, #0x010]
	ands r0, r1
	str r0, [sp, #0x050]
_080E349A:
	subs r0, r4, r6
	mov r7, r8
	muls r7, r0
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _080E34A8
	adds r0, #0xFF
_080E34A8:
	asrs r0, r0, #0x08
	subs r1, r0, r6
	mov r0, r10
	cmp r0, #0x00
	beq _080E34D0
	ldr r7, [sp, #0x034]
	adds r0, r1, r7
	ands r0, r3
	b _080E34D2
	.byte 0x00, 0x00
_080E34BC: .4byte 0x03001038
_080E34C0: .4byte 0x0819832C
_080E34C4: .4byte 0x08198220
_080E34C8: .4byte 0xFFFFFF00
_080E34CC: .4byte 0x0000FFFF
_080E34D0:
	subs r0, r2, r4
_080E34D2:
	lsls r0, r0, #0x10
	ldr r7, [sp, #0x024]
	orrs r0, r7
	str r0, [r5, #0x00]
	mov r0, r12
	cmp r0, #0x00
	beq _080E34E8
	ldr r7, [sp, #0x038]
	adds r0, r1, r7
	ands r0, r3
	b _080E34EA
_080E34E8:
	subs r0, r2, r4
_080E34EA:
	lsls r0, r0, #0x10
	ldr r7, [sp, #0x028]
	orrs r0, r7
	str r0, [r5, #0x04]
	mov r0, r9
	cmp r0, #0x00
	beq _080E3500
	ldr r7, [sp, #0x03C]
	adds r0, r1, r7
	ands r0, r3
	b _080E3502
_080E3500:
	subs r0, r2, r4
_080E3502:
	lsls r0, r0, #0x10
	ldr r7, [sp, #0x02C]
	orrs r0, r7
	str r0, [r5, #0x08]
	ldr r0, [sp, #0x050]
	cmp r0, #0x00
	beq _080E3518
	ldr r7, [sp, #0x040]
	adds r0, r1, r7
	ands r0, r3
	b _080E351A
_080E3518:
	subs r0, r2, r4
_080E351A:
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x030]
	orrs r0, r1
	str r0, [r5, #0x0C]
	adds r5, #0x10
	adds r4, #0x01
	cmp r4, #0x9F
	ble _080E349A
_080E352A:
	ldr r5, _080E3694 @ =0x0300034C
	ldr r2, _080E3698 @ =0x00000888
	adds r7, r5, r2
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r1, r0, #0x0A
	adds r0, r5, #0x0
	adds r0, #0x80
	adds r6, r1, r0
	str r6, [sp, #0x044]
	ldr r3, [sp, #0x014]
	cmp r3, #0x00
	bgt _080E3548
	b _080E36F4
_080E3548:
	movs r0, #0x80
	lsls r0, r0, #0x01
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r5, r4
	adds r0, r1, r0
	ldrh r1, [r0, #0x06]
	movs r2, #0x00
	movs r3, #0x80
	lsls r3, r3, #0x01
	strh r3, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	mov r1, r10
	strh r1, [r0, #0x1E]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r4, #0x20
	adds r1, r5, r4
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	movs r4, #0xFF
	lsls r4, r4, #0x08
	strh r4, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	mov r1, r10
	strh r1, [r0, #0x1E]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	movs r1, #0x88
	lsls r1, r1, #0x03
	adds r1, r1, r5
	mov r8, r1
	add r0, r8
	ldrh r1, [r0, #0x06]
	strh r3, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	mov r1, r10
	negs r3, r1
	ldrh r1, [r0, #0x1E]
	strh r3, [r0, #0x1E]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	movs r7, #0x8C
	lsls r7, r7, #0x03
	adds r1, r5, r7
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	strh r4, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	strh r3, [r0, #0x1E]
	movs r0, #0x7F
	str r0, [sp, #0x048]
_080E35E2:
	mov r0, sp
	ldr r1, _080E369C @ =0x08200100
	movs r2, #0x0C
	bl memcpy
	ldrh r1, [r6, #0x02]
	add r2, sp, #0x050
	strh r1, [r2, #0x00]
	adds r3, r1, #0x0
	lsls r3, r3, #0x10
	mov r8, r3
	lsrs r1, r3, #0x1E
	ldrh r0, [r6, #0x00]
	lsrs r0, r0, #0x0E
	lsls r0, r0, #0x02
	orrs r1, r0
	mov r4, sp
	adds r0, r4, r1
	ldrb r4, [r0, #0x00]
	ldrh r2, [r6, #0x00]
	adds r3, r2, #0x0
	movs r5, #0xC0
	lsls r5, r5, #0x02
	ands r3, r5
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r3, r0
	beq _080E36DE
	cmp r3, r5
	bne _080E3620
	lsls r4, r4, #0x01
_080E3620:
	movs r7, #0xFF
	mov r9, r7
	movs r0, #0xFF
	ands r0, r2
	adds r0, r0, r4
	movs r1, #0x50
	subs r1, r1, r0
	str r1, [sp, #0x054]
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r12, r0
	ldr r1, [sp, #0x01C]
	add r1, r12
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x04
	cmp r0, #0x00
	bge _080E3646
	adds r0, #0xFF
_080E3646:
	asrs r1, r0, #0x08
	ldr r5, [sp, #0x054]
	ldr r7, [sp, #0x018]
	adds r0, r5, #0x0
	muls r0, r7
	cmp r0, #0x00
	bge _080E3656
	adds r0, #0xFF
_080E3656:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	subs r1, r0, r4
	cmp r3, #0x00
	beq _080E36A0
	movs r3, #0xFF
	lsls r3, r3, #0x08
	adds r0, r3, #0x0
	ands r2, r0
	mov r4, r9
	ands r1, r4
	orrs r2, r1
	strh r2, [r6, #0x00]
	mov r5, r8
	lsrs r0, r5, #0x19
	movs r1, #0x1F
	ands r0, r1
	lsls r0, r0, #0x05
	ldr r7, [sp, #0x044]
	adds r1, r7, r0
	ldrh r0, [r1, #0x1E]
	mov r2, r10
	muls r2, r0
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _080E368C
	adds r0, #0xFF
_080E368C:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x1E]
	b _080E36DE
	.byte 0x00, 0x00
_080E3694: .4byte 0x0300034C
_080E3698: .4byte 0x00000888
_080E369C: .4byte 0x08200100
_080E36A0:
	movs r3, #0xFF
	lsls r3, r3, #0x08
	adds r0, r3, #0x0
	ands r2, r0
	mov r4, r9
	ands r1, r4
	orrs r2, r1
	mov r5, r12
	orrs r2, r5
	strh r2, [r6, #0x00]
	movs r7, #0xC0
	lsls r7, r7, #0x06
	adds r0, r7, #0x0
	add r1, sp, #0x050
	ldrh r2, [r1, #0x00]
	ands r2, r0
	lsls r2, r2, #0x10
	ldr r3, _080E36F0 @ =0x0000CFFF
	adds r0, r3, #0x0
	ldrh r4, [r1, #0x00]
	ands r0, r4
	lsrs r1, r2, #0x13
	adds r0, r0, r1
	movs r5, #0xE0
	lsls r5, r5, #0x06
	adds r0, r0, r5
	lsrs r2, r2, #0x1C
	movs r1, #0x01
	ands r2, r1
	subs r0, r0, r2
	strh r0, [r6, #0x02]
_080E36DE:
	adds r6, #0x08
	ldr r7, [sp, #0x048]
	subs r7, #0x01
	str r7, [sp, #0x048]
	cmp r7, #0x00
	blt _080E36EC
	b _080E35E2
_080E36EC:
	b _080E388C
	.byte 0x00, 0x00
_080E36F0: .4byte 0x0000CFFF
_080E36F4:
	ldr r2, [sp, #0x020]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r5, r4
	adds r0, r1, r0
	ldrh r1, [r0, #0x06]
	movs r2, #0x00
	strh r3, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	mov r1, r10
	strh r1, [r0, #0x1E]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r4, #0x20
	adds r1, r5, r4
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	movs r4, #0xFF
	lsls r4, r4, #0x08
	strh r4, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	mov r1, r10
	strh r1, [r0, #0x1E]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	movs r1, #0x88
	lsls r1, r1, #0x03
	adds r1, r1, r5
	mov r8, r1
	add r0, r8
	ldrh r1, [r0, #0x06]
	strh r3, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	mov r1, r10
	negs r3, r1
	ldrh r1, [r0, #0x1E]
	strh r3, [r0, #0x1E]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	movs r7, #0x8C
	lsls r7, r7, #0x03
	adds r1, r5, r7
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	strh r4, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	strh r3, [r0, #0x1E]
	movs r0, #0x7F
	str r0, [sp, #0x04C]
_080E378C:
	mov r0, sp
	ldr r1, _080E383C @ =0x08200100
	movs r2, #0x0C
	bl memcpy
	ldrh r1, [r6, #0x02]
	add r2, sp, #0x050
	strh r1, [r2, #0x00]
	adds r3, r1, #0x0
	lsls r3, r3, #0x10
	mov r8, r3
	lsrs r1, r3, #0x1E
	ldrh r0, [r6, #0x00]
	lsrs r0, r0, #0x0E
	lsls r0, r0, #0x02
	orrs r1, r0
	mov r4, sp
	adds r0, r4, r1
	ldrb r4, [r0, #0x00]
	ldrh r2, [r6, #0x00]
	adds r3, r2, #0x0
	movs r5, #0xC0
	lsls r5, r5, #0x02
	ands r3, r5
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r3, r0
	beq _080E387E
	cmp r3, r5
	bne _080E37CA
	lsls r4, r4, #0x01
_080E37CA:
	movs r7, #0xFF
	mov r9, r7
	movs r0, #0xFF
	ands r0, r2
	adds r0, r0, r4
	movs r1, #0x50
	subs r1, r1, r0
	str r1, [sp, #0x054]
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r12, r0
	ldr r5, [sp, #0x018]
	subs r1, r0, r5
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x04
	cmp r0, #0x00
	bge _080E37F0
	adds r0, #0xFF
_080E37F0:
	asrs r1, r0, #0x08
	ldr r7, [sp, #0x054]
	ldr r5, [sp, #0x01C]
	adds r0, r7, #0x0
	muls r0, r5
	cmp r0, #0x00
	bge _080E3800
	adds r0, #0xFF
_080E3800:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	subs r1, r0, r4
	cmp r3, #0x00
	beq _080E3840
	movs r7, #0xFF
	lsls r7, r7, #0x08
	adds r0, r7, #0x0
	ands r2, r0
	mov r0, r9
	ands r1, r0
	orrs r2, r1
	strh r2, [r6, #0x00]
	mov r1, r8
	lsrs r0, r1, #0x19
	movs r1, #0x1F
	ands r0, r1
	lsls r0, r0, #0x05
	ldr r2, [sp, #0x044]
	adds r1, r2, r0
	ldrh r0, [r1, #0x1E]
	mov r3, r10
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _080E3836
	adds r0, #0xFF
_080E3836:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x1E]
	b _080E387E
_080E383C: .4byte 0x08200100
_080E3840:
	movs r4, #0xFF
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	ands r2, r0
	mov r5, r9
	ands r1, r5
	orrs r2, r1
	mov r7, r12
	orrs r2, r7
	strh r2, [r6, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r1, #0x0
	add r3, sp, #0x050
	ldrh r2, [r3, #0x00]
	ands r2, r0
	lsls r2, r2, #0x10
	ldr r4, _080E389C @ =0x0000CFFF
	adds r0, r4, #0x0
	ldrh r5, [r3, #0x00]
	ands r0, r5
	lsrs r1, r2, #0x13
	adds r0, r0, r1
	movs r7, #0xE0
	lsls r7, r7, #0x06
	adds r0, r0, r7
	lsrs r2, r2, #0x1C
	movs r1, #0x01
	ands r2, r1
	subs r0, r0, r2
	strh r0, [r6, #0x02]
_080E387E:
	adds r6, #0x08
	ldr r0, [sp, #0x04C]
	subs r0, #0x01
	str r0, [sp, #0x04C]
	cmp r0, #0x00
	blt _080E388C
	b _080E378C
_080E388C:
	add sp, #0x058
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E389C: .4byte 0x0000CFFF
	.byte 0x10, 0xB5, 0x04, 0x1C, 0xFF, 0xF7, 0xC6, 0xFB, 0x01, 0x1C, 0x00, 0x2C, 0x01, 0xDA, 0x34, 0x20
	.byte 0x00, 0xE0, 0x43, 0x20, 0xC8, 0x82, 0x08, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x82, 0xB0, 0x06, 0x49, 0x07, 0x4A, 0x01, 0x23, 0x5B, 0x42, 0x00, 0x20, 0x00, 0x90
	.byte 0x01, 0x90, 0x02, 0x20, 0x9E, 0xF7, 0x8C, 0xFF, 0x02, 0xB0, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x88, 0xFE, 0x39, 0x08, 0x00, 0x40, 0x00, 0x06
	thumb_func_start sub_80E38E8
sub_80E38E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	str r2, [sp, #0x00C]
	adds r4, r3, #0x0
	ldr r0, _080E3974 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	movs r1, #0x00
	str r1, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	lsls r0, r4, #0x01
	ldr r2, _080E3978 @ =0x02000008
	adds r0, r0, r2
	ldrh r5, [r0, #0x00]
	lsls r4, r4, #0x02
	ldr r3, _080E397C @ =0x02000010
	adds r0, r4, r3
	ldrh r0, [r0, #0x00]
	adds r0, #0x04
	ldr r1, [sp, #0x004]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080E3932
	adds r1, #0x07
_080E3932:
	asrs r2, r1, #0x03
	ldr r6, _080E3980 @ =0x02000012
	adds r0, r4, r6
	ldrh r0, [r0, #0x00]
	adds r0, #0x04
	ldr r1, [sp, #0x008]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080E3946
	adds r0, #0x07
_080E3946:
	asrs r1, r0, #0x03
	movs r3, #0x1F
	ands r3, r2
	movs r0, #0x80
	lsls r0, r0, #0x07
	ands r0, r5
	cmp r0, #0x00
	beq _080E3964
	movs r0, #0x3F
	ands r2, r0
	cmp r2, #0x1F
	ble _080E3964
	movs r0, #0x80
	lsls r0, r0, #0x03
	adds r3, r3, r0
_080E3964:
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r5
	cmp r0, #0x00
	beq _080E3984
	movs r0, #0x3F
	b _080E3986
	.byte 0x00, 0x00
_080E3974: .4byte 0x03000FD8
_080E3978: .4byte 0x02000008
_080E397C: .4byte 0x02000010
_080E3980: .4byte 0x02000012
_080E3984:
	movs r0, #0x1F
_080E3986:
	ands r0, r1
	lsls r0, r0, #0x05
	adds r3, r3, r0
	lsrs r0, r5, #0x08
	movs r1, #0x1F
	ands r0, r1
	lsls r0, r0, #0x0B
	movs r2, #0xC0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	lsls r1, r3, #0x01
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	str r0, [sp, #0x010]
	ldrh r6, [r1, #0x02]
	lsrs r4, r5, #0x02
	movs r0, #0x03
	ands r4, r0
	lsls r4, r4, #0x0E
	adds r4, r4, r2
	ldr r1, _080E3BF8 @ =0x06010000
	mov r10, r1
	ldr r2, _080E3BFC @ =0x03001034
	mov r9, r2
	ldr r5, _080E3C00 @ =0x08198154
	ldr r0, _080E3C04 @ =0x081980D8
	subs r5, r5, r0
	ldr r3, [r2, #0x00]
	adds r3, r3, r5
	ldr r0, _080E3C08 @ =0x000003FF
	mov r8, r0
	ldr r0, [sp, #0x010]
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x05
	adds r0, r4, r0
	ldr r2, [sp, #0x03C]
	lsls r1, r2, #0x05
	add r1, r10
	movs r2, #0x20
	bl _call_via_r3
	mov r0, r9
	ldr r3, [r0, #0x00]
	adds r3, r3, r5
	mov r1, r8
	ands r6, r1
	lsls r6, r6, #0x05
	adds r4, r4, r6
	ldr r1, [sp, #0x03C]
	adds r1, #0x01
	lsls r1, r1, #0x05
	add r1, r10
	adds r0, r4, #0x0
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, [sp, #0x010]
	lsrs r2, r2, #0x0C
	mov r8, r2
	movs r5, #0x00
	ldr r1, _080E3C0C @ =0x03000F78
_080E3A02:
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A10
	b _080E3B92
_080E3A10:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A20
	b _080E3B92
_080E3A20:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A30
	b _080E3B92
_080E3A30:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A40
	b _080E3B92
_080E3A40:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A50
	b _080E3B92
_080E3A50:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A60
	b _080E3B92
_080E3A60:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A70
	b _080E3B92
_080E3A70:
	adds r5, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080E3A80
	b _080E3B92
_080E3A80:
	adds r5, #0x01
	cmp r5, #0x0F
	ble _080E3A02
	movs r5, #0x0F
	ldr r3, _080E3C0C @ =0x03000F78
	movs r0, #0x0F
	ldsb r0, [r3, r0]
	movs r1, #0x01
	negs r1, r1
	mov r4, r8
	lsls r2, r4, #0x05
	cmp r0, r1
	beq _080E3AA8
_080E3A9A:
	subs r5, #0x01
	adds r0, r5, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r1
	bne _080E3A9A
_080E3AA8:
	ldr r6, _080E3C10 @ =0x03000D74
	ldr r0, [r6, #0x00]
	lsls r1, r5, #0x01
	adds r0, #0x0C
	adds r0, r0, r1
	ldr r1, _080E3C14 @ =0x00001FFF
	strh r1, [r0, #0x00]
	lsls r0, r5, #0x05
	ldr r3, _080E3C18 @ =0x04430443
	ldr r7, _080E3C1C @ =0x3DEF3DEF
	ldr r1, _080E3C20 @ =0x02000280
	adds r1, r0, r1
	str r1, [sp, #0x018]
	ldr r6, _080E3C24 @ =0x02000080
	adds r4, r2, r6
	ldr r0, _080E3C28 @ =0x7BDE7BDE
	mov r10, r0
	ldr r1, _080E3C2C @ =0x84208420
	mov r9, r1
	movs r2, #0x07
	mov r12, r2
_080E3AD2:
	ldr r2, [r4, #0x00]
	adds r1, r2, #0x0
	ands r1, r3
	lsls r1, r1, #0x01
	adds r0, r2, #0x0
	eors r0, r3
	mov r6, r10
	ands r0, r6
	adds r1, r1, r0
	mov r0, r9
	ands r1, r0
	lsrs r1, r1, #0x05
	adds r1, r1, r7
	eors r1, r7
	adds r2, r2, r3
	subs r2, r2, r1
	orrs r2, r1
	ldr r1, [sp, #0x018]
	str r2, [r1, #0x00]
	ldr r2, [r4, #0x04]
	adds r1, r2, #0x0
	ands r1, r3
	lsls r1, r1, #0x01
	adds r0, r2, #0x0
	eors r0, r3
	ands r0, r6
	adds r1, r1, r0
	mov r6, r9
	ands r1, r6
	lsrs r1, r1, #0x05
	adds r1, r1, r7
	eors r1, r7
	adds r2, r2, r3
	subs r2, r2, r1
	orrs r2, r1
	ldr r0, [sp, #0x018]
	str r2, [r0, #0x04]
	ldr r2, [r4, #0x08]
	adds r1, r2, #0x0
	ands r1, r3
	lsls r1, r1, #0x01
	str r1, [sp, #0x014]
	adds r0, r2, #0x0
	eors r0, r3
	mov r1, r10
	ands r0, r1
	ldr r6, [sp, #0x014]
	adds r1, r6, r0
	mov r0, r9
	ands r1, r0
	lsrs r1, r1, #0x05
	adds r1, r1, r7
	eors r1, r7
	adds r2, r2, r3
	subs r2, r2, r1
	orrs r2, r1
	ldr r1, [sp, #0x018]
	str r2, [r1, #0x08]
	ldr r2, [r4, #0x0C]
	adds r1, r2, #0x0
	ands r1, r3
	lsls r1, r1, #0x01
	adds r0, r2, #0x0
	eors r0, r3
	mov r6, r10
	ands r0, r6
	adds r1, r1, r0
	mov r0, r9
	ands r1, r0
	lsrs r1, r1, #0x05
	adds r1, r1, r7
	eors r1, r7
	adds r2, r2, r3
	subs r2, r2, r1
	orrs r2, r1
	ldr r1, [sp, #0x018]
	str r2, [r1, #0x0C]
	adds r1, #0x10
	str r1, [sp, #0x018]
	adds r4, #0x10
	movs r2, #0x04
	negs r2, r2
	add r12, r2
	mov r6, r12
	cmp r6, #0x00
	bge _080E3AD2
	movs r0, #0x01
	lsls r0, r5
	ldr r2, _080E3C30 @ =0x0300034C
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r3, _080E3C0C @ =0x03000F78
	adds r0, r5, r3
	mov r4, r8
	strb r4, [r0, #0x00]
_080E3B92:
	ldr r6, _080E3C10 @ =0x03000D74
	ldr r3, [r6, #0x00]
	ldr r2, [r3, #0x38]
	ldr r0, [sp, #0x008]
	movs r1, #0xFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x07
	adds r1, r4, #0x0
	movs r4, #0x00
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, [sp, #0x004]
	ldr r0, _080E3C34 @ =0x000001FF
	ands r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x04
	ldr r6, [sp, #0x010]
	ands r6, r0
	lsls r0, r6, #0x02
	orrs r1, r0
	strh r1, [r2, #0x02]
	ldr r1, _080E3C08 @ =0x000003FF
	adds r0, r1, #0x0
	ldr r6, [sp, #0x03C]
	ands r6, r0
	lsls r0, r5, #0x0C
	orrs r6, r0
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r1, #0x0
	orrs r6, r0
	strh r6, [r2, #0x04]
	ldr r0, _080E3C38 @ =0x8FFFFFFF
	str r0, [r2, #0x08]
	strh r4, [r2, #0x06]
	ldrb r0, [r3, #0x02]
	adds r0, #0x02
	strb r0, [r3, #0x02]
	ldr r0, _080E3C10 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x10]
	str r0, [r1, #0x38]
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E3BF8: .4byte 0x06010000
_080E3BFC: .4byte 0x03001034
_080E3C00: .4byte 0x08198154
_080E3C04: .4byte 0x081980D8
_080E3C08: .4byte 0x000003FF
_080E3C0C: .4byte 0x03000F78
_080E3C10: .4byte 0x03000D74
_080E3C14: .4byte 0x00001FFF
_080E3C18: .4byte 0x04430443
_080E3C1C: .4byte 0x3DEF3DEF
_080E3C20: .4byte 0x02000280
_080E3C24: .4byte 0x02000080
_080E3C28: .4byte 0x7BDE7BDE
_080E3C2C: .4byte 0x84208420
_080E3C30: .4byte 0x0300034C
_080E3C34: .4byte 0x000001FF
_080E3C38: .4byte 0x8FFFFFFF
	thumb_func_start sub_80E3C3C
sub_80E3C3C:
	push {r4, r5, r6, r7, lr}
	movs r3, #0x00
	ldr r7, _080E3C64 @ =0x0000FFFF
	ldr r6, _080E3C68 @ =0x00001FFF
	ldr r5, _080E3C6C @ =0x03000F78
	ldr r4, _080E3C70 @ =0x03000D74
_080E3C48:
	adds r2, r3, r5
	ldr r0, [r4, #0x00]
	lsls r1, r3, #0x01
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, r7
	beq _080E3C5C
	cmp r0, r6
	bne _080E3C74
_080E3C5C:
	movs r1, #0x01
	negs r1, r1
	b _080E3C78
	.byte 0x00, 0x00
_080E3C64: .4byte 0x0000FFFF
_080E3C68: .4byte 0x00001FFF
_080E3C6C: .4byte 0x03000F78
_080E3C70: .4byte 0x03000D74
_080E3C74:
	movs r1, #0x02
	negs r1, r1
_080E3C78:
	adds r0, r1, #0x0
	strb r0, [r2, #0x00]
	adds r1, r3, #0x1
	adds r2, r1, r5
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, r7
	beq _080E3C92
	cmp r0, r6
	bne _080E3C98
_080E3C92:
	movs r1, #0x01
	negs r1, r1
	b _080E3C9C
_080E3C98:
	movs r1, #0x02
	negs r1, r1
_080E3C9C:
	adds r0, r1, #0x0
	strb r0, [r2, #0x00]
	adds r1, r3, #0x2
	adds r2, r1, r5
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, r7
	beq _080E3CB6
	cmp r0, r6
	bne _080E3CBC
_080E3CB6:
	movs r1, #0x01
	negs r1, r1
	b _080E3CC0
_080E3CBC:
	movs r1, #0x02
	negs r1, r1
_080E3CC0:
	adds r0, r1, #0x0
	strb r0, [r2, #0x00]
	adds r1, r3, #0x3
	adds r2, r1, r5
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, r7
	beq _080E3CDA
	cmp r0, r6
	bne _080E3CE0
_080E3CDA:
	movs r1, #0x01
	negs r1, r1
	b _080E3CE4
_080E3CE0:
	movs r1, #0x02
	negs r1, r1
_080E3CE4:
	adds r0, r1, #0x0
	strb r0, [r2, #0x00]
	adds r3, #0x04
	cmp r3, #0x0F
	ble _080E3C48
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
