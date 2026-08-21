	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80615DC
sub_80615DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080616AA
	movs r0, #0x9C
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r0, [r7, #0x2C]
	ldr r6, [r0, #0x28]
	adds r2, r6, #0x0
	adds r2, #0xD8
	ldr r5, _08061698 @ =0x083B869C
	lsls r4, r1, #0x03
	adds r4, r4, r1
	lsls r4, r4, #0x02
	adds r0, r4, r5
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0x04
	adds r0, r5, #0x4
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0x04
	adds r0, r5, #0x0
	adds r0, #0x08
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x0C
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7C
	movs r6, #0x00
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r6, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	adds r0, r7, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	adds r0, #0xA0
	str r6, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA4
	adds r5, #0x20
	adds r4, r4, r5
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0806169C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD8
	bl play_sfx_80195B4
	b _080616A6
	.byte 0x00, 0x00
_08061698: .4byte 0x083B869C
_0806169C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD9
	bl play_sfx_80195B4
_080616A6:
	ldr r0, _080616B4 @ =0x08061795
	str r0, [r7, #0x4C]
_080616AA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080616B4: .4byte sub_8061794
	thumb_func_start sub_80616B8
sub_80616B8:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	bl sub_80614B4
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08061746
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r5, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	adds r4, r2, #0x0
	adds r4, #0xE0
	ldr r3, _0806174C @ =0x083B869C
	lsls r2, r5, #0x03
	adds r2, r2, r5
	lsls r2, r2, #0x02
	adds r0, r3, #0x0
	adds r0, #0x14
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r6, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x79
	ldrb r0, [r4, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x00]
	adds r3, #0x18
	adds r2, r2, r3
	ldr r1, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7C
	movs r2, #0x00
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	adds r0, r7, #0x0
	bl sub_807F4FC
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08061750 @ =0x08061755
	str r0, [r7, #0x4C]
_08061746:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806174C: .4byte 0x083B869C
_08061750: .4byte sub_8061754
	thumb_func_start sub_8061754
sub_8061754:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80614B4
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08061784
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r2, [r0, #0x00]
	ldr r1, _0806178C @ =0x083B869C
	lsls r0, r2, #0x03
	adds r0, r0, r2
	lsls r0, r0, #0x02
	adds r1, #0x1C
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	ldr r0, _08061790 @ =0x08061831
	str r0, [r4, #0x4C]
_08061784:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806178C: .4byte 0x083B869C
_08061790: .4byte sub_8061830
	thumb_func_start sub_8061794
sub_8061794:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80614B4
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080617FC
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r3, r4, #0x0
	adds r3, #0x9C
	ldr r2, [r3, #0x00]
	ldr r1, _080617E4 @ =0x083B869C
	lsls r0, r2, #0x03
	adds r0, r0, r2
	lsls r0, r0, #0x02
	adds r1, #0x10
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bne _080617E8
	movs r0, #0xD8
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	b _080617F8
_080617E4: .4byte 0x083B869C
_080617E8:
	movs r0, #0xD9
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
_080617F8:
	ldr r0, _08061804 @ =0x08061865
	str r0, [r4, #0x4C]
_080617FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061804: .4byte sub_8061864
	.byte 0x02, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x3D, 0x15, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x00, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x3D, 0x15, 0x06, 0x08
	thumb_func_start sub_8061830
sub_8061830:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80614B4
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08061858
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08061860 @ =0x0808750D
	str r0, [r4, #0x4C]
_08061858:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061860: .4byte sub_808750C
	thumb_func_start sub_8061864
sub_8061864:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80614B4
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08061898
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08061898
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080618A0 @ =0x080616B9
	str r0, [r4, #0x4C]
_08061898:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080618A0: .4byte sub_80616B8
	thumb_func_start sub_80618A4
sub_80618A4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806190E
	movs r5, #0x01
	negs r5, r5
	movs r0, #0x00
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080618D4
	movs r0, #0x88
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	b _080618DC
_080618D4:
	movs r0, #0x88
	adds r1, r5, #0x0
	bl play_sfx_80195B4
_080618DC:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _080618F0
	cmp r1, #0x01
	beq _080618F6
	b _0806190A
_080618F0:
	adds r0, r4, #0x0
	movs r1, #0x03
	b _080618FA
_080618F6:
	adds r0, r4, #0x0
	movs r1, #0x07
_080618FA:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
_0806190A:
	ldr r0, _08061914 @ =0x08061FF5
	str r0, [r4, #0x4C]
_0806190E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08061914: .4byte sub_8061FF4
	thumb_func_start sub_8061918
sub_8061918:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08061930
	b _08061B7E
_08061930:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x00
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08061942
	adds r1, #0xFF
_08061942:
	asrs r1, r1, #0x08
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0806194C
	adds r0, #0xFF
_0806194C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08061958
	adds r3, #0xFF
_08061958:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0806197C @ =0x00000C7F
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x00
	bne _08061980
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806198C
_0806197C: .4byte 0x00000C7F
_08061980:
	adds r0, r5, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806198C:
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	mov r8, r0
	cmp r1, #0x00
	bne _080619DC
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080619A2
	adds r0, #0xFF
_080619A2:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x11
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080619B0
	adds r0, #0xFF
_080619B0:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080619BC
	adds r0, #0xFF
_080619BC:
	asrs r0, r0, #0x08
	adds r0, #0x13
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080619D8 @ =0x000040CB
	b _08061A16
	.byte 0x00, 0x00
_080619D8: .4byte 0x000040CB
_080619DC:
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080619E6
	adds r0, #0xFF
_080619E6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x11
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _080619F4
	adds r3, #0xFF
_080619F4:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080619FE
	adds r0, #0xFF
_080619FE:
	asrs r0, r0, #0x08
	adds r0, #0x13
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08061AB0 @ =0x000040CE
_08061A16:
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x77
	ldrb r0, [r6, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r2, [r6, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08061AB4 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	movs r0, #0x00
	str r0, [r4, #0x5C]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0x03
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08061A82
	adds r0, #0xFF
_08061A82:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x3C]
	adds r6, r1, #0x0
	cmp r0, #0x00
	bge _08061A94
	adds r0, #0xFF
_08061A94:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	adds r7, r1, #0x0
	cmp r0, #0x02
	beq _08061AEC
	cmp r0, #0x02
	ble _08061AB8
	cmp r0, #0x03
	beq _08061B0C
	b _08061B2C
	.byte 0x00, 0x00
_08061AB0: .4byte 0x000040CE
_08061AB4: .4byte sub_8087540
_08061AB8:
	cmp r0, #0x00
	blt _08061B2C
	movs r0, #0x84
	adds r0, r0, r4
	mov r12, r0
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	movs r3, #0x00
	ldsh r1, [r6, r3]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	mov r1, r12
	str r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x88
	adds r2, #0xDC
	movs r0, #0x00
	ldsh r1, [r7, r0]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	b _08061B4E
_08061AEC:
	adds r2, r4, #0x0
	adds r2, #0x84
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r0, r0, #0x08
	movs r1, #0xC0
	lsls r1, r1, #0x06
	subs r0, r1, r0
	str r0, [r2, #0x00]
	adds r2, #0x04
	movs r3, #0x00
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x08
	subs r1, r1, r0
	str r1, [r2, #0x00]
	b _08061B4E
_08061B0C:
	adds r2, r4, #0x0
	adds r2, #0x84
	movs r0, #0x00
	ldsh r1, [r6, r0]
	lsls r1, r1, #0x08
	movs r0, #0xC0
	lsls r0, r0, #0x06
	subs r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	movs r3, #0x00
	ldsh r1, [r7, r3]
	lsls r1, r1, #0x08
	movs r0, #0xD0
	lsls r0, r0, #0x07
	b _08061B4A
_08061B2C:
	adds r2, r4, #0x0
	adds r2, #0x84
	movs r0, #0x00
	ldsh r1, [r6, r0]
	lsls r1, r1, #0x08
	movs r0, #0xC0
	lsls r0, r0, #0x06
	subs r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	movs r3, #0x00
	ldsh r1, [r7, r3]
	lsls r1, r1, #0x08
	movs r0, #0x98
	lsls r0, r0, #0x08
_08061B4A:
	subs r0, r0, r1
	str r0, [r2, #0x00]
_08061B4E:
	ldr r0, _08061B6C @ =0x08061F69
	str r0, [r4, #0x4C]
	ldr r0, _08061B70 @ =0x08061FC9
	str r0, [r5, #0x4C]
	mov r1, r8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08061B74
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	b _08061B7E
	.byte 0x00, 0x00
_08061B6C: .4byte sub_8061F68
_08061B70: .4byte sub_8061FC8
_08061B74:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
_08061B7E:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8061B8C
sub_8061B8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08061BA4
	b _08061D92
_08061BA4:
	adds r0, r6, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08061BB8
	adds r1, #0xFF
_08061BB8:
	asrs r1, r1, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08061BC2
	adds r0, #0xFF
_08061BC2:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08061BCE
	adds r3, #0xFF
_08061BCE:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08061D20 @ =0x00000C8E
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08061BE2
	adds r2, #0xFF
_08061BE2:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08061BEC
	adds r0, #0xFF
_08061BEC:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08061BF8
	adds r0, #0xFF
_08061BF8:
	asrs r0, r0, #0x08
	adds r0, #0x18
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08061D24 @ =0x000040CC
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08061D28 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	movs r0, #0x00
	str r0, [r5, #0x5C]
	str r0, [r5, #0x60]
	str r0, [r5, #0x64]
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0x03
	strb r0, [r1, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x84
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r3, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x88
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08061CA6
	adds r0, #0xFF
_08061CA6:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x3C]
	cmp r1, #0x00
	bge _08061CB6
	adds r1, #0xFF
_08061CB6:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08061CC6
	adds r0, #0xFF
_08061CC6:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	ldr r0, [r5, #0x38]
	subs r1, r1, r0
	mov r8, r1
	ldr r1, [r2, #0x00]
	ldr r0, [r5, #0x3C]
	subs r7, r1, r0
	ldr r2, _08061D2C @ =0x03001038
	mov r1, r8
	mov r0, r8
	muls r0, r1
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r0, _08061D30 @ =0x00002FFF
	cmp r1, r0
	bgt _08061D34
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _08061D00
	adds r0, #0x7F
_08061D00:
	asrs r4, r0, #0x07
	lsrs r0, r0, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	subs r0, #0x05
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xF0
	lsls r0, r0, #0x05
	bl __divsi3
	adds r2, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0x1E
	b _08061D5A
_08061D20: .4byte 0x00000C8E
_08061D24: .4byte 0x000040CC
_08061D28: .4byte sub_8087540
_08061D2C: .4byte 0x03001038
_08061D30: .4byte 0x00002FFF
_08061D34:
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _08061D3C
	adds r0, #0xFF
_08061D3C:
	asrs r4, r0, #0x08
	lsrs r0, r0, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	subs r0, #0x05
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xA0
	lsls r0, r0, #0x07
	bl __divsi3
	adds r2, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0x50
_08061D5A:
	str r0, [r1, #0x00]
	cmp r2, #0x01
	bne _08061D62
	movs r2, #0x02
_08061D62:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r2
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	adds r0, #0x04
	mov r2, r8
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08061DA0 @ =0x08061E81
	str r0, [r5, #0x4C]
	ldr r0, _08061DA4 @ =0x08061F3D
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x57
	bl play_sfx_80195B4
_08061D92:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061DA0: .4byte sub_8061E80
_08061DA4: .4byte sub_8061F3C
	thumb_func_start sub_8061DA8
sub_8061DA8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r7, [r6, #0x30]
	cmp r7, #0x00
	bne _08061E68
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	adds r5, r6, #0x0
	adds r5, #0x9C
	ldr r1, [r5, #0x00]
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r0, [r4, #0x00]
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08061DD4
	adds r3, #0xFF
_08061DD4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08061E70 @ =0x00000C95
	bl sub_80DF024
	ldr r0, [r6, #0x28]
	ldr r1, _08061E74 @ =0x00004011
	ldr r2, [r5, #0x00]
	ldr r3, [r4, #0x00]
	ldr r4, [r6, #0x40]
	str r4, [sp, #0x000]
	ldr r4, [r6, #0x08]
	ldrb r4, [r4, #0x11]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1F
	str r4, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	bl sub_807BF34
	adds r4, r0, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r4, [r6, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	adds r2, r5, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	adds r2, r5, #0x0
	ands r2, r0
	lsls r2, r2, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r0, _08061E78 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	str r7, [r4, #0x6C]
	adds r0, r6, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _08061E7C @ =0x0808750D
	str r0, [r6, #0x4C]
_08061E68:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08061E70: .4byte 0x00000C95
_08061E74: .4byte 0x00004011
_08061E78: .4byte sub_8087540
_08061E7C: .4byte sub_808750C
	thumb_func_start sub_8061E80
sub_8061E80:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0xA4
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r5, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	adds r1, #0x06
	ldr r0, [r4, #0x00]
	lsrs r2, r0, #0x1F
	adds r0, r0, r2
	asrs r0, r0, #0x01
	subs r1, r1, r0
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r2, r0, #0x1
	strh r2, [r6, #0x00]
	ldr r1, [r5, #0x18]
	ldr r0, _08061F34 @ =0x000003FF
	cmp r1, r0
	bgt _08061F2C
	ldr r1, _08061F38 @ =0x0000FFFF
	adds r0, r1, #0x0
	orrs r2, r0
	strh r2, [r6, #0x00]
	adds r0, r5, #0x0
	bl sub_807C298
_08061F2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061F34: .4byte 0x000003FF
_08061F38: .4byte 0x0000FFFF
	thumb_func_start sub_8061F3C
sub_8061F3C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08061F5C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08061F64 @ =0x08061DA9
	str r0, [r4, #0x4C]
_08061F5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061F64: .4byte sub_8061DA8
	thumb_func_start sub_8061F68
sub_8061F68:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0xB0
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r4, [r5, #0x10]
	ldr r0, _08061FC4 @ =0xFFFFFD80
	adds r4, r4, r0
	str r4, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	subs r0, r4, r0
	adds r1, r5, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	muls r0, r1
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x20
	negs r0, r0
	cmp r4, r0
	bge _08061FBC
	adds r0, r5, #0x0
	bl sub_807C298
_08061FBC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061FC4: .4byte 0xFFFFFD80
	thumb_func_start sub_8061FC8
sub_8061FC8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08061FE8
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08061FF0 @ =0x0808750D
	str r0, [r4, #0x4C]
_08061FE8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061FF0: .4byte sub_808750C
	thumb_func_start sub_8061FF4
sub_8061FF4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062040
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08062040
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08062030
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806203C
_08062030:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806203C:
	ldr r0, _08062048 @ =0x08061919
	str r0, [r4, #0x4C]
_08062040:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062048: .4byte sub_8061918
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x11, 0x1C, 0x9C, 0x31, 0x08, 0x68, 0x02, 0x28, 0x01, 0xD9, 0x02, 0x20
	.byte 0x00, 0xE0, 0x02, 0x30, 0x08, 0x60, 0x10, 0x1C, 0xA0, 0x30, 0x01, 0x21, 0x01, 0x60, 0x02, 0x48
	.byte 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x89, 0x21, 0x06, 0x08, 0x00, 0xB5, 0x02, 0x1C
	.byte 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42
	.byte 0x03, 0xD1, 0x11, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C, 0x9C, 0x31, 0x01, 0x20
	.byte 0x08, 0x60, 0x10, 0x1C, 0xA0, 0x30, 0x01, 0x21, 0x01, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20
	.byte 0x02, 0xBC, 0x08, 0x47, 0x89, 0x21, 0x06, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x35, 0x21, 0x06, 0x08
