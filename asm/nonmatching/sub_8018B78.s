	push {lr}
	adds r3, r0, #0x0
	adds r2, r1, #0x0
	cmp r2, #0x00
	bne _08018B84
	ldr r2, _08018B94 @ =0x08018B75
_08018B84:
	ldr r1, _08018B98 @ =0x04000208
	movs r0, #0x00
	strh r0, [r1, #0x00]
	cmp r3, #0x02
	bne _08018BA4
	ldr r0, _08018B9C @ =0x0300034C
	ldr r1, _08018BA0 @ =0x000008C4
	b _08018BA8
_08018B94: .4byte nullsub_16
_08018B98: .4byte 0x04000208
_08018B9C: .4byte 0x0300034C
_08018BA0: .4byte 0x000008C4
_08018BA4:
	ldr r1, _08018BB8 @ =0x03000014
	lsls r0, r3, #0x02
_08018BA8:
	adds r0, r0, r1
	str r2, [r0, #0x00]
	ldr r1, _08018BBC @ =0x04000208
	movs r0, #0x01
	strh r0, [r1, #0x00]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08018BB8: .4byte 0x03000014
_08018BBC: .4byte 0x04000208
