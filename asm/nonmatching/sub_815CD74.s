	.syntax unified
	.text

	thumb_func_start sub_815CD74
sub_815CD74:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	mov r9, r1
	ldr r0, [sp, #0x020]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0x0
	cmp r0, #0x04
	beq _0815CDC2
	cmp r0, #0x04
	bgt _0815CD98
	cmp r0, #0x03
	beq _0815CD9E
	b _0815CDDE
_0815CD98:
	cmp r1, #0x0C
	beq _0815CDCA
	b _0815CDDE
_0815CD9E:
	ldr r1, [r5, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	ldr r2, [r5, #0x34]
	ldrb r1, [r2, #0x12]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r5, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _0815CF70
_0815CDC2:
	adds r0, r5, #0x0
	bl sub_815FAFC
	b _0815CF70
_0815CDCA:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x59
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x24
	movs r0, #0x03
	strb r0, [r1, #0x00]
	b _0815CF70
_0815CDDE:
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	mov r8, r0
	cmp r1, #0x01
	beq _0815CDFE
	cmp r1, #0x01
	bgt _0815CDF0
	b _0815CF70
_0815CDF0:
	cmp r1, #0x02
	bne _0815CDF6
	b _0815CF24
_0815CDF6:
	cmp r1, #0x03
	bne _0815CDFC
	b _0815CF54
_0815CDFC:
	b _0815CF70
_0815CDFE:
	movs r4, #0x00
	strh r4, [r5, #0x38]
	ldr r7, _0815CF0C @ =0x03001020
	ldr r2, [r7, #0x00]
	ldr r6, _0815CF10 @ =0x00001C98
	adds r0, r2, r6
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x04]
	ldr r0, [r5, #0x04]
	cmp r1, r0
	ble _0815CE78
	ldr r3, _0815CF14 @ =0x00001CB8
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	bl sub_815EC8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0815CF18 @ =0x083CC1A0
	mov r12, r1
	ldr r3, [r7, #0x00]
	ldr r2, _0815CF1C @ =0x00001EA2
	adds r1, r3, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x05
	add r1, r12
	ldrb r1, [r1, #0x1A]
	cmp r0, r1
	blt _0815CE78
	adds r1, r3, r6
	ldr r0, [r1, #0x00]
	strh r4, [r0, #0x14]
	ldr r4, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x1C
	ldr r1, [r4, #0x04]
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	ldr r1, [r4, #0x08]
	cmp r1, r0
	blt _0815CE78
	ldrh r0, [r5, #0x38]
	adds r0, #0x01
	strh r0, [r5, #0x38]
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	movs r1, #0x0D
	str r1, [sp, #0x000]
	ldr r4, [r2, #0x14]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl _call_via_r4
_0815CE78:
	ldr r7, _0815CF0C @ =0x03001020
	ldr r2, [r7, #0x00]
	ldr r6, _0815CF20 @ =0x00001C9C
	adds r0, r2, r6
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x04]
	ldr r0, [r5, #0x04]
	cmp r1, r0
	ble _0815CEF0
	ldr r4, _0815CF14 @ =0x00001CB8
	adds r0, r2, r4
	ldr r0, [r0, #0x00]
	bl sub_815EC8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0815CF18 @ =0x083CC1A0
	ldr r3, [r7, #0x00]
	ldr r4, _0815CF1C @ =0x00001EA2
	adds r1, r3, r4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x05
	adds r1, r1, r2
	ldrb r1, [r1, #0x1A]
	cmp r0, r1
	blt _0815CEF0
	adds r2, r3, r6
	ldr r1, [r2, #0x00]
	movs r0, #0x00
	strh r0, [r1, #0x14]
	ldr r4, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x04
	adds r0, r3, r1
	ldr r1, [r4, #0x04]
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	ldr r1, [r4, #0x08]
	cmp r1, r0
	blt _0815CEF0
	ldrh r0, [r5, #0x38]
	adds r0, #0x01
	strh r0, [r5, #0x38]
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	movs r1, #0x0D
	str r1, [sp, #0x000]
	ldr r4, [r2, #0x14]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl _call_via_r4
_0815CEF0:
	ldrh r0, [r5, #0x38]
	cmp r0, #0x01
	bls _0815CEFC
	movs r0, #0x02
	mov r4, r8
	strb r0, [r4, #0x00]
_0815CEFC:
	ldr r1, [r5, #0x04]
	mov r0, r9
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r5, #0x08]
	b _0815CF70
_0815CF0C: .4byte 0x03001020
_0815CF10: .4byte 0x00001C98
_0815CF14: .4byte 0x00001CB8
_0815CF18: .4byte 0x083CC1A0
_0815CF1C: .4byte 0x00001EA2
_0815CF20: .4byte 0x00001C9C
_0815CF24:
	ldr r0, _0815CF48 @ =0x03001020
	ldr r1, [r0, #0x00]
	ldr r2, _0815CF4C @ =0x00001C98
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	bne _0815CF70
	ldr r3, _0815CF50 @ =0x00001C9C
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	bne _0815CF70
	movs r0, #0x01
	b _0815CF72
_0815CF48: .4byte 0x03001020
_0815CF4C: .4byte 0x00001C98
_0815CF50: .4byte 0x00001C9C
_0815CF54:
	adds r0, r5, #0x0
	movs r1, #0x2F
	bl sub_815FA70
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x12]
	movs r1, #0x07
	negs r1, r1
	ands r1, r2
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x12]
_0815CF70:
	movs r0, #0x00
_0815CF72:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
