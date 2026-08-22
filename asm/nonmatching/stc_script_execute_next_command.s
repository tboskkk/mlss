	.syntax unified
	.text

	thumb_func_start stc_script_execute_next_command
stc_script_execute_next_command: @ 080F9718
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	adds r0, r5, #0x0
	adds r0, #0xA7
	ldrb r0, [r0, #0x00]
	cmp r0, #0x5B
	bls _080F972E
	b _080F9D50
_080F972E:
	lsls r0, r0, #0x02
	ldr r1, _080F9738 @ =lbl_080F973C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080F9738: .4byte lbl_080F973C
lbl_080F973C:
	.4byte _080F98AC
	.4byte _080F98B8
	.4byte _080F98C4
	.4byte _080F98D2
	.4byte _080F98E0
	.4byte _080F98F6
	.4byte _080F9902
	.4byte _080F9918
	.4byte _080F9D50
	.4byte _080F9924
	.4byte _080F9D50
	.4byte _080F9D50
	.4byte _080F9D50
	.4byte _080F9930
	.4byte _080F9D50
	.4byte _080F9D50
	.4byte _080F993C
	.4byte _080F9948
	.4byte _080F9954
	.4byte _080F9960
	.4byte _080F996C
	.4byte _080F9978
	.4byte _080F9996
	.4byte _080F9988
	.4byte _080F99A6
	.4byte _080F99B6
	.4byte _080F99C6
	.4byte _080F9D50
	.4byte _080F9A1C
	.4byte _080F9A2C
	.4byte _080F9A3A
	.4byte _080F99D6
	.4byte _080F9A54
	.4byte _080F9A64
	.4byte _080F9A70
	.4byte _080F99E4
	.4byte _080F99F2
	.4byte _080F9A00
	.4byte _080F9A0E
	.4byte _080F9A80
	.4byte _080F9A8E
	.4byte _080F9A9C
	.4byte _080F9AAA
	.4byte _080F9AB8
	.4byte _080F9AD0
	.4byte _080F9D50
	.4byte _080F9D50
	.4byte _080F9ADC
	.4byte _080F9D50
	.4byte _080F9AE6
	.4byte _080F9AF4
	.4byte _080F9B02
	.4byte _080F9B1C
	.4byte _080F9B34
	.4byte _080F9B4C
	.4byte _080F9B70
	.4byte _080F9BCC
	.4byte _080F9B7E
	.4byte _080F9B98
	.4byte _080F9BB0
	.4byte _080F9BBE
	.4byte _080F9BDA
	.4byte _080F9D50
	.4byte _080F9BE8
	.4byte _080F9D50
	.4byte _080F9BF6
	.4byte _080F9C10
	.4byte _080F9C1E
	.4byte _080F9C3A
	.4byte _080F9C46
	.4byte _080F9C2C
	.4byte _080F9C54
	.4byte _080F9C62
	.4byte _080F9C70
	.4byte _080F9C7E
	.4byte _080F9D50
	.4byte _080F9D50
	.4byte _080F9C98
	.4byte _080F9CA4
	.4byte _080F9CB0
	.4byte _080F9CBC
	.4byte _080F9CC8
	.4byte _080F9CD4
	.4byte _080F9CE0
	.4byte _080F9CEC
	.4byte _080F9CF8
	.4byte _080F9D04
	.4byte _080F9D10
	.4byte _080F9D1E
	.4byte _080F9D2A
	.4byte _080F9D34
	.4byte _080F9D40
_080F98AC:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	bl script_cmd_end
	b.n _080F9D4A
_080F98B8:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	bl script_cmd_return
	b.n _080F9D4A
_080F98C4:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl script_cmd_call
	b.n _080F9D4A
_080F98D2:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl script_cmd_wait_frames
	b.n _080F9D4A
_080F98E0:
	ldr r0, [r4, #36] @ 0x24
	movs r1, #154 @ 0x9a
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r3, [r0, #0]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80F9D5C
	b.n _080F9D4A
_080F98F6:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FAD2C
	b.n _080F9D4A
_080F9902:
	ldr r0, [r4, #36] @ 0x24
	movs r2, #154 @ 0x9a
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r3, [r0, #0]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FACCC
	b.n _080F9D4A
_080F9918:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FAC5C
	b.n _080F9D4A
_080F9924:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FAC30
	b.n _080F9D4A
_080F9930:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA734
	b.n _080F9D4A
_080F993C:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FAAA0
	b.n _080F9D4A
_080F9948:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FAA34
	b.n _080F9D4A
_080F9954:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA960
	b.n _080F9D4A
_080F9960:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA908
	b.n _080F9D4A
_080F996C:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA8A4
	b.n _080F9D4A
_080F9978:
	adds r0, r4, #0
	adds r0, #28
	ldr r1, [r4, #40] @ 0x28
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_80EB11C
	b.n _080F9D4A
_080F9988:
	ldr r1, [r4, #40] @ 0x28
	adds r0, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_80FA2F0
	b.n _080F9D4A
_080F9996:
	adds r0, r4, #0
	adds r0, #28
	ldr r1, [r4, #40] @ 0x28
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_80E9D50
	b.n _080F9D4A
_080F99A6:
	adds r0, r4, #0
	adds r0, #28
	ldr r1, [r4, #40] @ 0x28
	adds r2, r5, #0
	adds r3, r6, #0
	bl script_cmd_wait_for_user_input
	b.n _080F9D4A
_080F99B6:
	adds r0, r4, #0
	adds r0, #28
	ldr r1, [r4, #40] @ 0x28
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_80EB09C
	b.n _080F9D4A
_080F99C6:
	adds r0, r4, #0
	adds r0, #28
	ldr r1, [r4, #40] @ 0x28
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_80EB05C
	b.n _080F9D4A
_080F99D6:
	adds r0, r4, #0
	adds r0, #28
	ldr r1, [r4, #40] @ 0x28
	adds r2, r6, #0
	bl sub_80EB048
	b.n _080F9D4A
_080F99E4:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAFB4
	b.n _080F9D4A
_080F99F2:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAF4C
	b.n _080F9D4A
_080F9A00:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAEF8
	b.n _080F9D4A
_080F9A0E:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAEE0
	b.n _080F9D4A
_080F9A1C:
	adds r0, r4, #0
	adds r0, #28
	ldr r1, [r4, #40] @ 0x28
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_80EAEBC
	b.n _080F9D4A
_080F9A2C:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAE9C
	b.n _080F9D4A
_080F9A3A:
	adds r0, r4, #0
	adds r0, #28
	ldr r3, [r4, #36] @ 0x24
	ldr r1, [pc, #12] @ (0x80f9a50)
	adds r3, r3, r1
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAE70
	b.n _080F9D4A
	movs r0, r0
	lsrs r0, r1, #4
	movs r0, r0
_080F9A54:
	adds r0, r4, #0
	adds r0, #28
	ldr r1, [r4, #32]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_80EAE30
	b.n _080F9D4A
_080F9A64:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA600
	b.n _080F9D4A
_080F9A70:
	adds r0, r4, #0
	adds r0, #28
	ldr r1, [r4, #32]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_80EADEC
	b.n _080F9D4A
_080F9A80:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EADC4
	b.n _080F9D4A
_080F9A8E:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAD98
	b.n _080F9D4A
_080F9A9C:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAD7C
	b.n _080F9D4A
_080F9AAA:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80E9E10
	b.n _080F9D4A
_080F9AB8:
	adds r0, r4, #0
	adds r0, #28
	ldr r3, [r4, #36] @ 0x24
	ldr r2, [pc, #12] @ (0x80f9acc)
	adds r3, r3, r2
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EACDC
	b.n _080F9D4A
	lsrs r0, r1, #4
	movs r0, r0
_080F9AD0:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA6DC
	b.n _080F9D4A
_080F9ADC:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80FA6BC
	b.n _080F9D4A
_080F9AE6:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80E9EE0
	b.n _080F9D4A
_080F9AF4:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA064
	b.n _080F9D4A
_080F9B02:
	adds r0, r4, #0
	adds r0, #28
	ldr r3, [r4, #36] @ 0x24
	ldr r1, [pc, #12] @ (0x80f9b18)
	adds r3, r3, r1
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAC78
	b.n _080F9D4A
	movs r0, r0
	lsrs r0, r1, #4
	movs r0, r0
_080F9B1C:
	adds r0, r4, #0
	adds r0, #28
	ldr r3, [r4, #36] @ 0x24
	ldr r2, [pc, #12] @ (0x80f9b30)
	adds r3, r3, r2
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA144
	b.n _080F9D4A
	lsrs r0, r1, #4
	movs r0, r0
_080F9B34:
	adds r0, r4, #0
	adds r0, #28
	ldr r3, [r4, #36] @ 0x24
	ldr r1, [pc, #12] @ (0x80f9b48)
	adds r3, r3, r1
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA358
	b.n _080F9D4A
	lsrs r0, r1, #4
	movs r0, r0
_080F9B4C:
	adds r0, r4, #0
	adds r0, #28
	ldr r1, [r4, #36] @ 0x24
	ldr r2, [pc, #24] @ (0x80f9b6c)
	adds r3, r1, r2
	adds r2, #148 @ 0x94
	adds r1, r1, r2
	str r1, [sp, #0]
	movs r1, #0
	str r1, [sp, #4]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAB98
	b.n _080F9D4A
	movs r0, r0
	lsrs r0, r1, #4
	movs r0, r0
_080F9B70:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAB20
	b.n _080F9D4A
_080F9B7E:
	adds r0, r4, #0
	adds r0, #28
	ldr r3, [r4, #36] @ 0x24
	ldr r1, [pc, #12] @ (0x80f9b94)
	adds r3, r3, r1
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAA84
	b.n _080F9D4A
	movs r0, r0
	lsrs r0, r1, #4
	movs r0, r0
_080F9B98:
	adds r0, r4, #0
	adds r0, #28
	ldr r3, [r4, #36] @ 0x24
	ldr r2, [pc, #12] @ (0x80f9bac)
	adds r3, r3, r2
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAA5C
	b.n _080F9D4A
	lsrs r0, r1, #4
	movs r0, r0
_080F9BB0:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAA04
	b.n _080F9D4A
_080F9BBE:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA9B8
	b.n _080F9D4A
_080F9BCC:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAB00
	b.n _080F9D4A
_080F9BDA:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA9A8
	b.n _080F9D4A
_080F9BE8:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl script_cmd_conditional_jump
	b.n _080F9D4A
_080F9BF6:
	adds r0, r4, #0
	adds r0, #28
	ldr r3, [r4, #36] @ 0x24
	ldr r1, [pc, #12] @ (0x80f9c0c)
	adds r3, r3, r1
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA968
	b.n _080F9D4A
	movs r0, r0
	lsrs r0, r1, #4
	movs r0, r0
_080F9C10:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA940
	b.n _080F9D4A
_080F9C1E:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA928
	b.n _080F9D4A
_080F9C2C:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA91C
	b.n _080F9D4A
_080F9C3A:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	bl sub_80EA904
	b.n _080F9D4A
_080F9C46:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA478
	b.n _080F9D4A
_080F9C54:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA8DC
	b.n _080F9D4A
_080F9C62:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA8A4
	b.n _080F9D4A
_080F9C70:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA88C
	b.n _080F9D4A
_080F9C7E:
	adds r0, r4, #0
	adds r0, #28
	ldr r3, [r4, #36] @ 0x24
	ldr r2, [pc, #12] @ (0x80f9c94)
	adds r3, r3, r2
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EA854
	b.n _080F9D4A
	movs r0, r0
	lsrs r0, r1, #4
	movs r0, r0
_080F9C98:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80F9E64
	b.n _080F9D4A
_080F9CA4:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80F9F2C
	b.n _080F9D4A
_080F9CB0:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FACA4
	b.n _080F9D4A
_080F9CBC:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA078
	b.n _080F9D4A
_080F9CC8:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA180
	b.n _080F9D4A
_080F9CD4:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA220
	b.n _080F9D4A
_080F9CE0:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FAB9C
	b.n _080F9D4A
_080F9CEC:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FAB18
	b.n _080F9D4A
_080F9CF8:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA104
	b.n _080F9D4A
_080F9D04:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA9C4
	b.n _080F9D4A
_080F9D10:
	adds r0, r4, #0
	adds r0, #28
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80EAACC
	b.n _080F9D4A
_080F9D1E:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA818
	b.n _080F9D4A
_080F9D2A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80FA7E4
	b.n _080F9D4A
_080F9D34:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA7C4
	b.n _080F9D4A
_080F9D40:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80FA7A0
_080F9D4A:
	lsls r0, r0, #24
	asrs r0, r0, #24
	b.n _080F9D52
_080F9D50:
	movs r0, #0x01
_080F9D52:
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
