	.syntax unified
	.text

	thumb_func_start sub_80976D0
sub_80976D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	ldr r0, _0809770C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r2, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldrb r0, [r2, #0x0C]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x0C]
	cmp r7, r6
	bne _08097710
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_807E680
	b _08097722
_0809770C: .4byte 0x03000FD8
_08097710:
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807E680
_08097722:
	ldr r5, _08097928 @ =0x03000FDC
	ldr r0, [r5, #0x00]
	ldr r1, _0809792C @ =0x0000547C
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	ldr r1, [r5, #0x00]
	ldr r2, _08097930 @ =0x00005478
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	adds r4, r7, #0x0
	adds r4, #0xA0
	ldr r0, [r4, #0x00]
	cmp r1, r0
	bcs _08097756
	movs r0, #0x00
	str r0, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_8097CB4
_08097756:
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	cmp r7, r6
	bne _0809776C
	ldr r0, _08097934 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08097780
_0809776C:
	adds r6, r7, #0x0
	adds r6, #0x9C
	cmp r7, r8
	bne _08097862
	ldr r0, _08097934 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08097862
_08097780:
	ldr r5, _08097928 @ =0x03000FDC
	ldr r0, [r5, #0x00]
	ldr r1, _08097938 @ =0x00005470
	mov r9, r1
	add r0, r9
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r4, r0, #0x0
	adds r6, r7, #0x0
	adds r6, #0x9C
	ldr r5, [r5, #0x00]
	mov r8, r5
	ldr r0, _0809793C @ =0x00005498
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_81DB964
	ldr r2, _08097940 @ =0x3FF66666
	ldr r3, _08097944 @ =0x66666666
	bl sub_81DB240
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	ldr r0, _08097948 @ =0x0000549C
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_81DB964
	str r0, [sp, #0x00C]
	str r1, [sp, #0x010]
	adds r0, r4, #0x0
	bl sub_81DB964
	cmp r4, #0x00
	bge _080977D8
	ldr r2, _0809794C @ =0x41F00000
	ldr r3, _08097950 @ =0x00000000
	bl sub_81DB1D8
_080977D8:
	ldr r2, _08097954 @ =0x3FE00000
	ldr r3, _08097958 @ =0x00000000
	bl sub_81DB240
	ldr r2, _0809795C @ =0x3FD33333
	ldr r3, _08097960 @ =0x33333333
	bl sub_81DB1D8
	adds r5, r1, #0x0
	adds r4, r0, #0x0
	ldr r0, [r7, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	movs r2, #0x20
	ldsh r1, [r7, r2]
	bl __divsi3
	mov r1, r8
	add r1, r9
	ldr r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08097810
	adds r0, #0xFF
_08097810:
	asrs r0, r0, #0x08
	bl sub_81DB964
	adds r3, r1, #0x0
	adds r2, r0, #0x0
	adds r1, r5, #0x0
	adds r0, r4, #0x0
	bl sub_81DB1D8
	adds r3, r1, #0x0
	adds r2, r0, #0x0
	ldr r0, [sp, #0x00C]
	ldr r1, [sp, #0x010]
	bl sub_81DB240
	adds r3, r1, #0x0
	adds r2, r0, #0x0
	ldr r0, [sp, #0x004]
	ldr r1, [sp, #0x008]
	bl sub_81DB1D8
	ldr r2, _08097964 @ =0x40700000
	ldr r3, _08097968 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	ldr r1, [r6, #0x00]
	subs r1, r1, r0
	str r1, [r6, #0x00]
	ldr r0, [r7, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _08097862
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08097862:
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809787A
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809787A:
	ldr r0, [r6, #0x00]
	subs r0, #0x19
	str r0, [r6, #0x00]
	ldr r0, [r7, #0x10]
	ldr r1, _0809796C @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #0x10]
	ldr r1, [r6, #0x00]
	cmp r0, r1
	bge _08097890
	str r1, [r7, #0x10]
_08097890:
	ldr r6, _08097970 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x04
	adds r1, r0, r2
	ldr r0, [r7, #0x10]
	cmp r1, r0
	blt _0809791A
	str r1, [r7, #0x10]
	adds r0, r7, #0x0
	bl sub_807EA24
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080978CA
	cmp r1, #0x04
	bne _08097916
_080978CA:
	ldr r0, [r7, #0x08]
	movs r1, #0x02
	ldsh r5, [r0, r1]
	ldr r0, [r6, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, #0x0C
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r5
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_80880C4
_08097916:
	ldr r0, _08097974 @ =0x08097E29
	str r0, [r7, #0x4C]
_0809791A:
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08097928: .4byte 0x03000FDC
_0809792C: .4byte 0x0000547C
_08097930: .4byte 0x00005478
_08097934: .4byte 0x0300034C
_08097938: .4byte 0x00005470
_0809793C: .4byte 0x00005498
_08097940: .4byte 0x3FF66666
_08097944: .4byte 0x66666666
_08097948: .4byte 0x0000549C
_0809794C: .4byte 0x41F00000
_08097950: .4byte 0x00000000
_08097954: .4byte 0x3FE00000
_08097958: .4byte 0x00000000
_0809795C: .4byte 0x3FD33333
_08097960: .4byte 0x33333333
_08097964: .4byte 0x40700000
_08097968: .4byte 0x00000000
_0809796C: .4byte 0xFFFFFE00
_08097970: .4byte 0x03000FD8
_08097974: .4byte sub_8097E28
