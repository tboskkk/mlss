	.syntax unified
	.text

	thumb_func_start sub_80E3DA4
sub_80E3DA4:
	push {lr}
	bl sub_8082B00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _080E3DC8
	ldr r0, _080E3DC0 @ =0x0300034C
	ldr r2, _080E3DC4 @ =0x00000884
	adds r0, r0, r2
	str r1, [r0, #0x00]
	movs r0, #0x00
	b _080E3DCA
	.byte 0x00, 0x00
_080E3DC0: .4byte 0x0300034C
_080E3DC4: .4byte 0x00000884
_080E3DC8:
	movs r0, #0x01
_080E3DCA:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
