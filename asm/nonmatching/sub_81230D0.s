	.syntax unified
	.text

	thumb_func_start sub_81230D0
sub_81230D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r4, sp
	ldr r3, _08123144 @ =0x083BE67C
	ldr r5, _08123148 @ =0x03000FF4
	ldr r2, [r5, #0x00]
	lsls r0, r0, #0x04
	mov r1, r8
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r6, r2, #0x0
	adds r6, #0x32
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x06]
	strb r0, [r4, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x0A]
	strb r0, [r4, #0x01]
	adds r4, r2, #0x0
	adds r4, #0x31
	ldrb r0, [r4, #0x00]
	adds r6, r3, #0x0
	mov r9, r5
	cmp r0, #0xFF
	beq _08123150
	mov r2, sp
	ldr r3, _0812314C @ =0x083BD844
	adds r1, r0, #0x0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x06]
	strb r0, [r2, #0x02]
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x0A]
	strb r0, [r2, #0x03]
	b _0812315C
_08123144: .4byte 0x083BE67C
_08123148: .4byte 0x03000FF4
_0812314C: .4byte 0x083BD844
_08123150:
	mov r1, sp
	movs r0, #0xFF
	strb r0, [r1, #0x02]
	movs r0, #0x01
	negs r0, r0
	strb r0, [r1, #0x03]
_0812315C:
	add r3, sp, #0x004
	mov r4, r9
	ldr r2, [r4, #0x00]
	mov r0, r8
	lsls r4, r0, #0x04
	subs r0, r4, r0
	lsls r0, r0, #0x02
	adds r2, r2, r0
	movs r1, #0x32
	adds r1, r1, r2
	mov r12, r1
	ldrb r1, [r1, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldrh r0, [r0, #0x08]
	strh r0, [r3, #0x00]
	mov r0, r12
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldrh r0, [r0, #0x0C]
	strh r0, [r3, #0x02]
	adds r5, r2, #0x0
	adds r5, #0x31
	ldrb r0, [r5, #0x00]
	mov r10, r4
	cmp r0, #0xFF
	beq _081231C0
	ldr r2, _081231BC @ =0x083BD844
	adds r1, r0, #0x0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrh r0, [r0, #0x08]
	strh r0, [r3, #0x04]
	ldrb r1, [r5, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrh r0, [r0, #0x0C]
	b _081231C2
	.byte 0x00, 0x00
_081231BC: .4byte 0x083BD844
_081231C0:
	strh r0, [r3, #0x04]
_081231C2:
	strh r0, [r3, #0x06]
	mov r1, r9
	ldr r0, [r1, #0x00]
	mov r4, r10
	mov r1, r8
	subs r2, r4, r1
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldrh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	ldrh r1, [r0, #0x1A]
	strh r1, [r0, #0x1C]
	ldrh r1, [r0, #0x1E]
	strh r1, [r0, #0x20]
	ldrh r1, [r0, #0x22]
	strh r1, [r0, #0x24]
	ldrh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldrh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	mov r7, r9
	adds r6, r2, #0x0
	ldr r4, _08123210 @ =0x03E70000
	mov r5, sp
	movs r2, #0x03
	mov r12, r2
_081231F6:
	ldrb r0, [r5, #0x00]
	cmp r0, #0x63
	bls _0812327C
	cmp r0, #0xFF
	beq _0812327C
	cmp r0, #0x65
	beq _08123236
	cmp r0, #0x65
	bgt _08123214
	cmp r0, #0x64
	beq _0812321E
	b _0812327C
	.byte 0x00, 0x00
_08123210: .4byte 0x03E70000
_08123214:
	cmp r0, #0x66
	beq _0812324E
	cmp r0, #0x67
	beq _08123266
	b _0812327C
_0812321E:
	ldr r0, [r7, #0x00]
	adds r1, r0, r6
	ldrh r0, [r3, #0x00]
	ldrh r2, [r1, #0x10]
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	lsls r0, r0, #0x10
	lsrs r2, r4, #0x10
	cmp r0, r4
	bls _0812327C
	strh r2, [r1, #0x12]
	b _0812327C
_08123236:
	ldr r0, [r7, #0x00]
	adds r1, r0, r6
	ldrh r0, [r3, #0x00]
	ldrh r2, [r1, #0x16]
	adds r0, r0, r2
	strh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	lsrs r2, r4, #0x10
	cmp r0, r4
	bls _0812327C
	strh r2, [r1, #0x18]
	b _0812327C
_0812324E:
	ldr r0, [r7, #0x00]
	adds r1, r0, r6
	ldrh r0, [r3, #0x00]
	ldrh r2, [r1, #0x1A]
	adds r0, r0, r2
	strh r0, [r1, #0x1C]
	lsls r0, r0, #0x10
	lsrs r2, r4, #0x10
	cmp r0, r4
	bls _0812327C
	strh r2, [r1, #0x1C]
	b _0812327C
_08123266:
	ldr r0, [r7, #0x00]
	adds r1, r0, r6
	ldrh r0, [r3, #0x00]
	ldrh r2, [r1, #0x22]
	adds r0, r0, r2
	strh r0, [r1, #0x24]
	lsls r0, r0, #0x10
	lsrs r2, r4, #0x10
	cmp r0, r4
	bls _0812327C
	strh r2, [r1, #0x24]
_0812327C:
	adds r3, #0x02
	adds r5, #0x01
	movs r0, #0x01
	negs r0, r0
	add r12, r0
	mov r1, r12
	cmp r1, #0x00
	bge _081231F6
	mov r2, r9
	ldr r1, [r2, #0x00]
	mov r3, r10
	mov r4, r8
	subs r0, r3, r4
	lsls r2, r0, #0x02
	adds r1, r1, r2
	ldrh r0, [r1, #0x12]
	ldrh r3, [r1, #0x0E]
	cmp r0, r3
	bcs _081232A4
	strh r0, [r1, #0x0E]
_081232A4:
	mov r4, r9
	ldr r0, [r4, #0x00]
	adds r0, r0, r2
	ldrh r1, [r0, #0x18]
	ldrh r2, [r0, #0x14]
	cmp r1, r2
	bcs _081232B4
	strh r1, [r0, #0x14]
_081232B4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x04, 0x48, 0x41, 0x8D, 0x02, 0x20, 0x08, 0x40, 0x00, 0x28, 0x01, 0xD0
	.byte 0x00, 0x20, 0x10, 0x70, 0x01, 0xBC, 0x00, 0x47, 0x4C, 0x03, 0x00, 0x03
