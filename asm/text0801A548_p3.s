	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8029030
sub_8029030:
	ldr r3, _0802905C @ =0x0000012D
	adds r3, r3, r0
	mov r12, r3
	ldrb r0, [r3, #0x00]
	movs r3, #0x01
	orrs r0, r3
	ands r1, r3
	lsls r1, r1, #0x01
	movs r3, #0x03
	negs r3, r3
	ands r0, r3
	orrs r0, r1
	movs r1, #0x03
	ands r2, r1
	lsls r2, r2, #0x02
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	mov r1, r12
	strb r0, [r1, #0x00]
	bx lr
_0802905C: .4byte 0x0000012D
