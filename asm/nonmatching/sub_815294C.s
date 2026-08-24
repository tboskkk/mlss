	.syntax unified
	.text

	thumb_func_start sub_815294C
sub_815294C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r6, [r0, #0x14]
	bl sub_8021F7C
	bl sub_8020A78
	ldr r4, _08152B98 @ =0x0300034C
	movs r0, #0x88
	lsls r0, r0, #0x04
	adds r4, r4, r0
	ldr r7, [r4, #0x00]
	ldr r2, _08152B9C @ =0x03000D48
	ldr r5, _08152BA0 @ =0x0203FFB8
	ldr r0, [r5, #0x3C]
	ldr r3, _08152BA4 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _08152BA8 @ =0x03000D4C
	ldr r0, [r5, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r7, #0x0
	bl _call_via_r2
	adds r7, r0, #0x0
	str r7, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x1C
	ldr r4, _08152BAC @ =0x00001888
	adds r1, r6, r4
	ldr r2, _08152BB0 @ =0x00001CB8
	adds r7, r6, r2
	ldr r1, [r1, #0x00]
	ldr r2, [r7, #0x00]
	adds r1, r1, r2
	asrs r1, r1, #0x08
	ldr r3, _08152BB4 @ =0x0000188C
	adds r2, r6, r3
	ldr r4, _08152BB8 @ =0x00001CBC
	adds r4, r4, r6
	mov r8, r4
	ldr r2, [r2, #0x00]
	ldr r3, [r4, #0x00]
	adds r2, r2, r3
	asrs r2, r2, #0x08
	bl sub_815FEF8
	movs r1, #0x84
	lsls r1, r1, #0x04
	adds r0, r6, r1
	ldr r2, _08152BBC @ =0x00001890
	adds r4, r6, r2
	ldr r1, [r4, #0x00]
	ldr r2, [r7, #0x00]
	adds r1, r1, r2
	asrs r1, r1, #0x08
	ldr r3, _08152BC0 @ =0x00001894
	adds r5, r6, r3
	ldr r2, [r5, #0x00]
	mov r3, r8
	ldr r3, [r3, #0x00]
	mov r12, r3
	add r2, r12
	asrs r2, r2, #0x08
	bl sub_815FEF8
	ldr r1, _08152BC4 @ =0x00001CC4
	adds r0, r6, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08152A38
	ldr r2, _08152BC8 @ =0x00001064
	adds r2, r2, r6
	mov r12, r2
	ldr r1, [r4, #0x00]
	ldr r0, [r7, #0x00]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _081529F8
	adds r1, #0x03
_081529F8:
	asrs r3, r1, #0x0A
	ldr r1, [r5, #0x00]
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08152A08
	adds r1, #0x03
_08152A08:
	asrs r2, r1, #0x0A
	mov r0, r12
	adds r1, r3, #0x0
	bl sub_815FEF8
	ldr r1, [r4, #0x00]
	ldr r0, [r7, #0x00]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08152A1E
	adds r0, #0x03
_08152A1E:
	asrs r1, r0, #0x0A
	ldr r0, _08152BCC @ =0x02000010
	strh r1, [r0, #0x00]
	ldr r1, [r5, #0x00]
	mov r3, r8
	ldr r0, [r3, #0x00]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08152A32
	adds r0, #0x03
_08152A32:
	asrs r1, r0, #0x0A
	ldr r0, _08152BD0 @ =0x02000012
	strh r1, [r0, #0x00]
_08152A38:
	ldr r2, _08152BD4 @ =0x02000014
	ldr r4, _08152BAC @ =0x00001888
	adds r0, r6, r4
	ldr r1, _08152BB0 @ =0x00001CB8
	adds r3, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	adds r2, #0x02
	adds r4, #0x04
	adds r0, r6, r4
	ldr r1, _08152BB8 @ =0x00001CBC
	adds r4, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x00]
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	ldr r0, _08152BD8 @ =0x02000018
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r2, #0x06
	ldr r1, _08152BBC @ =0x00001890
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldr r1, _08152BC0 @ =0x00001894
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x00]
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	ldr r2, _08152BDC @ =0x00001CC8
	adds r0, r6, r2
	movs r6, #0x00
	ldsh r4, [r0, r6]
	ldr r0, [r3, #0x00]
	asrs r7, r0, #0x08
	cmp r4, #0x00
	beq _08152B8A
	ldr r6, _08152BE0 @ =0x03001014
	ldr r3, [r6, #0x00]
	ldr r0, _08152BE4 @ =0x0000055C
	adds r1, r3, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x04
	strh r0, [r1, #0x00]
	ldrh r5, [r1, #0x00]
	ldr r2, _08152BE8 @ =0x08198504
	lsrs r0, r5, #0x01
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08152AC0
	adds r0, #0x3F
_08152AC0:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	lsls r1, r4, #0x08
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	ldr r0, _08152BEC @ =0x03001034
	movs r2, #0x00
	ldsh r1, [r3, r2]
	movs r2, #0xE4
	lsls r2, r2, #0x01
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r3, [r6, #0x00]
	movs r4, #0x00
	ldsh r2, [r3, r4]
	cmp r2, #0x9F
	bgt _08152B8A
	ldr r0, _08152BF0 @ =0x08198584
	mov r8, r0
	mov r12, r6
	movs r0, #0xA0
	subs r1, r0, r2
	movs r0, #0x01
	ands r1, r0
	cmp r2, #0xA0
	bge _08152AFE
	cmp r1, #0x00
	beq _08152B2C
_08152AFE:
	lsls r1, r2, #0x01
	movs r4, #0xE5
	lsls r4, r4, #0x02
	adds r0, r3, r4
	adds r1, r0, r1
	movs r0, #0xFF
	ands r0, r5
	lsls r0, r0, #0x01
	add r0, r8
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r0, #0x00
	bge _08152B1A
	adds r0, #0x3F
_08152B1A:
	asrs r0, r0, #0x0D
	adds r0, r7, r0
	strh r0, [r1, #0x00]
	adds r0, r5, #0x4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #0x01
	cmp r2, #0x9F
	bgt _08152B8A
_08152B2C:
	mov r0, r12
	ldr r3, [r0, #0x00]
	lsls r1, r2, #0x01
	movs r4, #0xE5
	lsls r4, r4, #0x02
	adds r0, r3, r4
	adds r1, r0, r1
	movs r4, #0xFF
	adds r0, r5, #0x0
	ands r0, r4
	lsls r0, r0, #0x01
	add r0, r8
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r0, #0x00
	bge _08152B4E
	adds r0, #0x3F
_08152B4E:
	asrs r0, r0, #0x0D
	adds r0, r7, r0
	strh r0, [r1, #0x00]
	adds r0, r5, #0x4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r2, #0x1
	lsls r0, r0, #0x01
	movs r6, #0xE5
	lsls r6, r6, #0x02
	adds r1, r3, r6
	adds r1, r1, r0
	adds r0, r5, #0x0
	ands r0, r4
	lsls r0, r0, #0x01
	add r0, r8
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _08152B78
	adds r0, #0x3F
_08152B78:
	asrs r0, r0, #0x0D
	adds r0, r7, r0
	strh r0, [r1, #0x00]
	adds r0, r5, #0x4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #0x02
	cmp r2, #0x9F
	ble _08152B2C
_08152B8A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08152B98: .4byte 0x0300034C
_08152B9C: .4byte 0x03000D48
_08152BA0: .4byte 0x0203FFB8
_08152BA4: .4byte 0x00000A14
_08152BA8: .4byte 0x03000D4C
_08152BAC: .4byte 0x00001888
_08152BB0: .4byte 0x00001CB8
_08152BB4: .4byte 0x0000188C
_08152BB8: .4byte 0x00001CBC
_08152BBC: .4byte 0x00001890
_08152BC0: .4byte 0x00001894
_08152BC4: .4byte 0x00001CC4
_08152BC8: .4byte 0x00001064
_08152BCC: .4byte 0x02000010
_08152BD0: .4byte 0x02000012
_08152BD4: .4byte 0x02000014
_08152BD8: .4byte 0x02000018
_08152BDC: .4byte 0x00001CC8
_08152BE0: .4byte 0x03001014
_08152BE4: .4byte 0x0000055C
_08152BE8: .4byte word_8198504 @ =0x08198504
_08152BEC: .4byte 0x03001034
_08152BF0: .4byte word_8198584 @ =0x08198584
