	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8059F24
sub_8059F24:
	mov r12, r0
	ldr r3, _08059F70 @ =0x02000014
	adds r0, #0x5A
	ldrh r2, [r0, #0x00]
	ldr r1, _08059F74 @ =0x000001FF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	mov r0, r12
	adds r0, #0x5C
	ldrh r2, [r0, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _08059F78 @ =0x0200001C
	mov r0, r12
	adds r0, #0x5E
	ldrh r0, [r0, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _08059F7C @ =0x02000016
	mov r0, r12
	adds r0, #0x60
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r12
	adds r0, #0x62
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r12
	adds r0, #0x64
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	bx lr
	.byte 0x00, 0x00
_08059F70: .4byte 0x02000014
_08059F74: .4byte 0x000001FF
_08059F78: .4byte 0x0200001C
_08059F7C: .4byte 0x02000016
	thumb_func_start sub_8059F80
sub_8059F80:
	push {lr}
	ldr r0, _08059F98 @ =0x0300034C
	ldr r1, _08059F9C @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08059FA4
	ldr r2, _08059FA0 @ =0x088D4808
	b _08059FA6
	.byte 0x00, 0x00
_08059F98: .4byte 0x0300034C
_08059F9C: .4byte 0x00000888
_08059FA0: .4byte 0x088D4808
_08059FA4:
	ldr r2, _08059FCC @ =0x088C8730
_08059FA6:
	ldr r1, _08059FD0 @ =0x083AAD68
	ldr r0, _08059FD4 @ =0x03000DD0
	ldrb r0, [r0, #0x05]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r0, r2, r0
	ldr r1, _08059FD8 @ =0x02000080
	movs r2, #0x78
	bl CpuFastSet
	ldr r1, _08059FDC @ =0x0300034C
	ldr r0, _08059FE0 @ =0x00007FFF
	strh r0, [r1, #0x02]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08059FCC: .4byte 0x088C8730
_08059FD0: .4byte 0x083AAD68
_08059FD4: .4byte 0x03000DD0
_08059FD8: .4byte 0x02000080
_08059FDC: .4byte 0x0300034C
_08059FE0: .4byte 0x00007FFF
	thumb_func_start sub_8059FE4
sub_8059FE4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8059F24
	adds r0, r4, #0x0
	bl sub_80582DC
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_80587BC
	adds r0, r4, #0x0
	bl sub_8058278
	adds r0, r4, #0x0
	bl sub_80584F8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start stage_room_solidity_grid
stage_room_solidity_grid:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	ldr r2, _0805A028 @ =solidity_grid_offset_table
	ldr r1, _0805A02C @ =room_solidity_index_table
	ldrh r0, [r3, #0x1E]
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldrh r0, [r0, #0x06]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r7, r0, r2
	movs r5, #0x00
	b _0805A056
_0805A028: .4byte solidity_grid_offset_table
_0805A02C: .4byte room_solidity_index_table
_0805A030:
	movs r2, #0x00
	ldrh r0, [r3, #0x26]
	adds r6, r5, #0x1
	cmp r2, r0
	bge _0805A054
	adds r4, r3, #0x0
	adds r4, #0x9C
_0805A03E:
	muls r0, r5
	ldr r1, [r4, #0x00]
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r7, r0
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	adds r2, #0x01
	ldrh r0, [r3, #0x26]
	cmp r2, r0
	blt _0805A03E
_0805A054:
	adds r5, r6, #0x0
_0805A056:
	ldrh r0, [r3, #0x28]
	cmp r5, r0
	blt _0805A030
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
