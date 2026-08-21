	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80B05B4
sub_80B05B4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080B0678 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B069C
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B05EE
	cmp r1, #0x04
	bne _080B0644
_080B05EE:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080B05F6
	adds r0, #0xFF
_080B05F6:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x3C
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080B0610
	adds r2, #0xFF
_080B0610:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B0630
	adds r0, #0xFF
_080B0630:
	asrs r0, r0, #0x08
	adds r0, #0x10
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080B0644:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0656
	cmp r1, #0x04
	bne _080B0698
_080B0656:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B067C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B0688
	.byte 0x00, 0x00
_080B0678: .4byte 0x03000FD8
_080B067C:
	ldr r2, _080B06A4 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B0688:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B0698:
	ldr r0, _080B06A8 @ =0x080B06AD
	str r0, [r7, #0x4C]
_080B069C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B06A4: .4byte 0x0000204D
_080B06A8: .4byte sub_80B06AC
	thumb_func_start sub_80B06AC
sub_80B06AC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080B0734 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080B0738 @ =0x03001038
	ldr r2, _080B073C @ =0x0819832C
	ldr r3, _080B0740 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080B06FA
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B06FC
_080B06FA:
	movs r1, #0x00
_080B06FC:
	cmp r1, #0x00
	beq _080B0760
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0712
	cmp r1, #0x04
	bne _080B0760
_080B0712:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B0744
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B0750
	.byte 0x00, 0x00
_080B0734: .4byte 0x03000FD8
_080B0738: .4byte 0x03001038
_080B073C: .4byte 0x0819832C
_080B0740: .4byte 0x08198220
_080B0744:
	ldr r2, _080B07A8 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B0750:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B0760:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B07F2
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B078C
	cmp r1, #0x04
	bne _080B07C8
_080B078C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _080B07AC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080B07B8
_080B07A8: .4byte 0x0000204D
_080B07AC:
	ldr r2, _080B07FC @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080B07B8:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B07C8:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B07D0
	adds r1, #0xFF
_080B07D0:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B07DA
	adds r2, #0xFF
_080B07DA:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B07E4
	adds r3, #0xFF
_080B07E4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	ldr r0, _080B0800 @ =0x080B0805
	str r0, [r7, #0x4C]
_080B07F2:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B07FC: .4byte 0x0000204D
_080B0800: .4byte sub_80B0804
	thumb_func_start sub_80B0804
sub_80B0804:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080B08B4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B0826
	b _080B09F0
_080B0826:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0844
	cmp r1, #0x04
	bne _080B0882
_080B0844:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B0852
	adds r0, #0xFF
_080B0852:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B0860
	adds r0, #0xFF
_080B0860:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B086E
	adds r0, #0xFF
_080B086E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080B0882:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080B0896
	cmp r2, #0x04
	bne _080B08F8
_080B0896:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B08BC
	ldr r2, _080B08B8 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B08C8
_080B08B4: .4byte 0x03000FD8
_080B08B8: .4byte 0x00002002
_080B08BC:
	ldr r2, _080B0994 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B08C8:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B08DE
	movs r2, #0x01
_080B08DE:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B08F8:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B0906
	cmp r2, #0x04
	bne _080B0910
_080B0906:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080B0910:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B0924
	cmp r2, #0x04
	bne _080B0966
_080B0924:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B0932
	adds r0, #0xFF
_080B0932:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B0940
	adds r0, #0xFF
_080B0940:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B094E
	adds r0, #0xFF
_080B094E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080B0966:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0974
	cmp r1, #0x04
	bne _080B09D8
_080B0974:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B099C
	ldr r2, _080B0998 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B09A8
	.byte 0x00, 0x00
_080B0994: .4byte 0x0000204F
_080B0998: .4byte 0x00002002
_080B099C:
	ldr r2, _080B09F8 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B09A8:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B09BE
	movs r2, #0x01
_080B09BE:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B09D8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B09E6
	cmp r2, #0x04
	bne _080B09F0
_080B09E6:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080B09F0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B09F8: .4byte 0x0000204F
	thumb_func_start sub_80B09FC
sub_80B09FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080B0B54 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r7, r5, #0x0
	adds r7, #0x08
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B0A26
	b _080B0B46
_080B0A26:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x2B
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0A46
	cmp r1, #0x04
	bne _080B0A9C
_080B0A46:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080B0A4E
	adds r0, #0xFF
_080B0A4E:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x20
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080B0A68
	adds r2, #0xFF
_080B0A68:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B0A8A
	adds r0, #0xFF
_080B0A8A:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	ldr r1, _080B0B58 @ =0x00000399
	adds r0, r4, #0x0
	bl sub_8088164
_080B0A9C:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0AAE
	cmp r1, #0x04
	bne _080B0B06
_080B0AAE:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080B0AB6
	adds r1, #0xFF
_080B0AB6:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080B0ACC
	adds r0, #0xFF
_080B0ACC:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080B0AE2
	adds r3, #0xFF
_080B0AE2:
	asrs r3, r3, #0x08
	adds r3, #0x18
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	movs r0, #0x20
	adds r1, r7, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_8088164
_080B0B06:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0B18
	cmp r1, #0x04
	bne _080B0B34
_080B0B18:
	ldr r2, _080B0B5C @ =0x00002061
	adds r0, r4, #0x0
	movs r1, #0x01
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
_080B0B34:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B0B60 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B0B64 @ =0x080B0B69
	mov r1, r9
	str r0, [r1, #0x4C]
_080B0B46:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B0B54: .4byte 0x03000FD8
_080B0B58: .4byte 0x00000399
_080B0B5C: .4byte 0x00002061
_080B0B60: .4byte 0x00000FFF
_080B0B64: .4byte sub_80B0B68
	thumb_func_start sub_80B0B68
sub_80B0B68:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r4, _080B0CAC @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x008]
	mov r10, r1
	adds r0, r6, #0x0
	bl sub_8087CE4
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	bne _080B0BA8
	b _080B11CC
_080B0BA8:
	ldr r2, _080B0CB0 @ =0x03001038
	ldr r0, _080B0CB4 @ =0x0819832C
	ldr r1, _080B0CB8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0E
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r1, [r1, #0x00]
	bl _call_via_r2
	mov r10, r0
	adds r0, r5, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	mov r3, r10
	subs r4, r3, r0
	lsls r0, r1, #0x01
	subs r3, r3, r0
	str r3, [sp, #0x008]
	str r3, [sp, #0x00C]
	adds r0, r0, r1
	lsls r0, r0, #0x01
	add r10, r0
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080B0BFE
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B0BFE:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080B0C0E
	b _080B1150
_080B0C0E:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080B0C16
	movs r1, #0x00
_080B0C16:
	ldr r0, _080B0CBC @ =0x00007FFF
	cmp r1, r0
	ble _080B0C1E
	adds r1, r0, #0x0
_080B0C1E:
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B0C34
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B0C36
_080B0C34:
	movs r2, #0x00
_080B0C36:
	adds r5, r6, #0x0
	adds r5, #0x7E
	movs r0, #0xAE
	adds r0, r0, r6
	mov r9, r0
	cmp r2, #0x00
	beq _080B0D24
	ldr r2, _080B0CAC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B0CC0
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0C68
	movs r1, #0x4C
_080B0C5C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0C5C
_080B0C68:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0C7C
	movs r1, #0x4C
_080B0C70:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0C70
_080B0C7C:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0C90
	movs r1, #0x4C
_080B0C84:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0C84
_080B0C90:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0D1C
	movs r1, #0x04
_080B0C9A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0CA4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0CA4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0C9A
	b _080B0D1C
_080B0CAC: .4byte 0x03000FD8
_080B0CB0: .4byte 0x03001038
_080B0CB4: .4byte 0x0819832C
_080B0CB8: .4byte 0x08198220
_080B0CBC: .4byte 0x00007FFF
_080B0CC0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0CD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0CCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0CCA
_080B0CD6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0CEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0CE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0CE0
_080B0CEC:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0D02
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0CF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0CF6
_080B0D02:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0D1C
	movs r1, #0x10
_080B0D0C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0D16
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0D16:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0D0C
_080B0D1C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B0D24:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080B0D2E
	movs r1, #0x00
_080B0D2E:
	mov r3, r10
	cmp r3, #0x00
	bge _080B0D36
	movs r2, #0x00
_080B0D36:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B0D40
	adds r1, r0, #0x0
_080B0D40:
	ldr r0, _080B0E38 @ =0x00007FFF
	cmp r2, r0
	ble _080B0D48
	adds r2, r0, #0x0
_080B0D48:
	cmp r2, r1
	bge _080B0D4E
	adds r1, r2, #0x0
_080B0D4E:
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, r1
	blt _080B0D64
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B0D66
_080B0D64:
	movs r1, #0x00
_080B0D66:
	cmp r1, #0x00
	bne _080B0D6C
	b _080B0EBC
_080B0D6C:
	ldr r1, _080B0E3C @ =0xFF000001
	movs r4, #0x28
	negs r4, r4
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r2, #0x08
	adds r3, r4, #0x0
	bl sub_807E680
	ldr r0, _080B0E40 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B0D8E
	b _080B0EBC
_080B0D8E:
	movs r0, #0x07
	adds r1, r7, #0x0
	movs r2, #0x08
	adds r3, r4, #0x0
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r4, _080B0E44 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080B0EAA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B0E48
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B0DEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0DE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0DE2
_080B0DEE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0E04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0DF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0DF8
_080B0E04:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0E1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0E0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0E0E
_080B0E1A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0EA6
	movs r1, #0x10
_080B0E24:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0E2E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0E2E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0E24
	b _080B0EA6
	.byte 0x00, 0x00
_080B0E38: .4byte 0x00007FFF
_080B0E3C: .4byte 0xFF000001
_080B0E40: .4byte 0x0300034C
_080B0E44: .4byte 0x03000FD8
_080B0E48:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B0E60
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0E54:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0E54
_080B0E60:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0E76
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0E6A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0E6A
_080B0E76:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0E8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0E80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0E80
_080B0E8C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0EA6
	movs r1, #0x10
_080B0E96:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0EA0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0EA0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0E96
_080B0EA6:
	bl sub_807F448
_080B0EAA:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080B0F8C @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B0EBC:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B0EC8
	b _080B1150
_080B0EC8:
	mov r1, r10
	cmp r1, #0x00
	bge _080B0ED0
	movs r1, #0x00
_080B0ED0:
	ldr r0, _080B0F90 @ =0x00007FFF
	cmp r1, r0
	ble _080B0ED8
	adds r1, r0, #0x0
_080B0ED8:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B0EEE
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B0EF0
_080B0EEE:
	movs r2, #0x00
_080B0EF0:
	cmp r2, #0x00
	bne _080B0EF6
	b _080B1000
_080B0EF6:
	ldr r3, _080B0F94 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r4, r9
	ldrh r1, [r4, #0x00]
	ldr r0, _080B0F8C @ =0x00000FFF
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r1, r5, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B0F98
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0F44
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0F38:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0F38
_080B0F44:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0F5A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0F4E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0F4E
_080B0F5A:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0F70
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0F64:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0F64
_080B0F70:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0FF4
	movs r1, #0x10
_080B0F7A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0F84
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0F84:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0F7A
	b _080B0FF4
_080B0F8C: .4byte 0x00000FFF
_080B0F90: .4byte 0x00007FFF
_080B0F94: .4byte 0x03000FD8
_080B0F98:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0FAE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0FA2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0FA2
_080B0FAE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0FC4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0FB8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0FB8
_080B0FC4:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0FDA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0FCE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0FCE
_080B0FDA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0FF4
	movs r1, #0x10
_080B0FE4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0FEE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0FEE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0FE4
_080B0FF4:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	b _080B1150
_080B1000:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, r10
	ble _080B100A
	b _080B1150
_080B100A:
	ldr r0, _080B10C8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	ldr r0, _080B10CC @ =0xFF000001
	ands r0, r1
	cmp r0, #0x00
	bne _080B1020
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	bne _080B1020
	b _080B1150
_080B1020:
	ldr r2, _080B10D0 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	ldr r1, _080B10D4 @ =0x00FFFFFE
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B104E
	b _080B1150
_080B104E:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080B10D8 @ =0x00000FFF
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r1, r5, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B10DC
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B1080
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B1074:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B1074
_080B1080:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B1096
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B108A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B108A
_080B1096:
	mov r2, r8
	cmp r2, #0x00
	beq _080B10AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B10A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B10A0
_080B10AC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B1138
	movs r1, #0x10
_080B10B6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B10C0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B10C0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B10B6
	b _080B1138
_080B10C8: .4byte 0x0300034C
_080B10CC: .4byte 0xFF000001
_080B10D0: .4byte 0x03000FD8
_080B10D4: .4byte 0x00FFFFFE
_080B10D8: .4byte 0x00000FFF
_080B10DC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B10F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B10E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B10E6
_080B10F2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B1108
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B10FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B10FC
_080B1108:
	mov r2, r8
	cmp r2, #0x00
	beq _080B111E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B1112:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B1112
_080B111E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B1138
	movs r1, #0x10
_080B1128:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B1132
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B1132:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B1128
_080B1138:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r7, #0x0
	movs r2, #0x08
	bl sub_807EAE4
_080B1150:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080B11CC
	ldr r1, [sp, #0x00C]
	mov r2, r10
	cmp r1, #0x00
	bge _080B1164
	movs r1, #0x00
_080B1164:
	mov r4, r10
	cmp r4, #0x00
	bge _080B116C
	movs r2, #0x00
_080B116C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B1176
	adds r1, r0, #0x0
_080B1176:
	ldr r0, _080B11C0 @ =0x00007FFF
	cmp r2, r0
	ble _080B117E
	adds r2, r0, #0x0
_080B117E:
	cmp r2, r1
	bge _080B1184
	adds r1, r2, #0x0
_080B1184:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, r1
	blt _080B119E
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B11A0
_080B119E:
	movs r1, #0x00
_080B11A0:
	cmp r1, #0x00
	beq _080B11CC
	cmp r3, #0x01
	ble _080B11CC
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080B11C4 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080B11C8 @ =0x080B30D9
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080B14F4
_080B11C0: .4byte 0x00007FFF
_080B11C4: .4byte 0x00000FFF
_080B11C8: .4byte sub_80B30D8
_080B11CC:
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080B11D4
	movs r2, #0x00
_080B11D4:
	ldr r0, _080B13AC @ =0x00007FFF
	cmp r2, r0
	ble _080B11DC
	adds r2, r0, #0x0
_080B11DC:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080B11F8
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r5, #0x00
	ldsh r0, [r0, r5]
	movs r1, #0x01
	cmp r0, r2
	bge _080B11FA
_080B11F8:
	movs r1, #0x00
_080B11FA:
	cmp r1, #0x00
	beq _080B1252
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1210
	cmp r1, #0x04
	bne _080B1228
_080B1210:
	ldr r2, _080B13B0 @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x10
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B1228:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B123A
	cmp r1, #0x04
	bne _080B1252
_080B123A:
	ldr r2, _080B13B4 @ =0x00002032
	adds r0, r7, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B1252:
	mov r1, r10
	cmp r1, #0x00
	bge _080B125A
	movs r1, #0x00
_080B125A:
	ldr r0, _080B13AC @ =0x00007FFF
	cmp r1, r0
	ble _080B1262
	adds r1, r0, #0x0
_080B1262:
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B1278
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B127A
_080B1278:
	movs r2, #0x00
_080B127A:
	cmp r2, #0x00
	beq _080B12E4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1290
	cmp r1, #0x04
	bne _080B12AC
_080B1290:
	ldr r2, _080B13B0 @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B12AC:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B12BE
	cmp r1, #0x04
	bne _080B12E4
_080B12BE:
	movs r2, #0x01
	negs r2, r2
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B12E4:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B12F4
	b _080B14F4
_080B12F4:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	mov r5, r8
	ldr r0, [r5, #0x28]
	ldr r1, _080B13B8 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _080B1324
	mov r0, r8
	bl sub_8086700
_080B1324:
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080B1340
	cmp r2, #0x04
	bne _080B137E
_080B1340:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B134E
	adds r0, #0xFF
_080B134E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B135C
	adds r0, #0xFF
_080B135C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B136A
	adds r0, #0xFF
_080B136A:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080B137E:
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B138C
	cmp r1, #0x04
	bne _080B13FC
_080B138C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B13C0
	ldr r2, _080B13BC @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B13CC
	.byte 0x00, 0x00
_080B13AC: .4byte 0x00007FFF
_080B13B0: .4byte 0x00002061
_080B13B4: .4byte 0x00002032
_080B13B8: .4byte 0x00000111
_080B13BC: .4byte 0x00002002
_080B13C0:
	ldr r2, _080B1498 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B13CC:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080B13E2
	movs r2, #0x01
_080B13E2:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B13FC:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B140A
	cmp r2, #0x04
	bne _080B1414
_080B140A:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080B1414:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B1428
	cmp r2, #0x04
	bne _080B146A
_080B1428:
	ldr r3, [r7, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B1436
	adds r0, #0xFF
_080B1436:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B1444
	adds r0, #0xFF
_080B1444:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B1452
	adds r0, #0xFF
_080B1452:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_80880C4
_080B146A:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1478
	cmp r1, #0x04
	bne _080B14DC
_080B1478:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B14A0
	ldr r2, _080B149C @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B14AC
	.byte 0x00, 0x00
_080B1498: .4byte 0x0000204F
_080B149C: .4byte 0x00002002
_080B14A0:
	ldr r2, _080B1504 @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B14AC:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080B14C2
	movs r2, #0x01
_080B14C2:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B14DC:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B14EA
	cmp r2, #0x04
	bne _080B14F4
_080B14EA:
	movs r0, #0x00
	str r0, [r7, #0x4C]
	adds r0, r7, #0x0
	bl sub_808863C
_080B14F4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B1504: .4byte 0x0000204F
	thumb_func_start sub_80B1508
sub_80B1508:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080B15F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r4, r7, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	mov r0, r8
	ldr r6, [r0, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	blt _080B15E6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1554
	cmp r1, #0x04
	bne _080B156C
_080B1554:
	ldr r2, _080B15F4 @ =0x00002032
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B156C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B157E
	cmp r1, #0x04
	bne _080B1596
_080B157E:
	ldr r2, _080B15F8 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B1596:
	adds r2, r4, #0x0
	adds r2, #0x84
	adds r0, r6, #0x0
	adds r0, #0xC3
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r0, r6, #0x0
	adds r0, #0xC4
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r0, r6, #0x0
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldrh r1, [r4, #0x26]
	ldr r0, _080B15FC @ =0xFFFFF000
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, _080B1600 @ =0x080B1605
	mov r1, r8
	str r0, [r1, #0x4C]
_080B15E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B15F0: .4byte 0x03000FD8
_080B15F4: .4byte 0x00002032
_080B15F8: .4byte 0x00002061
_080B15FC: .4byte 0xFFFFF000
_080B1600: .4byte sub_80B1604
	thumb_func_start sub_80B1604
sub_80B1604:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080B17B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r9, r0
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r10, r0
	ldr r1, [r4, #0x10]
	mov r8, r1
	movs r6, #0xE6
	mov r1, r8
	muls r1, r6
	adds r0, r3, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	movs r2, #0x1A
	muls r0, r2
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080B1644
	adds r1, #0xFF
_080B1644:
	asrs r5, r1, #0x08
	ldr r7, [r4, #0x14]
	adds r1, r7, #0x0
	muls r1, r6
	adds r0, r3, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	muls r0, r2
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080B165C
	adds r1, #0xFF
_080B165C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x38]
	subs r2, r5, r2
	movs r5, #0xB6
	adds r5, r5, r3
	mov r12, r5
	movs r6, #0x00
	ldsh r0, [r5, r6]
	adds r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	add r2, r8
	str r2, [r4, #0x10]
	ldr r0, [r4, #0x3C]
	subs r1, r1, r0
	adds r3, #0xB8
	movs r5, #0x00
	ldsh r0, [r3, r5]
	adds r1, r1, r0
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r7, r1
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	movs r6, #0x80
	lsls r6, r6, #0x01
	adds r0, r0, r6
	str r0, [r4, #0x18]
	mov r0, r9
	str r2, [r0, #0x10]
	ldr r0, [r4, #0x14]
	mov r1, r9
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x38]
	subs r0, r0, r1
	mov r5, r12
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	strh r0, [r3, #0x00]
	ldr r2, _080B17BC @ =0x03001038
	movs r6, #0x00
	ldsh r0, [r5, r6]
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	movs r5, #0x00
	ldsh r1, [r3, r5]
	adds r6, r1, #0x0
	muls r6, r1
	adds r1, r6, #0x0
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	cmp r5, #0x0F
	bgt _080B1714
	ldrh r1, [r4, #0x26]
	ldr r0, _080B17C0 @ =0x00000FFF
	ands r0, r1
	cmp r0, #0x00
	beq _080B1714
	ldr r0, _080B17C4 @ =0xFFFFF000
	ands r0, r1
	strh r0, [r4, #0x26]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080B16F4
	adds r1, #0xFF
_080B16F4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080B16FE
	adds r2, #0xFF
_080B16FE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080B1708
	adds r3, #0xFF
_080B1708:
	asrs r3, r3, #0x08
	subs r3, #0x0E
	str r4, [sp, #0x000]
	ldr r0, _080B17C8 @ =0x00002FBA
	bl sub_80DF024
_080B1714:
	cmp r5, #0x08
	bgt _080B17A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8E
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1734
	cmp r1, #0x04
	bne _080B174C
_080B1734:
	ldr r2, _080B17CC @ =0x00002032
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B174C:
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B175E
	cmp r1, #0x04
	bne _080B1778
_080B175E:
	ldr r2, _080B17D0 @ =0x00002061
	mov r0, r9
	movs r1, #0x0E
	movs r3, #0x00
	bl sub_8082E1C
	mov r0, r9
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B1778:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x8C
	mov r0, r10
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	mov r3, r10
	ldr r0, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, _080B17D4 @ =0x080B17D9
	ldr r5, [sp, #0x004]
	str r0, [r5, #0x4C]
_080B17A8:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B17B8: .4byte 0x03000FD8
_080B17BC: .4byte 0x03001038
_080B17C0: .4byte 0x00000FFF
_080B17C4: .4byte 0xFFFFF000
_080B17C8: .4byte 0x00002FBA
_080B17CC: .4byte 0x00002032
_080B17D0: .4byte 0x00002061
_080B17D4: .4byte sub_80B17D8
	thumb_func_start sub_80B17D8
sub_80B17D8:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080B18BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r4, r1, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r6, r1, #0x0
	adds r6, #0xB0
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _080B1812
	ldr r0, _080B18C0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080B1812
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
	movs r0, #0x00
	str r0, [r6, #0x00]
_080B1812:
	adds r2, r4, #0x0
	adds r2, #0xB2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r1, r0, #0x05
	subs r1, r1, r0
	ldr r3, _080B18C4 @ =0xFFFFB334
	adds r0, r1, r3
	adds r6, r2, #0x0
	cmp r0, #0x00
	bge _080B1830
	ldr r2, _080B18C8 @ =0xFFFFB433
	adds r0, r1, r2
_080B1830:
	asrs r0, r0, #0x08
	strh r0, [r6, #0x00]
	movs r3, #0x00
	ldsh r1, [r6, r3]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	str r0, [r5, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _080B18B6
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B185E
	cmp r1, #0x04
	bne _080B188C
_080B185E:
	ldr r2, _080B18CC @ =0x03001038
	ldr r0, _080B18D0 @ =0x0819832C
	ldr r1, _080B18D4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0B
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_080B188C:
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r6, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B18D8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B18DC @ =0x080B18E1
	str r0, [r7, #0x4C]
_080B18B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B18BC: .4byte 0x03000FD8
_080B18C0: .4byte 0x0300034C
_080B18C4: .4byte 0xFFFFB334
_080B18C8: .4byte 0xFFFFB433
_080B18CC: .4byte 0x03001038
_080B18D0: .4byte 0x0819832C
_080B18D4: .4byte 0x08198220
_080B18D8: .4byte 0x00000FFF
_080B18DC: .4byte sub_80B18E0
	thumb_func_start sub_80B18E0
sub_80B18E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080B1920 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r4, #0xBA
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r7, #0x08]
	movs r3, #0x06
	ldsh r0, [r0, r3]
	cmp r0, #0x9F
	bgt _080B1924
	lsrs r0, r1, #0x1F
	adds r0, r1, r0
	asrs r0, r0, #0x01
	b _080B1930
_080B1920: .4byte 0x03000FD8
_080B1924:
	movs r0, #0xF3
	muls r0, r1
	cmp r0, #0x00
	bge _080B192E
	adds r0, #0xFF
_080B192E:
	asrs r0, r0, #0x08
_080B1930:
	adds r1, r6, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r4, #0x00
	ldsh r1, [r1, r4]
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	str r0, [r5, #0x18]
	ldr r3, _080B1A2C @ =0x03001038
	ldr r1, _080B1A30 @ =0x0819832C
	ldr r2, _080B1A34 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	ldr r1, [r7, #0x18]
	subs r0, r0, r1
	adds r1, r7, #0x0
	adds r1, #0xC5
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl _call_via_r2
	ldr r1, [r7, #0x08]
	strh r0, [r1, #0x06]
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #0x00
	bne _080B1976
	b _080B1DE0
_080B1976:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r9, r0
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r1, r3
	bge _080B1996
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B1996:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B19A2
	b _080B1D72
_080B19A2:
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080B19BE
	mov r1, r9
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080B19C0
_080B19BE:
	movs r1, #0x00
_080B19C0:
	cmp r1, #0x00
	beq _080B1AA0
	ldr r2, _080B1A38 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B1A3C
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B19E6
	movs r3, #0x99
_080B19DA:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B19DA
_080B19E6:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B19FA
	movs r3, #0x99
_080B19EE:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B19EE
_080B19FA:
	adds r1, r7, #0x0
	cmp r7, #0x00
	beq _080B1A0E
	movs r3, #0x99
_080B1A02:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1A02
_080B1A0E:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1A98
	movs r2, #0x09
_080B1A18:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1A22
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1A22:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1A18
	b _080B1A98
	.byte 0x00, 0x00
_080B1A2C: .4byte 0x03001038
_080B1A30: .4byte 0x0819832C
_080B1A34: .4byte 0x08198220
_080B1A38: .4byte 0x03000FD8
_080B1A3C:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1A52
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1A46:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1A46
_080B1A52:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1A68
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1A5C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1A5C
_080B1A68:
	adds r1, r7, #0x0
	cmp r7, #0x00
	beq _080B1A7E
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1A72:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1A72
_080B1A7E:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1A98
	movs r2, #0x10
_080B1A88:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1A92
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1A92:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1A88
_080B1A98:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B1AA0:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B1AB0
	adds r1, r0, #0x0
_080B1AB0:
	ldr r0, _080B1BD0 @ =0x00007FFF
	cmp r2, r0
	ble _080B1AB8
	adds r2, r0, #0x0
_080B1AB8:
	cmp r2, r1
	bge _080B1ABE
	adds r1, r2, #0x0
_080B1ABE:
	mov r0, r9
	movs r3, #0x00
	ldsh r0, [r0, r3]
	mov r12, r0
	cmp r12, r1
	blt _080B1AD4
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B1AD6
_080B1AD4:
	movs r1, #0x00
_080B1AD6:
	cmp r1, #0x00
	beq _080B1B0A
	movs r3, #0x10
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	bl sub_807E680
	ldr r0, _080B1BD4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080B1B0A
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080B1BD8 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B1B0A:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B1B16
	b _080B1D72
_080B1B16:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080B1BD0 @ =0x00007FFF
	cmp r1, r0
	ble _080B1B22
	adds r1, r0, #0x0
_080B1B22:
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B1B36
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B1B38
_080B1B36:
	movs r2, #0x00
_080B1B38:
	cmp r2, #0x00
	bne _080B1B3E
	b _080B1C48
_080B1B3E:
	ldr r4, _080B1BDC @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r1, [r3, #0x0A]
	movs r2, #0x30
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B1BD8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r3, r8
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r2, r4, #0x0
	cmp r0, #0x00
	beq _080B1BE0
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1B88
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1B7C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1B7C
_080B1B88:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1B9E
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1B92:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1B92
_080B1B9E:
	adds r1, r7, #0x0
	cmp r1, #0x00
	beq _080B1BB4
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1BA8:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1BA8
_080B1BB4:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1C3C
	movs r2, #0x10
_080B1BBE:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1BC8
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1BC8:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1BBE
	b _080B1C3C
_080B1BD0: .4byte 0x00007FFF
_080B1BD4: .4byte 0x0300034C
_080B1BD8: .4byte 0x00000FFF
_080B1BDC: .4byte 0x03000FD8
_080B1BE0:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1BF6
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1BEA:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1BEA
_080B1BF6:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1C0C
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1C00:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1C00
_080B1C0C:
	adds r1, r7, #0x0
	cmp r1, #0x00
	beq _080B1C22
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1C16:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1C16
_080B1C22:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1C3C
	movs r2, #0x10
_080B1C2C:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1C36
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1C36:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1C2C
_080B1C3C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B1D72
_080B1C48:
	mov r4, r9
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	ble _080B1C58
	b _080B1D72
_080B1C58:
	ldr r0, _080B1D00 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B1C66
	b _080B1D72
_080B1C66:
	ldr r1, _080B1D04 @ =0x03000FD8
	ldr r4, [r1, #0x00]
	ldrb r2, [r4, #0x0A]
	movs r3, #0x30
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r3
	strb r0, [r4, #0x0A]
	ldr r3, [r1, #0x00]
	movs r0, #0x00
	adds r2, r1, #0x0
	cmp r0, #0x00
	bne _080B1D72
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080B1D08 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r3, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B1D0C
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1CB6
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1CAA:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1CAA
_080B1CB6:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1CCC
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1CC0:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1CC0
_080B1CCC:
	adds r1, r7, #0x0
	cmp r1, #0x00
	beq _080B1CE2
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1CD6:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1CD6
_080B1CE2:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1D68
	movs r2, #0x10
_080B1CEC:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1CF6
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1CF6:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1CEC
	b _080B1D68
	.byte 0x00, 0x00
_080B1D00: .4byte 0x0300034C
_080B1D04: .4byte 0x03000FD8
_080B1D08: .4byte 0x00000FFF
_080B1D0C:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1D22
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1D16:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1D16
_080B1D22:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1D38
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1D2C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1D2C
_080B1D38:
	adds r1, r7, #0x0
	cmp r1, #0x00
	beq _080B1D4E
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1D42:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1D42
_080B1D4E:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1D68
	movs r2, #0x10
_080B1D58:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1D62
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1D62:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1D58
_080B1D68:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
_080B1D72:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080B1DE0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r2, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B1D8C
	adds r1, r0, #0x0
_080B1D8C:
	ldr r0, _080B1DD4 @ =0x00007FFF
	cmp r2, r0
	ble _080B1D94
	adds r2, r0, #0x0
_080B1D94:
	cmp r2, r1
	bge _080B1D9A
	adds r1, r2, #0x0
_080B1D9A:
	mov r4, r9
	movs r7, #0x00
	ldsh r0, [r4, r7]
	cmp r0, r1
	blt _080B1DB2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B1DB4
_080B1DB2:
	movs r1, #0x00
_080B1DB4:
	cmp r1, #0x00
	beq _080B1DE0
	cmp r3, #0x01
	ble _080B1DE0
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080B1DD8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080B1DDC @ =0x080B24D1
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080B1E20
_080B1DD4: .4byte 0x00007FFF
_080B1DD8: .4byte 0x00000FFF
_080B1DDC: .4byte sub_80B24D0
_080B1DE0:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x02
	bne _080B1E0C
	ldr r0, _080B1E30 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldr r1, [r2, #0x00]
	ands r0, r1
	cmp r0, #0x00
	beq _080B1E0C
	adds r1, r6, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	movs r1, #0x03
	eors r0, r1
	str r0, [r2, #0x00]
_080B1E0C:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B1E20
	ldr r0, _080B1E34 @ =0x080B1E39
	mov r7, r10
	str r0, [r7, #0x4C]
_080B1E20:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B1E30: .4byte 0x0300034C
_080B1E34: .4byte sub_80B1E38
	thumb_func_start sub_80B1E38
sub_80B1E38:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B1F48 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r6, [r1, #0x74]
	adds r5, r6, #0x0
	adds r5, #0x08
	mov r0, r8
	ldr r4, [r0, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B1E64
	b _080B2048
_080B1E64:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	ldr r1, _080B1F4C @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080B1F50 @ =0x040308A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080B1EC8
	ldr r2, _080B1F4C @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080B1F14
_080B1EC8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080B1ED0
	adds r1, #0xFF
_080B1ED0:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080B1EE6
	adds r0, #0xFF
_080B1EE6:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080B1EFC
	adds r3, #0xFF
_080B1EFC:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080B1F54 @ =0x0000070B
	str r4, [sp, #0x000]
	adds r1, r6, #0x0
	bl sub_80DF024
_080B1F14:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1F26
	cmp r1, #0x04
	bne _080B1F74
_080B1F26:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B1F58
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r7, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B1F64
	.byte 0x00, 0x00
_080B1F48: .4byte 0x03000FD8
_080B1F4C: .4byte 0x00000111
_080B1F50: .4byte 0x040308A8
_080B1F54: .4byte 0x0000070B
_080B1F58:
	ldr r2, _080B1FA8 @ =0x0000204D
	adds r0, r7, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B1F64:
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B1F74:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B1F88
	cmp r2, #0x04
	bne _080B1FC8
_080B1F88:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B1FAC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B1FB8
_080B1FA8: .4byte 0x0000204D
_080B1FAC:
	ldr r2, _080B2054 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B1FB8:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B1FC8:
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B1FE0
	cmp r2, #0x04
	bne _080B203A
_080B1FE0:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080B1FE8
	adds r0, #0xFF
_080B1FE8:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x28
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080B2002
	adds r2, #0xFF
_080B2002:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B2026
	adds r0, #0xFF
_080B2026:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080B203A:
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r1, [r7, #0x10]
	str r1, [r0, #0x00]
	ldr r0, _080B2058 @ =0x080B205D
	mov r1, r8
	str r0, [r1, #0x4C]
_080B2048:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B2054: .4byte 0x0000204D
_080B2058: .4byte sub_80B205C
	thumb_func_start sub_80B205C
sub_80B205C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B2128 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	mov r0, r8
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r7, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080B20A2
	adds r0, r2, #0x0
	adds r0, #0x08
	strh r0, [r1, #0x06]
	ldr r2, [r7, #0x08]
	movs r1, #0x06
	ldsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080B20A2
	strh r1, [r2, #0x06]
_080B20A2:
	adds r0, r6, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x18]
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080B212C @ =0x03001038
	ldr r2, _080B2130 @ =0x0819832C
	ldr r3, _080B2134 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080B20F0
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B20F2
_080B20F0:
	movs r1, #0x00
_080B20F2:
	cmp r1, #0x00
	beq _080B21A8
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2108
	cmp r1, #0x04
	bne _080B2154
_080B2108:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2138
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2144
_080B2128: .4byte 0x03000FD8
_080B212C: .4byte 0x03001038
_080B2130: .4byte 0x0819832C
_080B2134: .4byte 0x08198220
_080B2138:
	ldr r2, _080B2188 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B2144:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2154:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2166
	cmp r1, #0x04
	bne _080B21A8
_080B2166:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B218C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2198
	.byte 0x00, 0x00
_080B2188: .4byte 0x0000204D
_080B218C:
	ldr r2, _080B2248 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B2198:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B21A8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B21B8
	b _080B22C2
_080B21B8:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r1, [r7, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B21D4
	adds r1, #0xFF
_080B21D4:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B21DE
	adds r2, #0xFF
_080B21DE:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B21E8
	adds r3, #0xFF
_080B21E8:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B21FA
	adds r1, #0xFF
_080B21FA:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B2204
	adds r2, #0xFF
_080B2204:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B220E
	adds r3, #0xFF
_080B220E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B222A
	cmp r1, #0x04
	bne _080B2268
_080B222A:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _080B224C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2258
	.byte 0x00, 0x00
_080B2248: .4byte 0x0000204D
_080B224C:
	ldr r2, _080B229C @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080B2258:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2268:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B227A
	cmp r1, #0x04
	bne _080B22BC
_080B227A:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B22A0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080B22AC
	.byte 0x00, 0x00
_080B229C: .4byte 0x0000204D
_080B22A0:
	ldr r2, _080B22D0 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080B22AC:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B22BC:
	ldr r0, _080B22D4 @ =0x080B22D9
	mov r3, r8
	str r0, [r3, #0x4C]
_080B22C2:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B22D0: .4byte 0x0000204D
_080B22D4: .4byte sub_80B22D8
	thumb_func_start sub_80B22D8
sub_80B22D8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080B2388 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B22FA
	b _080B24C4
_080B22FA:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2318
	cmp r1, #0x04
	bne _080B2356
_080B2318:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2326
	adds r0, #0xFF
_080B2326:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2334
	adds r0, #0xFF
_080B2334:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2342
	adds r0, #0xFF
_080B2342:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080B2356:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080B236A
	cmp r2, #0x04
	bne _080B23CC
_080B236A:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2390
	ldr r2, _080B238C @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B239C
_080B2388: .4byte 0x03000FD8
_080B238C: .4byte 0x00002002
_080B2390:
	ldr r2, _080B2468 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B239C:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B23B2
	movs r2, #0x01
_080B23B2:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B23CC:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B23DA
	cmp r2, #0x04
	bne _080B23E4
_080B23DA:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080B23E4:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B23F8
	cmp r2, #0x04
	bne _080B243A
_080B23F8:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2406
	adds r0, #0xFF
_080B2406:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2414
	adds r0, #0xFF
_080B2414:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2422
	adds r0, #0xFF
_080B2422:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080B243A:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2448
	cmp r1, #0x04
	bne _080B24AC
_080B2448:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2470
	ldr r2, _080B246C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B247C
	.byte 0x00, 0x00
_080B2468: .4byte 0x0000204F
_080B246C: .4byte 0x00002002
_080B2470:
	ldr r2, _080B24CC @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B247C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B2492
	movs r2, #0x01
_080B2492:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B24AC:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B24BA
	cmp r2, #0x04
	bne _080B24C4
_080B24BA:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080B24C4:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B24CC: .4byte 0x0000204F
	thumb_func_start sub_80B24D0
sub_80B24D0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080B2558 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r3, r4, #0x0
	adds r3, #0x08
	ldr r0, _080B255C @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r1, [r2, #0x00]
	ands r0, r1
	cmp r0, #0x00
	beq _080B2500
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	movs r1, #0x03
	eors r0, r1
	str r0, [r2, #0x00]
_080B2500:
	ldr r0, [r3, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B2552
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B251E
	cmp r1, #0x04
	bne _080B254E
_080B251E:
	ldr r2, _080B2560 @ =0x03001038
	ldr r0, _080B2564 @ =0x0819832C
	ldr r1, _080B2568 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x50
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B254E:
	ldr r0, _080B256C @ =0x080B2571
	str r0, [r5, #0x4C]
_080B2552:
	pop {r4, r5}
	pop {r0}
	bx r0
_080B2558: .4byte 0x03000FD8
_080B255C: .4byte 0x0300034C
_080B2560: .4byte 0x03001038
_080B2564: .4byte 0x0819832C
_080B2568: .4byte 0x08198220
_080B256C: .4byte sub_80B2570
	thumb_func_start sub_80B2570
sub_80B2570:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	str r0, [sp, #0x008]
	ldr r0, _080B26AC @ =0x03000FD8
	mov r10, r0
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r4
	mov r8, r1
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r2, [sp, #0x008]
	ldr r6, [r2, #0x2C]
	mov r0, r8
	bl sub_80884AC
	ldr r0, [r6, #0x28]
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	adds r0, #0x2A
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1B
	ldr r3, [sp, #0x00C]
	adds r3, #0x28
	mov r9, r3
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	adds r1, r1, r0
	str r1, [sp, #0x010]
	cmp r1, #0x00
	bne _080B25C2
	b _080B2898
_080B25C2:
	ldr r0, _080B26B0 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	adds r7, r4, #0x0
	adds r7, #0xA8
	ldr r1, [r7, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _080B25D4
	b _080B2898
_080B25D4:
	adds r4, #0xA4
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	ldr r0, [r7, #0x00]
	movs r1, #0x03
	eors r0, r1
	str r0, [r7, #0x00]
	ldr r1, _080B26B4 @ =0x082000DC
	add r0, sp, #0x004
	movs r2, #0x03
	bl memcpy
	ldr r0, [r6, #0x28]
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x01
	ands r3, r0
	cmp r3, #0x00
	beq _080B2604
	b _080B2898
_080B2604:
	ldr r2, _080B26B8 @ =0x03001038
	ldr r0, _080B26BC @ =0x0819832C
	ldr r1, _080B26C0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r1, r10
	ldr r0, [r1, #0x00]
	ldr r1, _080B26C4 @ =0x000002BF
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	add r0, sp
	adds r0, #0x04
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x03
	ldr r1, [sp, #0x010]
	adds r1, #0x04
	str r3, [sp, #0x018]
	bl _call_via_r2
	ldr r1, [r4, #0x00]
	ldr r3, [sp, #0x018]
	cmp r0, r1
	blt _080B2638
	b _080B2898
_080B2638:
	str r3, [r7, #0x00]
	mov r2, r10
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B26C8
	mov r1, r8
	mov r3, r10
	mov r4, r9
	cmp r1, #0x00
	beq _080B2662
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2656:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2656
_080B2662:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B2678
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B266C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B266C
_080B2678:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B268E
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2682:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2682
_080B268E:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B2728
	movs r2, #0x10
_080B2698:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B26A2
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B26A2:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B2698
	b _080B2728
	.byte 0x00, 0x00
_080B26AC: .4byte 0x03000FD8
_080B26B0: .4byte 0x0300034C
_080B26B4: .4byte 0x082000DC
_080B26B8: .4byte 0x03001038
_080B26BC: .4byte 0x0819832C
_080B26C0: .4byte 0x08198220
_080B26C4: .4byte 0x000002BF
_080B26C8:
	mov r1, r8
	mov r3, r10
	mov r4, r9
	cmp r1, #0x00
	beq _080B26E2
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B26D6:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B26D6
_080B26E2:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B26F8
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B26EC:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B26EC
_080B26F8:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B270E
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2702:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2702
_080B270E:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B2728
	movs r2, #0x10
_080B2718:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B2722
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B2722:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B2718
_080B2728:
	adds r0, r5, #0x0
	bl sub_807EA24
	bl sub_807F448
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x02
	mov r1, r8
	movs r2, #0x28
	bl sub_807EAE4
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x1B
	lsrs r4, r4, #0x1B
	bl sub_8199F30
	adds r1, r0, #0x0
	ldr r0, [sp, #0x010]
	bl sub_81DD77C
	cmp r4, r0
	bhi _080B275C
	ldr r3, [sp, #0x00C]
	ldrh r0, [r3, #0x2A]
	b _080B2760
_080B275C:
	ldr r1, [sp, #0x00C]
	ldrh r0, [r1, #0x28]
_080B2760:
	lsrs r4, r0, #0x05
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_80F6F74
	ldr r0, [r6, #0x28]
	movs r3, #0x91
	lsls r3, r3, #0x01
	adds r2, r0, r3
	ldrh r1, [r2, #0x00]
	ldr r0, _080B27A8 @ =0xFFFFFE7F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r7, #0x00
	lsrs r0, r4, #0x07
	cmp r0, #0x04
	bne _080B27B8
	ldr r1, _080B27AC @ =0x083BBDD0
	movs r0, #0x7F
	ands r4, r0
	lsls r2, r4, #0x04
	adds r0, r2, r1
	ldrb r0, [r0, #0x02]
	ldr r3, _080B27B0 @ =0x00004188
	adds r7, r0, r3
	adds r1, #0x0C
	adds r2, r2, r1
	ldr r0, _080B27B4 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ldr r1, [r2, #0x00]
	b _080B27D8
_080B27A8: .4byte 0xFFFFFE7F
_080B27AC: .4byte 0x083BBDD0
_080B27B0: .4byte 0x00004188
_080B27B4: .4byte 0x0300034C
_080B27B8:
	cmp r0, #0x01
	bne _080B27FC
	ldr r7, _080B27F0 @ =0x00004193
	ldr r2, _080B27F4 @ =0x083BD844
	movs r0, #0x7F
	ands r0, r4
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r0, _080B27F8 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
_080B27D8:
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810D038
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x67
	bl play_sfx_80195B4
	b _080B2832
_080B27F0: .4byte 0x00004193
_080B27F4: .4byte 0x083BD844
_080B27F8: .4byte 0x0300034C
_080B27FC:
	cmp r0, #0x02
	bne _080B2832
	ldr r7, _080B293C @ =0x00004194
	ldr r2, _080B2940 @ =0x083BE67C
	movs r0, #0x7F
	ands r0, r4
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r0, _080B2944 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810D038
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x67
	bl play_sfx_80195B4
_080B2832:
	cmp r7, #0x00
	beq _080B2898
	adds r1, r7, #0x0
	mov r0, r8
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r0, r6, #0x0
	adds r0, #0xC3
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xC4
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	adds r0, r6, #0x0
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	adds r2, r3, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2894
	cmp r1, #0x04
	bne _080B2898
_080B2894:
	ldr r0, _080B2948 @ =0x080B302D
	str r0, [r3, #0x4C]
_080B2898:
	mov r0, r8
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B28A8
	b _080B2BA0
_080B28A8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r2, _080B294C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B2950
	mov r1, r8
	adds r3, r2, #0x0
	adds r4, r5, #0x0
	adds r4, #0xCC
	movs r0, #0xCA
	adds r0, r0, r5
	mov r9, r0
	movs r2, #0x76
	add r2, r8
	mov r10, r2
	adds r7, r5, #0x0
	adds r7, #0x76
	mov r0, r8
	adds r0, #0x84
	str r0, [sp, #0x014]
	mov r2, r8
	cmp r2, #0x00
	beq _080B28F4
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B28E8:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B28E8
_080B28F4:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B290A
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B28FE:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B28FE
_080B290A:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B2920
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2914:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2914
_080B2920:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B29CA
	movs r2, #0x10
_080B292A:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B2934
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B2934:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B292A
	b _080B29CA
_080B293C: .4byte 0x00004194
_080B2940: .4byte 0x083BE67C
_080B2944: .4byte 0x0300034C
_080B2948: .4byte sub_80B302C
_080B294C: .4byte 0x03000FD8
_080B2950:
	mov r1, r8
	adds r3, r2, #0x0
	adds r4, r5, #0x0
	adds r4, #0xCC
	movs r0, #0xCA
	adds r0, r0, r5
	mov r9, r0
	movs r2, #0x76
	add r2, r8
	mov r10, r2
	adds r7, r5, #0x0
	adds r7, #0x76
	mov r0, r8
	adds r0, #0x84
	str r0, [sp, #0x014]
	mov r2, r8
	cmp r2, #0x00
	beq _080B2984
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2978:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2978
_080B2984:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B299A
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B298E:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B298E
_080B299A:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B29B0
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B29A4:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B29A4
_080B29B0:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B29CA
	movs r2, #0x10
_080B29BA:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B29C4
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B29C4:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B29BA
_080B29CA:
	adds r0, r5, #0x0
	bl sub_807EA24
	bl sub_807F448
	ldr r0, [r6, #0x28]
	ldr r3, _080B2AA8 @ =0x00000111
	adds r2, r0, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, _080B2AAC @ =0x040308A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080B2A28
	ldr r3, _080B2AA8 @ =0x00000111
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080B2A74
_080B2A28:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080B2A30
	adds r1, #0xFF
_080B2A30:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080B2A46
	adds r0, #0xFF
_080B2A46:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080B2A5C
	adds r3, #0xFF
_080B2A5C:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080B2AB0 @ =0x00002E47
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080B2A74:
	mov r1, r10
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2A84
	cmp r1, #0x04
	bne _080B2AD2
_080B2A84:
	mov r2, r8
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2AB4
	movs r2, #0x80
	lsls r2, r2, #0x06
	mov r0, r8
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2AC0
	.byte 0x00, 0x00
_080B2AA8: .4byte 0x00000111
_080B2AAC: .4byte 0x040308A8
_080B2AB0: .4byte 0x00002E47
_080B2AB4:
	ldr r2, _080B2B00 @ =0x0000204D
	mov r0, r8
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B2AC0:
	mov r0, r8
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2AD2:
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2AE0
	cmp r1, #0x04
	bne _080B2B20
_080B2AE0:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2B04
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2B10
_080B2B00: .4byte 0x0000204D
_080B2B04:
	ldr r2, _080B2BB0 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B2B10:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2B20:
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2B38
	cmp r1, #0x04
	bne _080B2B92
_080B2B38:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080B2B40
	adds r0, #0xFF
_080B2B40:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x28
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080B2B5A
	adds r2, #0xFF
_080B2B5A:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B2B7E
	adds r0, #0xFF
_080B2B7E:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080B2B92:
	mov r3, r8
	ldr r0, [r3, #0x10]
	ldr r1, [sp, #0x014]
	str r0, [r1, #0x00]
	ldr r0, _080B2BB4 @ =0x080B2BB9
	ldr r2, [sp, #0x008]
	str r0, [r2, #0x4C]
_080B2BA0:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B2BB0: .4byte 0x0000204D
_080B2BB4: .4byte sub_80B2BB8
	thumb_func_start sub_80B2BB8
sub_80B2BB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B2C84 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	mov r0, r8
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r7, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080B2BFE
	adds r0, r2, #0x0
	adds r0, #0x08
	strh r0, [r1, #0x06]
	ldr r2, [r7, #0x08]
	movs r1, #0x06
	ldsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080B2BFE
	strh r1, [r2, #0x06]
_080B2BFE:
	adds r0, r6, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x18]
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080B2C88 @ =0x03001038
	ldr r2, _080B2C8C @ =0x0819832C
	ldr r3, _080B2C90 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080B2C4C
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B2C4E
_080B2C4C:
	movs r1, #0x00
_080B2C4E:
	cmp r1, #0x00
	beq _080B2D04
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2C64
	cmp r1, #0x04
	bne _080B2CB0
_080B2C64:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2C94
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2CA0
_080B2C84: .4byte 0x03000FD8
_080B2C88: .4byte 0x03001038
_080B2C8C: .4byte 0x0819832C
_080B2C90: .4byte 0x08198220
_080B2C94:
	ldr r2, _080B2CE4 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B2CA0:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2CB0:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2CC2
	cmp r1, #0x04
	bne _080B2D04
_080B2CC2:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2CE8
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2CF4
	.byte 0x00, 0x00
_080B2CE4: .4byte 0x0000204D
_080B2CE8:
	ldr r2, _080B2DA4 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B2CF4:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2D04:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B2D14
	b _080B2E1E
_080B2D14:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r1, [r7, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B2D30
	adds r1, #0xFF
_080B2D30:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B2D3A
	adds r2, #0xFF
_080B2D3A:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B2D44
	adds r3, #0xFF
_080B2D44:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B2D56
	adds r1, #0xFF
_080B2D56:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B2D60
	adds r2, #0xFF
_080B2D60:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B2D6A
	adds r3, #0xFF
_080B2D6A:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2D86
	cmp r1, #0x04
	bne _080B2DC4
_080B2D86:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _080B2DA8
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2DB4
	.byte 0x00, 0x00
_080B2DA4: .4byte 0x0000204D
_080B2DA8:
	ldr r2, _080B2DF8 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080B2DB4:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2DC4:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2DD6
	cmp r1, #0x04
	bne _080B2E18
_080B2DD6:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2DFC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2E08
	.byte 0x00, 0x00
_080B2DF8: .4byte 0x0000204D
_080B2DFC:
	ldr r2, _080B2E2C @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080B2E08:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2E18:
	ldr r0, _080B2E30 @ =0x080B2E35
	mov r3, r8
	str r0, [r3, #0x4C]
_080B2E1E:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B2E2C: .4byte 0x0000204D
_080B2E30: .4byte sub_80B2E34
	thumb_func_start sub_80B2E34
sub_80B2E34:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080B2EE4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B2E56
	b _080B3020
_080B2E56:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2E74
	cmp r1, #0x04
	bne _080B2EB2
_080B2E74:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2E82
	adds r0, #0xFF
_080B2E82:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2E90
	adds r0, #0xFF
_080B2E90:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2E9E
	adds r0, #0xFF
_080B2E9E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080B2EB2:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080B2EC6
	cmp r2, #0x04
	bne _080B2F28
_080B2EC6:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2EEC
	ldr r2, _080B2EE8 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2EF8
_080B2EE4: .4byte 0x03000FD8
_080B2EE8: .4byte 0x00002002
_080B2EEC:
	ldr r2, _080B2FC4 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B2EF8:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B2F0E
	movs r2, #0x01
_080B2F0E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B2F28:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B2F36
	cmp r2, #0x04
	bne _080B2F40
_080B2F36:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080B2F40:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B2F54
	cmp r2, #0x04
	bne _080B2F96
_080B2F54:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2F62
	adds r0, #0xFF
_080B2F62:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2F70
	adds r0, #0xFF
_080B2F70:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2F7E
	adds r0, #0xFF
_080B2F7E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080B2F96:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2FA4
	cmp r1, #0x04
	bne _080B3008
_080B2FA4:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2FCC
	ldr r2, _080B2FC8 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2FD8
	.byte 0x00, 0x00
_080B2FC4: .4byte 0x0000204F
_080B2FC8: .4byte 0x00002002
_080B2FCC:
	ldr r2, _080B3028 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B2FD8:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B2FEE
	movs r2, #0x01
_080B2FEE:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B3008:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B3016
	cmp r2, #0x04
	bne _080B3020
_080B3016:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080B3020:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B3028: .4byte 0x0000204F
	thumb_func_start sub_80B302C
sub_80B302C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B3042
	cmp r1, #0x04
	bne _080B309C
_080B3042:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080B304A
	adds r0, #0xFF
_080B304A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x1E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080B3064
	adds r2, #0xFF
_080B3064:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B3088
	adds r0, #0xFF
_080B3088:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080B309C:
	ldr r0, _080B30A8 @ =0x080B30AD
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080B30A8: .4byte sub_80B30AC
	thumb_func_start sub_80B30AC
sub_80B30AC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B30CC
	ldr r0, [r4, #0x08]
	bl sub_807FB64
	ldr r0, _080B30D4 @ =0x080B325D
	str r0, [r4, #0x4C]
_080B30CC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B30D4: .4byte sub_80B325C
