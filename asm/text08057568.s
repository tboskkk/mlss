	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8057C9C
sub_8057C9C:
	push {r4, r5, r6, lr}
	mov r12, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r4, #0x00
	movs r3, #0x02
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x00
	bgt _08057CB8
	movs r6, #0x00
	movs r4, #0x04
	b _08057CC8
_08057CB8:
	mov r2, r12
	ldrh r0, [r2, #0x3A]
	subs r0, #0xF0
	cmp r1, r0
	blt _08057CC8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r4, #0x08
_08057CC8:
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bgt _08057CDA
	movs r5, #0x00
	movs r0, #0x01
	orrs r4, r0
	lsls r3, r3, #0x01
	b _08057CF8
_08057CDA:
	lsls r0, r3, #0x01
	mov r1, r12
	adds r1, #0x3C
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	adds r3, r0, #0x0
	cmp r2, r1
	blt _08057CF8
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x02
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
_08057CF8:
	mov r1, r12
	adds r1, #0x66
	adds r1, r1, r3
	mov r0, r12
	adds r0, #0x4E
	adds r0, r0, r3
	ldrh r2, [r0, #0x00]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x6C
	adds r1, r1, r3
	mov r0, r12
	adds r0, #0x54
	adds r0, r0, r3
	ldrh r2, [r0, #0x00]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
