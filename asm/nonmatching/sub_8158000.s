	.syntax unified
	.text

	thumb_func_start sub_8158000
sub_8158000:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0815803C @ =0x08CDC4D0
	str r0, [r4, #0x04]
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	beq _08158016
	movs r1, #0x03
	bl sub_81617F4
_08158016:
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _08158022
	movs r1, #0x03
	bl sub_8161C08
_08158022:
	ldr r0, _08158040 @ =0x08CDCA30
	str r0, [r4, #0x04]
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08158034
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_08158034:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815803C: .4byte 0x08CDC4D0
_08158040: .4byte 0x08CDCA30
