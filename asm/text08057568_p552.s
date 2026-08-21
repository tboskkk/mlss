	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8103894
sub_8103894:
	push {lr}
	adds r2, r0, #0x0
	ldrh r1, [r2, #0x10]
	movs r3, #0x10
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	ble _081038A8
	subs r0, r1, #0x1
	strh r0, [r2, #0x10]
	b _081038EE
_081038A8:
	movs r0, #0x40
	strh r0, [r2, #0x10]
	ldr r1, [r2, #0x0C]
	ldr r0, [r1, #0x18]
	ldr r3, _081038F4 @ =0xFFFFFD00
	adds r0, r0, r3
	str r0, [r1, #0x18]
	ldr r0, _081038F8 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, #0x03
	strh r0, [r1, #0x00]
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x12]
	subs r0, #0x03
	strh r0, [r1, #0x12]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, #0x03
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x10]
	subs r0, #0x03
	strh r0, [r2, #0x10]
	ldr r0, _081038FC @ =0x08103901
	str r0, [r2, #0x04]
_081038EE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081038F4: .4byte 0xFFFFFD00
_081038F8: .4byte 0x03000FD8
_081038FC: .4byte sub_8103900
	thumb_func_start sub_8103900
sub_8103900:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	str r0, [sp, #0x024]
	ldr r4, [r0, #0x0C]
	ldr r0, [r4, #0x18]
	ldr r1, _08103A08 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r2, _08103A0C @ =0x03000FD8
	mov r8, r2
	ldr r2, [r2, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r7, r2, r3
	ldr r1, [r7, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, #0x03
	movs r3, #0x00
	mov r9, r3
	strh r0, [r1, #0x00]
	movs r0, #0xDC
	lsls r0, r0, #0x02
	adds r6, r2, r0
	ldr r1, [r6, #0x00]
	ldrh r0, [r1, #0x12]
	subs r0, #0x03
	strh r0, [r1, #0x12]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r5, r2, r1
	ldr r1, [r5, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r3, _08103A10 @ =0x0200001C
	ldrh r0, [r3, #0x00]
	adds r0, #0x03
	strh r0, [r3, #0x00]
	ldr r2, [sp, #0x024]
	ldrh r0, [r2, #0x10]
	subs r0, #0x03
	strh r0, [r2, #0x10]
	movs r1, #0x10
	ldsh r0, [r2, r1]
	adds r2, r0, #0x0
	subs r2, #0x18
	cmp r2, #0x00
	ble _0810396A
	b _08103B3C
_0810396A:
	cmp r2, #0x00
	beq _0810399C
	lsls r1, r2, #0x08
	ldr r0, [r4, #0x18]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r1, [r7, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldrh r0, [r1, #0x12]
	subs r0, r0, r2
	strh r0, [r1, #0x12]
	ldr r1, [r5, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r3, #0x00]
	adds r0, r0, r2
	strh r0, [r3, #0x00]
	ldr r1, [sp, #0x024]
	ldrh r0, [r1, #0x10]
	subs r0, r0, r2
	strh r0, [r1, #0x10]
_0810399C:
	mov r0, r9
	ldr r2, [sp, #0x024]
	strh r0, [r2, #0x10]
	strh r0, [r3, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r5, #0x0E
	str r5, [sp, #0x000]
	movs r6, #0x0D
	str r6, [sp, #0x004]
	movs r1, #0x01
	movs r2, #0x08
	movs r3, #0x04
	bl sub_8084E98
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08103A1C
	mov r1, r8
	ldr r0, [r1, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	str r6, [sp, #0x004]
	ldr r1, _08103A14 @ =0x084FB588
	adds r1, #0x48
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08103A18 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x03
	movs r3, #0x04
	bl sub_8084F28
	b _08103A4E
	.byte 0x00, 0x00
_08103A08: .4byte 0xFFFFFD00
_08103A0C: .4byte 0x03000FD8
_08103A10: .4byte 0x0200001C
_08103A14: .4byte 0x084FB588
_08103A18: .4byte 0x089F808C
_08103A1C:
	mov r3, r8
	ldr r0, [r3, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	str r6, [sp, #0x004]
	ldr r1, _08103B4C @ =0x084FB588
	adds r1, #0x4A
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08103B50 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x03
	movs r3, #0x04
	bl sub_8084F28
_08103A4E:
	movs r7, #0x00
	movs r2, #0x2A
	str r2, [sp, #0x028]
	movs r3, #0x28
	str r3, [sp, #0x02C]
	movs r0, #0x5D
	str r0, [sp, #0x030]
	movs r1, #0x20
	str r1, [sp, #0x034]
_08103A60:
	ldr r3, _08103B54 @ =0x03000FDC
	ldr r2, [r3, #0x00]
	lsls r3, r7, #0x01
	ldr r1, _08103B58 @ =0x00008E1C
	adds r0, r2, r1
	adds r0, r0, r3
	ldrh r1, [r0, #0x00]
	ldr r0, _08103B5C @ =0x00008E10
	adds r2, r2, r0
	adds r2, r2, r3
	ldrh r2, [r2, #0x00]
	subs r1, r1, r2
	ldr r3, [sp, #0x034]
	str r3, [sp, #0x000]
	ldr r0, [sp, #0x030]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r3, #0x0C
	str r3, [sp, #0x00C]
	movs r0, #0xC0
	str r0, [sp, #0x010]
	ldr r3, [sp, #0x02C]
	str r3, [sp, #0x014]
	movs r0, #0xA8
	str r0, [sp, #0x018]
	ldr r3, [sp, #0x028]
	str r3, [sp, #0x01C]
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	ldr r3, _08103B60 @ =0x00000999
	bl sub_8102108
	ldr r1, _08103B64 @ =0x03000FD8
	mov r10, r1
	ldr r1, [r1, #0x00]
	lsls r2, r7, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r2
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x028]
	adds r0, #0x10
	mov r9, r0
	ldr r1, [sp, #0x02C]
	adds r1, #0x10
	mov r8, r1
	ldr r5, [sp, #0x030]
	adds r5, #0x0C
	ldr r6, [sp, #0x034]
	adds r6, #0x0C
	adds r4, r7, #0x1
	ldr r3, _08103B54 @ =0x03000FDC
	ldr r2, [r3, #0x00]
	lsls r3, r4, #0x01
	ldr r1, _08103B58 @ =0x00008E1C
	adds r0, r2, r1
	adds r0, r0, r3
	ldrh r1, [r0, #0x00]
	ldr r0, _08103B5C @ =0x00008E10
	adds r2, r2, r0
	adds r2, r2, r3
	ldrh r2, [r2, #0x00]
	subs r1, r1, r2
	str r6, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r3, #0x0C
	str r3, [sp, #0x00C]
	movs r0, #0xC0
	str r0, [sp, #0x010]
	mov r3, r8
	str r3, [sp, #0x014]
	movs r0, #0xA8
	str r0, [sp, #0x018]
	mov r3, r9
	str r3, [sp, #0x01C]
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	ldr r3, _08103B60 @ =0x00000999
	bl sub_8102108
	mov r2, r10
	ldr r1, [r2, #0x00]
	lsls r4, r4, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r4
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x028]
	adds r0, #0x20
	str r0, [sp, #0x028]
	ldr r1, [sp, #0x02C]
	adds r1, #0x20
	str r1, [sp, #0x02C]
	ldr r2, [sp, #0x030]
	adds r2, #0x18
	str r2, [sp, #0x030]
	ldr r3, [sp, #0x034]
	adds r3, #0x18
	str r3, [sp, #0x034]
	adds r7, #0x02
	cmp r7, #0x05
	ble _08103A60
	movs r0, #0x00
	ldr r1, [sp, #0x024]
	strh r0, [r1, #0x10]
	ldr r0, _08103B68 @ =0x08106B0D
	str r0, [r1, #0x04]
_08103B3C:
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08103B4C: .4byte 0x084FB588
_08103B50: .4byte 0x089F808C
_08103B54: .4byte 0x03000FDC
_08103B58: .4byte 0x00008E1C
_08103B5C: .4byte 0x00008E10
_08103B60: .4byte 0x00000999
_08103B64: .4byte 0x03000FD8
_08103B68: .4byte sub_8106B0C
	thumb_func_start sub_8103B6C
sub_8103B6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r0, _08103B90 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08103B94
	mov r2, r8
	str r0, [r2, #0x04]
	b _08103D46
_08103B90: .4byte 0x03000FD8
_08103B94:
	mov r3, r8
	ldr r1, [r3, #0x08]
	movs r4, #0x00
	ldsh r0, [r1, r4]
	subs r7, r0, #0x4
	ldr r0, _08103D58 @ =0x000001FF
	ands r7, r0
	movs r0, #0x02
	ldsh r2, [r1, r0]
	movs r4, #0x14
	ldsh r0, [r3, r4]
	subs r2, r2, r0
	movs r0, #0x12
	negs r0, r0
	adds r0, r0, r2
	mov r10, r0
	adds r1, #0x21
	ldrb r0, [r1, #0x00]
	cmp r0, #0x04
	bne _08103BC0
	subs r2, #0x0E
	mov r10, r2
_08103BC0:
	ldr r0, _08103D5C @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	ldr r1, _08103D60 @ =0x0819832C
	ldr r0, _08103D64 @ =0x08198220
	subs r1, r1, r0
	mov r9, r1
	ldr r2, _08103D68 @ =0x03001038
	ldr r0, [r2, #0x00]
	adds r2, r0, r1
	movs r0, #0x00
	movs r1, #0x06
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r3, r8
	movs r4, #0x14
	ldsh r0, [r3, r4]
	adds r0, r0, r1
	movs r3, #0xFF
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x00]
	strh r7, [r5, #0x02]
	ldr r2, _08103D70 @ =0x0000B0A5
	strh r2, [r5, #0x04]
	adds r5, #0x08
	ldr r4, _08103D68 @ =0x03001038
	ldr r0, [r4, #0x00]
	mov r1, r9
	adds r2, r0, r1
	mov r0, r10
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x00]
	strh r7, [r5, #0x02]
	ldr r2, _08103D70 @ =0x0000B0A5
	strh r2, [r5, #0x04]
	adds r5, #0x08
	mov r4, r10
	lsls r6, r4, #0x01
	ldr r1, _08103D68 @ =0x03001038
	ldr r0, [r1, #0x00]
	mov r4, r9
	adds r2, r0, r4
	adds r0, r6, #0x0
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x00]
	strh r7, [r5, #0x02]
	ldr r2, _08103D70 @ =0x0000B0A5
	strh r2, [r5, #0x04]
	adds r5, #0x08
	add r6, r10
	movs r3, #0x03
	str r3, [sp, #0x000]
_08103C62:
	ldr r4, _08103D68 @ =0x03001038
	ldr r0, [r4, #0x00]
	mov r1, r9
	adds r2, r0, r1
	adds r0, r6, #0x0
	movs r1, #0x06
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r3, #0x14
	ldsh r0, [r2, r3]
	adds r0, r0, r1
	movs r3, #0xFF
	ands r0, r3
	ldr r4, _08103D6C @ =0xFFFF8000
	orrs r0, r4
	strh r0, [r5, #0x00]
	strh r7, [r5, #0x02]
	ldr r0, _08103D70 @ =0x0000B0A5
	strh r0, [r5, #0x04]
	adds r1, r5, #0x0
	adds r1, #0x08
	str r1, [sp, #0x008]
	add r6, r10
	ldr r2, _08103D68 @ =0x03001038
	ldr r0, [r2, #0x00]
	mov r4, r9
	adds r2, r0, r4
	adds r0, r6, #0x0
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x08]
	ldr r2, [sp, #0x008]
	strh r7, [r2, #0x02]
	ldr r4, _08103D70 @ =0x0000B0A5
	strh r4, [r2, #0x04]
	adds r0, r5, #0x0
	adds r0, #0x10
	str r0, [sp, #0x008]
	add r6, r10
	ldr r1, _08103D68 @ =0x03001038
	ldr r0, [r1, #0x00]
	mov r4, r9
	adds r2, r0, r4
	adds r0, r6, #0x0
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x10]
	ldr r2, [sp, #0x008]
	strh r7, [r2, #0x02]
	ldr r4, _08103D70 @ =0x0000B0A5
	strh r4, [r2, #0x04]
	adds r0, r5, #0x0
	adds r0, #0x18
	str r0, [sp, #0x008]
	add r6, r10
	ldr r1, _08103D68 @ =0x03001038
	ldr r0, [r1, #0x00]
	mov r4, r9
	adds r2, r0, r4
	adds r0, r6, #0x0
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x18]
	ldr r2, [sp, #0x008]
	strh r7, [r2, #0x02]
	ldr r3, _08103D70 @ =0x0000B0A5
	strh r3, [r2, #0x04]
	adds r5, #0x20
	add r6, r10
	ldr r4, [sp, #0x000]
	subs r4, #0x04
	str r4, [sp, #0x000]
	cmp r4, #0x00
	bge _08103C62
	ldr r0, _08103D5C @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r5, [r0, #0x00]
_08103D46:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08103D58: .4byte 0x000001FF
_08103D5C: .4byte 0x0300034C
_08103D60: .4byte 0x0819832C
_08103D64: .4byte 0x08198220
_08103D68: .4byte 0x03001038
_08103D6C: .4byte 0xFFFF8000
_08103D70: .4byte 0x0000B0A5
	thumb_func_start sub_8103D74
sub_8103D74:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	movs r5, #0x00
	ldr r0, _08103E98 @ =0x084FB5D4
	mov r9, r0
	movs r6, #0x05
	ldr r4, _08103E9C @ =0x089F808C
	mov r8, r4
_08103D8E:
	ldr r1, _08103EA0 @ =0x03000FD8
	mov r10, r1
	ldr r2, [r1, #0x00]
	lsls r1, r5, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x0C]
	movs r3, #0x10
	ldsh r1, [r0, r3]
	movs r3, #0x10
	ldsh r0, [r7, r3]
	adds r0, #0x01
	cmp r1, r0
	bne _08103DDE
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x06
	str r1, [sp, #0x000]
	movs r1, #0x02
	str r1, [sp, #0x004]
	mov r2, r9
	ldrh r1, [r2, #0x00]
	lsls r1, r1, #0x02
	add r1, r8
	ldr r1, [r1, #0x00]
	adds r1, r1, r4
	str r1, [sp, #0x008]
	movs r1, #0x82
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x0C
	adds r3, r6, #0x0
	bl sub_8084F28
_08103DDE:
	adds r3, r6, #0x2
	mov r12, r3
	adds r4, #0x80
	adds r1, r5, #0x1
	mov r0, r10
	ldr r2, [r0, #0x00]
	lsls r1, r1, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x0C]
	movs r3, #0x10
	ldsh r1, [r0, r3]
	movs r3, #0x10
	ldsh r0, [r7, r3]
	adds r0, #0x01
	cmp r1, r0
	bne _08103E34
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x06
	str r1, [sp, #0x000]
	movs r1, #0x02
	str r1, [sp, #0x004]
	mov r2, r9
	ldrh r1, [r2, #0x00]
	lsls r1, r1, #0x02
	add r1, r8
	ldr r1, [r1, #0x00]
	adds r1, r1, r4
	str r1, [sp, #0x008]
	movs r1, #0x82
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x0C
	mov r3, r12
	bl sub_8084F28
_08103E34:
	adds r6, #0x04
	adds r4, #0x80
	adds r5, #0x02
	cmp r5, #0x05
	ble _08103D8E
	ldrh r0, [r7, #0x10]
	movs r3, #0x10
	ldsh r1, [r7, r3]
	cmp r1, #0x5B
	bgt _08103EAC
	adds r0, #0x01
	strh r0, [r7, #0x10]
	ldr r0, _08103EA4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08103E5A
	b _081040C2
_08103E5A:
	movs r0, #0x5C
	strh r0, [r7, #0x10]
	mov r1, r10
	ldr r0, [r1, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x06
	str r1, [sp, #0x000]
	movs r1, #0x0C
	str r1, [sp, #0x004]
	ldr r1, _08103EA8 @ =0x084FB588
	adds r1, #0x4C
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08103E9C @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x82
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x0C
	movs r3, #0x05
	bl sub_8084F28
	b _081040C2
	.byte 0x00, 0x00
_08103E98: .4byte 0x084FB5D4
_08103E9C: .4byte 0x089F808C
_08103EA0: .4byte 0x03000FD8
_08103EA4: .4byte 0x0300034C
_08103EA8: .4byte 0x084FB588
_08103EAC:
	cmp r1, #0x5C
	bne _08103EDC
	movs r0, #0x36
	bl stop_sfx_80195A8
	ldr r0, _08103ED8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08103EC4
	b _081040C2
_08103EC4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x79
	bl play_sfx_80195B4
	ldrh r0, [r7, #0x10]
	adds r0, #0x01
	strh r0, [r7, #0x10]
	b _081040C2
	.byte 0x00, 0x00
_08103ED8: .4byte 0x0300034C
_08103EDC:
	cmp r1, #0xA4
	bgt _08103EFC
	adds r0, #0x01
	strh r0, [r7, #0x10]
	ldr r0, _08103EF8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08103EF2
	b _081040C2
_08103EF2:
	movs r0, #0xA5
	strh r0, [r7, #0x10]
	b _081040C2
_08103EF8: .4byte 0x0300034C
_08103EFC:
	movs r3, #0x12
	ldsh r1, [r7, r3]
	ldr r2, _08104068 @ =0x03000FF4
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, _0810406C @ =0x03000FDC
	ldr r1, [r0, #0x00]
	ldr r3, _08104070 @ =0x00008E1C
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	movs r3, #0x00
	mov r8, r3
	strh r0, [r2, #0x10]
	ldr r3, _08104074 @ =0x00008E1E
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x16]
	adds r3, #0x02
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x1A]
	adds r3, #0x02
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x22]
	adds r3, #0x02
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x1E]
	ldr r0, _08104078 @ =0x00008E26
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x26]
	mov r5, r10
	ldr r0, [r5, #0x00]
	movs r6, #0x93
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x82
	lsls r1, r1, #0x01
	adds r4, r4, r1
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, #0xA0
	ldr r1, _0810407C @ =0x0000401F
	movs r0, #0x84
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r4, [r0, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x1F]
	movs r3, #0x76
	adds r3, r3, r4
	mov r9, r3
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r5, #0x00]
	mov r2, r8
	str r2, [r0, #0x7C]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x70
	subs r2, r1, r0
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08103FF0
	adds r0, #0xFF
_08103FF0:
	asrs r3, r0, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08103FFA
	adds r0, #0xFF
_08103FFA:
	asrs r1, r0, #0x08
	ldr r0, _08104080 @ =0x00007003
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x03
	bl sub_810A648
	mov r3, r10
	ldr r0, [r3, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r1, [r1, #0x00]
	movs r4, #0x1C
	ldr r5, [r1, #0x08]
	adds r0, #0x48
	ldr r1, _08104084 @ =0x08103B6D
	bl sub_807FFD8
	strh r4, [r0, #0x14]
	str r5, [r0, #0x08]
	mov r3, r9
	ldrb r0, [r3, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r4, [r7, #0x0C]
	movs r0, #0x79
	bl stop_sfx_80195A8
	cmp r4, #0x00
	beq _081040B2
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _081040B2
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0810408C
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x05
	ldr r2, _08104088 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _0810409A
_08104068: .4byte 0x03000FF4
_0810406C: .4byte 0x03000FDC
_08104070: .4byte 0x00008E1C
_08104074: .4byte 0x00008E1E
_08104078: .4byte 0x00008E26
_0810407C: .4byte 0x0000401F
_08104080: .4byte 0x00007003
_08104084: .4byte sub_8103B6C
_08104088: .4byte 0x00002003
_0810408C:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x05
	ldr r2, _081040D4 @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_0810409A:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_081040B2:
	ldr r0, _081040D8 @ =0x081040DD
	str r0, [r7, #0x04]
	movs r0, #0xB1
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_081040C2:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081040D4: .4byte 0x00002050
_081040D8: .4byte sub_81040DC
	thumb_func_start sub_81040DC
sub_81040DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	mov r8, r0
	ldr r7, _08104174 @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r4, [r0, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r5, [r0, #0x00]
	ldr r0, [r4, #0x10]
	ldr r2, _08104178 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0810410C
	adds r0, #0xFF
_0810410C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	movs r6, #0x00
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	str r6, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	ldr r0, [sp, #0x004]
	cmp r0, #0xD0
	bgt _08104166
	ldr r0, [r7, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0xD0
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r4, #0x10]
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x00]
	ldr r1, _0810417C @ =0x00000342
	adds r0, r0, r1
	strb r6, [r0, #0x00]
	ldr r0, _08104180 @ =0x08106AC9
	mov r2, r8
	str r0, [r2, #0x04]
_08104166:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08104174: .4byte 0x03000FD8
_08104178: .4byte 0xFFFFFF00
_0810417C: .4byte 0x00000342
_08104180: .4byte sub_8106AC8
	thumb_func_start sub_8104184
sub_8104184:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _081042B8 @ =0x03000FD8
	mov r9, r0
	ldr r0, [r0, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r6, [r1, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r1, [r1, #0x00]
	mov r8, r1
	ldr r1, _081042BC @ =0x00000342
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	movs r5, #0x7F
	ands r5, r0
	ldr r0, _081042C0 @ =0x0300034C
	adds r4, r0, #0x0
	adds r4, #0x42
	ldrh r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _081041D0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	subs r5, #0x01
_081041D0:
	ldrh r1, [r4, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081041E6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r5, #0x01
_081041E6:
	cmp r5, #0x00
	bge _08104220
	movs r5, #0x05
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _081041F4
	adds r0, #0xFF
_081041F4:
	asrs r7, r0, #0x08
	ldr r4, [r6, #0x3C]
	cmp r4, #0x00
	bge _081041FE
	adds r4, #0xFF
_081041FE:
	asrs r4, r4, #0x08
	mov r2, r9
	ldr r0, [r2, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x20
	subs r2, r2, r0
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_810D228
_08104220:
	cmp r5, #0x05
	ble _0810425A
	movs r5, #0x00
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0810422E
	adds r0, #0xFF
_0810422E:
	asrs r7, r0, #0x08
	ldr r4, [r6, #0x3C]
	cmp r4, #0x00
	bge _08104238
	adds r4, #0xFF
_08104238:
	asrs r4, r4, #0x08
	ldr r0, _081042B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x70
	subs r2, r2, r0
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_810D228
_0810425A:
	ldr r1, _081042B8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r2, _081042BC @ =0x00000342
	adds r0, r0, r2
	ldrb r2, [r0, #0x00]
	cmp r5, r2
	beq _081042A6
	strb r5, [r0, #0x00]
	ldr r0, [r1, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x04
	adds r1, #0x30
	adds r0, r0, r1
	movs r1, #0xA0
	subs r2, r1, r0
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0810428E
	adds r0, #0xFF
_0810428E:
	asrs r3, r0, #0x08
	ldr r1, [r6, #0x3C]
	cmp r1, #0x00
	bge _08104298
	adds r1, #0xFF
_08104298:
	asrs r1, r1, #0x08
	ldr r0, _081042C4 @ =0x00007001
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x05
	bl sub_810A648
_081042A6:
	ldr r2, _081042C0 @ =0x0300034C
	ldrh r1, [r2, #0x3E]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _081042C8
	mov r0, r8
	movs r1, #0x01
	b _081042D4
_081042B8: .4byte 0x03000FD8
_081042BC: .4byte 0x00000342
_081042C0: .4byte 0x0300034C
_081042C4: .4byte 0x00007001
_081042C8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081042DE
	mov r0, r8
	movs r1, #0x02
_081042D4:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _081042F8
_081042DE:
	adds r0, r2, #0x0
	adds r0, #0x40
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	beq _081042F8
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_081042F8:
	ldr r0, _08104348 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08104338
	mov r2, r8
	ldr r0, [r2, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810431C
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0810431C:
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, _0810434C @ =0x08104801
	mov r1, r10
	str r0, [r1, #0x04]
_08104338:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08104348: .4byte 0x0300034C
_0810434C: .4byte sub_8104800
	thumb_func_start sub_8104350
sub_8104350:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x170
	mov r9, r0
	str r1, [sp, #0x14C]
	ldr r6, [sp, #0x190]
	ldr r4, [sp, #0x194]
	lsls r0, r6, #0x01
	adds r2, r0, r2
	ldrh r2, [r2, #0x00]
	str r2, [sp, #0x150]
	adds r0, r0, r3
	ldrh r7, [r0, #0x00]
	movs r0, #0x00
	mov r8, r0
	ldr r1, _08104394 @ =0x08200F7C
	movs r2, #0xA0
	lsls r2, r2, #0x01
	mov r0, sp
	bl memcpy
	cmp r4, #0x00
	bne _081043CC
	cmp r6, #0x05
	bhi _08104430
	lsls r0, r6, #0x02
	ldr r1, _08104398 @ =0x0810439C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08104394: .4byte 0x08200F7C
_08104398: .4byte 0x0810439C
	.byte 0xB4, 0x43, 0x10, 0x08, 0x1C, 0x44, 0x10, 0x08, 0xBA, 0x43, 0x10, 0x08, 0xC4, 0x43, 0x10, 0x08
	.byte 0x1C, 0x44, 0x10, 0x08, 0x28, 0x44, 0x10, 0x08, 0xA6, 0x25, 0x6D, 0x00, 0x1F, 0xE0, 0x01, 0x48
	.byte 0x36, 0xE0, 0x00, 0x00, 0x33, 0x01, 0x00, 0x00, 0x00, 0x49, 0x24, 0xE0, 0x33, 0x01, 0x00, 0x00
_081043CC:
	cmp r6, #0x05
	bhi _08104430
	lsls r0, r6, #0x02
	ldr r1, _081043DC @ =0x081043E0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_081043DC: .4byte 0x081043E0
	.byte 0xF8, 0x43, 0x10, 0x08, 0x1C, 0x44, 0x10, 0x08, 0x08, 0x44, 0x10, 0x08, 0x10, 0x44, 0x10, 0x08
	.byte 0x1C, 0x44, 0x10, 0x08, 0x28, 0x44, 0x10, 0x08, 0x01, 0x4D, 0x02, 0x49, 0x55, 0x91, 0x17, 0xE0
	.byte 0x19, 0x01, 0x00, 0x00, 0x33, 0x01, 0x00, 0x00, 0x00, 0x48, 0x0F, 0xE0, 0x33, 0x01, 0x00, 0x00
	.byte 0x01, 0x49, 0x55, 0x91, 0x0D, 0x1C, 0x0B, 0xE0, 0x19, 0x01, 0x00, 0x00, 0x01, 0x4A, 0x55, 0x92
	.byte 0x15, 0x1C, 0x05, 0xE0, 0x33, 0x01, 0x00, 0x00, 0xA6, 0x20, 0x40, 0x00, 0x55, 0x90, 0x05, 0x1C
_08104430:
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, sp
	mov r10, r1
	adds r0, r7, #0x0
	bl sub_81DB964
	str r0, [sp, #0x158]
	str r1, [sp, #0x15C]
	ldr r3, _08104770 @ =0x00000000
	ldr r2, _0810476C @ =0x3FE80000
	bl sub_81DB240
	ldr r2, _08104774 @ =0x40700000
	ldr r3, _08104778 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r0, #0x0
	ldr r2, [sp, #0x14C]
	adds r0, r2, r7
	muls r0, r5
	bl sub_81DB964
	str r0, [sp, #0x160]
	str r1, [sp, #0x164]
	ldr r2, _0810477C @ =0x3FD00000
	ldr r3, _08104780 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r4, r0
	mov r0, r10
	str r4, [r0, #0x00]
	ldr r5, _08104784 @ =0x3FE00000
	ldr r6, _08104788 @ =0x00000000
	ldr r0, [sp, #0x158]
	ldr r1, [sp, #0x15C]
	adds r3, r6, #0x0
	adds r2, r5, #0x0
	bl sub_81DB240
	ldr r2, _08104774 @ =0x40700000
	ldr r3, _08104778 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r0, #0x0
	ldr r0, [sp, #0x160]
	ldr r1, [sp, #0x164]
	adds r3, r6, #0x0
	adds r2, r5, #0x0
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r4, r0
	mov r1, r10
	str r4, [r1, #0x04]
	ldr r0, [sp, #0x158]
	ldr r1, [sp, #0x15C]
	ldr r2, _0810477C @ =0x3FD00000
	ldr r3, _08104780 @ =0x00000000
	bl sub_81DB240
	ldr r2, _08104774 @ =0x40700000
	ldr r3, _08104778 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r0, #0x0
	ldr r0, [sp, #0x160]
	ldr r1, [sp, #0x164]
	ldr r3, _08104770 @ =0x00000000
	ldr r2, _0810476C @ =0x3FE80000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r4, r0
	mov r2, r10
	str r4, [r2, #0x08]
	movs r7, #0x00
	ldr r0, [sp, #0x150]
	lsls r1, r0, #0x08
	add r0, sp, #0x140
	ldr r0, [r0, #0x00]
	ldr r2, [sp, #0x14C]
	lsls r3, r2, #0x08
	cmp r1, r0
	blt _08104500
	adds r2, r1, #0x0
	mov r1, r10
_081044F2:
	adds r1, #0x04
	adds r7, #0x01
	cmp r7, #0x02
	bgt _08104500
	ldr r0, [r1, #0x00]
	cmp r2, r0
	bge _081044F2
_08104500:
	adds r0, r3, #0x0
	movs r1, #0x05
	bl __divsi3
	cmp r0, #0xFF
	bgt _08104510
	movs r0, #0x80
	lsls r0, r0, #0x01
_08104510:
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _0810451A
	adds r0, #0xFF
_0810451A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x154]
	cmp r7, #0x01
	bne _08104536
	ldr r2, _0810478C @ =0xFFFFFF00
	adds r0, r0, r2
	lsls r0, r0, #0x01
	movs r1, #0x03
	bl __divsi3
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r0, r1
	str r1, [sp, #0x154]
_08104536:
	cmp r7, #0x02
	bne _0810454E
	ldr r2, [sp, #0x154]
	ldr r1, _0810478C @ =0xFFFFFF00
	adds r0, r2, r1
	movs r1, #0x03
	bl __divsi3
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r2, r0, r2
	str r2, [sp, #0x154]
_0810454E:
	cmp r7, #0x03
	bne _08104558
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x154]
_08104558:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r1, r0, #0x02
	adds r1, r1, r0
	mov r10, r1
	lsls r1, r7, #0x02
	str r1, [sp, #0x168]
	mov r5, r9
	mov r2, r10
	lsls r1, r2, #0x02
	ldr r2, [sp, #0x168]
	adds r0, r2, r7
	lsls r0, r0, #0x04
	movs r2, #0x04
	add r0, sp
	adds r6, r1, r0
	ldr r0, [r6, #0x00]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _0810458E
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_0810458E:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	mov r1, r9
	strb r0, [r1, #0x00]
	ldrb r4, [r1, #0x00]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r4, r0
	bgt _081045AE
	cmp r4, #0x05
	bls _081045C6
_081045AE:
	movs r1, #0x01
	add r8, r1
	cmp r4, r0
	ble _081045BA
	mov r1, r9
	strb r0, [r1, #0x00]
_081045BA:
	mov r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, #0x05
	bls _081045C6
	movs r0, #0x05
	strb r0, [r1, #0x00]
_081045C6:
	adds r5, #0x01
	adds r6, #0x04
	subs r2, #0x01
	cmp r2, #0x00
	blt _0810465A
_081045D0:
	ldr r0, [r6, #0x00]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _081045DE
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_081045DE:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	strb r0, [r5, #0x00]
	ldrb r4, [r5, #0x00]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r4, r0
	bgt _081045FC
	cmp r4, #0x05
	bls _08104610
_081045FC:
	movs r1, #0x01
	add r8, r1
	cmp r4, r0
	ble _08104606
	strb r0, [r5, #0x00]
_08104606:
	ldrb r0, [r5, #0x00]
	cmp r0, #0x05
	bls _08104610
	movs r0, #0x05
	strb r0, [r5, #0x00]
_08104610:
	ldr r0, [r6, #0x04]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _0810461E
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_0810461E:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	strb r0, [r5, #0x01]
	ldrb r4, [r5, #0x01]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r4, r0
	bgt _0810463C
	cmp r4, #0x05
	bls _08104650
_0810463C:
	movs r1, #0x01
	add r8, r1
	cmp r4, r0
	ble _08104646
	strb r0, [r5, #0x01]
_08104646:
	ldrb r0, [r5, #0x01]
	cmp r0, #0x05
	bls _08104650
	movs r0, #0x05
	strb r0, [r5, #0x01]
_08104650:
	adds r5, #0x02
	adds r6, #0x08
	subs r2, #0x02
	cmp r2, #0x00
	bge _081045D0
_0810465A:
	mov r4, r10
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r1, r0, #0x02
	adds r1, r1, r0
	mov r10, r1
	cmp r4, r10
	bne _08104684
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r1, r0, #0x02
	adds r1, r1, r0
	mov r10, r1
_08104684:
	mov r4, r9
	adds r4, #0x05
	mov r2, r10
	lsls r1, r2, #0x02
	ldr r2, [sp, #0x168]
	adds r0, r2, r7
	lsls r0, r0, #0x04
	movs r2, #0x04
	add r0, sp
	adds r6, r1, r0
	ldr r0, [r6, #0x00]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _081046A6
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_081046A6:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	mov r1, r9
	strb r0, [r1, #0x05]
	ldrb r5, [r1, #0x05]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r5, r0
	bgt _081046C6
	cmp r5, #0x05
	bls _081046DE
_081046C6:
	movs r1, #0x01
	add r8, r1
	cmp r5, r0
	ble _081046D2
	mov r1, r9
	strb r0, [r1, #0x05]
_081046D2:
	mov r1, r9
	ldrb r0, [r1, #0x05]
	cmp r0, #0x05
	bls _081046DE
	movs r0, #0x05
	strb r0, [r1, #0x05]
_081046DE:
	adds r4, #0x01
	adds r6, #0x04
	subs r2, #0x01
	cmp r2, #0x00
	blt _0810479C
_081046E8:
	ldr r0, [r6, #0x00]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _081046F6
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_081046F6:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldrb r5, [r4, #0x00]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r5, r0
	bgt _08104714
	cmp r5, #0x05
	bls _08104728
_08104714:
	movs r1, #0x01
	add r8, r1
	cmp r5, r0
	ble _0810471E
	strb r0, [r4, #0x00]
_0810471E:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x05
	bls _08104728
	movs r0, #0x05
	strb r0, [r4, #0x00]
_08104728:
	ldr r0, [r6, #0x04]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _08104736
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_08104736:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	strb r0, [r4, #0x01]
	ldrb r5, [r4, #0x01]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r5, r0
	bgt _08104754
	cmp r5, #0x05
	bls _08104768
_08104754:
	movs r1, #0x01
	add r8, r1
	cmp r5, r0
	ble _0810475E
	strb r0, [r4, #0x01]
_0810475E:
	ldrb r0, [r4, #0x01]
	cmp r0, #0x05
	bls _08104768
	movs r0, #0x05
	strb r0, [r4, #0x01]
_08104768:
	adds r4, #0x02
	b _08104794
_0810476C: .4byte 0x3FE80000
_08104770: .4byte 0x00000000
_08104774: .4byte 0x40700000
_08104778: .4byte 0x00000000
_0810477C: .4byte 0x3FD00000
_08104780: .4byte 0x00000000
_08104784: .4byte 0x3FE00000
_08104788: .4byte 0x00000000
_0810478C: .4byte 0xFFFFFF00
_08104790: .4byte 0x000003FF
_08104794:
	adds r6, #0x08
	subs r2, #0x02
	cmp r2, #0x00
	bge _081046E8
_0810479C:
	mov r2, r8
	cmp r2, #0x03
	ble _081047EE
	lsrs r0, r2, #0x1F
	add r0, r8
	asrs r0, r0, #0x01
	mov r8, r0
	cmp r0, #0x00
	ble _081047EE
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	bl __divsi3
	adds r5, r0, #0x3
_081047B8:
	movs r7, #0x00
	mov r4, r8
	subs r4, #0x01
_081047BE:
	adds r7, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0A
	bl sub_81DD77C
	adds r2, r0, #0x0
	mov r0, r9
	adds r1, r0, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x05
	beq _081047DC
	cmp r0, r5
	bne _081047E4
_081047DC:
	ldrb r0, [r1, #0x00]
	lsrs r0, r0, #0x01
	strb r0, [r1, #0x00]
	movs r7, #0x64
_081047E4:
	cmp r7, #0x1F
	ble _081047BE
	mov r8, r4
	cmp r4, #0x00
	bgt _081047B8
_081047EE:
	add sp, #0x170
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8104800
sub_8104800:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	ldr r0, _08104880 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08104874
	movs r2, #0x12
	ldsh r5, [r6, r2]
	ldr r1, _08104884 @ =0x03000FF4
	lsls r0, r5, #0x04
	subs r0, r0, r5
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	ldr r0, _08104888 @ =0x03000FDC
	ldr r3, [r0, #0x00]
	ldr r7, _0810488C @ =0x00008E34
	adds r0, r3, r7
	adds r1, #0x30
	ldrb r1, [r1, #0x00]
	subs r7, #0x18
	adds r2, r3, r7
	adds r7, #0x0C
	adds r3, r3, r7
	ldr r7, _08104890 @ =0x00000342
	adds r4, r4, r7
	ldrb r4, [r4, #0x00]
	str r4, [sp, #0x000]
	str r5, [sp, #0x004]
	bl sub_8104350
	mov r0, r8
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	strh r0, [r6, #0x10]
	ldr r0, _08104894 @ =0x08104981
	str r0, [r6, #0x04]
	ldr r0, _08104898 @ =0x00000123
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08104874:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08104880: .4byte 0x03000FD8
_08104884: .4byte 0x03000FF4
_08104888: .4byte 0x03000FDC
_0810488C: .4byte 0x00008E34
_08104890: .4byte 0x00000342
_08104894: .4byte sub_8104980
_08104898: .4byte 0x00000123
	thumb_func_start sub_810489C
sub_810489C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r8, r0
	adds r5, r1, #0x0
	ldrh r0, [r0, #0x10]
	ldr r7, _081048EC @ =0x000007FF
	ands r7, r0
	lsls r0, r0, #0x10
	asrs r6, r0, #0x1B
	cmp r7, #0x00
	bne _081048D4
	adds r6, #0x01
	cmp r6, #0x0A
	bne _081048C0
	movs r6, #0x00
_081048C0:
	ldr r0, _081048F0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _081048F4 @ =0x00008E34
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	bl sub_8083F88
	mov r2, r8
	strh r0, [r2, #0x16]
_081048D4:
	adds r7, #0x01
	cmp r7, r5
	bne _081048DC
	movs r7, #0x00
_081048DC:
	cmp r6, #0x00
	beq _081048FC
	ldr r0, _081048F0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	adds r0, r0, r6
	ldr r3, _081048F8 @ =0x00008E33
	adds r0, r0, r3
	b _08104904
_081048EC: .4byte 0x000007FF
_081048F0: .4byte 0x03000FDC
_081048F4: .4byte 0x00008E34
_081048F8: .4byte 0x00008E33
_081048FC:
	ldr r0, _08104964 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08104968 @ =0x00008E3D
	adds r0, r0, r1
_08104904:
	ldrb r0, [r0, #0x00]
	bl sub_8083F88
	mov r9, r0
	ldr r0, _0810496C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _08104970 @ =0x00000342
	adds r0, r0, r2
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x04
	adds r4, #0x28
	ldr r2, _08104974 @ =0x03001038
	ldr r0, _08104978 @ =0x0819832C
	ldr r1, _0810497C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsls r0, r7, #0x06
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r3, r8
	movs r1, #0x16
	ldsh r0, [r3, r1]
	movs r1, #0xB8
	bl sub_810D260
	adds r2, r0, #0x0
	mov r3, r8
	movs r1, #0x16
	ldsh r0, [r3, r1]
	str r5, [sp, #0x000]
	mov r1, r9
	adds r3, r4, #0x0
	bl sub_8109FEC
	lsls r0, r6, #0x0B
	orrs r7, r0
	adds r0, r7, #0x0
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08104964: .4byte 0x03000FDC
_08104968: .4byte 0x00008E3D
_0810496C: .4byte 0x03000FD8
_08104970: .4byte 0x00000342
_08104974: .4byte 0x03001038
_08104978: .4byte 0x0819832C
_0810497C: .4byte 0x08198220
	thumb_func_start sub_8104980
sub_8104980:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r1, #0x03
	bl sub_810489C
	strh r0, [r4, #0x10]
	ldr r0, _081049B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	ldr r0, _081049BC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _081049C4
	strh r2, [r4, #0x14]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, _081049C0 @ =0x08106A89
	str r0, [r4, #0x04]
	b _081049F2
_081049B8: .4byte 0x03000FD8
_081049BC: .4byte 0x0300034C
_081049C0: .4byte sub_8106A88
_081049C4:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _081049F2
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x0B
	bl sub_8082E1C
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r1, #0xF0
	strb r1, [r0, #0x00]
	subs r1, #0xF1
	movs r0, #0x61
	bl play_sfx_80195B4
	ldr r0, _081049F8 @ =0x08106AC9
	str r0, [r4, #0x04]
	ldr r0, _081049FC @ =0x00000123
	bl stop_sfx_80195A8
_081049F2:
	pop {r4, r5}
	pop {r0}
	bx r0
_081049F8: .4byte sub_8106AC8
_081049FC: .4byte 0x00000123
	thumb_func_start sub_8104A00
sub_8104A00:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r0, _08104A70 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08104A74 @ =0x00000342
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	adds r6, r0, #0x0
	adds r6, #0x28
	movs r0, #0x16
	ldsh r4, [r5, r0]
	adds r0, r4, #0x0
	movs r1, #0xB8
	bl sub_810D260
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_810D34C
	ldrh r0, [r5, #0x10]
	adds r0, #0x01
	movs r7, #0x00
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x09
	ble _08104A68
	ldr r0, _08104A78 @ =0x00007003
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	bl sub_807BC90
	movs r0, #0xB8
	strh r0, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x0A
	strh r0, [r4, #0x02]
	strh r7, [r4, #0x0E]
	str r4, [r5, #0x08]
	strh r7, [r5, #0x10]
	ldr r0, _08104A7C @ =0x08106A31
	str r0, [r5, #0x04]
	ldr r0, _08104A80 @ =0x00000123
	bl stop_sfx_80195A8
_08104A68:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08104A70: .4byte 0x03000FD8
_08104A74: .4byte 0x00000342
_08104A78: .4byte 0x00007003
_08104A7C: .4byte sub_8106A30
_08104A80: .4byte 0x00000123
	thumb_func_start sub_8104A84
sub_8104A84:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x024
	adds r5, r0, #0x0
	ldr r0, _08104B20 @ =0x03000FD8
	mov r9, r0
	ldr r0, [r0, #0x00]
	ldr r1, _08104B24 @ =0x00000342
	adds r0, r0, r1
	ldrb r6, [r0, #0x00]
	lsls r7, r6, #0x01
	adds r0, r7, #0x5
	lsls r0, r0, #0x03
	mov r8, r0
	movs r2, #0x16
	ldsh r4, [r5, r2]
	adds r0, r4, #0x0
	movs r1, #0xB8
	bl sub_810D260
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	mov r2, r8
	movs r3, #0x00
	bl sub_810D34C
	ldrh r0, [r5, #0x10]
	adds r0, #0x01
	movs r3, #0x00
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x09
	bgt _08104ACE
	b _08104C54
_08104ACE:
	ldrh r0, [r5, #0x16]
	movs r2, #0x0F
	ands r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x01
	adds r2, r2, r1
	strh r2, [r5, #0x16]
	mov r1, r9
	ldr r0, [r1, #0x00]
	lsls r1, r6, #0x02
	movs r2, #0xE0
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r3, [r0, #0x04]
	movs r2, #0x16
	ldsh r0, [r5, r2]
	mov r12, r0
	ldr r0, _08104B28 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r2, _08104B2C @ =0x00008E1C
	adds r0, r0, r2
	adds r0, r0, r7
	ldrh r2, [r0, #0x00]
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	movs r0, #0x20
	str r0, [sp, #0x008]
	movs r0, #0x0C
	str r0, [sp, #0x00C]
	movs r3, #0x16
	ldsh r0, [r5, r3]
	adds r4, r1, #0x0
	cmp r0, #0x09
	bgt _08104B30
	movs r0, #0xBC
	b _08104B32
_08104B20: .4byte 0x03000FD8
_08104B24: .4byte 0x00000342
_08104B28: .4byte 0x03000FDC
_08104B2C: .4byte 0x00008E1C
_08104B30:
	movs r0, #0xC0
_08104B32:
	str r0, [sp, #0x010]
	mov r0, r8
	str r0, [sp, #0x014]
	movs r1, #0xA8
	str r1, [sp, #0x018]
	lsls r0, r6, #0x04
	adds r0, #0x2A
	str r0, [sp, #0x01C]
	str r1, [sp, #0x020]
	adds r0, r5, #0x0
	mov r1, r12
	ldr r3, _08104B80 @ =0x00000999
	bl sub_8102108
	ldr r1, _08104B84 @ =0x03000FD8
	ldr r2, [r1, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r1, r2, r3
	adds r1, r1, r4
	str r0, [r1, #0x00]
	ldr r3, _08104B88 @ =0x03000FF4
	movs r0, #0x12
	ldsh r1, [r5, r0]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, [r3, #0x00]
	adds r3, r1, r0
	ldr r1, _08104B8C @ =0x00000342
	adds r2, r2, r1
	ldrb r0, [r2, #0x00]
	cmp r0, #0x05
	bhi _08104C4C
	lsls r0, r0, #0x02
	ldr r1, _08104B90 @ =0x08104B94
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08104B80: .4byte 0x00000999
_08104B84: .4byte 0x03000FD8
_08104B88: .4byte 0x03000FF4
_08104B8C: .4byte 0x00000342
_08104B90: .4byte 0x08104B94
	.byte 0xAC, 0x4B, 0x10, 0x08, 0xC8, 0x4B, 0x10, 0x08, 0xE4, 0x4B, 0x10, 0x08, 0x00, 0x4C, 0x10, 0x08
	.byte 0x1C, 0x4C, 0x10, 0x08, 0x38, 0x4C, 0x10, 0x08, 0xE8, 0x8A, 0x1A, 0x8A, 0x80, 0x18, 0x18, 0x82
	.byte 0x00, 0x04, 0x00, 0x0C, 0x02, 0x49, 0x88, 0x42, 0x46, 0xD9, 0x19, 0x82, 0x44, 0xE0, 0x00, 0x00
	.byte 0xE7, 0x03, 0x00, 0x00, 0xE8, 0x8A, 0xD9, 0x8A, 0x40, 0x18, 0xD8, 0x82, 0x00, 0x04, 0x00, 0x0C
	.byte 0x02, 0x49, 0x88, 0x42, 0x38, 0xD9, 0xD9, 0x82, 0x36, 0xE0, 0x00, 0x00, 0xE7, 0x03, 0x00, 0x00
	.byte 0xE8, 0x8A, 0x5A, 0x8B, 0x80, 0x18, 0x58, 0x83, 0x00, 0x04, 0x00, 0x0C, 0x02, 0x49, 0x88, 0x42
	.byte 0x2A, 0xD9, 0x59, 0x83, 0x28, 0xE0, 0x00, 0x00, 0xE7, 0x03, 0x00, 0x00, 0xE8, 0x8A, 0x59, 0x8C
	.byte 0x40, 0x18, 0x58, 0x84, 0x00, 0x04, 0x00, 0x0C, 0x02, 0x49, 0x88, 0x42, 0x1C, 0xD9, 0x59, 0x84
	.byte 0x1A, 0xE0, 0x00, 0x00, 0xE7, 0x03, 0x00, 0x00, 0xE8, 0x8A, 0xDA, 0x8B, 0x80, 0x18, 0xD8, 0x83
	.byte 0x00, 0x04, 0x00, 0x0C, 0x02, 0x49, 0x88, 0x42, 0x0E, 0xD9, 0xD9, 0x83, 0x0C, 0xE0, 0x00, 0x00
	.byte 0xE7, 0x03, 0x00, 0x00, 0xE8, 0x8A, 0xD9, 0x8C, 0x40, 0x18, 0xD8, 0x84, 0x00, 0x04, 0x00, 0x0C
	.byte 0x07, 0x49, 0x88, 0x42, 0x00, 0xD9, 0xD9, 0x84
_08104C4C:
	movs r0, #0x01
	strh r0, [r5, #0x10]
	ldr r0, _08104C68 @ =0x08104C6D
	str r0, [r5, #0x04]
_08104C54:
	add sp, #0x024
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0xE7, 0x03, 0x00, 0x00
_08104C68: .4byte sub_8104C6C
	thumb_func_start sub_8104C6C
sub_8104C6C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r1, #0x10
	ldsh r0, [r5, r1]
	cmp r0, #0x2B
	bgt _08104C8E
	cmp r0, #0x20
	bne _08104C86
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x79
	bl play_sfx_80195B4
_08104C86:
	ldrh r0, [r5, #0x10]
	adds r0, #0x01
	strh r0, [r5, #0x10]
	b _08104D06
_08104C8E:
	movs r0, #0x79
	bl stop_sfx_80195A8
	ldr r4, [r5, #0x0C]
	cmp r4, #0x00
	beq _08104CF2
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08104CF2
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08104CCC
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x06
	ldr r2, _08104CC8 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _08104CDA
_08104CC8: .4byte 0x00002003
_08104CCC:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x06
	ldr r2, _08104D0C @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_08104CDA:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08104CF2:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08104D10 @ =0x08106A11
	str r0, [r5, #0x04]
_08104D06:
	pop {r4, r5}
	pop {r0}
	bx r0
_08104D0C: .4byte 0x00002050
_08104D10: .4byte sub_8106A10
	thumb_func_start sub_8104D14
sub_8104D14:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, _08104D90 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08104DAC
	movs r1, #0x12
	ldsh r0, [r5, r1]
	ldr r2, _08104D94 @ =0x03000FF4
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x02
	ldr r4, [r2, #0x00]
	adds r4, r4, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_81230D0
	ldr r6, [r5, #0x0C]
	adds r4, #0x30
	ldrb r0, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_8102CA4
	ldr r1, [r5, #0x04]
	ldr r0, _08104D98 @ =0x081054D5
	cmp r1, r0
	beq _08104DAC
	ldr r0, [r5, #0x0C]
	cmp r0, r6
	beq _08104DA8
	ldr r4, _08104D9C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	adds r0, #0x4C
	ldr r1, _08104DA0 @ =0x08104F11
	bl sub_807FFD8
	str r6, [r0, #0x0C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x01
	bl sub_807F6EC
	ldr r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r1, #0x20
	strh r1, [r2, #0x34]
	ldr r0, [r0, #0x00]
	adds r0, #0x4A
	movs r1, #0x0C
	strh r1, [r0, #0x00]
	ldr r0, _08104DA4 @ =0x08106BB1
	b _08104DAA
_08104D90: .4byte 0x0300034C
_08104D94: .4byte 0x03000FF4
_08104D98: .4byte sub_81054D4
_08104D9C: .4byte 0x03000FD8
_08104DA0: .4byte sub_8104F10
_08104DA4: .4byte sub_8106BB0
_08104DA8:
	ldr r0, _08104DB4 @ =0x08102F55
_08104DAA:
	str r0, [r5, #0x04]
_08104DAC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08104DB4: .4byte sub_8102F54
	thumb_func_start sub_8104DB8
sub_8104DB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	ldr r1, _08104E48 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r7, #0x94
	lsls r7, r7, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	movs r1, #0x1E
	mov r10, r1
	str r1, [sp, #0x000]
	movs r1, #0x02
	mov r9, r1
	str r1, [sp, #0x004]
	ldr r4, _08104E4C @ =0x084FB588
	adds r4, #0x4E
	ldrh r1, [r4, #0x00]
	lsls r1, r1, #0x02
	ldr r5, _08104E50 @ =0x089F808C
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	adds r1, r1, r5
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	mov r8, r1
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8084F28
	ldr r1, _08104E48 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	mov r1, r10
	str r1, [sp, #0x000]
	mov r1, r9
	str r1, [sp, #0x004]
	ldrh r1, [r4, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	adds r1, r1, r5
	str r1, [sp, #0x008]
	mov r1, r8
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x12
	bl sub_8084F28
	movs r0, #0x00
	strh r0, [r6, #0x12]
	strh r0, [r6, #0x10]
	ldr r0, _08104E54 @ =0x08104E59
	str r0, [r6, #0x04]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08104E48: .4byte 0x03000FD8
_08104E4C: .4byte 0x084FB588
_08104E50: .4byte 0x089F808C
_08104E54: .4byte sub_8104E58
	thumb_func_start sub_8104E58
sub_8104E58:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldrh r0, [r7, #0x10]
	adds r0, #0x01
	strh r0, [r7, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0C
	ble _08104EF4
	movs r0, #0x00
	strh r0, [r7, #0x10]
	ldrh r0, [r7, #0x12]
	movs r1, #0x01
	eors r0, r1
	strh r0, [r7, #0x12]
	ldr r1, _08104F04 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r3, #0x94
	lsls r3, r3, #0x02
	mov r10, r3
	add r0, r10
	ldr r0, [r0, #0x00]
	movs r1, #0x1E
	mov r9, r1
	str r1, [sp, #0x000]
	movs r3, #0x02
	mov r8, r3
	str r3, [sp, #0x004]
	ldr r4, _08104F08 @ =0x084FB588
	adds r4, #0x4E
	ldrh r1, [r4, #0x00]
	lsls r1, r1, #0x02
	ldr r5, _08104F0C @ =0x089F808C
	adds r1, r1, r5
	movs r3, #0x12
	ldsh r2, [r7, r3]
	lsls r2, r2, #0x02
	adds r2, r2, r5
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r6, #0x80
	lsls r6, r6, #0x08
	str r6, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8084F28
	ldr r1, _08104F04 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	add r0, r10
	ldr r0, [r0, #0x00]
	mov r3, r9
	str r3, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	ldrh r1, [r4, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r5
	movs r3, #0x12
	ldsh r2, [r7, r3]
	lsls r2, r2, #0x02
	adds r2, r2, r5
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x12
	bl sub_8084F28
_08104EF4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08104F04: .4byte 0x03000FD8
_08104F08: .4byte 0x084FB588
_08104F0C: .4byte 0x089F808C
	thumb_func_start sub_8104F10
sub_8104F10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r10, r0
	ldr r4, [r0, #0x0C]
	mov r5, sp
	adds r5, #0x0E
	add r6, sp, #0x010
	movs r0, #0xD8
	adds r0, r0, r4
	mov r9, r0
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x18]
	subs r3, r3, r0
	movs r1, #0xDC
	adds r1, r1, r4
	mov r8, r1
	ldr r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	adds r7, r4, #0x0
	adds r7, #0xE0
	ldr r0, [r7, #0x00]
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0x80
	lsls r0, r0, #0x03
	str r0, [sp, #0x008]
	add r0, sp, #0x00C
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8087968
	movs r1, #0x90
	lsls r1, r1, #0x03
	cmp r0, r1
	ble _08104F86
	add r0, sp, #0x00C
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x1C]
	adds r0, r0, r1
	str r0, [r4, #0x1C]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	str r0, [r4, #0x20]
	b _08104FDA
_08104F86:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1F]
	mov r1, r9
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x18]
	mov r2, r8
	ldr r0, [r2, #0x00]
	str r0, [r4, #0x1C]
	ldr r0, [r7, #0x00]
	str r0, [r4, #0x20]
	movs r0, #0x00
	mov r1, r10
	str r0, [r1, #0x04]
_08104FDA:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8104FEC
sub_8104FEC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldrh r1, [r0, #0x10]
	movs r2, #0x10
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	ble _0810500A
	subs r0, r1, #0x1
	mov r3, r8
	strh r0, [r3, #0x10]
	b _081050D2
_0810500A:
	mov r1, r8
	movs r2, #0x12
	ldsh r0, [r1, r2]
	ldr r2, _081050E0 @ =0x03000FF4
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x02
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	adds r0, #0x30
	ldrb r0, [r0, #0x00]
	bl sub_8083F88
	adds r6, r0, #0x0
	ldr r0, _081050E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xDC
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	str r6, [r1, #0x08]
	ldr r1, [r0, #0x00]
	movs r0, #0x1E
	strh r0, [r1, #0x10]
	ldr r0, _081050E8 @ =0x03001034
	mov r9, r0
	ldr r5, _081050EC @ =0x06010000
	ldr r1, _081050F0 @ =0x06017200
	movs r2, #0x80
	lsls r2, r2, #0x03
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r1, _081050F4 @ =0x08198154
	ldr r0, _081050F8 @ =0x081980D8
	subs r7, r1, r0
	mov r1, r9
	ldr r3, [r1, #0x00]
	adds r3, r3, r7
	movs r2, #0x0F
	mov r10, r2
	adds r4, r6, #0x0
	ands r4, r2
	lsls r4, r4, #0x01
	adds r0, r4, #0x0
	adds r0, #0x49
	lsls r0, r0, #0x05
	adds r0, r0, r5
	ldr r1, _081050FC @ =0x000072C0
	adds r1, r5, r1
	movs r2, #0x20
	bl _call_via_r3
	mov r0, r9
	ldr r3, [r0, #0x00]
	adds r3, r3, r7
	adds r4, #0x4A
	lsls r4, r4, #0x05
	adds r4, r4, r5
	ldr r0, _08105100 @ =0x00007340
	adds r5, r5, r0
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x20
	bl _call_via_r3
	lsrs r6, r6, #0x04
	cmp r6, #0x00
	beq _081050CC
	mov r1, r9
	ldr r3, [r1, #0x00]
	adds r3, r3, r7
	mov r2, r10
	ands r6, r2
	lsls r4, r6, #0x01
	adds r0, r4, #0x0
	adds r0, #0x49
	lsls r0, r0, #0x05
	ldr r1, _081050EC @ =0x06010000
	adds r0, r0, r1
	ldr r1, _08105104 @ =0x060174A0
	movs r2, #0x20
	bl _call_via_r3
	mov r2, r9
	ldr r3, [r2, #0x00]
	adds r3, r3, r7
	adds r4, #0x4A
	lsls r4, r4, #0x05
	ldr r0, _081050EC @ =0x06010000
	adds r4, r4, r0
	ldr r1, _08105108 @ =0x06017520
	adds r0, r4, #0x0
	movs r2, #0x20
	bl _call_via_r3
_081050CC:
	ldr r0, _0810510C @ =0x08105111
	mov r1, r8
	str r0, [r1, #0x04]
_081050D2:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081050E0: .4byte 0x03000FF4
_081050E4: .4byte 0x03000FD8
_081050E8: .4byte 0x03001034
_081050EC: .4byte 0x06010000
_081050F0: .4byte 0x06017200
_081050F4: .4byte 0x08198154
_081050F8: .4byte 0x081980D8
_081050FC: .4byte 0x000072C0
_08105100: .4byte 0x00007340
_08105104: .4byte 0x060174A0
_08105108: .4byte 0x06017520
_0810510C: .4byte sub_8105110
	thumb_func_start sub_8105110
sub_8105110:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x010]
	ldr r0, _0810517C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r3, #0x10
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	ble _08105134
	b _081053A8
_08105134:
	ldr r1, [sp, #0x010]
	ldr r0, [r1, #0x0C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08105188
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x0E
	str r1, [sp, #0x000]
	movs r1, #0x0D
	str r1, [sp, #0x004]
	ldr r1, _08105180 @ =0x084FB588
	adds r1, #0x48
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08105184 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x08
	movs r3, #0x04
	bl sub_8084F28
	b _081051BA
	.byte 0x00, 0x00
_0810517C: .4byte 0x03000FD8
_08105180: .4byte 0x084FB588
_08105184: .4byte 0x089F808C
_08105188:
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	movs r1, #0x0E
	str r1, [sp, #0x000]
	movs r1, #0x0D
	str r1, [sp, #0x004]
	ldr r1, _081053B8 @ =0x084FB588
	adds r1, #0x4A
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _081053BC @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x08
	movs r3, #0x04
	bl sub_8084F28
_081051BA:
	ldr r6, _081053C0 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r5, #0x93
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x78
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, #0xA0
	ldr r1, _081053C4 @ =0x00007003
	movs r0, #0x50
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x1F]
	adds r5, r4, #0x0
	adds r5, #0x9C
	movs r1, #0x30
	str r1, [r5, #0x00]
	ldr r6, _081053C8 @ =0x08198584
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _08105248
	adds r0, #0x3F
_08105248:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r7, _081053CC @ =0x08198504
	movs r3, #0x00
	ldsh r1, [r7, r3]
	cmp r1, #0x00
	bge _0810525E
	adds r1, #0x3F
_0810525E:
	asrs r1, r1, #0x06
	ldr r0, [r5, #0x00]
	muls r1, r0
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	bl sub_807FA50
	str r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r1, [r0, #0x04]
	adds r1, r4, #0x0
	adds r1, #0x0C
	str r1, [r0, #0x08]
	str r5, [sp, #0x014]
	ldr r1, _081053D0 @ =0x0819832C
	ldr r0, _081053D4 @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
	ldr r0, _081053D8 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	movs r0, #0x80
	lsls r0, r0, #0x01
	movs r1, #0x0C
	bl _call_via_r2
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	ldr r1, _081053C8 @ =0x08198584
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _081052A8
	adds r0, #0x3F
_081052A8:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x014]
	ldr r2, [r1, #0x00]
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x38]
	adds r5, r0, r1
	ldr r1, [r4, #0x3C]
	adds r0, r3, r7
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _081052C4
	adds r0, #0x3F
_081052C4:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r2, [r4, #0x40]
	adds r2, r2, r0
	adds r0, r5, #0x0
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	movs r6, #0x02
_081052DA:
	ldr r0, _081053D8 @ =0x03001038
	mov r9, r0
	ldr r2, [r0, #0x00]
	add r2, r10
	lsls r0, r6, #0x08
	movs r1, #0x0C
	bl _call_via_r2
	movs r1, #0xFF
	mov r8, r1
	ands r0, r1
	lsls r3, r0, #0x01
	ldr r2, _081053C8 @ =0x08198584
	adds r0, r3, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08105300
	adds r0, #0x3F
_08105300:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x014]
	ldr r2, [r1, #0x00]
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x38]
	adds r5, r0, r1
	ldr r1, [r4, #0x3C]
	ldr r7, _081053CC @ =0x08198504
	adds r0, r3, r7
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0810531E
	adds r0, #0x3F
_0810531E:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r2, [r4, #0x40]
	adds r2, r2, r0
	adds r0, r5, #0x0
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	adds r0, r6, #0x1
	mov r1, r9
	ldr r2, [r1, #0x00]
	add r2, r10
	lsls r0, r0, #0x08
	movs r1, #0x0C
	bl _call_via_r2
	mov r2, r8
	ands r0, r2
	lsls r3, r0, #0x01
	ldr r1, _081053C8 @ =0x08198584
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _08105356
	adds r0, #0x3F
_08105356:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x014]
	ldr r2, [r1, #0x00]
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x38]
	adds r5, r0, r1
	ldr r1, [r4, #0x3C]
	adds r0, r3, r7
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _08105372
	adds r0, #0x3F
_08105372:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r2, [r4, #0x40]
	adds r2, r2, r0
	adds r0, r5, #0x0
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	adds r6, #0x02
	cmp r6, #0x0B
	ble _081052DA
	ldr r0, _081053C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
	ldr r0, _081053DC @ =0x081053E1
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x04]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3E
	bl play_sfx_80195B4
_081053A8:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081053B8: .4byte 0x084FB588
_081053BC: .4byte 0x089F808C
_081053C0: .4byte 0x03000FD8
_081053C4: .4byte 0x00007003
_081053C8: .4byte 0x08198584
_081053CC: .4byte 0x08198504
_081053D0: .4byte 0x0819832C
_081053D4: .4byte 0x08198220
_081053D8: .4byte 0x03001038
_081053DC: .4byte sub_81053E0
	thumb_func_start sub_81053E0
sub_81053E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x000]
	ldr r0, _081054BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	mov r1, r8
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	adds r0, #0x06
	str r0, [r1, #0x00]
	mov r5, r8
	adds r5, #0x0C
	movs r6, #0x00
	ldr r2, _081054C0 @ =0x0819832C
	str r1, [sp, #0x004]
	adds r7, r1, #0x0
	ldr r0, _081054C4 @ =0x08198220
	subs r2, r2, r0
	mov r10, r2
_08105418:
	ldr r0, _081054C8 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	lsls r0, r6, #0x08
	movs r1, #0x0C
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r2, _081054BC @ =0x03000FD8
	mov r9, r2
	ldr r0, [r2, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0xF0
	lsls r2, r2, #0x07
	adds r3, r0, r2
	ldr r1, _081054CC @ =0x08198584
	movs r0, #0xFF
	ands r0, r4
	lsls r2, r0, #0x01
	adds r1, r2, r1
	movs r0, #0x00
	ldsh r1, [r1, r0]
	cmp r1, #0x00
	bge _08105458
	adds r1, #0x3F
_08105458:
	asrs r1, r1, #0x06
	ldr r0, [r7, #0x00]
	muls r0, r1
	adds r0, r3, r0
	str r0, [r5, #0x04]
	ldr r0, _081054D0 @ =0x08198504
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08105470
	adds r0, #0x3F
_08105470:
	asrs r1, r0, #0x06
	ldr r0, [r7, #0x00]
	muls r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x07
	adds r0, r0, r2
	str r0, [r5, #0x0C]
	ldr r5, [r5, #0x00]
	adds r6, #0x01
	cmp r6, #0x0B
	ble _08105418
	ldr r1, [sp, #0x004]
	ldr r0, [r1, #0x00]
	cmp r0, #0x9F
	ble _081054AA
	mov r0, r8
	bl sub_807C298
	mov r2, r9
	ldr r0, [r2, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	movs r0, #0x28
	ldr r2, [sp, #0x000]
	strh r0, [r2, #0x10]
	str r1, [r2, #0x04]
_081054AA:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081054BC: .4byte 0x03000FD8
_081054C0: .4byte 0x0819832C
_081054C4: .4byte 0x08198220
_081054C8: .4byte 0x03001038
_081054CC: .4byte 0x08198584
_081054D0: .4byte 0x08198504
	thumb_func_start sub_81054D4
sub_81054D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	ldr r1, _08105668 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r5, _0810566C @ =0x03000FF4
	ldr r1, [r5, #0x00]
	subs r4, r1, r0
	adds r3, r4, #0x0
	subs r3, #0x3C
	movs r7, #0x7E
	ldrb r1, [r7, r2]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r7, r2]
	adds r0, r4, #0x0
	subs r0, #0x0C
	ldrb r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x0E]
	movs r1, #0x01
	cmp r0, #0x00
	beq _08105528
	adds r1, r0, #0x0
_08105528:
	adds r0, r2, #0x0
	adds r0, #0xF6
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x12]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x20]
	movs r5, #0x83
	lsls r5, r5, #0x01
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x1C]
	movs r7, #0x81
	lsls r7, r7, #0x01
	mov r10, r7
	mov r5, r10
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x24]
	adds r7, #0x02
	mov r9, r7
	mov r5, r9
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x28]
	adds r7, #0x04
	mov r8, r7
	mov r5, r8
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	ldrh r0, [r3, #0x18]
	adds r1, r2, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	subs r0, r4, #0x7
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r7, #0x23
	adds r1, r2, r7
	strb r0, [r1, #0x00]
	subs r0, r4, #0x5
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	movs r6, #0x96
	lsls r6, r6, #0x01
	adds r1, r2, r6
	strb r0, [r1, #0x00]
	subs r0, r4, #0x4
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r5, _08105670 @ =0x0000012D
	adds r1, r2, r5
	strb r0, [r1, #0x00]
	ldr r1, _08105668 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08105648
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r7, _0810566C @ =0x03000FF4
	ldr r1, [r7, #0x00]
	subs r4, r1, r0
	adds r3, r4, #0x0
	subs r3, #0x3C
	movs r0, #0x7E
	adds r0, r0, r2
	mov r12, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	mov r7, r12
	strb r0, [r7, #0x00]
	adds r0, r4, #0x0
	subs r0, #0x0C
	ldrb r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x0E]
	movs r1, #0x01
	cmp r0, #0x00
	beq _081055EA
	adds r1, r0, #0x0
_081055EA:
	adds r0, r2, #0x0
	adds r0, #0xF6
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x12]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x20]
	movs r7, #0x83
	lsls r7, r7, #0x01
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x1C]
	mov r7, r10
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x24]
	mov r7, r9
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x28]
	mov r7, r8
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	ldrh r0, [r3, #0x18]
	adds r1, r2, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	subs r0, r4, #0x7
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r3, _08105674 @ =0x0000012B
	adds r1, r2, r3
	strb r0, [r1, #0x00]
	subs r0, r4, #0x5
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r2, r6
	strb r0, [r1, #0x00]
	subs r0, r4, #0x4
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r2, r5
	strb r0, [r1, #0x00]
_08105648:
	movs r0, #0x10
	bl sub_80F7538
	movs r0, #0x01
	ldr r5, [sp, #0x000]
	strh r0, [r5, #0x10]
	ldr r0, _08105678 @ =0x0810567D
	str r0, [r5, #0x04]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08105668: .4byte 0x03000FD8
_0810566C: .4byte 0x03000FF4
_08105670: .4byte 0x0000012D
_08105674: .4byte 0x0000012B
_08105678: .4byte sub_810567C
	thumb_func_start sub_810567C
sub_810567C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _08105690
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
	b _0810577C
_08105690:
	ldr r4, _081056D4 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	ldr r1, _081056D8 @ =0x000002BF
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0810577C
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810577C
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x04]
	cmp r0, #0x00
	bne _081056DC
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _081056DC
	bl sub_8106724
	b _0810577C
	.byte 0x00, 0x00
_081056D4: .4byte 0x03000FD8
_081056D8: .4byte 0x000002BF
_081056DC:
	ldr r5, _08105784 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r1, _08105788 @ =0x000002BF
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0810577C
	movs r0, #0x01
	bl sub_8019628
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r3, r0
	ldr r7, _0810578C @ =0x03000FF4
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r7, #0x00]
	adds r4, r1, r0
	adds r0, r3, #0x6
	lsls r0, r0, #0x02
	adds r2, #0x58
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	adds r0, #0xF6
	ldrh r1, [r0, #0x00]
	strh r1, [r4, #0x0E]
	ldr r0, [r2, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x14]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bne _08105732
	movs r0, #0x01
	strh r0, [r4, #0x0E]
_08105732:
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08105774
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r3, r0
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r7, #0x00]
	adds r4, r1, r0
	adds r0, r3, #0x6
	lsls r0, r0, #0x02
	adds r1, r2, #0x0
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0xF6
	ldrh r2, [r0, #0x00]
	strh r2, [r4, #0x0E]
	ldr r0, [r1, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x14]
	lsls r2, r2, #0x10
	cmp r2, #0x00
	bne _08105774
	movs r0, #0x01
	strh r0, [r4, #0x0E]
_08105774:
	bl sub_801A6B0
	movs r0, #0x00
	str r0, [r6, #0x04]
_0810577C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08105784: .4byte 0x03000FD8
_08105788: .4byte 0x000002BF
_0810578C: .4byte 0x03000FF4
	thumb_func_start sub_8105790
sub_8105790:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r0, _081057DC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldr r1, [r1, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0x00
	beq _081057B0
	movs r5, #0xE9
	lsls r5, r5, #0x02
	adds r1, r2, r5
	movs r0, #0x00
	strb r0, [r1, #0x00]
_081057B0:
	ldr r0, [r6, #0x00]
	movs r1, #0xE6
	lsls r1, r1, #0x02
	adds r5, r0, r1
	ldr r1, _081057E0 @ =0x083BA948
	lsls r2, r4, #0x01
	adds r0, r2, r4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	adds r7, r1, #0x0
	cmp r3, #0x00
	beq _081057E8
	ldr r0, _081057E4 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	b _081057EA
_081057DC: .4byte 0x03000FD8
_081057E0: .4byte 0x083BA948
_081057E4: .4byte 0x0300034C
_081057E8:
	movs r0, #0x00
_081057EA:
	str r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	movs r5, #0xE7
	lsls r5, r5, #0x02
	adds r3, r0, r5
	adds r0, r2, r4
	lsls r0, r0, #0x02
	adds r1, r7, #0x4
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08105818
	ldr r0, _08105814 @ =0x0300034C
	movs r5, #0x8C
	lsls r5, r5, #0x04
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _0810581A
_08105814: .4byte 0x0300034C
_08105818:
	movs r0, #0x00
_0810581A:
	str r0, [r3, #0x00]
	ldr r0, [r6, #0x00]
	movs r1, #0xE8
	lsls r1, r1, #0x02
	adds r3, r0, r1
	adds r0, r2, r4
	lsls r0, r0, #0x02
	adds r1, r7, #0x0
	adds r1, #0x08
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0810584C
	ldr r0, _08105848 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _0810584E
	.byte 0x00, 0x00
_08105848: .4byte 0x0300034C
_0810584C:
	movs r0, #0x00
_0810584E:
	str r0, [r3, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8105858
sub_8105858:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _08105888 @ =0x03000FD8
	movs r0, #0xE9
	lsls r0, r0, #0x02
	mov r12, r0
	mov r8, r5
	movs r7, #0xE6
	lsls r7, r7, #0x02
	movs r6, #0x00
_0810586E:
	ldr r0, [r5, #0x00]
	mov r1, r12
	adds r3, r0, r1
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x02
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r2, #0x02
	bne _0810588C
	strb r6, [r3, #0x00]
	b _08105890
	.byte 0x00, 0x00
_08105888: .4byte 0x03000FD8
_0810588C:
	adds r0, r2, #0x1
	strb r0, [r3, #0x00]
_08105890:
	cmp r4, #0x00
	beq _0810586E
	mov r2, r8
	ldr r1, [r2, #0x00]
	movs r3, #0xE9
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0810590C
	ldr r2, _081058EC @ =0x0000033E
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bhi _081058CA
	ldr r1, _081058F0 @ =0x083BA8FC
	ldr r0, _081058F4 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	lsls r2, r0, #0x02
	adds r1, r2, r1
	ldr r0, [r1, #0x00]
	cmp r4, r0
	bne _081058CA
	ldr r0, _081058F8 @ =0x083BA910
	adds r0, r2, r0
	ldr r4, [r0, #0x00]
_081058CA:
	mov r0, r8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08105900
	ldr r1, _081058FC @ =0x000003A5
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x20]
	b _0810590C
_081058EC: .4byte 0x0000033E
_081058F0: .4byte 0x083BA8FC
_081058F4: .4byte 0x0300034C
_081058F8: .4byte 0x083BA910
_081058FC: .4byte 0x000003A5
_08105900:
	ldr r3, _08105918 @ =0x000003A5
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x00]
_0810590C:
	adds r0, r4, #0x0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08105918: .4byte 0x000003A5
	thumb_func_start sub_810591C
sub_810591C:
	push {r4, r5, r6, r7, lr}
	ldr r0, _08105944 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	bne _08105940
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	bne _08105940
	ldrb r2, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _08105948
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x0B]
_08105940:
	movs r0, #0x00
	b _081059CE
_08105944: .4byte 0x03000FD8
_08105948:
	movs r7, #0x00
	adds r3, r1, #0x0
	adds r3, #0x58
	ldr r5, _081059D4 @ =0x00000111
	movs r6, #0x01
_08105952:
	ldr r2, [r3, #0x00]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x38
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	ldr r2, [r3, #0x04]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	ldr r2, [r3, #0x08]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	ldr r2, [r3, #0x0C]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r3, #0x10
	adds r7, #0x04
	cmp r7, #0x07
	ble _08105952
	movs r0, #0x01
_081059CE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_081059D4: .4byte 0x00000111
	thumb_func_start sub_81059D8
sub_81059D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r9, r0
	str r1, [sp, #0x000]
	movs r7, #0x00
	ldr r0, _08105A44 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _08105A48 @ =0x000002BE
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	cmp r7, r1
	bge _08105A76
	ldr r0, _08105A4C @ =0x03000FDC
	ldr r1, [r0, #0x00]
	ldr r2, _08105A50 @ =0x00008E4E
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	mov r10, r0
	cmp r1, r9
	bgt _08105A76
	ldr r4, _08105A54 @ =0x00008E4A
	movs r3, #0x00
_08105A10:
	mov r0, r10
	ldr r1, [r0, #0x00]
	ldr r0, _08105A50 @ =0x00008E4E
	adds r2, r1, r0
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	cmp r0, r9
	bne _08105A58
	adds r1, r1, r4
	adds r1, r1, r7
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x000]
	adds r0, r0, r2
	strb r0, [r1, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	adds r0, r0, r4
	adds r1, r0, r7
	ldrb r0, [r1, #0x00]
	cmp r0, #0x09
	bhi _08105A3C
	b _08105BF0
_08105A3C:
	movs r0, #0x09
	strb r0, [r1, #0x00]
	b _08105BF0
	.byte 0x00, 0x00
_08105A44: .4byte 0x03000FD8
_08105A48: .4byte 0x000002BE
_08105A4C: .4byte 0x03000FDC
_08105A50: .4byte 0x00008E4E
_08105A54: .4byte 0x00008E4A
_08105A58:
	adds r3, #0x02
	adds r7, #0x01
	ldr r1, _08105B18 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r1, _08105B1C @ =0x000002BE
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	cmp r7, r0
	bge _08105A76
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	cmp r0, r9
	ble _08105A10
_08105A76:
	ldr r2, _08105B18 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, _08105B1C @ =0x000002BE
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x1A
	lsrs r0, r1, #0x1D
	cmp r0, #0x03
	bls _08105A8A
	b _08105BF0
_08105A8A:
	adds r4, r0, #0x0
	ldr r2, _08105B20 @ =0x03000FDC
	mov r10, r2
	cmp r4, r7
	bgt _08105A96
	b _08105BB0
_08105A96:
	mov r6, r10
	ldr r0, _08105B24 @ =0x00008E4A
	mov r8, r0
	lsls r3, r4, #0x01
	subs r5, r3, #0x2
	ldr r1, _08105B28 @ =0x00008E4E
	mov r12, r1
	subs r1, r7, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08105B2C
	cmp r1, #0x03
	bge _08105AF8
	cmp r1, #0x02
	bge _08105AD4
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	add r0, r12
	adds r1, r0, r3
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, r3, #0x4
	adds r4, r2, #0x0
_08105AD4:
	mov r2, r10
	ldr r0, [r2, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, #0x02
	adds r4, r2, #0x0
_08105AF8:
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, #0x02
	b _08105BAA
_08105B18: .4byte 0x03000FD8
_08105B1C: .4byte 0x000002BE
_08105B20: .4byte 0x03000FDC
_08105B24: .4byte 0x00008E4A
_08105B28: .4byte 0x00008E4E
_08105B2C:
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r3, r5, #0x2
	adds r4, r2, #0x0
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r3, r5, #0x4
	adds r4, r2, #0x0
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r3, r5, #0x6
	adds r4, r2, #0x0
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, #0x08
_08105BAA:
	adds r4, r2, #0x0
	cmp r4, r7
	bgt _08105B2C
_08105BB0:
	mov r2, r10
	ldr r0, [r2, #0x00]
	ldr r1, _08105C00 @ =0x00008E4A
	adds r0, r0, r1
	adds r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #0x00]
	strb r2, [r0, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	lsls r1, r4, #0x01
	ldr r2, _08105C04 @ =0x00008E4E
	adds r0, r0, r2
	adds r0, r0, r1
	mov r1, r9
	strh r1, [r0, #0x00]
	ldr r0, _08105C08 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, _08105C0C @ =0x000002BE
	adds r2, r2, r1
	ldrb r3, [r2, #0x00]
	lsls r1, r3, #0x1A
	lsrs r1, r1, #0x1D
	adds r1, #0x01
	movs r0, #0x07
	ands r1, r0
	lsls r1, r1, #0x03
	movs r0, #0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_08105BF0:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08105C00: .4byte 0x00008E4A
_08105C04: .4byte 0x00008E4E
_08105C08: .4byte 0x03000FD8
_08105C0C: .4byte 0x000002BE
	thumb_func_start sub_8105C10
sub_8105C10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08105C68 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r1, r2
	ldr r2, [r0, #0x00]
	ldr r0, _08105C6C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, _08105C70 @ =0x000002BE
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x1D
	movs r4, #0x00
	mov r9, r1
	cmp r4, r5
	bge _08105CF6
	movs r6, #0x7F
	ldr r7, _08105C74 @ =0x03000FDC
	mov r8, r7
	ldr r0, _08105C78 @ =0x083BE67C
	mov r12, r0
	ldr r1, _08105C7C @ =0x083BBDD0
	mov r10, r1
_08105C48:
	mov r7, r8
	ldr r0, [r7, #0x00]
	lsls r1, r4, #0x01
	ldr r7, _08105C80 @ =0x00008E4E
	adds r0, r0, r7
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	lsrs r0, r1, #0x07
	cmp r0, #0x02
	beq _08105C92
	cmp r0, #0x02
	bgt _08105C84
	cmp r0, #0x01
	beq _08105C8E
	b _08105CBA
	.byte 0x00, 0x00
_08105C68: .4byte 0x0300034C
_08105C6C: .4byte 0x03000FD8
_08105C70: .4byte 0x000002BE
_08105C74: .4byte 0x03000FDC
_08105C78: .4byte 0x083BE67C
_08105C7C: .4byte 0x083BBDD0
_08105C80: .4byte 0x00008E4E
_08105C84:
	cmp r0, #0x03
	beq _08105CA6
	cmp r0, #0x04
	beq _08105CB0
	b _08105CBA
_08105C8E:
	movs r3, #0x0C
	b _08105CBA
_08105C92:
	adds r0, r6, #0x0
	ands r0, r1
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x02
	add r1, r12
	ldrb r0, [r1, #0x11]
	adds r3, r0, #0x0
	adds r3, #0x0C
	b _08105CBA
_08105CA6:
	adds r0, r6, #0x0
	ands r0, r1
	adds r3, r0, #0x0
	adds r3, #0x08
	b _08105CBA
_08105CB0:
	adds r0, r6, #0x0
	ands r0, r1
	lsls r0, r0, #0x04
	add r0, r10
	ldrb r3, [r0, #0x02]
_08105CBA:
	movs r0, #0x0B
	muls r0, r4
	adds r0, #0x32
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	movs r0, #0x77
	strh r0, [r2, #0x00]
	adds r2, #0x02
	adds r1, r3, #0x0
	adds r1, #0xA8
	movs r0, #0x00
	cmp r3, #0x05
	beq _08105CE4
	cmp r3, #0x07
	beq _08105CE4
	cmp r3, #0x08
	beq _08105CE4
	cmp r3, #0x09
	bne _08105CE6
_08105CE4:
	movs r0, #0x01
_08105CE6:
	adds r0, #0x0B
	lsls r0, r0, #0x0C
	orrs r1, r0
	strh r1, [r2, #0x00]
	adds r2, #0x04
	adds r4, #0x01
	cmp r4, r5
	blt _08105C48
_08105CF6:
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r9
	str r2, [r0, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8105D0C
sub_8105D0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	ldrh r1, [r7, #0x10]
	movs r2, #0x10
	ldsh r0, [r7, r2]
	cmp r0, #0x00
	beq _08105D26
	subs r0, r1, #0x1
	strh r0, [r7, #0x10]
	b _08105DDA
_08105D26:
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08105DDA
	ldr r0, _08105DE8 @ =0x03000FD8
	mov r9, r0
	ldr r1, [r0, #0x00]
	ldr r2, _08105DEC @ =0x0000033F
	mov r8, r2
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r3, _08105DF0 @ =0x00002038
	cmp r2, #0x00
	beq _08105D54
	adds r3, #0x2F
_08105D54:
	adds r0, r5, #0x0
	movs r1, #0x00
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08105DF4 @ =0x00008004
	movs r1, #0x03
	movs r2, #0x02
	movs r3, #0x00
	bl sub_8084338
	adds r4, r0, #0x0
	str r4, [r7, #0x08]
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08105D7C
	adds r0, #0xFF
_08105D7C:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08105D8C
	adds r0, #0xFF
_08105D8C:
	asrs r1, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _08105DF8 @ =0x083B950C
	ldrb r0, [r0, #0x03]
	strh r0, [r7, #0x10]
	ldr r0, _08105DFC @ =0x08105E01
	str r0, [r7, #0x04]
	mov r1, r9
	ldr r0, [r1, #0x00]
	add r0, r8
	ldrb r0, [r0, #0x00]
	movs r2, #0xEF
	cmp r0, #0x00
	beq _08105DD0
	movs r2, #0xFD
_08105DD0:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
_08105DDA:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08105DE8: .4byte 0x03000FD8
_08105DEC: .4byte 0x0000033F
_08105DF0: .4byte 0x00002038
_08105DF4: .4byte 0x00008004
_08105DF8: .4byte 0x083B950C
_08105DFC: .4byte sub_8105E00
	thumb_func_start sub_8105E00
sub_8105E00:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08105E14
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08105E58
_08105E14:
	ldr r0, [r4, #0x08]
	bl sub_807FB64
	ldr r0, _08105E60 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	movs r1, #0x04
	cmp r2, #0x00
	beq _08105E3A
	movs r1, #0x01
_08105E3A:
	ldr r3, _08105E64 @ =0x00002001
	cmp r2, #0x00
	beq _08105E42
	adds r3, #0x4D
_08105E42:
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x10
	strh r0, [r4, #0x10]
	ldr r1, _08105E68 @ =0x08105E6D
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_08105E58:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08105E60: .4byte 0x03000FD8
_08105E64: .4byte 0x00002001
_08105E68: .4byte sub_8105E6C
	thumb_func_start sub_8105E6C
sub_8105E6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldrh r0, [r7, #0x10]
	movs r1, #0x10
	ldsh r2, [r7, r1]
	cmp r2, #0x00
	beq _08105E86
	subs r0, #0x01
	strh r0, [r7, #0x10]
	b _08105F10
_08105E86:
	ldr r0, _08105F1C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r5, [r7, #0x08]
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	str r2, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	mov r2, r8
	movs r3, #0x00
	bl sub_801E150
	adds r0, r5, #0x0
	bl sub_807BC90
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08105EC4
	adds r0, #0xFF
_08105EC4:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x00]
	ldr r1, [r4, #0x3C]
	ldr r0, [r4, #0x40]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08105ED4
	adds r1, #0xFF
_08105ED4:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r5, #0x02]
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r5, #0x12]
	ldr r0, _08105F20 @ =0x083B950C
	ldrb r0, [r0, #0x01]
	strh r0, [r7, #0x10]
	ldr r0, _08105F24 @ =0x08106875
	str r0, [r7, #0x04]
	movs r0, #0x29
	mov r1, r8
	bl play_sfx_80195B4
_08105F10:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08105F1C: .4byte 0x03000FD8
_08105F20: .4byte 0x083B950C
_08105F24: .4byte sub_8106874
	thumb_func_start sub_8105F28
sub_8105F28:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldrh r0, [r6, #0x10]
	movs r2, #0x10
	ldsh r1, [r6, r2]
	mov r8, r1
	cmp r1, #0x00
	beq _08105F48
	subs r0, #0x01
	strh r0, [r6, #0x10]
	b _08105FFC
_08105F48:
	ldr r0, _0810600C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _08106010 @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r7, [r1, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x08]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	mov r10, r1
	mov r1, r10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, _08106014 @ =0x00002088
	adds r0, r4, #0x0
	bl sub_807FB78
	movs r2, #0x01
	negs r2, r2
	mov r9, r2
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08105FAC
	adds r0, #0xFF
_08105FAC:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08105FBC
	adds r0, #0xFF
_08105FBC:
	asrs r1, r0, #0x08
	adds r0, r7, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r7, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	mov r1, r10
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _08106018 @ =0x00000155
	mov r1, r9
	bl play_sfx_80195B4
	movs r0, #0x40
	strh r0, [r6, #0x10]
	ldr r1, _0810601C @ =0x08106841
	str r1, [r6, #0x04]
	adds r0, r6, #0x0
	bl _call_via_r1
_08105FFC:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810600C: .4byte 0x03000FD8
_08106010: .4byte 0x0000033F
_08106014: .4byte 0x00002088
_08106018: .4byte 0x00000155
_0810601C: .4byte sub_8106840
	thumb_func_start sub_8106020
sub_8106020:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldrh r0, [r7, #0x10]
	movs r2, #0x10
	ldsh r1, [r7, r2]
	mov r8, r1
	cmp r1, #0x00
	beq _0810603E
	subs r0, #0x01
	strh r0, [r7, #0x10]
	b _081060D2
_0810603E:
	ldr r0, _081060E0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r7, #0x08]
	ldr r1, _081060E4 @ =0x00008004
	adds r0, r4, #0x0
	bl sub_807FB78
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	mov r2, r9
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08106086
	adds r0, #0xFF
_08106086:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08106096
	adds r1, #0xFF
_08106096:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _081060E8 @ =0x083B950C
	ldrb r0, [r0, #0x00]
	strh r0, [r7, #0x10]
	ldr r0, _081060EC @ =0x081060F1
	str r0, [r7, #0x04]
	movs r0, #0x28
	mov r1, r9
	bl play_sfx_80195B4
_081060D2:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081060E0: .4byte 0x03000FD8
_081060E4: .4byte 0x00008004
_081060E8: .4byte 0x083B950C
_081060EC: .4byte sub_81060F0
	thumb_func_start sub_81060F0
sub_81060F0:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08106104
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08106164
_08106104:
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r7, _0810616C @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x02
	adds r0, r1, r6
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r3, _08106170 @ =0x00002038
	cmp r2, #0x00
	beq _0810612C
	adds r3, #0x2F
_0810612C:
	adds r0, r5, #0x0
	movs r1, #0x03
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08106174 @ =0x08106179
	str r0, [r4, #0x04]
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	movs r2, #0xE9
	cmp r0, #0x00
	beq _0810615A
	adds r2, #0x19
_0810615A:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
_08106164:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810616C: .4byte 0x03000FD8
_08106170: .4byte 0x00002038
_08106174: .4byte sub_8106178
	thumb_func_start sub_8106178
sub_8106178:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, _08106204 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081061FC
	adds r0, r2, #0x0
	movs r1, #0x04
	cmp r0, #0x00
	beq _081061AC
	movs r1, #0x01
_081061AC:
	ldr r2, _08106208 @ =0x00002001
	cmp r0, #0x00
	beq _081061B4
	adds r2, #0x4D
_081061B4:
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x00]
	ldr r2, _0810620C @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08106210 @ =0x08106791
	str r0, [r6, #0x04]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x53
	bl play_sfx_80195B4
_081061FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106204: .4byte 0x03000FD8
_08106208: .4byte 0x00002001
_0810620C: .4byte 0x0000033F
_08106210: .4byte sub_8106790
