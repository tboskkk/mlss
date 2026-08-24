	.syntax unified
	.text

	thumb_func_start sub_812EF44
sub_812EF44:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	ldr r0, [sp, #0x034]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x000]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r10, r2
	lsls r3, r3, #0x18
	lsrs r1, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x004]
	cmp r1, #0x03
	bne _0812EFA0
	ldr r2, _0812EF90 @ =0x03001038
	ldr r0, _0812EF94 @ =0x0819832C
	ldr r1, _0812EF98 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, _0812EF9C @ =0x03000FF4
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x28]
	adds r1, #0x64
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0812EFB0
_0812EF90: .4byte 0x03001038
_0812EF94: .4byte 0x0819832C
_0812EF98: .4byte 0x08198220
_0812EF9C: .4byte 0x03000FF4
_0812EFA0:
	ldr r0, _0812EFF0 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	lsrs r1, r3, #0x19
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r3, [r2, #0x28]
_0812EFB0:
	ldr r0, _0812EFF4 @ =0x083C06A6
	add r0, r10
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bhi _0812F05C
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	beq _0812F018
	ldr r1, [sp, #0x000]
	cmp r1, #0x00
	beq _0812F008
	ldr r6, _0812EFF8 @ =0x03001038
	ldr r5, _0812EFFC @ =0x0819832C
	ldr r0, _0812F000 @ =0x08198220
	subs r5, r5, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	adds r0, r1, #0x0
	movs r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	ldr r0, _0812F004 @ =0x083C06AC
	add r0, r10
	ldrb r0, [r0, #0x00]
	muls r0, r4
	lsls r0, r0, #0x01
	movs r1, #0x64
	b _0812F170
	.byte 0x00, 0x00
_0812EFF0: .4byte 0x03000FF4
_0812EFF4: .4byte byte_83C06A6 @ =0x083C06A6
_0812EFF8: .4byte 0x03001038
_0812EFFC: .4byte 0x0819832C
_0812F000: .4byte 0x08198220
_0812F004: .4byte byte_83C06AC @ =0x083C06AC
_0812F008:
	ldr r0, _0812F014 @ =0x083C06AC
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	b _0812F1C6
	.byte 0x00, 0x00
_0812F014: .4byte byte_83C06AC @ =0x083C06AC
_0812F018:
	ldr r2, [sp, #0x000]
	cmp r2, #0x00
	beq _0812F050
	ldr r2, _0812F040 @ =0x03001038
	ldr r0, _0812F044 @ =0x0819832C
	ldr r1, _0812F048 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, _0812F04C @ =0x083C06AC
	add r0, r10
	ldrb r0, [r0, #0x00]
	ldr r4, [sp, #0x000]
	muls r0, r4
	movs r1, #0x64
	bl _call_via_r2
	subs r0, r4, r0
	b _0812F1C2
	.byte 0x00, 0x00
_0812F040: .4byte 0x03001038
_0812F044: .4byte 0x0819832C
_0812F048: .4byte 0x08198220
_0812F04C: .4byte byte_83C06AC @ =0x083C06AC
_0812F050:
	ldr r0, _0812F058 @ =0x083C06AC
	add r0, r10
	ldrb r0, [r0, #0x00]
	b _0812F1C6
_0812F058: .4byte byte_83C06AC @ =0x083C06AC
_0812F05C:
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0812F094 @ =0x083C06AC
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x08
	mov r8, r0
	movs r0, #0x00
	str r0, [sp, #0x008]
	mov r1, r10
	lsls r0, r1, #0x02
	ldr r1, _0812F098 @ =0x083C072C
	add r0, r10
	lsls r7, r0, #0x02
	subs r1, #0x04
	adds r1, r1, r7
	mov r9, r1
	ldr r0, _0812F09C @ =0x0819832C
	ldr r2, _0812F0A0 @ =0x08198220
	subs r0, r0, r2
	str r0, [sp, #0x00C]
_0812F088:
	ldr r4, [sp, #0x008]
	cmp r4, #0x00
	beq _0812F0A4
	mov r0, r9
	ldr r1, [r0, #0x00]
	b _0812F0AC
_0812F094: .4byte byte_83C06AC @ =0x083C06AC
_0812F098: .4byte dword_83C072C @ =0x083C072C
_0812F09C: .4byte 0x0819832C
_0812F0A0: .4byte 0x08198220
_0812F0A4:
	ldr r0, _0812F0FC @ =0x083C06AC
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x08
_0812F0AC:
	ldr r0, _0812F100 @ =0x083C072C
	ldr r4, _0812F104 @ =0x03001038
	ldr r2, [r4, #0x00]
	ldr r4, [sp, #0x00C]
	adds r2, r2, r4
	adds r4, r7, r0
	ldr r0, [r4, #0x00]
	subs r0, r0, r1
	ldr r1, _0812F108 @ =0x083C06B4
	adds r6, r7, r1
	ldr r1, [r6, #0x00]
	str r3, [sp, #0x010]
	bl _call_via_r2
	adds r5, r0, #0x0
	ldr r0, _0812F10C @ =0x08198350
	ldr r1, _0812F110 @ =0x08198220
	subs r0, r0, r1
	ldr r1, _0812F104 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r0
	ldr r0, [r4, #0x00]
	ldr r1, [r6, #0x00]
	bl _call_via_r2
	ldr r3, [sp, #0x010]
	cmp r0, #0x00
	beq _0812F0E6
	adds r5, #0x01
_0812F0E6:
	cmp r5, r3
	bcc _0812F114
	ldr r0, [r6, #0x00]
	muls r0, r3
	add r8, r0
	movs r0, #0xC8
	lsls r0, r0, #0x06
	cmp r8, r0
	bls _0812F138
_0812F0F8:
	mov r8, r0
	b _0812F138
_0812F0FC: .4byte byte_83C06AC @ =0x083C06AC
_0812F100: .4byte dword_83C072C @ =0x083C072C
_0812F104: .4byte 0x03001038
_0812F108: .4byte dword_83C06B4 @ =0x083C06B4
_0812F10C: .4byte 0x08198350
_0812F110: .4byte 0x08198220
_0812F114:
	ldr r0, [r6, #0x00]
	muls r0, r5
	add r8, r0
	subs r0, r3, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0xC8
	lsls r0, r0, #0x06
	cmp r8, r0
	bhi _0812F0F8
	adds r7, #0x04
	movs r2, #0x04
	add r9, r2
	ldr r4, [sp, #0x008]
	adds r4, #0x01
	str r4, [sp, #0x008]
	cmp r4, #0x04
	ble _0812F088
_0812F138:
	ldr r0, _0812F180 @ =0xFFFFFF00
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldr r2, [sp, #0x004]
	cmp r2, #0x00
	beq _0812F198
	ldr r4, [sp, #0x000]
	cmp r4, #0x00
	beq _0812F190
	ldr r6, _0812F184 @ =0x03001038
	ldr r5, _0812F188 @ =0x0819832C
	ldr r0, _0812F18C @ =0x08198220
	subs r5, r5, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	adds r0, r4, #0x0
	movs r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	mov r0, r8
	muls r0, r4
	lsls r0, r0, #0x01
	movs r1, #0xC8
	lsls r1, r1, #0x07
_0812F170:
	bl _call_via_r2
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0x0
	b _0812F1C6
	.byte 0x00, 0x00
_0812F180: .4byte 0xFFFFFF00
_0812F184: .4byte 0x03001038
_0812F188: .4byte 0x0819832C
_0812F18C: .4byte 0x08198220
_0812F190:
	mov r1, r8
	lsrs r0, r1, #0x08
	lsls r0, r0, #0x11
	b _0812F1C4
_0812F198:
	ldr r2, [sp, #0x000]
	cmp r2, #0x00
	bne _0812F1A4
	mov r4, r8
	lsls r0, r4, #0x08
	b _0812F1C4
_0812F1A4:
	ldr r2, _0812F1D8 @ =0x03001038
	ldr r0, _0812F1DC @ =0x0819832C
	ldr r1, _0812F1E0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, [sp, #0x000]
	mov r0, r8
	muls r0, r1
	movs r1, #0xC8
	lsls r1, r1, #0x07
	bl _call_via_r2
	ldr r2, [sp, #0x000]
	subs r0, r2, r0
_0812F1C2:
	lsls r0, r0, #0x10
_0812F1C4:
	lsrs r0, r0, #0x10
_0812F1C6:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0812F1D8: .4byte 0x03001038
_0812F1DC: .4byte 0x0819832C
_0812F1E0: .4byte 0x08198220
