	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r4, _080B7E5C @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r8, r0
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	adds r3, r4, #0x0
	cmp r0, #0x06
	bne _080B7EDC
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B7E60
	mov r2, r8
	adds r5, #0x7E
	cmp r2, #0x00
	beq _080B7E12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E06
_080B7E12:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7E28
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E1C
_080B7E28:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B7E3E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E32:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E32
_080B7E3E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B7EBE
	movs r1, #0x10
_080B7E48:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7E52
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7E52:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7E48
	b _080B7EBE
	.byte 0x00, 0x00
_080B7E5C: .4byte 0x03000FD8
_080B7E60:
	mov r2, r8
	adds r5, #0x7E
	cmp r2, #0x00
	beq _080B7E78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E6C
_080B7E78:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7E8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E82
_080B7E8E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B7EA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E98
_080B7EA4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B7EBE
	movs r1, #0x10
_080B7EAE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7EB8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7EB8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7EAE
_080B7EBE:
	bl sub_807F448
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7ED2
	cmp r2, #0x04
	beq _080B7ED2
	b _080B85B4
_080B7ED2:
	ldr r0, _080B7ED8 @ =0x080B869D
	str r0, [r6, #0x4C]
	b _080B85B4
_080B7ED8: .4byte sub_80B869C
_080B7EDC:
	adds r0, r5, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x01
	adds r0, r2, r1
	lsls r0, r0, #0x02
	negs r0, r0
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r4, r0, r3
	lsls r1, r1, #0x03
	negs r1, r1
	adds r0, r3, #0x0
	adds r0, r1, r0
	str r0, [sp, #0x008]
	add r10, r2
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080B7F18
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B7F18:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080B7F28
	b _080B844E
_080B7F28:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080B7F30
	movs r1, #0x00
_080B7F30:
	ldr r0, _080B7FC8 @ =0x00007FFF
	cmp r1, r0
	ble _080B7F38
	adds r1, r0, #0x0
_080B7F38:
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B7F4E
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080B7F50
_080B7F4E:
	movs r2, #0x00
_080B7F50:
	adds r5, r6, #0x0
	adds r5, #0x7E
	movs r3, #0xAE
	adds r3, r3, r6
	mov r9, r3
	cmp r2, #0x00
	beq _080B8034
	ldr r2, _080B7FCC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B7FD0
	mov r2, r8
	cmp r2, #0x00
	beq _080B7F82
	movs r1, #0x33
_080B7F76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7F76
_080B7F82:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7F96
	movs r1, #0x33
_080B7F8A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7F8A
_080B7F96:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B7FAA
	movs r1, #0x33
_080B7F9E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7F9E
_080B7FAA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B802C
	movs r1, #0x03
_080B7FB4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7FBE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7FBE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7FB4
	b _080B802C
	.byte 0x00, 0x00
_080B7FC8: .4byte 0x00007FFF
_080B7FCC: .4byte 0x03000FD8
_080B7FD0:
	mov r2, r8
	cmp r2, #0x00
	beq _080B7FE6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7FDA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7FDA
_080B7FE6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7FFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7FF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7FF0
_080B7FFC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8012
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8006:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8006
_080B8012:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B802C
	movs r1, #0x10
_080B801C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8026
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8026:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B801C
_080B802C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B8034:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080B803E
	movs r1, #0x00
_080B803E:
	mov r0, r10
	cmp r0, #0x00
	bge _080B8046
	movs r2, #0x00
_080B8046:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B8050
	adds r1, r0, #0x0
_080B8050:
	ldr r0, _080B8144 @ =0x00007FFF
	cmp r2, r0
	ble _080B8058
	adds r2, r0, #0x0
_080B8058:
	cmp r2, r1
	bge _080B805E
	adds r1, r2, #0x0
_080B805E:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, r1
	blt _080B8074
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B8076
_080B8074:
	movs r1, #0x00
_080B8076:
	cmp r1, #0x00
	bne _080B807C
	b _080B81C4
_080B807C:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B8148 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B809A
	b _080B81C4
_080B809A:
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080B814C @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080B81B2
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8150
	mov r2, r8
	adds r3, r4, #0x0
	cmp r2, #0x00
	beq _080B80FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B80EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B80EE
_080B80FA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8110
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8104:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8104
_080B8110:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8126
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B811A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B811A
_080B8126:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B81AE
	movs r1, #0x10
_080B8130:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B813A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B813A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8130
	b _080B81AE
	.byte 0x00, 0x00
_080B8144: .4byte 0x00007FFF
_080B8148: .4byte 0x0300034C
_080B814C: .4byte 0x03000FD8
_080B8150:
	mov r2, r8
	adds r3, r4, #0x0
	cmp r2, #0x00
	beq _080B8168
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B815C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B815C
_080B8168:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B817E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8172:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8172
_080B817E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8194
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8188:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8188
_080B8194:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B81AE
	movs r1, #0x10
_080B819E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B81A8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B81A8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B819E
_080B81AE:
	bl sub_807F448
_080B81B2:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080B8298 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B81C4:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B81D0
	b _080B844E
_080B81D0:
	mov r1, r10
	cmp r1, #0x00
	bge _080B81D8
	movs r1, #0x00
_080B81D8:
	ldr r0, _080B829C @ =0x00007FFF
	cmp r1, r0
	ble _080B81E0
	adds r1, r0, #0x0
_080B81E0:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B81F6
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B81F8
_080B81F6:
	movs r2, #0x00
_080B81F8:
	cmp r2, #0x00
	bne _080B81FE
	b _080B830C
_080B81FE:
	ldr r3, _080B82A0 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080B8298 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B82A4
	mov r2, r8
	cmp r2, #0x00
	beq _080B824E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8242:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8242
_080B824E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8264
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8258:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8258
_080B8264:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B827A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B826E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B826E
_080B827A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8300
	movs r1, #0x10
_080B8284:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B828E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B828E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8284
	b _080B8300
	.byte 0x00, 0x00
_080B8298: .4byte 0x00000FFF
_080B829C: .4byte 0x00007FFF
_080B82A0: .4byte 0x03000FD8
_080B82A4:
	mov r2, r8
	cmp r2, #0x00
	beq _080B82BA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B82AE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B82AE
_080B82BA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B82D0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B82C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B82C4
_080B82D0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B82E6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B82DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B82DA
_080B82E6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8300
	movs r1, #0x10
_080B82F0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B82FA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B82FA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B82F0
_080B8300:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080B844E
_080B830C:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, r10
	ble _080B8316
	b _080B844E
_080B8316:
	ldr r0, _080B83D0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B8324
	b _080B844E
_080B8324:
	ldr r2, _080B83D4 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r5, [r2, #0x00]
	ldrb r0, [r5, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080B844E
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080B83D8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r5, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B83DC
	mov r2, r8
	cmp r2, #0x00
	beq _080B8386
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B837A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B837A
_080B8386:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B839C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8390:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8390
_080B839C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B83B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B83A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B83A6
_080B83B2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8438
	movs r1, #0x10
_080B83BC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B83C6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B83C6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B83BC
	b _080B8438
	.byte 0x00, 0x00
_080B83D0: .4byte 0x0300034C
_080B83D4: .4byte 0x03000FD8
_080B83D8: .4byte 0x00000FFF
_080B83DC:
	mov r2, r8
	cmp r2, #0x00
	beq _080B83F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B83E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B83E6
_080B83F2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8408
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B83FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B83FC
_080B8408:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B841E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8412:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8412
_080B841E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8438
	movs r1, #0x10
_080B8428:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8432
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8432:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8428
_080B8438:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080B844E:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080B845A
	b _080B8568
_080B845A:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	cmp r1, #0x00
	bge _080B8466
	movs r1, #0x00
_080B8466:
	cmp r2, #0x00
	bge _080B846C
	movs r2, #0x00
_080B846C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B8476
	adds r1, r0, #0x0
_080B8476:
	ldr r0, _080B84AC @ =0x00007FFF
	cmp r2, r0
	ble _080B847E
	adds r2, r0, #0x0
_080B847E:
	cmp r2, r1
	bge _080B8484
	adds r1, r2, #0x0
_080B8484:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080B849E
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B84A0
_080B849E:
	movs r1, #0x00
_080B84A0:
	cmp r1, #0x00
	beq _080B8568
	cmp r4, #0x01
	ble _080B84B4
	ldr r5, _080B84B0 @ =0x040A1889
	b _080B84B6
_080B84AC: .4byte 0x00007FFF
_080B84B0: .4byte 0x040A1889
_080B84B4:
	ldr r5, _080B84F8 @ =0x040A1789
_080B84B6:
	adds r2, r6, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080B84FC
	cmp r1, #0x01
	bne _080B84FC
	adds r0, r6, #0x0
	bl sub_8086764
	b _080B85B4
	.byte 0x00, 0x00
_080B84F8: .4byte 0x040A1789
_080B84FC:
	cmp r4, #0x01
	ble _080B852C
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B8508
	adds r1, #0xFF
_080B8508:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B8512
	adds r2, #0xFF
_080B8512:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B851C
	adds r3, #0xFF
_080B851C:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B8528 @ =0x00002E29
	bl sub_80DF024
	b _080B8552
_080B8528: .4byte 0x00002E29
_080B852C:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B8534
	adds r1, #0xFF
_080B8534:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B853E
	adds r2, #0xFF
_080B853E:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B8548
	adds r3, #0xFF
_080B8548:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B85C4 @ =0x000006E3
	bl sub_80DF024
_080B8552:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080B85C8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080B8568:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B85B4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B8592
	cmp r1, #0x04
	bne _080B85AE
_080B8592:
	ldr r2, _080B85CC @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x07
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
_080B85AE:
	ldr r0, _080B85D0 @ =0x080B85D5
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080B85B4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B85C4: .4byte 0x000006E3
_080B85C8: .4byte 0x00000FFF
_080B85CC: .4byte 0x0000204D
_080B85D0: .4byte sub_80B85D4
