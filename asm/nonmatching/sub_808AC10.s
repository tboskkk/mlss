	.syntax unified
	.text

	thumb_func_start sub_808AC10
sub_808AC10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	adds r7, r0, #0x0
	ldr r2, [r7, #0x28]
	movs r0, #0x08
	adds r0, r0, r2
	mov r9, r0
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808AC32
	adds r0, #0xFF
_0808AC32:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x034]
	cmp r1, #0x00
	bge _0808AC44
	adds r1, #0xFF
_0808AC44:
	asrs r0, r1, #0x08
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x00
	bge _0808AC56
	adds r1, #0xFF
_0808AC56:
	asrs r0, r1, #0x08
	str r0, [sp, #0x008]
	ldr r1, [r7, #0x30]
	cmp r1, #0x00
	beq _0808AC7C
	ldr r0, [r1, #0x38]
	cmp r0, #0x00
	bge _0808AC68
	adds r0, #0xFF
_0808AC68:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _0808AC74
	adds r0, #0xFF
_0808AC74:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, [r1, #0x40]
	b _0808ACA2
_0808AC7C:
	adds r0, r2, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808AC88
	adds r0, #0xFF
_0808AC88:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	adds r0, r2, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808AC98
	adds r0, #0xFF
_0808AC98:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	adds r0, r2, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
_0808ACA2:
	cmp r0, #0x00
	bge _0808ACA8
	adds r0, #0xFF
_0808ACA8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	add r0, sp, #0x00C
	add r1, sp, #0x010
	add r2, sp, #0x014
	movs r3, #0x00
	bl sub_807FC08
	ldr r4, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	subs r4, r4, r0
	ldr r5, [sp, #0x004]
	ldr r0, [sp, #0x010]
	subs r5, r5, r0
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r2, _0808ADE0 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	ldr r1, _0808ADE4 @ =0x0819832C
	ldr r0, _0808ADE8 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	ldr r3, _0808ADE0 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r0, _0808ADE0 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r8
	lsls r5, r5, #0x08
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r1, r9
	adds r1, #0xAE
	strh r4, [r1, #0x00]
	adds r1, #0x02
	strh r0, [r1, #0x00]
	ldr r3, _0808ADEC @ =0x0300034C
	ldr r2, _0808ADF0 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	strh r4, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r4, [r2, #0x1E]
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x01C]
	ldr r3, [sp, #0x034]
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x020]
	mov r4, r10
	ldr r4, [r4, #0x00]
	str r4, [sp, #0x024]
	ldr r2, [r7, #0x30]
	cmp r2, #0x00
	beq _0808ADF4
	ldr r0, [r2, #0x38]
	ldr r1, [r2, #0x3C]
	ldr r2, [r2, #0x40]
	ldr r3, [sp, #0x01C]
	subs r0, r0, r3
	str r0, [sp, #0x028]
	ldr r4, [sp, #0x020]
	subs r4, r1, r4
	mov r10, r4
	ldr r0, [sp, #0x024]
	subs r0, r2, r0
	mov r9, r0
	adds r4, r7, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	bne _0808AD82
	b _0808AECC
_0808AD82:
	mov r7, r8
	mov r8, r9
	mov r6, r10
	ldr r5, [sp, #0x028]
_0808AD8A:
	ldr r1, _0808ADE0 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r7
	adds r0, r5, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r2, [sp, #0x01C]
	adds r0, r2, r0
	str r0, [r4, #0x04]
	ldr r3, _0808ADE0 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	adds r0, r6, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	ldr r3, _0808ADE0 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	mov r0, r8
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x024]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r4, [r4, #0x00]
	mov r2, r9
	lsls r0, r2, #0x01
	add r8, r0
	mov r3, r10
	lsls r0, r3, #0x01
	adds r6, r6, r0
	ldr r1, [sp, #0x028]
	lsls r0, r1, #0x01
	adds r5, r5, r0
	cmp r4, #0x00
	bne _0808AD8A
	b _0808AECC
_0808ADE0: .4byte 0x03001038
_0808ADE4: .4byte 0x0819832C
_0808ADE8: .4byte 0x08198220
_0808ADEC: .4byte 0x0300034C
_0808ADF0: .4byte 0x00000888
_0808ADF4:
	mov r0, r9
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	adds r0, #0x04
	ldr r3, [r0, #0x00]
	ldr r4, [sp, #0x01C]
	subs r0, r1, r4
	cmp r0, #0x00
	bge _0808AE0C
	adds r0, #0x07
_0808AE0C:
	asrs r0, r0, #0x03
	str r0, [sp, #0x02C]
	ldr r1, [sp, #0x020]
	subs r0, r2, r1
	cmp r0, #0x00
	bge _0808AE1A
	adds r0, #0x07
_0808AE1A:
	asrs r0, r0, #0x03
	str r0, [sp, #0x030]
	ldr r2, [sp, #0x024]
	subs r0, r3, r2
	cmp r0, #0x00
	bge _0808AE28
	adds r0, #0x07
_0808AE28:
	asrs r6, r0, #0x03
	ldr r3, [sp, #0x02C]
	adds r0, r3, #0x0
	muls r0, r3
	ldr r4, [sp, #0x030]
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r2, _0808AEE0 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	lsls r3, r5, #0x03
	str r3, [sp, #0x018]
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r4, #0x00
	ldsh r0, [r0, r4]
	ldr r2, [sp, #0x02C]
	adds r1, r2, #0x0
	muls r1, r0
	str r1, [sp, #0x02C]
	ldr r4, [sp, #0x030]
	adds r3, r4, #0x0
	muls r3, r0
	str r3, [sp, #0x030]
	muls r6, r0
	movs r0, #0x0D
	muls r5, r0
	adds r4, r7, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _0808AECC
	mov r9, r8
	mov r10, r6
	mov r8, r3
	adds r7, r1, #0x0
_0808AE7A:
	ldr r0, _0808AEE0 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r9
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x01C]
	adds r0, r1, r0
	str r0, [r4, #0x04]
	ldr r3, _0808AEE0 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r9
	mov r0, r8
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	ldr r3, _0808AEE0 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r9
	mov r0, r10
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x024]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r4, [r4, #0x00]
	lsls r0, r6, #0x01
	add r10, r0
	ldr r2, [sp, #0x030]
	lsls r0, r2, #0x01
	add r8, r0
	ldr r3, [sp, #0x02C]
	lsls r0, r3, #0x01
	adds r7, r7, r0
	cmp r4, #0x00
	bne _0808AE7A
_0808AECC:
	ldr r0, [sp, #0x018]
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0808AEE0: .4byte 0x03001038
