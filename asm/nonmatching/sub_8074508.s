	.syntax unified
	.text

	thumb_func_start sub_8074508
sub_8074508:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _08074520
	movs r0, #0xD5
	bl stop_sfx_80195A8
	ldr r0, _0807451C @ =0x080744B5
	b _08074544
_0807451C: .4byte sub_80744B4
_08074520:
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08074546
	movs r0, #0x01
	bl sub_810CA8C
	adds r1, r5, #0x0
	adds r1, #0xA0
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0xB4
	strh r0, [r4, #0x00]
	ldr r0, _0807454C @ =0x080746ED
_08074544:
	str r0, [r5, #0x4C]
_08074546:
	pop {r4, r5}
	pop {r0}
	bx r0
_0807454C: .4byte sub_80746EC
