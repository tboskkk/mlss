	.syntax unified
	.text

	thumb_func_start sub_81655B0
sub_81655B0:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _081656B0 @ =0x08CDD158
	str r0, [r4, #0x10]
	ldr r2, _081656B4 @ =0x08212B98
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x03
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r4, #0x04]
	adds r0, r5, #0x0
	bl sub_8163CD4
	ldr r2, _081656B8 @ =0x08212BA0
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x04
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_8163CD4
	ldr r2, _081656BC @ =0x08212BA8
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x05
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r4, #0x08]
	adds r0, r5, #0x0
	bl sub_8163CD4
	ldr r2, _081656C0 @ =0x08212BB0
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x06
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r4, #0x0C]
	adds r0, r5, #0x0
	bl sub_8163CD4
	ldr r0, [r4, #0x04]
	ldr r6, _081656C4 @ =0x00005002
	movs r1, #0x01
	mov r8, r1
	str r1, [sp, #0x000]
	movs r5, #0x03
	str r5, [sp, #0x004]
	movs r1, #0x04
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r4, #0x00]
	movs r1, #0x02
	str r1, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r1, #0x04
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r4, #0x08]
	movs r5, #0x0A
	str r5, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	movs r1, #0x04
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r4, #0x0C]
	str r5, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	movs r1, #0x04
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r4, #0x04]
	ldr r1, _081656C8 @ =0x082154B2
	bl sub_81639E0
	ldr r0, [r4, #0x00]
	ldr r1, _081656CC @ =0x082154A8
	bl sub_81639E0
	ldr r0, [r4, #0x08]
	ldr r1, _081656D0 @ =0x082154BC
	bl sub_81639E0
	ldr r0, [r4, #0x0C]
	ldr r1, _081656D4 @ =0x082154CA
	bl sub_81639E0
	adds r0, r4, #0x0
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081656B0: .4byte 0x08CDD158
_081656B4: .4byte 0x08212B98
_081656B8: .4byte 0x08212BA0
_081656BC: .4byte 0x08212BA8
_081656C0: .4byte 0x08212BB0
_081656C4: .4byte 0x00005002
_081656C8: .4byte 0x082154B2
_081656CC: .4byte 0x082154A8
_081656D0: .4byte 0x082154BC
_081656D4: .4byte 0x082154CA
