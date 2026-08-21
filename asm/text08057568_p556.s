	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81068A8
sub_81068A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r0, _08106914 @ =0x00002038
	mov r8, r0
	bl sub_8082AAC
	ldr r7, _08106918 @ =0x00002067
	adds r0, r7, #0x0
	bl sub_8082AAC
	ldr r6, _0810691C @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r5, #0xD0
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	ldr r1, _08106920 @ =0x00002001
	cmp r0, #0x00
	beq _081068D4
	adds r1, #0x4D
_081068D4:
	adds r0, r1, #0x0
	bl sub_8082AAC
	mov r0, r8
	bl sub_8082A6C
	adds r0, r7, #0x0
	bl sub_8082A6C
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	ldr r1, _08106920 @ =0x00002001
	cmp r0, #0x00
	beq _081068F4
	adds r1, #0x4D
_081068F4:
	adds r0, r1, #0x0
	bl sub_8082A6C
	movs r0, #0x04
	strh r0, [r4, #0x10]
	ldr r1, _08106924 @ =0x08105D0D
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106914: .4byte 0x00002038
_08106918: .4byte 0x00002067
_0810691C: .4byte 0x03000FD8
_08106920: .4byte 0x00002001
_08106924: .4byte sub_8105D0C
	thumb_func_start sub_8106928
sub_8106928:
	push {lr}
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	adds r2, r0, #0x0
	mvns r0, r2
	lsrs r1, r0, #0x1F
	cmp r2, #0x5B
	ble _08106942
	adds r1, #0x01
_08106942:
	cmp r2, #0x61
	ble _08106948
	adds r1, #0x01
_08106948:
	movs r0, #0x80
	lsls r0, r0, #0x02
	bl sub_81059D8
	pop {r0}
	bx r0
	thumb_func_start sub_8106954
sub_8106954:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0810698C
	cmp r2, #0x00
	bne _0810697E
	adds r0, #0x2A
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x1B
	lsrs r4, r4, #0x1B
	adds r4, r4, r1
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x1F
	bl sub_81DD77C
	cmp r4, r0
	ble _0810698C
	ldrh r0, [r5, #0x2A]
	b _08106980
_0810697E:
	ldrh r0, [r5, #0x28]
_08106980:
	lsrs r0, r0, #0x05
	cmp r0, #0x00
	beq _0810698C
	movs r1, #0x01
	bl sub_81059D8
_0810698C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8106994
sub_8106994:
	push {lr}
	ldr r1, _081069AC @ =0x03000FD8
	ldr r1, [r1, #0x00]
	ldr r0, [r0, #0x6C]
	ldrb r0, [r0, #0x0A]
	ldr r2, _081069B0 @ =0x000002F9
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	bl sub_810CA30
	pop {r0}
	bx r0
_081069AC: .4byte 0x03000FD8
_081069B0: .4byte 0x000002F9
