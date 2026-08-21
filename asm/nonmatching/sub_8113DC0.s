	.syntax unified
	.text

	thumb_func_start sub_8113DC0
sub_8113DC0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08113DE8
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08113DE8
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x86
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	b _08113E12
_08113DE8:
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08113E12
	adds r2, r4, #0x0
	adds r2, #0x98
	ldr r0, [r4, #0x28]
	ldr r1, _08113E18 @ =0x00000113
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x08
	cmp r0, #0x00
	beq _08113E0C
	movs r1, #0x80
	lsls r1, r1, #0x07
_08113E0C:
	str r1, [r2, #0x00]
	ldr r0, _08113E1C @ =0x08113BA5
	str r0, [r4, #0x4C]
_08113E12:
	pop {r4}
	pop {r0}
	bx r0
_08113E18: .4byte 0x00000113
_08113E1C: .4byte sub_8113BA4
