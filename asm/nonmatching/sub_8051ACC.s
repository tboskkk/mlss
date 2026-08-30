	.syntax unified
	.text

	thumb_func_start sub_8051ACC
sub_8051ACC:
	push {lr}
	adds r2, r0, #0x0
	movs r1, #0x1C
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08051ADC
	movs r0, #0x00
	b _08051AE8
_08051ADC:
	movs r3, #0x1C
	ldsh r1, [r2, r3]
	ldrh r0, [r2, #0x20]
	subs r0, #0xF0
	cmp r1, r0
	ble _08051AEA
_08051AE8:
	strh r0, [r2, #0x1C]
_08051AEA:
	movs r1, #0x1E
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08051AF6
	movs r0, #0x00
	b _08051B02
_08051AF6:
	movs r3, #0x1E
	ldsh r1, [r2, r3]
	ldrh r0, [r2, #0x22]
	subs r0, #0xA0
	cmp r1, r0
	ble _08051B04
_08051B02:
	strh r0, [r2, #0x1E]
_08051B04:
	ldr r0, [r2, #0x44]
	movs r3, #0x1C
	ldsh r1, [r2, r3]
	movs r3, #0x1E
	ldsh r2, [r2, r3]
	bl sub_8057C9C
	pop {r0}
	bx r0
