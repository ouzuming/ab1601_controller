
/cygdrive/c/Airoha/AiroBlueSDK/AB1600_1_0_5_0/projects/TRSPX/output/trspx_2.out:     file format elf32-nds32


Disassembly of section .text:

000c8030 <memcmp>:
   c8030:	99 42       	add333 $r5,$r0,$r2
   c8032:	d0 09       	beqs38 $r0,c8044 <memcmp+0x14>
   c8034:	08 30 00 01 	lbi.bi $r3,[$r0],#0x1
   c8038:	08 40 80 01 	lbi.bi $r4,[$r1],#0x1
   c803c:	4c 32 3f fb 	beq $r3,$r4,c8032 <memcmp+0x2>
   c8040:	9a 1c       	sub333 $r0,$r3,$r4
   c8042:	dd 9e       	ret5 $lp
   c8044:	84 00       	movi55 $r0,#0
   c8046:	dd 9e       	ret5 $lp

000c8048 <memcpy>:
   c8048:	80 60       	mov55 $r3,$r0
   c804a:	c2 07       	beqz38 $r2,c8058 <memcpy+0x10>
   c804c:	99 4a       	add333 $r5,$r1,$r2
   c804e:	08 40 80 01 	lbi.bi $r4,[$r1],#0x1
   c8052:	18 41 80 01 	sbi.bi $r4,[$r3],#0x1
   c8056:	d9 fc       	bnes38 $r1,c804e <memcpy+0x6>
   c8058:	dd 9e       	ret5 $lp
   c805a:	92 00       	nop16

000c805c <memmove>:
   c805c:	c2 14       	beqz38 $r2,c8084 <memmove+0x28>
   c805e:	80 60       	mov55 $r3,$r0
   c8060:	e2 20       	slt45 $r1,$r0
   c8062:	e8 0b       	beqzs8 c8078 <memmove+0x1c>
   c8064:	9e 91       	subi333 $r2,$r2,#1
   c8066:	98 da       	add333 $r3,$r3,$r2
   c8068:	99 4a       	add333 $r5,$r1,$r2
   c806a:	9e 49       	subi333 $r1,$r1,#1
   c806c:	08 42 ff ff 	lbi.bi $r4,[$r5],#-0x1
   c8070:	18 41 ff ff 	sbi.bi $r4,[$r3],#-0x1
   c8074:	d9 fc       	bnes38 $r1,c806c <memmove+0x10>
   c8076:	dd 9e       	ret5 $lp
   c8078:	99 4a       	add333 $r5,$r1,$r2
   c807a:	08 40 80 01 	lbi.bi $r4,[$r1],#0x1
   c807e:	18 41 80 01 	sbi.bi $r4,[$r3],#0x1
   c8082:	d9 fc       	bnes38 $r1,c807a <memmove+0x1e>
   c8084:	dd 9e       	ret5 $lp
   c8086:	92 00       	nop16

000c8088 <memset>:
   c8088:	80 60       	mov55 $r3,$r0
   c808a:	99 5a       	add333 $r5,$r3,$r2
   c808c:	d3 04       	beqs38 $r3,c8094 <memset+0xc>
   c808e:	18 11 80 01 	sbi.bi $r1,[$r3],#0x1
   c8092:	d5 fd       	j8 c808c <memset+0x4>
   c8094:	dd 9e       	ret5 $lp
   c8096:	92 00       	nop16

000c8098 <strcmp>:
   c8098:	40 50 80 04 	or $r5,$r1,$r0
   c809c:	97 4f       	fexti33 $r5,#0x1
   c809e:	cd 1b       	bnez38 $r5,c80d4 <strcmp+0x3c>
   c80a0:	b4 a0       	lwi450 $r5,[$r0]
   c80a2:	b4 61       	lwi450 $r3,[$r1]
   c80a4:	4c 51 c0 18 	bne $r5,$r3,c80d4 <strcmp+0x3c>
   c80a8:	46 4f ef ef 	sethi $r4,#0xfefef
   c80ac:	58 42 0e ff 	ori $r4,$r4,#0xeff
   c80b0:	46 28 08 08 	sethi $r2,#0x80808
   c80b4:	58 21 00 80 	ori $r2,$r2,#0x80
   c80b8:	40 32 94 05 	nor $r3,$r5,$r5
   c80bc:	40 52 90 00 	add $r5,$r5,$r4
   c80c0:	40 52 8c 02 	and $r5,$r5,$r3
   c80c4:	40 52 88 02 	and $r5,$r5,$r2
   c80c8:	cd 0e       	bnez38 $r5,c80e4 <strcmp+0x4c>
   c80ca:	9c 04       	addi333 $r0,$r0,#4
   c80cc:	b4 a0       	lwi450 $r5,[$r0]
   c80ce:	9c 4c       	addi333 $r1,$r1,#4
   c80d0:	b4 61       	lwi450 $r3,[$r1]
   c80d2:	d3 f3       	beqs38 $r3,c80b8 <strcmp+0x20>
   c80d4:	a7 40       	lbi333 $r5,[$r0+#0x0]
   c80d6:	a6 c8       	lbi333 $r3,[$r1+#0x0]
   c80d8:	db 04       	bnes38 $r3,c80e0 <strcmp+0x48>
   c80da:	9c 01       	addi333 $r0,$r0,#1
   c80dc:	9c 49       	addi333 $r1,$r1,#1
   c80de:	cd fb       	bnez38 $r5,c80d4 <strcmp+0x3c>
   c80e0:	9a 2b       	sub333 $r0,$r5,$r3
   c80e2:	dd 9e       	ret5 $lp
   c80e4:	84 00       	movi55 $r0,#0
   c80e6:	dd 9e       	ret5 $lp

000c80e8 <strcpy>:
   c80e8:	80 60       	mov55 $r3,$r0
   c80ea:	08 40 80 01 	lbi.bi $r4,[$r1],#0x1
   c80ee:	18 41 80 01 	sbi.bi $r4,[$r3],#0x1
   c80f2:	cc fc       	bnez38 $r4,c80ea <strcpy+0x2>
   c80f4:	dd 9e       	ret5 $lp
   c80f6:	92 00       	nop16

000c80f8 <strlen>:
   c80f8:	9d 41       	addi333 $r5,$r0,#1
   c80fa:	28 20 00 01 	lbsi.bi $r2,[$r0],#0x1
   c80fe:	ca fe       	bnez38 $r2,c80fa <strlen+0x2>
   c8100:	9a 05       	sub333 $r0,$r0,$r5
   c8102:	dd 9e       	ret5 $lp

000c8104 <strncmp>:
   c8104:	c2 0a       	beqz38 $r2,c8118 <strncmp+0x14>
   c8106:	08 40 00 01 	lbi.bi $r4,[$r0],#0x1
   c810a:	08 50 80 01 	lbi.bi $r5,[$r1],#0x1
   c810e:	dc 03       	bnes38 $r4,c8114 <strncmp+0x10>
   c8110:	9e 91       	subi333 $r2,$r2,#1
   c8112:	cc f9       	bnez38 $r4,c8104 <strncmp>
   c8114:	9a 25       	sub333 $r0,$r4,$r5
   c8116:	dd 9e       	ret5 $lp
   c8118:	84 00       	movi55 $r0,#0
   c811a:	dd 9e       	ret5 $lp

000c811c <__muldi3>:
   c811c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   c811e:	44 40 ff ff 	movi $r4,#65535
   c8122:	40 91 10 02 	and $r9,$r2,$r4
   c8126:	40 50 40 09 	srli $r5,$r0,#16
   c812a:	42 74 94 24 	mul $r7,$r9,$r5
   c812e:	40 60 10 02 	and $r6,$r0,$r4
   c8132:	40 81 40 09 	srli $r8,$r2,#16
   c8136:	81 47       	mov55 $r10,$r7
   c8138:	42 a4 18 73 	maddr32 $r10,$r8,$r6
   c813c:	42 64 98 24 	mul $r6,$r9,$r6
   c8140:	40 43 40 09 	srli $r4,$r6,#16
   c8144:	40 45 10 00 	add $r4,$r10,$r4
   c8148:	42 54 14 24 	mul $r5,$r8,$r5
   c814c:	e2 87       	slt45 $r4,$r7
   c814e:	e8 04       	beqzs8 c8156 <__muldi3+0x3a>
   c8150:	44 71 00 00 	movi $r7,#65536
   c8154:	99 6f       	add333 $r5,$r5,$r7
   c8156:	fe 8c       	mul33 $r2,$r1
   c8158:	40 12 40 09 	srli $r1,$r4,#16
   c815c:	42 20 0c 73 	maddr32 $r2,$r0,$r3
   c8160:	40 52 84 00 	add $r5,$r5,$r1
   c8164:	40 02 40 08 	slli $r0,$r4,#16
   c8168:	97 b1       	zeh33 $r6,$r6
   c816a:	98 06       	add333 $r0,$r0,$r6
   c816c:	98 55       	add333 $r1,$r2,$r5
   c816e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000c8170 <__lshrdi3>:
   c8170:	4e 22 00 14 	beqz $r2,c8198 <__lshrdi3+0x28>
   c8174:	52 31 00 20 	subri $r3,$r2,#32
   c8178:	4e 36 00 08 	bgtz $r3,c8188 <__lshrdi3+0x18>
   c817c:	52 01 80 00 	subri $r0,$r3,#0
   c8180:	40 00 80 0d 	srl $r0,$r1,$r0
   c8184:	84 20       	movi55 $r1,#0
   c8186:	d5 09       	j8 c8198 <__lshrdi3+0x28>
   c8188:	40 30 8c 0c 	sll $r3,$r1,$r3
   c818c:	40 00 08 0d 	srl $r0,$r0,$r2
   c8190:	40 01 80 04 	or $r0,$r3,$r0
   c8194:	40 10 88 0d 	srl $r1,$r1,$r2
   c8198:	dd 9e       	ret5 $lp
   c819a:	92 00       	nop16

000c819c <__ashldi3>:
   c819c:	4e 22 00 14 	beqz $r2,c81c4 <__ashldi3+0x28>
   c81a0:	52 31 00 20 	subri $r3,$r2,#32
   c81a4:	4e 36 00 08 	bgtz $r3,c81b4 <__ashldi3+0x18>
   c81a8:	fe 5a       	neg33 $r1,$r3
   c81aa:	40 10 04 0c 	sll $r1,$r0,$r1
   c81ae:	84 00       	movi55 $r0,#0
   c81b0:	48 00 00 0a 	j c81c4 <__ashldi3+0x28>
   c81b4:	40 30 0c 0d 	srl $r3,$r0,$r3
   c81b8:	40 10 88 0c 	sll $r1,$r1,$r2
   c81bc:	40 11 84 04 	or $r1,$r3,$r1
   c81c0:	40 00 08 0c 	sll $r0,$r0,$r2
   c81c4:	dd 9e       	ret5 $lp
   c81c6:	92 00       	nop16

000c81c8 <__float32_mul>:
   c81c8:	3b ff fc bc 	smw.adm $sp,[$sp],$sp,#0x2    ! {$lp}
   c81cc:	3a 6f a8 3c 	smw.adm $r6,[$sp],$r10,#0x0    ! {$r6~$r10}
   c81d0:	40 30 5c 09 	srli $r3,$r0,#23
   c81d4:	96 d8       	zeb33 $r3,$r3
   c81d6:	40 50 dc 09 	srli $r5,$r1,#23
   c81da:	97 68       	zeb33 $r5,$r5
   c81dc:	46 68 00 00 	sethi $r6,#0x80000
   c81e0:	40 20 20 08 	slli $r2,$r0,#8
   c81e4:	fe b7       	or33 $r2,$r6
   c81e6:	40 40 a0 08 	slli $r4,$r1,#8
   c81ea:	ff 37       	or33 $r4,$r6
   c81ec:	40 80 04 03 	xor $r8,$r0,$r1
   c81f0:	40 63 20 02 	and $r6,$r6,$r8
   c81f4:	50 81 ff ff 	addi $r8,$r3,#-1
   c81f8:	5c f4 00 fe 	slti $r15,$r8,#254
   c81fc:	e8 3f       	beqzs8 c827a <__float32_mul+0xb2>
   c81fe:	50 82 ff ff 	addi $r8,$r5,#-1
   c8202:	5c f4 00 fe 	slti $r15,$r8,#254
   c8206:	e8 59       	beqzs8 c82b8 <__float32_mul+0xf0>
   c8208:	81 43       	mov55 $r10,$r3
   c820a:	3a 0f 84 3c 	smw.adm $r0,[$sp],$r1,#0x0    ! {$r0~$r1}
   c820e:	3a 4f 94 3c 	smw.adm $r4,[$sp],$r5,#0x0    ! {$r4~$r5}
   c8212:	80 02       	mov55 $r0,$r2
   c8214:	84 20       	movi55 $r1,#0
   c8216:	80 44       	mov55 $r2,$r4
   c8218:	84 60       	movi55 $r3,#0
   c821a:	49 ff ff 81 	jal c811c <__muldi3>
   c821e:	fd 10       	movd44 $r2,$r0
   c8220:	3a 4f 94 04 	lmw.bim $r4,[$sp],$r5,#0x0    ! {$r4~$r5}
   c8224:	3a 0f 84 04 	lmw.bim $r0,[$sp],$r1,#0x0    ! {$r0~$r1}
   c8228:	80 e2       	mov55 $r7,$r2
   c822a:	80 43       	mov55 $r2,$r3
   c822c:	80 6a       	mov55 $r3,$r10
   c822e:	c7 03       	beqz38 $r7,c8234 <__float32_mul+0x6c>
   c8230:	58 21 00 01 	ori $r2,$r2,#0x1
   c8234:	e4 40       	sltsi45 $r2,#0
   c8236:	e9 03       	bnezs8 c823c <__float32_mul+0x74>
   c8238:	94 91       	slli333 $r2,$r2,#1
   c823a:	9e d9       	subi333 $r3,$r3,#1
   c823c:	50 82 ff 82 	addi $r8,$r5,#-126
   c8240:	88 68       	add45 $r3,$r8
   c8242:	50 81 ff ff 	addi $r8,$r3,#-1
   c8246:	5c f4 00 fe 	slti $r15,$r8,#254
   c824a:	e8 54       	beqzs8 c82f2 <__float32_mul+0x12a>
   c824c:	44 f0 00 80 	movi $r15,#128
   c8250:	88 4f       	add45 $r2,$r15
   c8252:	e2 4f       	slt45 $r2,$r15
   c8254:	88 6f       	add45 $r3,$r15
   c8256:	40 81 20 09 	srli $r8,$r2,#8
   c825a:	54 84 00 01 	andi $r8,$r8,#0x1
   c825e:	8a 48       	sub45 $r2,$r8
   c8260:	94 91       	slli333 $r2,$r2,#1
   c8262:	92 49       	srli45 $r2,#9
   c8264:	40 81 dc 08 	slli $r8,$r3,#23
   c8268:	40 21 20 04 	or $r2,$r2,$r8
   c826c:	40 01 18 04 	or $r0,$r2,$r6
   c8270:	3a 6f a8 04 	lmw.bim $r6,[$sp],$r10,#0x0    ! {$r6~$r10}
   c8274:	3b ff fc 84 	lmw.bim $sp,[$sp],$sp,#0x2    ! {$lp}
   c8278:	dd 9e       	ret5 $lp
   c827a:	cb 13       	bnez38 $r3,c82a0 <__float32_mul+0xd8>
   c827c:	98 92       	add333 $r2,$r2,$r2
   c827e:	c2 0d       	beqz38 $r2,c8298 <__float32_mul+0xd0>
   c8280:	3a 0f 94 3c 	smw.adm $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   c8284:	80 02       	mov55 $r0,$r2
   c8286:	49 00 6e a6 	jal d5fd2 <countLeadingZeros32>
   c828a:	80 e0       	mov55 $r7,$r0
   c828c:	3a 0f 94 04 	lmw.bim $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   c8290:	9a df       	sub333 $r3,$r3,$r7
   c8292:	40 21 1c 0c 	sll $r2,$r2,$r7
   c8296:	d5 b4       	j8 c81fe <__float32_mul+0x36>
   c8298:	52 f2 80 ff 	subri $r15,$r5,#255
   c829c:	e8 28       	beqzs8 c82ec <__float32_mul+0x124>
   c829e:	d5 1c       	j8 c82d6 <__float32_mul+0x10e>
   c82a0:	40 81 08 00 	add $r8,$r2,$r2
   c82a4:	4e 83 00 24 	bnez $r8,c82ec <__float32_mul+0x124>
   c82a8:	cd 05       	bnez38 $r5,c82b2 <__float32_mul+0xea>
   c82aa:	40 82 10 00 	add $r8,$r4,$r4
   c82ae:	4e 82 00 1f 	beqz $r8,c82ec <__float32_mul+0x124>
   c82b2:	52 f2 80 ff 	subri $r15,$r5,#255
   c82b6:	e9 16       	bnezs8 c82e2 <__float32_mul+0x11a>
   c82b8:	cd 11       	bnez38 $r5,c82da <__float32_mul+0x112>
   c82ba:	99 24       	add333 $r4,$r4,$r4
   c82bc:	c4 0d       	beqz38 $r4,c82d6 <__float32_mul+0x10e>
   c82be:	3a 0f 94 3c 	smw.adm $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   c82c2:	80 04       	mov55 $r0,$r4
   c82c4:	49 00 6e 87 	jal d5fd2 <countLeadingZeros32>
   c82c8:	80 e0       	mov55 $r7,$r0
   c82ca:	3a 0f 94 04 	lmw.bim $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   c82ce:	9b 6f       	sub333 $r5,$r5,$r7
   c82d0:	40 42 1c 0c 	sll $r4,$r4,$r7
   c82d4:	d5 9a       	j8 c8208 <__float32_mul+0x40>
   c82d6:	80 06       	mov55 $r0,$r6
   c82d8:	d5 cc       	j8 c8270 <__float32_mul+0xa8>
   c82da:	40 82 10 00 	add $r8,$r4,$r4
   c82de:	4e 83 00 07 	bnez $r8,c82ec <__float32_mul+0x124>
   c82e2:	46 87 f8 00 	sethi $r8,#0x7f800
   c82e6:	40 03 20 04 	or $r0,$r6,$r8
   c82ea:	d5 c3       	j8 c8270 <__float32_mul+0xa8>
   c82ec:	46 0f fc 00 	sethi $r0,#0xffc00
   c82f0:	d5 c0       	j8 c8270 <__float32_mul+0xa8>
   c82f2:	4e 36 ff f8 	bgtz $r3,c82e2 <__float32_mul+0x11a>
   c82f6:	52 71 80 01 	subri $r7,$r3,#1
   c82fa:	5c f3 80 20 	slti $r15,$r7,#32
   c82fe:	e8 ec       	beqzs8 c82d6 <__float32_mul+0x10e>
   c8300:	52 83 80 20 	subri $r8,$r7,#32
   c8304:	40 31 20 0c 	sll $r3,$r2,$r8
   c8308:	40 21 1c 0d 	srl $r2,$r2,$r7
   c830c:	c3 03       	beqz38 $r3,c8312 <__float32_mul+0x14a>
   c830e:	58 21 00 02 	ori $r2,$r2,#0x2
   c8312:	84 60       	movi55 $r3,#0
   c8314:	50 81 00 80 	addi $r8,$r2,#128
   c8318:	e5 00       	sltsi45 $r8,#0
   c831a:	e8 99       	beqzs8 c824c <__float32_mul+0x84>
   c831c:	84 61       	movi55 $r3,#1
   c831e:	d5 97       	j8 c824c <__float32_mul+0x84>

000c8320 <__divsf3>:
   c8320:	3b ff fc bc 	smw.adm $sp,[$sp],$sp,#0x2    ! {$lp}
   c8324:	3a 6f a8 3c 	smw.adm $r6,[$sp],$r10,#0x0    ! {$r6~$r10}
   c8328:	46 78 00 00 	sethi $r7,#0x80000
   c832c:	40 40 5c 09 	srli $r4,$r0,#23
   c8330:	97 20       	zeb33 $r4,$r4
   c8332:	40 60 dc 09 	srli $r6,$r1,#23
   c8336:	97 b0       	zeb33 $r6,$r6
   c8338:	40 30 20 08 	slli $r3,$r0,#8
   c833c:	fe ff       	or33 $r3,$r7
   c833e:	40 50 a0 08 	slli $r5,$r1,#8
   c8342:	ff 7f       	or33 $r5,$r7
   c8344:	40 a0 04 03 	xor $r10,$r0,$r1
   c8348:	40 73 a8 02 	and $r7,$r7,$r10
   c834c:	50 a2 7f ff 	addi $r10,$r4,#-1
   c8350:	5c f5 00 fe 	slti $r15,$r10,#254
   c8354:	e8 50       	beqzs8 c83f4 <__divsf3+0xd4>
   c8356:	50 a3 7f ff 	addi $r10,$r6,#-1
   c835a:	5c f5 00 fe 	slti $r15,$r10,#254
   c835e:	e8 69       	beqzs8 c8430 <__divsf3+0x110>
   c8360:	e2 65       	slt45 $r3,$r5
   c8362:	e9 03       	bnezs8 c8368 <__divsf3+0x48>
   c8364:	92 61       	srli45 $r3,#1
   c8366:	9d 21       	addi333 $r4,$r4,#1
   c8368:	40 82 b8 09 	srli $r8,$r5,#14
   c836c:	40 01 a0 57 	divr $r0,$r2,$r3,$r8
   c8370:	54 92 bf ff 	andi $r9,$r5,#0x3fff
   c8374:	42 14 80 24 	mul $r1,$r9,$r0
   c8378:	40 21 38 08 	slli $r2,$r2,#14
   c837c:	81 e2       	mov55 $r15,$r2
   c837e:	9a 91       	sub333 $r2,$r2,$r1
   c8380:	40 f7 88 06 	slt $r15,$r15,$r2
   c8384:	e8 04       	beqzs8 c838c <__divsf3+0x6c>
   c8386:	9e 01       	subi333 $r0,$r0,#1
   c8388:	98 95       	add333 $r2,$r2,$r5
   c838a:	e2 45       	slt45 $r2,$r5
   c838c:	40 31 20 57 	divr $r3,$r2,$r2,$r8
   c8390:	42 14 8c 24 	mul $r1,$r9,$r3
   c8394:	40 21 38 08 	slli $r2,$r2,#14
   c8398:	81 e2       	mov55 $r15,$r2
   c839a:	9a 91       	sub333 $r2,$r2,$r1
   c839c:	40 f7 88 06 	slt $r15,$r15,$r2
   c83a0:	e8 04       	beqzs8 c83a8 <__divsf3+0x88>
   c83a2:	9e d9       	subi333 $r3,$r3,#1
   c83a4:	98 95       	add333 $r2,$r2,$r5
   c83a6:	e2 45       	slt45 $r2,$r5
   c83a8:	40 a0 38 08 	slli $r10,$r0,#14
   c83ac:	88 6a       	add45 $r3,$r10
   c83ae:	94 dc       	slli333 $r3,$r3,#4
   c83b0:	c2 03       	beqz38 $r2,c83b6 <__divsf3+0x96>
   c83b2:	58 31 80 01 	ori $r3,$r3,#0x1
   c83b6:	52 a3 00 7e 	subri $r10,$r6,#126
   c83ba:	88 8a       	add45 $r4,$r10
   c83bc:	50 a2 7f ff 	addi $r10,$r4,#-1
   c83c0:	5c f5 00 fe 	slti $r15,$r10,#254
   c83c4:	e8 4b       	beqzs8 c845a <__divsf3+0x13a>
   c83c6:	44 f0 00 80 	movi $r15,#128
   c83ca:	88 6f       	add45 $r3,$r15
   c83cc:	e2 6f       	slt45 $r3,$r15
   c83ce:	88 8f       	add45 $r4,$r15
   c83d0:	40 a1 a0 09 	srli $r10,$r3,#8
   c83d4:	54 a5 00 01 	andi $r10,$r10,#0x1
   c83d8:	8a 6a       	sub45 $r3,$r10
   c83da:	94 d9       	slli333 $r3,$r3,#1
   c83dc:	92 69       	srli45 $r3,#9
   c83de:	40 a2 5c 08 	slli $r10,$r4,#23
   c83e2:	40 31 a8 04 	or $r3,$r3,$r10
   c83e6:	40 01 9c 04 	or $r0,$r3,$r7
   c83ea:	3a 6f a8 04 	lmw.bim $r6,[$sp],$r10,#0x0    ! {$r6~$r10}
   c83ee:	3b ff fc 84 	lmw.bim $sp,[$sp],$sp,#0x2    ! {$lp}
   c83f2:	dd 9e       	ret5 $lp
   c83f4:	cc 0f       	bnez38 $r4,c8412 <__divsf3+0xf2>
   c83f6:	98 db       	add333 $r3,$r3,$r3
   c83f8:	c3 0d       	beqz38 $r3,c8412 <__divsf3+0xf2>
   c83fa:	3a 0f 94 3c 	smw.adm $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   c83fe:	80 03       	mov55 $r0,$r3
   c8400:	49 00 6d e9 	jal d5fd2 <countLeadingZeros32>
   c8404:	81 00       	mov55 $r8,$r0
   c8406:	3a 0f 94 04 	lmw.bim $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   c840a:	8a 88       	sub45 $r4,$r8
   c840c:	40 31 a0 0c 	sll $r3,$r3,$r8
   c8410:	d5 a3       	j8 c8356 <__divsf3+0x36>
   c8412:	4c 62 40 06 	bne $r6,$r4,c841e <__divsf3+0xfe>
   c8416:	40 a2 94 00 	add $r10,$r5,$r5
   c841a:	4e a2 00 3c 	beqz $r10,c8492 <__divsf3+0x172>
   c841e:	52 f3 00 ff 	subri $r15,$r6,#255
   c8422:	e8 07       	beqzs8 c8430 <__divsf3+0x110>
   c8424:	c4 19       	beqz38 $r4,c8456 <__divsf3+0x136>
   c8426:	40 a1 8c 00 	add $r10,$r3,$r3
   c842a:	4e a3 00 34 	bnez $r10,c8492 <__divsf3+0x172>
   c842e:	d5 2d       	j8 c8488 <__divsf3+0x168>
   c8430:	ce 0f       	bnez38 $r6,c844e <__divsf3+0x12e>
   c8432:	99 6d       	add333 $r5,$r5,$r5
   c8434:	c5 2a       	beqz38 $r5,c8488 <__divsf3+0x168>
   c8436:	3a 0f 94 3c 	smw.adm $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   c843a:	80 05       	mov55 $r0,$r5
   c843c:	49 00 6d cb 	jal d5fd2 <countLeadingZeros32>
   c8440:	81 00       	mov55 $r8,$r0
   c8442:	3a 0f 94 04 	lmw.bim $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   c8446:	8a c8       	sub45 $r6,$r8
   c8448:	40 52 a0 0c 	sll $r5,$r5,$r8
   c844c:	d5 8a       	j8 c8360 <__divsf3+0x40>
   c844e:	40 a2 94 00 	add $r10,$r5,$r5
   c8452:	4e a3 00 20 	bnez $r10,c8492 <__divsf3+0x172>
   c8456:	80 07       	mov55 $r0,$r7
   c8458:	d5 c9       	j8 c83ea <__divsf3+0xca>
   c845a:	4e 46 00 17 	bgtz $r4,c8488 <__divsf3+0x168>
   c845e:	52 82 00 01 	subri $r8,$r4,#1
   c8462:	5c f4 00 20 	slti $r15,$r8,#32
   c8466:	e8 f8       	beqzs8 c8456 <__divsf3+0x136>
   c8468:	52 a4 00 20 	subri $r10,$r8,#32
   c846c:	40 41 a8 0c 	sll $r4,$r3,$r10
   c8470:	40 31 a0 0d 	srl $r3,$r3,$r8
   c8474:	c4 03       	beqz38 $r4,c847a <__divsf3+0x15a>
   c8476:	58 31 80 02 	ori $r3,$r3,#0x2
   c847a:	84 80       	movi55 $r4,#0
   c847c:	50 a1 80 80 	addi $r10,$r3,#128
   c8480:	e5 40       	sltsi45 $r10,#0
   c8482:	e8 a2       	beqzs8 c83c6 <__divsf3+0xa6>
   c8484:	84 81       	movi55 $r4,#1
   c8486:	d5 a0       	j8 c83c6 <__divsf3+0xa6>
   c8488:	46 a7 f8 00 	sethi $r10,#0x7f800
   c848c:	40 03 a8 04 	or $r0,$r7,$r10
   c8490:	d5 ad       	j8 c83ea <__divsf3+0xca>
   c8492:	46 0f fc 00 	sethi $r0,#0xffc00
   c8496:	d5 aa       	j8 c83ea <__divsf3+0xca>

000c8498 <AB_UART_RxRecidue>:
   c8498:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c849a:	5a 08 01 0d 	bnec $r0,#1,c84b4 <AB_UART_RxRecidue+0x1c>
   c849e:	2e 17 ca 10 	lbi.gp $r1,[+#-13808]
   c84a2:	c1 09       	beqz38 $r1,c84b4 <AB_UART_RxRecidue+0x1c>
   c84a4:	3c 13 e3 58 	lhi.gp $r1,[+#-14672]
   c84a8:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   c84ac:	9a 08       	sub333 $r0,$r1,$r0
   c84ae:	54 00 03 ff 	andi $r0,$r0,#0x3ff
   c84b2:	d5 03       	j8 c84b8 <AB_UART_RxRecidue+0x20>
   c84b4:	49 00 5d a9 	jal d4006 <DRV_Uart_Recidue>
   c84b8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c84ba <AB_UART_Read>:
   c84ba:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   c84bc:	80 e0       	mov55 $r7,$r0
   c84be:	81 21       	mov55 $r9,$r1
   c84c0:	97 91       	zeh33 $r6,$r2
   c84c2:	85 e1       	movi55 $r15,#1
   c84c4:	4c 07 c0 90 	bne $r0,$r15,c85e4 <AB_UART_Read+0x12a>
   c84c8:	2e 07 ca 10 	lbi.gp $r0,[+#-13808]
   c84cc:	4e 02 00 88 	beqz $r0,c85dc <AB_UART_Read+0x122>
   c84d0:	3c 33 e3 58 	lhi.gp $r3,[+#-14672]
   c84d4:	3c 23 e3 59 	lhi.gp $r2,[+#-14670]
   c84d8:	9a 9a       	sub333 $r2,$r3,$r2
   c84da:	54 21 03 ff 	andi $r2,$r2,#0x3ff
   c84de:	e0 c2       	slts45 $r6,$r2
   c84e0:	e9 08       	bnezs8 c84f0 <AB_UART_Read+0x36>
   c84e2:	3c 63 e3 58 	lhi.gp $r6,[+#-14672]
   c84e6:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   c84ea:	9b b0       	sub333 $r6,$r6,$r0
   c84ec:	54 63 03 ff 	andi $r6,$r6,#0x3ff
   c84f0:	3e 7f c6 b2 	addi.gp $r7,#-14670
   c84f4:	3c 33 e3 58 	lhi.gp $r3,[+#-14672]
   c84f8:	a4 78       	lhi333 $r1,[$r7+#0x0]
   c84fa:	a4 b8       	lhi333 $r2,[$r7+#0x0]
   c84fc:	9a 59       	sub333 $r1,$r3,$r1
   c84fe:	54 10 83 ff 	andi $r1,$r1,#0x3ff
   c8502:	52 21 04 00 	subri $r2,$r2,#1024
   c8506:	e0 41       	slts45 $r2,$r1
   c8508:	e8 46       	beqzs8 c8594 <AB_UART_Read+0xda>
   c850a:	02 a3 80 00 	lhi $r10,[$r7+#0x0]
   c850e:	3c 33 e3 58 	lhi.gp $r3,[+#-14672]
   c8512:	03 c3 80 00 	lhi $fp,[$r7+#0x0]
   c8516:	52 a5 04 00 	subri $r10,$r10,#1024
   c851a:	80 e6       	mov55 $r7,$r6
   c851c:	e3 46       	slt45 $r10,$r6
   c851e:	e8 02       	beqzs8 c8522 <AB_UART_Read+0x68>
   c8520:	80 ea       	mov55 $r7,$r10
   c8522:	3c 13 e3 59 	lhi.gp $r1,[+#-14670]
   c8526:	3c 2d f2 86 	lwi.gp $r2,[+#-13800]
   c852a:	98 51       	add333 $r1,$r2,$r1
   c852c:	80 09       	mov55 $r0,$r9
   c852e:	80 47       	mov55 $r2,$r7
   c8530:	f3 81       	swi37.sp $r3,[+#0x4]
   c8532:	49 ff fd 8b 	jal c8048 <memcpy>
   c8536:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   c853a:	f3 01       	lwi37.sp $r3,[+#0x4]
   c853c:	98 38       	add333 $r0,$r7,$r0
   c853e:	96 01       	zeh33 $r0,$r0
   c8540:	3c 0b e3 59 	shi.gp $r0,[+#-14670]
   c8544:	44 00 04 00 	movi $r0,#1024
   c8548:	3c 13 e3 59 	lhi.gp $r1,[+#-14670]
   c854c:	4c 10 40 05 	bne $r1,$r0,c8556 <AB_UART_Read+0x9c>
   c8550:	84 00       	movi55 $r0,#0
   c8552:	3c 0b e3 59 	shi.gp $r0,[+#-14670]
   c8556:	4c 63 80 2b 	beq $r6,$r7,c85ac <AB_UART_Read+0xf2>
   c855a:	40 01 f0 01 	sub $r0,$r3,$fp
   c855e:	54 00 03 ff 	andi $r0,$r0,#0x3ff
   c8562:	40 a0 28 01 	sub $r10,$r0,$r10
   c8566:	40 83 1c 01 	sub $r8,$r6,$r7
   c856a:	e3 48       	slt45 $r10,$r8
   c856c:	e8 02       	beqzs8 c8570 <AB_UART_Read+0xb6>
   c856e:	81 0a       	mov55 $r8,$r10
   c8570:	3c 13 e3 59 	lhi.gp $r1,[+#-14670]
   c8574:	3c 2d f2 86 	lwi.gp $r2,[+#-13800]
   c8578:	98 51       	add333 $r1,$r2,$r1
   c857a:	40 04 9c 00 	add $r0,$r9,$r7
   c857e:	80 48       	mov55 $r2,$r8
   c8580:	49 ff fd 64 	jal c8048 <memcpy>
   c8584:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   c8588:	89 00       	add45 $r8,$r0
   c858a:	40 84 00 13 	zeh $r8,$r8
   c858e:	3c 8b e3 59 	shi.gp $r8,[+#-14670]
   c8592:	d5 0d       	j8 c85ac <AB_UART_Read+0xf2>
   c8594:	a4 78       	lhi333 $r1,[$r7+#0x0]
   c8596:	3c 2d f2 86 	lwi.gp $r2,[+#-13800]
   c859a:	98 51       	add333 $r1,$r2,$r1
   c859c:	80 09       	mov55 $r0,$r9
   c859e:	80 46       	mov55 $r2,$r6
   c85a0:	49 ff fd 54 	jal c8048 <memcpy>
   c85a4:	a4 38       	lhi333 $r0,[$r7+#0x0]
   c85a6:	98 30       	add333 $r0,$r6,$r0
   c85a8:	96 01       	zeh33 $r0,$r0
   c85aa:	ac 38       	shi333 $r0,[$r7+#0x0]
   c85ac:	2e 07 ca 11 	lbi.gp $r0,[+#-13807]
   c85b0:	49 00 57 10 	jal d33d0 <DRV_Gpio_PinValGet>
   c85b4:	c0 26       	beqz38 $r0,c8600 <AB_UART_Read+0x146>
   c85b6:	3c 13 e3 58 	lhi.gp $r1,[+#-14672]
   c85ba:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   c85be:	9a 08       	sub333 $r0,$r1,$r0
   c85c0:	54 00 03 ff 	andi $r0,$r0,#0x3ff
   c85c4:	5e f0 00 65 	sltsi $r15,$r0,#101
   c85c8:	e8 1c       	beqzs8 c8600 <AB_UART_Read+0x146>
   c85ca:	2e 07 ca 11 	lbi.gp $r0,[+#-13807]
   c85ce:	84 21       	movi55 $r1,#1
   c85d0:	40 00 80 0c 	sll $r0,$r1,$r0
   c85d4:	84 20       	movi55 $r1,#0
   c85d6:	49 00 56 ec 	jal d33ae <DRV_Gpio_ValSet>
   c85da:	d5 13       	j8 c8600 <AB_UART_Read+0x146>
   c85dc:	3e 0d 2f b4 	addi.gp $r0,#-184396
   c85e0:	49 00 65 bd 	jal d515a <puts>
   c85e4:	80 07       	mov55 $r0,$r7
   c85e6:	49 00 5d 10 	jal d4006 <DRV_Uart_Recidue>
   c85ea:	80 20       	mov55 $r1,$r0
   c85ec:	96 01       	zeh33 $r0,$r0
   c85ee:	e2 c0       	slt45 $r6,$r0
   c85f0:	e8 02       	beqzs8 c85f4 <AB_UART_Read+0x13a>
   c85f2:	80 26       	mov55 $r1,$r6
   c85f4:	97 89       	zeh33 $r6,$r1
   c85f6:	80 07       	mov55 $r0,$r7
   c85f8:	80 29       	mov55 $r1,$r9
   c85fa:	80 46       	mov55 $r2,$r6
   c85fc:	49 00 5e 3f 	jal d427a <DRV_Uart_Read>
   c8600:	80 06       	mov55 $r0,$r6
   c8602:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000c8604 <driver_tx_complete>:
   c8604:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   c8606:	97 c0       	zeb33 $r7,$r0
   c8608:	3e 0f ca 08 	addi.gp $r0,#-13816
   c860c:	38 00 1e 02 	lw $r0,[$r0+($r7<<#0x2)]
   c8610:	49 00 4e 83 	jal d2316 <AB_queue_pop>
   c8614:	80 c0       	mov55 $r6,$r0
   c8616:	c0 0a       	beqz38 $r0,c862a <driver_tx_complete+0x26>
   c8618:	a4 b0       	lhi333 $r2,[$r6+#0x0]
   c861a:	80 07       	mov55 $r0,$r7
   c861c:	9c 72       	addi333 $r1,$r6,#2
   c861e:	49 00 5d c0 	jal d419e <DRV_Uart_Write>
   c8622:	80 06       	mov55 $r0,$r6
   c8624:	49 00 4e 92 	jal d2348 <AB_queue_entry_free>
   c8628:	d5 05       	j8 c8632 <driver_tx_complete+0x2e>
   c862a:	3c 0d f2 88 	lwi.gp $r0,[+#-13792]
   c862e:	49 00 4e 26 	jal d227a <AB_PWR_WakeUnlocked>
   c8632:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000c8634 <AB_UART_Write>:
   c8634:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   c8636:	80 c0       	mov55 $r6,$r0
   c8638:	81 01       	mov55 $r8,$r1
   c863a:	97 d1       	zeh33 $r7,$r2
   c863c:	5a 08 01 24 	bnec $r0,#1,c8684 <AB_UART_Write+0x50>
   c8640:	2e 07 ca 10 	lbi.gp $r0,[+#-13808]
   c8644:	c8 1e       	bnez38 $r0,c8680 <AB_UART_Write+0x4c>
   c8646:	d5 1f       	j8 c8684 <AB_UART_Write+0x50>
   c8648:	96 39       	zeh33 $r0,$r7
   c864a:	80 c7       	mov55 $r6,$r7
   c864c:	5c f0 04 00 	slti $r15,$r0,#1024
   c8650:	e9 03       	bnezs8 c8656 <AB_UART_Write+0x22>
   c8652:	44 60 03 ff 	movi $r6,#1023
   c8656:	97 b1       	zeh33 $r6,$r6
   c8658:	9c 32       	addi333 $r0,$r6,#2
   c865a:	49 00 4e 91 	jal d237c <AB_queue_entry_alloc>
   c865e:	81 20       	mov55 $r9,$r0
   c8660:	c0 28       	beqz38 $r0,c86b0 <AB_UART_Write+0x7c>
   c8662:	1a 60 00 01 	shi.bi $r6,[$r0],#0x2
   c8666:	80 28       	mov55 $r1,$r8
   c8668:	80 46       	mov55 $r2,$r6
   c866a:	49 ff fc ef 	jal c8048 <memcpy>
   c866e:	3c 0d f2 83 	lwi.gp $r0,[+#-13812]
   c8672:	80 29       	mov55 $r1,$r9
   c8674:	9b fe       	sub333 $r7,$r7,$r6
   c8676:	49 00 4e 1c 	jal d22ae <AB_queue_push>
   c867a:	89 06       	add45 $r8,$r6
   c867c:	97 f9       	zeh33 $r7,$r7
   c867e:	d5 01       	j8 c8680 <AB_UART_Write+0x4c>
   c8680:	cf e4       	bnez38 $r7,c8648 <AB_UART_Write+0x14>
   c8682:	d5 2b       	j8 c86d8 <AB_UART_Write+0xa4>
   c8684:	80 06       	mov55 $r0,$r6
   c8686:	49 00 5c cd 	jal d4020 <DRV_Uart_IntDis>
   c868a:	80 06       	mov55 $r0,$r6
   c868c:	80 28       	mov55 $r1,$r8
   c868e:	80 47       	mov55 $r2,$r7
   c8690:	49 00 5d 87 	jal d419e <DRV_Uart_Write>
   c8694:	c8 1b       	bnez38 $r0,c86ca <AB_UART_Write+0x96>
   c8696:	3e af ca 08 	addi.gp $r10,#-13816
   c869a:	38 05 1a 02 	lw $r0,[$r10+($r6<<#0x2)]
   c869e:	c0 16       	beqz38 $r0,c86ca <AB_UART_Write+0x96>
   c86a0:	9c 3a       	addi333 $r0,$r7,#2
   c86a2:	49 00 4e 6d 	jal d237c <AB_queue_entry_alloc>
   c86a6:	81 20       	mov55 $r9,$r0
   c86a8:	c8 06       	bnez38 $r0,c86b4 <AB_UART_Write+0x80>
   c86aa:	80 06       	mov55 $r0,$r6
   c86ac:	49 00 5c d4 	jal d4054 <DRV_Uart_IntEn>
   c86b0:	80 09       	mov55 $r0,$r9
   c86b2:	d5 14       	j8 c86da <AB_UART_Write+0xa6>
   c86b4:	1a 70 00 01 	shi.bi $r7,[$r0],#0x2
   c86b8:	80 28       	mov55 $r1,$r8
   c86ba:	80 47       	mov55 $r2,$r7
   c86bc:	49 ff fc c6 	jal c8048 <memcpy>
   c86c0:	38 05 1a 02 	lw $r0,[$r10+($r6<<#0x2)]
   c86c4:	80 29       	mov55 $r1,$r9
   c86c6:	49 00 4d f4 	jal d22ae <AB_queue_push>
   c86ca:	3c 0d f2 88 	lwi.gp $r0,[+#-13792]
   c86ce:	49 00 4d cd 	jal d2268 <AB_PWR_WakeLocked>
   c86d2:	80 06       	mov55 $r0,$r6
   c86d4:	49 00 5c c0 	jal d4054 <DRV_Uart_IntEn>
   c86d8:	84 01       	movi55 $r0,#1
   c86da:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000c86dc <AB_UART_Flush>:
   c86dc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c86de:	97 80       	zeb33 $r6,$r0
   c86e0:	80 06       	mov55 $r0,$r6
   c86e2:	49 00 5c d1 	jal d4084 <DRV_Uart_Flush>
   c86e6:	c8 fd       	bnez38 $r0,c86e0 <AB_UART_Flush+0x4>
   c86e8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c86ea <AB_UART_Open>:
   c86ea:	fc 44       	push25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}
   c86ec:	81 00       	mov55 $r8,$r0
   c86ee:	50 60 80 08 	addi $r6,$r1,#8
   c86f2:	e6 03       	slti45 $r0,#3
   c86f4:	e8 64       	beqzs8 c87bc <AB_UART_Open+0xd2>
   c86f6:	3e 0f ca 08 	addi.gp $r0,#-13816
   c86fa:	38 00 22 02 	lw $r0,[$r0+($r8<<#0x2)]
   c86fe:	c8 5f       	bnez38 $r0,c87bc <AB_UART_Open+0xd2>
   c8700:	a4 0a       	lhi333 $r0,[$r1+#0x4]
   c8702:	50 9f 80 14 	addi $r9,$sp,#20
   c8706:	12 0f 80 05 	shi $r0,[$sp+#0xa]
   c870a:	12 0f 80 04 	shi $r0,[$sp+#0x8]
   c870e:	49 00 4c 9b 	jal d2044 <malloc>
   c8712:	f0 81       	swi37.sp $r0,[+#0x4]
   c8714:	02 0f 80 04 	lhi $r0,[$sp+#0x8]
   c8718:	80 ff       	mov55 $r7,$sp
   c871a:	49 00 4c 95 	jal d2044 <malloc>
   c871e:	b6 1f       	swi450 $r0,[$sp]
   c8720:	b4 06       	lwi450 $r0,[$r6]
   c8722:	f0 83       	swi37.sp $r0,[+#0xc]
   c8724:	3e 0c 46 04 	addi.gp $r0,#-244220
   c8728:	f0 84       	swi37.sp $r0,[+#0x10]
   c872a:	3e 0d 20 00 	addi.gp $r0,#-188416
   c872e:	3a 00 08 00 	lmw.bi $r0,[$r0],$r2,#0x0    ! {$r0~$r2}
   c8732:	3a 04 88 20 	smw.bi $r0,[$r9],$r2,#0x0    ! {$r0~$r2}
   c8736:	5a 88 01 29 	bnec $r8,#1,c8788 <AB_UART_Open+0x9e>
   c873a:	20 03 00 04 	lbsi $r0,[$r6+#0x4]
   c873e:	4e 04 00 25 	bgez $r0,c8788 <AB_UART_Open+0x9e>
   c8742:	3e 87 ca 10 	sbi.gp $r8,[+#-13808]
   c8746:	a6 76       	lbi333 $r1,[$r6+#0x6]
   c8748:	3e 17 ca 04 	sbi.gp $r1,[+#-13820]
   c874c:	a6 75       	lbi333 $r1,[$r6+#0x5]
   c874e:	3e 17 ca 11 	sbi.gp $r1,[+#-13807]
   c8752:	44 00 04 00 	movi $r0,#1024
   c8756:	49 00 4c 77 	jal d2044 <malloc>
   c875a:	3c 0f f2 87 	swi.gp $r0,[+#-13796]
   c875e:	44 00 04 00 	movi $r0,#1024
   c8762:	49 00 4c 71 	jal d2044 <malloc>
   c8766:	3c 0f f2 86 	swi.gp $r0,[+#-13800]
   c876a:	00 04 80 09 	lbi $r0,[$r9+#0x9]
   c876e:	84 3d       	movi55 $r1,#-3
   c8770:	fe 0e       	and33 $r0,$r1
   c8772:	10 04 80 09 	sbi $r0,[$r9+#0x9]
   c8776:	a6 34       	lbi333 $r0,[$r6+#0x4]
   c8778:	f1 03       	lwi37.sp $r1,[+#0xc]
   c877a:	96 37       	fexti33 $r0,#0x6
   c877c:	ae 34       	sbi333 $r0,[$r6+#0x4]
   c877e:	3c 1f f2 85 	swi.gp $r1,[+#-13804]
   c8782:	3e 0c 47 c0 	addi.gp $r0,#-243776
   c8786:	f0 83       	swi37.sp $r0,[+#0xc]
   c8788:	a6 34       	lbi333 $r0,[$r6+#0x4]
   c878a:	b0 45       	addri36.sp $r1,#0x14
   c878c:	ae 0e       	sbi333 $r0,[$r1+#0x6]
   c878e:	80 5f       	mov55 $r2,$sp
   c8790:	04 03 7f fe 	lwi $r0,[$r6+#-0x8]
   c8794:	f0 85       	swi37.sp $r0,[+#0x14]
   c8796:	04 03 7f ff 	lwi $r0,[$r6+#-0x4]
   c879a:	92 01       	srli45 $r0,#1
   c879c:	ac 0a       	shi333 $r0,[$r1+#0x4]
   c879e:	80 08       	mov55 $r0,$r8
   c87a0:	49 00 5f 6c 	jal d4678 <DRV_Uart_Init>
   c87a4:	49 00 4d f8 	jal d2394 <AB_queue_alloc>
   c87a8:	3e 1f ca 08 	addi.gp $r1,#-13816
   c87ac:	38 00 a2 0a 	sw $r0,[$r1+($r8<<#0x2)]
   c87b0:	49 00 4d 48 	jal d2240 <AB_PWR_GetWakeLock>
   c87b4:	3c 0f f2 88 	swi.gp $r0,[+#-13792]
   c87b8:	84 01       	movi55 $r0,#1
   c87ba:	d5 02       	j8 c87be <AB_UART_Open+0xd4>
   c87bc:	84 00       	movi55 $r0,#0
   c87be:	fc c4       	pop25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}

000c87c0 <uart2_rx_data_fctl>:
   c87c0:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   c87c2:	97 c1       	zeh33 $r7,$r0
   c87c4:	3c 13 e3 58 	lhi.gp $r1,[+#-14672]
   c87c8:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   c87cc:	9a 08       	sub333 $r0,$r1,$r0
   c87ce:	fe 03       	not33 $r0,$r0
   c87d0:	54 00 03 ff 	andi $r0,$r0,#0x3ff
   c87d4:	e0 07       	slts45 $r0,$r7
   c87d6:	e8 05       	beqzs8 c87e0 <uart2_rx_data_fctl+0x20>
   c87d8:	3e 0d 2f bc 	addi.gp $r0,#-184388
   c87dc:	49 00 64 bf 	jal d515a <puts>
   c87e0:	c7 2a       	beqz38 $r7,c8834 <uart2_rx_data_fctl+0x74>
   c87e2:	3e 6f c6 b0 	addi.gp $r6,#-14672
   c87e6:	a4 30       	lhi333 $r0,[$r6+#0x0]
   c87e8:	3e 8f ca 18 	addi.gp $r8,#-13800
   c87ec:	98 38       	add333 $r0,$r7,$r0
   c87ee:	5e f0 04 00 	sltsi $r15,$r0,#1024
   c87f2:	e8 0c       	beqzs8 c880a <uart2_rx_data_fctl+0x4a>
   c87f4:	a4 70       	lhi333 $r1,[$r6+#0x0]
   c87f6:	b4 48       	lwi450 $r2,[$r8]
   c87f8:	84 01       	movi55 $r0,#1
   c87fa:	98 51       	add333 $r1,$r2,$r1
   c87fc:	80 47       	mov55 $r2,$r7
   c87fe:	49 00 5d 3e 	jal d427a <DRV_Uart_Read>
   c8802:	a4 30       	lhi333 $r0,[$r6+#0x0]
   c8804:	99 f8       	add333 $r7,$r7,$r0
   c8806:	97 f9       	zeh33 $r7,$r7
   c8808:	d5 15       	j8 c8832 <uart2_rx_data_fctl+0x72>
   c880a:	02 93 00 00 	lhi $r9,[$r6+#0x0]
   c880e:	a4 70       	lhi333 $r1,[$r6+#0x0]
   c8810:	b4 48       	lwi450 $r2,[$r8]
   c8812:	52 94 84 00 	subri $r9,$r9,#1024
   c8816:	40 94 80 13 	zeh $r9,$r9
   c881a:	98 51       	add333 $r1,$r2,$r1
   c881c:	84 01       	movi55 $r0,#1
   c881e:	80 49       	mov55 $r2,$r9
   c8820:	8a e9       	sub45 $r7,$r9
   c8822:	49 00 5d 2c 	jal d427a <DRV_Uart_Read>
   c8826:	97 f9       	zeh33 $r7,$r7
   c8828:	b4 28       	lwi450 $r1,[$r8]
   c882a:	84 01       	movi55 $r0,#1
   c882c:	80 47       	mov55 $r2,$r7
   c882e:	49 00 5d 26 	jal d427a <DRV_Uart_Read>
   c8832:	ad f0       	shi333 $r7,[$r6+#0x0]
   c8834:	3c 0d f2 83 	lwi.gp $r0,[+#-13812]
   c8838:	49 00 4d 7c 	jal d2330 <AB_queue_count>
   c883c:	e6 06       	slti45 $r0,#6
   c883e:	e8 0b       	beqzs8 c8854 <uart2_rx_data_fctl+0x94>
   c8840:	3c 13 e3 58 	lhi.gp $r1,[+#-14672]
   c8844:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   c8848:	9a 08       	sub333 $r0,$r1,$r0
   c884a:	54 00 03 ff 	andi $r0,$r0,#0x3ff
   c884e:	5e f0 02 85 	sltsi $r15,$r0,#645
   c8852:	e9 08       	bnezs8 c8862 <uart2_rx_data_fctl+0xa2>
   c8854:	2e 07 ca 11 	lbi.gp $r0,[+#-13807]
   c8858:	84 21       	movi55 $r1,#1
   c885a:	40 00 80 0c 	sll $r0,$r1,$r0
   c885e:	49 00 55 a8 	jal d33ae <DRV_Gpio_ValSet>
   c8862:	3c 1d f2 85 	lwi.gp $r1,[+#-13804]
   c8866:	c1 09       	beqz38 $r1,c8878 <uart2_rx_data_fctl+0xb8>
   c8868:	3c 23 e3 58 	lhi.gp $r2,[+#-14672]
   c886c:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   c8870:	9a 10       	sub333 $r0,$r2,$r0
   c8872:	54 00 03 ff 	andi $r0,$r0,#0x3ff
   c8876:	dd 21       	jral5 $r1
   c8878:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000c887a <AB_BSP_initEx>:
   c887a:	fc 4b       	push25 $r10,#0x58    ! {$r6~$r10, $fp, $gp, $lp}
   c887c:	80 e1       	mov55 $r7,$r1
   c887e:	f0 83       	swi37.sp $r0,[+#0xc]
   c8880:	49 00 57 b5 	jal d37ea <DRV_Pwr_BootFrom>
   c8884:	84 01       	movi55 $r0,#1
   c8886:	49 00 4d 96 	jal d23b2 <AB_SECTOR_GetMpParameter>
   c888a:	49 00 3d a0 	jal d03ca <AB_ADC_Init>
   c888e:	a0 39       	lwi333 $r0,[$r7+#0x4]
   c8890:	a0 bf       	lwi333 $r2,[$r7+#0x1c]
   c8892:	b4 27       	lwi450 $r1,[$r7]
   c8894:	04 a3 80 02 	lwi $r10,[$r7+#0x8]
   c8898:	04 83 80 03 	lwi $r8,[$r7+#0xc]
   c889c:	f0 82       	swi37.sp $r0,[+#0x8]
   c889e:	05 c3 80 04 	lwi $fp,[$r7+#0x10]
   c88a2:	a1 bd       	lwi333 $r6,[$r7+#0x14]
   c88a4:	04 93 80 06 	lwi $r9,[$r7+#0x18]
   c88a8:	c2 06       	beqz38 $r2,c88b4 <AB_BSP_initEx+0x3a>
   c88aa:	b4 02       	lwi450 $r0,[$r2]
   c88ac:	f1 81       	swi37.sp $r1,[+#0x4]
   c88ae:	49 00 44 74 	jal d1196 <AB_Debug_CpuExceptionMonitor>
   c88b2:	f1 01       	lwi37.sp $r1,[+#0x4]
   c88b4:	c1 05       	beqz38 $r1,c88be <AB_BSP_initEx+0x44>
   c88b6:	b4 01       	lwi450 $r0,[$r1]
   c88b8:	a6 4c       	lbi333 $r1,[$r1+#0x4]
   c88ba:	49 00 3d bb 	jal d0430 <AB_CLK_Switch>
   c88be:	4e 62 00 78 	beqz $r6,c89ae <AB_BSP_initEx+0x134>
   c88c2:	3e 1d 20 1c 	addi.gp $r1,#-188388
   c88c6:	3a 00 8c 00 	lmw.bi $r0,[$r1],$r3,#0x0    ! {$r0~$r3}
   c88ca:	b1 0f       	addri36.sp $r4,#0x3c
   c88cc:	b1 4b       	addri36.sp $r5,#0x2c
   c88ce:	3a 02 0c 20 	smw.bi $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   c88d2:	3e 1d 20 0c 	addi.gp $r1,#-188404
   c88d6:	3a 00 8c 00 	lmw.bi $r0,[$r1],$r3,#0x0    ! {$r0~$r3}
   c88da:	3a 02 8c 20 	smw.bi $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   c88de:	b4 26       	lwi450 $r1,[$r6]
   c88e0:	c1 23       	beqz38 $r1,c8926 <AB_BSP_initEx+0xac>
   c88e2:	00 03 00 14 	lbi $r0,[$r6+#0x14]
   c88e6:	f1 8f       	swi37.sp $r1,[+#0x3c]
   c88e8:	c0 17       	beqz38 $r0,c8916 <AB_BSP_initEx+0x9c>
   c88ea:	00 02 00 0c 	lbi $r0,[$r4+#0xc]
   c88ee:	44 1f ff 80 	movi $r1,#-128
   c88f2:	fe 0f       	or33 $r0,$r1
   c88f4:	10 02 00 0c 	sbi $r0,[$r4+#0xc]
   c88f8:	84 e1       	movi55 $r7,#1
   c88fa:	00 13 00 17 	lbi $r1,[$r6+#0x17]
   c88fe:	40 03 84 0c 	sll $r0,$r7,$r1
   c8902:	84 29       	movi55 $r1,#9
   c8904:	49 00 56 ee 	jal d36e0 <DRV_PinMux_SigSet>
   c8908:	00 13 00 16 	lbi $r1,[$r6+#0x16]
   c890c:	40 03 84 0c 	sll $r0,$r7,$r1
   c8910:	84 26       	movi55 $r1,#6
   c8912:	49 00 56 e7 	jal d36e0 <DRV_PinMux_SigSet>
   c8916:	b0 4f       	addri36.sp $r1,#0x3c
   c8918:	84 00       	movi55 $r0,#0
   c891a:	49 ff fe e8 	jal c86ea <AB_UART_Open>
   c891e:	a0 72       	lwi333 $r1,[$r6+#0x8]
   c8920:	c1 03       	beqz38 $r1,c8926 <AB_BSP_initEx+0xac>
   c8922:	3c 1f f2 89 	swi.gp $r1,[+#-13788]
   c8926:	a0 71       	lwi333 $r1,[$r6+#0x4]
   c8928:	c1 43       	beqz38 $r1,c89ae <AB_BSP_initEx+0x134>
   c892a:	b1 cb       	addri36.sp $r7,#0x2c
   c892c:	f1 8b       	swi37.sp $r1,[+#0x2c]
   c892e:	a0 34       	lwi333 $r0,[$r6+#0x10]
   c8930:	84 23       	movi55 $r1,#3
   c8932:	49 00 56 3f 	jal d35b0 <DRV_PinMux_GrpSet>
   c8936:	00 03 00 15 	lbi $r0,[$r6+#0x15]
   c893a:	c0 32       	beqz38 $r0,c899e <AB_BSP_initEx+0x124>
   c893c:	00 03 80 0c 	lbi $r0,[$r7+#0xc]
   c8940:	44 2f ff 80 	movi $r2,#-128
   c8944:	fe 17       	or33 $r0,$r2
   c8946:	10 03 80 0c 	sbi $r0,[$r7+#0xc]
   c894a:	44 00 04 00 	movi $r0,#1024
   c894e:	00 13 00 18 	lbi $r1,[$r6+#0x18]
   c8952:	10 13 80 0d 	sbi $r1,[$r7+#0xd]
   c8956:	00 23 00 19 	lbi $r2,[$r6+#0x19]
   c895a:	f0 8c       	swi37.sp $r0,[+#0x30]
   c895c:	10 23 80 0e 	sbi $r2,[$r7+#0xe]
   c8960:	84 e1       	movi55 $r7,#1
   c8962:	40 23 88 0c 	sll $r2,$r7,$r2
   c8966:	40 13 84 0c 	sll $r1,$r7,$r1
   c896a:	40 01 04 04 	or $r0,$r2,$r1
   c896e:	84 20       	movi55 $r1,#0
   c8970:	49 00 56 b8 	jal d36e0 <DRV_PinMux_SigSet>
   c8974:	00 13 00 18 	lbi $r1,[$r6+#0x18]
   c8978:	40 03 84 0c 	sll $r0,$r7,$r1
   c897c:	80 27       	mov55 $r1,$r7
   c897e:	49 00 55 07 	jal d338c <DRV_Gpio_DirSet>
   c8982:	00 13 00 19 	lbi $r1,[$r6+#0x19]
   c8986:	40 03 84 0c 	sll $r0,$r7,$r1
   c898a:	84 20       	movi55 $r1,#0
   c898c:	49 00 55 00 	jal d338c <DRV_Gpio_DirSet>
   c8990:	00 13 00 18 	lbi $r1,[$r6+#0x18]
   c8994:	40 03 84 0c 	sll $r0,$r7,$r1
   c8998:	84 20       	movi55 $r1,#0
   c899a:	49 00 55 0a 	jal d33ae <DRV_Gpio_ValSet>
   c899e:	b0 4b       	addri36.sp $r1,#0x2c
   c89a0:	84 01       	movi55 $r0,#1
   c89a2:	49 ff fe a4 	jal c86ea <AB_UART_Open>
   c89a6:	a0 73       	lwi333 $r1,[$r6+#0xc]
   c89a8:	c1 03       	beqz38 $r1,c89ae <AB_BSP_initEx+0x134>
   c89aa:	3c 1f f2 8a 	swi.gp $r1,[+#-13784]
   c89ae:	4e a2 00 0d 	beqz $r10,c89c8 <AB_BSP_initEx+0x14e>
   c89b2:	b4 2a       	lwi450 $r1,[$r10]
   c89b4:	3c 1f f1 97 	swi.gp $r1,[+#-14756]
   c89b8:	04 25 00 01 	lwi $r2,[$r10+#0x4]
   c89bc:	04 05 00 02 	lwi $r0,[$r10+#0x8]
   c89c0:	3e 1c 4b 66 	addi.gp $r1,#-242842
   c89c4:	49 00 3d be 	jal d0540 <AB_console_init>
   c89c8:	4f c2 00 08 	beqz $fp,c89d8 <AB_BSP_initEx+0x15e>
   c89cc:	b4 5c       	lwi450 $r2,[$fp]
   c89ce:	3c 2f f1 98 	swi.gp $r2,[+#-14752]
   c89d2:	b8 01       	lwi37 $r0,[$fp+#0x4]
   c89d4:	49 00 4e af 	jal d2732 <ab_airoha_vcmd_extend_reg>
   c89d8:	f0 02       	lwi37.sp $r0,[+#0x8]
   c89da:	c0 04       	beqz38 $r0,c89e2 <AB_BSP_initEx+0x168>
   c89dc:	b4 00       	lwi450 $r0,[$r0]
   c89de:	49 00 4b a4 	jal d2126 <Ab_printf_init>
   c89e2:	4e 82 00 2e 	beqz $r8,c8a3e <AB_BSP_initEx+0x1c4>
   c89e6:	84 00       	movi55 $r0,#0
   c89e8:	49 00 4c e5 	jal d23b2 <AB_SECTOR_GetMpParameter>
   c89ec:	80 c0       	mov55 $r6,$r0
   c89ee:	49 fd bd 9f 	jal 8052c <AB_SECTOR_GetCfgParameter>
   c89f2:	80 80       	mov55 $r4,$r0
   c89f4:	ce 04       	bnez38 $r6,c89fc <AB_BSP_initEx+0x182>
   c89f6:	80 66       	mov55 $r3,$r6
   c89f8:	80 46       	mov55 $r2,$r6
   c89fa:	d5 05       	j8 c8a04 <AB_BSP_initEx+0x18a>
   c89fc:	50 33 01 58 	addi $r3,$r6,#344
   c8a00:	50 23 01 c7 	addi $r2,$r6,#455
   c8a04:	b0 45       	addri36.sp $r1,#0x14
   c8a06:	f2 88       	swi37.sp $r2,[+#0x20]
   c8a08:	04 24 00 02 	lwi $r2,[$r8+#0x8]
   c8a0c:	04 04 00 03 	lwi $r0,[$r8+#0xc]
   c8a10:	f2 89       	swi37.sp $r2,[+#0x24]
   c8a12:	b4 48       	lwi450 $r2,[$r8]
   c8a14:	f0 8a       	swi37.sp $r0,[+#0x28]
   c8a16:	3c 2f f2 8b 	swi.gp $r2,[+#-13780]
   c8a1a:	00 24 00 05 	lbi $r2,[$r8+#0x5]
   c8a1e:	3e 27 ca 30 	sbi.gp $r2,[+#-13776]
   c8a22:	00 24 00 06 	lbi $r2,[$r8+#0x6]
   c8a26:	f6 85       	swi37.sp $r6,[+#0x14]
   c8a28:	3e 27 ca 31 	sbi.gp $r2,[+#-13775]
   c8a2c:	f4 86       	swi37.sp $r4,[+#0x18]
   c8a2e:	f3 87       	swi37.sp $r3,[+#0x1c]
   c8a30:	3e 0c 4b 78 	addi.gp $r0,#-242824
   c8a34:	00 34 00 04 	lbi $r3,[$r8+#0x4]
   c8a38:	84 46       	movi55 $r2,#6
   c8a3a:	49 00 0b 8a 	jal ca14e <BT_InitEx2>
   c8a3e:	4e 92 00 39 	beqz $r9,c8ab0 <AB_BSP_initEx+0x236>
   c8a42:	04 14 80 01 	lwi $r1,[$r9+#0x4]
   c8a46:	c1 05       	beqz38 $r1,c8a50 <AB_BSP_initEx+0x1d6>
   c8a48:	80 01       	mov55 $r0,$r1
   c8a4a:	84 21       	movi55 $r1,#1
   c8a4c:	49 00 54 a0 	jal d338c <DRV_Gpio_DirSet>
   c8a50:	b4 29       	lwi450 $r1,[$r9]
   c8a52:	c1 05       	beqz38 $r1,c8a5c <AB_BSP_initEx+0x1e2>
   c8a54:	80 01       	mov55 $r0,$r1
   c8a56:	84 21       	movi55 $r1,#1
   c8a58:	49 00 54 ab 	jal d33ae <DRV_Gpio_ValSet>
   c8a5c:	04 14 80 02 	lwi $r1,[$r9+#0x8]
   c8a60:	c1 05       	beqz38 $r1,c8a6a <AB_BSP_initEx+0x1f0>
   c8a62:	80 01       	mov55 $r0,$r1
   c8a64:	84 20       	movi55 $r1,#0
   c8a66:	49 00 54 c2 	jal d33ea <DRV_Gpio_PullSet>
   c8a6a:	04 14 80 03 	lwi $r1,[$r9+#0xc]
   c8a6e:	c1 05       	beqz38 $r1,c8a78 <AB_BSP_initEx+0x1fe>
   c8a70:	80 01       	mov55 $r0,$r1
   c8a72:	84 22       	movi55 $r1,#2
   c8a74:	49 00 54 bb 	jal d33ea <DRV_Gpio_PullSet>
   c8a78:	8d 30       	addi45 $r9,#16
   c8a7a:	85 00       	movi55 $r8,#0
   c8a7c:	b4 c9       	lwi450 $r6,[$r9]
   c8a7e:	c6 13       	beqz38 $r6,c8aa4 <AB_BSP_initEx+0x22a>
   c8a80:	84 e0       	movi55 $r7,#0
   c8a82:	96 34       	xlsb33 $r0,$r6
   c8a84:	c0 0b       	beqz38 $r0,c8a9a <AB_BSP_initEx+0x220>
   c8a86:	04 14 80 01 	lwi $r1,[$r9+#0x4]
   c8a8a:	04 24 80 02 	lwi $r2,[$r9+#0x8]
   c8a8e:	80 07       	mov55 $r0,$r7
   c8a90:	49 00 54 f7 	jal d347e <DRV_Gpio_IntReg>
   c8a94:	80 07       	mov55 $r0,$r7
   c8a96:	49 00 54 db 	jal d344c <DRV_Gpio_IntEn>
   c8a9a:	92 c1       	srli45 $r6,#1
   c8a9c:	c6 04       	beqz38 $r6,c8aa4 <AB_BSP_initEx+0x22a>
   c8a9e:	9d f9       	addi333 $r7,$r7,#1
   c8aa0:	97 f8       	zeb33 $r7,$r7
   c8aa2:	d5 f0       	j8 c8a82 <AB_BSP_initEx+0x208>
   c8aa4:	8d 01       	addi45 $r8,#1
   c8aa6:	54 84 00 ff 	andi $r8,$r8,#0xff
   c8aaa:	8d 2c       	addi45 $r9,#12
   c8aac:	5a 88 0a e8 	bnec $r8,#10,c8a7c <AB_BSP_initEx+0x202>
   c8ab0:	f0 03       	lwi37.sp $r0,[+#0xc]
   c8ab2:	fc cb       	pop25 $r10,#0x58    ! {$r6~$r10, $fp, $gp, $lp}

000c8ab4 <uart1_rx_ind>:
   c8ab4:	fc 47       	push25 $r10,#0x38    ! {$r6~$r10, $fp, $gp, $lp}
   c8ab6:	3c 1d f2 89 	lwi.gp $r1,[+#-13788]
   c8aba:	96 01       	zeh33 $r0,$r0
   c8abc:	c1 02       	beqz38 $r1,c8ac0 <uart1_rx_ind+0xc>
   c8abe:	dd 21       	jral5 $r1
   c8ac0:	3c 0d f1 97 	lwi.gp $r0,[+#-14756]
   c8ac4:	c0 14       	beqz38 $r0,c8aec <uart1_rx_ind+0x38>
   c8ac6:	3c 0d f1 98 	lwi.gp $r0,[+#-14752]
   c8aca:	c0 11       	beqz38 $r0,c8aec <uart1_rx_ind+0x38>
   c8acc:	d5 19       	j8 c8afe <uart1_rx_ind+0x4a>
   c8ace:	3c 0d f1 97 	lwi.gp $r0,[+#-14756]
   c8ad2:	c8 04       	bnez38 $r0,c8ada <uart1_rx_ind+0x26>
   c8ad4:	fd 03       	movd44 $r0,$r6
   c8ad6:	49 00 3d 23 	jal d051c <AB_console_handle>
   c8ada:	3c 0d f1 98 	lwi.gp $r0,[+#-14752]
   c8ade:	c8 08       	bnez38 $r0,c8aee <uart1_rx_ind+0x3a>
   c8ae0:	fd 03       	movd44 $r0,$r6
   c8ae2:	3e 2c 4b 54 	addi.gp $r2,#-242860
   c8ae6:	49 00 4f 75 	jal d29d0 <ab_airoha_vcmd_dispatch>
   c8aea:	d5 02       	j8 c8aee <uart1_rx_ind+0x3a>
   c8aec:	b1 81       	addri36.sp $r6,#0x4
   c8aee:	84 00       	movi55 $r0,#0
   c8af0:	80 26       	mov55 $r1,$r6
   c8af2:	44 20 00 32 	movi $r2,#50
   c8af6:	49 ff fc e2 	jal c84ba <AB_UART_Read>
   c8afa:	80 e0       	mov55 $r7,$r0
   c8afc:	c8 e9       	bnez38 $r0,c8ace <uart1_rx_ind+0x1a>
   c8afe:	fc c7       	pop25 $r10,#0x38    ! {$r6~$r10, $fp, $gp, $lp}

000c8b00 <uart2_rx_ind>:
   c8b00:	fc 47       	push25 $r10,#0x38    ! {$r6~$r10, $fp, $gp, $lp}
   c8b02:	3c 1d f2 8a 	lwi.gp $r1,[+#-13784]
   c8b06:	96 01       	zeh33 $r0,$r0
   c8b08:	c1 02       	beqz38 $r1,c8b0c <uart2_rx_ind+0xc>
   c8b0a:	dd 21       	jral5 $r1
   c8b0c:	3c 0d f1 97 	lwi.gp $r0,[+#-14756]
   c8b10:	5a 00 01 18 	beqc $r0,#1,c8b40 <uart2_rx_ind+0x40>
   c8b14:	3c 0d f1 98 	lwi.gp $r0,[+#-14752]
   c8b18:	5a 08 01 1d 	bnec $r0,#1,c8b52 <uart2_rx_ind+0x52>
   c8b1c:	d5 12       	j8 c8b40 <uart2_rx_ind+0x40>
   c8b1e:	3c 0d f1 97 	lwi.gp $r0,[+#-14756]
   c8b22:	5a 08 01 05 	bnec $r0,#1,c8b2c <uart2_rx_ind+0x2c>
   c8b26:	fd 03       	movd44 $r0,$r6
   c8b28:	49 00 3c fa 	jal d051c <AB_console_handle>
   c8b2c:	3c 0d f1 98 	lwi.gp $r0,[+#-14752]
   c8b30:	5a 08 01 09 	bnec $r0,#1,c8b42 <uart2_rx_ind+0x42>
   c8b34:	fd 03       	movd44 $r0,$r6
   c8b36:	3e 2c 4b 54 	addi.gp $r2,#-242860
   c8b3a:	49 00 4f 4b 	jal d29d0 <ab_airoha_vcmd_dispatch>
   c8b3e:	d5 02       	j8 c8b42 <uart2_rx_ind+0x42>
   c8b40:	b1 81       	addri36.sp $r6,#0x4
   c8b42:	84 01       	movi55 $r0,#1
   c8b44:	80 26       	mov55 $r1,$r6
   c8b46:	44 20 00 32 	movi $r2,#50
   c8b4a:	49 ff fc b8 	jal c84ba <AB_UART_Read>
   c8b4e:	80 e0       	mov55 $r7,$r0
   c8b50:	c8 e7       	bnez38 $r0,c8b1e <uart2_rx_ind+0x1e>
   c8b52:	fc c7       	pop25 $r10,#0x38    ! {$r6~$r10, $fp, $gp, $lp}

000c8b54 <bsp_mp_uart_tx>:
   c8b54:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c8b56:	80 60       	mov55 $r3,$r0
   c8b58:	3c 0d f1 98 	lwi.gp $r0,[+#-14752]
   c8b5c:	96 88       	zeb33 $r2,$r1
   c8b5e:	80 23       	mov55 $r1,$r3
   c8b60:	49 ff fd 6a 	jal c8634 <AB_UART_Write>
   c8b64:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c8b66 <bsp_console_uart_tx>:
   c8b66:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c8b68:	80 60       	mov55 $r3,$r0
   c8b6a:	3c 0d f1 97 	lwi.gp $r0,[+#-14756]
   c8b6e:	96 89       	zeh33 $r2,$r1
   c8b70:	80 23       	mov55 $r1,$r3
   c8b72:	49 ff fd 61 	jal c8634 <AB_UART_Write>
   c8b76:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c8b78 <bsp_bt_event_hanlder>:
   c8b78:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c8b7a:	80 c0       	mov55 $r6,$r0
   c8b7c:	b4 00       	lwi450 $r0,[$r0]
   c8b7e:	c8 14       	bnez38 $r0,c8ba6 <bsp_bt_event_hanlder+0x2e>
   c8b80:	3c 0d f1 98 	lwi.gp $r0,[+#-14752]
   c8b84:	5a 00 02 11 	beqc $r0,#2,c8ba6 <bsp_bt_event_hanlder+0x2e>
   c8b88:	2e 07 ca 31 	lbi.gp $r0,[+#-13775]
   c8b8c:	c0 03       	beqz38 $r0,c8b92 <bsp_bt_event_hanlder+0x1a>
   c8b8e:	49 00 4d cd 	jal d2728 <ab_airoha_vcmd_Bdie_reset_enable>
   c8b92:	2e 07 ca 30 	lbi.gp $r0,[+#-13776]
   c8b96:	c0 06       	beqz38 $r0,c8ba2 <bsp_bt_event_hanlder+0x2a>
   c8b98:	3e 0c 4b 54 	addi.gp $r0,#-242860
   c8b9c:	49 00 50 45 	jal d2c26 <ab_airoha_vcmd_uart_hci_mode_enable>
   c8ba0:	d5 03       	j8 c8ba6 <bsp_bt_event_hanlder+0x2e>
   c8ba2:	49 00 50 26 	jal d2bee <ab_airoha_vcmd_enable>
   c8ba6:	3c 1d f2 8b 	lwi.gp $r1,[+#-13780]
   c8baa:	c1 03       	beqz38 $r1,c8bb0 <bsp_bt_event_hanlder+0x38>
   c8bac:	80 06       	mov55 $r0,$r6
   c8bae:	dd 21       	jral5 $r1
   c8bb0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c8bb2 <hci_spi1602_check_data>:
   c8bb2:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   c8bb4:	3c 63 e3 5b 	lhi.gp $r6,[+#-14666]
   c8bb8:	ce 10       	bnez38 $r6,c8bd8 <hci_spi1602_check_data+0x26>
   c8bba:	44 10 00 51 	movi $r1,#81
   c8bbe:	84 45       	movi55 $r2,#5
   c8bc0:	80 1f       	mov55 $r0,$sp
   c8bc2:	49 ff fa 63 	jal c8088 <memset>
   c8bc6:	84 01       	movi55 $r0,#1
   c8bc8:	80 3f       	mov55 $r1,$sp
   c8bca:	80 46       	mov55 $r2,$r6
   c8bcc:	84 65       	movi55 $r3,#5
   c8bce:	3e 4c 4c 1c 	addi.gp $r4,#-242660
   c8bd2:	80 ff       	mov55 $r7,$sp
   c8bd4:	49 00 4c c4 	jal d255c <AB_SPI_WriteAndRead>
   c8bd8:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000c8bda <hci_spi1602_read_data>:
   c8bda:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   c8bdc:	3c 33 e3 5a 	lhi.gp $r3,[+#-14668]
   c8be0:	97 01       	zeh33 $r4,$r0
   c8be2:	e2 64       	slt45 $r3,$r4
   c8be4:	e9 1a       	bnezs8 c8c18 <hci_spi1602_read_data+0x3e>
   c8be6:	c4 19       	beqz38 $r4,c8c18 <hci_spi1602_read_data+0x3e>
   c8be8:	3c 53 e3 5b 	lhi.gp $r5,[+#-14666]
   c8bec:	9a dc       	sub333 $r3,$r3,$r4
   c8bee:	99 65       	add333 $r5,$r4,$r5
   c8bf0:	3c 5b e3 5b 	shi.gp $r5,[+#-14666]
   c8bf4:	44 00 00 52 	movi $r0,#82
   c8bf8:	10 0f 80 07 	sbi $r0,[$sp+#0x7]
   c8bfc:	3c 3b e3 5a 	shi.gp $r3,[+#-14668]
   c8c00:	3c 1f f1 9a 	swi.gp $r1,[+#-14744]
   c8c04:	84 01       	movi55 $r0,#1
   c8c06:	50 1f 80 07 	addi $r1,$sp,#7
   c8c0a:	80 40       	mov55 $r2,$r0
   c8c0c:	84 60       	movi55 $r3,#0
   c8c0e:	3e 5c 4c f2 	addi.gp $r5,#-242446
   c8c12:	49 00 4c d4 	jal d25ba <AB_SPI_WriteThenRead>
   c8c16:	d5 02       	j8 c8c1a <hci_spi1602_read_data+0x40>
   c8c18:	84 00       	movi55 $r0,#0
   c8c1a:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000c8c1c <read_trxlen_compl_int>:
   c8c1c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   c8c1e:	96 49       	zeh33 $r1,$r1
   c8c20:	80 c0       	mov55 $r6,$r0
   c8c22:	5a 10 05 0a 	beqc $r1,#5,c8c36 <read_trxlen_compl_int+0x1a>
   c8c26:	3e 0d 2f c4 	addi.gp $r0,#-184380
   c8c2a:	44 10 00 67 	movi $r1,#103
   c8c2e:	3e 2d 2f d0 	addi.gp $r2,#-184368
   c8c32:	49 00 42 90 	jal d1152 <assert_ab_callback_verbose>
   c8c36:	a6 74       	lbi333 $r1,[$r6+#0x4]
   c8c38:	a6 33       	lbi333 $r0,[$r6+#0x3]
   c8c3a:	40 10 a0 08 	slli $r1,$r1,#8
   c8c3e:	98 48       	add333 $r1,$r1,$r0
   c8c40:	3c 1b e3 5c 	shi.gp $r1,[+#-14664]
   c8c44:	a6 70       	lbi333 $r1,[$r6+#0x0]
   c8c46:	96 4e       	bmski33 $r1,#0x1
   c8c48:	c1 06       	beqz38 $r1,c8c54 <read_trxlen_compl_int+0x38>
   c8c4a:	a6 72       	lbi333 $r1,[$r6+#0x2]
   c8c4c:	a6 b1       	lbi333 $r2,[$r6+#0x1]
   c8c4e:	40 10 a0 08 	slli $r1,$r1,#8
   c8c52:	98 4a       	add333 $r1,$r1,$r2
   c8c54:	3c 1b e3 5a 	shi.gp $r1,[+#-14668]
   c8c58:	3c 13 e3 5a 	lhi.gp $r1,[+#-14668]
   c8c5c:	3c 03 e3 5b 	lhi.gp $r0,[+#-14666]
   c8c60:	e2 20       	slt45 $r1,$r0
   c8c62:	e8 09       	beqzs8 c8c74 <read_trxlen_compl_int+0x58>
   c8c64:	3e 0d 30 00 	addi.gp $r0,#-184320
   c8c68:	44 10 00 71 	movi $r1,#113
   c8c6c:	3e 2d 2f d0 	addi.gp $r2,#-184368
   c8c70:	49 00 42 71 	jal d1152 <assert_ab_callback_verbose>
   c8c74:	3c 33 e3 5a 	lhi.gp $r3,[+#-14668]
   c8c78:	3c 13 e3 5b 	lhi.gp $r1,[+#-14666]
   c8c7c:	9a 59       	sub333 $r1,$r3,$r1
   c8c7e:	3c 1b e3 5a 	shi.gp $r1,[+#-14668]
   c8c82:	d5 22       	j8 c8cc6 <read_trxlen_compl_int+0xaa>
   c8c84:	3c 0d f1 9c 	lwi.gp $r0,[+#-14736]
   c8c88:	49 00 4b 47 	jal d2316 <AB_queue_pop>
   c8c8c:	80 c0       	mov55 $r6,$r0
   c8c8e:	a4 00       	lhi333 $r0,[$r0+#0x0]
   c8c90:	3c 13 e3 5c 	lhi.gp $r1,[+#-14664]
   c8c94:	9c 81       	addi333 $r2,$r0,#1
   c8c96:	e0 41       	slts45 $r2,$r1
   c8c98:	e8 11       	beqzs8 c8cba <read_trxlen_compl_int+0x9e>
   c8c9a:	9a 08       	sub333 $r0,$r1,$r0
   c8c9c:	84 60       	movi55 $r3,#0
   c8c9e:	3c 0b e3 5c 	shi.gp $r0,[+#-14664]
   c8ca2:	9c 72       	addi333 $r1,$r6,#2
   c8ca4:	96 91       	zeh33 $r2,$r2
   c8ca6:	80 83       	mov55 $r4,$r3
   c8ca8:	3e 5c 4c e4 	addi.gp $r5,#-242460
   c8cac:	84 01       	movi55 $r0,#1
   c8cae:	49 00 4c 86 	jal d25ba <AB_SPI_WriteThenRead>
   c8cb2:	80 06       	mov55 $r0,$r6
   c8cb4:	49 00 4b 4a 	jal d2348 <AB_queue_entry_free>
   c8cb8:	d5 07       	j8 c8cc6 <read_trxlen_compl_int+0xaa>
   c8cba:	3c 0d f1 9c 	lwi.gp $r0,[+#-14736]
   c8cbe:	80 26       	mov55 $r1,$r6
   c8cc0:	49 00 4b 11 	jal d22e2 <AB_queue_push_front>
   c8cc4:	d5 06       	j8 c8cd0 <read_trxlen_compl_int+0xb4>
   c8cc6:	3c 0d f1 9c 	lwi.gp $r0,[+#-14736]
   c8cca:	49 00 4b 33 	jal d2330 <AB_queue_count>
   c8cce:	c8 db       	bnez38 $r0,c8c84 <read_trxlen_compl_int+0x68>
   c8cd0:	3c 3d f1 99 	lwi.gp $r3,[+#-14748]
   c8cd4:	3c 0d f1 9b 	lwi.gp $r0,[+#-14740]
   c8cd8:	3c 13 e3 5c 	lhi.gp $r1,[+#-14664]
   c8cdc:	3c 23 e3 5a 	lhi.gp $r2,[+#-14668]
   c8ce0:	dd 23       	jral5 $r3
   c8ce2:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000c8ce4 <send_tx_compl_int>:
   c8ce4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c8ce6:	49 00 36 35 	jal cf950 <Drv_1602DataReady>
   c8cea:	c0 03       	beqz38 $r0,c8cf0 <send_tx_compl_int+0xc>
   c8cec:	49 ff ff 63 	jal c8bb2 <hci_spi1602_check_data>
   c8cf0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c8cf2 <read_rx_compl_int>:
   c8cf2:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   c8cf4:	80 e0       	mov55 $r7,$r0
   c8cf6:	3c 03 e3 5b 	lhi.gp $r0,[+#-14666]
   c8cfa:	97 89       	zeh33 $r6,$r1
   c8cfc:	9a 06       	sub333 $r0,$r0,$r6
   c8cfe:	3c 0b e3 5b 	shi.gp $r0,[+#-14666]
   c8d02:	49 00 36 27 	jal cf950 <Drv_1602DataReady>
   c8d06:	c0 03       	beqz38 $r0,c8d0c <read_rx_compl_int+0x1a>
   c8d08:	49 ff ff 55 	jal c8bb2 <hci_spi1602_check_data>
   c8d0c:	3c 3d f1 9a 	lwi.gp $r3,[+#-14744]
   c8d10:	3c 0d f1 9b 	lwi.gp $r0,[+#-14740]
   c8d14:	80 27       	mov55 $r1,$r7
   c8d16:	80 46       	mov55 $r2,$r6
   c8d18:	dd 23       	jral5 $r3
   c8d1a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000c8d1c <data_ready_int>:
   c8d1c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c8d1e:	49 00 36 19 	jal cf950 <Drv_1602DataReady>
   c8d22:	c0 03       	beqz38 $r0,c8d28 <data_ready_int+0xc>
   c8d24:	49 ff ff 47 	jal c8bb2 <hci_spi1602_check_data>
   c8d28:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c8d2a <hci_spi1602_send_data>:
   c8d2a:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   c8d2c:	81 40       	mov55 $r10,$r0
   c8d2e:	3c 0d f1 9c 	lwi.gp $r0,[+#-14736]
   c8d32:	97 89       	zeh33 $r6,$r1
   c8d34:	49 00 4a fe 	jal d2330 <AB_queue_count>
   c8d38:	81 20       	mov55 $r9,$r0
   c8d3a:	c8 07       	bnez38 $r0,c8d48 <hci_spi1602_send_data+0x1e>
   c8d3c:	3c 13 e3 5c 	lhi.gp $r1,[+#-14664]
   c8d40:	50 83 00 01 	addi $r8,$r6,#1
   c8d44:	e1 01       	slts45 $r8,$r1
   c8d46:	e9 17       	bnezs8 c8d74 <hci_spi1602_send_data+0x4a>
   c8d48:	9c 34       	addi333 $r0,$r6,#4
   c8d4a:	49 00 4b 19 	jal d237c <AB_queue_entry_alloc>
   c8d4e:	80 e0       	mov55 $r7,$r0
   c8d50:	ad 80       	shi333 $r6,[$r0+#0x0]
   c8d52:	44 0f ff a2 	movi $r0,#-94
   c8d56:	ae 3a       	sbi333 $r0,[$r7+#0x2]
   c8d58:	80 46       	mov55 $r2,$r6
   c8d5a:	80 2a       	mov55 $r1,$r10
   c8d5c:	9c 3b       	addi333 $r0,$r7,#3
   c8d5e:	49 ff f9 75 	jal c8048 <memcpy>
   c8d62:	3c 0d f1 9c 	lwi.gp $r0,[+#-14736]
   c8d66:	80 27       	mov55 $r1,$r7
   c8d68:	49 00 4a a3 	jal d22ae <AB_queue_push>
   c8d6c:	84 c0       	movi55 $r6,#0
   c8d6e:	49 ff ff 22 	jal c8bb2 <hci_spi1602_check_data>
   c8d72:	d5 20       	j8 c8db2 <hci_spi1602_send_data+0x88>
   c8d74:	9a 4e       	sub333 $r1,$r1,$r6
   c8d76:	3c 1b e3 5c 	shi.gp $r1,[+#-14664]
   c8d7a:	80 08       	mov55 $r0,$r8
   c8d7c:	49 00 49 64 	jal d2044 <malloc>
   c8d80:	80 80       	mov55 $r4,$r0
   c8d82:	80 e0       	mov55 $r7,$r0
   c8d84:	44 0f ff a2 	movi $r0,#-94
   c8d88:	18 02 00 01 	sbi.bi $r0,[$r4],#0x1
   c8d8c:	80 46       	mov55 $r2,$r6
   c8d8e:	80 04       	mov55 $r0,$r4
   c8d90:	80 2a       	mov55 $r1,$r10
   c8d92:	49 ff f9 5b 	jal c8048 <memcpy>
   c8d96:	84 01       	movi55 $r0,#1
   c8d98:	80 27       	mov55 $r1,$r7
   c8d9a:	40 24 00 13 	zeh $r2,$r8
   c8d9e:	80 69       	mov55 $r3,$r9
   c8da0:	80 89       	mov55 $r4,$r9
   c8da2:	3e 5c 4c e4 	addi.gp $r5,#-242460
   c8da6:	49 00 4c 0a 	jal d25ba <AB_SPI_WriteThenRead>
   c8daa:	80 c0       	mov55 $r6,$r0
   c8dac:	80 07       	mov55 $r0,$r7
   c8dae:	49 00 48 e6 	jal d1f7a <free>
   c8db2:	80 06       	mov55 $r0,$r6
   c8db4:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000c8db6 <hci_spi1602_deinit>:
   c8db6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c8db8:	84 00       	movi55 $r0,#0
   c8dba:	49 00 35 d2 	jal cf95e <Drv_1602DataReadyIntEn>
   c8dbe:	84 20       	movi55 $r1,#0
   c8dc0:	3c 1f f1 99 	swi.gp $r1,[+#-14748]
   c8dc4:	84 01       	movi55 $r0,#1
   c8dc6:	49 00 4c 2f 	jal d2624 <AB_SPI_Close>
   c8dca:	3c 0d f1 9c 	lwi.gp $r0,[+#-14736]
   c8dce:	c0 03       	beqz38 $r0,c8dd4 <hci_spi1602_deinit+0x1e>
   c8dd0:	49 00 4a c9 	jal d2362 <AB_queue_free>
   c8dd4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c8dd6 <hci_spi1602_init>:
   c8dd6:	fc 22       	push25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}
   c8dd8:	80 e0       	mov55 $r7,$r0
   c8dda:	3c 6d f1 99 	lwi.gp $r6,[+#-14748]
   c8dde:	81 01       	mov55 $r8,$r1
   c8de0:	ce 20       	bnez38 $r6,c8e20 <hci_spi1602_init+0x4a>
   c8de2:	46 20 01 e8 	sethi $r2,#0x1e8
   c8de6:	b0 41       	addri36.sp $r1,#0x4
   c8de8:	58 21 04 80 	ori $r2,$r2,#0x480
   c8dec:	f2 81       	swi37.sp $r2,[+#0x4]
   c8dee:	f6 82       	swi37.sp $r6,[+#0x8]
   c8df0:	84 01       	movi55 $r0,#1
   c8df2:	49 00 4c 2f 	jal d2650 <AB_SPI_Open>
   c8df6:	84 01       	movi55 $r0,#1
   c8df8:	49 00 35 f4 	jal cf9e0 <Drv_1602Reset>
   c8dfc:	84 0a       	movi55 $r0,#10
   c8dfe:	49 fd bd 45 	jal 80888 <OS_delay_us>
   c8e02:	80 06       	mov55 $r0,$r6
   c8e04:	49 00 35 ee 	jal cf9e0 <Drv_1602Reset>
   c8e08:	84 0a       	movi55 $r0,#10
   c8e0a:	49 fd bd 3f 	jal 80888 <OS_delay_us>
   c8e0e:	3e 1c 4d 1c 	addi.gp $r1,#-242404
   c8e12:	80 06       	mov55 $r0,$r6
   c8e14:	49 00 35 b6 	jal cf980 <Drv_1602DataReadyIntReg>
   c8e18:	49 00 4a be 	jal d2394 <AB_queue_alloc>
   c8e1c:	3c 0f f1 9c 	swi.gp $r0,[+#-14736]
   c8e20:	3c 8f f1 99 	swi.gp $r8,[+#-14748]
   c8e24:	3c 7f f1 9b 	swi.gp $r7,[+#-14740]
   c8e28:	fc a2       	pop25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}

000c8e2a <uart_rx_data_ind>:
   c8e2a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c8e2c:	84 01       	movi55 $r0,#1
   c8e2e:	49 00 58 32 	jal d3e92 <DRV_TMR32B0_NotifyDisable>
   c8e32:	d5 13       	j8 c8e58 <uart_rx_data_ind+0x2e>
   c8e34:	49 00 09 89 	jal ca146 <BT_Pending_TxCnt>
   c8e38:	5c f0 03 e9 	slti $r15,$r0,#1001
   c8e3c:	e9 04       	bnezs8 c8e44 <uart_rx_data_ind+0x1a>
   c8e3e:	84 01       	movi55 $r0,#1
   c8e40:	84 2a       	movi55 $r1,#10
   c8e42:	d5 18       	j8 c8e72 <uart_rx_data_ind+0x48>
   c8e44:	3c 23 e3 3c 	lhi.gp $r2,[+#-14728]
   c8e48:	84 01       	movi55 $r0,#1
   c8e4a:	3e 1f c7 90 	addi.gp $r1,#-14448
   c8e4e:	49 ff fb 36 	jal c84ba <AB_UART_Read>
   c8e52:	c0 03       	beqz38 $r0,c8e58 <uart_rx_data_ind+0x2e>
   c8e54:	49 00 02 01 	jal c9256 <TRSPX_send>
   c8e58:	84 01       	movi55 $r0,#1
   c8e5a:	49 ff fb 1f 	jal c8498 <AB_UART_RxRecidue>
   c8e5e:	3c 1d f1 9e 	lwi.gp $r1,[+#-14728]
   c8e62:	e2 20       	slt45 $r1,$r0
   c8e64:	e9 e8       	bnezs8 c8e34 <uart_rx_data_ind+0xa>
   c8e66:	84 01       	movi55 $r0,#1
   c8e68:	49 ff fb 18 	jal c8498 <AB_UART_RxRecidue>
   c8e6c:	c0 09       	beqz38 $r0,c8e7e <uart_rx_data_ind+0x54>
   c8e6e:	84 01       	movi55 $r0,#1
   c8e70:	84 22       	movi55 $r1,#2
   c8e72:	80 40       	mov55 $r2,$r0
   c8e74:	84 60       	movi55 $r3,#0
   c8e76:	3e 4c 4e 80 	addi.gp $r4,#-242048
   c8e7a:	49 00 57 b4 	jal d3de2 <DRV_TMR32B0_NotifyEnable>
   c8e7e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c8e80 <uart_rx_timer>:
   c8e80:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c8e82:	d5 1a       	j8 c8eb6 <uart_rx_timer+0x36>
   c8e84:	49 00 09 61 	jal ca146 <BT_Pending_TxCnt>
   c8e88:	5c f0 03 e9 	slti $r15,$r0,#1001
   c8e8c:	e9 04       	bnezs8 c8e94 <uart_rx_timer+0x14>
   c8e8e:	84 01       	movi55 $r0,#1
   c8e90:	84 2a       	movi55 $r1,#10
   c8e92:	d5 18       	j8 c8ec2 <uart_rx_timer+0x42>
   c8e94:	3c 23 e3 3c 	lhi.gp $r2,[+#-14728]
   c8e98:	3e 1f c7 90 	addi.gp $r1,#-14448
   c8e9c:	84 01       	movi55 $r0,#1
   c8e9e:	49 ff fb 0e 	jal c84ba <AB_UART_Read>
   c8ea2:	49 00 01 da 	jal c9256 <TRSPX_send>
   c8ea6:	84 01       	movi55 $r0,#1
   c8ea8:	49 ff fa f8 	jal c8498 <AB_UART_RxRecidue>
   c8eac:	c0 11       	beqz38 $r0,c8ece <uart_rx_timer+0x4e>
   c8eae:	3c 1d f1 9e 	lwi.gp $r1,[+#-14728]
   c8eb2:	e2 01       	slt45 $r0,$r1
   c8eb4:	e9 05       	bnezs8 c8ebe <uart_rx_timer+0x3e>
   c8eb6:	84 01       	movi55 $r0,#1
   c8eb8:	49 ff fa f0 	jal c8498 <AB_UART_RxRecidue>
   c8ebc:	c8 e4       	bnez38 $r0,c8e84 <uart_rx_timer+0x4>
   c8ebe:	84 01       	movi55 $r0,#1
   c8ec0:	84 22       	movi55 $r1,#2
   c8ec2:	80 40       	mov55 $r2,$r0
   c8ec4:	84 60       	movi55 $r3,#0
   c8ec6:	3e 4c 4e 80 	addi.gp $r4,#-242048
   c8eca:	49 00 57 8c 	jal d3de2 <DRV_TMR32B0_NotifyEnable>
   c8ece:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c8ed0 <main>:
   c8ed0:	fc 24       	push25 $r8,#0x20    ! {$r6~$r8, $fp, $gp, $lp}
   c8ed2:	49 00 4c 34 	jal d273a <ab_airoha_vcmd_mp_ongoing>
   c8ed6:	80 c0       	mov55 $r6,$r0
   c8ed8:	80 1f       	mov55 $r0,$sp
   c8eda:	c6 11       	beqz38 $r6,c8efc <main+0x2c>
   c8edc:	3e 1f c0 f4 	addi.gp $r1,#-16140
   c8ee0:	3e 2f ca 38 	addi.gp $r2,#-13768
   c8ee4:	a0 cb       	lwi333 $r3,[$r1+#0xc]
   c8ee6:	a8 8c       	swi333 $r2,[$r1+#0x10]
   c8ee8:	84 40       	movi55 $r2,#0
   c8eea:	b6 43       	swi450 $r2,[$r3]
   c8eec:	a0 cd       	lwi333 $r3,[$r1+#0x14]
   c8eee:	a8 89       	swi333 $r2,[$r1+#0x4]
   c8ef0:	a8 9a       	swi333 $r2,[$r3+#0x8]
   c8ef2:	10 21 80 14 	sbi $r2,[$r3+#0x14]
   c8ef6:	49 ff fc c2 	jal c887a <AB_BSP_initEx>
   c8efa:	d5 00       	j8 c8efa <main+0x2a>
   c8efc:	3e 1f c0 f4 	addi.gp $r1,#-16140
   c8f00:	49 ff fc bd 	jal c887a <AB_BSP_initEx>
   c8f04:	84 05       	movi55 $r0,#5
   c8f06:	49 00 5c ab 	jal d485c <DRV_WDT_Enable>
   c8f0a:	49 00 01 08 	jal c911a <TRSPX_init>
   c8f0e:	fa 0f       	movpi45 $r0,#0x1f
   c8f10:	49 00 58 04 	jal d3f18 <DRV_TMR32B0_Enable>
   c8f14:	3e 0d 30 34 	addi.gp $r0,#-184268
   c8f18:	49 00 61 21 	jal d515a <puts>
   c8f1c:	80 26       	mov55 $r1,$r6
   c8f1e:	84 06       	movi55 $r0,#6
   c8f20:	49 00 0a 5b 	jal ca3d6 <ble_gap_tx_power_set>
   c8f24:	b0 84       	addri36.sp $r2,#0x10
   c8f26:	fa 0e       	movpi45 $r0,#0x1e
   c8f28:	ac 11       	shi333 $r0,[$r2+#0x2]
   c8f2a:	fa 04       	movpi45 $r0,#0x14
   c8f2c:	ac 12       	shi333 $r0,[$r2+#0x4]
   c8f2e:	8c 1e       	addi45 $r0,#30
   c8f30:	ac 13       	shi333 $r0,[$r2+#0x6]
   c8f32:	ac 14       	shi333 $r0,[$r2+#0x8]
   c8f34:	44 00 00 50 	movi $r0,#80
   c8f38:	ac 15       	shi333 $r0,[$r2+#0xa]
   c8f3a:	ac 16       	shi333 $r0,[$r2+#0xc]
   c8f3c:	8c 14       	addi45 $r0,#20
   c8f3e:	ad 90       	shi333 $r6,[$r2+#0x0]
   c8f40:	ac 17       	shi333 $r0,[$r2+#0xe]
   c8f42:	3a 01 0c 00 	lmw.bi $r0,[$r2],$r3,#0x0    ! {$r0~$r3}
   c8f46:	49 00 56 6f 	jal d3c24 <DRV_TMR16_PWM>
   c8f4a:	44 00 08 00 	movi $r0,#2048
   c8f4e:	84 21       	movi55 $r1,#1
   c8f50:	49 00 53 c8 	jal d36e0 <DRV_PinMux_SigSet>
   c8f54:	44 00 10 00 	movi $r0,#4096
   c8f58:	84 22       	movi55 $r1,#2
   c8f5a:	49 00 53 c3 	jal d36e0 <DRV_PinMux_SigSet>
   c8f5e:	44 00 20 00 	movi $r0,#8192
   c8f62:	84 23       	movi55 $r1,#3
   c8f64:	49 00 53 be 	jal d36e0 <DRV_PinMux_SigSet>
   c8f68:	84 24       	movi55 $r1,#4
   c8f6a:	44 00 40 00 	movi $r0,#16384
   c8f6e:	49 00 53 b9 	jal d36e0 <DRV_PinMux_SigSet>
   c8f72:	84 0a       	movi55 $r0,#10
   c8f74:	49 fd bc 9b 	jal 808aa <OS_delay_ms>
   c8f78:	44 00 06 3f 	movi $r0,#1599
   c8f7c:	49 00 56 48 	jal d3c0c <DRV_TMR16_PWM_Enable>
   c8f80:	44 00 00 80 	movi $r0,#128
   c8f84:	84 21       	movi55 $r1,#1
   c8f86:	49 00 52 af 	jal d34e4 <DRV_OdGpio_OeSet>
   c8f8a:	46 03 9f fd 	sethi $r0,#0x39ffd
   c8f8e:	3e 2f d0 f0 	addi.gp $r2,#-12048
   c8f92:	58 00 02 f4 	ori $r0,$r0,#0x2f4
   c8f96:	b6 02       	swi450 $r0,[$r2]
   c8f98:	46 03 63 cb 	sethi $r0,#0x363cb
   c8f9c:	58 00 00 56 	ori $r0,$r0,#0x56
   c8fa0:	a8 11       	swi333 $r0,[$r2+#0x4]
   c8fa2:	46 03 71 d1 	sethi $r0,#0x371d1
   c8fa6:	58 00 04 11 	ori $r0,$r0,#0x411
   c8faa:	a8 12       	swi333 $r0,[$r2+#0x8]
   c8fac:	46 03 b9 63 	sethi $r0,#0x3b963
   c8fb0:	58 00 00 70 	ori $r0,$r0,#0x70
   c8fb4:	a8 13       	swi333 $r0,[$r2+#0xc]
   c8fb6:	46 0b 6a dd 	sethi $r0,#0xb6add
   c8fba:	58 00 05 41 	ori $r0,$r0,#0x541
   c8fbe:	a8 14       	swi333 $r0,[$r2+#0x10]
   c8fc0:	46 03 9f fd 	sethi $r0,#0x39ffd
   c8fc4:	58 00 0d e9 	ori $r0,$r0,#0xde9
   c8fc8:	a8 15       	swi333 $r0,[$r2+#0x14]
   c8fca:	46 03 64 47 	sethi $r0,#0x36447
   c8fce:	58 00 00 e6 	ori $r0,$r0,#0xe6
   c8fd2:	a8 16       	swi333 $r0,[$r2+#0x18]
   c8fd4:	46 03 b7 b1 	sethi $r0,#0x3b7b1
   c8fd8:	58 00 09 ca 	ori $r0,$r0,#0x9ca
   c8fdc:	a8 17       	swi333 $r0,[$r2+#0x1c]
   c8fde:	46 0b 6b 71 	sethi $r0,#0xb6b71
   c8fe2:	58 00 03 09 	ori $r0,$r0,#0x309
   c8fe6:	14 01 00 08 	swi $r0,[$r2+#0x20]
   c8fea:	46 0b 55 f2 	sethi $r0,#0xb55f2
   c8fee:	58 00 08 db 	ori $r0,$r0,#0x8db
   c8ff2:	14 01 00 09 	swi $r0,[$r2+#0x24]
   c8ff6:	46 03 a0 00 	sethi $r0,#0x3a000
   c8ffa:	58 00 0e 97 	ori $r0,$r0,#0xe97
   c8ffe:	14 01 00 0a 	swi $r0,[$r2+#0x28]
   c9002:	46 03 c2 5d 	sethi $r0,#0x3c25d
   c9006:	58 00 04 6a 	ori $r0,$r0,#0x46a
   c900a:	14 01 00 0b 	swi $r0,[$r2+#0x2c]
   c900e:	46 0b ac 11 	sethi $r0,#0xbac11
   c9012:	3e 3f d1 20 	addi.gp $r3,#-12000
   c9016:	58 00 07 01 	ori $r0,$r0,#0x701
   c901a:	a8 1b       	swi333 $r0,[$r3+#0xc]
   c901c:	46 0b c8 66 	sethi $r0,#0xbc866
   c9020:	58 00 01 de 	ori $r0,$r0,#0x1de
   c9024:	a8 1f       	swi333 $r0,[$r3+#0x1c]
   c9026:	46 03 ba 12 	sethi $r0,#0x3ba12
   c902a:	58 00 0b ce 	ori $r0,$r0,#0xbce
   c902e:	46 43 a8 b7 	sethi $r4,#0x3a8b7
   c9032:	84 40       	movi55 $r2,#0
   c9034:	58 42 0d 78 	ori $r4,$r4,#0xd78
   c9038:	14 01 80 0b 	swi $r0,[$r3+#0x2c]
   c903c:	46 03 b7 04 	sethi $r0,#0x3b704
   c9040:	b6 83       	swi450 $r4,[$r3]
   c9042:	a8 99       	swi333 $r2,[$r3+#0x4]
   c9044:	a8 9a       	swi333 $r2,[$r3+#0x8]
   c9046:	a8 9c       	swi333 $r2,[$r3+#0x10]
   c9048:	a9 1d       	swi333 $r4,[$r3+#0x14]
   c904a:	a8 9e       	swi333 $r2,[$r3+#0x18]
   c904c:	14 21 80 08 	swi $r2,[$r3+#0x20]
   c9050:	14 21 80 09 	swi $r2,[$r3+#0x24]
   c9054:	14 41 80 0a 	swi $r4,[$r3+#0x28]
   c9058:	58 00 0f 85 	ori $r0,$r0,#0xf85
   c905c:	3e 3f d1 50 	addi.gp $r3,#-11952
   c9060:	b6 03       	swi450 $r0,[$r3]
   c9062:	46 0b e4 cf 	sethi $r0,#0xbe4cf
   c9066:	58 00 06 f8 	ori $r0,$r0,#0x6f8
   c906a:	a8 1b       	swi333 $r0,[$r3+#0xc]
   c906c:	46 03 b6 dd 	sethi $r0,#0x3b6dd
   c9070:	58 00 03 1f 	ori $r0,$r0,#0x31f
   c9074:	a8 1d       	swi333 $r0,[$r3+#0x14]
   c9076:	46 03 dd 11 	sethi $r0,#0x3dd11
   c907a:	58 00 0c c2 	ori $r0,$r0,#0xcc2
   c907e:	a8 1f       	swi333 $r0,[$r3+#0x1c]
   c9080:	46 03 b6 a4 	sethi $r0,#0x3b6a4
   c9084:	58 00 06 a7 	ori $r0,$r0,#0x6a7
   c9088:	a8 99       	swi333 $r2,[$r3+#0x4]
   c908a:	a8 9a       	swi333 $r2,[$r3+#0x8]
   c908c:	a8 9c       	swi333 $r2,[$r3+#0x10]
   c908e:	a8 9e       	swi333 $r2,[$r3+#0x18]
   c9090:	14 21 80 08 	swi $r2,[$r3+#0x20]
   c9094:	14 21 80 09 	swi $r2,[$r3+#0x24]
   c9098:	14 01 80 0a 	swi $r0,[$r3+#0x28]
   c909c:	46 0b ec bf 	sethi $r0,#0xbecbf
   c90a0:	58 00 05 72 	ori $r0,$r0,#0x572
   c90a4:	14 01 80 0b 	swi $r0,[$r3+#0x2c]
   c90a8:	46 04 1f 00 	sethi $r0,#0x41f00
   c90ac:	3c 0f f4 60 	swi.gp $r0,[+#-11904]
   c90b0:	3c 2f f4 61 	swi.gp $r2,[+#-11900]
   c90b4:	46 04 6f ff 	sethi $r0,#0x46fff
   c90b8:	58 00 0e 00 	ori $r0,$r0,#0xe00
   c90bc:	3c 0f f4 62 	swi.gp $r0,[+#-11896]
   c90c0:	3c 0f f4 63 	swi.gp $r0,[+#-11892]
   c90c4:	46 04 4f fe 	sethi $r0,#0x44ffe
   c90c8:	3c 0f f4 64 	swi.gp $r0,[+#-11888]
   c90cc:	46 03 f4 cc 	sethi $r0,#0x3f4cc
   c90d0:	58 00 0c cd 	ori $r0,$r0,#0xccd
   c90d4:	3c 0f f4 65 	swi.gp $r0,[+#-11884]
   c90d8:	46 03 a8 31 	sethi $r0,#0x3a831
   c90dc:	58 00 02 6f 	ori $r0,$r0,#0x26f
   c90e0:	3c 0f f0 8b 	swi.gp $r0,[+#-15828]
   c90e4:	49 00 5b f1 	jal d48c6 <InitAlg>
   c90e8:	84 21       	movi55 $r1,#1
   c90ea:	84 07       	movi55 $r0,#7
   c90ec:	49 00 52 0e 	jal d3508 <DRV_OdGpio_ValSet>
   c90f0:	49 00 5b a8 	jal d4840 <DRV_WDT_Kick>
   c90f4:	fa 04       	movpi45 $r0,#0x14
   c90f6:	49 00 00 b0 	jal c9256 <TRSPX_send>
   c90fa:	84 0a       	movi55 $r0,#10
   c90fc:	49 fd bb d7 	jal 808aa <OS_delay_ms>
   c9100:	49 00 08 23 	jal ca146 <BT_Pending_TxCnt>
   c9104:	80 20       	mov55 $r1,$r0
   c9106:	3c 0f f2 90 	swi.gp $r0,[+#-13760]
   c910a:	c0 ef       	beqz38 $r0,c90e8 <main+0x218>
   c910c:	3e 0d 30 3c 	addi.gp $r0,#-184260
   c9110:	49 00 48 0f 	jal d212e <printf>
   c9114:	3c 6f f2 90 	swi.gp $r6,[+#-13760]
   c9118:	d5 e8       	j8 c90e8 <main+0x218>

000c911a <TRSPX_init>:
   c911a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c911c:	49 00 00 8d 	jal c9236 <TRSPX_service_init>
   c9120:	fa 07       	movpi45 $r0,#0x17
   c9122:	49 00 10 98 	jal cb252 <BLE_att_set_default_mtu>
   c9126:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c9128 <TRSPX_ble_set_scan_data_cb>:
   c9128:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   c912a:	3c 1d 4a ae 	lwi.gp $r1,[+#-185672]
   c912e:	b0 01       	addri36.sp $r0,#0x4
   c9130:	ac 40       	shi333 $r1,[$r0+#0x0]
   c9132:	92 30       	srli45 $r1,#16
   c9134:	ae 42       	sbi333 $r1,[$r0+#0x2]
   c9136:	3e 2c 51 d8 	addi.gp $r2,#-241192
   c913a:	84 23       	movi55 $r1,#3
   c913c:	49 00 0a e2 	jal ca700 <ble_gap_scan_data_set>
   c9140:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000c9142 <TRSPX_bt_evt_hdl>:
   c9142:	fc 03       	push25 $r6,#0x18    ! {$r6, $fp, $gp, $lp}
   c9144:	b4 20       	lwi450 $r1,[$r0]
   c9146:	44 20 10 00 	movi $r2,#4096
   c914a:	4c 11 00 21 	beq $r1,$r2,c918c <TRSPX_bt_evt_hdl+0x4a>
   c914e:	5c f0 90 01 	slti $r15,$r1,#4097
   c9152:	e8 03       	beqzs8 c9158 <TRSPX_bt_evt_hdl+0x16>
   c9154:	c1 0a       	beqz38 $r1,c9168 <TRSPX_bt_evt_hdl+0x26>
   c9156:	d5 40       	j8 c91d6 <TRSPX_bt_evt_hdl+0x94>
   c9158:	9c 91       	addi333 $r2,$r2,#1
   c915a:	4c 11 00 36 	beq $r1,$r2,c91c6 <TRSPX_bt_evt_hdl+0x84>
   c915e:	44 20 30 02 	movi $r2,#12290
   c9162:	4c 11 40 3a 	bne $r1,$r2,c91d6 <TRSPX_bt_evt_hdl+0x94>
   c9166:	d5 34       	j8 c91ce <TRSPX_bt_evt_hdl+0x8c>
   c9168:	a6 04       	lbi333 $r0,[$r0+#0x4]
   c916a:	c0 10       	beqz38 $r0,c918a <TRSPX_bt_evt_hdl+0x48>
   c916c:	b1 84       	addri36.sp $r6,#0x10
   c916e:	ae 70       	sbi333 $r1,[$r6+#0x0]
   c9170:	50 0f 80 11 	addi $r0,$sp,#17
   c9174:	3e 1d 30 4c 	addi.gp $r1,#-184244
   c9178:	84 46       	movi55 $r2,#6
   c917a:	49 ff f7 67 	jal c8048 <memcpy>
   c917e:	80 06       	mov55 $r0,$r6
   c9180:	3e 1c 51 28 	addi.gp $r1,#-241368
   c9184:	49 00 09 d5 	jal ca52e <ble_gap_address_set>
   c9188:	d5 27       	j8 c91d6 <TRSPX_bt_evt_hdl+0x94>
   c918a:	d5 00       	j8 c918a <TRSPX_bt_evt_hdl+0x48>
   c918c:	a6 84       	lbi333 $r2,[$r0+#0x4]
   c918e:	ca 24       	bnez38 $r2,c91d6 <TRSPX_bt_evt_hdl+0x94>
   c9190:	a0 01       	lwi333 $r0,[$r0+#0x4]
   c9192:	92 08       	srli45 $r0,#8
   c9194:	2e 47 ca 44 	lbi.gp $r4,[+#-13756]
   c9198:	96 01       	zeh33 $r0,$r0
   c919a:	84 a8       	movi55 $r5,#8
   c919c:	3c 0b e9 7a 	shi.gp $r0,[+#-11532]
   c91a0:	b0 41       	addri36.sp $r1,#0x4
   c91a2:	ad 48       	shi333 $r5,[$r1+#0x0]
   c91a4:	ad 49       	shi333 $r5,[$r1+#0x2]
   c91a6:	54 52 00 03 	andi $r5,$r4,#0x3
   c91aa:	8c bd       	addi45 $r5,#29
   c91ac:	ad 4a       	shi333 $r5,[$r1+#0x4]
   c91ae:	9d 21       	addi333 $r4,$r4,#1
   c91b0:	44 50 00 64 	movi $r5,#100
   c91b4:	ad 4b       	shi333 $r5,[$r1+#0x6]
   c91b6:	ac 8c       	shi333 $r2,[$r1+#0x8]
   c91b8:	ac 8d       	shi333 $r2,[$r1+#0xa]
   c91ba:	3e 47 ca 44 	sbi.gp $r4,[+#-13756]
   c91be:	49 00 09 ff 	jal ca5bc <ble_gap_conn_param_update>
   c91c2:	84 22       	movi55 $r1,#2
   c91c4:	d5 02       	j8 c91c8 <TRSPX_bt_evt_hdl+0x86>
   c91c6:	84 20       	movi55 $r1,#0
   c91c8:	3e 0f c6 74 	addi.gp $r0,#-14732
   c91cc:	d5 04       	j8 c91d4 <TRSPX_bt_evt_hdl+0x92>
   c91ce:	a4 42       	lhi333 $r1,[$r0+#0x4]
   c91d0:	3e 0f c6 78 	addi.gp $r0,#-14728
   c91d4:	b6 20       	swi450 $r1,[$r0]
   c91d6:	fc 83       	pop25 $r6,#0x18    ! {$r6, $fp, $gp, $lp}

000c91d8 <TRSPX_ble_set_adv_data_cb>:
   c91d8:	fc 04       	push25 $r6,#0x20    ! {$r6, $fp, $gp, $lp}
   c91da:	3e 6d 2a bc 	addi.gp $r6,#-185668
   c91de:	3a 03 0c 04 	lmw.bim $r0,[$r6],$r3,#0x0    ! {$r0~$r3}
   c91e2:	80 9f       	mov55 $r4,$sp
   c91e4:	3a 02 0c 24 	smw.bim $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   c91e8:	3a 03 0c 00 	lmw.bi $r0,[$r6],$r3,#0x0    ! {$r0~$r3}
   c91ec:	3a 02 08 24 	smw.bim $r0,[$r4],$r2,#0x0    ! {$r0~$r2}
   c91f0:	80 1f       	mov55 $r0,$sp
   c91f2:	fa 2f       	movpi45 $r1,#0x1f
   c91f4:	3e 2c 52 06 	addi.gp $r2,#-241146
   c91f8:	1a 32 00 01 	shi.bi $r3,[$r4],#0x2
   c91fc:	92 70       	srli45 $r3,#16
   c91fe:	ae e0       	sbi333 $r3,[$r4+#0x0]
   c9200:	49 00 0a 9e 	jal ca73c <ble_gap_adv_data_set>
   c9204:	fc 84       	pop25 $r6,#0x20    ! {$r6, $fp, $gp, $lp}

000c9206 <TRSPX_ble_set_adv_parameter_cb>:
   c9206:	fc 02       	push25 $r6,#0x10    ! {$r6, $fp, $gp, $lp}
   c9208:	3e 0d 2a dc 	addi.gp $r0,#-185636
   c920c:	3a 00 08 00 	lmw.bi $r0,[$r0],$r2,#0x0    ! {$r0~$r2}
   c9210:	b0 c1       	addri36.sp $r3,#0x4
   c9212:	3a 01 88 20 	smw.bi $r0,[$r3],$r2,#0x0    ! {$r0~$r2}
   c9216:	80 03       	mov55 $r0,$r3
   c9218:	3e 1c 52 22 	addi.gp $r1,#-241118
   c921c:	49 00 0a 12 	jal ca640 <ble_gap_adv_start>
   c9220:	fc 82       	pop25 $r6,#0x10    ! {$r6, $fp, $gp, $lp}

000c9222 <TRSPX_ble_set_adv_scan_data_cpl_cb>:
   c9222:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c9224:	84 21       	movi55 $r1,#1
   c9226:	3c 1f f1 9d 	swi.gp $r1,[+#-14732]
   c922a:	84 00       	movi55 $r0,#0
   c922c:	49 00 07 88 	jal ca13c <BT_Log_Enable>
   c9230:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c9232 <_LeXport_TxCccdCB>:
   c9232:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c9234:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c9236 <TRSPX_service_init>:
   c9236:	fc 03       	push25 $r6,#0x18    ! {$r6, $fp, $gp, $lp}
   c9238:	3e 0d 2a e8 	addi.gp $r0,#-185624
   c923c:	80 a0       	mov55 $r5,$r0
   c923e:	3a 02 8c 04 	lmw.bim $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   c9242:	b1 01       	addri36.sp $r4,#0x4
   c9244:	80 c4       	mov55 $r6,$r4
   c9246:	3a 03 0c 24 	smw.bim $r0,[$r6],$r3,#0x0    ! {$r0~$r3}
   c924a:	80 04       	mov55 $r0,$r4
   c924c:	b4 a5       	lwi450 $r5,[$r5]
   c924e:	b6 a6       	swi450 $r5,[$r6]
   c9250:	49 00 00 2e 	jal c92ac <TRSPX_service_init_para>
   c9254:	fc 83       	pop25 $r6,#0x18    ! {$r6, $fp, $gp, $lp}

000c9256 <TRSPX_send>:
   c9256:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   c9258:	97 c1       	zeh33 $r7,$r0
   c925a:	3c 0d f1 9d 	lwi.gp $r0,[+#-14732]
   c925e:	5a 08 02 1a 	bnec $r0,#2,c9292 <TRSPX_send+0x3c>
   c9262:	44 10 00 66 	movi $r1,#102
   c9266:	fa 44       	movpi45 $r2,#0x14
   c9268:	3e 0f c7 90 	addi.gp $r0,#-14448
   c926c:	49 ff f7 0e 	jal c8088 <memset>
   c9270:	2e 37 ca 45 	lbi.gp $r3,[+#-13755]
   c9274:	3e 37 c7 90 	sbi.gp $r3,[+#-14448]
   c9278:	9c d9       	addi333 $r3,$r3,#1
   c927a:	3e 37 ca 45 	sbi.gp $r3,[+#-13755]
   c927e:	3c 03 e9 79 	lhi.gp $r0,[+#-11534]
   c9282:	80 27       	mov55 $r1,$r7
   c9284:	49 00 10 87 	jal cb392 <BLE_att_set_attribute_length>
   c9288:	3c 03 e9 79 	lhi.gp $r0,[+#-11534]
   c928c:	84 20       	movi55 $r1,#0
   c928e:	49 00 18 df 	jal cc44c <BLE_gatt_charact_notify>
   c9292:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000c9294 <_LeXport_RxCB>:
   c9294:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c9296:	3c 03 e9 74 	lhi.gp $r0,[+#-11544]
   c929a:	49 00 0f c7 	jal cb228 <BLE_att_get_attribute_length>
   c929e:	80 40       	mov55 $r2,$r0
   c92a0:	3e 1f c6 c8 	addi.gp $r1,#-14648
   c92a4:	84 01       	movi55 $r0,#1
   c92a6:	49 ff f9 c7 	jal c8634 <AB_UART_Write>
   c92aa:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c92ac <TRSPX_service_init_para>:
   c92ac:	fc 53       	push25 $r10,#0x98    ! {$r6~$r10, $fp, $gp, $lp}
   c92ae:	50 9f 80 80 	addi $r9,$sp,#128
   c92b2:	80 c0       	mov55 $r6,$r0
   c92b4:	84 20       	movi55 $r1,#0
   c92b6:	80 09       	mov55 $r0,$r9
   c92b8:	fa 48       	movpi45 $r2,#0x18
   c92ba:	49 ff f6 e7 	jal c8088 <memset>
   c92be:	44 00 28 00 	movi $r0,#10240
   c92c2:	f0 a0       	swi37.sp $r0,[+#0x80]
   c92c4:	85 1f       	movi55 $r8,#-1
   c92c6:	84 11       	movi55 $r0,#-15
   c92c8:	10 04 80 08 	sbi $r0,[$r9+#0x8]
   c92cc:	10 84 80 09 	sbi $r8,[$r9+#0x9]
   c92d0:	b1 d7       	addri36.sp $r7,#0x5c
   c92d2:	a1 71       	lwi333 $r5,[$r6+#0x4]
   c92d4:	fa 94       	movpi45 $r4,#0x24
   c92d6:	85 42       	movi55 $r10,#2
   c92d8:	80 44       	mov55 $r2,$r4
   c92da:	80 07       	mov55 $r0,$r7
   c92dc:	84 20       	movi55 $r1,#0
   c92de:	f4 82       	swi37.sp $r4,[+#0x8]
   c92e0:	f5 81       	swi37.sp $r5,[+#0x4]
   c92e2:	14 af 80 21 	swi $r10,[$sp+#0x84]
   c92e6:	49 ff f6 d1 	jal c8088 <memset>
   c92ea:	44 0f ff e1 	movi $r0,#-31
   c92ee:	ae 3c       	sbi333 $r0,[$r7+#0x4]
   c92f0:	44 3f ff 88 	movi $r3,#-120
   c92f4:	fa 00       	movpi45 $r0,#0x10
   c92f6:	10 83 80 05 	sbi $r8,[$r7+#0x5]
   c92fa:	10 33 80 15 	sbi $r3,[$r7+#0x15]
   c92fe:	10 03 80 14 	sbi $r0,[$r7+#0x14]
   c9302:	50 8f 80 38 	addi $r8,$sp,#56
   c9306:	f5 01       	lwi37.sp $r5,[+#0x4]
   c9308:	f4 02       	lwi37.sp $r4,[+#0x8]
   c930a:	f5 9e       	swi37.sp $r5,[+#0x78]
   c930c:	a1 74       	lwi333 $r5,[$r6+#0x10]
   c930e:	a0 32       	lwi333 $r0,[$r6+#0x8]
   c9310:	45 c0 00 c8 	movi $fp,#200
   c9314:	f0 83       	swi37.sp $r0,[+#0xc]
   c9316:	80 44       	mov55 $r2,$r4
   c9318:	80 08       	mov55 $r0,$r8
   c931a:	84 20       	movi55 $r1,#0
   c931c:	f3 82       	swi37.sp $r3,[+#0x8]
   c931e:	f5 81       	swi37.sp $r5,[+#0x4]
   c9320:	14 af 80 17 	swi $r10,[$sp+#0x5c]
   c9324:	13 c3 80 0b 	shi $fp,[$r7+#0x16]
   c9328:	13 c3 80 0c 	shi $fp,[$r7+#0x18]
   c932c:	49 ff f6 ae 	jal c8088 <memset>
   c9330:	fa 19       	movpi45 $r0,#0x29
   c9332:	10 04 00 05 	sbi $r0,[$r8+#0x5]
   c9336:	10 a4 00 04 	sbi $r10,[$r8+#0x4]
   c933a:	f0 03       	lwi37.sp $r0,[+#0xc]
   c933c:	f5 01       	lwi37.sp $r5,[+#0x4]
   c933e:	f0 95       	swi37.sp $r0,[+#0x54]
   c9340:	f5 96       	swi37.sp $r5,[+#0x58]
   c9342:	b4 46       	lwi450 $r2,[$r6]
   c9344:	a0 73       	lwi333 $r1,[$r6+#0xc]
   c9346:	fa 00       	movpi45 $r0,#0x10
   c9348:	b1 85       	addri36.sp $r6,#0x14
   c934a:	f0 85       	swi37.sp $r0,[+#0x14]
   c934c:	44 0f ff b3 	movi $r0,#-77
   c9350:	ae 34       	sbi333 $r0,[$r6+#0x4]
   c9352:	8e 18       	subi45 $r0,#24
   c9354:	ae 35       	sbi333 $r0,[$r6+#0x5]
   c9356:	44 00 00 72 	movi $r0,#114
   c935a:	ae 36       	sbi333 $r0,[$r6+#0x6]
   c935c:	44 00 00 34 	movi $r0,#52
   c9360:	ae 37       	sbi333 $r0,[$r6+#0x7]
   c9362:	44 0f ff be 	movi $r0,#-66
   c9366:	10 03 00 08 	sbi $r0,[$r6+#0x8]
   c936a:	44 0f ff ec 	movi $r0,#-20
   c936e:	10 03 00 09 	sbi $r0,[$r6+#0x9]
   c9372:	8e 18       	subi45 $r0,#24
   c9374:	10 03 00 0a 	sbi $r0,[$r6+#0xa]
   c9378:	44 0f ff a8 	movi $r0,#-88
   c937c:	10 03 00 0b 	sbi $r0,[$r6+#0xb]
   c9380:	84 14       	movi55 $r0,#-12
   c9382:	44 40 00 41 	movi $r4,#65
   c9386:	10 03 00 0c 	sbi $r0,[$r6+#0xc]
   c938a:	9c 22       	addi333 $r0,$r4,#2
   c938c:	10 43 00 0e 	sbi $r4,[$r6+#0xe]
   c9390:	10 03 00 0d 	sbi $r0,[$r6+#0xd]
   c9394:	f2 8c       	swi37.sp $r2,[+#0x30]
   c9396:	f3 02       	lwi37.sp $r3,[+#0x8]
   c9398:	10 03 00 10 	sbi $r0,[$r6+#0x10]
   c939c:	44 00 00 53 	movi $r0,#83
   c93a0:	10 03 00 11 	sbi $r0,[$r6+#0x11]
   c93a4:	10 03 00 12 	sbi $r0,[$r6+#0x12]
   c93a8:	8e 0a       	subi45 $r0,#10
   c93aa:	10 03 00 13 	sbi $r0,[$r6+#0x13]
   c93ae:	84 0c       	movi55 $r0,#12
   c93b0:	10 03 00 14 	sbi $r0,[$r6+#0x14]
   c93b4:	84 08       	movi55 $r0,#8
   c93b6:	10 03 00 15 	sbi $r0,[$r6+#0x15]
   c93ba:	80 09       	mov55 $r0,$r9
   c93bc:	10 33 00 0f 	sbi $r3,[$r6+#0xf]
   c93c0:	14 af 80 0e 	swi $r10,[$sp+#0x38]
   c93c4:	12 a4 00 0b 	shi $r10,[$r8+#0x16]
   c93c8:	13 c3 00 0b 	shi $fp,[$r6+#0x16]
   c93cc:	13 c3 00 0c 	shi $fp,[$r6+#0x18]
   c93d0:	f1 8d       	swi37.sp $r1,[+#0x34]
   c93d2:	49 00 19 6e 	jal cc6ae <BLE_gatt_add_service>
   c93d6:	3c 0b e9 78 	shi.gp $r0,[+#-11536]
   c93da:	80 07       	mov55 $r0,$r7
   c93dc:	49 00 18 ee 	jal cc5b8 <BLE_gatt_add_charact>
   c93e0:	3c 0b e9 79 	shi.gp $r0,[+#-11534]
   c93e4:	80 08       	mov55 $r0,$r8
   c93e6:	49 00 1a 1d 	jal cc820 <BLE_gatt_add_descrip>
   c93ea:	3c 0b e9 76 	shi.gp $r0,[+#-11540]
   c93ee:	80 06       	mov55 $r0,$r6
   c93f0:	49 00 18 e4 	jal cc5b8 <BLE_gatt_add_charact>
   c93f4:	3c 0b e9 74 	shi.gp $r0,[+#-11544]
   c93f8:	fc d3       	pop25 $r10,#0x98    ! {$r6~$r10, $fp, $gp, $lp}

000c93fa <chip_1602_is_vcmd_complete_event>:
   c93fa:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c93fc:	a7 03       	lbi333 $r4,[$r0+#0x3]
   c93fe:	a7 42       	lbi333 $r5,[$r0+#0x2]
   c9400:	a6 c4       	lbi333 $r3,[$r0+#0x4]
   c9402:	a6 85       	lbi333 $r2,[$r0+#0x5]
   c9404:	40 42 20 08 	slli $r4,$r4,#8
   c9408:	ff 2f       	or33 $r4,$r5
   c940a:	40 31 c0 08 	slli $r3,$r3,#16
   c940e:	fe e7       	or33 $r3,$r4
   c9410:	40 21 60 08 	slli $r2,$r2,#24
   c9414:	fe 9f       	or33 $r2,$r3
   c9416:	a7 11       	lbi333 $r4,[$r2+#0x1]
   c9418:	a6 00       	lbi333 $r0,[$r0+#0x0]
   c941a:	08 51 00 02 	lbi.bi $r5,[$r2],#0x2
   c941e:	96 49       	zeh33 $r1,$r1
   c9420:	a6 d1       	lbi333 $r3,[$r2+#0x1]
   c9422:	a6 90       	lbi333 $r2,[$r2+#0x0]
   c9424:	5a 08 ff 11 	bnec $r0,#255,c9446 <chip_1602_is_vcmd_complete_event+0x4c>
   c9428:	40 42 20 08 	slli $r4,$r4,#8
   c942c:	ff 2f       	or33 $r4,$r5
   c942e:	97 23       	seh33 $r4,$r4
   c9430:	44 00 30 01 	movi $r0,#12289
   c9434:	4c 40 40 09 	bne $r4,$r0,c9446 <chip_1602_is_vcmd_complete_event+0x4c>
   c9438:	40 01 a0 08 	slli $r0,$r3,#8
   c943c:	fe 17       	or33 $r0,$r2
   c943e:	fe 0d       	xor33 $r0,$r1
   c9440:	5c 00 00 01 	slti $r0,$r0,#1
   c9444:	d5 02       	j8 c9448 <chip_1602_is_vcmd_complete_event+0x4e>
   c9446:	84 00       	movi55 $r0,#0
   c9448:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c944a <chip_1602_is_boot_complete_event>:
   c944a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c944c:	a7 03       	lbi333 $r4,[$r0+#0x3]
   c944e:	a7 42       	lbi333 $r5,[$r0+#0x2]
   c9450:	a6 84       	lbi333 $r2,[$r0+#0x4]
   c9452:	a6 c5       	lbi333 $r3,[$r0+#0x5]
   c9454:	40 42 20 08 	slli $r4,$r4,#8
   c9458:	ff 2f       	or33 $r4,$r5
   c945a:	40 21 40 08 	slli $r2,$r2,#16
   c945e:	fe a7       	or33 $r2,$r4
   c9460:	40 31 e0 08 	slli $r3,$r3,#24
   c9464:	fe d7       	or33 $r3,$r2
   c9466:	a6 81       	lbi333 $r2,[$r0+#0x1]
   c9468:	a6 00       	lbi333 $r0,[$r0+#0x0]
   c946a:	96 49       	zeh33 $r1,$r1
   c946c:	a7 19       	lbi333 $r4,[$r3+#0x1]
   c946e:	a7 58       	lbi333 $r5,[$r3+#0x0]
   c9470:	5a 08 ff 26 	bnec $r0,#255,c94bc <chip_1602_is_boot_complete_event+0x72>
   c9474:	40 42 20 08 	slli $r4,$r4,#8
   c9478:	ff 2f       	or33 $r4,$r5
   c947a:	97 23       	seh33 $r4,$r4
   c947c:	44 00 30 02 	movi $r0,#12290
   c9480:	4c 40 40 1e 	bne $r4,$r0,c94bc <chip_1602_is_boot_complete_event+0x72>
   c9484:	9e 92       	subi333 $r2,$r2,#2
   c9486:	9c 1a       	addi333 $r0,$r3,#2
   c9488:	96 90       	zeb33 $r2,$r2
   c948a:	d5 18       	j8 c94ba <chip_1602_is_boot_complete_event+0x70>
   c948c:	a6 c0       	lbi333 $r3,[$r0+#0x0]
   c948e:	5a 38 81 0f 	bnec $r3,#129,c94ac <chip_1602_is_boot_complete_event+0x62>
   c9492:	9c c2       	addi333 $r3,$r0,#2
   c9494:	a7 18       	lbi333 $r4,[$r3+#0x0]
   c9496:	5a 48 02 0b 	bnec $r4,#2,c94ac <chip_1602_is_boot_complete_event+0x62>
   c949a:	a7 19       	lbi333 $r4,[$r3+#0x1]
   c949c:	a6 da       	lbi333 $r3,[$r3+#0x2]
   c949e:	40 31 a0 08 	slli $r3,$r3,#8
   c94a2:	fe e7       	or33 $r3,$r4
   c94a4:	4c 30 c0 04 	bne $r3,$r1,c94ac <chip_1602_is_boot_complete_event+0x62>
   c94a8:	84 01       	movi55 $r0,#1
   c94aa:	d5 0a       	j8 c94be <chip_1602_is_boot_complete_event+0x74>
   c94ac:	a6 c1       	lbi333 $r3,[$r0+#0x1]
   c94ae:	52 41 ff fe 	subri $r4,$r3,#-2
   c94b2:	98 94       	add333 $r2,$r2,$r4
   c94b4:	9c da       	addi333 $r3,$r3,#2
   c94b6:	96 90       	zeb33 $r2,$r2
   c94b8:	98 03       	add333 $r0,$r0,$r3
   c94ba:	ca e9       	bnez38 $r2,c948c <chip_1602_is_boot_complete_event+0x42>
   c94bc:	84 00       	movi55 $r0,#0
   c94be:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c94c0 <chip_1602_init>:
   c94c0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c94c2:	3c 0f f2 94 	swi.gp $r0,[+#-13744]
   c94c6:	3c 2f f2 97 	swi.gp $r2,[+#-13732]
   c94ca:	97 20       	zeb33 $r4,$r4
   c94cc:	3c 1f f2 95 	swi.gp $r1,[+#-13740]
   c94d0:	c4 09       	beqz38 $r4,c94e2 <chip_1602_init+0x22>
   c94d2:	b4 43       	lwi450 $r2,[$r3]
   c94d4:	3c 2f f2 98 	swi.gp $r2,[+#-13728]
   c94d8:	e6 82       	slti45 $r4,#2
   c94da:	e9 04       	bnezs8 c94e2 <chip_1602_init+0x22>
   c94dc:	a0 d9       	lwi333 $r3,[$r3+#0x4]
   c94de:	3c 3f f2 99 	swi.gp $r3,[+#-13724]
   c94e2:	a0 81       	lwi333 $r2,[$r0+#0x4]
   c94e4:	3e 1c 54 ee 	addi.gp $r1,#-240402
   c94e8:	84 01       	movi55 $r0,#1
   c94ea:	dd 22       	jral5 $r2
   c94ec:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c94ee <hci_1602_lens_ind_cb>:
   c94ee:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c94f0:	3c 0d f2 94 	lwi.gp $r0,[+#-13744]
   c94f4:	3e 1c 5f 14 	addi.gp $r1,#-237804
   c94f8:	a0 c4       	lwi333 $r3,[$r0+#0x10]
   c94fa:	96 11       	zeh33 $r0,$r2
   c94fc:	dd 23       	jral5 $r3
   c94fe:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c9500 <chip_1602_send_acl_data>:
   c9500:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   c9502:	97 c1       	zeh33 $r7,$r0
   c9504:	3e 0f ca 48 	addi.gp $r0,#-13752
   c9508:	a4 c0       	lhi333 $r3,[$r0+#0x0]
   c950a:	85 00       	movi55 $r8,#0
   c950c:	96 91       	zeh33 $r2,$r2
   c950e:	12 8f 80 03 	shi $r8,[$sp+#0x6]
   c9512:	4c 33 80 43 	beq $r3,$r7,c9598 <chip_1602_send_acl_data+0x98>
   c9516:	a4 c1       	lhi333 $r3,[$r0+#0x2]
   c9518:	4c 33 80 40 	beq $r3,$r7,c9598 <chip_1602_send_acl_data+0x98>
   c951c:	a4 c2       	lhi333 $r3,[$r0+#0x4]
   c951e:	4c 33 80 3d 	beq $r3,$r7,c9598 <chip_1602_send_acl_data+0x98>
   c9522:	a4 03       	lhi333 $r0,[$r0+#0x6]
   c9524:	4c 03 80 3a 	beq $r0,$r7,c9598 <chip_1602_send_acl_data+0x98>
   c9528:	fa 00       	movpi45 $r0,#0x10
   c952a:	49 00 45 8d 	jal d2044 <malloc>
   c952e:	80 c0       	mov55 $r6,$r0
   c9530:	84 04       	movi55 $r0,#4
   c9532:	b6 06       	swi450 $r0,[$r6]
   c9534:	84 05       	movi55 $r0,#5
   c9536:	ae 35       	sbi333 $r0,[$r6+#0x5]
   c9538:	49 00 45 86 	jal d2044 <malloc>
   c953c:	40 30 40 09 	srli $r3,$r0,#16
   c9540:	ac f4       	shi333 $r3,[$r6+#0x8]
   c9542:	96 81       	zeh33 $r2,$r0
   c9544:	40 31 c0 08 	slli $r3,$r3,#16
   c9548:	fa 23       	movpi45 $r1,#0x13
   c954a:	ac b3       	shi333 $r2,[$r6+#0x6]
   c954c:	ae 74       	sbi333 $r1,[$r6+#0x4]
   c954e:	fe 9f       	or33 $r2,$r3
   c9550:	84 21       	movi55 $r1,#1
   c9552:	ae 40       	sbi333 $r1,[$r0+#0x0]
   c9554:	af d1       	sbi333 $r7,[$r2+#0x1]
   c9556:	92 e8       	srli45 $r7,#8
   c9558:	a4 34       	lhi333 $r0,[$r6+#0x8]
   c955a:	a4 b3       	lhi333 $r2,[$r6+#0x6]
   c955c:	40 00 40 08 	slli $r0,$r0,#16
   c9560:	fe 17       	or33 $r0,$r2
   c9562:	af c2       	sbi333 $r7,[$r0+#0x2]
   c9564:	a4 34       	lhi333 $r0,[$r6+#0x8]
   c9566:	a4 b3       	lhi333 $r2,[$r6+#0x6]
   c9568:	40 00 40 08 	slli $r0,$r0,#16
   c956c:	fe 17       	or33 $r0,$r2
   c956e:	ae 43       	sbi333 $r1,[$r0+#0x3]
   c9570:	a4 34       	lhi333 $r0,[$r6+#0x8]
   c9572:	a4 73       	lhi333 $r1,[$r6+#0x6]
   c9574:	40 00 40 08 	slli $r0,$r0,#16
   c9578:	fe 0f       	or33 $r0,$r1
   c957a:	10 80 00 04 	sbi $r8,[$r0+#0x4]
   c957e:	3c 1d f2 95 	lwi.gp $r1,[+#-13740]
   c9582:	80 06       	mov55 $r0,$r6
   c9584:	dd 21       	jral5 $r1
   c9586:	a4 34       	lhi333 $r0,[$r6+#0x8]
   c9588:	a4 73       	lhi333 $r1,[$r6+#0x6]
   c958a:	40 00 40 08 	slli $r0,$r0,#16
   c958e:	fe 0f       	or33 $r0,$r1
   c9590:	49 00 44 f5 	jal d1f7a <free>
   c9594:	80 06       	mov55 $r0,$r6
   c9596:	d5 10       	j8 c95b6 <chip_1602_send_acl_data+0xb6>
   c9598:	80 07       	mov55 $r0,$r7
   c959a:	80 7f       	mov55 $r3,$sp
   c959c:	50 4f 80 06 	addi $r4,$sp,#6
   c95a0:	49 00 05 89 	jal ca0b2 <hci_h4_encode_dat>
   c95a4:	c0 0b       	beqz38 $r0,c95ba <chip_1602_send_acl_data+0xba>
   c95a6:	3c 0d f2 94 	lwi.gp $r0,[+#-13744]
   c95aa:	02 1f 80 03 	lhi $r1,[$sp+#0x6]
   c95ae:	a0 83       	lwi333 $r2,[$r0+#0xc]
   c95b0:	b4 1f       	lwi450 $r0,[$sp]
   c95b2:	dd 22       	jral5 $r2
   c95b4:	b4 1f       	lwi450 $r0,[$sp]
   c95b6:	49 00 44 e2 	jal d1f7a <free>
   c95ba:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000c95bc <make_command_complete_ex>:
   c95bc:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   c95be:	40 80 00 13 	zeh $r8,$r0
   c95c2:	fa 00       	movpi45 $r0,#0x10
   c95c4:	97 d8       	zeb33 $r7,$r3
   c95c6:	81 22       	mov55 $r9,$r2
   c95c8:	54 a0 80 ff 	andi $r10,$r1,#0xff
   c95cc:	49 00 45 3c 	jal d2044 <malloc>
   c95d0:	80 c0       	mov55 $r6,$r0
   c95d2:	84 04       	movi55 $r0,#4
   c95d4:	b6 06       	swi450 $r0,[$r6]
   c95d6:	98 38       	add333 $r0,$r7,$r0
   c95d8:	ae 35       	sbi333 $r0,[$r6+#0x5]
   c95da:	49 00 45 35 	jal d2044 <malloc>
   c95de:	40 40 40 09 	srli $r4,$r0,#16
   c95e2:	ad 34       	shi333 $r4,[$r6+#0x8]
   c95e4:	96 c1       	zeh33 $r3,$r0
   c95e6:	40 42 40 08 	slli $r4,$r4,#16
   c95ea:	84 2e       	movi55 $r1,#14
   c95ec:	ac f3       	shi333 $r3,[$r6+#0x6]
   c95ee:	ae 74       	sbi333 $r1,[$r6+#0x4]
   c95f0:	fe e7       	or33 $r3,$r4
   c95f2:	84 21       	movi55 $r1,#1
   c95f4:	ae 40       	sbi333 $r1,[$r0+#0x0]
   c95f6:	10 81 80 01 	sbi $r8,[$r3+#0x1]
   c95fa:	93 08       	srli45 $r8,#8
   c95fc:	a4 34       	lhi333 $r0,[$r6+#0x8]
   c95fe:	a4 73       	lhi333 $r1,[$r6+#0x6]
   c9600:	40 00 40 08 	slli $r0,$r0,#16
   c9604:	fe 0f       	or33 $r0,$r1
   c9606:	10 80 00 02 	sbi $r8,[$r0+#0x2]
   c960a:	80 47       	mov55 $r2,$r7
   c960c:	a4 34       	lhi333 $r0,[$r6+#0x8]
   c960e:	a4 73       	lhi333 $r1,[$r6+#0x6]
   c9610:	40 00 40 08 	slli $r0,$r0,#16
   c9614:	fe 0f       	or33 $r0,$r1
   c9616:	10 a0 00 03 	sbi $r10,[$r0+#0x3]
   c961a:	a4 34       	lhi333 $r0,[$r6+#0x8]
   c961c:	a4 73       	lhi333 $r1,[$r6+#0x6]
   c961e:	40 00 40 08 	slli $r0,$r0,#16
   c9622:	fe 0f       	or33 $r0,$r1
   c9624:	9c 04       	addi333 $r0,$r0,#4
   c9626:	80 29       	mov55 $r1,$r9
   c9628:	49 ff f5 10 	jal c8048 <memcpy>
   c962c:	80 06       	mov55 $r0,$r6
   c962e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000c9630 <make_command_complete>:
   c9630:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   c9632:	84 40       	movi55 $r2,#0
   c9634:	96 48       	zeb33 $r1,$r1
   c9636:	80 62       	mov55 $r3,$r2
   c9638:	96 01       	zeh33 $r0,$r0
   c963a:	49 ff ff c1 	jal c95bc <make_command_complete_ex>
   c963e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000c9640 <chip_1602_check_chip_cmd_permission>:
   c9640:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   c9642:	2e 17 ca 58 	lbi.gp $r1,[+#-13736]
   c9646:	96 01       	zeh33 $r0,$r0
   c9648:	5a 18 05 04 	bnec $r1,#5,c9650 <chip_1602_check_chip_cmd_permission+0x10>
   c964c:	84 01       	movi55 $r0,#1
   c964e:	d5 13       	j8 c9674 <chip_1602_check_chip_cmd_permission+0x34>
   c9650:	3c 7d f2 95 	lwi.gp $r7,[+#-13740]
   c9654:	fa 3b       	movpi45 $r1,#0x2b
   c9656:	49 ff ff ed 	jal c9630 <make_command_complete>
   c965a:	80 c0       	mov55 $r6,$r0
   c965c:	dd 27       	jral5 $r7
   c965e:	a4 34       	lhi333 $r0,[$r6+#0x8]
   c9660:	a4 73       	lhi333 $r1,[$r6+#0x6]
   c9662:	40 00 40 08 	slli $r0,$r0,#16
   c9666:	fe 0f       	or33 $r0,$r1
   c9668:	49 00 44 89 	jal d1f7a <free>
   c966c:	80 06       	mov55 $r0,$r6
   c966e:	49 00 44 86 	jal d1f7a <free>
   c9672:	84 00       	movi55 $r0,#0
   c9674:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000c9676 <chip_1602_send_hci_command>:
   c9676:	fc 25       	push25 $r8,#0x28    ! {$r6~$r8, $fp, $gp, $lp}
   c9678:	97 81       	zeh33 $r6,$r0
   c967a:	84 00       	movi55 $r0,#0
   c967c:	12 0f 80 13 	shi $r0,[$sp+#0x26]
   c9680:	44 00 40 01 	movi $r0,#16385
   c9684:	80 e1       	mov55 $r7,$r1
   c9686:	96 90       	zeb33 $r2,$r2
   c9688:	4c 60 00 46 	beq $r6,$r0,c9714 <chip_1602_send_hci_command+0x9e>
   c968c:	e2 06       	slt45 $r0,$r6
   c968e:	e9 0a       	bnezs8 c96a2 <chip_1602_send_hci_command+0x2c>
   c9690:	44 00 20 02 	movi $r0,#8194
   c9694:	4c 60 00 86 	beq $r6,$r0,c97a0 <chip_1602_send_hci_command+0x12a>
   c9698:	44 00 40 00 	movi $r0,#16384
   c969c:	4c 60 40 9a 	bne $r6,$r0,c97d0 <chip_1602_send_hci_command+0x15a>
   c96a0:	d5 09       	j8 c96b2 <chip_1602_send_hci_command+0x3c>
   c96a2:	9c 01       	addi333 $r0,$r0,#1
   c96a4:	4c 60 00 25 	beq $r6,$r0,c96ee <chip_1602_send_hci_command+0x78>
   c96a8:	9c 01       	addi333 $r0,$r0,#1
   c96aa:	4c 60 40 93 	bne $r6,$r0,c97d0 <chip_1602_send_hci_command+0x15a>
   c96ae:	48 00 00 6d 	j c9788 <chip_1602_send_hci_command+0x112>
   c96b2:	80 06       	mov55 $r0,$r6
   c96b4:	49 ff ff c6 	jal c9640 <chip_1602_check_chip_cmd_permission>
   c96b8:	4e 02 00 9d 	beqz $r0,c97f2 <chip_1602_send_hci_command+0x17c>
   c96bc:	b1 85       	addri36.sp $r6,#0x14
   c96be:	84 0e       	movi55 $r0,#14
   c96c0:	ae 30       	sbi333 $r0,[$r6+#0x0]
   c96c2:	44 00 00 31 	movi $r0,#49
   c96c6:	ae 31       	sbi333 $r0,[$r6+#0x1]
   c96c8:	44 0f ff b4 	movi $r0,#-76
   c96cc:	ae 32       	sbi333 $r0,[$r6+#0x2]
   c96ce:	85 06       	movi55 $r8,#6
   c96d0:	8c 10       	addi45 $r0,#16
   c96d2:	ae 33       	sbi333 $r0,[$r6+#0x3]
   c96d4:	10 83 00 04 	sbi $r8,[$r6+#0x4]
   c96d8:	80 27       	mov55 $r1,$r7
   c96da:	84 46       	movi55 $r2,#6
   c96dc:	50 0f 80 19 	addi $r0,$sp,#25
   c96e0:	49 ff f4 b4 	jal c8048 <memcpy>
   c96e4:	3e 87 ca 58 	sbi.gp $r8,[+#-13736]
   c96e8:	84 4b       	movi55 $r2,#11
   c96ea:	80 e6       	mov55 $r7,$r6
   c96ec:	d5 11       	j8 c970e <chip_1602_send_hci_command+0x98>
   c96ee:	80 06       	mov55 $r0,$r6
   c96f0:	49 ff ff a8 	jal c9640 <chip_1602_check_chip_cmd_permission>
   c96f4:	4e 02 00 7f 	beqz $r0,c97f2 <chip_1602_send_hci_command+0x17c>
   c96f8:	3e 0d 2b 6c 	addi.gp $r0,#-185492
   c96fc:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   c9700:	b1 c5       	addri36.sp $r7,#0x14
   c9702:	f0 85       	swi37.sp $r0,[+#0x14]
   c9704:	ae 7c       	sbi333 $r1,[$r7+#0x4]
   c9706:	84 27       	movi55 $r1,#7
   c9708:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   c970c:	84 45       	movi55 $r2,#5
   c970e:	44 60 fc 00 	movi $r6,#64512
   c9712:	d5 5f       	j8 c97d0 <chip_1602_send_hci_command+0x15a>
   c9714:	3e 0d 2b 60 	addi.gp $r0,#-185504
   c9718:	3a 00 08 00 	lmw.bi $r0,[$r0],$r2,#0x0    ! {$r0~$r2}
   c971c:	b0 c5       	addri36.sp $r3,#0x14
   c971e:	50 8f 80 04 	addi $r8,$sp,#4
   c9722:	3a 01 84 24 	smw.bim $r0,[$r3],$r1,#0x0    ! {$r0~$r1}
   c9726:	3e 0d 2b 50 	addi.gp $r0,#-185520
   c972a:	80 88       	mov55 $r4,$r8
   c972c:	ac 98       	shi333 $r2,[$r3+#0x0]
   c972e:	3a 00 0c 00 	lmw.bi $r0,[$r0],$r3,#0x0    ! {$r0~$r3}
   c9732:	3a 02 08 24 	smw.bim $r0,[$r4],$r2,#0x0    ! {$r0~$r2}
   c9736:	80 06       	mov55 $r0,$r6
   c9738:	ac e0       	shi333 $r3,[$r4+#0x0]
   c973a:	49 ff ff 83 	jal c9640 <chip_1602_check_chip_cmd_permission>
   c973e:	c0 5a       	beqz38 $r0,c97f2 <chip_1602_send_hci_command+0x17c>
   c9740:	a6 38       	lbi333 $r0,[$r7+#0x0]
   c9742:	96 82       	seb33 $r2,$r0
   c9744:	50 00 00 21 	addi $r0,$r0,#33
   c9748:	96 00       	zeb33 $r0,$r0
   c974a:	5c f0 00 22 	slti $r15,$r0,#34
   c974e:	e9 08       	bnezs8 c975e <chip_1602_send_hci_command+0xe8>
   c9750:	3c 7d f2 95 	lwi.gp $r7,[+#-13740]
   c9754:	fa 22       	movpi45 $r1,#0x12
   c9756:	80 06       	mov55 $r0,$r6
   c9758:	49 ff ff 6c 	jal c9630 <make_command_complete>
   c975c:	d5 2f       	j8 c97ba <chip_1602_send_hci_command+0x144>
   c975e:	80 28       	mov55 $r1,$r8
   c9760:	84 00       	movi55 $r0,#0
   c9762:	20 30 80 00 	lbsi $r3,[$r1+#0x0]
   c9766:	e0 62       	slts45 $r3,$r2
   c9768:	e8 06       	beqzs8 c9774 <chip_1602_send_hci_command+0xfe>
   c976a:	9c 01       	addi333 $r0,$r0,#1
   c976c:	96 00       	zeb33 $r0,$r0
   c976e:	9c 49       	addi333 $r1,$r1,#1
   c9770:	5a 08 0e f9 	bnec $r0,#14,c9762 <chip_1602_send_hci_command+0xec>
   c9774:	b1 c5       	addri36.sp $r7,#0x14
   c9776:	10 03 80 08 	sbi $r0,[$r7+#0x8]
   c977a:	ae 3f       	sbi333 $r0,[$r7+#0x7]
   c977c:	ae 3e       	sbi333 $r0,[$r7+#0x6]
   c977e:	84 28       	movi55 $r1,#8
   c9780:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   c9784:	84 4a       	movi55 $r2,#10
   c9786:	d5 c4       	j8 c970e <chip_1602_send_hci_command+0x98>
   c9788:	b1 c5       	addri36.sp $r7,#0x14
   c978a:	fa 07       	movpi45 $r0,#0x17
   c978c:	ae 38       	sbi333 $r0,[$r7+#0x0]
   c978e:	8c 1a       	addi45 $r0,#26
   c9790:	ae 39       	sbi333 $r0,[$r7+#0x1]
   c9792:	84 43       	movi55 $r2,#3
   c9794:	50 0f 80 16 	addi $r0,$sp,#22
   c9798:	49 ff f4 58 	jal c8048 <memcpy>
   c979c:	84 29       	movi55 $r1,#9
   c979e:	d5 b5       	j8 c9708 <chip_1602_send_hci_command+0x92>
   c97a0:	3c 0d 4a d3 	lwi.gp $r0,[+#-185524]
   c97a4:	b0 85       	addri36.sp $r2,#0x14
   c97a6:	ac 10       	shi333 $r0,[$r2+#0x0]
   c97a8:	92 10       	srli45 $r0,#16
   c97aa:	ae 12       	sbi333 $r0,[$r2+#0x2]
   c97ac:	3c 7d f2 95 	lwi.gp $r7,[+#-13740]
   c97b0:	84 20       	movi55 $r1,#0
   c97b2:	80 06       	mov55 $r0,$r6
   c97b4:	84 63       	movi55 $r3,#3
   c97b6:	49 ff ff 03 	jal c95bc <make_command_complete_ex>
   c97ba:	80 c0       	mov55 $r6,$r0
   c97bc:	dd 27       	jral5 $r7
   c97be:	a4 34       	lhi333 $r0,[$r6+#0x8]
   c97c0:	a4 73       	lhi333 $r1,[$r6+#0x6]
   c97c2:	40 00 40 08 	slli $r0,$r0,#16
   c97c6:	fe 0f       	or33 $r0,$r1
   c97c8:	49 00 43 d9 	jal d1f7a <free>
   c97cc:	80 06       	mov55 $r0,$r6
   c97ce:	d5 10       	j8 c97ee <chip_1602_send_hci_command+0x178>
   c97d0:	fd 03       	movd44 $r0,$r6
   c97d2:	b0 c8       	addri36.sp $r3,#0x20
   c97d4:	50 4f 80 26 	addi $r4,$sp,#38
   c97d8:	49 00 04 8e 	jal ca0f4 <hci_h4_encode_cmd>
   c97dc:	c0 0b       	beqz38 $r0,c97f2 <chip_1602_send_hci_command+0x17c>
   c97de:	3c 0d f2 94 	lwi.gp $r0,[+#-13744]
   c97e2:	02 1f 80 13 	lhi $r1,[$sp+#0x26]
   c97e6:	a0 83       	lwi333 $r2,[$r0+#0xc]
   c97e8:	f0 08       	lwi37.sp $r0,[+#0x20]
   c97ea:	dd 22       	jral5 $r2
   c97ec:	f0 08       	lwi37.sp $r0,[+#0x20]
   c97ee:	49 00 43 c6 	jal d1f7a <free>
   c97f2:	fc a5       	pop25 $r8,#0x28    ! {$r6~$r8, $fp, $gp, $lp}

000c97f4 <chip_1602_init_adopt_mp>:
   c97f4:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   c97f6:	80 e0       	mov55 $r7,$r0
   c97f8:	3e 0d 2c 20 	addi.gp $r0,#-185312
   c97fc:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   c9800:	12 1f 80 06 	shi $r1,[$sp+#0xc]
   c9804:	92 30       	srli45 $r1,#16
   c9806:	f0 82       	swi37.sp $r0,[+#0x8]
   c9808:	10 1f 80 0e 	sbi $r1,[$sp+#0xe]
   c980c:	cf 33       	bnez38 $r7,c9872 <chip_1602_init_adopt_mp+0x7e>
   c980e:	47 c0 01 00 	sethi $fp,#0x100
   c9812:	3c 0d f2 98 	lwi.gp $r0,[+#-13728]
   c9816:	4e 02 00 82 	beqz $r0,c991a <chip_1602_init_adopt_mp+0x126>
   c981a:	00 80 00 00 	lbi $r8,[$r0+#0x0]
   c981e:	e7 15       	slti45 $r8,#21
   c9820:	4e f2 00 7d 	beqz $r15,c991a <chip_1602_init_adopt_mp+0x126>
   c9824:	85 43       	movi55 $r10,#3
   c9826:	50 94 00 01 	addi $r9,$r8,#1
   c982a:	42 04 a8 24 	mul $r0,$r9,$r10
   c982e:	49 00 44 0b 	jal d2044 <malloc>
   c9832:	80 c0       	mov55 $r6,$r0
   c9834:	fa 08       	movpi45 $r0,#0x18
   c9836:	ae 30       	sbi333 $r0,[$r6+#0x0]
   c9838:	8c 19       	addi45 $r0,#25
   c983a:	ae 31       	sbi333 $r0,[$r6+#0x1]
   c983c:	10 83 00 02 	sbi $r8,[$r6+#0x2]
   c9840:	40 13 28 00 	add $r1,$r6,$r10
   c9844:	3c 2d f2 98 	lwi.gp $r2,[+#-13728]
   c9848:	80 02       	mov55 $r0,$r2
   c984a:	d5 0d       	j8 c9864 <chip_1602_init_adopt_mp+0x70>
   c984c:	80 62       	mov55 $r3,$r2
   c984e:	42 33 a8 73 	maddr32 $r3,$r7,$r10
   c9852:	9d f9       	addi333 $r7,$r7,#1
   c9854:	a7 1a       	lbi333 $r4,[$r3+#0x2]
   c9856:	af 08       	sbi333 $r4,[$r1+#0x0]
   c9858:	a6 db       	lbi333 $r3,[$r3+#0x3]
   c985a:	ae c9       	sbi333 $r3,[$r1+#0x1]
   c985c:	a6 c1       	lbi333 $r3,[$r0+#0x1]
   c985e:	9c 03       	addi333 $r0,$r0,#3
   c9860:	ae ca       	sbi333 $r3,[$r1+#0x2]
   c9862:	9c 4b       	addi333 $r1,$r1,#3
   c9864:	96 f8       	zeb33 $r3,$r7
   c9866:	e2 68       	slt45 $r3,$r8
   c9868:	e9 f2       	bnezs8 c984c <chip_1602_init_adopt_mp+0x58>
   c986a:	84 03       	movi55 $r0,#3
   c986c:	42 94 80 24 	mul $r9,$r9,$r0
   c9870:	d5 44       	j8 c98f8 <chip_1602_init_adopt_mp+0x104>
   c9872:	80 07       	mov55 $r0,$r7
   c9874:	44 10 31 18 	movi $r1,#12568
   c9878:	49 ff fd c1 	jal c93fa <chip_1602_is_vcmd_complete_event>
   c987c:	c0 49       	beqz38 $r0,c990e <chip_1602_init_adopt_mp+0x11a>
   c987e:	3c 0d f2 98 	lwi.gp $r0,[+#-13728]
   c9882:	00 80 00 3d 	lbi $r8,[$r0+#0x3d]
   c9886:	5c f4 00 29 	slti $r15,$r8,#41
   c988a:	e8 48       	beqzs8 c991a <chip_1602_init_adopt_mp+0x126>
   c988c:	84 07       	movi55 $r0,#7
   c988e:	42 04 00 24 	mul $r0,$r8,$r0
   c9892:	9c 03       	addi333 $r0,$r0,#3
   c9894:	49 00 43 d8 	jal d2044 <malloc>
   c9898:	80 c0       	mov55 $r6,$r0
   c989a:	fa 06       	movpi45 $r0,#0x16
   c989c:	ae 30       	sbi333 $r0,[$r6+#0x0]
   c989e:	8c 1b       	addi45 $r0,#27
   c98a0:	ae 31       	sbi333 $r0,[$r6+#0x1]
   c98a2:	10 83 00 02 	sbi $r8,[$r6+#0x2]
   c98a6:	50 93 00 03 	addi $r9,$r6,#3
   c98aa:	3d cd f2 98 	lwi.gp $fp,[+#-13728]
   c98ae:	84 69       	movi55 $r3,#9
   c98b0:	50 ae 00 42 	addi $r10,$fp,#66
   c98b4:	84 e0       	movi55 $r7,#0
   c98b6:	d5 1d       	j8 c98f0 <chip_1602_init_adopt_mp+0xfc>
   c98b8:	42 13 8c 24 	mul $r1,$r7,$r3
   c98bc:	40 0e 04 00 	add $r0,$fp,$r1
   c98c0:	50 00 00 38 	addi $r0,$r0,#56
   c98c4:	a7 06       	lbi333 $r4,[$r0+#0x6]
   c98c6:	88 3c       	add45 $r1,$fp
   c98c8:	18 44 80 01 	sbi.bi $r4,[$r9],#0x1
   c98cc:	50 10 80 42 	addi $r1,$r1,#66
   c98d0:	a6 07       	lbi333 $r0,[$r0+#0x7]
   c98d2:	9d f9       	addi333 $r7,$r7,#1
   c98d4:	18 04 80 01 	sbi.bi $r0,[$r9],#0x1
   c98d8:	00 25 00 00 	lbi $r2,[$r10+#0x0]
   c98dc:	80 09       	mov55 $r0,$r9
   c98de:	9c 91       	addi333 $r2,$r2,#1
   c98e0:	f3 81       	swi37.sp $r3,[+#0x4]
   c98e2:	49 ff f3 b3 	jal c8048 <memcpy>
   c98e6:	08 05 00 09 	lbi.bi $r0,[$r10],#0x9
   c98ea:	f3 01       	lwi37.sp $r3,[+#0x4]
   c98ec:	9c 01       	addi333 $r0,$r0,#1
   c98ee:	89 20       	add45 $r9,$r0
   c98f0:	96 38       	zeb33 $r0,$r7
   c98f2:	e2 08       	slt45 $r0,$r8
   c98f4:	e9 e2       	bnezs8 c98b8 <chip_1602_init_adopt_mp+0xc4>
   c98f6:	8b 26       	sub45 $r9,$r6
   c98f8:	44 00 fc 00 	movi $r0,#64512
   c98fc:	80 26       	mov55 $r1,$r6
   c98fe:	54 24 80 ff 	andi $r2,$r9,#0xff
   c9902:	49 ff fe ba 	jal c9676 <chip_1602_send_hci_command>
   c9906:	80 06       	mov55 $r0,$r6
   c9908:	49 00 43 39 	jal d1f7a <free>
   c990c:	d5 19       	j8 c993e <chip_1602_init_adopt_mp+0x14a>
   c990e:	80 07       	mov55 $r0,$r7
   c9910:	44 10 31 16 	movi $r1,#12566
   c9914:	49 ff fd 73 	jal c93fa <chip_1602_is_vcmd_complete_event>
   c9918:	c0 13       	beqz38 $r0,c993e <chip_1602_init_adopt_mp+0x14a>
   c991a:	84 22       	movi55 $r1,#2
   c991c:	50 0f 80 0d 	addi $r0,$sp,#13
   c9920:	49 00 2e 6f 	jal cf5fe <DRV_TRNG_Get>
   c9924:	44 00 fc 00 	movi $r0,#64512
   c9928:	b0 42       	addri36.sp $r1,#0x8
   c992a:	84 47       	movi55 $r2,#7
   c992c:	49 ff fe a5 	jal c9676 <chip_1602_send_hci_command>
   c9930:	84 25       	movi55 $r1,#5
   c9932:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   c9936:	3c 1d f2 97 	lwi.gp $r1,[+#-13732]
   c993a:	84 01       	movi55 $r0,#1
   c993c:	dd 21       	jral5 $r1
   c993e:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

000c9940 <chip_1602_init_config>:
   c9940:	fc 4a       	push25 $r10,#0x50    ! {$r6~$r10, $fp, $gp, $lp}
   c9942:	81 40       	mov55 $r10,$r0
   c9944:	c8 3b       	bnez38 $r0,c99ba <chip_1602_init_config+0x7a>
   c9946:	3c 0d f2 99 	lwi.gp $r0,[+#-13724]
   c994a:	c8 12       	bnez38 $r0,c996e <chip_1602_init_config+0x2e>
   c994c:	b1 82       	addri36.sp $r6,#0x8
   c994e:	80 06       	mov55 $r0,$r6
   c9950:	3e 1d 2b dc 	addi.gp $r1,#-185380
   c9954:	44 20 00 42 	movi $r2,#66
   c9958:	49 ff f3 78 	jal c8048 <memcpy>
   c995c:	44 00 fc 00 	movi $r0,#64512
   c9960:	80 26       	mov55 $r1,$r6
   c9962:	44 20 00 42 	movi $r2,#66
   c9966:	49 ff fe 88 	jal c9676 <chip_1602_send_hci_command>
   c996a:	48 00 00 a3 	j c9ab0 <chip_1602_init_config+0x170>
   c996e:	a7 c0       	lbi333 $r7,[$r0+#0x0]
   c9970:	5c f3 80 64 	slti $r15,$r7,#100
   c9974:	4e f2 00 98 	beqz $r15,c9aa4 <chip_1602_init_config+0x164>
   c9978:	85 43       	movi55 $r10,#3
   c997a:	50 83 80 01 	addi $r8,$r7,#1
   c997e:	42 84 28 24 	mul $r8,$r8,$r10
   c9982:	80 08       	mov55 $r0,$r8
   c9984:	49 00 43 60 	jal d2044 <malloc>
   c9988:	80 c0       	mov55 $r6,$r0
   c998a:	fa 08       	movpi45 $r0,#0x18
   c998c:	ae 30       	sbi333 $r0,[$r6+#0x0]
   c998e:	8c 19       	addi45 $r0,#25
   c9990:	ae 31       	sbi333 $r0,[$r6+#0x1]
   c9992:	42 73 a8 24 	mul $r7,$r7,$r10
   c9996:	3c 1d f2 99 	lwi.gp $r1,[+#-13724]
   c999a:	9c b9       	addi333 $r2,$r7,#1
   c999c:	9c 32       	addi333 $r0,$r6,#2
   c999e:	49 ff f3 55 	jal c8048 <memcpy>
   c99a2:	44 00 fc 00 	movi $r0,#64512
   c99a6:	80 26       	mov55 $r1,$r6
   c99a8:	54 24 00 ff 	andi $r2,$r8,#0xff
   c99ac:	49 ff fe 65 	jal c9676 <chip_1602_send_hci_command>
   c99b0:	80 06       	mov55 $r0,$r6
   c99b2:	49 00 42 e4 	jal d1f7a <free>
   c99b6:	48 00 00 7d 	j c9ab0 <chip_1602_init_config+0x170>
   c99ba:	44 10 31 18 	movi $r1,#12568
   c99be:	49 ff fd 1e 	jal c93fa <chip_1602_is_vcmd_complete_event>
   c99c2:	c0 5a       	beqz38 $r0,c9a76 <chip_1602_init_config+0x136>
   c99c4:	3c 0d f2 99 	lwi.gp $r0,[+#-13724]
   c99c8:	c8 11       	bnez38 $r0,c99ea <chip_1602_init_config+0xaa>
   c99ca:	b1 82       	addri36.sp $r6,#0x8
   c99cc:	80 06       	mov55 $r0,$r6
   c99ce:	3e 1d 2b 94 	addi.gp $r1,#-185452
   c99d2:	44 20 00 46 	movi $r2,#70
   c99d6:	49 ff f3 39 	jal c8048 <memcpy>
   c99da:	44 00 fc 00 	movi $r0,#64512
   c99de:	80 26       	mov55 $r1,$r6
   c99e0:	44 20 00 46 	movi $r2,#70
   c99e4:	49 ff fe 49 	jal c9676 <chip_1602_send_hci_command>
   c99e8:	d5 47       	j8 c9a76 <chip_1602_init_config+0x136>
   c99ea:	00 80 01 2d 	lbi $r8,[$r0+#0x12d]
   c99ee:	5c f4 00 64 	slti $r15,$r8,#100
   c99f2:	e8 59       	beqzs8 c9aa4 <chip_1602_init_config+0x164>
   c99f4:	84 07       	movi55 $r0,#7
   c99f6:	42 04 00 24 	mul $r0,$r8,$r0
   c99fa:	9c 03       	addi333 $r0,$r0,#3
   c99fc:	49 00 43 24 	jal d2044 <malloc>
   c9a00:	80 c0       	mov55 $r6,$r0
   c9a02:	fa 06       	movpi45 $r0,#0x16
   c9a04:	ae 30       	sbi333 $r0,[$r6+#0x0]
   c9a06:	8c 1b       	addi45 $r0,#27
   c9a08:	ae 31       	sbi333 $r0,[$r6+#0x1]
   c9a0a:	10 83 00 02 	sbi $r8,[$r6+#0x2]
   c9a0e:	50 93 00 03 	addi $r9,$r6,#3
   c9a12:	3c 3d f2 99 	lwi.gp $r3,[+#-13724]
   c9a16:	84 89       	movi55 $r4,#9
   c9a18:	51 c1 81 32 	addi $fp,$r3,#306
   c9a1c:	84 e0       	movi55 $r7,#0
   c9a1e:	d5 1e       	j8 c9a5a <chip_1602_init_config+0x11a>
   c9a20:	42 13 90 24 	mul $r1,$r7,$r4
   c9a24:	98 19       	add333 $r0,$r3,$r1
   c9a26:	50 00 01 28 	addi $r0,$r0,#296
   c9a2a:	a6 86       	lbi333 $r2,[$r0+#0x6]
   c9a2c:	98 59       	add333 $r1,$r3,$r1
   c9a2e:	18 24 80 01 	sbi.bi $r2,[$r9],#0x1
   c9a32:	50 10 81 32 	addi $r1,$r1,#306
   c9a36:	a6 07       	lbi333 $r0,[$r0+#0x7]
   c9a38:	9d f9       	addi333 $r7,$r7,#1
   c9a3a:	18 04 80 01 	sbi.bi $r0,[$r9],#0x1
   c9a3e:	00 2e 00 00 	lbi $r2,[$fp+#0x0]
   c9a42:	80 09       	mov55 $r0,$r9
   c9a44:	9c 91       	addi333 $r2,$r2,#1
   c9a46:	f3 81       	swi37.sp $r3,[+#0x4]
   c9a48:	b6 9f       	swi450 $r4,[$sp]
   c9a4a:	49 ff f2 ff 	jal c8048 <memcpy>
   c9a4e:	08 0e 00 09 	lbi.bi $r0,[$fp],#0x9
   c9a52:	b4 9f       	lwi450 $r4,[$sp]
   c9a54:	9c 01       	addi333 $r0,$r0,#1
   c9a56:	f3 01       	lwi37.sp $r3,[+#0x4]
   c9a58:	89 20       	add45 $r9,$r0
   c9a5a:	96 38       	zeb33 $r0,$r7
   c9a5c:	e2 08       	slt45 $r0,$r8
   c9a5e:	e9 e1       	bnezs8 c9a20 <chip_1602_init_config+0xe0>
   c9a60:	8b 26       	sub45 $r9,$r6
   c9a62:	44 00 fc 00 	movi $r0,#64512
   c9a66:	80 26       	mov55 $r1,$r6
   c9a68:	54 24 80 ff 	andi $r2,$r9,#0xff
   c9a6c:	49 ff fe 05 	jal c9676 <chip_1602_send_hci_command>
   c9a70:	80 06       	mov55 $r0,$r6
   c9a72:	49 00 42 84 	jal d1f7a <free>
   c9a76:	80 0a       	mov55 $r0,$r10
   c9a78:	44 10 31 16 	movi $r1,#12566
   c9a7c:	49 ff fc bf 	jal c93fa <chip_1602_is_vcmd_complete_event>
   c9a80:	c0 0c       	beqz38 $r0,c9a98 <chip_1602_init_config+0x158>
   c9a82:	3c 0d 4a e4 	lwi.gp $r0,[+#-185456]
   c9a86:	b0 42       	addri36.sp $r1,#0x8
   c9a88:	ac 08       	shi333 $r0,[$r1+#0x0]
   c9a8a:	92 10       	srli45 $r0,#16
   c9a8c:	ae 0a       	sbi333 $r0,[$r1+#0x2]
   c9a8e:	84 43       	movi55 $r2,#3
   c9a90:	44 00 fc 00 	movi $r0,#64512
   c9a94:	49 ff fd f1 	jal c9676 <chip_1602_send_hci_command>
   c9a98:	80 0a       	mov55 $r0,$r10
   c9a9a:	44 10 30 01 	movi $r1,#12289
   c9a9e:	49 ff fc ae 	jal c93fa <chip_1602_is_vcmd_complete_event>
   c9aa2:	c0 07       	beqz38 $r0,c9ab0 <chip_1602_init_config+0x170>
   c9aa4:	84 24       	movi55 $r1,#4
   c9aa6:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   c9aaa:	84 00       	movi55 $r0,#0
   c9aac:	49 ff fe a4 	jal c97f4 <chip_1602_init_adopt_mp>
   c9ab0:	fc ca       	pop25 $r10,#0x50    ! {$r6~$r10, $fp, $gp, $lp}

000c9ab2 <chip_1602_init_sw_reset>:
   c9ab2:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   c9ab4:	80 c0       	mov55 $r6,$r0
   c9ab6:	c8 0f       	bnez38 $r0,c9ad4 <chip_1602_init_sw_reset+0x22>
   c9ab8:	3e 0d 2b 88 	addi.gp $r0,#-185464
   c9abc:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   c9ac0:	84 46       	movi55 $r2,#6
   c9ac2:	b6 1f       	swi450 $r0,[$sp]
   c9ac4:	12 1f 80 02 	shi $r1,[$sp+#0x4]
   c9ac8:	44 00 fc 00 	movi $r0,#64512
   c9acc:	80 3f       	mov55 $r1,$sp
   c9ace:	49 ff fd d4 	jal c9676 <chip_1602_send_hci_command>
   c9ad2:	d5 4c       	j8 c9b6a <chip_1602_init_sw_reset+0xb8>
   c9ad4:	44 10 31 0e 	movi $r1,#12558
   c9ad8:	49 ff fc 91 	jal c93fa <chip_1602_is_vcmd_complete_event>
   c9adc:	c0 0e       	beqz38 $r0,c9af8 <chip_1602_init_sw_reset+0x46>
   c9ade:	3e 0d 2b 80 	addi.gp $r0,#-185472
   c9ae2:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   c9ae6:	84 45       	movi55 $r2,#5
   c9ae8:	b6 1f       	swi450 $r0,[$sp]
   c9aea:	10 1f 80 04 	sbi $r1,[$sp+#0x4]
   c9aee:	44 00 fc 00 	movi $r0,#64512
   c9af2:	80 3f       	mov55 $r1,$sp
   c9af4:	49 ff fd c1 	jal c9676 <chip_1602_send_hci_command>
   c9af8:	80 06       	mov55 $r0,$r6
   c9afa:	44 10 31 0f 	movi $r1,#12559
   c9afe:	49 ff fc 7e 	jal c93fa <chip_1602_is_vcmd_complete_event>
   c9b02:	c0 0b       	beqz38 $r0,c9b18 <chip_1602_init_sw_reset+0x66>
   c9b04:	3c 02 95 be 	lhi.gp $r0,[+#-185476]
   c9b08:	80 3f       	mov55 $r1,$sp
   c9b0a:	12 0f 80 00 	shi $r0,[$sp+#0x0]
   c9b0e:	84 42       	movi55 $r2,#2
   c9b10:	44 00 fc 00 	movi $r0,#64512
   c9b14:	49 ff fd b1 	jal c9676 <chip_1602_send_hci_command>
   c9b18:	80 06       	mov55 $r0,$r6
   c9b1a:	44 10 00 80 	movi $r1,#128
   c9b1e:	49 ff fc 96 	jal c944a <chip_1602_is_boot_complete_event>
   c9b22:	c0 14       	beqz38 $r0,c9b4a <chip_1602_init_sw_reset+0x98>
   c9b24:	2e 07 ca 6e 	lbi.gp $r0,[+#-13714]
   c9b28:	c8 11       	bnez38 $r0,c9b4a <chip_1602_init_sw_reset+0x98>
   c9b2a:	3e 0d 2b 74 	addi.gp $r0,#-185484
   c9b2e:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   c9b32:	84 46       	movi55 $r2,#6
   c9b34:	b6 1f       	swi450 $r0,[$sp]
   c9b36:	12 1f 80 02 	shi $r1,[$sp+#0x4]
   c9b3a:	44 00 fc 00 	movi $r0,#64512
   c9b3e:	80 3f       	mov55 $r1,$sp
   c9b40:	49 ff fd 9b 	jal c9676 <chip_1602_send_hci_command>
   c9b44:	84 01       	movi55 $r0,#1
   c9b46:	3e 07 ca 6e 	sbi.gp $r0,[+#-13714]
   c9b4a:	80 06       	mov55 $r0,$r6
   c9b4c:	44 10 00 80 	movi $r1,#128
   c9b50:	49 ff fc 7d 	jal c944a <chip_1602_is_boot_complete_event>
   c9b54:	c0 0b       	beqz38 $r0,c9b6a <chip_1602_init_sw_reset+0xb8>
   c9b56:	2e 07 ca 6e 	lbi.gp $r0,[+#-13714]
   c9b5a:	5a 08 01 08 	bnec $r0,#1,c9b6a <chip_1602_init_sw_reset+0xb8>
   c9b5e:	84 23       	movi55 $r1,#3
   c9b60:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   c9b64:	84 00       	movi55 $r0,#0
   c9b66:	49 ff fe ed 	jal c9940 <chip_1602_init_config>
   c9b6a:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000c9b6c <chip_1602_init_patching>:
   c9b6c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   c9b6e:	80 c0       	mov55 $r6,$r0
   c9b70:	c8 0a       	bnez38 $r0,c9b84 <chip_1602_init_patching+0x18>
   c9b72:	3c 6b e5 34 	shi.gp $r6,[+#-13720]
   c9b76:	3c 6b e5 35 	shi.gp $r6,[+#-13718]
   c9b7a:	3e 07 ca 6c 	sbi.gp $r0,[+#-13716]
   c9b7e:	3e 07 ca 6d 	sbi.gp $r0,[+#-13715]
   c9b82:	d5 0d       	j8 c9b9c <chip_1602_init_patching+0x30>
   c9b84:	44 10 31 0e 	movi $r1,#12558
   c9b88:	49 ff fc 39 	jal c93fa <chip_1602_is_vcmd_complete_event>
   c9b8c:	c8 08       	bnez38 $r0,c9b9c <chip_1602_init_patching+0x30>
   c9b8e:	80 06       	mov55 $r0,$r6
   c9b90:	44 10 31 16 	movi $r1,#12566
   c9b94:	49 ff fc 33 	jal c93fa <chip_1602_is_vcmd_complete_event>
   c9b98:	4e 02 00 de 	beqz $r0,c9d54 <chip_1602_init_patching+0x1e8>
   c9b9c:	3c 7d 4a ac 	lwi.gp $r7,[+#-185680]
   c9ba0:	9f fa       	subi333 $r7,$r7,#2
   c9ba2:	3c 03 e5 34 	lhi.gp $r0,[+#-13720]
   c9ba6:	97 f9       	zeh33 $r7,$r7
   c9ba8:	e2 07       	slt45 $r0,$r7
   c9baa:	e8 38       	beqzs8 c9c1a <chip_1602_init_patching+0xae>
   c9bac:	2e 95 20 5d 	lbi.gp $r9,[+#-188323]
   c9bb0:	2e 05 20 5c 	lbi.gp $r0,[+#-188324]
   c9bb4:	40 94 a0 08 	slli $r9,$r9,#8
   c9bb8:	89 20       	add45 $r9,$r0
   c9bba:	44 00 00 f5 	movi $r0,#245
   c9bbe:	49 00 42 43 	jal d2044 <malloc>
   c9bc2:	3c 13 e5 34 	lhi.gp $r1,[+#-13720]
   c9bc6:	40 94 80 13 	zeh $r9,$r9
   c9bca:	9b f9       	sub333 $r7,$r7,$r1
   c9bcc:	80 c0       	mov55 $r6,$r0
   c9bce:	5e f3 80 f1 	sltsi $r15,$r7,#241
   c9bd2:	e9 03       	bnezs8 c9bd8 <chip_1602_init_patching+0x6c>
   c9bd4:	44 70 00 f0 	movi $r7,#240
   c9bd8:	84 0e       	movi55 $r0,#14
   c9bda:	ae 30       	sbi333 $r0,[$r6+#0x0]
   c9bdc:	44 00 00 31 	movi $r0,#49
   c9be0:	ae 31       	sbi333 $r0,[$r6+#0x1]
   c9be2:	40 04 84 00 	add $r0,$r9,$r1
   c9be6:	97 f8       	zeb33 $r7,$r7
   c9be8:	ae 32       	sbi333 $r0,[$r6+#0x2]
   c9bea:	92 08       	srli45 $r0,#8
   c9bec:	ae 33       	sbi333 $r0,[$r6+#0x3]
   c9bee:	3e 2d 20 5c 	addi.gp $r2,#-188324
   c9bf2:	af f4       	sbi333 $r7,[$r6+#0x4]
   c9bf4:	9c 4a       	addi333 $r1,$r1,#2
   c9bf6:	98 4a       	add333 $r1,$r1,$r2
   c9bf8:	9c 35       	addi333 $r0,$r6,#5
   c9bfa:	80 47       	mov55 $r2,$r7
   c9bfc:	49 ff f2 26 	jal c8048 <memcpy>
   c9c00:	9c bd       	addi333 $r2,$r7,#5
   c9c02:	44 00 fc 00 	movi $r0,#64512
   c9c06:	80 26       	mov55 $r1,$r6
   c9c08:	96 90       	zeb33 $r2,$r2
   c9c0a:	49 ff fd 36 	jal c9676 <chip_1602_send_hci_command>
   c9c0e:	80 06       	mov55 $r0,$r6
   c9c10:	49 00 41 b5 	jal d1f7a <free>
   c9c14:	3e 0f ca 68 	addi.gp $r0,#-13720
   c9c18:	d5 3d       	j8 c9c92 <chip_1602_init_patching+0x126>
   c9c1a:	4c 03 80 0a 	beq $r0,$r7,c9c2e <chip_1602_init_patching+0xc2>
   c9c1e:	3e 0d 30 54 	addi.gp $r0,#-184236
   c9c22:	44 10 01 0a 	movi $r1,#266
   c9c26:	3e 2d 30 78 	addi.gp $r2,#-184200
   c9c2a:	49 00 3a 94 	jal d1152 <assert_ab_callback_verbose>
   c9c2e:	3c 72 95 5a 	lhi.gp $r7,[+#-185676]
   c9c32:	3c 03 e5 35 	lhi.gp $r0,[+#-13718]
   c9c36:	e2 07       	slt45 $r0,$r7
   c9c38:	e8 31       	beqzs8 c9c9a <chip_1602_init_patching+0x12e>
   c9c3a:	44 00 00 e6 	movi $r0,#230
   c9c3e:	49 00 42 03 	jal d2044 <malloc>
   c9c42:	3c 13 e5 35 	lhi.gp $r1,[+#-13718]
   c9c46:	80 c0       	mov55 $r6,$r0
   c9c48:	9b f9       	sub333 $r7,$r7,$r1
   c9c4a:	5e f3 80 e1 	sltsi $r15,$r7,#225
   c9c4e:	e9 03       	bnezs8 c9c54 <chip_1602_init_patching+0xe8>
   c9c50:	44 70 00 e0 	movi $r7,#224
   c9c54:	fa 06       	movpi45 $r0,#0x16
   c9c56:	ae 30       	sbi333 $r0,[$r6+#0x0]
   c9c58:	8c 1b       	addi45 $r0,#27
   c9c5a:	97 f8       	zeb33 $r7,$r7
   c9c5c:	ae 31       	sbi333 $r0,[$r6+#0x1]
   c9c5e:	84 07       	movi55 $r0,#7
   c9c60:	40 23 80 77 	divr $r2,$r3,$r7,$r0
   c9c64:	ae b2       	sbi333 $r2,[$r6+#0x2]
   c9c66:	40 10 80 57 	divr $r1,$r2,$r1,$r0
   c9c6a:	3e 2d 28 fc 	addi.gp $r2,#-186116
   c9c6e:	fe 44       	mul33 $r1,$r0
   c9c70:	98 4a       	add333 $r1,$r1,$r2
   c9c72:	9c 33       	addi333 $r0,$r6,#3
   c9c74:	80 47       	mov55 $r2,$r7
   c9c76:	49 ff f1 e9 	jal c8048 <memcpy>
   c9c7a:	9c bb       	addi333 $r2,$r7,#3
   c9c7c:	44 00 fc 00 	movi $r0,#64512
   c9c80:	80 26       	mov55 $r1,$r6
   c9c82:	96 90       	zeb33 $r2,$r2
   c9c84:	49 ff fc f9 	jal c9676 <chip_1602_send_hci_command>
   c9c88:	80 06       	mov55 $r0,$r6
   c9c8a:	49 00 41 78 	jal d1f7a <free>
   c9c8e:	3e 0f ca 6a 	addi.gp $r0,#-13718
   c9c92:	a4 40       	lhi333 $r1,[$r0+#0x0]
   c9c94:	99 f9       	add333 $r7,$r7,$r1
   c9c96:	ad c0       	shi333 $r7,[$r0+#0x0]
   c9c98:	d5 5e       	j8 c9d54 <chip_1602_init_patching+0x1e8>
   c9c9a:	3e 7f ca 6c 	addi.gp $r7,#-13716
   c9c9e:	a6 38       	lbi333 $r0,[$r7+#0x0]
   c9ca0:	e6 04       	slti45 $r0,#4
   c9ca2:	e8 21       	beqzs8 c9ce4 <chip_1602_init_patching+0x178>
   c9ca4:	3e 1d 2b 20 	addi.gp $r1,#-185568
   c9ca8:	94 03       	slli333 $r0,$r0,#3
   c9caa:	98 01       	add333 $r0,$r0,$r1
   c9cac:	00 80 00 02 	lbi $r8,[$r0+#0x2]
   c9cb0:	50 94 00 05 	addi $r9,$r8,#5
   c9cb4:	80 09       	mov55 $r0,$r9
   c9cb6:	49 00 41 c7 	jal d2044 <malloc>
   c9cba:	80 c0       	mov55 $r6,$r0
   c9cbc:	84 0e       	movi55 $r0,#14
   c9cbe:	ae 30       	sbi333 $r0,[$r6+#0x0]
   c9cc0:	44 00 00 31 	movi $r0,#49
   c9cc4:	ae 31       	sbi333 $r0,[$r6+#0x1]
   c9cc6:	3e 1d 2b 20 	addi.gp $r1,#-185568
   c9cca:	a6 38       	lbi333 $r0,[$r7+#0x0]
   c9ccc:	80 41       	mov55 $r2,$r1
   c9cce:	38 10 83 01 	lh $r1,[$r1+($r0<<#0x3)]
   c9cd2:	94 03       	slli333 $r0,$r0,#3
   c9cd4:	ae 72       	sbi333 $r1,[$r6+#0x2]
   c9cd6:	92 28       	srli45 $r1,#8
   c9cd8:	ae 73       	sbi333 $r1,[$r6+#0x3]
   c9cda:	10 83 00 04 	sbi $r8,[$r6+#0x4]
   c9cde:	98 42       	add333 $r1,$r0,$r2
   c9ce0:	9c 35       	addi333 $r0,$r6,#5
   c9ce2:	d5 21       	j8 c9d24 <chip_1602_init_patching+0x1b8>
   c9ce4:	3e 7f ca 6d 	addi.gp $r7,#-13715
   c9ce8:	a6 38       	lbi333 $r0,[$r7+#0x0]
   c9cea:	c8 2f       	bnez38 $r0,c9d48 <chip_1602_init_patching+0x1dc>
   c9cec:	3e ad 2b 44 	addi.gp $r10,#-185532
   c9cf0:	00 85 00 02 	lbi $r8,[$r10+#0x2]
   c9cf4:	50 94 00 06 	addi $r9,$r8,#6
   c9cf8:	80 09       	mov55 $r0,$r9
   c9cfa:	49 00 41 a5 	jal d2044 <malloc>
   c9cfe:	80 c0       	mov55 $r6,$r0
   c9d00:	fa 06       	movpi45 $r0,#0x16
   c9d02:	ae 30       	sbi333 $r0,[$r6+#0x0]
   c9d04:	8c 1b       	addi45 $r0,#27
   c9d06:	ae 31       	sbi333 $r0,[$r6+#0x1]
   c9d08:	84 01       	movi55 $r0,#1
   c9d0a:	ae 32       	sbi333 $r0,[$r6+#0x2]
   c9d0c:	a6 38       	lbi333 $r0,[$r7+#0x0]
   c9d0e:	10 83 00 05 	sbi $r8,[$r6+#0x5]
   c9d12:	38 15 03 01 	lh $r1,[$r10+($r0<<#0x3)]
   c9d16:	94 03       	slli333 $r0,$r0,#3
   c9d18:	ae 73       	sbi333 $r1,[$r6+#0x3]
   c9d1a:	92 28       	srli45 $r1,#8
   c9d1c:	ae 74       	sbi333 $r1,[$r6+#0x4]
   c9d1e:	40 10 28 00 	add $r1,$r0,$r10
   c9d22:	9c 36       	addi333 $r0,$r6,#6
   c9d24:	a0 49       	lwi333 $r1,[$r1+#0x4]
   c9d26:	80 48       	mov55 $r2,$r8
   c9d28:	49 ff f1 90 	jal c8048 <memcpy>
   c9d2c:	44 00 fc 00 	movi $r0,#64512
   c9d30:	80 26       	mov55 $r1,$r6
   c9d32:	54 24 80 ff 	andi $r2,$r9,#0xff
   c9d36:	49 ff fc a0 	jal c9676 <chip_1602_send_hci_command>
   c9d3a:	80 06       	mov55 $r0,$r6
   c9d3c:	49 00 41 1f 	jal d1f7a <free>
   c9d40:	a6 38       	lbi333 $r0,[$r7+#0x0]
   c9d42:	9c 01       	addi333 $r0,$r0,#1
   c9d44:	ae 38       	sbi333 $r0,[$r7+#0x0]
   c9d46:	d5 07       	j8 c9d54 <chip_1602_init_patching+0x1e8>
   c9d48:	84 22       	movi55 $r1,#2
   c9d4a:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   c9d4e:	84 00       	movi55 $r0,#0
   c9d50:	49 ff fe b1 	jal c9ab2 <chip_1602_init_sw_reset>
   c9d54:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000c9d56 <hci_rx_recv>:
   c9d56:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   c9d58:	b5 00       	lwi450 $r8,[$r0]
   c9d5a:	80 c0       	mov55 $r6,$r0
   c9d5c:	85 e4       	movi55 $r15,#4
   c9d5e:	4c 87 c0 c7 	bne $r8,$r15,c9eec <hci_rx_recv+0x196>
   c9d62:	2e 17 ca 58 	lbi.gp $r1,[+#-13736]
   c9d66:	e6 25       	slti45 $r1,#5
   c9d68:	4e f3 00 a2 	bnez $r15,c9eac <hci_rx_recv+0x156>
   c9d6c:	5a 18 06 0c 	bnec $r1,#6,c9d84 <hci_rx_recv+0x2e>
   c9d70:	9c 04       	addi333 $r0,$r0,#4
   c9d72:	44 10 31 0e 	movi $r1,#12558
   c9d76:	49 ff fb 42 	jal c93fa <chip_1602_is_vcmd_complete_event>
   c9d7a:	c0 4f       	beqz38 $r0,c9e18 <hci_rx_recv+0xc2>
   c9d7c:	44 00 40 00 	movi $r0,#16384
   c9d80:	84 20       	movi55 $r1,#0
   c9d82:	d5 24       	j8 c9dca <hci_rx_recv+0x74>
   c9d84:	5a 18 07 13 	bnec $r1,#7,c9daa <hci_rx_recv+0x54>
   c9d88:	9c 04       	addi333 $r0,$r0,#4
   c9d8a:	44 10 31 0f 	movi $r1,#12559
   c9d8e:	49 ff fb 36 	jal c93fa <chip_1602_is_vcmd_complete_event>
   c9d92:	c0 43       	beqz38 $r0,c9e18 <hci_rx_recv+0xc2>
   c9d94:	a4 b4       	lhi333 $r2,[$r6+#0x8]
   c9d96:	a4 33       	lhi333 $r0,[$r6+#0x6]
   c9d98:	40 21 40 08 	slli $r2,$r2,#16
   c9d9c:	fe 87       	or33 $r2,$r0
   c9d9e:	a6 54       	lbi333 $r1,[$r2+#0x4]
   c9da0:	44 00 40 02 	movi $r0,#16386
   c9da4:	9c 95       	addi333 $r2,$r2,#5
   c9da6:	84 66       	movi55 $r3,#6
   c9da8:	d5 26       	j8 c9df4 <hci_rx_recv+0x9e>
   c9daa:	5a 18 08 13 	bnec $r1,#8,c9dd0 <hci_rx_recv+0x7a>
   c9dae:	9c 04       	addi333 $r0,$r0,#4
   c9db0:	44 10 31 16 	movi $r1,#12566
   c9db4:	49 ff fb 23 	jal c93fa <chip_1602_is_vcmd_complete_event>
   c9db8:	c0 30       	beqz38 $r0,c9e18 <hci_rx_recv+0xc2>
   c9dba:	a4 74       	lhi333 $r1,[$r6+#0x8]
   c9dbc:	a4 33       	lhi333 $r0,[$r6+#0x6]
   c9dbe:	40 10 c0 08 	slli $r1,$r1,#16
   c9dc2:	fe 47       	or33 $r1,$r0
   c9dc4:	a6 4c       	lbi333 $r1,[$r1+#0x4]
   c9dc6:	44 00 40 01 	movi $r0,#16385
   c9dca:	49 ff fc 33 	jal c9630 <make_command_complete>
   c9dce:	d5 15       	j8 c9df8 <hci_rx_recv+0xa2>
   c9dd0:	5a 18 09 24 	bnec $r1,#9,c9e18 <hci_rx_recv+0xc2>
   c9dd4:	9c 04       	addi333 $r0,$r0,#4
   c9dd6:	44 10 31 17 	movi $r1,#12567
   c9dda:	49 ff fb 10 	jal c93fa <chip_1602_is_vcmd_complete_event>
   c9dde:	c0 1d       	beqz38 $r0,c9e18 <hci_rx_recv+0xc2>
   c9de0:	a4 b4       	lhi333 $r2,[$r6+#0x8]
   c9de2:	a4 33       	lhi333 $r0,[$r6+#0x6]
   c9de4:	40 21 40 08 	slli $r2,$r2,#16
   c9de8:	fe 87       	or33 $r2,$r0
   c9dea:	a6 54       	lbi333 $r1,[$r2+#0x4]
   c9dec:	44 00 40 03 	movi $r0,#16387
   c9df0:	8c 48       	addi45 $r2,#8
   c9df2:	80 68       	mov55 $r3,$r8
   c9df4:	49 ff fb e4 	jal c95bc <make_command_complete_ex>
   c9df8:	81 00       	mov55 $r8,$r0
   c9dfa:	84 05       	movi55 $r0,#5
   c9dfc:	3e 07 ca 58 	sbi.gp $r0,[+#-13736]
   c9e00:	a4 b4       	lhi333 $r2,[$r6+#0x8]
   c9e02:	a4 73       	lhi333 $r1,[$r6+#0x6]
   c9e04:	40 21 40 08 	slli $r2,$r2,#16
   c9e08:	40 01 04 04 	or $r0,$r2,$r1
   c9e0c:	49 00 40 b7 	jal d1f7a <free>
   c9e10:	80 06       	mov55 $r0,$r6
   c9e12:	49 00 40 b4 	jal d1f7a <free>
   c9e16:	80 c8       	mov55 $r6,$r8
   c9e18:	a6 34       	lbi333 $r0,[$r6+#0x4]
   c9e1a:	5a 08 3e 21 	bnec $r0,#62,c9e5c <hci_rx_recv+0x106>
   c9e1e:	a4 74       	lhi333 $r1,[$r6+#0x8]
   c9e20:	a4 33       	lhi333 $r0,[$r6+#0x6]
   c9e22:	40 10 c0 08 	slli $r1,$r1,#16
   c9e26:	fe 47       	or33 $r1,$r0
   c9e28:	a6 08       	lbi333 $r0,[$r1+#0x0]
   c9e2a:	5a 08 01 61 	bnec $r0,#1,c9eec <hci_rx_recv+0x196>
   c9e2e:	a6 89       	lbi333 $r2,[$r1+#0x1]
   c9e30:	ca 5e       	bnez38 $r2,c9eec <hci_rx_recv+0x196>
   c9e32:	a6 ca       	lbi333 $r3,[$r1+#0x2]
   c9e34:	a7 0b       	lbi333 $r4,[$r1+#0x3]
   c9e36:	3e 1f ca 48 	addi.gp $r1,#-13752
   c9e3a:	a4 88       	lhi333 $r2,[$r1+#0x0]
   c9e3c:	ca 03       	bnez38 $r2,c9e42 <hci_rx_recv+0xec>
   c9e3e:	80 02       	mov55 $r0,$r2
   c9e40:	d5 0a       	j8 c9e54 <hci_rx_recv+0xfe>
   c9e42:	a4 89       	lhi333 $r2,[$r1+#0x2]
   c9e44:	c2 08       	beqz38 $r2,c9e54 <hci_rx_recv+0xfe>
   c9e46:	a4 0a       	lhi333 $r0,[$r1+#0x4]
   c9e48:	c8 03       	bnez38 $r0,c9e4e <hci_rx_recv+0xf8>
   c9e4a:	84 02       	movi55 $r0,#2
   c9e4c:	d5 04       	j8 c9e54 <hci_rx_recv+0xfe>
   c9e4e:	a4 0b       	lhi333 $r0,[$r1+#0x6]
   c9e50:	c8 4e       	bnez38 $r0,c9eec <hci_rx_recv+0x196>
   c9e52:	84 03       	movi55 $r0,#3
   c9e54:	40 22 20 08 	slli $r2,$r4,#8
   c9e58:	98 9a       	add333 $r2,$r3,$r2
   c9e5a:	d5 24       	j8 c9ea2 <hci_rx_recv+0x14c>
   c9e5c:	5a 08 05 48 	bnec $r0,#5,c9eec <hci_rx_recv+0x196>
   c9e60:	a4 74       	lhi333 $r1,[$r6+#0x8]
   c9e62:	a4 33       	lhi333 $r0,[$r6+#0x6]
   c9e64:	40 10 c0 08 	slli $r1,$r1,#16
   c9e68:	fe 47       	or33 $r1,$r0
   c9e6a:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   c9e6c:	a6 49       	lbi333 $r1,[$r1+#0x1]
   c9e6e:	40 00 20 08 	slli $r0,$r0,#8
   c9e72:	98 01       	add333 $r0,$r0,$r1
   c9e74:	3e 1f ca 48 	addi.gp $r1,#-13752
   c9e78:	a4 88       	lhi333 $r2,[$r1+#0x0]
   c9e7a:	96 01       	zeh33 $r0,$r0
   c9e7c:	4c 20 40 04 	bne $r2,$r0,c9e84 <hci_rx_recv+0x12e>
   c9e80:	84 00       	movi55 $r0,#0
   c9e82:	d5 0f       	j8 c9ea0 <hci_rx_recv+0x14a>
   c9e84:	a4 89       	lhi333 $r2,[$r1+#0x2]
   c9e86:	4c 20 40 04 	bne $r2,$r0,c9e8e <hci_rx_recv+0x138>
   c9e8a:	84 01       	movi55 $r0,#1
   c9e8c:	d5 0a       	j8 c9ea0 <hci_rx_recv+0x14a>
   c9e8e:	a4 8a       	lhi333 $r2,[$r1+#0x4]
   c9e90:	4c 20 40 04 	bne $r2,$r0,c9e98 <hci_rx_recv+0x142>
   c9e94:	84 02       	movi55 $r0,#2
   c9e96:	d5 05       	j8 c9ea0 <hci_rx_recv+0x14a>
   c9e98:	a4 4b       	lhi333 $r1,[$r1+#0x6]
   c9e9a:	4c 10 40 29 	bne $r1,$r0,c9eec <hci_rx_recv+0x196>
   c9e9e:	84 03       	movi55 $r0,#3
   c9ea0:	84 40       	movi55 $r2,#0
   c9ea2:	3e 1f ca 48 	addi.gp $r1,#-13752
   c9ea6:	38 20 81 09 	sh $r2,[$r1+($r0<<#0x1)]
   c9eaa:	d5 21       	j8 c9eec <hci_rx_recv+0x196>
   c9eac:	9c 04       	addi333 $r0,$r0,#4
   c9eae:	5a 10 02 16 	beqc $r1,#2,c9eda <hci_rx_recv+0x184>
   c9eb2:	e6 23       	slti45 $r1,#3
   c9eb4:	e8 04       	beqzs8 c9ebc <hci_rx_recv+0x166>
   c9eb6:	5a 18 01 07 	bnec $r1,#1,c9ec4 <hci_rx_recv+0x16e>
   c9eba:	d5 0d       	j8 c9ed4 <hci_rx_recv+0x17e>
   c9ebc:	5a 10 03 12 	beqc $r1,#3,c9ee0 <hci_rx_recv+0x18a>
   c9ec0:	5a 10 04 13 	beqc $r1,#4,c9ee6 <hci_rx_recv+0x190>
   c9ec4:	84 20       	movi55 $r1,#0
   c9ec6:	49 ff fa c2 	jal c944a <chip_1602_is_boot_complete_event>
   c9eca:	c0 15       	beqz38 $r0,c9ef4 <hci_rx_recv+0x19e>
   c9ecc:	84 21       	movi55 $r1,#1
   c9ece:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   c9ed2:	84 00       	movi55 $r0,#0
   c9ed4:	49 ff fe 4c 	jal c9b6c <chip_1602_init_patching>
   c9ed8:	d5 0e       	j8 c9ef4 <hci_rx_recv+0x19e>
   c9eda:	49 ff fd ec 	jal c9ab2 <chip_1602_init_sw_reset>
   c9ede:	d5 0b       	j8 c9ef4 <hci_rx_recv+0x19e>
   c9ee0:	49 ff fd 30 	jal c9940 <chip_1602_init_config>
   c9ee4:	d5 08       	j8 c9ef4 <hci_rx_recv+0x19e>
   c9ee6:	49 ff fc 87 	jal c97f4 <chip_1602_init_adopt_mp>
   c9eea:	d5 05       	j8 c9ef4 <hci_rx_recv+0x19e>
   c9eec:	3c 1d f2 95 	lwi.gp $r1,[+#-13740]
   c9ef0:	80 06       	mov55 $r0,$r6
   c9ef2:	dd 21       	jral5 $r1
   c9ef4:	b4 06       	lwi450 $r0,[$r6]
   c9ef6:	5a 08 04 08 	bnec $r0,#4,c9f06 <hci_rx_recv+0x1b0>
   c9efa:	a4 34       	lhi333 $r0,[$r6+#0x8]
   c9efc:	a4 73       	lhi333 $r1,[$r6+#0x6]
   c9efe:	40 00 40 08 	slli $r0,$r0,#16
   c9f02:	fe 0f       	or33 $r0,$r1
   c9f04:	d5 02       	j8 c9f08 <hci_rx_recv+0x1b2>
   c9f06:	a0 32       	lwi333 $r0,[$r6+#0x8]
   c9f08:	49 00 40 39 	jal d1f7a <free>
   c9f0c:	80 06       	mov55 $r0,$r6
   c9f0e:	49 00 40 36 	jal d1f7a <free>
   c9f12:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000c9f14 <hci_1602_read_cfm_cb>:
   c9f14:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   c9f16:	81 01       	mov55 $r8,$r1
   c9f18:	97 d1       	zeh33 $r7,$r2
   c9f1a:	b1 81       	addri36.sp $r6,#0x4
   c9f1c:	d5 07       	j8 c9f2a <hci_1602_read_cfm_cb+0x16>
   c9f1e:	c0 03       	beqz38 $r0,c9f24 <hci_1602_read_cfm_cb+0x10>
   c9f20:	49 ff ff 1b 	jal c9d56 <hci_rx_recv>
   c9f24:	8a e9       	sub45 $r7,$r9
   c9f26:	89 07       	add45 $r8,$r7
   c9f28:	80 e9       	mov55 $r7,$r9
   c9f2a:	80 08       	mov55 $r0,$r8
   c9f2c:	80 27       	mov55 $r1,$r7
   c9f2e:	80 46       	mov55 $r2,$r6
   c9f30:	49 00 00 17 	jal c9f5e <hci_h4_decode>
   c9f34:	40 90 00 13 	zeh $r9,$r0
   c9f38:	f0 01       	lwi37.sp $r0,[+#0x4]
   c9f3a:	4e 93 ff f2 	bnez $r9,c9f1e <hci_1602_read_cfm_cb+0xa>
   c9f3e:	c0 04       	beqz38 $r0,c9f46 <hci_1602_read_cfm_cb+0x32>
   c9f40:	49 ff ff 0b 	jal c9d56 <hci_rx_recv>
   c9f44:	d5 0c       	j8 c9f5c <hci_1602_read_cfm_cb+0x48>
   c9f46:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   c9f4a:	3e 0d 30 b0 	addi.gp $r0,#-184144
   c9f4e:	80 47       	mov55 $r2,$r7
   c9f50:	49 00 40 ef 	jal d212e <printf>
   c9f54:	3c 0d f2 94 	lwi.gp $r0,[+#-13744]
   c9f58:	a0 05       	lwi333 $r0,[$r0+#0x14]
   c9f5a:	dd 20       	jral5 $r0
   c9f5c:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000c9f5e <hci_h4_decode>:
   c9f5e:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   c9f60:	97 89       	zeh33 $r6,$r1
   c9f62:	80 e0       	mov55 $r7,$r0
   c9f64:	83 82       	mov55 $fp,$r2
   c9f66:	4e 62 00 a4 	beqz $r6,ca0ae <hci_h4_decode+0x150>
   c9f6a:	3c 8d f1 9f 	lwi.gp $r8,[+#-14724]
   c9f6e:	4e 83 00 08 	bnez $r8,c9f7e <hci_h4_decode+0x20>
   c9f72:	fa 00       	movpi45 $r0,#0x10
   c9f74:	49 00 40 68 	jal d2044 <malloc>
   c9f78:	3c 0f f1 9f 	swi.gp $r0,[+#-14724]
   c9f7c:	b7 00       	swi450 $r8,[$r0]
   c9f7e:	84 00       	movi55 $r0,#0
   c9f80:	b6 1c       	swi450 $r0,[$fp]
   c9f82:	3e 8f c6 7c 	addi.gp $r8,#-14724
   c9f86:	b4 08       	lwi450 $r0,[$r8]
   c9f88:	b4 00       	lwi450 $r0,[$r0]
   c9f8a:	85 e2       	movi55 $r15,#2
   c9f8c:	4c 07 80 73 	beq $r0,$r15,ca072 <hci_h4_decode+0x114>
   c9f90:	85 e4       	movi55 $r15,#4
   c9f92:	4c 07 80 70 	beq $r0,$r15,ca072 <hci_h4_decode+0x114>
   c9f96:	4e 03 00 8c 	bnez $r0,ca0ae <hci_h4_decode+0x150>
   c9f9a:	a6 78       	lbi333 $r1,[$r7+#0x0]
   c9f9c:	5a 10 02 05 	beqc $r1,#2,c9fa6 <hci_h4_decode+0x48>
   c9fa0:	5a 18 04 54 	bnec $r1,#4,ca048 <hci_h4_decode+0xea>
   c9fa4:	d5 2c       	j8 c9ffc <hci_h4_decode+0x9e>
   c9fa6:	e6 c5       	slti45 $r6,#5
   c9fa8:	e8 09       	beqzs8 c9fba <hci_h4_decode+0x5c>
   c9faa:	3e 0d 30 d8 	addi.gp $r0,#-184104
   c9fae:	44 10 00 63 	movi $r1,#99
   c9fb2:	3e 2d 30 e4 	addi.gp $r2,#-184092
   c9fb6:	49 00 38 ce 	jal d1152 <assert_ab_callback_verbose>
   c9fba:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   c9fbc:	a6 79       	lbi333 $r1,[$r7+#0x1]
   c9fbe:	b5 28       	lwi450 $r9,[$r8]
   c9fc0:	40 00 20 08 	slli $r0,$r0,#8
   c9fc4:	98 01       	add333 $r0,$r0,$r1
   c9fc6:	12 04 80 02 	shi $r0,[$r9+#0x4]
   c9fca:	9f b5       	subi333 $r6,$r6,#5
   c9fcc:	a6 3c       	lbi333 $r0,[$r7+#0x4]
   c9fce:	a6 7b       	lbi333 $r1,[$r7+#0x3]
   c9fd0:	40 00 20 08 	slli $r0,$r0,#8
   c9fd4:	98 01       	add333 $r0,$r0,$r1
   c9fd6:	96 01       	zeh33 $r0,$r0
   c9fd8:	12 04 80 03 	shi $r0,[$r9+#0x6]
   c9fdc:	97 b1       	zeh33 $r6,$r6
   c9fde:	49 00 40 33 	jal d2044 <malloc>
   c9fe2:	14 04 80 02 	swi $r0,[$r9+#0x8]
   c9fe6:	3c 0f f2 9c 	swi.gp $r0,[+#-13712]
   c9fea:	b4 28       	lwi450 $r1,[$r8]
   c9fec:	02 94 80 03 	lhi $r9,[$r9+#0x6]
   c9ff0:	84 42       	movi55 $r2,#2
   c9ff2:	9d fd       	addi333 $r7,$r7,#5
   c9ff4:	b6 41       	swi450 $r2,[$r1]
   c9ff6:	3c 9b e5 3a 	shi.gp $r9,[+#-13708]
   c9ffa:	d5 3a       	j8 ca06e <hci_h4_decode+0x110>
   c9ffc:	e6 c3       	slti45 $r6,#3
   c9ffe:	e8 09       	beqzs8 ca010 <hci_h4_decode+0xb2>
   ca000:	3e 0d 31 14 	addi.gp $r0,#-184044
   ca004:	44 10 00 75 	movi $r1,#117
   ca008:	3e 2d 30 e4 	addi.gp $r2,#-184092
   ca00c:	49 00 38 a3 	jal d1152 <assert_ab_callback_verbose>
   ca010:	b5 28       	lwi450 $r9,[$r8]
   ca012:	a6 39       	lbi333 $r0,[$r7+#0x1]
   ca014:	9f b3       	subi333 $r6,$r6,#3
   ca016:	10 04 80 04 	sbi $r0,[$r9+#0x4]
   ca01a:	97 b1       	zeh33 $r6,$r6
   ca01c:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   ca01e:	9d fb       	addi333 $r7,$r7,#3
   ca020:	10 04 80 05 	sbi $r0,[$r9+#0x5]
   ca024:	49 00 40 10 	jal d2044 <malloc>
   ca028:	40 10 40 09 	srli $r1,$r0,#16
   ca02c:	12 04 80 03 	shi $r0,[$r9+#0x6]
   ca030:	12 14 80 04 	shi $r1,[$r9+#0x8]
   ca034:	3c 0f f2 9c 	swi.gp $r0,[+#-13712]
   ca038:	b4 28       	lwi450 $r1,[$r8]
   ca03a:	00 04 80 05 	lbi $r0,[$r9+#0x5]
   ca03e:	84 44       	movi55 $r2,#4
   ca040:	b6 41       	swi450 $r2,[$r1]
   ca042:	3c 0b e5 3a 	shi.gp $r0,[+#-13708]
   ca046:	d5 14       	j8 ca06e <hci_h4_decode+0x110>
   ca048:	c9 03       	bnez38 $r1,ca04e <hci_h4_decode+0xf0>
   ca04a:	5a 60 01 0f 	beqc $r6,#1,ca068 <hci_h4_decode+0x10a>
   ca04e:	80 46       	mov55 $r2,$r6
   ca050:	3e 0d 31 20 	addi.gp $r0,#-184032
   ca054:	49 00 40 6d 	jal d212e <printf>
   ca058:	3e 0d 31 38 	addi.gp $r0,#-184008
   ca05c:	44 10 00 87 	movi $r1,#135
   ca060:	3e 2d 30 e4 	addi.gp $r2,#-184092
   ca064:	49 00 38 77 	jal d1152 <assert_ab_callback_verbose>
   ca068:	9f b1       	subi333 $r6,$r6,#1
   ca06a:	97 b1       	zeh33 $r6,$r6
   ca06c:	9d f9       	addi333 $r7,$r7,#1
   ca06e:	ce 8c       	bnez38 $r6,c9f86 <hci_h4_decode+0x28>
   ca070:	d5 1f       	j8 ca0ae <hci_h4_decode+0x150>
   ca072:	3c 03 e5 3a 	lhi.gp $r0,[+#-13708]
   ca076:	81 26       	mov55 $r9,$r6
   ca078:	e2 06       	slt45 $r0,$r6
   ca07a:	e8 02       	beqzs8 ca07e <hci_h4_decode+0x120>
   ca07c:	81 20       	mov55 $r9,$r0
   ca07e:	40 94 80 13 	zeh $r9,$r9
   ca082:	3c 0d f2 9c 	lwi.gp $r0,[+#-13712]
   ca086:	80 27       	mov55 $r1,$r7
   ca088:	80 49       	mov55 $r2,$r9
   ca08a:	49 ff ef df 	jal c8048 <memcpy>
   ca08e:	3c 03 e5 3a 	lhi.gp $r0,[+#-13708]
   ca092:	8a c9       	sub45 $r6,$r9
   ca094:	8a 09       	sub45 $r0,$r9
   ca096:	96 01       	zeh33 $r0,$r0
   ca098:	97 b1       	zeh33 $r6,$r6
   ca09a:	3c 0b e5 3a 	shi.gp $r0,[+#-13708]
   ca09e:	c8 08       	bnez38 $r0,ca0ae <hci_h4_decode+0x150>
   ca0a0:	46 10 01 00 	sethi $r1,#0x100
   ca0a4:	3c 2d f1 9f 	lwi.gp $r2,[+#-14724]
   ca0a8:	b6 5c       	swi450 $r2,[$fp]
   ca0aa:	3c 0f f1 9f 	swi.gp $r0,[+#-14724]
   ca0ae:	80 06       	mov55 $r0,$r6
   ca0b0:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000ca0b2 <hci_h4_encode_dat>:
   ca0b2:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   ca0b4:	97 91       	zeh33 $r6,$r2
   ca0b6:	9d f5       	addi333 $r7,$r6,#5
   ca0b8:	40 80 00 13 	zeh $r8,$r0
   ca0bc:	80 07       	mov55 $r0,$r7
   ca0be:	83 83       	mov55 $fp,$r3
   ca0c0:	81 41       	mov55 $r10,$r1
   ca0c2:	81 24       	mov55 $r9,$r4
   ca0c4:	49 00 3f c0 	jal d2044 <malloc>
   ca0c8:	b6 1c       	swi450 $r0,[$fp]
   ca0ca:	c0 14       	beqz38 $r0,ca0f2 <hci_h4_encode_dat+0x40>
   ca0cc:	84 22       	movi55 $r1,#2
   ca0ce:	ae 40       	sbi333 $r1,[$r0+#0x0]
   ca0d0:	10 80 00 01 	sbi $r8,[$r0+#0x1]
   ca0d4:	40 13 20 09 	srli $r1,$r6,#8
   ca0d8:	93 08       	srli45 $r8,#8
   ca0da:	ae 44       	sbi333 $r1,[$r0+#0x4]
   ca0dc:	10 80 00 02 	sbi $r8,[$r0+#0x2]
   ca0e0:	af 83       	sbi333 $r6,[$r0+#0x3]
   ca0e2:	80 2a       	mov55 $r1,$r10
   ca0e4:	9c 05       	addi333 $r0,$r0,#5
   ca0e6:	80 46       	mov55 $r2,$r6
   ca0e8:	49 ff ef b0 	jal c8048 <memcpy>
   ca0ec:	12 74 80 00 	shi $r7,[$r9+#0x0]
   ca0f0:	84 01       	movi55 $r0,#1
   ca0f2:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000ca0f4 <hci_h4_encode_cmd>:
   ca0f4:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   ca0f6:	97 90       	zeb33 $r6,$r2
   ca0f8:	9d f4       	addi333 $r7,$r6,#4
   ca0fa:	40 80 00 13 	zeh $r8,$r0
   ca0fe:	80 07       	mov55 $r0,$r7
   ca100:	83 83       	mov55 $fp,$r3
   ca102:	81 41       	mov55 $r10,$r1
   ca104:	81 24       	mov55 $r9,$r4
   ca106:	49 00 3f 9f 	jal d2044 <malloc>
   ca10a:	b6 1c       	swi450 $r0,[$fp]
   ca10c:	c0 11       	beqz38 $r0,ca12e <hci_h4_encode_cmd+0x3a>
   ca10e:	10 80 00 01 	sbi $r8,[$r0+#0x1]
   ca112:	84 21       	movi55 $r1,#1
   ca114:	93 08       	srli45 $r8,#8
   ca116:	ae 40       	sbi333 $r1,[$r0+#0x0]
   ca118:	10 80 00 02 	sbi $r8,[$r0+#0x2]
   ca11c:	af 83       	sbi333 $r6,[$r0+#0x3]
   ca11e:	80 2a       	mov55 $r1,$r10
   ca120:	9c 04       	addi333 $r0,$r0,#4
   ca122:	80 46       	mov55 $r2,$r6
   ca124:	49 ff ef 92 	jal c8048 <memcpy>
   ca128:	12 74 80 00 	shi $r7,[$r9+#0x0]
   ca12c:	84 01       	movi55 $r0,#1
   ca12e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000ca130 <bt_infom_ap>:
   ca130:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ca132:	3c 1d f2 9e 	lwi.gp $r1,[+#-13704]
   ca136:	c1 02       	beqz38 $r1,ca13a <bt_infom_ap+0xa>
   ca138:	dd 21       	jral5 $r1
   ca13a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ca13c <BT_Log_Enable>:
   ca13c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ca13e:	96 00       	zeb33 $r0,$r0
   ca140:	49 00 2e 9b 	jal cfe76 <hci_log_set>
   ca144:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ca146 <BT_Pending_TxCnt>:
   ca146:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ca148:	49 00 2f 40 	jal cffc8 <hci_pending_acl>
   ca14c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ca14e <BT_InitEx2>:
   ca14e:	fc 4d       	push25 $r10,#0x68    ! {$r6~$r10, $fp, $gp, $lp}
   ca150:	54 91 00 ff 	andi $r9,$r2,#0xff
   ca154:	f0 81       	swi37.sp $r0,[+#0x4]
   ca156:	80 c1       	mov55 $r6,$r1
   ca158:	83 83       	mov55 $fp,$r3
   ca15a:	e7 26       	slti45 $r9,#6
   ca15c:	4e f3 00 8c 	bnez $r15,ca274 <BT_InitEx2+0x126>
   ca160:	b0 0f       	addri36.sp $r0,#0x3c
   ca162:	84 20       	movi55 $r1,#0
   ca164:	fa 58       	movpi45 $r2,#0x28
   ca166:	50 73 00 08 	addi $r7,$r6,#8
   ca16a:	49 ff ef 8f 	jal c8088 <memset>
   ca16e:	b4 07       	lwi450 $r0,[$r7]
   ca170:	4e 02 00 7e 	beqz $r0,ca26c <BT_InitEx2+0x11e>
   ca174:	04 a3 00 03 	lwi $r10,[$r6+#0xc]
   ca178:	b0 42       	addri36.sp $r1,#0x8
   ca17a:	50 25 00 05 	addi $r2,$r10,#5
   ca17e:	50 0f 80 0e 	addi $r0,$sp,#14
   ca182:	08 31 7f ff 	lbi.bi $r3,[$r2],#-0x1
   ca186:	18 30 80 01 	sbi.bi $r3,[$r1],#0x1
   ca18a:	4c 10 7f fc 	bne $r1,$r0,ca182 <BT_InitEx2+0x34>
   ca18e:	b4 07       	lwi450 $r0,[$r7]
   ca190:	b0 4f       	addri36.sp $r1,#0x3c
   ca192:	fa 58       	movpi45 $r2,#0x28
   ca194:	49 ff ef 4e 	jal c8030 <memcmp>
   ca198:	c8 21       	bnez38 $r0,ca1da <BT_InitEx2+0x8c>
   ca19a:	50 8f 80 08 	addi $r8,$sp,#8
   ca19e:	80 08       	mov55 $r0,$r8
   ca1a0:	3e 1d 31 3c 	addi.gp $r1,#-184004
   ca1a4:	84 43       	movi55 $r2,#3
   ca1a6:	49 ff ef 45 	jal c8030 <memcmp>
   ca1aa:	c0 16       	beqz38 $r0,ca1d6 <BT_InitEx2+0x88>
   ca1ac:	80 08       	mov55 $r0,$r8
   ca1ae:	3e 1d 31 40 	addi.gp $r1,#-184000
   ca1b2:	84 43       	movi55 $r2,#3
   ca1b4:	49 ff ef 3e 	jal c8030 <memcmp>
   ca1b8:	c0 0f       	beqz38 $r0,ca1d6 <BT_InitEx2+0x88>
   ca1ba:	80 08       	mov55 $r0,$r8
   ca1bc:	3e 1d 31 44 	addi.gp $r1,#-183996
   ca1c0:	84 43       	movi55 $r2,#3
   ca1c2:	49 ff ef 37 	jal c8030 <memcmp>
   ca1c6:	c0 08       	beqz38 $r0,ca1d6 <BT_InitEx2+0x88>
   ca1c8:	80 08       	mov55 $r0,$r8
   ca1ca:	3e 1d 31 48 	addi.gp $r1,#-183992
   ca1ce:	84 43       	movi55 $r2,#3
   ca1d0:	49 ff ef 30 	jal c8030 <memcmp>
   ca1d4:	c8 03       	bnez38 $r0,ca1da <BT_InitEx2+0x8c>
   ca1d6:	84 20       	movi55 $r1,#0
   ca1d8:	d5 4c       	j8 ca270 <BT_InitEx2+0x122>
   ca1da:	04 83 00 04 	lwi $r8,[$r6+#0x10]
   ca1de:	50 1f 80 0e 	addi $r1,$sp,#14
   ca1e2:	4e 82 00 0d 	beqz $r8,ca1fc <BT_InitEx2+0xae>
   ca1e6:	80 08       	mov55 $r0,$r8
   ca1e8:	b6 3f       	swi450 $r1,[$sp]
   ca1ea:	49 ff ef 87 	jal c80f8 <strlen>
   ca1ee:	b4 3f       	lwi450 $r1,[$sp]
   ca1f0:	96 80       	zeb33 $r2,$r0
   ca1f2:	10 2f 80 67 	sbi $r2,[$sp+#0x67]
   ca1f6:	80 01       	mov55 $r0,$r1
   ca1f8:	80 28       	mov55 $r1,$r8
   ca1fa:	d5 08       	j8 ca20a <BT_InitEx2+0xbc>
   ca1fc:	fa 0c       	movpi45 $r0,#0x1c
   ca1fe:	10 0f 80 67 	sbi $r0,[$sp+#0x67]
   ca202:	fa 4c       	movpi45 $r2,#0x1c
   ca204:	80 01       	mov55 $r0,$r1
   ca206:	3e 1d 31 4c 	addi.gp $r1,#-183988
   ca20a:	49 ff ef 1f 	jal c8048 <memcpy>
   ca20e:	00 0f 80 67 	lbi $r0,[$sp+#0x67]
   ca212:	5c f0 00 23 	slti $r15,$r0,#35
   ca216:	e9 04       	bnezs8 ca21e <BT_InitEx2+0xd0>
   ca218:	fa 12       	movpi45 $r0,#0x22
   ca21a:	10 0f 80 67 	sbi $r0,[$sp+#0x67]
   ca21e:	00 2f 80 67 	lbi $r2,[$sp+#0x67]
   ca222:	a1 35       	lwi333 $r4,[$r6+#0x14]
   ca224:	9c 96       	addi333 $r2,$r2,#6
   ca226:	96 90       	zeb33 $r2,$r2
   ca228:	10 2f 80 67 	sbi $r2,[$sp+#0x67]
   ca22c:	b0 0f       	addri36.sp $r0,#0x3c
   ca22e:	00 55 00 00 	lbi $r5,[$r10+#0x0]
   ca232:	c4 0b       	beqz38 $r4,ca248 <BT_InitEx2+0xfa>
   ca234:	50 1f 80 67 	addi $r1,$sp,#103
   ca238:	dd 24       	jral5 $r4
   ca23a:	b4 07       	lwi450 $r0,[$r7]
   ca23c:	fa 58       	movpi45 $r2,#0x28
   ca23e:	b0 4f       	addri36.sp $r1,#0x3c
   ca240:	49 ff ee f8 	jal c8030 <memcmp>
   ca244:	c0 0c       	beqz38 $r0,ca25c <BT_InitEx2+0x10e>
   ca246:	d5 0e       	j8 ca262 <BT_InitEx2+0x114>
   ca248:	97 5f       	fexti33 $r5,#0x3
   ca24a:	b0 42       	addri36.sp $r1,#0x8
   ca24c:	3e 3d 2c 38 	addi.gp $r3,#-185288
   ca250:	3e 4d 2c 58 	addi.gp $r4,#-185256
   ca254:	8c aa       	addi45 $r5,#10
   ca256:	49 00 2b d6 	jal cfa02 <Encrypt>
   ca25a:	d5 f0       	j8 ca23a <BT_InitEx2+0xec>
   ca25c:	3e 07 c6 c0 	sbi.gp $r0,[+#-14656]
   ca260:	d5 0a       	j8 ca274 <BT_InitEx2+0x126>
   ca262:	44 0f ff bb 	movi $r0,#-69
   ca266:	3e 07 c6 c0 	sbi.gp $r0,[+#-14656]
   ca26a:	d5 05       	j8 ca274 <BT_InitEx2+0x126>
   ca26c:	44 1f ff aa 	movi $r1,#-86
   ca270:	3e 17 c6 c0 	sbi.gp $r1,[+#-14656]
   ca274:	f0 01       	lwi37.sp $r0,[+#0x4]
   ca276:	3c 0f f2 9e 	swi.gp $r0,[+#-13704]
   ca27a:	3e 2c 67 78 	addi.gp $r2,#-235656
   ca27e:	3e 1c 6d ea 	addi.gp $r1,#-234006
   ca282:	80 66       	mov55 $r3,$r6
   ca284:	80 89       	mov55 $r4,$r9
   ca286:	3e 0c 62 9a 	addi.gp $r0,#-236902
   ca28a:	49 00 30 3f 	jal d0308 <hci_cmd_evt_dat_init>
   ca28e:	80 1c       	mov55 $r0,$fp
   ca290:	49 ff ff 56 	jal ca13c <BT_Log_Enable>
   ca294:	49 00 29 f9 	jal cf686 <Drv_MMITimerDisable>
   ca298:	fc cd       	pop25 $r10,#0x68    ! {$r6~$r10, $fp, $gp, $lp}

000ca29a <hci_init_done>:
   ca29a:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   ca29c:	96 40       	zeb33 $r1,$r0
   ca29e:	c1 0a       	beqz38 $r1,ca2b2 <hci_init_done+0x18>
   ca2a0:	84 20       	movi55 $r1,#0
   ca2a2:	44 00 10 05 	movi $r0,#4101
   ca2a6:	80 41       	mov55 $r2,$r1
   ca2a8:	3e 3c 62 c4 	addi.gp $r3,#-236860
   ca2ac:	49 00 2f d2 	jal d0250 <hci_send_cmd>
   ca2b0:	d5 09       	j8 ca2c2 <hci_init_done+0x28>
   ca2b2:	3c 2d f2 9e 	lwi.gp $r2,[+#-13704]
   ca2b6:	c2 06       	beqz38 $r2,ca2c2 <hci_init_done+0x28>
   ca2b8:	b6 3f       	swi450 $r1,[$sp]
   ca2ba:	10 1f 80 04 	sbi $r1,[$sp+#0x4]
   ca2be:	80 1f       	mov55 $r0,$sp
   ca2c0:	dd 22       	jral5 $r2
   ca2c2:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

000ca2c4 <bt_init_read_buf_size>:
   ca2c4:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   ca2c6:	a7 8a       	lbi333 $r6,[$r1+#0x2]
   ca2c8:	a6 09       	lbi333 $r0,[$r1+#0x1]
   ca2ca:	40 63 20 08 	slli $r6,$r6,#8
   ca2ce:	99 b0       	add333 $r6,$r6,$r0
   ca2d0:	a6 0b       	lbi333 $r0,[$r1+#0x3]
   ca2d2:	97 b1       	zeh33 $r6,$r6
   ca2d4:	c0 0e       	beqz38 $r0,ca2f0 <bt_init_read_buf_size+0x2c>
   ca2d6:	84 20       	movi55 $r1,#0
   ca2d8:	44 00 20 02 	movi $r0,#8194
   ca2dc:	80 41       	mov55 $r2,$r1
   ca2de:	3e 3c 62 c4 	addi.gp $r3,#-236860
   ca2e2:	49 00 2f b7 	jal d0250 <hci_send_cmd>
   ca2e6:	44 00 20 02 	movi $r0,#8194
   ca2ea:	4c 60 40 32 	bne $r6,$r0,ca34e <bt_init_read_buf_size+0x8a>
   ca2ee:	d5 26       	j8 ca33a <bt_init_read_buf_size+0x76>
   ca2f0:	44 30 10 05 	movi $r3,#4101
   ca2f4:	a6 0d       	lbi333 $r0,[$r1+#0x5]
   ca2f6:	a6 8c       	lbi333 $r2,[$r1+#0x4]
   ca2f8:	4c 61 c0 0e 	bne $r6,$r3,ca314 <bt_init_read_buf_size+0x50>
   ca2fc:	00 30 80 08 	lbi $r3,[$r1+#0x8]
   ca300:	40 00 20 08 	slli $r0,$r0,#8
   ca304:	98 02       	add333 $r0,$r0,$r2
   ca306:	a6 8f       	lbi333 $r2,[$r1+#0x7]
   ca308:	40 31 a0 08 	slli $r3,$r3,#8
   ca30c:	98 5a       	add333 $r1,$r3,$r2
   ca30e:	96 01       	zeh33 $r0,$r0
   ca310:	96 49       	zeh33 $r1,$r1
   ca312:	d5 06       	j8 ca31e <bt_init_read_buf_size+0x5a>
   ca314:	40 00 20 08 	slli $r0,$r0,#8
   ca318:	98 02       	add333 $r0,$r0,$r2
   ca31a:	a6 4e       	lbi333 $r1,[$r1+#0x6]
   ca31c:	96 01       	zeh33 $r0,$r0
   ca31e:	49 00 2e 4f 	jal cffbc <hci_dat_info_update>
   ca322:	49 00 05 34 	jal cad8a <l2cap_init>
   ca326:	49 00 0f 4e 	jal cc1c2 <att_init>
   ca32a:	49 00 04 82 	jal cac2e <BLE_gap_sm_init>
   ca32e:	49 00 06 77 	jal cb01c <l2cap_lesig_init>
   ca332:	2e 07 c6 c0 	lbi.gp $r0,[+#-14656]
   ca336:	49 00 00 35 	jal ca3a0 <ble_gap_init>
   ca33a:	3c 1d f2 9e 	lwi.gp $r1,[+#-13704]
   ca33e:	c1 08       	beqz38 $r1,ca34e <bt_init_read_buf_size+0x8a>
   ca340:	84 40       	movi55 $r2,#0
   ca342:	b6 5f       	swi450 $r2,[$sp]
   ca344:	84 41       	movi55 $r2,#1
   ca346:	10 2f 80 04 	sbi $r2,[$sp+#0x4]
   ca34a:	80 1f       	mov55 $r0,$sp
   ca34c:	dd 21       	jral5 $r1
   ca34e:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

000ca350 <generic_status_complete_cb>:
   ca350:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   ca352:	96 48       	zeb33 $r1,$r1
   ca354:	80 7f       	mov55 $r3,$sp
   ca356:	b6 1f       	swi450 $r0,[$sp]
   ca358:	5a 10 0e 05 	beqc $r1,#14,ca362 <generic_status_complete_cb+0x12>
   ca35c:	5a 18 0f 0b 	bnec $r1,#15,ca372 <generic_status_complete_cb+0x22>
   ca360:	d5 03       	j8 ca366 <generic_status_complete_cb+0x16>
   ca362:	a6 13       	lbi333 $r0,[$r2+#0x3]
   ca364:	d5 02       	j8 ca368 <generic_status_complete_cb+0x18>
   ca366:	a6 10       	lbi333 $r0,[$r2+#0x0]
   ca368:	c0 05       	beqz38 $r0,ca372 <generic_status_complete_cb+0x22>
   ca36a:	ae 1c       	sbi333 $r0,[$r3+#0x4]
   ca36c:	80 1f       	mov55 $r0,$sp
   ca36e:	49 ff fe e1 	jal ca130 <bt_infom_ap>
   ca372:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

000ca374 <generic_encrypt_cb>:
   ca374:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ca376:	80 a1       	mov55 $r5,$r1
   ca378:	80 83       	mov55 $r4,$r3
   ca37a:	96 40       	zeb33 $r1,$r0
   ca37c:	96 d0       	zeb33 $r3,$r2
   ca37e:	44 00 10 07 	movi $r0,#4103
   ca382:	80 45       	mov55 $r2,$r5
   ca384:	49 ff ff e6 	jal ca350 <generic_status_complete_cb>
   ca388:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ca38a <generic_conn_update_cb>:
   ca38a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ca38c:	80 a1       	mov55 $r5,$r1
   ca38e:	80 83       	mov55 $r4,$r3
   ca390:	96 40       	zeb33 $r1,$r0
   ca392:	96 d0       	zeb33 $r3,$r2
   ca394:	44 00 10 08 	movi $r0,#4104
   ca398:	80 45       	mov55 $r2,$r5
   ca39a:	49 ff ff db 	jal ca350 <generic_status_complete_cb>
   ca39e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ca3a0 <ble_gap_init>:
   ca3a0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ca3a2:	96 40       	zeb33 $r1,$r0
   ca3a4:	3e 17 c6 c1 	sbi.gp $r1,[+#-14655]
   ca3a8:	3e 2f c1 14 	addi.gp $r2,#-16108
   ca3ac:	ae 50       	sbi333 $r1,[$r2+#0x0]
   ca3ae:	3e 17 c1 1c 	sbi.gp $r1,[+#-16100]
   ca3b2:	c9 09       	bnez38 $r1,ca3c4 <ble_gap_init+0x24>
   ca3b4:	44 00 40 02 	movi $r0,#16386
   ca3b8:	80 41       	mov55 $r2,$r1
   ca3ba:	3e 3c 64 1a 	addi.gp $r3,#-236518
   ca3be:	49 00 2f 49 	jal d0250 <hci_send_cmd>
   ca3c2:	d5 09       	j8 ca3d4 <ble_gap_init+0x34>
   ca3c4:	84 60       	movi55 $r3,#0
   ca3c6:	80 22       	mov55 $r1,$r2
   ca3c8:	44 00 40 00 	movi $r0,#16384
   ca3cc:	84 46       	movi55 $r2,#6
   ca3ce:	80 83       	mov55 $r4,$r3
   ca3d0:	49 00 2e d5 	jal d017a <hci_send_cmd_ex>
   ca3d4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ca3d6 <ble_gap_tx_power_set>:
   ca3d6:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   ca3d8:	84 41       	movi55 $r2,#1
   ca3da:	80 81       	mov55 $r4,$r1
   ca3dc:	10 0f 80 04 	sbi $r0,[$sp+#0x4]
   ca3e0:	b0 41       	addri36.sp $r1,#0x4
   ca3e2:	44 00 40 01 	movi $r0,#16385
   ca3e6:	3e 3c 64 56 	addi.gp $r3,#-236458
   ca3ea:	49 00 2e c8 	jal d017a <hci_send_cmd_ex>
   ca3ee:	84 00       	movi55 $r0,#0
   ca3f0:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000ca3f2 <set_adv_parm_cb>:
   ca3f2:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   ca3f4:	84 01       	movi55 $r0,#1
   ca3f6:	10 0f 80 07 	sbi $r0,[$sp+#0x7]
   ca3fa:	80 83       	mov55 $r4,$r3
   ca3fc:	a6 4b       	lbi333 $r1,[$r1+#0x3]
   ca3fe:	c1 04       	beqz38 $r1,ca406 <set_adv_parm_cb+0x14>
   ca400:	84 00       	movi55 $r0,#0
   ca402:	dd 23       	jral5 $r3
   ca404:	d5 0a       	j8 ca418 <set_adv_parm_cb+0x26>
   ca406:	44 00 20 0a 	movi $r0,#8202
   ca40a:	50 1f 80 07 	addi $r1,$sp,#7
   ca40e:	84 41       	movi55 $r2,#1
   ca410:	3e 3c 64 56 	addi.gp $r3,#-236458
   ca414:	49 00 2e b3 	jal d017a <hci_send_cmd_ex>
   ca418:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000ca41a <gap_init_cb>:
   ca41a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ca41c:	a6 0b       	lbi333 $r0,[$r1+#0x3]
   ca41e:	80 c1       	mov55 $r6,$r1
   ca420:	a7 c9       	lbi333 $r7,[$r1+#0x1]
   ca422:	00 80 80 02 	lbi $r8,[$r1+#0x2]
   ca426:	c0 09       	beqz38 $r0,ca438 <gap_init_cb+0x1e>
   ca428:	3e 0d 31 6c 	addi.gp $r0,#-183956
   ca42c:	44 10 00 93 	movi $r1,#147
   ca430:	3e 2d 31 78 	addi.gp $r2,#-183944
   ca434:	49 00 36 8f 	jal d1152 <assert_ab_callback_verbose>
   ca438:	40 14 20 08 	slli $r1,$r8,#8
   ca43c:	98 79       	add333 $r1,$r7,$r1
   ca43e:	96 49       	zeh33 $r1,$r1
   ca440:	44 00 40 02 	movi $r0,#16386
   ca444:	4c 10 40 08 	bne $r1,$r0,ca454 <gap_init_cb+0x3a>
   ca448:	3e 0f c1 14 	addi.gp $r0,#-16108
   ca44c:	9c 74       	addi333 $r1,$r6,#4
   ca44e:	84 46       	movi55 $r2,#6
   ca450:	49 ff ed fc 	jal c8048 <memcpy>
   ca454:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ca456 <generic_complete_cb>:
   ca456:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ca458:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   ca45a:	80 c1       	mov55 $r6,$r1
   ca45c:	a6 49       	lbi333 $r1,[$r1+#0x1]
   ca45e:	40 00 20 08 	slli $r0,$r0,#8
   ca462:	98 01       	add333 $r0,$r0,$r1
   ca464:	96 01       	zeh33 $r0,$r0
   ca466:	44 10 20 0a 	movi $r1,#8202
   ca46a:	4c 00 80 39 	beq $r0,$r1,ca4dc <generic_complete_cb+0x86>
   ca46e:	5c f0 20 0b 	slti $r15,$r0,#8203
   ca472:	e8 0f       	beqzs8 ca490 <generic_complete_cb+0x3a>
   ca474:	9e 4c       	subi333 $r1,$r1,#4
   ca476:	4c 00 80 37 	beq $r0,$r1,ca4e4 <generic_complete_cb+0x8e>
   ca47a:	5c f0 20 07 	slti $r15,$r0,#8199
   ca47e:	e8 05       	beqzs8 ca488 <generic_complete_cb+0x32>
   ca480:	9e 49       	subi333 $r1,$r1,#1
   ca482:	4c 00 c0 37 	bne $r0,$r1,ca4f0 <generic_complete_cb+0x9a>
   ca486:	d5 1d       	j8 ca4c0 <generic_complete_cb+0x6a>
   ca488:	5c f0 20 08 	slti $r15,$r0,#8200
   ca48c:	e9 32       	bnezs8 ca4f0 <generic_complete_cb+0x9a>
   ca48e:	d5 2b       	j8 ca4e4 <generic_complete_cb+0x8e>
   ca490:	9c 4c       	addi333 $r1,$r1,#4
   ca492:	4c 00 80 29 	beq $r0,$r1,ca4e4 <generic_complete_cb+0x8e>
   ca496:	5c f0 20 0f 	slti $r15,$r0,#8207
   ca49a:	e8 05       	beqzs8 ca4a4 <generic_complete_cb+0x4e>
   ca49c:	5c f0 20 0d 	slti $r15,$r0,#8205
   ca4a0:	e8 28       	beqzs8 ca4f0 <generic_complete_cb+0x9a>
   ca4a2:	d5 21       	j8 ca4e4 <generic_complete_cb+0x8e>
   ca4a4:	44 10 40 00 	movi $r1,#16384
   ca4a8:	4c 00 80 06 	beq $r0,$r1,ca4b4 <generic_complete_cb+0x5e>
   ca4ac:	9c 49       	addi333 $r1,$r1,#1
   ca4ae:	4c 00 c0 21 	bne $r0,$r1,ca4f0 <generic_complete_cb+0x9a>
   ca4b2:	d5 19       	j8 ca4e4 <generic_complete_cb+0x8e>
   ca4b4:	9c 1c       	addi333 $r0,$r3,#4
   ca4b6:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   ca4ba:	3e 2f c1 14 	addi.gp $r2,#-16108
   ca4be:	d5 06       	j8 ca4ca <generic_complete_cb+0x74>
   ca4c0:	9c 1c       	addi333 $r0,$r3,#4
   ca4c2:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   ca4c6:	3e 2f c1 1c 	addi.gp $r2,#-16100
   ca4ca:	aa 11       	swi333.bi $r0,[$r2],#0x4
   ca4cc:	ac 50       	shi333 $r1,[$r2+#0x0]
   ca4ce:	b4 43       	lwi450 $r2,[$r3]
   ca4d0:	c2 10       	beqz38 $r2,ca4f0 <generic_complete_cb+0x9a>
   ca4d2:	a6 73       	lbi333 $r1,[$r6+#0x3]
   ca4d4:	5c 00 80 01 	slti $r0,$r1,#1
   ca4d8:	dd 22       	jral5 $r2
   ca4da:	d5 0b       	j8 ca4f0 <generic_complete_cb+0x9a>
   ca4dc:	2e 17 ca 80 	lbi.gp $r1,[+#-13696]
   ca4e0:	3e 17 ca 81 	sbi.gp $r1,[+#-13695]
   ca4e4:	c3 10       	beqz38 $r3,ca504 <generic_complete_cb+0xae>
   ca4e6:	a6 73       	lbi333 $r1,[$r6+#0x3]
   ca4e8:	5c 00 80 01 	slti $r0,$r1,#1
   ca4ec:	dd 23       	jral5 $r3
   ca4ee:	d5 0b       	j8 ca504 <generic_complete_cb+0xae>
   ca4f0:	a6 33       	lbi333 $r0,[$r6+#0x3]
   ca4f2:	c0 09       	beqz38 $r0,ca504 <generic_complete_cb+0xae>
   ca4f4:	3e 0d 31 6c 	addi.gp $r0,#-183956
   ca4f8:	44 10 00 d1 	movi $r1,#209
   ca4fc:	3e 2d 31 78 	addi.gp $r2,#-183944
   ca500:	49 00 36 29 	jal d1152 <assert_ab_callback_verbose>
   ca504:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ca506 <ble_gap_start_encrypt>:
   ca506:	fc 05       	push25 $r6,#0x28    ! {$r6, $fp, $gp, $lp}
   ca508:	b1 83       	addri36.sp $r6,#0xc
   ca50a:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   ca50e:	fa 4a       	movpi45 $r2,#0x1a
   ca510:	ac 30       	shi333 $r0,[$r6+#0x0]
   ca512:	50 0f 80 0e 	addi $r0,$sp,#14
   ca516:	49 ff ed 99 	jal c8048 <memcpy>
   ca51a:	44 00 20 19 	movi $r0,#8217
   ca51e:	80 26       	mov55 $r1,$r6
   ca520:	fa 4c       	movpi45 $r2,#0x1c
   ca522:	3e 3c 63 74 	addi.gp $r3,#-236684
   ca526:	49 00 2e 95 	jal d0250 <hci_send_cmd>
   ca52a:	84 00       	movi55 $r0,#0
   ca52c:	fc 85       	pop25 $r6,#0x28    ! {$r6, $fp, $gp, $lp}

000ca52e <ble_gap_address_set>:
   ca52e:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   ca530:	a6 80       	lbi333 $r2,[$r0+#0x0]
   ca532:	80 e0       	mov55 $r7,$r0
   ca534:	81 21       	mov55 $r9,$r1
   ca536:	e6 43       	slti45 $r2,#3
   ca538:	e8 03       	beqzs8 ca53e <ble_gap_address_set+0x10>
   ca53a:	ca 20       	bnez38 $r2,ca57a <ble_gap_address_set+0x4c>
   ca53c:	d5 06       	j8 ca548 <ble_gap_address_set+0x1a>
   ca53e:	5a 20 03 03 	beqc $r2,#3,ca544 <ble_gap_address_set+0x16>
   ca542:	d5 3b       	j8 ca5b8 <ble_gap_address_set+0x8a>
   ca544:	80 02       	mov55 $r0,$r2
   ca546:	d5 3a       	j8 ca5ba <ble_gap_address_set+0x8c>
   ca548:	84 0c       	movi55 $r0,#12
   ca54a:	49 00 3d 7d 	jal d2044 <malloc>
   ca54e:	80 40       	mov55 $r2,$r0
   ca550:	1c 91 00 01 	swi.bi $r9,[$r2],#0x4
   ca554:	80 c0       	mov55 $r6,$r0
   ca556:	2e 07 c6 c1 	lbi.gp $r0,[+#-14655]
   ca55a:	c8 07       	bnez38 $r0,ca568 <ble_gap_address_set+0x3a>
   ca55c:	80 02       	mov55 $r0,$r2
   ca55e:	9c 79       	addi333 $r1,$r7,#1
   ca560:	84 46       	movi55 $r2,#6
   ca562:	49 ff ed 73 	jal c8048 <memcpy>
   ca566:	d5 07       	j8 ca574 <ble_gap_address_set+0x46>
   ca568:	3e 0f c1 14 	addi.gp $r0,#-16108
   ca56c:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   ca570:	aa 11       	swi333.bi $r0,[$r2],#0x4
   ca572:	ac 50       	shi333 $r1,[$r2+#0x0]
   ca574:	44 00 40 00 	movi $r0,#16384
   ca578:	d5 19       	j8 ca5aa <ble_gap_address_set+0x7c>
   ca57a:	84 0c       	movi55 $r0,#12
   ca57c:	49 00 3d 64 	jal d2044 <malloc>
   ca580:	80 40       	mov55 $r2,$r0
   ca582:	1c 91 00 01 	swi.bi $r9,[$r2],#0x4
   ca586:	80 c0       	mov55 $r6,$r0
   ca588:	2e 07 c6 c1 	lbi.gp $r0,[+#-14655]
   ca58c:	c8 07       	bnez38 $r0,ca59a <ble_gap_address_set+0x6c>
   ca58e:	80 02       	mov55 $r0,$r2
   ca590:	9c 79       	addi333 $r1,$r7,#1
   ca592:	84 46       	movi55 $r2,#6
   ca594:	49 ff ed 5a 	jal c8048 <memcpy>
   ca598:	d5 07       	j8 ca5a6 <ble_gap_address_set+0x78>
   ca59a:	3e 0f c1 1c 	addi.gp $r0,#-16100
   ca59e:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   ca5a2:	aa 11       	swi333.bi $r0,[$r2],#0x4
   ca5a4:	ac 50       	shi333 $r1,[$r2+#0x0]
   ca5a6:	44 00 20 05 	movi $r0,#8197
   ca5aa:	9c 74       	addi333 $r1,$r6,#4
   ca5ac:	84 46       	movi55 $r2,#6
   ca5ae:	3e 3c 64 56 	addi.gp $r3,#-236458
   ca5b2:	80 86       	mov55 $r4,$r6
   ca5b4:	49 00 2d e3 	jal d017a <hci_send_cmd_ex>
   ca5b8:	84 00       	movi55 $r0,#0
   ca5ba:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000ca5bc <ble_gap_conn_param_update>:
   ca5bc:	fc 25       	push25 $r8,#0x28    ! {$r6~$r8, $fp, $gp, $lp}
   ca5be:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   ca5c2:	96 01       	zeh33 $r0,$r0
   ca5c4:	81 01       	mov55 $r8,$r1
   ca5c6:	49 00 02 1a 	jal ca9fa <ble_gap_link_GetIdx_ByHandle>
   ca5ca:	80 c0       	mov55 $r6,$r0
   ca5cc:	5a 08 ff 04 	bnec $r0,#255,ca5d4 <ble_gap_conn_param_update+0x18>
   ca5d0:	84 01       	movi55 $r0,#1
   ca5d2:	d5 36       	j8 ca63e <ble_gap_conn_param_update+0x82>
   ca5d4:	b1 c7       	addri36.sp $r7,#0x1c
   ca5d6:	80 07       	mov55 $r0,$r7
   ca5d8:	80 28       	mov55 $r1,$r8
   ca5da:	84 4c       	movi55 $r2,#12
   ca5dc:	49 ff ed 36 	jal c8048 <memcpy>
   ca5e0:	a4 38       	lhi333 $r0,[$r7+#0x0]
   ca5e2:	5a 08 06 12 	bnec $r0,#6,ca606 <ble_gap_conn_param_update+0x4a>
   ca5e6:	3e 2d 2c 64 	addi.gp $r2,#-185244
   ca5ea:	a4 7a       	lhi333 $r1,[$r7+#0x4]
   ca5ec:	50 31 00 27 	addi $r3,$r2,#39
   ca5f0:	a6 10       	lbi333 $r0,[$r2+#0x0]
   ca5f2:	e2 20       	slt45 $r1,$r0
   ca5f4:	e9 08       	bnezs8 ca604 <ble_gap_conn_param_update+0x48>
   ca5f6:	4c 10 40 04 	bne $r1,$r0,ca5fe <ble_gap_conn_param_update+0x42>
   ca5fa:	9c 49       	addi333 $r1,$r1,#1
   ca5fc:	96 49       	zeh33 $r1,$r1
   ca5fe:	9c 91       	addi333 $r2,$r2,#1
   ca600:	4c 21 ff f8 	bne $r2,$r3,ca5f0 <ble_gap_conn_param_update+0x34>
   ca604:	ac 7a       	shi333 $r1,[$r7+#0x4]
   ca606:	80 06       	mov55 $r0,$r6
   ca608:	49 00 02 88 	jal cab18 <ble_gap_link_GetAttr_Role>
   ca60c:	b0 47       	addri36.sp $r1,#0x1c
   ca60e:	5a 08 01 06 	bnec $r0,#1,ca61a <ble_gap_conn_param_update+0x5e>
   ca612:	80 06       	mov55 $r0,$r6
   ca614:	49 00 04 ee 	jal caff0 <l2cap_lesig_conn_param_update_req>
   ca618:	d5 12       	j8 ca63c <ble_gap_conn_param_update+0x80>
   ca61a:	02 0f 80 02 	lhi $r0,[$sp+#0x4]
   ca61e:	b1 83       	addri36.sp $r6,#0xc
   ca620:	ac 30       	shi333 $r0,[$r6+#0x0]
   ca622:	84 4c       	movi55 $r2,#12
   ca624:	50 0f 80 0e 	addi $r0,$sp,#14
   ca628:	49 ff ed 10 	jal c8048 <memcpy>
   ca62c:	44 00 20 13 	movi $r0,#8211
   ca630:	80 26       	mov55 $r1,$r6
   ca632:	84 4e       	movi55 $r2,#14
   ca634:	3e 3c 63 8a 	addi.gp $r3,#-236662
   ca638:	49 00 2e 0c 	jal d0250 <hci_send_cmd>
   ca63c:	84 00       	movi55 $r0,#0
   ca63e:	fc a5       	pop25 $r8,#0x28    ! {$r6~$r8, $fp, $gp, $lp}

000ca640 <ble_gap_adv_start>:
   ca640:	fc 22       	push25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}
   ca642:	80 c0       	mov55 $r6,$r0
   ca644:	81 01       	mov55 $r8,$r1
   ca646:	c8 0c       	bnez38 $r0,ca65e <ble_gap_adv_start+0x1e>
   ca648:	84 01       	movi55 $r0,#1
   ca64a:	10 0f 80 0f 	sbi $r0,[$sp+#0xf]
   ca64e:	50 1f 80 0f 	addi $r1,$sp,#15
   ca652:	44 00 20 0a 	movi $r0,#8202
   ca656:	84 41       	movi55 $r2,#1
   ca658:	3e 3c 64 56 	addi.gp $r3,#-236458
   ca65c:	d5 4d       	j8 ca6f6 <ble_gap_adv_start+0xb6>
   ca65e:	84 20       	movi55 $r1,#0
   ca660:	80 1f       	mov55 $r0,$sp
   ca662:	84 4f       	movi55 $r2,#15
   ca664:	49 ff ed 12 	jal c8088 <memset>
   ca668:	00 03 00 08 	lbi $r0,[$r6+#0x8]
   ca66c:	a6 77       	lbi333 $r1,[$r6+#0x7]
   ca66e:	40 00 20 08 	slli $r0,$r0,#8
   ca672:	fe 0f       	or33 $r0,$r1
   ca674:	12 0f 80 00 	shi $r0,[$sp+#0x0]
   ca678:	80 ff       	mov55 $r7,$sp
   ca67a:	00 03 00 0a 	lbi $r0,[$r6+#0xa]
   ca67e:	00 13 00 09 	lbi $r1,[$r6+#0x9]
   ca682:	40 00 20 08 	slli $r0,$r0,#8
   ca686:	fe 0f       	or33 $r0,$r1
   ca688:	12 0f 80 01 	shi $r0,[$sp+#0x2]
   ca68c:	2e 07 c6 c1 	lbi.gp $r0,[+#-14655]
   ca690:	c0 07       	beqz38 $r0,ca69e <ble_gap_adv_start+0x5e>
   ca692:	5a 00 aa 06 	beqc $r0,#170,ca69e <ble_gap_adv_start+0x5e>
   ca696:	84 03       	movi55 $r0,#3
   ca698:	10 0f 80 04 	sbi $r0,[$sp+#0x4]
   ca69c:	d5 04       	j8 ca6a4 <ble_gap_adv_start+0x64>
   ca69e:	a6 30       	lbi333 $r0,[$r6+#0x0]
   ca6a0:	10 0f 80 04 	sbi $r0,[$sp+#0x4]
   ca6a4:	a6 35       	lbi333 $r0,[$r6+#0x5]
   ca6a6:	3e 07 ca 80 	sbi.gp $r0,[+#-13696]
   ca6aa:	10 0f 80 05 	sbi $r0,[$sp+#0x5]
   ca6ae:	a6 f2       	lbi333 $r3,[$r6+#0x2]
   ca6b0:	a7 31       	lbi333 $r4,[$r6+#0x1]
   ca6b2:	a6 33       	lbi333 $r0,[$r6+#0x3]
   ca6b4:	40 31 a0 08 	slli $r3,$r3,#8
   ca6b8:	a6 74       	lbi333 $r1,[$r6+#0x4]
   ca6ba:	fe e7       	or33 $r3,$r4
   ca6bc:	40 00 40 08 	slli $r0,$r0,#16
   ca6c0:	fe 1f       	or33 $r0,$r3
   ca6c2:	40 10 e0 08 	slli $r1,$r1,#24
   ca6c6:	fe 47       	or33 $r1,$r0
   ca6c8:	c1 0a       	beqz38 $r1,ca6dc <ble_gap_adv_start+0x9c>
   ca6ca:	08 00 80 01 	lbi.bi $r0,[$r1],#0x1
   ca6ce:	84 46       	movi55 $r2,#6
   ca6d0:	10 0f 80 06 	sbi $r0,[$sp+#0x6]
   ca6d4:	50 0f 80 07 	addi $r0,$sp,#7
   ca6d8:	49 ff ec b8 	jal c8048 <memcpy>
   ca6dc:	00 03 00 0b 	lbi $r0,[$r6+#0xb]
   ca6e0:	80 3f       	mov55 $r1,$sp
   ca6e2:	10 0f 80 0d 	sbi $r0,[$sp+#0xd]
   ca6e6:	84 4f       	movi55 $r2,#15
   ca6e8:	a7 b6       	lbi333 $r6,[$r6+#0x6]
   ca6ea:	44 00 20 06 	movi $r0,#8198
   ca6ee:	10 6f 80 0e 	sbi $r6,[$sp+#0xe]
   ca6f2:	3e 3c 63 f2 	addi.gp $r3,#-236558
   ca6f6:	80 88       	mov55 $r4,$r8
   ca6f8:	49 00 2d 41 	jal d017a <hci_send_cmd_ex>
   ca6fc:	84 00       	movi55 $r0,#0
   ca6fe:	fc a2       	pop25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}

000ca700 <ble_gap_scan_data_set>:
   ca700:	fc 44       	push25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}
   ca702:	50 af 80 01 	addi $r10,$sp,#1
   ca706:	97 88       	zeb33 $r6,$r1
   ca708:	81 20       	mov55 $r9,$r0
   ca70a:	80 e2       	mov55 $r7,$r2
   ca70c:	80 0a       	mov55 $r0,$r10
   ca70e:	84 20       	movi55 $r1,#0
   ca710:	fa 4f       	movpi45 $r2,#0x1f
   ca712:	49 ff ec bb 	jal c8088 <memset>
   ca716:	80 29       	mov55 $r1,$r9
   ca718:	80 46       	mov55 $r2,$r6
   ca71a:	80 0a       	mov55 $r0,$r10
   ca71c:	49 ff ec 96 	jal c8048 <memcpy>
   ca720:	44 00 20 09 	movi $r0,#8201
   ca724:	80 3f       	mov55 $r1,$sp
   ca726:	fa 50       	movpi45 $r2,#0x20
   ca728:	3e 3c 64 56 	addi.gp $r3,#-236458
   ca72c:	80 87       	mov55 $r4,$r7
   ca72e:	10 6f 80 00 	sbi $r6,[$sp+#0x0]
   ca732:	81 1f       	mov55 $r8,$sp
   ca734:	49 00 2d 23 	jal d017a <hci_send_cmd_ex>
   ca738:	84 00       	movi55 $r0,#0
   ca73a:	fc c4       	pop25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}

000ca73c <ble_gap_adv_data_set>:
   ca73c:	fc 44       	push25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}
   ca73e:	50 af 80 01 	addi $r10,$sp,#1
   ca742:	97 88       	zeb33 $r6,$r1
   ca744:	81 20       	mov55 $r9,$r0
   ca746:	80 e2       	mov55 $r7,$r2
   ca748:	80 0a       	mov55 $r0,$r10
   ca74a:	84 20       	movi55 $r1,#0
   ca74c:	fa 4f       	movpi45 $r2,#0x1f
   ca74e:	49 ff ec 9d 	jal c8088 <memset>
   ca752:	80 29       	mov55 $r1,$r9
   ca754:	80 46       	mov55 $r2,$r6
   ca756:	80 0a       	mov55 $r0,$r10
   ca758:	49 ff ec 78 	jal c8048 <memcpy>
   ca75c:	44 00 20 08 	movi $r0,#8200
   ca760:	80 3f       	mov55 $r1,$sp
   ca762:	fa 50       	movpi45 $r2,#0x20
   ca764:	3e 3c 64 56 	addi.gp $r3,#-236458
   ca768:	80 87       	mov55 $r4,$r7
   ca76a:	10 6f 80 00 	sbi $r6,[$sp+#0x0]
   ca76e:	81 1f       	mov55 $r8,$sp
   ca770:	49 00 2d 05 	jal d017a <hci_send_cmd_ex>
   ca774:	84 00       	movi55 $r0,#0
   ca776:	fc c4       	pop25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}

000ca778 <ble_gap_event_handler>:
   ca778:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   ca77a:	ee f8       	addi10.sp #-264
   ca77c:	96 00       	zeb33 $r0,$r0
   ca77e:	80 c2       	mov55 $r6,$r2
   ca780:	96 48       	zeb33 $r1,$r1
   ca782:	5a 00 0c 21 	beqc $r0,#12,ca7c4 <ble_gap_event_handler+0x4c>
   ca786:	e6 0d       	slti45 $r0,#13
   ca788:	e8 08       	beqzs8 ca798 <ble_gap_event_handler+0x20>
   ca78a:	85 e5       	movi55 $r15,#5
   ca78c:	4c 07 80 f0 	beq $r0,$r15,ca96c <ble_gap_event_handler+0x1f4>
   ca790:	85 e8       	movi55 $r15,#8
   ca792:	4c 07 c1 05 	bne $r0,$r15,ca99c <ble_gap_event_handler+0x224>
   ca796:	d5 12       	j8 ca7ba <ble_gap_event_handler+0x42>
   ca798:	5a 00 30 07 	beqc $r0,#48,ca7a6 <ble_gap_event_handler+0x2e>
   ca79c:	5a 00 3e 04 	beqc $r0,#62,ca7a4 <ble_gap_event_handler+0x2c>
   ca7a0:	48 00 00 fe 	j ca99c <ble_gap_event_handler+0x224>
   ca7a4:	d5 19       	j8 ca7d6 <ble_gap_event_handler+0x5e>
   ca7a6:	b1 f6       	addri36.sp $r7,#0xd8
   ca7a8:	80 22       	mov55 $r1,$r2
   ca7aa:	80 07       	mov55 $r0,$r7
   ca7ac:	84 43       	movi55 $r2,#3
   ca7ae:	49 ff ec 4d 	jal c8048 <memcpy>
   ca7b2:	84 01       	movi55 $r0,#1
   ca7b4:	ae 3b       	sbi333 $r0,[$r7+#0x3]
   ca7b6:	80 07       	mov55 $r0,$r7
   ca7b8:	d5 02       	j8 ca7bc <ble_gap_event_handler+0x44>
   ca7ba:	80 02       	mov55 $r0,$r2
   ca7bc:	49 00 02 63 	jal cac82 <BLE_gap_sm_encryption_change>
   ca7c0:	48 00 00 ee 	j ca99c <ble_gap_event_handler+0x224>
   ca7c4:	44 00 10 09 	movi $r0,#4105
   ca7c8:	b1 f6       	addri36.sp $r7,#0xd8
   ca7ca:	f0 b6       	swi37.sp $r0,[+#0xd8]
   ca7cc:	80 22       	mov55 $r1,$r2
   ca7ce:	b0 37       	addri36.sp $r0,#0xdc
   ca7d0:	84 48       	movi55 $r2,#8
   ca7d2:	48 00 00 be 	j ca94e <ble_gap_event_handler+0x1d6>
   ca7d6:	a6 10       	lbi333 $r0,[$r2+#0x0]
   ca7d8:	85 e3       	movi55 $r15,#3
   ca7da:	4c 07 80 b3 	beq $r0,$r15,ca940 <ble_gap_event_handler+0x1c8>
   ca7de:	e6 04       	slti45 $r0,#4
   ca7e0:	e8 07       	beqzs8 ca7ee <ble_gap_event_handler+0x76>
   ca7e2:	5a 00 01 11 	beqc $r0,#1,ca804 <ble_gap_event_handler+0x8c>
   ca7e6:	85 e2       	movi55 $r15,#2
   ca7e8:	4c 07 c0 da 	bne $r0,$r15,ca99c <ble_gap_event_handler+0x224>
   ca7ec:	d5 40       	j8 ca86c <ble_gap_event_handler+0xf4>
   ca7ee:	85 e8       	movi55 $r15,#8
   ca7f0:	4c 07 80 b6 	beq $r0,$r15,ca95c <ble_gap_event_handler+0x1e4>
   ca7f4:	85 e9       	movi55 $r15,#9
   ca7f6:	4c 07 80 b7 	beq $r0,$r15,ca964 <ble_gap_event_handler+0x1ec>
   ca7fa:	85 e5       	movi55 $r15,#5
   ca7fc:	4c 07 c0 d0 	bne $r0,$r15,ca99c <ble_gap_event_handler+0x224>
   ca800:	48 00 00 aa 	j ca954 <ble_gap_event_handler+0x1dc>
   ca804:	9d d1       	addi333 $r7,$r2,#1
   ca806:	44 00 10 00 	movi $r0,#4096
   ca80a:	f0 aa       	swi37.sp $r0,[+#0xa8]
   ca80c:	80 27       	mov55 $r1,$r7
   ca80e:	b0 2b       	addri36.sp $r0,#0xac
   ca810:	fa 42       	movpi45 $r2,#0x12
   ca812:	49 ff ec 1b 	jal c8048 <memcpy>
   ca816:	00 83 80 00 	lbi $r8,[$r7+#0x0]
   ca81a:	4e 83 00 26 	bnez $r8,ca866 <ble_gap_event_handler+0xee>
   ca81e:	9d b6       	addi333 $r6,$r6,#6
   ca820:	80 06       	mov55 $r0,$r6
   ca822:	49 00 01 fd 	jal cac1c <ble_gap_link_Is_ValidAddr>
   ca826:	c0 05       	beqz38 $r0,ca830 <ble_gap_event_handler+0xb8>
   ca828:	9c 39       	addi333 $r0,$r7,#1
   ca82a:	80 28       	mov55 $r1,$r8
   ca82c:	80 48       	mov55 $r2,$r8
   ca82e:	d5 0a       	j8 ca842 <ble_gap_event_handler+0xca>
   ca830:	2e 17 ca 81 	lbi.gp $r1,[+#-13695]
   ca834:	c9 04       	bnez38 $r1,ca83c <ble_gap_event_handler+0xc4>
   ca836:	3e 2f c1 14 	addi.gp $r2,#-16108
   ca83a:	d5 03       	j8 ca840 <ble_gap_event_handler+0xc8>
   ca83c:	3e 2f c1 1c 	addi.gp $r2,#-16100
   ca840:	9c 39       	addi333 $r0,$r7,#1
   ca842:	84 62       	movi55 $r3,#2
   ca844:	49 00 01 b8 	jal cabb4 <ble_gap_link_Add_Ex>
   ca848:	80 06       	mov55 $r0,$r6
   ca84a:	49 00 01 fd 	jal cac44 <BLE_gap_sm_set_link_auth>
   ca84e:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   ca850:	a6 79       	lbi333 $r1,[$r7+#0x1]
   ca852:	40 00 20 08 	slli $r0,$r0,#8
   ca856:	fe 0f       	or33 $r0,$r1
   ca858:	49 00 00 d1 	jal ca9fa <ble_gap_link_GetIdx_ByHandle>
   ca85c:	80 20       	mov55 $r1,$r0
   ca85e:	44 00 10 00 	movi $r0,#4096
   ca862:	49 00 02 5f 	jal cad20 <l2cap_notify>
   ca866:	b0 2a       	addri36.sp $r0,#0xa8
   ca868:	48 00 00 98 	j ca998 <ble_gap_event_handler+0x220>
   ca86c:	9e 09       	subi333 $r0,$r1,#1
   ca86e:	44 10 10 03 	movi $r1,#4099
   ca872:	f1 9e       	swi37.sp $r1,[+#0x78]
   ca874:	51 c1 00 01 	addi $fp,$r2,#1
   ca878:	08 ae 00 01 	lbi.bi $r10,[$fp],#0x1
   ca87c:	84 46       	movi55 $r2,#6
   ca87e:	40 1e 28 00 	add $r1,$fp,$r10
   ca882:	40 40 a8 00 	add $r4,$r1,$r10
   ca886:	80 a4       	mov55 $r5,$r4
   ca888:	42 55 08 73 	maddr32 $r5,$r10,$r2
   ca88c:	f1 83       	swi37.sp $r1,[+#0xc]
   ca88e:	96 00       	zeb33 $r0,$r0
   ca890:	a6 a8       	lbi333 $r2,[$r5+#0x0]
   ca892:	41 e2 a8 00 	add $lp,$r5,$r10
   ca896:	50 31 00 0b 	addi $r3,$r2,#11
   ca89a:	4c 01 c0 06 	bne $r0,$r3,ca8a6 <ble_gap_event_handler+0x12e>
   ca89e:	80 45       	mov55 $r2,$r5
   ca8a0:	84 00       	movi55 $r0,#0
   ca8a2:	80 3e       	mov55 $r1,$lp
   ca8a4:	d5 0f       	j8 ca8c2 <ble_gap_event_handler+0x14a>
   ca8a6:	8c 51       	addi45 $r2,#17
   ca8a8:	4c 01 3f fb 	beq $r0,$r2,ca89e <ble_gap_event_handler+0x126>
   ca8ac:	00 0e 00 00 	lbi $r0,[$fp+#0x0]
   ca8b0:	5a 08 01 f7 	bnec $r0,#1,ca89e <ble_gap_event_handler+0x126>
   ca8b4:	48 00 00 74 	j ca99c <ble_gap_event_handler+0x224>
   ca8b8:	08 31 00 01 	lbi.bi $r3,[$r2],#0x1
   ca8bc:	9c 01       	addi333 $r0,$r0,#1
   ca8be:	98 4b       	add333 $r1,$r1,$r3
   ca8c0:	96 00       	zeb33 $r0,$r0
   ca8c2:	e2 0a       	slt45 $r0,$r10
   ca8c4:	e9 fa       	bnezs8 ca8b8 <ble_gap_event_handler+0x140>
   ca8c6:	15 cf 80 04 	swi $fp,[$sp+#0x10]
   ca8ca:	80 61       	mov55 $r3,$r1
   ca8cc:	83 84       	mov55 $fp,$r4
   ca8ce:	85 20       	movi55 $r9,#0
   ca8d0:	80 8a       	mov55 $r4,$r10
   ca8d2:	b1 9e       	addri36.sp $r6,#0x78
   ca8d4:	50 8f 80 7d 	addi $r8,$sp,#125
   ca8d8:	50 7f 80 89 	addi $r7,$sp,#137
   ca8dc:	81 5e       	mov55 $r10,$lp
   ca8de:	f5 85       	swi37.sp $r5,[+#0x14]
   ca8e0:	d5 2b       	j8 ca936 <ble_gap_event_handler+0x1be>
   ca8e2:	f0 03       	lwi37.sp $r0,[+#0xc]
   ca8e4:	80 3c       	mov55 $r1,$fp
   ca8e6:	38 00 24 00 	lb $r0,[$r0+($r9<<#0x0)]
   ca8ea:	84 46       	movi55 $r2,#6
   ca8ec:	ae 34       	sbi333 $r0,[$r6+#0x4]
   ca8ee:	80 08       	mov55 $r0,$r8
   ca8f0:	f4 81       	swi37.sp $r4,[+#0x4]
   ca8f2:	f3 82       	swi37.sp $r3,[+#0x8]
   ca8f4:	49 ff eb aa 	jal c8048 <memcpy>
   ca8f8:	f3 02       	lwi37.sp $r3,[+#0x8]
   ca8fa:	51 ce 00 06 	addi $fp,$fp,#6
   ca8fe:	38 11 a4 00 	lb $r1,[$r3+($r9<<#0x0)]
   ca902:	10 13 00 0b 	sbi $r1,[$r6+#0xb]
   ca906:	f1 04       	lwi37.sp $r1,[+#0x10]
   ca908:	08 00 80 01 	lbi.bi $r0,[$r1],#0x1
   ca90c:	f0 a1       	swi37.sp $r0,[+#0x84]
   ca90e:	f1 84       	swi37.sp $r1,[+#0x10]
   ca910:	f0 05       	lwi37.sp $r0,[+#0x14]
   ca912:	80 2a       	mov55 $r1,$r10
   ca914:	38 20 24 00 	lb $r2,[$r0+($r9<<#0x0)]
   ca918:	80 07       	mov55 $r0,$r7
   ca91a:	10 23 00 10 	sbi $r2,[$r6+#0x10]
   ca91e:	f3 82       	swi37.sp $r3,[+#0x8]
   ca920:	49 ff eb 94 	jal c8048 <memcpy>
   ca924:	00 03 00 10 	lbi $r0,[$r6+#0x10]
   ca928:	8d 21       	addi45 $r9,#1
   ca92a:	89 40       	add45 $r10,$r0
   ca92c:	80 06       	mov55 $r0,$r6
   ca92e:	49 ff fc 01 	jal ca130 <bt_infom_ap>
   ca932:	f4 01       	lwi37.sp $r4,[+#0x4]
   ca934:	f3 02       	lwi37.sp $r3,[+#0x8]
   ca936:	54 04 80 ff 	andi $r0,$r9,#0xff
   ca93a:	e2 04       	slt45 $r0,$r4
   ca93c:	e9 d3       	bnezs8 ca8e2 <ble_gap_event_handler+0x16a>
   ca93e:	d5 2f       	j8 ca99c <ble_gap_event_handler+0x224>
   ca940:	44 00 10 02 	movi $r0,#4098
   ca944:	b1 d2       	addri36.sp $r7,#0x48
   ca946:	f0 92       	swi37.sp $r0,[+#0x48]
   ca948:	9c 51       	addi333 $r1,$r2,#1
   ca94a:	b0 13       	addri36.sp $r0,#0x4c
   ca94c:	84 4b       	movi55 $r2,#11
   ca94e:	49 ff eb 7d 	jal c8048 <memcpy>
   ca952:	d5 22       	j8 ca996 <ble_gap_event_handler+0x21e>
   ca954:	9c 11       	addi333 $r0,$r2,#1
   ca956:	49 00 01 bb 	jal caccc <BLE_gap_sm_ltk_request>
   ca95a:	d5 21       	j8 ca99c <ble_gap_event_handler+0x224>
   ca95c:	9c 11       	addi333 $r0,$r2,#1
   ca95e:	49 00 01 c9 	jal cacf0 <BLE_gap_sm_read_public_key_complete>
   ca962:	d5 1d       	j8 ca99c <ble_gap_event_handler+0x224>
   ca964:	9c 11       	addi333 $r0,$r2,#1
   ca966:	49 00 01 c1 	jal cace8 <BLE_gap_sm_gen_dhkey_complete>
   ca96a:	d5 19       	j8 ca99c <ble_gap_event_handler+0x224>
   ca96c:	b1 c6       	addri36.sp $r7,#0x18
   ca96e:	44 00 10 01 	movi $r0,#4097
   ca972:	f0 86       	swi37.sp $r0,[+#0x18]
   ca974:	9d 91       	addi333 $r6,$r2,#1
   ca976:	a6 31       	lbi333 $r0,[$r6+#0x1]
   ca978:	a6 70       	lbi333 $r1,[$r6+#0x0]
   ca97a:	40 00 20 08 	slli $r0,$r0,#8
   ca97e:	98 01       	add333 $r0,$r0,$r1
   ca980:	96 01       	zeh33 $r0,$r0
   ca982:	ac 3a       	shi333 $r0,[$r7+#0x4]
   ca984:	a7 b2       	lbi333 $r6,[$r6+#0x2]
   ca986:	af be       	sbi333 $r6,[$r7+#0x6]
   ca988:	49 00 00 39 	jal ca9fa <ble_gap_link_GetIdx_ByHandle>
   ca98c:	49 00 00 a9 	jal caade <ble_gap_link_Del>
   ca990:	a4 3a       	lhi333 $r0,[$r7+#0x4]
   ca992:	49 00 01 52 	jal cac36 <BLE_gap_sm_disconnected>
   ca996:	80 07       	mov55 $r0,$r7
   ca998:	49 ff fb cc 	jal ca130 <bt_infom_ap>
   ca99c:	ed 08       	addi10.sp #264
   ca99e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000ca9a0 <ble_gap_link_GetAttr_OwnerType>:
   ca9a0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ca9a2:	44 10 00 3d 	movi $r1,#61
   ca9a6:	96 00       	zeb33 $r0,$r0
   ca9a8:	fe 0c       	mul33 $r0,$r1
   ca9aa:	3e 1f ca 84 	addi.gp $r1,#-13692
   ca9ae:	98 01       	add333 $r0,$r0,$r1
   ca9b0:	00 00 00 14 	lbi $r0,[$r0+#0x14]
   ca9b4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ca9b6 <ble_gap_link_GetAttr_OwnerAddr>:
   ca9b6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ca9b8:	44 20 00 3d 	movi $r2,#61
   ca9bc:	96 00       	zeb33 $r0,$r0
   ca9be:	fe 84       	mul33 $r2,$r0
   ca9c0:	3e 0f ca 84 	addi.gp $r0,#-13692
   ca9c4:	98 90       	add333 $r2,$r2,$r0
   ca9c6:	80 01       	mov55 $r0,$r1
   ca9c8:	50 11 00 15 	addi $r1,$r2,#21
   ca9cc:	84 46       	movi55 $r2,#6
   ca9ce:	49 ff eb 3d 	jal c8048 <memcpy>
   ca9d2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ca9d4 <ble_gap_link_GetAttr_Handle>:
   ca9d4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ca9d6:	96 00       	zeb33 $r0,$r0
   ca9d8:	e6 10       	slti45 $r0,#16
   ca9da:	e9 04       	bnezs8 ca9e2 <ble_gap_link_GetAttr_Handle+0xe>
   ca9dc:	44 00 ff ff 	movi $r0,#65535
   ca9e0:	d5 0c       	j8 ca9f8 <ble_gap_link_GetAttr_Handle+0x24>
   ca9e2:	44 10 00 3d 	movi $r1,#61
   ca9e6:	fe 0c       	mul33 $r0,$r1
   ca9e8:	3e 2f ca 84 	addi.gp $r2,#-13692
   ca9ec:	98 42       	add333 $r1,$r0,$r2
   ca9ee:	a6 09       	lbi333 $r0,[$r1+#0x1]
   ca9f0:	a6 88       	lbi333 $r2,[$r1+#0x0]
   ca9f2:	40 00 20 08 	slli $r0,$r0,#8
   ca9f6:	fe 17       	or33 $r0,$r2
   ca9f8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ca9fa <ble_gap_link_GetIdx_ByHandle>:
   ca9fa:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ca9fc:	84 20       	movi55 $r1,#0
   ca9fe:	96 c1       	zeh33 $r3,$r0
   caa00:	44 40 00 3d 	movi $r4,#61
   caa04:	3e 5f ca 84 	addi.gp $r5,#-13692
   caa08:	42 20 90 24 	mul $r2,$r1,$r4
   caa0c:	98 95       	add333 $r2,$r2,$r5
   caa0e:	a7 50       	lbi333 $r5,[$r2+#0x0]
   caa10:	a6 91       	lbi333 $r2,[$r2+#0x1]
   caa12:	96 08       	zeb33 $r0,$r1
   caa14:	40 21 20 08 	slli $r2,$r2,#8
   caa18:	fe af       	or33 $r2,$r5
   caa1a:	4c 21 80 07 	beq $r2,$r3,caa28 <ble_gap_link_GetIdx_ByHandle+0x2e>
   caa1e:	9c 49       	addi333 $r1,$r1,#1
   caa20:	5a 18 10 f2 	bnec $r1,#16,caa04 <ble_gap_link_GetIdx_ByHandle+0xa>
   caa24:	44 00 00 ff 	movi $r0,#255
   caa28:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000caa2a <ble_gap_link_GetAttr_BdAddr>:
   caa2a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   caa2c:	44 10 00 3d 	movi $r1,#61
   caa30:	96 00       	zeb33 $r0,$r0
   caa32:	fe 0c       	mul33 $r0,$r1
   caa34:	3e 1f ca 84 	addi.gp $r1,#-13692
   caa38:	98 01       	add333 $r0,$r0,$r1
   caa3a:	9c 04       	addi333 $r0,$r0,#4
   caa3c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000caa3e <ble_gap_link_GetAttr_BdAddrType>:
   caa3e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   caa40:	44 10 00 3d 	movi $r1,#61
   caa44:	96 00       	zeb33 $r0,$r0
   caa46:	fe 0c       	mul33 $r0,$r1
   caa48:	3e 1f ca 84 	addi.gp $r1,#-13692
   caa4c:	98 01       	add333 $r0,$r0,$r1
   caa4e:	a6 03       	lbi333 $r0,[$r0+#0x3]
   caa50:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000caa52 <ble_gap_link_GetIdx_Empty>:
   caa52:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   caa54:	3e 1f ca 97 	addi.gp $r1,#-13673
   caa58:	84 00       	movi55 $r0,#0
   caa5a:	a6 88       	lbi333 $r2,[$r1+#0x0]
   caa5c:	c2 09       	beqz38 $r2,caa6e <ble_gap_link_GetIdx_Empty+0x1c>
   caa5e:	9c 01       	addi333 $r0,$r0,#1
   caa60:	96 00       	zeb33 $r0,$r0
   caa62:	50 10 80 3d 	addi $r1,$r1,#61
   caa66:	5a 08 10 fa 	bnec $r0,#16,caa5a <ble_gap_link_GetIdx_Empty+0x8>
   caa6a:	44 00 00 ff 	movi $r0,#255
   caa6e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000caa70 <ble_gap_link_SetAttr_Auth>:
   caa70:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   caa72:	44 20 00 3d 	movi $r2,#61
   caa76:	96 00       	zeb33 $r0,$r0
   caa78:	fe 14       	mul33 $r0,$r2
   caa7a:	3e 2f ca 84 	addi.gp $r2,#-13692
   caa7e:	98 02       	add333 $r0,$r0,$r2
   caa80:	10 10 00 11 	sbi $r1,[$r0+#0x11]
   caa84:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000caa86 <ble_gap_link_GetAttr_Auth>:
   caa86:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   caa88:	44 10 00 3d 	movi $r1,#61
   caa8c:	96 00       	zeb33 $r0,$r0
   caa8e:	fe 0c       	mul33 $r0,$r1
   caa90:	3e 1f ca 84 	addi.gp $r1,#-13692
   caa94:	98 01       	add333 $r0,$r0,$r1
   caa96:	00 00 00 11 	lbi $r0,[$r0+#0x11]
   caa9a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000caa9c <ble_gap_link_SetAttr_Enc>:
   caa9c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   caa9e:	44 20 00 3d 	movi $r2,#61
   caaa2:	96 00       	zeb33 $r0,$r0
   caaa4:	fe 14       	mul33 $r0,$r2
   caaa6:	3e 2f ca 84 	addi.gp $r2,#-13692
   caaaa:	98 02       	add333 $r0,$r0,$r2
   caaac:	10 10 00 12 	sbi $r1,[$r0+#0x12]
   caab0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000caab2 <ble_gap_link_GetAttr_Enc>:
   caab2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   caab4:	44 10 00 3d 	movi $r1,#61
   caab8:	96 00       	zeb33 $r0,$r0
   caaba:	fe 0c       	mul33 $r0,$r1
   caabc:	3e 1f ca 84 	addi.gp $r1,#-13692
   caac0:	98 01       	add333 $r0,$r0,$r1
   caac2:	00 00 00 12 	lbi $r0,[$r0+#0x12]
   caac6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000caac8 <ble_gap_link_SetAttr_State>:
   caac8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   caaca:	44 20 00 3d 	movi $r2,#61
   caace:	96 00       	zeb33 $r0,$r0
   caad0:	fe 14       	mul33 $r0,$r2
   caad2:	3e 2f ca 84 	addi.gp $r2,#-13692
   caad6:	98 02       	add333 $r0,$r0,$r2
   caad8:	10 10 00 13 	sbi $r1,[$r0+#0x13]
   caadc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000caade <ble_gap_link_Del>:
   caade:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   caae0:	96 00       	zeb33 $r0,$r0
   caae2:	84 41       	movi55 $r2,#1
   caae4:	3c 3d f3 95 	lwi.gp $r3,[+#-12716]
   caae8:	40 21 00 0c 	sll $r2,$r2,$r0
   caaec:	fe 93       	not33 $r2,$r2
   caaee:	fe 9e       	and33 $r2,$r3
   caaf0:	3c 2f f3 95 	swi.gp $r2,[+#-12716]
   caaf4:	84 20       	movi55 $r1,#0
   caaf6:	49 ff ff e9 	jal caac8 <ble_gap_link_SetAttr_State>
   caafa:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000caafc <ble_gap_link_Add>:
   caafc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   caafe:	3c 4d f3 95 	lwi.gp $r4,[+#-12716]
   cab02:	96 00       	zeb33 $r0,$r0
   cab04:	84 61       	movi55 $r3,#1
   cab06:	40 31 80 0c 	sll $r3,$r3,$r0
   cab0a:	fe e7       	or33 $r3,$r4
   cab0c:	3c 3f f3 95 	swi.gp $r3,[+#-12716]
   cab10:	96 48       	zeb33 $r1,$r1
   cab12:	49 ff ff db 	jal caac8 <ble_gap_link_SetAttr_State>
   cab16:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cab18 <ble_gap_link_GetAttr_Role>:
   cab18:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cab1a:	44 10 00 3d 	movi $r1,#61
   cab1e:	96 00       	zeb33 $r0,$r0
   cab20:	fe 0c       	mul33 $r0,$r1
   cab22:	3e 1f ca 84 	addi.gp $r1,#-13692
   cab26:	98 01       	add333 $r0,$r0,$r1
   cab28:	a6 02       	lbi333 $r0,[$r0+#0x2]
   cab2a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cab2c <ble_gap_link_SetAttr_Data>:
   cab2c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cab2e:	44 20 00 3d 	movi $r2,#61
   cab32:	96 00       	zeb33 $r0,$r0
   cab34:	fe 14       	mul33 $r0,$r2
   cab36:	3e 2f ca 84 	addi.gp $r2,#-13692
   cab3a:	98 02       	add333 $r0,$r0,$r2
   cab3c:	50 00 00 38 	addi $r0,$r0,#56
   cab40:	40 20 a0 09 	srli $r2,$r1,#8
   cab44:	ae 41       	sbi333 $r1,[$r0+#0x1]
   cab46:	ae 82       	sbi333 $r2,[$r0+#0x2]
   cab48:	40 20 c0 09 	srli $r2,$r1,#16
   cab4c:	92 38       	srli45 $r1,#24
   cab4e:	ae 83       	sbi333 $r2,[$r0+#0x3]
   cab50:	ae 44       	sbi333 $r1,[$r0+#0x4]
   cab52:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cab54 <ble_gap_link_GetAttr_Data>:
   cab54:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cab56:	44 10 00 3d 	movi $r1,#61
   cab5a:	96 00       	zeb33 $r0,$r0
   cab5c:	fe 44       	mul33 $r1,$r0
   cab5e:	3e 0f ca 84 	addi.gp $r0,#-13692
   cab62:	98 48       	add333 $r1,$r1,$r0
   cab64:	50 10 80 38 	addi $r1,$r1,#56
   cab68:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   cab6a:	a6 c9       	lbi333 $r3,[$r1+#0x1]
   cab6c:	a6 8b       	lbi333 $r2,[$r1+#0x3]
   cab6e:	40 00 20 08 	slli $r0,$r0,#8
   cab72:	fe 1f       	or33 $r0,$r3
   cab74:	40 21 40 08 	slli $r2,$r2,#16
   cab78:	fe 87       	or33 $r2,$r0
   cab7a:	a6 0c       	lbi333 $r0,[$r1+#0x4]
   cab7c:	40 00 60 08 	slli $r0,$r0,#24
   cab80:	fe 17       	or33 $r0,$r2
   cab82:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cab84 <ble_gap_link_GetIdx_ByBdAddr>:
   cab84:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cab86:	84 c0       	movi55 $r6,#0
   cab88:	81 20       	mov55 $r9,$r0
   cab8a:	44 80 00 3d 	movi $r8,#61
   cab8e:	3e 0f ca 84 	addi.gp $r0,#-13692
   cab92:	42 13 20 24 	mul $r1,$r6,$r8
   cab96:	98 48       	add333 $r1,$r1,$r0
   cab98:	9c 4c       	addi333 $r1,$r1,#4
   cab9a:	80 09       	mov55 $r0,$r9
   cab9c:	84 46       	movi55 $r2,#6
   cab9e:	97 f0       	zeb33 $r7,$r6
   caba0:	49 ff ea 48 	jal c8030 <memcmp>
   caba4:	c0 06       	beqz38 $r0,cabb0 <ble_gap_link_GetIdx_ByBdAddr+0x2c>
   caba6:	9d b1       	addi333 $r6,$r6,#1
   caba8:	5a 68 10 f3 	bnec $r6,#16,cab8e <ble_gap_link_GetIdx_ByBdAddr+0xa>
   cabac:	44 70 00 ff 	movi $r7,#255
   cabb0:	80 07       	mov55 $r0,$r7
   cabb2:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cabb4 <ble_gap_link_Add_Ex>:
   cabb4:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cabb6:	80 e0       	mov55 $r7,$r0
   cabb8:	81 02       	mov55 $r8,$r2
   cabba:	54 a0 80 ff 	andi $r10,$r1,#0xff
   cabbe:	54 91 80 ff 	andi $r9,$r3,#0xff
   cabc2:	ca 09       	bnez38 $r2,cabd4 <ble_gap_link_Add_Ex+0x20>
   cabc4:	9c 04       	addi333 $r0,$r0,#4
   cabc6:	49 ff ff df 	jal cab84 <ble_gap_link_GetIdx_ByBdAddr>
   cabca:	80 29       	mov55 $r1,$r9
   cabcc:	80 c0       	mov55 $r6,$r0
   cabce:	49 ff ff 7d 	jal caac8 <ble_gap_link_SetAttr_State>
   cabd2:	d5 19       	j8 cac04 <ble_gap_link_Add_Ex+0x50>
   cabd4:	49 ff ff 3f 	jal caa52 <ble_gap_link_GetIdx_Empty>
   cabd8:	80 c0       	mov55 $r6,$r0
   cabda:	5a 08 ff 04 	bnec $r0,#255,cabe2 <ble_gap_link_Add_Ex+0x2e>
   cabde:	84 00       	movi55 $r0,#0
   cabe0:	d5 1d       	j8 cac1a <ble_gap_link_Add_Ex+0x66>
   cabe2:	80 29       	mov55 $r1,$r9
   cabe4:	49 ff ff 8c 	jal caafc <ble_gap_link_Add>
   cabe8:	44 30 00 3d 	movi $r3,#61
   cabec:	3e 0f ca 84 	addi.gp $r0,#-13692
   cabf0:	fe f4       	mul33 $r3,$r6
   cabf2:	98 d8       	add333 $r3,$r3,$r0
   cabf4:	10 a1 80 14 	sbi $r10,[$r3+#0x14]
   cabf8:	50 01 80 15 	addi $r0,$r3,#21
   cabfc:	80 28       	mov55 $r1,$r8
   cabfe:	84 46       	movi55 $r2,#6
   cac00:	49 ff ea 24 	jal c8048 <memcpy>
   cac04:	44 00 00 3d 	movi $r0,#61
   cac08:	3e 1f ca 84 	addi.gp $r1,#-13692
   cac0c:	ff 84       	mul33 $r6,$r0
   cac0e:	98 31       	add333 $r0,$r6,$r1
   cac10:	fa 41       	movpi45 $r2,#0x11
   cac12:	80 27       	mov55 $r1,$r7
   cac14:	49 ff ea 1a 	jal c8048 <memcpy>
   cac18:	84 01       	movi55 $r0,#1
   cac1a:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cac1c <ble_gap_link_Is_ValidAddr>:
   cac1c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cac1e:	49 ff ff b3 	jal cab84 <ble_gap_link_GetIdx_ByBdAddr>
   cac22:	56 00 00 ff 	xori $r0,$r0,#0xff
   cac26:	84 20       	movi55 $r1,#0
   cac28:	40 00 80 06 	slt $r0,$r1,$r0
   cac2c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cac2e <BLE_gap_sm_init>:
   cac2e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cac30:	49 00 0e 5c 	jal cc8e8 <sm_init>
   cac34:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cac36 <BLE_gap_sm_disconnected>:
   cac36:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cac38:	96 01       	zeh33 $r0,$r0
   cac3a:	49 ff fe e0 	jal ca9fa <ble_gap_link_GetIdx_ByHandle>
   cac3e:	49 00 0f 6a 	jal ccb12 <SM_LinkDisconnected>
   cac42:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cac44 <BLE_gap_sm_set_link_auth>:
   cac44:	fc 31       	push25 $r8,#0x88    ! {$r6~$r8, $fp, $gp, $lp}
   cac46:	81 00       	mov55 $r8,$r0
   cac48:	49 ff ff 9e 	jal cab84 <ble_gap_link_GetIdx_ByBdAddr>
   cac4c:	80 e0       	mov55 $r7,$r0
   cac4e:	5a 00 ff 18 	beqc $r0,#255,cac7e <BLE_gap_sm_set_link_auth+0x3a>
   cac52:	80 08       	mov55 $r0,$r8
   cac54:	80 3f       	mov55 $r1,$sp
   cac56:	80 df       	mov55 $r6,$sp
   cac58:	49 00 14 bd 	jal cd5d2 <sm_hal_flash_load_data>
   cac5c:	c0 11       	beqz38 $r0,cac7e <BLE_gap_sm_set_link_auth+0x3a>
   cac5e:	00 0f 80 13 	lbi $r0,[$sp+#0x13]
   cac62:	84 20       	movi55 $r1,#0
   cac64:	40 10 80 06 	slt $r1,$r1,$r0
   cac68:	00 0f 80 11 	lbi $r0,[$sp+#0x11]
   cac6c:	96 16       	bmski33 $r0,#0x2
   cac6e:	c0 04       	beqz38 $r0,cac76 <BLE_gap_sm_set_link_auth+0x32>
   cac70:	58 10 80 04 	ori $r1,$r1,#0x4
   cac74:	96 48       	zeb33 $r1,$r1
   cac76:	80 07       	mov55 $r0,$r7
   cac78:	49 00 18 54 	jal cdd20 <sm_hal_set_link_authenticated>
   cac7c:	d5 02       	j8 cac80 <BLE_gap_sm_set_link_auth+0x3c>
   cac7e:	84 00       	movi55 $r0,#0
   cac80:	fc b1       	pop25 $r8,#0x88    ! {$r6~$r8, $fp, $gp, $lp}

000cac82 <BLE_gap_sm_encryption_change>:
   cac82:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cac84:	80 c0       	mov55 $r6,$r0
   cac86:	a6 41       	lbi333 $r1,[$r0+#0x1]
   cac88:	a6 02       	lbi333 $r0,[$r0+#0x2]
   cac8a:	40 00 20 08 	slli $r0,$r0,#8
   cac8e:	fe 0f       	or33 $r0,$r1
   cac90:	49 ff fe b5 	jal ca9fa <ble_gap_link_GetIdx_ByHandle>
   cac94:	80 e0       	mov55 $r7,$r0
   cac96:	49 ff ff 41 	jal cab18 <ble_gap_link_GetAttr_Role>
   cac9a:	a6 b2       	lbi333 $r2,[$r6+#0x2]
   cac9c:	a6 f1       	lbi333 $r3,[$r6+#0x1]
   cac9e:	40 21 20 08 	slli $r2,$r2,#8
   caca2:	fe 9f       	or33 $r2,$r3
   caca4:	a6 70       	lbi333 $r1,[$r6+#0x0]
   caca6:	a6 f3       	lbi333 $r3,[$r6+#0x3]
   caca8:	81 00       	mov55 $r8,$r0
   cacaa:	3e 0d 31 94 	addi.gp $r0,#-183916
   cacae:	49 00 3a 40 	jal d212e <printf>
   cacb2:	5a 88 01 07 	bnec $r8,#1,cacc0 <BLE_gap_sm_encryption_change+0x3e>
   cacb6:	80 07       	mov55 $r0,$r7
   cacb8:	80 26       	mov55 $r1,$r6
   cacba:	49 00 1e 99 	jal ce9ec <SM_Slave_EncryptionChange>
   cacbe:	d5 05       	j8 cacc8 <BLE_gap_sm_encryption_change+0x46>
   cacc0:	80 07       	mov55 $r0,$r7
   cacc2:	80 26       	mov55 $r1,$r6
   cacc4:	49 00 24 4a 	jal cf558 <SM_Master_EncryptionChange>
   cacc8:	84 01       	movi55 $r0,#1
   cacca:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000caccc <BLE_gap_sm_ltk_request>:
   caccc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cacce:	a6 40       	lbi333 $r1,[$r0+#0x0]
   cacd0:	80 c0       	mov55 $r6,$r0
   cacd2:	a6 01       	lbi333 $r0,[$r0+#0x1]
   cacd4:	40 00 20 08 	slli $r0,$r0,#8
   cacd8:	fe 0f       	or33 $r0,$r1
   cacda:	49 ff fe 90 	jal ca9fa <ble_gap_link_GetIdx_ByHandle>
   cacde:	80 26       	mov55 $r1,$r6
   cace0:	49 00 1f 37 	jal ceb4e <SM_Slave_LTKRequest>
   cace4:	84 01       	movi55 $r0,#1
   cace6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cace8 <BLE_gap_sm_gen_dhkey_complete>:
   cace8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cacea:	49 00 13 ac 	jal cd442 <SM_CryptoTool_GenerateDHKeyComplete>
   cacee:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cacf0 <BLE_gap_sm_read_public_key_complete>:
   cacf0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cacf2:	49 00 0f d5 	jal ccc9c <SM_CryptoTool_ReadLocalP256PublicKeyComplete>
   cacf6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cacf8 <l2cap_find_cidcb>:
   cacf8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cacfa:	3e 2f c8 58 	addi.gp $r2,#-14248
   cacfe:	96 01       	zeh33 $r0,$r0
   cad00:	84 20       	movi55 $r1,#0
   cad02:	a4 d0       	lhi333 $r3,[$r2+#0x0]
   cad04:	4c 30 40 07 	bne $r3,$r0,cad12 <l2cap_find_cidcb+0x1a>
   cad08:	94 4b       	slli333 $r1,$r1,#3
   cad0a:	3e 2f c8 58 	addi.gp $r2,#-14248
   cad0e:	98 0a       	add333 $r0,$r1,$r2
   cad10:	d5 07       	j8 cad1e <l2cap_find_cidcb+0x26>
   cad12:	9c 49       	addi333 $r1,$r1,#1
   cad14:	96 48       	zeb33 $r1,$r1
   cad16:	8c 48       	addi45 $r2,#8
   cad18:	5a 18 10 f5 	bnec $r1,#16,cad02 <l2cap_find_cidcb+0xa>
   cad1c:	84 00       	movi55 $r0,#0
   cad1e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cad20 <l2cap_notify>:
   cad20:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cad22:	54 80 80 ff 	andi $r8,$r1,#0xff
   cad26:	44 10 10 00 	movi $r1,#4096
   cad2a:	4c 00 c0 12 	bne $r0,$r1,cad4e <l2cap_notify+0x2e>
   cad2e:	3e 6f c8 58 	addi.gp $r6,#-14248
   cad32:	50 73 00 80 	addi $r7,$r6,#128
   cad36:	81 3f       	mov55 $r9,$sp
   cad38:	a4 30       	lhi333 $r0,[$r6+#0x0]
   cad3a:	c0 07       	beqz38 $r0,cad48 <l2cap_notify+0x28>
   cad3c:	a1 31       	lwi333 $r4,[$r6+#0x4]
   cad3e:	3a 24 8c 00 	lmw.bi $r2,[$r9],$r3,#0x0    ! {$r2~$r3}
   cad42:	80 08       	mov55 $r0,$r8
   cad44:	84 21       	movi55 $r1,#1
   cad46:	dd 24       	jral5 $r4
   cad48:	8c c8       	addi45 $r6,#8
   cad4a:	4c 63 ff f7 	bne $r6,$r7,cad38 <l2cap_notify+0x18>
   cad4e:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cad50 <l2cap_pdu_dispatch>:
   cad50:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   cad52:	97 80       	zeb33 $r6,$r0
   cad54:	96 09       	zeh33 $r0,$r1
   cad56:	81 02       	mov55 $r8,$r2
   cad58:	97 d9       	zeh33 $r7,$r3
   cad5a:	49 ff ff cf 	jal cacf8 <l2cap_find_cidcb>
   cad5e:	c0 0a       	beqz38 $r0,cad72 <l2cap_pdu_dispatch+0x22>
   cad60:	b7 1f       	swi450 $r8,[$sp]
   cad62:	12 7f 80 02 	shi $r7,[$sp+#0x4]
   cad66:	a1 41       	lwi333 $r5,[$r0+#0x4]
   cad68:	3a 2f 8c 00 	lmw.bi $r2,[$sp],$r3,#0x0    ! {$r2~$r3}
   cad6c:	80 06       	mov55 $r0,$r6
   cad6e:	84 20       	movi55 $r1,#0
   cad70:	dd 25       	jral5 $r5
   cad72:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000cad74 <BLE_l2cap_cid_register>:
   cad74:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cad76:	97 c1       	zeh33 $r7,$r0
   cad78:	84 00       	movi55 $r0,#0
   cad7a:	80 c1       	mov55 $r6,$r1
   cad7c:	49 ff ff be 	jal cacf8 <l2cap_find_cidcb>
   cad80:	c0 04       	beqz38 $r0,cad88 <BLE_l2cap_cid_register+0x14>
   cad82:	ad c0       	shi333 $r7,[$r0+#0x0]
   cad84:	a9 81       	swi333 $r6,[$r0+#0x4]
   cad86:	84 01       	movi55 $r0,#1
   cad88:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cad8a <l2cap_init>:
   cad8a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cad8c:	84 20       	movi55 $r1,#0
   cad8e:	44 20 00 80 	movi $r2,#128
   cad92:	3e 0f c8 58 	addi.gp $r0,#-14248
   cad96:	49 ff e9 79 	jal c8088 <memset>
   cad9a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cad9c <l2cap_hci_fragment>:
   cad9c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cad9e:	97 d9       	zeh33 $r7,$r3
   cada0:	96 00       	zeb33 $r0,$r0
   cada2:	83 82       	mov55 $fp,$r2
   cada4:	40 90 80 13 	zeh $r9,$r1
   cada8:	50 83 80 04 	addi $r8,$r7,#4
   cadac:	49 ff fe 14 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   cadb0:	81 40       	mov55 $r10,$r0
   cadb2:	80 08       	mov55 $r0,$r8
   cadb4:	49 00 39 48 	jal d2044 <malloc>
   cadb8:	80 c0       	mov55 $r6,$r0
   cadba:	af c0       	sbi333 $r7,[$r0+#0x0]
   cadbc:	40 03 a0 09 	srli $r0,$r7,#8
   cadc0:	ae 31       	sbi333 $r0,[$r6+#0x1]
   cadc2:	10 93 00 02 	sbi $r9,[$r6+#0x2]
   cadc6:	80 3c       	mov55 $r1,$fp
   cadc8:	80 47       	mov55 $r2,$r7
   cadca:	93 28       	srli45 $r9,#8
   cadcc:	9c 34       	addi333 $r0,$r6,#4
   cadce:	10 93 00 03 	sbi $r9,[$r6+#0x3]
   cadd2:	49 ff e9 3b 	jal c8048 <memcpy>
   cadd6:	80 0a       	mov55 $r0,$r10
   cadd8:	80 26       	mov55 $r1,$r6
   cadda:	40 24 00 13 	zeh $r2,$r8
   cadde:	49 00 2a 40 	jal d025e <hci_send_acl>
   cade2:	80 06       	mov55 $r0,$r6
   cade4:	49 00 38 cb 	jal d1f7a <free>
   cade8:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cadea <l2cap_hci_recombine>:
   cadea:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cadec:	40 80 00 13 	zeh $r8,$r0
   cadf0:	54 04 0f ff 	andi $r0,$r8,#0xfff
   cadf4:	81 22       	mov55 $r9,$r2
   cadf6:	97 c9       	zeh33 $r7,$r1
   cadf8:	49 ff fe 01 	jal ca9fa <ble_gap_link_GetIdx_ByHandle>
   cadfc:	81 40       	mov55 $r10,$r0
   cadfe:	5a 08 ff 04 	bnec $r0,#255,cae06 <l2cap_hci_recombine+0x1c>
   cae02:	48 00 00 dd 	j cafbc <l2cap_hci_recombine+0x1d2>
   cae06:	93 0c       	srli45 $r8,#12
   cae08:	49 ff fe a6 	jal cab54 <ble_gap_link_GetAttr_Data>
   cae0c:	54 84 00 03 	andi $r8,$r8,#0x3
   cae10:	80 c0       	mov55 $r6,$r0
   cae12:	85 e2       	movi55 $r15,#2
   cae14:	4c 87 c0 6e 	bne $r8,$r15,caef0 <l2cap_hci_recombine+0x106>
   cae18:	00 04 80 00 	lbi $r0,[$r9+#0x0]
   cae1c:	00 84 80 01 	lbi $r8,[$r9+#0x1]
   cae20:	00 24 80 02 	lbi $r2,[$r9+#0x2]
   cae24:	01 c4 80 03 	lbi $fp,[$r9+#0x3]
   cae28:	4e 72 00 ca 	beqz $r7,cafbc <l2cap_hci_recombine+0x1d2>
   cae2c:	40 84 20 08 	slli $r8,$r8,#8
   cae30:	89 00       	add45 $r8,$r0
   cae32:	40 84 00 13 	zeh $r8,$r8
   cae36:	4e 82 00 c3 	beqz $r8,cafbc <l2cap_hci_recombine+0x1d2>
   cae3a:	9e 3c       	subi333 $r0,$r7,#4
   cae3c:	f0 81       	swi37.sp $r0,[+#0x4]
   cae3e:	e1 00       	slts45 $r8,$r0
   cae40:	4e f3 00 be 	bnez $r15,cafbc <l2cap_hci_recombine+0x1d2>
   cae44:	c6 17       	beqz38 $r6,cae72 <l2cap_hci_recombine+0x88>
   cae46:	a6 37       	lbi333 $r0,[$r6+#0x7]
   cae48:	a6 f6       	lbi333 $r3,[$r6+#0x6]
   cae4a:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   cae4e:	40 00 20 08 	slli $r0,$r0,#8
   cae52:	fe 1f       	or33 $r0,$r3
   cae54:	40 10 c0 08 	slli $r1,$r1,#16
   cae58:	fe 47       	or33 $r1,$r0
   cae5a:	00 03 00 09 	lbi $r0,[$r6+#0x9]
   cae5e:	b6 5f       	swi450 $r2,[$sp]
   cae60:	40 00 60 08 	slli $r0,$r0,#24
   cae64:	fe 0f       	or33 $r0,$r1
   cae66:	49 00 38 8a 	jal d1f7a <free>
   cae6a:	80 06       	mov55 $r0,$r6
   cae6c:	49 00 38 87 	jal d1f7a <free>
   cae70:	b4 5f       	lwi450 $r2,[$sp]
   cae72:	41 ce 20 08 	slli $fp,$fp,#8
   cae76:	41 c1 70 00 	add $fp,$r2,$fp
   cae7a:	9e 3b       	subi333 $r0,$r7,#3
   cae7c:	41 ce 00 13 	zeh $fp,$fp
   cae80:	8d 24       	addi45 $r9,#4
   cae82:	e1 00       	slts45 $r8,$r0
   cae84:	e9 2f       	bnezs8 caee2 <l2cap_hci_recombine+0xf8>
   cae86:	84 0a       	movi55 $r0,#10
   cae88:	49 00 38 de 	jal d2044 <malloc>
   cae8c:	80 c0       	mov55 $r6,$r0
   cae8e:	84 20       	movi55 $r1,#0
   cae90:	84 4a       	movi55 $r2,#10
   cae92:	49 ff e8 fb 	jal c8088 <memset>
   cae96:	11 c3 00 00 	sbi $fp,[$r6+#0x0]
   cae9a:	40 04 20 09 	srli $r0,$r8,#8
   cae9e:	41 ce 20 09 	srli $fp,$fp,#8
   caea2:	ae 33       	sbi333 $r0,[$r6+#0x3]
   caea4:	11 c3 00 01 	sbi $fp,[$r6+#0x1]
   caea8:	10 83 00 02 	sbi $r8,[$r6+#0x2]
   caeac:	80 08       	mov55 $r0,$r8
   caeae:	49 00 38 cb 	jal d2044 <malloc>
   caeb2:	40 10 20 09 	srli $r1,$r0,#8
   caeb6:	ae 77       	sbi333 $r1,[$r6+#0x7]
   caeb8:	40 30 60 09 	srli $r3,$r0,#24
   caebc:	40 10 40 09 	srli $r1,$r0,#16
   caec0:	10 13 00 08 	sbi $r1,[$r6+#0x8]
   caec4:	ae 36       	sbi333 $r0,[$r6+#0x6]
   caec6:	10 33 00 09 	sbi $r3,[$r6+#0x9]
   caeca:	9f fc       	subi333 $r7,$r7,#4
   caecc:	f2 01       	lwi37.sp $r2,[+#0x4]
   caece:	80 29       	mov55 $r1,$r9
   caed0:	97 f9       	zeh33 $r7,$r7
   caed2:	49 ff e8 bb 	jal c8048 <memcpy>
   caed6:	af f4       	sbi333 $r7,[$r6+#0x4]
   caed8:	92 e8       	srli45 $r7,#8
   caeda:	af f5       	sbi333 $r7,[$r6+#0x5]
   caedc:	80 0a       	mov55 $r0,$r10
   caede:	80 26       	mov55 $r1,$r6
   caee0:	d5 6c       	j8 cafb8 <l2cap_hci_recombine+0x1ce>
   caee2:	80 0a       	mov55 $r0,$r10
   caee4:	80 3c       	mov55 $r1,$fp
   caee6:	80 49       	mov55 $r2,$r9
   caee8:	80 68       	mov55 $r3,$r8
   caeea:	49 ff ff 33 	jal cad50 <l2cap_pdu_dispatch>
   caeee:	d5 67       	j8 cafbc <l2cap_hci_recombine+0x1d2>
   caef0:	5a 88 01 66 	bnec $r8,#1,cafbc <l2cap_hci_recombine+0x1d2>
   caef4:	c0 64       	beqz38 $r0,cafbc <l2cap_hci_recombine+0x1d2>
   caef6:	c7 63       	beqz38 $r7,cafbc <l2cap_hci_recombine+0x1d2>
   caef8:	a6 75       	lbi333 $r1,[$r6+#0x5]
   caefa:	a6 04       	lbi333 $r0,[$r0+#0x4]
   caefc:	a6 b3       	lbi333 $r2,[$r6+#0x3]
   caefe:	40 10 a0 08 	slli $r1,$r1,#8
   caf02:	a6 f2       	lbi333 $r3,[$r6+#0x2]
   caf04:	fe 47       	or33 $r1,$r0
   caf06:	40 21 20 08 	slli $r2,$r2,#8
   caf0a:	98 39       	add333 $r0,$r7,$r1
   caf0c:	fe 9f       	or33 $r2,$r3
   caf0e:	e0 40       	slts45 $r2,$r0
   caf10:	e9 56       	bnezs8 cafbc <l2cap_hci_recombine+0x1d2>
   caf12:	a6 f7       	lbi333 $r3,[$r6+#0x7]
   caf14:	a7 36       	lbi333 $r4,[$r6+#0x6]
   caf16:	00 23 00 08 	lbi $r2,[$r6+#0x8]
   caf1a:	00 03 00 09 	lbi $r0,[$r6+#0x9]
   caf1e:	40 31 a0 08 	slli $r3,$r3,#8
   caf22:	fe e7       	or33 $r3,$r4
   caf24:	40 21 40 08 	slli $r2,$r2,#16
   caf28:	fe 9f       	or33 $r2,$r3
   caf2a:	40 00 60 08 	slli $r0,$r0,#24
   caf2e:	fe 17       	or33 $r0,$r2
   caf30:	98 01       	add333 $r0,$r0,$r1
   caf32:	80 47       	mov55 $r2,$r7
   caf34:	80 29       	mov55 $r1,$r9
   caf36:	49 ff e8 89 	jal c8048 <memcpy>
   caf3a:	a6 f5       	lbi333 $r3,[$r6+#0x5]
   caf3c:	a6 34       	lbi333 $r0,[$r6+#0x4]
   caf3e:	40 31 a0 08 	slli $r3,$r3,#8
   caf42:	fe c7       	or33 $r3,$r0
   caf44:	99 fb       	add333 $r7,$r7,$r3
   caf46:	96 f9       	zeh33 $r3,$r7
   caf48:	40 01 a0 09 	srli $r0,$r3,#8
   caf4c:	ae 35       	sbi333 $r0,[$r6+#0x5]
   caf4e:	a6 33       	lbi333 $r0,[$r6+#0x3]
   caf50:	a6 72       	lbi333 $r1,[$r6+#0x2]
   caf52:	40 00 20 08 	slli $r0,$r0,#8
   caf56:	fe 0f       	or33 $r0,$r1
   caf58:	ae f4       	sbi333 $r3,[$r6+#0x4]
   caf5a:	4c 30 40 31 	bne $r3,$r0,cafbc <l2cap_hci_recombine+0x1d2>
   caf5e:	a6 37       	lbi333 $r0,[$r6+#0x7]
   caf60:	a6 b6       	lbi333 $r2,[$r6+#0x6]
   caf62:	00 43 00 08 	lbi $r4,[$r6+#0x8]
   caf66:	40 00 20 08 	slli $r0,$r0,#8
   caf6a:	fe 17       	or33 $r0,$r2
   caf6c:	a6 71       	lbi333 $r1,[$r6+#0x1]
   caf6e:	00 23 00 09 	lbi $r2,[$r6+#0x9]
   caf72:	a7 70       	lbi333 $r5,[$r6+#0x0]
   caf74:	40 42 40 08 	slli $r4,$r4,#16
   caf78:	ff 07       	or33 $r4,$r0
   caf7a:	40 10 a0 08 	slli $r1,$r1,#8
   caf7e:	40 21 60 08 	slli $r2,$r2,#24
   caf82:	fe 6f       	or33 $r1,$r5
   caf84:	fe a7       	or33 $r2,$r4
   caf86:	80 0a       	mov55 $r0,$r10
   caf88:	49 ff fe e4 	jal cad50 <l2cap_pdu_dispatch>
   caf8c:	a6 37       	lbi333 $r0,[$r6+#0x7]
   caf8e:	a6 b6       	lbi333 $r2,[$r6+#0x6]
   caf90:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   caf94:	40 00 20 08 	slli $r0,$r0,#8
   caf98:	fe 17       	or33 $r0,$r2
   caf9a:	40 10 c0 08 	slli $r1,$r1,#16
   caf9e:	fe 47       	or33 $r1,$r0
   cafa0:	00 03 00 09 	lbi $r0,[$r6+#0x9]
   cafa4:	40 00 60 08 	slli $r0,$r0,#24
   cafa8:	fe 0f       	or33 $r0,$r1
   cafaa:	49 00 37 e8 	jal d1f7a <free>
   cafae:	80 06       	mov55 $r0,$r6
   cafb0:	49 00 37 e5 	jal d1f7a <free>
   cafb4:	80 0a       	mov55 $r0,$r10
   cafb6:	84 20       	movi55 $r1,#0
   cafb8:	49 ff fd ba 	jal cab2c <ble_gap_link_SetAttr_Data>
   cafbc:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cafbe <l2cap_lesig_error_rsp>:
   cafbe:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   cafc0:	96 d1       	zeh33 $r3,$r2
   cafc2:	10 1f 80 01 	sbi $r1,[$sp+#0x1]
   cafc6:	84 22       	movi55 $r1,#2
   cafc8:	10 1f 80 02 	sbi $r1,[$sp+#0x2]
   cafcc:	10 3f 80 04 	sbi $r3,[$sp+#0x4]
   cafd0:	84 20       	movi55 $r1,#0
   cafd2:	92 68       	srli45 $r3,#8
   cafd4:	84 81       	movi55 $r4,#1
   cafd6:	10 1f 80 03 	sbi $r1,[$sp+#0x3]
   cafda:	10 3f 80 05 	sbi $r3,[$sp+#0x5]
   cafde:	80 5f       	mov55 $r2,$sp
   cafe0:	84 25       	movi55 $r1,#5
   cafe2:	84 66       	movi55 $r3,#6
   cafe4:	96 00       	zeb33 $r0,$r0
   cafe6:	10 4f 80 00 	sbi $r4,[$sp+#0x0]
   cafea:	49 ff fe d9 	jal cad9c <l2cap_hci_fragment>
   cafee:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000caff0 <l2cap_lesig_conn_param_update_req>:
   caff0:	fc 22       	push25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}
   caff2:	b1 81       	addri36.sp $r6,#0x4
   caff4:	97 c0       	zeb33 $r7,$r0
   caff6:	fa 02       	movpi45 $r0,#0x12
   caff8:	ae 30       	sbi333 $r0,[$r6+#0x0]
   caffa:	84 01       	movi55 $r0,#1
   caffc:	ae 31       	sbi333 $r0,[$r6+#0x1]
   caffe:	84 08       	movi55 $r0,#8
   cb000:	ae 32       	sbi333 $r0,[$r6+#0x2]
   cb002:	84 00       	movi55 $r0,#0
   cb004:	ae 33       	sbi333 $r0,[$r6+#0x3]
   cb006:	84 48       	movi55 $r2,#8
   cb008:	b0 02       	addri36.sp $r0,#0x8
   cb00a:	49 ff e8 1f 	jal c8048 <memcpy>
   cb00e:	80 07       	mov55 $r0,$r7
   cb010:	84 25       	movi55 $r1,#5
   cb012:	80 46       	mov55 $r2,$r6
   cb014:	84 6c       	movi55 $r3,#12
   cb016:	49 ff fe c3 	jal cad9c <l2cap_hci_fragment>
   cb01a:	fc a2       	pop25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}

000cb01c <l2cap_lesig_init>:
   cb01c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb01e:	3e 1c 70 2a 	addi.gp $r1,#-233430
   cb022:	84 05       	movi55 $r0,#5
   cb024:	49 ff fe a8 	jal cad74 <BLE_l2cap_cid_register>
   cb028:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb02a <le_sig_cid_evt_cb>:
   cb02a:	fc 4d       	push25 $r10,#0x68    ! {$r6~$r10, $fp, $gp, $lp}
   cb02c:	3a 2f 8c 20 	smw.bi $r2,[$sp],$r3,#0x0    ! {$r2~$r3}
   cb030:	81 21       	mov55 $r9,$r1
   cb032:	97 c0       	zeb33 $r7,$r0
   cb034:	02 8f 80 02 	lhi $r8,[$sp+#0x4]
   cb038:	80 c2       	mov55 $r6,$r2
   cb03a:	4e 93 00 4a 	bnez $r9,cb0ce <le_sig_cid_evt_cb+0xa4>
   cb03e:	5a 88 0c 22 	bnec $r8,#12,cb082 <le_sig_cid_evt_cb+0x58>
   cb042:	a6 10       	lbi333 $r0,[$r2+#0x0]
   cb044:	5a 08 12 40 	bnec $r0,#18,cb0c4 <le_sig_cid_evt_cb+0x9a>
   cb048:	80 07       	mov55 $r0,$r7
   cb04a:	49 ff fd 67 	jal cab18 <ble_gap_link_GetAttr_Role>
   cb04e:	5a 08 01 06 	bnec $r0,#1,cb05a <le_sig_cid_evt_cb+0x30>
   cb052:	80 07       	mov55 $r0,$r7
   cb054:	a6 71       	lbi333 $r1,[$r6+#0x1]
   cb056:	80 49       	mov55 $r2,$r9
   cb058:	d5 39       	j8 cb0ca <le_sig_cid_evt_cb+0xa0>
   cb05a:	50 9f 80 38 	addi $r9,$sp,#56
   cb05e:	44 00 10 04 	movi $r0,#4100
   cb062:	f0 8e       	swi37.sp $r0,[+#0x38]
   cb064:	80 07       	mov55 $r0,$r7
   cb066:	49 ff fc b7 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   cb06a:	12 04 80 02 	shi $r0,[$r9+#0x4]
   cb06e:	9c 74       	addi333 $r1,$r6,#4
   cb070:	a6 31       	lbi333 $r0,[$r6+#0x1]
   cb072:	80 48       	mov55 $r2,$r8
   cb074:	12 04 80 03 	shi $r0,[$r9+#0x6]
   cb078:	b0 10       	addri36.sp $r0,#0x40
   cb07a:	49 ff e7 e7 	jal c8048 <memcpy>
   cb07e:	80 09       	mov55 $r0,$r9
   cb080:	d5 1f       	j8 cb0be <le_sig_cid_evt_cb+0x94>
   cb082:	5a 88 06 21 	bnec $r8,#6,cb0c4 <le_sig_cid_evt_cb+0x9a>
   cb086:	a6 10       	lbi333 $r0,[$r2+#0x0]
   cb088:	5a 08 13 1e 	bnec $r0,#19,cb0c4 <le_sig_cid_evt_cb+0x9a>
   cb08c:	9d 94       	addi333 $r6,$r2,#4
   cb08e:	a6 30       	lbi333 $r0,[$r6+#0x0]
   cb090:	c0 1f       	beqz38 $r0,cb0ce <le_sig_cid_evt_cb+0xa4>
   cb092:	50 8f 80 08 	addi $r8,$sp,#8
   cb096:	44 00 10 02 	movi $r0,#4098
   cb09a:	f0 82       	swi37.sp $r0,[+#0x8]
   cb09c:	80 07       	mov55 $r0,$r7
   cb09e:	a7 b0       	lbi333 $r6,[$r6+#0x0]
   cb0a0:	10 64 00 04 	sbi $r6,[$r8+#0x4]
   cb0a4:	49 ff fc 98 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   cb0a8:	f1 03       	lwi37.sp $r1,[+#0xc]
   cb0aa:	46 2f f0 00 	sethi $r2,#0xff000
   cb0ae:	58 21 00 ff 	ori $r2,$r2,#0xff
   cb0b2:	40 00 20 08 	slli $r0,$r0,#8
   cb0b6:	fe 56       	and33 $r1,$r2
   cb0b8:	fe 0f       	or33 $r0,$r1
   cb0ba:	f0 83       	swi37.sp $r0,[+#0xc]
   cb0bc:	80 08       	mov55 $r0,$r8
   cb0be:	49 ff f8 39 	jal ca130 <bt_infom_ap>
   cb0c2:	d5 06       	j8 cb0ce <le_sig_cid_evt_cb+0xa4>
   cb0c4:	a6 71       	lbi333 $r1,[$r6+#0x1]
   cb0c6:	80 07       	mov55 $r0,$r7
   cb0c8:	84 40       	movi55 $r2,#0
   cb0ca:	49 ff ff 7a 	jal cafbe <l2cap_lesig_error_rsp>
   cb0ce:	fc cd       	pop25 $r10,#0x68    ! {$r6~$r10, $fp, $gp, $lp}

000cb0d0 <ATT_UnknownPduHadler>:
   cb0d0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb0d2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb0d4 <ATT_transaction_timeout_cb>:
   cb0d4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb0d6:	46 10 01 01 	sethi $r1,#0x101
   cb0da:	84 41       	movi55 $r2,#1
   cb0dc:	96 1f       	fexti33 $r0,#0x3
   cb0de:	40 01 00 0c 	sll $r0,$r2,$r0
   cb0e2:	3c 23 e9 7c 	lhi.gp $r2,[+#-11528]
   cb0e6:	fe 17       	or33 $r0,$r2
   cb0e8:	3c 0b e9 7c 	shi.gp $r0,[+#-11528]
   cb0ec:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb0ee <ATT_is_in_transaction>:
   cb0ee:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb0f0:	3c 13 e9 7b 	lhi.gp $r1,[+#-11530]
   cb0f4:	96 1f       	fexti33 $r0,#0x3
   cb0f6:	40 00 80 0e 	sra $r0,$r1,$r0
   cb0fa:	96 04       	xlsb33 $r0,$r0
   cb0fc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb0fe <ATT_BinarySearchIndexByHandle>:
   cb0fe:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb100:	96 41       	zeh33 $r1,$r0
   cb102:	3c 33 e9 7d 	lhi.gp $r3,[+#-11526]
   cb106:	e2 23       	slt45 $r1,$r3
   cb108:	e8 0e       	beqzs8 cb124 <ATT_BinarySearchIndexByHandle+0x26>
   cb10a:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   cb10e:	38 20 06 02 	lw $r2,[$r0+($r1<<#0x2)]
   cb112:	00 01 00 13 	lbi $r0,[$r2+#0x13]
   cb116:	00 41 00 12 	lbi $r4,[$r2+#0x12]
   cb11a:	40 00 20 08 	slli $r0,$r0,#8
   cb11e:	fe 27       	or33 $r0,$r4
   cb120:	4c 00 80 1d 	beq $r0,$r1,cb15a <ATT_BinarySearchIndexByHandle+0x5c>
   cb124:	9e d9       	subi333 $r3,$r3,#1
   cb126:	3c 4d f4 b3 	lwi.gp $r4,[+#-11572]
   cb12a:	96 d9       	zeh33 $r3,$r3
   cb12c:	84 40       	movi55 $r2,#0
   cb12e:	98 1a       	add333 $r0,$r3,$r2
   cb130:	92 01       	srli45 $r0,#1
   cb132:	38 52 02 02 	lw $r5,[$r4+($r0<<#0x2)]
   cb136:	00 62 80 12 	lbi $r6,[$r5+#0x12]
   cb13a:	00 52 80 13 	lbi $r5,[$r5+#0x13]
   cb13e:	40 52 a0 08 	slli $r5,$r5,#8
   cb142:	ff 77       	or33 $r5,$r6
   cb144:	d1 0b       	beqs38 $r1,cb15a <ATT_BinarySearchIndexByHandle+0x5c>
   cb146:	e2 a1       	slt45 $r5,$r1
   cb148:	e8 04       	beqzs8 cb150 <ATT_BinarySearchIndexByHandle+0x52>
   cb14a:	9c 01       	addi333 $r0,$r0,#1
   cb14c:	96 81       	zeh33 $r2,$r0
   cb14e:	d5 03       	j8 cb154 <ATT_BinarySearchIndexByHandle+0x56>
   cb150:	9e 01       	subi333 $r0,$r0,#1
   cb152:	96 c1       	zeh33 $r3,$r0
   cb154:	e2 62       	slt45 $r3,$r2
   cb156:	e8 ec       	beqzs8 cb12e <ATT_BinarySearchIndexByHandle+0x30>
   cb158:	84 00       	movi55 $r0,#0
   cb15a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb15c <ATT_CheckHandle>:
   cb15c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb15e:	a6 80       	lbi333 $r2,[$r0+#0x0]
   cb160:	96 49       	zeh33 $r1,$r1
   cb162:	ca 08       	bnez38 $r2,cb172 <ATT_CheckHandle+0x16>
   cb164:	c1 05       	beqz38 $r1,cb16e <ATT_CheckHandle+0x12>
   cb166:	3c 23 e9 7d 	lhi.gp $r2,[+#-11526]
   cb16a:	e2 41       	slt45 $r2,$r1
   cb16c:	e8 03       	beqzs8 cb172 <ATT_CheckHandle+0x16>
   cb16e:	84 21       	movi55 $r1,#1
   cb170:	ae 40       	sbi333 $r1,[$r0+#0x0]
   cb172:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb174 <ATT_CALLBACK>:
   cb174:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb176:	97 01       	zeh33 $r4,$r0
   cb178:	96 08       	zeb33 $r0,$r1
   cb17a:	96 50       	zeb33 $r1,$r2
   cb17c:	3c 2d f4 b3 	lwi.gp $r2,[+#-11572]
   cb180:	38 31 12 02 	lw $r3,[$r2+($r4<<#0x2)]
   cb184:	a7 5d       	lbi333 $r5,[$r3+#0x5]
   cb186:	a6 9c       	lbi333 $r2,[$r3+#0x4]
   cb188:	40 52 a0 08 	slli $r5,$r5,#8
   cb18c:	ff 57       	or33 $r5,$r2
   cb18e:	a6 9e       	lbi333 $r2,[$r3+#0x6]
   cb190:	a6 df       	lbi333 $r3,[$r3+#0x7]
   cb192:	40 21 40 08 	slli $r2,$r2,#16
   cb196:	fe af       	or33 $r2,$r5
   cb198:	40 31 e0 08 	slli $r3,$r3,#24
   cb19c:	fe d7       	or33 $r3,$r2
   cb19e:	c3 03       	beqz38 $r3,cb1a4 <ATT_CALLBACK+0x30>
   cb1a0:	80 44       	mov55 $r2,$r4
   cb1a2:	dd 23       	jral5 $r3
   cb1a4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb1a6 <ATT_ReturnGroupEndIndex>:
   cb1a6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb1a8:	96 40       	zeb33 $r1,$r0
   cb1aa:	3c 2d f4 b3 	lwi.gp $r2,[+#-11572]
   cb1ae:	38 01 06 02 	lw $r0,[$r2+($r1<<#0x2)]
   cb1b2:	00 30 00 08 	lbi $r3,[$r0+#0x8]
   cb1b6:	00 00 00 09 	lbi $r0,[$r0+#0x9]
   cb1ba:	40 00 20 08 	slli $r0,$r0,#8
   cb1be:	fe 1f       	or33 $r0,$r3
   cb1c0:	50 00 58 00 	addi $r0,$r0,#-10240
   cb1c4:	96 01       	zeh33 $r0,$r0
   cb1c6:	e6 02       	slti45 $r0,#2
   cb1c8:	e9 03       	bnezs8 cb1ce <ATT_ReturnGroupEndIndex+0x28>
   cb1ca:	84 00       	movi55 $r0,#0
   cb1cc:	d5 1f       	j8 cb20a <ATT_ReturnGroupEndIndex+0x64>
   cb1ce:	3c 33 e9 7d 	lhi.gp $r3,[+#-11526]
   cb1d2:	9c 09       	addi333 $r0,$r1,#1
   cb1d4:	96 00       	zeb33 $r0,$r0
   cb1d6:	9f 19       	subi333 $r4,$r3,#1
   cb1d8:	d5 16       	j8 cb204 <ATT_ReturnGroupEndIndex+0x5e>
   cb1da:	38 51 02 02 	lw $r5,[$r2+($r0<<#0x2)]
   cb1de:	00 62 80 08 	lbi $r6,[$r5+#0x8]
   cb1e2:	00 52 80 09 	lbi $r5,[$r5+#0x9]
   cb1e6:	40 52 a0 08 	slli $r5,$r5,#8
   cb1ea:	ff 77       	or33 $r5,$r6
   cb1ec:	50 52 d8 00 	addi $r5,$r5,#-10240
   cb1f0:	97 69       	zeh33 $r5,$r5
   cb1f2:	e6 a2       	slti45 $r5,#2
   cb1f4:	e8 04       	beqzs8 cb1fc <ATT_ReturnGroupEndIndex+0x56>
   cb1f6:	9e 01       	subi333 $r0,$r0,#1
   cb1f8:	96 00       	zeb33 $r0,$r0
   cb1fa:	d5 08       	j8 cb20a <ATT_ReturnGroupEndIndex+0x64>
   cb1fc:	e0 04       	slts45 $r0,$r4
   cb1fe:	e8 06       	beqzs8 cb20a <ATT_ReturnGroupEndIndex+0x64>
   cb200:	9c 01       	addi333 $r0,$r0,#1
   cb202:	96 00       	zeb33 $r0,$r0
   cb204:	e2 03       	slt45 $r0,$r3
   cb206:	e9 ea       	bnezs8 cb1da <ATT_ReturnGroupEndIndex+0x34>
   cb208:	80 01       	mov55 $r0,$r1
   cb20a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb20c <ATT_SetU16LE>:
   cb20c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb20e:	96 49       	zeh33 $r1,$r1
   cb210:	ae 40       	sbi333 $r1,[$r0+#0x0]
   cb212:	92 28       	srli45 $r1,#8
   cb214:	ae 41       	sbi333 $r1,[$r0+#0x1]
   cb216:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb218 <ATT_GetU16LE>:
   cb218:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb21a:	a6 81       	lbi333 $r2,[$r0+#0x1]
   cb21c:	a6 40       	lbi333 $r1,[$r0+#0x0]
   cb21e:	40 21 20 08 	slli $r2,$r2,#8
   cb222:	98 11       	add333 $r0,$r2,$r1
   cb224:	96 01       	zeh33 $r0,$r0
   cb226:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb228 <BLE_att_get_attribute_length>:
   cb228:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb22a:	3c 13 e9 7d 	lhi.gp $r1,[+#-11526]
   cb22e:	96 01       	zeh33 $r0,$r0
   cb230:	e2 01       	slt45 $r0,$r1
   cb232:	e9 04       	bnezs8 cb23a <BLE_att_get_attribute_length+0x12>
   cb234:	44 00 ff ff 	movi $r0,#65535
   cb238:	d5 0c       	j8 cb250 <BLE_att_get_attribute_length+0x28>
   cb23a:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   cb23e:	38 10 82 02 	lw $r1,[$r1+($r0<<#0x2)]
   cb242:	00 00 80 0f 	lbi $r0,[$r1+#0xf]
   cb246:	00 20 80 0e 	lbi $r2,[$r1+#0xe]
   cb24a:	40 00 20 08 	slli $r0,$r0,#8
   cb24e:	fe 17       	or33 $r0,$r2
   cb250:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb252 <BLE_att_set_default_mtu>:
   cb252:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb254:	3c 0b e3 5d 	shi.gp $r0,[+#-14662]
   cb258:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb25a <ATT_ConvertToUUID128>:
   cb25a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cb25c:	97 c8       	zeb33 $r7,$r1
   cb25e:	81 00       	mov55 $r8,$r0
   cb260:	80 c2       	mov55 $r6,$r2
   cb262:	5a 78 10 07 	bnec $r7,#16,cb270 <ATT_ConvertToUUID128+0x16>
   cb266:	80 22       	mov55 $r1,$r2
   cb268:	80 47       	mov55 $r2,$r7
   cb26a:	49 ff e6 ef 	jal c8048 <memcpy>
   cb26e:	d5 0e       	j8 cb28a <ATT_ConvertToUUID128+0x30>
   cb270:	3e 1d 2c 8c 	addi.gp $r1,#-185204
   cb274:	fa 40       	movpi45 $r2,#0x10
   cb276:	49 ff e6 e9 	jal c8048 <memcpy>
   cb27a:	5a 78 02 05 	bnec $r7,#2,cb284 <ATT_ConvertToUUID128+0x2a>
   cb27e:	12 64 00 06 	shi $r6,[$r8+#0xc]
   cb282:	d5 04       	j8 cb28a <ATT_ConvertToUUID128+0x30>
   cb284:	b4 c6       	lwi450 $r6,[$r6]
   cb286:	14 64 00 03 	swi $r6,[$r8+#0xc]
   cb28a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cb28c <ATT_ReleasePWQ>:
   cb28c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cb28e:	97 c0       	zeb33 $r7,$r0
   cb290:	3e 0f c8 d8 	addi.gp $r0,#-14120
   cb294:	38 60 1e 02 	lw $r6,[$r0+($r7<<#0x2)]
   cb298:	d5 05       	j8 cb2a2 <ATT_ReleasePWQ+0x16>
   cb29a:	80 06       	mov55 $r0,$r6
   cb29c:	b4 c6       	lwi450 $r6,[$r6]
   cb29e:	49 00 36 6e 	jal d1f7a <free>
   cb2a2:	ce fc       	bnez38 $r6,cb29a <ATT_ReleasePWQ+0xe>
   cb2a4:	3e 0f c8 d8 	addi.gp $r0,#-14120
   cb2a8:	38 60 1e 0a 	sw $r6,[$r0+($r7<<#0x2)]
   cb2ac:	3e 0f c9 80 	addi.gp $r0,#-13952
   cb2b0:	38 60 1e 0a 	sw $r6,[$r0+($r7<<#0x2)]
   cb2b4:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cb2b6 <ATT_AllocRspDataPdu>:
   cb2b6:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cb2b8:	97 c0       	zeb33 $r7,$r0
   cb2ba:	3c 6d f2 46 	lwi.gp $r6,[+#-14056]
   cb2be:	ce 09       	bnez38 $r6,cb2d0 <ATT_AllocRspDataPdu+0x1a>
   cb2c0:	3e 0d 31 c4 	addi.gp $r0,#-183868
   cb2c4:	44 10 00 e6 	movi $r1,#230
   cb2c8:	3e 2d 31 d8 	addi.gp $r2,#-183848
   cb2cc:	49 00 2f 43 	jal d1152 <assert_ab_callback_verbose>
   cb2d0:	80 06       	mov55 $r0,$r6
   cb2d2:	af f0       	sbi333 $r7,[$r6+#0x0]
   cb2d4:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cb2d6 <ATT_CheckAccessPermission>:
   cb2d6:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cb2d8:	97 c8       	zeb33 $r7,$r1
   cb2da:	80 c0       	mov55 $r6,$r0
   cb2dc:	54 03 80 44 	andi $r0,$r7,#0x44
   cb2e0:	c0 0d       	beqz38 $r0,cb2fa <ATT_CheckAccessPermission+0x24>
   cb2e2:	54 03 80 88 	andi $r0,$r7,#0x88
   cb2e6:	c0 03       	beqz38 $r0,cb2ec <ATT_CheckAccessPermission+0x16>
   cb2e8:	84 0c       	movi55 $r0,#12
   cb2ea:	d5 2c       	j8 cb342 <ATT_CheckAccessPermission+0x6c>
   cb2ec:	2e 07 c9 7e 	lbi.gp $r0,[+#-13954]
   cb2f0:	49 ff fb e1 	jal caab2 <ble_gap_link_GetAttr_Enc>
   cb2f4:	c8 03       	bnez38 $r0,cb2fa <ATT_CheckAccessPermission+0x24>
   cb2f6:	84 0f       	movi55 $r0,#15
   cb2f8:	d5 25       	j8 cb342 <ATT_CheckAccessPermission+0x6c>
   cb2fa:	96 3a       	seb33 $r0,$r7
   cb2fc:	4e 04 00 06 	bgez $r0,cb308 <ATT_CheckAccessPermission+0x32>
   cb300:	97 e6       	bmski33 $r7,#0x4
   cb302:	cf 08       	bnez38 $r7,cb312 <ATT_CheckAccessPermission+0x3c>
   cb304:	84 03       	movi55 $r0,#3
   cb306:	d5 1e       	j8 cb342 <ATT_CheckAccessPermission+0x6c>
   cb308:	54 03 80 08 	andi $r0,$r7,#0x8
   cb30c:	c0 0d       	beqz38 $r0,cb326 <ATT_CheckAccessPermission+0x50>
   cb30e:	97 fc       	xlsb33 $r7,$r7
   cb310:	c7 09       	beqz38 $r7,cb322 <ATT_CheckAccessPermission+0x4c>
   cb312:	2e 07 c9 7e 	lbi.gp $r0,[+#-13954]
   cb316:	49 ff fb b8 	jal caa86 <ble_gap_link_GetAttr_Auth>
   cb31a:	5a 00 05 15 	beqc $r0,#5,cb344 <ATT_CheckAccessPermission+0x6e>
   cb31e:	84 05       	movi55 $r0,#5
   cb320:	d5 11       	j8 cb342 <ATT_CheckAccessPermission+0x6c>
   cb322:	84 02       	movi55 $r0,#2
   cb324:	d5 0f       	j8 cb342 <ATT_CheckAccessPermission+0x6c>
   cb326:	54 03 80 22 	andi $r0,$r7,#0x22
   cb32a:	c0 03       	beqz38 $r0,cb330 <ATT_CheckAccessPermission+0x5a>
   cb32c:	84 08       	movi55 $r0,#8
   cb32e:	d5 0a       	j8 cb342 <ATT_CheckAccessPermission+0x6c>
   cb330:	54 73 80 11 	andi $r7,$r7,#0x11
   cb334:	c7 08       	beqz38 $r7,cb344 <ATT_CheckAccessPermission+0x6e>
   cb336:	2e 07 c9 7e 	lbi.gp $r0,[+#-13954]
   cb33a:	49 ff fb a6 	jal caa86 <ble_gap_link_GetAttr_Auth>
   cb33e:	c8 03       	bnez38 $r0,cb344 <ATT_CheckAccessPermission+0x6e>
   cb340:	84 05       	movi55 $r0,#5
   cb342:	ae 30       	sbi333 $r0,[$r6+#0x0]
   cb344:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cb346 <ATT_CheckWritePermission>:
   cb346:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb348:	a6 80       	lbi333 $r2,[$r0+#0x0]
   cb34a:	96 49       	zeh33 $r1,$r1
   cb34c:	ca 0c       	bnez38 $r2,cb364 <ATT_CheckWritePermission+0x1e>
   cb34e:	3c 2d f4 b3 	lwi.gp $r2,[+#-11572]
   cb352:	38 11 06 02 	lw $r1,[$r2+($r1<<#0x2)]
   cb356:	00 10 80 0d 	lbi $r1,[$r1+#0xd]
   cb35a:	54 10 80 f0 	andi $r1,$r1,#0xf0
   cb35e:	c1 03       	beqz38 $r1,cb364 <ATT_CheckWritePermission+0x1e>
   cb360:	49 ff ff bb 	jal cb2d6 <ATT_CheckAccessPermission>
   cb364:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb366 <ATT_CheckReadPermission>:
   cb366:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb368:	a6 80       	lbi333 $r2,[$r0+#0x0]
   cb36a:	96 49       	zeh33 $r1,$r1
   cb36c:	ca 0b       	bnez38 $r2,cb382 <ATT_CheckReadPermission+0x1c>
   cb36e:	3c 2d f4 b3 	lwi.gp $r2,[+#-11572]
   cb372:	38 11 06 02 	lw $r1,[$r2+($r1<<#0x2)]
   cb376:	00 10 80 0d 	lbi $r1,[$r1+#0xd]
   cb37a:	96 5f       	fexti33 $r1,#0x3
   cb37c:	c1 03       	beqz38 $r1,cb382 <ATT_CheckReadPermission+0x1c>
   cb37e:	49 ff ff ac 	jal cb2d6 <ATT_CheckAccessPermission>
   cb382:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb384 <ATT_IsSameValue>:
   cb384:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb386:	96 91       	zeh33 $r2,$r2
   cb388:	49 ff e6 54 	jal c8030 <memcmp>
   cb38c:	5c 00 00 01 	slti $r0,$r0,#1
   cb390:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb392 <BLE_att_set_attribute_length>:
   cb392:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb394:	3e 2f d2 fa 	addi.gp $r2,#-11526
   cb398:	a4 90       	lhi333 $r2,[$r2+#0x0]
   cb39a:	96 01       	zeh33 $r0,$r0
   cb39c:	96 49       	zeh33 $r1,$r1
   cb39e:	e2 02       	slt45 $r0,$r2
   cb3a0:	e9 03       	bnezs8 cb3a6 <BLE_att_set_attribute_length+0x14>
   cb3a2:	84 01       	movi55 $r0,#1
   cb3a4:	d5 34       	j8 cb40c <BLE_att_set_attribute_length+0x7a>
   cb3a6:	64 42 00 02 	mfsr $r4,$PSW
   cb3aa:	64 02 00 43 	setgie.d
   cb3ae:	64 00 00 08 	dsb
   cb3b2:	46 30 01 00 	sethi $r3,#0x100
   cb3b6:	58 31 80 b0 	ori $r3,$r3,#0xb0
   cb3ba:	b4 43       	lwi450 $r2,[$r3]
   cb3bc:	9d 51       	addi333 $r5,$r2,#1
   cb3be:	b6 a3       	swi450 $r5,[$r3]
   cb3c0:	ca 06       	bnez38 $r2,cb3cc <BLE_att_set_attribute_length+0x3a>
   cb3c2:	46 20 01 00 	sethi $r2,#0x100
   cb3c6:	58 21 00 bc 	ori $r2,$r2,#0xbc
   cb3ca:	b6 82       	swi450 $r4,[$r2]
   cb3cc:	3e 2f d2 cc 	addi.gp $r2,#-11572
   cb3d0:	b4 42       	lwi450 $r2,[$r2]
   cb3d2:	38 01 02 02 	lw $r0,[$r2+($r0<<#0x2)]
   cb3d6:	10 10 00 0e 	sbi $r1,[$r0+#0xe]
   cb3da:	92 28       	srli45 $r1,#8
   cb3dc:	10 10 00 0f 	sbi $r1,[$r0+#0xf]
   cb3e0:	46 00 01 00 	sethi $r0,#0x100
   cb3e4:	58 00 00 b0 	ori $r0,$r0,#0xb0
   cb3e8:	b4 20       	lwi450 $r1,[$r0]
   cb3ea:	9e 49       	subi333 $r1,$r1,#1
   cb3ec:	b6 20       	swi450 $r1,[$r0]
   cb3ee:	b4 00       	lwi450 $r0,[$r0]
   cb3f0:	c8 0d       	bnez38 $r0,cb40a <BLE_att_set_attribute_length+0x78>
   cb3f2:	46 10 01 00 	sethi $r1,#0x100
   cb3f6:	58 10 80 bc 	ori $r1,$r1,#0xbc
   cb3fa:	b4 21       	lwi450 $r1,[$r1]
   cb3fc:	96 4c       	xlsb33 $r1,$r1
   cb3fe:	c1 06       	beqz38 $r1,cb40a <BLE_att_set_attribute_length+0x78>
   cb400:	64 12 00 43 	setgie.e
   cb404:	64 00 00 08 	dsb
   cb408:	d5 02       	j8 cb40c <BLE_att_set_attribute_length+0x7a>
   cb40a:	84 00       	movi55 $r0,#0
   cb40c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb40e <ATT_end_transaction>:
   cb40e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb410:	97 80       	zeb33 $r6,$r0
   cb412:	50 03 00 80 	addi $r0,$r6,#128
   cb416:	49 00 21 66 	jal cf6e2 <Ab_MMITimerUnset>
   cb41a:	97 9f       	fexti33 $r6,#0x3
   cb41c:	46 10 01 01 	sethi $r1,#0x101
   cb420:	84 01       	movi55 $r0,#1
   cb422:	40 60 18 0c 	sll $r6,$r0,$r6
   cb426:	3c 03 e9 7b 	lhi.gp $r0,[+#-11530]
   cb42a:	ff b3       	not33 $r6,$r6
   cb42c:	ff 86       	and33 $r6,$r0
   cb42e:	3c 6b e9 7b 	shi.gp $r6,[+#-11530]
   cb432:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb434 <ATT_ServerGetConfirmation>:
   cb434:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cb436:	3e 0f c9 18 	addi.gp $r0,#-14056
   cb43a:	00 60 00 66 	lbi $r6,[$r0+#0x66]
   cb43e:	50 73 00 08 	addi $r7,$r6,#8
   cb442:	95 fa       	slli333 $r7,$r7,#2
   cb444:	99 f8       	add333 $r7,$r7,$r0
   cb446:	a0 79       	lwi333 $r1,[$r7+#0x4]
   cb448:	c1 05       	beqz38 $r1,cb452 <ATT_ServerGetConfirmation+0x1e>
   cb44a:	80 06       	mov55 $r0,$r6
   cb44c:	dd 21       	jral5 $r1
   cb44e:	84 00       	movi55 $r0,#0
   cb450:	a8 39       	swi333 $r0,[$r7+#0x4]
   cb452:	80 06       	mov55 $r0,$r6
   cb454:	49 ff ff dd 	jal cb40e <ATT_end_transaction>
   cb458:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cb45a <ATT_start_transaction>:
   cb45a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb45c:	97 80       	zeb33 $r6,$r0
   cb45e:	50 03 00 80 	addi $r0,$r6,#128
   cb462:	80 86       	mov55 $r4,$r6
   cb464:	84 20       	movi55 $r1,#0
   cb466:	44 20 75 30 	movi $r2,#30000
   cb46a:	3e 3c 70 d4 	addi.gp $r3,#-233260
   cb46e:	49 00 21 87 	jal cf77c <Ab_MMITimerSet>
   cb472:	97 9f       	fexti33 $r6,#0x3
   cb474:	46 00 01 01 	sethi $r0,#0x101
   cb478:	84 21       	movi55 $r1,#1
   cb47a:	40 60 98 0c 	sll $r6,$r1,$r6
   cb47e:	3c 13 e9 7b 	lhi.gp $r1,[+#-11530]
   cb482:	ff 8f       	or33 $r6,$r1
   cb484:	3c 6b e9 7b 	shi.gp $r6,[+#-11530]
   cb488:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb48a <ATT_SendPduToL2CAP>:
   cb48a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cb48c:	80 40       	mov55 $r2,$r0
   cb48e:	2e 07 c9 7e 	lbi.gp $r0,[+#-13954]
   cb492:	96 c9       	zeh33 $r3,$r1
   cb494:	84 24       	movi55 $r1,#4
   cb496:	49 ff fc 83 	jal cad9c <l2cap_hci_fragment>
   cb49a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cb49c <ATT_SendErrorRsp>:
   cb49c:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   cb49e:	96 49       	zeh33 $r1,$r1
   cb4a0:	10 1f 80 02 	sbi $r1,[$sp+#0x2]
   cb4a4:	92 28       	srli45 $r1,#8
   cb4a6:	84 81       	movi55 $r4,#1
   cb4a8:	10 0f 80 01 	sbi $r0,[$sp+#0x1]
   cb4ac:	10 1f 80 03 	sbi $r1,[$sp+#0x3]
   cb4b0:	80 1f       	mov55 $r0,$sp
   cb4b2:	84 25       	movi55 $r1,#5
   cb4b4:	10 4f 80 00 	sbi $r4,[$sp+#0x0]
   cb4b8:	10 2f 80 04 	sbi $r2,[$sp+#0x4]
   cb4bc:	49 ff ff e7 	jal cb48a <ATT_SendPduToL2CAP>
   cb4c0:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000cb4c2 <ATT_ServerGetExecuteWriteReq>:
   cb4c2:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cb4c4:	3e 1f d2 cc 	addi.gp $r1,#-11572
   cb4c8:	b4 41       	lwi450 $r2,[$r1]
   cb4ca:	a6 01       	lbi333 $r0,[$r0+#0x1]
   cb4cc:	b4 c2       	lwi450 $r6,[$r2]
   cb4ce:	2e 87 c9 7e 	lbi.gp $r8,[+#-13954]
   cb4d2:	5a 08 01 4a 	bnec $r0,#1,cb566 <ATT_ServerGetExecuteWriteReq+0xa4>
   cb4d6:	3e 0f c8 d8 	addi.gp $r0,#-14120
   cb4da:	38 70 22 02 	lw $r7,[$r0+($r8<<#0x2)]
   cb4de:	81 21       	mov55 $r9,$r1
   cb4e0:	d5 41       	j8 cb562 <ATT_ServerGetExecuteWriteReq+0xa0>
   cb4e2:	b4 09       	lwi450 $r0,[$r9]
   cb4e4:	02 a3 80 03 	lhi $r10,[$r7+#0x6]
   cb4e8:	a4 fc       	lhi333 $r3,[$r7+#0x8]
   cb4ea:	38 60 2a 02 	lw $r6,[$r0+($r10<<#0x2)]
   cb4ee:	00 23 00 0f 	lbi $r2,[$r6+#0xf]
   cb4f2:	00 03 00 0e 	lbi $r0,[$r6+#0xe]
   cb4f6:	40 21 20 08 	slli $r2,$r2,#8
   cb4fa:	fe 87       	or33 $r2,$r0
   cb4fc:	e2 43       	slt45 $r2,$r3
   cb4fe:	e8 03       	beqzs8 cb504 <ATT_ServerGetExecuteWriteReq+0x42>
   cb500:	84 e7       	movi55 $r7,#7
   cb502:	d5 38       	j8 cb572 <ATT_ServerGetExecuteWriteReq+0xb0>
   cb504:	00 03 00 11 	lbi $r0,[$r6+#0x11]
   cb508:	a4 7a       	lhi333 $r1,[$r7+#0x4]
   cb50a:	00 43 00 10 	lbi $r4,[$r6+#0x10]
   cb50e:	40 00 20 08 	slli $r0,$r0,#8
   cb512:	98 59       	add333 $r1,$r3,$r1
   cb514:	fe 27       	or33 $r0,$r4
   cb516:	96 49       	zeh33 $r1,$r1
   cb518:	c8 04       	bnez38 $r0,cb520 <ATT_ServerGetExecuteWriteReq+0x5e>
   cb51a:	e2 41       	slt45 $r2,$r1
   cb51c:	e8 09       	beqzs8 cb52e <ATT_ServerGetExecuteWriteReq+0x6c>
   cb51e:	d5 27       	j8 cb56c <ATT_ServerGetExecuteWriteReq+0xaa>
   cb520:	e2 01       	slt45 $r0,$r1
   cb522:	e9 25       	bnezs8 cb56c <ATT_ServerGetExecuteWriteReq+0xaa>
   cb524:	10 13 00 0e 	sbi $r1,[$r6+#0xe]
   cb528:	92 28       	srli45 $r1,#8
   cb52a:	10 13 00 0f 	sbi $r1,[$r6+#0xf]
   cb52e:	a6 71       	lbi333 $r1,[$r6+#0x1]
   cb530:	a7 30       	lbi333 $r4,[$r6+#0x0]
   cb532:	a6 32       	lbi333 $r0,[$r6+#0x2]
   cb534:	40 10 a0 08 	slli $r1,$r1,#8
   cb538:	a6 b3       	lbi333 $r2,[$r6+#0x3]
   cb53a:	fe 67       	or33 $r1,$r4
   cb53c:	40 00 40 08 	slli $r0,$r0,#16
   cb540:	fe 0f       	or33 $r0,$r1
   cb542:	40 21 60 08 	slli $r2,$r2,#24
   cb546:	fe 87       	or33 $r2,$r0
   cb548:	c2 07       	beqz38 $r2,cb556 <ATT_ServerGetExecuteWriteReq+0x94>
   cb54a:	98 13       	add333 $r0,$r2,$r3
   cb54c:	a4 ba       	lhi333 $r2,[$r7+#0x4]
   cb54e:	50 13 80 0a 	addi $r1,$r7,#10
   cb552:	49 ff e5 7b 	jal c8048 <memcpy>
   cb556:	80 0a       	mov55 $r0,$r10
   cb558:	84 22       	movi55 $r1,#2
   cb55a:	80 48       	mov55 $r2,$r8
   cb55c:	49 ff fe 0c 	jal cb174 <ATT_CALLBACK>
   cb560:	b4 e7       	lwi450 $r7,[$r7]
   cb562:	cf c0       	bnez38 $r7,cb4e2 <ATT_ServerGetExecuteWriteReq+0x20>
   cb564:	d5 06       	j8 cb570 <ATT_ServerGetExecuteWriteReq+0xae>
   cb566:	c0 05       	beqz38 $r0,cb570 <ATT_ServerGetExecuteWriteReq+0xae>
   cb568:	84 e4       	movi55 $r7,#4
   cb56a:	d5 04       	j8 cb572 <ATT_ServerGetExecuteWriteReq+0xb0>
   cb56c:	84 ed       	movi55 $r7,#13
   cb56e:	d5 02       	j8 cb572 <ATT_ServerGetExecuteWriteReq+0xb0>
   cb570:	84 e0       	movi55 $r7,#0
   cb572:	80 08       	mov55 $r0,$r8
   cb574:	49 ff fe 8c 	jal cb28c <ATT_ReleasePWQ>
   cb578:	c7 0d       	beqz38 $r7,cb592 <ATT_ServerGetExecuteWriteReq+0xd0>
   cb57a:	00 13 00 13 	lbi $r1,[$r6+#0x13]
   cb57e:	00 23 00 12 	lbi $r2,[$r6+#0x12]
   cb582:	40 10 a0 08 	slli $r1,$r1,#8
   cb586:	fe 57       	or33 $r1,$r2
   cb588:	fa 08       	movpi45 $r0,#0x18
   cb58a:	80 47       	mov55 $r2,$r7
   cb58c:	49 ff ff 88 	jal cb49c <ATT_SendErrorRsp>
   cb590:	d5 07       	j8 cb59e <ATT_ServerGetExecuteWriteReq+0xdc>
   cb592:	fa 09       	movpi45 $r0,#0x19
   cb594:	49 ff fe 91 	jal cb2b6 <ATT_AllocRspDataPdu>
   cb598:	84 21       	movi55 $r1,#1
   cb59a:	49 ff ff 78 	jal cb48a <ATT_SendPduToL2CAP>
   cb59e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cb5a0 <ATT_ServerGetPrepareWriteReq>:
   cb5a0:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cb5a2:	9d 81       	addi333 $r6,$r0,#1
   cb5a4:	80 06       	mov55 $r0,$r6
   cb5a6:	49 ff fe 39 	jal cb218 <ATT_GetU16LE>
   cb5aa:	80 e0       	mov55 $r7,$r0
   cb5ac:	49 ff fd a9 	jal cb0fe <ATT_BinarySearchIndexByHandle>
   cb5b0:	81 00       	mov55 $r8,$r0
   cb5b2:	51 cf 80 07 	addi $fp,$sp,#7
   cb5b6:	84 00       	movi55 $r0,#0
   cb5b8:	10 0e 00 00 	sbi $r0,[$fp+#0x0]
   cb5bc:	80 28       	mov55 $r1,$r8
   cb5be:	80 1c       	mov55 $r0,$fp
   cb5c0:	3c 93 e4 be 	lhi.gp $r9,[+#-13956]
   cb5c4:	49 ff fd cc 	jal cb15c <ATT_CheckHandle>
   cb5c8:	80 1c       	mov55 $r0,$fp
   cb5ca:	80 28       	mov55 $r1,$r8
   cb5cc:	49 ff fe bd 	jal cb346 <ATT_CheckWritePermission>
   cb5d0:	00 2f 80 07 	lbi $r2,[$sp+#0x7]
   cb5d4:	c2 06       	beqz38 $r2,cb5e0 <ATT_ServerGetPrepareWriteReq+0x40>
   cb5d6:	fa 06       	movpi45 $r0,#0x16
   cb5d8:	80 27       	mov55 $r1,$r7
   cb5da:	49 ff ff 61 	jal cb49c <ATT_SendErrorRsp>
   cb5de:	d5 39       	j8 cb650 <ATT_ServerGetPrepareWriteReq+0xb0>
   cb5e0:	50 74 ff fb 	addi $r7,$r9,#-5
   cb5e4:	97 f9       	zeh33 $r7,$r7
   cb5e6:	50 03 80 0c 	addi $r0,$r7,#12
   cb5ea:	49 00 35 2d 	jal d2044 <malloc>
   cb5ee:	2e 47 c9 7e 	lbi.gp $r4,[+#-13954]
   cb5f2:	80 60       	mov55 $r3,$r0
   cb5f4:	3e 0f c8 d8 	addi.gp $r0,#-14120
   cb5f8:	38 10 12 02 	lw $r1,[$r0+($r4<<#0x2)]
   cb5fc:	c9 04       	bnez38 $r1,cb604 <ATT_ServerGetPrepareWriteReq+0x64>
   cb5fe:	38 30 12 0a 	sw $r3,[$r0+($r4<<#0x2)]
   cb602:	d5 06       	j8 cb60e <ATT_ServerGetPrepareWriteReq+0x6e>
   cb604:	3e 0f c9 80 	addi.gp $r0,#-13952
   cb608:	38 00 12 02 	lw $r0,[$r0+($r4<<#0x2)]
   cb60c:	b6 60       	swi450 $r3,[$r0]
   cb60e:	3e 0f c9 80 	addi.gp $r0,#-13952
   cb612:	38 30 12 0a 	sw $r3,[$r0+($r4<<#0x2)]
   cb616:	12 81 80 03 	shi $r8,[$r3+#0x6]
   cb61a:	ad da       	shi333 $r7,[$r3+#0x4]
   cb61c:	80 47       	mov55 $r2,$r7
   cb61e:	a6 33       	lbi333 $r0,[$r6+#0x3]
   cb620:	a6 72       	lbi333 $r1,[$r6+#0x2]
   cb622:	40 00 20 08 	slli $r0,$r0,#8
   cb626:	98 01       	add333 $r0,$r0,$r1
   cb628:	ac 1c       	shi333 $r0,[$r3+#0x8]
   cb62a:	84 00       	movi55 $r0,#0
   cb62c:	b6 03       	swi450 $r0,[$r3]
   cb62e:	9c 74       	addi333 $r1,$r6,#4
   cb630:	50 01 80 0a 	addi $r0,$r3,#10
   cb634:	49 ff e5 0a 	jal c8048 <memcpy>
   cb638:	fa 07       	movpi45 $r0,#0x17
   cb63a:	49 ff fe 3e 	jal cb2b6 <ATT_AllocRspDataPdu>
   cb63e:	81 00       	mov55 $r8,$r0
   cb640:	80 26       	mov55 $r1,$r6
   cb642:	9c 01       	addi333 $r0,$r0,#1
   cb644:	9c bc       	addi333 $r2,$r7,#4
   cb646:	49 ff e5 01 	jal c8048 <memcpy>
   cb64a:	fd 04       	movd44 $r0,$r8
   cb64c:	49 ff ff 1f 	jal cb48a <ATT_SendPduToL2CAP>
   cb650:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cb652 <ATT_ServerGetWriteMux>:
   cb652:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cb654:	a7 80       	lbi333 $r6,[$r0+#0x0]
   cb656:	5a 68 d2 0a 	bnec $r6,#210,cb66a <ATT_ServerGetWriteMux+0x18>
   cb65a:	2e 27 c9 7f 	lbi.gp $r2,[+#-13953]
   cb65e:	85 e2       	movi55 $r15,#2
   cb660:	4c 27 c0 70 	bne $r2,$r15,cb740 <ATT_ServerGetWriteMux+0xee>
   cb664:	84 40       	movi55 $r2,#0
   cb666:	3e 27 c9 7f 	sbi.gp $r2,[+#-13953]
   cb66a:	50 80 00 01 	addi $r8,$r0,#1
   cb66e:	80 08       	mov55 $r0,$r8
   cb670:	49 ff fd d4 	jal cb218 <ATT_GetU16LE>
   cb674:	81 20       	mov55 $r9,$r0
   cb676:	49 ff fd 44 	jal cb0fe <ATT_BinarySearchIndexByHandle>
   cb67a:	80 e0       	mov55 $r7,$r0
   cb67c:	50 af 80 07 	addi $r10,$sp,#7
   cb680:	84 00       	movi55 $r0,#0
   cb682:	10 05 00 00 	sbi $r0,[$r10+#0x0]
   cb686:	80 27       	mov55 $r1,$r7
   cb688:	80 0a       	mov55 $r0,$r10
   cb68a:	49 ff fd 69 	jal cb15c <ATT_CheckHandle>
   cb68e:	80 0a       	mov55 $r0,$r10
   cb690:	80 27       	mov55 $r1,$r7
   cb692:	49 ff fe 5a 	jal cb346 <ATT_CheckWritePermission>
   cb696:	00 05 00 00 	lbi $r0,[$r10+#0x0]
   cb69a:	c8 43       	bnez38 $r0,cb720 <ATT_ServerGetWriteMux+0xce>
   cb69c:	3c 03 e4 be 	lhi.gp $r0,[+#-13956]
   cb6a0:	5a 60 d2 04 	beqc $r6,#210,cb6a8 <ATT_ServerGetWriteMux+0x56>
   cb6a4:	84 43       	movi55 $r2,#3
   cb6a6:	d5 02       	j8 cb6aa <ATT_ServerGetWriteMux+0x58>
   cb6a8:	84 4f       	movi55 $r2,#15
   cb6aa:	3c 4d f4 b3 	lwi.gp $r4,[+#-11572]
   cb6ae:	9a 82       	sub333 $r2,$r0,$r2
   cb6b0:	94 3a       	slli333 $r0,$r7,#2
   cb6b2:	99 20       	add333 $r4,$r4,$r0
   cb6b4:	b4 64       	lwi450 $r3,[$r4]
   cb6b6:	8c 6a       	addi45 $r3,#10
   cb6b8:	96 91       	zeh33 $r2,$r2
   cb6ba:	a7 5f       	lbi333 $r5,[$r3+#0x7]
   cb6bc:	a6 1e       	lbi333 $r0,[$r3+#0x6]
   cb6be:	40 52 a0 08 	slli $r5,$r5,#8
   cb6c2:	ff 47       	or33 $r5,$r0
   cb6c4:	cd 09       	bnez38 $r5,cb6d6 <ATT_ServerGetWriteMux+0x84>
   cb6c6:	a6 1d       	lbi333 $r0,[$r3+#0x5]
   cb6c8:	a6 5c       	lbi333 $r1,[$r3+#0x4]
   cb6ca:	40 00 20 08 	slli $r0,$r0,#8
   cb6ce:	fe 0f       	or33 $r0,$r1
   cb6d0:	e2 02       	slt45 $r0,$r2
   cb6d2:	e8 0c       	beqzs8 cb6ea <ATT_ServerGetWriteMux+0x98>
   cb6d4:	d5 03       	j8 cb6da <ATT_ServerGetWriteMux+0x88>
   cb6d6:	e2 a2       	slt45 $r5,$r2
   cb6d8:	e8 05       	beqzs8 cb6e2 <ATT_ServerGetWriteMux+0x90>
   cb6da:	84 0d       	movi55 $r0,#13
   cb6dc:	10 05 00 00 	sbi $r0,[$r10+#0x0]
   cb6e0:	d5 20       	j8 cb720 <ATT_ServerGetWriteMux+0xce>
   cb6e2:	40 01 20 09 	srli $r0,$r2,#8
   cb6e6:	ae 9c       	sbi333 $r2,[$r3+#0x4]
   cb6e8:	ae 1d       	sbi333 $r0,[$r3+#0x5]
   cb6ea:	b4 64       	lwi450 $r3,[$r4]
   cb6ec:	a6 59       	lbi333 $r1,[$r3+#0x1]
   cb6ee:	a7 18       	lbi333 $r4,[$r3+#0x0]
   cb6f0:	2e a7 c9 7e 	lbi.gp $r10,[+#-13954]
   cb6f4:	a6 1a       	lbi333 $r0,[$r3+#0x2]
   cb6f6:	40 10 a0 08 	slli $r1,$r1,#8
   cb6fa:	a6 db       	lbi333 $r3,[$r3+#0x3]
   cb6fc:	fe 67       	or33 $r1,$r4
   cb6fe:	40 00 40 08 	slli $r0,$r0,#16
   cb702:	fe 0f       	or33 $r0,$r1
   cb704:	40 31 e0 08 	slli $r3,$r3,#24
   cb708:	fe c7       	or33 $r3,$r0
   cb70a:	c3 06       	beqz38 $r3,cb716 <ATT_ServerGetWriteMux+0xc4>
   cb70c:	80 03       	mov55 $r0,$r3
   cb70e:	50 14 00 02 	addi $r1,$r8,#2
   cb712:	49 ff e4 9b 	jal c8048 <memcpy>
   cb716:	80 07       	mov55 $r0,$r7
   cb718:	84 22       	movi55 $r1,#2
   cb71a:	80 4a       	mov55 $r2,$r10
   cb71c:	49 ff fd 2c 	jal cb174 <ATT_CALLBACK>
   cb720:	5a 68 12 10 	bnec $r6,#18,cb740 <ATT_ServerGetWriteMux+0xee>
   cb724:	00 2f 80 07 	lbi $r2,[$sp+#0x7]
   cb728:	ca 08       	bnez38 $r2,cb738 <ATT_ServerGetWriteMux+0xe6>
   cb72a:	fa 03       	movpi45 $r0,#0x13
   cb72c:	49 ff fd c5 	jal cb2b6 <ATT_AllocRspDataPdu>
   cb730:	84 21       	movi55 $r1,#1
   cb732:	49 ff fe ac 	jal cb48a <ATT_SendPduToL2CAP>
   cb736:	d5 05       	j8 cb740 <ATT_ServerGetWriteMux+0xee>
   cb738:	80 06       	mov55 $r0,$r6
   cb73a:	80 29       	mov55 $r1,$r9
   cb73c:	49 ff fe b0 	jal cb49c <ATT_SendErrorRsp>
   cb740:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cb742 <ATT_ServerGetReadByGroupTypeReq>:
   cb742:	fc 43       	push25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}
   cb744:	80 c0       	mov55 $r6,$r0
   cb746:	9c 01       	addi333 $r0,$r0,#1
   cb748:	49 ff fd 68 	jal cb218 <ATT_GetU16LE>
   cb74c:	81 40       	mov55 $r10,$r0
   cb74e:	9c 33       	addi333 $r0,$r6,#3
   cb750:	49 ff fd 64 	jal cb218 <ATT_GetU16LE>
   cb754:	f0 83       	swi37.sp $r0,[+#0xc]
   cb756:	9c 35       	addi333 $r0,$r6,#5
   cb758:	49 ff fd 60 	jal cb218 <ATT_GetU16LE>
   cb75c:	f0 82       	swi37.sp $r0,[+#0x8]
   cb75e:	f0 03       	lwi37.sp $r0,[+#0xc]
   cb760:	e2 0a       	slt45 $r0,$r10
   cb762:	e9 03       	bnezs8 cb768 <ATT_ServerGetReadByGroupTypeReq+0x26>
   cb764:	4e a3 00 07 	bnez $r10,cb772 <ATT_ServerGetReadByGroupTypeReq+0x30>
   cb768:	fa 00       	movpi45 $r0,#0x10
   cb76a:	80 2a       	mov55 $r1,$r10
   cb76c:	84 41       	movi55 $r2,#1
   cb76e:	48 00 00 ad 	j cb8c8 <ATT_ServerGetReadByGroupTypeReq+0x186>
   cb772:	f6 02       	lwi37.sp $r6,[+#0x8]
   cb774:	50 23 58 00 	addi $r2,$r6,#-10240
   cb778:	96 91       	zeh33 $r2,$r2
   cb77a:	e6 42       	slti45 $r2,#2
   cb77c:	e9 06       	bnezs8 cb788 <ATT_ServerGetReadByGroupTypeReq+0x46>
   cb77e:	fa 00       	movpi45 $r0,#0x10
   cb780:	80 2a       	mov55 $r1,$r10
   cb782:	80 40       	mov55 $r2,$r0
   cb784:	48 00 00 a2 	j cb8c8 <ATT_ServerGetReadByGroupTypeReq+0x186>
   cb788:	fa 01       	movpi45 $r0,#0x11
   cb78a:	49 ff fd 96 	jal cb2b6 <ATT_AllocRspDataPdu>
   cb78e:	9d c1       	addi333 $r7,$r0,#1
   cb790:	f0 84       	swi37.sp $r0,[+#0x10]
   cb792:	87 80       	movi55 $fp,#0
   cb794:	9c 39       	addi333 $r0,$r7,#1
   cb796:	f0 85       	swi37.sp $r0,[+#0x14]
   cb798:	85 21       	movi55 $r9,#1
   cb79a:	81 1c       	mov55 $r8,$fp
   cb79c:	3e 5f d2 cc 	addi.gp $r5,#-11572
   cb7a0:	48 00 00 83 	j cb8a6 <ATT_ServerGetReadByGroupTypeReq+0x164>
   cb7a4:	b4 25       	lwi450 $r1,[$r5]
   cb7a6:	38 60 a6 02 	lw $r6,[$r1+($r9<<#0x2)]
   cb7aa:	00 13 00 13 	lbi $r1,[$r6+#0x13]
   cb7ae:	00 23 00 12 	lbi $r2,[$r6+#0x12]
   cb7b2:	40 10 a0 08 	slli $r1,$r1,#8
   cb7b6:	fe 57       	or33 $r1,$r2
   cb7b8:	e2 2a       	slt45 $r1,$r10
   cb7ba:	e9 72       	bnezs8 cb89e <ATT_ServerGetReadByGroupTypeReq+0x15c>
   cb7bc:	f0 03       	lwi37.sp $r0,[+#0xc]
   cb7be:	e2 01       	slt45 $r0,$r1
   cb7c0:	e9 78       	bnezs8 cb8b0 <ATT_ServerGetReadByGroupTypeReq+0x16e>
   cb7c2:	00 13 00 09 	lbi $r1,[$r6+#0x9]
   cb7c6:	00 23 00 08 	lbi $r2,[$r6+#0x8]
   cb7ca:	40 10 a0 08 	slli $r1,$r1,#8
   cb7ce:	f0 02       	lwi37.sp $r0,[+#0x8]
   cb7d0:	fe 57       	or33 $r1,$r2
   cb7d2:	4c 10 40 66 	bne $r1,$r0,cb89e <ATT_ServerGetReadByGroupTypeReq+0x15c>
   cb7d6:	00 23 00 0e 	lbi $r2,[$r6+#0xe]
   cb7da:	00 13 00 0f 	lbi $r1,[$r6+#0xf]
   cb7de:	4e 83 00 0e 	bnez $r8,cb7fa <ATT_ServerGetReadByGroupTypeReq+0xb8>
   cb7e2:	83 82       	mov55 $fp,$r2
   cb7e4:	40 10 a0 08 	slli $r1,$r1,#8
   cb7e8:	41 c0 f0 04 	or $fp,$r1,$fp
   cb7ec:	51 ce 00 04 	addi $fp,$fp,#4
   cb7f0:	41 ce 00 13 	zeh $fp,$fp
   cb7f4:	11 c3 80 00 	sbi $fp,[$r7+#0x0]
   cb7f8:	d5 08       	j8 cb808 <ATT_ServerGetReadByGroupTypeReq+0xc6>
   cb7fa:	40 10 a0 08 	slli $r1,$r1,#8
   cb7fe:	fe 57       	or33 $r1,$r2
   cb800:	a6 f8       	lbi333 $r3,[$r7+#0x0]
   cb802:	9c 4c       	addi333 $r1,$r1,#4
   cb804:	4c 30 c0 58 	bne $r3,$r1,cb8b4 <ATT_ServerGetReadByGroupTypeReq+0x172>
   cb808:	00 23 00 13 	lbi $r2,[$r6+#0x13]
   cb80c:	00 13 00 12 	lbi $r1,[$r6+#0x12]
   cb810:	40 33 a0 00 	add $r3,$r7,$r8
   cb814:	40 21 20 08 	slli $r2,$r2,#8
   cb818:	9c 19       	addi333 $r0,$r3,#1
   cb81a:	fe 57       	or33 $r1,$r2
   cb81c:	f5 81       	swi37.sp $r5,[+#0x4]
   cb81e:	49 ff fc f7 	jal cb20c <ATT_SetU16LE>
   cb822:	00 13 00 0f 	lbi $r1,[$r6+#0xf]
   cb826:	a6 f0       	lbi333 $r3,[$r6+#0x0]
   cb828:	40 20 a0 08 	slli $r2,$r1,#8
   cb82c:	a6 71       	lbi333 $r1,[$r6+#0x1]
   cb82e:	00 43 00 0e 	lbi $r4,[$r6+#0xe]
   cb832:	40 10 a0 08 	slli $r1,$r1,#8
   cb836:	fe cf       	or33 $r3,$r1
   cb838:	a6 72       	lbi333 $r1,[$r6+#0x2]
   cb83a:	50 04 00 04 	addi $r0,$r8,#4
   cb83e:	40 10 c0 08 	slli $r1,$r1,#16
   cb842:	fe 5f       	or33 $r1,$r3
   cb844:	a6 f3       	lbi333 $r3,[$r6+#0x3]
   cb846:	f6 05       	lwi37.sp $r6,[+#0x14]
   cb848:	40 31 e0 08 	slli $r3,$r3,#24
   cb84c:	fe 5f       	or33 $r1,$r3
   cb84e:	fe a7       	or33 $r2,$r4
   cb850:	98 30       	add333 $r0,$r6,$r0
   cb852:	49 ff e3 fb 	jal c8048 <memcpy>
   cb856:	80 09       	mov55 $r0,$r9
   cb858:	49 ff fc a7 	jal cb1a6 <ATT_ReturnGroupEndIndex>
   cb85c:	f5 01       	lwi37.sp $r5,[+#0x4]
   cb85e:	40 33 a0 00 	add $r3,$r7,$r8
   cb862:	b4 25       	lwi450 $r1,[$r5]
   cb864:	81 20       	mov55 $r9,$r0
   cb866:	38 20 82 02 	lw $r2,[$r1+($r0<<#0x2)]
   cb86a:	9c 1b       	addi333 $r0,$r3,#3
   cb86c:	00 11 00 12 	lbi $r1,[$r2+#0x12]
   cb870:	00 21 00 13 	lbi $r2,[$r2+#0x13]
   cb874:	89 1c       	add45 $r8,$fp
   cb876:	40 21 20 08 	slli $r2,$r2,#8
   cb87a:	fe 57       	or33 $r1,$r2
   cb87c:	49 ff fc c8 	jal cb20c <ATT_SetU16LE>
   cb880:	3e 0f c9 18 	addi.gp $r0,#-14056
   cb884:	00 20 00 66 	lbi $r2,[$r0+#0x66]
   cb888:	40 84 00 13 	zeh $r8,$r8
   cb88c:	98 92       	add333 $r2,$r2,$r2
   cb88e:	98 90       	add333 $r2,$r2,$r0
   cb890:	50 1e 00 01 	addi $r1,$fp,#1
   cb894:	a4 92       	lhi333 $r2,[$r2+#0x4]
   cb896:	88 28       	add45 $r1,$r8
   cb898:	f5 01       	lwi37.sp $r5,[+#0x4]
   cb89a:	e0 22       	slts45 $r1,$r2
   cb89c:	e8 0a       	beqzs8 cb8b0 <ATT_ServerGetReadByGroupTypeReq+0x16e>
   cb89e:	50 04 80 01 	addi $r0,$r9,#1
   cb8a2:	54 90 00 ff 	andi $r9,$r0,#0xff
   cb8a6:	3c 13 e9 7d 	lhi.gp $r1,[+#-11526]
   cb8aa:	e3 21       	slt45 $r9,$r1
   cb8ac:	4e f3 ff 7c 	bnez $r15,cb7a4 <ATT_ServerGetReadByGroupTypeReq+0x62>
   cb8b0:	4e 82 00 09 	beqz $r8,cb8c2 <ATT_ServerGetReadByGroupTypeReq+0x180>
   cb8b4:	50 14 00 02 	addi $r1,$r8,#2
   cb8b8:	f0 04       	lwi37.sp $r0,[+#0x10]
   cb8ba:	96 49       	zeh33 $r1,$r1
   cb8bc:	49 ff fd e7 	jal cb48a <ATT_SendPduToL2CAP>
   cb8c0:	d5 06       	j8 cb8cc <ATT_ServerGetReadByGroupTypeReq+0x18a>
   cb8c2:	fa 00       	movpi45 $r0,#0x10
   cb8c4:	80 2a       	mov55 $r1,$r10
   cb8c6:	84 4a       	movi55 $r2,#10
   cb8c8:	49 ff fd ea 	jal cb49c <ATT_SendErrorRsp>
   cb8cc:	fc c3       	pop25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}

000cb8ce <ATT_ServerGetReadMultiReq>:
   cb8ce:	fc 44       	push25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}
   cb8d0:	9c 01       	addi333 $r0,$r0,#1
   cb8d2:	f0 84       	swi37.sp $r0,[+#0x10]
   cb8d4:	3c 13 e4 be 	lhi.gp $r1,[+#-13956]
   cb8d8:	84 42       	movi55 $r2,#2
   cb8da:	9e 49       	subi333 $r1,$r1,#1
   cb8dc:	40 10 88 56 	divsr $r1,$r2,$r1,$r2
   cb8e0:	84 0f       	movi55 $r0,#15
   cb8e2:	87 80       	movi55 $fp,#0
   cb8e4:	81 3c       	mov55 $r9,$fp
   cb8e6:	81 5c       	mov55 $r10,$fp
   cb8e8:	50 7f 80 1f 	addi $r7,$sp,#31
   cb8ec:	96 48       	zeb33 $r1,$r1
   cb8ee:	f1 83       	swi37.sp $r1,[+#0xc]
   cb8f0:	84 20       	movi55 $r1,#0
   cb8f2:	ae 78       	sbi333 $r1,[$r7+#0x0]
   cb8f4:	49 ff fc e1 	jal cb2b6 <ATT_AllocRspDataPdu>
   cb8f8:	2e 67 c9 7e 	lbi.gp $r6,[+#-13954]
   cb8fc:	3e 1f c9 18 	addi.gp $r1,#-14056
   cb900:	98 f6       	add333 $r3,$r6,$r6
   cb902:	f0 81       	swi37.sp $r0,[+#0x4]
   cb904:	98 59       	add333 $r1,$r3,$r1
   cb906:	9c 01       	addi333 $r0,$r0,#1
   cb908:	b6 df       	swi450 $r6,[$sp]
   cb90a:	f0 85       	swi37.sp $r0,[+#0x14]
   cb90c:	f1 82       	swi37.sp $r1,[+#0x8]
   cb90e:	d5 53       	j8 cb9b4 <ATT_ServerGetReadMultiReq+0xe6>
   cb910:	f1 04       	lwi37.sp $r1,[+#0x10]
   cb912:	40 00 f0 00 	add $r0,$r1,$fp
   cb916:	49 ff fc 81 	jal cb218 <ATT_GetU16LE>
   cb91a:	81 00       	mov55 $r8,$r0
   cb91c:	49 ff fb f1 	jal cb0fe <ATT_BinarySearchIndexByHandle>
   cb920:	80 c0       	mov55 $r6,$r0
   cb922:	80 26       	mov55 $r1,$r6
   cb924:	80 07       	mov55 $r0,$r7
   cb926:	49 ff fc 1b 	jal cb15c <ATT_CheckHandle>
   cb92a:	80 07       	mov55 $r0,$r7
   cb92c:	80 26       	mov55 $r1,$r6
   cb92e:	49 ff fd 1c 	jal cb366 <ATT_CheckReadPermission>
   cb932:	a6 b8       	lbi333 $r2,[$r7+#0x0]
   cb934:	c2 06       	beqz38 $r2,cb940 <ATT_ServerGetReadMultiReq+0x72>
   cb936:	84 0e       	movi55 $r0,#14
   cb938:	80 28       	mov55 $r1,$r8
   cb93a:	49 ff fd b1 	jal cb49c <ATT_SendErrorRsp>
   cb93e:	d5 44       	j8 cb9c6 <ATT_ServerGetReadMultiReq+0xf8>
   cb940:	f0 02       	lwi37.sp $r0,[+#0x8]
   cb942:	a4 c2       	lhi333 $r3,[$r0+#0x4]
   cb944:	9e d9       	subi333 $r3,$r3,#1
   cb946:	e1 43       	slts45 $r10,$r3
   cb948:	e8 30       	beqzs8 cb9a8 <ATT_ServerGetReadMultiReq+0xda>
   cb94a:	b4 5f       	lwi450 $r2,[$sp]
   cb94c:	80 06       	mov55 $r0,$r6
   cb94e:	84 21       	movi55 $r1,#1
   cb950:	49 ff fc 12 	jal cb174 <ATT_CALLBACK>
   cb954:	3c 3d f4 b3 	lwi.gp $r3,[+#-11572]
   cb958:	f0 02       	lwi37.sp $r0,[+#0x8]
   cb95a:	38 41 9a 02 	lw $r4,[$r3+($r6<<#0x2)]
   cb95e:	a4 42       	lhi333 $r1,[$r0+#0x4]
   cb960:	00 32 00 0f 	lbi $r3,[$r4+#0xf]
   cb964:	00 52 00 0e 	lbi $r5,[$r4+#0xe]
   cb968:	9e 49       	subi333 $r1,$r1,#1
   cb96a:	40 31 a0 08 	slli $r3,$r3,#8
   cb96e:	8a 2a       	sub45 $r1,$r10
   cb970:	fe ef       	or33 $r3,$r5
   cb972:	e0 61       	slts45 $r3,$r1
   cb974:	e8 02       	beqzs8 cb978 <ATT_ServerGetReadMultiReq+0xaa>
   cb976:	80 23       	mov55 $r1,$r3
   cb978:	a6 e1       	lbi333 $r3,[$r4+#0x1]
   cb97a:	a7 60       	lbi333 $r5,[$r4+#0x0]
   cb97c:	40 31 a0 08 	slli $r3,$r3,#8
   cb980:	ff 5f       	or33 $r5,$r3
   cb982:	a6 e2       	lbi333 $r3,[$r4+#0x2]
   cb984:	97 89       	zeh33 $r6,$r1
   cb986:	40 31 c0 08 	slli $r3,$r3,#16
   cb98a:	ff 5f       	or33 $r5,$r3
   cb98c:	a6 e3       	lbi333 $r3,[$r4+#0x3]
   cb98e:	f1 05       	lwi37.sp $r1,[+#0x14]
   cb990:	40 41 e0 08 	slli $r4,$r3,#24
   cb994:	40 00 a8 00 	add $r0,$r1,$r10
   cb998:	80 46       	mov55 $r2,$r6
   cb99a:	40 12 14 04 	or $r1,$r4,$r5
   cb99e:	89 46       	add45 $r10,$r6
   cb9a0:	49 ff e3 54 	jal c8048 <memcpy>
   cb9a4:	40 a5 00 13 	zeh $r10,$r10
   cb9a8:	50 04 80 01 	addi $r0,$r9,#1
   cb9ac:	54 90 00 ff 	andi $r9,$r0,#0xff
   cb9b0:	51 ce 00 02 	addi $fp,$fp,#2
   cb9b4:	f0 03       	lwi37.sp $r0,[+#0xc]
   cb9b6:	e3 20       	slt45 $r9,$r0
   cb9b8:	e9 ac       	bnezs8 cb910 <ATT_ServerGetReadMultiReq+0x42>
   cb9ba:	50 15 00 01 	addi $r1,$r10,#1
   cb9be:	f0 01       	lwi37.sp $r0,[+#0x4]
   cb9c0:	96 49       	zeh33 $r1,$r1
   cb9c2:	49 ff fd 64 	jal cb48a <ATT_SendPduToL2CAP>
   cb9c6:	fc c4       	pop25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}

000cb9c8 <ATT_ServerGetReadBlobReq>:
   cb9c8:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cb9ca:	80 c0       	mov55 $r6,$r0
   cb9cc:	9c 01       	addi333 $r0,$r0,#1
   cb9ce:	49 ff fc 25 	jal cb218 <ATT_GetU16LE>
   cb9d2:	81 00       	mov55 $r8,$r0
   cb9d4:	9c 33       	addi333 $r0,$r6,#3
   cb9d6:	49 ff fc 21 	jal cb218 <ATT_GetU16LE>
   cb9da:	80 e0       	mov55 $r7,$r0
   cb9dc:	80 08       	mov55 $r0,$r8
   cb9de:	49 ff fb 90 	jal cb0fe <ATT_BinarySearchIndexByHandle>
   cb9e2:	97 80       	zeb33 $r6,$r0
   cb9e4:	50 9f 80 07 	addi $r9,$sp,#7
   cb9e8:	84 00       	movi55 $r0,#0
   cb9ea:	10 04 80 00 	sbi $r0,[$r9+#0x0]
   cb9ee:	80 26       	mov55 $r1,$r6
   cb9f0:	80 09       	mov55 $r0,$r9
   cb9f2:	49 ff fb b5 	jal cb15c <ATT_CheckHandle>
   cb9f6:	80 09       	mov55 $r0,$r9
   cb9f8:	80 26       	mov55 $r1,$r6
   cb9fa:	49 ff fc b6 	jal cb366 <ATT_CheckReadPermission>
   cb9fe:	00 04 80 00 	lbi $r0,[$r9+#0x0]
   cba02:	c8 11       	bnez38 $r0,cba24 <ATT_ServerGetReadBlobReq+0x5c>
   cba04:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   cba08:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   cba0c:	00 10 00 0e 	lbi $r1,[$r0+#0xe]
   cba10:	00 00 00 0f 	lbi $r0,[$r0+#0xf]
   cba14:	40 00 20 08 	slli $r0,$r0,#8
   cba18:	fe 0f       	or33 $r0,$r1
   cba1a:	e2 07       	slt45 $r0,$r7
   cba1c:	e8 04       	beqzs8 cba24 <ATT_ServerGetReadBlobReq+0x5c>
   cba1e:	84 07       	movi55 $r0,#7
   cba20:	10 04 80 00 	sbi $r0,[$r9+#0x0]
   cba24:	00 24 80 00 	lbi $r2,[$r9+#0x0]
   cba28:	c2 06       	beqz38 $r2,cba34 <ATT_ServerGetReadBlobReq+0x6c>
   cba2a:	84 0c       	movi55 $r0,#12
   cba2c:	80 28       	mov55 $r1,$r8
   cba2e:	49 ff fd 37 	jal cb49c <ATT_SendErrorRsp>
   cba32:	d5 47       	j8 cbac0 <ATT_ServerGetReadBlobReq+0xf8>
   cba34:	2e 97 c9 7e 	lbi.gp $r9,[+#-13954]
   cba38:	84 0d       	movi55 $r0,#13
   cba3a:	49 ff fc 3e 	jal cb2b6 <ATT_AllocRspDataPdu>
   cba3e:	81 40       	mov55 $r10,$r0
   cba40:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   cba44:	41 c3 08 08 	slli $fp,$r6,#2
   cba48:	38 00 70 02 	lw $r0,[$r0+($fp<<#0x0)]
   cba4c:	00 80 00 0f 	lbi $r8,[$r0+#0xf]
   cba50:	00 10 00 0e 	lbi $r1,[$r0+#0xe]
   cba54:	40 84 20 08 	slli $r8,$r8,#8
   cba58:	40 84 04 04 	or $r8,$r8,$r1
   cba5c:	40 04 a4 00 	add $r0,$r9,$r9
   cba60:	3e 1f c9 18 	addi.gp $r1,#-14056
   cba64:	98 01       	add333 $r0,$r0,$r1
   cba66:	a4 02       	lhi333 $r0,[$r0+#0x4]
   cba68:	8b 07       	sub45 $r8,$r7
   cba6a:	9e 01       	subi333 $r0,$r0,#1
   cba6c:	e0 08       	slts45 $r0,$r8
   cba6e:	e8 02       	beqzs8 cba72 <ATT_ServerGetReadBlobReq+0xaa>
   cba70:	81 00       	mov55 $r8,$r0
   cba72:	40 84 00 13 	zeh $r8,$r8
   cba76:	4e 82 00 1f 	beqz $r8,cbab4 <ATT_ServerGetReadBlobReq+0xec>
   cba7a:	cf 06       	bnez38 $r7,cba86 <ATT_ServerGetReadBlobReq+0xbe>
   cba7c:	80 06       	mov55 $r0,$r6
   cba7e:	84 21       	movi55 $r1,#1
   cba80:	80 49       	mov55 $r2,$r9
   cba82:	49 ff fb 79 	jal cb174 <ATT_CALLBACK>
   cba86:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   cba8a:	38 30 70 02 	lw $r3,[$r0+($fp<<#0x0)]
   cba8e:	a6 99       	lbi333 $r2,[$r3+#0x1]
   cba90:	a7 18       	lbi333 $r4,[$r3+#0x0]
   cba92:	a6 1a       	lbi333 $r0,[$r3+#0x2]
   cba94:	40 21 20 08 	slli $r2,$r2,#8
   cba98:	a6 5b       	lbi333 $r1,[$r3+#0x3]
   cba9a:	fe a7       	or33 $r2,$r4
   cba9c:	40 00 40 08 	slli $r0,$r0,#16
   cbaa0:	fe 17       	or33 $r0,$r2
   cbaa2:	40 10 e0 08 	slli $r1,$r1,#24
   cbaa6:	fe 47       	or33 $r1,$r0
   cbaa8:	98 4f       	add333 $r1,$r1,$r7
   cbaaa:	50 05 00 01 	addi $r0,$r10,#1
   cbaae:	80 48       	mov55 $r2,$r8
   cbab0:	49 ff e2 cc 	jal c8048 <memcpy>
   cbab4:	50 14 00 01 	addi $r1,$r8,#1
   cbab8:	80 0a       	mov55 $r0,$r10
   cbaba:	96 49       	zeh33 $r1,$r1
   cbabc:	49 ff fc e7 	jal cb48a <ATT_SendPduToL2CAP>
   cbac0:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cbac2 <ATT_ServerGetReadValueReq>:
   cbac2:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   cbac4:	9c 01       	addi333 $r0,$r0,#1
   cbac6:	49 ff fb a9 	jal cb218 <ATT_GetU16LE>
   cbaca:	80 e0       	mov55 $r7,$r0
   cbacc:	49 ff fb 19 	jal cb0fe <ATT_BinarySearchIndexByHandle>
   cbad0:	97 80       	zeb33 $r6,$r0
   cbad2:	50 8f 80 07 	addi $r8,$sp,#7
   cbad6:	84 00       	movi55 $r0,#0
   cbad8:	10 04 00 00 	sbi $r0,[$r8+#0x0]
   cbadc:	80 26       	mov55 $r1,$r6
   cbade:	80 08       	mov55 $r0,$r8
   cbae0:	49 ff fb 3e 	jal cb15c <ATT_CheckHandle>
   cbae4:	80 08       	mov55 $r0,$r8
   cbae6:	80 26       	mov55 $r1,$r6
   cbae8:	49 ff fc 3f 	jal cb366 <ATT_CheckReadPermission>
   cbaec:	00 24 00 00 	lbi $r2,[$r8+#0x0]
   cbaf0:	c2 06       	beqz38 $r2,cbafc <ATT_ServerGetReadValueReq+0x3a>
   cbaf2:	84 0a       	movi55 $r0,#10
   cbaf4:	80 27       	mov55 $r1,$r7
   cbaf6:	49 ff fc d3 	jal cb49c <ATT_SendErrorRsp>
   cbafa:	d5 38       	j8 cbb6a <ATT_ServerGetReadValueReq+0xa8>
   cbafc:	84 0b       	movi55 $r0,#11
   cbafe:	49 ff fb dc 	jal cb2b6 <ATT_AllocRspDataPdu>
   cbb02:	81 00       	mov55 $r8,$r0
   cbb04:	2e 77 c9 7e 	lbi.gp $r7,[+#-13954]
   cbb08:	84 21       	movi55 $r1,#1
   cbb0a:	80 47       	mov55 $r2,$r7
   cbb0c:	80 06       	mov55 $r0,$r6
   cbb0e:	49 ff fb 33 	jal cb174 <ATT_CALLBACK>
   cbb12:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   cbb16:	99 ff       	add333 $r7,$r7,$r7
   cbb18:	38 30 1a 02 	lw $r3,[$r0+($r6<<#0x2)]
   cbb1c:	3e 0f c9 18 	addi.gp $r0,#-14056
   cbb20:	99 f8       	add333 $r7,$r7,$r0
   cbb22:	00 01 80 0f 	lbi $r0,[$r3+#0xf]
   cbb26:	a4 ba       	lhi333 $r2,[$r7+#0x4]
   cbb28:	00 11 80 0e 	lbi $r1,[$r3+#0xe]
   cbb2c:	40 00 20 08 	slli $r0,$r0,#8
   cbb30:	9e 91       	subi333 $r2,$r2,#1
   cbb32:	fe 0f       	or33 $r0,$r1
   cbb34:	e0 02       	slts45 $r0,$r2
   cbb36:	e8 02       	beqzs8 cbb3a <ATT_ServerGetReadValueReq+0x78>
   cbb38:	80 40       	mov55 $r2,$r0
   cbb3a:	a6 19       	lbi333 $r0,[$r3+#0x1]
   cbb3c:	a6 58       	lbi333 $r1,[$r3+#0x0]
   cbb3e:	97 91       	zeh33 $r6,$r2
   cbb40:	40 00 20 08 	slli $r0,$r0,#8
   cbb44:	a6 9a       	lbi333 $r2,[$r3+#0x2]
   cbb46:	fe 0f       	or33 $r0,$r1
   cbb48:	a6 5b       	lbi333 $r1,[$r3+#0x3]
   cbb4a:	40 21 40 08 	slli $r2,$r2,#16
   cbb4e:	fe 87       	or33 $r2,$r0
   cbb50:	40 10 e0 08 	slli $r1,$r1,#24
   cbb54:	fe 57       	or33 $r1,$r2
   cbb56:	50 04 00 01 	addi $r0,$r8,#1
   cbb5a:	80 46       	mov55 $r2,$r6
   cbb5c:	49 ff e2 76 	jal c8048 <memcpy>
   cbb60:	9c 71       	addi333 $r1,$r6,#1
   cbb62:	80 08       	mov55 $r0,$r8
   cbb64:	96 49       	zeh33 $r1,$r1
   cbb66:	49 ff fc 92 	jal cb48a <ATT_SendPduToL2CAP>
   cbb6a:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000cbb6c <ATT_ServerGetReadByTypeReq>:
   cbb6c:	fc 4c       	push25 $r10,#0x60    ! {$r6~$r10, $fp, $gp, $lp}
   cbb6e:	80 c0       	mov55 $r6,$r0
   cbb70:	9c 01       	addi333 $r0,$r0,#1
   cbb72:	49 ff fb 53 	jal cb218 <ATT_GetU16LE>
   cbb76:	f0 85       	swi37.sp $r0,[+#0x14]
   cbb78:	9c 33       	addi333 $r0,$r6,#3
   cbb7a:	49 ff fb 4f 	jal cb218 <ATT_GetU16LE>
   cbb7e:	f0 8a       	swi37.sp $r0,[+#0x28]
   cbb80:	2e 27 c9 7c 	lbi.gp $r2,[+#-13956]
   cbb84:	f1 05       	lwi37.sp $r1,[+#0x14]
   cbb86:	9e 95       	subi333 $r2,$r2,#5
   cbb88:	96 90       	zeb33 $r2,$r2
   cbb8a:	f2 84       	swi37.sp $r2,[+#0x10]
   cbb8c:	e2 01       	slt45 $r0,$r1
   cbb8e:	e9 02       	bnezs8 cbb92 <ATT_ServerGetReadByTypeReq+0x26>
   cbb90:	c9 06       	bnez38 $r1,cbb9c <ATT_ServerGetReadByTypeReq+0x30>
   cbb92:	84 08       	movi55 $r0,#8
   cbb94:	f1 05       	lwi37.sp $r1,[+#0x14]
   cbb96:	84 41       	movi55 $r2,#1
   cbb98:	48 00 00 ee 	j cbd74 <ATT_ServerGetReadByTypeReq+0x208>
   cbb9c:	2e 37 c9 7e 	lbi.gp $r3,[+#-13954]
   cbba0:	3e 1f c9 18 	addi.gp $r1,#-14056
   cbba4:	99 5b       	add333 $r5,$r3,$r3
   cbba6:	85 00       	movi55 $r8,#0
   cbba8:	9d b5       	addi333 $r6,$r6,#5
   cbbaa:	84 01       	movi55 $r0,#1
   cbbac:	98 69       	add333 $r1,$r5,$r1
   cbbae:	f3 87       	swi37.sp $r3,[+#0x1c]
   cbbb0:	f6 89       	swi37.sp $r6,[+#0x24]
   cbbb2:	f0 83       	swi37.sp $r0,[+#0xc]
   cbbb4:	14 8f 80 02 	swi $r8,[$sp+#0x8]
   cbbb8:	14 8f 80 08 	swi $r8,[$sp+#0x20]
   cbbbc:	14 8f 80 06 	swi $r8,[$sp+#0x18]
   cbbc0:	50 af 80 54 	addi $r10,$sp,#84
   cbbc4:	f1 8b       	swi37.sp $r1,[+#0x2c]
   cbbc6:	51 cf 80 34 	addi $fp,$sp,#52
   cbbca:	48 00 00 ca 	j cbd5e <ATT_ServerGetReadByTypeReq+0x1f2>
   cbbce:	3c 5d f4 b3 	lwi.gp $r5,[+#-11572]
   cbbd2:	f1 03       	lwi37.sp $r1,[+#0xc]
   cbbd4:	f0 05       	lwi37.sp $r0,[+#0x14]
   cbbd6:	38 92 86 02 	lw $r9,[$r5+($r1<<#0x2)]
   cbbda:	00 54 80 13 	lbi $r5,[$r9+#0x13]
   cbbde:	00 64 80 12 	lbi $r6,[$r9+#0x12]
   cbbe2:	40 52 a0 08 	slli $r5,$r5,#8
   cbbe6:	ff 77       	or33 $r5,$r6
   cbbe8:	e2 a0       	slt45 $r5,$r0
   cbbea:	4e f3 00 b6 	bnez $r15,cbd56 <ATT_ServerGetReadByTypeReq+0x1ea>
   cbbee:	f1 0a       	lwi37.sp $r1,[+#0x28]
   cbbf0:	e2 25       	slt45 $r1,$r5
   cbbf2:	4e f3 00 bc 	bnez $r15,cbd6a <ATT_ServerGetReadByTypeReq+0x1fe>
   cbbf6:	f0 04       	lwi37.sp $r0,[+#0x10]
   cbbf8:	5a 00 02 04 	beqc $r0,#2,cbc00 <ATT_ServerGetReadByTypeReq+0x94>
   cbbfc:	f7 09       	lwi37.sp $r7,[+#0x24]
   cbbfe:	d5 05       	j8 cbc08 <ATT_ServerGetReadByTypeReq+0x9c>
   cbc00:	f0 09       	lwi37.sp $r0,[+#0x24]
   cbc02:	49 ff fb 0b 	jal cb218 <ATT_GetU16LE>
   cbc06:	80 e0       	mov55 $r7,$r0
   cbc08:	80 0a       	mov55 $r0,$r10
   cbc0a:	50 14 80 08 	addi $r1,$r9,#8
   cbc0e:	84 45       	movi55 $r2,#5
   cbc10:	49 ff e2 1c 	jal c8048 <memcpy>
   cbc14:	00 65 00 04 	lbi $r6,[$r10+#0x4]
   cbc18:	f7 97       	swi37.sp $r7,[+#0x5c]
   cbc1a:	5a 68 02 0c 	bnec $r6,#2,cbc32 <ATT_ServerGetReadByTypeReq+0xc6>
   cbc1e:	f1 04       	lwi37.sp $r1,[+#0x10]
   cbc20:	4c 13 40 10 	bne $r1,$r6,cbc40 <ATT_ServerGetReadByTypeReq+0xd4>
   cbc24:	02 65 00 00 	lhi $r6,[$r10+#0x0]
   cbc28:	97 79       	zeh33 $r5,$r7
   cbc2a:	ff 75       	xor33 $r5,$r6
   cbc2c:	5c 52 80 01 	slti $r5,$r5,#1
   cbc30:	d5 18       	j8 cbc60 <ATT_ServerGetReadByTypeReq+0xf4>
   cbc32:	f0 04       	lwi37.sp $r0,[+#0x10]
   cbc34:	4c 60 40 06 	bne $r6,$r0,cbc40 <ATT_ServerGetReadByTypeReq+0xd4>
   cbc38:	f0 15       	lwi37.sp $r0,[+#0x54]
   cbc3a:	80 27       	mov55 $r1,$r7
   cbc3c:	f2 04       	lwi37.sp $r2,[+#0x10]
   cbc3e:	d5 0e       	j8 cbc5a <ATT_ServerGetReadByTypeReq+0xee>
   cbc40:	f2 15       	lwi37.sp $r2,[+#0x54]
   cbc42:	b0 11       	addri36.sp $r0,#0x44
   cbc44:	80 26       	mov55 $r1,$r6
   cbc46:	49 ff fb 0a 	jal cb25a <ATT_ConvertToUUID128>
   cbc4a:	f1 04       	lwi37.sp $r1,[+#0x10]
   cbc4c:	80 1c       	mov55 $r0,$fp
   cbc4e:	b0 97       	addri36.sp $r2,#0x5c
   cbc50:	49 ff fb 05 	jal cb25a <ATT_ConvertToUUID128>
   cbc54:	b0 11       	addri36.sp $r0,#0x44
   cbc56:	80 3c       	mov55 $r1,$fp
   cbc58:	fa 40       	movpi45 $r2,#0x10
   cbc5a:	49 ff fb 95 	jal cb384 <ATT_IsSameValue>
   cbc5e:	80 a0       	mov55 $r5,$r0
   cbc60:	4e 52 00 7b 	beqz $r5,cbd56 <ATT_ServerGetReadByTypeReq+0x1ea>
   cbc64:	f1 03       	lwi37.sp $r1,[+#0xc]
   cbc66:	84 a0       	movi55 $r5,#0
   cbc68:	b0 17       	addri36.sp $r0,#0x5c
   cbc6a:	af 40       	sbi333 $r5,[$r0+#0x0]
   cbc6c:	49 ff fb 7d 	jal cb366 <ATT_CheckReadPermission>
   cbc70:	4e 83 00 29 	bnez $r8,cbcc2 <ATT_ServerGetReadByTypeReq+0x156>
   cbc74:	00 5f 80 5c 	lbi $r5,[$sp+#0x5c]
   cbc78:	c5 0c       	beqz38 $r5,cbc90 <ATT_ServerGetReadByTypeReq+0x124>
   cbc7a:	00 14 80 13 	lbi $r1,[$r9+#0x13]
   cbc7e:	00 34 80 12 	lbi $r3,[$r9+#0x12]
   cbc82:	40 10 a0 08 	slli $r1,$r1,#8
   cbc86:	84 08       	movi55 $r0,#8
   cbc88:	fe 5f       	or33 $r1,$r3
   cbc8a:	80 45       	mov55 $r2,$r5
   cbc8c:	48 00 00 74 	j cbd74 <ATT_ServerGetReadByTypeReq+0x208>
   cbc90:	84 09       	movi55 $r0,#9
   cbc92:	49 ff fb 12 	jal cb2b6 <ATT_AllocRspDataPdu>
   cbc96:	9c 41       	addi333 $r1,$r0,#1
   cbc98:	f0 88       	swi37.sp $r0,[+#0x20]
   cbc9a:	f1 86       	swi37.sp $r1,[+#0x18]
   cbc9c:	f0 0b       	lwi37.sp $r0,[+#0x2c]
   cbc9e:	00 64 80 0e 	lbi $r6,[$r9+#0xe]
   cbca2:	a5 02       	lhi333 $r4,[$r0+#0x4]
   cbca4:	9f 64       	subi333 $r5,$r4,#4
   cbca6:	00 44 80 0f 	lbi $r4,[$r9+#0xf]
   cbcaa:	40 42 20 08 	slli $r4,$r4,#8
   cbcae:	ff 37       	or33 $r4,$r6
   cbcb0:	e0 85       	slts45 $r4,$r5
   cbcb2:	e8 02       	beqzs8 cbcb6 <ATT_ServerGetReadByTypeReq+0x14a>
   cbcb4:	80 a4       	mov55 $r5,$r4
   cbcb6:	97 69       	zeh33 $r5,$r5
   cbcb8:	f1 06       	lwi37.sp $r1,[+#0x18]
   cbcba:	9d 2a       	addi333 $r4,$r5,#2
   cbcbc:	f5 82       	swi37.sp $r5,[+#0x8]
   cbcbe:	af 08       	sbi333 $r4,[$r1+#0x0]
   cbcc0:	d5 0e       	j8 cbcdc <ATT_ServerGetReadByTypeReq+0x170>
   cbcc2:	00 44 80 0f 	lbi $r4,[$r9+#0xf]
   cbcc6:	00 64 80 0e 	lbi $r6,[$r9+#0xe]
   cbcca:	40 42 20 08 	slli $r4,$r4,#8
   cbcce:	f0 02       	lwi37.sp $r0,[+#0x8]
   cbcd0:	ff 37       	or33 $r4,$r6
   cbcd2:	4c 02 40 4c 	bne $r0,$r4,cbd6a <ATT_ServerGetReadByTypeReq+0x1fe>
   cbcd6:	00 4f 80 5c 	lbi $r4,[$sp+#0x5c]
   cbcda:	cc 48       	bnez38 $r4,cbd6a <ATT_ServerGetReadByTypeReq+0x1fe>
   cbcdc:	f1 02       	lwi37.sp $r1,[+#0x8]
   cbcde:	50 34 00 01 	addi $r3,$r8,#1
   cbce2:	9d 8a       	addi333 $r6,$r1,#2
   cbce4:	f0 0b       	lwi37.sp $r0,[+#0x2c]
   cbce6:	42 43 0c 24 	mul $r4,$r6,$r3
   cbcea:	9d 61       	addi333 $r5,$r4,#1
   cbcec:	a5 02       	lhi333 $r4,[$r0+#0x4]
   cbcee:	e0 a4       	slts45 $r5,$r4
   cbcf0:	e8 3d       	beqzs8 cbd6a <ATT_ServerGetReadByTypeReq+0x1fe>
   cbcf2:	f2 07       	lwi37.sp $r2,[+#0x1c]
   cbcf4:	f0 03       	lwi37.sp $r0,[+#0xc]
   cbcf6:	84 21       	movi55 $r1,#1
   cbcf8:	f3 81       	swi37.sp $r3,[+#0x4]
   cbcfa:	49 ff fa 3d 	jal cb174 <ATT_CALLBACK>
   cbcfe:	f1 06       	lwi37.sp $r1,[+#0x18]
   cbd00:	00 44 80 13 	lbi $r4,[$r9+#0x13]
   cbd04:	42 83 20 24 	mul $r8,$r6,$r8
   cbd08:	00 64 80 12 	lbi $r6,[$r9+#0x12]
   cbd0c:	40 70 a0 00 	add $r7,$r1,$r8
   cbd10:	40 42 20 08 	slli $r4,$r4,#8
   cbd14:	40 12 18 04 	or $r1,$r4,$r6
   cbd18:	9c 39       	addi333 $r0,$r7,#1
   cbd1a:	49 ff fa 79 	jal cb20c <ATT_SetU16LE>
   cbd1e:	00 44 80 01 	lbi $r4,[$r9+#0x1]
   cbd22:	00 64 80 00 	lbi $r6,[$r9+#0x0]
   cbd26:	40 42 20 08 	slli $r4,$r4,#8
   cbd2a:	ff a7       	or33 $r6,$r4
   cbd2c:	00 44 80 02 	lbi $r4,[$r9+#0x2]
   cbd30:	f0 06       	lwi37.sp $r0,[+#0x18]
   cbd32:	40 42 40 08 	slli $r4,$r4,#16
   cbd36:	ff a7       	or33 $r6,$r4
   cbd38:	00 44 80 03 	lbi $r4,[$r9+#0x3]
   cbd3c:	89 00       	add45 $r8,$r0
   cbd3e:	40 52 60 08 	slli $r5,$r4,#24
   cbd42:	f2 02       	lwi37.sp $r2,[+#0x8]
   cbd44:	50 04 00 03 	addi $r0,$r8,#3
   cbd48:	40 12 98 04 	or $r1,$r5,$r6
   cbd4c:	49 ff e1 7e 	jal c8048 <memcpy>
   cbd50:	f3 01       	lwi37.sp $r3,[+#0x4]
   cbd52:	54 81 80 ff 	andi $r8,$r3,#0xff
   cbd56:	f1 03       	lwi37.sp $r1,[+#0xc]
   cbd58:	9c c9       	addi333 $r3,$r1,#1
   cbd5a:	96 d8       	zeb33 $r3,$r3
   cbd5c:	f3 83       	swi37.sp $r3,[+#0xc]
   cbd5e:	3c 33 e9 7d 	lhi.gp $r3,[+#-11526]
   cbd62:	f1 03       	lwi37.sp $r1,[+#0xc]
   cbd64:	e2 23       	slt45 $r1,$r3
   cbd66:	4e f3 ff 34 	bnez $r15,cbbce <ATT_ServerGetReadByTypeReq+0x62>
   cbd6a:	f0 02       	lwi37.sp $r0,[+#0x8]
   cbd6c:	c8 07       	bnez38 $r0,cbd7a <ATT_ServerGetReadByTypeReq+0x20e>
   cbd6e:	f1 05       	lwi37.sp $r1,[+#0x14]
   cbd70:	84 08       	movi55 $r0,#8
   cbd72:	84 4a       	movi55 $r2,#10
   cbd74:	49 ff fb 94 	jal cb49c <ATT_SendErrorRsp>
   cbd78:	d5 0a       	j8 cbd8c <ATT_ServerGetReadByTypeReq+0x220>
   cbd7a:	f1 02       	lwi37.sp $r1,[+#0x8]
   cbd7c:	f0 08       	lwi37.sp $r0,[+#0x20]
   cbd7e:	9c ca       	addi333 $r3,$r1,#2
   cbd80:	42 14 0c 24 	mul $r1,$r8,$r3
   cbd84:	9c 4a       	addi333 $r1,$r1,#2
   cbd86:	96 49       	zeh33 $r1,$r1
   cbd88:	49 ff fb 81 	jal cb48a <ATT_SendPduToL2CAP>
   cbd8c:	fc cc       	pop25 $r10,#0x60    ! {$r6~$r10, $fp, $gp, $lp}

000cbd8e <ATT_ServerGetFindByTypeValueReq>:
   cbd8e:	fc 43       	push25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}
   cbd90:	3c 23 e4 be 	lhi.gp $r2,[+#-13956]
   cbd94:	80 c0       	mov55 $r6,$r0
   cbd96:	9e 97       	subi333 $r2,$r2,#7
   cbd98:	9c 01       	addi333 $r0,$r0,#1
   cbd9a:	40 81 00 13 	zeh $r8,$r2
   cbd9e:	49 ff fa 3d 	jal cb218 <ATT_GetU16LE>
   cbda2:	b6 1f       	swi450 $r0,[$sp]
   cbda4:	9c 33       	addi333 $r0,$r6,#3
   cbda6:	49 ff fa 39 	jal cb218 <ATT_GetU16LE>
   cbdaa:	f0 82       	swi37.sp $r0,[+#0x8]
   cbdac:	9c 35       	addi333 $r0,$r6,#5
   cbdae:	49 ff fa 35 	jal cb218 <ATT_GetU16LE>
   cbdb2:	f0 81       	swi37.sp $r0,[+#0x4]
   cbdb4:	b4 3f       	lwi450 $r1,[$sp]
   cbdb6:	f0 02       	lwi37.sp $r0,[+#0x8]
   cbdb8:	e2 01       	slt45 $r0,$r1
   cbdba:	e9 02       	bnezs8 cbdbe <ATT_ServerGetFindByTypeValueReq+0x30>
   cbdbc:	c9 06       	bnez38 $r1,cbdc8 <ATT_ServerGetFindByTypeValueReq+0x3a>
   cbdbe:	84 06       	movi55 $r0,#6
   cbdc0:	b4 3f       	lwi450 $r1,[$sp]
   cbdc2:	84 41       	movi55 $r2,#1
   cbdc4:	48 00 00 8b 	j cbeda <ATT_ServerGetFindByTypeValueReq+0x14c>
   cbdc8:	84 07       	movi55 $r0,#7
   cbdca:	49 ff fa 76 	jal cb2b6 <ATT_AllocRspDataPdu>
   cbdce:	f0 83       	swi37.sp $r0,[+#0xc]
   cbdd0:	50 90 00 01 	addi $r9,$r0,#1
   cbdd4:	f0 01       	lwi37.sp $r0,[+#0x4]
   cbdd6:	9d b7       	addi333 $r6,$r6,#7
   cbdd8:	50 30 58 00 	addi $r3,$r0,#-10240
   cbddc:	96 d9       	zeh33 $r3,$r3
   cbdde:	f3 85       	swi37.sp $r3,[+#0x14]
   cbde0:	f6 84       	swi37.sp $r6,[+#0x10]
   cbde2:	85 41       	movi55 $r10,#1
   cbde4:	87 80       	movi55 $fp,#0
   cbde6:	48 00 00 71 	j cbec8 <ATT_ServerGetFindByTypeValueReq+0x13a>
   cbdea:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   cbdee:	38 60 aa 02 	lw $r6,[$r1+($r10<<#0x2)]
   cbdf2:	00 13 00 13 	lbi $r1,[$r6+#0x13]
   cbdf6:	00 33 00 12 	lbi $r3,[$r6+#0x12]
   cbdfa:	40 10 a0 08 	slli $r1,$r1,#8
   cbdfe:	40 70 8c 04 	or $r7,$r1,$r3
   cbe02:	b4 3f       	lwi450 $r1,[$sp]
   cbe04:	e2 e1       	slt45 $r7,$r1
   cbe06:	e9 5e       	bnezs8 cbec2 <ATT_ServerGetFindByTypeValueReq+0x134>
   cbe08:	f0 02       	lwi37.sp $r0,[+#0x8]
   cbe0a:	e2 07       	slt45 $r0,$r7
   cbe0c:	e9 62       	bnezs8 cbed0 <ATT_ServerGetFindByTypeValueReq+0x142>
   cbe0e:	00 33 00 09 	lbi $r3,[$r6+#0x9]
   cbe12:	00 43 00 08 	lbi $r4,[$r6+#0x8]
   cbe16:	40 31 a0 08 	slli $r3,$r3,#8
   cbe1a:	f1 01       	lwi37.sp $r1,[+#0x4]
   cbe1c:	fe e7       	or33 $r3,$r4
   cbe1e:	4c 30 c0 46 	bne $r3,$r1,cbeaa <ATT_ServerGetFindByTypeValueReq+0x11c>
   cbe22:	00 33 00 0f 	lbi $r3,[$r6+#0xf]
   cbe26:	00 43 00 0e 	lbi $r4,[$r6+#0xe]
   cbe2a:	40 31 a0 08 	slli $r3,$r3,#8
   cbe2e:	fe e7       	or33 $r3,$r4
   cbe30:	4c 34 40 3d 	bne $r3,$r8,cbeaa <ATT_ServerGetFindByTypeValueReq+0x11c>
   cbe34:	a6 f1       	lbi333 $r3,[$r6+#0x1]
   cbe36:	a7 30       	lbi333 $r4,[$r6+#0x0]
   cbe38:	40 31 a0 08 	slli $r3,$r3,#8
   cbe3c:	ff 1f       	or33 $r4,$r3
   cbe3e:	a6 f2       	lbi333 $r3,[$r6+#0x2]
   cbe40:	f0 04       	lwi37.sp $r0,[+#0x10]
   cbe42:	40 31 c0 08 	slli $r3,$r3,#16
   cbe46:	40 51 90 04 	or $r5,$r3,$r4
   cbe4a:	a6 f3       	lbi333 $r3,[$r6+#0x3]
   cbe4c:	80 48       	mov55 $r2,$r8
   cbe4e:	40 41 e0 08 	slli $r4,$r3,#24
   cbe52:	40 12 14 04 	or $r1,$r4,$r5
   cbe56:	49 ff fa 97 	jal cb384 <ATT_IsSameValue>
   cbe5a:	c0 28       	beqz38 $r0,cbeaa <ATT_ServerGetFindByTypeValueReq+0x11c>
   cbe5c:	40 3e 08 08 	slli $r3,$fp,#2
   cbe60:	40 04 8c 00 	add $r0,$r9,$r3
   cbe64:	80 27       	mov55 $r1,$r7
   cbe66:	49 ff f9 d3 	jal cb20c <ATT_SetU16LE>
   cbe6a:	f0 05       	lwi37.sp $r0,[+#0x14]
   cbe6c:	e6 02       	slti45 $r0,#2
   cbe6e:	e8 0a       	beqzs8 cbe82 <ATT_ServerGetFindByTypeValueReq+0xf4>
   cbe70:	80 0a       	mov55 $r0,$r10
   cbe72:	49 ff f9 9a 	jal cb1a6 <ATT_ReturnGroupEndIndex>
   cbe76:	81 40       	mov55 $r10,$r0
   cbe78:	c0 05       	beqz38 $r0,cbe82 <ATT_ServerGetFindByTypeValueReq+0xf4>
   cbe7a:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   cbe7e:	38 60 aa 02 	lw $r6,[$r1+($r10<<#0x2)]
   cbe82:	40 1e 70 00 	add $r1,$fp,$fp
   cbe86:	00 33 00 13 	lbi $r3,[$r6+#0x13]
   cbe8a:	00 43 00 12 	lbi $r4,[$r6+#0x12]
   cbe8e:	9c 49       	addi333 $r1,$r1,#1
   cbe90:	98 49       	add333 $r1,$r1,$r1
   cbe92:	40 31 a0 08 	slli $r3,$r3,#8
   cbe96:	40 04 84 00 	add $r0,$r9,$r1
   cbe9a:	51 ce 00 01 	addi $fp,$fp,#1
   cbe9e:	40 11 90 04 	or $r1,$r3,$r4
   cbea2:	49 ff f9 b5 	jal cb20c <ATT_SetU16LE>
   cbea6:	55 ce 00 ff 	andi $fp,$fp,#0xff
   cbeaa:	3e 0f c9 18 	addi.gp $r0,#-14056
   cbeae:	00 10 00 66 	lbi $r1,[$r0+#0x66]
   cbeb2:	98 49       	add333 $r1,$r1,$r1
   cbeb4:	98 48       	add333 $r1,$r1,$r0
   cbeb6:	a4 ca       	lhi333 $r3,[$r1+#0x4]
   cbeb8:	50 1e 00 01 	addi $r1,$fp,#1
   cbebc:	94 4a       	slli333 $r1,$r1,#2
   cbebe:	e0 23       	slts45 $r1,$r3
   cbec0:	e8 08       	beqzs8 cbed0 <ATT_ServerGetFindByTypeValueReq+0x142>
   cbec2:	8d 41       	addi45 $r10,#1
   cbec4:	54 a5 00 ff 	andi $r10,$r10,#0xff
   cbec8:	3c 13 e9 7d 	lhi.gp $r1,[+#-11526]
   cbecc:	e3 41       	slt45 $r10,$r1
   cbece:	e9 8e       	bnezs8 cbdea <ATT_ServerGetFindByTypeValueReq+0x5c>
   cbed0:	4f c3 00 08 	bnez $fp,cbee0 <ATT_ServerGetFindByTypeValueReq+0x152>
   cbed4:	b4 3f       	lwi450 $r1,[$sp]
   cbed6:	84 06       	movi55 $r0,#6
   cbed8:	84 4a       	movi55 $r2,#10
   cbeda:	49 ff fa e1 	jal cb49c <ATT_SendErrorRsp>
   cbede:	d5 07       	j8 cbeec <ATT_ServerGetFindByTypeValueReq+0x15e>
   cbee0:	40 1e 08 08 	slli $r1,$fp,#2
   cbee4:	f0 03       	lwi37.sp $r0,[+#0xc]
   cbee6:	9c 49       	addi333 $r1,$r1,#1
   cbee8:	49 ff fa d1 	jal cb48a <ATT_SendPduToL2CAP>
   cbeec:	fc c3       	pop25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}

000cbeee <ATT_ServerGetFindInfoReq>:
   cbeee:	fc 43       	push25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}
   cbef0:	80 c0       	mov55 $r6,$r0
   cbef2:	9c 01       	addi333 $r0,$r0,#1
   cbef4:	49 ff f9 92 	jal cb218 <ATT_GetU16LE>
   cbef8:	83 80       	mov55 $fp,$r0
   cbefa:	9c 33       	addi333 $r0,$r6,#3
   cbefc:	49 ff f9 8e 	jal cb218 <ATT_GetU16LE>
   cbf00:	f0 83       	swi37.sp $r0,[+#0xc]
   cbf02:	e2 1c       	slt45 $r0,$fp
   cbf04:	e9 03       	bnezs8 cbf0a <ATT_ServerGetFindInfoReq+0x1c>
   cbf06:	4f c3 00 07 	bnez $fp,cbf14 <ATT_ServerGetFindInfoReq+0x26>
   cbf0a:	84 04       	movi55 $r0,#4
   cbf0c:	80 3c       	mov55 $r1,$fp
   cbf0e:	84 41       	movi55 $r2,#1
   cbf10:	48 00 00 b3 	j cc076 <ATT_ServerGetFindInfoReq+0x188>
   cbf14:	84 05       	movi55 $r0,#5
   cbf16:	49 ff f9 d0 	jal cb2b6 <ATT_AllocRspDataPdu>
   cbf1a:	f0 84       	swi37.sp $r0,[+#0x10]
   cbf1c:	9c 01       	addi333 $r0,$r0,#1
   cbf1e:	9c 41       	addi333 $r1,$r0,#1
   cbf20:	f1 82       	swi37.sp $r1,[+#0x8]
   cbf22:	85 20       	movi55 $r9,#0
   cbf24:	84 21       	movi55 $r1,#1
   cbf26:	15 cf 80 05 	swi $fp,[$sp+#0x14]
   cbf2a:	f0 81       	swi37.sp $r0,[+#0x4]
   cbf2c:	81 49       	mov55 $r10,$r9
   cbf2e:	83 81       	mov55 $fp,$r1
   cbf30:	48 00 00 96 	j cc05c <ATT_ServerGetFindInfoReq+0x16e>
   cbf34:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   cbf38:	f4 05       	lwi37.sp $r4,[+#0x14]
   cbf3a:	38 60 f2 02 	lw $r6,[$r1+($fp<<#0x2)]
   cbf3e:	9d b4       	addi333 $r6,$r6,#4
   cbf40:	00 13 00 0f 	lbi $r1,[$r6+#0xf]
   cbf44:	00 23 00 0e 	lbi $r2,[$r6+#0xe]
   cbf48:	40 10 a0 08 	slli $r1,$r1,#8
   cbf4c:	40 00 88 04 	or $r0,$r1,$r2
   cbf50:	e2 04       	slt45 $r0,$r4
   cbf52:	4e f3 00 81 	bnez $r15,cc054 <ATT_ServerGetFindInfoReq+0x166>
   cbf56:	f1 03       	lwi37.sp $r1,[+#0xc]
   cbf58:	e2 20       	slt45 $r1,$r0
   cbf5a:	4e f3 00 87 	bnez $r15,cc068 <ATT_ServerGetFindInfoReq+0x17a>
   cbf5e:	4e a3 00 12 	bnez $r10,cbf82 <ATT_ServerGetFindInfoReq+0x94>
   cbf62:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   cbf66:	5a 10 02 04 	beqc $r1,#2,cbf6e <ATT_ServerGetFindInfoReq+0x80>
   cbf6a:	84 02       	movi55 $r0,#2
   cbf6c:	d5 02       	j8 cbf70 <ATT_ServerGetFindInfoReq+0x82>
   cbf6e:	84 01       	movi55 $r0,#1
   cbf70:	f2 01       	lwi37.sp $r2,[+#0x4]
   cbf72:	ae 10       	sbi333 $r0,[$r2+#0x0]
   cbf74:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   cbf78:	5a 10 02 04 	beqc $r1,#2,cbf80 <ATT_ServerGetFindInfoReq+0x92>
   cbf7c:	fb 42       	movpi45 $r10,#0x12
   cbf7e:	d5 02       	j8 cbf82 <ATT_ServerGetFindInfoReq+0x94>
   cbf80:	85 44       	movi55 $r10,#4
   cbf82:	3e 4f c9 18 	addi.gp $r4,#-14056
   cbf86:	00 22 00 66 	lbi $r2,[$r4+#0x66]
   cbf8a:	50 14 80 01 	addi $r1,$r9,#1
   cbf8e:	98 92       	add333 $r2,$r2,$r2
   cbf90:	98 94       	add333 $r2,$r2,$r4
   cbf92:	42 15 04 24 	mul $r1,$r10,$r1
   cbf96:	a4 92       	lhi333 $r2,[$r2+#0x4]
   cbf98:	9c 49       	addi333 $r1,$r1,#1
   cbf9a:	e0 22       	slts45 $r1,$r2
   cbf9c:	e8 66       	beqzs8 cc068 <ATT_ServerGetFindInfoReq+0x17a>
   cbf9e:	f1 01       	lwi37.sp $r1,[+#0x4]
   cbfa0:	a6 08       	lbi333 $r0,[$r1+#0x0]
   cbfa2:	5a 08 01 12 	bnec $r0,#1,cbfc6 <ATT_ServerGetFindInfoReq+0xd8>
   cbfa6:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   cbfaa:	5a 18 02 5f 	bnec $r1,#2,cc068 <ATT_ServerGetFindInfoReq+0x17a>
   cbfae:	f3 01       	lwi37.sp $r3,[+#0x4]
   cbfb0:	a6 b5       	lbi333 $r2,[$r6+#0x5]
   cbfb2:	42 35 24 73 	maddr32 $r3,$r10,$r9
   cbfb6:	a6 74       	lbi333 $r1,[$r6+#0x4]
   cbfb8:	40 21 20 08 	slli $r2,$r2,#8
   cbfbc:	9c 1b       	addi333 $r0,$r3,#3
   cbfbe:	fe 57       	or33 $r1,$r2
   cbfc0:	49 ff f9 26 	jal cb20c <ATT_SetU16LE>
   cbfc4:	d5 38       	j8 cc034 <ATT_ServerGetFindInfoReq+0x146>
   cbfc6:	5a 08 02 37 	bnec $r0,#2,cc034 <ATT_ServerGetFindInfoReq+0x146>
   cbfca:	00 83 00 08 	lbi $r8,[$r6+#0x8]
   cbfce:	5a 88 04 1c 	bnec $r8,#4,cc006 <ATT_ServerGetFindInfoReq+0x118>
   cbfd2:	f2 02       	lwi37.sp $r2,[+#0x8]
   cbfd4:	42 75 24 24 	mul $r7,$r10,$r9
   cbfd8:	9c 7a       	addi333 $r1,$r7,#2
   cbfda:	98 11       	add333 $r0,$r2,$r1
   cbfdc:	3e 1d 2c 8c 	addi.gp $r1,#-185204
   cbfe0:	84 4c       	movi55 $r2,#12
   cbfe2:	49 ff e0 33 	jal c8048 <memcpy>
   cbfe6:	a6 75       	lbi333 $r1,[$r6+#0x5]
   cbfe8:	a6 f4       	lbi333 $r3,[$r6+#0x4]
   cbfea:	40 10 a0 08 	slli $r1,$r1,#8
   cbfee:	fe cf       	or33 $r3,$r1
   cbff0:	a6 76       	lbi333 $r1,[$r6+#0x6]
   cbff2:	f4 02       	lwi37.sp $r4,[+#0x8]
   cbff4:	40 10 c0 08 	slli $r1,$r1,#16
   cbff8:	fe 5f       	or33 $r1,$r3
   cbffa:	a6 f7       	lbi333 $r3,[$r6+#0x7]
   cbffc:	8c ee       	addi45 $r7,#14
   cbffe:	40 31 e0 08 	slli $r3,$r3,#24
   cc002:	98 27       	add333 $r0,$r4,$r7
   cc004:	d5 14       	j8 cc02c <ATT_ServerGetFindInfoReq+0x13e>
   cc006:	5a 88 10 31 	bnec $r8,#16,cc068 <ATT_ServerGetFindInfoReq+0x17a>
   cc00a:	42 15 24 24 	mul $r1,$r10,$r9
   cc00e:	9c 8a       	addi333 $r2,$r1,#2
   cc010:	a6 75       	lbi333 $r1,[$r6+#0x5]
   cc012:	a6 f4       	lbi333 $r3,[$r6+#0x4]
   cc014:	40 10 a0 08 	slli $r1,$r1,#8
   cc018:	fe cf       	or33 $r3,$r1
   cc01a:	a6 76       	lbi333 $r1,[$r6+#0x6]
   cc01c:	f4 02       	lwi37.sp $r4,[+#0x8]
   cc01e:	40 10 c0 08 	slli $r1,$r1,#16
   cc022:	fe 5f       	or33 $r1,$r3
   cc024:	a6 f7       	lbi333 $r3,[$r6+#0x7]
   cc026:	98 22       	add333 $r0,$r4,$r2
   cc028:	40 31 e0 08 	slli $r3,$r3,#24
   cc02c:	fe 5f       	or33 $r1,$r3
   cc02e:	80 48       	mov55 $r2,$r8
   cc030:	49 ff e0 0c 	jal c8048 <memcpy>
   cc034:	f3 01       	lwi37.sp $r3,[+#0x4]
   cc036:	00 23 00 0f 	lbi $r2,[$r6+#0xf]
   cc03a:	42 35 24 73 	maddr32 $r3,$r10,$r9
   cc03e:	00 13 00 0e 	lbi $r1,[$r6+#0xe]
   cc042:	40 21 20 08 	slli $r2,$r2,#8
   cc046:	9c 19       	addi333 $r0,$r3,#1
   cc048:	fe 57       	or33 $r1,$r2
   cc04a:	8d 21       	addi45 $r9,#1
   cc04c:	49 ff f8 e0 	jal cb20c <ATT_SetU16LE>
   cc050:	54 94 80 ff 	andi $r9,$r9,#0xff
   cc054:	50 0e 00 01 	addi $r0,$fp,#1
   cc058:	55 c0 00 ff 	andi $fp,$r0,#0xff
   cc05c:	3c 03 e9 7d 	lhi.gp $r0,[+#-11526]
   cc060:	40 fe 00 06 	slt $r15,$fp,$r0
   cc064:	4e f3 ff 68 	bnez $r15,cbf34 <ATT_ServerGetFindInfoReq+0x46>
   cc068:	05 cf 80 05 	lwi $fp,[$sp+#0x14]
   cc06c:	4e 93 00 08 	bnez $r9,cc07c <ATT_ServerGetFindInfoReq+0x18e>
   cc070:	84 04       	movi55 $r0,#4
   cc072:	80 3c       	mov55 $r1,$fp
   cc074:	84 4a       	movi55 $r2,#10
   cc076:	49 ff fa 13 	jal cb49c <ATT_SendErrorRsp>
   cc07a:	d5 07       	j8 cc088 <ATT_ServerGetFindInfoReq+0x19a>
   cc07c:	42 14 a8 24 	mul $r1,$r9,$r10
   cc080:	f0 04       	lwi37.sp $r0,[+#0x10]
   cc082:	9c 4a       	addi333 $r1,$r1,#2
   cc084:	49 ff fa 03 	jal cb48a <ATT_SendPduToL2CAP>
   cc088:	fc c3       	pop25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}

000cc08a <ATT_ServerGetMtuExchangeReq>:
   cc08a:	fc 26       	push25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}
   cc08c:	9c 01       	addi333 $r0,$r0,#1
   cc08e:	2e 67 c9 7e 	lbi.gp $r6,[+#-13954]
   cc092:	49 ff f8 c3 	jal cb218 <ATT_GetU16LE>
   cc096:	3c 23 e3 5d 	lhi.gp $r2,[+#-14662]
   cc09a:	98 76       	add333 $r1,$r6,$r6
   cc09c:	e2 02       	slt45 $r0,$r2
   cc09e:	e8 06       	beqzs8 cc0aa <ATT_ServerGetMtuExchangeReq+0x20>
   cc0a0:	3e 0f c9 18 	addi.gp $r0,#-14056
   cc0a4:	98 48       	add333 $r1,$r1,$r0
   cc0a6:	ac 8a       	shi333 $r2,[$r1+#0x4]
   cc0a8:	d5 0b       	j8 cc0be <ATT_ServerGetMtuExchangeReq+0x34>
   cc0aa:	3e 2f c9 18 	addi.gp $r2,#-14056
   cc0ae:	98 4a       	add333 $r1,$r1,$r2
   cc0b0:	96 81       	zeh33 $r2,$r0
   cc0b2:	5c f1 00 74 	slti $r15,$r2,#116
   cc0b6:	e9 03       	bnezs8 cc0bc <ATT_ServerGetMtuExchangeReq+0x32>
   cc0b8:	44 00 00 73 	movi $r0,#115
   cc0bc:	ac 0a       	shi333 $r0,[$r1+#0x4]
   cc0be:	84 03       	movi55 $r0,#3
   cc0c0:	49 ff f8 fb 	jal cb2b6 <ATT_AllocRspDataPdu>
   cc0c4:	80 e0       	mov55 $r7,$r0
   cc0c6:	44 10 00 73 	movi $r1,#115
   cc0ca:	9c 01       	addi333 $r0,$r0,#1
   cc0cc:	49 ff f8 a0 	jal cb20c <ATT_SetU16LE>
   cc0d0:	80 07       	mov55 $r0,$r7
   cc0d2:	84 23       	movi55 $r1,#3
   cc0d4:	49 ff f9 db 	jal cb48a <ATT_SendPduToL2CAP>
   cc0d8:	44 00 30 02 	movi $r0,#12290
   cc0dc:	b6 1f       	swi450 $r0,[$sp]
   cc0de:	3e 1f c9 18 	addi.gp $r1,#-14056
   cc0e2:	98 36       	add333 $r0,$r6,$r6
   cc0e4:	98 01       	add333 $r0,$r0,$r1
   cc0e6:	a4 02       	lhi333 $r0,[$r0+#0x4]
   cc0e8:	80 ff       	mov55 $r7,$sp
   cc0ea:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   cc0ee:	80 06       	mov55 $r0,$r6
   cc0f0:	49 ff f4 72 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   cc0f4:	12 0f 80 03 	shi $r0,[$sp+#0x6]
   cc0f8:	80 1f       	mov55 $r0,$sp
   cc0fa:	49 ff f0 1b 	jal ca130 <bt_infom_ap>
   cc0fe:	fc a6       	pop25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}

000cc100 <ATT_HandleValueReportMux>:
   cc100:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cc102:	96 00       	zeb33 $r0,$r0
   cc104:	80 c3       	mov55 $r6,$r3
   cc106:	f0 81       	swi37.sp $r0,[+#0x4]
   cc108:	40 90 80 13 	zeh $r9,$r1
   cc10c:	97 d0       	zeb33 $r7,$r2
   cc10e:	5a 08 1d 10 	bnec $r0,#29,cc12e <ATT_HandleValueReportMux+0x2e>
   cc112:	80 07       	mov55 $r0,$r7
   cc114:	49 ff f7 ed 	jal cb0ee <ATT_is_in_transaction>
   cc118:	c8 53       	bnez38 $r0,cc1be <ATT_HandleValueReportMux+0xbe>
   cc11a:	50 03 80 08 	addi $r0,$r7,#8
   cc11e:	94 02       	slli333 $r0,$r0,#2
   cc120:	3e 1f c9 18 	addi.gp $r1,#-14056
   cc124:	98 01       	add333 $r0,$r0,$r1
   cc126:	a9 81       	swi333 $r6,[$r0+#0x4]
   cc128:	80 07       	mov55 $r0,$r7
   cc12a:	49 ff f9 98 	jal cb45a <ATT_start_transaction>
   cc12e:	80 09       	mov55 $r0,$r9
   cc130:	49 ff f7 e7 	jal cb0fe <ATT_BinarySearchIndexByHandle>
   cc134:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   cc138:	38 80 82 02 	lw $r8,[$r1+($r0<<#0x2)]
   cc13c:	3e 1f c9 18 	addi.gp $r1,#-14056
   cc140:	98 3f       	add333 $r0,$r7,$r7
   cc142:	98 01       	add333 $r0,$r0,$r1
   cc144:	a4 82       	lhi333 $r2,[$r0+#0x4]
   cc146:	00 04 00 0f 	lbi $r0,[$r8+#0xf]
   cc14a:	00 14 00 0e 	lbi $r1,[$r8+#0xe]
   cc14e:	40 00 20 08 	slli $r0,$r0,#8
   cc152:	9e 93       	subi333 $r2,$r2,#3
   cc154:	fe 0f       	or33 $r0,$r1
   cc156:	e0 02       	slts45 $r0,$r2
   cc158:	e8 02       	beqzs8 cc15c <ATT_HandleValueReportMux+0x5c>
   cc15a:	80 40       	mov55 $r2,$r0
   cc15c:	41 c1 00 13 	zeh $fp,$r2
   cc160:	50 ae 00 03 	addi $r10,$fp,#3
   cc164:	80 0a       	mov55 $r0,$r10
   cc166:	49 00 2f 6f 	jal d2044 <malloc>
   cc16a:	80 c0       	mov55 $r6,$r0
   cc16c:	c0 29       	beqz38 $r0,cc1be <ATT_HandleValueReportMux+0xbe>
   cc16e:	f0 01       	lwi37.sp $r0,[+#0x4]
   cc170:	10 93 00 01 	sbi $r9,[$r6+#0x1]
   cc174:	93 28       	srli45 $r9,#8
   cc176:	ae 30       	sbi333 $r0,[$r6+#0x0]
   cc178:	10 93 00 02 	sbi $r9,[$r6+#0x2]
   cc17c:	00 04 00 01 	lbi $r0,[$r8+#0x1]
   cc180:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   cc184:	00 24 00 02 	lbi $r2,[$r8+#0x2]
   cc188:	40 00 20 08 	slli $r0,$r0,#8
   cc18c:	fe 0f       	or33 $r0,$r1
   cc18e:	00 14 00 03 	lbi $r1,[$r8+#0x3]
   cc192:	40 21 40 08 	slli $r2,$r2,#16
   cc196:	fe 87       	or33 $r2,$r0
   cc198:	40 10 e0 08 	slli $r1,$r1,#24
   cc19c:	fe 57       	or33 $r1,$r2
   cc19e:	9c 33       	addi333 $r0,$r6,#3
   cc1a0:	80 5c       	mov55 $r2,$fp
   cc1a2:	49 ff df 53 	jal c8048 <memcpy>
   cc1a6:	3e 77 c9 7e 	sbi.gp $r7,[+#-13954]
   cc1aa:	40 15 00 13 	zeh $r1,$r10
   cc1ae:	80 06       	mov55 $r0,$r6
   cc1b0:	49 ff f9 6d 	jal cb48a <ATT_SendPduToL2CAP>
   cc1b4:	80 06       	mov55 $r0,$r6
   cc1b6:	49 00 2e e2 	jal d1f7a <free>
   cc1ba:	84 00       	movi55 $r0,#0
   cc1bc:	d5 02       	j8 cc1c0 <ATT_HandleValueReportMux+0xc0>
   cc1be:	84 01       	movi55 $r0,#1
   cc1c0:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cc1c2 <att_init>:
   cc1c2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cc1c4:	44 60 00 40 	movi $r6,#64
   cc1c8:	3e 1c 81 fc 	addi.gp $r1,#-228868
   cc1cc:	84 04       	movi55 $r0,#4
   cc1ce:	49 ff f5 d3 	jal cad74 <BLE_l2cap_cid_register>
   cc1d2:	80 46       	mov55 $r2,$r6
   cc1d4:	84 20       	movi55 $r1,#0
   cc1d6:	3e 0f c8 d8 	addi.gp $r0,#-14120
   cc1da:	49 ff df 57 	jal c8088 <memset>
   cc1de:	84 20       	movi55 $r1,#0
   cc1e0:	80 46       	mov55 $r2,$r6
   cc1e2:	3e 0f c9 80 	addi.gp $r0,#-13952
   cc1e6:	49 ff df 51 	jal c8088 <memset>
   cc1ea:	84 3f       	movi55 $r1,#-1
   cc1ec:	3c 1b e9 62 	shi.gp $r1,[+#-11580]
   cc1f0:	84 00       	movi55 $r0,#0
   cc1f2:	3c 0b e9 7b 	shi.gp $r0,[+#-11530]
   cc1f6:	3c 0b e9 7c 	shi.gp $r0,[+#-11528]
   cc1fa:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cc1fc <ATT_cid_evt_cb>:
   cc1fc:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cc1fe:	3a 2f 8c 20 	smw.bi $r2,[$sp],$r3,#0x0    ! {$r2~$r3}
   cc202:	81 02       	mov55 $r8,$r2
   cc204:	97 80       	zeb33 $r6,$r0
   cc206:	02 2f 80 02 	lhi $r2,[$sp+#0x4]
   cc20a:	5a 10 01 54 	beqc $r1,#1,cc2b2 <ATT_cid_evt_cb+0xb6>
   cc20e:	c1 06       	beqz38 $r1,cc21a <ATT_cid_evt_cb+0x1e>
   cc210:	85 e2       	movi55 $r15,#2
   cc212:	4c 17 c0 6e 	bne $r1,$r15,cc2ee <ATT_cid_evt_cb+0xf2>
   cc216:	48 00 00 61 	j cc2d8 <ATT_cid_evt_cb+0xdc>
   cc21a:	00 74 00 00 	lbi $r7,[$r8+#0x0]
   cc21e:	3c 2b e4 be 	shi.gp $r2,[+#-13956]
   cc222:	3e 67 c9 7e 	sbi.gp $r6,[+#-13954]
   cc226:	e6 ff       	slti45 $r7,#31
   cc228:	e9 07       	bnezs8 cc236 <ATT_cid_evt_cb+0x3a>
   cc22a:	5a 70 52 06 	beqc $r7,#82,cc236 <ATT_cid_evt_cb+0x3a>
   cc22e:	5a 70 d2 04 	beqc $r7,#210,cc236 <ATT_cid_evt_cb+0x3a>
   cc232:	48 00 00 5e 	j cc2ee <ATT_cid_evt_cb+0xf2>
   cc236:	96 3c       	xlsb33 $r0,$r7
   cc238:	c0 19       	beqz38 $r0,cc26a <ATT_cid_evt_cb+0x6e>
   cc23a:	5a 70 1b 04 	beqc $r7,#27,cc242 <ATT_cid_evt_cb+0x46>
   cc23e:	5a 78 1d 06 	bnec $r7,#29,cc24a <ATT_cid_evt_cb+0x4e>
   cc242:	80 08       	mov55 $r0,$r8
   cc244:	49 00 03 0c 	jal cc85c <ATT_Client_GetHandleValueReport>
   cc248:	d5 53       	j8 cc2ee <ATT_cid_evt_cb+0xf2>
   cc24a:	3c 93 e9 62 	lhi.gp $r9,[+#-11580]
   cc24e:	80 06       	mov55 $r0,$r6
   cc250:	49 ff f3 c2 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   cc254:	4c 90 40 4d 	bne $r9,$r0,cc2ee <ATT_cid_evt_cb+0xf2>
   cc258:	80 06       	mov55 $r0,$r6
   cc25a:	49 ff f8 da 	jal cb40e <ATT_end_transaction>
   cc25e:	3c 1d f4 b2 	lwi.gp $r1,[+#-11576]
   cc262:	c1 46       	beqz38 $r1,cc2ee <ATT_cid_evt_cb+0xf2>
   cc264:	80 08       	mov55 $r0,$r8
   cc266:	dd 21       	jral5 $r1
   cc268:	d5 43       	j8 cc2ee <ATT_cid_evt_cb+0xf2>
   cc26a:	00 04 00 00 	lbi $r0,[$r8+#0x0]
   cc26e:	54 10 00 40 	andi $r1,$r0,#0x40
   cc272:	c9 03       	bnez38 $r1,cc278 <ATT_cid_evt_cb+0x7c>
   cc274:	5a 08 1e 06 	bnec $r0,#30,cc280 <ATT_cid_evt_cb+0x84>
   cc278:	84 20       	movi55 $r1,#0
   cc27a:	3c 1f f2 46 	swi.gp $r1,[+#-14056]
   cc27e:	d5 0c       	j8 cc296 <ATT_cid_evt_cb+0x9a>
   cc280:	3e 0f c9 18 	addi.gp $r0,#-14056
   cc284:	99 b6       	add333 $r6,$r6,$r6
   cc286:	99 b0       	add333 $r6,$r6,$r0
   cc288:	a4 32       	lhi333 $r0,[$r6+#0x4]
   cc28a:	49 00 2e dd 	jal d2044 <malloc>
   cc28e:	80 20       	mov55 $r1,$r0
   cc290:	3c 1f f2 46 	swi.gp $r1,[+#-14056]
   cc294:	c1 29       	beqz38 $r1,cc2e6 <ATT_cid_evt_cb+0xea>
   cc296:	97 e7       	fexti33 $r7,#0x4
   cc298:	3e 0f c1 24 	addi.gp $r0,#-16092
   cc29c:	90 e1       	srai45 $r7,#1
   cc29e:	38 10 1e 02 	lw $r1,[$r0+($r7<<#0x2)]
   cc2a2:	80 08       	mov55 $r0,$r8
   cc2a4:	dd 21       	jral5 $r1
   cc2a6:	3c 0d f2 46 	lwi.gp $r0,[+#-14056]
   cc2aa:	c0 22       	beqz38 $r0,cc2ee <ATT_cid_evt_cb+0xf2>
   cc2ac:	49 00 2e 67 	jal d1f7a <free>
   cc2b0:	d5 1f       	j8 cc2ee <ATT_cid_evt_cb+0xf2>
   cc2b2:	98 36       	add333 $r0,$r6,$r6
   cc2b4:	3e 2f c9 18 	addi.gp $r2,#-14056
   cc2b8:	98 02       	add333 $r0,$r0,$r2
   cc2ba:	3c 23 e3 5d 	lhi.gp $r2,[+#-14662]
   cc2be:	97 9f       	fexti33 $r6,#0x3
   cc2c0:	ac 82       	shi333 $r2,[$r0+#0x4]
   cc2c2:	46 00 01 01 	sethi $r0,#0x101
   cc2c6:	3c 23 e9 7c 	lhi.gp $r2,[+#-11528]
   cc2ca:	40 10 98 0c 	sll $r1,$r1,$r6
   cc2ce:	fe 4b       	not33 $r1,$r1
   cc2d0:	fe 56       	and33 $r1,$r2
   cc2d2:	3c 1b e9 7c 	shi.gp $r1,[+#-11528]
   cc2d6:	d5 0c       	j8 cc2ee <ATT_cid_evt_cb+0xf2>
   cc2d8:	80 06       	mov55 $r0,$r6
   cc2da:	49 ff f8 9a 	jal cb40e <ATT_end_transaction>
   cc2de:	80 06       	mov55 $r0,$r6
   cc2e0:	49 ff f7 d6 	jal cb28c <ATT_ReleasePWQ>
   cc2e4:	d5 05       	j8 cc2ee <ATT_cid_evt_cb+0xf2>
   cc2e6:	80 07       	mov55 $r0,$r7
   cc2e8:	fa 41       	movpi45 $r2,#0x11
   cc2ea:	49 ff f8 d9 	jal cb49c <ATT_SendErrorRsp>
   cc2ee:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cc2f0 <_ble_cccd_common_cb>:
   cc2f0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cc2f2:	97 88       	zeb33 $r6,$r1
   cc2f4:	97 d1       	zeh33 $r7,$r2
   cc2f6:	3c 2d f3 96 	lwi.gp $r2,[+#-12712]
   cc2fa:	2e 47 ce 5c 	lbi.gp $r4,[+#-12708]
   cc2fe:	80 62       	mov55 $r3,$r2
   cc300:	84 20       	movi55 $r1,#0
   cc302:	a5 58       	lhi333 $r5,[$r3+#0x0]
   cc304:	d7 07       	beqs38 $r7,cc312 <_ble_cccd_common_cb+0x22>
   cc306:	9c 49       	addi333 $r1,$r1,#1
   cc308:	96 48       	zeb33 $r1,$r1
   cc30a:	50 31 80 28 	addi $r3,$r3,#40
   cc30e:	e2 24       	slt45 $r1,$r4
   cc310:	e9 f9       	bnezs8 cc302 <_ble_cccd_common_cb+0x12>
   cc312:	5a 08 01 3a 	bnec $r0,#1,cc386 <_ble_cccd_common_cb+0x96>
   cc316:	fb 18       	movpi45 $r8,#0x28
   cc318:	42 80 a0 24 	mul $r8,$r1,$r8
   cc31c:	88 48       	add45 $r2,$r8
   cc31e:	04 31 00 09 	lwi $r3,[$r2+#0x24]
   cc322:	c3 04       	beqz38 $r3,cc32a <_ble_cccd_common_cb+0x3a>
   cc324:	80 26       	mov55 $r1,$r6
   cc326:	80 47       	mov55 $r2,$r7
   cc328:	dd 23       	jral5 $r3
   cc32a:	3c 1d f3 96 	lwi.gp $r1,[+#-12712]
   cc32e:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   cc332:	95 fa       	slli333 $r7,$r7,#2
   cc334:	38 00 1c 02 	lw $r0,[$r0+($r7<<#0x0)]
   cc338:	89 01       	add45 $r8,$r1
   cc33a:	a6 c1       	lbi333 $r3,[$r0+#0x1]
   cc33c:	a7 00       	lbi333 $r4,[$r0+#0x0]
   cc33e:	a6 42       	lbi333 $r1,[$r0+#0x2]
   cc340:	40 31 a0 08 	slli $r3,$r3,#8
   cc344:	a6 03       	lbi333 $r0,[$r0+#0x3]
   cc346:	fe e7       	or33 $r3,$r4
   cc348:	40 10 c0 08 	slli $r1,$r1,#16
   cc34c:	99 b6       	add333 $r6,$r6,$r6
   cc34e:	fe 5f       	or33 $r1,$r3
   cc350:	88 c8       	add45 $r6,$r8
   cc352:	40 00 60 08 	slli $r0,$r0,#24
   cc356:	fe 0f       	or33 $r0,$r1
   cc358:	a6 74       	lbi333 $r1,[$r6+#0x4]
   cc35a:	ae 40       	sbi333 $r1,[$r0+#0x0]
   cc35c:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   cc360:	38 00 1c 02 	lw $r0,[$r0+($r7<<#0x0)]
   cc364:	a6 81       	lbi333 $r2,[$r0+#0x1]
   cc366:	a6 c0       	lbi333 $r3,[$r0+#0x0]
   cc368:	a6 42       	lbi333 $r1,[$r0+#0x2]
   cc36a:	40 21 20 08 	slli $r2,$r2,#8
   cc36e:	a6 03       	lbi333 $r0,[$r0+#0x3]
   cc370:	fe 9f       	or33 $r2,$r3
   cc372:	40 10 c0 08 	slli $r1,$r1,#16
   cc376:	fe 57       	or33 $r1,$r2
   cc378:	40 00 60 08 	slli $r0,$r0,#24
   cc37c:	fe 0f       	or33 $r0,$r1
   cc37e:	a4 72       	lhi333 $r1,[$r6+#0x4]
   cc380:	92 28       	srli45 $r1,#8
   cc382:	ae 41       	sbi333 $r1,[$r0+#0x1]
   cc384:	d5 25       	j8 cc3ce <_ble_cccd_common_cb+0xde>
   cc386:	5a 08 02 24 	bnec $r0,#2,cc3ce <_ble_cccd_common_cb+0xde>
   cc38a:	fa 78       	movpi45 $r3,#0x28
   cc38c:	42 20 8c 73 	maddr32 $r2,$r1,$r3
   cc390:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   cc394:	38 10 9e 02 	lw $r1,[$r1+($r7<<#0x2)]
   cc398:	a7 09       	lbi333 $r4,[$r1+#0x1]
   cc39a:	a7 48       	lbi333 $r5,[$r1+#0x0]
   cc39c:	a6 ca       	lbi333 $r3,[$r1+#0x2]
   cc39e:	40 42 20 08 	slli $r4,$r4,#8
   cc3a2:	a6 4b       	lbi333 $r1,[$r1+#0x3]
   cc3a4:	ff 2f       	or33 $r4,$r5
   cc3a6:	40 31 c0 08 	slli $r3,$r3,#16
   cc3aa:	fe e7       	or33 $r3,$r4
   cc3ac:	40 10 e0 08 	slli $r1,$r1,#24
   cc3b0:	fe 5f       	or33 $r1,$r3
   cc3b2:	a7 49       	lbi333 $r5,[$r1+#0x1]
   cc3b4:	a7 08       	lbi333 $r4,[$r1+#0x0]
   cc3b6:	98 f6       	add333 $r3,$r6,$r6
   cc3b8:	40 52 a0 08 	slli $r5,$r5,#8
   cc3bc:	98 d3       	add333 $r3,$r2,$r3
   cc3be:	98 6c       	add333 $r1,$r5,$r4
   cc3c0:	ac 5a       	shi333 $r1,[$r3+#0x4]
   cc3c2:	04 31 00 09 	lwi $r3,[$r2+#0x24]
   cc3c6:	c3 04       	beqz38 $r3,cc3ce <_ble_cccd_common_cb+0xde>
   cc3c8:	80 26       	mov55 $r1,$r6
   cc3ca:	80 47       	mov55 $r2,$r7
   cc3cc:	dd 23       	jral5 $r3
   cc3ce:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cc3d0 <_ble_gatt_charact_notify_indicate>:
   cc3d0:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cc3d2:	41 c1 00 13 	zeh $fp,$r2
   cc3d6:	80 81       	mov55 $r4,$r1
   cc3d8:	81 23       	mov55 $r9,$r3
   cc3da:	97 c1       	zeh33 $r7,$r0
   cc3dc:	5b c0 01 04 	beqc $fp,#1,cc3e4 <_ble_gatt_charact_notify_indicate+0x14>
   cc3e0:	fb 0d       	movpi45 $r8,#0x1d
   cc3e2:	d5 02       	j8 cc3e6 <_ble_gatt_charact_notify_indicate+0x16>
   cc3e4:	fb 0b       	movpi45 $r8,#0x1b
   cc3e6:	5a 48 99 2c 	bnec $r4,#153,cc43e <_ble_gatt_charact_notify_indicate+0x6e>
   cc3ea:	2e 17 ce 5c 	lbi.gp $r1,[+#-12708]
   cc3ee:	3c 0d f3 96 	lwi.gp $r0,[+#-12712]
   cc3f2:	84 80       	movi55 $r4,#0
   cc3f4:	a4 81       	lhi333 $r2,[$r0+#0x2]
   cc3f6:	4c 23 80 08 	beq $r2,$r7,cc406 <_ble_gatt_charact_notify_indicate+0x36>
   cc3fa:	9d 21       	addi333 $r4,$r4,#1
   cc3fc:	97 20       	zeb33 $r4,$r4
   cc3fe:	50 00 00 28 	addi $r0,$r0,#40
   cc402:	e2 81       	slt45 $r4,$r1
   cc404:	e9 f8       	bnezs8 cc3f4 <_ble_gatt_charact_notify_indicate+0x24>
   cc406:	fa 18       	movpi45 $r0,#0x28
   cc408:	ff 04       	mul33 $r4,$r0
   cc40a:	84 c0       	movi55 $r6,#0
   cc40c:	3c 1d f3 96 	lwi.gp $r1,[+#-12712]
   cc410:	98 36       	add333 $r0,$r6,$r6
   cc412:	98 08       	add333 $r0,$r1,$r0
   cc414:	98 04       	add333 $r0,$r0,$r4
   cc416:	a4 02       	lhi333 $r0,[$r0+#0x4]
   cc418:	40 0e 00 02 	and $r0,$fp,$r0
   cc41c:	c0 0c       	beqz38 $r0,cc434 <_ble_gatt_charact_notify_indicate+0x64>
   cc41e:	80 08       	mov55 $r0,$r8
   cc420:	80 27       	mov55 $r1,$r7
   cc422:	80 46       	mov55 $r2,$r6
   cc424:	80 69       	mov55 $r3,$r9
   cc426:	f4 81       	swi37.sp $r4,[+#0x4]
   cc428:	49 ff fe 6c 	jal cc100 <ATT_HandleValueReportMux>
   cc42c:	f4 01       	lwi37.sp $r4,[+#0x4]
   cc42e:	c0 03       	beqz38 $r0,cc434 <_ble_gatt_charact_notify_indicate+0x64>
   cc430:	84 01       	movi55 $r0,#1
   cc432:	d5 0c       	j8 cc44a <_ble_gatt_charact_notify_indicate+0x7a>
   cc434:	9d b1       	addi333 $r6,$r6,#1
   cc436:	5a 68 10 eb 	bnec $r6,#16,cc40c <_ble_gatt_charact_notify_indicate+0x3c>
   cc43a:	84 00       	movi55 $r0,#0
   cc43c:	d5 07       	j8 cc44a <_ble_gatt_charact_notify_indicate+0x7a>
   cc43e:	80 08       	mov55 $r0,$r8
   cc440:	80 27       	mov55 $r1,$r7
   cc442:	96 a0       	zeb33 $r2,$r4
   cc444:	80 69       	mov55 $r3,$r9
   cc446:	49 ff fe 5d 	jal cc100 <ATT_HandleValueReportMux>
   cc44a:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cc44c <BLE_gatt_charact_notify>:
   cc44c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cc44e:	96 01       	zeh33 $r0,$r0
   cc450:	64 42 00 02 	mfsr $r4,$PSW
   cc454:	64 02 00 43 	setgie.d
   cc458:	64 00 00 08 	dsb
   cc45c:	46 30 01 00 	sethi $r3,#0x100
   cc460:	58 31 80 b0 	ori $r3,$r3,#0xb0
   cc464:	b4 43       	lwi450 $r2,[$r3]
   cc466:	9d 51       	addi333 $r5,$r2,#1
   cc468:	b6 a3       	swi450 $r5,[$r3]
   cc46a:	ca 06       	bnez38 $r2,cc476 <BLE_gatt_charact_notify+0x2a>
   cc46c:	46 20 01 00 	sethi $r2,#0x100
   cc470:	58 21 00 bc 	ori $r2,$r2,#0xbc
   cc474:	b6 82       	swi450 $r4,[$r2]
   cc476:	84 41       	movi55 $r2,#1
   cc478:	84 60       	movi55 $r3,#0
   cc47a:	49 ff ff ab 	jal cc3d0 <_ble_gatt_charact_notify_indicate>
   cc47e:	46 00 01 00 	sethi $r0,#0x100
   cc482:	58 00 00 b0 	ori $r0,$r0,#0xb0
   cc486:	b4 20       	lwi450 $r1,[$r0]
   cc488:	9e 49       	subi333 $r1,$r1,#1
   cc48a:	b6 20       	swi450 $r1,[$r0]
   cc48c:	b4 00       	lwi450 $r0,[$r0]
   cc48e:	c8 0c       	bnez38 $r0,cc4a6 <BLE_gatt_charact_notify+0x5a>
   cc490:	46 00 01 00 	sethi $r0,#0x100
   cc494:	58 00 00 bc 	ori $r0,$r0,#0xbc
   cc498:	b4 00       	lwi450 $r0,[$r0]
   cc49a:	96 04       	xlsb33 $r0,$r0
   cc49c:	c0 05       	beqz38 $r0,cc4a6 <BLE_gatt_charact_notify+0x5a>
   cc49e:	64 12 00 43 	setgie.e
   cc4a2:	64 00 00 08 	dsb
   cc4a6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cc4a8 <_ble_gatt_set_uuid>:
   cc4a8:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cc4aa:	96 48       	zeb33 $r1,$r1
   cc4ac:	9d 84       	addi333 $r6,$r0,#4
   cc4ae:	80 e2       	mov55 $r7,$r2
   cc4b0:	10 10 00 0c 	sbi $r1,[$r0+#0xc]
   cc4b4:	5a 18 02 0c 	bnec $r1,#2,cc4cc <_ble_gatt_set_uuid+0x24>
   cc4b8:	a6 11       	lbi333 $r0,[$r2+#0x1]
   cc4ba:	a6 50       	lbi333 $r1,[$r2+#0x0]
   cc4bc:	40 00 20 08 	slli $r0,$r0,#8
   cc4c0:	98 01       	add333 $r0,$r0,$r1
   cc4c2:	96 01       	zeh33 $r0,$r0
   cc4c4:	ae 34       	sbi333 $r0,[$r6+#0x4]
   cc4c6:	92 08       	srli45 $r0,#8
   cc4c8:	ae 35       	sbi333 $r0,[$r6+#0x5]
   cc4ca:	d5 12       	j8 cc4ee <_ble_gatt_set_uuid+0x46>
   cc4cc:	fa 00       	movpi45 $r0,#0x10
   cc4ce:	49 00 2d bb 	jal d2044 <malloc>
   cc4d2:	40 10 20 09 	srli $r1,$r0,#8
   cc4d6:	ae 75       	sbi333 $r1,[$r6+#0x5]
   cc4d8:	40 30 60 09 	srli $r3,$r0,#24
   cc4dc:	40 10 40 09 	srli $r1,$r0,#16
   cc4e0:	ae 76       	sbi333 $r1,[$r6+#0x6]
   cc4e2:	ae 34       	sbi333 $r0,[$r6+#0x4]
   cc4e4:	ae f7       	sbi333 $r3,[$r6+#0x7]
   cc4e6:	80 27       	mov55 $r1,$r7
   cc4e8:	fa 40       	movpi45 $r2,#0x10
   cc4ea:	49 ff dd af 	jal c8048 <memcpy>
   cc4ee:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cc4f0 <_ble_gatt_new_attribute>:
   cc4f0:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cc4f2:	83 80       	mov55 $fp,$r0
   cc4f4:	80 e2       	mov55 $r7,$r2
   cc4f6:	3c 03 e7 2f 	lhi.gp $r0,[+#-12706]
   cc4fa:	81 01       	mov55 $r8,$r1
   cc4fc:	3c 13 e7 30 	lhi.gp $r1,[+#-12704]
   cc500:	96 d8       	zeb33 $r3,$r3
   cc502:	9c 01       	addi333 $r0,$r0,#1
   cc504:	f3 81       	swi37.sp $r3,[+#0x4]
   cc506:	40 a2 00 13 	zeh $r10,$r4
   cc50a:	40 92 80 13 	zeh $r9,$r5
   cc50e:	e0 01       	slts45 $r0,$r1
   cc510:	e9 1a       	bnezs8 cc544 <_ble_gatt_new_attribute+0x54>
   cc512:	8c 2a       	addi45 $r1,#10
   cc514:	96 49       	zeh33 $r1,$r1
   cc516:	3c 1b e7 30 	shi.gp $r1,[+#-12704]
   cc51a:	94 0a       	slli333 $r0,$r1,#2
   cc51c:	49 00 2d 94 	jal d2044 <malloc>
   cc520:	3c 23 e7 2f 	lhi.gp $r2,[+#-12706]
   cc524:	80 60       	mov55 $r3,$r0
   cc526:	c2 0d       	beqz38 $r2,cc540 <_ble_gatt_new_attribute+0x50>
   cc528:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   cc52c:	9c 91       	addi333 $r2,$r2,#1
   cc52e:	94 92       	slli333 $r2,$r2,#2
   cc530:	b6 1f       	swi450 $r0,[$sp]
   cc532:	49 ff dd 8b 	jal c8048 <memcpy>
   cc536:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   cc53a:	49 00 2d 20 	jal d1f7a <free>
   cc53e:	b4 7f       	lwi450 $r3,[$sp]
   cc540:	3c 3f f4 b3 	swi.gp $r3,[+#-11572]
   cc544:	3e 6f ce 5e 	addi.gp $r6,#-12706
   cc548:	a4 70       	lhi333 $r1,[$r6+#0x0]
   cc54a:	9c 49       	addi333 $r1,$r1,#1
   cc54c:	96 49       	zeh33 $r1,$r1
   cc54e:	ac 70       	shi333 $r1,[$r6+#0x0]
   cc550:	9c 49       	addi333 $r1,$r1,#1
   cc552:	3c 1b e9 7d 	shi.gp $r1,[+#-11526]
   cc556:	fa 04       	movpi45 $r0,#0x14
   cc558:	49 00 2d 76 	jal d2044 <malloc>
   cc55c:	40 14 20 09 	srli $r1,$r8,#8
   cc560:	ae 41       	sbi333 $r1,[$r0+#0x1]
   cc562:	40 14 40 09 	srli $r1,$r8,#16
   cc566:	ae 42       	sbi333 $r1,[$r0+#0x2]
   cc568:	40 13 a0 09 	srli $r1,$r7,#8
   cc56c:	10 80 00 00 	sbi $r8,[$r0+#0x0]
   cc570:	af c4       	sbi333 $r7,[$r0+#0x4]
   cc572:	ae 45       	sbi333 $r1,[$r0+#0x5]
   cc574:	93 18       	srli45 $r8,#24
   cc576:	40 13 c0 09 	srli $r1,$r7,#16
   cc57a:	92 f8       	srli45 $r7,#24
   cc57c:	10 80 00 03 	sbi $r8,[$r0+#0x3]
   cc580:	ae 46       	sbi333 $r1,[$r0+#0x6]
   cc582:	af c7       	sbi333 $r7,[$r0+#0x7]
   cc584:	f1 01       	lwi37.sp $r1,[+#0x4]
   cc586:	10 a0 00 0e 	sbi $r10,[$r0+#0xe]
   cc58a:	10 90 00 10 	sbi $r9,[$r0+#0x10]
   cc58e:	93 48       	srli45 $r10,#8
   cc590:	93 28       	srli45 $r9,#8
   cc592:	10 10 00 0d 	sbi $r1,[$r0+#0xd]
   cc596:	10 a0 00 0f 	sbi $r10,[$r0+#0xf]
   cc59a:	10 90 00 11 	sbi $r9,[$r0+#0x11]
   cc59e:	a4 70       	lhi333 $r1,[$r6+#0x0]
   cc5a0:	40 20 a0 09 	srli $r2,$r1,#8
   cc5a4:	10 20 00 13 	sbi $r2,[$r0+#0x13]
   cc5a8:	10 10 00 12 	sbi $r1,[$r0+#0x12]
   cc5ac:	3c 2d f4 b3 	lwi.gp $r2,[+#-11572]
   cc5b0:	38 01 06 0a 	sw $r0,[$r2+($r1<<#0x2)]
   cc5b4:	b6 1c       	swi450 $r0,[$fp]
   cc5b6:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cc5b8 <BLE_gatt_add_charact>:
   cc5b8:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   cc5ba:	80 c0       	mov55 $r6,$r0
   cc5bc:	b4 00       	lwi450 $r0,[$r0]
   cc5be:	80 e6       	mov55 $r7,$r6
   cc5c0:	9c 03       	addi333 $r0,$r0,#3
   cc5c2:	49 00 2d 41 	jal d2044 <malloc>
   cc5c6:	b4 86       	lwi450 $r4,[$r6]
   cc5c8:	84 40       	movi55 $r2,#0
   cc5ca:	9d 23       	addi333 $r4,$r4,#3
   cc5cc:	80 20       	mov55 $r1,$r0
   cc5ce:	80 a2       	mov55 $r5,$r2
   cc5d0:	b0 01       	addri36.sp $r0,#0x4
   cc5d2:	44 30 00 80 	movi $r3,#128
   cc5d6:	97 21       	zeh33 $r4,$r4
   cc5d8:	49 ff ff 8c 	jal cc4f0 <_ble_gatt_new_attribute>
   cc5dc:	00 33 00 15 	lbi $r3,[$r6+#0x15]
   cc5e0:	02 43 00 0b 	lhi $r4,[$r6+#0x16]
   cc5e4:	02 53 00 0c 	lhi $r5,[$r6+#0x18]
   cc5e8:	a0 77       	lwi333 $r1,[$r6+#0x1c]
   cc5ea:	04 23 00 08 	lwi $r2,[$r6+#0x20]
   cc5ee:	80 1f       	mov55 $r0,$sp
   cc5f0:	49 ff ff 80 	jal cc4f0 <_ble_gatt_new_attribute>
   cc5f4:	f0 01       	lwi37.sp $r0,[+#0x4]
   cc5f6:	84 22       	movi55 $r1,#2
   cc5f8:	3e 2d 32 24 	addi.gp $r2,#-183772
   cc5fc:	49 ff ff 56 	jal cc4a8 <_ble_gatt_set_uuid>
   cc600:	a2 79       	lwi333.bi $r1,[$r7],#0x4
   cc602:	b4 1f       	lwi450 $r0,[$sp]
   cc604:	80 47       	mov55 $r2,$r7
   cc606:	96 48       	zeb33 $r1,$r1
   cc608:	49 ff ff 50 	jal cc4a8 <_ble_gatt_set_uuid>
   cc60c:	f0 01       	lwi37.sp $r0,[+#0x4]
   cc60e:	a6 81       	lbi333 $r2,[$r0+#0x1]
   cc610:	a6 c0       	lbi333 $r3,[$r0+#0x0]
   cc612:	a6 42       	lbi333 $r1,[$r0+#0x2]
   cc614:	40 21 20 08 	slli $r2,$r2,#8
   cc618:	a6 03       	lbi333 $r0,[$r0+#0x3]
   cc61a:	fe 9f       	or33 $r2,$r3
   cc61c:	40 10 c0 08 	slli $r1,$r1,#16
   cc620:	fe 57       	or33 $r1,$r2
   cc622:	40 00 60 08 	slli $r0,$r0,#24
   cc626:	fe 0f       	or33 $r0,$r1
   cc628:	00 13 00 14 	lbi $r1,[$r6+#0x14]
   cc62c:	ae 40       	sbi333 $r1,[$r0+#0x0]
   cc62e:	f0 01       	lwi37.sp $r0,[+#0x4]
   cc630:	a6 81       	lbi333 $r2,[$r0+#0x1]
   cc632:	a6 c0       	lbi333 $r3,[$r0+#0x0]
   cc634:	a6 42       	lbi333 $r1,[$r0+#0x2]
   cc636:	40 21 20 08 	slli $r2,$r2,#8
   cc63a:	a6 03       	lbi333 $r0,[$r0+#0x3]
   cc63c:	fe 9f       	or33 $r2,$r3
   cc63e:	40 10 c0 08 	slli $r1,$r1,#16
   cc642:	fe 57       	or33 $r1,$r2
   cc644:	40 00 60 08 	slli $r0,$r0,#24
   cc648:	fe 0f       	or33 $r0,$r1
   cc64a:	b4 3f       	lwi450 $r1,[$sp]
   cc64c:	00 10 80 12 	lbi $r1,[$r1+#0x12]
   cc650:	ae 41       	sbi333 $r1,[$r0+#0x1]
   cc652:	f0 01       	lwi37.sp $r0,[+#0x4]
   cc654:	a6 81       	lbi333 $r2,[$r0+#0x1]
   cc656:	a6 c0       	lbi333 $r3,[$r0+#0x0]
   cc658:	a6 42       	lbi333 $r1,[$r0+#0x2]
   cc65a:	40 21 20 08 	slli $r2,$r2,#8
   cc65e:	a6 03       	lbi333 $r0,[$r0+#0x3]
   cc660:	fe 9f       	or33 $r2,$r3
   cc662:	40 10 c0 08 	slli $r1,$r1,#16
   cc666:	fe 57       	or33 $r1,$r2
   cc668:	40 00 60 08 	slli $r0,$r0,#24
   cc66c:	fe 0f       	or33 $r0,$r1
   cc66e:	b4 3f       	lwi450 $r1,[$sp]
   cc670:	00 10 80 13 	lbi $r1,[$r1+#0x13]
   cc674:	ae 42       	sbi333 $r1,[$r0+#0x2]
   cc676:	f1 01       	lwi37.sp $r1,[+#0x4]
   cc678:	a6 c9       	lbi333 $r3,[$r1+#0x1]
   cc67a:	a7 08       	lbi333 $r4,[$r1+#0x0]
   cc67c:	a6 8a       	lbi333 $r2,[$r1+#0x2]
   cc67e:	a6 0b       	lbi333 $r0,[$r1+#0x3]
   cc680:	40 31 a0 08 	slli $r3,$r3,#8
   cc684:	fe e7       	or33 $r3,$r4
   cc686:	40 21 40 08 	slli $r2,$r2,#16
   cc68a:	fe 9f       	or33 $r2,$r3
   cc68c:	40 00 60 08 	slli $r0,$r0,#24
   cc690:	fe 17       	or33 $r0,$r2
   cc692:	b4 46       	lwi450 $r2,[$r6]
   cc694:	80 27       	mov55 $r1,$r7
   cc696:	9c 03       	addi333 $r0,$r0,#3
   cc698:	49 ff dc d8 	jal c8048 <memcpy>
   cc69c:	b4 1f       	lwi450 $r0,[$sp]
   cc69e:	00 10 00 12 	lbi $r1,[$r0+#0x12]
   cc6a2:	00 00 00 13 	lbi $r0,[$r0+#0x13]
   cc6a6:	40 00 20 08 	slli $r0,$r0,#8
   cc6aa:	fe 0f       	or33 $r0,$r1
   cc6ac:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000cc6ae <BLE_gatt_add_service>:
   cc6ae:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   cc6b0:	80 c0       	mov55 $r6,$r0
   cc6b2:	a0 01       	lwi333 $r0,[$r0+#0x4]
   cc6b4:	49 00 2c c8 	jal d2044 <malloc>
   cc6b8:	a5 32       	lhi333 $r4,[$r6+#0x4]
   cc6ba:	84 40       	movi55 $r2,#0
   cc6bc:	80 a2       	mov55 $r5,$r2
   cc6be:	80 20       	mov55 $r1,$r0
   cc6c0:	44 30 00 80 	movi $r3,#128
   cc6c4:	b0 01       	addri36.sp $r0,#0x4
   cc6c6:	49 ff ff 15 	jal cc4f0 <_ble_gatt_new_attribute>
   cc6ca:	f0 01       	lwi37.sp $r0,[+#0x4]
   cc6cc:	80 46       	mov55 $r2,$r6
   cc6ce:	84 22       	movi55 $r1,#2
   cc6d0:	49 ff fe ec 	jal cc4a8 <_ble_gatt_set_uuid>
   cc6d4:	f1 01       	lwi37.sp $r1,[+#0x4]
   cc6d6:	a6 09       	lbi333 $r0,[$r1+#0x1]
   cc6d8:	a6 c8       	lbi333 $r3,[$r1+#0x0]
   cc6da:	a6 8a       	lbi333 $r2,[$r1+#0x2]
   cc6dc:	40 00 20 08 	slli $r0,$r0,#8
   cc6e0:	fe 1f       	or33 $r0,$r3
   cc6e2:	40 21 40 08 	slli $r2,$r2,#16
   cc6e6:	fe 87       	or33 $r2,$r0
   cc6e8:	a6 0b       	lbi333 $r0,[$r1+#0x3]
   cc6ea:	50 13 00 08 	addi $r1,$r6,#8
   cc6ee:	40 00 60 08 	slli $r0,$r0,#24
   cc6f2:	fe 17       	or33 $r0,$r2
   cc6f4:	a0 b1       	lwi333 $r2,[$r6+#0x4]
   cc6f6:	49 ff dc a9 	jal c8048 <memcpy>
   cc6fa:	f0 01       	lwi37.sp $r0,[+#0x4]
   cc6fc:	00 10 00 12 	lbi $r1,[$r0+#0x12]
   cc700:	00 00 00 13 	lbi $r0,[$r0+#0x13]
   cc704:	40 00 20 08 	slli $r0,$r0,#8
   cc708:	fe 0f       	or33 $r0,$r1
   cc70a:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000cc70c <_ble_gatt_hook_cccd_and_char>:
   cc70c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cc70e:	2e a7 ce 5c 	lbi.gp $r10,[+#-12708]
   cc712:	80 c0       	mov55 $r6,$r0
   cc714:	8d 41       	addi45 $r10,#1
   cc716:	fa 18       	movpi45 $r0,#0x28
   cc718:	42 a5 00 24 	mul $r10,$r10,$r0
   cc71c:	80 0a       	mov55 $r0,$r10
   cc71e:	81 21       	mov55 $r9,$r1
   cc720:	49 00 2c 92 	jal d2044 <malloc>
   cc724:	2e 17 ce 5c 	lbi.gp $r1,[+#-12708]
   cc728:	81 00       	mov55 $r8,$r0
   cc72a:	c1 0a       	beqz38 $r1,cc73e <_ble_gatt_hook_cccd_and_char+0x32>
   cc72c:	3c 1d f3 96 	lwi.gp $r1,[+#-12712]
   cc730:	80 4a       	mov55 $r2,$r10
   cc732:	49 ff dc 8b 	jal c8048 <memcpy>
   cc736:	3c 0d f3 96 	lwi.gp $r0,[+#-12712]
   cc73a:	49 00 2c 20 	jal d1f7a <free>
   cc73e:	3e 7f ce 5c 	addi.gp $r7,#-12708
   cc742:	a6 38       	lbi333 $r0,[$r7+#0x0]
   cc744:	fb 58       	movpi45 $r10,#0x28
   cc746:	80 28       	mov55 $r1,$r8
   cc748:	42 10 28 73 	maddr32 $r1,$r0,$r10
   cc74c:	fa 50       	movpi45 $r2,#0x20
   cc74e:	9c 0c       	addi333 $r0,$r1,#4
   cc750:	84 20       	movi55 $r1,#0
   cc752:	49 ff dc 9b 	jal c8088 <memset>
   cc756:	a6 b8       	lbi333 $r2,[$r7+#0x0]
   cc758:	00 13 00 13 	lbi $r1,[$r6+#0x13]
   cc75c:	00 33 00 12 	lbi $r3,[$r6+#0x12]
   cc760:	80 08       	mov55 $r0,$r8
   cc762:	42 01 28 73 	maddr32 $r0,$r2,$r10
   cc766:	40 10 a0 08 	slli $r1,$r1,#8
   cc76a:	fe 5f       	or33 $r1,$r3
   cc76c:	ac 40       	shi333 $r1,[$r0+#0x0]
   cc76e:	9c 91       	addi333 $r2,$r2,#1
   cc770:	00 14 80 13 	lbi $r1,[$r9+#0x13]
   cc774:	00 34 80 12 	lbi $r3,[$r9+#0x12]
   cc778:	40 10 a0 08 	slli $r1,$r1,#8
   cc77c:	fe 5f       	or33 $r1,$r3
   cc77e:	ac 41       	shi333 $r1,[$r0+#0x2]
   cc780:	a7 35       	lbi333 $r4,[$r6+#0x5]
   cc782:	a7 74       	lbi333 $r5,[$r6+#0x4]
   cc784:	a6 f6       	lbi333 $r3,[$r6+#0x6]
   cc786:	a6 77       	lbi333 $r1,[$r6+#0x7]
   cc788:	40 42 20 08 	slli $r4,$r4,#8
   cc78c:	ff 2f       	or33 $r4,$r5
   cc78e:	40 31 c0 08 	slli $r3,$r3,#16
   cc792:	fe e7       	or33 $r3,$r4
   cc794:	40 10 e0 08 	slli $r1,$r1,#24
   cc798:	fe 5f       	or33 $r1,$r3
   cc79a:	14 10 00 09 	swi $r1,[$r0+#0x24]
   cc79e:	3e 1c 82 f0 	addi.gp $r1,#-228624
   cc7a2:	40 00 a0 09 	srli $r0,$r1,#8
   cc7a6:	ae 35       	sbi333 $r0,[$r6+#0x5]
   cc7a8:	40 00 c0 09 	srli $r0,$r1,#16
   cc7ac:	ae 74       	sbi333 $r1,[$r6+#0x4]
   cc7ae:	ae 36       	sbi333 $r0,[$r6+#0x6]
   cc7b0:	92 38       	srli45 $r1,#24
   cc7b2:	ae 77       	sbi333 $r1,[$r6+#0x7]
   cc7b4:	3c 8f f3 96 	swi.gp $r8,[+#-12712]
   cc7b8:	ae b8       	sbi333 $r2,[$r7+#0x0]
   cc7ba:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cc7bc <_ble_gatt_check_cccd>:
   cc7bc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cc7be:	00 10 00 0c 	lbi $r1,[$r0+#0xc]
   cc7c2:	5a 18 02 2e 	bnec $r1,#2,cc81e <_ble_gatt_check_cccd+0x62>
   cc7c6:	00 20 00 09 	lbi $r2,[$r0+#0x9]
   cc7ca:	00 10 00 08 	lbi $r1,[$r0+#0x8]
   cc7ce:	40 21 20 08 	slli $r2,$r2,#8
   cc7d2:	fe 8f       	or33 $r2,$r1
   cc7d4:	44 10 29 02 	movi $r1,#10498
   cc7d8:	4c 20 c0 23 	bne $r2,$r1,cc81e <_ble_gatt_check_cccd+0x62>
   cc7dc:	00 10 00 13 	lbi $r1,[$r0+#0x13]
   cc7e0:	00 20 00 12 	lbi $r2,[$r0+#0x12]
   cc7e4:	40 10 a0 08 	slli $r1,$r1,#8
   cc7e8:	fe 57       	or33 $r1,$r2
   cc7ea:	3c 4d f4 b3 	lwi.gp $r4,[+#-11572]
   cc7ee:	44 50 28 03 	movi $r5,#10243
   cc7f2:	d5 13       	j8 cc818 <_ble_gatt_check_cccd+0x5c>
   cc7f4:	38 32 0a 02 	lw $r3,[$r4+($r2<<#0x2)]
   cc7f8:	9c dd       	addi333 $r3,$r3,#5
   cc7fa:	a7 9f       	lbi333 $r6,[$r3+#0x7]
   cc7fc:	5a 68 02 0d 	bnec $r6,#2,cc816 <_ble_gatt_check_cccd+0x5a>
   cc800:	a7 9b       	lbi333 $r6,[$r3+#0x3]
   cc802:	a6 dc       	lbi333 $r3,[$r3+#0x4]
   cc804:	40 31 a0 08 	slli $r3,$r3,#8
   cc808:	fe f7       	or33 $r3,$r6
   cc80a:	db 06       	bnes38 $r3,cc816 <_ble_gatt_check_cccd+0x5a>
   cc80c:	38 12 06 02 	lw $r1,[$r4+($r1<<#0x2)]
   cc810:	49 ff ff 7e 	jal cc70c <_ble_gatt_hook_cccd_and_char>
   cc814:	d5 05       	j8 cc81e <_ble_gatt_check_cccd+0x62>
   cc816:	80 22       	mov55 $r1,$r2
   cc818:	9e 89       	subi333 $r2,$r1,#1
   cc81a:	96 91       	zeh33 $r2,$r2
   cc81c:	ca ec       	bnez38 $r2,cc7f4 <_ble_gatt_check_cccd+0x38>
   cc81e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cc820 <BLE_gatt_add_descrip>:
   cc820:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   cc822:	50 60 00 10 	addi $r6,$r0,#16
   cc826:	a6 f4       	lbi333 $r3,[$r6+#0x4]
   cc828:	a5 33       	lhi333 $r4,[$r6+#0x6]
   cc82a:	a5 74       	lhi333 $r5,[$r6+#0x8]
   cc82c:	a0 73       	lwi333 $r1,[$r6+#0xc]
   cc82e:	a0 b4       	lwi333 $r2,[$r6+#0x10]
   cc830:	b0 01       	addri36.sp $r0,#0x4
   cc832:	49 ff fe 5f 	jal cc4f0 <_ble_gatt_new_attribute>
   cc836:	50 23 7f f0 	addi $r2,$r6,#-16
   cc83a:	a2 51       	lwi333.bi $r1,[$r2],#0x4
   cc83c:	f0 01       	lwi37.sp $r0,[+#0x4]
   cc83e:	96 48       	zeb33 $r1,$r1
   cc840:	49 ff fe 34 	jal cc4a8 <_ble_gatt_set_uuid>
   cc844:	f0 01       	lwi37.sp $r0,[+#0x4]
   cc846:	49 ff ff bb 	jal cc7bc <_ble_gatt_check_cccd>
   cc84a:	f0 01       	lwi37.sp $r0,[+#0x4]
   cc84c:	00 10 00 12 	lbi $r1,[$r0+#0x12]
   cc850:	00 00 00 13 	lbi $r0,[$r0+#0x13]
   cc854:	40 00 20 08 	slli $r0,$r0,#8
   cc858:	fe 0f       	or33 $r0,$r1
   cc85a:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000cc85c <ATT_Client_GetHandleValueReport>:
   cc85c:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cc85e:	81 00       	mov55 $r8,$r0
   cc860:	a6 00       	lbi333 $r0,[$r0+#0x0]
   cc862:	5a 08 1d 09 	bnec $r0,#29,cc874 <ATT_Client_GetHandleValueReport+0x18>
   cc866:	fa 0e       	movpi45 $r0,#0x1e
   cc868:	10 0f 80 04 	sbi $r0,[$sp+#0x4]
   cc86c:	84 21       	movi55 $r1,#1
   cc86e:	b0 01       	addri36.sp $r0,#0x4
   cc870:	49 ff f6 0d 	jal cb48a <ATT_SendPduToL2CAP>
   cc874:	3e 7f c9 18 	addi.gp $r7,#-14056
   cc878:	50 73 80 5f 	addi $r7,$r7,#95
   cc87c:	00 93 80 06 	lbi $r9,[$r7+#0x6]
   cc880:	a6 3d       	lbi333 $r0,[$r7+#0x5]
   cc882:	40 94 a0 08 	slli $r9,$r9,#8
   cc886:	40 94 80 04 	or $r9,$r9,$r0
   cc88a:	8d 2a       	addi45 $r9,#10
   cc88c:	40 94 80 13 	zeh $r9,$r9
   cc890:	80 09       	mov55 $r0,$r9
   cc892:	49 00 2b d9 	jal d2044 <malloc>
   cc896:	80 49       	mov55 $r2,$r9
   cc898:	84 20       	movi55 $r1,#0
   cc89a:	80 c0       	mov55 $r6,$r0
   cc89c:	49 ff db f6 	jal c8088 <memset>
   cc8a0:	44 00 30 14 	movi $r0,#12308
   cc8a4:	b6 06       	swi450 $r0,[$r6]
   cc8a6:	a6 3f       	lbi333 $r0,[$r7+#0x7]
   cc8a8:	49 ff f0 96 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   cc8ac:	ac 32       	shi333 $r0,[$r6+#0x4]
   cc8ae:	00 04 00 02 	lbi $r0,[$r8+#0x2]
   cc8b2:	00 14 00 01 	lbi $r1,[$r8+#0x1]
   cc8b6:	40 00 20 08 	slli $r0,$r0,#8
   cc8ba:	98 01       	add333 $r0,$r0,$r1
   cc8bc:	a6 be       	lbi333 $r2,[$r7+#0x6]
   cc8be:	ac 33       	shi333 $r0,[$r6+#0x6]
   cc8c0:	a6 3d       	lbi333 $r0,[$r7+#0x5]
   cc8c2:	40 21 20 08 	slli $r2,$r2,#8
   cc8c6:	fe 87       	or33 $r2,$r0
   cc8c8:	9e 93       	subi333 $r2,$r2,#3
   cc8ca:	96 91       	zeh33 $r2,$r2
   cc8cc:	50 14 00 03 	addi $r1,$r8,#3
   cc8d0:	50 03 00 0a 	addi $r0,$r6,#10
   cc8d4:	ac b4       	shi333 $r2,[$r6+#0x8]
   cc8d6:	49 ff db b9 	jal c8048 <memcpy>
   cc8da:	80 06       	mov55 $r0,$r6
   cc8dc:	49 ff ec 2a 	jal ca130 <bt_infom_ap>
   cc8e0:	80 06       	mov55 $r0,$r6
   cc8e2:	49 00 2b 4c 	jal d1f7a <free>
   cc8e6:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cc8e8 <sm_init>:
   cc8e8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cc8ea:	84 20       	movi55 $r1,#0
   cc8ec:	3c 1b e9 6c 	shi.gp $r1,[+#-11560]
   cc8f0:	3e 0f c9 c0 	addi.gp $r0,#-13888
   cc8f4:	50 20 00 40 	addi $r2,$r0,#64
   cc8f8:	aa 41       	swi333.bi $r1,[$r0],#0x4
   cc8fa:	4c 01 7f ff 	bne $r0,$r2,cc8f8 <sm_init+0x10>
   cc8fe:	49 00 09 57 	jal cdbac <sm_hal_init>
   cc902:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cc904 <SM_FinishPairing>:
   cc904:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cc906:	3e 7f c9 c0 	addi.gp $r7,#-13888
   cc90a:	97 80       	zeb33 $r6,$r0
   cc90c:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   cc910:	54 90 80 ff 	andi $r9,$r1,#0xff
   cc914:	54 81 00 ff 	andi $r8,$r2,#0xff
   cc918:	c0 33       	beqz38 $r0,cc97e <SM_FinishPairing+0x7a>
   cc91a:	80 06       	mov55 $r0,$r6
   cc91c:	49 00 09 d2 	jal cdcc0 <sm_hal_release_timer>
   cc920:	4e 92 00 24 	beqz $r9,cc968 <SM_FinishPairing+0x64>
   cc924:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   cc928:	00 10 00 0f 	lbi $r1,[$r0+#0xf]
   cc92c:	e6 24       	slti45 $r1,#4
   cc92e:	e9 09       	bnezs8 cc940 <SM_FinishPairing+0x3c>
   cc930:	50 40 00 b4 	addi $r4,$r0,#180
   cc934:	50 00 00 a4 	addi $r0,$r0,#164
   cc938:	3a 00 0c 00 	lmw.bi $r0,[$r0],$r3,#0x0    ! {$r0~$r3}
   cc93c:	3a 02 0c 20 	smw.bi $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   cc940:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   cc944:	a6 c3       	lbi333 $r3,[$r0+#0x3]
   cc946:	00 10 00 0b 	lbi $r1,[$r0+#0xb]
   cc94a:	96 cf       	fexti33 $r3,#0x1
   cc94c:	5a 38 01 0e 	bnec $r3,#1,cc968 <SM_FinishPairing+0x64>
   cc950:	96 4f       	fexti33 $r1,#0x1
   cc952:	4c 11 c0 0b 	bne $r1,$r3,cc968 <SM_FinishPairing+0x64>
   cc956:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   cc95a:	58 10 80 01 	ori $r1,$r1,#0x1
   cc95e:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   cc962:	80 06       	mov55 $r0,$r6
   cc964:	49 00 07 dd 	jal cd91e <sm_hal_flash_save_data>
   cc968:	80 06       	mov55 $r0,$r6
   cc96a:	80 28       	mov55 $r1,$r8
   cc96c:	49 00 09 41 	jal cdbee <sm_hal_infom_auth_status>
   cc970:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   cc974:	49 00 2b 03 	jal d1f7a <free>
   cc978:	84 00       	movi55 $r0,#0
   cc97a:	38 03 9a 0a 	sw $r0,[$r7+($r6<<#0x2)]
   cc97e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cc980 <SM_PairingFailed>:
   cc980:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cc982:	97 c0       	zeb33 $r7,$r0
   cc984:	97 88       	zeb33 $r6,$r1
   cc986:	80 07       	mov55 $r0,$r7
   cc988:	80 26       	mov55 $r1,$r6
   cc98a:	49 00 0a f5 	jal cdf74 <SM_Protocol_PairingFailed>
   cc98e:	80 07       	mov55 $r0,$r7
   cc990:	84 20       	movi55 $r1,#0
   cc992:	58 23 00 80 	ori $r2,$r6,#0x80
   cc996:	49 ff ff b7 	jal cc904 <SM_FinishPairing>
   cc99a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cc99c <SM_StartKeyDistribution>:
   cc99c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cc99e:	97 80       	zeb33 $r6,$r0
   cc9a0:	54 80 80 ff 	andi $r8,$r1,#0xff
   cc9a4:	80 06       	mov55 $r0,$r6
   cc9a6:	44 10 75 30 	movi $r1,#30000
   cc9aa:	49 00 09 90 	jal cdcca <sm_hal_set_timer>
   cc9ae:	54 04 00 01 	andi $r0,$r8,#0x1
   cc9b2:	c0 28       	beqz38 $r0,cca02 <SM_StartKeyDistribution+0x66>
   cc9b4:	3e 7f c9 c0 	addi.gp $r7,#-13888
   cc9b8:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   cc9bc:	fa 40       	movpi45 $r2,#0x10
   cc9be:	84 20       	movi55 $r1,#0
   cc9c0:	50 00 00 a4 	addi $r0,$r0,#164
   cc9c4:	49 ff db 62 	jal c8088 <memset>
   cc9c8:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   cc9cc:	50 00 80 a4 	addi $r0,$r1,#164
   cc9d0:	00 10 80 a0 	lbi $r1,[$r1+#0xa0]
   cc9d4:	49 00 09 9b 	jal cdd0a <sm_hal_get_random_number>
   cc9d8:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   cc9dc:	80 06       	mov55 $r0,$r6
   cc9de:	50 10 80 a4 	addi $r1,$r1,#164
   cc9e2:	49 00 0a 42 	jal cde66 <SM_Protocol_EncryptionInfo>
   cc9e6:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   cc9ea:	84 2a       	movi55 $r1,#10
   cc9ec:	50 00 01 04 	addi $r0,$r0,#260
   cc9f0:	49 00 09 8d 	jal cdd0a <sm_hal_get_random_number>
   cc9f4:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   cc9f8:	80 06       	mov55 $r0,$r6
   cc9fa:	50 10 81 04 	addi $r1,$r1,#260
   cc9fe:	49 00 0a 1c 	jal cde36 <SM_Protocol_MasterID>
   cca02:	54 04 00 02 	andi $r0,$r8,#0x2
   cca06:	c0 20       	beqz38 $r0,cca46 <SM_StartKeyDistribution+0xaa>
   cca08:	80 06       	mov55 $r0,$r6
   cca0a:	49 ff f0 87 	jal cab18 <ble_gap_link_GetAttr_Role>
   cca0e:	3e 1f c9 c0 	addi.gp $r1,#-13888
   cca12:	5a 08 01 09 	bnec $r0,#1,cca24 <SM_StartKeyDistribution+0x88>
   cca16:	38 50 9a 02 	lw $r5,[$r1+($r6<<#0x2)]
   cca1a:	3e 4f c1 64 	addi.gp $r4,#-16028
   cca1e:	50 52 80 e4 	addi $r5,$r5,#228
   cca22:	d5 07       	j8 cca30 <SM_StartKeyDistribution+0x94>
   cca24:	38 50 9a 02 	lw $r5,[$r1+($r6<<#0x2)]
   cca28:	3e 4f c1 74 	addi.gp $r4,#-16012
   cca2c:	50 52 80 e4 	addi $r5,$r5,#228
   cca30:	3a 02 0c 00 	lmw.bi $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   cca34:	3a 02 8c 20 	smw.bi $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   cca38:	80 06       	mov55 $r0,$r6
   cca3a:	80 24       	mov55 $r1,$r4
   cca3c:	49 00 09 e5 	jal cde06 <SM_Protocol_IdentityInfo>
   cca40:	80 06       	mov55 $r0,$r6
   cca42:	49 00 0a 5a 	jal cdef6 <SM_Protocol_IdentityAddressInfo>
   cca46:	54 84 00 04 	andi $r8,$r8,#0x4
   cca4a:	4e 82 00 12 	beqz $r8,cca6e <SM_StartKeyDistribution+0xd2>
   cca4e:	3e 7f c9 c0 	addi.gp $r7,#-13888
   cca52:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   cca56:	fa 20       	movpi45 $r1,#0x10
   cca58:	50 00 00 c4 	addi $r0,$r0,#196
   cca5c:	49 00 09 57 	jal cdd0a <sm_hal_get_random_number>
   cca60:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   cca64:	80 06       	mov55 $r0,$r6
   cca66:	50 10 80 c4 	addi $r1,$r1,#196
   cca6a:	49 00 09 b6 	jal cddd6 <SM_Protocol_SigningInfo>
   cca6e:	80 06       	mov55 $r0,$r6
   cca70:	49 ff f0 54 	jal cab18 <ble_gap_link_GetAttr_Role>
   cca74:	5a 08 01 0c 	bnec $r0,#1,cca8c <SM_StartKeyDistribution+0xf0>
   cca78:	3e 1f c9 c0 	addi.gp $r1,#-13888
   cca7c:	38 20 9a 02 	lw $r2,[$r1+($r6<<#0x2)]
   cca80:	80 26       	mov55 $r1,$r6
   cca82:	00 21 00 a2 	lbi $r2,[$r2+#0xa2]
   cca86:	49 00 00 09 	jal cca98 <SM_WaitKeyDistribution>
   cca8a:	d5 06       	j8 cca96 <SM_StartKeyDistribution+0xfa>
   cca8c:	80 06       	mov55 $r0,$r6
   cca8e:	84 21       	movi55 $r1,#1
   cca90:	84 40       	movi55 $r2,#0
   cca92:	49 ff ff 39 	jal cc904 <SM_FinishPairing>
   cca96:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cca98 <SM_WaitKeyDistribution>:
   cca98:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cca9a:	96 00       	zeb33 $r0,$r0
   cca9c:	97 88       	zeb33 $r6,$r1
   cca9e:	96 90       	zeb33 $r2,$r2
   ccaa0:	5a 00 02 0f 	beqc $r0,#2,ccabe <SM_WaitKeyDistribution+0x26>
   ccaa4:	5a 00 04 17 	beqc $r0,#4,ccad2 <SM_WaitKeyDistribution+0x3a>
   ccaa8:	5a 08 01 34 	bnec $r0,#1,ccb10 <SM_WaitKeyDistribution+0x78>
   ccaac:	96 14       	xlsb33 $r0,$r2
   ccaae:	c0 08       	beqz38 $r0,ccabe <SM_WaitKeyDistribution+0x26>
   ccab0:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ccab4:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   ccab8:	44 10 00 31 	movi $r1,#49
   ccabc:	d5 14       	j8 ccae4 <SM_WaitKeyDistribution+0x4c>
   ccabe:	54 01 00 02 	andi $r0,$r2,#0x2
   ccac2:	c0 08       	beqz38 $r0,ccad2 <SM_WaitKeyDistribution+0x3a>
   ccac4:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ccac8:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   ccacc:	44 10 00 32 	movi $r1,#50
   ccad0:	d5 0a       	j8 ccae4 <SM_WaitKeyDistribution+0x4c>
   ccad2:	54 71 00 04 	andi $r7,$r2,#0x4
   ccad6:	c7 09       	beqz38 $r7,ccae8 <SM_WaitKeyDistribution+0x50>
   ccad8:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ccadc:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   ccae0:	44 10 00 33 	movi $r1,#51
   ccae4:	ae 47       	sbi333 $r1,[$r0+#0x7]
   ccae6:	d5 15       	j8 ccb10 <SM_WaitKeyDistribution+0x78>
   ccae8:	80 06       	mov55 $r0,$r6
   ccaea:	49 ff f0 17 	jal cab18 <ble_gap_link_GetAttr_Role>
   ccaee:	80 20       	mov55 $r1,$r0
   ccaf0:	5a 08 01 07 	bnec $r0,#1,ccafe <SM_WaitKeyDistribution+0x66>
   ccaf4:	80 06       	mov55 $r0,$r6
   ccaf6:	80 47       	mov55 $r2,$r7
   ccaf8:	49 ff ff 06 	jal cc904 <SM_FinishPairing>
   ccafc:	d5 0a       	j8 ccb10 <SM_WaitKeyDistribution+0x78>
   ccafe:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ccb02:	38 10 1a 02 	lw $r1,[$r0+($r6<<#0x2)]
   ccb06:	80 06       	mov55 $r0,$r6
   ccb08:	00 10 80 a2 	lbi $r1,[$r1+#0xa2]
   ccb0c:	49 ff ff 48 	jal cc99c <SM_StartKeyDistribution>
   ccb10:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ccb12 <SM_LinkDisconnected>:
   ccb12:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ccb14:	97 80       	zeb33 $r6,$r0
   ccb16:	80 06       	mov55 $r0,$r6
   ccb18:	84 20       	movi55 $r1,#0
   ccb1a:	49 00 08 fd 	jal cdd14 <sm_hal_set_link_encrypted>
   ccb1e:	80 06       	mov55 $r0,$r6
   ccb20:	84 20       	movi55 $r1,#0
   ccb22:	49 00 08 ff 	jal cdd20 <sm_hal_set_link_authenticated>
   ccb26:	80 06       	mov55 $r0,$r6
   ccb28:	84 20       	movi55 $r1,#0
   ccb2a:	84 42       	movi55 $r2,#2
   ccb2c:	49 ff fe ec 	jal cc904 <SM_FinishPairing>
   ccb30:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ccb32 <SM_CryptoTool_16Byte_XOR>:
   ccb32:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ccb34:	84 40       	movi55 $r2,#0
   ccb36:	38 40 08 00 	lb $r4,[$r0+($r2<<#0x0)]
   ccb3a:	38 30 88 00 	lb $r3,[$r1+($r2<<#0x0)]
   ccb3e:	fe e5       	xor33 $r3,$r4
   ccb40:	38 30 88 08 	sb $r3,[$r1+($r2<<#0x0)]
   ccb44:	9c 91       	addi333 $r2,$r2,#1
   ccb46:	5a 28 10 f8 	bnec $r2,#16,ccb36 <SM_CryptoTool_16Byte_XOR+0x4>
   ccb4a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ccb4c <SM_CryptoTool_LeftShiftOneBit>:
   ccb4c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ccb4e:	a6 80       	lbi333 $r2,[$r0+#0x0]
   ccb50:	50 30 00 0f 	addi $r3,$r0,#15
   ccb54:	98 92       	add333 $r2,$r2,$r2
   ccb56:	18 20 80 01 	sbi.bi $r2,[$r1],#0x1
   ccb5a:	a6 81       	lbi333 $r2,[$r0+#0x1]
   ccb5c:	98 92       	add333 $r2,$r2,$r2
   ccb5e:	96 90       	zeb33 $r2,$r2
   ccb60:	ae 88       	sbi333 $r2,[$r1+#0x0]
   ccb62:	08 40 00 01 	lbi.bi $r4,[$r0],#0x1
   ccb66:	92 87       	srli45 $r4,#7
   ccb68:	fe a7       	or33 $r2,$r4
   ccb6a:	18 20 80 01 	sbi.bi $r2,[$r1],#0x1
   ccb6e:	4c 01 ff f6 	bne $r0,$r3,ccb5a <SM_CryptoTool_LeftShiftOneBit+0xe>
   ccb72:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ccb74 <SM_CryptoTool_init>:
   ccb74:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ccb76:	49 00 08 06 	jal cdb82 <sm_hal_cryptoTool_init>
   ccb7a:	84 20       	movi55 $r1,#0
   ccb7c:	fa 48       	movpi45 $r2,#0x18
   ccb7e:	3e 0f ce 6c 	addi.gp $r0,#-12692
   ccb82:	49 ff da 83 	jal c8088 <memset>
   ccb86:	84 20       	movi55 $r1,#0
   ccb88:	fa 40       	movpi45 $r2,#0x10
   ccb8a:	3e 0f ce 84 	addi.gp $r0,#-12668
   ccb8e:	49 ff da 7d 	jal c8088 <memset>
   ccb92:	84 00       	movi55 $r0,#0
   ccb94:	3c 0f f3 a5 	swi.gp $r0,[+#-12652]
   ccb98:	3c 0f f3 a6 	swi.gp $r0,[+#-12648]
   ccb9c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ccb9e <f5_finish>:
   ccb9e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ccba0:	96 00       	zeb33 $r0,$r0
   ccba2:	c0 06       	beqz38 $r0,ccbae <f5_finish+0x10>
   ccba4:	3c 0d f3 a1 	lwi.gp $r0,[+#-12668]
   ccba8:	c0 03       	beqz38 $r0,ccbae <f5_finish+0x10>
   ccbaa:	49 00 29 e8 	jal d1f7a <free>
   ccbae:	3c 0d f3 a2 	lwi.gp $r0,[+#-12664]
   ccbb2:	c0 03       	beqz38 $r0,ccbb8 <f5_finish+0x1a>
   ccbb4:	49 00 29 e3 	jal d1f7a <free>
   ccbb8:	84 20       	movi55 $r1,#0
   ccbba:	fa 40       	movpi45 $r2,#0x10
   ccbbc:	3e 0f ce 84 	addi.gp $r0,#-12668
   ccbc0:	49 ff da 64 	jal c8088 <memset>
   ccbc4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ccbc6 <f5_generate_ltk_cb>:
   ccbc6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ccbc8:	3c 3d f3 a4 	lwi.gp $r3,[+#-12656]
   ccbcc:	96 48       	zeb33 $r1,$r1
   ccbce:	96 90       	zeb33 $r2,$r2
   ccbd0:	dd 23       	jral5 $r3
   ccbd2:	84 00       	movi55 $r0,#0
   ccbd4:	49 ff ff e5 	jal ccb9e <f5_finish>
   ccbd8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ccbda <cmac_finish>:
   ccbda:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ccbdc:	2e 17 ce 7f 	lbi.gp $r1,[+#-12673]
   ccbe0:	c9 06       	bnez38 $r1,ccbec <cmac_finish+0x12>
   ccbe2:	3c 0d f3 9b 	lwi.gp $r0,[+#-12692]
   ccbe6:	c0 03       	beqz38 $r0,ccbec <cmac_finish+0x12>
   ccbe8:	49 00 29 c9 	jal d1f7a <free>
   ccbec:	2e 17 ce 80 	lbi.gp $r1,[+#-12672]
   ccbf0:	c9 06       	bnez38 $r1,ccbfc <cmac_finish+0x22>
   ccbf2:	3c 0d f3 9d 	lwi.gp $r0,[+#-12684]
   ccbf6:	c0 03       	beqz38 $r0,ccbfc <cmac_finish+0x22>
   ccbf8:	49 00 29 c1 	jal d1f7a <free>
   ccbfc:	3c 0d f3 9e 	lwi.gp $r0,[+#-12680]
   ccc00:	c0 03       	beqz38 $r0,ccc06 <cmac_finish+0x2c>
   ccc02:	49 00 29 bc 	jal d1f7a <free>
   ccc06:	3e 0f ce 6c 	addi.gp $r0,#-12692
   ccc0a:	8c 10       	addi45 $r0,#16
   ccc0c:	a6 43       	lbi333 $r1,[$r0+#0x3]
   ccc0e:	c1 09       	beqz38 $r1,ccc20 <cmac_finish+0x46>
   ccc10:	a6 44       	lbi333 $r1,[$r0+#0x4]
   ccc12:	c1 07       	beqz38 $r1,ccc20 <cmac_finish+0x46>
   ccc14:	84 20       	movi55 $r1,#0
   ccc16:	ae 43       	sbi333 $r1,[$r0+#0x3]
   ccc18:	ae 44       	sbi333 $r1,[$r0+#0x4]
   ccc1a:	14 10 7f fd 	swi $r1,[$r0+#-0xc]
   ccc1e:	d5 07       	j8 ccc2c <cmac_finish+0x52>
   ccc20:	3e 0f ce 6c 	addi.gp $r0,#-12692
   ccc24:	84 20       	movi55 $r1,#0
   ccc26:	fa 48       	movpi45 $r2,#0x18
   ccc28:	49 ff da 30 	jal c8088 <memset>
   ccc2c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ccc2e <g2_generate_cb>:
   ccc2e:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   ccc30:	81 20       	mov55 $r9,$r0
   ccc32:	84 04       	movi55 $r0,#4
   ccc34:	54 80 80 ff 	andi $r8,$r1,#0xff
   ccc38:	97 d0       	zeb33 $r7,$r2
   ccc3a:	49 00 2a 05 	jal d2044 <malloc>
   ccc3e:	80 c0       	mov55 $r6,$r0
   ccc40:	c0 05       	beqz38 $r0,ccc4a <g2_generate_cb+0x1c>
   ccc42:	80 29       	mov55 $r1,$r9
   ccc44:	84 44       	movi55 $r2,#4
   ccc46:	49 ff da 01 	jal c8048 <memcpy>
   ccc4a:	3c 3d f3 a5 	lwi.gp $r3,[+#-12652]
   ccc4e:	c3 05       	beqz38 $r3,ccc58 <g2_generate_cb+0x2a>
   ccc50:	80 06       	mov55 $r0,$r6
   ccc52:	80 28       	mov55 $r1,$r8
   ccc54:	80 47       	mov55 $r2,$r7
   ccc56:	dd 23       	jral5 $r3
   ccc58:	c6 04       	beqz38 $r6,ccc60 <g2_generate_cb+0x32>
   ccc5a:	80 06       	mov55 $r0,$r6
   ccc5c:	49 00 29 8f 	jal d1f7a <free>
   ccc60:	84 20       	movi55 $r1,#0
   ccc62:	3c 1f f3 a5 	swi.gp $r1,[+#-12652]
   ccc66:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000ccc68 <ah_generate_cb>:
   ccc68:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   ccc6a:	81 20       	mov55 $r9,$r0
   ccc6c:	84 03       	movi55 $r0,#3
   ccc6e:	54 80 80 ff 	andi $r8,$r1,#0xff
   ccc72:	97 d0       	zeb33 $r7,$r2
   ccc74:	49 00 29 e8 	jal d2044 <malloc>
   ccc78:	80 c0       	mov55 $r6,$r0
   ccc7a:	c0 05       	beqz38 $r0,ccc84 <ah_generate_cb+0x1c>
   ccc7c:	80 29       	mov55 $r1,$r9
   ccc7e:	84 43       	movi55 $r2,#3
   ccc80:	49 ff d9 e4 	jal c8048 <memcpy>
   ccc84:	3c 3d f3 a6 	lwi.gp $r3,[+#-12648]
   ccc88:	c3 05       	beqz38 $r3,ccc92 <ah_generate_cb+0x2a>
   ccc8a:	80 06       	mov55 $r0,$r6
   ccc8c:	80 28       	mov55 $r1,$r8
   ccc8e:	80 47       	mov55 $r2,$r7
   ccc90:	dd 23       	jral5 $r3
   ccc92:	c6 04       	beqz38 $r6,ccc9a <ah_generate_cb+0x32>
   ccc94:	80 06       	mov55 $r0,$r6
   ccc96:	49 00 29 72 	jal d1f7a <free>
   ccc9a:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000ccc9c <SM_CryptoTool_ReadLocalP256PublicKeyComplete>:
   ccc9c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ccc9e:	80 e0       	mov55 $r7,$r0
   ccca0:	44 00 00 40 	movi $r0,#64
   ccca4:	49 00 29 d0 	jal d2044 <malloc>
   ccca8:	3c 0f f1 a0 	swi.gp $r0,[+#-14720]
   cccac:	c0 06       	beqz38 $r0,cccb8 <SM_CryptoTool_ReadLocalP256PublicKeyComplete+0x1c>
   cccae:	9c 79       	addi333 $r1,$r7,#1
   cccb0:	44 20 00 40 	movi $r2,#64
   cccb4:	49 ff d9 ca 	jal c8048 <memcpy>
   cccb8:	3e 6f ce 68 	addi.gp $r6,#-12696
   cccbc:	b4 46       	lwi450 $r2,[$r6]
   cccbe:	c2 0c       	beqz38 $r2,cccd6 <SM_CryptoTool_ReadLocalP256PublicKeyComplete+0x3a>
   cccc0:	b4 62       	lwi450 $r3,[$r2]
   cccc2:	3c 0d f1 a0 	lwi.gp $r0,[+#-14720]
   cccc6:	a6 78       	lbi333 $r1,[$r7+#0x0]
   cccc8:	a6 94       	lbi333 $r2,[$r2+#0x4]
   cccca:	dd 23       	jral5 $r3
   ccccc:	b4 06       	lwi450 $r0,[$r6]
   cccce:	49 00 29 56 	jal d1f7a <free>
   cccd2:	84 00       	movi55 $r0,#0
   cccd4:	b6 06       	swi450 $r0,[$r6]
   cccd6:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cccd8 <SM_CryptoTool_AES_Cipher>:
   cccd8:	fc 44       	push25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}
   cccda:	fa c0       	movpi45 $r6,#0x10
   cccdc:	80 80       	mov55 $r4,$r0
   cccde:	81 21       	mov55 $r9,$r1
   ccce0:	80 e2       	mov55 $r7,$r2
   ccce2:	80 24       	mov55 $r1,$r4
   ccce4:	80 46       	mov55 $r2,$r6
   ccce6:	80 1f       	mov55 $r0,$sp
   ccce8:	49 ff d9 b0 	jal c8048 <memcpy>
   cccec:	80 29       	mov55 $r1,$r9
   cccee:	80 46       	mov55 $r2,$r6
   cccf0:	40 0f 98 00 	add $r0,$sp,$r6
   cccf4:	49 ff d9 aa 	jal c8048 <memcpy>
   cccf8:	44 00 20 17 	movi $r0,#8215
   cccfc:	80 3f       	mov55 $r1,$sp
   cccfe:	fa 50       	movpi45 $r2,#0x20
   ccd00:	80 67       	mov55 $r3,$r7
   ccd02:	49 00 07 2f 	jal cdb60 <sm_hal_cryptoTool_hci_send_cmd_ex>
   ccd06:	81 1f       	mov55 $r8,$sp
   ccd08:	84 01       	movi55 $r0,#1
   ccd0a:	fc c4       	pop25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}

000ccd0c <cmac_generate_SubKey>:
   ccd0c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   ccd0e:	81 00       	mov55 $r8,$r0
   ccd10:	fa 00       	movpi45 $r0,#0x10
   ccd12:	81 21       	mov55 $r9,$r1
   ccd14:	49 00 29 98 	jal d2044 <malloc>
   ccd18:	80 c0       	mov55 $r6,$r0
   ccd1a:	c8 07       	bnez38 $r0,ccd28 <cmac_generate_SubKey+0x1c>
   ccd1c:	3e 0d 32 2c 	addi.gp $r0,#-183764
   ccd20:	49 00 42 1d 	jal d515a <puts>
   ccd24:	80 06       	mov55 $r0,$r6
   ccd26:	d5 20       	j8 ccd66 <cmac_generate_SubKey+0x5a>
   ccd28:	84 08       	movi55 $r0,#8
   ccd2a:	49 00 29 8d 	jal d2044 <malloc>
   ccd2e:	80 e0       	mov55 $r7,$r0
   ccd30:	c8 0a       	bnez38 $r0,ccd44 <cmac_generate_SubKey+0x38>
   ccd32:	3e 0d 32 4c 	addi.gp $r0,#-183732
   ccd36:	49 00 42 12 	jal d515a <puts>
   ccd3a:	80 06       	mov55 $r0,$r6
   ccd3c:	49 00 29 1f 	jal d1f7a <free>
   ccd40:	80 07       	mov55 $r0,$r7
   ccd42:	d5 12       	j8 ccd66 <cmac_generate_SubKey+0x5a>
   ccd44:	b7 20       	swi450 $r9,[$r0]
   ccd46:	84 00       	movi55 $r0,#0
   ccd48:	ae 3c       	sbi333 $r0,[$r7+#0x4]
   ccd4a:	84 20       	movi55 $r1,#0
   ccd4c:	fa 40       	movpi45 $r2,#0x10
   ccd4e:	80 06       	mov55 $r0,$r6
   ccd50:	49 ff d9 9c 	jal c8088 <memset>
   ccd54:	80 26       	mov55 $r1,$r6
   ccd56:	80 47       	mov55 $r2,$r7
   ccd58:	80 08       	mov55 $r0,$r8
   ccd5a:	49 ff ff bf 	jal cccd8 <SM_CryptoTool_AES_Cipher>
   ccd5e:	80 06       	mov55 $r0,$r6
   ccd60:	49 00 29 0d 	jal d1f7a <free>
   ccd64:	84 01       	movi55 $r0,#1
   ccd66:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000ccd68 <cmac_1>:
   ccd68:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   ccd6a:	83 80       	mov55 $fp,$r0
   ccd6c:	fa 00       	movpi45 $r0,#0x10
   ccd6e:	80 e1       	mov55 $r7,$r1
   ccd70:	49 00 29 6a 	jal d2044 <malloc>
   ccd74:	80 c0       	mov55 $r6,$r0
   ccd76:	c0 51       	beqz38 $r0,cce18 <cmac_1+0xb0>
   ccd78:	84 08       	movi55 $r0,#8
   ccd7a:	49 00 29 65 	jal d2044 <malloc>
   ccd7e:	81 00       	mov55 $r8,$r0
   ccd80:	c8 06       	bnez38 $r0,ccd8c <cmac_1+0x24>
   ccd82:	80 06       	mov55 $r0,$r6
   ccd84:	49 00 28 fb 	jal d1f7a <free>
   ccd88:	80 08       	mov55 $r0,$r8
   ccd8a:	d5 47       	j8 cce18 <cmac_1+0xb0>
   ccd8c:	85 40       	movi55 $r10,#0
   ccd8e:	b6 e0       	swi450 $r7,[$r0]
   ccd90:	10 a0 00 04 	sbi $r10,[$r0+#0x4]
   ccd94:	3e 7f ce 6c 	addi.gp $r7,#-12692
   ccd98:	00 13 80 11 	lbi $r1,[$r7+#0x11]
   ccd9c:	e6 30       	slti45 $r1,#16
   ccd9e:	e9 10       	bnezs8 ccdbe <cmac_1+0x56>
   ccda0:	8e 30       	subi45 $r1,#16
   ccda2:	b4 47       	lwi450 $r2,[$r7]
   ccda4:	96 48       	zeb33 $r1,$r1
   ccda6:	10 13 80 11 	sbi $r1,[$r7+#0x11]
   ccdaa:	80 06       	mov55 $r0,$r6
   ccdac:	98 51       	add333 $r1,$r2,$r1
   ccdae:	fa 40       	movpi45 $r2,#0x10
   ccdb0:	49 ff d9 4c 	jal c8048 <memcpy>
   ccdb4:	00 03 80 11 	lbi $r0,[$r7+#0x11]
   ccdb8:	c8 22       	bnez38 $r0,ccdfc <cmac_1+0x94>
   ccdba:	a0 3a       	lwi333 $r0,[$r7+#0x8]
   ccdbc:	d5 1d       	j8 ccdf6 <cmac_1+0x8e>
   ccdbe:	52 10 80 10 	subri $r1,$r1,#16
   ccdc2:	54 90 80 ff 	andi $r9,$r1,#0xff
   ccdc6:	fa 40       	movpi45 $r2,#0x10
   ccdc8:	84 20       	movi55 $r1,#0
   ccdca:	80 06       	mov55 $r0,$r6
   ccdcc:	49 ff d9 5e 	jal c8088 <memset>
   ccdd0:	b4 27       	lwi450 $r1,[$r7]
   ccdd2:	00 23 80 11 	lbi $r2,[$r7+#0x11]
   ccdd6:	40 03 24 00 	add $r0,$r6,$r9
   ccdda:	8f 21       	subi45 $r9,#1
   ccddc:	49 ff d9 36 	jal c8048 <memcpy>
   ccde0:	54 94 80 ff 	andi $r9,$r9,#0xff
   ccde4:	44 0f ff 80 	movi $r0,#-128
   ccde8:	10 a3 80 11 	sbi $r10,[$r7+#0x11]
   ccdec:	38 03 24 08 	sb $r0,[$r6+($r9<<#0x0)]
   ccdf0:	a0 7a       	lwi333 $r1,[$r7+#0x8]
   ccdf2:	50 00 80 10 	addi $r0,$r1,#16
   ccdf6:	80 26       	mov55 $r1,$r6
   ccdf8:	49 ff fe 9d 	jal ccb32 <SM_CryptoTool_16Byte_XOR>
   ccdfc:	80 1c       	mov55 $r0,$fp
   ccdfe:	80 26       	mov55 $r1,$r6
   cce00:	49 ff fe 99 	jal ccb32 <SM_CryptoTool_16Byte_XOR>
   cce04:	3c 0d f3 9c 	lwi.gp $r0,[+#-12688]
   cce08:	80 26       	mov55 $r1,$r6
   cce0a:	80 48       	mov55 $r2,$r8
   cce0c:	49 ff ff 66 	jal cccd8 <SM_CryptoTool_AES_Cipher>
   cce10:	80 06       	mov55 $r0,$r6
   cce12:	49 00 28 b4 	jal d1f7a <free>
   cce16:	84 01       	movi55 $r0,#1
   cce18:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cce1a <cmac_start>:
   cce1a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cce1c:	fa 00       	movpi45 $r0,#0x10
   cce1e:	49 00 29 13 	jal d2044 <malloc>
   cce22:	80 c0       	mov55 $r6,$r0
   cce24:	c0 12       	beqz38 $r0,cce48 <cmac_start+0x2e>
   cce26:	84 20       	movi55 $r1,#0
   cce28:	fa 40       	movpi45 $r2,#0x10
   cce2a:	49 ff d9 2f 	jal c8088 <memset>
   cce2e:	80 06       	mov55 $r0,$r6
   cce30:	3e 1c 91 b0 	addi.gp $r1,#-224848
   cce34:	49 ff ff 9a 	jal ccd68 <cmac_1>
   cce38:	c0 05       	beqz38 $r0,cce42 <cmac_start+0x28>
   cce3a:	80 06       	mov55 $r0,$r6
   cce3c:	49 00 28 9f 	jal d1f7a <free>
   cce40:	d5 07       	j8 cce4e <cmac_start+0x34>
   cce42:	80 06       	mov55 $r0,$r6
   cce44:	49 00 28 9b 	jal d1f7a <free>
   cce48:	84 03       	movi55 $r0,#3
   cce4a:	49 ff fe c8 	jal ccbda <cmac_finish>
   cce4e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cce50 <AES_CMAC>:
   cce50:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cce52:	3e 6f ce 6c 	addi.gp $r6,#-12692
   cce56:	80 e0       	mov55 $r7,$r0
   cce58:	a0 31       	lwi333 $r0,[$r6+#0x4]
   cce5a:	96 90       	zeb33 $r2,$r2
   cce5c:	c0 07       	beqz38 $r0,cce6a <AES_CMAC+0x1a>
   cce5e:	3e 0d 32 6c 	addi.gp $r0,#-183700
   cce62:	49 00 41 7c 	jal d515a <puts>
   cce66:	84 00       	movi55 $r0,#0
   cce68:	d5 1c       	j8 ccea0 <AES_CMAC+0x50>
   cce6a:	a0 32       	lwi333 $r0,[$r6+#0x8]
   cce6c:	b6 26       	swi450 $r1,[$r6]
   cce6e:	a9 f1       	swi333 $r7,[$r6+#0x4]
   cce70:	a8 f3       	swi333 $r3,[$r6+#0xc]
   cce72:	10 23 00 10 	sbi $r2,[$r6+#0x10]
   cce76:	10 23 00 11 	sbi $r2,[$r6+#0x11]
   cce7a:	c0 04       	beqz38 $r0,cce82 <AES_CMAC+0x32>
   cce7c:	49 ff ff cf 	jal cce1a <cmac_start>
   cce80:	d5 0f       	j8 cce9e <AES_CMAC+0x4e>
   cce82:	fa 10       	movpi45 $r0,#0x20
   cce84:	49 00 28 e0 	jal d2044 <malloc>
   cce88:	a8 32       	swi333 $r0,[$r6+#0x8]
   cce8a:	c0 07       	beqz38 $r0,cce98 <AES_CMAC+0x48>
   cce8c:	80 07       	mov55 $r0,$r7
   cce8e:	3e 1c 91 62 	addi.gp $r1,#-224926
   cce92:	49 ff ff 3d 	jal ccd0c <cmac_generate_SubKey>
   cce96:	c8 04       	bnez38 $r0,cce9e <AES_CMAC+0x4e>
   cce98:	84 03       	movi55 $r0,#3
   cce9a:	49 ff fe a0 	jal ccbda <cmac_finish>
   cce9e:	84 01       	movi55 $r0,#1
   ccea0:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ccea2 <g2>:
   ccea2:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   ccea4:	96 00       	zeb33 $r0,$r0
   ccea6:	b6 1f       	swi450 $r0,[$sp]
   ccea8:	44 00 00 50 	movi $r0,#80
   cceac:	81 41       	mov55 $r10,$r1
   cceae:	83 82       	mov55 $fp,$r2
   cceb0:	81 03       	mov55 $r8,$r3
   cceb2:	f4 81       	swi37.sp $r4,[+#0x4]
   cceb4:	81 25       	mov55 $r9,$r5
   cceb6:	49 00 28 c7 	jal d2044 <malloc>
   cceba:	80 c0       	mov55 $r6,$r0
   ccebc:	c0 2b       	beqz38 $r0,ccf12 <g2+0x70>
   ccebe:	84 08       	movi55 $r0,#8
   ccec0:	49 00 28 c2 	jal d2044 <malloc>
   ccec4:	80 e0       	mov55 $r7,$r0
   ccec6:	c8 06       	bnez38 $r0,cced2 <g2+0x30>
   ccec8:	80 06       	mov55 $r0,$r6
   cceca:	49 00 28 58 	jal d1f7a <free>
   ccece:	80 07       	mov55 $r0,$r7
   cced0:	d5 21       	j8 ccf12 <g2+0x70>
   cced2:	3e 0c 8c 2e 	addi.gp $r0,#-226258
   cced6:	b6 07       	swi450 $r0,[$r7]
   cced8:	b4 1f       	lwi450 $r0,[$sp]
   cceda:	f1 01       	lwi37.sp $r1,[+#0x4]
   ccedc:	ae 3c       	sbi333 $r0,[$r7+#0x4]
   ccede:	fa 40       	movpi45 $r2,#0x10
   ccee0:	80 06       	mov55 $r0,$r6
   ccee2:	49 ff d8 b3 	jal c8048 <memcpy>
   ccee6:	80 3c       	mov55 $r1,$fp
   ccee8:	fa 50       	movpi45 $r2,#0x20
   cceea:	50 03 00 10 	addi $r0,$r6,#16
   cceee:	49 ff d8 ad 	jal c8048 <memcpy>
   ccef2:	80 2a       	mov55 $r1,$r10
   ccef4:	fa 50       	movpi45 $r2,#0x20
   ccef6:	50 03 00 30 	addi $r0,$r6,#48
   ccefa:	49 ff d8 a7 	jal c8048 <memcpy>
   ccefe:	3c 9f f3 a5 	swi.gp $r9,[+#-12652]
   ccf02:	80 26       	mov55 $r1,$r6
   ccf04:	80 08       	mov55 $r0,$r8
   ccf06:	44 20 00 50 	movi $r2,#80
   ccf0a:	80 67       	mov55 $r3,$r7
   ccf0c:	49 ff ff a2 	jal cce50 <AES_CMAC>
   ccf10:	84 01       	movi55 $r0,#1
   ccf12:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000ccf14 <f6>:
   ccf14:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   ccf16:	96 00       	zeb33 $r0,$r0
   ccf18:	b6 1f       	swi450 $r0,[$sp]
   ccf1a:	44 00 00 41 	movi $r0,#65
   ccf1e:	81 01       	mov55 $r8,$r1
   ccf20:	81 22       	mov55 $r9,$r2
   ccf22:	81 43       	mov55 $r10,$r3
   ccf24:	83 84       	mov55 $fp,$r4
   ccf26:	f5 81       	swi37.sp $r5,[+#0x4]
   ccf28:	49 00 28 8e 	jal d2044 <malloc>
   ccf2c:	80 c0       	mov55 $r6,$r0
   ccf2e:	c0 39       	beqz38 $r0,ccfa0 <f6+0x8c>
   ccf30:	84 08       	movi55 $r0,#8
   ccf32:	49 00 28 89 	jal d2044 <malloc>
   ccf36:	80 e0       	mov55 $r7,$r0
   ccf38:	c8 06       	bnez38 $r0,ccf44 <f6+0x30>
   ccf3a:	80 06       	mov55 $r0,$r6
   ccf3c:	49 00 28 1f 	jal d1f7a <free>
   ccf40:	80 07       	mov55 $r0,$r7
   ccf42:	d5 2f       	j8 ccfa0 <f6+0x8c>
   ccf44:	f0 0c       	lwi37.sp $r0,[+#0x30]
   ccf46:	f1 0b       	lwi37.sp $r1,[+#0x2c]
   ccf48:	b6 07       	swi450 $r0,[$r7]
   ccf4a:	b4 1f       	lwi450 $r0,[$sp]
   ccf4c:	84 47       	movi55 $r2,#7
   ccf4e:	ae 3c       	sbi333 $r0,[$r7+#0x4]
   ccf50:	80 06       	mov55 $r0,$r6
   ccf52:	49 ff d8 7b 	jal c8048 <memcpy>
   ccf56:	f1 0a       	lwi37.sp $r1,[+#0x28]
   ccf58:	84 47       	movi55 $r2,#7
   ccf5a:	9c 37       	addi333 $r0,$r6,#7
   ccf5c:	49 ff d8 76 	jal c8048 <memcpy>
   ccf60:	f1 01       	lwi37.sp $r1,[+#0x4]
   ccf62:	84 43       	movi55 $r2,#3
   ccf64:	50 03 00 0e 	addi $r0,$r6,#14
   ccf68:	49 ff d8 70 	jal c8048 <memcpy>
   ccf6c:	80 3c       	mov55 $r1,$fp
   ccf6e:	fa 40       	movpi45 $r2,#0x10
   ccf70:	50 03 00 11 	addi $r0,$r6,#17
   ccf74:	49 ff d8 6a 	jal c8048 <memcpy>
   ccf78:	80 2a       	mov55 $r1,$r10
   ccf7a:	fa 40       	movpi45 $r2,#0x10
   ccf7c:	50 03 00 21 	addi $r0,$r6,#33
   ccf80:	49 ff d8 64 	jal c8048 <memcpy>
   ccf84:	80 29       	mov55 $r1,$r9
   ccf86:	fa 40       	movpi45 $r2,#0x10
   ccf88:	50 03 00 31 	addi $r0,$r6,#49
   ccf8c:	49 ff d8 5e 	jal c8048 <memcpy>
   ccf90:	80 08       	mov55 $r0,$r8
   ccf92:	80 26       	mov55 $r1,$r6
   ccf94:	44 20 00 41 	movi $r2,#65
   ccf98:	80 67       	mov55 $r3,$r7
   ccf9a:	49 ff ff 5b 	jal cce50 <AES_CMAC>
   ccf9e:	84 01       	movi55 $r0,#1
   ccfa0:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000ccfa2 <f5>:
   ccfa2:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   ccfa4:	96 00       	zeb33 $r0,$r0
   ccfa6:	b6 1f       	swi450 $r0,[$sp]
   ccfa8:	44 00 00 35 	movi $r0,#53
   ccfac:	81 01       	mov55 $r8,$r1
   ccfae:	81 22       	mov55 $r9,$r2
   ccfb0:	81 43       	mov55 $r10,$r3
   ccfb2:	83 84       	mov55 $fp,$r4
   ccfb4:	f5 81       	swi37.sp $r5,[+#0x4]
   ccfb6:	49 00 28 47 	jal d2044 <malloc>
   ccfba:	80 c0       	mov55 $r6,$r0
   ccfbc:	c0 49       	beqz38 $r0,cd04e <f5+0xac>
   ccfbe:	84 08       	movi55 $r0,#8
   ccfc0:	49 00 28 42 	jal d2044 <malloc>
   ccfc4:	80 e0       	mov55 $r7,$r0
   ccfc6:	c8 06       	bnez38 $r0,ccfd2 <f5+0x30>
   ccfc8:	80 06       	mov55 $r0,$r6
   ccfca:	49 00 27 d8 	jal d1f7a <free>
   ccfce:	80 07       	mov55 $r0,$r7
   ccfd0:	d5 3f       	j8 cd04e <f5+0xac>
   ccfd2:	3e 0c 90 50 	addi.gp $r0,#-225200
   ccfd6:	b6 07       	swi450 $r0,[$r7]
   ccfd8:	b4 1f       	lwi450 $r0,[$sp]
   ccfda:	3e 1f c1 94 	addi.gp $r1,#-15980
   ccfde:	ae 3c       	sbi333 $r0,[$r7+#0x4]
   ccfe0:	84 42       	movi55 $r2,#2
   ccfe2:	80 06       	mov55 $r0,$r6
   ccfe4:	49 ff d8 32 	jal c8048 <memcpy>
   ccfe8:	f1 01       	lwi37.sp $r1,[+#0x4]
   ccfea:	84 47       	movi55 $r2,#7
   ccfec:	9c 32       	addi333 $r0,$r6,#2
   ccfee:	49 ff d8 2d 	jal c8048 <memcpy>
   ccff2:	80 3c       	mov55 $r1,$fp
   ccff4:	84 47       	movi55 $r2,#7
   ccff6:	50 03 00 09 	addi $r0,$r6,#9
   ccffa:	49 ff d8 27 	jal c8048 <memcpy>
   ccffe:	80 2a       	mov55 $r1,$r10
   cd000:	fa 40       	movpi45 $r2,#0x10
   cd002:	50 03 00 10 	addi $r0,$r6,#16
   cd006:	49 ff d8 21 	jal c8048 <memcpy>
   cd00a:	80 29       	mov55 $r1,$r9
   cd00c:	fa 40       	movpi45 $r2,#0x10
   cd00e:	50 03 00 20 	addi $r0,$r6,#32
   cd012:	49 ff d8 1b 	jal c8048 <memcpy>
   cd016:	3e 1f c1 98 	addi.gp $r1,#-15976
   cd01a:	84 44       	movi55 $r2,#4
   cd01c:	50 03 00 30 	addi $r0,$r6,#48
   cd020:	49 ff d8 14 	jal c8048 <memcpy>
   cd024:	f1 0a       	lwi37.sp $r1,[+#0x28]
   cd026:	84 00       	movi55 $r0,#0
   cd028:	10 03 00 34 	sbi $r0,[$r6+#0x34]
   cd02c:	3e 0f ce 84 	addi.gp $r0,#-12668
   cd030:	a8 42       	swi333 $r1,[$r0+#0x8]
   cd032:	f1 0b       	lwi37.sp $r1,[+#0x2c]
   cd034:	b6 c0       	swi450 $r6,[$r0]
   cd036:	a8 43       	swi333 $r1,[$r0+#0xc]
   cd038:	84 21       	movi55 $r1,#1
   cd03a:	3e 17 ce 7f 	sbi.gp $r1,[+#-12673]
   cd03e:	fa 50       	movpi45 $r2,#0x20
   cd040:	3e 0f c1 9c 	addi.gp $r0,#-15972
   cd044:	80 28       	mov55 $r1,$r8
   cd046:	80 67       	mov55 $r3,$r7
   cd048:	49 ff ff 04 	jal cce50 <AES_CMAC>
   cd04c:	84 01       	movi55 $r0,#1
   cd04e:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cd050 <f5_generate_t_cb>:
   cd050:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cd052:	81 00       	mov55 $r8,$r0
   cd054:	fa 00       	movpi45 $r0,#0x10
   cd056:	54 91 00 ff 	andi $r9,$r2,#0xff
   cd05a:	49 00 27 f5 	jal d2044 <malloc>
   cd05e:	80 c0       	mov55 $r6,$r0
   cd060:	c0 23       	beqz38 $r0,cd0a6 <f5_generate_t_cb+0x56>
   cd062:	84 08       	movi55 $r0,#8
   cd064:	49 00 27 f0 	jal d2044 <malloc>
   cd068:	80 e0       	mov55 $r7,$r0
   cd06a:	c0 1b       	beqz38 $r0,cd0a0 <f5_generate_t_cb+0x50>
   cd06c:	3e 0c 90 ae 	addi.gp $r0,#-225106
   cd070:	b6 07       	swi450 $r0,[$r7]
   cd072:	80 28       	mov55 $r1,$r8
   cd074:	80 06       	mov55 $r0,$r6
   cd076:	fa 40       	movpi45 $r2,#0x10
   cd078:	10 93 80 04 	sbi $r9,[$r7+#0x4]
   cd07c:	49 ff d7 e6 	jal c8048 <memcpy>
   cd080:	84 41       	movi55 $r2,#1
   cd082:	3c 6f f3 a2 	swi.gp $r6,[+#-12664]
   cd086:	3e 27 ce 7f 	sbi.gp $r2,[+#-12673]
   cd08a:	3e 27 ce 80 	sbi.gp $r2,[+#-12672]
   cd08e:	3c 1d f3 a1 	lwi.gp $r1,[+#-12668]
   cd092:	80 06       	mov55 $r0,$r6
   cd094:	44 20 00 35 	movi $r2,#53
   cd098:	80 67       	mov55 $r3,$r7
   cd09a:	49 ff fe db 	jal cce50 <AES_CMAC>
   cd09e:	d5 07       	j8 cd0ac <f5_generate_t_cb+0x5c>
   cd0a0:	80 06       	mov55 $r0,$r6
   cd0a2:	49 00 27 6c 	jal d1f7a <free>
   cd0a6:	84 03       	movi55 $r0,#3
   cd0a8:	49 ff fd 7b 	jal ccb9e <f5_finish>
   cd0ac:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cd0ae <f5_generate_mac_key_cb>:
   cd0ae:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cd0b0:	81 40       	mov55 $r10,$r0
   cd0b2:	84 08       	movi55 $r0,#8
   cd0b4:	54 90 80 ff 	andi $r9,$r1,#0xff
   cd0b8:	54 81 00 ff 	andi $r8,$r2,#0xff
   cd0bc:	49 00 27 c4 	jal d2044 <malloc>
   cd0c0:	80 e0       	mov55 $r7,$r0
   cd0c2:	c8 05       	bnez38 $r0,cd0cc <f5_generate_mac_key_cb+0x1e>
   cd0c4:	84 03       	movi55 $r0,#3
   cd0c6:	49 ff fd 6c 	jal ccb9e <f5_finish>
   cd0ca:	d5 18       	j8 cd0fa <f5_generate_mac_key_cb+0x4c>
   cd0cc:	3e 6f ce 84 	addi.gp $r6,#-12668
   cd0d0:	a0 f2       	lwi333 $r3,[$r6+#0x8]
   cd0d2:	80 0a       	mov55 $r0,$r10
   cd0d4:	80 29       	mov55 $r1,$r9
   cd0d6:	80 48       	mov55 $r2,$r8
   cd0d8:	dd 23       	jral5 $r3
   cd0da:	3e 0c 8b c6 	addi.gp $r0,#-226362
   cd0de:	b4 26       	lwi450 $r1,[$r6]
   cd0e0:	b6 07       	swi450 $r0,[$r7]
   cd0e2:	84 01       	movi55 $r0,#1
   cd0e4:	10 83 80 04 	sbi $r8,[$r7+#0x4]
   cd0e8:	10 00 80 34 	sbi $r0,[$r1+#0x34]
   cd0ec:	44 20 00 35 	movi $r2,#53
   cd0f0:	a0 31       	lwi333 $r0,[$r6+#0x4]
   cd0f2:	b4 26       	lwi450 $r1,[$r6]
   cd0f4:	80 67       	mov55 $r3,$r7
   cd0f6:	49 ff fe ad 	jal cce50 <AES_CMAC>
   cd0fa:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cd0fc <f4>:
   cd0fc:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cd0fe:	96 00       	zeb33 $r0,$r0
   cd100:	b6 1f       	swi450 $r0,[$sp]
   cd102:	44 00 00 41 	movi $r0,#65
   cd106:	81 21       	mov55 $r9,$r1
   cd108:	81 42       	mov55 $r10,$r2
   cd10a:	81 03       	mov55 $r8,$r3
   cd10c:	f5 81       	swi37.sp $r5,[+#0x4]
   cd10e:	55 c2 00 ff 	andi $fp,$r4,#0xff
   cd112:	49 00 27 99 	jal d2044 <malloc>
   cd116:	80 c0       	mov55 $r6,$r0
   cd118:	c0 24       	beqz38 $r0,cd160 <f4+0x64>
   cd11a:	84 08       	movi55 $r0,#8
   cd11c:	49 00 27 94 	jal d2044 <malloc>
   cd120:	80 e0       	mov55 $r7,$r0
   cd122:	c8 06       	bnez38 $r0,cd12e <f4+0x32>
   cd124:	80 06       	mov55 $r0,$r6
   cd126:	49 00 27 2a 	jal d1f7a <free>
   cd12a:	80 07       	mov55 $r0,$r7
   cd12c:	d5 1a       	j8 cd160 <f4+0x64>
   cd12e:	f0 01       	lwi37.sp $r0,[+#0x4]
   cd130:	80 2a       	mov55 $r1,$r10
   cd132:	b6 07       	swi450 $r0,[$r7]
   cd134:	b4 1f       	lwi450 $r0,[$sp]
   cd136:	fa 50       	movpi45 $r2,#0x20
   cd138:	ae 3c       	sbi333 $r0,[$r7+#0x4]
   cd13a:	80 06       	mov55 $r0,$r6
   cd13c:	19 c0 00 01 	sbi.bi $fp,[$r0],#0x1
   cd140:	49 ff d7 84 	jal c8048 <memcpy>
   cd144:	80 29       	mov55 $r1,$r9
   cd146:	fa 50       	movpi45 $r2,#0x20
   cd148:	50 03 00 21 	addi $r0,$r6,#33
   cd14c:	49 ff d7 7e 	jal c8048 <memcpy>
   cd150:	80 08       	mov55 $r0,$r8
   cd152:	80 26       	mov55 $r1,$r6
   cd154:	44 20 00 41 	movi $r2,#65
   cd158:	80 67       	mov55 $r3,$r7
   cd15a:	49 ff fe 7b 	jal cce50 <AES_CMAC>
   cd15e:	84 01       	movi55 $r0,#1
   cd160:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cd162 <cmac_generate_SubKey_cb>:
   cd162:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cd164:	3c 1d f3 9d 	lwi.gp $r1,[+#-12684]
   cd168:	80 e0       	mov55 $r7,$r0
   cd16a:	49 ff fc f1 	jal ccb4c <SM_CryptoTool_LeftShiftOneBit>
   cd16e:	20 03 80 0f 	lbsi $r0,[$r7+#0xf]
   cd172:	4e 04 00 09 	bgez $r0,cd184 <cmac_generate_SubKey_cb+0x22>
   cd176:	3c 0d f3 9d 	lwi.gp $r0,[+#-12684]
   cd17a:	44 2f ff 87 	movi $r2,#-121
   cd17e:	a6 40       	lbi333 $r1,[$r0+#0x0]
   cd180:	fe 55       	xor33 $r1,$r2
   cd182:	ae 40       	sbi333 $r1,[$r0+#0x0]
   cd184:	3c 0d f3 9d 	lwi.gp $r0,[+#-12684]
   cd188:	50 10 00 10 	addi $r1,$r0,#16
   cd18c:	49 ff fc e0 	jal ccb4c <SM_CryptoTool_LeftShiftOneBit>
   cd190:	3c 0d f3 9d 	lwi.gp $r0,[+#-12684]
   cd194:	20 10 00 0f 	lbsi $r1,[$r0+#0xf]
   cd198:	4e 14 00 09 	bgez $r1,cd1aa <cmac_generate_SubKey_cb+0x48>
   cd19c:	00 10 00 10 	lbi $r1,[$r0+#0x10]
   cd1a0:	44 2f ff 87 	movi $r2,#-121
   cd1a4:	fe 55       	xor33 $r1,$r2
   cd1a6:	10 10 00 10 	sbi $r1,[$r0+#0x10]
   cd1aa:	49 ff fe 38 	jal cce1a <cmac_start>
   cd1ae:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cd1b0 <cmac_1_cb>:
   cd1b0:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cd1b2:	2e 37 ce 7d 	lbi.gp $r3,[+#-12675]
   cd1b6:	81 20       	mov55 $r9,$r0
   cd1b8:	54 80 80 ff 	andi $r8,$r1,#0xff
   cd1bc:	c3 0a       	beqz38 $r3,cd1d0 <cmac_1_cb+0x20>
   cd1be:	3e 1c 91 b0 	addi.gp $r1,#-224848
   cd1c2:	49 ff fd d3 	jal ccd68 <cmac_1>
   cd1c6:	c8 10       	bnez38 $r0,cd1e6 <cmac_1_cb+0x36>
   cd1c8:	84 03       	movi55 $r0,#3
   cd1ca:	49 ff fd 08 	jal ccbda <cmac_finish>
   cd1ce:	d5 0c       	j8 cd1e6 <cmac_1_cb+0x36>
   cd1d0:	3c 2d f3 9e 	lwi.gp $r2,[+#-12680]
   cd1d4:	80 03       	mov55 $r0,$r3
   cd1d6:	a7 d4       	lbi333 $r7,[$r2+#0x4]
   cd1d8:	b4 c2       	lwi450 $r6,[$r2]
   cd1da:	49 ff fd 00 	jal ccbda <cmac_finish>
   cd1de:	80 09       	mov55 $r0,$r9
   cd1e0:	80 28       	mov55 $r1,$r8
   cd1e2:	80 47       	mov55 $r2,$r7
   cd1e4:	dd 26       	jral5 $r6
   cd1e6:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cd1e8 <s1>:
   cd1e8:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cd1ea:	55 c0 00 ff 	andi $fp,$r0,#0xff
   cd1ee:	fa 00       	movpi45 $r0,#0x10
   cd1f0:	81 01       	mov55 $r8,$r1
   cd1f2:	81 22       	mov55 $r9,$r2
   cd1f4:	81 43       	mov55 $r10,$r3
   cd1f6:	f4 81       	swi37.sp $r4,[+#0x4]
   cd1f8:	49 00 27 26 	jal d2044 <malloc>
   cd1fc:	80 c0       	mov55 $r6,$r0
   cd1fe:	c8 03       	bnez38 $r0,cd204 <s1+0x1c>
   cd200:	80 e0       	mov55 $r7,$r0
   cd202:	d5 1e       	j8 cd23e <s1+0x56>
   cd204:	84 08       	movi55 $r0,#8
   cd206:	49 00 27 1f 	jal d2044 <malloc>
   cd20a:	80 e0       	mov55 $r7,$r0
   cd20c:	c0 16       	beqz38 $r0,cd238 <s1+0x50>
   cd20e:	f0 01       	lwi37.sp $r0,[+#0x4]
   cd210:	11 c3 80 04 	sbi $fp,[$r7+#0x4]
   cd214:	b6 07       	swi450 $r0,[$r7]
   cd216:	80 2a       	mov55 $r1,$r10
   cd218:	84 48       	movi55 $r2,#8
   cd21a:	80 06       	mov55 $r0,$r6
   cd21c:	49 ff d7 16 	jal c8048 <memcpy>
   cd220:	80 29       	mov55 $r1,$r9
   cd222:	84 48       	movi55 $r2,#8
   cd224:	50 03 00 08 	addi $r0,$r6,#8
   cd228:	49 ff d7 10 	jal c8048 <memcpy>
   cd22c:	80 47       	mov55 $r2,$r7
   cd22e:	80 08       	mov55 $r0,$r8
   cd230:	80 26       	mov55 $r1,$r6
   cd232:	49 ff fd 53 	jal cccd8 <SM_CryptoTool_AES_Cipher>
   cd236:	80 e0       	mov55 $r7,$r0
   cd238:	80 06       	mov55 $r0,$r6
   cd23a:	49 00 26 a0 	jal d1f7a <free>
   cd23e:	80 07       	mov55 $r0,$r7
   cd240:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cd242 <c1_2>:
   cd242:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cd244:	55 c0 00 ff 	andi $fp,$r0,#0xff
   cd248:	fa 00       	movpi45 $r0,#0x10
   cd24a:	81 01       	mov55 $r8,$r1
   cd24c:	81 22       	mov55 $r9,$r2
   cd24e:	81 43       	mov55 $r10,$r3
   cd250:	f4 81       	swi37.sp $r4,[+#0x4]
   cd252:	49 00 26 f9 	jal d2044 <malloc>
   cd256:	80 c0       	mov55 $r6,$r0
   cd258:	c8 03       	bnez38 $r0,cd25e <c1_2+0x1c>
   cd25a:	80 e0       	mov55 $r7,$r0
   cd25c:	d5 1c       	j8 cd294 <c1_2+0x52>
   cd25e:	84 08       	movi55 $r0,#8
   cd260:	49 00 26 f2 	jal d2044 <malloc>
   cd264:	80 e0       	mov55 $r7,$r0
   cd266:	c0 14       	beqz38 $r0,cd28e <c1_2+0x4c>
   cd268:	f0 01       	lwi37.sp $r0,[+#0x4]
   cd26a:	11 c3 80 04 	sbi $fp,[$r7+#0x4]
   cd26e:	b6 07       	swi450 $r0,[$r7]
   cd270:	fa 40       	movpi45 $r2,#0x10
   cd272:	80 2a       	mov55 $r1,$r10
   cd274:	80 06       	mov55 $r0,$r6
   cd276:	49 ff d6 e9 	jal c8048 <memcpy>
   cd27a:	80 09       	mov55 $r0,$r9
   cd27c:	80 26       	mov55 $r1,$r6
   cd27e:	49 ff fc 5a 	jal ccb32 <SM_CryptoTool_16Byte_XOR>
   cd282:	80 47       	mov55 $r2,$r7
   cd284:	80 08       	mov55 $r0,$r8
   cd286:	80 26       	mov55 $r1,$r6
   cd288:	49 ff fd 28 	jal cccd8 <SM_CryptoTool_AES_Cipher>
   cd28c:	80 e0       	mov55 $r7,$r0
   cd28e:	80 06       	mov55 $r0,$r6
   cd290:	49 00 26 75 	jal d1f7a <free>
   cd294:	80 07       	mov55 $r0,$r7
   cd296:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cd298 <c1_1>:
   cd298:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cd29a:	55 c0 00 ff 	andi $fp,$r0,#0xff
   cd29e:	fa 00       	movpi45 $r0,#0x10
   cd2a0:	81 01       	mov55 $r8,$r1
   cd2a2:	81 22       	mov55 $r9,$r2
   cd2a4:	81 43       	mov55 $r10,$r3
   cd2a6:	f4 81       	swi37.sp $r4,[+#0x4]
   cd2a8:	49 00 26 ce 	jal d2044 <malloc>
   cd2ac:	80 c0       	mov55 $r6,$r0
   cd2ae:	c8 03       	bnez38 $r0,cd2b4 <c1_1+0x1c>
   cd2b0:	80 e0       	mov55 $r7,$r0
   cd2b2:	d5 1c       	j8 cd2ea <c1_1+0x52>
   cd2b4:	84 08       	movi55 $r0,#8
   cd2b6:	49 00 26 c7 	jal d2044 <malloc>
   cd2ba:	80 e0       	mov55 $r7,$r0
   cd2bc:	c0 14       	beqz38 $r0,cd2e4 <c1_1+0x4c>
   cd2be:	f0 01       	lwi37.sp $r0,[+#0x4]
   cd2c0:	11 c3 80 04 	sbi $fp,[$r7+#0x4]
   cd2c4:	b6 07       	swi450 $r0,[$r7]
   cd2c6:	fa 40       	movpi45 $r2,#0x10
   cd2c8:	80 2a       	mov55 $r1,$r10
   cd2ca:	80 06       	mov55 $r0,$r6
   cd2cc:	49 ff d6 be 	jal c8048 <memcpy>
   cd2d0:	80 09       	mov55 $r0,$r9
   cd2d2:	80 26       	mov55 $r1,$r6
   cd2d4:	49 ff fc 2f 	jal ccb32 <SM_CryptoTool_16Byte_XOR>
   cd2d8:	80 47       	mov55 $r2,$r7
   cd2da:	80 08       	mov55 $r0,$r8
   cd2dc:	80 26       	mov55 $r1,$r6
   cd2de:	49 ff fc fd 	jal cccd8 <SM_CryptoTool_AES_Cipher>
   cd2e2:	80 e0       	mov55 $r7,$r0
   cd2e4:	80 06       	mov55 $r0,$r6
   cd2e6:	49 00 26 4a 	jal d1f7a <free>
   cd2ea:	80 07       	mov55 $r0,$r7
   cd2ec:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cd2ee <ah>:
   cd2ee:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cd2f0:	55 c0 00 ff 	andi $fp,$r0,#0xff
   cd2f4:	fa 00       	movpi45 $r0,#0x10
   cd2f6:	81 01       	mov55 $r8,$r1
   cd2f8:	81 42       	mov55 $r10,$r2
   cd2fa:	81 23       	mov55 $r9,$r3
   cd2fc:	49 00 26 a4 	jal d2044 <malloc>
   cd300:	80 c0       	mov55 $r6,$r0
   cd302:	c8 03       	bnez38 $r0,cd308 <ah+0x1a>
   cd304:	80 e0       	mov55 $r7,$r0
   cd306:	d5 20       	j8 cd346 <ah+0x58>
   cd308:	84 08       	movi55 $r0,#8
   cd30a:	49 00 26 9d 	jal d2044 <malloc>
   cd30e:	80 e0       	mov55 $r7,$r0
   cd310:	c0 18       	beqz38 $r0,cd340 <ah+0x52>
   cd312:	3e 0c 8c 68 	addi.gp $r0,#-226200
   cd316:	b6 07       	swi450 $r0,[$r7]
   cd318:	11 c3 80 04 	sbi $fp,[$r7+#0x4]
   cd31c:	84 20       	movi55 $r1,#0
   cd31e:	fa 40       	movpi45 $r2,#0x10
   cd320:	80 06       	mov55 $r0,$r6
   cd322:	49 ff d6 b3 	jal c8088 <memset>
   cd326:	80 2a       	mov55 $r1,$r10
   cd328:	84 43       	movi55 $r2,#3
   cd32a:	80 06       	mov55 $r0,$r6
   cd32c:	49 ff d6 8e 	jal c8048 <memcpy>
   cd330:	3c 9f f3 a6 	swi.gp $r9,[+#-12648]
   cd334:	80 47       	mov55 $r2,$r7
   cd336:	80 08       	mov55 $r0,$r8
   cd338:	80 26       	mov55 $r1,$r6
   cd33a:	49 ff fc cf 	jal cccd8 <SM_CryptoTool_AES_Cipher>
   cd33e:	80 e0       	mov55 $r7,$r0
   cd340:	80 06       	mov55 $r0,$r6
   cd342:	49 00 26 1c 	jal d1f7a <free>
   cd346:	80 07       	mov55 $r0,$r7
   cd348:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cd34a <SM_CryptoTool_GenerateDHKey>:
   cd34a:	fc 48       	push25 $r10,#0x40    ! {$r6~$r10, $fp, $gp, $lp}
   cd34c:	54 80 00 ff 	andi $r8,$r0,#0xff
   cd350:	3c 0d f3 99 	lwi.gp $r0,[+#-12700]
   cd354:	80 e1       	mov55 $r7,$r1
   cd356:	81 22       	mov55 $r9,$r2
   cd358:	c8 05       	bnez38 $r0,cd362 <SM_CryptoTool_GenerateDHKey+0x18>
   cd35a:	49 00 28 1d 	jal d2394 <AB_queue_alloc>
   cd35e:	3c 0f f3 99 	swi.gp $r0,[+#-12700]
   cd362:	84 08       	movi55 $r0,#8
   cd364:	49 00 28 0c 	jal d237c <AB_queue_entry_alloc>
   cd368:	80 60       	mov55 $r3,$r0
   cd36a:	c0 1a       	beqz38 $r0,cd39e <SM_CryptoTool_GenerateDHKey+0x54>
   cd36c:	b7 20       	swi450 $r9,[$r0]
   cd36e:	10 80 00 04 	sbi $r8,[$r0+#0x4]
   cd372:	3c 0d f3 99 	lwi.gp $r0,[+#-12700]
   cd376:	80 23       	mov55 $r1,$r3
   cd378:	49 00 27 9b 	jal d22ae <AB_queue_push>
   cd37c:	80 27       	mov55 $r1,$r7
   cd37e:	44 20 00 40 	movi $r2,#64
   cd382:	80 1f       	mov55 $r0,$sp
   cd384:	49 ff d6 62 	jal c8048 <memcpy>
   cd388:	44 00 20 26 	movi $r0,#8230
   cd38c:	80 3f       	mov55 $r1,$sp
   cd38e:	44 20 00 40 	movi $r2,#64
   cd392:	3e 3c 93 fa 	addi.gp $r3,#-224262
   cd396:	49 00 17 5d 	jal d0250 <hci_send_cmd>
   cd39a:	80 df       	mov55 $r6,$sp
   cd39c:	84 01       	movi55 $r0,#1
   cd39e:	fc c8       	pop25 $r10,#0x40    ! {$r6~$r10, $fp, $gp, $lp}

000cd3a0 <SM_CryptoTool_ReadLocalP256PublicKey>:
   cd3a0:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cd3a2:	54 80 00 ff 	andi $r8,$r0,#0xff
   cd3a6:	3c 6d f1 a0 	lwi.gp $r6,[+#-14720]
   cd3aa:	80 e1       	mov55 $r7,$r1
   cd3ac:	ce 21       	bnez38 $r6,cd3ee <SM_CryptoTool_ReadLocalP256PublicKey+0x4e>
   cd3ae:	3c 9d f3 9a 	lwi.gp $r9,[+#-12696]
   cd3b2:	4e 92 00 05 	beqz $r9,cd3bc <SM_CryptoTool_ReadLocalP256PublicKey+0x1c>
   cd3b6:	3e 0d 32 88 	addi.gp $r0,#-183672
   cd3ba:	d5 0a       	j8 cd3ce <SM_CryptoTool_ReadLocalP256PublicKey+0x2e>
   cd3bc:	84 08       	movi55 $r0,#8
   cd3be:	49 00 26 43 	jal d2044 <malloc>
   cd3c2:	80 c0       	mov55 $r6,$r0
   cd3c4:	3c 0f f3 9a 	swi.gp $r0,[+#-12696]
   cd3c8:	c8 07       	bnez38 $r0,cd3d6 <SM_CryptoTool_ReadLocalP256PublicKey+0x36>
   cd3ca:	3e 0d 32 ac 	addi.gp $r0,#-183636
   cd3ce:	49 00 3e c6 	jal d515a <puts>
   cd3d2:	80 06       	mov55 $r0,$r6
   cd3d4:	d5 12       	j8 cd3f8 <SM_CryptoTool_ReadLocalP256PublicKey+0x58>
   cd3d6:	b6 e0       	swi450 $r7,[$r0]
   cd3d8:	10 80 00 04 	sbi $r8,[$r0+#0x4]
   cd3dc:	80 29       	mov55 $r1,$r9
   cd3de:	80 49       	mov55 $r2,$r9
   cd3e0:	3e 3c 93 fa 	addi.gp $r3,#-224262
   cd3e4:	44 00 20 25 	movi $r0,#8229
   cd3e8:	49 00 17 34 	jal d0250 <hci_send_cmd>
   cd3ec:	d5 05       	j8 cd3f6 <SM_CryptoTool_ReadLocalP256PublicKey+0x56>
   cd3ee:	80 06       	mov55 $r0,$r6
   cd3f0:	84 20       	movi55 $r1,#0
   cd3f2:	80 48       	mov55 $r2,$r8
   cd3f4:	dd 27       	jral5 $r7
   cd3f6:	84 01       	movi55 $r0,#1
   cd3f8:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cd3fa <SM_CryptoTool_CommandStatus>:
   cd3fa:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cd3fc:	80 e1       	mov55 $r7,$r1
   cd3fe:	a6 48       	lbi333 $r1,[$r1+#0x0]
   cd400:	c1 20       	beqz38 $r1,cd440 <SM_CryptoTool_CommandStatus+0x46>
   cd402:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   cd404:	5a 08 08 10 	bnec $r0,#8,cd424 <SM_CryptoTool_CommandStatus+0x2a>
   cd408:	3e 6f ce 68 	addi.gp $r6,#-12696
   cd40c:	b4 46       	lwi450 $r2,[$r6]
   cd40e:	c2 19       	beqz38 $r2,cd440 <SM_CryptoTool_CommandStatus+0x46>
   cd410:	b4 62       	lwi450 $r3,[$r2]
   cd412:	a6 94       	lbi333 $r2,[$r2+#0x4]
   cd414:	84 00       	movi55 $r0,#0
   cd416:	dd 23       	jral5 $r3
   cd418:	b4 06       	lwi450 $r0,[$r6]
   cd41a:	49 00 25 b0 	jal d1f7a <free>
   cd41e:	84 00       	movi55 $r0,#0
   cd420:	b6 06       	swi450 $r0,[$r6]
   cd422:	d5 0f       	j8 cd440 <SM_CryptoTool_CommandStatus+0x46>
   cd424:	3c 0d f3 99 	lwi.gp $r0,[+#-12700]
   cd428:	49 00 27 77 	jal d2316 <AB_queue_pop>
   cd42c:	80 c0       	mov55 $r6,$r0
   cd42e:	c0 09       	beqz38 $r0,cd440 <SM_CryptoTool_CommandStatus+0x46>
   cd430:	b4 60       	lwi450 $r3,[$r0]
   cd432:	a6 78       	lbi333 $r1,[$r7+#0x0]
   cd434:	a6 b4       	lbi333 $r2,[$r6+#0x4]
   cd436:	84 00       	movi55 $r0,#0
   cd438:	dd 23       	jral5 $r3
   cd43a:	80 06       	mov55 $r0,$r6
   cd43c:	49 00 27 86 	jal d2348 <AB_queue_entry_free>
   cd440:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cd442 <SM_CryptoTool_GenerateDHKeyComplete>:
   cd442:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cd444:	80 e0       	mov55 $r7,$r0
   cd446:	3c 0d f3 99 	lwi.gp $r0,[+#-12700]
   cd44a:	49 00 27 66 	jal d2316 <AB_queue_pop>
   cd44e:	80 c0       	mov55 $r6,$r0
   cd450:	c0 09       	beqz38 $r0,cd462 <SM_CryptoTool_GenerateDHKeyComplete+0x20>
   cd452:	b4 60       	lwi450 $r3,[$r0]
   cd454:	a6 78       	lbi333 $r1,[$r7+#0x0]
   cd456:	a6 b4       	lbi333 $r2,[$r6+#0x4]
   cd458:	9c 39       	addi333 $r0,$r7,#1
   cd45a:	dd 23       	jral5 $r3
   cd45c:	80 06       	mov55 $r0,$r6
   cd45e:	49 00 27 75 	jal d2348 <AB_queue_entry_free>
   cd462:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cd464 <SM_CryptoTool_SendLTKNegativeReply>:
   cd464:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   cd466:	84 42       	movi55 $r2,#2
   cd468:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   cd46c:	b0 41       	addri36.sp $r1,#0x4
   cd46e:	44 00 20 1b 	movi $r0,#8219
   cd472:	49 00 03 80 	jal cdb72 <sm_hal_cryptoTool_hci_send_cmd>
   cd476:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000cd478 <SM_CryptoTool_SendLTKReply>:
   cd478:	fc 03       	push25 $r6,#0x18    ! {$r6, $fp, $gp, $lp}
   cd47a:	b1 81       	addri36.sp $r6,#0x4
   cd47c:	ac 30       	shi333 $r0,[$r6+#0x0]
   cd47e:	fa 40       	movpi45 $r2,#0x10
   cd480:	50 0f 80 06 	addi $r0,$sp,#6
   cd484:	49 ff d5 e2 	jal c8048 <memcpy>
   cd488:	44 00 20 1a 	movi $r0,#8218
   cd48c:	80 26       	mov55 $r1,$r6
   cd48e:	fa 42       	movpi45 $r2,#0x12
   cd490:	49 00 03 71 	jal cdb72 <sm_hal_cryptoTool_hci_send_cmd>
   cd494:	fc 83       	pop25 $r6,#0x18    ! {$r6, $fp, $gp, $lp}

000cd496 <sm_hal_flash_get_paired_device_count>:
   cd496:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cd498:	84 20       	movi55 $r1,#0
   cd49a:	80 01       	mov55 $r0,$r1
   cd49c:	fa 41       	movpi45 $r2,#0x11
   cd49e:	42 30 88 24 	mul $r3,$r1,$r2
   cd4a2:	9c d9       	addi333 $r3,$r3,#1
   cd4a4:	94 db       	slli333 $r3,$r3,#3
   cd4a6:	46 40 00 83 	sethi $r4,#0x83
   cd4aa:	58 42 00 00 	ori $r4,$r4,#0x0
   cd4ae:	98 dc       	add333 $r3,$r3,$r4
   cd4b0:	a6 de       	lbi333 $r3,[$r3+#0x6]
   cd4b2:	5a 30 ff 07 	beqc $r3,#255,cd4c0 <sm_hal_flash_get_paired_device_count+0x2a>
   cd4b6:	9c 01       	addi333 $r0,$r0,#1
   cd4b8:	96 00       	zeb33 $r0,$r0
   cd4ba:	9c 49       	addi333 $r1,$r1,#1
   cd4bc:	5a 08 1e f1 	bnec $r0,#30,cd49e <sm_hal_flash_get_paired_device_count+0x8>
   cd4c0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cd4c2 <sm_hal_flash_isDevice_bonded>:
   cd4c2:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cd4c4:	80 e1       	mov55 $r7,$r1
   cd4c6:	c8 12       	bnez38 $r0,cd4ea <sm_hal_flash_isDevice_bonded+0x28>
   cd4c8:	fa 21       	movpi45 $r1,#0x11
   cd4ca:	42 20 04 24 	mul $r2,$r0,$r1
   cd4ce:	9c 91       	addi333 $r2,$r2,#1
   cd4d0:	94 93       	slli333 $r2,$r2,#3
   cd4d2:	46 30 00 83 	sethi $r3,#0x83
   cd4d6:	58 31 80 00 	ori $r3,$r3,#0x0
   cd4da:	98 93       	add333 $r2,$r2,$r3
   cd4dc:	a6 96       	lbi333 $r2,[$r2+#0x6]
   cd4de:	5a 20 0f 28 	beqc $r2,#15,cd52e <sm_hal_flash_isDevice_bonded+0x6c>
   cd4e2:	9c 01       	addi333 $r0,$r0,#1
   cd4e4:	5a 08 1e f3 	bnec $r0,#30,cd4ca <sm_hal_flash_isDevice_bonded+0x8>
   cd4e8:	d5 25       	j8 cd532 <sm_hal_flash_isDevice_bonded+0x70>
   cd4ea:	50 a0 00 01 	addi $r10,$r0,#1
   cd4ee:	84 c0       	movi55 $r6,#0
   cd4f0:	fb 21       	movpi45 $r9,#0x11
   cd4f2:	42 13 24 24 	mul $r1,$r6,$r9
   cd4f6:	9c 49       	addi333 $r1,$r1,#1
   cd4f8:	46 00 00 83 	sethi $r0,#0x83
   cd4fc:	58 00 00 00 	ori $r0,$r0,#0x0
   cd500:	94 4b       	slli333 $r1,$r1,#3
   cd502:	98 48       	add333 $r1,$r1,$r0
   cd504:	a6 0e       	lbi333 $r0,[$r1+#0x6]
   cd506:	54 83 00 ff 	andi $r8,$r6,#0xff
   cd50a:	5a 08 0f 0b 	bnec $r0,#15,cd520 <sm_hal_flash_isDevice_bonded+0x5e>
   cd50e:	80 0a       	mov55 $r0,$r10
   cd510:	84 46       	movi55 $r2,#6
   cd512:	49 ff d5 8f 	jal c8030 <memcmp>
   cd516:	c8 05       	bnez38 $r0,cd520 <sm_hal_flash_isDevice_bonded+0x5e>
   cd518:	c7 0b       	beqz38 $r7,cd52e <sm_hal_flash_isDevice_bonded+0x6c>
   cd51a:	10 83 80 00 	sbi $r8,[$r7+#0x0]
   cd51e:	d5 08       	j8 cd52e <sm_hal_flash_isDevice_bonded+0x6c>
   cd520:	9d b1       	addi333 $r6,$r6,#1
   cd522:	5a 68 1e e8 	bnec $r6,#30,cd4f2 <sm_hal_flash_isDevice_bonded+0x30>
   cd526:	c7 06       	beqz38 $r7,cd532 <sm_hal_flash_isDevice_bonded+0x70>
   cd528:	84 1f       	movi55 $r0,#-1
   cd52a:	ae 38       	sbi333 $r0,[$r7+#0x0]
   cd52c:	d5 03       	j8 cd532 <sm_hal_flash_isDevice_bonded+0x70>
   cd52e:	84 01       	movi55 $r0,#1
   cd530:	d5 02       	j8 cd534 <sm_hal_flash_isDevice_bonded+0x72>
   cd532:	84 00       	movi55 $r0,#0
   cd534:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cd536 <sm_hal_flash_delete_paired_record>:
   cd536:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   cd538:	84 c0       	movi55 $r6,#0
   cd53a:	10 6f 80 06 	sbi $r6,[$sp+#0x6]
   cd53e:	c8 30       	bnez38 $r0,cd59e <sm_hal_flash_delete_paired_record+0x68>
   cd540:	10 0f 80 07 	sbi $r0,[$sp+#0x7]
   cd544:	fa e1       	movpi45 $r7,#0x11
   cd546:	50 6f 80 06 	addi $r6,$sp,#6
   cd54a:	d5 26       	j8 cd596 <sm_hal_flash_delete_paired_record+0x60>
   cd54c:	42 10 1c 24 	mul $r1,$r0,$r7
   cd550:	9c 49       	addi333 $r1,$r1,#1
   cd552:	46 20 00 83 	sethi $r2,#0x83
   cd556:	58 21 00 00 	ori $r2,$r2,#0x0
   cd55a:	94 4b       	slli333 $r1,$r1,#3
   cd55c:	98 4a       	add333 $r1,$r1,$r2
   cd55e:	a6 8e       	lbi333 $r2,[$r1+#0x6]
   cd560:	5a 20 cf 05 	beqc $r2,#207,cd56a <sm_hal_flash_delete_paired_record+0x34>
   cd564:	a6 8e       	lbi333 $r2,[$r1+#0x6]
   cd566:	5a 28 0f 12 	bnec $r2,#15,cd58a <sm_hal_flash_delete_paired_record+0x54>
   cd56a:	fe 3c       	mul33 $r0,$r7
   cd56c:	9c 01       	addi333 $r0,$r0,#1
   cd56e:	46 10 00 83 	sethi $r1,#0x83
   cd572:	58 10 80 00 	ori $r1,$r1,#0x0
   cd576:	94 03       	slli333 $r0,$r0,#3
   cd578:	98 01       	add333 $r0,$r0,$r1
   cd57a:	84 41       	movi55 $r2,#1
   cd57c:	80 26       	mov55 $r1,$r6
   cd57e:	9c 06       	addi333 $r0,$r0,#6
   cd580:	49 00 24 c3 	jal d1f06 <AB_Flash_ByteProgram>
   cd584:	49 fd 99 5b 	jal 8083a <DRV_MCU_ClearCache>
   cd588:	d5 04       	j8 cd590 <sm_hal_flash_delete_paired_record+0x5a>
   cd58a:	a6 0e       	lbi333 $r0,[$r1+#0x6]
   cd58c:	5a 00 ff 22 	beqc $r0,#255,cd5d0 <sm_hal_flash_delete_paired_record+0x9a>
   cd590:	a6 31       	lbi333 $r0,[$r6+#0x1]
   cd592:	9c 01       	addi333 $r0,$r0,#1
   cd594:	ae 31       	sbi333 $r0,[$r6+#0x1]
   cd596:	a6 31       	lbi333 $r0,[$r6+#0x1]
   cd598:	e6 1e       	slti45 $r0,#30
   cd59a:	e9 d9       	bnezs8 cd54c <sm_hal_flash_delete_paired_record+0x16>
   cd59c:	d5 1a       	j8 cd5d0 <sm_hal_flash_delete_paired_record+0x9a>
   cd59e:	50 1f 80 07 	addi $r1,$sp,#7
   cd5a2:	49 ff ff 90 	jal cd4c2 <sm_hal_flash_isDevice_bonded>
   cd5a6:	c0 15       	beqz38 $r0,cd5d0 <sm_hal_flash_delete_paired_record+0x9a>
   cd5a8:	00 1f 80 07 	lbi $r1,[$sp+#0x7]
   cd5ac:	fa 01       	movpi45 $r0,#0x11
   cd5ae:	fe 0c       	mul33 $r0,$r1
   cd5b0:	9c 01       	addi333 $r0,$r0,#1
   cd5b2:	46 20 00 83 	sethi $r2,#0x83
   cd5b6:	58 21 00 00 	ori $r2,$r2,#0x0
   cd5ba:	94 03       	slli333 $r0,$r0,#3
   cd5bc:	98 02       	add333 $r0,$r0,$r2
   cd5be:	50 1f 80 05 	addi $r1,$sp,#5
   cd5c2:	84 41       	movi55 $r2,#1
   cd5c4:	9c 06       	addi333 $r0,$r0,#6
   cd5c6:	af 88       	sbi333 $r6,[$r1+#0x0]
   cd5c8:	49 00 24 9f 	jal d1f06 <AB_Flash_ByteProgram>
   cd5cc:	49 fd 99 37 	jal 8083a <DRV_MCU_ClearCache>
   cd5d0:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000cd5d2 <sm_hal_flash_load_data>:
   cd5d2:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cd5d4:	84 c0       	movi55 $r6,#0
   cd5d6:	81 40       	mov55 $r10,$r0
   cd5d8:	80 e1       	mov55 $r7,$r1
   cd5da:	fb 21       	movpi45 $r9,#0x11
   cd5dc:	42 13 24 24 	mul $r1,$r6,$r9
   cd5e0:	9c 49       	addi333 $r1,$r1,#1
   cd5e2:	46 00 00 83 	sethi $r0,#0x83
   cd5e6:	58 00 00 00 	ori $r0,$r0,#0x0
   cd5ea:	94 4b       	slli333 $r1,$r1,#3
   cd5ec:	98 48       	add333 $r1,$r1,$r0
   cd5ee:	a6 0e       	lbi333 $r0,[$r1+#0x6]
   cd5f0:	54 83 00 ff 	andi $r8,$r6,#0xff
   cd5f4:	5a 08 0f 15 	bnec $r0,#15,cd61e <sm_hal_flash_load_data+0x4c>
   cd5f8:	80 0a       	mov55 $r0,$r10
   cd5fa:	84 46       	movi55 $r2,#6
   cd5fc:	49 ff d5 1a 	jal c8030 <memcmp>
   cd600:	c8 0f       	bnez38 $r0,cd61e <sm_hal_flash_load_data+0x4c>
   cd602:	40 24 8c 08 	slli $r2,$r9,#3
   cd606:	42 34 08 24 	mul $r3,$r8,$r2
   cd60a:	46 40 00 83 	sethi $r4,#0x83
   cd60e:	58 42 00 00 	ori $r4,$r4,#0x0
   cd612:	80 07       	mov55 $r0,$r7
   cd614:	98 5c       	add333 $r1,$r3,$r4
   cd616:	49 ff d5 19 	jal c8048 <memcpy>
   cd61a:	84 01       	movi55 $r0,#1
   cd61c:	d5 05       	j8 cd626 <sm_hal_flash_load_data+0x54>
   cd61e:	9d b1       	addi333 $r6,$r6,#1
   cd620:	5a 68 1e de 	bnec $r6,#30,cd5dc <sm_hal_flash_load_data+0xa>
   cd624:	84 00       	movi55 $r0,#0
   cd626:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cd628 <sm_hal_protocol_cmd_factory>:
   cd628:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cd62a:	97 80       	zeb33 $r6,$r0
   cd62c:	96 08       	zeb33 $r0,$r1
   cd62e:	49 00 25 0b 	jal d2044 <malloc>
   cd632:	c0 02       	beqz38 $r0,cd636 <sm_hal_protocol_cmd_factory+0xe>
   cd634:	af 80       	sbi333 $r6,[$r0+#0x0]
   cd636:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cd638 <sm_hal_flash_check_master_info>:
   cd638:	fc 43       	push25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}
   cd63a:	54 90 00 ff 	andi $r9,$r0,#0xff
   cd63e:	3c 0d f3 a7 	lwi.gp $r0,[+#-12644]
   cd642:	00 00 00 1a 	lbi $r0,[$r0+#0x1a]
   cd646:	49 ff e9 f2 	jal caa2a <ble_gap_link_GetAttr_BdAddr>
   cd64a:	81 40       	mov55 $r10,$r0
   cd64c:	3c 0d f3 a7 	lwi.gp $r0,[+#-12644]
   cd650:	44 60 00 88 	movi $r6,#136
   cd654:	00 00 00 1a 	lbi $r0,[$r0+#0x1a]
   cd658:	49 ff e9 f3 	jal caa3e <ble_gap_link_GetAttr_BdAddrType>
   cd65c:	f0 82       	swi37.sp $r0,[+#0x8]
   cd65e:	50 05 00 03 	addi $r0,$r10,#3
   cd662:	f0 84       	swi37.sp $r0,[+#0x10]
   cd664:	3e 0d 34 74 	addi.gp $r0,#-183180
   cd668:	f5 04       	lwi37.sp $r5,[+#0x10]
   cd66a:	00 15 00 00 	lbi $r1,[$r10+#0x0]
   cd66e:	00 25 00 01 	lbi $r2,[$r10+#0x1]
   cd672:	00 35 00 02 	lbi $r3,[$r10+#0x2]
   cd676:	a7 28       	lbi333 $r4,[$r5+#0x0]
   cd678:	49 00 25 5b 	jal d212e <printf>
   cd67c:	50 05 00 05 	addi $r0,$r10,#5
   cd680:	f0 83       	swi37.sp $r0,[+#0xc]
   cd682:	3e 0d 34 8c 	addi.gp $r0,#-183156
   cd686:	f3 03       	lwi37.sp $r3,[+#0xc]
   cd688:	00 15 00 04 	lbi $r1,[$r10+#0x4]
   cd68c:	a6 98       	lbi333 $r2,[$r3+#0x0]
   cd68e:	49 00 25 50 	jal d212e <printf>
   cd692:	48 00 00 7d 	j cd78c <sm_hal_flash_check_master_info+0x154>
   cd696:	fa 81       	movpi45 $r4,#0x11
   cd698:	42 04 90 24 	mul $r0,$r9,$r4
   cd69c:	9c 01       	addi333 $r0,$r0,#1
   cd69e:	94 03       	slli333 $r0,$r0,#3
   cd6a0:	46 50 00 83 	sethi $r5,#0x83
   cd6a4:	58 52 80 00 	ori $r5,$r5,#0x0
   cd6a8:	99 45       	add333 $r5,$r0,$r5
   cd6aa:	a6 2e       	lbi333 $r0,[$r5+#0x6]
   cd6ac:	f5 81       	swi37.sp $r5,[+#0x4]
   cd6ae:	85 ef       	movi55 $r15,#15
   cd6b0:	4c 07 c0 6b 	bne $r0,$r15,cd786 <sm_hal_flash_check_master_info+0x14e>
   cd6b4:	42 04 98 24 	mul $r0,$r9,$r6
   cd6b8:	3f cf ce 9c 	addi.gp $fp,#-12644
   cd6bc:	50 10 00 70 	addi $r1,$r0,#112
   cd6c0:	46 20 00 83 	sethi $r2,#0x83
   cd6c4:	58 21 00 00 	ori $r2,$r2,#0x0
   cd6c8:	b5 1c       	lwi450 $r8,[$fp]
   cd6ca:	99 ca       	add333 $r7,$r1,$r2
   cd6cc:	f0 85       	swi37.sp $r0,[+#0x14]
   cd6ce:	9c 7c       	addi333 $r1,$r7,#4
   cd6d0:	50 04 00 18 	addi $r0,$r8,#24
   cd6d4:	84 42       	movi55 $r2,#2
   cd6d6:	49 ff d4 ad 	jal c8030 <memcmp>
   cd6da:	c8 56       	bnez38 $r0,cd786 <sm_hal_flash_check_master_info+0x14e>
   cd6dc:	50 04 00 10 	addi $r0,$r8,#16
   cd6e0:	9c 7e       	addi333 $r1,$r7,#6
   cd6e2:	84 48       	movi55 $r2,#8
   cd6e4:	49 ff d4 a6 	jal c8030 <memcmp>
   cd6e8:	c8 4f       	bnez38 $r0,cd786 <sm_hal_flash_check_master_info+0x14e>
   cd6ea:	80 29       	mov55 $r1,$r9
   cd6ec:	3e 0d 34 9c 	addi.gp $r0,#-183140
   cd6f0:	49 00 25 1f 	jal d212e <printf>
   cd6f4:	f1 01       	lwi37.sp $r1,[+#0x4]
   cd6f6:	80 0a       	mov55 $r0,$r10
   cd6f8:	84 46       	movi55 $r2,#6
   cd6fa:	49 ff d4 9b 	jal c8030 <memcmp>
   cd6fe:	80 c0       	mov55 $r6,$r0
   cd700:	c8 16       	bnez38 $r0,cd72c <sm_hal_flash_check_master_info+0xf4>
   cd702:	f4 01       	lwi37.sp $r4,[+#0x4]
   cd704:	f5 02       	lwi37.sp $r5,[+#0x8]
   cd706:	a6 e7       	lbi333 $r3,[$r4+#0x7]
   cd708:	db 12       	bnes38 $r3,cd72c <sm_hal_flash_check_master_info+0xf4>
   cd70a:	b4 5c       	lwi450 $r2,[$fp]
   cd70c:	f1 05       	lwi37.sp $r1,[+#0x14]
   cd70e:	a0 d7       	lwi333 $r3,[$r2+#0x1c]
   cd710:	46 40 00 83 	sethi $r4,#0x83
   cd714:	58 42 00 14 	ori $r4,$r4,#0x14
   cd718:	00 21 00 1a 	lbi $r2,[$r2+#0x1a]
   cd71c:	98 0c       	add333 $r0,$r1,$r4
   cd71e:	80 26       	mov55 $r1,$r6
   cd720:	dd 23       	jral5 $r3
   cd722:	b4 1c       	lwi450 $r0,[$fp]
   cd724:	49 00 24 2b 	jal d1f7a <free>
   cd728:	b6 dc       	swi450 $r6,[$fp]
   cd72a:	d5 42       	j8 cd7ae <sm_hal_flash_check_master_info+0x176>
   cd72c:	44 60 00 88 	movi $r6,#136
   cd730:	42 64 98 24 	mul $r6,$r9,$r6
   cd734:	46 50 00 83 	sethi $r5,#0x83
   cd738:	58 52 80 00 	ori $r5,$r5,#0x0
   cd73c:	98 f5       	add333 $r3,$r6,$r5
   cd73e:	8c 70       	addi45 $r3,#16
   cd740:	a6 da       	lbi333 $r3,[$r3+#0x2]
   cd742:	96 ce       	bmski33 $r3,#0x1
   cd744:	c3 35       	beqz38 $r3,cd7ae <sm_hal_flash_check_master_info+0x176>
   cd746:	f0 02       	lwi37.sp $r0,[+#0x8]
   cd748:	5a 08 01 33 	bnec $r0,#1,cd7ae <sm_hal_flash_check_master_info+0x176>
   cd74c:	f1 03       	lwi37.sp $r1,[+#0xc]
   cd74e:	a6 c8       	lbi333 $r3,[$r1+#0x0]
   cd750:	96 f6       	bmski33 $r3,#0x6
   cd752:	c3 2e       	beqz38 $r3,cd7ae <sm_hal_flash_check_master_info+0x176>
   cd754:	3c 0d f3 a7 	lwi.gp $r0,[+#-12644]
   cd758:	50 22 80 14 	addi $r2,$r5,#20
   cd75c:	10 90 00 1b 	sbi $r9,[$r0+#0x1b]
   cd760:	98 72       	add333 $r1,$r6,$r2
   cd762:	fa 40       	movpi45 $r2,#0x10
   cd764:	49 ff d4 72 	jal c8048 <memcpy>
   cd768:	3c 0d f3 a7 	lwi.gp $r0,[+#-12644]
   cd76c:	46 30 00 83 	sethi $r3,#0x83
   cd770:	58 31 80 64 	ori $r3,$r3,#0x64
   cd774:	f2 04       	lwi37.sp $r2,[+#0x10]
   cd776:	00 00 00 1a 	lbi $r0,[$r0+#0x1a]
   cd77a:	98 73       	add333 $r1,$r6,$r3
   cd77c:	3e 3c 97 f8 	addi.gp $r3,#-223240
   cd780:	49 ff fd b7 	jal cd2ee <ah>
   cd784:	d5 15       	j8 cd7ae <sm_hal_flash_check_master_info+0x176>
   cd786:	8d 21       	addi45 $r9,#1
   cd788:	54 94 80 ff 	andi $r9,$r9,#0xff
   cd78c:	e7 3e       	slti45 $r9,#30
   cd78e:	4e f3 ff 84 	bnez $r15,cd696 <sm_hal_flash_check_master_info+0x5e>
   cd792:	3e 6f ce 9c 	addi.gp $r6,#-12644
   cd796:	b4 46       	lwi450 $r2,[$r6]
   cd798:	84 00       	movi55 $r0,#0
   cd79a:	a0 d7       	lwi333 $r3,[$r2+#0x1c]
   cd79c:	00 21 00 1a 	lbi $r2,[$r2+#0x1a]
   cd7a0:	84 27       	movi55 $r1,#7
   cd7a2:	dd 23       	jral5 $r3
   cd7a4:	b4 06       	lwi450 $r0,[$r6]
   cd7a6:	49 00 23 ea 	jal d1f7a <free>
   cd7aa:	84 00       	movi55 $r0,#0
   cd7ac:	b6 06       	swi450 $r0,[$r6]
   cd7ae:	fc c3       	pop25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}

000cd7b0 <sm_hal_flash_get_ltk>:
   cd7b0:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cd7b2:	81 20       	mov55 $r9,$r0
   cd7b4:	fa 10       	movpi45 $r0,#0x20
   cd7b6:	81 41       	mov55 $r10,$r1
   cd7b8:	81 03       	mov55 $r8,$r3
   cd7ba:	97 d0       	zeb33 $r7,$r2
   cd7bc:	49 00 24 44 	jal d2044 <malloc>
   cd7c0:	3c 0f f3 a7 	swi.gp $r0,[+#-12644]
   cd7c4:	c8 05       	bnez38 $r0,cd7ce <sm_hal_flash_get_ltk+0x1e>
   cd7c6:	84 23       	movi55 $r1,#3
   cd7c8:	80 47       	mov55 $r2,$r7
   cd7ca:	dd 28       	jral5 $r8
   cd7cc:	d5 15       	j8 cd7f6 <sm_hal_flash_get_ltk+0x46>
   cd7ce:	14 80 00 07 	swi $r8,[$r0+#0x1c]
   cd7d2:	10 70 00 1a 	sbi $r7,[$r0+#0x1a]
   cd7d6:	80 2a       	mov55 $r1,$r10
   cd7d8:	84 48       	movi55 $r2,#8
   cd7da:	8c 10       	addi45 $r0,#16
   cd7dc:	49 ff d4 36 	jal c8048 <memcpy>
   cd7e0:	3c 2d f3 a7 	lwi.gp $r2,[+#-12644]
   cd7e4:	80 29       	mov55 $r1,$r9
   cd7e6:	50 01 00 18 	addi $r0,$r2,#24
   cd7ea:	84 42       	movi55 $r2,#2
   cd7ec:	49 ff d4 2e 	jal c8048 <memcpy>
   cd7f0:	84 00       	movi55 $r0,#0
   cd7f2:	49 ff ff 23 	jal cd638 <sm_hal_flash_check_master_info>
   cd7f6:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cd7f8 <SM_hal_flash_ah_cb>:
   cd7f8:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cd7fa:	80 c0       	mov55 $r6,$r0
   cd7fc:	97 d0       	zeb33 $r7,$r2
   cd7fe:	a6 70       	lbi333 $r1,[$r6+#0x0]
   cd800:	a6 b1       	lbi333 $r2,[$r6+#0x1]
   cd802:	a6 f2       	lbi333 $r3,[$r6+#0x2]
   cd804:	3e 0d 34 c4 	addi.gp $r0,#-183100
   cd808:	49 00 24 93 	jal d212e <printf>
   cd80c:	80 07       	mov55 $r0,$r7
   cd80e:	49 ff e9 0e 	jal caa2a <ble_gap_link_GetAttr_BdAddr>
   cd812:	80 26       	mov55 $r1,$r6
   cd814:	84 43       	movi55 $r2,#3
   cd816:	49 ff d4 0d 	jal c8030 <memcmp>
   cd81a:	81 00       	mov55 $r8,$r0
   cd81c:	3e 7f ce 9c 	addi.gp $r7,#-12644
   cd820:	c8 35       	bnez38 $r0,cd88a <SM_hal_flash_ah_cb+0x92>
   cd822:	b4 c7       	lwi450 $r6,[$r7]
   cd824:	3e 0d 34 d8 	addi.gp $r0,#-183080
   cd828:	a6 70       	lbi333 $r1,[$r6+#0x0]
   cd82a:	a6 b1       	lbi333 $r2,[$r6+#0x1]
   cd82c:	a6 f2       	lbi333 $r3,[$r6+#0x2]
   cd82e:	a7 33       	lbi333 $r4,[$r6+#0x3]
   cd830:	49 00 24 7f 	jal d212e <printf>
   cd834:	a6 74       	lbi333 $r1,[$r6+#0x4]
   cd836:	a6 b5       	lbi333 $r2,[$r6+#0x5]
   cd838:	a6 f6       	lbi333 $r3,[$r6+#0x6]
   cd83a:	a7 37       	lbi333 $r4,[$r6+#0x7]
   cd83c:	3e 0d 34 f0 	addi.gp $r0,#-183056
   cd840:	49 00 24 77 	jal d212e <printf>
   cd844:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   cd848:	00 23 00 09 	lbi $r2,[$r6+#0x9]
   cd84c:	00 33 00 0a 	lbi $r3,[$r6+#0xa]
   cd850:	00 43 00 0b 	lbi $r4,[$r6+#0xb]
   cd854:	3e 0d 35 08 	addi.gp $r0,#-183032
   cd858:	49 00 24 6b 	jal d212e <printf>
   cd85c:	00 43 00 0f 	lbi $r4,[$r6+#0xf]
   cd860:	00 13 00 0c 	lbi $r1,[$r6+#0xc]
   cd864:	00 23 00 0d 	lbi $r2,[$r6+#0xd]
   cd868:	00 33 00 0e 	lbi $r3,[$r6+#0xe]
   cd86c:	3e 0d 35 20 	addi.gp $r0,#-183008
   cd870:	49 00 24 5f 	jal d212e <printf>
   cd874:	b4 07       	lwi450 $r0,[$r7]
   cd876:	80 28       	mov55 $r1,$r8
   cd878:	a0 c7       	lwi333 $r3,[$r0+#0x1c]
   cd87a:	00 20 00 1a 	lbi $r2,[$r0+#0x1a]
   cd87e:	dd 23       	jral5 $r3
   cd880:	b4 07       	lwi450 $r0,[$r7]
   cd882:	49 00 23 7c 	jal d1f7a <free>
   cd886:	b7 07       	swi450 $r8,[$r7]
   cd888:	d5 0a       	j8 cd89c <SM_hal_flash_ah_cb+0xa4>
   cd88a:	b4 27       	lwi450 $r1,[$r7]
   cd88c:	00 00 80 1b 	lbi $r0,[$r1+#0x1b]
   cd890:	9c 01       	addi333 $r0,$r0,#1
   cd892:	96 00       	zeb33 $r0,$r0
   cd894:	10 00 80 1b 	sbi $r0,[$r1+#0x1b]
   cd898:	49 ff fe d0 	jal cd638 <sm_hal_flash_check_master_info>
   cd89c:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cd89e <sm_hal_cryptoTool_hci_cmd_complete>:
   cd89e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cd8a0:	a6 8b       	lbi333 $r2,[$r1+#0x3]
   cd8a2:	80 c3       	mov55 $r6,$r3
   cd8a4:	c2 07       	beqz38 $r2,cd8b2 <sm_hal_cryptoTool_hci_cmd_complete+0x14>
   cd8a6:	a6 49       	lbi333 $r1,[$r1+#0x1]
   cd8a8:	3e 0d 35 38 	addi.gp $r0,#-182984
   cd8ac:	49 00 24 41 	jal d212e <printf>
   cd8b0:	d5 0a       	j8 cd8c4 <sm_hal_cryptoTool_hci_cmd_complete+0x26>
   cd8b2:	c3 09       	beqz38 $r3,cd8c4 <sm_hal_cryptoTool_hci_cmd_complete+0x26>
   cd8b4:	9c 0c       	addi333 $r0,$r1,#4
   cd8b6:	b4 63       	lwi450 $r3,[$r3]
   cd8b8:	80 22       	mov55 $r1,$r2
   cd8ba:	a6 b4       	lbi333 $r2,[$r6+#0x4]
   cd8bc:	dd 23       	jral5 $r3
   cd8be:	80 06       	mov55 $r0,$r6
   cd8c0:	49 00 23 5d 	jal d1f7a <free>
   cd8c4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cd8c6 <sm_hal_flash_reset_data>:
   cd8c6:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   cd8c8:	46 00 00 83 	sethi $r0,#0x83
   cd8cc:	58 00 00 00 	ori $r0,$r0,#0x0
   cd8d0:	49 00 23 31 	jal d1f32 <AB_Flash_SectorErase>
   cd8d4:	96 00       	zeb33 $r0,$r0
   cd8d6:	c0 13       	beqz38 $r0,cd8fc <sm_hal_flash_reset_data+0x36>
   cd8d8:	44 0f ff aa 	movi $r0,#-86
   cd8dc:	10 0f 80 07 	sbi $r0,[$sp+#0x7]
   cd8e0:	50 1f 80 07 	addi $r1,$sp,#7
   cd8e4:	84 41       	movi55 $r2,#1
   cd8e6:	46 00 00 83 	sethi $r0,#0x83
   cd8ea:	58 00 0f f0 	ori $r0,$r0,#0xff0
   cd8ee:	49 00 23 0c 	jal d1f06 <AB_Flash_ByteProgram>
   cd8f2:	80 c0       	mov55 $r6,$r0
   cd8f4:	49 fd 97 a3 	jal 8083a <DRV_MCU_ClearCache>
   cd8f8:	96 30       	zeb33 $r0,$r6
   cd8fa:	c8 05       	bnez38 $r0,cd904 <sm_hal_flash_reset_data+0x3e>
   cd8fc:	3e 0d 35 5c 	addi.gp $r0,#-182948
   cd900:	49 00 3c 2d 	jal d515a <puts>
   cd904:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000cd906 <sm_hal_flash_init_data>:
   cd906:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cd908:	46 f0 00 83 	sethi $r15,#0x83
   cd90c:	00 07 8f f0 	lbi $r0,[$r15+#0xff0]
   cd910:	5a 00 aa 06 	beqc $r0,#170,cd91c <sm_hal_flash_init_data+0x16>
   cd914:	49 ff ff d9 	jal cd8c6 <sm_hal_flash_reset_data>
   cd918:	49 fd 97 91 	jal 8083a <DRV_MCU_ClearCache>
   cd91c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cd91e <sm_hal_flash_save_data>:
   cd91e:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cd920:	51 ff ef f0 	addi $sp,$sp,#-4112
   cd924:	54 a0 00 ff 	andi $r10,$r0,#0xff
   cd928:	3e 0f c9 c0 	addi.gp $r0,#-13888
   cd92c:	38 10 2a 02 	lw $r1,[$r0+($r10<<#0x2)]
   cd930:	4e 12 01 14 	beqz $r1,cdb58 <sm_hal_flash_save_data+0x23a>
   cd934:	50 10 80 98 	addi $r1,$r1,#152
   cd938:	84 46       	movi55 $r2,#6
   cd93a:	50 0f 90 09 	addi $r0,$sp,#4105
   cd93e:	49 ff d3 85 	jal c8048 <memcpy>
   cd942:	50 0f 90 08 	addi $r0,$sp,#4104
   cd946:	49 ff fd f8 	jal cd536 <sm_hal_flash_delete_paired_record>
   cd94a:	49 ff fd a6 	jal cd496 <sm_hal_flash_get_paired_device_count>
   cd94e:	80 c0       	mov55 $r6,$r0
   cd950:	5a 00 1e 04 	beqc $r0,#30,cd958 <sm_hal_flash_save_data+0x3a>
   cd954:	48 00 00 b5 	j cdabe <sm_hal_flash_save_data+0x1a0>
   cd958:	85 00       	movi55 $r8,#0
   cd95a:	3e 0d 35 68 	addi.gp $r0,#-182936
   cd95e:	49 00 3b fe 	jal d515a <puts>
   cd962:	80 e8       	mov55 $r7,$r8
   cd964:	81 28       	mov55 $r9,$r8
   cd966:	45 c0 00 11 	movi $fp,#17
   cd96a:	b1 05       	addri36.sp $r4,#0x14
   cd96c:	40 3e 0c 08 	slli $r3,$fp,#3
   cd970:	44 6f ff cf 	movi $r6,#-49
   cd974:	42 03 f0 24 	mul $r0,$r7,$fp
   cd978:	9c 01       	addi333 $r0,$r0,#1
   cd97a:	94 03       	slli333 $r0,$r0,#3
   cd97c:	46 10 00 83 	sethi $r1,#0x83
   cd980:	58 10 80 00 	ori $r1,$r1,#0x0
   cd984:	98 01       	add333 $r0,$r0,$r1
   cd986:	a6 06       	lbi333 $r0,[$r0+#0x6]
   cd988:	5a 08 0f 17 	bnec $r0,#15,cd9b6 <sm_hal_flash_save_data+0x98>
   cd98c:	80 04       	mov55 $r0,$r4
   cd98e:	42 04 8c 73 	maddr32 $r0,$r9,$r3
   cd992:	88 28       	add45 $r1,$r8
   cd994:	44 20 00 88 	movi $r2,#136
   cd998:	f3 82       	swi37.sp $r3,[+#0x8]
   cd99a:	f4 81       	swi37.sp $r4,[+#0x4]
   cd99c:	49 ff d3 56 	jal c8048 <memcpy>
   cd9a0:	42 04 f0 24 	mul $r0,$r9,$fp
   cd9a4:	f4 01       	lwi37.sp $r4,[+#0x4]
   cd9a6:	9c 01       	addi333 $r0,$r0,#1
   cd9a8:	94 03       	slli333 $r0,$r0,#3
   cd9aa:	98 20       	add333 $r0,$r4,$r0
   cd9ac:	af 86       	sbi333 $r6,[$r0+#0x6]
   cd9ae:	8d 21       	addi45 $r9,#1
   cd9b0:	f3 02       	lwi37.sp $r3,[+#0x8]
   cd9b2:	54 94 80 ff 	andi $r9,$r9,#0xff
   cd9b6:	9d f9       	addi333 $r7,$r7,#1
   cd9b8:	50 84 00 88 	addi $r8,$r8,#136
   cd9bc:	5a 78 1e dc 	bnec $r7,#30,cd974 <sm_hal_flash_save_data+0x56>
   cd9c0:	49 ff ff 83 	jal cd8c6 <sm_hal_flash_reset_data>
   cd9c4:	4c 93 c0 08 	bne $r9,$r7,cd9d4 <sm_hal_flash_save_data+0xb6>
   cd9c8:	84 c0       	movi55 $r6,#0
   cd9ca:	fb 21       	movpi45 $r9,#0x11
   cd9cc:	40 84 8c 08 	slli $r8,$r9,#3
   cd9d0:	80 8a       	mov55 $r4,$r10
   cd9d2:	d5 3b       	j8 cda48 <sm_hal_flash_save_data+0x12a>
   cd9d4:	b1 85       	addri36.sp $r6,#0x14
   cd9d6:	85 00       	movi55 $r8,#0
   cd9d8:	80 6a       	mov55 $r3,$r10
   cd9da:	80 e8       	mov55 $r7,$r8
   cd9dc:	fa a1       	movpi45 $r5,#0x11
   cd9de:	80 86       	mov55 $r4,$r6
   cd9e0:	81 49       	mov55 $r10,$r9
   cd9e2:	d5 68       	j8 cdab2 <sm_hal_flash_save_data+0x194>
   cd9e4:	42 03 24 24 	mul $r0,$r6,$r9
   cd9e8:	9d f1       	addi333 $r7,$r6,#1
   cd9ea:	9c 01       	addi333 $r0,$r0,#1
   cd9ec:	46 20 00 83 	sethi $r2,#0x83
   cd9f0:	58 21 00 00 	ori $r2,$r2,#0x0
   cd9f4:	94 03       	slli333 $r0,$r0,#3
   cd9f6:	42 33 a4 24 	mul $r3,$r7,$r9
   cd9fa:	98 02       	add333 $r0,$r0,$r2
   cd9fc:	9c d9       	addi333 $r3,$r3,#1
   cd9fe:	50 a0 00 06 	addi $r10,$r0,#6
   cda02:	94 db       	slli333 $r3,$r3,#3
   cda04:	b0 05       	addri36.sp $r0,#0x14
   cda06:	98 c3       	add333 $r3,$r0,$r3
   cda08:	51 c1 80 06 	addi $fp,$r3,#6
   cda0c:	80 3c       	mov55 $r1,$fp
   cda0e:	84 41       	movi55 $r2,#1
   cda10:	80 0a       	mov55 $r0,$r10
   cda12:	f4 81       	swi37.sp $r4,[+#0x4]
   cda14:	f3 82       	swi37.sp $r3,[+#0x8]
   cda16:	49 00 22 78 	jal d1f06 <AB_Flash_ByteProgram>
   cda1a:	42 03 20 24 	mul $r0,$r6,$r8
   cda1e:	46 10 00 83 	sethi $r1,#0x83
   cda22:	58 10 80 00 	ori $r1,$r1,#0x0
   cda26:	98 01       	add333 $r0,$r0,$r1
   cda28:	b0 45       	addri36.sp $r1,#0x14
   cda2a:	42 13 a0 73 	maddr32 $r1,$r7,$r8
   cda2e:	80 48       	mov55 $r2,$r8
   cda30:	49 00 22 6b 	jal d1f06 <AB_Flash_ByteProgram>
   cda34:	f3 02       	lwi37.sp $r3,[+#0x8]
   cda36:	84 4f       	movi55 $r2,#15
   cda38:	ae 9e       	sbi333 $r2,[$r3+#0x6]
   cda3a:	80 0a       	mov55 $r0,$r10
   cda3c:	80 3c       	mov55 $r1,$fp
   cda3e:	84 41       	movi55 $r2,#1
   cda40:	49 00 22 63 	jal d1f06 <AB_Flash_ByteProgram>
   cda44:	f4 01       	lwi37.sp $r4,[+#0x4]
   cda46:	97 b8       	zeb33 $r6,$r7
   cda48:	5a 68 1d ce 	bnec $r6,#29,cd9e4 <sm_hal_flash_save_data+0xc6>
   cda4c:	81 44       	mov55 $r10,$r4
   cda4e:	d5 38       	j8 cdabe <sm_hal_flash_save_data+0x1a0>
   cda50:	42 13 94 24 	mul $r1,$r7,$r5
   cda54:	9c 49       	addi333 $r1,$r1,#1
   cda56:	94 4b       	slli333 $r1,$r1,#3
   cda58:	46 20 00 83 	sethi $r2,#0x83
   cda5c:	58 21 00 00 	ori $r2,$r2,#0x0
   cda60:	98 0a       	add333 $r0,$r1,$r2
   cda62:	98 61       	add333 $r1,$r4,$r1
   cda64:	50 90 00 06 	addi $r9,$r0,#6
   cda68:	51 c0 80 06 	addi $fp,$r1,#6
   cda6c:	80 3c       	mov55 $r1,$fp
   cda6e:	84 41       	movi55 $r2,#1
   cda70:	80 09       	mov55 $r0,$r9
   cda72:	f3 82       	swi37.sp $r3,[+#0x8]
   cda74:	f4 81       	swi37.sp $r4,[+#0x4]
   cda76:	f5 83       	swi37.sp $r5,[+#0xc]
   cda78:	49 00 22 47 	jal d1f06 <AB_Flash_ByteProgram>
   cda7c:	46 10 00 83 	sethi $r1,#0x83
   cda80:	58 10 80 00 	ori $r1,$r1,#0x0
   cda84:	40 04 04 00 	add $r0,$r8,$r1
   cda88:	44 20 00 88 	movi $r2,#136
   cda8c:	80 26       	mov55 $r1,$r6
   cda8e:	49 00 22 3c 	jal d1f06 <AB_Flash_ByteProgram>
   cda92:	84 4f       	movi55 $r2,#15
   cda94:	10 23 00 0e 	sbi $r2,[$r6+#0xe]
   cda98:	80 09       	mov55 $r0,$r9
   cda9a:	80 3c       	mov55 $r1,$fp
   cda9c:	84 41       	movi55 $r2,#1
   cda9e:	49 00 22 34 	jal d1f06 <AB_Flash_ByteProgram>
   cdaa2:	f5 03       	lwi37.sp $r5,[+#0xc]
   cdaa4:	f4 01       	lwi37.sp $r4,[+#0x4]
   cdaa6:	f3 02       	lwi37.sp $r3,[+#0x8]
   cdaa8:	9d f9       	addi333 $r7,$r7,#1
   cdaaa:	50 84 00 88 	addi $r8,$r8,#136
   cdaae:	50 63 00 88 	addi $r6,$r6,#136
   cdab2:	96 38       	zeb33 $r0,$r7
   cdab4:	e2 0a       	slt45 $r0,$r10
   cdab6:	e9 cd       	bnezs8 cda50 <sm_hal_flash_save_data+0x132>
   cdab8:	81 2a       	mov55 $r9,$r10
   cdaba:	80 c9       	mov55 $r6,$r9
   cdabc:	81 43       	mov55 $r10,$r3
   cdabe:	fb 21       	movpi45 $r9,#0x11
   cdac0:	42 93 24 24 	mul $r9,$r6,$r9
   cdac4:	3e 7f c9 c0 	addi.gp $r7,#-13888
   cdac8:	8d 21       	addi45 $r9,#1
   cdaca:	38 23 aa 02 	lw $r2,[$r7+($r10<<#0x2)]
   cdace:	46 30 00 83 	sethi $r3,#0x83
   cdad2:	58 31 80 00 	ori $r3,$r3,#0x0
   cdad6:	40 94 8c 08 	slli $r9,$r9,#3
   cdada:	89 23       	add45 $r9,$r3
   cdadc:	44 0f ff cf 	movi $r0,#-49
   cdae0:	10 01 00 9e 	sbi $r0,[$r2+#0x9e]
   cdae4:	50 84 80 06 	addi $r8,$r9,#6
   cdae8:	50 11 00 9e 	addi $r1,$r2,#158
   cdaec:	80 08       	mov55 $r0,$r8
   cdaee:	84 41       	movi55 $r2,#1
   cdaf0:	49 00 22 0b 	jal d1f06 <AB_Flash_ByteProgram>
   cdaf4:	44 20 00 88 	movi $r2,#136
   cdaf8:	38 13 aa 02 	lw $r1,[$r7+($r10<<#0x2)]
   cdafc:	46 30 00 83 	sethi $r3,#0x83
   cdb00:	58 31 80 00 	ori $r3,$r3,#0x0
   cdb04:	42 03 08 24 	mul $r0,$r6,$r2
   cdb08:	98 03       	add333 $r0,$r0,$r3
   cdb0a:	50 10 80 90 	addi $r1,$r1,#144
   cdb0e:	49 00 21 fc 	jal d1f06 <AB_Flash_ByteProgram>
   cdb12:	38 13 aa 02 	lw $r1,[$r7+($r10<<#0x2)]
   cdb16:	83 80       	mov55 $fp,$r0
   cdb18:	84 0f       	movi55 $r0,#15
   cdb1a:	10 00 80 9e 	sbi $r0,[$r1+#0x9e]
   cdb1e:	84 41       	movi55 $r2,#1
   cdb20:	50 10 80 9e 	addi $r1,$r1,#158
   cdb24:	80 08       	mov55 $r0,$r8
   cdb26:	54 7e 00 ff 	andi $r7,$fp,#0xff
   cdb2a:	49 00 21 ee 	jal d1f06 <AB_Flash_ByteProgram>
   cdb2e:	49 fd 96 86 	jal 8083a <DRV_MCU_ClearCache>
   cdb32:	cf 13       	bnez38 $r7,cdb58 <sm_hal_flash_save_data+0x23a>
   cdb34:	80 26       	mov55 $r1,$r6
   cdb36:	3e 0d 35 80 	addi.gp $r0,#-182912
   cdb3a:	49 00 22 fa 	jal d212e <printf>
   cdb3e:	80 28       	mov55 $r1,$r8
   cdb40:	3e 0d 35 b8 	addi.gp $r0,#-182856
   cdb44:	49 00 22 f5 	jal d212e <printf>
   cdb48:	3e 0d 35 cc 	addi.gp $r0,#-182836
   cdb4c:	50 14 80 07 	addi $r1,$r9,#7
   cdb50:	49 00 22 ef 	jal d212e <printf>
   cdb54:	80 07       	mov55 $r0,$r7
   cdb56:	d5 02       	j8 cdb5a <sm_hal_flash_save_data+0x23c>
   cdb58:	84 01       	movi55 $r0,#1
   cdb5a:	51 ff 90 10 	addi $sp,$sp,#4112
   cdb5e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cdb60 <sm_hal_cryptoTool_hci_send_cmd_ex>:
   cdb60:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdb62:	80 83       	mov55 $r4,$r3
   cdb64:	96 01       	zeh33 $r0,$r0
   cdb66:	96 90       	zeb33 $r2,$r2
   cdb68:	3e 3c 98 9e 	addi.gp $r3,#-223074
   cdb6c:	49 00 13 07 	jal d017a <hci_send_cmd_ex>
   cdb70:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdb72 <sm_hal_cryptoTool_hci_send_cmd>:
   cdb72:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdb74:	3e 3c 98 9e 	addi.gp $r3,#-223074
   cdb78:	96 01       	zeh33 $r0,$r0
   cdb7a:	96 90       	zeb33 $r2,$r2
   cdb7c:	49 00 13 6a 	jal d0250 <hci_send_cmd>
   cdb80:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdb82 <sm_hal_cryptoTool_init>:
   cdb82:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   cdb84:	3e 0d 2c 9c 	addi.gp $r0,#-185188
   cdb88:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   cdb8c:	84 48       	movi55 $r2,#8
   cdb8e:	3a 0f 84 20 	smw.bi $r0,[$sp],$r1,#0x0    ! {$r0~$r1}
   cdb92:	44 00 20 01 	movi $r0,#8193
   cdb96:	80 3f       	mov55 $r1,$sp
   cdb98:	49 ff ff ed 	jal cdb72 <sm_hal_cryptoTool_hci_send_cmd>
   cdb9c:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000cdb9e <sm_hal_protocol_init>:
   cdb9e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdba0:	3e 1c 9b c4 	addi.gp $r1,#-222268
   cdba4:	84 06       	movi55 $r0,#6
   cdba6:	49 ff e8 e7 	jal cad74 <BLE_l2cap_cid_register>
   cdbaa:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdbac <sm_hal_init>:
   cdbac:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdbae:	49 ff ff f8 	jal cdb9e <sm_hal_protocol_init>
   cdbb2:	49 ff fe aa 	jal cd906 <sm_hal_flash_init_data>
   cdbb6:	49 ff f7 df 	jal ccb74 <SM_CryptoTool_init>
   cdbba:	49 00 07 12 	jal ce9de <SM_Slave_Init>
   cdbbe:	49 00 0c c6 	jal cf54a <SM_Master_Init>
   cdbc2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdbc4 <sm_hal_protocol_cid_evt_cb>:
   cdbc4:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   cdbc6:	3a 2f 8c 20 	smw.bi $r2,[$sp],$r3,#0x0    ! {$r2~$r3}
   cdbca:	96 00       	zeb33 $r0,$r0
   cdbcc:	c9 04       	bnez38 $r1,cdbd4 <sm_hal_protocol_cid_evt_cb+0x10>
   cdbce:	80 22       	mov55 $r1,$r2
   cdbd0:	49 00 00 c6 	jal cdd5c <SM_Protocol_L2capEventHandler>
   cdbd4:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000cdbd6 <sm_hal_protocol_send_l2cap_packet>:
   cdbd6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdbd8:	80 c1       	mov55 $r6,$r1
   cdbda:	96 d1       	zeh33 $r3,$r2
   cdbdc:	84 26       	movi55 $r1,#6
   cdbde:	80 46       	mov55 $r2,$r6
   cdbe0:	96 00       	zeb33 $r0,$r0
   cdbe2:	49 ff e8 dd 	jal cad9c <l2cap_hci_fragment>
   cdbe6:	80 06       	mov55 $r0,$r6
   cdbe8:	49 00 21 c9 	jal d1f7a <free>
   cdbec:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdbee <sm_hal_infom_auth_status>:
   cdbee:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   cdbf0:	44 20 20 04 	movi $r2,#8196
   cdbf4:	96 00       	zeb33 $r0,$r0
   cdbf6:	b6 5f       	swi450 $r2,[$sp]
   cdbf8:	10 1f 80 06 	sbi $r1,[$sp+#0x6]
   cdbfc:	49 ff e6 ec 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   cdc00:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   cdc04:	80 1f       	mov55 $r0,$sp
   cdc06:	80 df       	mov55 $r6,$sp
   cdc08:	49 ff e2 94 	jal ca130 <bt_infom_ap>
   cdc0c:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

000cdc0e <sm_hal_infom_conn_sec_update>:
   cdc0e:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   cdc10:	96 48       	zeb33 $r1,$r1
   cdc12:	94 4c       	slli333 $r1,$r1,#4
   cdc14:	44 30 20 03 	movi $r3,#8195
   cdc18:	58 10 80 01 	ori $r1,$r1,#0x1
   cdc1c:	80 1f       	mov55 $r0,$sp
   cdc1e:	b6 7f       	swi450 $r3,[$sp]
   cdc20:	10 1f 80 06 	sbi $r1,[$sp+#0x6]
   cdc24:	10 2f 80 08 	sbi $r2,[$sp+#0x8]
   cdc28:	49 ff e2 84 	jal ca130 <bt_infom_ap>
   cdc2c:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

000cdc2e <sm_hal_infom_recv_security_req>:
   cdc2e:	fc 26       	push25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}
   cdc30:	97 c8       	zeb33 $r7,$r1
   cdc32:	96 00       	zeb33 $r0,$r0
   cdc34:	44 10 20 05 	movi $r1,#8197
   cdc38:	b6 3f       	swi450 $r1,[$sp]
   cdc3a:	49 ff e6 cd 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   cdc3e:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   cdc42:	00 0f 80 06 	lbi $r0,[$sp+#0x6]
   cdc46:	96 7c       	xlsb33 $r1,$r7
   cdc48:	92 02       	srli45 $r0,#2
   cdc4a:	94 02       	slli333 $r0,$r0,#2
   cdc4c:	fe 0f       	or33 $r0,$r1
   cdc4e:	10 0f 80 06 	sbi $r0,[$sp+#0x6]
   cdc52:	80 1f       	mov55 $r0,$sp
   cdc54:	80 df       	mov55 $r6,$sp
   cdc56:	49 ff e2 6d 	jal ca130 <bt_infom_ap>
   cdc5a:	fc a6       	pop25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}

000cdc5c <sm_hal_infom_passkey_input_req>:
   cdc5c:	fc 26       	push25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}
   cdc5e:	97 c8       	zeb33 $r7,$r1
   cdc60:	96 00       	zeb33 $r0,$r0
   cdc62:	44 10 20 02 	movi $r1,#8194
   cdc66:	b6 3f       	swi450 $r1,[$sp]
   cdc68:	49 ff e6 b6 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   cdc6c:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   cdc70:	80 1f       	mov55 $r0,$sp
   cdc72:	10 7f 80 06 	sbi $r7,[$sp+#0x6]
   cdc76:	80 df       	mov55 $r6,$sp
   cdc78:	49 ff e2 5c 	jal ca130 <bt_infom_ap>
   cdc7c:	fc a6       	pop25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}

000cdc7e <sm_hal_infom_passkey_display_req>:
   cdc7e:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   cdc80:	44 30 20 01 	movi $r3,#8193
   cdc84:	b6 7f       	swi450 $r3,[$sp]
   cdc86:	80 1f       	mov55 $r0,$sp
   cdc88:	a6 d2       	lbi333 $r3,[$r2+#0x2]
   cdc8a:	10 3f 80 06 	sbi $r3,[$sp+#0x6]
   cdc8e:	a6 d1       	lbi333 $r3,[$r2+#0x1]
   cdc90:	10 3f 80 07 	sbi $r3,[$sp+#0x7]
   cdc94:	a6 90       	lbi333 $r2,[$r2+#0x0]
   cdc96:	10 1f 80 09 	sbi $r1,[$sp+#0x9]
   cdc9a:	10 2f 80 08 	sbi $r2,[$sp+#0x8]
   cdc9e:	49 ff e2 49 	jal ca130 <bt_infom_ap>
   cdca2:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

000cdca4 <sm_hal_infom_set_sec_param_req>:
   cdca4:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   cdca6:	44 10 20 00 	movi $r1,#8192
   cdcaa:	96 00       	zeb33 $r0,$r0
   cdcac:	b6 3f       	swi450 $r1,[$sp]
   cdcae:	49 ff e6 93 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   cdcb2:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   cdcb6:	80 1f       	mov55 $r0,$sp
   cdcb8:	80 df       	mov55 $r6,$sp
   cdcba:	49 ff e2 3b 	jal ca130 <bt_infom_ap>
   cdcbe:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

000cdcc0 <sm_hal_release_timer>:
   cdcc0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdcc2:	96 00       	zeb33 $r0,$r0
   cdcc4:	49 00 0d 0f 	jal cf6e2 <Ab_MMITimerUnset>
   cdcc8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdcca <sm_hal_set_timer>:
   cdcca:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdccc:	96 00       	zeb33 $r0,$r0
   cdcce:	80 41       	mov55 $r2,$r1
   cdcd0:	3e 3c 9c de 	addi.gp $r3,#-221986
   cdcd4:	84 20       	movi55 $r1,#0
   cdcd6:	80 80       	mov55 $r4,$r0
   cdcd8:	49 00 0d 52 	jal cf77c <Ab_MMITimerSet>
   cdcdc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdcde <sm_hal_timer_handler>:
   cdcde:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdce0:	3c 33 e9 6c 	lhi.gp $r3,[+#-11560]
   cdce4:	96 00       	zeb33 $r0,$r0
   cdce6:	40 11 80 0e 	sra $r1,$r3,$r0
   cdcea:	96 4c       	xlsb33 $r1,$r1
   cdcec:	c1 0b       	beqz38 $r1,cdd02 <sm_hal_timer_handler+0x24>
   cdcee:	84 21       	movi55 $r1,#1
   cdcf0:	40 40 80 0c 	sll $r4,$r1,$r0
   cdcf4:	ff 23       	not33 $r4,$r4
   cdcf6:	fe e6       	and33 $r3,$r4
   cdcf8:	3c 3b e9 6c 	shi.gp $r3,[+#-11560]
   cdcfc:	49 ff ff 79 	jal cdbee <sm_hal_infom_auth_status>
   cdd00:	d5 04       	j8 cdd08 <sm_hal_timer_handler+0x2a>
   cdd02:	84 41       	movi55 $r2,#1
   cdd04:	49 ff f6 00 	jal cc904 <SM_FinishPairing>
   cdd08:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdd0a <sm_hal_get_random_number>:
   cdd0a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdd0c:	96 48       	zeb33 $r1,$r1
   cdd0e:	49 00 0c 78 	jal cf5fe <DRV_TRNG_Get>
   cdd12:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdd14 <sm_hal_set_link_encrypted>:
   cdd14:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdd16:	96 00       	zeb33 $r0,$r0
   cdd18:	96 48       	zeb33 $r1,$r1
   cdd1a:	49 ff e6 c1 	jal caa9c <ble_gap_link_SetAttr_Enc>
   cdd1e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdd20 <sm_hal_set_link_authenticated>:
   cdd20:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdd22:	96 00       	zeb33 $r0,$r0
   cdd24:	96 48       	zeb33 $r1,$r1
   cdd26:	49 ff e6 a5 	jal caa70 <ble_gap_link_SetAttr_Auth>
   cdd2a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdd2c <sm_hal_get_local_addr_Type>:
   cdd2c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdd2e:	96 00       	zeb33 $r0,$r0
   cdd30:	49 ff e6 38 	jal ca9a0 <ble_gap_link_GetAttr_OwnerType>
   cdd34:	84 20       	movi55 $r1,#0
   cdd36:	40 00 80 06 	slt $r0,$r1,$r0
   cdd3a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdd3c <sm_hal_get_local_addr>:
   cdd3c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdd3e:	3e 1f d2 dc 	addi.gp $r1,#-11556
   cdd42:	96 00       	zeb33 $r0,$r0
   cdd44:	49 ff e6 39 	jal ca9b6 <ble_gap_link_GetAttr_OwnerAddr>
   cdd48:	3e 0f d2 dc 	addi.gp $r0,#-11556
   cdd4c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdd4e <SM_Protocol_RegisterCallback>:
   cdd4e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cdd50:	3e 2f ce a0 	addi.gp $r2,#-12640
   cdd54:	96 00       	zeb33 $r0,$r0
   cdd56:	38 11 02 0a 	sw $r1,[$r2+($r0<<#0x2)]
   cdd5a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cdd5c <SM_Protocol_L2capEventHandler>:
   cdd5c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cdd5e:	80 e1       	mov55 $r7,$r1
   cdd60:	97 80       	zeb33 $r6,$r0
   cdd62:	c1 0e       	beqz38 $r1,cdd7e <SM_Protocol_L2capEventHandler+0x22>
   cdd64:	80 06       	mov55 $r0,$r6
   cdd66:	49 ff e6 d9 	jal cab18 <ble_gap_link_GetAttr_Role>
   cdd6a:	3e 1f ce a0 	addi.gp $r1,#-12640
   cdd6e:	38 30 82 02 	lw $r3,[$r1+($r0<<#0x2)]
   cdd72:	c3 06       	beqz38 $r3,cdd7e <SM_Protocol_L2capEventHandler+0x22>
   cdd74:	80 47       	mov55 $r2,$r7
   cdd76:	08 11 00 01 	lbi.bi $r1,[$r2],#0x1
   cdd7a:	80 06       	mov55 $r0,$r6
   cdd7c:	dd 23       	jral5 $r3
   cdd7e:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cdd80 <SM_Protocol_PairingDHKeyCheck>:
   cdd80:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cdd82:	81 01       	mov55 $r8,$r1
   cdd84:	97 c0       	zeb33 $r7,$r0
   cdd86:	fa 21       	movpi45 $r1,#0x11
   cdd88:	84 0d       	movi55 $r0,#13
   cdd8a:	49 ff fc 4f 	jal cd628 <sm_hal_protocol_cmd_factory>
   cdd8e:	80 c0       	mov55 $r6,$r0
   cdd90:	c0 0b       	beqz38 $r0,cdda6 <SM_Protocol_PairingDHKeyCheck+0x26>
   cdd92:	80 28       	mov55 $r1,$r8
   cdd94:	fa 40       	movpi45 $r2,#0x10
   cdd96:	9c 01       	addi333 $r0,$r0,#1
   cdd98:	49 ff d1 58 	jal c8048 <memcpy>
   cdd9c:	80 07       	mov55 $r0,$r7
   cdd9e:	80 26       	mov55 $r1,$r6
   cdda0:	fa 41       	movpi45 $r2,#0x11
   cdda2:	49 ff ff 1a 	jal cdbd6 <sm_hal_protocol_send_l2cap_packet>
   cdda6:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cdda8 <SM_Protocol_PairingPublicKey>:
   cdda8:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cddaa:	81 01       	mov55 $r8,$r1
   cddac:	97 c0       	zeb33 $r7,$r0
   cddae:	44 10 00 41 	movi $r1,#65
   cddb2:	84 0c       	movi55 $r0,#12
   cddb4:	49 ff fc 3a 	jal cd628 <sm_hal_protocol_cmd_factory>
   cddb8:	80 c0       	mov55 $r6,$r0
   cddba:	c0 0d       	beqz38 $r0,cddd4 <SM_Protocol_PairingPublicKey+0x2c>
   cddbc:	80 28       	mov55 $r1,$r8
   cddbe:	44 20 00 40 	movi $r2,#64
   cddc2:	9c 01       	addi333 $r0,$r0,#1
   cddc4:	49 ff d1 42 	jal c8048 <memcpy>
   cddc8:	80 07       	mov55 $r0,$r7
   cddca:	80 26       	mov55 $r1,$r6
   cddcc:	44 20 00 41 	movi $r2,#65
   cddd0:	49 ff ff 03 	jal cdbd6 <sm_hal_protocol_send_l2cap_packet>
   cddd4:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cddd6 <SM_Protocol_SigningInfo>:
   cddd6:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cddd8:	81 01       	mov55 $r8,$r1
   cddda:	97 c0       	zeb33 $r7,$r0
   cdddc:	fa 21       	movpi45 $r1,#0x11
   cddde:	84 0a       	movi55 $r0,#10
   cdde0:	49 ff fc 24 	jal cd628 <sm_hal_protocol_cmd_factory>
   cdde4:	80 c0       	mov55 $r6,$r0
   cdde6:	c0 0f       	beqz38 $r0,cde04 <SM_Protocol_SigningInfo+0x2e>
   cdde8:	3e 0d 36 00 	addi.gp $r0,#-182784
   cddec:	49 00 39 b7 	jal d515a <puts>
   cddf0:	80 28       	mov55 $r1,$r8
   cddf2:	fa 40       	movpi45 $r2,#0x10
   cddf4:	9c 31       	addi333 $r0,$r6,#1
   cddf6:	49 ff d1 29 	jal c8048 <memcpy>
   cddfa:	80 07       	mov55 $r0,$r7
   cddfc:	80 26       	mov55 $r1,$r6
   cddfe:	fa 41       	movpi45 $r2,#0x11
   cde00:	49 ff fe eb 	jal cdbd6 <sm_hal_protocol_send_l2cap_packet>
   cde04:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cde06 <SM_Protocol_IdentityInfo>:
   cde06:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cde08:	81 01       	mov55 $r8,$r1
   cde0a:	97 c0       	zeb33 $r7,$r0
   cde0c:	fa 21       	movpi45 $r1,#0x11
   cde0e:	84 08       	movi55 $r0,#8
   cde10:	49 ff fc 0c 	jal cd628 <sm_hal_protocol_cmd_factory>
   cde14:	80 c0       	mov55 $r6,$r0
   cde16:	c0 0f       	beqz38 $r0,cde34 <SM_Protocol_IdentityInfo+0x2e>
   cde18:	3e 0d 36 1c 	addi.gp $r0,#-182756
   cde1c:	49 00 39 9f 	jal d515a <puts>
   cde20:	80 28       	mov55 $r1,$r8
   cde22:	fa 40       	movpi45 $r2,#0x10
   cde24:	9c 31       	addi333 $r0,$r6,#1
   cde26:	49 ff d1 11 	jal c8048 <memcpy>
   cde2a:	80 07       	mov55 $r0,$r7
   cde2c:	80 26       	mov55 $r1,$r6
   cde2e:	fa 41       	movpi45 $r2,#0x11
   cde30:	49 ff fe d3 	jal cdbd6 <sm_hal_protocol_send_l2cap_packet>
   cde34:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cde36 <SM_Protocol_MasterID>:
   cde36:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cde38:	81 01       	mov55 $r8,$r1
   cde3a:	97 c0       	zeb33 $r7,$r0
   cde3c:	84 2b       	movi55 $r1,#11
   cde3e:	84 07       	movi55 $r0,#7
   cde40:	49 ff fb f4 	jal cd628 <sm_hal_protocol_cmd_factory>
   cde44:	80 c0       	mov55 $r6,$r0
   cde46:	c0 0f       	beqz38 $r0,cde64 <SM_Protocol_MasterID+0x2e>
   cde48:	3e 0d 36 38 	addi.gp $r0,#-182728
   cde4c:	49 00 39 87 	jal d515a <puts>
   cde50:	80 28       	mov55 $r1,$r8
   cde52:	84 4a       	movi55 $r2,#10
   cde54:	9c 31       	addi333 $r0,$r6,#1
   cde56:	49 ff d0 f9 	jal c8048 <memcpy>
   cde5a:	80 07       	mov55 $r0,$r7
   cde5c:	80 26       	mov55 $r1,$r6
   cde5e:	84 4b       	movi55 $r2,#11
   cde60:	49 ff fe bb 	jal cdbd6 <sm_hal_protocol_send_l2cap_packet>
   cde64:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cde66 <SM_Protocol_EncryptionInfo>:
   cde66:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cde68:	81 01       	mov55 $r8,$r1
   cde6a:	97 c0       	zeb33 $r7,$r0
   cde6c:	fa 21       	movpi45 $r1,#0x11
   cde6e:	84 06       	movi55 $r0,#6
   cde70:	49 ff fb dc 	jal cd628 <sm_hal_protocol_cmd_factory>
   cde74:	80 c0       	mov55 $r6,$r0
   cde76:	c0 0f       	beqz38 $r0,cde94 <SM_Protocol_EncryptionInfo+0x2e>
   cde78:	3e 0d 36 50 	addi.gp $r0,#-182704
   cde7c:	49 00 39 6f 	jal d515a <puts>
   cde80:	80 28       	mov55 $r1,$r8
   cde82:	fa 40       	movpi45 $r2,#0x10
   cde84:	9c 31       	addi333 $r0,$r6,#1
   cde86:	49 ff d0 e1 	jal c8048 <memcpy>
   cde8a:	80 07       	mov55 $r0,$r7
   cde8c:	80 26       	mov55 $r1,$r6
   cde8e:	fa 41       	movpi45 $r2,#0x11
   cde90:	49 ff fe a3 	jal cdbd6 <sm_hal_protocol_send_l2cap_packet>
   cde94:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cde96 <SM_Protocol_PairingRandom>:
   cde96:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cde98:	81 01       	mov55 $r8,$r1
   cde9a:	97 c0       	zeb33 $r7,$r0
   cde9c:	fa 21       	movpi45 $r1,#0x11
   cde9e:	84 04       	movi55 $r0,#4
   cdea0:	49 ff fb c4 	jal cd628 <sm_hal_protocol_cmd_factory>
   cdea4:	80 c0       	mov55 $r6,$r0
   cdea6:	c0 0f       	beqz38 $r0,cdec4 <SM_Protocol_PairingRandom+0x2e>
   cdea8:	3e 0d 36 6c 	addi.gp $r0,#-182676
   cdeac:	49 00 39 57 	jal d515a <puts>
   cdeb0:	80 28       	mov55 $r1,$r8
   cdeb2:	fa 40       	movpi45 $r2,#0x10
   cdeb4:	9c 31       	addi333 $r0,$r6,#1
   cdeb6:	49 ff d0 c9 	jal c8048 <memcpy>
   cdeba:	80 07       	mov55 $r0,$r7
   cdebc:	80 26       	mov55 $r1,$r6
   cdebe:	fa 41       	movpi45 $r2,#0x11
   cdec0:	49 ff fe 8b 	jal cdbd6 <sm_hal_protocol_send_l2cap_packet>
   cdec4:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cdec6 <SM_Protocol_PairingConfirm>:
   cdec6:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cdec8:	81 01       	mov55 $r8,$r1
   cdeca:	97 c0       	zeb33 $r7,$r0
   cdecc:	fa 21       	movpi45 $r1,#0x11
   cdece:	84 03       	movi55 $r0,#3
   cded0:	49 ff fb ac 	jal cd628 <sm_hal_protocol_cmd_factory>
   cded4:	80 c0       	mov55 $r6,$r0
   cded6:	c0 0f       	beqz38 $r0,cdef4 <SM_Protocol_PairingConfirm+0x2e>
   cded8:	3e 0d 36 88 	addi.gp $r0,#-182648
   cdedc:	49 00 39 3f 	jal d515a <puts>
   cdee0:	80 28       	mov55 $r1,$r8
   cdee2:	fa 40       	movpi45 $r2,#0x10
   cdee4:	9c 31       	addi333 $r0,$r6,#1
   cdee6:	49 ff d0 b1 	jal c8048 <memcpy>
   cdeea:	80 07       	mov55 $r0,$r7
   cdeec:	80 26       	mov55 $r1,$r6
   cdeee:	fa 41       	movpi45 $r2,#0x11
   cdef0:	49 ff fe 73 	jal cdbd6 <sm_hal_protocol_send_l2cap_packet>
   cdef4:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cdef6 <SM_Protocol_IdentityAddressInfo>:
   cdef6:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cdef8:	84 28       	movi55 $r1,#8
   cdefa:	97 c0       	zeb33 $r7,$r0
   cdefc:	84 09       	movi55 $r0,#9
   cdefe:	49 ff fb 95 	jal cd628 <sm_hal_protocol_cmd_factory>
   cdf02:	80 c0       	mov55 $r6,$r0
   cdf04:	c0 37       	beqz38 $r0,cdf72 <SM_Protocol_IdentityAddressInfo+0x7c>
   cdf06:	3e 0d 36 c4 	addi.gp $r0,#-182588
   cdf0a:	49 00 39 28 	jal d515a <puts>
   cdf0e:	80 07       	mov55 $r0,$r7
   cdf10:	49 ff ff 0e 	jal cdd2c <sm_hal_get_local_addr_Type>
   cdf14:	81 00       	mov55 $r8,$r0
   cdf16:	5a 08 01 11 	bnec $r0,#1,cdf38 <SM_Protocol_IdentityAddressInfo+0x42>
   cdf1a:	80 07       	mov55 $r0,$r7
   cdf1c:	49 ff ff 10 	jal cdd3c <sm_hal_get_local_addr>
   cdf20:	a6 05       	lbi333 $r0,[$r0+#0x5]
   cdf22:	92 06       	srli45 $r0,#6
   cdf24:	5a 08 03 0a 	bnec $r0,#3,cdf38 <SM_Protocol_IdentityAddressInfo+0x42>
   cdf28:	10 83 00 01 	sbi $r8,[$r6+#0x1]
   cdf2c:	80 07       	mov55 $r0,$r7
   cdf2e:	49 ff ff 07 	jal cdd3c <sm_hal_get_local_addr>
   cdf32:	80 20       	mov55 $r1,$r0
   cdf34:	9c 32       	addi333 $r0,$r6,#2
   cdf36:	d5 0f       	j8 cdf54 <SM_Protocol_IdentityAddressInfo+0x5e>
   cdf38:	84 00       	movi55 $r0,#0
   cdf3a:	ae 31       	sbi333 $r0,[$r6+#0x1]
   cdf3c:	80 07       	mov55 $r0,$r7
   cdf3e:	49 ff fe f7 	jal cdd2c <sm_hal_get_local_addr_Type>
   cdf42:	50 83 00 01 	addi $r8,$r6,#1
   cdf46:	c8 0b       	bnez38 $r0,cdf5c <SM_Protocol_IdentityAddressInfo+0x66>
   cdf48:	80 07       	mov55 $r0,$r7
   cdf4a:	49 ff fe f9 	jal cdd3c <sm_hal_get_local_addr>
   cdf4e:	80 20       	mov55 $r1,$r0
   cdf50:	50 04 00 01 	addi $r0,$r8,#1
   cdf54:	84 46       	movi55 $r2,#6
   cdf56:	49 ff d0 79 	jal c8048 <memcpy>
   cdf5a:	d5 07       	j8 cdf68 <SM_Protocol_IdentityAddressInfo+0x72>
   cdf5c:	50 04 00 01 	addi $r0,$r8,#1
   cdf60:	84 20       	movi55 $r1,#0
   cdf62:	84 46       	movi55 $r2,#6
   cdf64:	49 ff d0 92 	jal c8088 <memset>
   cdf68:	80 07       	mov55 $r0,$r7
   cdf6a:	80 26       	mov55 $r1,$r6
   cdf6c:	84 48       	movi55 $r2,#8
   cdf6e:	49 ff fe 34 	jal cdbd6 <sm_hal_protocol_send_l2cap_packet>
   cdf72:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cdf74 <SM_Protocol_PairingFailed>:
   cdf74:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cdf76:	54 80 00 ff 	andi $r8,$r0,#0xff
   cdf7a:	97 88       	zeb33 $r6,$r1
   cdf7c:	84 05       	movi55 $r0,#5
   cdf7e:	84 22       	movi55 $r1,#2
   cdf80:	49 ff fb 54 	jal cd628 <sm_hal_protocol_cmd_factory>
   cdf84:	80 e0       	mov55 $r7,$r0
   cdf86:	c0 67       	beqz38 $r0,ce054 <SM_Protocol_PairingFailed+0xe0>
   cdf88:	3e 0d 36 e8 	addi.gp $r0,#-182552
   cdf8c:	49 00 38 e7 	jal d515a <puts>
   cdf90:	3e 0d 37 10 	addi.gp $r0,#-182512
   cdf94:	49 00 20 cd 	jal d212e <printf>
   cdf98:	5a 60 07 34 	beqc $r6,#7,ce000 <SM_Protocol_PairingFailed+0x8c>
   cdf9c:	e6 c8       	slti45 $r6,#8
   cdf9e:	e8 0f       	beqzs8 cdfbc <SM_Protocol_PairingFailed+0x48>
   cdfa0:	5a 60 03 24 	beqc $r6,#3,cdfe8 <SM_Protocol_PairingFailed+0x74>
   cdfa4:	e6 c4       	slti45 $r6,#4
   cdfa6:	e8 06       	beqzs8 cdfb2 <SM_Protocol_PairingFailed+0x3e>
   cdfa8:	5a 60 01 1a 	beqc $r6,#1,cdfdc <SM_Protocol_PairingFailed+0x68>
   cdfac:	5a 68 02 42 	bnec $r6,#2,ce030 <SM_Protocol_PairingFailed+0xbc>
   cdfb0:	d5 19       	j8 cdfe2 <SM_Protocol_PairingFailed+0x6e>
   cdfb2:	5a 60 05 21 	beqc $r6,#5,cdff4 <SM_Protocol_PairingFailed+0x80>
   cdfb6:	e6 c6       	slti45 $r6,#6
   cdfb8:	e8 21       	beqzs8 cdffa <SM_Protocol_PairingFailed+0x86>
   cdfba:	d5 1a       	j8 cdfee <SM_Protocol_PairingFailed+0x7a>
   cdfbc:	5a 60 0b 2e 	beqc $r6,#11,ce018 <SM_Protocol_PairingFailed+0xa4>
   cdfc0:	e6 cc       	slti45 $r6,#12
   cdfc2:	e8 06       	beqzs8 cdfce <SM_Protocol_PairingFailed+0x5a>
   cdfc4:	5a 60 09 24 	beqc $r6,#9,ce00c <SM_Protocol_PairingFailed+0x98>
   cdfc8:	e6 ca       	slti45 $r6,#10
   cdfca:	e8 24       	beqzs8 ce012 <SM_Protocol_PairingFailed+0x9e>
   cdfcc:	d5 1d       	j8 ce006 <SM_Protocol_PairingFailed+0x92>
   cdfce:	5a 60 0d 2b 	beqc $r6,#13,ce024 <SM_Protocol_PairingFailed+0xb0>
   cdfd2:	e6 cd       	slti45 $r6,#13
   cdfd4:	e9 25       	bnezs8 ce01e <SM_Protocol_PairingFailed+0xaa>
   cdfd6:	5a 68 0e 2d 	bnec $r6,#14,ce030 <SM_Protocol_PairingFailed+0xbc>
   cdfda:	d5 28       	j8 ce02a <SM_Protocol_PairingFailed+0xb6>
   cdfdc:	3e 0d 37 2c 	addi.gp $r0,#-182484
   cdfe0:	d5 2a       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   cdfe2:	3e 0d 37 44 	addi.gp $r0,#-182460
   cdfe6:	d5 27       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   cdfe8:	3e 0d 37 58 	addi.gp $r0,#-182440
   cdfec:	d5 24       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   cdfee:	3e 0d 37 84 	addi.gp $r0,#-182396
   cdff2:	d5 21       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   cdff4:	3e 0d 37 9c 	addi.gp $r0,#-182372
   cdff8:	d5 1e       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   cdffa:	3e 0d 37 b4 	addi.gp $r0,#-182348
   cdffe:	d5 1b       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   ce000:	3e 0d 37 c8 	addi.gp $r0,#-182328
   ce004:	d5 18       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   ce006:	3e 0d 37 e0 	addi.gp $r0,#-182304
   ce00a:	d5 15       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   ce00c:	3e 0d 37 f4 	addi.gp $r0,#-182284
   ce010:	d5 12       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   ce012:	3e 0d 38 08 	addi.gp $r0,#-182264
   ce016:	d5 0f       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   ce018:	3e 0d 38 1c 	addi.gp $r0,#-182244
   ce01c:	d5 0c       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   ce01e:	3e 0d 38 30 	addi.gp $r0,#-182224
   ce022:	d5 09       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   ce024:	3e 0d 38 4c 	addi.gp $r0,#-182196
   ce028:	d5 06       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   ce02a:	3e 0d 38 68 	addi.gp $r0,#-182168
   ce02e:	d5 03       	j8 ce034 <SM_Protocol_PairingFailed+0xc0>
   ce030:	3e 0d 38 88 	addi.gp $r0,#-182136
   ce034:	49 00 38 93 	jal d515a <puts>
   ce038:	3e 0d 38 ac 	addi.gp $r0,#-182100
   ce03c:	49 00 38 8f 	jal d515a <puts>
   ce040:	3e 0d 38 d8 	addi.gp $r0,#-182056
   ce044:	49 00 38 8b 	jal d515a <puts>
   ce048:	af b9       	sbi333 $r6,[$r7+#0x1]
   ce04a:	80 08       	mov55 $r0,$r8
   ce04c:	80 27       	mov55 $r1,$r7
   ce04e:	84 42       	movi55 $r2,#2
   ce050:	49 ff fd c3 	jal cdbd6 <sm_hal_protocol_send_l2cap_packet>
   ce054:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ce056 <SM_Slave_generate_DHKey_handler>:
   ce056:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ce058:	80 20       	mov55 $r1,$r0
   ce05a:	97 90       	zeb33 $r6,$r2
   ce05c:	c0 14       	beqz38 $r0,ce084 <SM_Slave_generate_DHKey_handler+0x2e>
   ce05e:	3e 7f c9 c0 	addi.gp $r7,#-13888
   ce062:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ce066:	fa 50       	movpi45 $r2,#0x20
   ce068:	50 00 00 60 	addi $r0,$r0,#96
   ce06c:	49 ff cf ee 	jal c8048 <memcpy>
   ce070:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ce074:	00 10 00 0f 	lbi $r1,[$r0+#0xf]
   ce078:	3e 0d 2c a4 	addi.gp $r0,#-185180
   ce07c:	38 10 06 02 	lw $r1,[$r0+($r1<<#0x2)]
   ce080:	80 06       	mov55 $r0,$r6
   ce082:	dd 21       	jral5 $r1
   ce084:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ce086 <SM_Slave_f5_mac_handler>:
   ce086:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce088:	80 20       	mov55 $r1,$r0
   ce08a:	96 90       	zeb33 $r2,$r2
   ce08c:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ce090:	38 00 0a 02 	lw $r0,[$r0+($r2<<#0x2)]
   ce094:	c0 07       	beqz38 $r0,ce0a2 <SM_Slave_f5_mac_handler+0x1c>
   ce096:	c1 06       	beqz38 $r1,ce0a2 <SM_Slave_f5_mac_handler+0x1c>
   ce098:	50 00 00 80 	addi $r0,$r0,#128
   ce09c:	fa 40       	movpi45 $r2,#0x10
   ce09e:	49 ff cf d5 	jal c8048 <memcpy>
   ce0a2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce0a4 <SM_Slave_IdentityInformationHandler>:
   ce0a4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce0a6:	a6 17       	lbi333 $r0,[$r2+#0x7]
   ce0a8:	5a 08 32 07 	bnec $r0,#50,ce0b6 <SM_Slave_IdentityInformationHandler+0x12>
   ce0ac:	50 01 00 f4 	addi $r0,$r2,#244
   ce0b0:	fa 40       	movpi45 $r2,#0x10
   ce0b2:	49 ff cf cb 	jal c8048 <memcpy>
   ce0b6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce0b8 <SM_Slave_EncryptionInformationHandler>:
   ce0b8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce0ba:	a6 17       	lbi333 $r0,[$r2+#0x7]
   ce0bc:	5a 08 31 07 	bnec $r0,#49,ce0ca <SM_Slave_EncryptionInformationHandler+0x12>
   ce0c0:	50 01 00 b4 	addi $r0,$r2,#180
   ce0c4:	fa 40       	movpi45 $r2,#0x10
   ce0c6:	49 ff cf c1 	jal c8048 <memcpy>
   ce0ca:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce0cc <SM_Slave_check_Ea>:
   ce0cc:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   ce0ce:	54 80 00 ff 	andi $r8,$r0,#0xff
   ce0d2:	fa 11       	movpi45 $r0,#0x21
   ce0d4:	80 e1       	mov55 $r7,$r1
   ce0d6:	49 00 1f b7 	jal d2044 <malloc>
   ce0da:	80 c0       	mov55 $r6,$r0
   ce0dc:	c0 3d       	beqz38 $r0,ce156 <SM_Slave_check_Ea+0x8a>
   ce0de:	50 13 80 b4 	addi $r1,$r7,#180
   ce0e2:	fa 40       	movpi45 $r2,#0x10
   ce0e4:	50 93 00 10 	addi $r9,$r6,#16
   ce0e8:	49 ff cf b0 	jal c8048 <memcpy>
   ce0ec:	51 c3 00 13 	addi $fp,$r6,#19
   ce0f0:	9c 79       	addi333 $r1,$r7,#1
   ce0f2:	84 43       	movi55 $r2,#3
   ce0f4:	80 09       	mov55 $r0,$r9
   ce0f6:	49 ff cf a9 	jal c8048 <memcpy>
   ce0fa:	50 13 80 98 	addi $r1,$r7,#152
   ce0fe:	84 46       	movi55 $r2,#6
   ce100:	80 1c       	mov55 $r0,$fp
   ce102:	49 ff cf a3 	jal c8048 <memcpy>
   ce106:	00 03 80 9f 	lbi $r0,[$r7+#0x9f]
   ce10a:	50 a3 00 1a 	addi $r10,$r6,#26
   ce10e:	10 03 00 19 	sbi $r0,[$r6+#0x19]
   ce112:	80 08       	mov55 $r0,$r8
   ce114:	49 ff fe 14 	jal cdd3c <sm_hal_get_local_addr>
   ce118:	80 20       	mov55 $r1,$r0
   ce11a:	84 46       	movi55 $r2,#6
   ce11c:	80 0a       	mov55 $r0,$r10
   ce11e:	49 ff cf 95 	jal c8048 <memcpy>
   ce122:	80 08       	mov55 $r0,$r8
   ce124:	49 ff fe 04 	jal cdd2c <sm_hal_get_local_addr_Type>
   ce128:	10 03 00 20 	sbi $r0,[$r6+#0x20]
   ce12c:	3e 0c a2 80 	addi.gp $r0,#-220544
   ce130:	f0 82       	swi37.sp $r0,[+#0x8]
   ce132:	50 13 80 80 	addi $r1,$r7,#128
   ce136:	80 08       	mov55 $r0,$r8
   ce138:	50 23 80 10 	addi $r2,$r7,#16
   ce13c:	50 33 80 20 	addi $r3,$r7,#32
   ce140:	80 86       	mov55 $r4,$r6
   ce142:	80 a9       	mov55 $r5,$r9
   ce144:	15 cf 80 00 	swi $fp,[$sp+#0x0]
   ce148:	14 af 80 01 	swi $r10,[$sp+#0x4]
   ce14c:	49 ff f6 e4 	jal ccf14 <f6>
   ce150:	80 06       	mov55 $r0,$r6
   ce152:	49 00 1f 14 	jal d1f7a <free>
   ce156:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

000ce158 <SM_Slave_PairingDHKeyCheckHandler>:
   ce158:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ce15a:	97 c0       	zeb33 $r7,$r0
   ce15c:	80 c2       	mov55 $r6,$r2
   ce15e:	81 01       	mov55 $r8,$r1
   ce160:	80 07       	mov55 $r0,$r7
   ce162:	49 ff fd af 	jal cdcc0 <sm_hal_release_timer>
   ce166:	80 28       	mov55 $r1,$r8
   ce168:	50 03 00 40 	addi $r0,$r6,#64
   ce16c:	fa 40       	movpi45 $r2,#0x10
   ce16e:	49 ff cf 6d 	jal c8048 <memcpy>
   ce172:	a6 77       	lbi333 $r1,[$r6+#0x7]
   ce174:	5a 18 0a 0c 	bnec $r1,#10,ce18c <SM_Slave_PairingDHKeyCheckHandler+0x34>
   ce178:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ce17c:	38 10 1e 02 	lw $r1,[$r0+($r7<<#0x2)]
   ce180:	84 0c       	movi55 $r0,#12
   ce182:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   ce184:	80 07       	mov55 $r0,$r7
   ce186:	49 ff ff a3 	jal ce0cc <SM_Slave_check_Ea>
   ce18a:	d5 07       	j8 ce198 <SM_Slave_PairingDHKeyCheckHandler+0x40>
   ce18c:	5a 10 09 04 	beqc $r1,#9,ce194 <SM_Slave_PairingDHKeyCheckHandler+0x3c>
   ce190:	5a 18 07 04 	bnec $r1,#7,ce198 <SM_Slave_PairingDHKeyCheckHandler+0x40>
   ce194:	84 0b       	movi55 $r0,#11
   ce196:	ae 37       	sbi333 $r0,[$r6+#0x7]
   ce198:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ce19a <SM_Slave_f6_Eb_handler>:
   ce19a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ce19c:	3e 7f c9 c0 	addi.gp $r7,#-13888
   ce1a0:	97 90       	zeb33 $r6,$r2
   ce1a2:	80 20       	mov55 $r1,$r0
   ce1a4:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ce1a8:	c0 14       	beqz38 $r0,ce1d0 <SM_Slave_f6_Eb_handler+0x36>
   ce1aa:	c1 13       	beqz38 $r1,ce1d0 <SM_Slave_f6_Eb_handler+0x36>
   ce1ac:	50 00 00 30 	addi $r0,$r0,#48
   ce1b0:	fa 40       	movpi45 $r2,#0x10
   ce1b2:	49 ff cf 4b 	jal c8048 <memcpy>
   ce1b6:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   ce1ba:	a6 0f       	lbi333 $r0,[$r1+#0x7]
   ce1bc:	5a 08 0b 08 	bnec $r0,#11,ce1cc <SM_Slave_f6_Eb_handler+0x32>
   ce1c0:	84 0c       	movi55 $r0,#12
   ce1c2:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   ce1c4:	80 06       	mov55 $r0,$r6
   ce1c6:	49 ff ff 83 	jal ce0cc <SM_Slave_check_Ea>
   ce1ca:	d5 03       	j8 ce1d0 <SM_Slave_f6_Eb_handler+0x36>
   ce1cc:	84 0a       	movi55 $r0,#10
   ce1ce:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   ce1d0:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ce1d2 <SM_Slave_f5_ltk_handler>:
   ce1d2:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   ce1d4:	3e 7f c9 c0 	addi.gp $r7,#-13888
   ce1d8:	54 81 00 ff 	andi $r8,$r2,#0xff
   ce1dc:	81 20       	mov55 $r9,$r0
   ce1de:	38 03 a2 02 	lw $r0,[$r7+($r8<<#0x2)]
   ce1e2:	c0 4e       	beqz38 $r0,ce27e <SM_Slave_f5_ltk_handler+0xac>
   ce1e4:	4e 92 00 4d 	beqz $r9,ce27e <SM_Slave_f5_ltk_handler+0xac>
   ce1e8:	fa 11       	movpi45 $r0,#0x21
   ce1ea:	49 00 1f 2d 	jal d2044 <malloc>
   ce1ee:	80 c0       	mov55 $r6,$r0
   ce1f0:	c0 47       	beqz38 $r0,ce27e <SM_Slave_f5_ltk_handler+0xac>
   ce1f2:	38 73 a2 02 	lw $r7,[$r7+($r8<<#0x2)]
   ce1f6:	80 29       	mov55 $r1,$r9
   ce1f8:	fa 40       	movpi45 $r2,#0x10
   ce1fa:	50 03 80 a4 	addi $r0,$r7,#164
   ce1fe:	49 ff cf 25 	jal c8048 <memcpy>
   ce202:	50 93 00 10 	addi $r9,$r6,#16
   ce206:	50 13 80 b4 	addi $r1,$r7,#180
   ce20a:	fa 40       	movpi45 $r2,#0x10
   ce20c:	80 06       	mov55 $r0,$r6
   ce20e:	49 ff cf 1d 	jal c8048 <memcpy>
   ce212:	50 13 80 09 	addi $r1,$r7,#9
   ce216:	84 43       	movi55 $r2,#3
   ce218:	80 09       	mov55 $r0,$r9
   ce21a:	49 ff cf 17 	jal c8048 <memcpy>
   ce21e:	80 08       	mov55 $r0,$r8
   ce220:	49 ff fd 8e 	jal cdd3c <sm_hal_get_local_addr>
   ce224:	51 c3 00 13 	addi $fp,$r6,#19
   ce228:	80 20       	mov55 $r1,$r0
   ce22a:	84 46       	movi55 $r2,#6
   ce22c:	80 1c       	mov55 $r0,$fp
   ce22e:	49 ff cf 0d 	jal c8048 <memcpy>
   ce232:	80 08       	mov55 $r0,$r8
   ce234:	49 ff fd 7c 	jal cdd2c <sm_hal_get_local_addr_Type>
   ce238:	50 a3 00 1a 	addi $r10,$r6,#26
   ce23c:	10 03 00 19 	sbi $r0,[$r6+#0x19]
   ce240:	50 13 80 98 	addi $r1,$r7,#152
   ce244:	84 46       	movi55 $r2,#6
   ce246:	80 0a       	mov55 $r0,$r10
   ce248:	49 ff cf 00 	jal c8048 <memcpy>
   ce24c:	00 03 80 9f 	lbi $r0,[$r7+#0x9f]
   ce250:	50 13 80 80 	addi $r1,$r7,#128
   ce254:	10 03 00 20 	sbi $r0,[$r6+#0x20]
   ce258:	3e 0c a1 9a 	addi.gp $r0,#-220774
   ce25c:	f0 82       	swi37.sp $r0,[+#0x8]
   ce25e:	50 23 80 20 	addi $r2,$r7,#32
   ce262:	80 08       	mov55 $r0,$r8
   ce264:	50 33 80 10 	addi $r3,$r7,#16
   ce268:	80 86       	mov55 $r4,$r6
   ce26a:	80 a9       	mov55 $r5,$r9
   ce26c:	15 cf 80 00 	swi $fp,[$sp+#0x0]
   ce270:	14 af 80 01 	swi $r10,[$sp+#0x4]
   ce274:	49 ff f6 50 	jal ccf14 <f6>
   ce278:	80 06       	mov55 $r0,$r6
   ce27a:	49 00 1e 80 	jal d1f7a <free>
   ce27e:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

000ce280 <SM_Slave_f6_Ea_handler>:
   ce280:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ce282:	3e 7f c9 c0 	addi.gp $r7,#-13888
   ce286:	97 90       	zeb33 $r6,$r2
   ce288:	38 83 9a 02 	lw $r8,[$r7+($r6<<#0x2)]
   ce28c:	fa 40       	movpi45 $r2,#0x10
   ce28e:	50 14 00 40 	addi $r1,$r8,#64
   ce292:	49 ff ce cf 	jal c8030 <memcmp>
   ce296:	c8 10       	bnez38 $r0,ce2b6 <SM_Slave_f6_Ea_handler+0x36>
   ce298:	80 06       	mov55 $r0,$r6
   ce29a:	50 14 00 30 	addi $r1,$r8,#48
   ce29e:	49 ff fd 71 	jal cdd80 <SM_Protocol_PairingDHKeyCheck>
   ce2a2:	80 06       	mov55 $r0,$r6
   ce2a4:	44 10 75 30 	movi $r1,#30000
   ce2a8:	49 ff fd 11 	jal cdcca <sm_hal_set_timer>
   ce2ac:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ce2b0:	84 2d       	movi55 $r1,#13
   ce2b2:	ae 47       	sbi333 $r1,[$r0+#0x7]
   ce2b4:	d5 05       	j8 ce2be <SM_Slave_f6_Ea_handler+0x3e>
   ce2b6:	80 06       	mov55 $r0,$r6
   ce2b8:	84 2b       	movi55 $r1,#11
   ce2ba:	49 ff f3 63 	jal cc980 <SM_PairingFailed>
   ce2be:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ce2c0 <SM_Slave_PairingPublicKeyHandler>:
   ce2c0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ce2c2:	97 c0       	zeb33 $r7,$r0
   ce2c4:	a6 17       	lbi333 $r0,[$r2+#0x7]
   ce2c6:	81 01       	mov55 $r8,$r1
   ce2c8:	80 c2       	mov55 $r6,$r2
   ce2ca:	5a 08 06 17 	bnec $r0,#6,ce2f8 <SM_Slave_PairingPublicKeyHandler+0x38>
   ce2ce:	80 07       	mov55 $r0,$r7
   ce2d0:	49 ff fc f8 	jal cdcc0 <sm_hal_release_timer>
   ce2d4:	80 28       	mov55 $r1,$r8
   ce2d6:	fa 50       	movpi45 $r2,#0x20
   ce2d8:	50 03 00 40 	addi $r0,$r6,#64
   ce2dc:	49 ff ce b6 	jal c8048 <memcpy>
   ce2e0:	50 14 00 20 	addi $r1,$r8,#32
   ce2e4:	50 03 00 60 	addi $r0,$r6,#96
   ce2e8:	fa 50       	movpi45 $r2,#0x20
   ce2ea:	49 ff ce af 	jal c8048 <memcpy>
   ce2ee:	80 07       	mov55 $r0,$r7
   ce2f0:	3e 1c a2 fa 	addi.gp $r1,#-220422
   ce2f4:	49 ff f8 56 	jal cd3a0 <SM_CryptoTool_ReadLocalP256PublicKey>
   ce2f8:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ce2fa <SM_Slave_read_local_public_key_handler>:
   ce2fa:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce2fc:	80 20       	mov55 $r1,$r0
   ce2fe:	97 90       	zeb33 $r6,$r2
   ce300:	c0 14       	beqz38 $r0,ce328 <SM_Slave_read_local_public_key_handler+0x2e>
   ce302:	80 06       	mov55 $r0,$r6
   ce304:	49 ff fd 52 	jal cdda8 <SM_Protocol_PairingPublicKey>
   ce308:	80 06       	mov55 $r0,$r6
   ce30a:	44 10 75 30 	movi $r1,#30000
   ce30e:	49 ff fc de 	jal cdcca <sm_hal_set_timer>
   ce312:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ce316:	38 10 1a 02 	lw $r1,[$r0+($r6<<#0x2)]
   ce31a:	3e 2c a0 56 	addi.gp $r2,#-221098
   ce31e:	80 06       	mov55 $r0,$r6
   ce320:	50 10 80 40 	addi $r1,$r1,#64
   ce324:	49 ff f8 13 	jal cd34a <SM_CryptoTool_GenerateDHKey>
   ce328:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce32a <SM_Slave_SC_Unsupported>:
   ce32a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce32c:	3e 0d 39 08 	addi.gp $r0,#-182008
   ce330:	49 00 37 15 	jal d515a <puts>
   ce334:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce336 <SM_Slave_UnsupportedHandler>:
   ce336:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce338:	3e 0d 39 20 	addi.gp $r0,#-181984
   ce33c:	49 00 37 0f 	jal d515a <puts>
   ce340:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce342 <SM_Slave_g2_handler>:
   ce342:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   ce344:	b1 81       	addri36.sp $r6,#0x4
   ce346:	80 20       	mov55 $r1,$r0
   ce348:	97 d0       	zeb33 $r7,$r2
   ce34a:	80 06       	mov55 $r0,$r6
   ce34c:	84 44       	movi55 $r2,#4
   ce34e:	49 ff ce 7d 	jal c8048 <memcpy>
   ce352:	f0 01       	lwi37.sp $r0,[+#0x4]
   ce354:	46 10 00 f4 	sethi $r1,#0xf4
   ce358:	58 10 82 40 	ori $r1,$r1,#0x240
   ce35c:	40 10 04 17 	divr $r1,$r0,$r0,$r1
   ce360:	80 46       	mov55 $r2,$r6
   ce362:	84 21       	movi55 $r1,#1
   ce364:	f0 81       	swi37.sp $r0,[+#0x4]
   ce366:	80 07       	mov55 $r0,$r7
   ce368:	49 ff fc 8b 	jal cdc7e <sm_hal_infom_passkey_display_req>
   ce36c:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000ce36e <SM_Slave_SC_rbValuePasskeyDisplay>:
   ce36e:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   ce370:	b1 c1       	addri36.sp $r7,#0x4
   ce372:	97 80       	zeb33 $r6,$r0
   ce374:	84 24       	movi55 $r1,#4
   ce376:	80 07       	mov55 $r0,$r7
   ce378:	49 ff fc c9 	jal cdd0a <sm_hal_get_random_number>
   ce37c:	f1 01       	lwi37.sp $r1,[+#0x4]
   ce37e:	46 00 00 f4 	sethi $r0,#0xf4
   ce382:	58 00 02 40 	ori $r0,$r0,#0x240
   ce386:	40 10 80 17 	divr $r1,$r0,$r1,$r0
   ce38a:	3e 8f c9 c0 	addi.gp $r8,#-13888
   ce38e:	38 24 1a 02 	lw $r2,[$r8+($r6<<#0x2)]
   ce392:	50 21 00 af 	addi $r2,$r2,#175
   ce396:	84 20       	movi55 $r1,#0
   ce398:	f0 81       	swi37.sp $r0,[+#0x4]
   ce39a:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   ce39c:	ae 17       	sbi333 $r0,[$r2+#0x7]
   ce39e:	a6 39       	lbi333 $r0,[$r7+#0x1]
   ce3a0:	ae 16       	sbi333 $r0,[$r2+#0x6]
   ce3a2:	80 06       	mov55 $r0,$r6
   ce3a4:	a7 f8       	lbi333 $r7,[$r7+#0x0]
   ce3a6:	af d5       	sbi333 $r7,[$r2+#0x5]
   ce3a8:	9c 95       	addi333 $r2,$r2,#5
   ce3aa:	49 ff fc 6a 	jal cdc7e <sm_hal_infom_passkey_display_req>
   ce3ae:	38 74 1a 02 	lw $r7,[$r8+($r6<<#0x2)]
   ce3b2:	84 01       	movi55 $r0,#1
   ce3b4:	10 03 80 80 	sbi $r0,[$r7+#0x80]
   ce3b8:	3c 9d f1 a0 	lwi.gp $r9,[+#-14720]
   ce3bc:	50 13 80 b4 	addi $r1,$r7,#180
   ce3c0:	49 00 0f d2 	jal d0364 <SM_Common_GetRi>
   ce3c4:	80 80       	mov55 $r4,$r0
   ce3c6:	80 29       	mov55 $r1,$r9
   ce3c8:	80 06       	mov55 $r0,$r6
   ce3ca:	50 23 80 40 	addi $r2,$r7,#64
   ce3ce:	50 33 80 20 	addi $r3,$r7,#32
   ce3d2:	3e 5c a4 de 	addi.gp $r5,#-219938
   ce3d6:	49 ff f6 93 	jal cd0fc <f4>
   ce3da:	38 04 1a 02 	lw $r0,[$r8+($r6<<#0x2)]
   ce3de:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   ce3e2:	58 10 80 04 	ori $r1,$r1,#0x4
   ce3e6:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   ce3ea:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000ce3ec <SM_Slave_SC_rbValueJustWork>:
   ce3ec:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce3ee:	3e 1f c9 c0 	addi.gp $r1,#-13888
   ce3f2:	96 00       	zeb33 $r0,$r0
   ce3f4:	38 30 82 02 	lw $r3,[$r1+($r0<<#0x2)]
   ce3f8:	3c 1d f1 a0 	lwi.gp $r1,[+#-14720]
   ce3fc:	50 21 80 40 	addi $r2,$r3,#64
   ce400:	84 80       	movi55 $r4,#0
   ce402:	50 31 80 20 	addi $r3,$r3,#32
   ce406:	3e 5c a4 10 	addi.gp $r5,#-220144
   ce40a:	49 ff f6 79 	jal cd0fc <f4>
   ce40e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce410 <SM_Slave_f4_JW_handler>:
   ce410:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce412:	80 20       	mov55 $r1,$r0
   ce414:	97 90       	zeb33 $r6,$r2
   ce416:	c0 0f       	beqz38 $r0,ce434 <SM_Slave_f4_JW_handler+0x24>
   ce418:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ce41c:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   ce420:	84 44       	movi55 $r2,#4
   ce422:	ae 87       	sbi333 $r2,[$r0+#0x7]
   ce424:	80 06       	mov55 $r0,$r6
   ce426:	49 ff fd 50 	jal cdec6 <SM_Protocol_PairingConfirm>
   ce42a:	80 06       	mov55 $r0,$r6
   ce42c:	44 10 75 30 	movi $r1,#30000
   ce430:	49 ff fc 4d 	jal cdcca <sm_hal_set_timer>
   ce434:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce436 <SM_Slave_PairingConfirmHandler>:
   ce436:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ce438:	97 c0       	zeb33 $r7,$r0
   ce43a:	80 c2       	mov55 $r6,$r2
   ce43c:	80 07       	mov55 $r0,$r7
   ce43e:	81 01       	mov55 $r8,$r1
   ce440:	49 ff fc 40 	jal cdcc0 <sm_hal_release_timer>
   ce444:	a6 37       	lbi333 $r0,[$r6+#0x7]
   ce446:	5a 08 03 0e 	bnec $r0,#3,ce462 <SM_Slave_PairingConfirmHandler+0x2c>
   ce44a:	80 07       	mov55 $r0,$r7
   ce44c:	50 13 00 30 	addi $r1,$r6,#48
   ce450:	49 ff fd 3b 	jal cdec6 <SM_Protocol_PairingConfirm>
   ce454:	80 07       	mov55 $r0,$r7
   ce456:	44 10 75 30 	movi $r1,#30000
   ce45a:	49 ff fc 38 	jal cdcca <sm_hal_set_timer>
   ce45e:	84 04       	movi55 $r0,#4
   ce460:	d5 02       	j8 ce464 <SM_Slave_PairingConfirmHandler+0x2e>
   ce462:	84 03       	movi55 $r0,#3
   ce464:	ae 37       	sbi333 $r0,[$r6+#0x7]
   ce466:	80 28       	mov55 $r1,$r8
   ce468:	50 03 00 30 	addi $r0,$r6,#48
   ce46c:	fa 40       	movpi45 $r2,#0x10
   ce46e:	49 ff cd ed 	jal c8048 <memcpy>
   ce472:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ce474 <SM_Slave_f5>:
   ce474:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   ce476:	54 80 00 ff 	andi $r8,$r0,#0xff
   ce47a:	84 0e       	movi55 $r0,#14
   ce47c:	80 e1       	mov55 $r7,$r1
   ce47e:	49 00 1d e3 	jal d2044 <malloc>
   ce482:	80 c0       	mov55 $r6,$r0
   ce484:	c0 2c       	beqz38 $r0,ce4dc <SM_Slave_f5+0x68>
   ce486:	50 13 80 98 	addi $r1,$r7,#152
   ce48a:	84 46       	movi55 $r2,#6
   ce48c:	49 ff cd de 	jal c8048 <memcpy>
   ce490:	00 03 80 9f 	lbi $r0,[$r7+#0x9f]
   ce494:	50 93 00 07 	addi $r9,$r6,#7
   ce498:	ae 36       	sbi333 $r0,[$r6+#0x6]
   ce49a:	80 08       	mov55 $r0,$r8
   ce49c:	49 ff fc 50 	jal cdd3c <sm_hal_get_local_addr>
   ce4a0:	80 20       	mov55 $r1,$r0
   ce4a2:	84 46       	movi55 $r2,#6
   ce4a4:	80 09       	mov55 $r0,$r9
   ce4a6:	49 ff cd d1 	jal c8048 <memcpy>
   ce4aa:	80 08       	mov55 $r0,$r8
   ce4ac:	49 ff fc 40 	jal cdd2c <sm_hal_get_local_addr_Type>
   ce4b0:	10 03 00 0d 	sbi $r0,[$r6+#0xd]
   ce4b4:	3e 0c a0 86 	addi.gp $r0,#-221050
   ce4b8:	b6 1f       	swi450 $r0,[$sp]
   ce4ba:	3e 0c a1 d2 	addi.gp $r0,#-220718
   ce4be:	f0 81       	swi37.sp $r0,[+#0x4]
   ce4c0:	50 13 80 60 	addi $r1,$r7,#96
   ce4c4:	80 08       	mov55 $r0,$r8
   ce4c6:	50 23 80 10 	addi $r2,$r7,#16
   ce4ca:	50 33 80 20 	addi $r3,$r7,#32
   ce4ce:	80 86       	mov55 $r4,$r6
   ce4d0:	80 a9       	mov55 $r5,$r9
   ce4d2:	49 ff f5 68 	jal ccfa2 <f5>
   ce4d6:	80 06       	mov55 $r0,$r6
   ce4d8:	49 00 1d 51 	jal d1f7a <free>
   ce4dc:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000ce4de <SM_Slave_f4_PKE_handler>:
   ce4de:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   ce4e0:	80 20       	mov55 $r1,$r0
   ce4e2:	97 90       	zeb33 $r6,$r2
   ce4e4:	c0 62       	beqz38 $r0,ce5a8 <SM_Slave_f4_PKE_handler+0xca>
   ce4e6:	3e 7f c9 c0 	addi.gp $r7,#-13888
   ce4ea:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ce4ee:	a6 87       	lbi333 $r2,[$r0+#0x7]
   ce4f0:	5a 28 03 0e 	bnec $r2,#3,ce50c <SM_Slave_f4_PKE_handler+0x2e>
   ce4f4:	80 06       	mov55 $r0,$r6
   ce4f6:	49 ff fc e8 	jal cdec6 <SM_Protocol_PairingConfirm>
   ce4fa:	80 06       	mov55 $r0,$r6
   ce4fc:	44 10 75 30 	movi $r1,#30000
   ce500:	49 ff fb e5 	jal cdcca <sm_hal_set_timer>
   ce504:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ce508:	84 24       	movi55 $r1,#4
   ce50a:	d5 4e       	j8 ce5a6 <SM_Slave_f4_PKE_handler+0xc8>
   ce50c:	50 00 00 30 	addi $r0,$r0,#48
   ce510:	5a 28 05 45 	bnec $r2,#5,ce59a <SM_Slave_f4_PKE_handler+0xbc>
   ce514:	fa 40       	movpi45 $r2,#0x10
   ce516:	49 00 0f 16 	jal d0342 <SM_Common_ValueCompare>
   ce51a:	c8 06       	bnez38 $r0,ce526 <SM_Slave_f4_PKE_handler+0x48>
   ce51c:	80 06       	mov55 $r0,$r6
   ce51e:	84 24       	movi55 $r1,#4
   ce520:	49 ff f2 30 	jal cc980 <SM_PairingFailed>
   ce524:	d5 42       	j8 ce5a8 <SM_Slave_f4_PKE_handler+0xca>
   ce526:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   ce52a:	80 06       	mov55 $r0,$r6
   ce52c:	50 10 80 20 	addi $r1,$r1,#32
   ce530:	49 ff fc b3 	jal cde96 <SM_Protocol_PairingRandom>
   ce534:	80 06       	mov55 $r0,$r6
   ce536:	44 10 75 30 	movi $r1,#30000
   ce53a:	49 ff fb c8 	jal cdcca <sm_hal_set_timer>
   ce53e:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   ce542:	00 00 80 80 	lbi $r0,[$r1+#0x80]
   ce546:	e6 14       	slti45 $r0,#20
   ce548:	e8 23       	beqzs8 ce58e <SM_Slave_f4_PKE_handler+0xb0>
   ce54a:	50 00 80 20 	addi $r0,$r1,#32
   ce54e:	fa 20       	movpi45 $r1,#0x10
   ce550:	49 ff fb dd 	jal cdd0a <sm_hal_get_random_number>
   ce554:	38 83 9a 02 	lw $r8,[$r7+($r6<<#0x2)]
   ce558:	00 04 00 80 	lbi $r0,[$r8+#0x80]
   ce55c:	9c 01       	addi333 $r0,$r0,#1
   ce55e:	96 00       	zeb33 $r0,$r0
   ce560:	10 04 00 80 	sbi $r0,[$r8+#0x80]
   ce564:	3c 9d f1 a0 	lwi.gp $r9,[+#-14720]
   ce568:	50 14 00 b4 	addi $r1,$r8,#180
   ce56c:	49 00 0e fc 	jal d0364 <SM_Common_GetRi>
   ce570:	80 80       	mov55 $r4,$r0
   ce572:	80 29       	mov55 $r1,$r9
   ce574:	80 06       	mov55 $r0,$r6
   ce576:	50 24 00 40 	addi $r2,$r8,#64
   ce57a:	50 34 00 20 	addi $r3,$r8,#32
   ce57e:	3e 5c a4 de 	addi.gp $r5,#-219938
   ce582:	49 ff f5 bd 	jal cd0fc <f4>
   ce586:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ce58a:	84 22       	movi55 $r1,#2
   ce58c:	d5 0d       	j8 ce5a6 <SM_Slave_f4_PKE_handler+0xc8>
   ce58e:	84 09       	movi55 $r0,#9
   ce590:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   ce592:	80 06       	mov55 $r0,$r6
   ce594:	49 ff ff 70 	jal ce474 <SM_Slave_f5>
   ce598:	d5 08       	j8 ce5a8 <SM_Slave_f4_PKE_handler+0xca>
   ce59a:	fa 40       	movpi45 $r2,#0x10
   ce59c:	49 ff cd 56 	jal c8048 <memcpy>
   ce5a0:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ce5a4:	84 23       	movi55 $r1,#3
   ce5a6:	ae 47       	sbi333 $r1,[$r0+#0x7]
   ce5a8:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000ce5aa <SM_Slave_TKValueOOB>:
   ce5aa:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce5ac:	97 80       	zeb33 $r6,$r0
   ce5ae:	80 06       	mov55 $r0,$r6
   ce5b0:	84 22       	movi55 $r1,#2
   ce5b2:	49 ff fb 55 	jal cdc5c <sm_hal_infom_passkey_input_req>
   ce5b6:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ce5ba:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   ce5be:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   ce5c2:	58 10 80 04 	ori $r1,$r1,#0x4
   ce5c6:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   ce5ca:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce5cc <SM_Slave_TKValuePasskeyInput>:
   ce5cc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce5ce:	97 80       	zeb33 $r6,$r0
   ce5d0:	80 06       	mov55 $r0,$r6
   ce5d2:	84 21       	movi55 $r1,#1
   ce5d4:	49 ff fb 44 	jal cdc5c <sm_hal_infom_passkey_input_req>
   ce5d8:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ce5dc:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   ce5e0:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   ce5e4:	58 10 80 04 	ori $r1,$r1,#0x4
   ce5e8:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   ce5ec:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce5ee <SM_Slave_Legacy_GenConfirm>:
   ce5ee:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   ce5f0:	97 c0       	zeb33 $r7,$r0
   ce5f2:	fa 00       	movpi45 $r0,#0x10
   ce5f4:	81 21       	mov55 $r9,$r1
   ce5f6:	49 00 1d 27 	jal d2044 <malloc>
   ce5fa:	80 c0       	mov55 $r6,$r0
   ce5fc:	c0 30       	beqz38 $r0,ce65c <SM_Slave_Legacy_GenConfirm+0x6e>
   ce5fe:	3e 0d 39 34 	addi.gp $r0,#-181964
   ce602:	49 00 35 ac 	jal d515a <puts>
   ce606:	84 20       	movi55 $r1,#0
   ce608:	fa 40       	movpi45 $r2,#0x10
   ce60a:	80 06       	mov55 $r0,$r6
   ce60c:	49 ff cd 3e 	jal c8088 <memset>
   ce610:	80 07       	mov55 $r0,$r7
   ce612:	49 ff e2 16 	jal caa3e <ble_gap_link_GetAttr_BdAddrType>
   ce616:	3e 8f c9 c0 	addi.gp $r8,#-13888
   ce61a:	ae 30       	sbi333 $r0,[$r6+#0x0]
   ce61c:	80 07       	mov55 $r0,$r7
   ce61e:	49 ff fb 87 	jal cdd2c <sm_hal_get_local_addr_Type>
   ce622:	38 14 1e 02 	lw $r1,[$r8+($r7<<#0x2)]
   ce626:	ae 31       	sbi333 $r0,[$r6+#0x1]
   ce628:	84 47       	movi55 $r2,#7
   ce62a:	9c 32       	addi333 $r0,$r6,#2
   ce62c:	49 ff cd 0e 	jal c8048 <memcpy>
   ce630:	38 14 1e 02 	lw $r1,[$r8+($r7<<#0x2)]
   ce634:	84 47       	movi55 $r2,#7
   ce636:	8c 28       	addi45 $r1,#8
   ce638:	50 03 00 09 	addi $r0,$r6,#9
   ce63c:	49 ff cd 06 	jal c8048 <memcpy>
   ce640:	38 34 1e 02 	lw $r3,[$r8+($r7<<#0x2)]
   ce644:	80 07       	mov55 $r0,$r7
   ce646:	50 11 80 a4 	addi $r1,$r3,#164
   ce64a:	80 49       	mov55 $r2,$r9
   ce64c:	80 66       	mov55 $r3,$r6
   ce64e:	3e 4c a6 e0 	addi.gp $r4,#-219424
   ce652:	49 ff f6 23 	jal cd298 <c1_1>
   ce656:	80 06       	mov55 $r0,$r6
   ce658:	49 00 1c 91 	jal d1f7a <free>
   ce65c:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000ce65e <SM_Slave_TKValuePasskeyDisplay>:
   ce65e:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   ce660:	50 8f 80 04 	addi $r8,$sp,#4
   ce664:	97 80       	zeb33 $r6,$r0
   ce666:	84 24       	movi55 $r1,#4
   ce668:	80 08       	mov55 $r0,$r8
   ce66a:	49 ff fb 50 	jal cdd0a <sm_hal_get_random_number>
   ce66e:	f1 01       	lwi37.sp $r1,[+#0x4]
   ce670:	46 00 00 f4 	sethi $r0,#0xf4
   ce674:	58 00 02 40 	ori $r0,$r0,#0x240
   ce678:	40 10 80 17 	divr $r1,$r0,$r1,$r0
   ce67c:	3e 7f c9 c0 	addi.gp $r7,#-13888
   ce680:	38 23 9a 02 	lw $r2,[$r7+($r6<<#0x2)]
   ce684:	84 20       	movi55 $r1,#0
   ce686:	f0 81       	swi37.sp $r0,[+#0x4]
   ce688:	00 04 00 02 	lbi $r0,[$r8+#0x2]
   ce68c:	10 01 00 a6 	sbi $r0,[$r2+#0xa6]
   ce690:	00 04 00 01 	lbi $r0,[$r8+#0x1]
   ce694:	10 01 00 a5 	sbi $r0,[$r2+#0xa5]
   ce698:	80 06       	mov55 $r0,$r6
   ce69a:	00 84 00 00 	lbi $r8,[$r8+#0x0]
   ce69e:	10 81 00 a4 	sbi $r8,[$r2+#0xa4]
   ce6a2:	50 21 00 a4 	addi $r2,$r2,#164
   ce6a6:	49 ff fa ec 	jal cdc7e <sm_hal_infom_passkey_display_req>
   ce6aa:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   ce6ae:	80 06       	mov55 $r0,$r6
   ce6b0:	50 10 80 20 	addi $r1,$r1,#32
   ce6b4:	49 ff ff 9d 	jal ce5ee <SM_Slave_Legacy_GenConfirm>
   ce6b8:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ce6bc:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   ce6c0:	58 10 80 04 	ori $r1,$r1,#0x4
   ce6c4:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   ce6c8:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000ce6ca <SM_Slave_TKValueJustWork>:
   ce6ca:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce6cc:	3e 1f c9 c0 	addi.gp $r1,#-13888
   ce6d0:	96 00       	zeb33 $r0,$r0
   ce6d2:	38 10 82 02 	lw $r1,[$r1+($r0<<#0x2)]
   ce6d6:	50 10 80 20 	addi $r1,$r1,#32
   ce6da:	49 ff ff 8a 	jal ce5ee <SM_Slave_Legacy_GenConfirm>
   ce6de:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce6e0 <SM_Slave_c1_1_handler>:
   ce6e0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ce6e2:	81 00       	mov55 $r8,$r0
   ce6e4:	fa 00       	movpi45 $r0,#0x10
   ce6e6:	97 d0       	zeb33 $r7,$r2
   ce6e8:	49 00 1c ae 	jal d2044 <malloc>
   ce6ec:	80 c0       	mov55 $r6,$r0
   ce6ee:	c0 2b       	beqz38 $r0,ce744 <SM_Slave_c1_1_handler+0x64>
   ce6f0:	3e 0d 39 50 	addi.gp $r0,#-181936
   ce6f4:	49 00 35 33 	jal d515a <puts>
   ce6f8:	80 07       	mov55 $r0,$r7
   ce6fa:	49 ff fb 21 	jal cdd3c <sm_hal_get_local_addr>
   ce6fe:	80 20       	mov55 $r1,$r0
   ce700:	84 46       	movi55 $r2,#6
   ce702:	80 06       	mov55 $r0,$r6
   ce704:	49 ff cc a2 	jal c8048 <memcpy>
   ce708:	80 07       	mov55 $r0,$r7
   ce70a:	49 ff e1 90 	jal caa2a <ble_gap_link_GetAttr_BdAddr>
   ce70e:	80 20       	mov55 $r1,$r0
   ce710:	84 46       	movi55 $r2,#6
   ce712:	9c 36       	addi333 $r0,$r6,#6
   ce714:	49 ff cc 9a 	jal c8048 <memcpy>
   ce718:	84 20       	movi55 $r1,#0
   ce71a:	84 44       	movi55 $r2,#4
   ce71c:	50 03 00 0c 	addi $r0,$r6,#12
   ce720:	49 ff cc b4 	jal c8088 <memset>
   ce724:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ce728:	38 10 1e 02 	lw $r1,[$r0+($r7<<#0x2)]
   ce72c:	80 48       	mov55 $r2,$r8
   ce72e:	80 07       	mov55 $r0,$r7
   ce730:	50 10 80 a4 	addi $r1,$r1,#164
   ce734:	80 66       	mov55 $r3,$r6
   ce736:	3e 4c a7 46 	addi.gp $r4,#-219322
   ce73a:	49 ff f5 84 	jal cd242 <c1_2>
   ce73e:	80 06       	mov55 $r0,$r6
   ce740:	49 00 1c 1d 	jal d1f7a <free>
   ce744:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ce746 <SM_Slave_c1_2_handler>:
   ce746:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ce748:	3e 7f c9 c0 	addi.gp $r7,#-13888
   ce74c:	97 90       	zeb33 $r6,$r2
   ce74e:	80 20       	mov55 $r1,$r0
   ce750:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ce754:	a6 87       	lbi333 $r2,[$r0+#0x7]
   ce756:	5a 28 02 0b 	bnec $r2,#2,ce76c <SM_Slave_c1_2_handler+0x26>
   ce75a:	50 00 00 30 	addi $r0,$r0,#48
   ce75e:	fa 40       	movpi45 $r2,#0x10
   ce760:	49 ff cc 74 	jal c8048 <memcpy>
   ce764:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ce768:	84 23       	movi55 $r1,#3
   ce76a:	d5 0e       	j8 ce786 <SM_Slave_c1_2_handler+0x40>
   ce76c:	5a 28 03 0f 	bnec $r2,#3,ce78a <SM_Slave_c1_2_handler+0x44>
   ce770:	80 06       	mov55 $r0,$r6
   ce772:	49 ff fb aa 	jal cdec6 <SM_Protocol_PairingConfirm>
   ce776:	80 06       	mov55 $r0,$r6
   ce778:	44 10 75 30 	movi $r1,#30000
   ce77c:	49 ff fa a7 	jal cdcca <sm_hal_set_timer>
   ce780:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ce784:	84 24       	movi55 $r1,#4
   ce786:	ae 47       	sbi333 $r1,[$r0+#0x7]
   ce788:	d5 26       	j8 ce7d4 <SM_Slave_c1_2_handler+0x8e>
   ce78a:	5a 28 05 25 	bnec $r2,#5,ce7d4 <SM_Slave_c1_2_handler+0x8e>
   ce78e:	50 00 00 30 	addi $r0,$r0,#48
   ce792:	fa 40       	movpi45 $r2,#0x10
   ce794:	49 00 0d d7 	jal d0342 <SM_Common_ValueCompare>
   ce798:	c8 06       	bnez38 $r0,ce7a4 <SM_Slave_c1_2_handler+0x5e>
   ce79a:	80 06       	mov55 $r0,$r6
   ce79c:	84 24       	movi55 $r1,#4
   ce79e:	49 ff f0 f1 	jal cc980 <SM_PairingFailed>
   ce7a2:	d5 19       	j8 ce7d4 <SM_Slave_c1_2_handler+0x8e>
   ce7a4:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   ce7a8:	80 06       	mov55 $r0,$r6
   ce7aa:	50 10 80 20 	addi $r1,$r1,#32
   ce7ae:	49 ff fb 74 	jal cde96 <SM_Protocol_PairingRandom>
   ce7b2:	80 06       	mov55 $r0,$r6
   ce7b4:	44 10 75 30 	movi $r1,#30000
   ce7b8:	49 ff fa 89 	jal cdcca <sm_hal_set_timer>
   ce7bc:	38 33 9a 02 	lw $r3,[$r7+($r6<<#0x2)]
   ce7c0:	80 06       	mov55 $r0,$r6
   ce7c2:	50 11 80 a4 	addi $r1,$r3,#164
   ce7c6:	50 21 80 20 	addi $r2,$r3,#32
   ce7ca:	3e 4c ab 0a 	addi.gp $r4,#-218358
   ce7ce:	8c 70       	addi45 $r3,#16
   ce7d0:	49 ff f5 0c 	jal cd1e8 <s1>
   ce7d4:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ce7d6 <SM_Slave_SigningInformationHandler>:
   ce7d6:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ce7d8:	97 c0       	zeb33 $r7,$r0
   ce7da:	a6 17       	lbi333 $r0,[$r2+#0x7]
   ce7dc:	5a 08 33 0f 	bnec $r0,#51,ce7fa <SM_Slave_SigningInformationHandler+0x24>
   ce7e0:	84 c0       	movi55 $r6,#0
   ce7e2:	14 61 00 25 	swi $r6,[$r2+#0x94]
   ce7e6:	50 01 00 d4 	addi $r0,$r2,#212
   ce7ea:	fa 40       	movpi45 $r2,#0x10
   ce7ec:	49 ff cc 2e 	jal c8048 <memcpy>
   ce7f0:	80 07       	mov55 $r0,$r7
   ce7f2:	84 21       	movi55 $r1,#1
   ce7f4:	80 46       	mov55 $r2,$r6
   ce7f6:	49 ff f0 87 	jal cc904 <SM_FinishPairing>
   ce7fa:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ce7fc <SM_Slave_PairingFailedHandler>:
   ce7fc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce7fe:	a6 88       	lbi333 $r2,[$r1+#0x0]
   ce800:	44 3f ff 80 	movi $r3,#-128
   ce804:	fe 9f       	or33 $r2,$r3
   ce806:	96 90       	zeb33 $r2,$r2
   ce808:	ae 88       	sbi333 $r2,[$r1+#0x0]
   ce80a:	96 00       	zeb33 $r0,$r0
   ce80c:	84 20       	movi55 $r1,#0
   ce80e:	49 ff f0 7b 	jal cc904 <SM_FinishPairing>
   ce812:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce814 <SM_Slave_IdentityAddressInformationHandler>:
   ce814:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce816:	97 80       	zeb33 $r6,$r0
   ce818:	a6 17       	lbi333 $r0,[$r2+#0x7]
   ce81a:	5a 08 32 15 	bnec $r0,#50,ce844 <SM_Slave_IdentityAddressInformationHandler+0x30>
   ce81e:	08 00 80 01 	lbi.bi $r0,[$r1],#0x1
   ce822:	10 01 00 9f 	sbi $r0,[$r2+#0x9f]
   ce826:	50 01 00 98 	addi $r0,$r2,#152
   ce82a:	84 46       	movi55 $r2,#6
   ce82c:	49 ff cc 0e 	jal c8048 <memcpy>
   ce830:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ce834:	38 20 1a 02 	lw $r2,[$r0+($r6<<#0x2)]
   ce838:	80 26       	mov55 $r1,$r6
   ce83a:	00 21 00 a2 	lbi $r2,[$r2+#0xa2]
   ce83e:	84 04       	movi55 $r0,#4
   ce840:	49 ff f1 2c 	jal cca98 <SM_WaitKeyDistribution>
   ce844:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce846 <SM_Slave_MasterIdentificationHandler>:
   ce846:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce848:	97 80       	zeb33 $r6,$r0
   ce84a:	a6 17       	lbi333 $r0,[$r2+#0x7]
   ce84c:	5a 08 31 11 	bnec $r0,#49,ce86e <SM_Slave_MasterIdentificationHandler+0x28>
   ce850:	50 01 01 0e 	addi $r0,$r2,#270
   ce854:	84 4a       	movi55 $r2,#10
   ce856:	49 ff cb f9 	jal c8048 <memcpy>
   ce85a:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ce85e:	38 20 1a 02 	lw $r2,[$r0+($r6<<#0x2)]
   ce862:	80 26       	mov55 $r1,$r6
   ce864:	00 21 00 a2 	lbi $r2,[$r2+#0xa2]
   ce868:	84 02       	movi55 $r0,#2
   ce86a:	49 ff f1 17 	jal cca98 <SM_WaitKeyDistribution>
   ce86e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce870 <SM_Slave_PairingRandomHandler>:
   ce870:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   ce872:	97 80       	zeb33 $r6,$r0
   ce874:	a6 17       	lbi333 $r0,[$r2+#0x7]
   ce876:	81 21       	mov55 $r9,$r1
   ce878:	80 e2       	mov55 $r7,$r2
   ce87a:	85 e4       	movi55 $r15,#4
   ce87c:	4c 07 c0 5a 	bne $r0,$r15,ce930 <SM_Slave_PairingRandomHandler+0xc0>
   ce880:	80 06       	mov55 $r0,$r6
   ce882:	50 83 80 10 	addi $r8,$r7,#16
   ce886:	49 ff fa 1d 	jal cdcc0 <sm_hal_release_timer>
   ce88a:	fa 40       	movpi45 $r2,#0x10
   ce88c:	fd 04       	movd44 $r0,$r8
   ce88e:	49 ff cb dd 	jal c8048 <memcpy>
   ce892:	00 23 80 0f 	lbi $r2,[$r7+#0xf]
   ce896:	e6 44       	slti45 $r2,#4
   ce898:	e8 06       	beqzs8 ce8a4 <SM_Slave_PairingRandomHandler+0x34>
   ce89a:	80 06       	mov55 $r0,$r6
   ce89c:	80 28       	mov55 $r1,$r8
   ce89e:	49 ff fe a8 	jal ce5ee <SM_Slave_Legacy_GenConfirm>
   ce8a2:	d5 1c       	j8 ce8da <SM_Slave_PairingRandomHandler+0x6a>
   ce8a4:	9e 15       	subi333 $r0,$r2,#5
   ce8a6:	96 00       	zeb33 $r0,$r0
   ce8a8:	e6 02       	slti45 $r0,#2
   ce8aa:	e8 1b       	beqzs8 ce8e0 <SM_Slave_PairingRandomHandler+0x70>
   ce8ac:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ce8b0:	38 80 1a 02 	lw $r8,[$r0+($r6<<#0x2)]
   ce8b4:	3c 9d f1 a0 	lwi.gp $r9,[+#-14720]
   ce8b8:	00 04 00 80 	lbi $r0,[$r8+#0x80]
   ce8bc:	50 14 00 b4 	addi $r1,$r8,#180
   ce8c0:	49 00 0d 52 	jal d0364 <SM_Common_GetRi>
   ce8c4:	80 80       	mov55 $r4,$r0
   ce8c6:	50 14 00 40 	addi $r1,$r8,#64
   ce8ca:	80 06       	mov55 $r0,$r6
   ce8cc:	80 49       	mov55 $r2,$r9
   ce8ce:	50 34 00 10 	addi $r3,$r8,#16
   ce8d2:	3e 5c a4 de 	addi.gp $r5,#-219938
   ce8d6:	49 ff f4 13 	jal cd0fc <f4>
   ce8da:	84 05       	movi55 $r0,#5
   ce8dc:	ae 3f       	sbi333 $r0,[$r7+#0x7]
   ce8de:	d5 29       	j8 ce930 <SM_Slave_PairingRandomHandler+0xc0>
   ce8e0:	50 13 80 20 	addi $r1,$r7,#32
   ce8e4:	5a 28 08 19 	bnec $r2,#8,ce916 <SM_Slave_PairingRandomHandler+0xa6>
   ce8e8:	80 06       	mov55 $r0,$r6
   ce8ea:	49 ff fa d6 	jal cde96 <SM_Protocol_PairingRandom>
   ce8ee:	84 07       	movi55 $r0,#7
   ce8f0:	ae 3f       	sbi333 $r0,[$r7+#0x7]
   ce8f2:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ce8f6:	38 40 1a 02 	lw $r4,[$r0+($r6<<#0x2)]
   ce8fa:	3c 2d f1 a0 	lwi.gp $r2,[+#-14720]
   ce8fe:	50 12 00 40 	addi $r1,$r4,#64
   ce902:	50 32 00 10 	addi $r3,$r4,#16
   ce906:	80 06       	mov55 $r0,$r6
   ce908:	50 42 00 20 	addi $r4,$r4,#32
   ce90c:	3e 5c a3 42 	addi.gp $r5,#-220350
   ce910:	49 ff f2 c9 	jal ccea2 <g2>
   ce914:	d5 0e       	j8 ce930 <SM_Slave_PairingRandomHandler+0xc0>
   ce916:	80 06       	mov55 $r0,$r6
   ce918:	49 ff fa bf 	jal cde96 <SM_Protocol_PairingRandom>
   ce91c:	80 06       	mov55 $r0,$r6
   ce91e:	44 10 75 30 	movi $r1,#30000
   ce922:	49 ff f9 d4 	jal cdcca <sm_hal_set_timer>
   ce926:	84 09       	movi55 $r0,#9
   ce928:	ae 3f       	sbi333 $r0,[$r7+#0x7]
   ce92a:	fd 03       	movd44 $r0,$r6
   ce92c:	49 ff fd a4 	jal ce474 <SM_Slave_f5>
   ce930:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000ce932 <SM_Slave_PairingRequestHandler>:
   ce932:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ce934:	97 80       	zeb33 $r6,$r0
   ce936:	81 01       	mov55 $r8,$r1
   ce938:	3e 0d 39 68 	addi.gp $r0,#-181912
   ce93c:	80 26       	mov55 $r1,$r6
   ce93e:	49 00 1b f8 	jal d212e <printf>
   ce942:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ce946:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   ce94a:	c8 25       	bnez38 $r0,ce994 <SM_Slave_PairingRequestHandler+0x62>
   ce94c:	80 06       	mov55 $r0,$r6
   ce94e:	49 00 0d 21 	jal d0390 <SM_Common_AllocPairingData>
   ce952:	80 e0       	mov55 $r7,$r0
   ce954:	c0 20       	beqz38 $r0,ce994 <SM_Slave_PairingRequestHandler+0x62>
   ce956:	3c 23 e9 6c 	lhi.gp $r2,[+#-11560]
   ce95a:	40 11 18 0e 	sra $r1,$r2,$r6
   ce95e:	96 4c       	xlsb33 $r1,$r1
   ce960:	c1 0b       	beqz38 $r1,ce976 <SM_Slave_PairingRequestHandler+0x44>
   ce962:	84 21       	movi55 $r1,#1
   ce964:	40 10 98 0c 	sll $r1,$r1,$r6
   ce968:	fe 4b       	not33 $r1,$r1
   ce96a:	fe 8e       	and33 $r2,$r1
   ce96c:	3c 2b e9 6c 	shi.gp $r2,[+#-11560]
   ce970:	80 06       	mov55 $r0,$r6
   ce972:	49 ff f9 a7 	jal cdcc0 <sm_hal_release_timer>
   ce976:	80 07       	mov55 $r0,$r7
   ce978:	84 21       	movi55 $r1,#1
   ce97a:	18 10 00 01 	sbi.bi $r1,[$r0],#0x1
   ce97e:	84 46       	movi55 $r2,#6
   ce980:	80 28       	mov55 $r1,$r8
   ce982:	49 ff cb 63 	jal c8048 <memcpy>
   ce986:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ce98a:	38 70 1a 0a 	sw $r7,[$r0+($r6<<#0x2)]
   ce98e:	80 06       	mov55 $r0,$r6
   ce990:	49 ff f9 8a 	jal cdca4 <sm_hal_infom_set_sec_param_req>
   ce994:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ce996 <SM_Slave_L2capEventHandler>:
   ce996:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce998:	97 88       	zeb33 $r6,$r1
   ce99a:	96 00       	zeb33 $r0,$r0
   ce99c:	5a 68 01 08 	bnec $r6,#1,ce9ac <SM_Slave_L2capEventHandler+0x16>
   ce9a0:	80 22       	mov55 $r1,$r2
   ce9a2:	84 40       	movi55 $r2,#0
   ce9a4:	49 ff ff c7 	jal ce932 <SM_Slave_PairingRequestHandler>
   ce9a8:	80 06       	mov55 $r0,$r6
   ce9aa:	d5 19       	j8 ce9dc <SM_Slave_L2capEventHandler+0x46>
   ce9ac:	9e 72       	subi333 $r1,$r6,#2
   ce9ae:	96 48       	zeb33 $r1,$r1
   ce9b0:	e6 2d       	slti45 $r1,#13
   ce9b2:	e8 10       	beqzs8 ce9d2 <SM_Slave_L2capEventHandler+0x3c>
   ce9b4:	3e 1f c9 c0 	addi.gp $r1,#-13888
   ce9b8:	38 30 82 02 	lw $r3,[$r1+($r0<<#0x2)]
   ce9bc:	cb 03       	bnez38 $r3,ce9c2 <SM_Slave_L2capEventHandler+0x2c>
   ce9be:	80 03       	mov55 $r0,$r3
   ce9c0:	d5 0e       	j8 ce9dc <SM_Slave_L2capEventHandler+0x46>
   ce9c2:	3e 1f c1 ac 	addi.gp $r1,#-15956
   ce9c6:	38 40 9a 02 	lw $r4,[$r1+($r6<<#0x2)]
   ce9ca:	80 22       	mov55 $r1,$r2
   ce9cc:	80 43       	mov55 $r2,$r3
   ce9ce:	dd 24       	jral5 $r4
   ce9d0:	d5 05       	j8 ce9da <SM_Slave_L2capEventHandler+0x44>
   ce9d2:	80 22       	mov55 $r1,$r2
   ce9d4:	84 40       	movi55 $r2,#0
   ce9d6:	49 ff fc b0 	jal ce336 <SM_Slave_UnsupportedHandler>
   ce9da:	84 01       	movi55 $r0,#1
   ce9dc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce9de <SM_Slave_Init>:
   ce9de:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ce9e0:	84 01       	movi55 $r0,#1
   ce9e2:	3e 1c a9 96 	addi.gp $r1,#-218730
   ce9e6:	49 ff f9 b4 	jal cdd4e <SM_Protocol_RegisterCallback>
   ce9ea:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ce9ec <SM_Slave_EncryptionChange>:
   ce9ec:	fc 51       	push25 $r10,#0x88    ! {$r6~$r10, $fp, $gp, $lp}
   ce9ee:	97 80       	zeb33 $r6,$r0
   ce9f0:	81 21       	mov55 $r9,$r1
   ce9f2:	80 06       	mov55 $r0,$r6
   ce9f4:	49 ff f9 66 	jal cdcc0 <sm_hal_release_timer>
   ce9f8:	00 84 80 00 	lbi $r8,[$r9+#0x0]
   ce9fc:	4e 83 00 3d 	bnez $r8,cea76 <SM_Slave_EncryptionChange+0x8a>
   cea00:	00 14 80 03 	lbi $r1,[$r9+#0x3]
   cea04:	5a 18 01 39 	bnec $r1,#1,cea76 <SM_Slave_EncryptionChange+0x8a>
   cea08:	80 06       	mov55 $r0,$r6
   cea0a:	49 ff f9 85 	jal cdd14 <sm_hal_set_link_encrypted>
   cea0e:	3e 0f c9 c0 	addi.gp $r0,#-13888
   cea12:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   cea16:	c0 1d       	beqz38 $r0,cea50 <SM_Slave_EncryptionChange+0x64>
   cea18:	00 10 00 a3 	lbi $r1,[$r0+#0xa3]
   cea1c:	00 00 00 0f 	lbi $r0,[$r0+#0xf]
   cea20:	40 84 04 06 	slt $r8,$r8,$r1
   cea24:	e6 04       	slti45 $r0,#4
   cea26:	e9 07       	bnezs8 cea34 <SM_Slave_EncryptionChange+0x48>
   cea28:	58 84 00 04 	ori $r8,$r8,#0x4
   cea2c:	54 84 00 ff 	andi $r8,$r8,#0xff
   cea30:	84 e4       	movi55 $r7,#4
   cea32:	d5 07       	j8 cea40 <SM_Slave_EncryptionChange+0x54>
   cea34:	c8 03       	bnez38 $r0,cea3a <SM_Slave_EncryptionChange+0x4e>
   cea36:	84 e2       	movi55 $r7,#2
   cea38:	d5 04       	j8 cea40 <SM_Slave_EncryptionChange+0x54>
   cea3a:	58 84 00 04 	ori $r8,$r8,#0x4
   cea3e:	84 e3       	movi55 $r7,#3
   cea40:	80 06       	mov55 $r0,$r6
   cea42:	49 ff ef ad 	jal cc99c <SM_StartKeyDistribution>
   cea46:	80 06       	mov55 $r0,$r6
   cea48:	80 28       	mov55 $r1,$r8
   cea4a:	49 ff f9 6b 	jal cdd20 <sm_hal_set_link_authenticated>
   cea4e:	d5 19       	j8 cea80 <SM_Slave_EncryptionChange+0x94>
   cea50:	80 06       	mov55 $r0,$r6
   cea52:	49 ff df ec 	jal caa2a <ble_gap_link_GetAttr_BdAddr>
   cea56:	80 3f       	mov55 $r1,$sp
   cea58:	49 ff f5 bd 	jal cd5d2 <sm_hal_flash_load_data>
   cea5c:	00 0f 80 11 	lbi $r0,[$sp+#0x11]
   cea60:	54 10 00 08 	andi $r1,$r0,#0x8
   cea64:	c1 03       	beqz38 $r1,cea6a <SM_Slave_EncryptionChange+0x7e>
   cea66:	84 e4       	movi55 $r7,#4
   cea68:	d5 0c       	j8 cea80 <SM_Slave_EncryptionChange+0x94>
   cea6a:	96 16       	bmski33 $r0,#0x2
   cea6c:	c8 03       	bnez38 $r0,cea72 <SM_Slave_EncryptionChange+0x86>
   cea6e:	84 e2       	movi55 $r7,#2
   cea70:	d5 08       	j8 cea80 <SM_Slave_EncryptionChange+0x94>
   cea72:	84 e3       	movi55 $r7,#3
   cea74:	d5 06       	j8 cea80 <SM_Slave_EncryptionChange+0x94>
   cea76:	80 06       	mov55 $r0,$r6
   cea78:	84 20       	movi55 $r1,#0
   cea7a:	49 ff f9 4d 	jal cdd14 <sm_hal_set_link_encrypted>
   cea7e:	84 e1       	movi55 $r7,#1
   cea80:	00 24 80 00 	lbi $r2,[$r9+#0x0]
   cea84:	fd 03       	movd44 $r0,$r6
   cea86:	49 ff f8 c4 	jal cdc0e <sm_hal_infom_conn_sec_update>
   cea8a:	fc d1       	pop25 $r10,#0x88    ! {$r6~$r10, $fp, $gp, $lp}

000cea8c <SM_Slave_get_ltk_handler>:
   cea8c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cea8e:	96 c8       	zeb33 $r3,$r1
   cea90:	80 e0       	mov55 $r7,$r0
   cea92:	97 90       	zeb33 $r6,$r2
   cea94:	cb 0c       	bnez38 $r3,ceaac <SM_Slave_get_ltk_handler+0x20>
   cea96:	3e 0d 39 d0 	addi.gp $r0,#-181808
   cea9a:	49 00 33 60 	jal d515a <puts>
   cea9e:	80 06       	mov55 $r0,$r6
   ceaa0:	49 ff df 9a 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   ceaa4:	80 27       	mov55 $r1,$r7
   ceaa6:	49 ff f4 e9 	jal cd478 <SM_CryptoTool_SendLTKReply>
   ceaaa:	d5 0a       	j8 ceabe <SM_Slave_get_ltk_handler+0x32>
   ceaac:	3e 0d 39 ec 	addi.gp $r0,#-181780
   ceab0:	49 00 33 55 	jal d515a <puts>
   ceab4:	80 06       	mov55 $r0,$r6
   ceab6:	49 ff df 8f 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   ceaba:	49 ff f4 d5 	jal cd464 <SM_CryptoTool_SendLTKNegativeReply>
   ceabe:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ceac0 <SM_Slave_LTKRequestHandler>:
   ceac0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ceac2:	97 80       	zeb33 $r6,$r0
   ceac4:	97 c8       	zeb33 $r7,$r1
   ceac6:	80 06       	mov55 $r0,$r6
   ceac8:	49 ff df 86 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   ceacc:	c7 17       	beqz38 $r7,ceafa <SM_Slave_LTKRequestHandler+0x3a>
   ceace:	3e 1f c9 c0 	addi.gp $r1,#-13888
   cead2:	38 10 9a 02 	lw $r1,[$r1+($r6<<#0x2)]
   cead6:	a6 8f       	lbi333 $r2,[$r1+#0x7]
   cead8:	5a 28 0d 0c 	bnec $r2,#13,ceaf0 <SM_Slave_LTKRequestHandler+0x30>
   ceadc:	50 10 80 a4 	addi $r1,$r1,#164
   ceae0:	49 ff f4 cc 	jal cd478 <SM_CryptoTool_SendLTKReply>
   ceae4:	80 06       	mov55 $r0,$r6
   ceae6:	44 10 75 30 	movi $r1,#30000
   ceaea:	49 ff f8 f0 	jal cdcca <sm_hal_set_timer>
   ceaee:	d5 0c       	j8 ceb06 <SM_Slave_LTKRequestHandler+0x46>
   ceaf0:	5a 28 05 0b 	bnec $r2,#5,ceb06 <SM_Slave_LTKRequestHandler+0x46>
   ceaf4:	84 0d       	movi55 $r0,#13
   ceaf6:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   ceaf8:	d5 07       	j8 ceb06 <SM_Slave_LTKRequestHandler+0x46>
   ceafa:	49 ff f4 b5 	jal cd464 <SM_CryptoTool_SendLTKNegativeReply>
   ceafe:	fd 03       	movd44 $r0,$r6
   ceb00:	84 43       	movi55 $r2,#3
   ceb02:	49 ff ef 01 	jal cc904 <SM_FinishPairing>
   ceb06:	84 01       	movi55 $r0,#1
   ceb08:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ceb0a <SM_Slave_s1_handler>:
   ceb0a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ceb0c:	3e 7f c9 c0 	addi.gp $r7,#-13888
   ceb10:	97 90       	zeb33 $r6,$r2
   ceb12:	38 33 9a 02 	lw $r3,[$r7+($r6<<#0x2)]
   ceb16:	80 20       	mov55 $r1,$r0
   ceb18:	a6 1f       	lbi333 $r0,[$r3+#0x7]
   ceb1a:	5a 08 05 0d 	bnec $r0,#5,ceb34 <SM_Slave_s1_handler+0x2a>
   ceb1e:	00 21 80 a0 	lbi $r2,[$r3+#0xa0]
   ceb22:	50 01 80 a4 	addi $r0,$r3,#164
   ceb26:	49 ff ca 91 	jal c8048 <memcpy>
   ceb2a:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ceb2e:	84 2d       	movi55 $r1,#13
   ceb30:	ae 47       	sbi333 $r1,[$r0+#0x7]
   ceb32:	d5 0d       	j8 ceb4c <SM_Slave_s1_handler+0x42>
   ceb34:	5a 08 0d 0c 	bnec $r0,#13,ceb4c <SM_Slave_s1_handler+0x42>
   ceb38:	00 21 80 a0 	lbi $r2,[$r3+#0xa0]
   ceb3c:	50 01 80 a4 	addi $r0,$r3,#164
   ceb40:	49 ff ca 84 	jal c8048 <memcpy>
   ceb44:	80 06       	mov55 $r0,$r6
   ceb46:	84 21       	movi55 $r1,#1
   ceb48:	49 ff ff bc 	jal ceac0 <SM_Slave_LTKRequestHandler>
   ceb4c:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ceb4e <SM_Slave_LTKRequest>:
   ceb4e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ceb50:	97 80       	zeb33 $r6,$r0
   ceb52:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ceb56:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   ceb5a:	c8 0a       	bnez38 $r0,ceb6e <SM_Slave_LTKRequest+0x20>
   ceb5c:	50 00 80 0a 	addi $r0,$r1,#10
   ceb60:	80 46       	mov55 $r2,$r6
   ceb62:	9c 4a       	addi333 $r1,$r1,#2
   ceb64:	3e 3c aa 8c 	addi.gp $r3,#-218484
   ceb68:	49 ff f6 24 	jal cd7b0 <sm_hal_flash_get_ltk>
   ceb6c:	d5 08       	j8 ceb7c <SM_Slave_LTKRequest+0x2e>
   ceb6e:	80 06       	mov55 $r0,$r6
   ceb70:	49 ff f8 a8 	jal cdcc0 <sm_hal_release_timer>
   ceb74:	80 06       	mov55 $r0,$r6
   ceb76:	84 21       	movi55 $r1,#1
   ceb78:	49 ff ff a4 	jal ceac0 <SM_Slave_LTKRequestHandler>
   ceb7c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ceb7e <SM_Master_SC_rbValueJustWork>:
   ceb7e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ceb80:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ceb82 <SM_Master_f5_mac_handler>:
   ceb82:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ceb84:	80 20       	mov55 $r1,$r0
   ceb86:	96 90       	zeb33 $r2,$r2
   ceb88:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ceb8c:	38 00 0a 02 	lw $r0,[$r0+($r2<<#0x2)]
   ceb90:	c0 07       	beqz38 $r0,ceb9e <SM_Master_f5_mac_handler+0x1c>
   ceb92:	c1 06       	beqz38 $r1,ceb9e <SM_Master_f5_mac_handler+0x1c>
   ceb94:	50 00 00 80 	addi $r0,$r0,#128
   ceb98:	fa 40       	movpi45 $r2,#0x10
   ceb9a:	49 ff ca 57 	jal c8048 <memcpy>
   ceb9e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ceba0 <SM_Master_IdentityInformationHandler>:
   ceba0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ceba2:	a6 17       	lbi333 $r0,[$r2+#0x7]
   ceba4:	5a 08 32 07 	bnec $r0,#50,cebb2 <SM_Master_IdentityInformationHandler+0x12>
   ceba8:	50 01 00 f4 	addi $r0,$r2,#244
   cebac:	fa 40       	movpi45 $r2,#0x10
   cebae:	49 ff ca 4d 	jal c8048 <memcpy>
   cebb2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cebb4 <SM_Master_EncryptionInformationHandler>:
   cebb4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cebb6:	a6 17       	lbi333 $r0,[$r2+#0x7]
   cebb8:	5a 08 31 07 	bnec $r0,#49,cebc6 <SM_Master_EncryptionInformationHandler+0x12>
   cebbc:	50 01 00 b4 	addi $r0,$r2,#180
   cebc0:	fa 40       	movpi45 $r2,#0x10
   cebc2:	49 ff ca 43 	jal c8048 <memcpy>
   cebc6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cebc8 <SM_Master_PairingDHKeyCheckHandler>:
   cebc8:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   cebca:	54 80 00 ff 	andi $r8,$r0,#0xff
   cebce:	fa 11       	movpi45 $r0,#0x21
   cebd0:	81 21       	mov55 $r9,$r1
   cebd2:	80 e2       	mov55 $r7,$r2
   cebd4:	49 00 1a 38 	jal d2044 <malloc>
   cebd8:	80 c0       	mov55 $r6,$r0
   cebda:	c0 45       	beqz38 $r0,cec64 <SM_Master_PairingDHKeyCheckHandler+0x9c>
   cebdc:	80 29       	mov55 $r1,$r9
   cebde:	fa 40       	movpi45 $r2,#0x10
   cebe0:	50 03 80 40 	addi $r0,$r7,#64
   cebe4:	49 ff ca 32 	jal c8048 <memcpy>
   cebe8:	50 93 00 10 	addi $r9,$r6,#16
   cebec:	50 13 80 b4 	addi $r1,$r7,#180
   cebf0:	fa 40       	movpi45 $r2,#0x10
   cebf2:	80 06       	mov55 $r0,$r6
   cebf4:	49 ff ca 2a 	jal c8048 <memcpy>
   cebf8:	51 c3 00 13 	addi $fp,$r6,#19
   cebfc:	50 13 80 09 	addi $r1,$r7,#9
   cec00:	84 43       	movi55 $r2,#3
   cec02:	80 09       	mov55 $r0,$r9
   cec04:	49 ff ca 22 	jal c8048 <memcpy>
   cec08:	50 13 80 98 	addi $r1,$r7,#152
   cec0c:	84 46       	movi55 $r2,#6
   cec0e:	80 1c       	mov55 $r0,$fp
   cec10:	49 ff ca 1c 	jal c8048 <memcpy>
   cec14:	00 03 80 9f 	lbi $r0,[$r7+#0x9f]
   cec18:	50 a3 00 1a 	addi $r10,$r6,#26
   cec1c:	10 03 00 19 	sbi $r0,[$r6+#0x19]
   cec20:	80 08       	mov55 $r0,$r8
   cec22:	49 ff f8 8d 	jal cdd3c <sm_hal_get_local_addr>
   cec26:	80 20       	mov55 $r1,$r0
   cec28:	84 46       	movi55 $r2,#6
   cec2a:	80 0a       	mov55 $r0,$r10
   cec2c:	49 ff ca 0e 	jal c8048 <memcpy>
   cec30:	80 08       	mov55 $r0,$r8
   cec32:	49 ff f8 7d 	jal cdd2c <sm_hal_get_local_addr_Type>
   cec36:	10 03 00 20 	sbi $r0,[$r6+#0x20]
   cec3a:	3e 0c ac b4 	addi.gp $r0,#-217932
   cec3e:	f0 82       	swi37.sp $r0,[+#0x8]
   cec40:	50 13 80 80 	addi $r1,$r7,#128
   cec44:	80 08       	mov55 $r0,$r8
   cec46:	50 23 80 10 	addi $r2,$r7,#16
   cec4a:	50 33 80 20 	addi $r3,$r7,#32
   cec4e:	80 86       	mov55 $r4,$r6
   cec50:	80 a9       	mov55 $r5,$r9
   cec52:	15 cf 80 00 	swi $fp,[$sp+#0x0]
   cec56:	14 af 80 01 	swi $r10,[$sp+#0x4]
   cec5a:	49 ff f1 5d 	jal ccf14 <f6>
   cec5e:	80 06       	mov55 $r0,$r6
   cec60:	49 00 19 8d 	jal d1f7a <free>
   cec64:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

000cec66 <SM_Master_s1_handler>:
   cec66:	fc 44       	push25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}
   cec68:	3e 8f c9 c0 	addi.gp $r8,#-13888
   cec6c:	97 90       	zeb33 $r6,$r2
   cec6e:	38 24 1a 02 	lw $r2,[$r8+($r6<<#0x2)]
   cec72:	80 e0       	mov55 $r7,$r0
   cec74:	a6 17       	lbi333 $r0,[$r2+#0x7]
   cec76:	5a 08 16 1e 	bnec $r0,#22,cecb2 <SM_Master_s1_handler+0x4c>
   cec7a:	50 01 00 a4 	addi $r0,$r2,#164
   cec7e:	00 21 00 a0 	lbi $r2,[$r2+#0xa0]
   cec82:	80 27       	mov55 $r1,$r7
   cec84:	50 9f 80 0e 	addi $r9,$sp,#14
   cec88:	49 ff c9 e0 	jal c8048 <memcpy>
   cec8c:	84 20       	movi55 $r1,#0
   cec8e:	fa 40       	movpi45 $r2,#0x10
   cec90:	80 09       	mov55 $r0,$r9
   cec92:	49 ff c9 fb 	jal c8088 <memset>
   cec96:	38 24 1a 02 	lw $r2,[$r8+($r6<<#0x2)]
   cec9a:	80 27       	mov55 $r1,$r7
   cec9c:	00 21 00 a0 	lbi $r2,[$r2+#0xa0]
   ceca0:	80 09       	mov55 $r0,$r9
   ceca2:	49 ff c9 d3 	jal c8048 <memcpy>
   ceca6:	80 06       	mov55 $r0,$r6
   ceca8:	49 ff de 96 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   cecac:	b0 41       	addri36.sp $r1,#0x4
   cecae:	49 ff dc 2c 	jal ca506 <ble_gap_start_encrypt>
   cecb2:	fc c4       	pop25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}

000cecb4 <SM_Master_f6_Eb_handler>:
   cecb4:	fc 24       	push25 $r8,#0x20    ! {$r6~$r8, $fp, $gp, $lp}
   cecb6:	3e 7f c9 c0 	addi.gp $r7,#-13888
   cecba:	97 90       	zeb33 $r6,$r2
   cecbc:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   cecc0:	fa 40       	movpi45 $r2,#0x10
   cecc2:	50 10 80 40 	addi $r1,$r1,#64
   cecc6:	49 ff c9 b5 	jal c8030 <memcmp>
   cecca:	80 20       	mov55 $r1,$r0
   ceccc:	c8 17       	bnez38 $r0,cecfa <SM_Master_f6_Eb_handler+0x46>
   cecce:	50 8f 80 0e 	addi $r8,$sp,#14
   cecd2:	80 08       	mov55 $r0,$r8
   cecd4:	fa 40       	movpi45 $r2,#0x10
   cecd6:	49 ff c9 d9 	jal c8088 <memset>
   cecda:	38 23 9a 02 	lw $r2,[$r7+($r6<<#0x2)]
   cecde:	80 08       	mov55 $r0,$r8
   cece0:	50 11 00 a4 	addi $r1,$r2,#164
   cece4:	00 21 00 a0 	lbi $r2,[$r2+#0xa0]
   cece8:	49 ff c9 b0 	jal c8048 <memcpy>
   cecec:	80 06       	mov55 $r0,$r6
   cecee:	49 ff de 73 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   cecf2:	b0 41       	addri36.sp $r1,#0x4
   cecf4:	49 ff dc 09 	jal ca506 <ble_gap_start_encrypt>
   cecf8:	d5 05       	j8 ced02 <SM_Master_f6_Eb_handler+0x4e>
   cecfa:	80 06       	mov55 $r0,$r6
   cecfc:	84 2b       	movi55 $r1,#11
   cecfe:	49 ff ee 41 	jal cc980 <SM_PairingFailed>
   ced02:	fc a4       	pop25 $r8,#0x20    ! {$r6~$r8, $fp, $gp, $lp}

000ced04 <SM_Master_PairingPublicKeyHandler>:
   ced04:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   ced06:	fa f0       	movpi45 $r7,#0x20
   ced08:	97 80       	zeb33 $r6,$r0
   ced0a:	81 21       	mov55 $r9,$r1
   ced0c:	81 02       	mov55 $r8,$r2
   ced0e:	50 01 00 40 	addi $r0,$r2,#64
   ced12:	80 47       	mov55 $r2,$r7
   ced14:	49 ff c9 9a 	jal c8048 <memcpy>
   ced18:	40 14 9c 00 	add $r1,$r9,$r7
   ced1c:	80 47       	mov55 $r2,$r7
   ced1e:	50 04 00 60 	addi $r0,$r8,#96
   ced22:	49 ff c9 93 	jal c8048 <memcpy>
   ced26:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ced2a:	38 10 1a 02 	lw $r1,[$r0+($r6<<#0x2)]
   ced2e:	3e 2c ad 3e 	addi.gp $r2,#-217794
   ced32:	80 06       	mov55 $r0,$r6
   ced34:	50 10 80 40 	addi $r1,$r1,#64
   ced38:	49 ff f3 09 	jal cd34a <SM_CryptoTool_GenerateDHKey>
   ced3c:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000ced3e <SM_Master_generate_DHKey_handler>:
   ced3e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   ced40:	81 00       	mov55 $r8,$r0
   ced42:	97 90       	zeb33 $r6,$r2
   ced44:	c0 24       	beqz38 $r0,ced8c <SM_Master_generate_DHKey_handler+0x4e>
   ced46:	3e 0f c9 c0 	addi.gp $r0,#-13888
   ced4a:	38 20 1a 02 	lw $r2,[$r0+($r6<<#0x2)]
   ced4e:	a6 17       	lbi333 $r0,[$r2+#0x7]
   ced50:	5a 08 18 08 	bnec $r0,#24,ced60 <SM_Master_generate_DHKey_handler+0x22>
   ced54:	80 06       	mov55 $r0,$r6
   ced56:	50 11 00 20 	addi $r1,$r2,#32
   ced5a:	49 ff f8 9e 	jal cde96 <SM_Protocol_PairingRandom>
   ced5e:	d5 03       	j8 ced64 <SM_Master_generate_DHKey_handler+0x26>
   ced60:	fa 08       	movpi45 $r0,#0x18
   ced62:	ae 17       	sbi333 $r0,[$r2+#0x7]
   ced64:	3e 7f c9 c0 	addi.gp $r7,#-13888
   ced68:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ced6c:	80 28       	mov55 $r1,$r8
   ced6e:	50 00 00 60 	addi $r0,$r0,#96
   ced72:	fa 50       	movpi45 $r2,#0x20
   ced74:	49 ff c9 6a 	jal c8048 <memcpy>
   ced78:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   ced7c:	00 10 00 0f 	lbi $r1,[$r0+#0xf]
   ced80:	3e 0d 2c c8 	addi.gp $r0,#-185144
   ced84:	38 10 06 02 	lw $r1,[$r0+($r1<<#0x2)]
   ced88:	80 06       	mov55 $r0,$r6
   ced8a:	dd 21       	jral5 $r1
   ced8c:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000ced8e <SM_Master_SC_Unsupported>:
   ced8e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ced90:	3e 0d 3a 0c 	addi.gp $r0,#-181748
   ced94:	49 00 31 e3 	jal d515a <puts>
   ced98:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ced9a <SM_Master_UnsupportedHandler>:
   ced9a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ced9c:	3e 0d 39 20 	addi.gp $r0,#-181984
   ceda0:	49 00 31 dd 	jal d515a <puts>
   ceda4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000ceda6 <SM_Master_L2capEventHandler>:
   ceda6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   ceda8:	96 48       	zeb33 $r1,$r1
   cedaa:	9f 09       	subi333 $r4,$r1,#1
   cedac:	97 20       	zeb33 $r4,$r4
   cedae:	96 00       	zeb33 $r0,$r0
   cedb0:	3e 3f c9 c0 	addi.gp $r3,#-13888
   cedb4:	e6 8e       	slti45 $r4,#14
   cedb6:	e8 0a       	beqzs8 cedca <SM_Master_L2capEventHandler+0x24>
   cedb8:	3e 4f c1 e8 	addi.gp $r4,#-15896
   cedbc:	38 42 06 02 	lw $r4,[$r4+($r1<<#0x2)]
   cedc0:	80 22       	mov55 $r1,$r2
   cedc2:	38 21 82 02 	lw $r2,[$r3+($r0<<#0x2)]
   cedc6:	dd 24       	jral5 $r4
   cedc8:	d5 06       	j8 cedd4 <SM_Master_L2capEventHandler+0x2e>
   cedca:	80 22       	mov55 $r1,$r2
   cedcc:	38 21 82 02 	lw $r2,[$r3+($r0<<#0x2)]
   cedd0:	49 ff ff e5 	jal ced9a <SM_Master_UnsupportedHandler>
   cedd4:	84 01       	movi55 $r0,#1
   cedd6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cedd8 <SM_Master_g2_handler>:
   cedd8:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   cedda:	b1 81       	addri36.sp $r6,#0x4
   ceddc:	80 20       	mov55 $r1,$r0
   cedde:	97 d0       	zeb33 $r7,$r2
   cede0:	80 06       	mov55 $r0,$r6
   cede2:	84 44       	movi55 $r2,#4
   cede4:	49 ff c9 32 	jal c8048 <memcpy>
   cede8:	f0 01       	lwi37.sp $r0,[+#0x4]
   cedea:	46 10 00 f4 	sethi $r1,#0xf4
   cedee:	58 10 82 40 	ori $r1,$r1,#0x240
   cedf2:	40 10 04 17 	divr $r1,$r0,$r0,$r1
   cedf6:	80 46       	mov55 $r2,$r6
   cedf8:	84 21       	movi55 $r1,#1
   cedfa:	f0 81       	swi37.sp $r0,[+#0x4]
   cedfc:	80 07       	mov55 $r0,$r7
   cedfe:	49 ff f7 40 	jal cdc7e <sm_hal_infom_passkey_display_req>
   cee02:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000cee04 <SM_Master_SC_rbValuePasskeyDisplay>:
   cee04:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cee06:	b1 c1       	addri36.sp $r7,#0x4
   cee08:	97 80       	zeb33 $r6,$r0
   cee0a:	84 24       	movi55 $r1,#4
   cee0c:	80 07       	mov55 $r0,$r7
   cee0e:	49 ff f7 7e 	jal cdd0a <sm_hal_get_random_number>
   cee12:	f1 01       	lwi37.sp $r1,[+#0x4]
   cee14:	46 00 00 f4 	sethi $r0,#0xf4
   cee18:	58 00 02 40 	ori $r0,$r0,#0x240
   cee1c:	40 10 80 17 	divr $r1,$r0,$r1,$r0
   cee20:	3e 8f c9 c0 	addi.gp $r8,#-13888
   cee24:	38 24 1a 02 	lw $r2,[$r8+($r6<<#0x2)]
   cee28:	50 21 00 af 	addi $r2,$r2,#175
   cee2c:	84 20       	movi55 $r1,#0
   cee2e:	f0 81       	swi37.sp $r0,[+#0x4]
   cee30:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   cee32:	ae 17       	sbi333 $r0,[$r2+#0x7]
   cee34:	a6 39       	lbi333 $r0,[$r7+#0x1]
   cee36:	ae 16       	sbi333 $r0,[$r2+#0x6]
   cee38:	80 06       	mov55 $r0,$r6
   cee3a:	a7 f8       	lbi333 $r7,[$r7+#0x0]
   cee3c:	af d5       	sbi333 $r7,[$r2+#0x5]
   cee3e:	9c 95       	addi333 $r2,$r2,#5
   cee40:	49 ff f7 1f 	jal cdc7e <sm_hal_infom_passkey_display_req>
   cee44:	38 74 1a 02 	lw $r7,[$r8+($r6<<#0x2)]
   cee48:	84 01       	movi55 $r0,#1
   cee4a:	10 03 80 80 	sbi $r0,[$r7+#0x80]
   cee4e:	3c 9d f1 a0 	lwi.gp $r9,[+#-14720]
   cee52:	50 13 80 b4 	addi $r1,$r7,#180
   cee56:	49 00 0a 87 	jal d0364 <SM_Common_GetRi>
   cee5a:	80 80       	mov55 $r4,$r0
   cee5c:	80 29       	mov55 $r1,$r9
   cee5e:	80 06       	mov55 $r0,$r6
   cee60:	50 23 80 40 	addi $r2,$r7,#64
   cee64:	50 33 80 20 	addi $r3,$r7,#32
   cee68:	3e 5c ae ee 	addi.gp $r5,#-217362
   cee6c:	49 ff f1 48 	jal cd0fc <f4>
   cee70:	38 04 1a 02 	lw $r0,[$r8+($r6<<#0x2)]
   cee74:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   cee78:	58 10 80 04 	ori $r1,$r1,#0x4
   cee7c:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   cee80:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000cee82 <SM_Master_f5>:
   cee82:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   cee84:	54 80 00 ff 	andi $r8,$r0,#0xff
   cee88:	84 0e       	movi55 $r0,#14
   cee8a:	80 e1       	mov55 $r7,$r1
   cee8c:	49 00 18 dc 	jal d2044 <malloc>
   cee90:	80 c0       	mov55 $r6,$r0
   cee92:	c0 2d       	beqz38 $r0,ceeec <SM_Master_f5+0x6a>
   cee94:	80 08       	mov55 $r0,$r8
   cee96:	49 ff f7 53 	jal cdd3c <sm_hal_get_local_addr>
   cee9a:	80 20       	mov55 $r1,$r0
   cee9c:	84 46       	movi55 $r2,#6
   cee9e:	80 06       	mov55 $r0,$r6
   ceea0:	49 ff c8 d4 	jal c8048 <memcpy>
   ceea4:	80 08       	mov55 $r0,$r8
   ceea6:	49 ff f7 43 	jal cdd2c <sm_hal_get_local_addr_Type>
   ceeaa:	50 93 00 07 	addi $r9,$r6,#7
   ceeae:	ae 36       	sbi333 $r0,[$r6+#0x6]
   ceeb0:	50 13 80 98 	addi $r1,$r7,#152
   ceeb4:	84 46       	movi55 $r2,#6
   ceeb6:	80 09       	mov55 $r0,$r9
   ceeb8:	49 ff c8 c8 	jal c8048 <memcpy>
   ceebc:	00 03 80 9f 	lbi $r0,[$r7+#0x9f]
   ceec0:	50 13 80 60 	addi $r1,$r7,#96
   ceec4:	10 03 00 0d 	sbi $r0,[$r6+#0xd]
   ceec8:	3e 0c ab 82 	addi.gp $r0,#-218238
   ceecc:	b6 1f       	swi450 $r0,[$sp]
   ceece:	3e 0c af 86 	addi.gp $r0,#-217210
   ceed2:	f0 81       	swi37.sp $r0,[+#0x4]
   ceed4:	50 23 80 20 	addi $r2,$r7,#32
   ceed8:	80 08       	mov55 $r0,$r8
   ceeda:	50 33 80 10 	addi $r3,$r7,#16
   ceede:	80 86       	mov55 $r4,$r6
   ceee0:	80 a9       	mov55 $r5,$r9
   ceee2:	49 ff f0 60 	jal ccfa2 <f5>
   ceee6:	80 06       	mov55 $r0,$r6
   ceee8:	49 00 18 49 	jal d1f7a <free>
   ceeec:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000ceeee <SM_Master_f4_PKE_handler>:
   ceeee:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   ceef0:	80 20       	mov55 $r1,$r0
   ceef2:	97 90       	zeb33 $r6,$r2
   ceef4:	c0 48       	beqz38 $r0,cef84 <SM_Master_f4_PKE_handler+0x96>
   ceef6:	3e 8f c9 c0 	addi.gp $r8,#-13888
   ceefa:	38 04 1a 02 	lw $r0,[$r8+($r6<<#0x2)]
   ceefe:	a6 87       	lbi333 $r2,[$r0+#0x7]
   cef00:	5a 28 16 3b 	bnec $r2,#22,cef76 <SM_Master_f4_PKE_handler+0x88>
   cef04:	50 00 00 30 	addi $r0,$r0,#48
   cef08:	fa 40       	movpi45 $r2,#0x10
   cef0a:	49 00 0a 1c 	jal d0342 <SM_Common_ValueCompare>
   cef0e:	c8 06       	bnez38 $r0,cef1a <SM_Master_f4_PKE_handler+0x2c>
   cef10:	80 06       	mov55 $r0,$r6
   cef12:	84 24       	movi55 $r1,#4
   cef14:	49 ff ed 36 	jal cc980 <SM_PairingFailed>
   cef18:	d5 36       	j8 cef84 <SM_Master_f4_PKE_handler+0x96>
   cef1a:	38 14 1a 02 	lw $r1,[$r8+($r6<<#0x2)]
   cef1e:	00 00 80 80 	lbi $r0,[$r1+#0x80]
   cef22:	e6 14       	slti45 $r0,#20
   cef24:	e8 23       	beqzs8 cef6a <SM_Master_f4_PKE_handler+0x7c>
   cef26:	50 00 80 20 	addi $r0,$r1,#32
   cef2a:	fa 20       	movpi45 $r1,#0x10
   cef2c:	49 ff f6 ef 	jal cdd0a <sm_hal_get_random_number>
   cef30:	38 74 1a 02 	lw $r7,[$r8+($r6<<#0x2)]
   cef34:	00 03 80 80 	lbi $r0,[$r7+#0x80]
   cef38:	9c 01       	addi333 $r0,$r0,#1
   cef3a:	96 00       	zeb33 $r0,$r0
   cef3c:	10 03 80 80 	sbi $r0,[$r7+#0x80]
   cef40:	3c 9d f1 a0 	lwi.gp $r9,[+#-14720]
   cef44:	50 13 80 b4 	addi $r1,$r7,#180
   cef48:	49 00 0a 0e 	jal d0364 <SM_Common_GetRi>
   cef4c:	80 80       	mov55 $r4,$r0
   cef4e:	80 29       	mov55 $r1,$r9
   cef50:	80 06       	mov55 $r0,$r6
   cef52:	50 23 80 40 	addi $r2,$r7,#64
   cef56:	50 33 80 20 	addi $r3,$r7,#32
   cef5a:	3e 5c ae ee 	addi.gp $r5,#-217362
   cef5e:	49 ff f0 cf 	jal cd0fc <f4>
   cef62:	38 04 1a 02 	lw $r0,[$r8+($r6<<#0x2)]
   cef66:	fa 23       	movpi45 $r1,#0x13
   cef68:	d5 0d       	j8 cef82 <SM_Master_f4_PKE_handler+0x94>
   cef6a:	fa 09       	movpi45 $r0,#0x19
   cef6c:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   cef6e:	80 06       	mov55 $r0,$r6
   cef70:	49 ff ff 89 	jal cee82 <SM_Master_f5>
   cef74:	d5 08       	j8 cef84 <SM_Master_f4_PKE_handler+0x96>
   cef76:	80 06       	mov55 $r0,$r6
   cef78:	49 ff f7 a7 	jal cdec6 <SM_Protocol_PairingConfirm>
   cef7c:	38 04 1a 02 	lw $r0,[$r8+($r6<<#0x2)]
   cef80:	fa 28       	movpi45 $r1,#0x18
   cef82:	ae 47       	sbi333 $r1,[$r0+#0x7]
   cef84:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cef86 <SM_Master_f5_ltk_handler>:
   cef86:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   cef88:	3e 6f c9 c0 	addi.gp $r6,#-13888
   cef8c:	54 91 00 ff 	andi $r9,$r2,#0xff
   cef90:	81 40       	mov55 $r10,$r0
   cef92:	38 03 26 02 	lw $r0,[$r6+($r9<<#0x2)]
   cef96:	4e 02 00 7c 	beqz $r0,cf08e <SM_Master_f5_ltk_handler+0x108>
   cef9a:	4e a2 00 7a 	beqz $r10,cf08e <SM_Master_f5_ltk_handler+0x108>
   cef9e:	fa 11       	movpi45 $r0,#0x21
   cefa0:	49 00 18 52 	jal d2044 <malloc>
   cefa4:	80 e0       	mov55 $r7,$r0
   cefa6:	4e 02 00 74 	beqz $r0,cf08e <SM_Master_f5_ltk_handler+0x108>
   cefaa:	38 83 26 02 	lw $r8,[$r6+($r9<<#0x2)]
   cefae:	80 2a       	mov55 $r1,$r10
   cefb0:	50 64 00 a4 	addi $r6,$r8,#164
   cefb4:	fa 40       	movpi45 $r2,#0x10
   cefb6:	80 06       	mov55 $r0,$r6
   cefb8:	49 ff c8 48 	jal c8048 <memcpy>
   cefbc:	3e 0d 3a 28 	addi.gp $r0,#-181720
   cefc0:	49 00 30 cd 	jal d515a <puts>
   cefc4:	a6 35       	lbi333 $r0,[$r6+#0x5]
   cefc6:	a6 b1       	lbi333 $r2,[$r6+#0x1]
   cefc8:	a6 f2       	lbi333 $r3,[$r6+#0x2]
   cefca:	a7 33       	lbi333 $r4,[$r6+#0x3]
   cefcc:	a7 74       	lbi333 $r5,[$r6+#0x4]
   cefce:	00 14 00 a4 	lbi $r1,[$r8+#0xa4]
   cefd2:	b6 1f       	swi450 $r0,[$sp]
   cefd4:	51 c3 80 13 	addi $fp,$r7,#19
   cefd8:	a6 36       	lbi333 $r0,[$r6+#0x6]
   cefda:	50 a3 80 1a 	addi $r10,$r7,#26
   cefde:	f0 81       	swi37.sp $r0,[+#0x4]
   cefe0:	a6 37       	lbi333 $r0,[$r6+#0x7]
   cefe2:	f0 82       	swi37.sp $r0,[+#0x8]
   cefe4:	3e 0d 3a 34 	addi.gp $r0,#-181708
   cefe8:	49 00 18 a3 	jal d212e <printf>
   cefec:	00 03 00 0d 	lbi $r0,[$r6+#0xd]
   ceff0:	00 33 00 0a 	lbi $r3,[$r6+#0xa]
   ceff4:	00 43 00 0b 	lbi $r4,[$r6+#0xb]
   ceff8:	00 53 00 0c 	lbi $r5,[$r6+#0xc]
   ceffc:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   cf000:	00 23 00 09 	lbi $r2,[$r6+#0x9]
   cf004:	b6 1f       	swi450 $r0,[$sp]
   cf006:	00 03 00 0e 	lbi $r0,[$r6+#0xe]
   cf00a:	f0 81       	swi37.sp $r0,[+#0x4]
   cf00c:	00 03 00 0f 	lbi $r0,[$r6+#0xf]
   cf010:	50 63 80 10 	addi $r6,$r7,#16
   cf014:	f0 82       	swi37.sp $r0,[+#0x8]
   cf016:	3e 0d 3a 34 	addi.gp $r0,#-181708
   cf01a:	49 00 18 8a 	jal d212e <printf>
   cf01e:	50 14 00 b4 	addi $r1,$r8,#180
   cf022:	fa 40       	movpi45 $r2,#0x10
   cf024:	80 07       	mov55 $r0,$r7
   cf026:	49 ff c8 11 	jal c8048 <memcpy>
   cf02a:	50 14 00 01 	addi $r1,$r8,#1
   cf02e:	84 43       	movi55 $r2,#3
   cf030:	80 06       	mov55 $r0,$r6
   cf032:	49 ff c8 0b 	jal c8048 <memcpy>
   cf036:	80 09       	mov55 $r0,$r9
   cf038:	49 ff f6 82 	jal cdd3c <sm_hal_get_local_addr>
   cf03c:	80 20       	mov55 $r1,$r0
   cf03e:	84 46       	movi55 $r2,#6
   cf040:	80 1c       	mov55 $r0,$fp
   cf042:	49 ff c8 03 	jal c8048 <memcpy>
   cf046:	80 09       	mov55 $r0,$r9
   cf048:	49 ff f6 72 	jal cdd2c <sm_hal_get_local_addr_Type>
   cf04c:	10 03 80 19 	sbi $r0,[$r7+#0x19]
   cf050:	50 14 00 98 	addi $r1,$r8,#152
   cf054:	84 46       	movi55 $r2,#6
   cf056:	80 0a       	mov55 $r0,$r10
   cf058:	49 ff c7 f8 	jal c8048 <memcpy>
   cf05c:	00 04 00 9f 	lbi $r0,[$r8+#0x9f]
   cf060:	50 14 00 80 	addi $r1,$r8,#128
   cf064:	10 03 80 20 	sbi $r0,[$r7+#0x20]
   cf068:	3e 0c b0 90 	addi.gp $r0,#-216944
   cf06c:	f0 82       	swi37.sp $r0,[+#0x8]
   cf06e:	50 24 00 20 	addi $r2,$r8,#32
   cf072:	80 09       	mov55 $r0,$r9
   cf074:	50 34 00 10 	addi $r3,$r8,#16
   cf078:	80 87       	mov55 $r4,$r7
   cf07a:	80 a6       	mov55 $r5,$r6
   cf07c:	15 cf 80 00 	swi $fp,[$sp+#0x0]
   cf080:	14 af 80 01 	swi $r10,[$sp+#0x4]
   cf084:	49 ff ef 48 	jal ccf14 <f6>
   cf088:	80 07       	mov55 $r0,$r7
   cf08a:	49 00 17 78 	jal d1f7a <free>
   cf08e:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

000cf090 <SM_Master_f6_Ea_handler>:
   cf090:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf092:	80 20       	mov55 $r1,$r0
   cf094:	96 10       	zeb33 $r0,$r2
   cf096:	3e 2f c9 c0 	addi.gp $r2,#-13888
   cf09a:	38 21 02 02 	lw $r2,[$r2+($r0<<#0x2)]
   cf09e:	c2 04       	beqz38 $r2,cf0a6 <SM_Master_f6_Ea_handler+0x16>
   cf0a0:	c1 03       	beqz38 $r1,cf0a6 <SM_Master_f6_Ea_handler+0x16>
   cf0a2:	49 ff f6 6f 	jal cdd80 <SM_Protocol_PairingDHKeyCheck>
   cf0a6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf0a8 <SM_Master_TKValueOOB>:
   cf0a8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf0aa:	97 80       	zeb33 $r6,$r0
   cf0ac:	80 06       	mov55 $r0,$r6
   cf0ae:	84 22       	movi55 $r1,#2
   cf0b0:	49 ff f5 d6 	jal cdc5c <sm_hal_infom_passkey_input_req>
   cf0b4:	3e 0f c9 c0 	addi.gp $r0,#-13888
   cf0b8:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   cf0bc:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   cf0c0:	58 10 80 04 	ori $r1,$r1,#0x4
   cf0c4:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   cf0c8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf0ca <SM_Master_TKValuePasskeyInput>:
   cf0ca:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf0cc:	97 80       	zeb33 $r6,$r0
   cf0ce:	80 06       	mov55 $r0,$r6
   cf0d0:	84 21       	movi55 $r1,#1
   cf0d2:	49 ff f5 c5 	jal cdc5c <sm_hal_infom_passkey_input_req>
   cf0d6:	3e 0f c9 c0 	addi.gp $r0,#-13888
   cf0da:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   cf0de:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   cf0e2:	58 10 80 04 	ori $r1,$r1,#0x4
   cf0e6:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   cf0ea:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf0ec <SM_Master_Legacy_GenConfirm>:
   cf0ec:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cf0ee:	97 c0       	zeb33 $r7,$r0
   cf0f0:	fa 00       	movpi45 $r0,#0x10
   cf0f2:	81 21       	mov55 $r9,$r1
   cf0f4:	49 00 17 a8 	jal d2044 <malloc>
   cf0f8:	80 c0       	mov55 $r6,$r0
   cf0fa:	c8 06       	bnez38 $r0,cf106 <SM_Master_Legacy_GenConfirm+0x1a>
   cf0fc:	3e 0d 3a 50 	addi.gp $r0,#-181680
   cf100:	49 00 30 2d 	jal d515a <puts>
   cf104:	d5 2b       	j8 cf15a <SM_Master_Legacy_GenConfirm+0x6e>
   cf106:	84 20       	movi55 $r1,#0
   cf108:	fa 40       	movpi45 $r2,#0x10
   cf10a:	49 ff c7 bf 	jal c8088 <memset>
   cf10e:	80 07       	mov55 $r0,$r7
   cf110:	49 ff f6 0e 	jal cdd2c <sm_hal_get_local_addr_Type>
   cf114:	3e 8f c9 c0 	addi.gp $r8,#-13888
   cf118:	ae 30       	sbi333 $r0,[$r6+#0x0]
   cf11a:	80 07       	mov55 $r0,$r7
   cf11c:	49 ff dc 91 	jal caa3e <ble_gap_link_GetAttr_BdAddrType>
   cf120:	38 14 1e 02 	lw $r1,[$r8+($r7<<#0x2)]
   cf124:	ae 31       	sbi333 $r0,[$r6+#0x1]
   cf126:	84 47       	movi55 $r2,#7
   cf128:	9c 32       	addi333 $r0,$r6,#2
   cf12a:	49 ff c7 8f 	jal c8048 <memcpy>
   cf12e:	38 14 1e 02 	lw $r1,[$r8+($r7<<#0x2)]
   cf132:	84 47       	movi55 $r2,#7
   cf134:	8c 28       	addi45 $r1,#8
   cf136:	50 03 00 09 	addi $r0,$r6,#9
   cf13a:	49 ff c7 87 	jal c8048 <memcpy>
   cf13e:	38 34 1e 02 	lw $r3,[$r8+($r7<<#0x2)]
   cf142:	80 07       	mov55 $r0,$r7
   cf144:	50 11 80 a4 	addi $r1,$r3,#164
   cf148:	80 49       	mov55 $r2,$r9
   cf14a:	80 66       	mov55 $r3,$r6
   cf14c:	3e 4c b1 de 	addi.gp $r4,#-216610
   cf150:	49 ff f0 a4 	jal cd298 <c1_1>
   cf154:	80 06       	mov55 $r0,$r6
   cf156:	49 00 17 12 	jal d1f7a <free>
   cf15a:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cf15c <SM_Master_TKValuePasskeyDisplay>:
   cf15c:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   cf15e:	50 8f 80 04 	addi $r8,$sp,#4
   cf162:	97 80       	zeb33 $r6,$r0
   cf164:	84 24       	movi55 $r1,#4
   cf166:	80 08       	mov55 $r0,$r8
   cf168:	49 ff f5 d1 	jal cdd0a <sm_hal_get_random_number>
   cf16c:	f1 01       	lwi37.sp $r1,[+#0x4]
   cf16e:	46 00 00 f4 	sethi $r0,#0xf4
   cf172:	58 00 02 40 	ori $r0,$r0,#0x240
   cf176:	40 10 80 17 	divr $r1,$r0,$r1,$r0
   cf17a:	3e 7f c9 c0 	addi.gp $r7,#-13888
   cf17e:	38 23 9a 02 	lw $r2,[$r7+($r6<<#0x2)]
   cf182:	84 20       	movi55 $r1,#0
   cf184:	f0 81       	swi37.sp $r0,[+#0x4]
   cf186:	00 04 00 02 	lbi $r0,[$r8+#0x2]
   cf18a:	10 01 00 a6 	sbi $r0,[$r2+#0xa6]
   cf18e:	00 04 00 01 	lbi $r0,[$r8+#0x1]
   cf192:	10 01 00 a5 	sbi $r0,[$r2+#0xa5]
   cf196:	80 06       	mov55 $r0,$r6
   cf198:	00 84 00 00 	lbi $r8,[$r8+#0x0]
   cf19c:	10 81 00 a4 	sbi $r8,[$r2+#0xa4]
   cf1a0:	50 21 00 a4 	addi $r2,$r2,#164
   cf1a4:	49 ff f5 6d 	jal cdc7e <sm_hal_infom_passkey_display_req>
   cf1a8:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   cf1ac:	80 06       	mov55 $r0,$r6
   cf1ae:	50 10 80 20 	addi $r1,$r1,#32
   cf1b2:	49 ff ff 9d 	jal cf0ec <SM_Master_Legacy_GenConfirm>
   cf1b6:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   cf1ba:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   cf1be:	58 10 80 04 	ori $r1,$r1,#0x4
   cf1c2:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   cf1c6:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000cf1c8 <SM_Master_TKValueJustWork>:
   cf1c8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf1ca:	3e 1f c9 c0 	addi.gp $r1,#-13888
   cf1ce:	96 00       	zeb33 $r0,$r0
   cf1d0:	38 10 82 02 	lw $r1,[$r1+($r0<<#0x2)]
   cf1d4:	50 10 80 20 	addi $r1,$r1,#32
   cf1d8:	49 ff ff 8a 	jal cf0ec <SM_Master_Legacy_GenConfirm>
   cf1dc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf1de <SM_Master_c1_1_handler>:
   cf1de:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cf1e0:	81 00       	mov55 $r8,$r0
   cf1e2:	fa 00       	movpi45 $r0,#0x10
   cf1e4:	97 d0       	zeb33 $r7,$r2
   cf1e6:	49 00 17 2f 	jal d2044 <malloc>
   cf1ea:	80 c0       	mov55 $r6,$r0
   cf1ec:	c8 06       	bnez38 $r0,cf1f8 <SM_Master_c1_1_handler+0x1a>
   cf1ee:	3e 0d 3a 5c 	addi.gp $r0,#-181668
   cf1f2:	49 00 2f b4 	jal d515a <puts>
   cf1f6:	d5 27       	j8 cf244 <SM_Master_c1_1_handler+0x66>
   cf1f8:	80 07       	mov55 $r0,$r7
   cf1fa:	49 ff dc 18 	jal caa2a <ble_gap_link_GetAttr_BdAddr>
   cf1fe:	80 20       	mov55 $r1,$r0
   cf200:	84 46       	movi55 $r2,#6
   cf202:	80 06       	mov55 $r0,$r6
   cf204:	49 ff c7 22 	jal c8048 <memcpy>
   cf208:	80 07       	mov55 $r0,$r7
   cf20a:	49 ff f5 99 	jal cdd3c <sm_hal_get_local_addr>
   cf20e:	80 20       	mov55 $r1,$r0
   cf210:	84 46       	movi55 $r2,#6
   cf212:	9c 36       	addi333 $r0,$r6,#6
   cf214:	49 ff c7 1a 	jal c8048 <memcpy>
   cf218:	84 20       	movi55 $r1,#0
   cf21a:	84 44       	movi55 $r2,#4
   cf21c:	50 03 00 0c 	addi $r0,$r6,#12
   cf220:	49 ff c7 34 	jal c8088 <memset>
   cf224:	3e 0f c9 c0 	addi.gp $r0,#-13888
   cf228:	38 10 1e 02 	lw $r1,[$r0+($r7<<#0x2)]
   cf22c:	80 48       	mov55 $r2,$r8
   cf22e:	80 07       	mov55 $r0,$r7
   cf230:	50 10 80 a4 	addi $r1,$r1,#164
   cf234:	80 66       	mov55 $r3,$r6
   cf236:	3e 4c b2 a4 	addi.gp $r4,#-216412
   cf23a:	49 ff f0 04 	jal cd242 <c1_2>
   cf23e:	80 06       	mov55 $r0,$r6
   cf240:	49 00 16 9d 	jal d1f7a <free>
   cf244:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cf246 <SM_Master_PairingConfirmHandler>:
   cf246:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cf248:	97 c0       	zeb33 $r7,$r0
   cf24a:	80 c2       	mov55 $r6,$r2
   cf24c:	80 07       	mov55 $r0,$r7
   cf24e:	81 01       	mov55 $r8,$r1
   cf250:	44 10 75 30 	movi $r1,#30000
   cf254:	49 ff f5 3b 	jal cdcca <sm_hal_set_timer>
   cf258:	00 13 00 0f 	lbi $r1,[$r6+#0xf]
   cf25c:	a6 37       	lbi333 $r0,[$r6+#0x7]
   cf25e:	e6 24       	slti45 $r1,#4
   cf260:	e9 12       	bnezs8 cf284 <SM_Master_PairingConfirmHandler+0x3e>
   cf262:	5a 08 18 08 	bnec $r0,#24,cf272 <SM_Master_PairingConfirmHandler+0x2c>
   cf266:	80 07       	mov55 $r0,$r7
   cf268:	50 13 00 20 	addi $r1,$r6,#32
   cf26c:	49 ff f6 15 	jal cde96 <SM_Protocol_PairingRandom>
   cf270:	d5 03       	j8 cf276 <SM_Master_PairingConfirmHandler+0x30>
   cf272:	fa 08       	movpi45 $r0,#0x18
   cf274:	ae 37       	sbi333 $r0,[$r6+#0x7]
   cf276:	50 03 00 30 	addi $r0,$r6,#48
   cf27a:	80 28       	mov55 $r1,$r8
   cf27c:	fa 40       	movpi45 $r2,#0x10
   cf27e:	49 ff c6 e5 	jal c8048 <memcpy>
   cf282:	d5 10       	j8 cf2a2 <SM_Master_PairingConfirmHandler+0x5c>
   cf284:	5a 08 14 0f 	bnec $r0,#20,cf2a2 <SM_Master_PairingConfirmHandler+0x5c>
   cf288:	80 28       	mov55 $r1,$r8
   cf28a:	50 03 00 30 	addi $r0,$r6,#48
   cf28e:	fa 40       	movpi45 $r2,#0x10
   cf290:	49 ff c6 dc 	jal c8048 <memcpy>
   cf294:	fa 05       	movpi45 $r0,#0x15
   cf296:	ae 37       	sbi333 $r0,[$r6+#0x7]
   cf298:	50 13 00 20 	addi $r1,$r6,#32
   cf29c:	80 07       	mov55 $r0,$r7
   cf29e:	49 ff f5 fc 	jal cde96 <SM_Protocol_PairingRandom>
   cf2a2:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cf2a4 <SM_Master_c1_2_handler>:
   cf2a4:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cf2a6:	3e 7f c9 c0 	addi.gp $r7,#-13888
   cf2aa:	97 90       	zeb33 $r6,$r2
   cf2ac:	80 20       	mov55 $r1,$r0
   cf2ae:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   cf2b2:	a6 87       	lbi333 $r2,[$r0+#0x7]
   cf2b4:	5a 28 13 0f 	bnec $r2,#19,cf2d2 <SM_Master_c1_2_handler+0x2e>
   cf2b8:	80 06       	mov55 $r0,$r6
   cf2ba:	49 ff f6 06 	jal cdec6 <SM_Protocol_PairingConfirm>
   cf2be:	80 06       	mov55 $r0,$r6
   cf2c0:	44 10 75 30 	movi $r1,#30000
   cf2c4:	49 ff f5 03 	jal cdcca <sm_hal_set_timer>
   cf2c8:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   cf2cc:	fa 24       	movpi45 $r1,#0x14
   cf2ce:	ae 47       	sbi333 $r1,[$r0+#0x7]
   cf2d0:	d5 1b       	j8 cf306 <SM_Master_c1_2_handler+0x62>
   cf2d2:	5a 28 16 1a 	bnec $r2,#22,cf306 <SM_Master_c1_2_handler+0x62>
   cf2d6:	50 00 00 30 	addi $r0,$r0,#48
   cf2da:	fa 40       	movpi45 $r2,#0x10
   cf2dc:	49 00 08 33 	jal d0342 <SM_Common_ValueCompare>
   cf2e0:	c8 06       	bnez38 $r0,cf2ec <SM_Master_c1_2_handler+0x48>
   cf2e2:	80 06       	mov55 $r0,$r6
   cf2e4:	84 24       	movi55 $r1,#4
   cf2e6:	49 ff eb 4d 	jal cc980 <SM_PairingFailed>
   cf2ea:	d5 0e       	j8 cf306 <SM_Master_c1_2_handler+0x62>
   cf2ec:	38 33 9a 02 	lw $r3,[$r7+($r6<<#0x2)]
   cf2f0:	80 06       	mov55 $r0,$r6
   cf2f2:	50 11 80 a4 	addi $r1,$r3,#164
   cf2f6:	50 21 80 10 	addi $r2,$r3,#16
   cf2fa:	3e 4c ac 66 	addi.gp $r4,#-218010
   cf2fe:	50 31 80 20 	addi $r3,$r3,#32
   cf302:	49 ff ef 73 	jal cd1e8 <s1>
   cf306:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cf308 <SM_Master_SecurityRequestHandler>:
   cf308:	fc 35       	push25 $r8,#0xa8    ! {$r6~$r8, $fp, $gp, $lp}
   cf30a:	97 80       	zeb33 $r6,$r0
   cf30c:	3e 0f c9 c0 	addi.gp $r0,#-13888
   cf310:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   cf314:	81 01       	mov55 $r8,$r1
   cf316:	c8 40       	bnez38 $r0,cf396 <SM_Master_SecurityRequestHandler+0x8e>
   cf318:	80 06       	mov55 $r0,$r6
   cf31a:	b1 c1       	addri36.sp $r7,#0x4
   cf31c:	49 ff db 87 	jal caa2a <ble_gap_link_GetAttr_BdAddr>
   cf320:	80 27       	mov55 $r1,$r7
   cf322:	49 ff f1 58 	jal cd5d2 <sm_hal_flash_load_data>
   cf326:	c0 33       	beqz38 $r0,cf38c <SM_Master_SecurityRequestHandler+0x84>
   cf328:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   cf32c:	00 23 80 11 	lbi $r2,[$r7+#0x11]
   cf330:	3e 0d 3a 68 	addi.gp $r0,#-181656
   cf334:	49 00 16 fd 	jal d212e <printf>
   cf338:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   cf33c:	00 03 80 11 	lbi $r0,[$r7+#0x11]
   cf340:	96 8c       	xlsb33 $r2,$r1
   cf342:	96 c4       	xlsb33 $r3,$r0
   cf344:	e0 62       	slts45 $r3,$r2
   cf346:	e9 23       	bnezs8 cf38c <SM_Master_SecurityRequestHandler+0x84>
   cf348:	96 56       	bmski33 $r1,#0x2
   cf34a:	96 16       	bmski33 $r0,#0x2
   cf34c:	e0 01       	slts45 $r0,$r1
   cf34e:	e9 1f       	bnezs8 cf38c <SM_Master_SecurityRequestHandler+0x84>
   cf350:	02 03 80 3f 	lhi $r0,[$r7+#0x7e]
   cf354:	50 8f 80 8c 	addi $r8,$sp,#140
   cf358:	12 04 00 04 	shi $r0,[$r8+#0x8]
   cf35c:	00 23 80 10 	lbi $r2,[$r7+#0x10]
   cf360:	b0 4a       	addri36.sp $r1,#0x28
   cf362:	50 0f 80 96 	addi $r0,$sp,#150
   cf366:	49 ff c6 71 	jal c8048 <memcpy>
   cf36a:	84 48       	movi55 $r2,#8
   cf36c:	b0 61       	addri36.sp $r1,#0x84
   cf36e:	80 08       	mov55 $r0,$r8
   cf370:	49 ff c6 6c 	jal c8048 <memcpy>
   cf374:	80 06       	mov55 $r0,$r6
   cf376:	44 10 75 30 	movi $r1,#30000
   cf37a:	49 ff f4 a8 	jal cdcca <sm_hal_set_timer>
   cf37e:	80 06       	mov55 $r0,$r6
   cf380:	49 ff db 2a 	jal ca9d4 <ble_gap_link_GetAttr_Handle>
   cf384:	80 28       	mov55 $r1,$r8
   cf386:	49 ff d8 c0 	jal ca506 <ble_gap_start_encrypt>
   cf38a:	d5 06       	j8 cf396 <SM_Master_SecurityRequestHandler+0x8e>
   cf38c:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   cf390:	80 06       	mov55 $r0,$r6
   cf392:	49 ff f4 4e 	jal cdc2e <sm_hal_infom_recv_security_req>
   cf396:	fc b5       	pop25 $r8,#0xa8    ! {$r6~$r8, $fp, $gp, $lp}

000cf398 <SM_Master_SigningInformationHandler>:
   cf398:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf39a:	97 80       	zeb33 $r6,$r0
   cf39c:	a6 17       	lbi333 $r0,[$r2+#0x7]
   cf39e:	5a 08 33 13 	bnec $r0,#51,cf3c4 <SM_Master_SigningInformationHandler+0x2c>
   cf3a2:	84 00       	movi55 $r0,#0
   cf3a4:	14 01 00 25 	swi $r0,[$r2+#0x94]
   cf3a8:	50 01 00 d4 	addi $r0,$r2,#212
   cf3ac:	fa 40       	movpi45 $r2,#0x10
   cf3ae:	49 ff c6 4d 	jal c8048 <memcpy>
   cf3b2:	3e 0f c9 c0 	addi.gp $r0,#-13888
   cf3b6:	38 10 1a 02 	lw $r1,[$r0+($r6<<#0x2)]
   cf3ba:	80 06       	mov55 $r0,$r6
   cf3bc:	00 10 80 a2 	lbi $r1,[$r1+#0xa2]
   cf3c0:	49 ff ea ee 	jal cc99c <SM_StartKeyDistribution>
   cf3c4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf3c6 <SM_Master_IdentityAddressInformationHandler>:
   cf3c6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf3c8:	97 80       	zeb33 $r6,$r0
   cf3ca:	a6 17       	lbi333 $r0,[$r2+#0x7]
   cf3cc:	5a 08 32 15 	bnec $r0,#50,cf3f6 <SM_Master_IdentityAddressInformationHandler+0x30>
   cf3d0:	08 00 80 01 	lbi.bi $r0,[$r1],#0x1
   cf3d4:	10 01 00 9f 	sbi $r0,[$r2+#0x9f]
   cf3d8:	50 01 00 98 	addi $r0,$r2,#152
   cf3dc:	84 46       	movi55 $r2,#6
   cf3de:	49 ff c6 35 	jal c8048 <memcpy>
   cf3e2:	3e 0f c9 c0 	addi.gp $r0,#-13888
   cf3e6:	38 20 1a 02 	lw $r2,[$r0+($r6<<#0x2)]
   cf3ea:	80 26       	mov55 $r1,$r6
   cf3ec:	00 21 00 a3 	lbi $r2,[$r2+#0xa3]
   cf3f0:	84 04       	movi55 $r0,#4
   cf3f2:	49 ff eb 53 	jal cca98 <SM_WaitKeyDistribution>
   cf3f6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf3f8 <SM_Master_MasterIdentificationHandler>:
   cf3f8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf3fa:	97 80       	zeb33 $r6,$r0
   cf3fc:	a6 17       	lbi333 $r0,[$r2+#0x7]
   cf3fe:	5a 08 31 11 	bnec $r0,#49,cf420 <SM_Master_MasterIdentificationHandler+0x28>
   cf402:	50 01 01 0e 	addi $r0,$r2,#270
   cf406:	84 4a       	movi55 $r2,#10
   cf408:	49 ff c6 20 	jal c8048 <memcpy>
   cf40c:	3e 0f c9 c0 	addi.gp $r0,#-13888
   cf410:	38 20 1a 02 	lw $r2,[$r0+($r6<<#0x2)]
   cf414:	80 26       	mov55 $r1,$r6
   cf416:	00 21 00 a3 	lbi $r2,[$r2+#0xa3]
   cf41a:	84 02       	movi55 $r0,#2
   cf41c:	49 ff eb 3e 	jal cca98 <SM_WaitKeyDistribution>
   cf420:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf422 <SM_Master_PairingFailedHandler>:
   cf422:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf424:	a6 88       	lbi333 $r2,[$r1+#0x0]
   cf426:	44 3f ff 80 	movi $r3,#-128
   cf42a:	fe 9f       	or33 $r2,$r3
   cf42c:	96 90       	zeb33 $r2,$r2
   cf42e:	ae 88       	sbi333 $r2,[$r1+#0x0]
   cf430:	96 00       	zeb33 $r0,$r0
   cf432:	84 20       	movi55 $r1,#0
   cf434:	49 ff ea 68 	jal cc904 <SM_FinishPairing>
   cf438:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf43a <SM_Master_PairingRandomHandler>:
   cf43a:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cf43c:	80 e2       	mov55 $r7,$r2
   cf43e:	97 80       	zeb33 $r6,$r0
   cf440:	81 21       	mov55 $r9,$r1
   cf442:	80 06       	mov55 $r0,$r6
   cf444:	50 83 80 10 	addi $r8,$r7,#16
   cf448:	49 ff f4 3c 	jal cdcc0 <sm_hal_release_timer>
   cf44c:	fd 04       	movd44 $r0,$r8
   cf44e:	fa 40       	movpi45 $r2,#0x10
   cf450:	49 ff c5 fc 	jal c8048 <memcpy>
   cf454:	00 03 80 0f 	lbi $r0,[$r7+#0xf]
   cf458:	e6 04       	slti45 $r0,#4
   cf45a:	e8 09       	beqzs8 cf46c <SM_Master_PairingRandomHandler+0x32>
   cf45c:	a6 3f       	lbi333 $r0,[$r7+#0x7]
   cf45e:	5a 08 15 32 	bnec $r0,#21,cf4c2 <SM_Master_PairingRandomHandler+0x88>
   cf462:	80 06       	mov55 $r0,$r6
   cf464:	80 28       	mov55 $r1,$r8
   cf466:	49 ff fe 43 	jal cf0ec <SM_Master_Legacy_GenConfirm>
   cf46a:	d5 1c       	j8 cf4a2 <SM_Master_PairingRandomHandler+0x68>
   cf46c:	9e 05       	subi333 $r0,$r0,#5
   cf46e:	96 40       	zeb33 $r1,$r0
   cf470:	3e 0f c9 c0 	addi.gp $r0,#-13888
   cf474:	e6 22       	slti45 $r1,#2
   cf476:	e8 19       	beqzs8 cf4a8 <SM_Master_PairingRandomHandler+0x6e>
   cf478:	38 80 1a 02 	lw $r8,[$r0+($r6<<#0x2)]
   cf47c:	3c 9d f1 a0 	lwi.gp $r9,[+#-14720]
   cf480:	00 04 00 80 	lbi $r0,[$r8+#0x80]
   cf484:	50 14 00 b4 	addi $r1,$r8,#180
   cf488:	49 00 07 6e 	jal d0364 <SM_Common_GetRi>
   cf48c:	80 80       	mov55 $r4,$r0
   cf48e:	50 14 00 40 	addi $r1,$r8,#64
   cf492:	80 06       	mov55 $r0,$r6
   cf494:	80 49       	mov55 $r2,$r9
   cf496:	50 34 00 10 	addi $r3,$r8,#16
   cf49a:	3e 5c ae ee 	addi.gp $r5,#-217362
   cf49e:	49 ff ee 2f 	jal cd0fc <f4>
   cf4a2:	fa 06       	movpi45 $r0,#0x16
   cf4a4:	ae 3f       	sbi333 $r0,[$r7+#0x7]
   cf4a6:	d5 0e       	j8 cf4c2 <SM_Master_PairingRandomHandler+0x88>
   cf4a8:	38 10 1a 02 	lw $r1,[$r0+($r6<<#0x2)]
   cf4ac:	3c 2d f1 a0 	lwi.gp $r2,[+#-14720]
   cf4b0:	80 06       	mov55 $r0,$r6
   cf4b2:	50 10 80 40 	addi $r1,$r1,#64
   cf4b6:	80 68       	mov55 $r3,$r8
   cf4b8:	84 80       	movi55 $r4,#0
   cf4ba:	3e 5c b4 c4 	addi.gp $r5,#-215868
   cf4be:	49 ff ee 1f 	jal cd0fc <f4>
   cf4c2:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cf4c4 <SM_Master_f4_JW_handler>:
   cf4c4:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cf4c6:	3e 7f c9 c0 	addi.gp $r7,#-13888
   cf4ca:	97 90       	zeb33 $r6,$r2
   cf4cc:	80 20       	mov55 $r1,$r0
   cf4ce:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   cf4d2:	fa 40       	movpi45 $r2,#0x10
   cf4d4:	50 00 00 30 	addi $r0,$r0,#48
   cf4d8:	49 00 07 35 	jal d0342 <SM_Common_ValueCompare>
   cf4dc:	c8 06       	bnez38 $r0,cf4e8 <SM_Master_f4_JW_handler+0x24>
   cf4de:	80 06       	mov55 $r0,$r6
   cf4e0:	84 24       	movi55 $r1,#4
   cf4e2:	49 ff ea 4f 	jal cc980 <SM_PairingFailed>
   cf4e6:	d5 18       	j8 cf516 <SM_Master_f4_JW_handler+0x52>
   cf4e8:	38 43 9a 02 	lw $r4,[$r7+($r6<<#0x2)]
   cf4ec:	00 02 00 0f 	lbi $r0,[$r4+#0xf]
   cf4f0:	5a 08 08 0f 	bnec $r0,#8,cf50e <SM_Master_f4_JW_handler+0x4a>
   cf4f4:	3c 1d f1 a0 	lwi.gp $r1,[+#-14720]
   cf4f8:	50 22 00 40 	addi $r2,$r4,#64
   cf4fc:	50 32 00 20 	addi $r3,$r4,#32
   cf500:	80 06       	mov55 $r0,$r6
   cf502:	8c 90       	addi45 $r4,#16
   cf504:	3e 5c ad d8 	addi.gp $r5,#-217640
   cf508:	49 ff ec cd 	jal ccea2 <g2>
   cf50c:	d5 05       	j8 cf516 <SM_Master_f4_JW_handler+0x52>
   cf50e:	80 06       	mov55 $r0,$r6
   cf510:	80 24       	mov55 $r1,$r4
   cf512:	49 ff fc b8 	jal cee82 <SM_Master_f5>
   cf516:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cf518 <SM_Master_PairingResponseHandler>:
   cf518:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cf51a:	97 80       	zeb33 $r6,$r0
   cf51c:	3e 0f c9 c0 	addi.gp $r0,#-13888
   cf520:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   cf524:	81 01       	mov55 $r8,$r1
   cf526:	80 e2       	mov55 $r7,$r2
   cf528:	c0 10       	beqz38 $r0,cf548 <SM_Master_PairingResponseHandler+0x30>
   cf52a:	80 06       	mov55 $r0,$r6
   cf52c:	49 ff f3 ca 	jal cdcc0 <sm_hal_release_timer>
   cf530:	84 02       	movi55 $r0,#2
   cf532:	10 03 80 08 	sbi $r0,[$r7+#0x8]
   cf536:	80 28       	mov55 $r1,$r8
   cf538:	50 03 80 09 	addi $r0,$r7,#9
   cf53c:	84 46       	movi55 $r2,#6
   cf53e:	49 ff c5 85 	jal c8048 <memcpy>
   cf542:	80 06       	mov55 $r0,$r6
   cf544:	49 ff f3 b0 	jal cdca4 <sm_hal_infom_set_sec_param_req>
   cf548:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cf54a <SM_Master_Init>:
   cf54a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf54c:	84 00       	movi55 $r0,#0
   cf54e:	3e 1c ad a6 	addi.gp $r1,#-217690
   cf552:	49 ff f3 fe 	jal cdd4e <SM_Protocol_RegisterCallback>
   cf556:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf558 <SM_Master_EncryptionChange>:
   cf558:	fc 51       	push25 $r10,#0x88    ! {$r6~$r10, $fp, $gp, $lp}
   cf55a:	97 80       	zeb33 $r6,$r0
   cf55c:	81 21       	mov55 $r9,$r1
   cf55e:	80 06       	mov55 $r0,$r6
   cf560:	49 ff f3 b0 	jal cdcc0 <sm_hal_release_timer>
   cf564:	00 84 80 00 	lbi $r8,[$r9+#0x0]
   cf568:	4e 83 00 40 	bnez $r8,cf5e8 <SM_Master_EncryptionChange+0x90>
   cf56c:	00 74 80 03 	lbi $r7,[$r9+#0x3]
   cf570:	5a 78 01 3c 	bnec $r7,#1,cf5e8 <SM_Master_EncryptionChange+0x90>
   cf574:	fd 03       	movd44 $r0,$r6
   cf576:	3e af c9 c0 	addi.gp $r10,#-13888
   cf57a:	49 ff f3 cd 	jal cdd14 <sm_hal_set_link_encrypted>
   cf57e:	38 05 1a 02 	lw $r0,[$r10+($r6<<#0x2)]
   cf582:	c0 20       	beqz38 $r0,cf5c2 <SM_Master_EncryptionChange+0x6a>
   cf584:	00 20 00 a3 	lbi $r2,[$r0+#0xa3]
   cf588:	80 26       	mov55 $r1,$r6
   cf58a:	80 07       	mov55 $r0,$r7
   cf58c:	40 84 08 06 	slt $r8,$r8,$r2
   cf590:	49 ff ea 84 	jal cca98 <SM_WaitKeyDistribution>
   cf594:	38 05 1a 02 	lw $r0,[$r10+($r6<<#0x2)]
   cf598:	00 00 00 0f 	lbi $r0,[$r0+#0xf]
   cf59c:	e6 04       	slti45 $r0,#4
   cf59e:	e9 07       	bnezs8 cf5ac <SM_Master_EncryptionChange+0x54>
   cf5a0:	58 84 00 04 	ori $r8,$r8,#0x4
   cf5a4:	54 84 00 ff 	andi $r8,$r8,#0xff
   cf5a8:	84 e4       	movi55 $r7,#4
   cf5aa:	d5 07       	j8 cf5b8 <SM_Master_EncryptionChange+0x60>
   cf5ac:	c8 03       	bnez38 $r0,cf5b2 <SM_Master_EncryptionChange+0x5a>
   cf5ae:	84 e2       	movi55 $r7,#2
   cf5b0:	d5 04       	j8 cf5b8 <SM_Master_EncryptionChange+0x60>
   cf5b2:	58 84 00 04 	ori $r8,$r8,#0x4
   cf5b6:	84 e3       	movi55 $r7,#3
   cf5b8:	80 06       	mov55 $r0,$r6
   cf5ba:	80 28       	mov55 $r1,$r8
   cf5bc:	49 ff f3 b2 	jal cdd20 <sm_hal_set_link_authenticated>
   cf5c0:	d5 19       	j8 cf5f2 <SM_Master_EncryptionChange+0x9a>
   cf5c2:	80 06       	mov55 $r0,$r6
   cf5c4:	49 ff da 33 	jal caa2a <ble_gap_link_GetAttr_BdAddr>
   cf5c8:	80 3f       	mov55 $r1,$sp
   cf5ca:	49 ff f0 04 	jal cd5d2 <sm_hal_flash_load_data>
   cf5ce:	00 0f 80 11 	lbi $r0,[$sp+#0x11]
   cf5d2:	54 10 00 08 	andi $r1,$r0,#0x8
   cf5d6:	c1 03       	beqz38 $r1,cf5dc <SM_Master_EncryptionChange+0x84>
   cf5d8:	84 e4       	movi55 $r7,#4
   cf5da:	d5 0c       	j8 cf5f2 <SM_Master_EncryptionChange+0x9a>
   cf5dc:	96 16       	bmski33 $r0,#0x2
   cf5de:	c8 03       	bnez38 $r0,cf5e4 <SM_Master_EncryptionChange+0x8c>
   cf5e0:	84 e2       	movi55 $r7,#2
   cf5e2:	d5 08       	j8 cf5f2 <SM_Master_EncryptionChange+0x9a>
   cf5e4:	84 e3       	movi55 $r7,#3
   cf5e6:	d5 06       	j8 cf5f2 <SM_Master_EncryptionChange+0x9a>
   cf5e8:	80 06       	mov55 $r0,$r6
   cf5ea:	84 20       	movi55 $r1,#0
   cf5ec:	49 ff f3 94 	jal cdd14 <sm_hal_set_link_encrypted>
   cf5f0:	84 e1       	movi55 $r7,#1
   cf5f2:	00 24 80 00 	lbi $r2,[$r9+#0x0]
   cf5f6:	fd 03       	movd44 $r0,$r6
   cf5f8:	49 ff f3 0b 	jal cdc0e <sm_hal_infom_conn_sec_update>
   cf5fc:	fc d1       	pop25 $r10,#0x88    ! {$r6~$r10, $fp, $gp, $lp}

000cf5fe <DRV_TRNG_Get>:
   cf5fe:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   cf600:	46 20 02 00 	sethi $r2,#0x200
   cf604:	58 21 00 00 	ori $r2,$r2,#0x0
   cf608:	50 21 00 6c 	addi $r2,$r2,#108
   cf60c:	96 48       	zeb33 $r1,$r1
   cf60e:	44 63 d0 90 	movi $r6,#250000
   cf612:	50 81 7f 94 	addi $r8,$r2,#-108
   cf616:	d5 26       	j8 cf662 <DRV_TRNG_Get+0x64>
   cf618:	f3 01       	lwi37.sp $r3,[+#0x4]
   cf61a:	9e d9       	subi333 $r3,$r3,#1
   cf61c:	f3 81       	swi37.sp $r3,[+#0x4]
   cf61e:	f3 01       	lwi37.sp $r3,[+#0x4]
   cf620:	cb 0a       	bnez38 $r3,cf634 <DRV_TRNG_Get+0x36>
   cf622:	a0 d7       	lwi333 $r3,[$r2+#0x1c]
   cf624:	58 31 80 01 	ori $r3,$r3,#0x1
   cf628:	a8 d7       	swi333 $r3,[$r2+#0x1c]
   cf62a:	a0 d6       	lwi333 $r3,[$r2+#0x18]
   cf62c:	58 31 80 01 	ori $r3,$r3,#0x1
   cf630:	a8 d6       	swi333 $r3,[$r2+#0x18]
   cf632:	f6 81       	swi37.sp $r6,[+#0x4]
   cf634:	a0 d6       	lwi333 $r3,[$r2+#0x18]
   cf636:	96 dc       	xlsb33 $r3,$r3
   cf638:	cb f0       	bnez38 $r3,cf618 <DRV_TRNG_Get+0x1a>
   cf63a:	97 08       	zeb33 $r4,$r1
   cf63c:	04 54 00 20 	lwi $r5,[$r8+#0x80]
   cf640:	80 61       	mov55 $r3,$r1
   cf642:	e6 85       	slti45 $r4,#5
   cf644:	e9 02       	bnezs8 cf648 <DRV_TRNG_Get+0x4a>
   cf646:	84 64       	movi55 $r3,#4
   cf648:	96 d8       	zeb33 $r3,$r3
   cf64a:	80 83       	mov55 $r4,$r3
   cf64c:	80 e0       	mov55 $r7,$r0
   cf64e:	d5 06       	j8 cf65a <DRV_TRNG_Get+0x5c>
   cf650:	9f 21       	subi333 $r4,$r4,#1
   cf652:	18 53 80 01 	sbi.bi $r5,[$r7],#0x1
   cf656:	97 20       	zeb33 $r4,$r4
   cf658:	92 a8       	srli45 $r5,#8
   cf65a:	cc fb       	bnez38 $r4,cf650 <DRV_TRNG_Get+0x52>
   cf65c:	9a 4b       	sub333 $r1,$r1,$r3
   cf65e:	98 03       	add333 $r0,$r0,$r3
   cf660:	96 48       	zeb33 $r1,$r1
   cf662:	c9 e4       	bnez38 $r1,cf62a <DRV_TRNG_Get+0x2c>
   cf664:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000cf666 <PMU_IntrHandler>:
   cf666:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf668:	46 00 02 05 	sethi $r0,#0x205
   cf66c:	58 00 00 00 	ori $r0,$r0,#0x0
   cf670:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   cf672:	96 4e       	bmski33 $r1,#0x1
   cf674:	c1 08       	beqz38 $r1,cf684 <PMU_IntrHandler+0x1e>
   cf676:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   cf678:	58 10 80 02 	ori $r1,$r1,#0x2
   cf67c:	a8 47       	swi333 $r1,[$r0+#0x1c]
   cf67e:	3c 0d f3 aa 	lwi.gp $r0,[+#-12632]
   cf682:	dd 20       	jral5 $r0
   cf684:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf686 <Drv_MMITimerDisable>:
   cf686:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf688:	44 00 00 3e 	movi $r0,#62
   cf68c:	84 21       	movi55 $r1,#1
   cf68e:	49 fd 89 c1 	jal 80a10 <SYS_3WireBitErase>
   cf692:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf694 <Drv_MMITimerEnable>:
   cf694:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf696:	80 c0       	mov55 $r6,$r0
   cf698:	3c 1f f3 aa 	swi.gp $r1,[+#-12632]
   cf69c:	fa 09       	movpi45 $r0,#0x19
   cf69e:	3e 1c b6 66 	addi.gp $r1,#-215450
   cf6a2:	49 fd 86 71 	jal 80384 <SysIntrHandlerRegister>
   cf6a6:	46 20 02 05 	sethi $r2,#0x205
   cf6aa:	58 21 00 00 	ori $r2,$r2,#0x0
   cf6ae:	a0 17       	lwi333 $r0,[$r2+#0x1c]
   cf6b0:	44 10 06 40 	movi $r1,#1600
   cf6b4:	58 00 00 02 	ori $r0,$r0,#0x2
   cf6b8:	a8 17       	swi333 $r0,[$r2+#0x1c]
   cf6ba:	a0 15       	lwi333 $r0,[$r2+#0x14]
   cf6bc:	58 00 00 02 	ori $r0,$r0,#0x2
   cf6c0:	a8 15       	swi333 $r0,[$r2+#0x14]
   cf6c2:	44 00 00 3e 	movi $r0,#62
   cf6c6:	49 fd 89 4b 	jal 8095c <SYS_3WireWrite>
   cf6ca:	9e 71       	subi333 $r1,$r6,#1
   cf6cc:	44 00 00 3d 	movi $r0,#61
   cf6d0:	96 49       	zeh33 $r1,$r1
   cf6d2:	49 fd 89 45 	jal 8095c <SYS_3WireWrite>
   cf6d6:	44 00 00 3e 	movi $r0,#62
   cf6da:	84 21       	movi55 $r1,#1
   cf6dc:	49 fd 89 8d 	jal 809f6 <SYS_3WireBitWrite>
   cf6e0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf6e2 <Ab_MMITimerUnset>:
   cf6e2:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cf6e4:	81 00       	mov55 $r8,$r0
   cf6e6:	64 32 00 02 	mfsr $r3,$PSW
   cf6ea:	64 02 00 43 	setgie.d
   cf6ee:	64 00 00 08 	dsb
   cf6f2:	46 20 01 00 	sethi $r2,#0x100
   cf6f6:	58 21 00 b0 	ori $r2,$r2,#0xb0
   cf6fa:	b4 22       	lwi450 $r1,[$r2]
   cf6fc:	9c 09       	addi333 $r0,$r1,#1
   cf6fe:	b6 02       	swi450 $r0,[$r2]
   cf700:	c9 06       	bnez38 $r1,cf70c <Ab_MMITimerUnset+0x2a>
   cf702:	46 00 01 00 	sethi $r0,#0x100
   cf706:	58 00 00 bc 	ori $r0,$r0,#0xbc
   cf70a:	b6 60       	swi450 $r3,[$r0]
   cf70c:	3e 7f ce ac 	addi.gp $r7,#-12628
   cf710:	b4 07       	lwi450 $r0,[$r7]
   cf712:	49 00 16 0f 	jal d2330 <AB_queue_count>
   cf716:	80 c0       	mov55 $r6,$r0
   cf718:	d5 1c       	j8 cf750 <Ab_MMITimerUnset+0x6e>
   cf71a:	b4 07       	lwi450 $r0,[$r7]
   cf71c:	49 00 15 fd 	jal d2316 <AB_queue_pop>
   cf720:	80 20       	mov55 $r1,$r0
   cf722:	c0 16       	beqz38 $r0,cf74e <Ab_MMITimerUnset+0x6c>
   cf724:	a7 05       	lbi333 $r4,[$r0+#0x5]
   cf726:	a7 44       	lbi333 $r5,[$r0+#0x4]
   cf728:	a6 c6       	lbi333 $r3,[$r0+#0x6]
   cf72a:	40 42 20 08 	slli $r4,$r4,#8
   cf72e:	a6 87       	lbi333 $r2,[$r0+#0x7]
   cf730:	ff 2f       	or33 $r4,$r5
   cf732:	40 31 c0 08 	slli $r3,$r3,#16
   cf736:	fe e7       	or33 $r3,$r4
   cf738:	40 21 60 08 	slli $r2,$r2,#24
   cf73c:	fe 9f       	or33 $r2,$r3
   cf73e:	4c 24 40 05 	bne $r2,$r8,cf748 <Ab_MMITimerUnset+0x66>
   cf742:	49 00 16 03 	jal d2348 <AB_queue_entry_free>
   cf746:	d5 04       	j8 cf74e <Ab_MMITimerUnset+0x6c>
   cf748:	b4 07       	lwi450 $r0,[$r7]
   cf74a:	49 00 15 b2 	jal d22ae <AB_queue_push>
   cf74e:	9f b1       	subi333 $r6,$r6,#1
   cf750:	ce e5       	bnez38 $r6,cf71a <Ab_MMITimerUnset+0x38>
   cf752:	46 00 01 00 	sethi $r0,#0x100
   cf756:	58 00 00 b0 	ori $r0,$r0,#0xb0
   cf75a:	b4 20       	lwi450 $r1,[$r0]
   cf75c:	9e 49       	subi333 $r1,$r1,#1
   cf75e:	b6 20       	swi450 $r1,[$r0]
   cf760:	b4 00       	lwi450 $r0,[$r0]
   cf762:	c8 0c       	bnez38 $r0,cf77a <Ab_MMITimerUnset+0x98>
   cf764:	46 00 01 00 	sethi $r0,#0x100
   cf768:	58 00 00 bc 	ori $r0,$r0,#0xbc
   cf76c:	b4 00       	lwi450 $r0,[$r0]
   cf76e:	96 04       	xlsb33 $r0,$r0
   cf770:	c0 05       	beqz38 $r0,cf77a <Ab_MMITimerUnset+0x98>
   cf772:	64 12 00 43 	setgie.e
   cf776:	64 00 00 08 	dsb
   cf77a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cf77c <Ab_MMITimerSet>:
   cf77c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cf77e:	80 c0       	mov55 $r6,$r0
   cf780:	3c 0d f3 ab 	lwi.gp $r0,[+#-12628]
   cf784:	83 82       	mov55 $fp,$r2
   cf786:	81 03       	mov55 $r8,$r3
   cf788:	80 e4       	mov55 $r7,$r4
   cf78a:	54 a0 80 ff 	andi $r10,$r1,#0xff
   cf78e:	c8 05       	bnez38 $r0,cf798 <Ab_MMITimerSet+0x1c>
   cf790:	49 00 16 02 	jal d2394 <AB_queue_alloc>
   cf794:	3c 0f f3 ab 	swi.gp $r0,[+#-12628]
   cf798:	fa 03       	movpi45 $r0,#0x13
   cf79a:	49 00 15 f1 	jal d237c <AB_queue_entry_alloc>
   cf79e:	80 20       	mov55 $r1,$r0
   cf7a0:	50 2e 00 01 	addi $r2,$fp,#1
   cf7a4:	44 00 00 64 	movi $r0,#100
   cf7a8:	40 21 00 17 	divr $r2,$r0,$r2,$r0
   cf7ac:	3c 0d f3 ac 	lwi.gp $r0,[+#-12624]
   cf7b0:	10 80 80 08 	sbi $r8,[$r1+#0x8]
   cf7b4:	10 70 80 0c 	sbi $r7,[$r1+#0xc]
   cf7b8:	af 8c       	sbi333 $r6,[$r1+#0x4]
   cf7ba:	10 a0 80 12 	sbi $r10,[$r1+#0x12]
   cf7be:	98 10       	add333 $r0,$r2,$r0
   cf7c0:	40 30 20 09 	srli $r3,$r0,#8
   cf7c4:	ae 08       	sbi333 $r0,[$r1+#0x0]
   cf7c6:	ae c9       	sbi333 $r3,[$r1+#0x1]
   cf7c8:	40 30 40 09 	srli $r3,$r0,#16
   cf7cc:	92 18       	srli45 $r0,#24
   cf7ce:	ae 0b       	sbi333 $r0,[$r1+#0x3]
   cf7d0:	40 04 20 09 	srli $r0,$r8,#8
   cf7d4:	10 00 80 09 	sbi $r0,[$r1+#0x9]
   cf7d8:	40 04 40 09 	srli $r0,$r8,#16
   cf7dc:	10 00 80 0a 	sbi $r0,[$r1+#0xa]
   cf7e0:	40 03 a0 09 	srli $r0,$r7,#8
   cf7e4:	10 00 80 0d 	sbi $r0,[$r1+#0xd]
   cf7e8:	40 03 c0 09 	srli $r0,$r7,#16
   cf7ec:	10 00 80 0e 	sbi $r0,[$r1+#0xe]
   cf7f0:	96 91       	zeh33 $r2,$r2
   cf7f2:	40 03 20 09 	srli $r0,$r6,#8
   cf7f6:	ae 0d       	sbi333 $r0,[$r1+#0x5]
   cf7f8:	10 20 80 10 	sbi $r2,[$r1+#0x10]
   cf7fc:	40 03 40 09 	srli $r0,$r6,#16
   cf800:	92 48       	srli45 $r2,#8
   cf802:	92 d8       	srli45 $r6,#24
   cf804:	93 18       	srli45 $r8,#24
   cf806:	92 f8       	srli45 $r7,#24
   cf808:	af 8f       	sbi333 $r6,[$r1+#0x7]
   cf80a:	ae ca       	sbi333 $r3,[$r1+#0x2]
   cf80c:	10 80 80 0b 	sbi $r8,[$r1+#0xb]
   cf810:	10 70 80 0f 	sbi $r7,[$r1+#0xf]
   cf814:	ae 0e       	sbi333 $r0,[$r1+#0x6]
   cf816:	10 20 80 11 	sbi $r2,[$r1+#0x11]
   cf81a:	3c 0d f3 ab 	lwi.gp $r0,[+#-12628]
   cf81e:	49 00 15 48 	jal d22ae <AB_queue_push>
   cf822:	3c 0d f3 ab 	lwi.gp $r0,[+#-12628]
   cf826:	49 00 15 85 	jal d2330 <AB_queue_count>
   cf82a:	5a 08 01 06 	bnec $r0,#1,cf836 <Ab_MMITimerSet+0xba>
   cf82e:	3e 1c b8 38 	addi.gp $r1,#-214984
   cf832:	49 ff ff 31 	jal cf694 <Drv_MMITimerEnable>
   cf836:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cf838 <mmi_timer_isr>:
   cf838:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cf83a:	3c 1d f3 ac 	lwi.gp $r1,[+#-12624]
   cf83e:	9c 49       	addi333 $r1,$r1,#1
   cf840:	3c 1f f3 ac 	swi.gp $r1,[+#-12624]
   cf844:	3c 0d f3 ab 	lwi.gp $r0,[+#-12628]
   cf848:	49 00 15 74 	jal d2330 <AB_queue_count>
   cf84c:	80 e0       	mov55 $r7,$r0
   cf84e:	c8 04       	bnez38 $r0,cf856 <mmi_timer_isr+0x1e>
   cf850:	49 ff ff 1b 	jal cf686 <Drv_MMITimerDisable>
   cf854:	d5 5b       	j8 cf90a <mmi_timer_isr+0xd2>
   cf856:	3c 0d f3 ab 	lwi.gp $r0,[+#-12628]
   cf85a:	49 00 15 5e 	jal d2316 <AB_queue_pop>
   cf85e:	a6 81       	lbi333 $r2,[$r0+#0x1]
   cf860:	a6 c0       	lbi333 $r3,[$r0+#0x0]
   cf862:	a6 42       	lbi333 $r1,[$r0+#0x2]
   cf864:	80 c0       	mov55 $r6,$r0
   cf866:	40 21 20 08 	slli $r2,$r2,#8
   cf86a:	a6 03       	lbi333 $r0,[$r0+#0x3]
   cf86c:	fe 9f       	or33 $r2,$r3
   cf86e:	40 10 c0 08 	slli $r1,$r1,#16
   cf872:	fe 57       	or33 $r1,$r2
   cf874:	40 00 60 08 	slli $r0,$r0,#24
   cf878:	fe 0f       	or33 $r0,$r1
   cf87a:	3c 1d f3 ac 	lwi.gp $r1,[+#-12624]
   cf87e:	e2 20       	slt45 $r1,$r0
   cf880:	e9 3f       	bnezs8 cf8fe <mmi_timer_isr+0xc6>
   cf882:	00 13 00 09 	lbi $r1,[$r6+#0x9]
   cf886:	00 33 00 08 	lbi $r3,[$r6+#0x8]
   cf88a:	00 03 00 0a 	lbi $r0,[$r6+#0xa]
   cf88e:	00 23 00 0b 	lbi $r2,[$r6+#0xb]
   cf892:	40 10 a0 08 	slli $r1,$r1,#8
   cf896:	fe 5f       	or33 $r1,$r3
   cf898:	40 00 40 08 	slli $r0,$r0,#16
   cf89c:	fe 0f       	or33 $r0,$r1
   cf89e:	40 21 60 08 	slli $r2,$r2,#24
   cf8a2:	fe 87       	or33 $r2,$r0
   cf8a4:	00 03 00 0d 	lbi $r0,[$r6+#0xd]
   cf8a8:	00 33 00 0c 	lbi $r3,[$r6+#0xc]
   cf8ac:	00 13 00 0e 	lbi $r1,[$r6+#0xe]
   cf8b0:	40 00 20 08 	slli $r0,$r0,#8
   cf8b4:	fe 1f       	or33 $r0,$r3
   cf8b6:	40 10 c0 08 	slli $r1,$r1,#16
   cf8ba:	fe 47       	or33 $r1,$r0
   cf8bc:	00 03 00 0f 	lbi $r0,[$r6+#0xf]
   cf8c0:	40 00 60 08 	slli $r0,$r0,#24
   cf8c4:	fe 0f       	or33 $r0,$r1
   cf8c6:	dd 22       	jral5 $r2
   cf8c8:	00 03 00 12 	lbi $r0,[$r6+#0x12]
   cf8cc:	c0 15       	beqz38 $r0,cf8f6 <mmi_timer_isr+0xbe>
   cf8ce:	00 03 00 11 	lbi $r0,[$r6+#0x11]
   cf8d2:	00 13 00 10 	lbi $r1,[$r6+#0x10]
   cf8d6:	40 00 20 08 	slli $r0,$r0,#8
   cf8da:	fe 0f       	or33 $r0,$r1
   cf8dc:	3c 1d f3 ac 	lwi.gp $r1,[+#-12624]
   cf8e0:	98 01       	add333 $r0,$r0,$r1
   cf8e2:	40 10 20 09 	srli $r1,$r0,#8
   cf8e6:	ae 30       	sbi333 $r0,[$r6+#0x0]
   cf8e8:	ae 71       	sbi333 $r1,[$r6+#0x1]
   cf8ea:	40 10 40 09 	srli $r1,$r0,#16
   cf8ee:	92 18       	srli45 $r0,#24
   cf8f0:	ae 72       	sbi333 $r1,[$r6+#0x2]
   cf8f2:	ae 33       	sbi333 $r0,[$r6+#0x3]
   cf8f4:	d5 05       	j8 cf8fe <mmi_timer_isr+0xc6>
   cf8f6:	80 06       	mov55 $r0,$r6
   cf8f8:	49 00 15 28 	jal d2348 <AB_queue_entry_free>
   cf8fc:	d5 06       	j8 cf908 <mmi_timer_isr+0xd0>
   cf8fe:	3c 0d f3 ab 	lwi.gp $r0,[+#-12628]
   cf902:	80 26       	mov55 $r1,$r6
   cf904:	49 00 14 d5 	jal d22ae <AB_queue_push>
   cf908:	9f f9       	subi333 $r7,$r7,#1
   cf90a:	cf a6       	bnez38 $r7,cf856 <mmi_timer_isr+0x1e>
   cf90c:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cf90e <BTDataRdyInterruptHandler>:
   cf90e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf910:	46 00 02 05 	sethi $r0,#0x205
   cf914:	58 00 00 00 	ori $r0,$r0,#0x0
   cf918:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   cf91a:	58 10 80 04 	ori $r1,$r1,#0x4
   cf91e:	a8 47       	swi333 $r1,[$r0+#0x1c]
   cf920:	2e 17 ce b8 	lbi.gp $r1,[+#-12616]
   cf924:	c1 07       	beqz38 $r1,cf932 <BTDataRdyInterruptHandler+0x24>
   cf926:	04 10 00 09 	lwi $r1,[$r0+#0x24]
   cf92a:	92 21       	srli45 $r1,#1
   cf92c:	94 49       	slli333 $r1,$r1,#1
   cf92e:	14 10 00 09 	swi $r1,[$r0+#0x24]
   cf932:	46 f0 02 05 	sethi $r15,#0x205
   cf936:	04 17 80 0a 	lwi $r1,[$r15+#0x28]
   cf93a:	58 10 80 01 	ori $r1,$r1,#0x1
   cf93e:	46 f0 02 05 	sethi $r15,#0x205
   cf942:	14 17 80 0a 	swi $r1,[$r15+#0x28]
   cf946:	3c 0d f3 ad 	lwi.gp $r0,[+#-12620]
   cf94a:	c0 02       	beqz38 $r0,cf94e <BTDataRdyInterruptHandler+0x40>
   cf94c:	dd 20       	jral5 $r0
   cf94e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf950 <Drv_1602DataReady>:
   cf950:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf952:	46 f0 02 05 	sethi $r15,#0x205
   cf956:	04 07 80 10 	lwi $r0,[$r15+#0x40]
   cf95a:	96 04       	xlsb33 $r0,$r0
   cf95c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf95e <Drv_1602DataReadyIntEn>:
   cf95e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf960:	96 00       	zeb33 $r0,$r0
   cf962:	46 10 02 05 	sethi $r1,#0x205
   cf966:	58 10 80 00 	ori $r1,$r1,#0x0
   cf96a:	8c 28       	addi45 $r1,#8
   cf96c:	c0 05       	beqz38 $r0,cf976 <Drv_1602DataReadyIntEn+0x18>
   cf96e:	a0 0f       	lwi333 $r0,[$r1+#0x1c]
   cf970:	58 00 00 01 	ori $r0,$r0,#0x1
   cf974:	d5 04       	j8 cf97c <Drv_1602DataReadyIntEn+0x1e>
   cf976:	a0 0f       	lwi333 $r0,[$r1+#0x1c]
   cf978:	92 01       	srli45 $r0,#1
   cf97a:	94 01       	slli333 $r0,$r0,#1
   cf97c:	a8 0f       	swi333 $r0,[$r1+#0x1c]
   cf97e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cf980 <Drv_1602DataReadyIntReg>:
   cf980:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cf982:	3c 1f f3 ad 	swi.gp $r1,[+#-12620]
   cf986:	3e 07 ce b8 	sbi.gp $r0,[+#-12616]
   cf98a:	fa 20       	movpi45 $r1,#0x10
   cf98c:	44 00 00 30 	movi $r0,#48
   cf990:	49 fd 88 33 	jal 809f6 <SYS_3WireBitWrite>
   cf994:	46 00 02 05 	sethi $r0,#0x205
   cf998:	58 00 00 00 	ori $r0,$r0,#0x0
   cf99c:	50 00 00 24 	addi $r0,$r0,#36
   cf9a0:	a0 41       	lwi333 $r1,[$r0+#0x4]
   cf9a2:	58 10 80 01 	ori $r1,$r1,#0x1
   cf9a6:	a8 41       	swi333 $r1,[$r0+#0x4]
   cf9a8:	2e 17 ce b8 	lbi.gp $r1,[+#-12616]
   cf9ac:	c9 10       	bnez38 $r1,cf9cc <Drv_1602DataReadyIntReg+0x4c>
   cf9ae:	b4 20       	lwi450 $r1,[$r0]
   cf9b0:	84 5d       	movi55 $r2,#-3
   cf9b2:	fe 56       	and33 $r1,$r2
   cf9b4:	b6 20       	swi450 $r1,[$r0]
   cf9b6:	b4 20       	lwi450 $r1,[$r0]
   cf9b8:	58 10 80 01 	ori $r1,$r1,#0x1
   cf9bc:	b6 20       	swi450 $r1,[$r0]
   cf9be:	a0 07       	lwi333 $r0,[$r0+#0x1c]
   cf9c0:	c0 0a       	beqz38 $r0,cf9d4 <Drv_1602DataReadyIntReg+0x54>
   cf9c2:	3c 0d f3 ad 	lwi.gp $r0,[+#-12620]
   cf9c6:	c0 07       	beqz38 $r0,cf9d4 <Drv_1602DataReadyIntReg+0x54>
   cf9c8:	dd 20       	jral5 $r0
   cf9ca:	d5 05       	j8 cf9d4 <Drv_1602DataReadyIntReg+0x54>
   cf9cc:	b4 20       	lwi450 $r1,[$r0]
   cf9ce:	58 10 80 02 	ori $r1,$r1,#0x2
   cf9d2:	b6 20       	swi450 $r1,[$r0]
   cf9d4:	fa 02       	movpi45 $r0,#0x12
   cf9d6:	3e 1c b9 0e 	addi.gp $r1,#-214770
   cf9da:	49 fd 84 d5 	jal 80384 <SysIntrHandlerRegister>
   cf9de:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cf9e0 <Drv_1602Reset>:
   cf9e0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cf9e2:	96 00       	zeb33 $r0,$r0
   cf9e4:	c0 08       	beqz38 $r0,cf9f4 <Drv_1602Reset+0x14>
   cf9e6:	44 00 00 3c 	movi $r0,#60
   cf9ea:	44 10 02 00 	movi $r1,#512
   cf9ee:	49 fd 88 11 	jal 80a10 <SYS_3WireBitErase>
   cf9f2:	d5 07       	j8 cfa00 <Drv_1602Reset+0x20>
   cf9f4:	44 00 00 3c 	movi $r0,#60
   cf9f8:	44 10 02 00 	movi $r1,#512
   cf9fc:	49 fd 87 fd 	jal 809f6 <SYS_3WireBitWrite>
   cfa00:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cfa02 <Encrypt>:
   cfa02:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cfa04:	ef 00       	addi10.sp #-256
   cfa06:	46 76 17 07 	sethi $r7,#0x61707
   cfa0a:	b1 b0       	addri36.sp $r6,#0xc0
   cfa0c:	58 73 88 65 	ori $r7,$r7,#0x865
   cfa10:	f7 b0       	swi37.sp $r7,[+#0xc0]
   cfa12:	46 73 32 06 	sethi $r7,#0x33206
   cfa16:	58 73 84 6e 	ori $r7,$r7,#0x46e
   cfa1a:	f7 b1       	swi37.sp $r7,[+#0xc4]
   cfa1c:	46 77 96 22 	sethi $r7,#0x79622
   cfa20:	58 73 8d 32 	ori $r7,$r7,#0xd32
   cfa24:	f7 b2       	swi37.sp $r7,[+#0xc8]
   cfa26:	46 76 b2 06 	sethi $r7,#0x6b206
   cfa2a:	58 73 85 74 	ori $r7,$r7,#0x574
   cfa2e:	f0 8b       	swi37.sp $r0,[+#0x2c]
   cfa30:	f1 8c       	swi37.sp $r1,[+#0x30]
   cfa32:	f2 86       	swi37.sp $r2,[+#0x18]
   cfa34:	f7 b3       	swi37.sp $r7,[+#0xcc]
   cfa36:	b0 10       	addri36.sp $r0,#0x40
   cfa38:	00 81 80 01 	lbi $r8,[$r3+#0x1]
   cfa3c:	a7 da       	lbi333 $r7,[$r3+#0x2]
   cfa3e:	40 84 20 08 	slli $r8,$r8,#8
   cfa42:	40 73 c0 08 	slli $r7,$r7,#16
   cfa46:	40 74 1c 04 	or $r7,$r8,$r7
   cfa4a:	00 81 80 00 	lbi $r8,[$r3+#0x0]
   cfa4e:	b0 60       	addri36.sp $r1,#0x80
   cfa50:	40 73 a0 04 	or $r7,$r7,$r8
   cfa54:	00 81 80 03 	lbi $r8,[$r3+#0x3]
   cfa58:	40 84 60 08 	slli $r8,$r8,#24
   cfa5c:	40 73 a0 04 	or $r7,$r7,$r8
   cfa60:	f7 b4       	swi37.sp $r7,[+#0xd0]
   cfa62:	00 81 80 05 	lbi $r8,[$r3+#0x5]
   cfa66:	a7 de       	lbi333 $r7,[$r3+#0x6]
   cfa68:	40 84 20 08 	slli $r8,$r8,#8
   cfa6c:	40 73 c0 08 	slli $r7,$r7,#16
   cfa70:	40 74 1c 04 	or $r7,$r8,$r7
   cfa74:	00 81 80 04 	lbi $r8,[$r3+#0x4]
   cfa78:	40 73 a0 04 	or $r7,$r7,$r8
   cfa7c:	00 81 80 07 	lbi $r8,[$r3+#0x7]
   cfa80:	40 84 60 08 	slli $r8,$r8,#24
   cfa84:	40 73 a0 04 	or $r7,$r7,$r8
   cfa88:	f7 b5       	swi37.sp $r7,[+#0xd4]
   cfa8a:	00 81 80 09 	lbi $r8,[$r3+#0x9]
   cfa8e:	00 71 80 0a 	lbi $r7,[$r3+#0xa]
   cfa92:	40 84 20 08 	slli $r8,$r8,#8
   cfa96:	40 73 c0 08 	slli $r7,$r7,#16
   cfa9a:	40 74 1c 04 	or $r7,$r8,$r7
   cfa9e:	00 81 80 08 	lbi $r8,[$r3+#0x8]
   cfaa2:	40 73 a0 04 	or $r7,$r7,$r8
   cfaa6:	00 81 80 0b 	lbi $r8,[$r3+#0xb]
   cfaaa:	40 84 60 08 	slli $r8,$r8,#24
   cfaae:	40 73 a0 04 	or $r7,$r7,$r8
   cfab2:	f7 b6       	swi37.sp $r7,[+#0xd8]
   cfab4:	00 81 80 0d 	lbi $r8,[$r3+#0xd]
   cfab8:	00 71 80 0e 	lbi $r7,[$r3+#0xe]
   cfabc:	40 84 20 08 	slli $r8,$r8,#8
   cfac0:	40 73 c0 08 	slli $r7,$r7,#16
   cfac4:	40 74 1c 04 	or $r7,$r8,$r7
   cfac8:	00 81 80 0c 	lbi $r8,[$r3+#0xc]
   cfacc:	40 73 a0 04 	or $r7,$r7,$r8
   cfad0:	00 81 80 0f 	lbi $r8,[$r3+#0xf]
   cfad4:	40 84 60 08 	slli $r8,$r8,#24
   cfad8:	40 73 a0 04 	or $r7,$r7,$r8
   cfadc:	f7 b7       	swi37.sp $r7,[+#0xdc]
   cfade:	00 81 80 11 	lbi $r8,[$r3+#0x11]
   cfae2:	00 71 80 12 	lbi $r7,[$r3+#0x12]
   cfae6:	40 84 20 08 	slli $r8,$r8,#8
   cfaea:	40 73 c0 08 	slli $r7,$r7,#16
   cfaee:	40 74 1c 04 	or $r7,$r8,$r7
   cfaf2:	00 81 80 10 	lbi $r8,[$r3+#0x10]
   cfaf6:	40 73 a0 04 	or $r7,$r7,$r8
   cfafa:	00 81 80 13 	lbi $r8,[$r3+#0x13]
   cfafe:	40 84 60 08 	slli $r8,$r8,#24
   cfb02:	40 73 a0 04 	or $r7,$r7,$r8
   cfb06:	f7 b8       	swi37.sp $r7,[+#0xe0]
   cfb08:	00 81 80 15 	lbi $r8,[$r3+#0x15]
   cfb0c:	00 71 80 16 	lbi $r7,[$r3+#0x16]
   cfb10:	40 84 20 08 	slli $r8,$r8,#8
   cfb14:	40 73 c0 08 	slli $r7,$r7,#16
   cfb18:	40 74 1c 04 	or $r7,$r8,$r7
   cfb1c:	00 81 80 14 	lbi $r8,[$r3+#0x14]
   cfb20:	40 73 a0 04 	or $r7,$r7,$r8
   cfb24:	00 81 80 17 	lbi $r8,[$r3+#0x17]
   cfb28:	40 84 60 08 	slli $r8,$r8,#24
   cfb2c:	40 73 a0 04 	or $r7,$r7,$r8
   cfb30:	f7 b9       	swi37.sp $r7,[+#0xe4]
   cfb32:	00 81 80 19 	lbi $r8,[$r3+#0x19]
   cfb36:	00 71 80 1a 	lbi $r7,[$r3+#0x1a]
   cfb3a:	40 84 20 08 	slli $r8,$r8,#8
   cfb3e:	40 73 c0 08 	slli $r7,$r7,#16
   cfb42:	40 74 1c 04 	or $r7,$r8,$r7
   cfb46:	00 81 80 18 	lbi $r8,[$r3+#0x18]
   cfb4a:	40 73 a0 04 	or $r7,$r7,$r8
   cfb4e:	00 81 80 1b 	lbi $r8,[$r3+#0x1b]
   cfb52:	40 84 60 08 	slli $r8,$r8,#24
   cfb56:	40 73 a0 04 	or $r7,$r7,$r8
   cfb5a:	f7 ba       	swi37.sp $r7,[+#0xe8]
   cfb5c:	00 81 80 1d 	lbi $r8,[$r3+#0x1d]
   cfb60:	00 71 80 1e 	lbi $r7,[$r3+#0x1e]
   cfb64:	40 84 20 08 	slli $r8,$r8,#8
   cfb68:	40 73 c0 08 	slli $r7,$r7,#16
   cfb6c:	40 84 1c 04 	or $r8,$r8,$r7
   cfb70:	00 71 80 1c 	lbi $r7,[$r3+#0x1c]
   cfb74:	40 84 1c 04 	or $r8,$r8,$r7
   cfb78:	00 71 80 1f 	lbi $r7,[$r3+#0x1f]
   cfb7c:	f5 bc       	swi37.sp $r5,[+#0xf0]
   cfb7e:	40 73 e0 08 	slli $r7,$r7,#24
   cfb82:	40 34 1c 04 	or $r3,$r8,$r7
   cfb86:	f3 bb       	swi37.sp $r3,[+#0xec]
   cfb88:	a7 61       	lbi333 $r5,[$r4+#0x1]
   cfb8a:	a6 e2       	lbi333 $r3,[$r4+#0x2]
   cfb8c:	40 52 a0 08 	slli $r5,$r5,#8
   cfb90:	40 31 c0 08 	slli $r3,$r3,#16
   cfb94:	fe ef       	or33 $r3,$r5
   cfb96:	a7 60       	lbi333 $r5,[$r4+#0x0]
   cfb98:	fe ef       	or33 $r3,$r5
   cfb9a:	a7 63       	lbi333 $r5,[$r4+#0x3]
   cfb9c:	40 52 e0 08 	slli $r5,$r5,#24
   cfba0:	fe ef       	or33 $r3,$r5
   cfba2:	f3 bd       	swi37.sp $r3,[+#0xf4]
   cfba4:	a7 65       	lbi333 $r5,[$r4+#0x5]
   cfba6:	a6 e6       	lbi333 $r3,[$r4+#0x6]
   cfba8:	40 52 a0 08 	slli $r5,$r5,#8
   cfbac:	40 31 c0 08 	slli $r3,$r3,#16
   cfbb0:	fe ef       	or33 $r3,$r5
   cfbb2:	a7 64       	lbi333 $r5,[$r4+#0x4]
   cfbb4:	fe ef       	or33 $r3,$r5
   cfbb6:	a7 67       	lbi333 $r5,[$r4+#0x7]
   cfbb8:	40 52 e0 08 	slli $r5,$r5,#24
   cfbbc:	fe ef       	or33 $r3,$r5
   cfbbe:	f3 be       	swi37.sp $r3,[+#0xf8]
   cfbc0:	00 52 00 09 	lbi $r5,[$r4+#0x9]
   cfbc4:	00 32 00 0a 	lbi $r3,[$r4+#0xa]
   cfbc8:	40 52 a0 08 	slli $r5,$r5,#8
   cfbcc:	40 31 c0 08 	slli $r3,$r3,#16
   cfbd0:	fe ef       	or33 $r3,$r5
   cfbd2:	00 52 00 08 	lbi $r5,[$r4+#0x8]
   cfbd6:	00 42 00 0b 	lbi $r4,[$r4+#0xb]
   cfbda:	fe ef       	or33 $r3,$r5
   cfbdc:	40 42 60 08 	slli $r4,$r4,#24
   cfbe0:	fe e7       	or33 $r3,$r4
   cfbe2:	f3 bf       	swi37.sp $r3,[+#0xfc]
   cfbe4:	f0 82       	swi37.sp $r0,[+#0x8]
   cfbe6:	f6 83       	swi37.sp $r6,[+#0xc]
   cfbe8:	f1 81       	swi37.sp $r1,[+#0x4]
   cfbea:	48 00 01 41 	j cfe6c <Encrypt+0x46a>
   cfbee:	f2 06       	lwi37.sp $r2,[+#0x18]
   cfbf0:	5c f1 00 40 	slti $r15,$r2,#64
   cfbf4:	e8 03       	beqzs8 cfbfa <Encrypt+0x1f8>
   cfbf6:	f2 85       	swi37.sp $r2,[+#0x14]
   cfbf8:	d5 04       	j8 cfc00 <Encrypt+0x1fe>
   cfbfa:	44 30 00 40 	movi $r3,#64
   cfbfe:	f3 85       	swi37.sp $r3,[+#0x14]
   cfc00:	f5 03       	lwi37.sp $r5,[+#0xc]
   cfc02:	f4 02       	lwi37.sp $r4,[+#0x8]
   cfc04:	3a 02 8c 04 	lmw.bim $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   cfc08:	3a 02 0c 24 	smw.bim $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   cfc0c:	3a 02 8c 04 	lmw.bim $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   cfc10:	3a 02 0c 24 	smw.bim $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   cfc14:	3a 02 8c 04 	lmw.bim $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   cfc18:	3a 02 0c 24 	smw.bim $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   cfc1c:	3a 02 8c 00 	lmw.bi $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   cfc20:	3a 02 0c 20 	smw.bi $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   cfc24:	f3 17       	lwi37.sp $r3,[+#0x5c]
   cfc26:	f4 10       	lwi37.sp $r4,[+#0x40]
   cfc28:	f3 89       	swi37.sp $r3,[+#0x24]
   cfc2a:	f3 1f       	lwi37.sp $r3,[+#0x7c]
   cfc2c:	f4 84       	swi37.sp $r4,[+#0x10]
   cfc2e:	f3 88       	swi37.sp $r3,[+#0x20]
   cfc30:	f3 1b       	lwi37.sp $r3,[+#0x6c]
   cfc32:	f1 14       	lwi37.sp $r1,[+#0x50]
   cfc34:	f3 87       	swi37.sp $r3,[+#0x1c]
   cfc36:	fa 64       	movpi45 $r3,#0x14
   cfc38:	05 cf 80 1c 	lwi $fp,[$sp+#0x70]
   cfc3c:	f6 18       	lwi37.sp $r6,[+#0x60]
   cfc3e:	05 ef 80 11 	lwi $lp,[$sp+#0x44]
   cfc42:	f0 15       	lwi37.sp $r0,[+#0x54]
   cfc44:	04 8f 80 1d 	lwi $r8,[$sp+#0x74]
   cfc48:	f2 19       	lwi37.sp $r2,[+#0x64]
   cfc4a:	04 9f 80 12 	lwi $r9,[$sp+#0x48]
   cfc4e:	f5 16       	lwi37.sp $r5,[+#0x58]
   cfc50:	f4 1e       	lwi37.sp $r4,[+#0x78]
   cfc52:	f7 1a       	lwi37.sp $r7,[+#0x68]
   cfc54:	04 af 80 13 	lwi $r10,[$sp+#0x4c]
   cfc58:	f3 8a       	swi37.sp $r3,[+#0x28]
   cfc5a:	f3 04       	lwi37.sp $r3,[+#0x10]
   cfc5c:	89 25       	add45 $r9,$r5
   cfc5e:	98 cb       	add333 $r3,$r1,$r3
   cfc60:	41 c1 f0 03 	xor $fp,$r3,$fp
   cfc64:	41 ce 40 0b 	rotri $fp,$fp,#16
   cfc68:	88 dc       	add45 $r6,$fp
   cfc6a:	fe 75       	xor33 $r1,$r6
   cfc6c:	40 10 d0 0b 	rotri $r1,$r1,#20
   cfc70:	98 cb       	add333 $r3,$r1,$r3
   cfc72:	41 c1 f0 03 	xor $fp,$r3,$fp
   cfc76:	41 ce 60 0b 	rotri $fp,$fp,#24
   cfc7a:	40 44 90 03 	xor $r4,$r9,$r4
   cfc7e:	88 dc       	add45 $r6,$fp
   cfc80:	40 42 40 0b 	rotri $r4,$r4,#16
   cfc84:	f6 8e       	swi37.sp $r6,[+#0x38]
   cfc86:	fe 75       	xor33 $r1,$r6
   cfc88:	99 a7       	add333 $r6,$r4,$r7
   cfc8a:	41 e0 78 00 	add $lp,$r0,$lp
   cfc8e:	ff 75       	xor33 $r5,$r6
   cfc90:	40 10 e4 0b 	rotri $r1,$r1,#25
   cfc94:	40 8f 20 03 	xor $r8,$lp,$r8
   cfc98:	40 52 d0 0b 	rotri $r5,$r5,#20
   cfc9c:	f1 8f       	swi37.sp $r1,[+#0x3c]
   cfc9e:	40 84 40 0b 	rotri $r8,$r8,#16
   cfca2:	40 12 a4 00 	add $r1,$r5,$r9
   cfca6:	88 48       	add45 $r2,$r8
   cfca8:	ff 0d       	xor33 $r4,$r1
   cfcaa:	40 42 60 0b 	rotri $r4,$r4,#24
   cfcae:	fe 15       	xor33 $r0,$r2
   cfcb0:	99 a6       	add333 $r6,$r4,$r6
   cfcb2:	40 00 50 0b 	rotri $r0,$r0,#20
   cfcb6:	b6 9f       	swi450 $r4,[$sp]
   cfcb8:	f4 09       	lwi37.sp $r4,[+#0x24]
   cfcba:	41 e0 78 00 	add $lp,$r0,$lp
   cfcbe:	04 9f 80 08 	lwi $r9,[$sp+#0x20]
   cfcc2:	89 44       	add45 $r10,$r4
   cfcc4:	40 8f 20 03 	xor $r8,$lp,$r8
   cfcc8:	f3 84       	swi37.sp $r3,[+#0x10]
   cfcca:	40 75 24 03 	xor $r7,$r10,$r9
   cfcce:	f3 07       	lwi37.sp $r3,[+#0x1c]
   cfcd0:	40 84 60 0b 	rotri $r8,$r8,#24
   cfcd4:	88 48       	add45 $r2,$r8
   cfcd6:	40 73 c0 0b 	rotri $r7,$r7,#16
   cfcda:	f2 8d       	swi37.sp $r2,[+#0x34]
   cfcdc:	fe 15       	xor33 $r0,$r2
   cfcde:	98 bb       	add333 $r2,$r7,$r3
   cfce0:	40 31 10 03 	xor $r3,$r2,$r4
   cfce4:	40 31 d0 0b 	rotri $r3,$r3,#20
   cfce8:	89 43       	add45 $r10,$r3
   cfcea:	f4 04       	lwi37.sp $r4,[+#0x10]
   cfcec:	40 00 64 0b 	rotri $r0,$r0,#25
   cfcf0:	40 75 1c 03 	xor $r7,$r10,$r7
   cfcf4:	40 90 10 00 	add $r9,$r0,$r4
   cfcf8:	40 73 e0 0b 	rotri $r7,$r7,#24
   cfcfc:	98 ba       	add333 $r2,$r7,$r2
   cfcfe:	40 74 9c 03 	xor $r7,$r9,$r7
   cfd02:	40 73 c0 0b 	rotri $r7,$r7,#16
   cfd06:	ff 75       	xor33 $r5,$r6
   cfd08:	99 be       	add333 $r6,$r7,$r6
   cfd0a:	fe 35       	xor33 $r0,$r6
   cfd0c:	fe d5       	xor33 $r3,$r2
   cfd0e:	40 00 50 0b 	rotri $r0,$r0,#20
   cfd12:	89 20       	add45 $r9,$r0
   cfd14:	40 31 e4 0b 	rotri $r3,$r3,#25
   cfd18:	40 52 e4 0b 	rotri $r5,$r5,#25
   cfd1c:	40 74 9c 03 	xor $r7,$r9,$r7
   cfd20:	14 9f 80 04 	swi $r9,[$sp+#0x10]
   cfd24:	40 91 84 00 	add $r9,$r3,$r1
   cfd28:	41 e2 f8 00 	add $lp,$r5,$lp
   cfd2c:	40 84 a0 03 	xor $r8,$r9,$r8
   cfd30:	f1 0e       	lwi37.sp $r1,[+#0x38]
   cfd32:	40 73 e0 0b 	rotri $r7,$r7,#24
   cfd36:	41 cf 70 03 	xor $fp,$lp,$fp
   cfd3a:	40 84 40 0b 	rotri $r8,$r8,#16
   cfd3e:	41 ce 40 0b 	rotri $fp,$fp,#16
   cfd42:	f7 88       	swi37.sp $r7,[+#0x20]
   cfd44:	99 fe       	add333 $r7,$r7,$r6
   cfd46:	40 64 04 00 	add $r6,$r8,$r1
   cfd4a:	88 5c       	add45 $r2,$fp
   cfd4c:	fe f5       	xor33 $r3,$r6
   cfd4e:	ff 55       	xor33 $r5,$r2
   cfd50:	40 31 d0 0b 	rotri $r3,$r3,#20
   cfd54:	40 52 d0 0b 	rotri $r5,$r5,#20
   cfd58:	89 23       	add45 $r9,$r3
   cfd5a:	41 e2 f8 00 	add $lp,$r5,$lp
   cfd5e:	40 84 a0 03 	xor $r8,$r9,$r8
   cfd62:	41 cf 70 03 	xor $fp,$lp,$fp
   cfd66:	40 84 60 0b 	rotri $r8,$r8,#24
   cfd6a:	41 ce 60 0b 	rotri $fp,$fp,#24
   cfd6e:	88 c8       	add45 $r6,$r8
   cfd70:	88 5c       	add45 $r2,$fp
   cfd72:	fe f5       	xor33 $r3,$r6
   cfd74:	ff 55       	xor33 $r5,$r2
   cfd76:	40 31 e4 0b 	rotri $r3,$r3,#25
   cfd7a:	f2 87       	swi37.sp $r2,[+#0x1c]
   cfd7c:	f2 0f       	lwi37.sp $r2,[+#0x3c]
   cfd7e:	f3 89       	swi37.sp $r3,[+#0x24]
   cfd80:	b4 7f       	lwi450 $r3,[$sp]
   cfd82:	89 42       	add45 $r10,$r2
   cfd84:	40 45 0c 03 	xor $r4,$r10,$r3
   cfd88:	f1 0d       	lwi37.sp $r1,[+#0x34]
   cfd8a:	40 42 40 0b 	rotri $r4,$r4,#16
   cfd8e:	f3 0f       	lwi37.sp $r3,[+#0x3c]
   cfd90:	98 a1       	add333 $r2,$r4,$r1
   cfd92:	40 11 0c 03 	xor $r1,$r2,$r3
   cfd96:	40 10 d0 0b 	rotri $r1,$r1,#20
   cfd9a:	89 41       	add45 $r10,$r1
   cfd9c:	40 45 10 03 	xor $r4,$r10,$r4
   cfda0:	f3 0a       	lwi37.sp $r3,[+#0x28]
   cfda2:	40 42 60 0b 	rotri $r4,$r4,#24
   cfda6:	98 a2       	add333 $r2,$r4,$r2
   cfda8:	fe 3d       	xor33 $r0,$r7
   cfdaa:	fe 55       	xor33 $r1,$r2
   cfdac:	9e da       	subi333 $r3,$r3,#2
   cfdae:	40 00 64 0b 	rotri $r0,$r0,#25
   cfdb2:	40 52 e4 0b 	rotri $r5,$r5,#25
   cfdb6:	40 10 e4 0b 	rotri $r1,$r1,#25
   cfdba:	f3 8a       	swi37.sp $r3,[+#0x28]
   cfdbc:	4e 33 ff 4f 	bnez $r3,cfc5a <Encrypt+0x258>
   cfdc0:	f3 04       	lwi37.sp $r3,[+#0x10]
   cfdc2:	f0 95       	swi37.sp $r0,[+#0x54]
   cfdc4:	14 9f 80 12 	swi $r9,[$sp+#0x48]
   cfdc8:	f0 07       	lwi37.sp $r0,[+#0x1c]
   cfdca:	f4 9e       	swi37.sp $r4,[+#0x78]
   cfdcc:	04 9f 80 08 	lwi $r9,[$sp+#0x20]
   cfdd0:	f4 09       	lwi37.sp $r4,[+#0x24]
   cfdd2:	f0 9b       	swi37.sp $r0,[+#0x6c]
   cfdd4:	f3 90       	swi37.sp $r3,[+#0x40]
   cfdd6:	f1 94       	swi37.sp $r1,[+#0x50]
   cfdd8:	15 cf 80 1c 	swi $fp,[$sp+#0x70]
   cfddc:	f6 98       	swi37.sp $r6,[+#0x60]
   cfdde:	15 ef 80 11 	swi $lp,[$sp+#0x44]
   cfde2:	14 8f 80 1d 	swi $r8,[$sp+#0x74]
   cfde6:	f2 99       	swi37.sp $r2,[+#0x64]
   cfde8:	f5 96       	swi37.sp $r5,[+#0x58]
   cfdea:	f7 9a       	swi37.sp $r7,[+#0x68]
   cfdec:	14 af 80 13 	swi $r10,[$sp+#0x4c]
   cfdf0:	f4 97       	swi37.sp $r4,[+#0x5c]
   cfdf2:	14 9f 80 1f 	swi $r9,[$sp+#0x7c]
   cfdf6:	f0 0a       	lwi37.sp $r0,[+#0x28]
   cfdf8:	b0 70       	addri36.sp $r1,#0xc0
   cfdfa:	b0 d0       	addri36.sp $r3,#0x40
   cfdfc:	38 20 80 02 	lw $r2,[$r1+($r0<<#0x0)]
   cfe00:	38 11 80 02 	lw $r1,[$r3+($r0<<#0x0)]
   cfe04:	98 51       	add333 $r1,$r2,$r1
   cfe06:	38 11 80 0a 	sw $r1,[$r3+($r0<<#0x0)]
   cfe0a:	9c 04       	addi333 $r0,$r0,#4
   cfe0c:	5a 08 40 f6 	bnec $r0,#64,cfdf8 <Encrypt+0x3f6>
   cfe10:	80 03       	mov55 $r0,$r3
   cfe12:	b0 60       	addri36.sp $r1,#0x80
   cfe14:	a7 00       	lbi333 $r4,[$r0+#0x0]
   cfe16:	af 08       	sbi333 $r4,[$r1+#0x0]
   cfe18:	b4 40       	lwi450 $r2,[$r0]
   cfe1a:	92 48       	srli45 $r2,#8
   cfe1c:	ae 89       	sbi333 $r2,[$r1+#0x1]
   cfe1e:	00 90 00 02 	lbi $r9,[$r0+#0x2]
   cfe22:	10 90 80 02 	sbi $r9,[$r1+#0x2]
   cfe26:	a2 81       	lwi333.bi $r2,[$r0],#0x4
   cfe28:	92 58       	srli45 $r2,#24
   cfe2a:	ae 8b       	sbi333 $r2,[$r1+#0x3]
   cfe2c:	9c 4c       	addi333 $r1,$r1,#4
   cfe2e:	f2 01       	lwi37.sp $r2,[+#0x4]
   cfe30:	4c 01 7f f2 	bne $r0,$r2,cfe14 <Encrypt+0x412>
   cfe34:	f2 0c       	lwi37.sp $r2,[+#0x30]
   cfe36:	84 00       	movi55 $r0,#0
   cfe38:	b1 20       	addri36.sp $r4,#0x80
   cfe3a:	38 32 00 00 	lb $r3,[$r4+($r0<<#0x0)]
   cfe3e:	38 11 00 00 	lb $r1,[$r2+($r0<<#0x0)]
   cfe42:	04 9f 80 0b 	lwi $r9,[$sp+#0x2c]
   cfe46:	fe 5d       	xor33 $r1,$r3
   cfe48:	38 14 80 08 	sb $r1,[$r9+($r0<<#0x0)]
   cfe4c:	9c 01       	addi333 $r0,$r0,#1
   cfe4e:	f1 05       	lwi37.sp $r1,[+#0x14]
   cfe50:	e2 01       	slt45 $r0,$r1
   cfe52:	e9 f3       	bnezs8 cfe38 <Encrypt+0x436>
   cfe54:	f2 0c       	lwi37.sp $r2,[+#0x30]
   cfe56:	f3 06       	lwi37.sp $r3,[+#0x18]
   cfe58:	f0 3c       	lwi37.sp $r0,[+#0xf0]
   cfe5a:	89 21       	add45 $r9,$r1
   cfe5c:	98 91       	add333 $r2,$r2,$r1
   cfe5e:	9a d9       	sub333 $r3,$r3,$r1
   cfe60:	9c 01       	addi333 $r0,$r0,#1
   cfe62:	14 9f 80 0b 	swi $r9,[$sp+#0x2c]
   cfe66:	f2 8c       	swi37.sp $r2,[+#0x30]
   cfe68:	f3 86       	swi37.sp $r3,[+#0x18]
   cfe6a:	f0 bc       	swi37.sp $r0,[+#0xf0]
   cfe6c:	f4 06       	lwi37.sp $r4,[+#0x18]
   cfe6e:	4e 43 fe c0 	bnez $r4,cfbee <Encrypt+0x1ec>
   cfe72:	ed 00       	addi10.sp #256
   cfe74:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000cfe76 <hci_log_set>:
   cfe76:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cfe78:	3e 07 c6 c2 	sbi.gp $r0,[+#-14654]
   cfe7c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cfe7e <hci_acl_send>:
   cfe7e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cfe80:	40 80 00 13 	zeh $r8,$r0
   cfe84:	2e 07 c6 c2 	lbi.gp $r0,[+#-14654]
   cfe88:	80 e1       	mov55 $r7,$r1
   cfe8a:	96 16       	bmski33 $r0,#0x2
   cfe8c:	97 91       	zeh33 $r6,$r2
   cfe8e:	c0 06       	beqz38 $r0,cfe9a <hci_acl_send+0x1c>
   cfe90:	84 0a       	movi55 $r0,#10
   cfe92:	80 46       	mov55 $r2,$r6
   cfe94:	84 60       	movi55 $r3,#0
   cfe96:	49 00 10 2c 	jal d1eee <AB_Log_HexDisplay>
   cfe9a:	3c 0d f1 a1 	lwi.gp $r0,[+#-14716]
   cfe9e:	80 27       	mov55 $r1,$r7
   cfea0:	a0 01       	lwi333 $r0,[$r0+#0x4]
   cfea2:	80 46       	mov55 $r2,$r6
   cfea4:	a0 c3       	lwi333 $r3,[$r0+#0xc]
   cfea6:	80 08       	mov55 $r0,$r8
   cfea8:	dd 23       	jral5 $r3
   cfeaa:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cfeac <hci_cmd_send>:
   cfeac:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   cfeae:	40 80 00 13 	zeh $r8,$r0
   cfeb2:	2e 07 c6 c2 	lbi.gp $r0,[+#-14654]
   cfeb6:	80 e1       	mov55 $r7,$r1
   cfeb8:	96 04       	xlsb33 $r0,$r0
   cfeba:	97 90       	zeb33 $r6,$r2
   cfebc:	c0 06       	beqz38 $r0,cfec8 <hci_cmd_send+0x1c>
   cfebe:	80 08       	mov55 $r0,$r8
   cfec0:	80 26       	mov55 $r1,$r6
   cfec2:	80 47       	mov55 $r2,$r7
   cfec4:	49 00 0f f2 	jal d1ea8 <AB_Log_CmdShow>
   cfec8:	3c 0d f1 a1 	lwi.gp $r0,[+#-14716]
   cfecc:	80 27       	mov55 $r1,$r7
   cfece:	a0 01       	lwi333 $r0,[$r0+#0x4]
   cfed0:	80 46       	mov55 $r2,$r6
   cfed2:	a0 c2       	lwi333 $r3,[$r0+#0x8]
   cfed4:	80 08       	mov55 $r0,$r8
   cfed6:	dd 23       	jral5 $r3
   cfed8:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000cfeda <hci_init>:
   cfeda:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   cfedc:	f0 81       	swi37.sp $r0,[+#0x4]
   cfede:	3c 2f f1 a2 	swi.gp $r2,[+#-14712]
   cfee2:	3c 1f f1 a3 	swi.gp $r1,[+#-14708]
   cfee6:	97 20       	zeb33 $r4,$r4
   cfee8:	84 00       	movi55 $r0,#0
   cfeea:	f3 82       	swi37.sp $r3,[+#0x8]
   cfeec:	f4 83       	swi37.sp $r4,[+#0xc]
   cfeee:	49 00 10 f0 	jal d20ce <AB_module_count>
   cfef2:	83 80       	mov55 $fp,$r0
   cfef4:	84 c0       	movi55 $r6,#0
   cfef6:	d5 30       	j8 cff56 <hci_init+0x7c>
   cfef8:	80 06       	mov55 $r0,$r6
   cfefa:	49 00 11 06 	jal d2106 <AB_module_get>
   cfefe:	b6 1f       	swi450 $r0,[$sp]
   cff00:	b4 00       	lwi450 $r0,[$r0]
   cff02:	3e 1d 30 24 	addi.gp $r1,#-184284
   cff06:	49 ff c0 c9 	jal c8098 <strcmp>
   cff0a:	80 e0       	mov55 $r7,$r0
   cff0c:	c8 24       	bnez38 $r0,cff54 <hci_init+0x7a>
   cff0e:	80 07       	mov55 $r0,$r7
   cff10:	49 00 10 fb 	jal d2106 <AB_module_get>
   cff14:	81 00       	mov55 $r8,$r0
   cff16:	b4 00       	lwi450 $r0,[$r0]
   cff18:	3e 1d 30 cc 	addi.gp $r1,#-184116
   cff1c:	49 ff c0 be 	jal c8098 <strcmp>
   cff20:	c8 17       	bnez38 $r0,cff4e <hci_init+0x74>
   cff22:	b4 1f       	lwi450 $r0,[$sp]
   cff24:	04 a4 00 01 	lwi $r10,[$r8+#0x4]
   cff28:	04 90 00 01 	lwi $r9,[$r0+#0x4]
   cff2c:	b4 0a       	lwi450 $r0,[$r10]
   cff2e:	b4 29       	lwi450 $r1,[$r9]
   cff30:	49 ff c0 b4 	jal c8098 <strcmp>
   cff34:	c8 0d       	bnez38 $r0,cff4e <hci_init+0x74>
   cff36:	04 55 00 01 	lwi $r5,[$r10+#0x4]
   cff3a:	f2 01       	lwi37.sp $r2,[+#0x4]
   cff3c:	f3 02       	lwi37.sp $r3,[+#0x8]
   cff3e:	f4 03       	lwi37.sp $r4,[+#0xc]
   cff40:	80 09       	mov55 $r0,$r9
   cff42:	3e 1c bf 5c 	addi.gp $r1,#-213156
   cff46:	dd 25       	jral5 $r5
   cff48:	3c 8f f1 a1 	swi.gp $r8,[+#-14716]
   cff4c:	d5 07       	j8 cff5a <hci_init+0x80>
   cff4e:	9d f9       	addi333 $r7,$r7,#1
   cff50:	e2 fc       	slt45 $r7,$fp
   cff52:	e9 de       	bnezs8 cff0e <hci_init+0x34>
   cff54:	9d b1       	addi333 $r6,$r6,#1
   cff56:	e2 dc       	slt45 $r6,$fp
   cff58:	e9 d0       	bnezs8 cfef8 <hci_init+0x1e>
   cff5a:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

000cff5c <hci_pkt_recv>:
   cff5c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cff5e:	80 c0       	mov55 $r6,$r0
   cff60:	b4 00       	lwi450 $r0,[$r0]
   cff62:	5a 08 02 13 	bnec $r0,#2,cff88 <hci_pkt_recv+0x2c>
   cff66:	2e 07 c6 c2 	lbi.gp $r0,[+#-14654]
   cff6a:	96 16       	bmski33 $r0,#0x2
   cff6c:	c0 07       	beqz38 $r0,cff7a <hci_pkt_recv+0x1e>
   cff6e:	a0 72       	lwi333 $r1,[$r6+#0x8]
   cff70:	a4 b3       	lhi333 $r2,[$r6+#0x6]
   cff72:	84 0a       	movi55 $r0,#10
   cff74:	84 60       	movi55 $r3,#0
   cff76:	49 00 0f bc 	jal d1eee <AB_Log_HexDisplay>
   cff7a:	3c 3d f1 a3 	lwi.gp $r3,[+#-14708]
   cff7e:	a4 73       	lhi333 $r1,[$r6+#0x6]
   cff80:	a4 32       	lhi333 $r0,[$r6+#0x4]
   cff82:	a0 b2       	lwi333 $r2,[$r6+#0x8]
   cff84:	dd 23       	jral5 $r3
   cff86:	d5 1a       	j8 cffba <hci_pkt_recv+0x5e>
   cff88:	5a 08 04 19 	bnec $r0,#4,cffba <hci_pkt_recv+0x5e>
   cff8c:	2e 07 c6 c2 	lbi.gp $r0,[+#-14654]
   cff90:	96 0e       	bmski33 $r0,#0x1
   cff92:	c0 0a       	beqz38 $r0,cffa6 <hci_pkt_recv+0x4a>
   cff94:	a4 b4       	lhi333 $r2,[$r6+#0x8]
   cff96:	a4 f3       	lhi333 $r3,[$r6+#0x6]
   cff98:	40 21 40 08 	slli $r2,$r2,#16
   cff9c:	a6 34       	lbi333 $r0,[$r6+#0x4]
   cff9e:	a6 75       	lbi333 $r1,[$r6+#0x5]
   cffa0:	fe 9f       	or33 $r2,$r3
   cffa2:	49 00 0f 56 	jal d1e4e <AB_Log_EvtShow>
   cffa6:	a4 b4       	lhi333 $r2,[$r6+#0x8]
   cffa8:	a4 f3       	lhi333 $r3,[$r6+#0x6]
   cffaa:	40 21 40 08 	slli $r2,$r2,#16
   cffae:	3c 4d f1 a2 	lwi.gp $r4,[+#-14712]
   cffb2:	a6 75       	lbi333 $r1,[$r6+#0x5]
   cffb4:	a6 34       	lbi333 $r0,[$r6+#0x4]
   cffb6:	fe 9f       	or33 $r2,$r3
   cffb8:	dd 24       	jral5 $r4
   cffba:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cffbc <hci_dat_info_update>:
   cffbc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cffbe:	3c 0b e7 68 	shi.gp $r0,[+#-12592]
   cffc2:	3c 1b e7 62 	shi.gp $r1,[+#-12604]
   cffc6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cffc8 <hci_pending_acl>:
   cffc8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   cffca:	3c 03 e7 63 	lhi.gp $r0,[+#-12602]
   cffce:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000cffd0 <hci_command_event>:
   cffd0:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   cffd2:	3e 8f ce c8 	addi.gp $r8,#-12600
   cffd6:	40 90 00 13 	zeh $r9,$r0
   cffda:	b4 08       	lwi450 $r0,[$r8]
   cffdc:	81 41       	mov55 $r10,$r1
   cffde:	49 00 11 a9 	jal d2330 <AB_queue_count>
   cffe2:	80 c0       	mov55 $r6,$r0
   cffe4:	84 e0       	movi55 $r7,#0
   cffe6:	d5 14       	j8 d000e <hci_command_event+0x3e>
   cffe8:	b4 08       	lwi450 $r0,[$r8]
   cffea:	49 00 11 96 	jal d2316 <AB_queue_pop>
   cffee:	80 20       	mov55 $r1,$r0
   cfff0:	c0 0e       	beqz38 $r0,d000c <hci_command_event+0x3c>
   cfff2:	cf 0a       	bnez38 $r7,d0006 <hci_command_event+0x36>
   cfff4:	a4 80       	lhi333 $r2,[$r0+#0x0]
   cfff6:	4c 24 c0 08 	bne $r2,$r9,d0006 <hci_command_event+0x36>
   cfffa:	a0 42       	lwi333 $r1,[$r0+#0x8]
   cfffc:	a1 c1       	lwi333 $r7,[$r0+#0x4]
   cfffe:	b6 2a       	swi450 $r1,[$r10]
   d0000:	49 00 11 a4 	jal d2348 <AB_queue_entry_free>
   d0004:	d5 04       	j8 d000c <hci_command_event+0x3c>
   d0006:	b4 08       	lwi450 $r0,[$r8]
   d0008:	49 00 11 53 	jal d22ae <AB_queue_push>
   d000c:	9f b1       	subi333 $r6,$r6,#1
   d000e:	ce ed       	bnez38 $r6,cffe8 <hci_command_event+0x18>
   d0010:	3c 0d f3 b3 	lwi.gp $r0,[+#-12596]
   d0014:	49 00 11 81 	jal d2316 <AB_queue_pop>
   d0018:	80 c0       	mov55 $r6,$r0
   d001a:	c0 1a       	beqz38 $r0,d004e <hci_command_event+0x7e>
   d001c:	a0 01       	lwi333 $r0,[$r0+#0x4]
   d001e:	c0 0f       	beqz38 $r0,d003c <hci_command_event+0x6c>
   d0020:	84 0c       	movi55 $r0,#12
   d0022:	49 00 11 ad 	jal d237c <AB_queue_entry_alloc>
   d0026:	80 20       	mov55 $r1,$r0
   d0028:	a4 30       	lhi333 $r0,[$r6+#0x0]
   d002a:	ac 08       	shi333 $r0,[$r1+#0x0]
   d002c:	a0 31       	lwi333 $r0,[$r6+#0x4]
   d002e:	a8 09       	swi333 $r0,[$r1+#0x4]
   d0030:	a0 32       	lwi333 $r0,[$r6+#0x8]
   d0032:	a8 0a       	swi333 $r0,[$r1+#0x8]
   d0034:	3c 0d f3 b2 	lwi.gp $r0,[+#-12600]
   d0038:	49 00 11 3b 	jal d22ae <AB_queue_push>
   d003c:	80 26       	mov55 $r1,$r6
   d003e:	0a 00 80 06 	lhi.bi $r0,[$r1],#0xc
   d0042:	a6 b2       	lbi333 $r2,[$r6+#0x2]
   d0044:	49 ff ff 34 	jal cfeac <hci_cmd_send>
   d0048:	80 06       	mov55 $r0,$r6
   d004a:	49 00 11 7f 	jal d2348 <AB_queue_entry_free>
   d004e:	80 07       	mov55 $r0,$r7
   d0050:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d0052 <hci_evt_handler>:
   d0052:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   d0054:	97 c0       	zeb33 $r7,$r0
   d0056:	80 c2       	mov55 $r6,$r2
   d0058:	54 80 80 ff 	andi $r8,$r1,#0xff
   d005c:	5a 70 0f 0e 	beqc $r7,#15,d0078 <hci_evt_handler+0x26>
   d0060:	5a 70 13 20 	beqc $r7,#19,d00a0 <hci_evt_handler+0x4e>
   d0064:	5a 78 0e 51 	bnec $r7,#14,d0106 <hci_evt_handler+0xb4>
   d0068:	a6 50       	lbi333 $r1,[$r2+#0x0]
   d006a:	3e 17 c6 c3 	sbi.gp $r1,[+#-14653]
   d006e:	a6 12       	lbi333 $r0,[$r2+#0x2]
   d0070:	a6 51       	lbi333 $r1,[$r2+#0x1]
   d0072:	40 00 20 08 	slli $r0,$r0,#8
   d0076:	d5 08       	j8 d0086 <hci_evt_handler+0x34>
   d0078:	a6 51       	lbi333 $r1,[$r2+#0x1]
   d007a:	3e 17 c6 c3 	sbi.gp $r1,[+#-14653]
   d007e:	a6 13       	lbi333 $r0,[$r2+#0x3]
   d0080:	a6 52       	lbi333 $r1,[$r2+#0x2]
   d0082:	40 00 20 08 	slli $r0,$r0,#8
   d0086:	98 01       	add333 $r0,$r0,$r1
   d0088:	96 01       	zeh33 $r0,$r0
   d008a:	b0 41       	addri36.sp $r1,#0x4
   d008c:	49 ff ff a2 	jal cffd0 <hci_command_event>
   d0090:	80 80       	mov55 $r4,$r0
   d0092:	c0 40       	beqz38 $r0,d0112 <hci_evt_handler+0xc0>
   d0094:	f3 01       	lwi37.sp $r3,[+#0x4]
   d0096:	80 07       	mov55 $r0,$r7
   d0098:	80 26       	mov55 $r1,$r6
   d009a:	80 48       	mov55 $r2,$r8
   d009c:	dd 24       	jral5 $r4
   d009e:	d5 3a       	j8 d0112 <hci_evt_handler+0xc0>
   d00a0:	3c 13 e7 62 	lhi.gp $r1,[+#-12604]
   d00a4:	a6 d0       	lbi333 $r3,[$r2+#0x0]
   d00a6:	84 00       	movi55 $r0,#0
   d00a8:	d5 0b       	j8 d00be <hci_evt_handler+0x6c>
   d00aa:	94 82       	slli333 $r2,$r0,#2
   d00ac:	98 b2       	add333 $r2,$r6,$r2
   d00ae:	a7 13       	lbi333 $r4,[$r2+#0x3]
   d00b0:	a6 94       	lbi333 $r2,[$r2+#0x4]
   d00b2:	9c 01       	addi333 $r0,$r0,#1
   d00b4:	40 21 20 08 	slli $r2,$r2,#8
   d00b8:	fe a7       	or33 $r2,$r4
   d00ba:	98 4a       	add333 $r1,$r1,$r2
   d00bc:	96 49       	zeh33 $r1,$r1
   d00be:	96 80       	zeb33 $r2,$r0
   d00c0:	e2 43       	slt45 $r2,$r3
   d00c2:	e9 f4       	bnezs8 d00aa <hci_evt_handler+0x58>
   d00c4:	2e 07 ce bc 	lbi.gp $r0,[+#-12612]
   d00c8:	3e 7f ce c4 	addi.gp $r7,#-12604
   d00cc:	ac 78       	shi333 $r1,[$r7+#0x0]
   d00ce:	c8 22       	bnez38 $r0,d0112 <hci_evt_handler+0xc0>
   d00d0:	3c 0d f3 b0 	lwi.gp $r0,[+#-12608]
   d00d4:	49 00 11 21 	jal d2316 <AB_queue_pop>
   d00d8:	80 c0       	mov55 $r6,$r0
   d00da:	c0 1c       	beqz38 $r0,d0112 <hci_evt_handler+0xc0>
   d00dc:	a4 38       	lhi333 $r0,[$r7+#0x0]
   d00de:	80 26       	mov55 $r1,$r6
   d00e0:	9e 01       	subi333 $r0,$r0,#1
   d00e2:	ac 38       	shi333 $r0,[$r7+#0x0]
   d00e4:	0a 00 80 02 	lhi.bi $r0,[$r1],#0x4
   d00e8:	a4 b1       	lhi333 $r2,[$r6+#0x2]
   d00ea:	49 ff fe ca 	jal cfe7e <hci_acl_send>
   d00ee:	80 06       	mov55 $r0,$r6
   d00f0:	49 00 11 2c 	jal d2348 <AB_queue_entry_free>
   d00f4:	46 00 01 00 	sethi $r0,#0x100
   d00f8:	3c 23 e7 63 	lhi.gp $r2,[+#-12602]
   d00fc:	a4 71       	lhi333 $r1,[$r6+#0x2]
   d00fe:	9a 51       	sub333 $r1,$r2,$r1
   d0100:	3c 1b e7 63 	shi.gp $r1,[+#-12602]
   d0104:	d5 07       	j8 d0112 <hci_evt_handler+0xc0>
   d0106:	3c 3d f1 a4 	lwi.gp $r3,[+#-14704]
   d010a:	c3 04       	beqz38 $r3,d0112 <hci_evt_handler+0xc0>
   d010c:	80 07       	mov55 $r0,$r7
   d010e:	80 28       	mov55 $r1,$r8
   d0110:	dd 23       	jral5 $r3
   d0112:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000d0114 <_hci_send_acl>:
   d0114:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d0116:	3e 7f ce c4 	addi.gp $r7,#-12604
   d011a:	40 90 00 13 	zeh $r9,$r0
   d011e:	a4 38       	lhi333 $r0,[$r7+#0x0]
   d0120:	81 01       	mov55 $r8,$r1
   d0122:	97 91       	zeh33 $r6,$r2
   d0124:	c0 12       	beqz38 $r0,d0148 <_hci_send_acl+0x34>
   d0126:	3c 0d f3 b0 	lwi.gp $r0,[+#-12608]
   d012a:	49 00 11 03 	jal d2330 <AB_queue_count>
   d012e:	c8 0d       	bnez38 $r0,d0148 <_hci_send_acl+0x34>
   d0130:	2e 07 ce bc 	lbi.gp $r0,[+#-12612]
   d0134:	c8 0a       	bnez38 $r0,d0148 <_hci_send_acl+0x34>
   d0136:	a4 38       	lhi333 $r0,[$r7+#0x0]
   d0138:	80 28       	mov55 $r1,$r8
   d013a:	9e 01       	subi333 $r0,$r0,#1
   d013c:	ac 38       	shi333 $r0,[$r7+#0x0]
   d013e:	80 46       	mov55 $r2,$r6
   d0140:	80 09       	mov55 $r0,$r9
   d0142:	49 ff fe 9e 	jal cfe7e <hci_acl_send>
   d0146:	d5 19       	j8 d0178 <_hci_send_acl+0x64>
   d0148:	9c 35       	addi333 $r0,$r6,#5
   d014a:	49 00 11 19 	jal d237c <AB_queue_entry_alloc>
   d014e:	ad 81       	shi333 $r6,[$r0+#0x2]
   d0150:	12 90 00 00 	shi $r9,[$r0+#0x0]
   d0154:	80 46       	mov55 $r2,$r6
   d0156:	80 e0       	mov55 $r7,$r0
   d0158:	80 28       	mov55 $r1,$r8
   d015a:	9c 04       	addi333 $r0,$r0,#4
   d015c:	49 ff bf 76 	jal c8048 <memcpy>
   d0160:	3c 0d f3 b0 	lwi.gp $r0,[+#-12608]
   d0164:	80 27       	mov55 $r1,$r7
   d0166:	49 00 10 a4 	jal d22ae <AB_queue_push>
   d016a:	46 00 01 00 	sethi $r0,#0x100
   d016e:	3c 13 e7 63 	lhi.gp $r1,[+#-12602]
   d0172:	99 b1       	add333 $r6,$r6,$r1
   d0174:	3c 6b e7 63 	shi.gp $r6,[+#-12602]
   d0178:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d017a <hci_send_cmd_ex>:
   d017a:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d017c:	81 41       	mov55 $r10,$r1
   d017e:	81 03       	mov55 $r8,$r3
   d0180:	83 84       	mov55 $fp,$r4
   d0182:	40 90 00 13 	zeh $r9,$r0
   d0186:	97 d0       	zeb33 $r7,$r2
   d0188:	64 22 00 02 	mfsr $r2,$PSW
   d018c:	64 02 00 43 	setgie.d
   d0190:	64 00 00 08 	dsb
   d0194:	46 10 01 00 	sethi $r1,#0x100
   d0198:	58 10 80 b0 	ori $r1,$r1,#0xb0
   d019c:	b4 01       	lwi450 $r0,[$r1]
   d019e:	9c c1       	addi333 $r3,$r0,#1
   d01a0:	b6 61       	swi450 $r3,[$r1]
   d01a2:	c8 06       	bnez38 $r0,d01ae <hci_send_cmd_ex+0x34>
   d01a4:	46 00 01 00 	sethi $r0,#0x100
   d01a8:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d01ac:	b6 40       	swi450 $r2,[$r0]
   d01ae:	3e 0f c6 c3 	addi.gp $r0,#-14653
   d01b2:	a6 00       	lbi333 $r0,[$r0+#0x0]
   d01b4:	c0 22       	beqz38 $r0,d01f8 <hci_send_cmd_ex+0x7e>
   d01b6:	3e 6f ce c8 	addi.gp $r6,#-12600
   d01ba:	b4 06       	lwi450 $r0,[$r6]
   d01bc:	49 00 10 ba 	jal d2330 <AB_queue_count>
   d01c0:	c8 1c       	bnez38 $r0,d01f8 <hci_send_cmd_ex+0x7e>
   d01c2:	4e 82 00 10 	beqz $r8,d01e2 <hci_send_cmd_ex+0x68>
   d01c6:	84 0c       	movi55 $r0,#12
   d01c8:	49 00 10 da 	jal d237c <AB_queue_entry_alloc>
   d01cc:	15 c0 00 02 	swi $fp,[$r0+#0x8]
   d01d0:	80 a0       	mov55 $r5,$r0
   d01d2:	12 90 00 00 	shi $r9,[$r0+#0x0]
   d01d6:	14 80 00 01 	swi $r8,[$r0+#0x4]
   d01da:	b4 06       	lwi450 $r0,[$r6]
   d01dc:	80 25       	mov55 $r1,$r5
   d01de:	49 00 10 68 	jal d22ae <AB_queue_push>
   d01e2:	3e 0f c6 c3 	addi.gp $r0,#-14653
   d01e6:	a6 40       	lbi333 $r1,[$r0+#0x0]
   d01e8:	80 47       	mov55 $r2,$r7
   d01ea:	9e 49       	subi333 $r1,$r1,#1
   d01ec:	ae 40       	sbi333 $r1,[$r0+#0x0]
   d01ee:	80 09       	mov55 $r0,$r9
   d01f0:	80 2a       	mov55 $r1,$r10
   d01f2:	49 ff fe 5d 	jal cfeac <hci_cmd_send>
   d01f6:	d5 18       	j8 d0226 <hci_send_cmd_ex+0xac>
   d01f8:	50 03 80 0f 	addi $r0,$r7,#15
   d01fc:	49 00 10 c0 	jal d237c <AB_queue_entry_alloc>
   d0200:	12 90 00 00 	shi $r9,[$r0+#0x0]
   d0204:	af c2       	sbi333 $r7,[$r0+#0x2]
   d0206:	14 80 00 01 	swi $r8,[$r0+#0x4]
   d020a:	15 c0 00 02 	swi $fp,[$r0+#0x8]
   d020e:	80 c0       	mov55 $r6,$r0
   d0210:	80 2a       	mov55 $r1,$r10
   d0212:	8c 0c       	addi45 $r0,#12
   d0214:	80 47       	mov55 $r2,$r7
   d0216:	49 ff bf 19 	jal c8048 <memcpy>
   d021a:	3e 0f ce cc 	addi.gp $r0,#-12596
   d021e:	b4 00       	lwi450 $r0,[$r0]
   d0220:	80 26       	mov55 $r1,$r6
   d0222:	49 00 10 46 	jal d22ae <AB_queue_push>
   d0226:	46 00 01 00 	sethi $r0,#0x100
   d022a:	58 00 00 b0 	ori $r0,$r0,#0xb0
   d022e:	b4 20       	lwi450 $r1,[$r0]
   d0230:	9e 49       	subi333 $r1,$r1,#1
   d0232:	b6 20       	swi450 $r1,[$r0]
   d0234:	b4 00       	lwi450 $r0,[$r0]
   d0236:	c8 0c       	bnez38 $r0,d024e <hci_send_cmd_ex+0xd4>
   d0238:	46 00 01 00 	sethi $r0,#0x100
   d023c:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d0240:	b4 00       	lwi450 $r0,[$r0]
   d0242:	96 04       	xlsb33 $r0,$r0
   d0244:	c0 05       	beqz38 $r0,d024e <hci_send_cmd_ex+0xd4>
   d0246:	64 12 00 43 	setgie.e
   d024a:	64 00 00 08 	dsb
   d024e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d0250 <hci_send_cmd>:
   d0250:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d0252:	84 80       	movi55 $r4,#0
   d0254:	96 01       	zeh33 $r0,$r0
   d0256:	96 90       	zeb33 $r2,$r2
   d0258:	49 ff ff 91 	jal d017a <hci_send_cmd_ex>
   d025c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d025e <hci_send_acl>:
   d025e:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d0260:	81 21       	mov55 $r9,$r1
   d0262:	40 80 00 13 	zeh $r8,$r0
   d0266:	97 91       	zeh33 $r6,$r2
   d0268:	64 22 00 02 	mfsr $r2,$PSW
   d026c:	64 02 00 43 	setgie.d
   d0270:	64 00 00 08 	dsb
   d0274:	46 10 01 00 	sethi $r1,#0x100
   d0278:	58 10 80 b0 	ori $r1,$r1,#0xb0
   d027c:	b4 01       	lwi450 $r0,[$r1]
   d027e:	9c c1       	addi333 $r3,$r0,#1
   d0280:	b6 61       	swi450 $r3,[$r1]
   d0282:	c8 06       	bnez38 $r0,d028e <hci_send_acl+0x30>
   d0284:	46 00 01 00 	sethi $r0,#0x100
   d0288:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d028c:	b6 40       	swi450 $r2,[$r0]
   d028e:	3e 0f ce d0 	addi.gp $r0,#-12592
   d0292:	a4 00       	lhi333 $r0,[$r0+#0x0]
   d0294:	80 e6       	mov55 $r7,$r6
   d0296:	96 41       	zeh33 $r1,$r0
   d0298:	e2 26       	slt45 $r1,$r6
   d029a:	e8 02       	beqzs8 d029e <hci_send_acl+0x40>
   d029c:	80 e0       	mov55 $r7,$r0
   d029e:	97 f9       	zeh33 $r7,$r7
   d02a0:	80 29       	mov55 $r1,$r9
   d02a2:	80 47       	mov55 $r2,$r7
   d02a4:	9b b7       	sub333 $r6,$r6,$r7
   d02a6:	80 08       	mov55 $r0,$r8
   d02a8:	88 e9       	add45 $r7,$r9
   d02aa:	49 ff ff 35 	jal d0114 <_hci_send_acl>
   d02ae:	97 b1       	zeh33 $r6,$r6
   d02b0:	3e af ce d0 	addi.gp $r10,#-12592
   d02b4:	58 94 00 01 	ori $r9,$r8,#0x1
   d02b8:	d5 12       	j8 d02dc <hci_send_acl+0x7e>
   d02ba:	02 25 00 00 	lhi $r2,[$r10+#0x0]
   d02be:	80 26       	mov55 $r1,$r6
   d02c0:	96 11       	zeh33 $r0,$r2
   d02c2:	e2 06       	slt45 $r0,$r6
   d02c4:	e8 02       	beqzs8 d02c8 <hci_send_acl+0x6a>
   d02c6:	80 22       	mov55 $r1,$r2
   d02c8:	40 80 80 13 	zeh $r8,$r1
   d02cc:	80 09       	mov55 $r0,$r9
   d02ce:	80 27       	mov55 $r1,$r7
   d02d0:	80 48       	mov55 $r2,$r8
   d02d2:	8a c8       	sub45 $r6,$r8
   d02d4:	49 ff ff 20 	jal d0114 <_hci_send_acl>
   d02d8:	97 b1       	zeh33 $r6,$r6
   d02da:	88 e8       	add45 $r7,$r8
   d02dc:	ce ef       	bnez38 $r6,d02ba <hci_send_acl+0x5c>
   d02de:	46 00 01 00 	sethi $r0,#0x100
   d02e2:	58 00 00 b0 	ori $r0,$r0,#0xb0
   d02e6:	b4 20       	lwi450 $r1,[$r0]
   d02e8:	9e 49       	subi333 $r1,$r1,#1
   d02ea:	b6 20       	swi450 $r1,[$r0]
   d02ec:	b4 00       	lwi450 $r0,[$r0]
   d02ee:	c8 0c       	bnez38 $r0,d0306 <hci_send_acl+0xa8>
   d02f0:	46 00 01 00 	sethi $r0,#0x100
   d02f4:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d02f8:	b4 00       	lwi450 $r0,[$r0]
   d02fa:	96 04       	xlsb33 $r0,$r0
   d02fc:	c0 05       	beqz38 $r0,d0306 <hci_send_acl+0xa8>
   d02fe:	64 12 00 43 	setgie.e
   d0302:	64 00 00 08 	dsb
   d0306:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d0308 <hci_cmd_evt_dat_init>:
   d0308:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d030a:	81 42       	mov55 $r10,$r2
   d030c:	80 e3       	mov55 $r7,$r3
   d030e:	97 a0       	zeb33 $r6,$r4
   d0310:	81 01       	mov55 $r8,$r1
   d0312:	81 20       	mov55 $r9,$r0
   d0314:	49 00 10 40 	jal d2394 <AB_queue_alloc>
   d0318:	3c 0f f3 b3 	swi.gp $r0,[+#-12596]
   d031c:	49 00 10 3c 	jal d2394 <AB_queue_alloc>
   d0320:	3c 0f f3 b2 	swi.gp $r0,[+#-12600]
   d0324:	49 00 10 38 	jal d2394 <AB_queue_alloc>
   d0328:	3c 0f f3 b0 	swi.gp $r0,[+#-12608]
   d032c:	3c af f1 a4 	swi.gp $r10,[+#-14704]
   d0330:	80 28       	mov55 $r1,$r8
   d0332:	80 09       	mov55 $r0,$r9
   d0334:	3e 2c c0 52 	addi.gp $r2,#-212910
   d0338:	80 67       	mov55 $r3,$r7
   d033a:	80 86       	mov55 $r4,$r6
   d033c:	49 ff fd cf 	jal cfeda <hci_init>
   d0340:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d0342 <SM_Common_ValueCompare>:
   d0342:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d0344:	84 60       	movi55 $r3,#0
   d0346:	96 90       	zeb33 $r2,$r2
   d0348:	d5 09       	j8 d035a <SM_Common_ValueCompare+0x18>
   d034a:	38 40 8c 00 	lb $r4,[$r1+($r3<<#0x0)]
   d034e:	08 50 00 01 	lbi.bi $r5,[$r0],#0x1
   d0352:	9c d9       	addi333 $r3,$r3,#1
   d0354:	d4 03       	beqs38 $r4,d035a <SM_Common_ValueCompare+0x18>
   d0356:	84 00       	movi55 $r0,#0
   d0358:	d5 05       	j8 d0362 <SM_Common_ValueCompare+0x20>
   d035a:	97 18       	zeb33 $r4,$r3
   d035c:	e2 82       	slt45 $r4,$r2
   d035e:	e9 f6       	bnezs8 d034a <SM_Common_ValueCompare+0x8>
   d0360:	84 01       	movi55 $r0,#1
   d0362:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d0364 <SM_Common_GetRi>:
   d0364:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   d0366:	84 60       	movi55 $r3,#0
   d0368:	b0 81       	addri36.sp $r2,#0x4
   d036a:	ae d3       	sbi333 $r3,[$r2+#0x3]
   d036c:	8c 1f       	addi45 $r0,#31
   d036e:	a6 ca       	lbi333 $r3,[$r1+#0x2]
   d0370:	ae d2       	sbi333 $r3,[$r2+#0x2]
   d0372:	a6 c9       	lbi333 $r3,[$r1+#0x1]
   d0374:	ae d1       	sbi333 $r3,[$r2+#0x1]
   d0376:	a6 48       	lbi333 $r1,[$r1+#0x0]
   d0378:	ae 50       	sbi333 $r1,[$r2+#0x0]
   d037a:	f1 01       	lwi37.sp $r1,[+#0x4]
   d037c:	40 00 80 0d 	srl $r0,$r1,$r0
   d0380:	96 04       	xlsb33 $r0,$r0
   d0382:	c0 04       	beqz38 $r0,d038a <SM_Common_GetRi+0x26>
   d0384:	44 00 00 81 	movi $r0,#129
   d0388:	d5 03       	j8 d038e <SM_Common_GetRi+0x2a>
   d038a:	44 00 00 80 	movi $r0,#128
   d038e:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000d0390 <SM_Common_AllocPairingData>:
   d0390:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d0392:	97 c0       	zeb33 $r7,$r0
   d0394:	44 00 01 18 	movi $r0,#280
   d0398:	49 00 0e 56 	jal d2044 <malloc>
   d039c:	80 c0       	mov55 $r6,$r0
   d039e:	c0 14       	beqz38 $r0,d03c6 <SM_Common_AllocPairingData+0x36>
   d03a0:	84 20       	movi55 $r1,#0
   d03a2:	44 20 01 18 	movi $r2,#280
   d03a6:	49 ff be 71 	jal c8088 <memset>
   d03aa:	80 07       	mov55 $r0,$r7
   d03ac:	49 ff d3 49 	jal caa3e <ble_gap_link_GetAttr_BdAddrType>
   d03b0:	10 03 00 9f 	sbi $r0,[$r6+#0x9f]
   d03b4:	80 07       	mov55 $r0,$r7
   d03b6:	49 ff d3 3a 	jal caa2a <ble_gap_link_GetAttr_BdAddr>
   d03ba:	80 20       	mov55 $r1,$r0
   d03bc:	84 46       	movi55 $r2,#6
   d03be:	50 03 00 98 	addi $r0,$r6,#152
   d03c2:	49 ff be 43 	jal c8048 <memcpy>
   d03c6:	80 06       	mov55 $r0,$r6
   d03c8:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d03ca <AB_ADC_Init>:
   d03ca:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d03cc:	84 00       	movi55 $r0,#0
   d03ce:	49 00 0f f2 	jal d23b2 <AB_SECTOR_GetMpParameter>
   d03d2:	c0 2e       	beqz38 $r0,d042e <AB_ADC_Init+0x64>
   d03d4:	00 10 01 81 	lbi $r1,[$r0+#0x181]
   d03d8:	00 20 01 80 	lbi $r2,[$r0+#0x180]
   d03dc:	40 10 a0 08 	slli $r1,$r1,#8
   d03e0:	fe 57       	or33 $r1,$r2
   d03e2:	c1 26       	beqz38 $r1,d042e <AB_ADC_Init+0x64>
   d03e4:	3c 1b e3 5f 	shi.gp $r1,[+#-14658]
   d03e8:	50 20 01 82 	addi $r2,$r0,#386
   d03ec:	3c 2f f3 b6 	swi.gp $r2,[+#-12584]
   d03f0:	84 60       	movi55 $r3,#0
   d03f2:	a7 10       	lbi333 $r4,[$r2+#0x0]
   d03f4:	c4 19       	beqz38 $r4,d0426 <AB_ADC_Init+0x5c>
   d03f6:	ff 0c       	mul33 $r4,$r1
   d03f8:	44 2f ff ce 	movi $r2,#-50
   d03fc:	40 22 08 96 	divsr $r2,$r4,$r4,$r2
   d0400:	84 83       	movi55 $r4,#3
   d0402:	42 01 90 73 	maddr32 $r0,$r3,$r4
   d0406:	50 00 01 80 	addi $r0,$r0,#384
   d040a:	a6 c3       	lbi333 $r3,[$r0+#0x3]
   d040c:	a6 04       	lbi333 $r0,[$r0+#0x4]
   d040e:	40 00 20 08 	slli $r0,$r0,#8
   d0412:	fe 1f       	or33 $r0,$r3
   d0414:	98 90       	add333 $r2,$r2,$r0
   d0416:	96 93       	seh33 $r2,$r2
   d0418:	3c 2b e3 5e 	shi.gp $r2,[+#-14660]
   d041c:	3e 0d 3a 9c 	addi.gp $r0,#-181604
   d0420:	49 00 0e 87 	jal d212e <printf>
   d0424:	d5 05       	j8 d042e <AB_ADC_Init+0x64>
   d0426:	9c d9       	addi333 $r3,$r3,#1
   d0428:	9c 93       	addi333 $r2,$r2,#3
   d042a:	5a 38 14 e4 	bnec $r3,#20,d03f2 <AB_ADC_Init+0x28>
   d042e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d0430 <AB_CLK_Switch>:
   d0430:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d0432:	80 c0       	mov55 $r6,$r0
   d0434:	84 01       	movi55 $r0,#1
   d0436:	97 c8       	zeb33 $r7,$r1
   d0438:	80 20       	mov55 $r1,$r0
   d043a:	49 00 14 db 	jal d2df0 <DRV_CLK_En>
   d043e:	84 00       	movi55 $r0,#0
   d0440:	49 00 14 a0 	jal d2d80 <DRV_CLK_16MSel>
   d0444:	84 01       	movi55 $r0,#1
   d0446:	49 00 14 71 	jal d2d28 <DRV_CLK_SysSel>
   d044a:	c7 0f       	beqz38 $r7,d0468 <AB_CLK_Switch+0x38>
   d044c:	84 21       	movi55 $r1,#1
   d044e:	84 00       	movi55 $r0,#0
   d0450:	49 00 14 d0 	jal d2df0 <DRV_CLK_En>
   d0454:	84 00       	movi55 $r0,#0
   d0456:	49 00 15 1f 	jal d2e94 <DRV_CLK_Calibration>
   d045a:	84 01       	movi55 $r0,#1
   d045c:	49 00 14 92 	jal d2d80 <DRV_CLK_16MSel>
   d0460:	84 01       	movi55 $r0,#1
   d0462:	84 20       	movi55 $r1,#0
   d0464:	49 00 14 c6 	jal d2df0 <DRV_CLK_En>
   d0468:	e6 c2       	slti45 $r6,#2
   d046a:	e9 05       	bnezs8 d0474 <AB_CLK_Switch+0x44>
   d046c:	84 00       	movi55 $r0,#0
   d046e:	80 20       	mov55 $r1,$r0
   d0470:	49 00 14 a6 	jal d2dbc <DRV_CLK_PLLEn>
   d0474:	5a 60 02 27 	beqc $r6,#2,d04c2 <AB_CLK_Switch+0x92>
   d0478:	e6 c3       	slti45 $r6,#3
   d047a:	e8 05       	beqzs8 d0484 <AB_CLK_Switch+0x54>
   d047c:	c6 0b       	beqz38 $r6,d0492 <AB_CLK_Switch+0x62>
   d047e:	5a 68 01 43 	bnec $r6,#1,d0504 <AB_CLK_Switch+0xd4>
   d0482:	d5 14       	j8 d04aa <AB_CLK_Switch+0x7a>
   d0484:	5a 60 04 2f 	beqc $r6,#4,d04e2 <AB_CLK_Switch+0xb2>
   d0488:	e6 c4       	slti45 $r6,#4
   d048a:	e9 24       	bnezs8 d04d2 <AB_CLK_Switch+0xa2>
   d048c:	5a 68 05 3c 	bnec $r6,#5,d0504 <AB_CLK_Switch+0xd4>
   d0490:	d5 31       	j8 d04f2 <AB_CLK_Switch+0xc2>
   d0492:	84 01       	movi55 $r0,#1
   d0494:	80 26       	mov55 $r1,$r6
   d0496:	49 00 14 93 	jal d2dbc <DRV_CLK_PLLEn>
   d049a:	80 06       	mov55 $r0,$r6
   d049c:	49 00 14 46 	jal d2d28 <DRV_CLK_SysSel>
   d04a0:	46 00 2d c6 	sethi $r0,#0x2dc6
   d04a4:	58 00 0c 00 	ori $r0,$r0,#0xc00
   d04a8:	d5 2c       	j8 d0500 <AB_CLK_Switch+0xd0>
   d04aa:	80 06       	mov55 $r0,$r6
   d04ac:	80 26       	mov55 $r1,$r6
   d04ae:	49 00 14 87 	jal d2dbc <DRV_CLK_PLLEn>
   d04b2:	84 00       	movi55 $r0,#0
   d04b4:	49 00 14 3a 	jal d2d28 <DRV_CLK_SysSel>
   d04b8:	46 00 16 e3 	sethi $r0,#0x16e3
   d04bc:	58 00 06 00 	ori $r0,$r0,#0x600
   d04c0:	d5 20       	j8 d0500 <AB_CLK_Switch+0xd0>
   d04c2:	84 01       	movi55 $r0,#1
   d04c4:	49 00 14 32 	jal d2d28 <DRV_CLK_SysSel>
   d04c8:	46 00 0f 42 	sethi $r0,#0xf42
   d04cc:	58 00 04 00 	ori $r0,$r0,#0x400
   d04d0:	d5 18       	j8 d0500 <AB_CLK_Switch+0xd0>
   d04d2:	84 02       	movi55 $r0,#2
   d04d4:	49 00 14 2a 	jal d2d28 <DRV_CLK_SysSel>
   d04d8:	46 00 07 a1 	sethi $r0,#0x7a1
   d04dc:	58 00 02 00 	ori $r0,$r0,#0x200
   d04e0:	d5 10       	j8 d0500 <AB_CLK_Switch+0xd0>
   d04e2:	84 03       	movi55 $r0,#3
   d04e4:	49 00 14 22 	jal d2d28 <DRV_CLK_SysSel>
   d04e8:	46 00 03 d0 	sethi $r0,#0x3d0
   d04ec:	58 00 09 00 	ori $r0,$r0,#0x900
   d04f0:	d5 08       	j8 d0500 <AB_CLK_Switch+0xd0>
   d04f2:	84 04       	movi55 $r0,#4
   d04f4:	49 00 14 1a 	jal d2d28 <DRV_CLK_SysSel>
   d04f8:	46 00 00 f4 	sethi $r0,#0xf4
   d04fc:	58 00 02 40 	ori $r0,$r0,#0x240
   d0500:	3c 0f f0 2d 	swi.gp $r0,[+#-16204]
   d0504:	3c 1d f0 2d 	lwi.gp $r1,[+#-16204]
   d0508:	46 00 00 f4 	sethi $r0,#0xf4
   d050c:	58 00 02 40 	ori $r0,$r0,#0x240
   d0510:	40 00 80 37 	divr $r0,$r1,$r1,$r0
   d0514:	9e 01       	subi333 $r0,$r0,#1
   d0516:	3c 0f f0 2e 	swi.gp $r0,[+#-16200]
   d051a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d051c <AB_console_handle>:
   d051c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d051e:	80 e0       	mov55 $r7,$r0
   d0520:	97 89       	zeh33 $r6,$r1
   d0522:	d5 09       	j8 d0534 <AB_console_handle+0x18>
   d0524:	08 03 80 01 	lbi.bi $r0,[$r7],#0x1
   d0528:	3e 1f ce dc 	addi.gp $r1,#-12580
   d052c:	9f b1       	subi333 $r6,$r6,#1
   d052e:	49 00 02 e7 	jal d0afc <AB_shell_main_loop>
   d0532:	97 b1       	zeh33 $r6,$r6
   d0534:	ce f8       	bnez38 $r6,d0524 <AB_console_handle+0x8>
   d0536:	2e 07 cf c4 	lbi.gp $r0,[+#-12348]
   d053a:	56 00 00 01 	xori $r0,$r0,#0x1
   d053e:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d0540 <AB_console_init>:
   d0540:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d0542:	3e 3f ce dc 	addi.gp $r3,#-12580
   d0546:	50 31 80 9c 	addi $r3,$r3,#156
   d054a:	84 80       	movi55 $r4,#0
   d054c:	14 41 ff d9 	swi $r4,[$r3+#-0x9c]
   d0550:	14 01 ff da 	swi $r0,[$r3+#-0x98]
   d0554:	a8 5b       	swi333 $r1,[$r3+#0xc]
   d0556:	a8 9d       	swi333 $r2,[$r3+#0x14]
   d0558:	a9 1f       	swi333 $r4,[$r3+#0x1c]
   d055a:	a8 9e       	swi333 $r2,[$r3+#0x18]
   d055c:	af 1e       	sbi333 $r4,[$r3+#0x6]
   d055e:	af 1d       	sbi333 $r4,[$r3+#0x5]
   d0560:	10 41 ff f0 	sbi $r4,[$r3+#-0x10]
   d0564:	a2 13       	lwi333.bi $r0,[$r2],#0xc
   d0566:	9c e1       	addi333 $r3,$r4,#1
   d0568:	80 24       	mov55 $r1,$r4
   d056a:	97 18       	zeb33 $r4,$r3
   d056c:	c8 fc       	bnez38 $r0,d0564 <AB_console_init+0x24>
   d056e:	3e 6f ce dc 	addi.gp $r6,#-12580
   d0572:	50 63 00 b8 	addi $r6,$r6,#184
   d0576:	ae 34       	sbi333 $r0,[$r6+#0x4]
   d0578:	ae 35       	sbi333 $r0,[$r6+#0x5]
   d057a:	ae 36       	sbi333 $r0,[$r6+#0x6]
   d057c:	10 13 7f ea 	sbi $r1,[$r6+#-0x16]
   d0580:	10 13 7f eb 	sbi $r1,[$r6+#-0x15]
   d0584:	44 00 05 00 	movi $r0,#1280
   d0588:	49 00 0d 5e 	jal d2044 <malloc>
   d058c:	a8 32       	swi333 $r0,[$r6+#0x8]
   d058e:	50 03 00 08 	addi $r0,$r6,#8
   d0592:	50 63 00 2c 	addi $r6,$r6,#44
   d0596:	b4 20       	lwi450 $r1,[$r0]
   d0598:	50 10 80 80 	addi $r1,$r1,#128
   d059c:	a8 41       	swi333 $r1,[$r0+#0x4]
   d059e:	9c 04       	addi333 $r0,$r0,#4
   d05a0:	4c 03 7f fb 	bne $r0,$r6,d0596 <AB_console_init+0x56>
   d05a4:	84 20       	movi55 $r1,#0
   d05a6:	3e 0f ce dc 	addi.gp $r0,#-12580
   d05aa:	49 00 05 ba 	jal d111e <AB_shell_main_title>
   d05ae:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d05b0 <shell_parse_line>:
   d05b0:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d05b2:	84 80       	movi55 $r4,#0
   d05b4:	96 49       	zeh33 $r1,$r1
   d05b6:	80 60       	mov55 $r3,$r0
   d05b8:	84 a1       	movi55 $r5,#1
   d05ba:	80 e4       	mov55 $r7,$r4
   d05bc:	d5 3a       	j8 d0630 <shell_parse_line+0x80>
   d05be:	9d 21       	addi333 $r4,$r4,#1
   d05c0:	97 21       	zeh33 $r4,$r4
   d05c2:	af d8       	sbi333 $r7,[$r3+#0x0]
   d05c4:	4c 40 80 3a 	beq $r4,$r1,d0638 <shell_parse_line+0x88>
   d05c8:	9c d9       	addi333 $r3,$r3,#1
   d05ca:	20 61 80 00 	lbsi $r6,[$r3+#0x0]
   d05ce:	3c 9d f0 92 	lwi.gp $r9,[+#-15800]
   d05d2:	89 26       	add45 $r9,$r6
   d05d4:	20 94 80 01 	lbsi $r9,[$r9+#0x1]
   d05d8:	4e 95 00 04 	bltz $r9,d05e0 <shell_parse_line+0x30>
   d05dc:	5a 68 09 04 	bnec $r6,#9,d05e4 <shell_parse_line+0x34>
   d05e0:	e2 81       	slt45 $r4,$r1
   d05e2:	e9 ee       	bnezs8 d05be <shell_parse_line+0xe>
   d05e4:	5a 68 22 16 	bnec $r6,#34,d0610 <shell_parse_line+0x60>
   d05e8:	9c d9       	addi333 $r3,$r3,#1
   d05ea:	9d 21       	addi333 $r4,$r4,#1
   d05ec:	97 21       	zeh33 $r4,$r4
   d05ee:	38 31 02 0a 	sw $r3,[$r2+($r0<<#0x2)]
   d05f2:	d5 04       	j8 d05fa <shell_parse_line+0x4a>
   d05f4:	9d 21       	addi333 $r4,$r4,#1
   d05f6:	9c d9       	addi333 $r3,$r3,#1
   d05f8:	97 21       	zeh33 $r4,$r4
   d05fa:	20 01 80 00 	lbsi $r0,[$r3+#0x0]
   d05fe:	5a 00 22 04 	beqc $r0,#34,d0606 <shell_parse_line+0x56>
   d0602:	e2 81       	slt45 $r4,$r1
   d0604:	e9 f8       	bnezs8 d05f4 <shell_parse_line+0x44>
   d0606:	9d 21       	addi333 $r4,$r4,#1
   d0608:	18 71 80 01 	sbi.bi $r7,[$r3],#0x1
   d060c:	97 21       	zeh33 $r4,$r4
   d060e:	d5 0f       	j8 d062c <shell_parse_line+0x7c>
   d0610:	38 31 02 0a 	sw $r3,[$r2+($r0<<#0x2)]
   d0614:	d5 04       	j8 d061c <shell_parse_line+0x6c>
   d0616:	9d 21       	addi333 $r4,$r4,#1
   d0618:	9c d9       	addi333 $r3,$r3,#1
   d061a:	97 21       	zeh33 $r4,$r4
   d061c:	20 01 80 00 	lbsi $r0,[$r3+#0x0]
   d0620:	5a 00 20 06 	beqc $r0,#32,d062c <shell_parse_line+0x7c>
   d0624:	5a 00 09 04 	beqc $r0,#9,d062c <shell_parse_line+0x7c>
   d0628:	e2 81       	slt45 $r4,$r1
   d062a:	e9 f6       	bnezs8 d0616 <shell_parse_line+0x66>
   d062c:	9d 69       	addi333 $r5,$r5,#1
   d062e:	97 69       	zeh33 $r5,$r5
   d0630:	9e 29       	subi333 $r0,$r5,#1
   d0632:	96 01       	zeh33 $r0,$r0
   d0634:	e2 81       	slt45 $r4,$r1
   d0636:	e9 ca       	bnezs8 d05ca <shell_parse_line+0x1a>
   d0638:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d063a <shell_history_save>:
   d063a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d063c:	80 c0       	mov55 $r6,$r0
   d063e:	00 00 00 bc 	lbi $r0,[$r0+#0xbc]
   d0642:	50 00 00 30 	addi $r0,$r0,#48
   d0646:	38 03 02 02 	lw $r0,[$r6+($r0<<#0x2)]
   d064a:	49 ff bd 4f 	jal c80e8 <strcpy>
   d064e:	00 03 00 bc 	lbi $r0,[$r6+#0xbc]
   d0652:	9c 01       	addi333 $r0,$r0,#1
   d0654:	96 00       	zeb33 $r0,$r0
   d0656:	10 03 00 bc 	sbi $r0,[$r6+#0xbc]
   d065a:	5a 08 0a 05 	bnec $r0,#10,d0664 <shell_history_save+0x2a>
   d065e:	84 00       	movi55 $r0,#0
   d0660:	10 03 00 bc 	sbi $r0,[$r6+#0xbc]
   d0664:	00 03 00 bd 	lbi $r0,[$r6+#0xbd]
   d0668:	5a 00 0a 05 	beqc $r0,#10,d0672 <shell_history_save+0x38>
   d066c:	9c 01       	addi333 $r0,$r0,#1
   d066e:	10 03 00 bd 	sbi $r0,[$r6+#0xbd]
   d0672:	00 03 00 bd 	lbi $r0,[$r6+#0xbd]
   d0676:	10 03 00 be 	sbi $r0,[$r6+#0xbe]
   d067a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d067c <shell_find_cmd>:
   d067c:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   d067e:	96 48       	zeb33 $r1,$r1
   d0680:	80 c0       	mov55 $r6,$r0
   d0682:	80 02       	mov55 $r0,$r2
   d0684:	81 22       	mov55 $r9,$r2
   d0686:	f1 81       	swi37.sp $r1,[+#0x4]
   d0688:	49 ff bd 38 	jal c80f8 <strlen>
   d068c:	81 00       	mov55 $r8,$r0
   d068e:	4e 92 00 19 	beqz $r9,d06c0 <shell_find_cmd+0x44>
   d0692:	c0 17       	beqz38 $r0,d06c0 <shell_find_cmd+0x44>
   d0694:	84 e0       	movi55 $r7,#0
   d0696:	d5 12       	j8 d06ba <shell_find_cmd+0x3e>
   d0698:	b5 46       	lwi450 $r10,[$r6]
   d069a:	83 86       	mov55 $fp,$r6
   d069c:	4e a2 00 12 	beqz $r10,d06c0 <shell_find_cmd+0x44>
   d06a0:	80 0a       	mov55 $r0,$r10
   d06a2:	49 ff bd 2b 	jal c80f8 <strlen>
   d06a6:	4c 04 40 08 	bne $r0,$r8,d06b6 <shell_find_cmd+0x3a>
   d06aa:	80 09       	mov55 $r0,$r9
   d06ac:	80 2a       	mov55 $r1,$r10
   d06ae:	80 48       	mov55 $r2,$r8
   d06b0:	49 ff bd 2a 	jal c8104 <strncmp>
   d06b4:	c0 07       	beqz38 $r0,d06c2 <shell_find_cmd+0x46>
   d06b6:	9d f9       	addi333 $r7,$r7,#1
   d06b8:	8c cc       	addi45 $r6,#12
   d06ba:	f0 01       	lwi37.sp $r0,[+#0x4]
   d06bc:	e0 e0       	slts45 $r7,$r0
   d06be:	e9 ed       	bnezs8 d0698 <shell_find_cmd+0x1c>
   d06c0:	87 80       	movi55 $fp,#0
   d06c2:	80 1c       	mov55 $r0,$fp
   d06c4:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000d06c6 <shell_printf>:
   d06c6:	3a 2f 94 3c 	smw.adm $r2,[$sp],$r5,#0x0    ! {$r2~$r5}
   d06ca:	fc 33       	push25 $r8,#0x98    ! {$r6~$r8, $fp, $gp, $lp}
   d06cc:	81 00       	mov55 $r8,$r0
   d06ce:	b1 c1       	addri36.sp $r7,#0x4
   d06d0:	b0 2c       	addri36.sp $r0,#0xb0
   d06d2:	f0 a5       	swi37.sp $r0,[+#0x94]
   d06d4:	b0 ac       	addri36.sp $r2,#0xb0
   d06d6:	80 07       	mov55 $r0,$r7
   d06d8:	49 00 25 b5 	jal d5242 <vsprintf>
   d06dc:	80 c0       	mov55 $r6,$r0
   d06de:	04 24 00 2a 	lwi $r2,[$r8+#0xa8]
   d06e2:	80 07       	mov55 $r0,$r7
   d06e4:	96 71       	zeh33 $r1,$r6
   d06e6:	dd 22       	jral5 $r2
   d06e8:	80 06       	mov55 $r0,$r6
   d06ea:	ec 98       	addi10.sp #152
   d06ec:	3a 6f a3 84 	lmw.bim $r6,[$sp],$r8,#0xe    ! {$r6~$r8, $fp, $gp, $lp}
   d06f0:	ec 10       	addi10.sp #16
   d06f2:	dd 9e       	ret5 $lp

000d06f4 <shell_history_search>:
   d06f4:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d06f6:	00 20 00 bd 	lbi $r2,[$r0+#0xbd]
   d06fa:	80 c0       	mov55 $r6,$r0
   d06fc:	96 48       	zeb33 $r1,$r1
   d06fe:	c2 64       	beqz38 $r2,d07c6 <shell_history_search+0xd2>
   d0700:	00 00 00 be 	lbi $r0,[$r0+#0xbe]
   d0704:	c1 04       	beqz38 $r1,d070c <shell_history_search+0x18>
   d0706:	c0 60       	beqz38 $r0,d07c6 <shell_history_search+0xd2>
   d0708:	9e 01       	subi333 $r0,$r0,#1
   d070a:	d5 04       	j8 d0712 <shell_history_search+0x1e>
   d070c:	e2 02       	slt45 $r0,$r2
   d070e:	e8 5c       	beqzs8 d07c6 <shell_history_search+0xd2>
   d0710:	9c 01       	addi333 $r0,$r0,#1
   d0712:	10 03 00 be 	sbi $r0,[$r6+#0xbe]
   d0716:	00 03 00 a4 	lbi $r0,[$r6+#0xa4]
   d071a:	c8 0f       	bnez38 $r0,d0738 <shell_history_search+0x44>
   d071c:	d5 21       	j8 d075e <shell_history_search+0x6a>
   d071e:	98 b0       	add333 $r2,$r6,$r0
   d0720:	20 21 00 0c 	lbsi $r2,[$r2+#0xc]
   d0724:	80 06       	mov55 $r0,$r6
   d0726:	3e 1d 3a c4 	addi.gp $r1,#-181564
   d072a:	49 ff ff ce 	jal d06c6 <shell_printf>
   d072e:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   d0732:	9c 01       	addi333 $r0,$r0,#1
   d0734:	10 03 00 a5 	sbi $r0,[$r6+#0xa5]
   d0738:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   d073c:	00 13 00 a4 	lbi $r1,[$r6+#0xa4]
   d0740:	e2 01       	slt45 $r0,$r1
   d0742:	e9 ee       	bnezs8 d071e <shell_history_search+0x2a>
   d0744:	84 e0       	movi55 $r7,#0
   d0746:	d5 08       	j8 d0756 <shell_history_search+0x62>
   d0748:	80 06       	mov55 $r0,$r6
   d074a:	3e 1d 3a c8 	addi.gp $r1,#-181560
   d074e:	9d f9       	addi333 $r7,$r7,#1
   d0750:	49 ff ff bb 	jal d06c6 <shell_printf>
   d0754:	97 f8       	zeb33 $r7,$r7
   d0756:	00 03 00 a4 	lbi $r0,[$r6+#0xa4]
   d075a:	e2 e0       	slt45 $r7,$r0
   d075c:	e9 f6       	bnezs8 d0748 <shell_history_search+0x54>
   d075e:	84 00       	movi55 $r0,#0
   d0760:	10 03 00 a4 	sbi $r0,[$r6+#0xa4]
   d0764:	10 03 00 a5 	sbi $r0,[$r6+#0xa5]
   d0768:	84 20       	movi55 $r1,#0
   d076a:	50 03 00 0c 	addi $r0,$r6,#12
   d076e:	44 20 00 80 	movi $r2,#128
   d0772:	49 ff bc 8b 	jal c8088 <memset>
   d0776:	00 13 00 be 	lbi $r1,[$r6+#0xbe]
   d077a:	00 03 00 bd 	lbi $r0,[$r6+#0xbd]
   d077e:	e2 20       	slt45 $r1,$r0
   d0780:	e8 23       	beqzs8 d07c6 <shell_history_search+0xd2>
   d0782:	5a 08 0a 06 	bnec $r0,#10,d078e <shell_history_search+0x9a>
   d0786:	00 03 00 bc 	lbi $r0,[$r6+#0xbc]
   d078a:	98 48       	add333 $r1,$r1,$r0
   d078c:	96 48       	zeb33 $r1,$r1
   d078e:	e6 2a       	slti45 $r1,#10
   d0790:	e9 03       	bnezs8 d0796 <shell_history_search+0xa2>
   d0792:	8e 2a       	subi45 $r1,#10
   d0794:	96 48       	zeb33 $r1,$r1
   d0796:	50 80 80 30 	addi $r8,$r1,#48
   d079a:	38 13 22 02 	lw $r1,[$r6+($r8<<#0x2)]
   d079e:	50 73 00 0c 	addi $r7,$r6,#12
   d07a2:	80 07       	mov55 $r0,$r7
   d07a4:	49 ff bc a2 	jal c80e8 <strcpy>
   d07a8:	38 03 22 02 	lw $r0,[$r6+($r8<<#0x2)]
   d07ac:	49 ff bc a6 	jal c80f8 <strlen>
   d07b0:	96 40       	zeb33 $r1,$r0
   d07b2:	10 13 00 a4 	sbi $r1,[$r6+#0xa4]
   d07b6:	10 13 00 a5 	sbi $r1,[$r6+#0xa5]
   d07ba:	80 06       	mov55 $r0,$r6
   d07bc:	3e 1d 3c 9c 	addi.gp $r1,#-181092
   d07c0:	80 47       	mov55 $r2,$r7
   d07c2:	49 ff ff 82 	jal d06c6 <shell_printf>
   d07c6:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d07c8 <shell_show_title>:
   d07c8:	fc 49       	push25 $r10,#0x48    ! {$r6~$r10, $fp, $gp, $lp}
   d07ca:	b4 20       	lwi450 $r1,[$r0]
   d07cc:	81 00       	mov55 $r8,$r0
   d07ce:	c9 04       	bnez38 $r1,d07d6 <shell_show_title+0xe>
   d07d0:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d07d2:	48 00 01 92 	j d0af6 <shell_show_title+0x32e>
   d07d6:	85 e1       	movi55 $r15,#1
   d07d8:	4c 17 c1 6c 	bne $r1,$r15,d0ab0 <shell_show_title+0x2e8>
   d07dc:	3e 1d 3a cc 	addi.gp $r1,#-181556
   d07e0:	04 a0 00 2c 	lwi $r10,[$r0+#0xb0]
   d07e4:	49 ff ff 71 	jal d06c6 <shell_printf>
   d07e8:	00 34 00 a1 	lbi $r3,[$r8+#0xa1]
   d07ec:	50 14 00 8c 	addi $r1,$r8,#140
   d07f0:	84 00       	movi55 $r0,#0
   d07f2:	84 4c       	movi55 $r2,#12
   d07f4:	d5 09       	j8 d0806 <shell_show_title+0x3e>
   d07f6:	08 40 80 01 	lbi.bi $r4,[$r1],#0x1
   d07fa:	9c 01       	addi333 $r0,$r0,#1
   d07fc:	42 a2 08 73 	maddr32 $r10,$r4,$r2
   d0800:	96 00       	zeb33 $r0,$r0
   d0802:	04 a5 00 02 	lwi $r10,[$r10+#0x8]
   d0806:	4c 01 ff f8 	bne $r0,$r3,d07f6 <shell_show_title+0x2e>
   d080a:	88 08       	add45 $r0,$r8
   d080c:	00 00 00 8c 	lbi $r0,[$r0+#0x8c]
   d0810:	84 2a       	movi55 $r1,#10
   d0812:	40 00 04 57 	divr $r0,$r2,$r0,$r1
   d0816:	00 24 00 a3 	lbi $r2,[$r8+#0xa3]
   d081a:	80 62       	mov55 $r3,$r2
   d081c:	96 00       	zeb33 $r0,$r0
   d081e:	42 90 04 24 	mul $r9,$r0,$r1
   d0822:	9c 01       	addi333 $r0,$r0,#1
   d0824:	fe 0c       	mul33 $r0,$r1
   d0826:	96 40       	zeb33 $r1,$r0
   d0828:	54 94 80 ff 	andi $r9,$r9,#0xff
   d082c:	e2 61       	slt45 $r3,$r1
   d082e:	e8 02       	beqzs8 d0832 <shell_show_title+0x6a>
   d0830:	80 02       	mov55 $r0,$r2
   d0832:	96 00       	zeb33 $r0,$r0
   d0834:	f0 81       	swi37.sp $r0,[+#0x4]
   d0836:	b1 cf       	addri36.sp $r7,#0x3c
   d0838:	b1 82       	addri36.sp $r6,#0x8
   d083a:	48 00 00 5b 	j d08f0 <shell_show_title+0x128>
   d083e:	84 0c       	movi55 $r0,#12
   d0840:	83 8a       	mov55 $fp,$r10
   d0842:	43 c4 80 73 	maddr32 $fp,$r9,$r0
   d0846:	b8 02       	lwi37 $r0,[$fp+#0x8]
   d0848:	c0 05       	beqz38 $r0,d0852 <shell_show_title+0x8a>
   d084a:	80 07       	mov55 $r0,$r7
   d084c:	3e 1d 3a d4 	addi.gp $r1,#-181548
   d0850:	d5 04       	j8 d0858 <shell_show_title+0x90>
   d0852:	80 07       	mov55 $r0,$r7
   d0854:	3e 1d 3a e4 	addi.gp $r1,#-181532
   d0858:	80 49       	mov55 $r2,$r9
   d085a:	49 00 24 b3 	jal d51c0 <sprintf>
   d085e:	3e 1d 3a f4 	addi.gp $r1,#-181516
   d0862:	80 06       	mov55 $r0,$r6
   d0864:	49 ff bc 42 	jal c80e8 <strcpy>
   d0868:	05 ce 00 00 	lwi $fp,[$fp+#0x0]
   d086c:	80 1c       	mov55 $r0,$fp
   d086e:	49 ff bc 45 	jal c80f8 <strlen>
   d0872:	80 40       	mov55 $r2,$r0
   d0874:	80 3c       	mov55 $r1,$fp
   d0876:	80 06       	mov55 $r0,$r6
   d0878:	49 ff bb e8 	jal c8048 <memcpy>
   d087c:	84 2a       	movi55 $r1,#10
   d087e:	40 04 84 57 	divr $r0,$r2,$r9,$r1
   d0882:	fa 78       	movpi45 $r3,#0x28
   d0884:	3e 1d 3b 1c 	addi.gp $r1,#-181476
   d0888:	80 08       	mov55 $r0,$r8
   d088a:	8c 54       	addi45 $r2,#20
   d088c:	49 ff ff 1d 	jal d06c6 <shell_printf>
   d0890:	80 08       	mov55 $r0,$r8
   d0892:	80 27       	mov55 $r1,$r7
   d0894:	49 ff ff 19 	jal d06c6 <shell_printf>
   d0898:	00 04 00 a1 	lbi $r0,[$r8+#0xa1]
   d089c:	88 08       	add45 $r0,$r8
   d089e:	00 00 00 8c 	lbi $r0,[$r0+#0x8c]
   d08a2:	4c 04 c0 0e 	bne $r0,$r9,d08be <shell_show_title+0xf6>
   d08a6:	3e 1d 4c 54 	addi.gp $r1,#-177068
   d08aa:	fa 4e       	movpi45 $r2,#0x1e
   d08ac:	80 08       	mov55 $r0,$r8
   d08ae:	49 ff ff 0c 	jal d06c6 <shell_printf>
   d08b2:	80 08       	mov55 $r0,$r8
   d08b4:	3e 1d 4c 54 	addi.gp $r1,#-177068
   d08b8:	fa 5f       	movpi45 $r2,#0x2f
   d08ba:	49 ff ff 06 	jal d06c6 <shell_printf>
   d08be:	80 08       	mov55 $r0,$r8
   d08c0:	80 26       	mov55 $r1,$r6
   d08c2:	49 ff ff 02 	jal d06c6 <shell_printf>
   d08c6:	00 04 00 a1 	lbi $r0,[$r8+#0xa1]
   d08ca:	88 08       	add45 $r0,$r8
   d08cc:	00 00 00 8c 	lbi $r0,[$r0+#0x8c]
   d08d0:	4c 04 c0 08 	bne $r0,$r9,d08e0 <shell_show_title+0x118>
   d08d4:	80 08       	mov55 $r0,$r8
   d08d6:	3e 1d 4c 54 	addi.gp $r1,#-177068
   d08da:	84 40       	movi55 $r2,#0
   d08dc:	49 ff fe f5 	jal d06c6 <shell_printf>
   d08e0:	80 08       	mov55 $r0,$r8
   d08e2:	3e 1d 3b 28 	addi.gp $r1,#-181464
   d08e6:	8d 21       	addi45 $r9,#1
   d08e8:	49 ff fe ef 	jal d06c6 <shell_printf>
   d08ec:	54 94 80 ff 	andi $r9,$r9,#0xff
   d08f0:	f2 01       	lwi37.sp $r2,[+#0x4]
   d08f2:	e3 22       	slt45 $r9,$r2
   d08f4:	e9 a5       	bnezs8 d083e <shell_show_title+0x76>
   d08f6:	00 54 00 a3 	lbi $r5,[$r8+#0xa3]
   d08fa:	4c 92 c0 13 	bne $r9,$r5,d0920 <shell_show_title+0x158>
   d08fe:	84 4a       	movi55 $r2,#10
   d0900:	40 04 89 37 	divr $r0,$r9,$r9,$r2
   d0904:	54 94 80 ff 	andi $r9,$r9,#0xff
   d0908:	4e 92 00 03 	beqz $r9,d090e <shell_show_title+0x146>
   d090c:	84 40       	movi55 $r2,#0
   d090e:	8d 34       	addi45 $r9,#20
   d0910:	80 08       	mov55 $r0,$r8
   d0912:	3e 1d 3b 2c 	addi.gp $r1,#-181460
   d0916:	88 49       	add45 $r2,$r9
   d0918:	fa 78       	movpi45 $r3,#0x28
   d091a:	49 ff fe d6 	jal d06c6 <shell_printf>
   d091e:	d5 11       	j8 d0940 <shell_show_title+0x178>
   d0920:	84 4a       	movi55 $r2,#10
   d0922:	40 94 88 57 	divr $r9,$r2,$r9,$r2
   d0926:	00 04 00 a1 	lbi $r0,[$r8+#0xa1]
   d092a:	3e 1d 3b 68 	addi.gp $r1,#-181400
   d092e:	88 08       	add45 $r0,$r8
   d0930:	00 40 00 8c 	lbi $r4,[$r0+#0x8c]
   d0934:	fa 78       	movpi45 $r3,#0x28
   d0936:	80 08       	mov55 $r0,$r8
   d0938:	9d 21       	addi333 $r4,$r4,#1
   d093a:	8c 5e       	addi45 $r2,#30
   d093c:	49 ff fe c5 	jal d06c6 <shell_printf>
   d0940:	3e 1d 3b 2c 	addi.gp $r1,#-181460
   d0944:	84 4d       	movi55 $r2,#13
   d0946:	fa 78       	movpi45 $r3,#0x28
   d0948:	80 08       	mov55 $r0,$r8
   d094a:	49 ff fe be 	jal d06c6 <shell_printf>
   d094e:	3e 1d 3b a4 	addi.gp $r1,#-181340
   d0952:	fa 40       	movpi45 $r2,#0x10
   d0954:	fa 78       	movpi45 $r3,#0x28
   d0956:	80 08       	mov55 $r0,$r8
   d0958:	49 ff fe b7 	jal d06c6 <shell_printf>
   d095c:	3e 1d 3b e0 	addi.gp $r1,#-181280
   d0960:	84 4f       	movi55 $r2,#15
   d0962:	fa 78       	movpi45 $r3,#0x28
   d0964:	80 08       	mov55 $r0,$r8
   d0966:	49 ff fe b0 	jal d06c6 <shell_printf>
   d096a:	3e 1d 3c 1c 	addi.gp $r1,#-181220
   d096e:	84 4e       	movi55 $r2,#14
   d0970:	fa 78       	movpi45 $r3,#0x28
   d0972:	80 08       	mov55 $r0,$r8
   d0974:	49 ff fe a9 	jal d06c6 <shell_printf>
   d0978:	3e 1d 3b 2c 	addi.gp $r1,#-181460
   d097c:	fa 41       	movpi45 $r2,#0x11
   d097e:	fa 78       	movpi45 $r3,#0x28
   d0980:	80 08       	mov55 $r0,$r8
   d0982:	49 ff fe a2 	jal d06c6 <shell_printf>
   d0986:	3e 1d 3b 2c 	addi.gp $r1,#-181460
   d098a:	fa 43       	movpi45 $r2,#0x13
   d098c:	fa 78       	movpi45 $r3,#0x28
   d098e:	80 08       	mov55 $r0,$r8
   d0990:	49 ff fe 9b 	jal d06c6 <shell_printf>
   d0994:	3e 1d 3c 58 	addi.gp $r1,#-181160
   d0998:	fa 42       	movpi45 $r2,#0x12
   d099a:	fa 78       	movpi45 $r3,#0x28
   d099c:	80 08       	mov55 $r0,$r8
   d099e:	49 ff fe 94 	jal d06c6 <shell_printf>
   d09a2:	04 44 00 01 	lwi $r4,[$r8+#0x4]
   d09a6:	80 08       	mov55 $r0,$r8
   d09a8:	3e 1d 3c 94 	addi.gp $r1,#-181100
   d09ac:	fa 42       	movpi45 $r2,#0x12
   d09ae:	fa 7a       	movpi45 $r3,#0x2a
   d09b0:	49 ff fe 8b 	jal d06c6 <shell_printf>
   d09b4:	84 00       	movi55 $r0,#0
   d09b6:	04 64 00 2c 	lwi $r6,[$r8+#0xb0]
   d09ba:	10 04 00 a4 	sbi $r0,[$r8+#0xa4]
   d09be:	84 e0       	movi55 $r7,#0
   d09c0:	85 2c       	movi55 $r9,#12
   d09c2:	45 c0 00 20 	movi $fp,#32
   d09c6:	d5 32       	j8 d0a2a <shell_show_title+0x262>
   d09c8:	40 a4 1c 00 	add $r10,$r8,$r7
   d09cc:	50 a5 00 88 	addi $r10,$r10,#136
   d09d0:	00 25 00 04 	lbi $r2,[$r10+#0x4]
   d09d4:	80 06       	mov55 $r0,$r6
   d09d6:	42 01 24 73 	maddr32 $r0,$r2,$r9
   d09da:	3e 1d 3c a0 	addi.gp $r1,#-181088
   d09de:	80 40       	mov55 $r2,$r0
   d09e0:	b4 42       	lwi450 $r2,[$r2]
   d09e2:	80 08       	mov55 $r0,$r8
   d09e4:	49 ff fe 71 	jal d06c6 <shell_printf>
   d09e8:	00 15 00 04 	lbi $r1,[$r10+#0x4]
   d09ec:	80 46       	mov55 $r2,$r6
   d09ee:	42 20 a4 73 	maddr32 $r2,$r1,$r9
   d09f2:	00 04 00 a4 	lbi $r0,[$r8+#0xa4]
   d09f6:	b4 22       	lwi450 $r1,[$r2]
   d09f8:	88 08       	add45 $r0,$r8
   d09fa:	8c 0c       	addi45 $r0,#12
   d09fc:	49 ff bb 76 	jal c80e8 <strcpy>
   d0a00:	00 05 00 04 	lbi $r0,[$r10+#0x4]
   d0a04:	9d f9       	addi333 $r7,$r7,#1
   d0a06:	42 60 24 73 	maddr32 $r6,$r0,$r9
   d0a0a:	97 f8       	zeb33 $r7,$r7
   d0a0c:	b4 06       	lwi450 $r0,[$r6]
   d0a0e:	49 ff bb 75 	jal c80f8 <strlen>
   d0a12:	00 14 00 a4 	lbi $r1,[$r8+#0xa4]
   d0a16:	98 01       	add333 $r0,$r0,$r1
   d0a18:	96 00       	zeb33 $r0,$r0
   d0a1a:	40 14 00 00 	add $r1,$r8,$r0
   d0a1e:	9c 01       	addi333 $r0,$r0,#1
   d0a20:	11 c0 80 0c 	sbi $fp,[$r1+#0xc]
   d0a24:	10 04 00 a4 	sbi $r0,[$r8+#0xa4]
   d0a28:	a1 b2       	lwi333 $r6,[$r6+#0x8]
   d0a2a:	00 04 00 a1 	lbi $r0,[$r8+#0xa1]
   d0a2e:	e2 e0       	slt45 $r7,$r0
   d0a30:	e9 cc       	bnezs8 d09c8 <shell_show_title+0x200>
   d0a32:	88 08       	add45 $r0,$r8
   d0a34:	00 10 00 8c 	lbi $r1,[$r0+#0x8c]
   d0a38:	84 ec       	movi55 $r7,#12
   d0a3a:	80 06       	mov55 $r0,$r6
   d0a3c:	42 00 9c 73 	maddr32 $r0,$r1,$r7
   d0a40:	80 20       	mov55 $r1,$r0
   d0a42:	b4 21       	lwi450 $r1,[$r1]
   d0a44:	80 08       	mov55 $r0,$r8
   d0a46:	49 ff fe 40 	jal d06c6 <shell_printf>
   d0a4a:	00 14 00 a1 	lbi $r1,[$r8+#0xa1]
   d0a4e:	80 46       	mov55 $r2,$r6
   d0a50:	88 28       	add45 $r1,$r8
   d0a52:	00 10 80 8c 	lbi $r1,[$r1+#0x8c]
   d0a56:	00 04 00 a4 	lbi $r0,[$r8+#0xa4]
   d0a5a:	42 20 9c 73 	maddr32 $r2,$r1,$r7
   d0a5e:	88 08       	add45 $r0,$r8
   d0a60:	b4 22       	lwi450 $r1,[$r2]
   d0a62:	98 07       	add333 $r0,$r0,$r7
   d0a64:	49 ff bb 42 	jal c80e8 <strcpy>
   d0a68:	00 04 00 a1 	lbi $r0,[$r8+#0xa1]
   d0a6c:	88 08       	add45 $r0,$r8
   d0a6e:	00 00 00 8c 	lbi $r0,[$r0+#0x8c]
   d0a72:	42 60 1c 73 	maddr32 $r6,$r0,$r7
   d0a76:	b4 06       	lwi450 $r0,[$r6]
   d0a78:	49 ff bb 40 	jal c80f8 <strlen>
   d0a7c:	00 14 00 a4 	lbi $r1,[$r8+#0xa4]
   d0a80:	98 01       	add333 $r0,$r0,$r1
   d0a82:	96 00       	zeb33 $r0,$r0
   d0a84:	10 04 00 a4 	sbi $r0,[$r8+#0xa4]
   d0a88:	10 04 00 a5 	sbi $r0,[$r8+#0xa5]
   d0a8c:	3e 1d 3c a4 	addi.gp $r1,#-181084
   d0a90:	80 08       	mov55 $r0,$r8
   d0a92:	49 ff fe 1a 	jal d06c6 <shell_printf>
   d0a96:	80 08       	mov55 $r0,$r8
   d0a98:	3e 1d 3c ac 	addi.gp $r1,#-181076
   d0a9c:	49 ff fe 15 	jal d06c6 <shell_printf>
   d0aa0:	84 40       	movi55 $r2,#0
   d0aa2:	80 08       	mov55 $r0,$r8
   d0aa4:	3e 1d 3b 1c 	addi.gp $r1,#-181476
   d0aa8:	80 62       	mov55 $r3,$r2
   d0aaa:	49 ff fe 0e 	jal d06c6 <shell_printf>
   d0aae:	d5 26       	j8 d0afa <shell_show_title+0x332>
   d0ab0:	5a 18 02 1f 	bnec $r1,#2,d0aee <shell_show_title+0x326>
   d0ab4:	3e 1d 3b a4 	addi.gp $r1,#-181340
   d0ab8:	fa 40       	movpi45 $r2,#0x10
   d0aba:	fa 78       	movpi45 $r3,#0x28
   d0abc:	49 ff fe 05 	jal d06c6 <shell_printf>
   d0ac0:	3e 1d 3b e0 	addi.gp $r1,#-181280
   d0ac4:	84 4f       	movi55 $r2,#15
   d0ac6:	fa 78       	movpi45 $r3,#0x28
   d0ac8:	80 08       	mov55 $r0,$r8
   d0aca:	49 ff fd fe 	jal d06c6 <shell_printf>
   d0ace:	3e 1d 3c b4 	addi.gp $r1,#-181068
   d0ad2:	84 4e       	movi55 $r2,#14
   d0ad4:	fa 78       	movpi45 $r3,#0x28
   d0ad6:	80 08       	mov55 $r0,$r8
   d0ad8:	49 ff fd f7 	jal d06c6 <shell_printf>
   d0adc:	3e 1d 3c f0 	addi.gp $r1,#-181008
   d0ae0:	80 08       	mov55 $r0,$r8
   d0ae2:	49 ff fd f2 	jal d06c6 <shell_printf>
   d0ae6:	80 08       	mov55 $r0,$r8
   d0ae8:	3e 1d 3c f8 	addi.gp $r1,#-181000
   d0aec:	d5 05       	j8 d0af6 <shell_show_title+0x32e>
   d0aee:	5a 18 03 06 	bnec $r1,#3,d0afa <shell_show_title+0x332>
   d0af2:	3e 1d 3d 00 	addi.gp $r1,#-180992
   d0af6:	49 ff fd e8 	jal d06c6 <shell_printf>
   d0afa:	fc c9       	pop25 $r10,#0x48    ! {$r6~$r10, $fp, $gp, $lp}

000d0afc <AB_shell_main_loop>:
   d0afc:	fc 4c       	push25 $r10,#0x60    ! {$r6~$r10, $fp, $gp, $lp}
   d0afe:	97 c0       	zeb33 $r7,$r0
   d0b00:	00 00 80 e8 	lbi $r0,[$r1+#0xe8]
   d0b04:	80 c1       	mov55 $r6,$r1
   d0b06:	05 c0 80 00 	lwi $fp,[$r1+#0x0]
   d0b0a:	4e 03 03 06 	bnez $r0,d1116 <AB_shell_main_loop+0x61a>
   d0b0e:	5a 78 1b 09 	bnec $r7,#27,d0b20 <AB_shell_main_loop+0x24>
   d0b12:	a0 4a       	lwi333 $r1,[$r1+#0x8]
   d0b14:	5a 10 01 06 	beqc $r1,#1,d0b20 <AB_shell_main_loop+0x24>
   d0b18:	84 21       	movi55 $r1,#1
   d0b1a:	a8 72       	swi333 $r1,[$r6+#0x8]
   d0b1c:	48 00 03 00 	j d111c <AB_shell_main_loop+0x620>
   d0b20:	a0 32       	lwi333 $r0,[$r6+#0x8]
   d0b22:	84 21       	movi55 $r1,#1
   d0b24:	5a 08 01 27 	bnec $r0,#1,d0b72 <AB_shell_main_loop+0x76>
   d0b28:	5a 78 5b 06 	bnec $r7,#91,d0b34 <AB_shell_main_loop+0x38>
   d0b2c:	84 02       	movi55 $r0,#2
   d0b2e:	a8 32       	swi333 $r0,[$r6+#0x8]
   d0b30:	48 00 02 f5 	j d111a <AB_shell_main_loop+0x61e>
   d0b34:	5a 78 1b 1b 	bnec $r7,#27,d0b6a <AB_shell_main_loop+0x6e>
   d0b38:	b4 46       	lwi450 $r2,[$r6]
   d0b3a:	84 20       	movi55 $r1,#0
   d0b3c:	a8 72       	swi333 $r1,[$r6+#0x8]
   d0b3e:	ca 03       	bnez38 $r2,d0b44 <AB_shell_main_loop+0x48>
   d0b40:	b6 06       	swi450 $r0,[$r6]
   d0b42:	d5 02       	j8 d0b46 <AB_shell_main_loop+0x4a>
   d0b44:	b6 26       	swi450 $r1,[$r6]
   d0b46:	84 00       	movi55 $r0,#0
   d0b48:	10 03 00 a4 	sbi $r0,[$r6+#0xa4]
   d0b4c:	10 03 00 a5 	sbi $r0,[$r6+#0xa5]
   d0b50:	50 03 00 0c 	addi $r0,$r6,#12
   d0b54:	44 20 00 80 	movi $r2,#128
   d0b58:	49 ff ba 98 	jal c8088 <memset>
   d0b5c:	80 06       	mov55 $r0,$r6
   d0b5e:	3e 1d 3d 04 	addi.gp $r1,#-180988
   d0b62:	49 ff fd b2 	jal d06c6 <shell_printf>
   d0b66:	48 00 02 d4 	j d110e <AB_shell_main_loop+0x612>
   d0b6a:	84 00       	movi55 $r0,#0
   d0b6c:	a8 32       	swi333 $r0,[$r6+#0x8]
   d0b6e:	48 00 01 17 	j d0d9c <AB_shell_main_loop+0x2a0>
   d0b72:	85 e2       	movi55 $r15,#2
   d0b74:	4c 07 c0 b8 	bne $r0,$r15,d0ce4 <AB_shell_main_loop+0x1e8>
   d0b78:	85 00       	movi55 $r8,#0
   d0b7a:	14 83 00 02 	swi $r8,[$r6+#0x8]
   d0b7e:	5a 70 42 23 	beqc $r7,#66,d0bc4 <AB_shell_main_loop+0xc8>
   d0b82:	5c f3 80 43 	slti $r15,$r7,#67
   d0b86:	e8 06       	beqzs8 d0b92 <AB_shell_main_loop+0x96>
   d0b88:	5a 70 41 04 	beqc $r7,#65,d0b90 <AB_shell_main_loop+0x94>
   d0b8c:	48 00 02 c7 	j d111a <AB_shell_main_loop+0x61e>
   d0b90:	d5 08       	j8 d0ba0 <AB_shell_main_loop+0xa4>
   d0b92:	5a 70 43 66 	beqc $r7,#67,d0c5e <AB_shell_main_loop+0x162>
   d0b96:	5a 70 44 04 	beqc $r7,#68,d0b9e <AB_shell_main_loop+0xa2>
   d0b9a:	48 00 02 c0 	j d111a <AB_shell_main_loop+0x61e>
   d0b9e:	d5 2c       	j8 d0bf6 <AB_shell_main_loop+0xfa>
   d0ba0:	b4 06       	lwi450 $r0,[$r6]
   d0ba2:	5a 00 01 04 	beqc $r0,#1,d0baa <AB_shell_main_loop+0xae>
   d0ba6:	80 06       	mov55 $r0,$r6
   d0ba8:	d5 13       	j8 d0bce <AB_shell_main_loop+0xd2>
   d0baa:	00 03 00 a1 	lbi $r0,[$r6+#0xa1]
   d0bae:	98 30       	add333 $r0,$r6,$r0
   d0bb0:	50 00 00 88 	addi $r0,$r0,#136
   d0bb4:	a6 44       	lbi333 $r1,[$r0+#0x4]
   d0bb6:	c9 03       	bnez38 $r1,d0bbc <AB_shell_main_loop+0xc0>
   d0bb8:	00 13 00 a3 	lbi $r1,[$r6+#0xa3]
   d0bbc:	9e 49       	subi333 $r1,$r1,#1
   d0bbe:	ae 44       	sbi333 $r1,[$r0+#0x4]
   d0bc0:	48 00 02 a7 	j d110e <AB_shell_main_loop+0x612>
   d0bc4:	b4 06       	lwi450 $r0,[$r6]
   d0bc6:	5a 00 01 07 	beqc $r0,#1,d0bd4 <AB_shell_main_loop+0xd8>
   d0bca:	80 06       	mov55 $r0,$r6
   d0bcc:	80 28       	mov55 $r1,$r8
   d0bce:	49 ff fd 93 	jal d06f4 <shell_history_search>
   d0bd2:	d5 5d       	j8 d0c8c <AB_shell_main_loop+0x190>
   d0bd4:	00 03 00 a1 	lbi $r0,[$r6+#0xa1]
   d0bd8:	00 23 00 a3 	lbi $r2,[$r6+#0xa3]
   d0bdc:	98 30       	add333 $r0,$r6,$r0
   d0bde:	50 00 00 88 	addi $r0,$r0,#136
   d0be2:	a6 44       	lbi333 $r1,[$r0+#0x4]
   d0be4:	9c 49       	addi333 $r1,$r1,#1
   d0be6:	ae 44       	sbi333 $r1,[$r0+#0x4]
   d0be8:	96 48       	zeb33 $r1,$r1
   d0bea:	4c 11 42 92 	bne $r1,$r2,d110e <AB_shell_main_loop+0x612>
   d0bee:	10 80 00 04 	sbi $r8,[$r0+#0x4]
   d0bf2:	48 00 02 8e 	j d110e <AB_shell_main_loop+0x612>
   d0bf6:	b4 06       	lwi450 $r0,[$r6]
   d0bf8:	5a 00 01 0f 	beqc $r0,#1,d0c16 <AB_shell_main_loop+0x11a>
   d0bfc:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   d0c00:	4e 02 02 8d 	beqz $r0,d111a <AB_shell_main_loop+0x61e>
   d0c04:	80 06       	mov55 $r0,$r6
   d0c06:	3e 1d 3d 10 	addi.gp $r1,#-180976
   d0c0a:	49 ff fd 5e 	jal d06c6 <shell_printf>
   d0c0e:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   d0c12:	9e 01       	subi333 $r0,$r0,#1
   d0c14:	d5 3a       	j8 d0c88 <AB_shell_main_loop+0x18c>
   d0c16:	00 33 00 a1 	lbi $r3,[$r6+#0xa1]
   d0c1a:	04 13 00 2c 	lwi $r1,[$r6+#0xb0]
   d0c1e:	4e 32 02 7e 	beqz $r3,d111a <AB_shell_main_loop+0x61e>
   d0c22:	9e d9       	subi333 $r3,$r3,#1
   d0c24:	96 d8       	zeb33 $r3,$r3
   d0c26:	10 33 00 a1 	sbi $r3,[$r6+#0xa1]
   d0c2a:	50 23 00 8c 	addi $r2,$r6,#140
   d0c2e:	84 8c       	movi55 $r4,#12
   d0c30:	d5 09       	j8 d0c42 <AB_shell_main_loop+0x146>
   d0c32:	08 01 00 01 	lbi.bi $r0,[$r2],#0x1
   d0c36:	8d 01       	addi45 $r8,#1
   d0c38:	42 10 10 73 	maddr32 $r1,$r0,$r4
   d0c3c:	54 84 00 ff 	andi $r8,$r8,#0xff
   d0c40:	a0 4a       	lwi333 $r1,[$r1+#0x8]
   d0c42:	e3 03       	slt45 $r8,$r3
   d0c44:	e9 f7       	bnezs8 d0c32 <AB_shell_main_loop+0x136>
   d0c46:	14 13 00 2d 	swi $r1,[$r6+#0xb4]
   d0c4a:	84 00       	movi55 $r0,#0
   d0c4c:	d5 04       	j8 d0c54 <AB_shell_main_loop+0x158>
   d0c4e:	00 03 00 a3 	lbi $r0,[$r6+#0xa3]
   d0c52:	9c 01       	addi333 $r0,$r0,#1
   d0c54:	10 03 00 a3 	sbi $r0,[$r6+#0xa3]
   d0c58:	a3 cb       	lwi333.bi $r7,[$r1],#0xc
   d0c5a:	cf fa       	bnez38 $r7,d0c4e <AB_shell_main_loop+0x152>
   d0c5c:	d5 3e       	j8 d0cd8 <AB_shell_main_loop+0x1dc>
   d0c5e:	b4 06       	lwi450 $r0,[$r6]
   d0c60:	5a 00 01 19 	beqc $r0,#1,d0c92 <AB_shell_main_loop+0x196>
   d0c64:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   d0c68:	00 13 00 a4 	lbi $r1,[$r6+#0xa4]
   d0c6c:	e2 01       	slt45 $r0,$r1
   d0c6e:	4e f2 02 56 	beqz $r15,d111a <AB_shell_main_loop+0x61e>
   d0c72:	98 b0       	add333 $r2,$r6,$r0
   d0c74:	20 21 00 0c 	lbsi $r2,[$r2+#0xc]
   d0c78:	80 06       	mov55 $r0,$r6
   d0c7a:	3e 1d 3a c4 	addi.gp $r1,#-181564
   d0c7e:	49 ff fd 24 	jal d06c6 <shell_printf>
   d0c82:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   d0c86:	9c 01       	addi333 $r0,$r0,#1
   d0c88:	10 03 00 a5 	sbi $r0,[$r6+#0xa5]
   d0c8c:	80 08       	mov55 $r0,$r8
   d0c8e:	48 00 02 47 	j d111c <AB_shell_main_loop+0x620>
   d0c92:	00 23 00 a1 	lbi $r2,[$r6+#0xa1]
   d0c96:	84 2c       	movi55 $r1,#12
   d0c98:	80 02       	mov55 $r0,$r2
   d0c9a:	98 30       	add333 $r0,$r6,$r0
   d0c9c:	00 30 00 8c 	lbi $r3,[$r0+#0x8c]
   d0ca0:	04 03 00 2d 	lwi $r0,[$r6+#0xb4]
   d0ca4:	42 01 84 73 	maddr32 $r0,$r3,$r1
   d0ca8:	a0 42       	lwi333 $r1,[$r0+#0x8]
   d0caa:	4e 12 02 38 	beqz $r1,d111a <AB_shell_main_loop+0x61e>
   d0cae:	9c 11       	addi333 $r0,$r2,#1
   d0cb0:	96 00       	zeb33 $r0,$r0
   d0cb2:	10 03 00 a1 	sbi $r0,[$r6+#0xa1]
   d0cb6:	98 30       	add333 $r0,$r6,$r0
   d0cb8:	50 00 00 88 	addi $r0,$r0,#136
   d0cbc:	14 13 00 2d 	swi $r1,[$r6+#0xb4]
   d0cc0:	10 80 00 04 	sbi $r8,[$r0+#0x4]
   d0cc4:	10 83 00 a3 	sbi $r8,[$r6+#0xa3]
   d0cc8:	d5 06       	j8 d0cd4 <AB_shell_main_loop+0x1d8>
   d0cca:	00 03 00 a3 	lbi $r0,[$r6+#0xa3]
   d0cce:	9c 01       	addi333 $r0,$r0,#1
   d0cd0:	10 03 00 a3 	sbi $r0,[$r6+#0xa3]
   d0cd4:	a3 cb       	lwi333.bi $r7,[$r1],#0xc
   d0cd6:	cf fa       	bnez38 $r7,d0cca <AB_shell_main_loop+0x1ce>
   d0cd8:	80 06       	mov55 $r0,$r6
   d0cda:	49 ff fd 77 	jal d07c8 <shell_show_title>
   d0cde:	80 07       	mov55 $r0,$r7
   d0ce0:	48 00 02 1e 	j d111c <AB_shell_main_loop+0x620>
   d0ce4:	5a 78 09 0f 	bnec $r7,#9,d0d02 <AB_shell_main_loop+0x206>
   d0ce8:	5b c0 01 06 	beqc $fp,#1,d0cf4 <AB_shell_main_loop+0x1f8>
   d0cec:	85 e2       	movi55 $r15,#2
   d0cee:	4d c7 c2 16 	bne $fp,$r15,d111a <AB_shell_main_loop+0x61e>
   d0cf2:	d5 05       	j8 d0cfc <AB_shell_main_loop+0x200>
   d0cf4:	84 02       	movi55 $r0,#2
   d0cf6:	b6 06       	swi450 $r0,[$r6]
   d0cf8:	48 00 02 0b 	j d110e <AB_shell_main_loop+0x612>
   d0cfc:	b6 26       	swi450 $r1,[$r6]
   d0cfe:	48 00 02 08 	j d110e <AB_shell_main_loop+0x612>
   d0d02:	5a 70 7f 04 	beqc $r7,#127,d0d0a <AB_shell_main_loop+0x20e>
   d0d06:	5a 78 08 4b 	bnec $r7,#8,d0d9c <AB_shell_main_loop+0x2a0>
   d0d0a:	85 e1       	movi55 $r15,#1
   d0d0c:	4d c7 82 07 	beq $fp,$r15,d111a <AB_shell_main_loop+0x61e>
   d0d10:	00 23 00 a5 	lbi $r2,[$r6+#0xa5]
   d0d14:	4e 22 02 03 	beqz $r2,d111a <AB_shell_main_loop+0x61e>
   d0d18:	00 33 00 a4 	lbi $r3,[$r6+#0xa4]
   d0d1c:	9e 91       	subi333 $r2,$r2,#1
   d0d1e:	9e d9       	subi333 $r3,$r3,#1
   d0d20:	96 d8       	zeb33 $r3,$r3
   d0d22:	96 90       	zeb33 $r2,$r2
   d0d24:	10 33 00 a4 	sbi $r3,[$r6+#0xa4]
   d0d28:	10 23 00 a5 	sbi $r2,[$r6+#0xa5]
   d0d2c:	e2 43       	slt45 $r2,$r3
   d0d2e:	e8 2a       	beqzs8 d0d82 <AB_shell_main_loop+0x286>
   d0d30:	9d 11       	addi333 $r4,$r2,#1
   d0d32:	50 13 00 0c 	addi $r1,$r6,#12
   d0d36:	98 0a       	add333 $r0,$r1,$r2
   d0d38:	98 4c       	add333 $r1,$r1,$r4
   d0d3a:	9a 9a       	sub333 $r2,$r3,$r2
   d0d3c:	49 ff b9 90 	jal c805c <memmove>
   d0d40:	00 03 00 a4 	lbi $r0,[$r6+#0xa4]
   d0d44:	00 23 00 a5 	lbi $r2,[$r6+#0xa5]
   d0d48:	98 30       	add333 $r0,$r6,$r0
   d0d4a:	8c 08       	addi45 $r0,#8
   d0d4c:	84 20       	movi55 $r1,#0
   d0d4e:	ae 44       	sbi333 $r1,[$r0+#0x4]
   d0d50:	98 b2       	add333 $r2,$r6,$r2
   d0d52:	80 06       	mov55 $r0,$r6
   d0d54:	3e 1d 3d 14 	addi.gp $r1,#-180972
   d0d58:	8c 4c       	addi45 $r2,#12
   d0d5a:	49 ff fc b6 	jal d06c6 <shell_printf>
   d0d5e:	84 e0       	movi55 $r7,#0
   d0d60:	00 83 00 a5 	lbi $r8,[$r6+#0xa5]
   d0d64:	d5 06       	j8 d0d70 <AB_shell_main_loop+0x274>
   d0d66:	80 06       	mov55 $r0,$r6
   d0d68:	3e 1d 3d 10 	addi.gp $r1,#-180976
   d0d6c:	49 ff fc ad 	jal d06c6 <shell_printf>
   d0d70:	00 13 00 a4 	lbi $r1,[$r6+#0xa4]
   d0d74:	40 03 a0 00 	add $r0,$r7,$r8
   d0d78:	9d f9       	addi333 $r7,$r7,#1
   d0d7a:	e0 20       	slts45 $r1,$r0
   d0d7c:	e8 f5       	beqzs8 d0d66 <AB_shell_main_loop+0x26a>
   d0d7e:	48 00 01 ce 	j d111a <AB_shell_main_loop+0x61e>
   d0d82:	80 06       	mov55 $r0,$r6
   d0d84:	3e 1d 3a c8 	addi.gp $r1,#-181560
   d0d88:	49 ff fc 9f 	jal d06c6 <shell_printf>
   d0d8c:	00 03 00 a4 	lbi $r0,[$r6+#0xa4]
   d0d90:	99 b0       	add333 $r6,$r6,$r0
   d0d92:	8c c8       	addi45 $r6,#8
   d0d94:	84 00       	movi55 $r0,#0
   d0d96:	ae 34       	sbi333 $r0,[$r6+#0x4]
   d0d98:	48 00 01 c1 	j d111a <AB_shell_main_loop+0x61e>
   d0d9c:	20 03 00 a4 	lbsi $r0,[$r6+#0xa4]
   d0da0:	4e 04 00 05 	bgez $r0,d0daa <AB_shell_main_loop+0x2ae>
   d0da4:	84 00       	movi55 $r0,#0
   d0da6:	10 03 00 a4 	sbi $r0,[$r6+#0xa4]
   d0daa:	5a 70 0d 05 	beqc $r7,#13,d0db4 <AB_shell_main_loop+0x2b8>
   d0dae:	85 ea       	movi55 $r15,#10
   d0db0:	4c 77 c1 5b 	bne $r7,$r15,d1066 <AB_shell_main_loop+0x56a>
   d0db4:	b4 06       	lwi450 $r0,[$r6]
   d0db6:	c0 03       	beqz38 $r0,d0dbc <AB_shell_main_loop+0x2c0>
   d0db8:	5a 08 03 08 	bnec $r0,#3,d0dc8 <AB_shell_main_loop+0x2cc>
   d0dbc:	80 06       	mov55 $r0,$r6
   d0dbe:	3e 1d 3d 1c 	addi.gp $r1,#-180964
   d0dc2:	49 ff fc 82 	jal d06c6 <shell_printf>
   d0dc6:	d5 18       	j8 d0df6 <AB_shell_main_loop+0x2fa>
   d0dc8:	84 e0       	movi55 $r7,#0
   d0dca:	80 47       	mov55 $r2,$r7
   d0dcc:	3e 1d 3b 1c 	addi.gp $r1,#-181476
   d0dd0:	84 60       	movi55 $r3,#0
   d0dd2:	80 06       	mov55 $r0,$r6
   d0dd4:	49 ff fc 79 	jal d06c6 <shell_printf>
   d0dd8:	9d f9       	addi333 $r7,$r7,#1
   d0dda:	80 06       	mov55 $r0,$r6
   d0ddc:	3e 1d 3d 20 	addi.gp $r1,#-180960
   d0de0:	49 ff fc 73 	jal d06c6 <shell_printf>
   d0de4:	5a 78 14 f3 	bnec $r7,#20,d0dca <AB_shell_main_loop+0x2ce>
   d0de8:	84 40       	movi55 $r2,#0
   d0dea:	80 06       	mov55 $r0,$r6
   d0dec:	3e 1d 3b 1c 	addi.gp $r1,#-181476
   d0df0:	80 62       	mov55 $r3,$r2
   d0df2:	49 ff fc 6a 	jal d06c6 <shell_printf>
   d0df6:	80 e6       	mov55 $r7,$r6
   d0df8:	a2 3b       	lwi333.bi $r0,[$r7],#0xc
   d0dfa:	5a 08 03 18 	bnec $r0,#3,d0e2a <AB_shell_main_loop+0x32e>
   d0dfe:	00 13 00 a4 	lbi $r1,[$r6+#0xa4]
   d0e02:	50 8f 80 0c 	addi $r8,$sp,#12
   d0e06:	80 07       	mov55 $r0,$r7
   d0e08:	80 48       	mov55 $r2,$r8
   d0e0a:	49 ff fb d3 	jal d05b0 <shell_parse_line>
   d0e0e:	80 20       	mov55 $r1,$r0
   d0e10:	4e 02 01 0c 	beqz $r0,d1028 <AB_shell_main_loop+0x52c>
   d0e14:	04 33 00 2e 	lwi $r3,[$r6+#0xb8]
   d0e18:	4e 32 01 08 	beqz $r3,d1028 <AB_shell_main_loop+0x52c>
   d0e1c:	80 06       	mov55 $r0,$r6
   d0e1e:	80 48       	mov55 $r2,$r8
   d0e20:	dd 23       	jral5 $r3
   d0e22:	4e 03 01 03 	bnez $r0,d1028 <AB_shell_main_loop+0x52c>
   d0e26:	48 00 00 ff 	j d1024 <AB_shell_main_loop+0x528>
   d0e2a:	80 07       	mov55 $r0,$r7
   d0e2c:	3e 1d 3d 24 	addi.gp $r1,#-180956
   d0e30:	49 ff b9 34 	jal c8098 <strcmp>
   d0e34:	81 00       	mov55 $r8,$r0
   d0e36:	c8 36       	bnez38 $r0,d0ea2 <AB_shell_main_loop+0x3a6>
   d0e38:	00 23 00 a4 	lbi $r2,[$r6+#0xa4]
   d0e3c:	fd 03       	movd44 $r0,$r6
   d0e3e:	49 ff fb fe 	jal d063a <shell_history_save>
   d0e42:	00 03 00 bd 	lbi $r0,[$r6+#0xbd]
   d0e46:	5a 00 0a 04 	beqc $r0,#10,d0e4e <AB_shell_main_loop+0x352>
   d0e4a:	80 e8       	mov55 $r7,$r8
   d0e4c:	d5 25       	j8 d0e96 <AB_shell_main_loop+0x39a>
   d0e4e:	80 e8       	mov55 $r7,$r8
   d0e50:	00 03 00 bc 	lbi $r0,[$r6+#0xbc]
   d0e54:	98 38       	add333 $r0,$r7,$r0
   d0e56:	96 00       	zeb33 $r0,$r0
   d0e58:	e6 0a       	slti45 $r0,#10
   d0e5a:	e9 03       	bnezs8 d0e60 <AB_shell_main_loop+0x364>
   d0e5c:	8e 0a       	subi45 $r0,#10
   d0e5e:	96 00       	zeb33 $r0,$r0
   d0e60:	50 30 00 30 	addi $r3,$r0,#48
   d0e64:	38 33 0e 02 	lw $r3,[$r6+($r3<<#0x2)]
   d0e68:	80 47       	mov55 $r2,$r7
   d0e6a:	80 06       	mov55 $r0,$r6
   d0e6c:	3e 1d 3d 2c 	addi.gp $r1,#-180948
   d0e70:	9d f9       	addi333 $r7,$r7,#1
   d0e72:	49 ff fc 2a 	jal d06c6 <shell_printf>
   d0e76:	5a 78 0a ed 	bnec $r7,#10,d0e50 <AB_shell_main_loop+0x354>
   d0e7a:	48 00 00 d2 	j d101e <AB_shell_main_loop+0x522>
   d0e7e:	50 33 80 30 	addi $r3,$r7,#48
   d0e82:	38 33 0e 02 	lw $r3,[$r6+($r3<<#0x2)]
   d0e86:	80 47       	mov55 $r2,$r7
   d0e88:	80 06       	mov55 $r0,$r6
   d0e8a:	3e 1d 3d 2c 	addi.gp $r1,#-180948
   d0e8e:	9d f9       	addi333 $r7,$r7,#1
   d0e90:	49 ff fc 1b 	jal d06c6 <shell_printf>
   d0e94:	97 f8       	zeb33 $r7,$r7
   d0e96:	00 03 00 bd 	lbi $r0,[$r6+#0xbd]
   d0e9a:	e2 e0       	slt45 $r7,$r0
   d0e9c:	e9 f1       	bnezs8 d0e7e <AB_shell_main_loop+0x382>
   d0e9e:	48 00 00 c0 	j d101e <AB_shell_main_loop+0x522>
   d0ea2:	20 03 00 0c 	lbsi $r0,[$r6+#0xc]
   d0ea6:	4e 02 00 bc 	beqz $r0,d101e <AB_shell_main_loop+0x522>
   d0eaa:	00 23 00 a4 	lbi $r2,[$r6+#0xa4]
   d0eae:	c2 04       	beqz38 $r2,d0eb6 <AB_shell_main_loop+0x3ba>
   d0eb0:	fd 03       	movd44 $r0,$r6
   d0eb2:	49 ff fb c4 	jal d063a <shell_history_save>
   d0eb6:	50 9f 80 0c 	addi $r9,$sp,#12
   d0eba:	00 13 00 a4 	lbi $r1,[$r6+#0xa4]
   d0ebe:	80 07       	mov55 $r0,$r7
   d0ec0:	80 49       	mov55 $r2,$r9
   d0ec2:	49 ff fb 77 	jal d05b0 <shell_parse_line>
   d0ec6:	81 00       	mov55 $r8,$r0
   d0ec8:	4e 02 00 ab 	beqz $r0,d101e <AB_shell_main_loop+0x522>
   d0ecc:	04 03 00 2c 	lwi $r0,[$r6+#0xb0]
   d0ed0:	00 13 00 a2 	lbi $r1,[$r6+#0xa2]
   d0ed4:	f2 03       	lwi37.sp $r2,[+#0xc]
   d0ed6:	49 ff fb d3 	jal d067c <shell_find_cmd>
   d0eda:	80 e0       	mov55 $r7,$r0
   d0edc:	c8 24       	bnez38 $r0,d0f24 <AB_shell_main_loop+0x428>
   d0ede:	f2 03       	lwi37.sp $r2,[+#0xc]
   d0ee0:	3e 1d 3d 38 	addi.gp $r1,#-180936
   d0ee4:	80 06       	mov55 $r0,$r6
   d0ee6:	49 ff fb f0 	jal d06c6 <shell_printf>
   d0eea:	3e 1d 3d 40 	addi.gp $r1,#-180928
   d0eee:	80 06       	mov55 $r0,$r6
   d0ef0:	49 ff fb eb 	jal d06c6 <shell_printf>
   d0ef4:	80 06       	mov55 $r0,$r6
   d0ef6:	3e 1d 3d 58 	addi.gp $r1,#-180904
   d0efa:	49 ff fb e6 	jal d06c6 <shell_printf>
   d0efe:	81 07       	mov55 $r8,$r7
   d0f00:	d5 0c       	j8 d0f18 <AB_shell_main_loop+0x41c>
   d0f02:	04 23 00 2c 	lwi $r2,[$r6+#0xb0]
   d0f06:	80 06       	mov55 $r0,$r6
   d0f08:	38 21 1c 02 	lw $r2,[$r2+($r7<<#0x0)]
   d0f0c:	3e 1d 3d 64 	addi.gp $r1,#-180892
   d0f10:	49 ff fb db 	jal d06c6 <shell_printf>
   d0f14:	8d 01       	addi45 $r8,#1
   d0f16:	8c ec       	addi45 $r7,#12
   d0f18:	00 03 00 a2 	lbi $r0,[$r6+#0xa2]
   d0f1c:	e1 00       	slts45 $r8,$r0
   d0f1e:	e9 f2       	bnezs8 d0f02 <AB_shell_main_loop+0x406>
   d0f20:	48 00 00 7f 	j d101e <AB_shell_main_loop+0x522>
   d0f24:	b0 c4       	addri36.sp $r3,#0x10
   d0f26:	85 20       	movi55 $r9,#0
   d0f28:	5a 80 01 04 	beqc $r8,#1,d0f30 <AB_shell_main_loop+0x434>
   d0f2c:	a0 3a       	lwi333 $r0,[$r7+#0x8]
   d0f2e:	c8 05       	bnez38 $r0,d0f38 <AB_shell_main_loop+0x43c>
   d0f30:	a0 f9       	lwi333 $r3,[$r7+#0x4]
   d0f32:	cb 1b       	bnez38 $r3,d0f68 <AB_shell_main_loop+0x46c>
   d0f34:	84 fd       	movi55 $r7,#-3
   d0f36:	d5 50       	j8 d0fd6 <AB_shell_main_loop+0x4da>
   d0f38:	8d 21       	addi45 $r9,#1
   d0f3a:	80 20       	mov55 $r1,$r0
   d0f3c:	85 40       	movi55 $r10,#0
   d0f3e:	b4 41       	lwi450 $r2,[$r1]
   d0f40:	c2 07       	beqz38 $r2,d0f4e <AB_shell_main_loop+0x452>
   d0f42:	8d 41       	addi45 $r10,#1
   d0f44:	54 a5 00 ff 	andi $r10,$r10,#0xff
   d0f48:	8c 2c       	addi45 $r1,#12
   d0f4a:	5a a8 64 fa 	bnec $r10,#100,d0f3e <AB_shell_main_loop+0x442>
   d0f4e:	a2 99       	lwi333.bi $r2,[$r3],#0x4
   d0f50:	80 2a       	mov55 $r1,$r10
   d0f52:	b6 7f       	swi450 $r3,[$sp]
   d0f54:	49 ff fb 94 	jal d067c <shell_find_cmd>
   d0f58:	b4 7f       	lwi450 $r3,[$sp]
   d0f5a:	c0 04       	beqz38 $r0,d0f62 <AB_shell_main_loop+0x466>
   d0f5c:	8f 01       	subi45 $r8,#1
   d0f5e:	80 e0       	mov55 $r7,$r0
   d0f60:	d5 e4       	j8 d0f28 <AB_shell_main_loop+0x42c>
   d0f62:	a0 f9       	lwi333 $r3,[$r7+#0x4]
   d0f64:	c3 0b       	beqz38 $r3,d0f7a <AB_shell_main_loop+0x47e>
   d0f66:	8f 21       	subi45 $r9,#1
   d0f68:	40 94 88 08 	slli $r9,$r9,#2
   d0f6c:	b0 83       	addri36.sp $r2,#0xc
   d0f6e:	80 06       	mov55 $r0,$r6
   d0f70:	80 28       	mov55 $r1,$r8
   d0f72:	88 49       	add45 $r2,$r9
   d0f74:	dd 23       	jral5 $r3
   d0f76:	80 e0       	mov55 $r7,$r0
   d0f78:	d5 2c       	j8 d0fd0 <AB_shell_main_loop+0x4d4>
   d0f7a:	80 06       	mov55 $r0,$r6
   d0f7c:	3e 1d 3d 58 	addi.gp $r1,#-180904
   d0f80:	b6 7f       	swi450 $r3,[$sp]
   d0f82:	49 ff fb a2 	jal d06c6 <shell_printf>
   d0f86:	b4 7f       	lwi450 $r3,[$sp]
   d0f88:	81 03       	mov55 $r8,$r3
   d0f8a:	80 83       	mov55 $r4,$r3
   d0f8c:	d5 1e       	j8 d0fc8 <AB_shell_main_loop+0x4cc>
   d0f8e:	b1 43       	addri36.sp $r5,#0xc
   d0f90:	38 22 8e 02 	lw $r2,[$r5+($r3<<#0x2)]
   d0f94:	80 06       	mov55 $r0,$r6
   d0f96:	3e 1d 3c a0 	addi.gp $r1,#-181088
   d0f9a:	b6 7f       	swi450 $r3,[$sp]
   d0f9c:	f4 81       	swi37.sp $r4,[+#0x4]
   d0f9e:	49 ff fb 94 	jal d06c6 <shell_printf>
   d0fa2:	b4 7f       	lwi450 $r3,[$sp]
   d0fa4:	f4 01       	lwi37.sp $r4,[+#0x4]
   d0fa6:	9c d9       	addi333 $r3,$r3,#1
   d0fa8:	96 d8       	zeb33 $r3,$r3
   d0faa:	e0 69       	slts45 $r3,$r9
   d0fac:	e9 f1       	bnezs8 d0f8e <AB_shell_main_loop+0x492>
   d0fae:	a0 ba       	lwi333 $r2,[$r7+#0x8]
   d0fb0:	80 06       	mov55 $r0,$r6
   d0fb2:	38 21 20 02 	lw $r2,[$r2+($r8<<#0x0)]
   d0fb6:	3e 1d 3d 64 	addi.gp $r1,#-180892
   d0fba:	f4 81       	swi37.sp $r4,[+#0x4]
   d0fbc:	49 ff fb 85 	jal d06c6 <shell_printf>
   d0fc0:	f4 01       	lwi37.sp $r4,[+#0x4]
   d0fc2:	8d 0c       	addi45 $r8,#12
   d0fc4:	9d 21       	addi333 $r4,$r4,#1
   d0fc6:	97 20       	zeb33 $r4,$r4
   d0fc8:	e2 8a       	slt45 $r4,$r10
   d0fca:	e8 2a       	beqzs8 d101e <AB_shell_main_loop+0x522>
   d0fcc:	84 60       	movi55 $r3,#0
   d0fce:	d5 ee       	j8 d0faa <AB_shell_main_loop+0x4ae>
   d0fd0:	c0 27       	beqz38 $r0,d101e <AB_shell_main_loop+0x522>
   d0fd2:	5a 07 fc 23 	beqc $r0,#-4,d1018 <AB_shell_main_loop+0x51c>
   d0fd6:	f2 03       	lwi37.sp $r2,[+#0xc]
   d0fd8:	80 06       	mov55 $r0,$r6
   d0fda:	3e 1d 3d 38 	addi.gp $r1,#-180936
   d0fde:	49 ff fb 74 	jal d06c6 <shell_printf>
   d0fe2:	5a 7f fe 06 	bnec $r7,#-2,d0fee <AB_shell_main_loop+0x4f2>
   d0fe6:	80 06       	mov55 $r0,$r6
   d0fe8:	3e 1d 3d 70 	addi.gp $r1,#-180880
   d0fec:	d5 0c       	j8 d1004 <AB_shell_main_loop+0x508>
   d0fee:	5a 7f ff 06 	bnec $r7,#-1,d0ffa <AB_shell_main_loop+0x4fe>
   d0ff2:	80 06       	mov55 $r0,$r6
   d0ff4:	3e 1d 3d 40 	addi.gp $r1,#-180928
   d0ff8:	d5 06       	j8 d1004 <AB_shell_main_loop+0x508>
   d0ffa:	5a 7f fd 08 	bnec $r7,#-3,d100a <AB_shell_main_loop+0x50e>
   d0ffe:	80 06       	mov55 $r0,$r6
   d1000:	3e 1d 3d 88 	addi.gp $r1,#-180856
   d1004:	49 ff fb 61 	jal d06c6 <shell_printf>
   d1008:	d5 0b       	j8 d101e <AB_shell_main_loop+0x522>
   d100a:	80 06       	mov55 $r0,$r6
   d100c:	3e 1d 3d a4 	addi.gp $r1,#-180828
   d1010:	80 47       	mov55 $r2,$r7
   d1012:	49 ff fb 5a 	jal d06c6 <shell_printf>
   d1016:	d5 04       	j8 d101e <AB_shell_main_loop+0x522>
   d1018:	84 01       	movi55 $r0,#1
   d101a:	10 03 00 e8 	sbi $r0,[$r6+#0xe8]
   d101e:	b4 06       	lwi450 $r0,[$r6]
   d1020:	5a 08 02 04 	bnec $r0,#2,d1028 <AB_shell_main_loop+0x52c>
   d1024:	84 01       	movi55 $r0,#1
   d1026:	b6 06       	swi450 $r0,[$r6]
   d1028:	84 00       	movi55 $r0,#0
   d102a:	10 03 00 a4 	sbi $r0,[$r6+#0xa4]
   d102e:	10 03 00 a5 	sbi $r0,[$r6+#0xa5]
   d1032:	84 20       	movi55 $r1,#0
   d1034:	50 03 00 0c 	addi $r0,$r6,#12
   d1038:	44 20 00 80 	movi $r2,#128
   d103c:	49 ff b8 26 	jal c8088 <memset>
   d1040:	00 03 00 e8 	lbi $r0,[$r6+#0xe8]
   d1044:	c8 0c       	bnez38 $r0,d105c <AB_shell_main_loop+0x560>
   d1046:	b4 06       	lwi450 $r0,[$r6]
   d1048:	c0 07       	beqz38 $r0,d1056 <AB_shell_main_loop+0x55a>
   d104a:	5a 08 03 09 	bnec $r0,#3,d105c <AB_shell_main_loop+0x560>
   d104e:	55 ce 00 ff 	andi $fp,$fp,#0xff
   d1052:	4d c0 40 05 	bne $fp,$r0,d105c <AB_shell_main_loop+0x560>
   d1056:	80 06       	mov55 $r0,$r6
   d1058:	49 ff fb b8 	jal d07c8 <shell_show_title>
   d105c:	00 03 00 e8 	lbi $r0,[$r6+#0xe8]
   d1060:	c8 5b       	bnez38 $r0,d1116 <AB_shell_main_loop+0x61a>
   d1062:	84 02       	movi55 $r0,#2
   d1064:	d5 5c       	j8 d111c <AB_shell_main_loop+0x620>
   d1066:	b4 06       	lwi450 $r0,[$r6]
   d1068:	5a 00 01 41 	beqc $r0,#1,d10ea <AB_shell_main_loop+0x5ee>
   d106c:	00 23 00 a5 	lbi $r2,[$r6+#0xa5]
   d1070:	00 33 00 a4 	lbi $r3,[$r6+#0xa4]
   d1074:	e2 43       	slt45 $r2,$r3
   d1076:	e8 26       	beqzs8 d10c2 <AB_shell_main_loop+0x5c6>
   d1078:	50 13 00 0c 	addi $r1,$r6,#12
   d107c:	9c 11       	addi333 $r0,$r2,#1
   d107e:	98 08       	add333 $r0,$r1,$r0
   d1080:	98 4a       	add333 $r1,$r1,$r2
   d1082:	9a 9a       	sub333 $r2,$r3,$r2
   d1084:	49 ff b7 ec 	jal c805c <memmove>
   d1088:	00 23 00 a5 	lbi $r2,[$r6+#0xa5]
   d108c:	3e 1d 3c 9c 	addi.gp $r1,#-181092
   d1090:	98 32       	add333 $r0,$r6,$r2
   d1092:	10 70 00 0c 	sbi $r7,[$r0+#0xc]
   d1096:	80 40       	mov55 $r2,$r0
   d1098:	8c 4c       	addi45 $r2,#12
   d109a:	80 06       	mov55 $r0,$r6
   d109c:	49 ff fb 15 	jal d06c6 <shell_printf>
   d10a0:	84 e0       	movi55 $r7,#0
   d10a2:	00 83 00 a5 	lbi $r8,[$r6+#0xa5]
   d10a6:	d5 06       	j8 d10b2 <AB_shell_main_loop+0x5b6>
   d10a8:	80 06       	mov55 $r0,$r6
   d10aa:	3e 1d 3d 10 	addi.gp $r1,#-180976
   d10ae:	49 ff fb 0c 	jal d06c6 <shell_printf>
   d10b2:	00 03 00 a4 	lbi $r0,[$r6+#0xa4]
   d10b6:	40 13 a0 00 	add $r1,$r7,$r8
   d10ba:	9d f9       	addi333 $r7,$r7,#1
   d10bc:	e0 20       	slts45 $r1,$r0
   d10be:	e9 f5       	bnezs8 d10a8 <AB_shell_main_loop+0x5ac>
   d10c0:	d5 0a       	j8 d10d4 <AB_shell_main_loop+0x5d8>
   d10c2:	98 f3       	add333 $r3,$r6,$r3
   d10c4:	10 71 80 0c 	sbi $r7,[$r3+#0xc]
   d10c8:	80 06       	mov55 $r0,$r6
   d10ca:	3e 1d 3a c4 	addi.gp $r1,#-181564
   d10ce:	80 47       	mov55 $r2,$r7
   d10d0:	49 ff fa fb 	jal d06c6 <shell_printf>
   d10d4:	00 03 00 a4 	lbi $r0,[$r6+#0xa4]
   d10d8:	9c 01       	addi333 $r0,$r0,#1
   d10da:	10 03 00 a4 	sbi $r0,[$r6+#0xa4]
   d10de:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   d10e2:	9c 01       	addi333 $r0,$r0,#1
   d10e4:	10 03 00 a5 	sbi $r0,[$r6+#0xa5]
   d10e8:	d5 19       	j8 d111a <AB_shell_main_loop+0x61e>
   d10ea:	50 73 ff d0 	addi $r7,$r7,#-48
   d10ee:	97 f8       	zeb33 $r7,$r7
   d10f0:	e6 ea       	slti45 $r7,#10
   d10f2:	e8 14       	beqzs8 d111a <AB_shell_main_loop+0x61e>
   d10f4:	00 03 00 a3 	lbi $r0,[$r6+#0xa3]
   d10f8:	e2 e0       	slt45 $r7,$r0
   d10fa:	e8 10       	beqzs8 d111a <AB_shell_main_loop+0x61e>
   d10fc:	00 03 00 a1 	lbi $r0,[$r6+#0xa1]
   d1100:	98 30       	add333 $r0,$r6,$r0
   d1102:	50 00 00 88 	addi $r0,$r0,#136
   d1106:	a6 44       	lbi333 $r1,[$r0+#0x4]
   d1108:	4c 13 80 09 	beq $r1,$r7,d111a <AB_shell_main_loop+0x61e>
   d110c:	af c4       	sbi333 $r7,[$r0+#0x4]
   d110e:	80 06       	mov55 $r0,$r6
   d1110:	49 ff fb 5c 	jal d07c8 <shell_show_title>
   d1114:	d5 03       	j8 d111a <AB_shell_main_loop+0x61e>
   d1116:	84 01       	movi55 $r0,#1
   d1118:	d5 02       	j8 d111c <AB_shell_main_loop+0x620>
   d111a:	84 00       	movi55 $r0,#0
   d111c:	fc cc       	pop25 $r10,#0x60    ! {$r6~$r10, $fp, $gp, $lp}

000d111e <AB_shell_main_title>:
   d111e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d1120:	fd 30       	movd44 $r6,$r0
   d1122:	c0 16       	beqz38 $r0,d114e <AB_shell_main_title+0x30>
   d1124:	04 10 00 2c 	lwi $r1,[$r0+#0xb0]
   d1128:	c1 13       	beqz38 $r1,d114e <AB_shell_main_title+0x30>
   d112a:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d112c:	c1 11       	beqz38 $r1,d114e <AB_shell_main_title+0x30>
   d112e:	84 20       	movi55 $r1,#0
   d1130:	10 10 00 e8 	sbi $r1,[$r0+#0xe8]
   d1134:	3e 1d 3d 04 	addi.gp $r1,#-180988
   d1138:	49 ff fa c7 	jal d06c6 <shell_printf>
   d113c:	c7 04       	beqz38 $r7,d1144 <AB_shell_main_title+0x26>
   d113e:	fd 03       	movd44 $r0,$r6
   d1140:	49 ff fa c3 	jal d06c6 <shell_printf>
   d1144:	80 06       	mov55 $r0,$r6
   d1146:	49 ff fb 41 	jal d07c8 <shell_show_title>
   d114a:	84 00       	movi55 $r0,#0
   d114c:	d5 02       	j8 d1150 <AB_shell_main_title+0x32>
   d114e:	84 1f       	movi55 $r0,#-1
   d1150:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d1152 <assert_ab_callback_verbose>:
   d1152:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   d1154:	96 49       	zeh33 $r1,$r1
   d1156:	80 a0       	mov55 $r5,$r0
   d1158:	b6 5f       	swi450 $r2,[$sp]
   d115a:	f1 81       	swi37.sp $r1,[+#0x4]
   d115c:	84 45       	movi55 $r2,#5
   d115e:	84 21       	movi55 $r1,#1
   d1160:	fa 6f       	movpi45 $r3,#0x1f
   d1162:	84 80       	movi55 $r4,#0
   d1164:	3e 0d 3d b0 	addi.gp $r0,#-180816
   d1168:	49 00 07 e3 	jal d212e <printf>
   d116c:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000d116e <assert_ab_callback>:
   d116e:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   d1170:	96 01       	zeh33 $r0,$r0
   d1172:	80 a1       	mov55 $r5,$r1
   d1174:	b6 1f       	swi450 $r0,[$sp]
   d1176:	84 21       	movi55 $r1,#1
   d1178:	84 45       	movi55 $r2,#5
   d117a:	fa 6f       	movpi45 $r3,#0x1f
   d117c:	84 80       	movi55 $r4,#0
   d117e:	3e 0d 3d e4 	addi.gp $r0,#-180764
   d1182:	49 00 07 d6 	jal d212e <printf>
   d1186:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000d1188 <exceptf>:
   d1188:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d118a:	3c 2d f1 a5 	lwi.gp $r2,[+#-14700]
   d118e:	96 00       	zeb33 $r0,$r0
   d1190:	c2 02       	beqz38 $r2,d1194 <exceptf+0xc>
   d1192:	dd 22       	jral5 $r2
   d1194:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d1196 <AB_Debug_CpuExceptionMonitor>:
   d1196:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d1198:	3c 0f f1 a5 	swi.gp $r0,[+#-14700]
   d119c:	84 01       	movi55 $r0,#1
   d119e:	3e 1c d2 7a 	addi.gp $r1,#-208262
   d11a2:	49 fd 78 f1 	jal 80384 <SysIntrHandlerRegister>
   d11a6:	84 02       	movi55 $r0,#2
   d11a8:	3e 1c d2 66 	addi.gp $r1,#-208282
   d11ac:	49 fd 78 ec 	jal 80384 <SysIntrHandlerRegister>
   d11b0:	84 03       	movi55 $r0,#3
   d11b2:	3e 1c d2 52 	addi.gp $r1,#-208302
   d11b6:	49 fd 78 e7 	jal 80384 <SysIntrHandlerRegister>
   d11ba:	84 04       	movi55 $r0,#4
   d11bc:	3e 1c d2 3e 	addi.gp $r1,#-208322
   d11c0:	49 fd 78 e2 	jal 80384 <SysIntrHandlerRegister>
   d11c4:	84 05       	movi55 $r0,#5
   d11c6:	3e 1c d2 2a 	addi.gp $r1,#-208342
   d11ca:	49 fd 78 dd 	jal 80384 <SysIntrHandlerRegister>
   d11ce:	84 06       	movi55 $r0,#6
   d11d0:	3e 1c d2 16 	addi.gp $r1,#-208362
   d11d4:	49 fd 78 d8 	jal 80384 <SysIntrHandlerRegister>
   d11d8:	84 07       	movi55 $r0,#7
   d11da:	3e 1c d2 02 	addi.gp $r1,#-208382
   d11de:	49 fd 78 d3 	jal 80384 <SysIntrHandlerRegister>
   d11e2:	84 08       	movi55 $r0,#8
   d11e4:	3e 1c d1 ee 	addi.gp $r1,#-208402
   d11e8:	49 fd 78 ce 	jal 80384 <SysIntrHandlerRegister>
   d11ec:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d11ee <exception8>:
   d11ee:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d11f0:	64 12 a4 02 	mfsr $r1,$IPC
   d11f4:	84 08       	movi55 $r0,#8
   d11f6:	49 ff ff c9 	jal d1188 <exceptf>
   d11fa:	84 08       	movi55 $r0,#8
   d11fc:	49 fd 78 99 	jal 8032e <SysIntrHandlerCancel>
   d1200:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d1202 <exception7>:
   d1202:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d1204:	64 12 a4 02 	mfsr $r1,$IPC
   d1208:	84 07       	movi55 $r0,#7
   d120a:	49 ff ff bf 	jal d1188 <exceptf>
   d120e:	84 07       	movi55 $r0,#7
   d1210:	49 fd 78 8f 	jal 8032e <SysIntrHandlerCancel>
   d1214:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d1216 <exception6>:
   d1216:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d1218:	64 12 a4 02 	mfsr $r1,$IPC
   d121c:	84 06       	movi55 $r0,#6
   d121e:	49 ff ff b5 	jal d1188 <exceptf>
   d1222:	84 06       	movi55 $r0,#6
   d1224:	49 fd 78 85 	jal 8032e <SysIntrHandlerCancel>
   d1228:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d122a <exception5>:
   d122a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d122c:	64 12 a4 02 	mfsr $r1,$IPC
   d1230:	84 05       	movi55 $r0,#5
   d1232:	49 ff ff ab 	jal d1188 <exceptf>
   d1236:	84 05       	movi55 $r0,#5
   d1238:	49 fd 78 7b 	jal 8032e <SysIntrHandlerCancel>
   d123c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d123e <exception4>:
   d123e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d1240:	64 12 a4 02 	mfsr $r1,$IPC
   d1244:	84 04       	movi55 $r0,#4
   d1246:	49 ff ff a1 	jal d1188 <exceptf>
   d124a:	84 04       	movi55 $r0,#4
   d124c:	49 fd 78 71 	jal 8032e <SysIntrHandlerCancel>
   d1250:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d1252 <exception3>:
   d1252:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d1254:	64 12 a4 02 	mfsr $r1,$IPC
   d1258:	84 03       	movi55 $r0,#3
   d125a:	49 ff ff 97 	jal d1188 <exceptf>
   d125e:	84 03       	movi55 $r0,#3
   d1260:	49 fd 78 67 	jal 8032e <SysIntrHandlerCancel>
   d1264:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d1266 <exception2>:
   d1266:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d1268:	64 12 a4 02 	mfsr $r1,$IPC
   d126c:	84 02       	movi55 $r0,#2
   d126e:	49 ff ff 8d 	jal d1188 <exceptf>
   d1272:	84 02       	movi55 $r0,#2
   d1274:	49 fd 78 5d 	jal 8032e <SysIntrHandlerCancel>
   d1278:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d127a <exception1>:
   d127a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d127c:	64 12 a4 02 	mfsr $r1,$IPC
   d1280:	84 01       	movi55 $r0,#1
   d1282:	49 ff ff 83 	jal d1188 <exceptf>
   d1286:	84 01       	movi55 $r0,#1
   d1288:	49 fd 78 53 	jal 8032e <SysIntrHandlerCancel>
   d128c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d128e <AB_Log_HciEventStr>:
   d128e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d1290:	9e 01       	subi333 $r0,$r0,#1
   d1292:	96 00       	zeb33 $r0,$r0
   d1294:	5c f0 00 3e 	slti $r15,$r0,#62
   d1298:	e9 03       	bnezs8 d129e <AB_Log_HciEventStr+0x10>
   d129a:	84 00       	movi55 $r0,#0
   d129c:	d5 05       	j8 d12a6 <AB_Log_HciEventStr+0x18>
   d129e:	3e 1d 2d e4 	addi.gp $r1,#-184860
   d12a2:	38 00 82 02 	lw $r0,[$r1+($r0<<#0x2)]
   d12a6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d12a8 <AB_Log_HciCommandStr>:
   d12a8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d12aa:	44 10 0c 26 	movi $r1,#3110
   d12ae:	96 01       	zeh33 $r0,$r0
   d12b0:	4c 00 83 ba 	beq $r0,$r1,d1a24 <AB_Log_HciCommandStr+0x77c>
   d12b4:	5c f0 0c 27 	slti $r15,$r0,#3111
   d12b8:	4e f2 01 5c 	beqz $r15,d1570 <AB_Log_HciCommandStr+0x2c8>
   d12bc:	44 10 08 04 	movi $r1,#2052
   d12c0:	4c 00 83 1e 	beq $r0,$r1,d18fc <AB_Log_HciCommandStr+0x654>
   d12c4:	5c f0 08 05 	slti $r15,$r0,#2053
   d12c8:	4e f2 00 b2 	beqz $r15,d142c <AB_Log_HciCommandStr+0x184>
   d12cc:	44 10 04 19 	movi $r1,#1049
   d12d0:	4c 00 82 fe 	beq $r0,$r1,d18cc <AB_Log_HciCommandStr+0x624>
   d12d4:	5c f0 04 1a 	slti $r15,$r0,#1050
   d12d8:	e8 55       	beqzs8 d1382 <AB_Log_HciCommandStr+0xda>
   d12da:	8e 2f       	subi45 $r1,#15
   d12dc:	4c 00 82 d0 	beq $r0,$r1,d187c <AB_Log_HciCommandStr+0x5d4>
   d12e0:	5c f0 04 0b 	slti $r15,$r0,#1035
   d12e4:	e8 28       	beqzs8 d1334 <AB_Log_HciCommandStr+0x8c>
   d12e6:	9e 4d       	subi333 $r1,$r1,#5
   d12e8:	4c 00 82 ba 	beq $r0,$r1,d185c <AB_Log_HciCommandStr+0x5b4>
   d12ec:	5c f0 04 06 	slti $r15,$r0,#1030
   d12f0:	e8 14       	beqzs8 d1318 <AB_Log_HciCommandStr+0x70>
   d12f2:	9e 4b       	subi333 $r1,$r1,#3
   d12f4:	4c 00 82 a4 	beq $r0,$r1,d183c <AB_Log_HciCommandStr+0x594>
   d12f8:	5c f0 04 03 	slti $r15,$r0,#1027
   d12fc:	e8 06       	beqzs8 d1308 <AB_Log_HciCommandStr+0x60>
   d12fe:	9e 49       	subi333 $r1,$r1,#1
   d1300:	4c 00 c5 05 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1304:	48 00 02 a0 	j d1844 <AB_Log_HciCommandStr+0x59c>
   d1308:	9c 49       	addi333 $r1,$r1,#1
   d130a:	4c 00 82 a1 	beq $r0,$r1,d184c <AB_Log_HciCommandStr+0x5a4>
   d130e:	9c 49       	addi333 $r1,$r1,#1
   d1310:	4c 00 c4 fd 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1314:	48 00 02 a0 	j d1854 <AB_Log_HciCommandStr+0x5ac>
   d1318:	9c 4a       	addi333 $r1,$r1,#2
   d131a:	4c 00 82 a9 	beq $r0,$r1,d186c <AB_Log_HciCommandStr+0x5c4>
   d131e:	e2 01       	slt45 $r0,$r1
   d1320:	4e f3 02 a2 	bnez $r15,d1864 <AB_Log_HciCommandStr+0x5bc>
   d1324:	9c 49       	addi333 $r1,$r1,#1
   d1326:	4c 00 83 f3 	beq $r0,$r1,d1b0c <AB_Log_HciCommandStr+0x864>
   d132a:	9c 49       	addi333 $r1,$r1,#1
   d132c:	4c 00 c4 ef 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1330:	48 00 02 a2 	j d1874 <AB_Log_HciCommandStr+0x5cc>
   d1334:	9c 4d       	addi333 $r1,$r1,#5
   d1336:	4c 00 82 b7 	beq $r0,$r1,d18a4 <AB_Log_HciCommandStr+0x5fc>
   d133a:	5c f0 04 10 	slti $r15,$r0,#1040
   d133e:	e8 0f       	beqzs8 d135c <AB_Log_HciCommandStr+0xb4>
   d1340:	9e 4b       	subi333 $r1,$r1,#3
   d1342:	4c 00 82 a5 	beq $r0,$r1,d188c <AB_Log_HciCommandStr+0x5e4>
   d1346:	e2 01       	slt45 $r0,$r1
   d1348:	4e f3 02 9e 	bnez $r15,d1884 <AB_Log_HciCommandStr+0x5dc>
   d134c:	9c 49       	addi333 $r1,$r1,#1
   d134e:	4c 00 82 a3 	beq $r0,$r1,d1894 <AB_Log_HciCommandStr+0x5ec>
   d1352:	9c 49       	addi333 $r1,$r1,#1
   d1354:	4c 00 c4 db 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1358:	48 00 02 a2 	j d189c <AB_Log_HciCommandStr+0x5f4>
   d135c:	9c 4c       	addi333 $r1,$r1,#4
   d135e:	4c 00 82 ab 	beq $r0,$r1,d18b4 <AB_Log_HciCommandStr+0x60c>
   d1362:	5c f0 04 14 	slti $r15,$r0,#1044
   d1366:	e8 06       	beqzs8 d1372 <AB_Log_HciCommandStr+0xca>
   d1368:	9e 4a       	subi333 $r1,$r1,#2
   d136a:	4c 00 c4 d0 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d136e:	48 00 02 9f 	j d18ac <AB_Log_HciCommandStr+0x604>
   d1372:	9c 4a       	addi333 $r1,$r1,#2
   d1374:	4c 00 82 a4 	beq $r0,$r1,d18bc <AB_Log_HciCommandStr+0x614>
   d1378:	9c 4a       	addi333 $r1,$r1,#2
   d137a:	4c 00 c4 c8 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d137e:	48 00 02 a3 	j d18c4 <AB_Log_HciCommandStr+0x61c>
   d1382:	8c 32       	addi45 $r1,#18
   d1384:	4c 00 83 e0 	beq $r0,$r1,d1b44 <AB_Log_HciCommandStr+0x89c>
   d1388:	5c f0 04 2c 	slti $r15,$r0,#1068
   d138c:	e8 28       	beqzs8 d13dc <AB_Log_HciCommandStr+0x134>
   d138e:	8e 2c       	subi45 $r1,#12
   d1390:	4c 00 82 aa 	beq $r0,$r1,d18e4 <AB_Log_HciCommandStr+0x63c>
   d1394:	5c f0 04 20 	slti $r15,$r0,#1056
   d1398:	e8 0f       	beqzs8 d13b6 <AB_Log_HciCommandStr+0x10e>
   d139a:	9e 4c       	subi333 $r1,$r1,#4
   d139c:	4c 00 82 9c 	beq $r0,$r1,d18d4 <AB_Log_HciCommandStr+0x62c>
   d13a0:	e2 01       	slt45 $r0,$r1
   d13a2:	4e f3 03 b9 	bnez $r15,d1b14 <AB_Log_HciCommandStr+0x86c>
   d13a6:	9c 49       	addi333 $r1,$r1,#1
   d13a8:	4c 00 83 ba 	beq $r0,$r1,d1b1c <AB_Log_HciCommandStr+0x874>
   d13ac:	9c 49       	addi333 $r1,$r1,#1
   d13ae:	4c 00 c4 ae 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d13b2:	48 00 02 95 	j d18dc <AB_Log_HciCommandStr+0x634>
   d13b6:	8c 29       	addi45 $r1,#9
   d13b8:	4c 00 83 ba 	beq $r0,$r1,d1b2c <AB_Log_HciCommandStr+0x884>
   d13bc:	5c f0 04 29 	slti $r15,$r0,#1065
   d13c0:	e8 06       	beqzs8 d13cc <AB_Log_HciCommandStr+0x124>
   d13c2:	8e 28       	subi45 $r1,#8
   d13c4:	4c 00 c4 a3 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d13c8:	48 00 03 ae 	j d1b24 <AB_Log_HciCommandStr+0x87c>
   d13cc:	9c 49       	addi333 $r1,$r1,#1
   d13ce:	4c 00 83 b3 	beq $r0,$r1,d1b34 <AB_Log_HciCommandStr+0x88c>
   d13d2:	9c 49       	addi333 $r1,$r1,#1
   d13d4:	4c 00 c4 9b 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d13d8:	48 00 03 b2 	j d1b3c <AB_Log_HciCommandStr+0x894>
   d13dc:	9c 4d       	addi333 $r1,$r1,#5
   d13de:	4c 00 83 c7 	beq $r0,$r1,d1b6c <AB_Log_HciCommandStr+0x8c4>
   d13e2:	5c f0 04 31 	slti $r15,$r0,#1073
   d13e6:	e8 0f       	beqzs8 d1404 <AB_Log_HciCommandStr+0x15c>
   d13e8:	9e 4b       	subi333 $r1,$r1,#3
   d13ea:	4c 00 83 b5 	beq $r0,$r1,d1b54 <AB_Log_HciCommandStr+0x8ac>
   d13ee:	e2 01       	slt45 $r0,$r1
   d13f0:	4e f3 03 ae 	bnez $r15,d1b4c <AB_Log_HciCommandStr+0x8a4>
   d13f4:	9c 49       	addi333 $r1,$r1,#1
   d13f6:	4c 00 83 b3 	beq $r0,$r1,d1b5c <AB_Log_HciCommandStr+0x8b4>
   d13fa:	9c 49       	addi333 $r1,$r1,#1
   d13fc:	4c 00 c4 87 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1400:	48 00 03 b2 	j d1b64 <AB_Log_HciCommandStr+0x8bc>
   d1404:	9c 4c       	addi333 $r1,$r1,#4
   d1406:	4c 00 83 bb 	beq $r0,$r1,d1b7c <AB_Log_HciCommandStr+0x8d4>
   d140a:	5c f0 04 35 	slti $r15,$r0,#1077
   d140e:	e8 06       	beqzs8 d141a <AB_Log_HciCommandStr+0x172>
   d1410:	9e 49       	subi333 $r1,$r1,#1
   d1412:	4c 00 c4 7c 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1416:	48 00 03 af 	j d1b74 <AB_Log_HciCommandStr+0x8cc>
   d141a:	44 10 08 01 	movi $r1,#2049
   d141e:	4c 00 82 67 	beq $r0,$r1,d18ec <AB_Log_HciCommandStr+0x644>
   d1422:	9c 4a       	addi333 $r1,$r1,#2
   d1424:	4c 00 c4 73 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1428:	48 00 02 66 	j d18f4 <AB_Log_HciCommandStr+0x64c>
   d142c:	44 10 0c 12 	movi $r1,#3090
   d1430:	4c 00 82 aa 	beq $r0,$r1,d1984 <AB_Log_HciCommandStr+0x6dc>
   d1434:	5c f0 0c 13 	slti $r15,$r0,#3091
   d1438:	e8 52       	beqzs8 d14dc <AB_Log_HciCommandStr+0x234>
   d143a:	44 10 08 10 	movi $r1,#2064
   d143e:	4c 00 83 ab 	beq $r0,$r1,d1b94 <AB_Log_HciCommandStr+0x8ec>
   d1442:	5c f0 08 11 	slti $r15,$r0,#2065
   d1446:	e8 23       	beqzs8 d148c <AB_Log_HciCommandStr+0x1e4>
   d1448:	9e 4d       	subi333 $r1,$r1,#5
   d144a:	4c 00 82 6d 	beq $r0,$r1,d1924 <AB_Log_HciCommandStr+0x67c>
   d144e:	5c f0 08 0c 	slti $r15,$r0,#2060
   d1452:	e8 0f       	beqzs8 d1470 <AB_Log_HciCommandStr+0x1c8>
   d1454:	9e 4d       	subi333 $r1,$r1,#5
   d1456:	4c 00 82 5b 	beq $r0,$r1,d190c <AB_Log_HciCommandStr+0x664>
   d145a:	e2 01       	slt45 $r0,$r1
   d145c:	4e f3 02 54 	bnez $r15,d1904 <AB_Log_HciCommandStr+0x65c>
   d1460:	9c 49       	addi333 $r1,$r1,#1
   d1462:	4c 00 82 59 	beq $r0,$r1,d1914 <AB_Log_HciCommandStr+0x66c>
   d1466:	9c 4a       	addi333 $r1,$r1,#2
   d1468:	4c 00 c4 51 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d146c:	48 00 02 58 	j d191c <AB_Log_HciCommandStr+0x674>
   d1470:	9c 4a       	addi333 $r1,$r1,#2
   d1472:	4c 00 82 61 	beq $r0,$r1,d1934 <AB_Log_HciCommandStr+0x68c>
   d1476:	e2 01       	slt45 $r0,$r1
   d1478:	4e f3 02 5a 	bnez $r15,d192c <AB_Log_HciCommandStr+0x684>
   d147c:	9c 49       	addi333 $r1,$r1,#1
   d147e:	4c 00 83 83 	beq $r0,$r1,d1b84 <AB_Log_HciCommandStr+0x8dc>
   d1482:	9c 49       	addi333 $r1,$r1,#1
   d1484:	4c 00 c4 43 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1488:	48 00 03 82 	j d1b8c <AB_Log_HciCommandStr+0x8e4>
   d148c:	44 10 0c 09 	movi $r1,#3081
   d1490:	4c 00 82 66 	beq $r0,$r1,d195c <AB_Log_HciCommandStr+0x6b4>
   d1494:	5c f0 0c 0a 	slti $r15,$r0,#3082
   d1498:	e8 14       	beqzs8 d14c0 <AB_Log_HciCommandStr+0x218>
   d149a:	9e 4e       	subi333 $r1,$r1,#6
   d149c:	4c 00 82 54 	beq $r0,$r1,d1944 <AB_Log_HciCommandStr+0x69c>
   d14a0:	5c f0 0c 04 	slti $r15,$r0,#3076
   d14a4:	e8 06       	beqzs8 d14b0 <AB_Log_HciCommandStr+0x208>
   d14a6:	9e 4a       	subi333 $r1,$r1,#2
   d14a8:	4c 00 c4 31 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d14ac:	48 00 02 48 	j d193c <AB_Log_HciCommandStr+0x694>
   d14b0:	9c 4a       	addi333 $r1,$r1,#2
   d14b2:	4c 00 82 4d 	beq $r0,$r1,d194c <AB_Log_HciCommandStr+0x6a4>
   d14b6:	9c 4b       	addi333 $r1,$r1,#3
   d14b8:	4c 00 c4 29 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d14bc:	48 00 02 4c 	j d1954 <AB_Log_HciCommandStr+0x6ac>
   d14c0:	9c 4a       	addi333 $r1,$r1,#2
   d14c2:	4c 00 82 55 	beq $r0,$r1,d196c <AB_Log_HciCommandStr+0x6c4>
   d14c6:	e2 01       	slt45 $r0,$r1
   d14c8:	4e f3 02 4e 	bnez $r15,d1964 <AB_Log_HciCommandStr+0x6bc>
   d14cc:	9c 4a       	addi333 $r1,$r1,#2
   d14ce:	4c 00 82 53 	beq $r0,$r1,d1974 <AB_Log_HciCommandStr+0x6cc>
   d14d2:	9c 4c       	addi333 $r1,$r1,#4
   d14d4:	4c 00 c4 1b 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d14d8:	48 00 02 52 	j d197c <AB_Log_HciCommandStr+0x6d4>
   d14dc:	8c 2a       	addi45 $r1,#10
   d14de:	4c 00 82 7b 	beq $r0,$r1,d19d4 <AB_Log_HciCommandStr+0x72c>
   d14e2:	5c f0 0c 1d 	slti $r15,$r0,#3101
   d14e6:	e8 23       	beqzs8 d152c <AB_Log_HciCommandStr+0x284>
   d14e8:	9e 4d       	subi333 $r1,$r1,#5
   d14ea:	4c 00 82 61 	beq $r0,$r1,d19ac <AB_Log_HciCommandStr+0x704>
   d14ee:	5c f0 0c 18 	slti $r15,$r0,#3096
   d14f2:	e8 0f       	beqzs8 d1510 <AB_Log_HciCommandStr+0x268>
   d14f4:	9e 4b       	subi333 $r1,$r1,#3
   d14f6:	4c 00 82 4f 	beq $r0,$r1,d1994 <AB_Log_HciCommandStr+0x6ec>
   d14fa:	e2 01       	slt45 $r0,$r1
   d14fc:	4e f3 02 48 	bnez $r15,d198c <AB_Log_HciCommandStr+0x6e4>
   d1500:	9c 49       	addi333 $r1,$r1,#1
   d1502:	4c 00 82 4d 	beq $r0,$r1,d199c <AB_Log_HciCommandStr+0x6f4>
   d1506:	9c 49       	addi333 $r1,$r1,#1
   d1508:	4c 00 c4 01 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d150c:	48 00 02 4c 	j d19a4 <AB_Log_HciCommandStr+0x6fc>
   d1510:	9c 4a       	addi333 $r1,$r1,#2
   d1512:	4c 00 82 55 	beq $r0,$r1,d19bc <AB_Log_HciCommandStr+0x714>
   d1516:	e2 01       	slt45 $r0,$r1
   d1518:	4e f3 02 4e 	bnez $r15,d19b4 <AB_Log_HciCommandStr+0x70c>
   d151c:	9c 49       	addi333 $r1,$r1,#1
   d151e:	4c 00 82 53 	beq $r0,$r1,d19c4 <AB_Log_HciCommandStr+0x71c>
   d1522:	9c 49       	addi333 $r1,$r1,#1
   d1524:	4c 00 c3 f3 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1528:	48 00 02 52 	j d19cc <AB_Log_HciCommandStr+0x724>
   d152c:	9c 4d       	addi333 $r1,$r1,#5
   d152e:	4c 00 82 67 	beq $r0,$r1,d19fc <AB_Log_HciCommandStr+0x754>
   d1532:	5c f0 0c 22 	slti $r15,$r0,#3106
   d1536:	e8 0f       	beqzs8 d1554 <AB_Log_HciCommandStr+0x2ac>
   d1538:	9e 4b       	subi333 $r1,$r1,#3
   d153a:	4c 00 82 55 	beq $r0,$r1,d19e4 <AB_Log_HciCommandStr+0x73c>
   d153e:	e2 01       	slt45 $r0,$r1
   d1540:	4e f3 02 4e 	bnez $r15,d19dc <AB_Log_HciCommandStr+0x734>
   d1544:	9c 49       	addi333 $r1,$r1,#1
   d1546:	4c 00 82 53 	beq $r0,$r1,d19ec <AB_Log_HciCommandStr+0x744>
   d154a:	9c 49       	addi333 $r1,$r1,#1
   d154c:	4c 00 c3 df 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1550:	48 00 02 52 	j d19f4 <AB_Log_HciCommandStr+0x74c>
   d1554:	9c 4a       	addi333 $r1,$r1,#2
   d1556:	4c 00 82 5b 	beq $r0,$r1,d1a0c <AB_Log_HciCommandStr+0x764>
   d155a:	e2 01       	slt45 $r0,$r1
   d155c:	4e f3 02 54 	bnez $r15,d1a04 <AB_Log_HciCommandStr+0x75c>
   d1560:	9c 49       	addi333 $r1,$r1,#1
   d1562:	4c 00 82 59 	beq $r0,$r1,d1a14 <AB_Log_HciCommandStr+0x76c>
   d1566:	9c 49       	addi333 $r1,$r1,#1
   d1568:	4c 00 c3 d1 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d156c:	48 00 02 58 	j d1a1c <AB_Log_HciCommandStr+0x774>
   d1570:	44 10 14 06 	movi $r1,#5126
   d1574:	4c 00 83 48 	beq $r0,$r1,d1c04 <AB_Log_HciCommandStr+0x95c>
   d1578:	5c f0 14 07 	slti $r15,$r0,#5127
   d157c:	4e f2 00 af 	beqz $r15,d16da <AB_Log_HciCommandStr+0x432>
   d1580:	44 10 0c 43 	movi $r1,#3139
   d1584:	4c 00 83 14 	beq $r0,$r1,d1bac <AB_Log_HciCommandStr+0x904>
   d1588:	5c f0 0c 44 	slti $r15,$r0,#3140
   d158c:	e8 50       	beqzs8 d162c <AB_Log_HciCommandStr+0x384>
   d158e:	8e 32       	subi45 $r1,#18
   d1590:	4c 00 82 72 	beq $r0,$r1,d1a74 <AB_Log_HciCommandStr+0x7cc>
   d1594:	5c f0 0c 32 	slti $r15,$r0,#3122
   d1598:	e8 23       	beqzs8 d15de <AB_Log_HciCommandStr+0x336>
   d159a:	9e 4e       	subi333 $r1,$r1,#6
   d159c:	4c 00 82 58 	beq $r0,$r1,d1a4c <AB_Log_HciCommandStr+0x7a4>
   d15a0:	5c f0 0c 2c 	slti $r15,$r0,#3116
   d15a4:	e8 0f       	beqzs8 d15c2 <AB_Log_HciCommandStr+0x31a>
   d15a6:	9e 4b       	subi333 $r1,$r1,#3
   d15a8:	4c 00 82 46 	beq $r0,$r1,d1a34 <AB_Log_HciCommandStr+0x78c>
   d15ac:	e2 01       	slt45 $r0,$r1
   d15ae:	4e f3 02 3f 	bnez $r15,d1a2c <AB_Log_HciCommandStr+0x784>
   d15b2:	9c 49       	addi333 $r1,$r1,#1
   d15b4:	4c 00 82 44 	beq $r0,$r1,d1a3c <AB_Log_HciCommandStr+0x794>
   d15b8:	9c 49       	addi333 $r1,$r1,#1
   d15ba:	4c 00 c3 a8 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d15be:	48 00 02 43 	j d1a44 <AB_Log_HciCommandStr+0x79c>
   d15c2:	9c 4a       	addi333 $r1,$r1,#2
   d15c4:	4c 00 82 4c 	beq $r0,$r1,d1a5c <AB_Log_HciCommandStr+0x7b4>
   d15c8:	e2 01       	slt45 $r0,$r1
   d15ca:	4e f3 02 45 	bnez $r15,d1a54 <AB_Log_HciCommandStr+0x7ac>
   d15ce:	9c 49       	addi333 $r1,$r1,#1
   d15d0:	4c 00 82 4a 	beq $r0,$r1,d1a64 <AB_Log_HciCommandStr+0x7bc>
   d15d4:	9c 49       	addi333 $r1,$r1,#1
   d15d6:	4c 00 c3 9a 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d15da:	48 00 02 49 	j d1a6c <AB_Log_HciCommandStr+0x7c4>
   d15de:	9c 4f       	addi333 $r1,$r1,#7
   d15e0:	4c 00 82 5e 	beq $r0,$r1,d1a9c <AB_Log_HciCommandStr+0x7f4>
   d15e4:	5c f0 0c 39 	slti $r15,$r0,#3129
   d15e8:	e8 14       	beqzs8 d1610 <AB_Log_HciCommandStr+0x368>
   d15ea:	9e 4b       	subi333 $r1,$r1,#3
   d15ec:	4c 00 82 4c 	beq $r0,$r1,d1a84 <AB_Log_HciCommandStr+0x7dc>
   d15f0:	5c f0 0c 36 	slti $r15,$r0,#3126
   d15f4:	e8 06       	beqzs8 d1600 <AB_Log_HciCommandStr+0x358>
   d15f6:	9e 4a       	subi333 $r1,$r1,#2
   d15f8:	4c 00 c3 89 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d15fc:	48 00 02 40 	j d1a7c <AB_Log_HciCommandStr+0x7d4>
   d1600:	9c 49       	addi333 $r1,$r1,#1
   d1602:	4c 00 82 45 	beq $r0,$r1,d1a8c <AB_Log_HciCommandStr+0x7e4>
   d1606:	9c 49       	addi333 $r1,$r1,#1
   d1608:	4c 00 c3 81 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d160c:	48 00 02 44 	j d1a94 <AB_Log_HciCommandStr+0x7ec>
   d1610:	9c 4a       	addi333 $r1,$r1,#2
   d1612:	4c 00 82 4d 	beq $r0,$r1,d1aac <AB_Log_HciCommandStr+0x804>
   d1616:	e2 01       	slt45 $r0,$r1
   d1618:	4e f3 02 46 	bnez $r15,d1aa4 <AB_Log_HciCommandStr+0x7fc>
   d161c:	9c 4d       	addi333 $r1,$r1,#5
   d161e:	4c 00 82 bf 	beq $r0,$r1,d1b9c <AB_Log_HciCommandStr+0x8f4>
   d1622:	9c 4b       	addi333 $r1,$r1,#3
   d1624:	4c 00 c3 73 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1628:	48 00 02 be 	j d1ba4 <AB_Log_HciCommandStr+0x8fc>
   d162c:	44 10 10 01 	movi $r1,#4097
   d1630:	4c 00 82 42 	beq $r0,$r1,d1ab4 <AB_Log_HciCommandStr+0x80c>
   d1634:	5c f0 10 02 	slti $r15,$r0,#4098
   d1638:	e8 29       	beqzs8 d168a <AB_Log_HciCommandStr+0x3e2>
   d163a:	44 10 0c 48 	movi $r1,#3144
   d163e:	4c 00 82 cb 	beq $r0,$r1,d1bd4 <AB_Log_HciCommandStr+0x92c>
   d1642:	5c f0 0c 49 	slti $r15,$r0,#3145
   d1646:	e8 0f       	beqzs8 d1664 <AB_Log_HciCommandStr+0x3bc>
   d1648:	9e 4b       	subi333 $r1,$r1,#3
   d164a:	4c 00 82 b9 	beq $r0,$r1,d1bbc <AB_Log_HciCommandStr+0x914>
   d164e:	e2 01       	slt45 $r0,$r1
   d1650:	4e f3 02 b2 	bnez $r15,d1bb4 <AB_Log_HciCommandStr+0x90c>
   d1654:	9c 49       	addi333 $r1,$r1,#1
   d1656:	4c 00 82 b7 	beq $r0,$r1,d1bc4 <AB_Log_HciCommandStr+0x91c>
   d165a:	9c 49       	addi333 $r1,$r1,#1
   d165c:	4c 00 c3 57 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1660:	48 00 02 b6 	j d1bcc <AB_Log_HciCommandStr+0x924>
   d1664:	8c 2a       	addi45 $r1,#10
   d1666:	4c 00 82 d7 	beq $r0,$r1,d1c14 <AB_Log_HciCommandStr+0x96c>
   d166a:	5c f0 0c 53 	slti $r15,$r0,#3155
   d166e:	e8 06       	beqzs8 d167a <AB_Log_HciCommandStr+0x3d2>
   d1670:	8e 29       	subi45 $r1,#9
   d1672:	4c 00 c3 4c 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1676:	48 00 02 b3 	j d1bdc <AB_Log_HciCommandStr+0x934>
   d167a:	9c 4b       	addi333 $r1,$r1,#3
   d167c:	4c 00 82 b4 	beq $r0,$r1,d1be4 <AB_Log_HciCommandStr+0x93c>
   d1680:	9c 49       	addi333 $r1,$r1,#1
   d1682:	4c 00 c3 44 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1686:	48 00 02 b3 	j d1bec <AB_Log_HciCommandStr+0x944>
   d168a:	8c 28       	addi45 $r1,#8
   d168c:	4c 00 82 20 	beq $r0,$r1,d1acc <AB_Log_HciCommandStr+0x824>
   d1690:	5c f0 10 0a 	slti $r15,$r0,#4106
   d1694:	e8 0f       	beqzs8 d16b2 <AB_Log_HciCommandStr+0x40a>
   d1696:	9e 4e       	subi333 $r1,$r1,#6
   d1698:	4c 00 82 12 	beq $r0,$r1,d1abc <AB_Log_HciCommandStr+0x814>
   d169c:	e2 01       	slt45 $r0,$r1
   d169e:	4e f3 02 ab 	bnez $r15,d1bf4 <AB_Log_HciCommandStr+0x94c>
   d16a2:	9c 49       	addi333 $r1,$r1,#1
   d16a4:	4c 00 82 ac 	beq $r0,$r1,d1bfc <AB_Log_HciCommandStr+0x954>
   d16a8:	9c 49       	addi333 $r1,$r1,#1
   d16aa:	4c 00 c3 30 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d16ae:	48 00 02 0b 	j d1ac4 <AB_Log_HciCommandStr+0x81c>
   d16b2:	44 10 14 02 	movi $r1,#5122
   d16b6:	4c 00 82 13 	beq $r0,$r1,d1adc <AB_Log_HciCommandStr+0x834>
   d16ba:	5c f0 14 03 	slti $r15,$r0,#5123
   d16be:	e8 06       	beqzs8 d16ca <AB_Log_HciCommandStr+0x422>
   d16c0:	9e 49       	subi333 $r1,$r1,#1
   d16c2:	4c 00 c3 24 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d16c6:	48 00 02 07 	j d1ad4 <AB_Log_HciCommandStr+0x82c>
   d16ca:	9c 49       	addi333 $r1,$r1,#1
   d16cc:	4c 00 82 0c 	beq $r0,$r1,d1ae4 <AB_Log_HciCommandStr+0x83c>
   d16d0:	9c 4a       	addi333 $r1,$r1,#2
   d16d2:	4c 00 c3 1c 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d16d6:	48 00 02 0b 	j d1aec <AB_Log_HciCommandStr+0x844>
   d16da:	44 10 20 10 	movi $r1,#8208
   d16de:	4c 00 82 d4 	beq $r0,$r1,d1c86 <AB_Log_HciCommandStr+0x9de>
   d16e2:	5c f0 20 11 	slti $r15,$r0,#8209
   d16e6:	e8 58       	beqzs8 d1796 <AB_Log_HciCommandStr+0x4ee>
   d16e8:	8e 2a       	subi45 $r1,#10
   d16ea:	4c 00 82 a9 	beq $r0,$r1,d1c3c <AB_Log_HciCommandStr+0x994>
   d16ee:	5c f0 20 07 	slti $r15,$r0,#8199
   d16f2:	e8 30       	beqzs8 d1752 <AB_Log_HciCommandStr+0x4aa>
   d16f4:	44 10 18 04 	movi $r1,#6148
   d16f8:	4c 00 82 f7 	beq $r0,$r1,d1ce6 <AB_Log_HciCommandStr+0xa3e>
   d16fc:	5c f0 18 05 	slti $r15,$r0,#6149
   d1700:	e8 15       	beqzs8 d172a <AB_Log_HciCommandStr+0x482>
   d1702:	9e 4b       	subi333 $r1,$r1,#3
   d1704:	4c 00 81 f8 	beq $r0,$r1,d1af4 <AB_Log_HciCommandStr+0x84c>
   d1708:	5c f0 18 02 	slti $r15,$r0,#6146
   d170c:	e8 07       	beqzs8 d171a <AB_Log_HciCommandStr+0x472>
   d170e:	44 10 14 07 	movi $r1,#5127
   d1712:	4c 00 c2 fc 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1716:	48 00 02 7b 	j d1c0c <AB_Log_HciCommandStr+0x964>
   d171a:	9c 49       	addi333 $r1,$r1,#1
   d171c:	4c 00 81 f0 	beq $r0,$r1,d1afc <AB_Log_HciCommandStr+0x854>
   d1720:	9c 49       	addi333 $r1,$r1,#1
   d1722:	4c 00 c2 f4 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1726:	48 00 01 ef 	j d1b04 <AB_Log_HciCommandStr+0x85c>
   d172a:	44 10 20 02 	movi $r1,#8194
   d172e:	4c 00 82 7b 	beq $r0,$r1,d1c24 <AB_Log_HciCommandStr+0x97c>
   d1732:	5c f0 20 03 	slti $r15,$r0,#8195
   d1736:	e8 06       	beqzs8 d1742 <AB_Log_HciCommandStr+0x49a>
   d1738:	9e 49       	subi333 $r1,$r1,#1
   d173a:	4c 00 c2 e8 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d173e:	48 00 02 6f 	j d1c1c <AB_Log_HciCommandStr+0x974>
   d1742:	9c 49       	addi333 $r1,$r1,#1
   d1744:	4c 00 82 74 	beq $r0,$r1,d1c2c <AB_Log_HciCommandStr+0x984>
   d1748:	9c 4a       	addi333 $r1,$r1,#2
   d174a:	4c 00 c2 e0 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d174e:	48 00 02 73 	j d1c34 <AB_Log_HciCommandStr+0x98c>
   d1752:	9c 4d       	addi333 $r1,$r1,#5
   d1754:	4c 00 82 88 	beq $r0,$r1,d1c64 <AB_Log_HciCommandStr+0x9bc>
   d1758:	5c f0 20 0c 	slti $r15,$r0,#8204
   d175c:	e8 0f       	beqzs8 d177a <AB_Log_HciCommandStr+0x4d2>
   d175e:	9e 4b       	subi333 $r1,$r1,#3
   d1760:	4c 00 82 76 	beq $r0,$r1,d1c4c <AB_Log_HciCommandStr+0x9a4>
   d1764:	e2 01       	slt45 $r0,$r1
   d1766:	4e f3 02 6f 	bnez $r15,d1c44 <AB_Log_HciCommandStr+0x99c>
   d176a:	9c 49       	addi333 $r1,$r1,#1
   d176c:	4c 00 82 74 	beq $r0,$r1,d1c54 <AB_Log_HciCommandStr+0x9ac>
   d1770:	9c 49       	addi333 $r1,$r1,#1
   d1772:	4c 00 c2 cc 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1776:	48 00 02 73 	j d1c5c <AB_Log_HciCommandStr+0x9b4>
   d177a:	9c 4a       	addi333 $r1,$r1,#2
   d177c:	4c 00 82 7c 	beq $r0,$r1,d1c74 <AB_Log_HciCommandStr+0x9cc>
   d1780:	e2 01       	slt45 $r0,$r1
   d1782:	4e f3 02 75 	bnez $r15,d1c6c <AB_Log_HciCommandStr+0x9c4>
   d1786:	9c 49       	addi333 $r1,$r1,#1
   d1788:	4c 00 82 79 	beq $r0,$r1,d1c7a <AB_Log_HciCommandStr+0x9d2>
   d178c:	9c 49       	addi333 $r1,$r1,#1
   d178e:	4c 00 c2 be 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1792:	48 00 02 77 	j d1c80 <AB_Log_HciCommandStr+0x9d8>
   d1796:	8c 2a       	addi45 $r1,#10
   d1798:	4c 00 82 95 	beq $r0,$r1,d1cc2 <AB_Log_HciCommandStr+0xa1a>
   d179c:	5c f0 20 1b 	slti $r15,$r0,#8219
   d17a0:	e8 23       	beqzs8 d17e6 <AB_Log_HciCommandStr+0x53e>
   d17a2:	9e 4d       	subi333 $r1,$r1,#5
   d17a4:	4c 00 82 80 	beq $r0,$r1,d1ca4 <AB_Log_HciCommandStr+0x9fc>
   d17a8:	5c f0 20 16 	slti $r15,$r0,#8214
   d17ac:	e8 0f       	beqzs8 d17ca <AB_Log_HciCommandStr+0x522>
   d17ae:	9e 4b       	subi333 $r1,$r1,#3
   d17b0:	4c 00 82 71 	beq $r0,$r1,d1c92 <AB_Log_HciCommandStr+0x9ea>
   d17b4:	e2 01       	slt45 $r0,$r1
   d17b6:	4e f3 02 6b 	bnez $r15,d1c8c <AB_Log_HciCommandStr+0x9e4>
   d17ba:	9c 49       	addi333 $r1,$r1,#1
   d17bc:	4c 00 82 6e 	beq $r0,$r1,d1c98 <AB_Log_HciCommandStr+0x9f0>
   d17c0:	9c 49       	addi333 $r1,$r1,#1
   d17c2:	4c 00 c2 a4 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d17c6:	48 00 02 6c 	j d1c9e <AB_Log_HciCommandStr+0x9f6>
   d17ca:	9c 4a       	addi333 $r1,$r1,#2
   d17cc:	4c 00 82 72 	beq $r0,$r1,d1cb0 <AB_Log_HciCommandStr+0xa08>
   d17d0:	e2 01       	slt45 $r0,$r1
   d17d2:	4e f3 02 6c 	bnez $r15,d1caa <AB_Log_HciCommandStr+0xa02>
   d17d6:	9c 49       	addi333 $r1,$r1,#1
   d17d8:	4c 00 82 6f 	beq $r0,$r1,d1cb6 <AB_Log_HciCommandStr+0xa0e>
   d17dc:	9c 49       	addi333 $r1,$r1,#1
   d17de:	4c 00 c2 96 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d17e2:	48 00 02 6d 	j d1cbc <AB_Log_HciCommandStr+0xa14>
   d17e6:	9c 4d       	addi333 $r1,$r1,#5
   d17e8:	4c 00 82 7c 	beq $r0,$r1,d1ce0 <AB_Log_HciCommandStr+0xa38>
   d17ec:	5c f0 20 20 	slti $r15,$r0,#8224
   d17f0:	e8 0f       	beqzs8 d180e <AB_Log_HciCommandStr+0x566>
   d17f2:	9e 4b       	subi333 $r1,$r1,#3
   d17f4:	4c 00 82 6d 	beq $r0,$r1,d1cce <AB_Log_HciCommandStr+0xa26>
   d17f8:	e2 01       	slt45 $r0,$r1
   d17fa:	4e f3 02 67 	bnez $r15,d1cc8 <AB_Log_HciCommandStr+0xa20>
   d17fe:	9c 49       	addi333 $r1,$r1,#1
   d1800:	4c 00 82 6a 	beq $r0,$r1,d1cd4 <AB_Log_HciCommandStr+0xa2c>
   d1804:	9c 49       	addi333 $r1,$r1,#1
   d1806:	4c 00 c2 82 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d180a:	48 00 02 68 	j d1cda <AB_Log_HciCommandStr+0xa32>
   d180e:	44 10 40 00 	movi $r1,#16384
   d1812:	4c 00 82 70 	beq $r0,$r1,d1cf2 <AB_Log_HciCommandStr+0xa4a>
   d1816:	e2 20       	slt45 $r1,$r0
   d1818:	e9 0a       	bnezs8 d182c <AB_Log_HciCommandStr+0x584>
   d181a:	44 10 20 25 	movi $r1,#8229
   d181e:	4c 00 82 70 	beq $r0,$r1,d1cfe <AB_Log_HciCommandStr+0xa56>
   d1822:	9c 49       	addi333 $r1,$r1,#1
   d1824:	4c 00 c2 73 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1828:	48 00 02 6e 	j d1d04 <AB_Log_HciCommandStr+0xa5c>
   d182c:	9c 49       	addi333 $r1,$r1,#1
   d182e:	4c 00 82 5f 	beq $r0,$r1,d1cec <AB_Log_HciCommandStr+0xa44>
   d1832:	9c 49       	addi333 $r1,$r1,#1
   d1834:	4c 00 c2 6b 	bne $r0,$r1,d1d0a <AB_Log_HciCommandStr+0xa62>
   d1838:	48 00 02 60 	j d1cf8 <AB_Log_HciCommandStr+0xa50>
   d183c:	3e 0d 3e 14 	addi.gp $r0,#-180716
   d1840:	48 00 02 66 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1844:	3e 0d 3e 24 	addi.gp $r0,#-180700
   d1848:	48 00 02 62 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d184c:	3e 0d 3e 2c 	addi.gp $r0,#-180692
   d1850:	48 00 02 5e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1854:	3e 0d 3e 44 	addi.gp $r0,#-180668
   d1858:	48 00 02 5a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d185c:	3e 0d 3e 5c 	addi.gp $r0,#-180644
   d1860:	48 00 02 56 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1864:	3e 0d 3e 70 	addi.gp $r0,#-180624
   d1868:	48 00 02 52 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d186c:	3e 0d 3e 7c 	addi.gp $r0,#-180612
   d1870:	48 00 02 4e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1874:	3e 0d 3e 90 	addi.gp $r0,#-180592
   d1878:	48 00 02 4a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d187c:	3e 0d 3e a0 	addi.gp $r0,#-180576
   d1880:	48 00 02 46 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1884:	3e 0d 3e b0 	addi.gp $r0,#-180560
   d1888:	48 00 02 42 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d188c:	3e 0d 3e c4 	addi.gp $r0,#-180540
   d1890:	48 00 02 3e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1894:	3e 0d 3e dc 	addi.gp $r0,#-180516
   d1898:	48 00 02 3a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d189c:	3e 0d 3e f0 	addi.gp $r0,#-180496
   d18a0:	48 00 02 36 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d18a4:	3e 0d 3f 08 	addi.gp $r0,#-180472
   d18a8:	48 00 02 32 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d18ac:	3e 0d 3f 20 	addi.gp $r0,#-180448
   d18b0:	48 00 02 2e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d18b4:	3e 0d 3f 2c 	addi.gp $r0,#-180436
   d18b8:	48 00 02 2a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d18bc:	3e 0d 3f 40 	addi.gp $r0,#-180416
   d18c0:	48 00 02 26 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d18c4:	3e 0d 3f 54 	addi.gp $r0,#-180396
   d18c8:	48 00 02 22 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d18cc:	3e 0d 3f 64 	addi.gp $r0,#-180380
   d18d0:	48 00 02 1e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d18d4:	3e 0d 3f 74 	addi.gp $r0,#-180364
   d18d8:	48 00 02 1a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d18dc:	3e 0d 3f 8c 	addi.gp $r0,#-180340
   d18e0:	48 00 02 16 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d18e4:	3e 0d 3f a0 	addi.gp $r0,#-180320
   d18e8:	48 00 02 12 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d18ec:	3e 0d 3f b4 	addi.gp $r0,#-180300
   d18f0:	48 00 02 0e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d18f4:	3e 0d 3f c0 	addi.gp $r0,#-180288
   d18f8:	48 00 02 0a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d18fc:	3e 0d 3f cc 	addi.gp $r0,#-180276
   d1900:	48 00 02 06 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1904:	3e 0d 3f dc 	addi.gp $r0,#-180260
   d1908:	48 00 02 02 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d190c:	3e 0d 3f e8 	addi.gp $r0,#-180248
   d1910:	48 00 01 fe 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1914:	3e 0d 3f f8 	addi.gp $r0,#-180232
   d1918:	48 00 01 fa 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d191c:	3e 0d 40 04 	addi.gp $r0,#-180220
   d1920:	48 00 01 f6 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1924:	3e 0d 40 14 	addi.gp $r0,#-180204
   d1928:	48 00 01 f2 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d192c:	3e 0d 40 20 	addi.gp $r0,#-180192
   d1930:	48 00 01 ee 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1934:	3e 0d 40 34 	addi.gp $r0,#-180172
   d1938:	48 00 01 ea 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d193c:	3e 0d 40 48 	addi.gp $r0,#-180152
   d1940:	48 00 01 e6 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1944:	3e 0d 40 58 	addi.gp $r0,#-180136
   d1948:	48 00 01 e2 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d194c:	3e 0d 40 60 	addi.gp $r0,#-180128
   d1950:	48 00 01 de 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1954:	3e 0d 40 70 	addi.gp $r0,#-180112
   d1958:	48 00 01 da 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d195c:	3e 0d 40 78 	addi.gp $r0,#-180104
   d1960:	48 00 01 d6 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1964:	3e 0d 40 88 	addi.gp $r0,#-180088
   d1968:	48 00 01 d2 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d196c:	3e 0d 40 98 	addi.gp $r0,#-180072
   d1970:	48 00 01 ce 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1974:	3e 0d 40 ac 	addi.gp $r0,#-180052
   d1978:	48 00 01 ca 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d197c:	3e 0d 40 c4 	addi.gp $r0,#-180028
   d1980:	48 00 01 c6 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1984:	3e 0d 40 dc 	addi.gp $r0,#-180004
   d1988:	48 00 01 c2 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d198c:	3e 0d 40 f0 	addi.gp $r0,#-179984
   d1990:	48 00 01 be 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1994:	3e 0d 41 00 	addi.gp $r0,#-179968
   d1998:	48 00 01 ba 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d199c:	3e 0d 41 10 	addi.gp $r0,#-179952
   d19a0:	48 00 01 b6 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d19a4:	3e 0d 41 2c 	addi.gp $r0,#-179924
   d19a8:	48 00 01 b2 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d19ac:	3e 0d 41 48 	addi.gp $r0,#-179896
   d19b0:	48 00 01 ae 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d19b4:	3e 0d 41 5c 	addi.gp $r0,#-179876
   d19b8:	48 00 01 aa 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d19bc:	3e 0d 41 70 	addi.gp $r0,#-179856
   d19c0:	48 00 01 a6 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d19c4:	3e 0d 41 84 	addi.gp $r0,#-179836
   d19c8:	48 00 01 a2 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d19cc:	3e 0d 41 98 	addi.gp $r0,#-179816
   d19d0:	48 00 01 9e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d19d4:	3e 0d 41 b0 	addi.gp $r0,#-179792
   d19d8:	48 00 01 9a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d19dc:	3e 0d 41 cc 	addi.gp $r0,#-179764
   d19e0:	48 00 01 96 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d19e4:	3e 0d 41 e4 	addi.gp $r0,#-179740
   d19e8:	48 00 01 92 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d19ec:	3e 0d 41 fc 	addi.gp $r0,#-179716
   d19f0:	48 00 01 8e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d19f4:	3e 0d 42 10 	addi.gp $r0,#-179696
   d19f8:	48 00 01 8a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d19fc:	3e 0d 42 24 	addi.gp $r0,#-179676
   d1a00:	48 00 01 86 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a04:	3e 0d 42 38 	addi.gp $r0,#-179656
   d1a08:	48 00 01 82 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a0c:	3e 0d 42 4c 	addi.gp $r0,#-179636
   d1a10:	48 00 01 7e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a14:	3e 0d 42 64 	addi.gp $r0,#-179612
   d1a18:	48 00 01 7a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a1c:	3e 0d 42 7c 	addi.gp $r0,#-179588
   d1a20:	48 00 01 76 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a24:	3e 0d 42 90 	addi.gp $r0,#-179568
   d1a28:	48 00 01 72 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a2c:	3e 0d 42 a4 	addi.gp $r0,#-179548
   d1a30:	48 00 01 6e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a34:	3e 0d 42 bc 	addi.gp $r0,#-179524
   d1a38:	48 00 01 6a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a3c:	3e 0d 42 d8 	addi.gp $r0,#-179496
   d1a40:	48 00 01 66 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a44:	3e 0d 42 f0 	addi.gp $r0,#-179472
   d1a48:	48 00 01 62 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a4c:	3e 0d 43 08 	addi.gp $r0,#-179448
   d1a50:	48 00 01 5e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a54:	3e 0d 43 20 	addi.gp $r0,#-179424
   d1a58:	48 00 01 5a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a5c:	3e 0d 43 3c 	addi.gp $r0,#-179396
   d1a60:	48 00 01 56 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a64:	3e 0d 43 54 	addi.gp $r0,#-179372
   d1a68:	48 00 01 52 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a6c:	3e 0d 43 68 	addi.gp $r0,#-179352
   d1a70:	48 00 01 4e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a74:	3e 0d 43 7c 	addi.gp $r0,#-179332
   d1a78:	48 00 01 4a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a7c:	3e 0d 43 98 	addi.gp $r0,#-179304
   d1a80:	48 00 01 46 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a84:	3e 0d 43 ac 	addi.gp $r0,#-179284
   d1a88:	48 00 01 42 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a8c:	3e 0d 43 c8 	addi.gp $r0,#-179256
   d1a90:	48 00 01 3e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a94:	3e 0d 43 e4 	addi.gp $r0,#-179228
   d1a98:	48 00 01 3a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1a9c:	3e 0d 44 00 	addi.gp $r0,#-179200
   d1aa0:	48 00 01 36 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1aa4:	3e 0d 44 10 	addi.gp $r0,#-179184
   d1aa8:	48 00 01 32 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1aac:	3e 0d 44 28 	addi.gp $r0,#-179160
   d1ab0:	48 00 01 2e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1ab4:	3e 0d 44 40 	addi.gp $r0,#-179136
   d1ab8:	48 00 01 2a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1abc:	3e 0d 44 54 	addi.gp $r0,#-179116
   d1ac0:	48 00 01 26 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1ac4:	3e 0d 44 68 	addi.gp $r0,#-179096
   d1ac8:	48 00 01 22 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1acc:	3e 0d 44 7c 	addi.gp $r0,#-179076
   d1ad0:	48 00 01 1e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1ad4:	3e 0d 44 8c 	addi.gp $r0,#-179060
   d1ad8:	48 00 01 1a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1adc:	3e 0d 44 a8 	addi.gp $r0,#-179032
   d1ae0:	48 00 01 16 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1ae4:	3e 0d 44 c4 	addi.gp $r0,#-179004
   d1ae8:	48 00 01 12 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1aec:	3e 0d 44 d8 	addi.gp $r0,#-178984
   d1af0:	48 00 01 0e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1af4:	3e 0d 44 e4 	addi.gp $r0,#-178972
   d1af8:	48 00 01 0a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1afc:	3e 0d 44 f8 	addi.gp $r0,#-178952
   d1b00:	48 00 01 06 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b04:	3e 0d 45 0c 	addi.gp $r0,#-178932
   d1b08:	48 00 01 02 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b0c:	3e 0d 45 18 	addi.gp $r0,#-178920
   d1b10:	48 00 00 fe 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b14:	3e 0d 45 34 	addi.gp $r0,#-178892
   d1b18:	48 00 00 fa 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b1c:	3e 0d 45 48 	addi.gp $r0,#-178872
   d1b20:	48 00 00 f6 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b24:	3e 0d 45 64 	addi.gp $r0,#-178844
   d1b28:	48 00 00 f2 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b2c:	3e 0d 45 74 	addi.gp $r0,#-178828
   d1b30:	48 00 00 ee 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b34:	3e 0d 45 94 	addi.gp $r0,#-178796
   d1b38:	48 00 00 ea 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b3c:	3e 0d 45 b4 	addi.gp $r0,#-178764
   d1b40:	48 00 00 e6 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b44:	3e 0d 45 d4 	addi.gp $r0,#-178732
   d1b48:	48 00 00 e2 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b4c:	3e 0d 45 ec 	addi.gp $r0,#-178708
   d1b50:	48 00 00 de 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b54:	3e 0d 46 00 	addi.gp $r0,#-178688
   d1b58:	48 00 00 da 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b5c:	3e 0d 46 1c 	addi.gp $r0,#-178660
   d1b60:	48 00 00 d6 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b64:	3e 0d 46 34 	addi.gp $r0,#-178636
   d1b68:	48 00 00 d2 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b6c:	3e 0d 46 54 	addi.gp $r0,#-178604
   d1b70:	48 00 00 ce 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b74:	3e 0d 46 70 	addi.gp $r0,#-178576
   d1b78:	48 00 00 ca 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b7c:	3e 0d 46 94 	addi.gp $r0,#-178540
   d1b80:	48 00 00 c6 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b84:	3e 0d 46 b0 	addi.gp $r0,#-178512
   d1b88:	48 00 00 c2 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b8c:	3e 0d 46 cc 	addi.gp $r0,#-178484
   d1b90:	48 00 00 be 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b94:	3e 0d 46 e8 	addi.gp $r0,#-178456
   d1b98:	48 00 00 ba 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1b9c:	3e 0d 46 fc 	addi.gp $r0,#-178436
   d1ba0:	48 00 00 b6 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1ba4:	3e 0d 47 14 	addi.gp $r0,#-178412
   d1ba8:	48 00 00 b2 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1bac:	3e 0d 47 28 	addi.gp $r0,#-178392
   d1bb0:	48 00 00 ae 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1bb4:	3e 0d 47 3c 	addi.gp $r0,#-178372
   d1bb8:	48 00 00 aa 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1bbc:	3e 0d 47 4c 	addi.gp $r0,#-178356
   d1bc0:	48 00 00 a6 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1bc4:	3e 0d 47 5c 	addi.gp $r0,#-178340
   d1bc8:	48 00 00 a2 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1bcc:	3e 0d 47 70 	addi.gp $r0,#-178320
   d1bd0:	48 00 00 9e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1bd4:	3e 0d 47 88 	addi.gp $r0,#-178296
   d1bd8:	48 00 00 9a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1bdc:	3e 0d 47 a4 	addi.gp $r0,#-178268
   d1be0:	48 00 00 96 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1be4:	3e 0d 47 c0 	addi.gp $r0,#-178240
   d1be8:	48 00 00 92 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1bec:	3e 0d 47 dc 	addi.gp $r0,#-178212
   d1bf0:	48 00 00 8e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1bf4:	3e 0d 47 f8 	addi.gp $r0,#-178184
   d1bf8:	48 00 00 8a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1bfc:	3e 0d 48 0c 	addi.gp $r0,#-178164
   d1c00:	48 00 00 86 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c04:	3e 0d 48 24 	addi.gp $r0,#-178140
   d1c08:	48 00 00 82 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c0c:	3e 0d 48 3c 	addi.gp $r0,#-178116
   d1c10:	48 00 00 7e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c14:	3e 0d 48 48 	addi.gp $r0,#-178104
   d1c18:	48 00 00 7a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c1c:	3e 0d 48 64 	addi.gp $r0,#-178076
   d1c20:	48 00 00 76 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c24:	3e 0d 48 78 	addi.gp $r0,#-178056
   d1c28:	48 00 00 72 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c2c:	3e 0d 48 8c 	addi.gp $r0,#-178036
   d1c30:	48 00 00 6e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c34:	3e 0d 48 ac 	addi.gp $r0,#-178004
   d1c38:	48 00 00 6a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c3c:	3e 0d 48 c4 	addi.gp $r0,#-177980
   d1c40:	48 00 00 66 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c44:	3e 0d 48 e4 	addi.gp $r0,#-177948
   d1c48:	48 00 00 62 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c4c:	3e 0d 49 0c 	addi.gp $r0,#-177908
   d1c50:	48 00 00 5e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c54:	3e 0d 49 24 	addi.gp $r0,#-177884
   d1c58:	48 00 00 5a 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c5c:	3e 0d 49 40 	addi.gp $r0,#-177856
   d1c60:	48 00 00 56 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c64:	3e 0d 49 5c 	addi.gp $r0,#-177828
   d1c68:	48 00 00 52 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c6c:	3e 0d 49 74 	addi.gp $r0,#-177804
   d1c70:	48 00 00 4e 	j d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c74:	3e 0d 49 88 	addi.gp $r0,#-177784
   d1c78:	d5 4a       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c7a:	3e 0d 49 a0 	addi.gp $r0,#-177760
   d1c7e:	d5 47       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c80:	3e 0d 49 bc 	addi.gp $r0,#-177732
   d1c84:	d5 44       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c86:	3e 0d 49 d4 	addi.gp $r0,#-177708
   d1c8a:	d5 41       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c8c:	3e 0d 49 e8 	addi.gp $r0,#-177688
   d1c90:	d5 3e       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c92:	3e 0d 4a 04 	addi.gp $r0,#-177660
   d1c96:	d5 3b       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c98:	3e 0d 4a 28 	addi.gp $r0,#-177624
   d1c9c:	d5 38       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1c9e:	3e 0d 4a 40 	addi.gp $r0,#-177600
   d1ca2:	d5 35       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1ca4:	3e 0d 4a 64 	addi.gp $r0,#-177564
   d1ca8:	d5 32       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1caa:	3e 0d 4a 78 	addi.gp $r0,#-177544
   d1cae:	d5 2f       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1cb0:	3e 0d 4a 94 	addi.gp $r0,#-177516
   d1cb4:	d5 2c       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1cb6:	3e 0d 4a a0 	addi.gp $r0,#-177504
   d1cba:	d5 29       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1cbc:	3e 0d 4a a8 	addi.gp $r0,#-177496
   d1cc0:	d5 26       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1cc2:	3e 0d 4a bc 	addi.gp $r0,#-177476
   d1cc6:	d5 23       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1cc8:	3e 0d 4a dc 	addi.gp $r0,#-177444
   d1ccc:	d5 20       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1cce:	3e 0d 4b 04 	addi.gp $r0,#-177404
   d1cd2:	d5 1d       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1cd4:	3e 0d 4b 1c 	addi.gp $r0,#-177380
   d1cd8:	d5 1a       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1cda:	3e 0d 4b 30 	addi.gp $r0,#-177360
   d1cde:	d5 17       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1ce0:	3e 0d 4b 44 	addi.gp $r0,#-177340
   d1ce4:	d5 14       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1ce6:	3e 0d 4b 50 	addi.gp $r0,#-177328
   d1cea:	d5 11       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1cec:	3e 0d 4b 5c 	addi.gp $r0,#-177316
   d1cf0:	d5 0e       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1cf2:	3e 0d 4b 7c 	addi.gp $r0,#-177284
   d1cf6:	d5 0b       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1cf8:	3e 0d 4b 9c 	addi.gp $r0,#-177252
   d1cfc:	d5 08       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1cfe:	3e 0d 4b bc 	addi.gp $r0,#-177220
   d1d02:	d5 05       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1d04:	3e 0d 4b e8 	addi.gp $r0,#-177176
   d1d08:	d5 02       	j8 d1d0c <AB_Log_HciCommandStr+0xa64>
   d1d0a:	84 00       	movi55 $r0,#0
   d1d0c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d1d0e <AB_Log_HciEventParseStr>:
   d1d0e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d1d10:	96 00       	zeb33 $r0,$r0
   d1d12:	80 e2       	mov55 $r7,$r2
   d1d14:	80 c3       	mov55 $r6,$r3
   d1d16:	5a 08 0e 27 	bnec $r0,#14,d1d64 <AB_Log_HciEventParseStr+0x56>
   d1d1a:	00 81 00 02 	lbi $r8,[$r2+#0x2]
   d1d1e:	a6 11       	lbi333 $r0,[$r2+#0x1]
   d1d20:	40 84 20 08 	slli $r8,$r8,#8
   d1d24:	89 00       	add45 $r8,$r0
   d1d26:	40 04 00 13 	zeh $r0,$r8
   d1d2a:	49 ff fa bf 	jal d12a8 <AB_Log_HciCommandStr>
   d1d2e:	80 60       	mov55 $r3,$r0
   d1d30:	c0 06       	beqz38 $r0,d1d3c <AB_Log_HciEventParseStr+0x2e>
   d1d32:	80 06       	mov55 $r0,$r6
   d1d34:	3e 1d 4c 08 	addi.gp $r1,#-177144
   d1d38:	80 43       	mov55 $r2,$r3
   d1d3a:	d5 05       	j8 d1d44 <AB_Log_HciEventParseStr+0x36>
   d1d3c:	80 06       	mov55 $r0,$r6
   d1d3e:	3e 1d 4c 0c 	addi.gp $r1,#-177140
   d1d42:	80 48       	mov55 $r2,$r8
   d1d44:	49 00 1a 3e 	jal d51c0 <sprintf>
   d1d48:	a6 3b       	lbi333 $r0,[$r7+#0x3]
   d1d4a:	c8 04       	bnez38 $r0,d1d52 <AB_Log_HciEventParseStr+0x44>
   d1d4c:	3e 3d 4c 28 	addi.gp $r3,#-177112
   d1d50:	d5 03       	j8 d1d56 <AB_Log_HciEventParseStr+0x48>
   d1d52:	3e 3d 4c 2c 	addi.gp $r3,#-177108
   d1d56:	80 06       	mov55 $r0,$r6
   d1d58:	3e 1d 4c 34 	addi.gp $r1,#-177100
   d1d5c:	80 46       	mov55 $r2,$r6
   d1d5e:	49 00 1a 31 	jal d51c0 <sprintf>
   d1d62:	d5 03       	j8 d1d68 <AB_Log_HciEventParseStr+0x5a>
   d1d64:	84 00       	movi55 $r0,#0
   d1d66:	ae 18       	sbi333 $r0,[$r3+#0x0]
   d1d68:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d1d6a <HexDisplay_internal>:
   d1d6a:	fc 4a       	push25 $r10,#0x50    ! {$r6~$r10, $fp, $gp, $lp}
   d1d6c:	96 01       	zeh33 $r0,$r0
   d1d6e:	96 91       	zeh33 $r2,$r2
   d1d70:	96 d8       	zeb33 $r3,$r3
   d1d72:	f1 81       	swi37.sp $r1,[+#0x4]
   d1d74:	f0 82       	swi37.sp $r0,[+#0x8]
   d1d76:	f3 83       	swi37.sp $r3,[+#0xc]
   d1d78:	81 01       	mov55 $r8,$r1
   d1d7a:	41 c0 88 00 	add $fp,$r1,$r2
   d1d7e:	b1 85       	addri36.sp $r6,#0x14
   d1d80:	48 00 00 60 	j d1e40 <HexDisplay_internal+0xd6>
   d1d84:	3c 1d f3 f2 	lwi.gp $r1,[+#-12344]
   d1d88:	c1 10       	beqz38 $r1,d1da8 <HexDisplay_internal+0x3e>
   d1d8a:	f2 01       	lwi37.sp $r2,[+#0x4]
   d1d8c:	40 04 24 00 	add $r0,$r8,$r9
   d1d90:	9a 02       	sub333 $r0,$r0,$r2
   d1d92:	96 01       	zeh33 $r0,$r0
   d1d94:	dd 21       	jral5 $r1
   d1d96:	80 40       	mov55 $r2,$r0
   d1d98:	5a 00 ff 08 	beqc $r0,#255,d1da8 <HexDisplay_internal+0x3e>
   d1d9c:	80 07       	mov55 $r0,$r7
   d1d9e:	3e 1d 4c 54 	addi.gp $r1,#-177068
   d1da2:	49 00 1a 0f 	jal d51c0 <sprintf>
   d1da6:	99 f8       	add333 $r7,$r7,$r0
   d1da8:	40 24 24 00 	add $r2,$r8,$r9
   d1dac:	e2 5c       	slt45 $r2,$fp
   d1dae:	e8 09       	beqzs8 d1dc0 <HexDisplay_internal+0x56>
   d1db0:	a6 90       	lbi333 $r2,[$r2+#0x0]
   d1db2:	80 07       	mov55 $r0,$r7
   d1db4:	3e 1d 4c 3c 	addi.gp $r1,#-177092
   d1db8:	49 00 1a 04 	jal d51c0 <sprintf>
   d1dbc:	99 f8       	add333 $r7,$r7,$r0
   d1dbe:	d5 07       	j8 d1dcc <HexDisplay_internal+0x62>
   d1dc0:	80 07       	mov55 $r0,$r7
   d1dc2:	3e 1d 3b 18 	addi.gp $r1,#-181480
   d1dc6:	49 ff b1 91 	jal c80e8 <strcpy>
   d1dca:	9d fb       	addi333 $r7,$r7,#3
   d1dcc:	8d 21       	addi45 $r9,#1
   d1dce:	5a 98 04 09 	bnec $r9,#4,d1de0 <HexDisplay_internal+0x76>
   d1dd2:	80 07       	mov55 $r0,$r7
   d1dd4:	3e 1d 4c 44 	addi.gp $r1,#-177084
   d1dd8:	49 ff b1 88 	jal c80e8 <strcpy>
   d1ddc:	9d fa       	addi333 $r7,$r7,#2
   d1dde:	d5 d3       	j8 d1d84 <HexDisplay_internal+0x1a>
   d1de0:	e5 28       	sltsi45 $r9,#8
   d1de2:	e9 d1       	bnezs8 d1d84 <HexDisplay_internal+0x1a>
   d1de4:	80 07       	mov55 $r0,$r7
   d1de6:	3e 1d 3a ec 	addi.gp $r1,#-181524
   d1dea:	49 ff b1 7f 	jal c80e8 <strcpy>
   d1dee:	9d fc       	addi333 $r7,$r7,#4
   d1df0:	81 48       	mov55 $r10,$r8
   d1df2:	85 20       	movi55 $r9,#0
   d1df4:	e3 5c       	slt45 $r10,$fp
   d1df6:	e8 15       	beqzs8 d1e20 <HexDisplay_internal+0xb6>
   d1df8:	00 25 00 00 	lbi $r2,[$r10+#0x0]
   d1dfc:	50 01 7f e0 	addi $r0,$r2,#-32
   d1e00:	96 00       	zeb33 $r0,$r0
   d1e02:	5c f0 00 5f 	slti $r15,$r0,#95
   d1e06:	e9 02       	bnezs8 d1e0a <HexDisplay_internal+0xa0>
   d1e08:	fa 5e       	movpi45 $r2,#0x2e
   d1e0a:	80 07       	mov55 $r0,$r7
   d1e0c:	3e 1d 4c 48 	addi.gp $r1,#-177080
   d1e10:	8d 21       	addi45 $r9,#1
   d1e12:	49 00 19 d7 	jal d51c0 <sprintf>
   d1e16:	8d 41       	addi45 $r10,#1
   d1e18:	5a 90 08 04 	beqc $r9,#8,d1e20 <HexDisplay_internal+0xb6>
   d1e1c:	99 f8       	add333 $r7,$r7,$r0
   d1e1e:	d5 eb       	j8 d1df4 <HexDisplay_internal+0x8a>
   d1e20:	f0 03       	lwi37.sp $r0,[+#0xc]
   d1e22:	c0 07       	beqz38 $r0,d1e30 <HexDisplay_internal+0xc6>
   d1e24:	3e 0d 4c 4c 	addi.gp $r0,#-177076
   d1e28:	f1 02       	lwi37.sp $r1,[+#0x8]
   d1e2a:	80 46       	mov55 $r2,$r6
   d1e2c:	84 60       	movi55 $r3,#0
   d1e2e:	d5 06       	j8 d1e3a <HexDisplay_internal+0xd0>
   d1e30:	f1 02       	lwi37.sp $r1,[+#0x8]
   d1e32:	f3 03       	lwi37.sp $r3,[+#0xc]
   d1e34:	3e 0d 4c 4c 	addi.gp $r0,#-177076
   d1e38:	80 46       	mov55 $r2,$r6
   d1e3a:	49 00 01 7a 	jal d212e <printf>
   d1e3e:	89 09       	add45 $r8,$r9
   d1e40:	e3 1c       	slt45 $r8,$fp
   d1e42:	e8 05       	beqzs8 d1e4c <HexDisplay_internal+0xe2>
   d1e44:	80 e6       	mov55 $r7,$r6
   d1e46:	85 20       	movi55 $r9,#0
   d1e48:	48 ff ff 9e 	j d1d84 <HexDisplay_internal+0x1a>
   d1e4c:	fc ca       	pop25 $r10,#0x50    ! {$r6~$r10, $fp, $gp, $lp}

000d1e4e <AB_Log_EvtShow>:
   d1e4e:	fc 47       	push25 $r10,#0x38    ! {$r6~$r10, $fp, $gp, $lp}
   d1e50:	97 80       	zeb33 $r6,$r0
   d1e52:	80 06       	mov55 $r0,$r6
   d1e54:	81 02       	mov55 $r8,$r2
   d1e56:	97 c8       	zeb33 $r7,$r1
   d1e58:	49 ff fa 1b 	jal d128e <AB_Log_HciEventStr>
   d1e5c:	80 60       	mov55 $r3,$r0
   d1e5e:	c0 06       	beqz38 $r0,d1e6a <AB_Log_EvtShow+0x1c>
   d1e60:	3e 0d 4c 5c 	addi.gp $r0,#-177060
   d1e64:	fa 38       	movpi45 $r1,#0x28
   d1e66:	fa 51       	movpi45 $r2,#0x21
   d1e68:	d5 06       	j8 d1e74 <AB_Log_EvtShow+0x26>
   d1e6a:	3e 0d 4c 6c 	addi.gp $r0,#-177044
   d1e6e:	fa 38       	movpi45 $r1,#0x28
   d1e70:	fa 51       	movpi45 $r2,#0x21
   d1e72:	80 66       	mov55 $r3,$r6
   d1e74:	50 9f 80 04 	addi $r9,$sp,#4
   d1e78:	49 00 01 5b 	jal d212e <printf>
   d1e7c:	fd 03       	movd44 $r0,$r6
   d1e7e:	fd 14       	movd44 $r2,$r8
   d1e80:	49 ff ff 47 	jal d1d0e <AB_Log_HciEventParseStr>
   d1e84:	80 49       	mov55 $r2,$r9
   d1e86:	fa 32       	movpi45 $r1,#0x22
   d1e88:	3e 0d 4c 88 	addi.gp $r0,#-177016
   d1e8c:	49 00 01 51 	jal d212e <printf>
   d1e90:	84 20       	movi55 $r1,#0
   d1e92:	3e 0d 4c 54 	addi.gp $r0,#-177068
   d1e96:	49 00 01 4c 	jal d212e <printf>
   d1e9a:	fa 18       	movpi45 $r0,#0x28
   d1e9c:	80 28       	mov55 $r1,$r8
   d1e9e:	80 47       	mov55 $r2,$r7
   d1ea0:	84 60       	movi55 $r3,#0
   d1ea2:	49 ff ff 64 	jal d1d6a <HexDisplay_internal>
   d1ea6:	fc c7       	pop25 $r10,#0x38    ! {$r6~$r10, $fp, $gp, $lp}

000d1ea8 <AB_Log_CmdShow>:
   d1ea8:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d1eaa:	97 81       	zeh33 $r6,$r0
   d1eac:	97 c9       	zeh33 $r7,$r1
   d1eae:	3e 0d 4c 54 	addi.gp $r0,#-177068
   d1eb2:	fa 2f       	movpi45 $r1,#0x1f
   d1eb4:	81 02       	mov55 $r8,$r2
   d1eb6:	49 00 01 3c 	jal d212e <printf>
   d1eba:	80 06       	mov55 $r0,$r6
   d1ebc:	49 ff f9 f6 	jal d12a8 <AB_Log_HciCommandStr>
   d1ec0:	80 60       	mov55 $r3,$r0
   d1ec2:	c0 05       	beqz38 $r0,d1ecc <AB_Log_CmdShow+0x24>
   d1ec4:	3e 0d 4c 94 	addi.gp $r0,#-177004
   d1ec8:	80 23       	mov55 $r1,$r3
   d1eca:	d5 04       	j8 d1ed2 <AB_Log_CmdShow+0x2a>
   d1ecc:	3e 0d 4c 9c 	addi.gp $r0,#-176996
   d1ed0:	80 26       	mov55 $r1,$r6
   d1ed2:	49 00 01 2e 	jal d212e <printf>
   d1ed6:	84 20       	movi55 $r1,#0
   d1ed8:	3e 0d 4c 54 	addi.gp $r0,#-177068
   d1edc:	49 00 01 29 	jal d212e <printf>
   d1ee0:	84 00       	movi55 $r0,#0
   d1ee2:	80 28       	mov55 $r1,$r8
   d1ee4:	80 47       	mov55 $r2,$r7
   d1ee6:	84 61       	movi55 $r3,#1
   d1ee8:	49 ff ff 41 	jal d1d6a <HexDisplay_internal>
   d1eec:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d1eee <AB_Log_HexDisplay>:
   d1eee:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d1ef0:	3c 3f f3 f2 	swi.gp $r3,[+#-12344]
   d1ef4:	96 01       	zeh33 $r0,$r0
   d1ef6:	96 91       	zeh33 $r2,$r2
   d1ef8:	84 61       	movi55 $r3,#1
   d1efa:	49 ff ff 38 	jal d1d6a <HexDisplay_internal>
   d1efe:	84 00       	movi55 $r0,#0
   d1f00:	3c 0f f3 f2 	swi.gp $r0,[+#-12344]
   d1f04:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d1f06 <AB_Flash_ByteProgram>:
   d1f06:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d1f08:	46 40 00 81 	sethi $r4,#0x81
   d1f0c:	58 42 00 00 	ori $r4,$r4,#0x0
   d1f10:	96 91       	zeh33 $r2,$r2
   d1f12:	e2 04       	slt45 $r0,$r4
   d1f14:	e9 0d       	bnezs8 d1f2e <AB_Flash_ByteProgram+0x28>
   d1f16:	98 d0       	add333 $r3,$r2,$r0
   d1f18:	46 40 00 85 	sethi $r4,#0x85
   d1f1c:	58 42 00 00 	ori $r4,$r4,#0x0
   d1f20:	e2 83       	slt45 $r4,$r3
   d1f22:	e9 06       	bnezs8 d1f2e <AB_Flash_ByteProgram+0x28>
   d1f24:	49 00 08 78 	jal d3014 <DRV_Flash_ByteProgram>
   d1f28:	5c 00 00 01 	slti $r0,$r0,#1
   d1f2c:	d5 02       	j8 d1f30 <AB_Flash_ByteProgram+0x2a>
   d1f2e:	84 00       	movi55 $r0,#0
   d1f30:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d1f32 <AB_Flash_SectorErase>:
   d1f32:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d1f34:	46 20 00 81 	sethi $r2,#0x81
   d1f38:	58 21 00 00 	ori $r2,$r2,#0x0
   d1f3c:	e2 02       	slt45 $r0,$r2
   d1f3e:	e9 0b       	bnezs8 d1f54 <AB_Flash_SectorErase+0x22>
   d1f40:	46 20 00 85 	sethi $r2,#0x85
   d1f44:	58 21 00 00 	ori $r2,$r2,#0x0
   d1f48:	e2 40       	slt45 $r2,$r0
   d1f4a:	e9 05       	bnezs8 d1f54 <AB_Flash_SectorErase+0x22>
   d1f4c:	49 00 09 ff 	jal d334a <DRV_Flash_SectorErase>
   d1f50:	84 01       	movi55 $r0,#1
   d1f52:	d5 02       	j8 d1f56 <AB_Flash_SectorErase+0x24>
   d1f54:	84 00       	movi55 $r0,#0
   d1f56:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d1f58 <_sbrk>:
   d1f58:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d1f5a:	3c 1d f1 a6 	lwi.gp $r1,[+#-14696]
   d1f5e:	46 30 01 07 	sethi $r3,#0x107
   d1f62:	58 31 80 00 	ori $r3,$r3,#0x0
   d1f66:	98 01       	add333 $r0,$r0,$r1
   d1f68:	92 6c       	srli45 $r3,#12
   d1f6a:	40 31 b0 08 	slli $r3,$r3,#12
   d1f6e:	e2 03       	slt45 $r0,$r3
   d1f70:	e8 03       	beqzs8 d1f76 <_sbrk+0x1e>
   d1f72:	3c 0f f1 a6 	swi.gp $r0,[+#-14696]
   d1f76:	80 01       	mov55 $r0,$r1
   d1f78:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d1f7a <free>:
   d1f7a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d1f7c:	80 20       	mov55 $r1,$r0
   d1f7e:	64 42 00 02 	mfsr $r4,$PSW
   d1f82:	64 02 00 43 	setgie.d
   d1f86:	64 00 00 08 	dsb
   d1f8a:	46 30 01 00 	sethi $r3,#0x100
   d1f8e:	58 31 80 b0 	ori $r3,$r3,#0xb0
   d1f92:	b4 43       	lwi450 $r2,[$r3]
   d1f94:	9c 11       	addi333 $r0,$r2,#1
   d1f96:	b6 03       	swi450 $r0,[$r3]
   d1f98:	ca 06       	bnez38 $r2,d1fa4 <free+0x2a>
   d1f9a:	46 00 01 00 	sethi $r0,#0x100
   d1f9e:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d1fa2:	b6 80       	swi450 $r4,[$r0]
   d1fa4:	84 00       	movi55 $r0,#0
   d1fa6:	49 00 15 f1 	jal d4b88 <_free_r>
   d1faa:	46 00 01 00 	sethi $r0,#0x100
   d1fae:	58 00 00 b0 	ori $r0,$r0,#0xb0
   d1fb2:	b4 20       	lwi450 $r1,[$r0]
   d1fb4:	9e 49       	subi333 $r1,$r1,#1
   d1fb6:	b6 20       	swi450 $r1,[$r0]
   d1fb8:	b4 00       	lwi450 $r0,[$r0]
   d1fba:	c8 0c       	bnez38 $r0,d1fd2 <free+0x58>
   d1fbc:	46 00 01 00 	sethi $r0,#0x100
   d1fc0:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d1fc4:	b4 00       	lwi450 $r0,[$r0]
   d1fc6:	96 04       	xlsb33 $r0,$r0
   d1fc8:	c0 05       	beqz38 $r0,d1fd2 <free+0x58>
   d1fca:	64 12 00 43 	setgie.e
   d1fce:	64 00 00 08 	dsb
   d1fd2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d1fd4 <ab_malloc_info_printf>:
   d1fd4:	fc 05       	push25 $r6,#0x28    ! {$r6, $fp, $gp, $lp}
   d1fd6:	80 1f       	mov55 $r0,$sp
   d1fd8:	49 00 18 ba 	jal d514c <mallinfo>
   d1fdc:	b4 3f       	lwi450 $r1,[$sp]
   d1fde:	3e 0d 55 f4 	addi.gp $r0,#-174604
   d1fe2:	49 00 00 e6 	jal d21ae <Ab_printf_blocking>
   d1fe6:	f1 01       	lwi37.sp $r1,[+#0x4]
   d1fe8:	3e 0d 56 20 	addi.gp $r0,#-174560
   d1fec:	49 00 00 e1 	jal d21ae <Ab_printf_blocking>
   d1ff0:	f1 02       	lwi37.sp $r1,[+#0x8]
   d1ff2:	3e 0d 56 4c 	addi.gp $r0,#-174516
   d1ff6:	49 00 00 dc 	jal d21ae <Ab_printf_blocking>
   d1ffa:	f1 03       	lwi37.sp $r1,[+#0xc]
   d1ffc:	3e 0d 56 78 	addi.gp $r0,#-174472
   d2000:	49 00 00 d7 	jal d21ae <Ab_printf_blocking>
   d2004:	f1 04       	lwi37.sp $r1,[+#0x10]
   d2006:	3e 0d 56 a4 	addi.gp $r0,#-174428
   d200a:	49 00 00 d2 	jal d21ae <Ab_printf_blocking>
   d200e:	f1 05       	lwi37.sp $r1,[+#0x14]
   d2010:	3e 0d 56 d0 	addi.gp $r0,#-174384
   d2014:	49 00 00 cd 	jal d21ae <Ab_printf_blocking>
   d2018:	f1 06       	lwi37.sp $r1,[+#0x18]
   d201a:	3e 0d 56 fc 	addi.gp $r0,#-174340
   d201e:	49 00 00 c8 	jal d21ae <Ab_printf_blocking>
   d2022:	f1 07       	lwi37.sp $r1,[+#0x1c]
   d2024:	3e 0d 57 28 	addi.gp $r0,#-174296
   d2028:	49 00 00 c3 	jal d21ae <Ab_printf_blocking>
   d202c:	f1 08       	lwi37.sp $r1,[+#0x20]
   d202e:	3e 0d 57 54 	addi.gp $r0,#-174252
   d2032:	49 00 00 be 	jal d21ae <Ab_printf_blocking>
   d2036:	f1 09       	lwi37.sp $r1,[+#0x24]
   d2038:	3e 0d 57 80 	addi.gp $r0,#-174208
   d203c:	80 df       	mov55 $r6,$sp
   d203e:	49 00 00 b8 	jal d21ae <Ab_printf_blocking>
   d2042:	fc 85       	pop25 $r6,#0x28    ! {$r6, $fp, $gp, $lp}

000d2044 <malloc>:
   d2044:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d2046:	80 e0       	mov55 $r7,$r0
   d2048:	81 1e       	mov55 $r8,$lp
   d204a:	64 22 00 02 	mfsr $r2,$PSW
   d204e:	64 02 00 43 	setgie.d
   d2052:	64 00 00 08 	dsb
   d2056:	46 10 01 00 	sethi $r1,#0x100
   d205a:	58 10 80 b0 	ori $r1,$r1,#0xb0
   d205e:	b4 01       	lwi450 $r0,[$r1]
   d2060:	9c c1       	addi333 $r3,$r0,#1
   d2062:	b6 61       	swi450 $r3,[$r1]
   d2064:	c8 06       	bnez38 $r0,d2070 <malloc+0x2c>
   d2066:	46 00 01 00 	sethi $r0,#0x100
   d206a:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d206e:	b6 40       	swi450 $r2,[$r0]
   d2070:	84 00       	movi55 $r0,#0
   d2072:	80 27       	mov55 $r1,$r7
   d2074:	49 00 16 47 	jal d4d02 <_malloc_r>
   d2078:	46 30 01 00 	sethi $r3,#0x100
   d207c:	58 31 80 b0 	ori $r3,$r3,#0xb0
   d2080:	80 c0       	mov55 $r6,$r0
   d2082:	b4 03       	lwi450 $r0,[$r3]
   d2084:	9e 01       	subi333 $r0,$r0,#1
   d2086:	b6 03       	swi450 $r0,[$r3]
   d2088:	b4 03       	lwi450 $r0,[$r3]
   d208a:	c8 0c       	bnez38 $r0,d20a2 <malloc+0x5e>
   d208c:	46 00 01 00 	sethi $r0,#0x100
   d2090:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d2094:	b4 00       	lwi450 $r0,[$r0]
   d2096:	96 04       	xlsb33 $r0,$r0
   d2098:	c0 05       	beqz38 $r0,d20a2 <malloc+0x5e>
   d209a:	64 12 00 43 	setgie.e
   d209e:	64 00 00 08 	dsb
   d20a2:	ce 09       	bnez38 $r6,d20b4 <malloc+0x70>
   d20a4:	49 ff ff 98 	jal d1fd4 <ab_malloc_info_printf>
   d20a8:	3e 0d 57 ac 	addi.gp $r0,#-174164
   d20ac:	80 27       	mov55 $r1,$r7
   d20ae:	80 48       	mov55 $r2,$r8
   d20b0:	49 00 00 7f 	jal d21ae <Ab_printf_blocking>
   d20b4:	80 06       	mov55 $r0,$r6
   d20b6:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d20b8 <ab_modue_enum>:
   d20b8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d20ba:	c8 03       	bnez38 $r0,d20c0 <ab_modue_enum+0x8>
   d20bc:	3e 0c 40 20 	addi.gp $r0,#-245728
   d20c0:	9c 04       	addi333 $r0,$r0,#4
   d20c2:	3e 1c 40 2c 	addi.gp $r1,#-245716
   d20c6:	4c 00 c0 03 	bne $r0,$r1,d20cc <ab_modue_enum+0x14>
   d20ca:	84 00       	movi55 $r0,#0
   d20cc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d20ce <AB_module_count>:
   d20ce:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d20d0:	81 00       	mov55 $r8,$r0
   d20d2:	c0 04       	beqz38 $r0,d20da <AB_module_count+0xc>
   d20d4:	84 c0       	movi55 $r6,#0
   d20d6:	80 e6       	mov55 $r7,$r6
   d20d8:	d5 10       	j8 d20f8 <AB_module_count+0x2a>
   d20da:	3e 7c 40 20 	addi.gp $r7,#-245728
   d20de:	3e 0c 40 2c 	addi.gp $r0,#-245716
   d20e2:	9b c7       	sub333 $r7,$r0,$r7
   d20e4:	90 e2       	srai45 $r7,#2
   d20e6:	9f f9       	subi333 $r7,$r7,#1
   d20e8:	d5 0d       	j8 d2102 <AB_module_count+0x34>
   d20ea:	b4 06       	lwi450 $r0,[$r6]
   d20ec:	80 28       	mov55 $r1,$r8
   d20ee:	b4 00       	lwi450 $r0,[$r0]
   d20f0:	49 ff af d4 	jal c8098 <strcmp>
   d20f4:	c8 02       	bnez38 $r0,d20f8 <AB_module_count+0x2a>
   d20f6:	9d f9       	addi333 $r7,$r7,#1
   d20f8:	80 06       	mov55 $r0,$r6
   d20fa:	49 ff ff df 	jal d20b8 <ab_modue_enum>
   d20fe:	80 c0       	mov55 $r6,$r0
   d2100:	c8 f5       	bnez38 $r0,d20ea <AB_module_count+0x1c>
   d2102:	80 07       	mov55 $r0,$r7
   d2104:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d2106 <AB_module_get>:
   d2106:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2108:	80 c0       	mov55 $r6,$r0
   d210a:	84 00       	movi55 $r0,#0
   d210c:	49 ff ff e1 	jal d20ce <AB_module_count>
   d2110:	e2 c0       	slt45 $r6,$r0
   d2112:	e9 03       	bnezs8 d2118 <AB_module_get+0x12>
   d2114:	84 00       	movi55 $r0,#0
   d2116:	d5 07       	j8 d2124 <AB_module_get+0x1e>
   d2118:	9d b1       	addi333 $r6,$r6,#1
   d211a:	3e 0c 40 20 	addi.gp $r0,#-245728
   d211e:	95 b2       	slli333 $r6,$r6,#2
   d2120:	99 b0       	add333 $r6,$r6,$r0
   d2122:	b4 06       	lwi450 $r0,[$r6]
   d2124:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2126 <Ab_printf_init>:
   d2126:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2128:	3e 07 c6 c4 	sbi.gp $r0,[+#-14652]
   d212c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d212e <printf>:
   d212e:	3a 1f 94 3c 	smw.adm $r1,[$sp],$r5,#0x0    ! {$r1~$r5}
   d2132:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2134:	ef f4       	addi10.sp #-12
   d2136:	64 32 00 02 	mfsr $r3,$PSW
   d213a:	64 02 00 43 	setgie.d
   d213e:	64 00 00 08 	dsb
   d2142:	46 20 01 00 	sethi $r2,#0x100
   d2146:	58 21 00 b0 	ori $r2,$r2,#0xb0
   d214a:	b4 22       	lwi450 $r1,[$r2]
   d214c:	9d 09       	addi333 $r4,$r1,#1
   d214e:	b6 82       	swi450 $r4,[$r2]
   d2150:	c9 06       	bnez38 $r1,d215c <printf+0x2e>
   d2152:	46 10 01 00 	sethi $r1,#0x100
   d2156:	58 10 80 bc 	ori $r1,$r1,#0xbc
   d215a:	b6 61       	swi450 $r3,[$r1]
   d215c:	b0 47       	addri36.sp $r1,#0x1c
   d215e:	f1 81       	swi37.sp $r1,[+#0x4]
   d2160:	49 00 18 3c 	jal d51d8 <vprintf>
   d2164:	46 10 01 00 	sethi $r1,#0x100
   d2168:	58 10 80 b0 	ori $r1,$r1,#0xb0
   d216c:	b4 41       	lwi450 $r2,[$r1]
   d216e:	9e 91       	subi333 $r2,$r2,#1
   d2170:	b6 41       	swi450 $r2,[$r1]
   d2172:	b4 21       	lwi450 $r1,[$r1]
   d2174:	c9 0c       	bnez38 $r1,d218c <printf+0x5e>
   d2176:	46 10 01 00 	sethi $r1,#0x100
   d217a:	58 10 80 bc 	ori $r1,$r1,#0xbc
   d217e:	b4 21       	lwi450 $r1,[$r1]
   d2180:	96 4c       	xlsb33 $r1,$r1
   d2182:	c1 05       	beqz38 $r1,d218c <printf+0x5e>
   d2184:	64 12 00 43 	setgie.e
   d2188:	64 00 00 08 	dsb
   d218c:	ec 0c       	addi10.sp #12
   d218e:	3a 6f 9b 84 	lmw.bim $r6,[$sp],$r6,#0xe    ! {$r6, $fp, $gp, $lp}
   d2192:	ec 14       	addi10.sp #20
   d2194:	dd 9e       	ret5 $lp

000d2196 <nds_write>:
   d2196:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2198:	80 60       	mov55 $r3,$r0
   d219a:	2e 07 c6 c4 	lbi.gp $r0,[+#-14652]
   d219e:	80 41       	mov55 $r2,$r1
   d21a0:	e6 02       	slti45 $r0,#2
   d21a2:	e8 05       	beqzs8 d21ac <nds_write+0x16>
   d21a4:	80 23       	mov55 $r1,$r3
   d21a6:	96 91       	zeh33 $r2,$r2
   d21a8:	49 ff b2 46 	jal c8634 <AB_UART_Write>
   d21ac:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d21ae <Ab_printf_blocking>:
   d21ae:	3a 1f 94 3c 	smw.adm $r1,[$sp],$r5,#0x0    ! {$r1~$r5}
   d21b2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d21b4:	ef 74       	addi10.sp #-140
   d21b6:	80 20       	mov55 $r1,$r0
   d21b8:	3e 0f c6 c4 	addi.gp $r0,#-14652
   d21bc:	a6 00       	lbi333 $r0,[$r0+#0x0]
   d21be:	e6 02       	slti45 $r0,#2
   d21c0:	e8 3b       	beqzs8 d2236 <Ab_printf_blocking+0x88>
   d21c2:	b0 27       	addri36.sp $r0,#0x9c
   d21c4:	f0 a1       	swi37.sp $r0,[+#0x84]
   d21c6:	b0 a7       	addri36.sp $r2,#0x9c
   d21c8:	b0 01       	addri36.sp $r0,#0x4
   d21ca:	49 00 18 3c 	jal d5242 <vsprintf>
   d21ce:	64 22 00 02 	mfsr $r2,$PSW
   d21d2:	64 02 00 43 	setgie.d
   d21d6:	64 00 00 08 	dsb
   d21da:	46 10 01 00 	sethi $r1,#0x100
   d21de:	58 10 80 b0 	ori $r1,$r1,#0xb0
   d21e2:	b4 01       	lwi450 $r0,[$r1]
   d21e4:	9c c1       	addi333 $r3,$r0,#1
   d21e6:	b6 61       	swi450 $r3,[$r1]
   d21e8:	c8 06       	bnez38 $r0,d21f4 <Ab_printf_blocking+0x46>
   d21ea:	46 00 01 00 	sethi $r0,#0x100
   d21ee:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d21f2:	b6 40       	swi450 $r2,[$r0]
   d21f4:	3e 0f c6 c4 	addi.gp $r0,#-14652
   d21f8:	a6 00       	lbi333 $r0,[$r0+#0x0]
   d21fa:	b1 81       	addri36.sp $r6,#0x4
   d21fc:	49 ff b2 70 	jal c86dc <AB_UART_Flush>
   d2200:	80 06       	mov55 $r0,$r6
   d2202:	49 ff af 7b 	jal c80f8 <strlen>
   d2206:	9c 41       	addi333 $r1,$r0,#1
   d2208:	80 06       	mov55 $r0,$r6
   d220a:	49 ff ff c6 	jal d2196 <nds_write>
   d220e:	46 00 01 00 	sethi $r0,#0x100
   d2212:	58 00 00 b0 	ori $r0,$r0,#0xb0
   d2216:	b4 20       	lwi450 $r1,[$r0]
   d2218:	9e 49       	subi333 $r1,$r1,#1
   d221a:	b6 20       	swi450 $r1,[$r0]
   d221c:	b4 00       	lwi450 $r0,[$r0]
   d221e:	c8 0c       	bnez38 $r0,d2236 <Ab_printf_blocking+0x88>
   d2220:	46 00 01 00 	sethi $r0,#0x100
   d2224:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d2228:	b4 00       	lwi450 $r0,[$r0]
   d222a:	96 04       	xlsb33 $r0,$r0
   d222c:	c0 05       	beqz38 $r0,d2236 <Ab_printf_blocking+0x88>
   d222e:	64 12 00 43 	setgie.e
   d2232:	64 00 00 08 	dsb
   d2236:	ec 8c       	addi10.sp #140
   d2238:	3a 6f 9b 84 	lmw.bim $r6,[$sp],$r6,#0xe    ! {$r6, $fp, $gp, $lp}
   d223c:	ec 14       	addi10.sp #20
   d223e:	dd 9e       	ret5 $lp

000d2240 <AB_PWR_GetWakeLock>:
   d2240:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2242:	3c 3d f1 a7 	lwi.gp $r3,[+#-14692]
   d2246:	84 20       	movi55 $r1,#0
   d2248:	84 81       	movi55 $r4,#1
   d224a:	40 02 04 0c 	sll $r0,$r4,$r1
   d224e:	40 20 0c 02 	and $r2,$r0,$r3
   d2252:	c2 06       	beqz38 $r2,d225e <AB_PWR_GetWakeLock+0x1e>
   d2254:	fe 43       	not33 $r1,$r0
   d2256:	fe ce       	and33 $r3,$r1
   d2258:	3c 3f f1 a7 	swi.gp $r3,[+#-14692]
   d225c:	d5 05       	j8 d2266 <AB_PWR_GetWakeLock+0x26>
   d225e:	9c 49       	addi333 $r1,$r1,#1
   d2260:	5a 18 20 f5 	bnec $r1,#32,d224a <AB_PWR_GetWakeLock+0xa>
   d2264:	80 02       	mov55 $r0,$r2
   d2266:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2268 <AB_PWR_WakeLocked>:
   d2268:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d226a:	46 10 01 00 	sethi $r1,#0x100
   d226e:	3c 2d f3 f3 	lwi.gp $r2,[+#-12340]
   d2272:	fe 17       	or33 $r0,$r2
   d2274:	3c 0f f3 f3 	swi.gp $r0,[+#-12340]
   d2278:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d227a <AB_PWR_WakeUnlocked>:
   d227a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d227c:	46 10 01 00 	sethi $r1,#0x100
   d2280:	3c 2d f3 f3 	lwi.gp $r2,[+#-12340]
   d2284:	fe 03       	not33 $r0,$r0
   d2286:	fe 16       	and33 $r0,$r2
   d2288:	3c 0f f3 f3 	swi.gp $r0,[+#-12340]
   d228c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d228e <AB_PWR_ReturnWakeLock>:
   d228e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2290:	46 10 01 00 	sethi $r1,#0x100
   d2294:	3c 2d f1 a7 	lwi.gp $r2,[+#-14692]
   d2298:	fe 87       	or33 $r2,$r0
   d229a:	3c 2f f1 a7 	swi.gp $r2,[+#-14692]
   d229e:	49 ff ff ee 	jal d227a <AB_PWR_WakeUnlocked>
   d22a2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d22a4 <AB_PWR_Rst>:
   d22a4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d22a6:	84 04       	movi55 $r0,#4
   d22a8:	49 00 0a 63 	jal d376e <DRV_Pwr_EnterMode>
   d22ac:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d22ae <AB_queue_push>:
   d22ae:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d22b0:	46 21 97 60 	sethi $r2,#0x19760
   d22b4:	a0 c2       	lwi333 $r3,[$r0+#0x8]
   d22b6:	58 21 01 08 	ori $r2,$r2,#0x108
   d22ba:	4c 31 40 13 	bne $r3,$r2,d22e0 <AB_queue_push+0x32>
   d22be:	46 22 01 11 	sethi $r2,#0x20111
   d22c2:	04 30 ff ff 	lwi $r3,[$r1+#-0x4]
   d22c6:	58 21 01 18 	ori $r2,$r2,#0x118
   d22ca:	4c 31 40 0b 	bne $r3,$r2,d22e0 <AB_queue_push+0x32>
   d22ce:	8e 28       	subi45 $r1,#8
   d22d0:	84 40       	movi55 $r2,#0
   d22d2:	b6 41       	swi450 $r2,[$r1]
   d22d4:	a0 81       	lwi333 $r2,[$r0+#0x4]
   d22d6:	a8 41       	swi333 $r1,[$r0+#0x4]
   d22d8:	b6 22       	swi450 $r1,[$r2]
   d22da:	a0 43       	lwi333 $r1,[$r0+#0xc]
   d22dc:	9c 49       	addi333 $r1,$r1,#1
   d22de:	a8 43       	swi333 $r1,[$r0+#0xc]
   d22e0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d22e2 <AB_queue_push_front>:
   d22e2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d22e4:	46 21 97 60 	sethi $r2,#0x19760
   d22e8:	a0 c2       	lwi333 $r3,[$r0+#0x8]
   d22ea:	58 21 01 08 	ori $r2,$r2,#0x108
   d22ee:	4c 31 40 13 	bne $r3,$r2,d2314 <AB_queue_push_front+0x32>
   d22f2:	46 22 01 11 	sethi $r2,#0x20111
   d22f6:	04 30 ff ff 	lwi $r3,[$r1+#-0x4]
   d22fa:	58 21 01 18 	ori $r2,$r2,#0x118
   d22fe:	4c 31 40 0b 	bne $r3,$r2,d2314 <AB_queue_push_front+0x32>
   d2302:	b4 40       	lwi450 $r2,[$r0]
   d2304:	8e 28       	subi45 $r1,#8
   d2306:	b6 41       	swi450 $r2,[$r1]
   d2308:	ca 02       	bnez38 $r2,d230c <AB_queue_push_front+0x2a>
   d230a:	a8 41       	swi333 $r1,[$r0+#0x4]
   d230c:	b6 20       	swi450 $r1,[$r0]
   d230e:	a0 43       	lwi333 $r1,[$r0+#0xc]
   d2310:	9c 49       	addi333 $r1,$r1,#1
   d2312:	a8 43       	swi333 $r1,[$r0+#0xc]
   d2314:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2316 <AB_queue_pop>:
   d2316:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2318:	80 20       	mov55 $r1,$r0
   d231a:	b4 00       	lwi450 $r0,[$r0]
   d231c:	c0 09       	beqz38 $r0,d232e <AB_queue_pop+0x18>
   d231e:	b4 40       	lwi450 $r2,[$r0]
   d2320:	b6 41       	swi450 $r2,[$r1]
   d2322:	ca 02       	bnez38 $r2,d2326 <AB_queue_pop+0x10>
   d2324:	a8 49       	swi333 $r1,[$r1+#0x4]
   d2326:	a0 8b       	lwi333 $r2,[$r1+#0xc]
   d2328:	8c 08       	addi45 $r0,#8
   d232a:	9e 91       	subi333 $r2,$r2,#1
   d232c:	a8 8b       	swi333 $r2,[$r1+#0xc]
   d232e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2330 <AB_queue_count>:
   d2330:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2332:	46 11 97 60 	sethi $r1,#0x19760
   d2336:	a0 82       	lwi333 $r2,[$r0+#0x8]
   d2338:	58 10 81 08 	ori $r1,$r1,#0x108
   d233c:	4c 20 80 04 	beq $r2,$r1,d2344 <AB_queue_count+0x14>
   d2340:	84 00       	movi55 $r0,#0
   d2342:	d5 02       	j8 d2346 <AB_queue_count+0x16>
   d2344:	a0 03       	lwi333 $r0,[$r0+#0xc]
   d2346:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2348 <AB_queue_entry_free>:
   d2348:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d234a:	46 12 01 11 	sethi $r1,#0x20111
   d234e:	04 20 7f ff 	lwi $r2,[$r0+#-0x4]
   d2352:	58 10 81 18 	ori $r1,$r1,#0x118
   d2356:	4c 20 c0 05 	bne $r2,$r1,d2360 <AB_queue_entry_free+0x18>
   d235a:	8e 08       	subi45 $r0,#8
   d235c:	49 ff fe 0f 	jal d1f7a <free>
   d2360:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2362 <AB_queue_free>:
   d2362:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2364:	80 c0       	mov55 $r6,$r0
   d2366:	d5 03       	j8 d236c <AB_queue_free+0xa>
   d2368:	49 ff ff f0 	jal d2348 <AB_queue_entry_free>
   d236c:	80 06       	mov55 $r0,$r6
   d236e:	49 ff ff d4 	jal d2316 <AB_queue_pop>
   d2372:	c8 fb       	bnez38 $r0,d2368 <AB_queue_free+0x6>
   d2374:	80 06       	mov55 $r0,$r6
   d2376:	49 ff fe 02 	jal d1f7a <free>
   d237a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d237c <AB_queue_entry_alloc>:
   d237c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d237e:	8c 0c       	addi45 $r0,#12
   d2380:	49 ff fe 62 	jal d2044 <malloc>
   d2384:	c0 07       	beqz38 $r0,d2392 <AB_queue_entry_alloc+0x16>
   d2386:	46 12 01 11 	sethi $r1,#0x20111
   d238a:	58 10 81 18 	ori $r1,$r1,#0x118
   d238e:	a8 41       	swi333 $r1,[$r0+#0x4]
   d2390:	8c 08       	addi45 $r0,#8
   d2392:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2394 <AB_queue_alloc>:
   d2394:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2396:	fa 00       	movpi45 $r0,#0x10
   d2398:	49 ff fe 56 	jal d2044 <malloc>
   d239c:	46 21 97 60 	sethi $r2,#0x19760
   d23a0:	58 21 01 08 	ori $r2,$r2,#0x108
   d23a4:	80 20       	mov55 $r1,$r0
   d23a6:	a8 82       	swi333 $r2,[$r0+#0x8]
   d23a8:	84 40       	movi55 $r2,#0
   d23aa:	a8 83       	swi333 $r2,[$r0+#0xc]
   d23ac:	b6 40       	swi450 $r2,[$r0]
   d23ae:	a8 09       	swi333 $r0,[$r1+#0x4]
   d23b0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d23b2 <AB_SECTOR_GetMpParameter>:
   d23b2:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d23b4:	46 10 00 81 	sethi $r1,#0x81
   d23b8:	a4 88       	lhi333 $r2,[$r1+#0x0]
   d23ba:	97 80       	zeb33 $r6,$r0
   d23bc:	44 00 65 26 	movi $r0,#25894
   d23c0:	4c 20 40 9b 	bne $r2,$r0,d24f6 <AB_SECTOR_GetMpParameter+0x144>
   d23c4:	a4 49       	lhi333 $r1,[$r1+#0x2]
   d23c6:	5c f0 90 00 	slti $r15,$r1,#4096
   d23ca:	4e f2 00 96 	beqz $r15,d24f6 <AB_SECTOR_GetMpParameter+0x144>
   d23ce:	9c 4a       	addi333 $r1,$r1,#2
   d23d0:	46 00 00 81 	sethi $r0,#0x81
   d23d4:	58 00 00 04 	ori $r0,$r0,#0x4
   d23d8:	96 49       	zeh33 $r1,$r1
   d23da:	44 20 ff ff 	movi $r2,#65535
   d23de:	49 fd 71 f7 	jal 807cc <CRC16_Generate>
   d23e2:	4e 02 00 91 	beqz $r0,d2504 <AB_SECTOR_GetMpParameter+0x152>
   d23e6:	48 00 00 88 	j d24f6 <AB_SECTOR_GetMpParameter+0x144>
   d23ea:	46 10 00 81 	sethi $r1,#0x81
   d23ee:	00 80 80 c4 	lbi $r8,[$r1+#0xc4]
   d23f2:	80 c0       	mov55 $r6,$r0
   d23f4:	84 e3       	movi55 $r7,#3
   d23f6:	d5 13       	j8 d241c <AB_SECTOR_GetMpParameter+0x6a>
   d23f8:	46 20 00 81 	sethi $r2,#0x81
   d23fc:	42 13 1c 24 	mul $r1,$r6,$r7
   d2400:	58 21 00 c4 	ori $r2,$r2,#0xc4
   d2404:	98 0a       	add333 $r0,$r1,$r2
   d2406:	9d 51       	addi333 $r5,$r2,#1
   d2408:	98 cd       	add333 $r3,$r1,$r5
   d240a:	a6 43       	lbi333 $r1,[$r0+#0x3]
   d240c:	a6 82       	lbi333 $r2,[$r0+#0x2]
   d240e:	40 10 a0 08 	slli $r1,$r1,#8
   d2412:	a6 18       	lbi333 $r0,[$r3+#0x0]
   d2414:	fe 57       	or33 $r1,$r2
   d2416:	49 fd 72 a3 	jal 8095c <SYS_3WireWrite>
   d241a:	9d b1       	addi333 $r6,$r6,#1
   d241c:	96 30       	zeb33 $r0,$r6
   d241e:	e2 08       	slt45 $r0,$r8
   d2420:	e9 ec       	bnezs8 d23f8 <AB_SECTOR_GetMpParameter+0x46>
   d2422:	46 00 00 81 	sethi $r0,#0x81
   d2426:	58 00 00 c4 	ori $r0,$r0,#0xc4
   d242a:	00 40 00 3d 	lbi $r4,[$r0+#0x3d]
   d242e:	84 20       	movi55 $r1,#0
   d2430:	84 69       	movi55 $r3,#9
   d2432:	d5 5e       	j8 d24ee <AB_SECTOR_GetMpParameter+0x13c>
   d2434:	46 50 00 81 	sethi $r5,#0x81
   d2438:	42 00 8c 24 	mul $r0,$r1,$r3
   d243c:	58 52 81 06 	ori $r5,$r5,#0x106
   d2440:	98 85       	add333 $r2,$r0,$r5
   d2442:	a6 90       	lbi333 $r2,[$r2+#0x0]
   d2444:	5a 20 02 1a 	beqc $r2,#2,d2478 <AB_SECTOR_GetMpParameter+0xc6>
   d2448:	5a 20 04 32 	beqc $r2,#4,d24ac <AB_SECTOR_GetMpParameter+0xfa>
   d244c:	5a 28 01 50 	bnec $r2,#1,d24ec <AB_SECTOR_GetMpParameter+0x13a>
   d2450:	50 22 ff f6 	addi $r2,$r5,#-10
   d2454:	98 02       	add333 $r0,$r0,$r2
   d2456:	9c 04       	addi333 $r0,$r0,#4
   d2458:	a7 83       	lbi333 $r6,[$r0+#0x3]
   d245a:	a7 c2       	lbi333 $r7,[$r0+#0x2]
   d245c:	a7 44       	lbi333 $r5,[$r0+#0x4]
   d245e:	a6 85       	lbi333 $r2,[$r0+#0x5]
   d2460:	40 63 20 08 	slli $r6,$r6,#8
   d2464:	ff bf       	or33 $r6,$r7
   d2466:	40 52 c0 08 	slli $r5,$r5,#16
   d246a:	ff 77       	or33 $r5,$r6
   d246c:	40 21 60 08 	slli $r2,$r2,#24
   d2470:	a6 07       	lbi333 $r0,[$r0+#0x7]
   d2472:	fe af       	or33 $r2,$r5
   d2474:	ae 10       	sbi333 $r0,[$r2+#0x0]
   d2476:	d5 3b       	j8 d24ec <AB_SECTOR_GetMpParameter+0x13a>
   d2478:	46 50 00 81 	sethi $r5,#0x81
   d247c:	58 52 80 fc 	ori $r5,$r5,#0xfc
   d2480:	98 05       	add333 $r0,$r0,$r5
   d2482:	9c 05       	addi333 $r0,$r0,#5
   d2484:	a7 82       	lbi333 $r6,[$r0+#0x2]
   d2486:	a7 c1       	lbi333 $r7,[$r0+#0x1]
   d2488:	a7 43       	lbi333 $r5,[$r0+#0x3]
   d248a:	a6 84       	lbi333 $r2,[$r0+#0x4]
   d248c:	40 63 20 08 	slli $r6,$r6,#8
   d2490:	ff bf       	or33 $r6,$r7
   d2492:	40 52 c0 08 	slli $r5,$r5,#16
   d2496:	ff 77       	or33 $r5,$r6
   d2498:	40 21 60 08 	slli $r2,$r2,#24
   d249c:	fe af       	or33 $r2,$r5
   d249e:	a7 46       	lbi333 $r5,[$r0+#0x6]
   d24a0:	a6 07       	lbi333 $r0,[$r0+#0x7]
   d24a2:	40 00 20 08 	slli $r0,$r0,#8
   d24a6:	fe 2f       	or33 $r0,$r5
   d24a8:	ac 10       	shi333 $r0,[$r2+#0x0]
   d24aa:	d5 21       	j8 d24ec <AB_SECTOR_GetMpParameter+0x13a>
   d24ac:	50 22 ff f6 	addi $r2,$r5,#-10
   d24b0:	98 02       	add333 $r0,$r0,$r2
   d24b2:	9c 06       	addi333 $r0,$r0,#6
   d24b4:	a7 81       	lbi333 $r6,[$r0+#0x1]
   d24b6:	a7 c0       	lbi333 $r7,[$r0+#0x0]
   d24b8:	a7 42       	lbi333 $r5,[$r0+#0x2]
   d24ba:	a6 83       	lbi333 $r2,[$r0+#0x3]
   d24bc:	40 63 20 08 	slli $r6,$r6,#8
   d24c0:	ff bf       	or33 $r6,$r7
   d24c2:	40 52 c0 08 	slli $r5,$r5,#16
   d24c6:	ff 77       	or33 $r5,$r6
   d24c8:	40 21 60 08 	slli $r2,$r2,#24
   d24cc:	a7 86       	lbi333 $r6,[$r0+#0x6]
   d24ce:	a7 c5       	lbi333 $r7,[$r0+#0x5]
   d24d0:	fe af       	or33 $r2,$r5
   d24d2:	a7 47       	lbi333 $r5,[$r0+#0x7]
   d24d4:	40 63 20 08 	slli $r6,$r6,#8
   d24d8:	00 00 00 08 	lbi $r0,[$r0+#0x8]
   d24dc:	ff bf       	or33 $r6,$r7
   d24de:	40 52 c0 08 	slli $r5,$r5,#16
   d24e2:	ff 77       	or33 $r5,$r6
   d24e4:	40 00 60 08 	slli $r0,$r0,#24
   d24e8:	fe 2f       	or33 $r0,$r5
   d24ea:	b6 02       	swi450 $r0,[$r2]
   d24ec:	9c 49       	addi333 $r1,$r1,#1
   d24ee:	96 08       	zeb33 $r0,$r1
   d24f0:	e2 04       	slt45 $r0,$r4
   d24f2:	e9 a1       	bnezs8 d2434 <AB_SECTOR_GetMpParameter+0x82>
   d24f4:	d5 03       	j8 d24fa <AB_SECTOR_GetMpParameter+0x148>
   d24f6:	84 00       	movi55 $r0,#0
   d24f8:	d5 05       	j8 d2502 <AB_SECTOR_GetMpParameter+0x150>
   d24fa:	46 00 00 81 	sethi $r0,#0x81
   d24fe:	58 00 00 04 	ori $r0,$r0,#0x4
   d2502:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d2504:	4e 63 ff 73 	bnez $r6,d23ea <AB_SECTOR_GetMpParameter+0x38>
   d2508:	d5 f9       	j8 d24fa <AB_SECTOR_GetMpParameter+0x148>

000d250a <alloc_spi_tran_entry>:
   d250a:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d250c:	40 80 80 13 	zeh $r8,$r1
   d2510:	81 40       	mov55 $r10,$r0
   d2512:	50 04 00 10 	addi $r0,$r8,#16
   d2516:	80 e2       	mov55 $r7,$r2
   d2518:	83 84       	mov55 $fp,$r4
   d251a:	40 91 80 13 	zeh $r9,$r3
   d251e:	49 ff ff 2f 	jal d237c <AB_queue_entry_alloc>
   d2522:	80 c0       	mov55 $r6,$r0
   d2524:	c0 1a       	beqz38 $r0,d2558 <alloc_spi_tran_entry+0x4e>
   d2526:	4e 92 00 09 	beqz $r9,d2538 <alloc_spi_tran_entry+0x2e>
   d252a:	cf 07       	bnez38 $r7,d2538 <alloc_spi_tran_entry+0x2e>
   d252c:	80 09       	mov55 $r0,$r9
   d252e:	49 ff fd 8b 	jal d2044 <malloc>
   d2532:	80 e0       	mov55 $r7,$r0
   d2534:	84 01       	movi55 $r0,#1
   d2536:	d5 02       	j8 d253a <alloc_spi_tran_entry+0x30>
   d2538:	84 00       	movi55 $r0,#0
   d253a:	80 66       	mov55 $r3,$r6
   d253c:	1a 81 80 07 	shi.bi $r8,[$r3],#0xe
   d2540:	10 03 00 0c 	sbi $r0,[$r6+#0xc]
   d2544:	15 c3 00 02 	swi $fp,[$r6+#0x8]
   d2548:	12 93 00 01 	shi $r9,[$r6+#0x2]
   d254c:	80 03       	mov55 $r0,$r3
   d254e:	80 2a       	mov55 $r1,$r10
   d2550:	80 48       	mov55 $r2,$r8
   d2552:	49 ff ad 7b 	jal c8048 <memcpy>
   d2556:	a9 f1       	swi333 $r7,[$r6+#0x4]
   d2558:	80 06       	mov55 $r0,$r6
   d255a:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d255c <AB_SPI_WriteAndRead>:
   d255c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d255e:	96 d9       	zeh33 $r3,$r3
   d2560:	80 e0       	mov55 $r7,$r0
   d2562:	80 01       	mov55 $r0,$r1
   d2564:	80 23       	mov55 $r1,$r3
   d2566:	49 ff ff d2 	jal d250a <alloc_spi_tran_entry>
   d256a:	80 c0       	mov55 $r6,$r0
   d256c:	c0 26       	beqz38 $r0,d25b8 <AB_SPI_WriteAndRead+0x5c>
   d256e:	84 01       	movi55 $r0,#1
   d2570:	10 03 00 0d 	sbi $r0,[$r6+#0xd]
   d2574:	84 20       	movi55 $r1,#0
   d2576:	80 07       	mov55 $r0,$r7
   d2578:	49 00 0a 5c 	jal d3a30 <DRV_SPI_Int>
   d257c:	80 07       	mov55 $r0,$r7
   d257e:	49 00 0a 3d 	jal d39f8 <DRV_SPI_IsReady>
   d2582:	c8 09       	bnez38 $r0,d2594 <AB_SPI_WriteAndRead+0x38>
   d2584:	3e 0f cf d0 	addi.gp $r0,#-12336
   d2588:	38 00 1e 02 	lw $r0,[$r0+($r7<<#0x2)]
   d258c:	80 26       	mov55 $r1,$r6
   d258e:	49 ff fe 90 	jal d22ae <AB_queue_push>
   d2592:	d5 0e       	j8 d25ae <AB_SPI_WriteAndRead+0x52>
   d2594:	00 13 00 0d 	lbi $r1,[$r6+#0xd]
   d2598:	80 07       	mov55 $r0,$r7
   d259a:	49 00 0a 37 	jal d3a08 <DRV_SPI_ChangeDuplex>
   d259e:	a4 b0       	lhi333 $r2,[$r6+#0x0]
   d25a0:	a0 f1       	lwi333 $r3,[$r6+#0x4]
   d25a2:	a5 31       	lhi333 $r4,[$r6+#0x2]
   d25a4:	80 07       	mov55 $r0,$r7
   d25a6:	50 13 00 0e 	addi $r1,$r6,#14
   d25aa:	49 00 09 d7 	jal d3958 <DRV_SPI_WriteRead>
   d25ae:	80 07       	mov55 $r0,$r7
   d25b0:	84 21       	movi55 $r1,#1
   d25b2:	49 00 0a 3f 	jal d3a30 <DRV_SPI_Int>
   d25b6:	84 01       	movi55 $r0,#1
   d25b8:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d25ba <AB_SPI_WriteThenRead>:
   d25ba:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d25bc:	80 e0       	mov55 $r7,$r0
   d25be:	80 01       	mov55 $r0,$r1
   d25c0:	96 51       	zeh33 $r1,$r2
   d25c2:	80 43       	mov55 $r2,$r3
   d25c4:	96 e1       	zeh33 $r3,$r4
   d25c6:	80 85       	mov55 $r4,$r5
   d25c8:	49 ff ff a1 	jal d250a <alloc_spi_tran_entry>
   d25cc:	80 c0       	mov55 $r6,$r0
   d25ce:	c0 2a       	beqz38 $r0,d2622 <AB_SPI_WriteThenRead+0x68>
   d25d0:	84 00       	movi55 $r0,#0
   d25d2:	10 03 00 0d 	sbi $r0,[$r6+#0xd]
   d25d6:	84 20       	movi55 $r1,#0
   d25d8:	80 07       	mov55 $r0,$r7
   d25da:	49 00 0a 2b 	jal d3a30 <DRV_SPI_Int>
   d25de:	80 07       	mov55 $r0,$r7
   d25e0:	49 00 0a 0c 	jal d39f8 <DRV_SPI_IsReady>
   d25e4:	c8 09       	bnez38 $r0,d25f6 <AB_SPI_WriteThenRead+0x3c>
   d25e6:	3e 0f cf d0 	addi.gp $r0,#-12336
   d25ea:	38 00 1e 02 	lw $r0,[$r0+($r7<<#0x2)]
   d25ee:	80 26       	mov55 $r1,$r6
   d25f0:	49 ff fe 5f 	jal d22ae <AB_queue_push>
   d25f4:	d5 12       	j8 d2618 <AB_SPI_WriteThenRead+0x5e>
   d25f6:	3c 0d f3 f6 	lwi.gp $r0,[+#-12328]
   d25fa:	49 ff fe 37 	jal d2268 <AB_PWR_WakeLocked>
   d25fe:	00 13 00 0d 	lbi $r1,[$r6+#0xd]
   d2602:	80 07       	mov55 $r0,$r7
   d2604:	49 00 0a 02 	jal d3a08 <DRV_SPI_ChangeDuplex>
   d2608:	a4 b0       	lhi333 $r2,[$r6+#0x0]
   d260a:	a0 f1       	lwi333 $r3,[$r6+#0x4]
   d260c:	a5 31       	lhi333 $r4,[$r6+#0x2]
   d260e:	80 07       	mov55 $r0,$r7
   d2610:	50 13 00 0e 	addi $r1,$r6,#14
   d2614:	49 00 09 a2 	jal d3958 <DRV_SPI_WriteRead>
   d2618:	80 07       	mov55 $r0,$r7
   d261a:	84 21       	movi55 $r1,#1
   d261c:	49 00 0a 0a 	jal d3a30 <DRV_SPI_Int>
   d2620:	84 01       	movi55 $r0,#1
   d2622:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d2624 <AB_SPI_Close>:
   d2624:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2626:	80 c0       	mov55 $r6,$r0
   d2628:	3e 0f cf d0 	addi.gp $r0,#-12336
   d262c:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   d2630:	c0 03       	beqz38 $r0,d2636 <AB_SPI_Close+0x12>
   d2632:	49 ff fe 98 	jal d2362 <AB_queue_free>
   d2636:	84 20       	movi55 $r1,#0
   d2638:	3e 0f cf d0 	addi.gp $r0,#-12336
   d263c:	38 10 1a 0a 	sw $r1,[$r0+($r6<<#0x2)]
   d2640:	80 06       	mov55 $r0,$r6
   d2642:	49 00 09 7b 	jal d3938 <DRV_SPI_Deinit>
   d2646:	3c 0d f3 f6 	lwi.gp $r0,[+#-12328]
   d264a:	49 ff fe 22 	jal d228e <AB_PWR_ReturnWakeLock>
   d264e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2650 <AB_SPI_Open>:
   d2650:	fc 22       	push25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}
   d2652:	a0 c9       	lwi333 $r3,[$r1+#0x4]
   d2654:	80 41       	mov55 $r2,$r1
   d2656:	b0 41       	addri36.sp $r1,#0x4
   d2658:	a7 08       	lbi333 $r4,[$r1+#0x0]
   d265a:	40 51 84 09 	srli $r5,$r3,#1
   d265e:	97 6c       	xlsb33 $r5,$r5
   d2660:	92 82       	srli45 $r4,#2
   d2662:	95 22       	slli333 $r4,$r4,#2
   d2664:	96 dc       	xlsb33 $r3,$r3
   d2666:	ff 2f       	or33 $r4,$r5
   d2668:	98 db       	add333 $r3,$r3,$r3
   d266a:	fe e7       	or33 $r3,$r4
   d266c:	00 41 00 08 	lbi $r4,[$r2+#0x8]
   d2670:	58 31 80 1c 	ori $r3,$r3,#0x1c
   d2674:	97 24       	xlsb33 $r4,$r4
   d2676:	95 26       	slli333 $r4,$r4,#6
   d2678:	96 e7       	fexti33 $r3,#0x4
   d267a:	fe e7       	or33 $r3,$r4
   d267c:	ae c8       	sbi333 $r3,[$r1+#0x0]
   d267e:	80 c0       	mov55 $r6,$r0
   d2680:	b4 42       	lwi450 $r2,[$r2]
   d2682:	f2 82       	swi37.sp $r2,[+#0x8]
   d2684:	3e 2c e6 a6 	addi.gp $r2,#-203098
   d2688:	f2 83       	swi37.sp $r2,[+#0xc]
   d268a:	49 00 0a 03 	jal d3a90 <DRV_SPI_Init>
   d268e:	49 ff fe 83 	jal d2394 <AB_queue_alloc>
   d2692:	3e 1f cf d0 	addi.gp $r1,#-12336
   d2696:	38 00 9a 0a 	sw $r0,[$r1+($r6<<#0x2)]
   d269a:	49 ff fd d3 	jal d2240 <AB_PWR_GetWakeLock>
   d269e:	3c 0f f3 f6 	swi.gp $r0,[+#-12328]
   d26a2:	84 01       	movi55 $r0,#1
   d26a4:	fc a2       	pop25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}

000d26a6 <Spi_drv_complete_cb>:
   d26a6:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d26a8:	80 e0       	mov55 $r7,$r0
   d26aa:	3e 0f cf d0 	addi.gp $r0,#-12336
   d26ae:	38 00 1e 02 	lw $r0,[$r0+($r7<<#0x2)]
   d26b2:	81 41       	mov55 $r10,$r1
   d26b4:	81 23       	mov55 $r9,$r3
   d26b6:	40 82 00 13 	zeh $r8,$r4
   d26ba:	49 ff fe 2e 	jal d2316 <AB_queue_pop>
   d26be:	80 c0       	mov55 $r6,$r0
   d26c0:	c0 0f       	beqz38 $r0,d26de <Spi_drv_complete_cb+0x38>
   d26c2:	00 13 00 0d 	lbi $r1,[$r6+#0xd]
   d26c6:	80 07       	mov55 $r0,$r7
   d26c8:	49 00 09 a0 	jal d3a08 <DRV_SPI_ChangeDuplex>
   d26cc:	a4 b0       	lhi333 $r2,[$r6+#0x0]
   d26ce:	a0 f1       	lwi333 $r3,[$r6+#0x4]
   d26d0:	a5 31       	lhi333 $r4,[$r6+#0x2]
   d26d2:	80 07       	mov55 $r0,$r7
   d26d4:	50 13 00 0e 	addi $r1,$r6,#14
   d26d8:	49 00 09 40 	jal d3958 <DRV_SPI_WriteRead>
   d26dc:	d5 05       	j8 d26e6 <Spi_drv_complete_cb+0x40>
   d26de:	3c 0d f3 f6 	lwi.gp $r0,[+#-12328]
   d26e2:	49 ff fd cc 	jal d227a <AB_PWR_WakeUnlocked>
   d26e6:	50 65 7f f2 	addi $r6,$r10,#-14
   d26ea:	a0 b2       	lwi333 $r2,[$r6+#0x8]
   d26ec:	c2 04       	beqz38 $r2,d26f4 <Spi_drv_complete_cb+0x4e>
   d26ee:	80 09       	mov55 $r0,$r9
   d26f0:	80 28       	mov55 $r1,$r8
   d26f2:	dd 22       	jral5 $r2
   d26f4:	00 03 00 0c 	lbi $r0,[$r6+#0xc]
   d26f8:	c0 04       	beqz38 $r0,d2700 <Spi_drv_complete_cb+0x5a>
   d26fa:	a0 31       	lwi333 $r0,[$r6+#0x4]
   d26fc:	49 ff fc 3f 	jal d1f7a <free>
   d2700:	80 06       	mov55 $r0,$r6
   d2702:	49 ff fe 23 	jal d2348 <AB_queue_entry_free>
   d2706:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d2708 <Send2MP>:
   d2708:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d270a:	3c 2d f3 f7 	lwi.gp $r2,[+#-12324]
   d270e:	96 48       	zeb33 $r1,$r1
   d2710:	c2 02       	beqz38 $r2,d2714 <Send2MP+0xc>
   d2712:	dd 22       	jral5 $r2
   d2714:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2716 <dev_1602_lens_ind_cb>:
   d2716:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2718:	3c 0d f3 f9 	lwi.gp $r0,[+#-12316]
   d271c:	3e 1c ec 56 	addi.gp $r1,#-201642
   d2720:	a0 c4       	lwi333 $r3,[$r0+#0x10]
   d2722:	96 11       	zeh33 $r0,$r2
   d2724:	dd 23       	jral5 $r3
   d2726:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2728 <ab_airoha_vcmd_Bdie_reset_enable>:
   d2728:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d272a:	84 21       	movi55 $r1,#1
   d272c:	3e 17 cf e8 	sbi.gp $r1,[+#-12312]
   d2730:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2732 <ab_airoha_vcmd_extend_reg>:
   d2732:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2734:	3c 0f f1 aa 	swi.gp $r0,[+#-14680]
   d2738:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d273a <ab_airoha_vcmd_mp_ongoing>:
   d273a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d273c:	46 00 00 81 	sethi $r0,#0x81
   d2740:	58 00 00 04 	ori $r0,$r0,#0x4
   d2744:	00 00 01 cd 	lbi $r0,[$r0+#0x1cd]
   d2748:	56 00 00 01 	xori $r0,$r0,#0x1
   d274c:	5c 00 00 01 	slti $r0,$r0,#1
   d2750:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2752 <ab_airoha_vcmd_compl_encode>:
   d2752:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2754:	84 a4       	movi55 $r5,#4
   d2756:	96 d8       	zeb33 $r3,$r3
   d2758:	af 60       	sbi333 $r5,[$r4+#0x0]
   d275a:	84 bf       	movi55 $r5,#-1
   d275c:	af 61       	sbi333 $r5,[$r4+#0x1]
   d275e:	9d 5c       	addi333 $r5,$r3,#4
   d2760:	af 62       	sbi333 $r5,[$r4+#0x2]
   d2762:	84 a1       	movi55 $r5,#1
   d2764:	af 63       	sbi333 $r5,[$r4+#0x3]
   d2766:	44 50 00 30 	movi $r5,#48
   d276a:	ae 65       	sbi333 $r1,[$r4+#0x5]
   d276c:	ae 26       	sbi333 $r0,[$r4+#0x6]
   d276e:	af 64       	sbi333 $r5,[$r4+#0x4]
   d2770:	80 22       	mov55 $r1,$r2
   d2772:	9c 27       	addi333 $r0,$r4,#7
   d2774:	80 43       	mov55 $r2,$r3
   d2776:	49 ff ac 69 	jal c8048 <memcpy>
   d277a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d277c <ab_airoha_send_1byte_vcmd_compl>:
   d277c:	fc 02       	push25 $r6,#0x10    ! {$r6, $fp, $gp, $lp}
   d277e:	b1 81       	addri36.sp $r6,#0x4
   d2780:	10 2f 80 0f 	sbi $r2,[$sp+#0xf]
   d2784:	84 61       	movi55 $r3,#1
   d2786:	50 2f 80 0f 	addi $r2,$sp,#15
   d278a:	80 86       	mov55 $r4,$r6
   d278c:	96 00       	zeb33 $r0,$r0
   d278e:	96 48       	zeb33 $r1,$r1
   d2790:	49 ff ff e1 	jal d2752 <ab_airoha_vcmd_compl_encode>
   d2794:	80 06       	mov55 $r0,$r6
   d2796:	84 28       	movi55 $r1,#8
   d2798:	49 ff ff b8 	jal d2708 <Send2MP>
   d279c:	fc 82       	pop25 $r6,#0x10    ! {$r6, $fp, $gp, $lp}

000d279e <ISPSwitchArea>:
   d279e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d27a0:	a7 c2       	lbi333 $r7,[$r0+#0x2]
   d27a2:	a7 81       	lbi333 $r6,[$r0+#0x1]
   d27a4:	a6 03       	lbi333 $r0,[$r0+#0x3]
   d27a6:	49 00 11 1c 	jal d49de <AB_DFU_set_active_code_area>
   d27aa:	80 40       	mov55 $r2,$r0
   d27ac:	80 26       	mov55 $r1,$r6
   d27ae:	80 07       	mov55 $r0,$r7
   d27b0:	49 ff ff e6 	jal d277c <ab_airoha_send_1byte_vcmd_compl>
   d27b4:	84 01       	movi55 $r0,#1
   d27b6:	49 fd 70 7a 	jal 808aa <OS_delay_ms>
   d27ba:	49 ff fd 75 	jal d22a4 <AB_PWR_Rst>
   d27be:	d5 00       	j8 d27be <ISPSwitchArea+0x20>

000d27c0 <_HC_HciRejectVCmdHdlr>:
   d27c0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d27c2:	80 20       	mov55 $r1,$r0
   d27c4:	a6 49       	lbi333 $r1,[$r1+#0x1]
   d27c6:	a6 02       	lbi333 $r0,[$r0+#0x2]
   d27c8:	84 4c       	movi55 $r2,#12
   d27ca:	49 ff ff d9 	jal d277c <ab_airoha_send_1byte_vcmd_compl>
   d27ce:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d27d0 <ab_airoha_vcmd34_compl_encode>:
   d27d0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d27d2:	84 a4       	movi55 $r5,#4
   d27d4:	96 d8       	zeb33 $r3,$r3
   d27d6:	af 60       	sbi333 $r5,[$r4+#0x0]
   d27d8:	84 bf       	movi55 $r5,#-1
   d27da:	af 61       	sbi333 $r5,[$r4+#0x1]
   d27dc:	9d 5a       	addi333 $r5,$r3,#2
   d27de:	ae 63       	sbi333 $r1,[$r4+#0x3]
   d27e0:	ae 24       	sbi333 $r0,[$r4+#0x4]
   d27e2:	af 62       	sbi333 $r5,[$r4+#0x2]
   d27e4:	80 22       	mov55 $r1,$r2
   d27e6:	9c 25       	addi333 $r0,$r4,#5
   d27e8:	80 43       	mov55 $r2,$r3
   d27ea:	49 ff ac 2f 	jal c8048 <memcpy>
   d27ee:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d27f0 <ISPWriteData>:
   d27f0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d27f2:	9d 83       	addi333 $r6,$r0,#3
   d27f4:	80 e0       	mov55 $r7,$r0
   d27f6:	a6 40       	lbi333 $r1,[$r0+#0x0]
   d27f8:	a6 34       	lbi333 $r0,[$r6+#0x4]
   d27fa:	9c 05       	addi333 $r0,$r0,#5
   d27fc:	4c 10 00 06 	beq $r1,$r0,d2808 <ISPWriteData+0x18>
   d2800:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   d2802:	a6 79       	lbi333 $r1,[$r7+#0x1]
   d2804:	84 41       	movi55 $r2,#1
   d2806:	d5 30       	j8 d2866 <ISPWriteData+0x76>
   d2808:	a6 b1       	lbi333 $r2,[$r6+#0x1]
   d280a:	a6 f0       	lbi333 $r3,[$r6+#0x0]
   d280c:	a6 72       	lbi333 $r1,[$r6+#0x2]
   d280e:	40 21 20 08 	slli $r2,$r2,#8
   d2812:	a6 33       	lbi333 $r0,[$r6+#0x3]
   d2814:	fe 9f       	or33 $r2,$r3
   d2816:	40 10 c0 08 	slli $r1,$r1,#16
   d281a:	fe 57       	or33 $r1,$r2
   d281c:	40 00 60 08 	slli $r0,$r0,#24
   d2820:	fe 0f       	or33 $r0,$r1
   d2822:	3c 1d f0 2b 	lwi.gp $r1,[+#-16212]
   d2826:	e2 01       	slt45 $r0,$r1
   d2828:	e8 05       	beqzs8 d2832 <ISPWriteData+0x42>
   d282a:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   d282c:	a6 79       	lbi333 $r1,[$r7+#0x1]
   d282e:	84 42       	movi55 $r2,#2
   d2830:	d5 1b       	j8 d2866 <ISPWriteData+0x76>
   d2832:	54 10 0f ff 	andi $r1,$r0,#0xfff
   d2836:	c9 04       	bnez38 $r1,d283e <ISPWriteData+0x4e>
   d2838:	84 22       	movi55 $r1,#2
   d283a:	49 00 11 42 	jal d4abe <AB_DFU_erase_flash>
   d283e:	a6 31       	lbi333 $r0,[$r6+#0x1]
   d2840:	a6 b0       	lbi333 $r2,[$r6+#0x0]
   d2842:	a6 72       	lbi333 $r1,[$r6+#0x2]
   d2844:	40 00 20 08 	slli $r0,$r0,#8
   d2848:	fe 17       	or33 $r0,$r2
   d284a:	40 10 c0 08 	slli $r1,$r1,#16
   d284e:	fe 47       	or33 $r1,$r0
   d2850:	a6 33       	lbi333 $r0,[$r6+#0x3]
   d2852:	a6 b4       	lbi333 $r2,[$r6+#0x4]
   d2854:	40 00 60 08 	slli $r0,$r0,#24
   d2858:	fe 0f       	or33 $r0,$r1
   d285a:	9c 75       	addi333 $r1,$r6,#5
   d285c:	49 00 11 26 	jal d4aa8 <AB_DFU_write_flash>
   d2860:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   d2862:	a6 79       	lbi333 $r1,[$r7+#0x1]
   d2864:	84 40       	movi55 $r2,#0
   d2866:	49 ff ff 8b 	jal d277c <ab_airoha_send_1byte_vcmd_compl>
   d286a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d286c <ab_airoha_send_nbyte_vcmd_compl>:
   d286c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d286e:	54 81 80 ff 	andi $r8,$r3,#0xff
   d2872:	50 74 00 07 	addi $r7,$r8,#7
   d2876:	55 c0 00 ff 	andi $fp,$r0,#0xff
   d287a:	80 07       	mov55 $r0,$r7
   d287c:	81 22       	mov55 $r9,$r2
   d287e:	54 a0 80 ff 	andi $r10,$r1,#0xff
   d2882:	49 ff fb e1 	jal d2044 <malloc>
   d2886:	80 c0       	mov55 $r6,$r0
   d2888:	80 49       	mov55 $r2,$r9
   d288a:	80 68       	mov55 $r3,$r8
   d288c:	80 86       	mov55 $r4,$r6
   d288e:	80 1c       	mov55 $r0,$fp
   d2890:	80 2a       	mov55 $r1,$r10
   d2892:	49 ff ff 60 	jal d2752 <ab_airoha_vcmd_compl_encode>
   d2896:	80 06       	mov55 $r0,$r6
   d2898:	96 78       	zeb33 $r1,$r7
   d289a:	49 ff ff 37 	jal d2708 <Send2MP>
   d289e:	80 06       	mov55 $r0,$r6
   d28a0:	49 ff fb 6d 	jal d1f7a <free>
   d28a4:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d28a6 <ISPGetDeviceStatusVCmdHdlr>:
   d28a6:	fc 26       	push25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}
   d28a8:	80 e0       	mov55 $r7,$r0
   d28aa:	80 1f       	mov55 $r0,$sp
   d28ac:	49 fd 6e 08 	jal 804bc <AB_DFU_check_status>
   d28b0:	b0 87       	addri36.sp $r2,#0x1c
   d28b2:	84 00       	movi55 $r0,#0
   d28b4:	ae 10       	sbi333 $r0,[$r2+#0x0]
   d28b6:	00 0f 80 00 	lbi $r0,[$sp+#0x0]
   d28ba:	f1 02       	lwi37.sp $r1,[+#0x8]
   d28bc:	ae 11       	sbi333 $r0,[$r2+#0x1]
   d28be:	00 0f 80 04 	lbi $r0,[$sp+#0x4]
   d28c2:	ae 53       	sbi333 $r1,[$r2+#0x3]
   d28c4:	ae 12       	sbi333 $r0,[$r2+#0x2]
   d28c6:	40 00 a0 09 	srli $r0,$r1,#8
   d28ca:	ae 14       	sbi333 $r0,[$r2+#0x4]
   d28cc:	40 00 c0 09 	srli $r0,$r1,#16
   d28d0:	92 38       	srli45 $r1,#24
   d28d2:	ae 56       	sbi333 $r1,[$r2+#0x6]
   d28d4:	f1 03       	lwi37.sp $r1,[+#0xc]
   d28d6:	ae 15       	sbi333 $r0,[$r2+#0x5]
   d28d8:	40 00 a0 09 	srli $r0,$r1,#8
   d28dc:	ae 57       	sbi333 $r1,[$r2+#0x7]
   d28de:	10 01 00 08 	sbi $r0,[$r2+#0x8]
   d28e2:	40 00 c0 09 	srli $r0,$r1,#16
   d28e6:	92 38       	srli45 $r1,#24
   d28e8:	10 01 00 09 	sbi $r0,[$r2+#0x9]
   d28ec:	10 11 00 0a 	sbi $r1,[$r2+#0xa]
   d28f0:	00 0f 80 10 	lbi $r0,[$sp+#0x10]
   d28f4:	f1 05       	lwi37.sp $r1,[+#0x14]
   d28f6:	10 01 00 0b 	sbi $r0,[$r2+#0xb]
   d28fa:	40 00 a0 09 	srli $r0,$r1,#8
   d28fe:	10 11 00 0c 	sbi $r1,[$r2+#0xc]
   d2902:	10 01 00 0d 	sbi $r0,[$r2+#0xd]
   d2906:	40 00 c0 09 	srli $r0,$r1,#16
   d290a:	92 38       	srli45 $r1,#24
   d290c:	10 11 00 0f 	sbi $r1,[$r2+#0xf]
   d2910:	f1 06       	lwi37.sp $r1,[+#0x18]
   d2912:	10 01 00 0e 	sbi $r0,[$r2+#0xe]
   d2916:	40 00 a0 09 	srli $r0,$r1,#8
   d291a:	10 11 00 10 	sbi $r1,[$r2+#0x10]
   d291e:	10 01 00 11 	sbi $r0,[$r2+#0x11]
   d2922:	40 00 c0 09 	srli $r0,$r1,#16
   d2926:	92 38       	srli45 $r1,#24
   d2928:	10 01 00 12 	sbi $r0,[$r2+#0x12]
   d292c:	10 11 00 13 	sbi $r1,[$r2+#0x13]
   d2930:	fa 64       	movpi45 $r3,#0x14
   d2932:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   d2934:	a6 79       	lbi333 $r1,[$r7+#0x1]
   d2936:	80 df       	mov55 $r6,$sp
   d2938:	49 ff ff 9a 	jal d286c <ab_airoha_send_nbyte_vcmd_compl>
   d293c:	fc a6       	pop25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}

000d293e <ab_airoha_send_nbyte_vcmd34_compl>:
   d293e:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d2940:	54 81 80 ff 	andi $r8,$r3,#0xff
   d2944:	50 74 00 05 	addi $r7,$r8,#5
   d2948:	55 c0 00 ff 	andi $fp,$r0,#0xff
   d294c:	80 07       	mov55 $r0,$r7
   d294e:	81 22       	mov55 $r9,$r2
   d2950:	54 a0 80 ff 	andi $r10,$r1,#0xff
   d2954:	49 ff fb 78 	jal d2044 <malloc>
   d2958:	80 c0       	mov55 $r6,$r0
   d295a:	80 49       	mov55 $r2,$r9
   d295c:	80 68       	mov55 $r3,$r8
   d295e:	80 86       	mov55 $r4,$r6
   d2960:	80 1c       	mov55 $r0,$fp
   d2962:	80 2a       	mov55 $r1,$r10
   d2964:	49 ff ff 36 	jal d27d0 <ab_airoha_vcmd34_compl_encode>
   d2968:	80 06       	mov55 $r0,$r6
   d296a:	96 78       	zeb33 $r1,$r7
   d296c:	49 ff fe ce 	jal d2708 <Send2MP>
   d2970:	80 06       	mov55 $r0,$r6
   d2972:	49 ff fb 04 	jal d1f7a <free>
   d2976:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d2978 <FlashReadCSRVCmdHdlr>:
   d2978:	fc 22       	push25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}
   d297a:	9c 43       	addi333 $r1,$r0,#3
   d297c:	a7 89       	lbi333 $r6,[$r1+#0x1]
   d297e:	a7 4a       	lbi333 $r5,[$r1+#0x2]
   d2980:	a7 c8       	lbi333 $r7,[$r1+#0x0]
   d2982:	80 80       	mov55 $r4,$r0
   d2984:	40 33 20 08 	slli $r3,$r6,#8
   d2988:	a6 0b       	lbi333 $r0,[$r1+#0x3]
   d298a:	40 22 c0 08 	slli $r2,$r5,#16
   d298e:	fe 9f       	or33 $r2,$r3
   d2990:	fe bf       	or33 $r2,$r7
   d2992:	40 30 60 08 	slli $r3,$r0,#24
   d2996:	fe 9f       	or33 $r2,$r3
   d2998:	b4 62       	lwi450 $r3,[$r2]
   d299a:	85 00       	movi55 $r8,#0
   d299c:	b0 81       	addri36.sp $r2,#0x4
   d299e:	ae 14       	sbi333 $r0,[$r2+#0x4]
   d29a0:	10 81 00 00 	sbi $r8,[$r2+#0x0]
   d29a4:	af d1       	sbi333 $r7,[$r2+#0x1]
   d29a6:	af 92       	sbi333 $r6,[$r2+#0x2]
   d29a8:	af 53       	sbi333 $r5,[$r2+#0x3]
   d29aa:	40 01 a0 09 	srli $r0,$r3,#8
   d29ae:	a6 4c       	lbi333 $r1,[$r1+#0x4]
   d29b0:	ae d6       	sbi333 $r3,[$r2+#0x6]
   d29b2:	ae 17       	sbi333 $r0,[$r2+#0x7]
   d29b4:	40 01 c0 09 	srli $r0,$r3,#16
   d29b8:	92 78       	srli45 $r3,#24
   d29ba:	10 31 00 09 	sbi $r3,[$r2+#0x9]
   d29be:	ae 55       	sbi333 $r1,[$r2+#0x5]
   d29c0:	10 01 00 08 	sbi $r0,[$r2+#0x8]
   d29c4:	84 6a       	movi55 $r3,#10
   d29c6:	a6 22       	lbi333 $r0,[$r4+#0x2]
   d29c8:	a6 61       	lbi333 $r1,[$r4+#0x1]
   d29ca:	49 ff ff ba 	jal d293e <ab_airoha_send_nbyte_vcmd34_compl>
   d29ce:	fc a2       	pop25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}

000d29d0 <ab_airoha_vcmd_dispatch>:
   d29d0:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   d29d2:	40 a0 80 13 	zeh $r10,$r1
   d29d6:	2e 17 cf e0 	lbi.gp $r1,[+#-12320]
   d29da:	f0 81       	swi37.sp $r0,[+#0x4]
   d29dc:	5a 18 03 09 	bnec $r1,#3,d29ee <ab_airoha_vcmd_dispatch+0x1e>
   d29e0:	3c 1d f3 f9 	lwi.gp $r1,[+#-12316]
   d29e4:	a0 8b       	lwi333 $r2,[$r1+#0xc]
   d29e6:	80 2a       	mov55 $r1,$r10
   d29e8:	dd 22       	jral5 $r2
   d29ea:	48 00 00 8a 	j d2afe <ab_airoha_vcmd_dispatch+0x12e>
   d29ee:	3c 2f f3 f7 	swi.gp $r2,[+#-12324]
   d29f2:	3e 7f c6 c5 	addi.gp $r7,#-14651
   d29f6:	3e 9f c6 a0 	addi.gp $r9,#-14688
   d29fa:	3f cf c6 a4 	addi.gp $fp,#-14684
   d29fe:	48 00 00 79 	j d2af0 <ab_airoha_vcmd_dispatch+0x120>
   d2a02:	f0 01       	lwi37.sp $r0,[+#0x4]
   d2a04:	a7 80       	lbi333 $r6,[$r0+#0x0]
   d2a06:	a6 38       	lbi333 $r0,[$r7+#0x0]
   d2a08:	5a 00 02 17 	beqc $r0,#2,d2a36 <ab_airoha_vcmd_dispatch+0x66>
   d2a0c:	e6 03       	slti45 $r0,#3
   d2a0e:	e8 05       	beqzs8 d2a18 <ab_airoha_vcmd_dispatch+0x48>
   d2a10:	c0 09       	beqz38 $r0,d2a22 <ab_airoha_vcmd_dispatch+0x52>
   d2a12:	5a 08 01 69 	bnec $r0,#1,d2ae4 <ab_airoha_vcmd_dispatch+0x114>
   d2a16:	d5 0d       	j8 d2a30 <ab_airoha_vcmd_dispatch+0x60>
   d2a18:	5a 00 03 15 	beqc $r0,#3,d2a42 <ab_airoha_vcmd_dispatch+0x72>
   d2a1c:	5a 08 04 64 	bnec $r0,#4,d2ae4 <ab_airoha_vcmd_dispatch+0x114>
   d2a20:	d5 1e       	j8 d2a5c <ab_airoha_vcmd_dispatch+0x8c>
   d2a22:	b4 09       	lwi450 $r0,[$r9]
   d2a24:	c0 03       	beqz38 $r0,d2a2a <ab_airoha_vcmd_dispatch+0x5a>
   d2a26:	49 ff fa aa 	jal d1f7a <free>
   d2a2a:	5a 68 01 5d 	bnec $r6,#1,d2ae4 <ab_airoha_vcmd_dispatch+0x114>
   d2a2e:	d5 5a       	j8 d2ae2 <ab_airoha_vcmd_dispatch+0x112>
   d2a30:	ce 07       	bnez38 $r6,d2a3e <ab_airoha_vcmd_dispatch+0x6e>
   d2a32:	84 02       	movi55 $r0,#2
   d2a34:	d5 12       	j8 d2a58 <ab_airoha_vcmd_dispatch+0x88>
   d2a36:	5a 68 fc 04 	bnec $r6,#252,d2a3e <ab_airoha_vcmd_dispatch+0x6e>
   d2a3a:	84 03       	movi55 $r0,#3
   d2a3c:	d5 0e       	j8 d2a58 <ab_airoha_vcmd_dispatch+0x88>
   d2a3e:	84 00       	movi55 $r0,#0
   d2a40:	d5 0c       	j8 d2a58 <ab_airoha_vcmd_dispatch+0x88>
   d2a42:	9c 33       	addi333 $r0,$r6,#3
   d2a44:	49 ff fb 00 	jal d2044 <malloc>
   d2a48:	9e 72       	subi333 $r1,$r6,#2
   d2a4a:	b6 09       	swi450 $r0,[$r9]
   d2a4c:	18 10 00 01 	sbi.bi $r1,[$r0],#0x1
   d2a50:	3e 67 c6 c6 	sbi.gp $r6,[+#-14650]
   d2a54:	b6 1c       	swi450 $r0,[$fp]
   d2a56:	84 04       	movi55 $r0,#4
   d2a58:	ae 38       	sbi333 $r0,[$r7+#0x0]
   d2a5a:	d5 45       	j8 d2ae4 <ab_airoha_vcmd_dispatch+0x114>
   d2a5c:	b4 1c       	lwi450 $r0,[$fp]
   d2a5e:	18 60 00 01 	sbi.bi $r6,[$r0],#0x1
   d2a62:	b6 1c       	swi450 $r0,[$fp]
   d2a64:	2e 07 c6 c6 	lbi.gp $r0,[+#-14650]
   d2a68:	9e 01       	subi333 $r0,$r0,#1
   d2a6a:	96 00       	zeb33 $r0,$r0
   d2a6c:	3e 07 c6 c6 	sbi.gp $r0,[+#-14650]
   d2a70:	c8 3a       	bnez38 $r0,d2ae4 <ab_airoha_vcmd_dispatch+0x114>
   d2a72:	2e 07 cf e0 	lbi.gp $r0,[+#-12320]
   d2a76:	b4 29       	lwi450 $r1,[$r9]
   d2a78:	e6 02       	slti45 $r0,#2
   d2a7a:	e8 0a       	beqzs8 d2a8e <ab_airoha_vcmd_dispatch+0xbe>
   d2a7c:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   d2a7e:	5a 08 31 05 	bnec $r0,#49,d2a88 <ab_airoha_vcmd_dispatch+0xb8>
   d2a82:	a6 89       	lbi333 $r2,[$r1+#0x1]
   d2a84:	5a 20 20 05 	beqc $r2,#32,d2a8e <ab_airoha_vcmd_dispatch+0xbe>
   d2a88:	a6 49       	lbi333 $r1,[$r1+#0x1]
   d2a8a:	84 4c       	movi55 $r2,#12
   d2a8c:	d5 21       	j8 d2ace <ab_airoha_vcmd_dispatch+0xfe>
   d2a8e:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   d2a90:	5a 00 34 0d 	beqc $r0,#52,d2aaa <ab_airoha_vcmd_dispatch+0xda>
   d2a94:	5a 00 35 13 	beqc $r0,#53,d2aba <ab_airoha_vcmd_dispatch+0xea>
   d2a98:	5a 08 31 2f 	bnec $r0,#49,d2af6 <ab_airoha_vcmd_dispatch+0x126>
   d2a9c:	a6 89       	lbi333 $r2,[$r1+#0x1]
   d2a9e:	5c f1 00 21 	slti $r15,$r2,#33
   d2aa2:	e8 14       	beqzs8 d2aca <ab_airoha_vcmd_dispatch+0xfa>
   d2aa4:	3e 0d 2e e4 	addi.gp $r0,#-184604
   d2aa8:	d5 0e       	j8 d2ac4 <ab_airoha_vcmd_dispatch+0xf4>
   d2aaa:	a6 89       	lbi333 $r2,[$r1+#0x1]
   d2aac:	8e 48       	subi45 $r2,#8
   d2aae:	96 90       	zeb33 $r2,$r2
   d2ab0:	e6 46       	slti45 $r2,#6
   d2ab2:	e8 0c       	beqzs8 d2aca <ab_airoha_vcmd_dispatch+0xfa>
   d2ab4:	3e 0d 2f 68 	addi.gp $r0,#-184472
   d2ab8:	d5 06       	j8 d2ac4 <ab_airoha_vcmd_dispatch+0xf4>
   d2aba:	a6 89       	lbi333 $r2,[$r1+#0x1]
   d2abc:	e6 43       	slti45 $r2,#3
   d2abe:	e8 06       	beqzs8 d2aca <ab_airoha_vcmd_dispatch+0xfa>
   d2ac0:	3e 0d 2f 80 	addi.gp $r0,#-184448
   d2ac4:	38 20 0a 02 	lw $r2,[$r0+($r2<<#0x2)]
   d2ac8:	d5 06       	j8 d2ad4 <ab_airoha_vcmd_dispatch+0x104>
   d2aca:	a6 49       	lbi333 $r1,[$r1+#0x1]
   d2acc:	84 41       	movi55 $r2,#1
   d2ace:	49 ff fe 57 	jal d277c <ab_airoha_send_1byte_vcmd_compl>
   d2ad2:	d5 03       	j8 d2ad8 <ab_airoha_vcmd_dispatch+0x108>
   d2ad4:	80 01       	mov55 $r0,$r1
   d2ad6:	dd 22       	jral5 $r2
   d2ad8:	84 c0       	movi55 $r6,#0
   d2ada:	80 06       	mov55 $r0,$r6
   d2adc:	b6 c9       	swi450 $r6,[$r9]
   d2ade:	49 ff fa 4e 	jal d1f7a <free>
   d2ae2:	af b8       	sbi333 $r6,[$r7+#0x0]
   d2ae4:	f0 01       	lwi37.sp $r0,[+#0x4]
   d2ae6:	8f 41       	subi45 $r10,#1
   d2ae8:	9c 01       	addi333 $r0,$r0,#1
   d2aea:	f0 81       	swi37.sp $r0,[+#0x4]
   d2aec:	40 a5 00 13 	zeh $r10,$r10
   d2af0:	4e a3 ff 89 	bnez $r10,d2a02 <ab_airoha_vcmd_dispatch+0x32>
   d2af4:	d5 05       	j8 d2afe <ab_airoha_vcmd_dispatch+0x12e>
   d2af6:	3c 2d f1 aa 	lwi.gp $r2,[+#-14680]
   d2afa:	ca ed       	bnez38 $r2,d2ad4 <ab_airoha_vcmd_dispatch+0x104>
   d2afc:	d5 ee       	j8 d2ad8 <ab_airoha_vcmd_dispatch+0x108>
   d2afe:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000d2b00 <HC_HciLabTestWrThreeWiredVCmdHdlr>:
   d2b00:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2b02:	a6 84       	lbi333 $r2,[$r0+#0x4]
   d2b04:	a6 43       	lbi333 $r1,[$r0+#0x3]
   d2b06:	80 c0       	mov55 $r6,$r0
   d2b08:	40 21 20 08 	slli $r2,$r2,#8
   d2b0c:	a6 05       	lbi333 $r0,[$r0+#0x5]
   d2b0e:	fe 57       	or33 $r1,$r2
   d2b10:	49 fd 6f 26 	jal 8095c <SYS_3WireWrite>
   d2b14:	a6 32       	lbi333 $r0,[$r6+#0x2]
   d2b16:	a6 71       	lbi333 $r1,[$r6+#0x1]
   d2b18:	84 40       	movi55 $r2,#0
   d2b1a:	49 ff fe 31 	jal d277c <ab_airoha_send_1byte_vcmd_compl>
   d2b1e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2b20 <FlashReadThreeWireVCmdHdlr>:
   d2b20:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   d2b22:	80 c0       	mov55 $r6,$r0
   d2b24:	a6 03       	lbi333 $r0,[$r0+#0x3]
   d2b26:	49 fd 6e c9 	jal 808b8 <SYS_3WireRead>
   d2b2a:	b0 81       	addri36.sp $r2,#0x4
   d2b2c:	ae 11       	sbi333 $r0,[$r2+#0x1]
   d2b2e:	84 20       	movi55 $r1,#0
   d2b30:	92 08       	srli45 $r0,#8
   d2b32:	ae 50       	sbi333 $r1,[$r2+#0x0]
   d2b34:	ae 12       	sbi333 $r0,[$r2+#0x2]
   d2b36:	84 63       	movi55 $r3,#3
   d2b38:	a6 32       	lbi333 $r0,[$r6+#0x2]
   d2b3a:	a6 71       	lbi333 $r1,[$r6+#0x1]
   d2b3c:	49 ff ff 01 	jal d293e <ab_airoha_send_nbyte_vcmd34_compl>
   d2b40:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000d2b42 <HC_HciLabTestRdThreeWiredVCmdHdlr>:
   d2b42:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   d2b44:	80 c0       	mov55 $r6,$r0
   d2b46:	a6 03       	lbi333 $r0,[$r0+#0x3]
   d2b48:	49 fd 6e b8 	jal 808b8 <SYS_3WireRead>
   d2b4c:	b0 81       	addri36.sp $r2,#0x4
   d2b4e:	ae 11       	sbi333 $r0,[$r2+#0x1]
   d2b50:	84 20       	movi55 $r1,#0
   d2b52:	92 08       	srli45 $r0,#8
   d2b54:	ae 50       	sbi333 $r1,[$r2+#0x0]
   d2b56:	ae 12       	sbi333 $r0,[$r2+#0x2]
   d2b58:	84 63       	movi55 $r3,#3
   d2b5a:	a6 32       	lbi333 $r0,[$r6+#0x2]
   d2b5c:	a6 71       	lbi333 $r1,[$r6+#0x1]
   d2b5e:	49 ff fe 87 	jal d286c <ab_airoha_send_nbyte_vcmd_compl>
   d2b62:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000d2b64 <mount_1602>:
   d2b64:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d2b66:	84 00       	movi55 $r0,#0
   d2b68:	49 ff fa b3 	jal d20ce <AB_module_count>
   d2b6c:	81 00       	mov55 $r8,$r0
   d2b6e:	84 c0       	movi55 $r6,#0
   d2b70:	d5 15       	j8 d2b9a <mount_1602+0x36>
   d2b72:	80 06       	mov55 $r0,$r6
   d2b74:	49 ff fa c9 	jal d2106 <AB_module_get>
   d2b78:	80 e0       	mov55 $r7,$r0
   d2b7a:	b4 00       	lwi450 $r0,[$r0]
   d2b7c:	3e 1d 30 24 	addi.gp $r1,#-184284
   d2b80:	49 ff aa 8c 	jal c8098 <strcmp>
   d2b84:	c8 0a       	bnez38 $r0,d2b98 <mount_1602+0x34>
   d2b86:	a0 79       	lwi333 $r1,[$r7+#0x4]
   d2b88:	3c 1f f3 f9 	swi.gp $r1,[+#-12316]
   d2b8c:	a0 89       	lwi333 $r2,[$r1+#0x4]
   d2b8e:	3e 1c e7 16 	addi.gp $r1,#-202986
   d2b92:	dd 22       	jral5 $r2
   d2b94:	84 01       	movi55 $r0,#1
   d2b96:	d5 05       	j8 d2ba0 <mount_1602+0x3c>
   d2b98:	9d b1       	addi333 $r6,$r6,#1
   d2b9a:	e2 c8       	slt45 $r6,$r8
   d2b9c:	e9 eb       	bnezs8 d2b72 <mount_1602+0xe>
   d2b9e:	84 00       	movi55 $r0,#0
   d2ba0:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d2ba2 <HC_HciLabTestBDieCommandModeVCmdHdlr>:
   d2ba2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2ba4:	80 c0       	mov55 $r6,$r0
   d2ba6:	a6 03       	lbi333 $r0,[$r0+#0x3]
   d2ba8:	84 41       	movi55 $r2,#1
   d2baa:	5a 08 01 08 	bnec $r0,#1,d2bba <HC_HciLabTestBDieCommandModeVCmdHdlr+0x18>
   d2bae:	84 23       	movi55 $r1,#3
   d2bb0:	3e 17 cf e0 	sbi.gp $r1,[+#-12320]
   d2bb4:	a6 32       	lbi333 $r0,[$r6+#0x2]
   d2bb6:	a6 71       	lbi333 $r1,[$r6+#0x1]
   d2bb8:	d5 11       	j8 d2bda <HC_HciLabTestBDieCommandModeVCmdHdlr+0x38>
   d2bba:	5a 08 02 15 	bnec $r0,#2,d2be4 <HC_HciLabTestBDieCommandModeVCmdHdlr+0x42>
   d2bbe:	46 00 01 00 	sethi $r0,#0x100
   d2bc2:	2e 17 cf e0 	lbi.gp $r1,[+#-12320]
   d2bc6:	c9 04       	bnez38 $r1,d2bce <HC_HciLabTestBDieCommandModeVCmdHdlr+0x2c>
   d2bc8:	3e 27 cf e0 	sbi.gp $r2,[+#-12320]
   d2bcc:	d5 10       	j8 d2bec <HC_HciLabTestBDieCommandModeVCmdHdlr+0x4a>
   d2bce:	49 ff ff cb 	jal d2b64 <mount_1602>
   d2bd2:	a6 b2       	lbi333 $r2,[$r6+#0x2]
   d2bd4:	a6 71       	lbi333 $r1,[$r6+#0x1]
   d2bd6:	c0 04       	beqz38 $r0,d2bde <HC_HciLabTestBDieCommandModeVCmdHdlr+0x3c>
   d2bd8:	80 02       	mov55 $r0,$r2
   d2bda:	84 40       	movi55 $r2,#0
   d2bdc:	d5 06       	j8 d2be8 <HC_HciLabTestBDieCommandModeVCmdHdlr+0x46>
   d2bde:	80 02       	mov55 $r0,$r2
   d2be0:	84 4d       	movi55 $r2,#13
   d2be2:	d5 03       	j8 d2be8 <HC_HciLabTestBDieCommandModeVCmdHdlr+0x46>
   d2be4:	a6 32       	lbi333 $r0,[$r6+#0x2]
   d2be6:	a6 71       	lbi333 $r1,[$r6+#0x1]
   d2be8:	49 ff fd ca 	jal d277c <ab_airoha_send_1byte_vcmd_compl>
   d2bec:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2bee <ab_airoha_vcmd_enable>:
   d2bee:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2bf0:	2e 07 cf e0 	lbi.gp $r0,[+#-12320]
   d2bf4:	5a 08 01 15 	bnec $r0,#1,d2c1e <ab_airoha_vcmd_enable+0x30>
   d2bf8:	49 ff ff b6 	jal d2b64 <mount_1602>
   d2bfc:	c0 0b       	beqz38 $r0,d2c12 <ab_airoha_vcmd_enable+0x24>
   d2bfe:	44 00 00 31 	movi $r0,#49
   d2c02:	fa 30       	movpi45 $r1,#0x20
   d2c04:	84 40       	movi55 $r2,#0
   d2c06:	49 ff fd bb 	jal d277c <ab_airoha_send_1byte_vcmd_compl>
   d2c0a:	84 02       	movi55 $r0,#2
   d2c0c:	3e 07 cf e0 	sbi.gp $r0,[+#-12320]
   d2c10:	d5 0a       	j8 d2c24 <ab_airoha_vcmd_enable+0x36>
   d2c12:	44 00 00 31 	movi $r0,#49
   d2c16:	fa 30       	movpi45 $r1,#0x20
   d2c18:	84 4d       	movi55 $r2,#13
   d2c1a:	49 ff fd b1 	jal d277c <ab_airoha_send_1byte_vcmd_compl>
   d2c1e:	84 22       	movi55 $r1,#2
   d2c20:	3e 17 cf e0 	sbi.gp $r1,[+#-12320]
   d2c24:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2c26 <ab_airoha_vcmd_uart_hci_mode_enable>:
   d2c26:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   d2c28:	80 c0       	mov55 $r6,$r0
   d2c2a:	3e 0d 2f 8c 	addi.gp $r0,#-184436
   d2c2e:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   d2c32:	80 ff       	mov55 $r7,$sp
   d2c34:	12 1f 80 02 	shi $r1,[$sp+#0x4]
   d2c38:	92 30       	srli45 $r1,#16
   d2c3a:	10 1f 80 06 	sbi $r1,[$sp+#0x6]
   d2c3e:	b6 1f       	swi450 $r0,[$sp]
   d2c40:	49 ff ff 92 	jal d2b64 <mount_1602>
   d2c44:	3c 6f f3 f7 	swi.gp $r6,[+#-12324]
   d2c48:	84 23       	movi55 $r1,#3
   d2c4a:	3e 17 cf e0 	sbi.gp $r1,[+#-12320]
   d2c4e:	80 1f       	mov55 $r0,$sp
   d2c50:	84 27       	movi55 $r1,#7
   d2c52:	dd 26       	jral5 $r6
   d2c54:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000d2c56 <dev_1602_read_cfm_cb>:
   d2c56:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d2c58:	2e 07 cf e0 	lbi.gp $r0,[+#-12320]
   d2c5c:	80 e1       	mov55 $r7,$r1
   d2c5e:	97 91       	zeh33 $r6,$r2
   d2c60:	5a 08 03 14 	bnec $r0,#3,d2c88 <dev_1602_read_cfm_cb+0x32>
   d2c64:	2e 07 cf e8 	lbi.gp $r0,[+#-12312]
   d2c68:	c0 0c       	beqz38 $r0,d2c80 <dev_1602_read_cfm_cb+0x2a>
   d2c6a:	e6 c5       	slti45 $r6,#5
   d2c6c:	e9 0a       	bnezs8 d2c80 <dev_1602_read_cfm_cb+0x2a>
   d2c6e:	80 01       	mov55 $r0,$r1
   d2c70:	84 45       	movi55 $r2,#5
   d2c72:	3e 1f c2 24 	addi.gp $r1,#-15836
   d2c76:	49 ff a9 dd 	jal c8030 <memcmp>
   d2c7a:	c8 03       	bnez38 $r0,d2c80 <dev_1602_read_cfm_cb+0x2a>
   d2c7c:	49 ff fb 14 	jal d22a4 <AB_PWR_Rst>
   d2c80:	80 07       	mov55 $r0,$r7
   d2c82:	96 70       	zeb33 $r1,$r6
   d2c84:	49 ff fd 42 	jal d2708 <Send2MP>
   d2c88:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d2c8a <T.37>:
   d2c8a:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   d2c8c:	84 40       	movi55 $r2,#0
   d2c8e:	10 2f 80 07 	sbi $r2,[$sp+#0x7]
   d2c92:	84 61       	movi55 $r3,#1
   d2c94:	50 2f 80 07 	addi $r2,$sp,#7
   d2c98:	80 9f       	mov55 $r4,$sp
   d2c9a:	96 00       	zeb33 $r0,$r0
   d2c9c:	96 48       	zeb33 $r1,$r1
   d2c9e:	49 ff fd 99 	jal d27d0 <ab_airoha_vcmd34_compl_encode>
   d2ca2:	80 1f       	mov55 $r0,$sp
   d2ca4:	84 26       	movi55 $r1,#6
   d2ca6:	80 df       	mov55 $r6,$sp
   d2ca8:	49 ff fd 30 	jal d2708 <Send2MP>
   d2cac:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000d2cae <FlashWriteThreeWireVCmdHdlr>:
   d2cae:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2cb0:	80 c0       	mov55 $r6,$r0
   d2cb2:	9c 03       	addi333 $r0,$r0,#3
   d2cb4:	a6 41       	lbi333 $r1,[$r0+#0x1]
   d2cb6:	a6 80       	lbi333 $r2,[$r0+#0x0]
   d2cb8:	40 10 a0 08 	slli $r1,$r1,#8
   d2cbc:	98 4a       	add333 $r1,$r1,$r2
   d2cbe:	a6 02       	lbi333 $r0,[$r0+#0x2]
   d2cc0:	96 49       	zeh33 $r1,$r1
   d2cc2:	49 fd 6e 4d 	jal 8095c <SYS_3WireWrite>
   d2cc6:	a6 32       	lbi333 $r0,[$r6+#0x2]
   d2cc8:	a6 71       	lbi333 $r1,[$r6+#0x1]
   d2cca:	49 ff ff e0 	jal d2c8a <T.37>
   d2cce:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2cd0 <FlashWriteCSRVCmdHdlr>:
   d2cd0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2cd2:	9c 43       	addi333 $r1,$r0,#3
   d2cd4:	80 40       	mov55 $r2,$r0
   d2cd6:	a6 c8       	lbi333 $r3,[$r1+#0x0]
   d2cd8:	84 00       	movi55 $r0,#0
   d2cda:	d5 20       	j8 d2d1a <FlashWriteCSRVCmdHdlr+0x4a>
   d2cdc:	a7 4a       	lbi333 $r5,[$r1+#0x2]
   d2cde:	a7 0b       	lbi333 $r4,[$r1+#0x3]
   d2ce0:	40 52 a0 08 	slli $r5,$r5,#8
   d2ce4:	40 42 40 08 	slli $r4,$r4,#16
   d2ce8:	ff 2f       	or33 $r4,$r5
   d2cea:	a7 49       	lbi333 $r5,[$r1+#0x1]
   d2cec:	a7 8f       	lbi333 $r6,[$r1+#0x7]
   d2cee:	ff 2f       	or33 $r4,$r5
   d2cf0:	a7 4c       	lbi333 $r5,[$r1+#0x4]
   d2cf2:	40 63 20 08 	slli $r6,$r6,#8
   d2cf6:	40 52 e0 08 	slli $r5,$r5,#24
   d2cfa:	ff 2f       	or33 $r4,$r5
   d2cfc:	00 50 80 08 	lbi $r5,[$r1+#0x8]
   d2d00:	9c 01       	addi333 $r0,$r0,#1
   d2d02:	40 52 c0 08 	slli $r5,$r5,#16
   d2d06:	ff af       	or33 $r6,$r5
   d2d08:	a7 4e       	lbi333 $r5,[$r1+#0x6]
   d2d0a:	96 00       	zeb33 $r0,$r0
   d2d0c:	ff af       	or33 $r6,$r5
   d2d0e:	00 50 80 09 	lbi $r5,[$r1+#0x9]
   d2d12:	40 52 e0 08 	slli $r5,$r5,#24
   d2d16:	ff 77       	or33 $r5,$r6
   d2d18:	b6 a4       	swi450 $r5,[$r4]
   d2d1a:	e2 03       	slt45 $r0,$r3
   d2d1c:	e9 e0       	bnezs8 d2cdc <FlashWriteCSRVCmdHdlr+0xc>
   d2d1e:	a6 12       	lbi333 $r0,[$r2+#0x2]
   d2d20:	a6 51       	lbi333 $r1,[$r2+#0x1]
   d2d22:	49 ff ff b4 	jal d2c8a <T.37>
   d2d26:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2d28 <DRV_CLK_SysSel>:
   d2d28:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2d2a:	80 c0       	mov55 $r6,$r0
   d2d2c:	5a 08 01 08 	bnec $r0,#1,d2d3c <DRV_CLK_SysSel+0x14>
   d2d30:	44 00 00 39 	movi $r0,#57
   d2d34:	fa 30       	movpi45 $r1,#0x20
   d2d36:	49 fd 6e 6d 	jal 80a10 <SYS_3WireBitErase>
   d2d3a:	d5 22       	j8 d2d7e <DRV_CLK_SysSel+0x56>
   d2d3c:	44 00 00 39 	movi $r0,#57
   d2d40:	44 10 06 00 	movi $r1,#1536
   d2d44:	49 fd 6e 66 	jal 80a10 <SYS_3WireBitErase>
   d2d48:	5a 68 02 07 	bnec $r6,#2,d2d56 <DRV_CLK_SysSel+0x2e>
   d2d4c:	44 00 00 39 	movi $r0,#57
   d2d50:	44 10 02 00 	movi $r1,#512
   d2d54:	d5 0e       	j8 d2d70 <DRV_CLK_SysSel+0x48>
   d2d56:	5a 68 03 07 	bnec $r6,#3,d2d64 <DRV_CLK_SysSel+0x3c>
   d2d5a:	44 00 00 39 	movi $r0,#57
   d2d5e:	44 10 04 00 	movi $r1,#1024
   d2d62:	d5 07       	j8 d2d70 <DRV_CLK_SysSel+0x48>
   d2d64:	5a 68 04 08 	bnec $r6,#4,d2d74 <DRV_CLK_SysSel+0x4c>
   d2d68:	44 00 00 39 	movi $r0,#57
   d2d6c:	44 10 06 00 	movi $r1,#1536
   d2d70:	49 fd 6e 43 	jal 809f6 <SYS_3WireBitWrite>
   d2d74:	44 00 00 39 	movi $r0,#57
   d2d78:	fa 30       	movpi45 $r1,#0x20
   d2d7a:	49 fd 6e 3e 	jal 809f6 <SYS_3WireBitWrite>
   d2d7e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2d80 <DRV_CLK_16MSel>:
   d2d80:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2d82:	c8 07       	bnez38 $r0,d2d90 <DRV_CLK_16MSel+0x10>
   d2d84:	44 00 00 39 	movi $r0,#57
   d2d88:	9c 47       	addi333 $r1,$r0,#7
   d2d8a:	49 fd 6e 36 	jal 809f6 <SYS_3WireBitWrite>
   d2d8e:	d5 06       	j8 d2d9a <DRV_CLK_16MSel+0x1a>
   d2d90:	44 00 00 39 	movi $r0,#57
   d2d94:	9c 47       	addi333 $r1,$r0,#7
   d2d96:	49 fd 6e 3d 	jal 80a10 <SYS_3WireBitErase>
   d2d9a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2d9c <DRV_CLK_32KSel>:
   d2d9c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2d9e:	c8 08       	bnez38 $r0,d2dae <DRV_CLK_32KSel+0x12>
   d2da0:	44 00 00 39 	movi $r0,#57
   d2da4:	44 10 00 80 	movi $r1,#128
   d2da8:	49 fd 6e 27 	jal 809f6 <SYS_3WireBitWrite>
   d2dac:	d5 07       	j8 d2dba <DRV_CLK_32KSel+0x1e>
   d2dae:	44 00 00 39 	movi $r0,#57
   d2db2:	44 10 00 80 	movi $r1,#128
   d2db6:	49 fd 6e 2d 	jal 80a10 <SYS_3WireBitErase>
   d2dba:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2dbc <DRV_CLK_PLLEn>:
   d2dbc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2dbe:	96 00       	zeb33 $r0,$r0
   d2dc0:	80 c1       	mov55 $r6,$r1
   d2dc2:	c0 11       	beqz38 $r0,d2de4 <DRV_CLK_PLLEn+0x28>
   d2dc4:	84 08       	movi55 $r0,#8
   d2dc6:	44 10 40 00 	movi $r1,#16384
   d2dca:	49 fd 6e 16 	jal 809f6 <SYS_3WireBitWrite>
   d2dce:	ce 05       	bnez38 $r6,d2dd8 <DRV_CLK_PLLEn+0x1c>
   d2dd0:	84 0b       	movi55 $r0,#11
   d2dd2:	44 10 01 00 	movi $r1,#256
   d2dd6:	d5 0a       	j8 d2dea <DRV_CLK_PLLEn+0x2e>
   d2dd8:	84 0b       	movi55 $r0,#11
   d2dda:	44 10 01 00 	movi $r1,#256
   d2dde:	49 fd 6e 0c 	jal 809f6 <SYS_3WireBitWrite>
   d2de2:	d5 06       	j8 d2dee <DRV_CLK_PLLEn+0x32>
   d2de4:	84 08       	movi55 $r0,#8
   d2de6:	44 10 40 00 	movi $r1,#16384
   d2dea:	49 fd 6e 13 	jal 80a10 <SYS_3WireBitErase>
   d2dee:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2df0 <DRV_CLK_En>:
   d2df0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2df2:	96 48       	zeb33 $r1,$r1
   d2df4:	80 c0       	mov55 $r6,$r0
   d2df6:	c1 3a       	beqz38 $r1,d2e6a <DRV_CLK_En+0x7a>
   d2df8:	c8 10       	bnez38 $r0,d2e18 <DRV_CLK_En+0x28>
   d2dfa:	44 00 00 3b 	movi $r0,#59
   d2dfe:	44 10 20 00 	movi $r1,#8192
   d2e02:	49 fd 6d fa 	jal 809f6 <SYS_3WireBitWrite>
   d2e06:	84 01       	movi55 $r0,#1
   d2e08:	49 fd 6d 51 	jal 808aa <OS_delay_ms>
   d2e0c:	fa 0d       	movpi45 $r0,#0x1d
   d2e0e:	49 fd 6d 55 	jal 808b8 <SYS_3WireRead>
   d2e12:	96 26       	bmski33 $r0,#0x4
   d2e14:	c0 fc       	beqz38 $r0,d2e0c <DRV_CLK_En+0x1c>
   d2e16:	d5 3e       	j8 d2e92 <DRV_CLK_En+0xa2>
   d2e18:	5a 08 01 17 	bnec $r0,#1,d2e46 <DRV_CLK_En+0x56>
   d2e1c:	44 00 00 3c 	movi $r0,#60
   d2e20:	44 10 02 00 	movi $r1,#512
   d2e24:	49 fd 6d e9 	jal 809f6 <SYS_3WireBitWrite>
   d2e28:	44 00 00 3b 	movi $r0,#59
   d2e2c:	44 10 04 00 	movi $r1,#1024
   d2e30:	49 fd 6d e3 	jal 809f6 <SYS_3WireBitWrite>
   d2e34:	80 06       	mov55 $r0,$r6
   d2e36:	49 fd 6d 3a 	jal 808aa <OS_delay_ms>
   d2e3a:	fa 0d       	movpi45 $r0,#0x1d
   d2e3c:	49 fd 6d 3e 	jal 808b8 <SYS_3WireRead>
   d2e40:	96 2e       	bmski33 $r0,#0x5
   d2e42:	c0 fc       	beqz38 $r0,d2e3a <DRV_CLK_En+0x4a>
   d2e44:	d5 27       	j8 d2e92 <DRV_CLK_En+0xa2>
   d2e46:	5a 08 02 06 	bnec $r0,#2,d2e52 <DRV_CLK_En+0x62>
   d2e4a:	84 0e       	movi55 $r0,#14
   d2e4c:	44 10 01 80 	movi $r1,#384
   d2e50:	d5 07       	j8 d2e5e <DRV_CLK_En+0x6e>
   d2e52:	5a 08 03 20 	bnec $r0,#3,d2e92 <DRV_CLK_En+0xa2>
   d2e56:	44 00 00 3b 	movi $r0,#59
   d2e5a:	44 10 10 00 	movi $r1,#4096
   d2e5e:	49 fd 6d cc 	jal 809f6 <SYS_3WireBitWrite>
   d2e62:	84 01       	movi55 $r0,#1
   d2e64:	49 fd 6d 23 	jal 808aa <OS_delay_ms>
   d2e68:	d5 15       	j8 d2e92 <DRV_CLK_En+0xa2>
   d2e6a:	c8 06       	bnez38 $r0,d2e76 <DRV_CLK_En+0x86>
   d2e6c:	44 00 00 3b 	movi $r0,#59
   d2e70:	44 10 20 00 	movi $r1,#8192
   d2e74:	d5 0d       	j8 d2e8e <DRV_CLK_En+0x9e>
   d2e76:	5a 08 01 07 	bnec $r0,#1,d2e84 <DRV_CLK_En+0x94>
   d2e7a:	44 00 00 3b 	movi $r0,#59
   d2e7e:	44 10 04 00 	movi $r1,#1024
   d2e82:	d5 06       	j8 d2e8e <DRV_CLK_En+0x9e>
   d2e84:	5a 08 02 07 	bnec $r0,#2,d2e92 <DRV_CLK_En+0xa2>
   d2e88:	84 0e       	movi55 $r0,#14
   d2e8a:	44 10 01 80 	movi $r1,#384
   d2e8e:	49 fd 6d c1 	jal 80a10 <SYS_3WireBitErase>
   d2e92:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2e94 <DRV_CLK_Calibration>:
   d2e94:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2e96:	80 c0       	mov55 $r6,$r0
   d2e98:	84 01       	movi55 $r0,#1
   d2e9a:	80 20       	mov55 $r1,$r0
   d2e9c:	49 ff ff aa 	jal d2df0 <DRV_CLK_En>
   d2ea0:	ce 35       	bnez38 $r6,d2f0a <DRV_CLK_Calibration+0x76>
   d2ea2:	44 00 00 42 	movi $r0,#66
   d2ea6:	44 10 3e 80 	movi $r1,#16000
   d2eaa:	49 fd 6d 59 	jal 8095c <SYS_3WireWrite>
   d2eae:	44 10 3e 80 	movi $r1,#16000
   d2eb2:	44 00 00 43 	movi $r0,#67
   d2eb6:	49 fd 6d 53 	jal 8095c <SYS_3WireWrite>
   d2eba:	44 00 00 41 	movi $r0,#65
   d2ebe:	49 fd 6c fd 	jal 808b8 <SYS_3WireRead>
   d2ec2:	44 20 f0 00 	movi $r2,#61440
   d2ec6:	40 10 08 02 	and $r1,$r0,$r2
   d2eca:	58 10 80 23 	ori $r1,$r1,#0x23
   d2ece:	44 00 00 41 	movi $r0,#65
   d2ed2:	49 fd 6d 45 	jal 8095c <SYS_3WireWrite>
   d2ed6:	44 00 00 4a 	movi $r0,#74
   d2eda:	49 fd 6c ef 	jal 808b8 <SYS_3WireRead>
   d2ede:	96 04       	xlsb33 $r0,$r0
   d2ee0:	c0 fb       	beqz38 $r0,d2ed6 <DRV_CLK_Calibration+0x42>
   d2ee2:	44 00 00 41 	movi $r0,#65
   d2ee6:	49 fd 6c e9 	jal 808b8 <SYS_3WireRead>
   d2eea:	44 20 f0 00 	movi $r2,#61440
   d2eee:	40 10 08 02 	and $r1,$r0,$r2
   d2ef2:	9d b1       	addi333 $r6,$r6,#1
   d2ef4:	44 00 00 41 	movi $r0,#65
   d2ef8:	49 fd 6d 32 	jal 8095c <SYS_3WireWrite>
   d2efc:	97 b0       	zeb33 $r6,$r6
   d2efe:	84 01       	movi55 $r0,#1
   d2f00:	49 fd 6c c4 	jal 80888 <OS_delay_us>
   d2f04:	5a 68 28 cf 	bnec $r6,#40,d2ea2 <DRV_CLK_Calibration+0xe>
   d2f08:	d5 36       	j8 d2f74 <DRV_CLK_Calibration+0xe0>
   d2f0a:	5a 68 03 35 	bnec $r6,#3,d2f74 <DRV_CLK_Calibration+0xe0>
   d2f0e:	84 c0       	movi55 $r6,#0
   d2f10:	44 00 00 42 	movi $r0,#66
   d2f14:	44 10 0f a0 	movi $r1,#4000
   d2f18:	49 fd 6d 22 	jal 8095c <SYS_3WireWrite>
   d2f1c:	fa 30       	movpi45 $r1,#0x20
   d2f1e:	44 00 00 43 	movi $r0,#67
   d2f22:	49 fd 6d 1d 	jal 8095c <SYS_3WireWrite>
   d2f26:	44 00 00 41 	movi $r0,#65
   d2f2a:	49 fd 6c c7 	jal 808b8 <SYS_3WireRead>
   d2f2e:	44 20 f0 00 	movi $r2,#61440
   d2f32:	40 10 08 02 	and $r1,$r0,$r2
   d2f36:	58 10 80 12 	ori $r1,$r1,#0x12
   d2f3a:	44 00 00 41 	movi $r0,#65
   d2f3e:	49 fd 6d 0f 	jal 8095c <SYS_3WireWrite>
   d2f42:	44 00 00 4a 	movi $r0,#74
   d2f46:	49 fd 6c b9 	jal 808b8 <SYS_3WireRead>
   d2f4a:	96 04       	xlsb33 $r0,$r0
   d2f4c:	c0 fb       	beqz38 $r0,d2f42 <DRV_CLK_Calibration+0xae>
   d2f4e:	44 00 00 41 	movi $r0,#65
   d2f52:	49 fd 6c b3 	jal 808b8 <SYS_3WireRead>
   d2f56:	44 20 f0 00 	movi $r2,#61440
   d2f5a:	40 10 08 02 	and $r1,$r0,$r2
   d2f5e:	9d b1       	addi333 $r6,$r6,#1
   d2f60:	44 00 00 41 	movi $r0,#65
   d2f64:	49 fd 6c fc 	jal 8095c <SYS_3WireWrite>
   d2f68:	97 b0       	zeb33 $r6,$r6
   d2f6a:	84 01       	movi55 $r0,#1
   d2f6c:	49 fd 6c 8e 	jal 80888 <OS_delay_us>
   d2f70:	5a 68 14 d0 	bnec $r6,#20,d2f10 <DRV_CLK_Calibration+0x7c>
   d2f74:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2f76 <DRV_CLK_TMR0Sel>:
   d2f76:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2f78:	c8 11       	bnez38 $r0,d2f9a <DRV_CLK_TMR0Sel+0x24>
   d2f7a:	84 21       	movi55 $r1,#1
   d2f7c:	84 03       	movi55 $r0,#3
   d2f7e:	49 ff ff 39 	jal d2df0 <DRV_CLK_En>
   d2f82:	84 03       	movi55 $r0,#3
   d2f84:	49 ff ff 88 	jal d2e94 <DRV_CLK_Calibration>
   d2f88:	84 01       	movi55 $r0,#1
   d2f8a:	49 ff ff 09 	jal d2d9c <DRV_CLK_32KSel>
   d2f8e:	44 00 00 39 	movi $r0,#57
   d2f92:	fa 20       	movpi45 $r1,#0x10
   d2f94:	49 fd 6d 31 	jal 809f6 <SYS_3WireBitWrite>
   d2f98:	d5 06       	j8 d2fa4 <DRV_CLK_TMR0Sel+0x2e>
   d2f9a:	44 00 00 39 	movi $r0,#57
   d2f9e:	fa 20       	movpi45 $r1,#0x10
   d2fa0:	49 fd 6d 38 	jal 80a10 <SYS_3WireBitErase>
   d2fa4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2fa6 <SERIALFLASH_SetPatternAndStart>:
   d2fa6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2fa8:	46 0d b0 06 	sethi $r0,#0xdb006
   d2fac:	58 00 01 ba 	ori $r0,$r0,#0x1ba
   d2fb0:	46 f0 02 02 	sethi $r15,#0x202
   d2fb4:	14 07 80 10 	swi $r0,[$r15+#0x40]
   d2fb8:	84 01       	movi55 $r0,#1
   d2fba:	46 f0 02 02 	sethi $r15,#0x202
   d2fbe:	14 07 80 02 	swi $r0,[$r15+#0x8]
   d2fc2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d2fc4 <_MXIC_WB_Flash_WaitForReady>:
   d2fc4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d2fc6:	46 00 01 00 	sethi $r0,#0x100
   d2fca:	58 00 00 b0 	ori $r0,$r0,#0xb0
   d2fce:	46 10 01 00 	sethi $r1,#0x100
   d2fd2:	58 10 80 bc 	ori $r1,$r1,#0xbc
   d2fd6:	46 30 02 02 	sethi $r3,#0x202
   d2fda:	58 31 80 00 	ori $r3,$r3,#0x0
   d2fde:	64 42 00 02 	mfsr $r4,$PSW
   d2fe2:	64 02 00 43 	setgie.d
   d2fe6:	64 00 00 08 	dsb
   d2fea:	b4 40       	lwi450 $r2,[$r0]
   d2fec:	9d 51       	addi333 $r5,$r2,#1
   d2fee:	b6 a0       	swi450 $r5,[$r0]
   d2ff0:	ca 02       	bnez38 $r2,d2ff4 <_MXIC_WB_Flash_WaitForReady+0x30>
   d2ff2:	b6 81       	swi450 $r4,[$r1]
   d2ff4:	a0 9a       	lwi333 $r2,[$r3+#0x8]
   d2ff6:	b4 80       	lwi450 $r4,[$r0]
   d2ff8:	96 94       	xlsb33 $r2,$r2
   d2ffa:	9f 21       	subi333 $r4,$r4,#1
   d2ffc:	b6 80       	swi450 $r4,[$r0]
   d2ffe:	b4 80       	lwi450 $r4,[$r0]
   d3000:	cc 08       	bnez38 $r4,d3010 <_MXIC_WB_Flash_WaitForReady+0x4c>
   d3002:	b4 81       	lwi450 $r4,[$r1]
   d3004:	97 24       	xlsb33 $r4,$r4
   d3006:	c4 05       	beqz38 $r4,d3010 <_MXIC_WB_Flash_WaitForReady+0x4c>
   d3008:	64 12 00 43 	setgie.e
   d300c:	64 00 00 08 	dsb
   d3010:	ca e7       	bnez38 $r2,d2fde <_MXIC_WB_Flash_WaitForReady+0x1a>
   d3012:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d3014 <DRV_Flash_ByteProgram>:
   d3014:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   d3016:	83 81       	mov55 $fp,$r1
   d3018:	46 18 00 00 	sethi $r1,#0x80000
   d301c:	96 91       	zeh33 $r2,$r2
   d301e:	f2 81       	swi37.sp $r2,[+#0x4]
   d3020:	40 a0 04 04 	or $r10,$r0,$r1
   d3024:	84 e0       	movi55 $r7,#0
   d3026:	49 ff ff cf 	jal d2fc4 <_MXIC_WB_Flash_WaitForReady>
   d302a:	46 60 01 00 	sethi $r6,#0x100
   d302e:	58 63 00 b0 	ori $r6,$r6,#0xb0
   d3032:	46 90 01 00 	sethi $r9,#0x100
   d3036:	58 94 80 bc 	ori $r9,$r9,#0xbc
   d303a:	46 80 02 02 	sethi $r8,#0x202
   d303e:	58 84 00 00 	ori $r8,$r8,#0x0
   d3042:	d5 65       	j8 d310c <DRV_Flash_ByteProgram+0xf8>
   d3044:	64 12 00 02 	mfsr $r1,$PSW
   d3048:	64 02 00 43 	setgie.d
   d304c:	64 00 00 08 	dsb
   d3050:	b4 06       	lwi450 $r0,[$r6]
   d3052:	9c 81       	addi333 $r2,$r0,#1
   d3054:	b6 46       	swi450 $r2,[$r6]
   d3056:	c8 02       	bnez38 $r0,d305a <DRV_Flash_ByteProgram+0x46>
   d3058:	b6 29       	swi450 $r1,[$r9]
   d305a:	84 0c       	movi55 $r0,#12
   d305c:	b6 08       	swi450 $r0,[$r8]
   d305e:	14 a4 00 01 	swi $r10,[$r8+#0x4]
   d3062:	38 0e 1c 00 	lb $r0,[$fp+($r7<<#0x0)]
   d3066:	14 04 00 03 	swi $r0,[$r8+#0xc]
   d306a:	49 ff ff 9e 	jal d2fa6 <SERIALFLASH_SetPatternAndStart>
   d306e:	b4 06       	lwi450 $r0,[$r6]
   d3070:	9e 01       	subi333 $r0,$r0,#1
   d3072:	b6 06       	swi450 $r0,[$r6]
   d3074:	b4 06       	lwi450 $r0,[$r6]
   d3076:	c8 08       	bnez38 $r0,d3086 <DRV_Flash_ByteProgram+0x72>
   d3078:	b4 09       	lwi450 $r0,[$r9]
   d307a:	96 04       	xlsb33 $r0,$r0
   d307c:	c0 05       	beqz38 $r0,d3086 <DRV_Flash_ByteProgram+0x72>
   d307e:	64 12 00 43 	setgie.e
   d3082:	64 00 00 08 	dsb
   d3086:	49 ff ff 9f 	jal d2fc4 <_MXIC_WB_Flash_WaitForReady>
   d308a:	64 12 00 02 	mfsr $r1,$PSW
   d308e:	64 02 00 43 	setgie.d
   d3092:	64 00 00 08 	dsb
   d3096:	b4 06       	lwi450 $r0,[$r6]
   d3098:	9c 81       	addi333 $r2,$r0,#1
   d309a:	b6 46       	swi450 $r2,[$r6]
   d309c:	c8 02       	bnez38 $r0,d30a0 <DRV_Flash_ByteProgram+0x8c>
   d309e:	b6 29       	swi450 $r1,[$r9]
   d30a0:	84 20       	movi55 $r1,#0
   d30a2:	b6 28       	swi450 $r1,[$r8]
   d30a4:	14 a4 00 01 	swi $r10,[$r8+#0x4]
   d30a8:	49 ff ff 7f 	jal d2fa6 <SERIALFLASH_SetPatternAndStart>
   d30ac:	b4 06       	lwi450 $r0,[$r6]
   d30ae:	9e 01       	subi333 $r0,$r0,#1
   d30b0:	b6 06       	swi450 $r0,[$r6]
   d30b2:	b4 06       	lwi450 $r0,[$r6]
   d30b4:	c8 08       	bnez38 $r0,d30c4 <DRV_Flash_ByteProgram+0xb0>
   d30b6:	b4 09       	lwi450 $r0,[$r9]
   d30b8:	96 04       	xlsb33 $r0,$r0
   d30ba:	c0 05       	beqz38 $r0,d30c4 <DRV_Flash_ByteProgram+0xb0>
   d30bc:	64 12 00 43 	setgie.e
   d30c0:	64 00 00 08 	dsb
   d30c4:	49 ff ff 80 	jal d2fc4 <_MXIC_WB_Flash_WaitForReady>
   d30c8:	64 12 00 02 	mfsr $r1,$PSW
   d30cc:	64 02 00 43 	setgie.d
   d30d0:	64 00 00 08 	dsb
   d30d4:	b4 06       	lwi450 $r0,[$r6]
   d30d6:	9c 81       	addi333 $r2,$r0,#1
   d30d8:	b6 46       	swi450 $r2,[$r6]
   d30da:	c8 02       	bnez38 $r0,d30de <DRV_Flash_ByteProgram+0xca>
   d30dc:	b6 29       	swi450 $r1,[$r9]
   d30de:	04 04 00 03 	lwi $r0,[$r8+#0xc]
   d30e2:	b4 26       	lwi450 $r1,[$r6]
   d30e4:	9e 49       	subi333 $r1,$r1,#1
   d30e6:	b6 26       	swi450 $r1,[$r6]
   d30e8:	b4 26       	lwi450 $r1,[$r6]
   d30ea:	c9 08       	bnez38 $r1,d30fa <DRV_Flash_ByteProgram+0xe6>
   d30ec:	b4 29       	lwi450 $r1,[$r9]
   d30ee:	96 4c       	xlsb33 $r1,$r1
   d30f0:	c1 05       	beqz38 $r1,d30fa <DRV_Flash_ByteProgram+0xe6>
   d30f2:	64 12 00 43 	setgie.e
   d30f6:	64 00 00 08 	dsb
   d30fa:	38 1e 1c 00 	lb $r1,[$fp+($r7<<#0x0)]
   d30fe:	96 00       	zeb33 $r0,$r0
   d3100:	9d f9       	addi333 $r7,$r7,#1
   d3102:	4c 10 00 04 	beq $r1,$r0,d310a <DRV_Flash_ByteProgram+0xf6>
   d3106:	84 04       	movi55 $r0,#4
   d3108:	d5 07       	j8 d3116 <DRV_Flash_ByteProgram+0x102>
   d310a:	8d 41       	addi45 $r10,#1
   d310c:	f1 01       	lwi37.sp $r1,[+#0x4]
   d310e:	96 39       	zeh33 $r0,$r7
   d3110:	e2 01       	slt45 $r0,$r1
   d3112:	e9 99       	bnezs8 d3044 <DRV_Flash_ByteProgram+0x30>
   d3114:	84 00       	movi55 $r0,#0
   d3116:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000d3118 <DRV_Flash_PageProgram>:
   d3118:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d311a:	81 00       	mov55 $r8,$r0
   d311c:	80 c1       	mov55 $r6,$r1
   d311e:	80 e2       	mov55 $r7,$r2
   d3120:	49 ff ff 52 	jal d2fc4 <_MXIC_WB_Flash_WaitForReady>
   d3124:	64 12 00 02 	mfsr $r1,$PSW
   d3128:	64 02 00 43 	setgie.d
   d312c:	64 00 00 08 	dsb
   d3130:	46 30 01 00 	sethi $r3,#0x100
   d3134:	58 31 80 b0 	ori $r3,$r3,#0xb0
   d3138:	b4 43       	lwi450 $r2,[$r3]
   d313a:	9c 11       	addi333 $r0,$r2,#1
   d313c:	b6 03       	swi450 $r0,[$r3]
   d313e:	ca 06       	bnez38 $r2,d314a <DRV_Flash_PageProgram+0x32>
   d3140:	46 00 01 00 	sethi $r0,#0x100
   d3144:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d3148:	b6 20       	swi450 $r1,[$r0]
   d314a:	46 30 02 02 	sethi $r3,#0x202
   d314e:	58 31 80 00 	ori $r3,$r3,#0x0
   d3152:	84 0d       	movi55 $r0,#13
   d3154:	b6 03       	swi450 $r0,[$r3]
   d3156:	14 81 80 01 	swi $r8,[$r3+#0x4]
   d315a:	a9 9e       	swi333 $r6,[$r3+#0x18]
   d315c:	49 ff ff 25 	jal d2fa6 <SERIALFLASH_SetPatternAndStart>
   d3160:	46 00 01 00 	sethi $r0,#0x100
   d3164:	58 00 00 b0 	ori $r0,$r0,#0xb0
   d3168:	b4 20       	lwi450 $r1,[$r0]
   d316a:	9e 49       	subi333 $r1,$r1,#1
   d316c:	b6 20       	swi450 $r1,[$r0]
   d316e:	b4 00       	lwi450 $r0,[$r0]
   d3170:	c8 0c       	bnez38 $r0,d3188 <DRV_Flash_PageProgram+0x70>
   d3172:	46 00 01 00 	sethi $r0,#0x100
   d3176:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d317a:	b4 00       	lwi450 $r0,[$r0]
   d317c:	96 04       	xlsb33 $r0,$r0
   d317e:	c0 05       	beqz38 $r0,d3188 <DRV_Flash_PageProgram+0x70>
   d3180:	64 12 00 43 	setgie.e
   d3184:	64 00 00 08 	dsb
   d3188:	49 ff ff 1e 	jal d2fc4 <_MXIC_WB_Flash_WaitForReady>
   d318c:	64 22 00 02 	mfsr $r2,$PSW
   d3190:	64 02 00 43 	setgie.d
   d3194:	64 00 00 08 	dsb
   d3198:	46 10 01 00 	sethi $r1,#0x100
   d319c:	58 10 80 b0 	ori $r1,$r1,#0xb0
   d31a0:	b4 01       	lwi450 $r0,[$r1]
   d31a2:	9c c1       	addi333 $r3,$r0,#1
   d31a4:	b6 61       	swi450 $r3,[$r1]
   d31a6:	c8 06       	bnez38 $r0,d31b2 <DRV_Flash_PageProgram+0x9a>
   d31a8:	46 00 01 00 	sethi $r0,#0x100
   d31ac:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d31b0:	b6 40       	swi450 $r2,[$r0]
   d31b2:	46 00 02 02 	sethi $r0,#0x202
   d31b6:	58 00 00 00 	ori $r0,$r0,#0x0
   d31ba:	04 60 00 0a 	lwi $r6,[$r0+#0x28]
   d31be:	46 00 01 00 	sethi $r0,#0x100
   d31c2:	58 00 00 b0 	ori $r0,$r0,#0xb0
   d31c6:	b4 20       	lwi450 $r1,[$r0]
   d31c8:	97 b0       	zeb33 $r6,$r6
   d31ca:	9e 49       	subi333 $r1,$r1,#1
   d31cc:	b6 20       	swi450 $r1,[$r0]
   d31ce:	b4 00       	lwi450 $r0,[$r0]
   d31d0:	c8 0c       	bnez38 $r0,d31e8 <DRV_Flash_PageProgram+0xd0>
   d31d2:	46 00 01 00 	sethi $r0,#0x100
   d31d6:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d31da:	b4 00       	lwi450 $r0,[$r0]
   d31dc:	96 04       	xlsb33 $r0,$r0
   d31de:	c0 05       	beqz38 $r0,d31e8 <DRV_Flash_PageProgram+0xd0>
   d31e0:	64 12 00 43 	setgie.e
   d31e4:	64 00 00 08 	dsb
   d31e8:	c7 06       	beqz38 $r7,d31f4 <DRV_Flash_PageProgram+0xdc>
   d31ea:	a6 38       	lbi333 $r0,[$r7+#0x0]
   d31ec:	4c 03 00 04 	beq $r0,$r6,d31f4 <DRV_Flash_PageProgram+0xdc>
   d31f0:	84 02       	movi55 $r0,#2
   d31f2:	d5 68       	j8 d32c2 <DRV_Flash_PageProgram+0x1aa>
   d31f4:	64 22 00 02 	mfsr $r2,$PSW
   d31f8:	64 02 00 43 	setgie.d
   d31fc:	64 00 00 08 	dsb
   d3200:	46 10 01 00 	sethi $r1,#0x100
   d3204:	58 10 80 b0 	ori $r1,$r1,#0xb0
   d3208:	b4 01       	lwi450 $r0,[$r1]
   d320a:	9c c1       	addi333 $r3,$r0,#1
   d320c:	b6 61       	swi450 $r3,[$r1]
   d320e:	c8 06       	bnez38 $r0,d321a <DRV_Flash_PageProgram+0x102>
   d3210:	46 00 01 00 	sethi $r0,#0x100
   d3214:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d3218:	b6 40       	swi450 $r2,[$r0]
   d321a:	46 00 02 02 	sethi $r0,#0x202
   d321e:	58 00 00 00 	ori $r0,$r0,#0x0
   d3222:	84 28       	movi55 $r1,#8
   d3224:	b6 20       	swi450 $r1,[$r0]
   d3226:	84 20       	movi55 $r1,#0
   d3228:	14 10 00 0e 	swi $r1,[$r0+#0x38]
   d322c:	49 ff fe bd 	jal d2fa6 <SERIALFLASH_SetPatternAndStart>
   d3230:	46 00 01 00 	sethi $r0,#0x100
   d3234:	58 00 00 b0 	ori $r0,$r0,#0xb0
   d3238:	b4 20       	lwi450 $r1,[$r0]
   d323a:	9e 49       	subi333 $r1,$r1,#1
   d323c:	b6 20       	swi450 $r1,[$r0]
   d323e:	b4 00       	lwi450 $r0,[$r0]
   d3240:	c8 0c       	bnez38 $r0,d3258 <DRV_Flash_PageProgram+0x140>
   d3242:	46 00 01 00 	sethi $r0,#0x100
   d3246:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d324a:	b4 00       	lwi450 $r0,[$r0]
   d324c:	96 04       	xlsb33 $r0,$r0
   d324e:	c0 05       	beqz38 $r0,d3258 <DRV_Flash_PageProgram+0x140>
   d3250:	64 12 00 43 	setgie.e
   d3254:	64 00 00 08 	dsb
   d3258:	49 ff fe b6 	jal d2fc4 <_MXIC_WB_Flash_WaitForReady>
   d325c:	64 22 00 02 	mfsr $r2,$PSW
   d3260:	64 02 00 43 	setgie.d
   d3264:	64 00 00 08 	dsb
   d3268:	46 10 01 00 	sethi $r1,#0x100
   d326c:	58 10 80 b0 	ori $r1,$r1,#0xb0
   d3270:	b4 01       	lwi450 $r0,[$r1]
   d3272:	9c c1       	addi333 $r3,$r0,#1
   d3274:	b6 61       	swi450 $r3,[$r1]
   d3276:	c8 06       	bnez38 $r0,d3282 <DRV_Flash_PageProgram+0x16a>
   d3278:	46 00 01 00 	sethi $r0,#0x100
   d327c:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d3280:	b6 40       	swi450 $r2,[$r0]
   d3282:	46 00 02 02 	sethi $r0,#0x202
   d3286:	58 00 00 00 	ori $r0,$r0,#0x0
   d328a:	04 10 00 0a 	lwi $r1,[$r0+#0x28]
   d328e:	46 00 01 00 	sethi $r0,#0x100
   d3292:	58 00 00 b0 	ori $r0,$r0,#0xb0
   d3296:	b4 40       	lwi450 $r2,[$r0]
   d3298:	9e 91       	subi333 $r2,$r2,#1
   d329a:	b6 40       	swi450 $r2,[$r0]
   d329c:	b4 00       	lwi450 $r0,[$r0]
   d329e:	c8 0c       	bnez38 $r0,d32b6 <DRV_Flash_PageProgram+0x19e>
   d32a0:	46 00 01 00 	sethi $r0,#0x100
   d32a4:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d32a8:	b4 00       	lwi450 $r0,[$r0]
   d32aa:	96 04       	xlsb33 $r0,$r0
   d32ac:	c0 05       	beqz38 $r0,d32b6 <DRV_Flash_PageProgram+0x19e>
   d32ae:	64 12 00 43 	setgie.e
   d32b2:	64 00 00 08 	dsb
   d32b6:	96 08       	zeb33 $r0,$r1
   d32b8:	4c 60 40 04 	bne $r6,$r0,d32c0 <DRV_Flash_PageProgram+0x1a8>
   d32bc:	84 00       	movi55 $r0,#0
   d32be:	d5 02       	j8 d32c2 <DRV_Flash_PageProgram+0x1aa>
   d32c0:	84 03       	movi55 $r0,#3
   d32c2:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d32c4 <Drv_Flash_BlockSectorErase>:
   d32c4:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d32c6:	80 c0       	mov55 $r6,$r0
   d32c8:	97 c8       	zeb33 $r7,$r1
   d32ca:	49 ff fe 7d 	jal d2fc4 <_MXIC_WB_Flash_WaitForReady>
   d32ce:	64 12 00 02 	mfsr $r1,$PSW
   d32d2:	64 02 00 43 	setgie.d
   d32d6:	64 00 00 08 	dsb
   d32da:	46 30 01 00 	sethi $r3,#0x100
   d32de:	58 31 80 b0 	ori $r3,$r3,#0xb0
   d32e2:	b4 43       	lwi450 $r2,[$r3]
   d32e4:	9c 11       	addi333 $r0,$r2,#1
   d32e6:	b6 03       	swi450 $r0,[$r3]
   d32e8:	ca 06       	bnez38 $r2,d32f4 <Drv_Flash_BlockSectorErase+0x30>
   d32ea:	46 00 01 00 	sethi $r0,#0x100
   d32ee:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d32f2:	b6 20       	swi450 $r1,[$r0]
   d32f4:	46 20 02 02 	sethi $r2,#0x202
   d32f8:	58 21 00 00 	ori $r2,$r2,#0x0
   d32fc:	b6 e2       	swi450 $r7,[$r2]
   d32fe:	a9 91       	swi333 $r6,[$r2+#0x4]
   d3300:	49 ff fe 53 	jal d2fa6 <SERIALFLASH_SetPatternAndStart>
   d3304:	46 00 01 00 	sethi $r0,#0x100
   d3308:	58 00 00 b0 	ori $r0,$r0,#0xb0
   d330c:	b4 20       	lwi450 $r1,[$r0]
   d330e:	9e 49       	subi333 $r1,$r1,#1
   d3310:	b6 20       	swi450 $r1,[$r0]
   d3312:	b4 00       	lwi450 $r0,[$r0]
   d3314:	c8 0c       	bnez38 $r0,d332c <Drv_Flash_BlockSectorErase+0x68>
   d3316:	46 00 01 00 	sethi $r0,#0x100
   d331a:	58 00 00 bc 	ori $r0,$r0,#0xbc
   d331e:	b4 00       	lwi450 $r0,[$r0]
   d3320:	96 04       	xlsb33 $r0,$r0
   d3322:	c0 05       	beqz38 $r0,d332c <Drv_Flash_BlockSectorErase+0x68>
   d3324:	64 12 00 43 	setgie.e
   d3328:	64 00 00 08 	dsb
   d332c:	49 fd 6a 87 	jal 8083a <DRV_MCU_ClearCache>
   d3330:	49 ff fe 4a 	jal d2fc4 <_MXIC_WB_Flash_WaitForReady>
   d3334:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d3336 <DRV_Flash_Block_64KB_Erase>:
   d3336:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d3338:	84 26       	movi55 $r1,#6
   d333a:	49 ff ff c5 	jal d32c4 <Drv_Flash_BlockSectorErase>
   d333e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d3340 <DRV_Flash_Block_32KB_Erase>:
   d3340:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d3342:	84 25       	movi55 $r1,#5
   d3344:	49 ff ff c0 	jal d32c4 <Drv_Flash_BlockSectorErase>
   d3348:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d334a <DRV_Flash_SectorErase>:
   d334a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d334c:	84 24       	movi55 $r1,#4
   d334e:	49 ff ff bb 	jal d32c4 <Drv_Flash_BlockSectorErase>
   d3352:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d3354 <DRV_Gpio_IntrHandler>:
   d3354:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d3356:	46 00 02 05 	sethi $r0,#0x205
   d335a:	58 00 00 00 	ori $r0,$r0,#0x0
   d335e:	9c 04       	addi333 $r0,$r0,#4
   d3360:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   d3362:	c1 14       	beqz38 $r1,d338a <DRV_Gpio_IntrHandler+0x36>
   d3364:	a1 87       	lwi333 $r6,[$r0+#0x1c]
   d3366:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   d3368:	84 e0       	movi55 $r7,#0
   d336a:	fe 77       	or33 $r1,$r6
   d336c:	a8 47       	swi333 $r1,[$r0+#0x1c]
   d336e:	3e 8f cf ec 	addi.gp $r8,#-12308
   d3372:	d5 0b       	j8 d3388 <DRV_Gpio_IntrHandler+0x34>
   d3374:	96 34       	xlsb33 $r0,$r6
   d3376:	c0 06       	beqz38 $r0,d3382 <DRV_Gpio_IntrHandler+0x2e>
   d3378:	38 14 1e 02 	lw $r1,[$r8+($r7<<#0x2)]
   d337c:	c1 03       	beqz38 $r1,d3382 <DRV_Gpio_IntrHandler+0x2e>
   d337e:	80 07       	mov55 $r0,$r7
   d3380:	dd 21       	jral5 $r1
   d3382:	9d f9       	addi333 $r7,$r7,#1
   d3384:	97 f8       	zeb33 $r7,$r7
   d3386:	92 c1       	srli45 $r6,#1
   d3388:	ce f6       	bnez38 $r6,d3374 <DRV_Gpio_IntrHandler+0x20>
   d338a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d338c <DRV_Gpio_DirSet>:
   d338c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d338e:	96 48       	zeb33 $r1,$r1
   d3390:	46 20 02 04 	sethi $r2,#0x204
   d3394:	58 21 00 00 	ori $r2,$r2,#0x0
   d3398:	50 21 00 28 	addi $r2,$r2,#40
   d339c:	c1 04       	beqz38 $r1,d33a4 <DRV_Gpio_DirSet+0x18>
   d339e:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   d33a0:	fe 0f       	or33 $r0,$r1
   d33a2:	d5 04       	j8 d33aa <DRV_Gpio_DirSet+0x1e>
   d33a4:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   d33a6:	fe 03       	not33 $r0,$r0
   d33a8:	fe 0e       	and33 $r0,$r1
   d33aa:	a8 17       	swi333 $r0,[$r2+#0x1c]
   d33ac:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d33ae <DRV_Gpio_ValSet>:
   d33ae:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d33b0:	96 48       	zeb33 $r1,$r1
   d33b2:	46 20 02 04 	sethi $r2,#0x204
   d33b6:	58 21 00 00 	ori $r2,$r2,#0x0
   d33ba:	50 21 00 24 	addi $r2,$r2,#36
   d33be:	c1 04       	beqz38 $r1,d33c6 <DRV_Gpio_ValSet+0x18>
   d33c0:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   d33c2:	fe 0f       	or33 $r0,$r1
   d33c4:	d5 04       	j8 d33cc <DRV_Gpio_ValSet+0x1e>
   d33c6:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   d33c8:	fe 03       	not33 $r0,$r0
   d33ca:	fe 0e       	and33 $r0,$r1
   d33cc:	a8 17       	swi333 $r0,[$r2+#0x1c]
   d33ce:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d33d0 <DRV_Gpio_PinValGet>:
   d33d0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d33d2:	46 f0 02 04 	sethi $r15,#0x204
   d33d6:	04 17 80 10 	lwi $r1,[$r15+#0x40]
   d33da:	84 41       	movi55 $r2,#1
   d33dc:	40 01 00 0c 	sll $r0,$r2,$r0
   d33e0:	fe 0e       	and33 $r0,$r1
   d33e2:	84 20       	movi55 $r1,#0
   d33e4:	40 00 80 06 	slt $r0,$r1,$r0
   d33e8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d33ea <DRV_Gpio_PullSet>:
   d33ea:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d33ec:	81 01       	mov55 $r8,$r1
   d33ee:	97 81       	zeh33 $r6,$r0
   d33f0:	40 70 40 09 	srli $r7,$r0,#16
   d33f4:	c9 09       	bnez38 $r1,d3406 <DRV_Gpio_PullSet+0x1c>
   d33f6:	44 00 00 45 	movi $r0,#69
   d33fa:	80 26       	mov55 $r1,$r6
   d33fc:	49 fd 6a fd 	jal 809f6 <SYS_3WireBitWrite>
   d3400:	44 00 00 46 	movi $r0,#70
   d3404:	d5 15       	j8 d342e <DRV_Gpio_PullSet+0x44>
   d3406:	44 00 00 45 	movi $r0,#69
   d340a:	80 26       	mov55 $r1,$r6
   d340c:	97 f9       	zeh33 $r7,$r7
   d340e:	49 fd 6b 01 	jal 80a10 <SYS_3WireBitErase>
   d3412:	44 00 00 46 	movi $r0,#70
   d3416:	80 27       	mov55 $r1,$r7
   d3418:	49 fd 6a fc 	jal 80a10 <SYS_3WireBitErase>
   d341c:	5a 88 02 0d 	bnec $r8,#2,d3436 <DRV_Gpio_PullSet+0x4c>
   d3420:	44 00 00 33 	movi $r0,#51
   d3424:	80 26       	mov55 $r1,$r6
   d3426:	49 fd 6a e8 	jal 809f6 <SYS_3WireBitWrite>
   d342a:	44 00 00 34 	movi $r0,#52
   d342e:	80 27       	mov55 $r1,$r7
   d3430:	49 fd 6a e3 	jal 809f6 <SYS_3WireBitWrite>
   d3434:	d5 0b       	j8 d344a <DRV_Gpio_PullSet+0x60>
   d3436:	44 00 00 33 	movi $r0,#51
   d343a:	80 26       	mov55 $r1,$r6
   d343c:	49 fd 6a ea 	jal 80a10 <SYS_3WireBitErase>
   d3440:	44 00 00 34 	movi $r0,#52
   d3444:	80 27       	mov55 $r1,$r7
   d3446:	49 fd 6a e5 	jal 80a10 <SYS_3WireBitErase>
   d344a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d344c <DRV_Gpio_IntEn>:
   d344c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d344e:	96 00       	zeb33 $r0,$r0
   d3450:	e6 1e       	slti45 $r0,#30
   d3452:	e8 15       	beqzs8 d347c <DRV_Gpio_IntEn+0x30>
   d3454:	46 10 02 05 	sethi $r1,#0x205
   d3458:	58 10 80 00 	ori $r1,$r1,#0x0
   d345c:	04 20 80 08 	lwi $r2,[$r1+#0x20]
   d3460:	84 61       	movi55 $r3,#1
   d3462:	40 01 80 0c 	sll $r0,$r3,$r0
   d3466:	fe 87       	or33 $r2,$r0
   d3468:	14 20 80 08 	swi $r2,[$r1+#0x20]
   d346c:	a0 8e       	lwi333 $r2,[$r1+#0x18]
   d346e:	fe 17       	or33 $r0,$r2
   d3470:	a8 0e       	swi333 $r0,[$r1+#0x18]
   d3472:	fa 03       	movpi45 $r0,#0x13
   d3474:	3e 1c f3 54 	addi.gp $r1,#-199852
   d3478:	49 fd 67 86 	jal 80384 <SysIntrHandlerRegister>
   d347c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d347e <DRV_Gpio_IntReg>:
   d347e:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d3480:	97 80       	zeb33 $r6,$r0
   d3482:	81 41       	mov55 $r10,$r1
   d3484:	81 22       	mov55 $r9,$r2
   d3486:	e6 de       	slti45 $r6,#30
   d3488:	e8 2d       	beqzs8 d34e2 <DRV_Gpio_IntReg+0x64>
   d348a:	40 83 08 09 	srli $r8,$r6,#2
   d348e:	50 84 00 4b 	addi $r8,$r8,#75
   d3492:	80 08       	mov55 $r0,$r8
   d3494:	49 fd 6a 12 	jal 808b8 <SYS_3WireRead>
   d3498:	94 f2       	slli333 $r3,$r6,#2
   d349a:	54 31 80 0c 	andi $r3,$r3,#0xc
   d349e:	84 2f       	movi55 $r1,#15
   d34a0:	40 10 8c 0c 	sll $r1,$r1,$r3
   d34a4:	fe 4b       	not33 $r1,$r1
   d34a6:	fe 0e       	and33 $r0,$r1
   d34a8:	58 15 00 08 	ori $r1,$r10,#0x8
   d34ac:	40 30 8c 0c 	sll $r3,$r1,$r3
   d34b0:	40 11 80 04 	or $r1,$r3,$r0
   d34b4:	96 49       	zeh33 $r1,$r1
   d34b6:	80 08       	mov55 $r0,$r8
   d34b8:	84 e1       	movi55 $r7,#1
   d34ba:	49 fd 6a 51 	jal 8095c <SYS_3WireWrite>
   d34be:	40 73 98 0c 	sll $r7,$r7,$r6
   d34c2:	40 03 c0 09 	srli $r0,$r7,#16
   d34c6:	c0 0b       	beqz38 $r0,d34dc <DRV_Gpio_IntReg+0x5e>
   d34c8:	40 13 c0 09 	srli $r1,$r7,#16
   d34cc:	fa 1d       	movpi45 $r0,#0x2d
   d34ce:	49 fd 6a 94 	jal 809f6 <SYS_3WireBitWrite>
   d34d2:	3e 0f cf ec 	addi.gp $r0,#-12308
   d34d6:	38 90 1a 0a 	sw $r9,[$r0+($r6<<#0x2)]
   d34da:	d5 04       	j8 d34e2 <DRV_Gpio_IntReg+0x64>
   d34dc:	96 79       	zeh33 $r1,$r7
   d34de:	fa 1c       	movpi45 $r0,#0x2c
   d34e0:	d5 f7       	j8 d34ce <DRV_Gpio_IntReg+0x50>
   d34e2:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d34e4 <DRV_OdGpio_OeSet>:
   d34e4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d34e6:	96 48       	zeb33 $r1,$r1
   d34e8:	96 00       	zeb33 $r0,$r0
   d34ea:	46 20 02 04 	sethi $r2,#0x204
   d34ee:	58 21 00 00 	ori $r2,$r2,#0x0
   d34f2:	50 21 00 30 	addi $r2,$r2,#48
   d34f6:	c1 04       	beqz38 $r1,d34fe <DRV_OdGpio_OeSet+0x1a>
   d34f8:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   d34fa:	fe 0f       	or33 $r0,$r1
   d34fc:	d5 04       	j8 d3504 <DRV_OdGpio_OeSet+0x20>
   d34fe:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   d3500:	fe 03       	not33 $r0,$r0
   d3502:	fe 0e       	and33 $r0,$r1
   d3504:	a8 17       	swi333 $r0,[$r2+#0x1c]
   d3506:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d3508 <DRV_OdGpio_ValSet>:
   d3508:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d350a:	96 48       	zeb33 $r1,$r1
   d350c:	96 00       	zeb33 $r0,$r0
   d350e:	46 20 02 04 	sethi $r2,#0x204
   d3512:	58 21 00 00 	ori $r2,$r2,#0x0
   d3516:	50 21 00 2c 	addi $r2,$r2,#44
   d351a:	c1 04       	beqz38 $r1,d3522 <DRV_OdGpio_ValSet+0x1a>
   d351c:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   d351e:	fe 0f       	or33 $r0,$r1
   d3520:	d5 04       	j8 d3528 <DRV_OdGpio_ValSet+0x20>
   d3522:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   d3524:	fe 03       	not33 $r0,$r0
   d3526:	fe 0e       	and33 $r0,$r1
   d3528:	a8 17       	swi333 $r0,[$r2+#0x1c]
   d352a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d352c <DRV_OdGpio_IeSet>:
   d352c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d352e:	96 00       	zeb33 $r0,$r0
   d3530:	96 88       	zeb33 $r2,$r1
   d3532:	94 43       	slli333 $r1,$r0,#3
   d3534:	c2 06       	beqz38 $r2,d3540 <DRV_OdGpio_IeSet+0x14>
   d3536:	44 00 00 40 	movi $r0,#64
   d353a:	49 fd 6a 6b 	jal 80a10 <SYS_3WireBitErase>
   d353e:	d5 05       	j8 d3548 <DRV_OdGpio_IeSet+0x1c>
   d3540:	44 00 00 40 	movi $r0,#64
   d3544:	49 fd 6a 59 	jal 809f6 <SYS_3WireBitWrite>
   d3548:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d354a <set_aio>:
   d354a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d354c:	94 06       	slli333 $r0,$r0,#6
   d354e:	92 06       	srli45 $r0,#6
   d3550:	96 48       	zeb33 $r1,$r1
   d3552:	97 c1       	zeh33 $r7,$r0
   d3554:	40 60 40 09 	srli $r6,$r0,#16
   d3558:	c1 13       	beqz38 $r1,d357e <set_aio+0x34>
   d355a:	44 00 00 37 	movi $r0,#55
   d355e:	49 fd 69 ad 	jal 808b8 <SYS_3WireRead>
   d3562:	40 10 1c 04 	or $r1,$r0,$r7
   d3566:	96 49       	zeh33 $r1,$r1
   d3568:	44 00 00 37 	movi $r0,#55
   d356c:	49 fd 69 f8 	jal 8095c <SYS_3WireWrite>
   d3570:	44 00 00 38 	movi $r0,#56
   d3574:	49 fd 69 a2 	jal 808b8 <SYS_3WireRead>
   d3578:	40 10 18 04 	or $r1,$r0,$r6
   d357c:	d5 14       	j8 d35a4 <set_aio+0x5a>
   d357e:	44 00 00 37 	movi $r0,#55
   d3582:	49 fd 69 9b 	jal 808b8 <SYS_3WireRead>
   d3586:	ff fb       	not33 $r7,$r7
   d3588:	40 10 1c 02 	and $r1,$r0,$r7
   d358c:	96 49       	zeh33 $r1,$r1
   d358e:	44 00 00 37 	movi $r0,#55
   d3592:	49 fd 69 e5 	jal 8095c <SYS_3WireWrite>
   d3596:	44 00 00 38 	movi $r0,#56
   d359a:	49 fd 69 8f 	jal 808b8 <SYS_3WireRead>
   d359e:	ff b3       	not33 $r6,$r6
   d35a0:	40 10 18 02 	and $r1,$r0,$r6
   d35a4:	44 00 00 38 	movi $r0,#56
   d35a8:	96 49       	zeh33 $r1,$r1
   d35aa:	49 fd 69 d9 	jal 8095c <SYS_3WireWrite>
   d35ae:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d35b0 <DRV_PinMux_GrpSet>:
   d35b0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d35b2:	80 c1       	mov55 $r6,$r1
   d35b4:	3e 1d 2f 94 	addi.gp $r1,#-184428
   d35b8:	38 70 9a 02 	lw $r7,[$r1+($r6<<#0x2)]
   d35bc:	84 20       	movi55 $r1,#0
   d35be:	ff c6       	and33 $r7,$r0
   d35c0:	80 07       	mov55 $r0,$r7
   d35c2:	49 ff ff c4 	jal d354a <set_aio>
   d35c6:	94 3a       	slli333 $r0,$r7,#2
   d35c8:	92 1c       	srli45 $r0,#28
   d35ca:	c0 0c       	beqz38 $r0,d35e2 <DRV_PinMux_GrpSet+0x32>
   d35cc:	46 00 02 04 	sethi $r0,#0x204
   d35d0:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   d35d4:	54 23 00 07 	andi $r2,$r6,#0x7
   d35d8:	92 23       	srli45 $r1,#3
   d35da:	94 4b       	slli333 $r1,$r1,#3
   d35dc:	fe 57       	or33 $r1,$r2
   d35de:	14 10 00 00 	swi $r1,[$r0+#0x0]
   d35e2:	94 3e       	slli333 $r0,$r7,#6
   d35e4:	92 1e       	srli45 $r0,#30
   d35e6:	c0 0e       	beqz38 $r0,d3602 <DRV_PinMux_GrpSet+0x52>
   d35e8:	46 00 02 04 	sethi $r0,#0x204
   d35ec:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   d35f0:	54 23 00 07 	andi $r2,$r6,#0x7
   d35f4:	44 3f ff 8f 	movi $r3,#-113
   d35f8:	94 94       	slli333 $r2,$r2,#4
   d35fa:	fe 5e       	and33 $r1,$r3
   d35fc:	fe 57       	or33 $r1,$r2
   d35fe:	14 10 00 00 	swi $r1,[$r0+#0x0]
   d3602:	40 03 a0 08 	slli $r0,$r7,#8
   d3606:	92 1c       	srli45 $r0,#28
   d3608:	c0 0f       	beqz38 $r0,d3626 <DRV_PinMux_GrpSet+0x76>
   d360a:	46 00 02 04 	sethi $r0,#0x204
   d360e:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   d3612:	54 23 00 07 	andi $r2,$r6,#0x7
   d3616:	44 3f f8 ff 	movi $r3,#-1793
   d361a:	40 21 20 08 	slli $r2,$r2,#8
   d361e:	fe 5e       	and33 $r1,$r3
   d3620:	fe 57       	or33 $r1,$r2
   d3622:	14 10 00 00 	swi $r1,[$r0+#0x0]
   d3626:	40 03 b0 08 	slli $r0,$r7,#12
   d362a:	92 1e       	srli45 $r0,#30
   d362c:	c0 0f       	beqz38 $r0,d364a <DRV_PinMux_GrpSet+0x9a>
   d362e:	46 00 02 04 	sethi $r0,#0x204
   d3632:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   d3636:	54 23 00 07 	andi $r2,$r6,#0x7
   d363a:	44 3f 8f ff 	movi $r3,#-28673
   d363e:	40 21 30 08 	slli $r2,$r2,#12
   d3642:	fe 5e       	and33 $r1,$r3
   d3644:	fe 57       	or33 $r1,$r2
   d3646:	14 10 00 00 	swi $r1,[$r0+#0x0]
   d364a:	40 03 b8 08 	slli $r0,$r7,#14
   d364e:	92 1c       	srli45 $r0,#28
   d3650:	c0 0f       	beqz38 $r0,d366e <DRV_PinMux_GrpSet+0xbe>
   d3652:	46 00 02 04 	sethi $r0,#0x204
   d3656:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   d365a:	54 23 00 07 	andi $r2,$r6,#0x7
   d365e:	44 38 ff ff 	movi $r3,#-458753
   d3662:	40 21 40 08 	slli $r2,$r2,#16
   d3666:	fe 5e       	and33 $r1,$r3
   d3668:	fe 57       	or33 $r1,$r2
   d366a:	14 10 00 00 	swi $r1,[$r0+#0x0]
   d366e:	54 03 b0 00 	andi $r0,$r7,#0x3000
   d3672:	c0 11       	beqz38 $r0,d3694 <DRV_PinMux_GrpSet+0xe4>
   d3674:	46 00 02 04 	sethi $r0,#0x204
   d3678:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   d367c:	46 3f f8 ff 	sethi $r3,#0xff8ff
   d3680:	54 23 00 07 	andi $r2,$r6,#0x7
   d3684:	58 31 8f ff 	ori $r3,$r3,#0xfff
   d3688:	40 21 50 08 	slli $r2,$r2,#20
   d368c:	fe 5e       	and33 $r1,$r3
   d368e:	fe 57       	or33 $r1,$r2
   d3690:	14 10 00 00 	swi $r1,[$r0+#0x0]
   d3694:	54 03 80 0f 	andi $r0,$r7,#0xf
   d3698:	c0 11       	beqz38 $r0,d36ba <DRV_PinMux_GrpSet+0x10a>
   d369a:	46 00 02 04 	sethi $r0,#0x204
   d369e:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   d36a2:	46 3f 8f ff 	sethi $r3,#0xf8fff
   d36a6:	54 23 00 07 	andi $r2,$r6,#0x7
   d36aa:	58 31 8f ff 	ori $r3,$r3,#0xfff
   d36ae:	40 21 60 08 	slli $r2,$r2,#24
   d36b2:	fe 5e       	and33 $r1,$r3
   d36b4:	fe 57       	or33 $r1,$r2
   d36b6:	14 10 00 00 	swi $r1,[$r0+#0x0]
   d36ba:	54 73 80 30 	andi $r7,$r7,#0x30
   d36be:	c7 10       	beqz38 $r7,d36de <DRV_PinMux_GrpSet+0x12e>
   d36c0:	46 00 02 04 	sethi $r0,#0x204
   d36c4:	97 97       	fexti33 $r6,#0x2
   d36c6:	40 13 70 08 	slli $r1,$r6,#28
   d36ca:	46 28 ff ff 	sethi $r2,#0x8ffff
   d36ce:	04 60 00 00 	lwi $r6,[$r0+#0x0]
   d36d2:	58 21 0f ff 	ori $r2,$r2,#0xfff
   d36d6:	ff 96       	and33 $r6,$r2
   d36d8:	ff 8f       	or33 $r6,$r1
   d36da:	14 60 00 00 	swi $r6,[$r0+#0x0]
   d36de:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d36e0 <DRV_PinMux_SigSet>:
   d36e0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d36e2:	fd 30       	movd44 $r6,$r0
   d36e4:	84 20       	movi55 $r1,#0
   d36e6:	49 ff ff 32 	jal d354a <set_aio>
   d36ea:	80 06       	mov55 $r0,$r6
   d36ec:	84 20       	movi55 $r1,#0
   d36ee:	49 ff ff 61 	jal d35b0 <DRV_PinMux_GrpSet>
   d36f2:	5a 78 09 1e 	bnec $r7,#9,d372e <DRV_PinMux_SigSet+0x4e>
   d36f6:	84 00       	movi55 $r0,#0
   d36f8:	80 20       	mov55 $r1,$r0
   d36fa:	84 41       	movi55 $r2,#1
   d36fc:	40 41 00 0c 	sll $r4,$r2,$r0
   d3700:	ff 36       	and33 $r4,$r6
   d3702:	96 c0       	zeb33 $r3,$r0
   d3704:	c4 02       	beqz38 $r4,d3708 <DRV_PinMux_SigSet+0x28>
   d3706:	80 23       	mov55 $r1,$r3
   d3708:	9c 01       	addi333 $r0,$r0,#1
   d370a:	5a 08 1e f9 	bnec $r0,#30,d36fc <DRV_PinMux_SigSet+0x1c>
   d370e:	46 f0 02 04 	sethi $r15,#0x204
   d3712:	04 27 80 06 	lwi $r2,[$r15+#0x18]
   d3716:	96 67       	fexti33 $r1,#0x4
   d3718:	44 3f e0 ff 	movi $r3,#-7937
   d371c:	40 10 a0 08 	slli $r1,$r1,#8
   d3720:	fe 9e       	and33 $r2,$r3
   d3722:	fe 57       	or33 $r1,$r2
   d3724:	46 f0 02 04 	sethi $r15,#0x204
   d3728:	14 17 80 06 	swi $r1,[$r15+#0x18]
   d372c:	84 e0       	movi55 $r7,#0
   d372e:	84 60       	movi55 $r3,#0
   d3730:	d5 1d       	j8 d376a <DRV_PinMux_SigSet+0x8a>
   d3732:	94 1a       	slli333 $r0,$r3,#2
   d3734:	46 50 02 04 	sethi $r5,#0x204
   d3738:	58 52 80 00 	ori $r5,$r5,#0x0
   d373c:	96 b0       	zeb33 $r2,$r6
   d373e:	80 87       	mov55 $r4,$r7
   d3740:	84 2f       	movi55 $r1,#15
   d3742:	98 05       	add333 $r0,$r0,$r5
   d3744:	d5 0f       	j8 d3762 <DRV_PinMux_SigSet+0x82>
   d3746:	97 54       	xlsb33 $r5,$r2
   d3748:	c5 0a       	beqz38 $r5,d375c <DRV_PinMux_SigSet+0x7c>
   d374a:	a1 41       	lwi333 $r5,[$r0+#0x4]
   d374c:	40 80 84 05 	nor $r8,$r1,$r1
   d3750:	40 54 14 02 	and $r5,$r8,$r5
   d3754:	a9 41       	swi333 $r5,[$r0+#0x4]
   d3756:	a1 41       	lwi333 $r5,[$r0+#0x4]
   d3758:	ff 67       	or33 $r5,$r4
   d375a:	a9 41       	swi333 $r5,[$r0+#0x4]
   d375c:	92 41       	srli45 $r2,#1
   d375e:	94 4c       	slli333 $r1,$r1,#4
   d3760:	95 24       	slli333 $r4,$r4,#4
   d3762:	ca f2       	bnez38 $r2,d3746 <DRV_PinMux_SigSet+0x66>
   d3764:	9c d9       	addi333 $r3,$r3,#1
   d3766:	96 d8       	zeb33 $r3,$r3
   d3768:	92 c8       	srli45 $r6,#8
   d376a:	ce e4       	bnez38 $r6,d3732 <DRV_PinMux_SigSet+0x52>
   d376c:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d376e <DRV_Pwr_EnterMode>:
   d376e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d3770:	5a 00 02 15 	beqc $r0,#2,d379a <DRV_Pwr_EnterMode+0x2c>
   d3774:	e6 03       	slti45 $r0,#3
   d3776:	e8 04       	beqzs8 d377e <DRV_Pwr_EnterMode+0x10>
   d3778:	5a 08 01 38 	bnec $r0,#1,d37e8 <DRV_Pwr_EnterMode+0x7a>
   d377c:	d5 06       	j8 d3788 <DRV_Pwr_EnterMode+0x1a>
   d377e:	5a 00 03 17 	beqc $r0,#3,d37ac <DRV_Pwr_EnterMode+0x3e>
   d3782:	5a 08 04 33 	bnec $r0,#4,d37e8 <DRV_Pwr_EnterMode+0x7a>
   d3786:	d5 22       	j8 d37ca <DRV_Pwr_EnterMode+0x5c>
   d3788:	46 00 02 05 	sethi $r0,#0x205
   d378c:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   d3790:	58 10 80 40 	ori $r1,$r1,#0x40
   d3794:	14 10 00 00 	swi $r1,[$r0+#0x0]
   d3798:	d5 28       	j8 d37e8 <DRV_Pwr_EnterMode+0x7a>
   d379a:	46 00 02 05 	sethi $r0,#0x205
   d379e:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   d37a2:	58 10 80 10 	ori $r1,$r1,#0x10
   d37a6:	14 10 00 00 	swi $r1,[$r0+#0x0]
   d37aa:	d5 00       	j8 d37aa <DRV_Pwr_EnterMode+0x3c>
   d37ac:	44 00 00 3c 	movi $r0,#60
   d37b0:	44 10 08 00 	movi $r1,#2048
   d37b4:	49 fd 69 21 	jal 809f6 <SYS_3WireBitWrite>
   d37b8:	46 00 02 05 	sethi $r0,#0x205
   d37bc:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   d37c0:	58 10 80 20 	ori $r1,$r1,#0x20
   d37c4:	14 10 00 00 	swi $r1,[$r0+#0x0]
   d37c8:	d5 00       	j8 d37c8 <DRV_Pwr_EnterMode+0x5a>
   d37ca:	44 00 00 3c 	movi $r0,#60
   d37ce:	44 10 10 00 	movi $r1,#4096
   d37d2:	49 fd 69 12 	jal 809f6 <SYS_3WireBitWrite>
   d37d6:	46 00 02 05 	sethi $r0,#0x205
   d37da:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   d37de:	58 10 81 00 	ori $r1,$r1,#0x100
   d37e2:	14 10 00 00 	swi $r1,[$r0+#0x0]
   d37e6:	d5 00       	j8 d37e6 <DRV_Pwr_EnterMode+0x78>
   d37e8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d37ea <DRV_Pwr_BootFrom>:
   d37ea:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d37ec:	46 10 02 05 	sethi $r1,#0x205
   d37f0:	58 10 80 00 	ori $r1,$r1,#0x0
   d37f4:	04 80 80 08 	lwi $r8,[$r1+#0x20]
   d37f8:	80 c0       	mov55 $r6,$r0
   d37fa:	04 90 80 07 	lwi $r9,[$r1+#0x1c]
   d37fe:	04 a0 80 07 	lwi $r10,[$r1+#0x1c]
   d3802:	a1 cf       	lwi333 $r7,[$r1+#0x1c]
   d3804:	b4 01       	lwi450 $r0,[$r1]
   d3806:	93 21       	srli45 $r9,#1
   d3808:	58 00 00 01 	ori $r0,$r0,#0x1
   d380c:	b6 01       	swi450 $r0,[$r1]
   d380e:	92 e2       	srli45 $r7,#2
   d3810:	04 00 80 08 	lwi $r0,[$r1+#0x20]
   d3814:	54 94 80 01 	andi $r9,$r9,#0x1
   d3818:	14 00 80 08 	swi $r0,[$r1+#0x20]
   d381c:	54 a5 00 01 	andi $r10,$r10,#0x1
   d3820:	a0 0f       	lwi333 $r0,[$r1+#0x1c]
   d3822:	97 fc       	xlsb33 $r7,$r7
   d3824:	a8 0f       	swi333 $r0,[$r1+#0x1c]
   d3826:	04 00 80 0f 	lwi $r0,[$r1+#0x3c]
   d382a:	96 04       	xlsb33 $r0,$r0
   d382c:	c0 09       	beqz38 $r0,d383e <DRV_Pwr_BootFrom+0x54>
   d382e:	44 10 08 00 	movi $r1,#2048
   d3832:	44 00 00 3c 	movi $r0,#60
   d3836:	49 fd 68 ed 	jal 80a10 <SYS_3WireBitErase>
   d383a:	84 22       	movi55 $r1,#2
   d383c:	d5 30       	j8 d389c <DRV_Pwr_BootFrom+0xb2>
   d383e:	04 00 80 0f 	lwi $r0,[$r1+#0x3c]
   d3842:	96 1e       	bmski33 $r0,#0x3
   d3844:	c0 09       	beqz38 $r0,d3856 <DRV_Pwr_BootFrom+0x6c>
   d3846:	44 10 10 00 	movi $r1,#4096
   d384a:	44 00 00 3c 	movi $r0,#60
   d384e:	49 fd 68 e1 	jal 80a10 <SYS_3WireBitErase>
   d3852:	84 23       	movi55 $r1,#3
   d3854:	d5 24       	j8 d389c <DRV_Pwr_BootFrom+0xb2>
   d3856:	04 00 80 0f 	lwi $r0,[$r1+#0x3c]
   d385a:	96 2e       	bmski33 $r0,#0x5
   d385c:	c0 03       	beqz38 $r0,d3862 <DRV_Pwr_BootFrom+0x78>
   d385e:	84 24       	movi55 $r1,#4
   d3860:	d5 1e       	j8 d389c <DRV_Pwr_BootFrom+0xb2>
   d3862:	04 00 80 0f 	lwi $r0,[$r1+#0x3c]
   d3866:	96 26       	bmski33 $r0,#0x4
   d3868:	c0 07       	beqz38 $r0,d3876 <DRV_Pwr_BootFrom+0x8c>
   d386a:	84 24       	movi55 $r1,#4
   d386c:	fa 0d       	movpi45 $r0,#0x1d
   d386e:	49 fd 68 d1 	jal 80a10 <SYS_3WireBitErase>
   d3872:	84 26       	movi55 $r1,#6
   d3874:	d5 14       	j8 d389c <DRV_Pwr_BootFrom+0xb2>
   d3876:	04 00 80 0f 	lwi $r0,[$r1+#0x3c]
   d387a:	96 0e       	bmski33 $r0,#0x1
   d387c:	c0 07       	beqz38 $r0,d388a <DRV_Pwr_BootFrom+0xa0>
   d387e:	84 21       	movi55 $r1,#1
   d3880:	fa 0d       	movpi45 $r0,#0x1d
   d3882:	49 fd 68 c7 	jal 80a10 <SYS_3WireBitErase>
   d3886:	84 25       	movi55 $r1,#5
   d3888:	d5 0a       	j8 d389c <DRV_Pwr_BootFrom+0xb2>
   d388a:	04 10 80 0f 	lwi $r1,[$r1+#0x3c]
   d388e:	96 56       	bmski33 $r1,#0x2
   d3890:	c1 06       	beqz38 $r1,d389c <DRV_Pwr_BootFrom+0xb2>
   d3892:	84 22       	movi55 $r1,#2
   d3894:	fa 0d       	movpi45 $r0,#0x1d
   d3896:	49 fd 68 bd 	jal 80a10 <SYS_3WireBitErase>
   d389a:	84 21       	movi55 $r1,#1
   d389c:	99 ff       	add333 $r7,$r7,$r7
   d389e:	40 05 08 08 	slli $r0,$r10,#2
   d38a2:	97 ce       	bmski33 $r7,#0x1
   d38a4:	ff c7       	or33 $r7,$r0
   d38a6:	40 73 a4 04 	or $r7,$r7,$r9
   d38aa:	80 06       	mov55 $r0,$r6
   d38ac:	b6 26       	swi450 $r1,[$r6]
   d38ae:	10 73 00 08 	sbi $r7,[$r6+#0x8]
   d38b2:	14 83 00 01 	swi $r8,[$r6+#0x4]
   d38b6:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d38b8 <SPI1_InterruptHandler>:
   d38b8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d38ba:	46 00 02 18 	sethi $r0,#0x218
   d38be:	58 00 00 00 	ori $r0,$r0,#0x0
   d38c2:	50 00 00 40 	addi $r0,$r0,#64
   d38c6:	04 10 7f fb 	lwi $r1,[$r0+#-0x14]
   d38ca:	14 10 7f fb 	swi $r1,[$r0+#-0x14]
   d38ce:	96 4c       	xlsb33 $r1,$r1
   d38d0:	c1 13       	beqz38 $r1,d38f6 <SPI1_InterruptHandler+0x3e>
   d38d2:	3c 5d f4 1c 	lwi.gp $r5,[+#-12176]
   d38d6:	c5 10       	beqz38 $r5,d38f6 <SPI1_InterruptHandler+0x3e>
   d38d8:	84 40       	movi55 $r2,#0
   d38da:	3e 27 d0 64 	sbi.gp $r2,[+#-12188]
   d38de:	46 60 01 00 	sethi $r6,#0x100
   d38e2:	a0 43       	lwi333 $r1,[$r0+#0xc]
   d38e4:	a0 84       	lwi333 $r2,[$r0+#0x10]
   d38e6:	a0 c6       	lwi333 $r3,[$r0+#0x18]
   d38e8:	a1 07       	lwi333 $r4,[$r0+#0x1c]
   d38ea:	84 00       	movi55 $r0,#0
   d38ec:	fe 77       	or33 $r1,$r6
   d38ee:	96 91       	zeh33 $r2,$r2
   d38f0:	fe f7       	or33 $r3,$r6
   d38f2:	97 21       	zeh33 $r4,$r4
   d38f4:	dd 25       	jral5 $r5
   d38f6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d38f8 <SPI2_InterruptHandler>:
   d38f8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d38fa:	46 00 02 19 	sethi $r0,#0x219
   d38fe:	58 00 00 00 	ori $r0,$r0,#0x0
   d3902:	50 00 00 40 	addi $r0,$r0,#64
   d3906:	04 10 7f fb 	lwi $r1,[$r0+#-0x14]
   d390a:	14 10 7f fb 	swi $r1,[$r0+#-0x14]
   d390e:	96 4c       	xlsb33 $r1,$r1
   d3910:	c1 13       	beqz38 $r1,d3936 <SPI2_InterruptHandler+0x3e>
   d3912:	3c 5d f4 1d 	lwi.gp $r5,[+#-12172]
   d3916:	c5 10       	beqz38 $r5,d3936 <SPI2_InterruptHandler+0x3e>
   d3918:	84 40       	movi55 $r2,#0
   d391a:	3e 27 d0 65 	sbi.gp $r2,[+#-12187]
   d391e:	46 60 01 00 	sethi $r6,#0x100
   d3922:	a0 43       	lwi333 $r1,[$r0+#0xc]
   d3924:	a0 84       	lwi333 $r2,[$r0+#0x10]
   d3926:	a0 c6       	lwi333 $r3,[$r0+#0x18]
   d3928:	a1 07       	lwi333 $r4,[$r0+#0x1c]
   d392a:	84 01       	movi55 $r0,#1
   d392c:	fe 77       	or33 $r1,$r6
   d392e:	96 91       	zeh33 $r2,$r2
   d3930:	fe f7       	or33 $r3,$r6
   d3932:	97 21       	zeh33 $r4,$r4
   d3934:	dd 25       	jral5 $r5
   d3936:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d3938 <DRV_SPI_Deinit>:
   d3938:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d393a:	c8 06       	bnez38 $r0,d3946 <DRV_SPI_Deinit+0xe>
   d393c:	46 00 02 18 	sethi $r0,#0x218
   d3940:	58 00 00 00 	ori $r0,$r0,#0x0
   d3944:	d5 05       	j8 d394e <DRV_SPI_Deinit+0x16>
   d3946:	46 00 02 19 	sethi $r0,#0x219
   d394a:	58 00 00 00 	ori $r0,$r0,#0x0
   d394e:	b4 20       	lwi450 $r1,[$r0]
   d3950:	92 21       	srli45 $r1,#1
   d3952:	94 49       	slli333 $r1,$r1,#1
   d3954:	b6 20       	swi450 $r1,[$r0]
   d3956:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d3958 <DRV_SPI_WriteRead>:
   d3958:	fc 50       	push25 $r10,#0x80    ! {$r6~$r10, $fp, $gp, $lp}
   d395a:	80 e0       	mov55 $r7,$r0
   d395c:	81 41       	mov55 $r10,$r1
   d395e:	81 23       	mov55 $r9,$r3
   d3960:	97 91       	zeh33 $r6,$r2
   d3962:	40 82 00 13 	zeh $r8,$r4
   d3966:	80 1f       	mov55 $r0,$sp
   d3968:	cf 06       	bnez38 $r7,d3974 <DRV_SPI_WriteRead+0x1c>
   d396a:	46 10 02 18 	sethi $r1,#0x218
   d396e:	58 10 80 00 	ori $r1,$r1,#0x0
   d3972:	d5 06       	j8 d397e <DRV_SPI_WriteRead+0x26>
   d3974:	80 1f       	mov55 $r0,$sp
   d3976:	46 10 02 19 	sethi $r1,#0x219
   d397a:	58 10 80 00 	ori $r1,$r1,#0x0
   d397e:	44 20 00 80 	movi $r2,#128
   d3982:	49 ff a3 63 	jal c8048 <memcpy>
   d3986:	00 0f 80 30 	lbi $r0,[$sp+#0x30]
   d398a:	96 04       	xlsb33 $r0,$r0
   d398c:	c0 34       	beqz38 $r0,d39f4 <DRV_SPI_WriteRead+0x9c>
   d398e:	3e 0f d0 64 	addi.gp $r0,#-12188
   d3992:	38 10 1c 00 	lb $r1,[$r0+($r7<<#0x0)]
   d3996:	c9 2f       	bnez38 $r1,d39f4 <DRV_SPI_WriteRead+0x9c>
   d3998:	84 21       	movi55 $r1,#1
   d399a:	38 10 1c 08 	sb $r1,[$r0+($r7<<#0x0)]
   d399e:	9d 71       	addi333 $r5,$r6,#1
   d39a0:	50 44 00 01 	addi $r4,$r8,#1
   d39a4:	40 23 30 08 	slli $r2,$r6,#12
   d39a8:	92 4c       	srli45 $r2,#12
   d39aa:	cf 06       	bnez38 $r7,d39b6 <DRV_SPI_WriteRead+0x5e>
   d39ac:	46 00 02 18 	sethi $r0,#0x218
   d39b0:	58 00 00 00 	ori $r0,$r0,#0x0
   d39b4:	d5 05       	j8 d39be <DRV_SPI_WriteRead+0x66>
   d39b6:	46 00 02 19 	sethi $r0,#0x219
   d39ba:	58 00 00 00 	ori $r0,$r0,#0x0
   d39be:	14 a0 00 13 	swi $r10,[$r0+#0x4c]
   d39c2:	14 90 00 16 	swi $r9,[$r0+#0x58]
   d39c6:	14 60 00 14 	swi $r6,[$r0+#0x50]
   d39ca:	14 80 00 17 	swi $r8,[$r0+#0x5c]
   d39ce:	14 50 00 12 	swi $r5,[$r0+#0x48]
   d39d2:	14 40 00 15 	swi $r4,[$r0+#0x54]
   d39d6:	46 3f ff 00 	sethi $r3,#0xfff00
   d39da:	a0 45       	lwi333 $r1,[$r0+#0x14]
   d39dc:	fe 5e       	and33 $r1,$r3
   d39de:	fe 8f       	or33 $r2,$r1
   d39e0:	a8 85       	swi333 $r2,[$r0+#0x14]
   d39e2:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   d39e4:	fe 5e       	and33 $r1,$r3
   d39e6:	a8 47       	swi333 $r1,[$r0+#0x1c]
   d39e8:	b4 20       	lwi450 $r1,[$r0]
   d39ea:	58 10 80 04 	ori $r1,$r1,#0x4
   d39ee:	b6 20       	swi450 $r1,[$r0]
   d39f0:	84 01       	movi55 $r0,#1
   d39f2:	d5 02       	j8 d39f6 <DRV_SPI_WriteRead+0x9e>
   d39f4:	84 00       	movi55 $r0,#0
   d39f6:	fc d0       	pop25 $r10,#0x80    ! {$r6~$r10, $fp, $gp, $lp}

000d39f8 <DRV_SPI_IsReady>:
   d39f8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d39fa:	3e 1f d0 64 	addi.gp $r1,#-12188
   d39fe:	38 00 80 00 	lb $r0,[$r1+($r0<<#0x0)]
   d3a02:	56 00 00 01 	xori $r0,$r0,#0x1
   d3a06:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d3a08 <DRV_SPI_ChangeDuplex>:
   d3a08:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d3a0a:	96 4c       	xlsb33 $r1,$r1
   d3a0c:	c8 06       	bnez38 $r0,d3a18 <DRV_SPI_ChangeDuplex+0x10>
   d3a0e:	46 00 02 18 	sethi $r0,#0x218
   d3a12:	58 00 00 00 	ori $r0,$r0,#0x0
   d3a16:	d5 05       	j8 d3a20 <DRV_SPI_ChangeDuplex+0x18>
   d3a18:	46 00 02 19 	sethi $r0,#0x219
   d3a1c:	58 00 00 00 	ori $r0,$r0,#0x0
   d3a20:	a0 81       	lwi333 $r2,[$r0+#0x4]
   d3a22:	44 3f ff 7f 	movi $r3,#-129
   d3a26:	fe 9e       	and33 $r2,$r3
   d3a28:	94 4f       	slli333 $r1,$r1,#7
   d3a2a:	fe 57       	or33 $r1,$r2
   d3a2c:	a8 41       	swi333 $r1,[$r0+#0x4]
   d3a2e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d3a30 <DRV_SPI_Int>:
   d3a30:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d3a32:	96 48       	zeb33 $r1,$r1
   d3a34:	c8 18       	bnez38 $r0,d3a64 <DRV_SPI_Int+0x34>
   d3a36:	c1 0c       	beqz38 $r1,d3a4e <DRV_SPI_Int+0x1e>
   d3a38:	44 00 00 40 	movi $r0,#64
   d3a3c:	64 f3 00 02 	mfsr $r15,$INT_MASK
   d3a40:	40 f7 80 04 	or $r15,$r15,$r0
   d3a44:	64 f3 00 03 	mtsr $r15,$INT_MASK
   d3a48:	64 00 00 08 	dsb
   d3a4c:	d5 21       	j8 d3a8e <DRV_SPI_Int+0x5e>
   d3a4e:	44 0f ff bf 	movi $r0,#-65
   d3a52:	64 f3 00 02 	mfsr $r15,$INT_MASK
   d3a56:	40 f7 80 02 	and $r15,$r15,$r0
   d3a5a:	64 f3 00 03 	mtsr $r15,$INT_MASK
   d3a5e:	64 00 00 08 	dsb
   d3a62:	d5 16       	j8 d3a8e <DRV_SPI_Int+0x5e>
   d3a64:	c1 0b       	beqz38 $r1,d3a7a <DRV_SPI_Int+0x4a>
   d3a66:	fa 10       	movpi45 $r0,#0x20
   d3a68:	64 f3 00 02 	mfsr $r15,$INT_MASK
   d3a6c:	40 f7 80 04 	or $r15,$r15,$r0
   d3a70:	64 f3 00 03 	mtsr $r15,$INT_MASK
   d3a74:	64 00 00 08 	dsb
   d3a78:	d5 0b       	j8 d3a8e <DRV_SPI_Int+0x5e>
   d3a7a:	44 0f ff df 	movi $r0,#-33
   d3a7e:	64 f3 00 02 	mfsr $r15,$INT_MASK
   d3a82:	40 f7 80 02 	and $r15,$r15,$r0
   d3a86:	64 f3 00 03 	mtsr $r15,$INT_MASK
   d3a8a:	64 00 00 08 	dsb
   d3a8e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d3a90 <DRV_SPI_Init>:
   d3a90:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d3a92:	ee 80       	addi10.sp #-384
   d3a94:	fd 30       	movd44 $r6,$r0
   d3a96:	50 0f 81 00 	addi $r0,$sp,#256
   d3a9a:	ce 06       	bnez38 $r6,d3aa6 <DRV_SPI_Init+0x16>
   d3a9c:	46 10 02 18 	sethi $r1,#0x218
   d3aa0:	58 10 80 00 	ori $r1,$r1,#0x0
   d3aa4:	d5 05       	j8 d3aae <DRV_SPI_Init+0x1e>
   d3aa6:	46 10 02 19 	sethi $r1,#0x219
   d3aaa:	58 10 80 00 	ori $r1,$r1,#0x0
   d3aae:	44 20 00 80 	movi $r2,#128
   d3ab2:	49 ff a2 cb 	jal c8048 <memcpy>
   d3ab6:	50 0f 81 00 	addi $r0,$sp,#256
   d3aba:	f2 41       	lwi37.sp $r2,[+#0x104]
   d3abc:	a6 38       	lbi333 $r0,[$r7+#0x0]
   d3abe:	96 c4       	xlsb33 $r3,$r0
   d3ac0:	92 42       	srli45 $r2,#2
   d3ac2:	94 92       	slli333 $r2,$r2,#2
   d3ac4:	fe 9f       	or33 $r2,$r3
   d3ac6:	54 10 00 02 	andi $r1,$r0,#0x2
   d3aca:	fe 8f       	or33 $r2,$r1
   d3acc:	84 33       	movi55 $r1,#-13
   d3ace:	54 30 00 04 	andi $r3,$r0,#0x4
   d3ad2:	fe 8e       	and33 $r2,$r1
   d3ad4:	fe 9f       	or33 $r2,$r3
   d3ad6:	54 10 00 08 	andi $r1,$r0,#0x8
   d3ada:	fe 8f       	or33 $r2,$r1
   d3adc:	44 3f ff 0f 	movi $r3,#-241
   d3ae0:	94 42       	slli333 $r1,$r0,#2
   d3ae2:	fe 9e       	and33 $r2,$r3
   d3ae4:	92 06       	srli45 $r0,#6
   d3ae6:	96 7e       	bmski33 $r1,#0x7
   d3ae8:	58 21 00 30 	ori $r2,$r2,#0x30
   d3aec:	56 00 00 01 	xori $r0,$r0,#0x1
   d3af0:	fe 8f       	or33 $r2,$r1
   d3af2:	96 04       	xlsb33 $r0,$r0
   d3af4:	44 1f 00 bf 	movi $r1,#-65345
   d3af8:	40 00 20 08 	slli $r0,$r0,#8
   d3afc:	fe 8e       	and33 $r2,$r1
   d3afe:	fe 87       	or33 $r2,$r0
   d3b00:	58 21 38 00 	ori $r2,$r2,#0x3800
   d3b04:	b0 20       	addri36.sp $r0,#0x80
   d3b06:	ce 06       	bnez38 $r6,d3b12 <DRV_SPI_Init+0x82>
   d3b08:	46 10 02 18 	sethi $r1,#0x218
   d3b0c:	58 10 80 00 	ori $r1,$r1,#0x0
   d3b10:	d5 05       	j8 d3b1a <DRV_SPI_Init+0x8a>
   d3b12:	46 10 02 19 	sethi $r1,#0x219
   d3b16:	58 10 80 00 	ori $r1,$r1,#0x0
   d3b1a:	a8 89       	swi333 $r2,[$r1+#0x4]
   d3b1c:	44 20 00 80 	movi $r2,#128
   d3b20:	49 ff a2 94 	jal c8048 <memcpy>
   d3b24:	b0 20       	addri36.sp $r0,#0x80
   d3b26:	f0 22       	lwi37.sp $r0,[+#0x88]
   d3b28:	3c 2d f0 2d 	lwi.gp $r2,[+#-16204]
   d3b2c:	a0 79       	lwi333 $r1,[$r7+#0x4]
   d3b2e:	40 21 04 77 	divr $r2,$r3,$r2,$r1
   d3b32:	44 30 ff 00 	movi $r3,#65280
   d3b36:	94 97       	slli333 $r2,$r2,#7
   d3b38:	fe 9e       	and33 $r2,$r3
   d3b3a:	92 10       	srli45 $r0,#16
   d3b3c:	40 00 40 08 	slli $r0,$r0,#16
   d3b40:	fe 17       	or33 $r0,$r2
   d3b42:	3e 2f d0 68 	addi.gp $r2,#-12184
   d3b46:	38 11 1a 0a 	sw $r1,[$r2+($r6<<#0x2)]
   d3b4a:	ce 06       	bnez38 $r6,d3b56 <DRV_SPI_Init+0xc6>
   d3b4c:	46 10 02 18 	sethi $r1,#0x218
   d3b50:	58 10 80 00 	ori $r1,$r1,#0x0
   d3b54:	d5 05       	j8 d3b5e <DRV_SPI_Init+0xce>
   d3b56:	46 10 02 19 	sethi $r1,#0x219
   d3b5a:	58 10 80 00 	ori $r1,$r1,#0x0
   d3b5e:	a8 0a       	swi333 $r0,[$r1+#0x8]
   d3b60:	84 41       	movi55 $r2,#1
   d3b62:	80 1f       	mov55 $r0,$sp
   d3b64:	ce 08       	bnez38 $r6,d3b74 <DRV_SPI_Init+0xe4>
   d3b66:	46 10 02 18 	sethi $r1,#0x218
   d3b6a:	58 10 80 00 	ori $r1,$r1,#0x0
   d3b6e:	14 20 80 0a 	swi $r2,[$r1+#0x28]
   d3b72:	d5 07       	j8 d3b80 <DRV_SPI_Init+0xf0>
   d3b74:	46 10 02 19 	sethi $r1,#0x219
   d3b78:	58 10 80 00 	ori $r1,$r1,#0x0
   d3b7c:	14 20 80 0a 	swi $r2,[$r1+#0x28]
   d3b80:	94 97       	slli333 $r2,$r2,#7
   d3b82:	49 ff a2 63 	jal c8048 <memcpy>
   d3b86:	b4 3f       	lwi450 $r1,[$sp]
   d3b88:	44 0f f0 0f 	movi $r0,#-4081
   d3b8c:	58 10 80 0b 	ori $r1,$r1,#0xb
   d3b90:	fe 46       	and33 $r1,$r0
   d3b92:	ce 1b       	bnez38 $r6,d3bc8 <DRV_SPI_Init+0x138>
   d3b94:	46 00 02 18 	sethi $r0,#0x218
   d3b98:	58 00 00 00 	ori $r0,$r0,#0x0
   d3b9c:	50 00 00 4c 	addi $r0,$r0,#76
   d3ba0:	14 10 7f ed 	swi $r1,[$r0+#-0x4c]
   d3ba4:	44 2f ff e3 	movi $r2,#-29
   d3ba8:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   d3baa:	44 3f ff 1f 	movi $r3,#-225
   d3bae:	fe 56       	and33 $r1,$r2
   d3bb0:	58 10 80 08 	ori $r1,$r1,#0x8
   d3bb4:	a8 47       	swi333 $r1,[$r0+#0x1c]
   d3bb6:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   d3bb8:	fe 5e       	and33 $r1,$r3
   d3bba:	58 10 80 40 	ori $r1,$r1,#0x40
   d3bbe:	a8 47       	swi333 $r1,[$r0+#0x1c]
   d3bc0:	84 0f       	movi55 $r0,#15
   d3bc2:	3e 1c f8 b8 	addi.gp $r1,#-198472
   d3bc6:	d5 1a       	j8 d3bfa <DRV_SPI_Init+0x16a>
   d3bc8:	46 00 02 19 	sethi $r0,#0x219
   d3bcc:	58 00 00 00 	ori $r0,$r0,#0x0
   d3bd0:	50 00 00 4c 	addi $r0,$r0,#76
   d3bd4:	14 10 7f ed 	swi $r1,[$r0+#-0x4c]
   d3bd8:	44 2f ff e3 	movi $r2,#-29
   d3bdc:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   d3bde:	44 3f ff 1f 	movi $r3,#-225
   d3be2:	fe 56       	and33 $r1,$r2
   d3be4:	58 10 80 08 	ori $r1,$r1,#0x8
   d3be8:	a8 47       	swi333 $r1,[$r0+#0x1c]
   d3bea:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   d3bec:	fe 5e       	and33 $r1,$r3
   d3bee:	58 10 80 40 	ori $r1,$r1,#0x40
   d3bf2:	a8 47       	swi333 $r1,[$r0+#0x1c]
   d3bf4:	84 0e       	movi55 $r0,#14
   d3bf6:	3e 1c f8 f8 	addi.gp $r1,#-198408
   d3bfa:	49 fd 63 c5 	jal 80384 <SysIntrHandlerRegister>
   d3bfe:	a1 fa       	lwi333 $r7,[$r7+#0x8]
   d3c00:	3e 0f d0 70 	addi.gp $r0,#-12176
   d3c04:	38 70 1a 0a 	sw $r7,[$r0+($r6<<#0x2)]
   d3c08:	ed 80       	addi10.sp #384
   d3c0a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d3c0c <DRV_TMR16_PWM_Enable>:
   d3c0c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d3c0e:	46 10 02 22 	sethi $r1,#0x222
   d3c12:	58 10 80 00 	ori $r1,$r1,#0x0
   d3c16:	96 01       	zeh33 $r0,$r0
   d3c18:	a8 0b       	swi333 $r0,[$r1+#0xc]
   d3c1a:	a0 09       	lwi333 $r0,[$r1+#0x4]
   d3c1c:	58 00 00 01 	ori $r0,$r0,#0x1
   d3c20:	a8 09       	swi333 $r0,[$r1+#0x4]
   d3c22:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d3c24 <DRV_TMR16_PWM>:
   d3c24:	fc 22       	push25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}
   d3c26:	3a 0f 8c 20 	smw.bi $r0,[$sp],$r3,#0x0    ! {$r0~$r3}
   d3c2a:	46 00 02 22 	sethi $r0,#0x222
   d3c2e:	58 00 00 00 	ori $r0,$r0,#0x0
   d3c32:	50 00 00 30 	addi $r0,$r0,#48
   d3c36:	02 2f 80 06 	lhi $r2,[$sp+#0xc]
   d3c3a:	02 1f 80 07 	lhi $r1,[$sp+#0xe]
   d3c3e:	02 8f 80 01 	lhi $r8,[$sp+#0x2]
   d3c42:	02 7f 80 02 	lhi $r7,[$sp+#0x4]
   d3c46:	02 6f 80 03 	lhi $r6,[$sp+#0x6]
   d3c4a:	02 5f 80 04 	lhi $r5,[$sp+#0x8]
   d3c4e:	02 3f 80 05 	lhi $r3,[$sp+#0xa]
   d3c52:	02 4f 80 00 	lhi $r4,[$sp+#0x0]
   d3c56:	14 40 7f fa 	swi $r4,[$r0+#-0x18]
   d3c5a:	14 80 00 04 	swi $r8,[$r0+#0x10]
   d3c5e:	14 70 7f fb 	swi $r7,[$r0+#-0x14]
   d3c62:	a9 85       	swi333 $r6,[$r0+#0x14]
   d3c64:	14 50 7f fc 	swi $r5,[$r0+#-0x10]
   d3c68:	a8 c6       	swi333 $r3,[$r0+#0x18]
   d3c6a:	14 20 7f fd 	swi $r2,[$r0+#-0xc]
   d3c6e:	a8 47       	swi333 $r1,[$r0+#0x1c]
   d3c70:	44 2f ff cf 	movi $r2,#-49
   d3c74:	a0 43       	lwi333 $r1,[$r0+#0xc]
   d3c76:	fe 56       	and33 $r1,$r2
   d3c78:	58 10 80 20 	ori $r1,$r1,#0x20
   d3c7c:	a8 43       	swi333 $r1,[$r0+#0xc]
   d3c7e:	44 2c ff ff 	movi $r2,#-196609
   d3c82:	a0 43       	lwi333 $r1,[$r0+#0xc]
   d3c84:	fe 56       	and33 $r1,$r2
   d3c86:	44 21 00 00 	movi $r2,#65536
   d3c8a:	fe 57       	or33 $r1,$r2
   d3c8c:	a8 43       	swi333 $r1,[$r0+#0xc]
   d3c8e:	44 2f ff 3f 	movi $r2,#-193
   d3c92:	a0 43       	lwi333 $r1,[$r0+#0xc]
   d3c94:	fe 56       	and33 $r1,$r2
   d3c96:	58 10 80 80 	ori $r1,$r1,#0x80
   d3c9a:	a8 43       	swi333 $r1,[$r0+#0xc]
   d3c9c:	46 2f ff 3f 	sethi $r2,#0xfff3f
   d3ca0:	a0 43       	lwi333 $r1,[$r0+#0xc]
   d3ca2:	58 21 0f ff 	ori $r2,$r2,#0xfff
   d3ca6:	fe 56       	and33 $r1,$r2
   d3ca8:	44 24 00 00 	movi $r2,#262144
   d3cac:	fe 57       	or33 $r1,$r2
   d3cae:	a8 43       	swi333 $r1,[$r0+#0xc]
   d3cb0:	44 2f fc ff 	movi $r2,#-769
   d3cb4:	a0 43       	lwi333 $r1,[$r0+#0xc]
   d3cb6:	fe 56       	and33 $r1,$r2
   d3cb8:	58 10 82 00 	ori $r1,$r1,#0x200
   d3cbc:	a8 43       	swi333 $r1,[$r0+#0xc]
   d3cbe:	46 2f fc ff 	sethi $r2,#0xffcff
   d3cc2:	a0 43       	lwi333 $r1,[$r0+#0xc]
   d3cc4:	58 21 0f ff 	ori $r2,$r2,#0xfff
   d3cc8:	fe 56       	and33 $r1,$r2
   d3cca:	46 20 01 00 	sethi $r2,#0x100
   d3cce:	fe 57       	or33 $r1,$r2
   d3cd0:	a8 43       	swi333 $r1,[$r0+#0xc]
   d3cd2:	44 2f f3 ff 	movi $r2,#-3073
   d3cd6:	a0 43       	lwi333 $r1,[$r0+#0xc]
   d3cd8:	fe 56       	and33 $r1,$r2
   d3cda:	58 10 88 00 	ori $r1,$r1,#0x800
   d3cde:	a8 43       	swi333 $r1,[$r0+#0xc]
   d3ce0:	46 2f f3 ff 	sethi $r2,#0xff3ff
   d3ce4:	a0 43       	lwi333 $r1,[$r0+#0xc]
   d3ce6:	58 21 0f ff 	ori $r2,$r2,#0xfff
   d3cea:	fe 56       	and33 $r1,$r2
   d3cec:	46 20 04 00 	sethi $r2,#0x400
   d3cf0:	fe 57       	or33 $r1,$r2
   d3cf2:	a8 43       	swi333 $r1,[$r0+#0xc]
   d3cf4:	46 20 40 00 	sethi $r2,#0x4000
   d3cf8:	04 10 7f f9 	lwi $r1,[$r0+#-0x1c]
   d3cfc:	fe 57       	or33 $r1,$r2
   d3cfe:	14 10 7f f9 	swi $r1,[$r0+#-0x1c]
   d3d02:	fc a2       	pop25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}

000d3d04 <Timer32B0InterruptHandler>:
   d3d04:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d3d06:	46 00 02 20 	sethi $r0,#0x220
   d3d0a:	58 00 00 00 	ori $r0,$r0,#0x0
   d3d0e:	b4 c0       	lwi450 $r6,[$r0]
   d3d10:	b6 c0       	swi450 $r6,[$r0]
   d3d12:	97 b0       	zeb33 $r6,$r6
   d3d14:	96 74       	xlsb33 $r1,$r6
   d3d16:	c1 14       	beqz38 $r1,d3d3e <Timer32B0InterruptHandler+0x3a>
   d3d18:	2e 17 d0 98 	lbi.gp $r1,[+#-12136]
   d3d1c:	c1 06       	beqz38 $r1,d3d28 <Timer32B0InterruptHandler+0x24>
   d3d1e:	a0 45       	lwi333 $r1,[$r0+#0x14]
   d3d20:	92 21       	srli45 $r1,#1
   d3d22:	94 49       	slli333 $r1,$r1,#1
   d3d24:	a8 45       	swi333 $r1,[$r0+#0x14]
   d3d26:	d5 06       	j8 d3d32 <Timer32B0InterruptHandler+0x2e>
   d3d28:	a0 82       	lwi333 $r2,[$r0+#0x8]
   d3d2a:	3c 1d f4 27 	lwi.gp $r1,[+#-12132]
   d3d2e:	98 51       	add333 $r1,$r2,$r1
   d3d30:	a8 46       	swi333 $r1,[$r0+#0x18]
   d3d32:	3c 1d f4 1e 	lwi.gp $r1,[+#-12168]
   d3d36:	c1 04       	beqz38 $r1,d3d3e <Timer32B0InterruptHandler+0x3a>
   d3d38:	3c 0d f4 22 	lwi.gp $r0,[+#-12152]
   d3d3c:	dd 21       	jral5 $r1
   d3d3e:	54 03 00 02 	andi $r0,$r6,#0x2
   d3d42:	c0 18       	beqz38 $r0,d3d72 <Timer32B0InterruptHandler+0x6e>
   d3d44:	2e 17 d0 99 	lbi.gp $r1,[+#-12135]
   d3d48:	46 00 02 20 	sethi $r0,#0x220
   d3d4c:	58 00 00 00 	ori $r0,$r0,#0x0
   d3d50:	c1 06       	beqz38 $r1,d3d5c <Timer32B0InterruptHandler+0x58>
   d3d52:	a0 45       	lwi333 $r1,[$r0+#0x14]
   d3d54:	84 57       	movi55 $r2,#-9
   d3d56:	fe 56       	and33 $r1,$r2
   d3d58:	a8 45       	swi333 $r1,[$r0+#0x14]
   d3d5a:	d5 06       	j8 d3d66 <Timer32B0InterruptHandler+0x62>
   d3d5c:	a0 82       	lwi333 $r2,[$r0+#0x8]
   d3d5e:	3c 1d f4 28 	lwi.gp $r1,[+#-12128]
   d3d62:	98 51       	add333 $r1,$r2,$r1
   d3d64:	a8 47       	swi333 $r1,[$r0+#0x1c]
   d3d66:	3c 1d f4 1f 	lwi.gp $r1,[+#-12164]
   d3d6a:	c1 04       	beqz38 $r1,d3d72 <Timer32B0InterruptHandler+0x6e>
   d3d6c:	3c 0d f4 23 	lwi.gp $r0,[+#-12148]
   d3d70:	dd 21       	jral5 $r1
   d3d72:	54 03 00 04 	andi $r0,$r6,#0x4
   d3d76:	c0 1a       	beqz38 $r0,d3daa <Timer32B0InterruptHandler+0xa6>
   d3d78:	2e 17 d0 9a 	lbi.gp $r1,[+#-12134]
   d3d7c:	46 00 02 20 	sethi $r0,#0x220
   d3d80:	58 00 00 00 	ori $r0,$r0,#0x0
   d3d84:	c1 07       	beqz38 $r1,d3d92 <Timer32B0InterruptHandler+0x8e>
   d3d86:	a0 45       	lwi333 $r1,[$r0+#0x14]
   d3d88:	44 2f ff bf 	movi $r2,#-65
   d3d8c:	fe 56       	and33 $r1,$r2
   d3d8e:	a8 45       	swi333 $r1,[$r0+#0x14]
   d3d90:	d5 07       	j8 d3d9e <Timer32B0InterruptHandler+0x9a>
   d3d92:	a0 82       	lwi333 $r2,[$r0+#0x8]
   d3d94:	3c 1d f4 29 	lwi.gp $r1,[+#-12124]
   d3d98:	98 51       	add333 $r1,$r2,$r1
   d3d9a:	14 10 00 08 	swi $r1,[$r0+#0x20]
   d3d9e:	3c 1d f4 20 	lwi.gp $r1,[+#-12160]
   d3da2:	c1 04       	beqz38 $r1,d3daa <Timer32B0InterruptHandler+0xa6>
   d3da4:	3c 0d f4 24 	lwi.gp $r0,[+#-12144]
   d3da8:	dd 21       	jral5 $r1
   d3daa:	97 9e       	bmski33 $r6,#0x3
   d3dac:	c6 1a       	beqz38 $r6,d3de0 <Timer32B0InterruptHandler+0xdc>
   d3dae:	2e 17 d0 9b 	lbi.gp $r1,[+#-12133]
   d3db2:	46 00 02 20 	sethi $r0,#0x220
   d3db6:	58 00 00 00 	ori $r0,$r0,#0x0
   d3dba:	c1 07       	beqz38 $r1,d3dc8 <Timer32B0InterruptHandler+0xc4>
   d3dbc:	a0 45       	lwi333 $r1,[$r0+#0x14]
   d3dbe:	44 2f fd ff 	movi $r2,#-513
   d3dc2:	fe 56       	and33 $r1,$r2
   d3dc4:	a8 45       	swi333 $r1,[$r0+#0x14]
   d3dc6:	d5 07       	j8 d3dd4 <Timer32B0InterruptHandler+0xd0>
   d3dc8:	a0 82       	lwi333 $r2,[$r0+#0x8]
   d3dca:	3c 1d f4 2a 	lwi.gp $r1,[+#-12120]
   d3dce:	98 51       	add333 $r1,$r2,$r1
   d3dd0:	14 10 00 09 	swi $r1,[$r0+#0x24]
   d3dd4:	3c 1d f4 21 	lwi.gp $r1,[+#-12156]
   d3dd8:	c1 04       	beqz38 $r1,d3de0 <Timer32B0InterruptHandler+0xdc>
   d3dda:	3c 0d f4 25 	lwi.gp $r0,[+#-12140]
   d3dde:	dd 21       	jral5 $r1
   d3de0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d3de2 <DRV_TMR32B0_NotifyEnable>:
   d3de2:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d3de4:	46 50 02 20 	sethi $r5,#0x220
   d3de8:	58 52 80 00 	ori $r5,$r5,#0x0
   d3dec:	a1 aa       	lwi333 $r6,[$r5+#0x8]
   d3dee:	96 90       	zeb33 $r2,$r2
   d3df0:	99 8e       	add333 $r6,$r1,$r6
   d3df2:	c8 12       	bnez38 $r0,d3e16 <DRV_TMR32B0_NotifyEnable+0x34>
   d3df4:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   d3df6:	92 01       	srli45 $r0,#1
   d3df8:	94 01       	slli333 $r0,$r0,#1
   d3dfa:	a8 2d       	swi333 $r0,[$r5+#0x14]
   d3dfc:	3c 4f f4 1e 	swi.gp $r4,[+#-12168]
   d3e00:	3c 3f f4 22 	swi.gp $r3,[+#-12152]
   d3e04:	3c 1f f4 27 	swi.gp $r1,[+#-12132]
   d3e08:	3e 27 d0 98 	sbi.gp $r2,[+#-12136]
   d3e0c:	a9 ae       	swi333 $r6,[$r5+#0x18]
   d3e0e:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   d3e10:	58 00 00 01 	ori $r0,$r0,#0x1
   d3e14:	d5 3d       	j8 d3e8e <DRV_TMR32B0_NotifyEnable+0xac>
   d3e16:	5a 08 01 13 	bnec $r0,#1,d3e3c <DRV_TMR32B0_NotifyEnable+0x5a>
   d3e1a:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   d3e1c:	84 f7       	movi55 $r7,#-9
   d3e1e:	fe 3e       	and33 $r0,$r7
   d3e20:	a8 2d       	swi333 $r0,[$r5+#0x14]
   d3e22:	3c 4f f4 1f 	swi.gp $r4,[+#-12164]
   d3e26:	3c 3f f4 23 	swi.gp $r3,[+#-12148]
   d3e2a:	3c 1f f4 28 	swi.gp $r1,[+#-12128]
   d3e2e:	3e 27 d0 99 	sbi.gp $r2,[+#-12135]
   d3e32:	a9 af       	swi333 $r6,[$r5+#0x1c]
   d3e34:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   d3e36:	58 00 00 08 	ori $r0,$r0,#0x8
   d3e3a:	d5 2a       	j8 d3e8e <DRV_TMR32B0_NotifyEnable+0xac>
   d3e3c:	5a 08 02 15 	bnec $r0,#2,d3e66 <DRV_TMR32B0_NotifyEnable+0x84>
   d3e40:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   d3e42:	44 7f ff bf 	movi $r7,#-65
   d3e46:	fe 3e       	and33 $r0,$r7
   d3e48:	a8 2d       	swi333 $r0,[$r5+#0x14]
   d3e4a:	3c 4f f4 20 	swi.gp $r4,[+#-12160]
   d3e4e:	3c 3f f4 24 	swi.gp $r3,[+#-12144]
   d3e52:	3c 1f f4 29 	swi.gp $r1,[+#-12124]
   d3e56:	3e 27 d0 9a 	sbi.gp $r2,[+#-12134]
   d3e5a:	14 62 80 08 	swi $r6,[$r5+#0x20]
   d3e5e:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   d3e60:	58 00 00 40 	ori $r0,$r0,#0x40
   d3e64:	d5 15       	j8 d3e8e <DRV_TMR32B0_NotifyEnable+0xac>
   d3e66:	5a 08 03 15 	bnec $r0,#3,d3e90 <DRV_TMR32B0_NotifyEnable+0xae>
   d3e6a:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   d3e6c:	44 7f fd ff 	movi $r7,#-513
   d3e70:	fe 3e       	and33 $r0,$r7
   d3e72:	a8 2d       	swi333 $r0,[$r5+#0x14]
   d3e74:	3c 4f f4 21 	swi.gp $r4,[+#-12156]
   d3e78:	3c 3f f4 25 	swi.gp $r3,[+#-12140]
   d3e7c:	3c 1f f4 2a 	swi.gp $r1,[+#-12120]
   d3e80:	3e 27 d0 9b 	sbi.gp $r2,[+#-12133]
   d3e84:	14 62 80 09 	swi $r6,[$r5+#0x24]
   d3e88:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   d3e8a:	58 00 02 00 	ori $r0,$r0,#0x200
   d3e8e:	a8 2d       	swi333 $r0,[$r5+#0x14]
   d3e90:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d3e92 <DRV_TMR32B0_NotifyDisable>:
   d3e92:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d3e94:	c8 0f       	bnez38 $r0,d3eb2 <DRV_TMR32B0_NotifyDisable+0x20>
   d3e96:	46 10 02 20 	sethi $r1,#0x220
   d3e9a:	58 10 80 00 	ori $r1,$r1,#0x0
   d3e9e:	a8 0e       	swi333 $r0,[$r1+#0x18]
   d3ea0:	b4 01       	lwi450 $r0,[$r1]
   d3ea2:	58 00 00 01 	ori $r0,$r0,#0x1
   d3ea6:	b6 01       	swi450 $r0,[$r1]
   d3ea8:	a0 0d       	lwi333 $r0,[$r1+#0x14]
   d3eaa:	92 01       	srli45 $r0,#1
   d3eac:	94 01       	slli333 $r0,$r0,#1
   d3eae:	a8 0d       	swi333 $r0,[$r1+#0x14]
   d3eb0:	d5 33       	j8 d3f16 <DRV_TMR32B0_NotifyDisable+0x84>
   d3eb2:	5a 08 01 0f 	bnec $r0,#1,d3ed0 <DRV_TMR32B0_NotifyDisable+0x3e>
   d3eb6:	46 00 02 20 	sethi $r0,#0x220
   d3eba:	58 00 00 00 	ori $r0,$r0,#0x0
   d3ebe:	84 20       	movi55 $r1,#0
   d3ec0:	a8 47       	swi333 $r1,[$r0+#0x1c]
   d3ec2:	84 57       	movi55 $r2,#-9
   d3ec4:	b4 20       	lwi450 $r1,[$r0]
   d3ec6:	58 10 80 02 	ori $r1,$r1,#0x2
   d3eca:	b6 20       	swi450 $r1,[$r0]
   d3ecc:	a0 45       	lwi333 $r1,[$r0+#0x14]
   d3ece:	d5 22       	j8 d3f12 <DRV_TMR32B0_NotifyDisable+0x80>
   d3ed0:	5a 08 02 11 	bnec $r0,#2,d3ef2 <DRV_TMR32B0_NotifyDisable+0x60>
   d3ed4:	46 00 02 20 	sethi $r0,#0x220
   d3ed8:	58 00 00 00 	ori $r0,$r0,#0x0
   d3edc:	84 20       	movi55 $r1,#0
   d3ede:	14 10 00 08 	swi $r1,[$r0+#0x20]
   d3ee2:	44 2f ff bf 	movi $r2,#-65
   d3ee6:	b4 20       	lwi450 $r1,[$r0]
   d3ee8:	58 10 80 04 	ori $r1,$r1,#0x4
   d3eec:	b6 20       	swi450 $r1,[$r0]
   d3eee:	a0 45       	lwi333 $r1,[$r0+#0x14]
   d3ef0:	d5 11       	j8 d3f12 <DRV_TMR32B0_NotifyDisable+0x80>
   d3ef2:	5a 08 03 12 	bnec $r0,#3,d3f16 <DRV_TMR32B0_NotifyDisable+0x84>
   d3ef6:	46 00 02 20 	sethi $r0,#0x220
   d3efa:	58 00 00 00 	ori $r0,$r0,#0x0
   d3efe:	84 20       	movi55 $r1,#0
   d3f00:	14 10 00 09 	swi $r1,[$r0+#0x24]
   d3f04:	44 2f fd ff 	movi $r2,#-513
   d3f08:	b4 20       	lwi450 $r1,[$r0]
   d3f0a:	58 10 80 08 	ori $r1,$r1,#0x8
   d3f0e:	b6 20       	swi450 $r1,[$r0]
   d3f10:	a0 45       	lwi333 $r1,[$r0+#0x14]
   d3f12:	fe 56       	and33 $r1,$r2
   d3f14:	a8 45       	swi333 $r1,[$r0+#0x14]
   d3f16:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d3f18 <DRV_TMR32B0_Enable>:
   d3f18:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d3f1a:	80 c0       	mov55 $r6,$r0
   d3f1c:	84 00       	movi55 $r0,#0
   d3f1e:	49 ff f8 2c 	jal d2f76 <DRV_CLK_TMR0Sel>
   d3f22:	46 10 02 20 	sethi $r1,#0x220
   d3f26:	58 10 80 00 	ori $r1,$r1,#0x0
   d3f2a:	a9 8b       	swi333 $r6,[$r1+#0xc]
   d3f2c:	a0 09       	lwi333 $r0,[$r1+#0x4]
   d3f2e:	58 00 00 01 	ori $r0,$r0,#0x1
   d3f32:	a8 09       	swi333 $r0,[$r1+#0x4]
   d3f34:	84 0a       	movi55 $r0,#10
   d3f36:	3e 1c fd 04 	addi.gp $r1,#-197372
   d3f3a:	49 fd 62 25 	jal 80384 <SysIntrHandlerRegister>
   d3f3e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d3f40 <DRV_Uart_SetBaud>:
   d3f40:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d3f42:	3c 2d f0 2d 	lwi.gp $r2,[+#-16204]
   d3f46:	92 26       	srli45 $r1,#6
   d3f48:	40 11 04 57 	divr $r1,$r2,$r2,$r1
   d3f4c:	40 30 c0 09 	srli $r3,$r1,#16
   d3f50:	40 20 a0 09 	srli $r2,$r1,#8
   d3f54:	96 48       	zeb33 $r1,$r1
   d3f56:	c8 2c       	bnez38 $r0,d3fae <DRV_Uart_SetBaud+0x6e>
   d3f58:	96 d8       	zeb33 $r3,$r3
   d3f5a:	46 00 02 10 	sethi $r0,#0x210
   d3f5e:	58 00 00 00 	ori $r0,$r0,#0x0
   d3f62:	ae c7       	sbi333 $r3,[$r0+#0x7]
   d3f64:	96 90       	zeb33 $r2,$r2
   d3f66:	5c f0 80 20 	slti $r15,$r1,#32
   d3f6a:	e8 02       	beqzs8 d3f6e <DRV_Uart_SetBaud+0x2e>
   d3f6c:	d5 1c       	j8 d3fa4 <DRV_Uart_SetBaud+0x64>
   d3f6e:	5c f0 80 60 	slti $r15,$r1,#96
   d3f72:	e8 07       	beqzs8 d3f80 <DRV_Uart_SetBaud+0x40>
   d3f74:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d3f76:	92 22       	srli45 $r1,#2
   d3f78:	94 4a       	slli333 $r1,$r1,#2
   d3f7a:	58 10 80 01 	ori $r1,$r1,#0x1
   d3f7e:	d5 16       	j8 d3faa <DRV_Uart_SetBaud+0x6a>
   d3f80:	5c f0 80 a0 	slti $r15,$r1,#160
   d3f84:	e8 07       	beqzs8 d3f92 <DRV_Uart_SetBaud+0x52>
   d3f86:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d3f88:	92 22       	srli45 $r1,#2
   d3f8a:	94 4a       	slli333 $r1,$r1,#2
   d3f8c:	58 10 80 02 	ori $r1,$r1,#0x2
   d3f90:	d5 0d       	j8 d3faa <DRV_Uart_SetBaud+0x6a>
   d3f92:	5c f0 80 e0 	slti $r15,$r1,#224
   d3f96:	e8 05       	beqzs8 d3fa0 <DRV_Uart_SetBaud+0x60>
   d3f98:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d3f9a:	58 10 80 03 	ori $r1,$r1,#0x3
   d3f9e:	d5 06       	j8 d3faa <DRV_Uart_SetBaud+0x6a>
   d3fa0:	9c 91       	addi333 $r2,$r2,#1
   d3fa2:	96 90       	zeb33 $r2,$r2
   d3fa4:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d3fa6:	92 22       	srli45 $r1,#2
   d3fa8:	94 4a       	slli333 $r1,$r1,#2
   d3faa:	a8 41       	swi333 $r1,[$r0+#0x4]
   d3fac:	d5 2b       	j8 d4002 <DRV_Uart_SetBaud+0xc2>
   d3fae:	96 d8       	zeb33 $r3,$r3
   d3fb0:	46 00 02 11 	sethi $r0,#0x211
   d3fb4:	58 00 00 00 	ori $r0,$r0,#0x0
   d3fb8:	ae c7       	sbi333 $r3,[$r0+#0x7]
   d3fba:	96 90       	zeb33 $r2,$r2
   d3fbc:	5c f0 80 20 	slti $r15,$r1,#32
   d3fc0:	e8 02       	beqzs8 d3fc4 <DRV_Uart_SetBaud+0x84>
   d3fc2:	d5 1c       	j8 d3ffa <DRV_Uart_SetBaud+0xba>
   d3fc4:	5c f0 80 60 	slti $r15,$r1,#96
   d3fc8:	e8 07       	beqzs8 d3fd6 <DRV_Uart_SetBaud+0x96>
   d3fca:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d3fcc:	92 22       	srli45 $r1,#2
   d3fce:	94 4a       	slli333 $r1,$r1,#2
   d3fd0:	58 10 80 01 	ori $r1,$r1,#0x1
   d3fd4:	d5 16       	j8 d4000 <DRV_Uart_SetBaud+0xc0>
   d3fd6:	5c f0 80 a0 	slti $r15,$r1,#160
   d3fda:	e8 07       	beqzs8 d3fe8 <DRV_Uart_SetBaud+0xa8>
   d3fdc:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d3fde:	92 22       	srli45 $r1,#2
   d3fe0:	94 4a       	slli333 $r1,$r1,#2
   d3fe2:	58 10 80 02 	ori $r1,$r1,#0x2
   d3fe6:	d5 0d       	j8 d4000 <DRV_Uart_SetBaud+0xc0>
   d3fe8:	5c f0 80 e0 	slti $r15,$r1,#224
   d3fec:	e8 05       	beqzs8 d3ff6 <DRV_Uart_SetBaud+0xb6>
   d3fee:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d3ff0:	58 10 80 03 	ori $r1,$r1,#0x3
   d3ff4:	d5 06       	j8 d4000 <DRV_Uart_SetBaud+0xc0>
   d3ff6:	9c 91       	addi333 $r2,$r2,#1
   d3ff8:	96 90       	zeb33 $r2,$r2
   d3ffa:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d3ffc:	92 22       	srli45 $r1,#2
   d3ffe:	94 4a       	slli333 $r1,$r1,#2
   d4000:	a8 41       	swi333 $r1,[$r0+#0x4]
   d4002:	ae 86       	sbi333 $r2,[$r0+#0x6]
   d4004:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d4006 <DRV_Uart_Recidue>:
   d4006:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d4008:	84 2b       	movi55 $r1,#11
   d400a:	fe 0c       	mul33 $r0,$r1
   d400c:	3e 2f d0 d8 	addi.gp $r2,#-12072
   d4010:	98 42       	add333 $r1,$r0,$r2
   d4012:	8c 28       	addi45 $r1,#8
   d4014:	a6 89       	lbi333 $r2,[$r1+#0x1]
   d4016:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   d4018:	40 00 20 08 	slli $r0,$r0,#8
   d401c:	fe 17       	or33 $r0,$r2
   d401e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d4020 <DRV_Uart_IntDis>:
   d4020:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d4022:	c8 0c       	bnez38 $r0,d403a <DRV_Uart_IntDis+0x1a>
   d4024:	44 0f ff 7f 	movi $r0,#-129
   d4028:	64 f3 00 02 	mfsr $r15,$INT_MASK
   d402c:	40 f7 80 02 	and $r15,$r15,$r0
   d4030:	64 f3 00 03 	mtsr $r15,$INT_MASK
   d4034:	64 00 00 08 	dsb
   d4038:	d5 0d       	j8 d4052 <DRV_Uart_IntDis+0x32>
   d403a:	46 0f fb ff 	sethi $r0,#0xffbff
   d403e:	58 00 0f ff 	ori $r0,$r0,#0xfff
   d4042:	64 f3 00 02 	mfsr $r15,$INT_MASK
   d4046:	40 f7 80 02 	and $r15,$r15,$r0
   d404a:	64 f3 00 03 	mtsr $r15,$INT_MASK
   d404e:	64 00 00 08 	dsb
   d4052:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d4054 <DRV_Uart_IntEn>:
   d4054:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d4056:	c8 0c       	bnez38 $r0,d406e <DRV_Uart_IntEn+0x1a>
   d4058:	44 00 00 80 	movi $r0,#128
   d405c:	64 f3 00 02 	mfsr $r15,$INT_MASK
   d4060:	40 f7 80 04 	or $r15,$r15,$r0
   d4064:	64 f3 00 03 	mtsr $r15,$INT_MASK
   d4068:	64 00 00 08 	dsb
   d406c:	d5 0b       	j8 d4082 <DRV_Uart_IntEn+0x2e>
   d406e:	46 00 04 00 	sethi $r0,#0x400
   d4072:	64 f3 00 02 	mfsr $r15,$INT_MASK
   d4076:	40 f7 80 04 	or $r15,$r15,$r0
   d407a:	64 f3 00 03 	mtsr $r15,$INT_MASK
   d407e:	64 00 00 08 	dsb
   d4082:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d4084 <DRV_Uart_Flush>:
   d4084:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d4086:	c8 44       	bnez38 $r0,d410e <DRV_Uart_Flush+0x8a>
   d4088:	44 0f ff 7f 	movi $r0,#-129
   d408c:	64 f3 00 02 	mfsr $r15,$INT_MASK
   d4090:	40 f7 80 02 	and $r15,$r15,$r0
   d4094:	64 f3 00 03 	mtsr $r15,$INT_MASK
   d4098:	64 00 00 08 	dsb
   d409c:	46 00 02 10 	sethi $r0,#0x210
   d40a0:	58 00 00 00 	ori $r0,$r0,#0x0
   d40a4:	04 20 00 0b 	lwi $r2,[$r0+#0x2c]
   d40a8:	46 10 02 10 	sethi $r1,#0x210
   d40ac:	58 10 80 00 	ori $r1,$r1,#0x0
   d40b0:	96 b6       	bmski33 $r2,#0x6
   d40b2:	c2 f9       	beqz38 $r2,d40a4 <DRV_Uart_Flush+0x20>
   d40b4:	04 00 80 0a 	lwi $r0,[$r1+#0x28]
   d40b8:	96 0e       	bmski33 $r0,#0x1
   d40ba:	c0 1f       	beqz38 $r0,d40f8 <DRV_Uart_Flush+0x74>
   d40bc:	84 02       	movi55 $r0,#2
   d40be:	14 00 80 0a 	swi $r0,[$r1+#0x28]
   d40c2:	3e 0f d0 d8 	addi.gp $r0,#-12072
   d40c6:	b4 20       	lwi450 $r1,[$r0]
   d40c8:	84 5e       	movi55 $r2,#-2
   d40ca:	fe 56       	and33 $r1,$r2
   d40cc:	b6 20       	swi450 $r1,[$r0]
   d40ce:	3e 0f d0 ac 	addi.gp $r0,#-12116
   d40d2:	b4 20       	lwi450 $r1,[$r0]
   d40d4:	c1 03       	beqz38 $r1,d40da <DRV_Uart_Flush+0x56>
   d40d6:	84 00       	movi55 $r0,#0
   d40d8:	dd 21       	jral5 $r1
   d40da:	46 00 02 10 	sethi $r0,#0x210
   d40de:	58 00 00 00 	ori $r0,$r0,#0x0
   d40e2:	04 10 00 0b 	lwi $r1,[$r0+#0x2c]
   d40e6:	96 76       	bmski33 $r1,#0x6
   d40e8:	c9 03       	bnez38 $r1,d40ee <DRV_Uart_Flush+0x6a>
   d40ea:	84 01       	movi55 $r0,#1
   d40ec:	d5 05       	j8 d40f6 <DRV_Uart_Flush+0x72>
   d40ee:	04 00 00 0a 	lwi $r0,[$r0+#0x28]
   d40f2:	92 01       	srli45 $r0,#1
   d40f4:	96 04       	xlsb33 $r0,$r0
   d40f6:	96 00       	zeb33 $r0,$r0
   d40f8:	44 10 00 80 	movi $r1,#128
   d40fc:	64 f3 00 02 	mfsr $r15,$INT_MASK
   d4100:	40 f7 84 04 	or $r15,$r15,$r1
   d4104:	64 f3 00 03 	mtsr $r15,$INT_MASK
   d4108:	64 00 00 08 	dsb
   d410c:	d5 48       	j8 d419c <DRV_Uart_Flush+0x118>
   d410e:	46 0f fb ff 	sethi $r0,#0xffbff
   d4112:	58 00 0f ff 	ori $r0,$r0,#0xfff
   d4116:	64 f3 00 02 	mfsr $r15,$INT_MASK
   d411a:	40 f7 80 02 	and $r15,$r15,$r0
   d411e:	64 f3 00 03 	mtsr $r15,$INT_MASK
   d4122:	64 00 00 08 	dsb
   d4126:	46 00 02 11 	sethi $r0,#0x211
   d412a:	58 00 00 00 	ori $r0,$r0,#0x0
   d412e:	04 20 00 0b 	lwi $r2,[$r0+#0x2c]
   d4132:	46 10 02 11 	sethi $r1,#0x211
   d4136:	58 10 80 00 	ori $r1,$r1,#0x0
   d413a:	96 b6       	bmski33 $r2,#0x6
   d413c:	c2 f9       	beqz38 $r2,d412e <DRV_Uart_Flush+0xaa>
   d413e:	04 00 80 0a 	lwi $r0,[$r1+#0x28]
   d4142:	96 0e       	bmski33 $r0,#0x1
   d4144:	c0 22       	beqz38 $r0,d4188 <DRV_Uart_Flush+0x104>
   d4146:	84 02       	movi55 $r0,#2
   d4148:	14 00 80 0a 	swi $r0,[$r1+#0x28]
   d414c:	3e 0f d0 d8 	addi.gp $r0,#-12072
   d4150:	a0 42       	lwi333 $r1,[$r0+#0x8]
   d4152:	46 2f ef ff 	sethi $r2,#0xfefff
   d4156:	58 21 0f ff 	ori $r2,$r2,#0xfff
   d415a:	fe 56       	and33 $r1,$r2
   d415c:	a8 42       	swi333 $r1,[$r0+#0x8]
   d415e:	3e 0f d0 ac 	addi.gp $r0,#-12116
   d4162:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d4164:	c1 03       	beqz38 $r1,d416a <DRV_Uart_Flush+0xe6>
   d4166:	84 00       	movi55 $r0,#0
   d4168:	dd 21       	jral5 $r1
   d416a:	46 00 02 11 	sethi $r0,#0x211
   d416e:	58 00 00 00 	ori $r0,$r0,#0x0
   d4172:	04 10 00 0b 	lwi $r1,[$r0+#0x2c]
   d4176:	96 76       	bmski33 $r1,#0x6
   d4178:	c9 03       	bnez38 $r1,d417e <DRV_Uart_Flush+0xfa>
   d417a:	84 01       	movi55 $r0,#1
   d417c:	d5 05       	j8 d4186 <DRV_Uart_Flush+0x102>
   d417e:	04 00 00 0a 	lwi $r0,[$r0+#0x28]
   d4182:	92 01       	srli45 $r0,#1
   d4184:	96 04       	xlsb33 $r0,$r0
   d4186:	96 00       	zeb33 $r0,$r0
   d4188:	46 10 04 00 	sethi $r1,#0x400
   d418c:	64 f3 00 02 	mfsr $r15,$INT_MASK
   d4190:	40 f7 84 04 	or $r15,$r15,$r1
   d4194:	64 f3 00 03 	mtsr $r15,$INT_MASK
   d4198:	64 00 00 08 	dsb
   d419c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d419e <DRV_Uart_Write>:
   d419e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d41a0:	80 c0       	mov55 $r6,$r0
   d41a2:	84 0b       	movi55 $r0,#11
   d41a4:	3e 4f d0 d8 	addi.gp $r4,#-12072
   d41a8:	fe 34       	mul33 $r0,$r6
   d41aa:	98 04       	add333 $r0,$r0,$r4
   d41ac:	a7 00       	lbi333 $r4,[$r0+#0x0]
   d41ae:	96 91       	zeh33 $r2,$r2
   d41b0:	97 24       	xlsb33 $r4,$r4
   d41b2:	c4 03       	beqz38 $r4,d41b8 <DRV_Uart_Write+0x1a>
   d41b4:	84 00       	movi55 $r0,#0
   d41b6:	d5 57       	j8 d4264 <DRV_Uart_Write+0xc6>
   d41b8:	a7 00       	lbi333 $r4,[$r0+#0x0]
   d41ba:	3e 7f d0 b4 	addi.gp $r7,#-12108
   d41be:	58 42 00 01 	ori $r4,$r4,#0x1
   d41c2:	af 00       	sbi333 $r4,[$r0+#0x0]
   d41c4:	54 81 3f ff 	andi $r8,$r2,#0x3fff
   d41c8:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   d41cc:	c0 21       	beqz38 $r0,d420e <DRV_Uart_Write+0x70>
   d41ce:	49 ff 9f 3d 	jal c8048 <memcpy>
   d41d2:	ce 0f       	bnez38 $r6,d41f0 <DRV_Uart_Write+0x52>
   d41d4:	b4 47       	lwi450 $r2,[$r7]
   d41d6:	40 21 30 08 	slli $r2,$r2,#12
   d41da:	92 4c       	srli45 $r2,#12
   d41dc:	46 00 02 10 	sethi $r0,#0x210
   d41e0:	58 00 00 00 	ori $r0,$r0,#0x0
   d41e4:	04 10 00 08 	lwi $r1,[$r0+#0x20]
   d41e8:	92 34       	srli45 $r1,#20
   d41ea:	40 10 d0 08 	slli $r1,$r1,#20
   d41ee:	d5 1d       	j8 d4228 <DRV_Uart_Write+0x8a>
   d41f0:	46 00 02 11 	sethi $r0,#0x211
   d41f4:	58 00 00 00 	ori $r0,$r0,#0x0
   d41f8:	38 23 9a 02 	lw $r2,[$r7+($r6<<#0x2)]
   d41fc:	04 10 00 08 	lwi $r1,[$r0+#0x20]
   d4200:	40 21 30 08 	slli $r2,$r2,#12
   d4204:	92 4c       	srli45 $r2,#12
   d4206:	92 34       	srli45 $r1,#20
   d4208:	40 10 d0 08 	slli $r1,$r1,#20
   d420c:	d5 1b       	j8 d4242 <DRV_Uart_Write+0xa4>
   d420e:	40 10 b0 08 	slli $r1,$r1,#12
   d4212:	92 2c       	srli45 $r1,#12
   d4214:	ce 0e       	bnez38 $r6,d4230 <DRV_Uart_Write+0x92>
   d4216:	46 00 02 10 	sethi $r0,#0x210
   d421a:	58 00 00 00 	ori $r0,$r0,#0x0
   d421e:	04 20 00 08 	lwi $r2,[$r0+#0x20]
   d4222:	92 54       	srli45 $r2,#20
   d4224:	40 21 50 08 	slli $r2,$r2,#20
   d4228:	fe 57       	or33 $r1,$r2
   d422a:	14 10 00 08 	swi $r1,[$r0+#0x20]
   d422e:	d5 1c       	j8 d4266 <DRV_Uart_Write+0xc8>
   d4230:	46 00 02 11 	sethi $r0,#0x211
   d4234:	58 00 00 00 	ori $r0,$r0,#0x0
   d4238:	04 20 00 08 	lwi $r2,[$r0+#0x20]
   d423c:	92 54       	srli45 $r2,#20
   d423e:	40 21 50 08 	slli $r2,$r2,#20
   d4242:	fe 57       	or33 $r1,$r2
   d4244:	14 10 00 08 	swi $r1,[$r0+#0x20]
   d4248:	46 00 02 11 	sethi $r0,#0x211
   d424c:	58 00 00 00 	ori $r0,$r0,#0x0
   d4250:	04 10 00 09 	lwi $r1,[$r0+#0x24]
   d4254:	92 2e       	srli45 $r1,#14
   d4256:	40 10 b8 08 	slli $r1,$r1,#14
   d425a:	40 80 a0 04 	or $r8,$r1,$r8
   d425e:	14 80 00 09 	swi $r8,[$r0+#0x24]
   d4262:	84 01       	movi55 $r0,#1
   d4264:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d4266:	46 00 02 10 	sethi $r0,#0x210
   d426a:	58 00 00 00 	ori $r0,$r0,#0x0
   d426e:	04 10 00 09 	lwi $r1,[$r0+#0x24]
   d4272:	92 2e       	srli45 $r1,#14
   d4274:	40 10 b8 08 	slli $r1,$r1,#14
   d4278:	d5 f1       	j8 d425a <DRV_Uart_Write+0xbc>

000d427a <DRV_Uart_Read>:
   d427a:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d427c:	40 81 00 13 	zeh $r8,$r2
   d4280:	80 c0       	mov55 $r6,$r0
   d4282:	81 41       	mov55 $r10,$r1
   d4284:	4e 82 00 7c 	beqz $r8,d437c <DRV_Uart_Read+0x102>
   d4288:	84 4b       	movi55 $r2,#11
   d428a:	fe 84       	mul33 $r2,$r0
   d428c:	3e 0f d0 d8 	addi.gp $r0,#-12072
   d4290:	98 90       	add333 $r2,$r2,$r0
   d4292:	a7 15       	lbi333 $r4,[$r2+#0x5]
   d4294:	a6 d6       	lbi333 $r3,[$r2+#0x6]
   d4296:	a6 17       	lbi333 $r0,[$r2+#0x7]
   d4298:	40 31 a0 08 	slli $r3,$r3,#8
   d429c:	00 11 00 08 	lbi $r1,[$r2+#0x8]
   d42a0:	fe e7       	or33 $r3,$r4
   d42a2:	40 00 40 08 	slli $r0,$r0,#16
   d42a6:	fe 1f       	or33 $r0,$r3
   d42a8:	40 10 e0 08 	slli $r1,$r1,#24
   d42ac:	fe 47       	or33 $r1,$r0
   d42ae:	3e 9f d0 bc 	addi.gp $r9,#-12100
   d42b2:	3e 0f d0 c4 	addi.gp $r0,#-12092
   d42b6:	38 00 19 01 	lh $r0,[$r0+($r6<<#0x1)]
   d42ba:	39 c4 9a 02 	lw $fp,[$r9+($r6<<#0x2)]
   d42be:	40 70 a0 00 	add $r7,$r1,$r8
   d42c2:	41 ce 00 00 	add $fp,$fp,$r0
   d42c6:	e2 fc       	slt45 $r7,$fp
   d42c8:	e9 17       	bnezs8 d42f6 <DRV_Uart_Read+0x7c>
   d42ca:	41 ce 04 01 	sub $fp,$fp,$r1
   d42ce:	41 ce 00 13 	zeh $fp,$fp
   d42d2:	80 5c       	mov55 $r2,$fp
   d42d4:	80 0a       	mov55 $r0,$r10
   d42d6:	40 74 70 01 	sub $r7,$r8,$fp
   d42da:	49 ff 9e b7 	jal c8048 <memcpy>
   d42de:	97 f9       	zeh33 $r7,$r7
   d42e0:	38 14 9a 02 	lw $r1,[$r9+($r6<<#0x2)]
   d42e4:	80 47       	mov55 $r2,$r7
   d42e6:	40 05 70 00 	add $r0,$r10,$fp
   d42ea:	49 ff 9e af 	jal c8048 <memcpy>
   d42ee:	38 04 9a 02 	lw $r0,[$r9+($r6<<#0x2)]
   d42f2:	99 c7       	add333 $r7,$r0,$r7
   d42f4:	d5 05       	j8 d42fe <DRV_Uart_Read+0x84>
   d42f6:	80 0a       	mov55 $r0,$r10
   d42f8:	80 48       	mov55 $r2,$r8
   d42fa:	49 ff 9e a7 	jal c8048 <memcpy>
   d42fe:	84 2b       	movi55 $r1,#11
   d4300:	3e 2f d0 d8 	addi.gp $r2,#-12072
   d4304:	fe 74       	mul33 $r1,$r6
   d4306:	98 4a       	add333 $r1,$r1,$r2
   d4308:	96 38       	zeb33 $r0,$r7
   d430a:	a6 8d       	lbi333 $r2,[$r1+#0x5]
   d430c:	ae 0d       	sbi333 $r0,[$r1+#0x5]
   d430e:	40 03 a0 09 	srli $r0,$r7,#8
   d4312:	96 00       	zeb33 $r0,$r0
   d4314:	a6 8e       	lbi333 $r2,[$r1+#0x6]
   d4316:	ae 0e       	sbi333 $r0,[$r1+#0x6]
   d4318:	40 03 c0 09 	srli $r0,$r7,#16
   d431c:	96 00       	zeb33 $r0,$r0
   d431e:	a6 8f       	lbi333 $r2,[$r1+#0x7]
   d4320:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   d4322:	40 03 e0 09 	srli $r0,$r7,#24
   d4326:	00 20 80 08 	lbi $r2,[$r1+#0x8]
   d432a:	10 00 80 08 	sbi $r0,[$r1+#0x8]
   d432e:	8c 28       	addi45 $r1,#8
   d4330:	a6 89       	lbi333 $r2,[$r1+#0x1]
   d4332:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   d4334:	40 00 20 08 	slli $r0,$r0,#8
   d4338:	fe 17       	or33 $r0,$r2
   d433a:	40 80 20 01 	sub $r8,$r0,$r8
   d433e:	40 84 00 13 	zeh $r8,$r8
   d4342:	54 04 00 ff 	andi $r0,$r8,#0xff
   d4346:	a6 89       	lbi333 $r2,[$r1+#0x1]
   d4348:	ae 09       	sbi333 $r0,[$r1+#0x1]
   d434a:	93 08       	srli45 $r8,#8
   d434c:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   d434e:	10 80 80 02 	sbi $r8,[$r1+#0x2]
   d4352:	40 73 b0 08 	slli $r7,$r7,#12
   d4356:	92 ec       	srli45 $r7,#12
   d4358:	ce 06       	bnez38 $r6,d4364 <DRV_Uart_Read+0xea>
   d435a:	46 00 02 10 	sethi $r0,#0x210
   d435e:	58 00 00 00 	ori $r0,$r0,#0x0
   d4362:	d5 05       	j8 d436c <DRV_Uart_Read+0xf2>
   d4364:	46 00 02 11 	sethi $r0,#0x211
   d4368:	58 00 00 00 	ori $r0,$r0,#0x0
   d436c:	04 10 00 0e 	lwi $r1,[$r0+#0x38]
   d4370:	92 34       	srli45 $r1,#20
   d4372:	40 10 d0 08 	slli $r1,$r1,#20
   d4376:	ff cf       	or33 $r7,$r1
   d4378:	14 70 00 0e 	swi $r7,[$r0+#0x38]
   d437c:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d437e <DRV_Uart_Drop>:
   d437e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d4380:	80 e0       	mov55 $r7,$r0
   d4382:	84 0b       	movi55 $r0,#11
   d4384:	40 80 80 13 	zeh $r8,$r1
   d4388:	fe 3c       	mul33 $r0,$r7
   d438a:	3e 1f d0 d8 	addi.gp $r1,#-12072
   d438e:	98 01       	add333 $r0,$r0,$r1
   d4390:	8c 08       	addi45 $r0,#8
   d4392:	a6 41       	lbi333 $r1,[$r0+#0x1]
   d4394:	a6 02       	lbi333 $r0,[$r0+#0x2]
   d4396:	40 00 20 08 	slli $r0,$r0,#8
   d439a:	fe 0f       	or33 $r0,$r1
   d439c:	e2 08       	slt45 $r0,$r8
   d439e:	e8 07       	beqzs8 d43ac <DRV_Uart_Drop+0x2e>
   d43a0:	44 00 02 4d 	movi $r0,#589
   d43a4:	3e 1d 57 d8 	addi.gp $r1,#-174120
   d43a8:	49 ff e6 e3 	jal d116e <assert_ab_callback>
   d43ac:	84 0b       	movi55 $r0,#11
   d43ae:	3e 2f d0 d8 	addi.gp $r2,#-12072
   d43b2:	fe 3c       	mul33 $r0,$r7
   d43b4:	98 02       	add333 $r0,$r0,$r2
   d43b6:	a6 c5       	lbi333 $r3,[$r0+#0x5]
   d43b8:	a6 86       	lbi333 $r2,[$r0+#0x6]
   d43ba:	a6 47       	lbi333 $r1,[$r0+#0x7]
   d43bc:	00 60 00 08 	lbi $r6,[$r0+#0x8]
   d43c0:	40 21 20 08 	slli $r2,$r2,#8
   d43c4:	fe 9f       	or33 $r2,$r3
   d43c6:	40 10 c0 08 	slli $r1,$r1,#16
   d43ca:	fe 57       	or33 $r1,$r2
   d43cc:	3e 0f d0 c4 	addi.gp $r0,#-12092
   d43d0:	40 63 60 08 	slli $r6,$r6,#24
   d43d4:	ff 8f       	or33 $r6,$r1
   d43d6:	38 10 1d 01 	lh $r1,[$r0+($r7<<#0x1)]
   d43da:	3e 0f d0 bc 	addi.gp $r0,#-12100
   d43de:	38 00 1e 02 	lw $r0,[$r0+($r7<<#0x2)]
   d43e2:	88 c8       	add45 $r6,$r8
   d43e4:	98 01       	add333 $r0,$r0,$r1
   d43e6:	e2 c0       	slt45 $r6,$r0
   d43e8:	e9 0a       	bnezs8 d43fc <DRV_Uart_Drop+0x7e>
   d43ea:	9b b1       	sub333 $r6,$r6,$r1
   d43ec:	e2 c0       	slt45 $r6,$r0
   d43ee:	e9 07       	bnezs8 d43fc <DRV_Uart_Drop+0x7e>
   d43f0:	44 00 02 57 	movi $r0,#599
   d43f4:	3e 1d 57 d8 	addi.gp $r1,#-174120
   d43f8:	49 ff e6 bb 	jal d116e <assert_ab_callback>
   d43fc:	84 4b       	movi55 $r2,#11
   d43fe:	3e 0f d0 d8 	addi.gp $r0,#-12072
   d4402:	fe bc       	mul33 $r2,$r7
   d4404:	98 90       	add333 $r2,$r2,$r0
   d4406:	96 30       	zeb33 $r0,$r6
   d4408:	a6 55       	lbi333 $r1,[$r2+#0x5]
   d440a:	ae 15       	sbi333 $r0,[$r2+#0x5]
   d440c:	40 03 20 09 	srli $r0,$r6,#8
   d4410:	96 00       	zeb33 $r0,$r0
   d4412:	a6 56       	lbi333 $r1,[$r2+#0x6]
   d4414:	ae 16       	sbi333 $r0,[$r2+#0x6]
   d4416:	40 03 40 09 	srli $r0,$r6,#16
   d441a:	96 00       	zeb33 $r0,$r0
   d441c:	a6 57       	lbi333 $r1,[$r2+#0x7]
   d441e:	ae 17       	sbi333 $r0,[$r2+#0x7]
   d4420:	40 03 60 09 	srli $r0,$r6,#24
   d4424:	00 11 00 08 	lbi $r1,[$r2+#0x8]
   d4428:	10 01 00 08 	sbi $r0,[$r2+#0x8]
   d442c:	8c 48       	addi45 $r2,#8
   d442e:	a6 51       	lbi333 $r1,[$r2+#0x1]
   d4430:	a6 12       	lbi333 $r0,[$r2+#0x2]
   d4432:	40 00 20 08 	slli $r0,$r0,#8
   d4436:	fe 0f       	or33 $r0,$r1
   d4438:	40 80 20 01 	sub $r8,$r0,$r8
   d443c:	40 84 00 13 	zeh $r8,$r8
   d4440:	54 04 00 ff 	andi $r0,$r8,#0xff
   d4444:	a6 51       	lbi333 $r1,[$r2+#0x1]
   d4446:	ae 11       	sbi333 $r0,[$r2+#0x1]
   d4448:	93 08       	srli45 $r8,#8
   d444a:	a6 12       	lbi333 $r0,[$r2+#0x2]
   d444c:	40 63 30 08 	slli $r6,$r6,#12
   d4450:	92 cc       	srli45 $r6,#12
   d4452:	10 81 00 02 	sbi $r8,[$r2+#0x2]
   d4456:	cf 06       	bnez38 $r7,d4462 <DRV_Uart_Drop+0xe4>
   d4458:	46 00 02 10 	sethi $r0,#0x210
   d445c:	58 00 00 00 	ori $r0,$r0,#0x0
   d4460:	d5 05       	j8 d446a <DRV_Uart_Drop+0xec>
   d4462:	46 00 02 11 	sethi $r0,#0x211
   d4466:	58 00 00 00 	ori $r0,$r0,#0x0
   d446a:	04 10 00 0e 	lwi $r1,[$r0+#0x38]
   d446e:	92 34       	srli45 $r1,#20
   d4470:	40 10 d0 08 	slli $r1,$r1,#20
   d4474:	ff 8f       	or33 $r6,$r1
   d4476:	14 60 00 0e 	swi $r6,[$r0+#0x38]
   d447a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d447c <UART2_RxDmaHandler>:
   d447c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d447e:	84 24       	movi55 $r1,#4
   d4480:	46 f0 02 11 	sethi $r15,#0x211
   d4484:	14 17 80 0a 	swi $r1,[$r15+#0x28]
   d4488:	46 f0 02 11 	sethi $r15,#0x211
   d448c:	04 07 80 0d 	lwi $r0,[$r15+#0x34]
   d4490:	40 00 30 08 	slli $r0,$r0,#12
   d4494:	92 0c       	srli45 $r0,#12
   d4496:	3e 1f d0 d8 	addi.gp $r1,#-12072
   d449a:	a0 8b       	lwi333 $r2,[$r1+#0xc]
   d449c:	e2 40       	slt45 $r2,$r0
   d449e:	e8 04       	beqzs8 d44a6 <UART2_RxDmaHandler+0x2a>
   d44a0:	a0 8b       	lwi333 $r2,[$r1+#0xc]
   d44a2:	9a 82       	sub333 $r2,$r0,$r2
   d44a4:	d5 09       	j8 d44b6 <UART2_RxDmaHandler+0x3a>
   d44a6:	a0 8b       	lwi333 $r2,[$r1+#0xc]
   d44a8:	e2 02       	slt45 $r0,$r2
   d44aa:	e8 1f       	beqzs8 d44e8 <UART2_RxDmaHandler+0x6c>
   d44ac:	3c 23 e8 63 	lhi.gp $r2,[+#-12090]
   d44b0:	a0 4b       	lwi333 $r1,[$r1+#0xc]
   d44b2:	98 90       	add333 $r2,$r2,$r0
   d44b4:	9a 91       	sub333 $r2,$r2,$r1
   d44b6:	2e 17 d0 d5 	lbi.gp $r1,[+#-12075]
   d44ba:	c9 07       	bnez38 $r1,d44c8 <UART2_RxDmaHandler+0x4c>
   d44bc:	3c 33 e8 76 	lhi.gp $r3,[+#-12052]
   d44c0:	98 93       	add333 $r2,$r2,$r3
   d44c2:	96 91       	zeh33 $r2,$r2
   d44c4:	3c 2b e8 76 	shi.gp $r2,[+#-12052]
   d44c8:	3e 1f d0 d8 	addi.gp $r1,#-12072
   d44cc:	8c 28       	addi45 $r1,#8
   d44ce:	a8 09       	swi333 $r0,[$r1+#0x4]
   d44d0:	3c 2d f4 34 	lwi.gp $r2,[+#-12080]
   d44d4:	c2 06       	beqz38 $r2,d44e0 <UART2_RxDmaHandler+0x64>
   d44d6:	a4 0e       	lhi333 $r0,[$r1+#0xc]
   d44d8:	c0 08       	beqz38 $r0,d44e8 <UART2_RxDmaHandler+0x6c>
   d44da:	a4 0e       	lhi333 $r0,[$r1+#0xc]
   d44dc:	dd 22       	jral5 $r2
   d44de:	d5 05       	j8 d44e8 <UART2_RxDmaHandler+0x6c>
   d44e0:	a4 4e       	lhi333 $r1,[$r1+#0xc]
   d44e2:	84 01       	movi55 $r0,#1
   d44e4:	49 ff ff 4d 	jal d437e <DRV_Uart_Drop>
   d44e8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d44ea <UART2InterruptHandler>:
   d44ea:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d44ec:	46 10 02 11 	sethi $r1,#0x211
   d44f0:	58 10 80 00 	ori $r1,$r1,#0x0
   d44f4:	8c 30       	addi45 $r1,#16
   d44f6:	a0 0e       	lwi333 $r0,[$r1+#0x18]
   d44f8:	54 00 00 0e 	andi $r0,$r0,#0xe
   d44fc:	5a 00 04 16 	beqc $r0,#4,d4528 <UART2InterruptHandler+0x3e>
   d4500:	e6 05       	slti45 $r0,#5
   d4502:	e8 04       	beqzs8 d450a <UART2InterruptHandler+0x20>
   d4504:	5a 08 02 24 	bnec $r0,#2,d454c <UART2InterruptHandler+0x62>
   d4508:	d5 13       	j8 d452e <UART2InterruptHandler+0x44>
   d450a:	5a 00 06 05 	beqc $r0,#6,d4514 <UART2InterruptHandler+0x2a>
   d450e:	5a 08 0c 1f 	bnec $r0,#12,d454c <UART2InterruptHandler+0x62>
   d4512:	d5 0b       	j8 d4528 <UART2InterruptHandler+0x3e>
   d4514:	a0 0f       	lwi333 $r0,[$r1+#0x1c]
   d4516:	54 20 00 1e 	andi $r2,$r0,#0x1e
   d451a:	96 26       	bmski33 $r0,#0x4
   d451c:	c8 18       	bnez38 $r0,d454c <UART2InterruptHandler+0x62>
   d451e:	84 61       	movi55 $r3,#1
   d4520:	3e 37 d0 d5 	sbi.gp $r3,[+#-12075]
   d4524:	a8 8f       	swi333 $r2,[$r1+#0x1c]
   d4526:	d5 13       	j8 d454c <UART2InterruptHandler+0x62>
   d4528:	49 ff ff aa 	jal d447c <UART2_RxDmaHandler>
   d452c:	d5 10       	j8 d454c <UART2InterruptHandler+0x62>
   d452e:	a8 0e       	swi333 $r0,[$r1+#0x18]
   d4530:	3c 1d f4 38 	lwi.gp $r1,[+#-12064]
   d4534:	46 2f ef ff 	sethi $r2,#0xfefff
   d4538:	58 21 0f ff 	ori $r2,$r2,#0xfff
   d453c:	fe 56       	and33 $r1,$r2
   d453e:	3c 1f f4 38 	swi.gp $r1,[+#-12064]
   d4542:	3c 1d f4 2c 	lwi.gp $r1,[+#-12112]
   d4546:	c1 03       	beqz38 $r1,d454c <UART2InterruptHandler+0x62>
   d4548:	84 01       	movi55 $r0,#1
   d454a:	dd 21       	jral5 $r1
   d454c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d454e <UART_RxDmaHandler>:
   d454e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d4550:	84 24       	movi55 $r1,#4
   d4552:	46 f0 02 10 	sethi $r15,#0x210
   d4556:	14 17 80 0a 	swi $r1,[$r15+#0x28]
   d455a:	46 f0 02 10 	sethi $r15,#0x210
   d455e:	04 27 80 0d 	lwi $r2,[$r15+#0x34]
   d4562:	40 21 30 08 	slli $r2,$r2,#12
   d4566:	92 4c       	srli45 $r2,#12
   d4568:	3e 0f d0 d8 	addi.gp $r0,#-12072
   d456c:	b4 60       	lwi450 $r3,[$r0]
   d456e:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d4570:	92 68       	srli45 $r3,#8
   d4572:	40 10 e0 08 	slli $r1,$r1,#24
   d4576:	fe 5f       	or33 $r1,$r3
   d4578:	e2 22       	slt45 $r1,$r2
   d457a:	e8 09       	beqzs8 d458c <UART_RxDmaHandler+0x3e>
   d457c:	b4 60       	lwi450 $r3,[$r0]
   d457e:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d4580:	92 68       	srli45 $r3,#8
   d4582:	40 10 e0 08 	slli $r1,$r1,#24
   d4586:	fe 5f       	or33 $r1,$r3
   d4588:	9a 51       	sub333 $r1,$r2,$r1
   d458a:	d5 13       	j8 d45b0 <UART_RxDmaHandler+0x62>
   d458c:	b4 60       	lwi450 $r3,[$r0]
   d458e:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d4590:	92 68       	srli45 $r3,#8
   d4592:	40 10 e0 08 	slli $r1,$r1,#24
   d4596:	fe 5f       	or33 $r1,$r3
   d4598:	e2 41       	slt45 $r2,$r1
   d459a:	e8 3d       	beqzs8 d4614 <UART_RxDmaHandler+0xc6>
   d459c:	b4 60       	lwi450 $r3,[$r0]
   d459e:	a0 01       	lwi333 $r0,[$r0+#0x4]
   d45a0:	3c 13 e8 62 	lhi.gp $r1,[+#-12092]
   d45a4:	92 68       	srli45 $r3,#8
   d45a6:	40 00 60 08 	slli $r0,$r0,#24
   d45aa:	fe 1f       	or33 $r0,$r3
   d45ac:	98 4a       	add333 $r1,$r1,$r2
   d45ae:	9a 48       	sub333 $r1,$r1,$r0
   d45b0:	2e 07 d0 d4 	lbi.gp $r0,[+#-12076]
   d45b4:	c8 11       	bnez38 $r0,d45d6 <UART_RxDmaHandler+0x88>
   d45b6:	3e 0f d0 d8 	addi.gp $r0,#-12072
   d45ba:	a0 c2       	lwi333 $r3,[$r0+#0x8]
   d45bc:	46 4f f0 00 	sethi $r4,#0xff000
   d45c0:	92 68       	srli45 $r3,#8
   d45c2:	98 d9       	add333 $r3,$r3,$r1
   d45c4:	a0 42       	lwi333 $r1,[$r0+#0x8]
   d45c6:	96 d9       	zeh33 $r3,$r3
   d45c8:	58 42 00 ff 	ori $r4,$r4,#0xff
   d45cc:	40 31 a0 08 	slli $r3,$r3,#8
   d45d0:	fe 66       	and33 $r1,$r4
   d45d2:	fe 5f       	or33 $r1,$r3
   d45d4:	a8 42       	swi333 $r1,[$r0+#0x8]
   d45d6:	3e 1f d0 d8 	addi.gp $r1,#-12072
   d45da:	b4 01       	lwi450 $r0,[$r1]
   d45dc:	40 21 20 08 	slli $r2,$r2,#8
   d45e0:	96 00       	zeb33 $r0,$r0
   d45e2:	fe 87       	or33 $r2,$r0
   d45e4:	b6 41       	swi450 $r2,[$r1]
   d45e6:	a0 09       	lwi333 $r0,[$r1+#0x4]
   d45e8:	92 08       	srli45 $r0,#8
   d45ea:	40 00 20 08 	slli $r0,$r0,#8
   d45ee:	a8 09       	swi333 $r0,[$r1+#0x4]
   d45f0:	3c 2d f4 33 	lwi.gp $r2,[+#-12084]
   d45f4:	c2 0a       	beqz38 $r2,d4608 <UART_RxDmaHandler+0xba>
   d45f6:	a0 0a       	lwi333 $r0,[$r1+#0x8]
   d45f8:	92 08       	srli45 $r0,#8
   d45fa:	96 01       	zeh33 $r0,$r0
   d45fc:	c0 0c       	beqz38 $r0,d4614 <UART_RxDmaHandler+0xc6>
   d45fe:	a0 0a       	lwi333 $r0,[$r1+#0x8]
   d4600:	92 08       	srli45 $r0,#8
   d4602:	96 01       	zeh33 $r0,$r0
   d4604:	dd 22       	jral5 $r2
   d4606:	d5 07       	j8 d4614 <UART_RxDmaHandler+0xc6>
   d4608:	a0 4a       	lwi333 $r1,[$r1+#0x8]
   d460a:	80 02       	mov55 $r0,$r2
   d460c:	92 28       	srli45 $r1,#8
   d460e:	96 49       	zeh33 $r1,$r1
   d4610:	49 ff fe b7 	jal d437e <DRV_Uart_Drop>
   d4614:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d4616 <UARTInterruptHandler>:
   d4616:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d4618:	46 10 02 10 	sethi $r1,#0x210
   d461c:	58 10 80 00 	ori $r1,$r1,#0x0
   d4620:	8c 30       	addi45 $r1,#16
   d4622:	a0 0e       	lwi333 $r0,[$r1+#0x18]
   d4624:	54 00 00 0e 	andi $r0,$r0,#0xe
   d4628:	5a 00 04 16 	beqc $r0,#4,d4654 <UARTInterruptHandler+0x3e>
   d462c:	e6 05       	slti45 $r0,#5
   d462e:	e8 04       	beqzs8 d4636 <UARTInterruptHandler+0x20>
   d4630:	5a 08 02 23 	bnec $r0,#2,d4676 <UARTInterruptHandler+0x60>
   d4634:	d5 13       	j8 d465a <UARTInterruptHandler+0x44>
   d4636:	5a 00 06 05 	beqc $r0,#6,d4640 <UARTInterruptHandler+0x2a>
   d463a:	5a 08 0c 1e 	bnec $r0,#12,d4676 <UARTInterruptHandler+0x60>
   d463e:	d5 0b       	j8 d4654 <UARTInterruptHandler+0x3e>
   d4640:	a0 0f       	lwi333 $r0,[$r1+#0x1c]
   d4642:	54 20 00 1e 	andi $r2,$r0,#0x1e
   d4646:	96 26       	bmski33 $r0,#0x4
   d4648:	c8 17       	bnez38 $r0,d4676 <UARTInterruptHandler+0x60>
   d464a:	84 61       	movi55 $r3,#1
   d464c:	3e 37 d0 d4 	sbi.gp $r3,[+#-12076]
   d4650:	a8 8f       	swi333 $r2,[$r1+#0x1c]
   d4652:	d5 12       	j8 d4676 <UARTInterruptHandler+0x60>
   d4654:	49 ff ff 7d 	jal d454e <UART_RxDmaHandler>
   d4658:	d5 0f       	j8 d4676 <UARTInterruptHandler+0x60>
   d465a:	a8 0e       	swi333 $r0,[$r1+#0x18]
   d465c:	46 00 01 01 	sethi $r0,#0x101
   d4660:	3c 1d f4 36 	lwi.gp $r1,[+#-12072]
   d4664:	92 21       	srli45 $r1,#1
   d4666:	94 49       	slli333 $r1,$r1,#1
   d4668:	3c 1f f4 36 	swi.gp $r1,[+#-12072]
   d466c:	3c 1d f4 2b 	lwi.gp $r1,[+#-12116]
   d4670:	c1 03       	beqz38 $r1,d4676 <UARTInterruptHandler+0x60>
   d4672:	84 00       	movi55 $r0,#0
   d4674:	dd 21       	jral5 $r1
   d4676:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d4678 <DRV_Uart_Init>:
   d4678:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d467a:	81 00       	mov55 $r8,$r0
   d467c:	80 e1       	mov55 $r7,$r1
   d467e:	81 22       	mov55 $r9,$r2
   d4680:	c8 0a       	bnez38 $r0,d4694 <DRV_Uart_Init+0x1c>
   d4682:	46 00 02 10 	sethi $r0,#0x210
   d4686:	58 00 00 00 	ori $r0,$r0,#0x0
   d468a:	04 10 00 11 	lwi $r1,[$r0+#0x44]
   d468e:	92 21       	srli45 $r1,#1
   d4690:	94 49       	slli333 $r1,$r1,#1
   d4692:	d5 09       	j8 d46a4 <DRV_Uart_Init+0x2c>
   d4694:	46 00 02 11 	sethi $r0,#0x211
   d4698:	58 00 00 00 	ori $r0,$r0,#0x0
   d469c:	04 10 00 11 	lwi $r1,[$r0+#0x44]
   d46a0:	92 21       	srli45 $r1,#1
   d46a2:	94 49       	slli333 $r1,$r1,#1
   d46a4:	84 4b       	movi55 $r2,#11
   d46a6:	14 10 00 11 	swi $r1,[$r0+#0x44]
   d46aa:	42 64 08 24 	mul $r6,$r8,$r2
   d46ae:	3e 0f d0 d8 	addi.gp $r0,#-12072
   d46b2:	99 b0       	add333 $r6,$r6,$r0
   d46b4:	84 20       	movi55 $r1,#0
   d46b6:	80 06       	mov55 $r0,$r6
   d46b8:	49 ff 9c e8 	jal c8088 <memset>
   d46bc:	04 04 80 01 	lwi $r0,[$r9+#0x4]
   d46c0:	02 24 80 05 	lhi $r2,[$r9+#0xa]
   d46c4:	3e af d0 bc 	addi.gp $r10,#-12100
   d46c8:	38 05 22 0a 	sw $r0,[$r10+($r8<<#0x2)]
   d46cc:	3e 1f d0 c4 	addi.gp $r1,#-12092
   d46d0:	38 20 a1 09 	sh $r2,[$r1+($r8<<#0x1)]
   d46d4:	b4 69       	lwi450 $r3,[$r9]
   d46d6:	02 24 80 04 	lhi $r2,[$r9+#0x8]
   d46da:	3e 1f d0 b4 	addi.gp $r1,#-12108
   d46de:	38 30 a2 0a 	sw $r3,[$r1+($r8<<#0x2)]
   d46e2:	04 34 80 03 	lwi $r3,[$r9+#0xc]
   d46e6:	3e 1f d0 c8 	addi.gp $r1,#-12088
   d46ea:	38 20 a1 09 	sh $r2,[$r1+($r8<<#0x1)]
   d46ee:	04 24 80 04 	lwi $r2,[$r9+#0x10]
   d46f2:	3e 1f d0 cc 	addi.gp $r1,#-12084
   d46f6:	38 30 a2 0a 	sw $r3,[$r1+($r8<<#0x2)]
   d46fa:	3e 1f d0 ac 	addi.gp $r1,#-12116
   d46fe:	38 20 a2 0a 	sw $r2,[$r1+($r8<<#0x2)]
   d4702:	96 40       	zeb33 $r1,$r0
   d4704:	a6 b5       	lbi333 $r2,[$r6+#0x5]
   d4706:	ae 75       	sbi333 $r1,[$r6+#0x5]
   d4708:	40 20 20 09 	srli $r2,$r0,#8
   d470c:	96 90       	zeb33 $r2,$r2
   d470e:	a6 f6       	lbi333 $r3,[$r6+#0x6]
   d4710:	ae b6       	sbi333 $r2,[$r6+#0x6]
   d4712:	40 20 40 09 	srli $r2,$r0,#16
   d4716:	96 90       	zeb33 $r2,$r2
   d4718:	a6 f7       	lbi333 $r3,[$r6+#0x7]
   d471a:	ae b7       	sbi333 $r2,[$r6+#0x7]
   d471c:	40 20 60 09 	srli $r2,$r0,#24
   d4720:	00 33 00 08 	lbi $r3,[$r6+#0x8]
   d4724:	10 23 00 08 	sbi $r2,[$r6+#0x8]
   d4728:	96 01       	zeh33 $r0,$r0
   d472a:	a6 b1       	lbi333 $r2,[$r6+#0x1]
   d472c:	ae 71       	sbi333 $r1,[$r6+#0x1]
   d472e:	40 10 20 09 	srli $r1,$r0,#8
   d4732:	a6 b2       	lbi333 $r2,[$r6+#0x2]
   d4734:	ae 72       	sbi333 $r1,[$r6+#0x2]
   d4736:	92 18       	srli45 $r0,#24
   d4738:	a6 73       	lbi333 $r1,[$r6+#0x3]
   d473a:	84 20       	movi55 $r1,#0
   d473c:	ae 73       	sbi333 $r1,[$r6+#0x3]
   d473e:	a6 74       	lbi333 $r1,[$r6+#0x4]
   d4740:	ae 34       	sbi333 $r0,[$r6+#0x4]
   d4742:	4e 83 00 3c 	bnez $r8,d47ba <DRV_Uart_Init+0x142>
   d4746:	b4 27       	lwi450 $r1,[$r7]
   d4748:	80 08       	mov55 $r0,$r8
   d474a:	49 ff fb fb 	jal d3f40 <DRV_Uart_SetBaud>
   d474e:	a6 3e       	lbi333 $r0,[$r7+#0x6]
   d4750:	46 60 02 10 	sethi $r6,#0x210
   d4754:	58 63 00 00 	ori $r6,$r6,#0x0
   d4758:	a8 32       	swi333 $r0,[$r6+#0x8]
   d475a:	b4 0a       	lwi450 $r0,[$r10]
   d475c:	40 00 30 08 	slli $r0,$r0,#12
   d4760:	92 0c       	srli45 $r0,#12
   d4762:	a0 76       	lwi333 $r1,[$r6+#0x18]
   d4764:	92 34       	srli45 $r1,#20
   d4766:	40 10 d0 08 	slli $r1,$r1,#20
   d476a:	fe 47       	or33 $r1,$r0
   d476c:	a8 76       	swi333 $r1,[$r6+#0x18]
   d476e:	02 14 80 05 	lhi $r1,[$r9+#0xa]
   d4772:	a8 77       	swi333 $r1,[$r6+#0x1c]
   d4774:	04 13 00 0f 	lwi $r1,[$r6+#0x3c]
   d4778:	a4 ba       	lhi333 $r2,[$r7+#0x4]
   d477a:	92 2e       	srli45 $r1,#14
   d477c:	40 10 b8 08 	slli $r1,$r1,#14
   d4780:	54 21 3f ff 	andi $r2,$r2,#0x3fff
   d4784:	fe 57       	or33 $r1,$r2
   d4786:	14 13 00 0f 	swi $r1,[$r6+#0x3c]
   d478a:	a6 7f       	lbi333 $r1,[$r7+#0x7]
   d478c:	10 13 00 40 	sbi $r1,[$r6+#0x40]
   d4790:	04 13 00 0e 	lwi $r1,[$r6+#0x38]
   d4794:	92 34       	srli45 $r1,#20
   d4796:	40 10 d0 08 	slli $r1,$r1,#20
   d479a:	fe 0f       	or33 $r0,$r1
   d479c:	14 03 00 0e 	swi $r0,[$r6+#0x38]
   d47a0:	3e 1d 06 16 	addi.gp $r1,#-195050
   d47a4:	00 03 80 08 	lbi $r0,[$r7+#0x8]
   d47a8:	a8 35       	swi333 $r0,[$r6+#0x14]
   d47aa:	00 03 80 09 	lbi $r0,[$r7+#0x9]
   d47ae:	a8 33       	swi333 $r0,[$r6+#0xc]
   d47b0:	00 03 80 0a 	lbi $r0,[$r7+#0xa]
   d47b4:	a8 34       	swi333 $r0,[$r6+#0x10]
   d47b6:	fa 00       	movpi45 $r0,#0x10
   d47b8:	d5 3b       	j8 d482e <DRV_Uart_Init+0x1b6>
   d47ba:	b4 27       	lwi450 $r1,[$r7]
   d47bc:	84 01       	movi55 $r0,#1
   d47be:	49 ff fb c1 	jal d3f40 <DRV_Uart_SetBaud>
   d47c2:	a6 3e       	lbi333 $r0,[$r7+#0x6]
   d47c4:	46 60 02 11 	sethi $r6,#0x211
   d47c8:	58 63 00 00 	ori $r6,$r6,#0x0
   d47cc:	a8 32       	swi333 $r0,[$r6+#0x8]
   d47ce:	a0 76       	lwi333 $r1,[$r6+#0x18]
   d47d0:	38 05 22 02 	lw $r0,[$r10+($r8<<#0x2)]
   d47d4:	40 00 30 08 	slli $r0,$r0,#12
   d47d8:	92 0c       	srli45 $r0,#12
   d47da:	92 34       	srli45 $r1,#20
   d47dc:	40 10 d0 08 	slli $r1,$r1,#20
   d47e0:	fe 47       	or33 $r1,$r0
   d47e2:	a8 76       	swi333 $r1,[$r6+#0x18]
   d47e4:	02 14 80 05 	lhi $r1,[$r9+#0xa]
   d47e8:	a8 77       	swi333 $r1,[$r6+#0x1c]
   d47ea:	04 13 00 0f 	lwi $r1,[$r6+#0x3c]
   d47ee:	a4 ba       	lhi333 $r2,[$r7+#0x4]
   d47f0:	92 2e       	srli45 $r1,#14
   d47f2:	40 10 b8 08 	slli $r1,$r1,#14
   d47f6:	54 21 3f ff 	andi $r2,$r2,#0x3fff
   d47fa:	fe 57       	or33 $r1,$r2
   d47fc:	14 13 00 0f 	swi $r1,[$r6+#0x3c]
   d4800:	a6 7f       	lbi333 $r1,[$r7+#0x7]
   d4802:	10 13 00 40 	sbi $r1,[$r6+#0x40]
   d4806:	04 13 00 0e 	lwi $r1,[$r6+#0x38]
   d480a:	92 34       	srli45 $r1,#20
   d480c:	40 10 d0 08 	slli $r1,$r1,#20
   d4810:	fe 0f       	or33 $r0,$r1
   d4812:	14 03 00 0e 	swi $r0,[$r6+#0x38]
   d4816:	3e 1d 04 ea 	addi.gp $r1,#-195350
   d481a:	00 03 80 08 	lbi $r0,[$r7+#0x8]
   d481e:	a8 35       	swi333 $r0,[$r6+#0x14]
   d4820:	00 03 80 09 	lbi $r0,[$r7+#0x9]
   d4824:	a8 33       	swi333 $r0,[$r6+#0xc]
   d4826:	00 03 80 0a 	lbi $r0,[$r7+#0xa]
   d482a:	a8 34       	swi333 $r0,[$r6+#0x10]
   d482c:	fa 0f       	movpi45 $r0,#0x1f
   d482e:	49 fd 5d ab 	jal 80384 <SysIntrHandlerRegister>
   d4832:	04 03 00 11 	lwi $r0,[$r6+#0x44]
   d4836:	58 00 00 01 	ori $r0,$r0,#0x1
   d483a:	14 03 00 11 	swi $r0,[$r6+#0x44]
   d483e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d4840 <DRV_WDT_Kick>:
   d4840:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d4842:	44 10 00 aa 	movi $r1,#170
   d4846:	46 f0 02 24 	sethi $r15,#0x224
   d484a:	14 17 80 02 	swi $r1,[$r15+#0x8]
   d484e:	44 10 00 55 	movi $r1,#85
   d4852:	46 f0 02 24 	sethi $r15,#0x224
   d4856:	14 17 80 02 	swi $r1,[$r15+#0x8]
   d485a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d485c <DRV_WDT_Enable>:
   d485c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d485e:	46 10 02 24 	sethi $r1,#0x224
   d4862:	58 10 80 00 	ori $r1,$r1,#0x0
   d4866:	b4 41       	lwi450 $r2,[$r1]
   d4868:	84 7b       	movi55 $r3,#-5
   d486a:	fe 9e       	and33 $r2,$r3
   d486c:	b6 41       	swi450 $r2,[$r1]
   d486e:	96 00       	zeb33 $r0,$r0
   d4870:	b4 41       	lwi450 $r2,[$r1]
   d4872:	58 21 00 01 	ori $r2,$r2,#0x1
   d4876:	b6 41       	swi450 $r2,[$r1]
   d4878:	b4 41       	lwi450 $r2,[$r1]
   d487a:	58 21 00 02 	ori $r2,$r2,#0x2
   d487e:	b6 41       	swi450 $r2,[$r1]
   d4880:	3c 2d f0 2d 	lwi.gp $r2,[+#-16204]
   d4884:	92 48       	srli45 $r2,#8
   d4886:	fe 14       	mul33 $r0,$r2
   d4888:	a8 09       	swi333 $r0,[$r1+#0x4]
   d488a:	44 00 00 ff 	movi $r0,#255
   d488e:	14 00 80 09 	swi $r0,[$r1+#0x24]
   d4892:	44 00 00 aa 	movi $r0,#170
   d4896:	a8 0a       	swi333 $r0,[$r1+#0x8]
   d4898:	44 00 00 55 	movi $r0,#85
   d489c:	a8 0a       	swi333 $r0,[$r1+#0x8]
   d489e:	8e 16       	subi45 $r0,#22
   d48a0:	a8 0d       	swi333 $r0,[$r1+#0x14]
   d48a2:	04 00 80 08 	lwi $r0,[$r1+#0x20]
   d48a6:	58 00 00 01 	ori $r0,$r0,#0x1
   d48aa:	14 00 80 08 	swi $r0,[$r1+#0x20]
   d48ae:	84 09       	movi55 $r0,#9
   d48b0:	3e 1d 08 ba 	addi.gp $r1,#-194374
   d48b4:	49 fd 5d 68 	jal 80384 <SysIntrHandlerRegister>
   d48b8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d48ba <wdt_int>:
   d48ba:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d48bc:	84 01       	movi55 $r0,#1
   d48be:	80 20       	mov55 $r1,$r0
   d48c0:	49 ff f6 36 	jal d352c <DRV_OdGpio_IeSet>
   d48c4:	d5 00       	j8 d48c4 <wdt_int+0xa>

000d48c6 <InitAlg>:
   d48c6:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d48c8:	3c 0d f4 60 	lwi.gp $r0,[+#-11904]
   d48cc:	46 13 f5 db 	sethi $r1,#0x3f5db
   d48d0:	58 10 83 d7 	ori $r1,$r1,#0x3d7
   d48d4:	49 ff 9c 7a 	jal c81c8 <__float32_mul>
   d48d8:	46 14 04 90 	sethi $r1,#0x40490
   d48dc:	58 10 8f dc 	ori $r1,$r1,#0xfdc
   d48e0:	49 ff 9c 74 	jal c81c8 <__float32_mul>
   d48e4:	46 14 33 40 	sethi $r1,#0x43340
   d48e8:	49 ff 9d 1c 	jal c8320 <__divsf3>
   d48ec:	3c 0f f4 85 	swi.gp $r0,[+#-11756]
   d48f0:	3c 0d f4 61 	lwi.gp $r0,[+#-11900]
   d48f4:	46 13 f5 db 	sethi $r1,#0x3f5db
   d48f8:	58 10 83 d7 	ori $r1,$r1,#0x3d7
   d48fc:	49 ff 9c 66 	jal c81c8 <__float32_mul>
   d4900:	46 14 04 90 	sethi $r1,#0x40490
   d4904:	58 10 8f dc 	ori $r1,$r1,#0xfdc
   d4908:	49 ff 9c 60 	jal c81c8 <__float32_mul>
   d490c:	46 14 33 40 	sethi $r1,#0x43340
   d4910:	49 ff 9d 08 	jal c8320 <__divsf3>
   d4914:	84 c0       	movi55 $r6,#0
   d4916:	3c 0f f4 86 	swi.gp $r0,[+#-11752]
   d491a:	46 73 f8 00 	sethi $r7,#0x3f800
   d491e:	3e 0f d1 9c 	addi.gp $r0,#-11876
   d4922:	b6 c0       	swi450 $r6,[$r0]
   d4924:	a9 81       	swi333 $r6,[$r0+#0x4]
   d4926:	a9 82       	swi333 $r6,[$r0+#0x8]
   d4928:	3e 0f c2 30 	addi.gp $r0,#-15824
   d492c:	85 00       	movi55 $r8,#0
   d492e:	b6 e0       	swi450 $r7,[$r0]
   d4930:	a9 81       	swi333 $r6,[$r0+#0x4]
   d4932:	a9 82       	swi333 $r6,[$r0+#0x8]
   d4934:	a9 83       	swi333 $r6,[$r0+#0xc]
   d4936:	3e 87 d1 b4 	sbi.gp $r8,[+#-11852]
   d493a:	3c 9d f4 65 	lwi.gp $r9,[+#-11884]
   d493e:	3c 0d f4 62 	lwi.gp $r0,[+#-11896]
   d4942:	80 29       	mov55 $r1,$r9
   d4944:	49 ff 9c 42 	jal c81c8 <__float32_mul>
   d4948:	3c 0f f4 6e 	swi.gp $r0,[+#-11848]
   d494c:	3c 0d f4 63 	lwi.gp $r0,[+#-11892]
   d4950:	80 29       	mov55 $r1,$r9
   d4952:	49 ff 9c 3b 	jal c81c8 <__float32_mul>
   d4956:	3c 0f f4 6f 	swi.gp $r0,[+#-11844]
   d495a:	3c 0d f4 64 	lwi.gp $r0,[+#-11888]
   d495e:	80 29       	mov55 $r1,$r9
   d4960:	49 ff 9c 34 	jal c81c8 <__float32_mul>
   d4964:	3c 0f f4 87 	swi.gp $r0,[+#-11748]
   d4968:	3e 0f d1 c8 	addi.gp $r0,#-11832
   d496c:	a9 82       	swi333 $r6,[$r0+#0x8]
   d496e:	a9 81       	swi333 $r6,[$r0+#0x4]
   d4970:	b6 c0       	swi450 $r6,[$r0]
   d4972:	a9 85       	swi333 $r6,[$r0+#0x14]
   d4974:	a9 84       	swi333 $r6,[$r0+#0x10]
   d4976:	a9 83       	swi333 $r6,[$r0+#0xc]
   d4978:	14 60 00 08 	swi $r6,[$r0+#0x20]
   d497c:	a9 87       	swi333 $r6,[$r0+#0x1c]
   d497e:	a9 86       	swi333 $r6,[$r0+#0x18]
   d4980:	14 60 00 0b 	swi $r6,[$r0+#0x2c]
   d4984:	14 60 00 0a 	swi $r6,[$r0+#0x28]
   d4988:	14 60 00 09 	swi $r6,[$r0+#0x24]
   d498c:	3e 0f d1 f8 	addi.gp $r0,#-11784
   d4990:	a9 82       	swi333 $r6,[$r0+#0x8]
   d4992:	a9 81       	swi333 $r6,[$r0+#0x4]
   d4994:	b6 c0       	swi450 $r6,[$r0]
   d4996:	a9 85       	swi333 $r6,[$r0+#0x14]
   d4998:	a9 84       	swi333 $r6,[$r0+#0x10]
   d499a:	84 3f       	movi55 $r1,#-1
   d499c:	a9 83       	swi333 $r6,[$r0+#0xc]
   d499e:	3c 1f f1 ab 	swi.gp $r1,[+#-14676]
   d49a2:	84 21       	movi55 $r1,#1
   d49a4:	3e 17 c2 40 	sbi.gp $r1,[+#-15808]
   d49a8:	85 20       	movi55 $r9,#0
   d49aa:	46 14 26 52 	sethi $r1,#0x42652
   d49ae:	3c 9f f4 6b 	swi.gp $r9,[+#-11860]
   d49b2:	58 10 8e df 	ori $r1,$r1,#0xedf
   d49b6:	3c 1f f4 6a 	swi.gp $r1,[+#-11864]
   d49ba:	3c 0d f0 8b 	lwi.gp $r0,[+#-15828]
   d49be:	49 ff 9c b1 	jal c8320 <__divsf3>
   d49c2:	3c 0f f4 88 	swi.gp $r0,[+#-11744]
   d49c6:	3e 97 d1 98 	sbi.gp $r9,[+#-11880]
   d49ca:	3e 87 d2 10 	sbi.gp $r8,[+#-11760]
   d49ce:	3c 6f f4 70 	swi.gp $r6,[+#-11840]
   d49d2:	3c 7f f0 91 	swi.gp $r7,[+#-15804]
   d49d6:	3e 87 d1 c4 	sbi.gp $r8,[+#-11836]
   d49da:	84 01       	movi55 $r0,#1
   d49dc:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d49de <AB_DFU_set_active_code_area>:
   d49de:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   d49e0:	84 20       	movi55 $r1,#0
   d49e2:	10 1f 80 07 	sbi $r1,[$sp+#0x7]
   d49e6:	9e 41       	subi333 $r1,$r0,#1
   d49e8:	e6 22       	slti45 $r1,#2
   d49ea:	e9 08       	bnezs8 d49fa <AB_DFU_set_active_code_area+0x1c>
   d49ec:	3e 0d 57 fc 	addi.gp $r0,#-174084
   d49f0:	49 00 03 b5 	jal d515a <puts>
   d49f4:	44 60 00 ff 	movi $r6,#255
   d49f8:	d5 56       	j8 d4aa4 <AB_DFU_set_active_code_area+0xc6>
   d49fa:	84 40       	movi55 $r2,#0
   d49fc:	46 30 00 84 	sethi $r3,#0x84
   d4a00:	58 31 80 00 	ori $r3,$r3,#0x0
   d4a04:	44 10 04 00 	movi $r1,#1024
   d4a08:	38 61 8a 02 	lw $r6,[$r3+($r2<<#0x2)]
   d4a0c:	97 d1       	zeh33 $r7,$r2
   d4a0e:	c6 33       	beqz38 $r6,d4a74 <AB_DFU_set_active_code_area+0x96>
   d4a10:	84 20       	movi55 $r1,#0
   d4a12:	44 30 00 ff 	movi $r3,#255
   d4a16:	46 40 00 84 	sethi $r4,#0x84
   d4a1a:	58 42 00 00 	ori $r4,$r4,#0x0
   d4a1e:	38 52 0a 02 	lw $r5,[$r4+($r2<<#0x2)]
   d4a22:	ff 5e       	and33 $r5,$r3
   d4a24:	c5 05       	beqz38 $r5,d4a2e <AB_DFU_set_active_code_area+0x50>
   d4a26:	96 8c       	xlsb33 $r2,$r1
   d4a28:	c2 0a       	beqz38 $r2,d4a3c <AB_DFU_set_active_code_area+0x5e>
   d4a2a:	84 42       	movi55 $r2,#2
   d4a2c:	d5 09       	j8 d4a3e <AB_DFU_set_active_code_area+0x60>
   d4a2e:	9c 49       	addi333 $r1,$r1,#1
   d4a30:	96 48       	zeb33 $r1,$r1
   d4a32:	5a 10 04 05 	beqc $r1,#4,d4a3c <AB_DFU_set_active_code_area+0x5e>
   d4a36:	40 31 a0 08 	slli $r3,$r3,#8
   d4a3a:	d5 f2       	j8 d4a1e <AB_DFU_set_active_code_area+0x40>
   d4a3c:	84 41       	movi55 $r2,#1
   d4a3e:	4c 01 00 15 	beq $r0,$r2,d4a68 <AB_DFU_set_active_code_area+0x8a>
   d4a42:	80 04       	mov55 $r0,$r4
   d4a44:	95 fa       	slli333 $r7,$r7,#2
   d4a46:	99 f8       	add333 $r7,$r7,$r0
   d4a48:	99 cf       	add333 $r7,$r1,$r7
   d4a4a:	84 41       	movi55 $r2,#1
   d4a4c:	50 1f 80 07 	addi $r1,$sp,#7
   d4a50:	80 07       	mov55 $r0,$r7
   d4a52:	49 ff f2 e1 	jal d3014 <DRV_Flash_ByteProgram>
   d4a56:	80 c0       	mov55 $r6,$r0
   d4a58:	49 fd 5e f1 	jal 8083a <DRV_MCU_ClearCache>
   d4a5c:	80 27       	mov55 $r1,$r7
   d4a5e:	3e 0d 58 0c 	addi.gp $r0,#-174068
   d4a62:	49 ff eb 66 	jal d212e <printf>
   d4a66:	d5 1f       	j8 d4aa4 <AB_DFU_set_active_code_area+0xc6>
   d4a68:	3e 0d 58 28 	addi.gp $r0,#-174040
   d4a6c:	49 00 03 77 	jal d515a <puts>
   d4a70:	84 c0       	movi55 $r6,#0
   d4a72:	d5 19       	j8 d4aa4 <AB_DFU_set_active_code_area+0xc6>
   d4a74:	9c 91       	addi333 $r2,$r2,#1
   d4a76:	4c 20 ff c9 	bne $r2,$r1,d4a08 <AB_DFU_set_active_code_area+0x2a>
   d4a7a:	5a 08 02 15 	bnec $r0,#2,d4aa4 <AB_DFU_set_active_code_area+0xc6>
   d4a7e:	80 03       	mov55 $r0,$r3
   d4a80:	49 ff f4 65 	jal d334a <DRV_Flash_SectorErase>
   d4a84:	50 1f 80 07 	addi $r1,$sp,#7
   d4a88:	84 41       	movi55 $r2,#1
   d4a8a:	46 00 00 84 	sethi $r0,#0x84
   d4a8e:	58 00 00 00 	ori $r0,$r0,#0x0
   d4a92:	49 ff f2 c1 	jal d3014 <DRV_Flash_ByteProgram>
   d4a96:	80 c0       	mov55 $r6,$r0
   d4a98:	49 fd 5e d1 	jal 8083a <DRV_MCU_ClearCache>
   d4a9c:	3e 0d 58 44 	addi.gp $r0,#-174012
   d4aa0:	49 00 03 5d 	jal d515a <puts>
   d4aa4:	80 06       	mov55 $r0,$r6
   d4aa6:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000d4aa8 <AB_DFU_write_flash>:
   d4aa8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d4aaa:	96 90       	zeb33 $r2,$r2
   d4aac:	c2 06       	beqz38 $r2,d4ab8 <AB_DFU_write_flash+0x10>
   d4aae:	49 ff f2 b3 	jal d3014 <DRV_Flash_ByteProgram>
   d4ab2:	49 fd 5e c4 	jal 8083a <DRV_MCU_ClearCache>
   d4ab6:	d5 03       	j8 d4abc <AB_DFU_write_flash+0x14>
   d4ab8:	49 ff f3 30 	jal d3118 <DRV_Flash_PageProgram>
   d4abc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d4abe <AB_DFU_erase_flash>:
   d4abe:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d4ac0:	5a 10 01 08 	beqc $r1,#1,d4ad0 <AB_DFU_erase_flash+0x12>
   d4ac4:	c1 09       	beqz38 $r1,d4ad6 <AB_DFU_erase_flash+0x18>
   d4ac6:	5a 18 02 0b 	bnec $r1,#2,d4adc <AB_DFU_erase_flash+0x1e>
   d4aca:	49 ff f4 40 	jal d334a <DRV_Flash_SectorErase>
   d4ace:	d5 0b       	j8 d4ae4 <AB_DFU_erase_flash+0x26>
   d4ad0:	49 ff f4 38 	jal d3340 <DRV_Flash_Block_32KB_Erase>
   d4ad4:	d5 08       	j8 d4ae4 <AB_DFU_erase_flash+0x26>
   d4ad6:	49 ff f4 30 	jal d3336 <DRV_Flash_Block_64KB_Erase>
   d4ada:	d5 05       	j8 d4ae4 <AB_DFU_erase_flash+0x26>
   d4adc:	3e 0d 58 64 	addi.gp $r0,#-173980
   d4ae0:	49 00 03 3d 	jal d515a <puts>
   d4ae4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d4ae6 <_malloc_trim_r>:
   d4ae6:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d4ae8:	87 80       	movi55 $fp,#0
   d4aea:	3e 7f c2 4c 	addi.gp $r7,#-15796
   d4aee:	80 c0       	mov55 $r6,$r0
   d4af0:	81 01       	mov55 $r8,$r1
   d4af2:	49 00 03 29 	jal d5144 <__malloc_lock>
   d4af6:	a0 3a       	lwi333 $r0,[$r7+#0x8]
   d4af8:	04 90 00 01 	lwi $r9,[$r0+#0x4]
   d4afc:	93 22       	srli45 $r9,#2
   d4afe:	40 94 88 08 	slli $r9,$r9,#2
   d4b02:	50 04 8f ef 	addi $r0,$r9,#4079
   d4b06:	40 80 20 01 	sub $r8,$r0,$r8
   d4b0a:	44 0f f0 00 	movi $r0,#-4096
   d4b0e:	40 84 00 02 	and $r8,$r8,$r0
   d4b12:	89 00       	add45 $r8,$r0
   d4b14:	5e f4 10 00 	sltsi $r15,$r8,#4096
   d4b18:	e8 02       	beqzs8 d4b1c <_malloc_trim_r+0x36>
   d4b1a:	d5 21       	j8 d4b5c <_malloc_trim_r+0x76>
   d4b1c:	84 20       	movi55 $r1,#0
   d4b1e:	80 06       	mov55 $r0,$r6
   d4b20:	49 00 03 40 	jal d51a0 <_sbrk_r>
   d4b24:	a0 7a       	lwi333 $r1,[$r7+#0x8]
   d4b26:	88 29       	add45 $r1,$r9
   d4b28:	4c 00 80 03 	beq $r0,$r1,d4b2e <_malloc_trim_r+0x48>
   d4b2c:	d5 18       	j8 d4b5c <_malloc_trim_r+0x76>
   d4b2e:	80 06       	mov55 $r0,$r6
   d4b30:	52 14 00 00 	subri $r1,$r8,#0
   d4b34:	49 00 03 36 	jal d51a0 <_sbrk_r>
   d4b38:	5a 0f ff 17 	bnec $r0,#-1,d4b66 <_malloc_trim_r+0x80>
   d4b3c:	84 20       	movi55 $r1,#0
   d4b3e:	80 06       	mov55 $r0,$r6
   d4b40:	49 00 03 30 	jal d51a0 <_sbrk_r>
   d4b44:	a0 7a       	lwi333 $r1,[$r7+#0x8]
   d4b46:	9a 81       	sub333 $r2,$r0,$r1
   d4b48:	e4 50       	sltsi45 $r2,#16
   d4b4a:	e9 09       	bnezs8 d4b5c <_malloc_trim_r+0x76>
   d4b4c:	3c 3d f1 96 	lwi.gp $r3,[+#-14760]
   d4b50:	58 21 00 01 	ori $r2,$r2,#0x1
   d4b54:	9a 03       	sub333 $r0,$r0,$r3
   d4b56:	3c 0f f4 a3 	swi.gp $r0,[+#-11636]
   d4b5a:	a8 89       	swi333 $r2,[$r1+#0x4]
   d4b5c:	80 06       	mov55 $r0,$r6
   d4b5e:	49 00 02 f5 	jal d5148 <__malloc_unlock>
   d4b62:	84 00       	movi55 $r0,#0
   d4b64:	d5 11       	j8 d4b86 <_malloc_trim_r+0xa0>
   d4b66:	a0 3a       	lwi333 $r0,[$r7+#0x8]
   d4b68:	8b 28       	sub45 $r9,$r8
   d4b6a:	58 94 80 01 	ori $r9,$r9,#0x1
   d4b6e:	14 90 00 01 	swi $r9,[$r0+#0x4]
   d4b72:	3c 1d f4 a3 	lwi.gp $r1,[+#-11636]
   d4b76:	40 80 a0 01 	sub $r8,$r1,$r8
   d4b7a:	3c 8f f4 a3 	swi.gp $r8,[+#-11636]
   d4b7e:	80 06       	mov55 $r0,$r6
   d4b80:	49 00 02 e4 	jal d5148 <__malloc_unlock>
   d4b84:	84 01       	movi55 $r0,#1
   d4b86:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d4b88 <_free_r>:
   d4b88:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d4b8a:	87 80       	movi55 $fp,#0
   d4b8c:	80 e0       	mov55 $r7,$r0
   d4b8e:	80 c1       	mov55 $r6,$r1
   d4b90:	4e 12 00 b8 	beqz $r1,d4d00 <_free_r+0x178>
   d4b94:	49 00 02 d8 	jal d5144 <__malloc_lock>
   d4b98:	50 13 7f f8 	addi $r1,$r6,#-8
   d4b9c:	a1 49       	lwi333 $r5,[$r1+#0x4]
   d4b9e:	40 22 84 09 	srli $r2,$r5,#1
   d4ba2:	94 91       	slli333 $r2,$r2,#1
   d4ba4:	98 ca       	add333 $r3,$r1,$r2
   d4ba6:	a1 99       	lwi333 $r6,[$r3+#0x4]
   d4ba8:	3e 4f c2 4c 	addi.gp $r4,#-15796
   d4bac:	92 c2       	srli45 $r6,#2
   d4bae:	95 b2       	slli333 $r6,$r6,#2
   d4bb0:	a0 22       	lwi333 $r0,[$r4+#0x8]
   d4bb2:	97 6c       	xlsb33 $r5,$r5
   d4bb4:	4c 30 40 1b 	bne $r3,$r0,d4bea <_free_r+0x62>
   d4bb8:	98 b2       	add333 $r2,$r6,$r2
   d4bba:	cd 08       	bnez38 $r5,d4bca <_free_r+0x42>
   d4bbc:	b4 01       	lwi450 $r0,[$r1]
   d4bbe:	9a 48       	sub333 $r1,$r1,$r0
   d4bc0:	a0 ca       	lwi333 $r3,[$r1+#0x8]
   d4bc2:	98 90       	add333 $r2,$r2,$r0
   d4bc4:	a0 0b       	lwi333 $r0,[$r1+#0xc]
   d4bc6:	a8 1b       	swi333 $r0,[$r3+#0xc]
   d4bc8:	a8 c2       	swi333 $r3,[$r0+#0x8]
   d4bca:	58 01 00 01 	ori $r0,$r2,#0x1
   d4bce:	a8 09       	swi333 $r0,[$r1+#0x4]
   d4bd0:	3c 0d f1 95 	lwi.gp $r0,[+#-14764]
   d4bd4:	a8 62       	swi333 $r1,[$r4+#0x8]
   d4bd6:	e2 40       	slt45 $r2,$r0
   d4bd8:	4e f3 00 91 	bnez $r15,d4cfa <_free_r+0x172>
   d4bdc:	3c 1d f4 a0 	lwi.gp $r1,[+#-11648]
   d4be0:	80 07       	mov55 $r0,$r7
   d4be2:	49 ff ff 82 	jal d4ae6 <_malloc_trim_r>
   d4be6:	48 00 00 8a 	j d4cfa <_free_r+0x172>
   d4bea:	a9 99       	swi333 $r6,[$r3+#0x4]
   d4bec:	c5 03       	beqz38 $r5,d4bf2 <_free_r+0x6a>
   d4bee:	84 a0       	movi55 $r5,#0
   d4bf0:	d5 11       	j8 d4c12 <_free_r+0x8a>
   d4bf2:	b4 01       	lwi450 $r0,[$r1]
   d4bf4:	50 82 00 08 	addi $r8,$r4,#8
   d4bf8:	9a 48       	sub333 $r1,$r1,$r0
   d4bfa:	98 90       	add333 $r2,$r2,$r0
   d4bfc:	a0 0a       	lwi333 $r0,[$r1+#0x8]
   d4bfe:	4c 04 40 04 	bne $r0,$r8,d4c06 <_free_r+0x7e>
   d4c02:	84 a1       	movi55 $r5,#1
   d4c04:	d5 07       	j8 d4c12 <_free_r+0x8a>
   d4c06:	04 80 80 03 	lwi $r8,[$r1+#0xc]
   d4c0a:	14 80 00 03 	swi $r8,[$r0+#0xc]
   d4c0e:	14 04 00 02 	swi $r0,[$r8+#0x8]
   d4c12:	98 1e       	add333 $r0,$r3,$r6
   d4c14:	a0 01       	lwi333 $r0,[$r0+#0x4]
   d4c16:	96 04       	xlsb33 $r0,$r0
   d4c18:	c8 12       	bnez38 $r0,d4c3c <_free_r+0xb4>
   d4c1a:	98 96       	add333 $r2,$r2,$r6
   d4c1c:	cd 0c       	bnez38 $r5,d4c34 <_free_r+0xac>
   d4c1e:	a1 9a       	lwi333 $r6,[$r3+#0x8]
   d4c20:	50 02 00 08 	addi $r0,$r4,#8
   d4c24:	4c 60 40 08 	bne $r6,$r0,d4c34 <_free_r+0xac>
   d4c28:	a8 73       	swi333 $r1,[$r6+#0xc]
   d4c2a:	a8 72       	swi333 $r1,[$r6+#0x8]
   d4c2c:	a9 8b       	swi333 $r6,[$r1+#0xc]
   d4c2e:	a9 8a       	swi333 $r6,[$r1+#0x8]
   d4c30:	84 a1       	movi55 $r5,#1
   d4c32:	d5 05       	j8 d4c3c <_free_r+0xb4>
   d4c34:	a0 1b       	lwi333 $r0,[$r3+#0xc]
   d4c36:	a0 da       	lwi333 $r3,[$r3+#0x8]
   d4c38:	a8 1b       	swi333 $r0,[$r3+#0xc]
   d4c3a:	a8 c2       	swi333 $r3,[$r0+#0x8]
   d4c3c:	58 01 00 01 	ori $r0,$r2,#0x1
   d4c40:	a8 09       	swi333 $r0,[$r1+#0x4]
   d4c42:	38 20 88 0a 	sw $r2,[$r1+($r2<<#0x0)]
   d4c46:	cd 5a       	bnez38 $r5,d4cfa <_free_r+0x172>
   d4c48:	5c f1 02 00 	slti $r15,$r2,#512
   d4c4c:	e8 13       	beqzs8 d4c72 <_free_r+0xea>
   d4c4e:	92 43       	srli45 $r2,#3
   d4c50:	40 01 08 0a 	srai $r0,$r2,#2
   d4c54:	84 61       	movi55 $r3,#1
   d4c56:	40 01 80 0c 	sll $r0,$r3,$r0
   d4c5a:	a0 e1       	lwi333 $r3,[$r4+#0x4]
   d4c5c:	94 93       	slli333 $r2,$r2,#3
   d4c5e:	fe 1f       	or33 $r0,$r3
   d4c60:	80 64       	mov55 $r3,$r4
   d4c62:	98 93       	add333 $r2,$r2,$r3
   d4c64:	a8 21       	swi333 $r0,[$r4+#0x4]
   d4c66:	a0 12       	lwi333 $r0,[$r2+#0x8]
   d4c68:	a8 8b       	swi333 $r2,[$r1+#0xc]
   d4c6a:	a8 0a       	swi333 $r0,[$r1+#0x8]
   d4c6c:	a8 43       	swi333 $r1,[$r0+#0xc]
   d4c6e:	a8 52       	swi333 $r1,[$r2+#0x8]
   d4c70:	d5 45       	j8 d4cfa <_free_r+0x172>
   d4c72:	40 51 24 09 	srli $r5,$r2,#9
   d4c76:	e6 a5       	slti45 $r5,#5
   d4c78:	e8 06       	beqzs8 d4c84 <_free_r+0xfc>
   d4c7a:	40 51 18 09 	srli $r5,$r2,#6
   d4c7e:	50 52 80 38 	addi $r5,$r5,#56
   d4c82:	d5 20       	j8 d4cc2 <_free_r+0x13a>
   d4c84:	e6 b5       	slti45 $r5,#21
   d4c86:	e8 04       	beqzs8 d4c8e <_free_r+0x106>
   d4c88:	50 52 80 5b 	addi $r5,$r5,#91
   d4c8c:	d5 1b       	j8 d4cc2 <_free_r+0x13a>
   d4c8e:	5c f2 80 55 	slti $r15,$r5,#85
   d4c92:	e8 06       	beqzs8 d4c9e <_free_r+0x116>
   d4c94:	40 51 30 09 	srli $r5,$r2,#12
   d4c98:	50 52 80 6e 	addi $r5,$r5,#110
   d4c9c:	d5 13       	j8 d4cc2 <_free_r+0x13a>
   d4c9e:	5c f2 81 55 	slti $r15,$r5,#341
   d4ca2:	e8 06       	beqzs8 d4cae <_free_r+0x126>
   d4ca4:	40 51 3c 09 	srli $r5,$r2,#15
   d4ca8:	50 52 80 77 	addi $r5,$r5,#119
   d4cac:	d5 0b       	j8 d4cc2 <_free_r+0x13a>
   d4cae:	5c f2 85 55 	slti $r15,$r5,#1365
   d4cb2:	e9 04       	bnezs8 d4cba <_free_r+0x132>
   d4cb4:	44 50 00 7e 	movi $r5,#126
   d4cb8:	d5 05       	j8 d4cc2 <_free_r+0x13a>
   d4cba:	40 51 48 09 	srli $r5,$r2,#18
   d4cbe:	50 52 80 7c 	addi $r5,$r5,#124
   d4cc2:	80 64       	mov55 $r3,$r4
   d4cc4:	94 2b       	slli333 $r0,$r5,#3
   d4cc6:	98 03       	add333 $r0,$r0,$r3
   d4cc8:	a0 c2       	lwi333 $r3,[$r0+#0x8]
   d4cca:	4c 30 40 0e 	bne $r3,$r0,d4ce6 <_free_r+0x15e>
   d4cce:	84 01       	movi55 $r0,#1
   d4cd0:	90 a2       	srai45 $r5,#2
   d4cd2:	40 50 14 0c 	sll $r5,$r0,$r5
   d4cd6:	a0 21       	lwi333 $r0,[$r4+#0x4]
   d4cd8:	ff 47       	or33 $r5,$r0
   d4cda:	a9 61       	swi333 $r5,[$r4+#0x4]
   d4cdc:	80 03       	mov55 $r0,$r3
   d4cde:	d5 0a       	j8 d4cf2 <_free_r+0x16a>
   d4ce0:	a0 da       	lwi333 $r3,[$r3+#0x8]
   d4ce2:	4c 30 00 07 	beq $r3,$r0,d4cf0 <_free_r+0x168>
   d4ce6:	a1 19       	lwi333 $r4,[$r3+#0x4]
   d4ce8:	92 82       	srli45 $r4,#2
   d4cea:	95 22       	slli333 $r4,$r4,#2
   d4cec:	e2 44       	slt45 $r2,$r4
   d4cee:	e9 f9       	bnezs8 d4ce0 <_free_r+0x158>
   d4cf0:	a0 1b       	lwi333 $r0,[$r3+#0xc]
   d4cf2:	a8 0b       	swi333 $r0,[$r1+#0xc]
   d4cf4:	a8 ca       	swi333 $r3,[$r1+#0x8]
   d4cf6:	a8 5b       	swi333 $r1,[$r3+#0xc]
   d4cf8:	a8 42       	swi333 $r1,[$r0+#0x8]
   d4cfa:	80 07       	mov55 $r0,$r7
   d4cfc:	49 00 02 26 	jal d5148 <__malloc_unlock>
   d4d00:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d4d02 <_malloc_r>:
   d4d02:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   d4d04:	87 80       	movi55 $fp,#0
   d4d06:	50 70 80 0b 	addi $r7,$r1,#11
   d4d0a:	81 40       	mov55 $r10,$r0
   d4d0c:	e6 f7       	slti45 $r7,#23
   d4d0e:	e8 03       	beqzs8 d4d14 <_malloc_r+0x12>
   d4d10:	fa e0       	movpi45 $r7,#0x10
   d4d12:	d5 05       	j8 d4d1c <_malloc_r+0x1a>
   d4d14:	92 e3       	srli45 $r7,#3
   d4d16:	95 fb       	slli333 $r7,$r7,#3
   d4d18:	4e 75 00 04 	bltz $r7,d4d20 <_malloc_r+0x1e>
   d4d1c:	e2 e1       	slt45 $r7,$r1
   d4d1e:	e8 06       	beqzs8 d4d2a <_malloc_r+0x28>
   d4d20:	84 2c       	movi55 $r1,#12
   d4d22:	3c 1f f4 af 	swi.gp $r1,[+#-11588]
   d4d26:	48 00 01 fc 	j d511e <_malloc_r+0x41c>
   d4d2a:	80 0a       	mov55 $r0,$r10
   d4d2c:	49 00 02 0c 	jal d5144 <__malloc_lock>
   d4d30:	5c f3 81 f8 	slti $r15,$r7,#504
   d4d34:	e8 19       	beqzs8 d4d66 <_malloc_r+0x64>
   d4d36:	3e 1f c2 4c 	addi.gp $r1,#-15796
   d4d3a:	98 b9       	add333 $r2,$r7,$r1
   d4d3c:	a1 93       	lwi333 $r6,[$r2+#0xc]
   d4d3e:	40 03 8c 09 	srli $r0,$r7,#3
   d4d42:	4c 61 40 07 	bne $r6,$r2,d4d50 <_malloc_r+0x4e>
   d4d46:	50 23 00 08 	addi $r2,$r6,#8
   d4d4a:	a1 93       	lwi333 $r6,[$r2+#0xc]
   d4d4c:	4c 61 00 0b 	beq $r6,$r2,d4d62 <_malloc_r+0x60>
   d4d50:	a0 31       	lwi333 $r0,[$r6+#0x4]
   d4d52:	a0 73       	lwi333 $r1,[$r6+#0xc]
   d4d54:	a0 b2       	lwi333 $r2,[$r6+#0x8]
   d4d56:	92 02       	srli45 $r0,#2
   d4d58:	94 02       	slli333 $r0,$r0,#2
   d4d5a:	a8 53       	swi333 $r1,[$r2+#0xc]
   d4d5c:	a8 8a       	swi333 $r2,[$r1+#0x8]
   d4d5e:	98 30       	add333 $r0,$r6,$r0
   d4d60:	d5 44       	j8 d4de8 <_malloc_r+0xe6>
   d4d62:	9c 02       	addi333 $r0,$r0,#2
   d4d64:	d5 4c       	j8 d4dfc <_malloc_r+0xfa>
   d4d66:	40 13 a4 09 	srli $r1,$r7,#9
   d4d6a:	c9 04       	bnez38 $r1,d4d72 <_malloc_r+0x70>
   d4d6c:	40 13 8c 09 	srli $r1,$r7,#3
   d4d70:	d5 27       	j8 d4dbe <_malloc_r+0xbc>
   d4d72:	e6 25       	slti45 $r1,#5
   d4d74:	e8 06       	beqzs8 d4d80 <_malloc_r+0x7e>
   d4d76:	40 13 98 09 	srli $r1,$r7,#6
   d4d7a:	50 10 80 38 	addi $r1,$r1,#56
   d4d7e:	d5 20       	j8 d4dbe <_malloc_r+0xbc>
   d4d80:	e6 35       	slti45 $r1,#21
   d4d82:	e8 04       	beqzs8 d4d8a <_malloc_r+0x88>
   d4d84:	50 10 80 5b 	addi $r1,$r1,#91
   d4d88:	d5 1b       	j8 d4dbe <_malloc_r+0xbc>
   d4d8a:	5c f0 80 55 	slti $r15,$r1,#85
   d4d8e:	e8 06       	beqzs8 d4d9a <_malloc_r+0x98>
   d4d90:	40 13 b0 09 	srli $r1,$r7,#12
   d4d94:	50 10 80 6e 	addi $r1,$r1,#110
   d4d98:	d5 13       	j8 d4dbe <_malloc_r+0xbc>
   d4d9a:	5c f0 81 55 	slti $r15,$r1,#341
   d4d9e:	e8 06       	beqzs8 d4daa <_malloc_r+0xa8>
   d4da0:	40 13 bc 09 	srli $r1,$r7,#15
   d4da4:	50 10 80 77 	addi $r1,$r1,#119
   d4da8:	d5 0b       	j8 d4dbe <_malloc_r+0xbc>
   d4daa:	5c f0 85 55 	slti $r15,$r1,#1365
   d4dae:	e9 04       	bnezs8 d4db6 <_malloc_r+0xb4>
   d4db0:	44 10 00 7e 	movi $r1,#126
   d4db4:	d5 05       	j8 d4dbe <_malloc_r+0xbc>
   d4db6:	40 13 c8 09 	srli $r1,$r7,#18
   d4dba:	50 10 80 7c 	addi $r1,$r1,#124
   d4dbe:	94 cb       	slli333 $r3,$r1,#3
   d4dc0:	3e 8f c2 4c 	addi.gp $r8,#-15796
   d4dc4:	88 68       	add45 $r3,$r8
   d4dc6:	a1 9b       	lwi333 $r6,[$r3+#0xc]
   d4dc8:	d5 17       	j8 d4df6 <_malloc_r+0xf4>
   d4dca:	a0 b1       	lwi333 $r2,[$r6+#0x4]
   d4dcc:	92 42       	srli45 $r2,#2
   d4dce:	94 92       	slli333 $r2,$r2,#2
   d4dd0:	9b 17       	sub333 $r4,$r2,$r7
   d4dd2:	e4 90       	sltsi45 $r4,#16
   d4dd4:	e9 03       	bnezs8 d4dda <_malloc_r+0xd8>
   d4dd6:	9e 49       	subi333 $r1,$r1,#1
   d4dd8:	d5 11       	j8 d4dfa <_malloc_r+0xf8>
   d4dda:	a0 33       	lwi333 $r0,[$r6+#0xc]
   d4ddc:	4e 45 00 0c 	bltz $r4,d4df4 <_malloc_r+0xf2>
   d4de0:	a0 72       	lwi333 $r1,[$r6+#0x8]
   d4de2:	a8 0b       	swi333 $r0,[$r1+#0xc]
   d4de4:	a8 42       	swi333 $r1,[$r0+#0x8]
   d4de6:	98 32       	add333 $r0,$r6,$r2
   d4de8:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d4dea:	58 10 80 01 	ori $r1,$r1,#0x1
   d4dee:	a8 41       	swi333 $r1,[$r0+#0x4]
   d4df0:	48 00 01 a4 	j d5138 <_malloc_r+0x436>
   d4df4:	80 c0       	mov55 $r6,$r0
   d4df6:	4c 61 ff ea 	bne $r6,$r3,d4dca <_malloc_r+0xc8>
   d4dfa:	9c 09       	addi333 $r0,$r1,#1
   d4dfc:	3e 4f c2 54 	addi.gp $r4,#-15788
   d4e00:	a1 a2       	lwi333 $r6,[$r4+#0x8]
   d4e02:	4c 62 00 79 	beq $r6,$r4,d4ef4 <_malloc_r+0x1f2>
   d4e06:	a0 b1       	lwi333 $r2,[$r6+#0x4]
   d4e08:	92 42       	srli45 $r2,#2
   d4e0a:	94 92       	slli333 $r2,$r2,#2
   d4e0c:	9a 57       	sub333 $r1,$r2,$r7
   d4e0e:	e4 30       	sltsi45 $r1,#16
   d4e10:	e9 10       	bnezs8 d4e30 <_malloc_r+0x12e>
   d4e12:	98 37       	add333 $r0,$r6,$r7
   d4e14:	58 20 80 01 	ori $r2,$r1,#0x1
   d4e18:	58 73 80 01 	ori $r7,$r7,#0x1
   d4e1c:	a9 f1       	swi333 $r7,[$r6+#0x4]
   d4e1e:	a8 23       	swi333 $r0,[$r4+#0xc]
   d4e20:	a8 22       	swi333 $r0,[$r4+#0x8]
   d4e22:	a9 03       	swi333 $r4,[$r0+#0xc]
   d4e24:	a9 02       	swi333 $r4,[$r0+#0x8]
   d4e26:	a8 81       	swi333 $r2,[$r0+#0x4]
   d4e28:	38 10 04 0a 	sw $r1,[$r0+($r1<<#0x0)]
   d4e2c:	48 00 01 86 	j d5138 <_malloc_r+0x436>
   d4e30:	a9 23       	swi333 $r4,[$r4+#0xc]
   d4e32:	a9 22       	swi333 $r4,[$r4+#0x8]
   d4e34:	4e 15 00 09 	bltz $r1,d4e46 <_malloc_r+0x144>
   d4e38:	98 b2       	add333 $r2,$r6,$r2
   d4e3a:	a0 11       	lwi333 $r0,[$r2+#0x4]
   d4e3c:	58 00 00 01 	ori $r0,$r0,#0x1
   d4e40:	a8 11       	swi333 $r0,[$r2+#0x4]
   d4e42:	48 00 01 7b 	j d5138 <_malloc_r+0x436>
   d4e46:	5c f1 02 00 	slti $r15,$r2,#512
   d4e4a:	e8 10       	beqzs8 d4e6a <_malloc_r+0x168>
   d4e4c:	92 43       	srli45 $r2,#3
   d4e4e:	50 12 7f f8 	addi $r1,$r4,#-8
   d4e52:	40 31 08 0a 	srai $r3,$r2,#2
   d4e56:	84 a1       	movi55 $r5,#1
   d4e58:	40 32 8c 0c 	sll $r3,$r5,$r3
   d4e5c:	a1 49       	lwi333 $r5,[$r1+#0x4]
   d4e5e:	94 93       	slli333 $r2,$r2,#3
   d4e60:	fe ef       	or33 $r3,$r5
   d4e62:	98 91       	add333 $r2,$r2,$r1
   d4e64:	a8 c9       	swi333 $r3,[$r1+#0x4]
   d4e66:	a0 52       	lwi333 $r1,[$r2+#0x8]
   d4e68:	d5 42       	j8 d4eec <_malloc_r+0x1ea>
   d4e6a:	40 31 24 09 	srli $r3,$r2,#9
   d4e6e:	e6 65       	slti45 $r3,#5
   d4e70:	e8 06       	beqzs8 d4e7c <_malloc_r+0x17a>
   d4e72:	40 31 18 09 	srli $r3,$r2,#6
   d4e76:	50 31 80 38 	addi $r3,$r3,#56
   d4e7a:	d5 20       	j8 d4eba <_malloc_r+0x1b8>
   d4e7c:	e6 75       	slti45 $r3,#21
   d4e7e:	e8 04       	beqzs8 d4e86 <_malloc_r+0x184>
   d4e80:	50 31 80 5b 	addi $r3,$r3,#91
   d4e84:	d5 1b       	j8 d4eba <_malloc_r+0x1b8>
   d4e86:	5c f1 80 55 	slti $r15,$r3,#85
   d4e8a:	e8 06       	beqzs8 d4e96 <_malloc_r+0x194>
   d4e8c:	40 31 30 09 	srli $r3,$r2,#12
   d4e90:	50 31 80 6e 	addi $r3,$r3,#110
   d4e94:	d5 13       	j8 d4eba <_malloc_r+0x1b8>
   d4e96:	5c f1 81 55 	slti $r15,$r3,#341
   d4e9a:	e8 06       	beqzs8 d4ea6 <_malloc_r+0x1a4>
   d4e9c:	40 31 3c 09 	srli $r3,$r2,#15
   d4ea0:	50 31 80 77 	addi $r3,$r3,#119
   d4ea4:	d5 0b       	j8 d4eba <_malloc_r+0x1b8>
   d4ea6:	5c f1 85 55 	slti $r15,$r3,#1365
   d4eaa:	e9 04       	bnezs8 d4eb2 <_malloc_r+0x1b0>
   d4eac:	44 30 00 7e 	movi $r3,#126
   d4eb0:	d5 05       	j8 d4eba <_malloc_r+0x1b8>
   d4eb2:	40 31 48 09 	srli $r3,$r2,#18
   d4eb6:	50 31 80 7c 	addi $r3,$r3,#124
   d4eba:	50 82 7f f8 	addi $r8,$r4,#-8
   d4ebe:	95 5b       	slli333 $r5,$r3,#3
   d4ec0:	88 a8       	add45 $r5,$r8
   d4ec2:	a0 6a       	lwi333 $r1,[$r5+#0x8]
   d4ec4:	d9 0e       	bnes38 $r1,d4ee0 <_malloc_r+0x1de>
   d4ec6:	84 41       	movi55 $r2,#1
   d4ec8:	90 62       	srai45 $r3,#2
   d4eca:	40 31 0c 0c 	sll $r3,$r2,$r3
   d4ece:	04 24 00 01 	lwi $r2,[$r8+#0x4]
   d4ed2:	fe d7       	or33 $r3,$r2
   d4ed4:	14 34 00 01 	swi $r3,[$r8+#0x4]
   d4ed8:	80 41       	mov55 $r2,$r1
   d4eda:	d5 09       	j8 d4eec <_malloc_r+0x1ea>
   d4edc:	a0 4a       	lwi333 $r1,[$r1+#0x8]
   d4ede:	d1 06       	beqs38 $r1,d4eea <_malloc_r+0x1e8>
   d4ee0:	a0 c9       	lwi333 $r3,[$r1+#0x4]
   d4ee2:	92 62       	srli45 $r3,#2
   d4ee4:	94 da       	slli333 $r3,$r3,#2
   d4ee6:	e2 43       	slt45 $r2,$r3
   d4ee8:	e9 fa       	bnezs8 d4edc <_malloc_r+0x1da>
   d4eea:	a0 8b       	lwi333 $r2,[$r1+#0xc]
   d4eec:	a8 b3       	swi333 $r2,[$r6+#0xc]
   d4eee:	a8 72       	swi333 $r1,[$r6+#0x8]
   d4ef0:	a9 8b       	swi333 $r6,[$r1+#0xc]
   d4ef2:	a9 92       	swi333 $r6,[$r2+#0x8]
   d4ef4:	84 41       	movi55 $r2,#1
   d4ef6:	40 10 08 0a 	srai $r1,$r0,#2
   d4efa:	50 92 7f f8 	addi $r9,$r4,#-8
   d4efe:	40 11 04 0c 	sll $r1,$r2,$r1
   d4f02:	04 24 80 01 	lwi $r2,[$r9+#0x4]
   d4f06:	e2 41       	slt45 $r2,$r1
   d4f08:	e9 69       	bnezs8 d4fda <_malloc_r+0x2d8>
   d4f0a:	40 30 88 02 	and $r3,$r1,$r2
   d4f0e:	cb 08       	bnez38 $r3,d4f1e <_malloc_r+0x21c>
   d4f10:	92 02       	srli45 $r0,#2
   d4f12:	94 02       	slli333 $r0,$r0,#2
   d4f14:	98 49       	add333 $r1,$r1,$r1
   d4f16:	40 30 88 02 	and $r3,$r1,$r2
   d4f1a:	9c 04       	addi333 $r0,$r0,#4
   d4f1c:	c3 fc       	beqz38 $r3,d4f14 <_malloc_r+0x212>
   d4f1e:	50 32 7f f8 	addi $r3,$r4,#-8
   d4f22:	94 83       	slli333 $r2,$r0,#3
   d4f24:	98 93       	add333 $r2,$r2,$r3
   d4f26:	80 a2       	mov55 $r5,$r2
   d4f28:	80 60       	mov55 $r3,$r0
   d4f2a:	a1 ab       	lwi333 $r6,[$r5+#0xc]
   d4f2c:	d5 32       	j8 d4f90 <_malloc_r+0x28e>
   d4f2e:	04 83 00 01 	lwi $r8,[$r6+#0x4]
   d4f32:	41 e4 08 09 	srli $lp,$r8,#2
   d4f36:	41 ef 08 08 	slli $lp,$lp,#2
   d4f3a:	40 8f 1c 01 	sub $r8,$lp,$r7
   d4f3e:	15 ef 80 03 	swi $lp,[$sp+#0xc]
   d4f42:	e5 10       	sltsi45 $r8,#16
   d4f44:	e9 14       	bnezs8 d4f6c <_malloc_r+0x26a>
   d4f46:	a0 73       	lwi333 $r1,[$r6+#0xc]
   d4f48:	a0 b2       	lwi333 $r2,[$r6+#0x8]
   d4f4a:	98 37       	add333 $r0,$r6,$r7
   d4f4c:	a8 53       	swi333 $r1,[$r2+#0xc]
   d4f4e:	a8 8a       	swi333 $r2,[$r1+#0x8]
   d4f50:	58 73 80 01 	ori $r7,$r7,#0x1
   d4f54:	58 14 00 01 	ori $r1,$r8,#0x1
   d4f58:	a9 f1       	swi333 $r7,[$r6+#0x4]
   d4f5a:	a8 23       	swi333 $r0,[$r4+#0xc]
   d4f5c:	a8 22       	swi333 $r0,[$r4+#0x8]
   d4f5e:	a9 03       	swi333 $r4,[$r0+#0xc]
   d4f60:	a9 02       	swi333 $r4,[$r0+#0x8]
   d4f62:	a8 41       	swi333 $r1,[$r0+#0x4]
   d4f64:	38 80 20 0a 	sw $r8,[$r0+($r8<<#0x0)]
   d4f68:	48 00 00 e8 	j d5138 <_malloc_r+0x436>
   d4f6c:	05 e3 00 03 	lwi $lp,[$r6+#0xc]
   d4f70:	4e 85 00 0f 	bltz $r8,d4f8e <_malloc_r+0x28c>
   d4f74:	f1 03       	lwi37.sp $r1,[+#0xc]
   d4f76:	98 31       	add333 $r0,$r6,$r1
   d4f78:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d4f7a:	58 10 80 01 	ori $r1,$r1,#0x1
   d4f7e:	a8 41       	swi333 $r1,[$r0+#0x4]
   d4f80:	a0 32       	lwi333 $r0,[$r6+#0x8]
   d4f82:	15 e0 00 03 	swi $lp,[$r0+#0xc]
   d4f86:	14 0f 00 02 	swi $r0,[$lp+#0x8]
   d4f8a:	48 00 00 d7 	j d5138 <_malloc_r+0x436>
   d4f8e:	80 de       	mov55 $r6,$lp
   d4f90:	de cf       	bnes38 $r6,d4f2e <_malloc_r+0x22c>
   d4f92:	9c d9       	addi333 $r3,$r3,#1
   d4f94:	54 61 80 03 	andi $r6,$r3,#0x3
   d4f98:	c6 03       	beqz38 $r6,d4f9e <_malloc_r+0x29c>
   d4f9a:	8c a8       	addi45 $r5,#8
   d4f9c:	d5 c7       	j8 d4f2a <_malloc_r+0x228>
   d4f9e:	54 50 00 03 	andi $r5,$r0,#0x3
   d4fa2:	cd 08       	bnez38 $r5,d4fb2 <_malloc_r+0x2b0>
   d4fa4:	04 24 80 01 	lwi $r2,[$r9+#0x4]
   d4fa8:	fe 0b       	not33 $r0,$r1
   d4faa:	fe 16       	and33 $r0,$r2
   d4fac:	14 04 80 01 	swi $r0,[$r9+#0x4]
   d4fb0:	d5 07       	j8 d4fbe <_malloc_r+0x2bc>
   d4fb2:	50 51 7f f8 	addi $r5,$r2,#-8
   d4fb6:	b4 42       	lwi450 $r2,[$r2]
   d4fb8:	da 03       	bnes38 $r2,d4fbe <_malloc_r+0x2bc>
   d4fba:	9e 01       	subi333 $r0,$r0,#1
   d4fbc:	d5 f1       	j8 d4f9e <_malloc_r+0x29c>
   d4fbe:	04 24 80 01 	lwi $r2,[$r9+#0x4]
   d4fc2:	98 49       	add333 $r1,$r1,$r1
   d4fc4:	e2 41       	slt45 $r2,$r1
   d4fc6:	e9 0a       	bnezs8 d4fda <_malloc_r+0x2d8>
   d4fc8:	c1 09       	beqz38 $r1,d4fda <_malloc_r+0x2d8>
   d4fca:	80 03       	mov55 $r0,$r3
   d4fcc:	d5 03       	j8 d4fd2 <_malloc_r+0x2d0>
   d4fce:	9c 04       	addi333 $r0,$r0,#4
   d4fd0:	98 49       	add333 $r1,$r1,$r1
   d4fd2:	40 30 88 02 	and $r3,$r1,$r2
   d4fd6:	cb a4       	bnez38 $r3,d4f1e <_malloc_r+0x21c>
   d4fd8:	d5 fb       	j8 d4fce <_malloc_r+0x2cc>
   d4fda:	04 84 80 02 	lwi $r8,[$r9+#0x8]
   d4fde:	04 24 00 01 	lwi $r2,[$r8+#0x4]
   d4fe2:	92 42       	srli45 $r2,#2
   d4fe4:	94 92       	slli333 $r2,$r2,#2
   d4fe6:	e2 47       	slt45 $r2,$r7
   d4fe8:	e9 05       	bnezs8 d4ff2 <_malloc_r+0x2f0>
   d4fea:	9a 57       	sub333 $r1,$r2,$r7
   d4fec:	e4 30       	sltsi45 $r1,#16
   d4fee:	4e f2 00 9a 	beqz $r15,d5122 <_malloc_r+0x420>
   d4ff2:	3c 3d f4 a0 	lwi.gp $r3,[+#-11648]
   d4ff6:	3c 0d f1 96 	lwi.gp $r0,[+#-14760]
   d4ffa:	8c 70       	addi45 $r3,#16
   d4ffc:	98 df       	add333 $r3,$r3,$r7
   d4ffe:	5a 07 ff 07 	beqc $r0,#-1,d500c <_malloc_r+0x30a>
   d5002:	50 31 8f ff 	addi $r3,$r3,#4095
   d5006:	92 6c       	srli45 $r3,#12
   d5008:	40 31 b0 08 	slli $r3,$r3,#12
   d500c:	80 23       	mov55 $r1,$r3
   d500e:	80 0a       	mov55 $r0,$r10
   d5010:	f2 81       	swi37.sp $r2,[+#0x4]
   d5012:	f3 82       	swi37.sp $r3,[+#0x8]
   d5014:	49 00 00 c6 	jal d51a0 <_sbrk_r>
   d5018:	80 c0       	mov55 $r6,$r0
   d501a:	f2 01       	lwi37.sp $r2,[+#0x4]
   d501c:	f3 02       	lwi37.sp $r3,[+#0x8]
   d501e:	85 ff       	movi55 $r15,#-1
   d5020:	4c 07 80 72 	beq $r0,$r15,d5104 <_malloc_r+0x402>
   d5024:	40 04 08 00 	add $r0,$r8,$r2
   d5028:	e2 c0       	slt45 $r6,$r0
   d502a:	e8 03       	beqzs8 d5030 <_malloc_r+0x32e>
   d502c:	4c 84 c0 6c 	bne $r8,$r9,d5104 <_malloc_r+0x402>
   d5030:	3c 4d f4 a3 	lwi.gp $r4,[+#-11636]
   d5034:	99 1c       	add333 $r4,$r3,$r4
   d5036:	3c 4f f4 a3 	swi.gp $r4,[+#-11636]
   d503a:	4c 60 40 0c 	bne $r6,$r0,d5052 <_malloc_r+0x350>
   d503e:	54 13 0f ff 	andi $r1,$r6,#0xfff
   d5042:	c9 08       	bnez38 $r1,d5052 <_malloc_r+0x350>
   d5044:	04 04 80 02 	lwi $r0,[$r9+#0x8]
   d5048:	98 9a       	add333 $r2,$r3,$r2
   d504a:	58 21 00 01 	ori $r2,$r2,#0x1
   d504e:	a8 81       	swi333 $r2,[$r0+#0x4]
   d5050:	d5 4c       	j8 d50e8 <_malloc_r+0x3e6>
   d5052:	3c 5d f1 96 	lwi.gp $r5,[+#-14760]
   d5056:	5a 5f ff 05 	bnec $r5,#-1,d5060 <_malloc_r+0x35e>
   d505a:	3c 6f f1 96 	swi.gp $r6,[+#-14760]
   d505e:	d5 05       	j8 d5068 <_malloc_r+0x366>
   d5060:	99 34       	add333 $r4,$r6,$r4
   d5062:	9a 20       	sub333 $r0,$r4,$r0
   d5064:	3c 0f f4 a3 	swi.gp $r0,[+#-11636]
   d5068:	54 03 00 07 	andi $r0,$r6,#0x7
   d506c:	c0 04       	beqz38 $r0,d5074 <_malloc_r+0x372>
   d506e:	52 00 00 08 	subri $r0,$r0,#8
   d5072:	99 b0       	add333 $r6,$r6,$r0
   d5074:	98 f3       	add333 $r3,$r6,$r3
   d5076:	50 00 10 00 	addi $r0,$r0,#4096
   d507a:	54 31 8f ff 	andi $r3,$r3,#0xfff
   d507e:	9a c3       	sub333 $r3,$r0,$r3
   d5080:	80 23       	mov55 $r1,$r3
   d5082:	80 0a       	mov55 $r0,$r10
   d5084:	f2 81       	swi37.sp $r2,[+#0x4]
   d5086:	f3 82       	swi37.sp $r3,[+#0x8]
   d5088:	49 00 00 8c 	jal d51a0 <_sbrk_r>
   d508c:	f2 01       	lwi37.sp $r2,[+#0x4]
   d508e:	f3 02       	lwi37.sp $r3,[+#0x8]
   d5090:	5a 0f ff 04 	bnec $r0,#-1,d5098 <_malloc_r+0x396>
   d5094:	80 06       	mov55 $r0,$r6
   d5096:	84 60       	movi55 $r3,#0
   d5098:	3c 4d f4 a3 	lwi.gp $r4,[+#-11636]
   d509c:	9a 06       	sub333 $r0,$r0,$r6
   d509e:	99 1c       	add333 $r4,$r3,$r4
   d50a0:	98 c3       	add333 $r3,$r0,$r3
   d50a2:	58 31 80 01 	ori $r3,$r3,#0x1
   d50a6:	3c 4f f4 a3 	swi.gp $r4,[+#-11636]
   d50aa:	14 64 80 02 	swi $r6,[$r9+#0x8]
   d50ae:	a8 f1       	swi333 $r3,[$r6+#0x4]
   d50b0:	4c 84 80 1c 	beq $r8,$r9,d50e8 <_malloc_r+0x3e6>
   d50b4:	e6 50       	slti45 $r2,#16
   d50b6:	e8 04       	beqzs8 d50be <_malloc_r+0x3bc>
   d50b8:	84 01       	movi55 $r0,#1
   d50ba:	a8 31       	swi333 $r0,[$r6+#0x4]
   d50bc:	d5 24       	j8 d5104 <_malloc_r+0x402>
   d50be:	8e 4c       	subi45 $r2,#12
   d50c0:	92 43       	srli45 $r2,#3
   d50c2:	94 93       	slli333 $r2,$r2,#3
   d50c4:	04 04 00 01 	lwi $r0,[$r8+#0x4]
   d50c8:	84 25       	movi55 $r1,#5
   d50ca:	96 04       	xlsb33 $r0,$r0
   d50cc:	fe 17       	or33 $r0,$r2
   d50ce:	14 04 00 01 	swi $r0,[$r8+#0x4]
   d50d2:	40 04 08 00 	add $r0,$r8,$r2
   d50d6:	a8 41       	swi333 $r1,[$r0+#0x4]
   d50d8:	a8 42       	swi333 $r1,[$r0+#0x8]
   d50da:	e6 50       	slti45 $r2,#16
   d50dc:	e9 06       	bnezs8 d50e8 <_malloc_r+0x3e6>
   d50de:	80 0a       	mov55 $r0,$r10
   d50e0:	50 14 00 08 	addi $r1,$r8,#8
   d50e4:	49 ff fd 52 	jal d4b88 <_free_r>
   d50e8:	3c 0d f4 a3 	lwi.gp $r0,[+#-11636]
   d50ec:	3c 2d f4 a1 	lwi.gp $r2,[+#-11644]
   d50f0:	e2 40       	slt45 $r2,$r0
   d50f2:	e8 03       	beqzs8 d50f8 <_malloc_r+0x3f6>
   d50f4:	3c 0f f4 a1 	swi.gp $r0,[+#-11644]
   d50f8:	3c 2d f4 a2 	lwi.gp $r2,[+#-11640]
   d50fc:	e2 40       	slt45 $r2,$r0
   d50fe:	e8 03       	beqzs8 d5104 <_malloc_r+0x402>
   d5100:	3c 0f f4 a2 	swi.gp $r0,[+#-11640]
   d5104:	04 04 80 02 	lwi $r0,[$r9+#0x8]
   d5108:	a0 41       	lwi333 $r1,[$r0+#0x4]
   d510a:	92 22       	srli45 $r1,#2
   d510c:	94 4a       	slli333 $r1,$r1,#2
   d510e:	e2 27       	slt45 $r1,$r7
   d5110:	e9 04       	bnezs8 d5118 <_malloc_r+0x416>
   d5112:	9a 4f       	sub333 $r1,$r1,$r7
   d5114:	e4 30       	sltsi45 $r1,#16
   d5116:	e8 06       	beqzs8 d5122 <_malloc_r+0x420>
   d5118:	80 0a       	mov55 $r0,$r10
   d511a:	49 00 00 17 	jal d5148 <__malloc_unlock>
   d511e:	84 00       	movi55 $r0,#0
   d5120:	d5 11       	j8 d5142 <_malloc_r+0x440>
   d5122:	04 64 80 02 	lwi $r6,[$r9+#0x8]
   d5126:	58 03 80 01 	ori $r0,$r7,#0x1
   d512a:	58 10 80 01 	ori $r1,$r1,#0x1
   d512e:	99 f7       	add333 $r7,$r6,$r7
   d5130:	a8 31       	swi333 $r0,[$r6+#0x4]
   d5132:	14 74 80 02 	swi $r7,[$r9+#0x8]
   d5136:	a8 79       	swi333 $r1,[$r7+#0x4]
   d5138:	80 0a       	mov55 $r0,$r10
   d513a:	49 00 00 07 	jal d5148 <__malloc_unlock>
   d513e:	50 03 00 08 	addi $r0,$r6,#8
   d5142:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

000d5144 <__malloc_lock>:
   d5144:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d5146:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d5148 <__malloc_unlock>:
   d5148:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d514a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d514c <mallinfo>:
   d514c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d514e:	84 20       	movi55 $r1,#0
   d5150:	80 c0       	mov55 $r6,$r0
   d5152:	49 00 07 24 	jal d5f9a <_mallinfo_r>
   d5156:	80 06       	mov55 $r0,$r6
   d5158:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d515a <puts>:
   d515a:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d515c:	51 cf 80 1c 	addi $fp,$sp,#28
   d5160:	84 c0       	movi55 $r6,#0
   d5162:	80 20       	mov55 $r1,$r0
   d5164:	d5 02       	j8 d5168 <puts+0xe>
   d5166:	80 c9       	mov55 $r6,$r9
   d5168:	38 80 98 10 	lbs $r8,[$r1+($r6<<#0x0)]
   d516c:	50 93 00 01 	addi $r9,$r6,#1
   d5170:	4e 83 ff fb 	bnez $r8,d5166 <puts+0xc>
   d5174:	50 03 00 0f 	addi $r0,$r6,#15
   d5178:	92 03       	srli45 $r0,#3
   d517a:	94 03       	slli333 $r0,$r0,#3
   d517c:	41 ff 80 01 	sub $sp,$sp,$r0
   d5180:	80 46       	mov55 $r2,$r6
   d5182:	80 1f       	mov55 $r0,$sp
   d5184:	49 ff 97 62 	jal c8048 <memcpy>
   d5188:	84 0a       	movi55 $r0,#10
   d518a:	38 0f 98 08 	sb $r0,[$sp+($r6<<#0x0)]
   d518e:	80 29       	mov55 $r1,$r9
   d5190:	80 1f       	mov55 $r0,$sp
   d5192:	49 ff e8 02 	jal d2196 <nds_write>
   d5196:	80 ff       	mov55 $r7,$sp
   d5198:	80 08       	mov55 $r0,$r8
   d519a:	51 fe 7f e4 	addi $sp,$fp,#-28
   d519e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000d51a0 <_sbrk_r>:
   d51a0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d51a2:	87 80       	movi55 $fp,#0
   d51a4:	84 00       	movi55 $r0,#0
   d51a6:	3c 0f f4 b9 	swi.gp $r0,[+#-11548]
   d51aa:	80 01       	mov55 $r0,$r1
   d51ac:	49 ff e6 d6 	jal d1f58 <_sbrk>
   d51b0:	5a 0f ff 07 	bnec $r0,#-1,d51be <_sbrk_r+0x1e>
   d51b4:	3c 1d f4 b9 	lwi.gp $r1,[+#-11548]
   d51b8:	c1 03       	beqz38 $r1,d51be <_sbrk_r+0x1e>
   d51ba:	3c 1f f4 af 	swi.gp $r1,[+#-11588]
   d51be:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d51c0 <sprintf>:
   d51c0:	3a 2f 94 3c 	smw.adm $r2,[$sp],$r5,#0x0    ! {$r2~$r5}
   d51c4:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   d51c6:	b0 86       	addri36.sp $r2,#0x18
   d51c8:	f2 81       	swi37.sp $r2,[+#0x4]
   d51ca:	49 00 00 3c 	jal d5242 <vsprintf>
   d51ce:	ec 08       	addi10.sp #8
   d51d0:	3a 6f 9b 84 	lmw.bim $r6,[$sp],$r6,#0xe    ! {$r6, $fp, $gp, $lp}
   d51d4:	ec 10       	addi10.sp #16
   d51d6:	dd 9e       	ret5 $lp

000d51d8 <vprintf>:
   d51d8:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d51da:	51 cf 80 14 	addi $fp,$sp,#20
   d51de:	51 ff fd f8 	addi $sp,$sp,#-520
   d51e2:	84 60       	movi55 $r3,#0
   d51e4:	3e 2d 12 10 	addi.gp $r2,#-191984
   d51e8:	3e 4d 18 78 	addi.gp $r4,#-190344
   d51ec:	3d ff f4 ad 	swi.gp $sp,[+#-11596]
   d51f0:	3c 3f f4 ae 	swi.gp $r3,[+#-11592]
   d51f4:	49 00 00 36 	jal d5260 <do_printf>
   d51f8:	3c 1d f4 ae 	lwi.gp $r1,[+#-11592]
   d51fc:	81 00       	mov55 $r8,$r0
   d51fe:	c1 05       	beqz38 $r1,d5208 <vprintf+0x30>
   d5200:	3c 0d f4 ad 	lwi.gp $r0,[+#-11596]
   d5204:	49 ff e7 c9 	jal d2196 <nds_write>
   d5208:	80 08       	mov55 $r0,$r8
   d520a:	51 fe 7f ec 	addi $sp,$fp,#-20
   d520e:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d5210 <vprintf_help>:
   d5210:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d5212:	87 80       	movi55 $fp,#0
   d5214:	3c 2d f4 ad 	lwi.gp $r2,[+#-11596]
   d5218:	3c 1d f4 ae 	lwi.gp $r1,[+#-11592]
   d521c:	38 01 04 08 	sb $r0,[$r2+($r1<<#0x0)]
   d5220:	9c 49       	addi333 $r1,$r1,#1
   d5222:	3c 1f f4 ae 	swi.gp $r1,[+#-11592]
   d5226:	5a 19 ff 05 	bnec $r1,#511,d5230 <vprintf_help+0x20>
   d522a:	80 02       	mov55 $r0,$r2
   d522c:	49 ff e7 b5 	jal d2196 <nds_write>
   d5230:	84 00       	movi55 $r0,#0
   d5232:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d5234 <vsprintf_help>:
   d5234:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d5236:	b4 41       	lwi450 $r2,[$r1]
   d5238:	18 01 00 01 	sbi.bi $r0,[$r2],#0x1
   d523c:	84 00       	movi55 $r0,#0
   d523e:	b6 41       	swi450 $r2,[$r1]
   d5240:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d5242 <vsprintf>:
   d5242:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d5244:	80 c0       	mov55 $r6,$r0
   d5246:	80 66       	mov55 $r3,$r6
   d5248:	80 01       	mov55 $r0,$r1
   d524a:	3e 4d 18 78 	addi.gp $r4,#-190344
   d524e:	80 22       	mov55 $r1,$r2
   d5250:	3e 2d 12 34 	addi.gp $r2,#-191948
   d5254:	49 00 00 06 	jal d5260 <do_printf>
   d5258:	84 40       	movi55 $r2,#0
   d525a:	38 23 00 08 	sb $r2,[$r6+($r0<<#0x0)]
   d525e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d5260 <do_printf>:
   d5260:	fc 49       	push25 $r10,#0x48    ! {$r6~$r10, $fp, $gp, $lp}
   d5262:	51 cf 80 64 	addi $fp,$sp,#100
   d5266:	84 a0       	movi55 $r5,#0
   d5268:	f0 88       	swi37.sp $r0,[+#0x20]
   d526a:	f1 86       	swi37.sp $r1,[+#0x18]
   d526c:	f2 87       	swi37.sp $r2,[+#0x1c]
   d526e:	f3 8b       	swi37.sp $r3,[+#0x2c]
   d5270:	f4 84       	swi37.sp $r4,[+#0x10]
   d5272:	80 c5       	mov55 $r6,$r5
   d5274:	f5 89       	swi37.sp $r5,[+#0x24]
   d5276:	f5 8a       	swi37.sp $r5,[+#0x28]
   d5278:	81 25       	mov55 $r9,$r5
   d527a:	80 e5       	mov55 $r7,$r5
   d527c:	48 00 02 b7 	j d57ea <do_printf+0x58a>
   d5280:	5a 60 02 6a 	beqc $r6,#2,d5354 <do_printf+0xf4>
   d5284:	e6 c3       	slti45 $r6,#3
   d5286:	e8 06       	beqzs8 d5292 <do_printf+0x32>
   d5288:	c6 0f       	beqz38 $r6,d52a6 <do_printf+0x46>
   d528a:	85 e1       	movi55 $r15,#1
   d528c:	4c 67 c2 a7 	bne $r6,$r15,d57da <do_printf+0x57a>
   d5290:	d5 22       	j8 d52d4 <do_printf+0x74>
   d5292:	85 e4       	movi55 $r15,#4
   d5294:	4c 67 80 92 	beq $r6,$r15,d53b8 <do_printf+0x158>
   d5298:	e6 c4       	slti45 $r6,#4
   d529a:	e9 70       	bnezs8 d537a <do_printf+0x11a>
   d529c:	85 e5       	movi55 $r15,#5
   d529e:	4c 67 c2 9e 	bne $r6,$r15,d57da <do_printf+0x57a>
   d52a2:	48 00 00 a3 	j d53e8 <do_printf+0x188>
   d52a6:	5a 00 25 0e 	beqc $r0,#37,d52c2 <do_printf+0x62>
   d52aa:	04 2e 7f ee 	lwi $r2,[$fp+#-0x48]
   d52ae:	50 1e 7f c8 	addi $r1,$fp,#-56
   d52b2:	dd 22       	jral5 $r2
   d52b4:	04 3e 7f f1 	lwi $r3,[$fp+#-0x3c]
   d52b8:	9c d9       	addi333 $r3,$r3,#1
   d52ba:	14 3e 7f f1 	swi $r3,[$fp+#-0x3c]
   d52be:	48 00 02 91 	j d57e0 <do_printf+0x580>
   d52c2:	04 0e 7f ef 	lwi $r0,[$fp+#-0x44]
   d52c6:	14 6e 7f f0 	swi $r6,[$fp+#-0x40]
   d52ca:	9c 01       	addi333 $r0,$r0,#1
   d52cc:	14 0e 7f ef 	swi $r0,[$fp+#-0x44]
   d52d0:	80 e6       	mov55 $r7,$r6
   d52d2:	81 26       	mov55 $r9,$r6
   d52d4:	04 1e 7f ef 	lwi $r1,[$fp+#-0x44]
   d52d8:	20 00 80 00 	lbsi $r0,[$r1+#0x0]
   d52dc:	5a 08 25 0e 	bnec $r0,#37,d52f8 <do_printf+0x98>
   d52e0:	04 2e 7f ee 	lwi $r2,[$fp+#-0x48]
   d52e4:	50 1e 7f c8 	addi $r1,$fp,#-56
   d52e8:	dd 22       	jral5 $r2
   d52ea:	04 3e 7f f1 	lwi $r3,[$fp+#-0x3c]
   d52ee:	9c d9       	addi333 $r3,$r3,#1
   d52f0:	14 3e 7f f1 	swi $r3,[$fp+#-0x3c]
   d52f4:	48 00 02 73 	j d57da <do_printf+0x57a>
   d52f8:	5a 08 20 09 	bnec $r0,#32,d530a <do_printf+0xaa>
   d52fc:	54 13 a0 00 	andi $r1,$r7,#0x2000
   d5300:	4e 13 02 6d 	bnez $r1,d57da <do_printf+0x57a>
   d5304:	58 73 a0 00 	ori $r7,$r7,#0x2000
   d5308:	d5 23       	j8 d534e <do_printf+0xee>
   d530a:	5a 08 2d 08 	bnec $r0,#45,d531a <do_printf+0xba>
   d530e:	96 7c       	xlsb33 $r1,$r7
   d5310:	4e 13 02 65 	bnez $r1,d57da <do_printf+0x57a>
   d5314:	58 73 80 01 	ori $r7,$r7,#0x1
   d5318:	d5 1b       	j8 d534e <do_printf+0xee>
   d531a:	5a 08 2b 09 	bnec $r0,#43,d532c <do_printf+0xcc>
   d531e:	54 13 82 00 	andi $r1,$r7,#0x200
   d5322:	4e 13 02 5c 	bnez $r1,d57da <do_printf+0x57a>
   d5326:	58 73 82 00 	ori $r7,$r7,#0x200
   d532a:	d5 12       	j8 d534e <do_printf+0xee>
   d532c:	5a 08 23 09 	bnec $r0,#35,d533e <do_printf+0xde>
   d5330:	54 13 90 00 	andi $r1,$r7,#0x1000
   d5334:	4e 13 02 53 	bnez $r1,d57da <do_printf+0x57a>
   d5338:	58 73 90 00 	ori $r7,$r7,#0x1000
   d533c:	d5 09       	j8 d534e <do_printf+0xee>
   d533e:	5a 08 30 0b 	bnec $r0,#48,d5354 <do_printf+0xf4>
   d5342:	54 13 80 40 	andi $r1,$r7,#0x40
   d5346:	4e 13 02 4a 	bnez $r1,d57da <do_printf+0x57a>
   d534a:	58 73 80 40 	ori $r7,$r7,#0x40
   d534e:	84 c1       	movi55 $r6,#1
   d5350:	48 00 02 48 	j d57e0 <do_printf+0x580>
   d5354:	04 6e 7f ef 	lwi $r6,[$fp+#-0x44]
   d5358:	20 33 00 00 	lbsi $r3,[$r6+#0x0]
   d535c:	50 11 ff d0 	addi $r1,$r3,#-48
   d5360:	96 48       	zeb33 $r1,$r1
   d5362:	e6 2a       	slti45 $r1,#10
   d5364:	e8 0b       	beqzs8 d537a <do_printf+0x11a>
   d5366:	84 2a       	movi55 $r1,#10
   d5368:	42 24 84 24 	mul $r2,$r9,$r1
   d536c:	50 21 7f d0 	addi $r2,$r2,#-48
   d5370:	40 91 0c 00 	add $r9,$r2,$r3
   d5374:	84 c2       	movi55 $r6,#2
   d5376:	48 00 02 35 	j d57e0 <do_printf+0x580>
   d537a:	04 0e 7f ef 	lwi $r0,[$fp+#-0x44]
   d537e:	20 10 00 00 	lbsi $r1,[$r0+#0x0]
   d5382:	5a 18 2e 05 	bnec $r1,#46,d538c <do_printf+0x12c>
   d5386:	58 73 81 00 	ori $r7,$r7,#0x100
   d538a:	d5 14       	j8 d53b2 <do_printf+0x152>
   d538c:	54 33 81 00 	andi $r3,$r7,#0x100
   d5390:	c3 14       	beqz38 $r3,d53b8 <do_printf+0x158>
   d5392:	5e f0 80 30 	sltsi $r15,$r1,#48
   d5396:	e9 11       	bnezs8 d53b8 <do_printf+0x158>
   d5398:	5e f0 80 3a 	sltsi $r15,$r1,#58
   d539c:	e8 0e       	beqzs8 d53b8 <do_printf+0x158>
   d539e:	04 2e 7f f0 	lwi $r2,[$fp+#-0x40]
   d53a2:	84 6a       	movi55 $r3,#10
   d53a4:	42 41 0c 24 	mul $r4,$r2,$r3
   d53a8:	50 42 7f d0 	addi $r4,$r4,#-48
   d53ac:	99 21       	add333 $r4,$r4,$r1
   d53ae:	14 4e 7f f0 	swi $r4,[$fp+#-0x40]
   d53b2:	84 c3       	movi55 $r6,#3
   d53b4:	48 00 02 16 	j d57e0 <do_printf+0x580>
   d53b8:	04 3e 7f ef 	lwi $r3,[$fp+#-0x44]
   d53bc:	20 01 80 00 	lbsi $r0,[$r3+#0x0]
   d53c0:	5a 08 46 05 	bnec $r0,#70,d53ca <do_printf+0x16a>
   d53c4:	58 73 80 80 	ori $r7,$r7,#0x80
   d53c8:	d5 0d       	j8 d53e2 <do_printf+0x182>
   d53ca:	5a 08 4e 03 	bnec $r0,#78,d53d0 <do_printf+0x170>
   d53ce:	d5 0a       	j8 d53e2 <do_printf+0x182>
   d53d0:	5a 08 6c 05 	bnec $r0,#108,d53da <do_printf+0x17a>
   d53d4:	58 73 80 08 	ori $r7,$r7,#0x8
   d53d8:	d5 05       	j8 d53e2 <do_printf+0x182>
   d53da:	5a 08 68 07 	bnec $r0,#104,d53e8 <do_printf+0x188>
   d53de:	58 73 80 10 	ori $r7,$r7,#0x10
   d53e2:	84 c4       	movi55 $r6,#4
   d53e4:	48 00 01 fe 	j d57e0 <do_printf+0x580>
   d53e8:	84 20       	movi55 $r1,#0
   d53ea:	10 1e 7f df 	sbi $r1,[$fp+#-0x21]
   d53ee:	04 6e 7f ef 	lwi $r6,[$fp+#-0x44]
   d53f2:	20 03 00 00 	lbsi $r0,[$r6+#0x0]
   d53f6:	5a 08 66 04 	bnec $r0,#102,d53fe <do_printf+0x19e>
   d53fa:	48 00 01 8d 	j d5714 <do_printf+0x4b4>
   d53fe:	5e f0 00 67 	sltsi $r15,$r0,#103
   d5402:	e8 20       	beqzs8 d5442 <do_printf+0x1e2>
   d5404:	5a 00 58 47 	beqc $r0,#88,d5492 <do_printf+0x232>
   d5408:	5e f0 00 59 	sltsi $r15,$r0,#89
   d540c:	e8 0f       	beqzs8 d542a <do_printf+0x1ca>
   d540e:	5a 08 46 04 	bnec $r0,#70,d5416 <do_printf+0x1b6>
   d5412:	48 00 01 81 	j d5714 <do_printf+0x4b4>
   d5416:	5a 08 47 04 	bnec $r0,#71,d541e <do_printf+0x1be>
   d541a:	48 00 01 7b 	j d5710 <do_printf+0x4b0>
   d541e:	5a 00 45 04 	beqc $r0,#69,d5426 <do_printf+0x1c6>
   d5422:	48 00 01 dc 	j d57da <do_printf+0x57a>
   d5426:	48 00 01 72 	j d570a <do_printf+0x4aa>
   d542a:	5a 00 64 38 	beqc $r0,#100,d549a <do_printf+0x23a>
   d542e:	5e f0 00 65 	sltsi $r15,$r0,#101
   d5432:	4e f2 01 6c 	beqz $r15,d570a <do_printf+0x4aa>
   d5436:	5a 00 63 04 	beqc $r0,#99,d543e <do_printf+0x1de>
   d543a:	48 00 01 d0 	j d57da <do_printf+0x57a>
   d543e:	48 00 01 36 	j d56aa <do_printf+0x44a>
   d5442:	5a 00 6f 26 	beqc $r0,#111,d548e <do_printf+0x22e>
   d5446:	5e f0 00 70 	sltsi $r15,$r0,#112
   d544a:	e8 0d       	beqzs8 d5464 <do_printf+0x204>
   d544c:	5a 00 69 27 	beqc $r0,#105,d549a <do_printf+0x23a>
   d5450:	5a 08 6e 04 	bnec $r0,#110,d5458 <do_printf+0x1f8>
   d5454:	48 00 01 d6 	j d5800 <do_printf+0x5a0>
   d5458:	5a 00 67 04 	beqc $r0,#103,d5460 <do_printf+0x200>
   d545c:	48 00 01 bf 	j d57da <do_printf+0x57a>
   d5460:	48 00 01 58 	j d5710 <do_printf+0x4b0>
   d5464:	5a 08 73 04 	bnec $r0,#115,d546c <do_printf+0x20c>
   d5468:	48 00 01 2c 	j d56c0 <do_printf+0x460>
   d546c:	5e f0 00 74 	sltsi $r15,$r0,#116
   d5470:	e8 07       	beqzs8 d547e <do_printf+0x21e>
   d5472:	5a 00 70 04 	beqc $r0,#112,d547a <do_printf+0x21a>
   d5476:	48 00 01 b2 	j d57da <do_printf+0x57a>
   d547a:	48 00 01 c3 	j d5800 <do_printf+0x5a0>
   d547e:	5a 00 75 12 	beqc $r0,#117,d54a2 <do_printf+0x242>
   d5482:	5a 00 78 04 	beqc $r0,#120,d548a <do_printf+0x22a>
   d5486:	48 00 01 aa 	j d57da <do_printf+0x57a>
   d548a:	48 00 01 bb 	j d5800 <do_printf+0x5a0>
   d548e:	85 48       	movi55 $r10,#8
   d5490:	d5 16       	j8 d54bc <do_printf+0x25c>
   d5492:	58 73 80 02 	ori $r7,$r7,#0x2
   d5496:	fb 40       	movpi45 $r10,#0x10
   d5498:	d5 12       	j8 d54bc <do_printf+0x25c>
   d549a:	58 73 80 04 	ori $r7,$r7,#0x4
   d549e:	5a 08 64 04 	bnec $r0,#100,d54a6 <do_printf+0x246>
   d54a2:	85 4a       	movi55 $r10,#10
   d54a4:	d5 0c       	j8 d54bc <do_printf+0x25c>
   d54a6:	85 4a       	movi55 $r10,#10
   d54a8:	5a 00 69 0a 	beqc $r0,#105,d54bc <do_printf+0x25c>
   d54ac:	5a 00 6f 08 	beqc $r0,#111,d54bc <do_printf+0x25c>
   d54b0:	5a 00 75 06 	beqc $r0,#117,d54bc <do_printf+0x25c>
   d54b4:	5a 00 58 04 	beqc $r0,#88,d54bc <do_printf+0x25c>
   d54b8:	5a 08 78 0a 	bnec $r0,#120,d54cc <do_printf+0x26c>
   d54bc:	04 0e 7f f0 	lwi $r0,[$fp+#-0x40]
   d54c0:	c0 06       	beqz38 $r0,d54cc <do_printf+0x26c>
   d54c2:	4e 93 00 05 	bnez $r9,d54cc <do_printf+0x26c>
   d54c6:	58 73 80 40 	ori $r7,$r7,#0x40
   d54ca:	81 20       	mov55 $r9,$r0
   d54cc:	04 1e 7f ed 	lwi $r1,[$fp+#-0x4c]
   d54d0:	b4 a1       	lwi450 $r5,[$r1]
   d54d2:	54 13 80 04 	andi $r1,$r7,#0x4
   d54d6:	c1 06       	beqz38 $r1,d54e2 <do_printf+0x282>
   d54d8:	4e 54 00 05 	bgez $r5,d54e2 <do_printf+0x282>
   d54dc:	58 73 80 20 	ori $r7,$r7,#0x20
   d54e0:	ff 6a       	neg33 $r5,$r5
   d54e2:	50 8e 7f df 	addi $r8,$fp,#-33
   d54e6:	54 03 80 02 	andi $r0,$r7,#0x2
   d54ea:	40 22 a8 37 	divr $r2,$r1,$r5,$r10
   d54ee:	8f 01       	subi45 $r8,#1
   d54f0:	e6 2a       	slti45 $r1,#10
   d54f2:	e8 04       	beqzs8 d54fa <do_printf+0x29a>
   d54f4:	50 10 80 30 	addi $r1,$r1,#48
   d54f8:	d5 07       	j8 d5506 <do_printf+0x2a6>
   d54fa:	c0 04       	beqz38 $r0,d5502 <do_printf+0x2a2>
   d54fc:	50 10 80 37 	addi $r1,$r1,#55
   d5500:	d5 03       	j8 d5506 <do_printf+0x2a6>
   d5502:	50 10 80 57 	addi $r1,$r1,#87
   d5506:	10 14 00 00 	sbi $r1,[$r8+#0x0]
   d550a:	40 52 a8 37 	divr $r5,$r1,$r5,$r10
   d550e:	cd ee       	bnez38 $r5,d54ea <do_printf+0x28a>
   d5510:	80 08       	mov55 $r0,$r8
   d5512:	49 ff 95 f3 	jal c80f8 <strlen>
   d5516:	54 13 80 20 	andi $r1,$r7,#0x20
   d551a:	80 40       	mov55 $r2,$r0
   d551c:	c9 04       	bnez38 $r1,d5524 <do_printf+0x2c4>
   d551e:	54 13 82 00 	andi $r1,$r7,#0x200
   d5522:	c1 02       	beqz38 $r1,d5526 <do_printf+0x2c6>
   d5524:	9c 91       	addi333 $r2,$r2,#1
   d5526:	54 33 80 60 	andi $r3,$r7,#0x60
   d552a:	14 3e 7f ec 	swi $r3,[$fp+#-0x50]
   d552e:	5a 38 60 12 	bnec $r3,#96,d5552 <do_printf+0x2f2>
   d5532:	14 2e 7f ea 	swi $r2,[$fp+#-0x58]
   d5536:	04 6e 7f ee 	lwi $r6,[$fp+#-0x48]
   d553a:	fa 1d       	movpi45 $r0,#0x2d
   d553c:	50 1e 7f c8 	addi $r1,$fp,#-56
   d5540:	dd 26       	jral5 $r6
   d5542:	04 0e 7f f1 	lwi $r0,[$fp+#-0x3c]
   d5546:	04 2e 7f ea 	lwi $r2,[$fp+#-0x58]
   d554a:	9c 01       	addi333 $r0,$r0,#1
   d554c:	14 0e 7f f1 	swi $r0,[$fp+#-0x3c]
   d5550:	d5 32       	j8 d55b4 <do_printf+0x354>
   d5552:	54 13 90 00 	andi $r1,$r7,#0x1000
   d5556:	c1 2f       	beqz38 $r1,d55b4 <do_printf+0x354>
   d5558:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   d555c:	5a 10 30 2c 	beqc $r1,#48,d55b4 <do_printf+0x354>
   d5560:	04 3e 7f f0 	lwi $r3,[$fp+#-0x40]
   d5564:	9a 5a       	sub333 $r1,$r3,$r2
   d5566:	44 30 00 30 	movi $r3,#48
   d556a:	d5 06       	j8 d5576 <do_printf+0x316>
   d556c:	8f 01       	subi45 $r8,#1
   d556e:	10 34 00 00 	sbi $r3,[$r8+#0x0]
   d5572:	9c 91       	addi333 $r2,$r2,#1
   d5574:	9e 49       	subi333 $r1,$r1,#1
   d5576:	4e 16 ff fb 	bgtz $r1,d556c <do_printf+0x30c>
   d557a:	5a a8 10 12 	bnec $r10,#16,d559e <do_printf+0x33e>
   d557e:	54 13 80 02 	andi $r1,$r7,#0x2
   d5582:	8f 01       	subi45 $r8,#1
   d5584:	c9 04       	bnez38 $r1,d558c <do_printf+0x32c>
   d5586:	44 10 00 78 	movi $r1,#120
   d558a:	d5 03       	j8 d5590 <do_printf+0x330>
   d558c:	44 10 00 58 	movi $r1,#88
   d5590:	18 14 7f ff 	sbi.bi $r1,[$r8],#-0x1
   d5594:	80 23       	mov55 $r1,$r3
   d5596:	10 14 00 00 	sbi $r1,[$r8+#0x0]
   d559a:	9c 92       	addi333 $r2,$r2,#2
   d559c:	d5 0c       	j8 d55b4 <do_printf+0x354>
   d559e:	5a a8 08 0b 	bnec $r10,#8,d55b4 <do_printf+0x354>
   d55a2:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   d55a6:	5a 10 30 07 	beqc $r1,#48,d55b4 <do_printf+0x354>
   d55aa:	8f 01       	subi45 $r8,#1
   d55ac:	80 23       	mov55 $r1,$r3
   d55ae:	10 14 00 00 	sbi $r1,[$r8+#0x0]
   d55b2:	9c 91       	addi333 $r2,$r2,#1
   d55b4:	96 7c       	xlsb33 $r1,$r7
   d55b6:	c1 13       	beqz38 $r1,d55dc <do_printf+0x37c>
   d55b8:	d5 1f       	j8 d55f6 <do_printf+0x396>
   d55ba:	cf 03       	bnez38 $r7,d55c0 <do_printf+0x360>
   d55bc:	fa 10       	movpi45 $r0,#0x20
   d55be:	d5 03       	j8 d55c4 <do_printf+0x364>
   d55c0:	44 00 00 30 	movi $r0,#48
   d55c4:	14 3e 7f ea 	swi $r3,[$fp+#-0x58]
   d55c8:	04 2e 7f ee 	lwi $r2,[$fp+#-0x48]
   d55cc:	50 1e 7f c8 	addi $r1,$fp,#-56
   d55d0:	dd 22       	jral5 $r2
   d55d2:	8d 41       	addi45 $r10,#1
   d55d4:	8f 21       	subi45 $r9,#1
   d55d6:	04 3e 7f ea 	lwi $r3,[$fp+#-0x58]
   d55da:	d5 08       	j8 d55ea <do_printf+0x38a>
   d55dc:	54 63 80 40 	andi $r6,$r7,#0x40
   d55e0:	04 ae 7f f1 	lwi $r10,[$fp+#-0x3c]
   d55e4:	80 67       	mov55 $r3,$r7
   d55e6:	80 e6       	mov55 $r7,$r6
   d55e8:	80 c2       	mov55 $r6,$r2
   d55ea:	e2 c9       	slt45 $r6,$r9
   d55ec:	e9 e7       	bnezs8 d55ba <do_printf+0x35a>
   d55ee:	14 ae 7f f1 	swi $r10,[$fp+#-0x3c]
   d55f2:	80 46       	mov55 $r2,$r6
   d55f4:	80 e3       	mov55 $r7,$r3
   d55f6:	04 3e 7f ec 	lwi $r3,[$fp+#-0x50]
   d55fa:	5a 38 20 11 	bnec $r3,#32,d561c <do_printf+0x3bc>
   d55fe:	04 6e 7f ee 	lwi $r6,[$fp+#-0x48]
   d5602:	14 2e 7f ea 	swi $r2,[$fp+#-0x58]
   d5606:	fa 1d       	movpi45 $r0,#0x2d
   d5608:	50 1e 7f c8 	addi $r1,$fp,#-56
   d560c:	dd 26       	jral5 $r6
   d560e:	04 0e 7f f1 	lwi $r0,[$fp+#-0x3c]
   d5612:	9c 01       	addi333 $r0,$r0,#1
   d5614:	14 0e 7f f1 	swi $r0,[$fp+#-0x3c]
   d5618:	80 c0       	mov55 $r6,$r0
   d561a:	d5 1a       	j8 d564e <do_printf+0x3ee>
   d561c:	54 33 a0 20 	andi $r3,$r7,#0x2020
   d5620:	44 10 20 00 	movi $r1,#8192
   d5624:	4c 30 c0 04 	bne $r3,$r1,d562c <do_printf+0x3cc>
   d5628:	fa 10       	movpi45 $r0,#0x20
   d562a:	d5 06       	j8 d5636 <do_printf+0x3d6>
   d562c:	54 53 82 24 	andi $r5,$r7,#0x224
   d5630:	5a 5a 04 1a 	bnec $r5,#516,d5664 <do_printf+0x404>
   d5634:	fa 1b       	movpi45 $r0,#0x2b
   d5636:	14 2e 7f ea 	swi $r2,[$fp+#-0x58]
   d563a:	04 3e 7f ee 	lwi $r3,[$fp+#-0x48]
   d563e:	50 1e 7f c8 	addi $r1,$fp,#-56
   d5642:	dd 23       	jral5 $r3
   d5644:	04 6e 7f f1 	lwi $r6,[$fp+#-0x3c]
   d5648:	9d b1       	addi333 $r6,$r6,#1
   d564a:	14 6e 7f f1 	swi $r6,[$fp+#-0x3c]
   d564e:	04 2e 7f ea 	lwi $r2,[$fp+#-0x58]
   d5652:	d5 0b       	j8 d5668 <do_printf+0x408>
   d5654:	04 2e 7f ee 	lwi $r2,[$fp+#-0x48]
   d5658:	50 1e 7f c8 	addi $r1,$fp,#-56
   d565c:	8d 01       	addi45 $r8,#1
   d565e:	dd 22       	jral5 $r2
   d5660:	9d b1       	addi333 $r6,$r6,#1
   d5662:	d5 04       	j8 d566a <do_printf+0x40a>
   d5664:	04 6e 7f f1 	lwi $r6,[$fp+#-0x3c]
   d5668:	80 e2       	mov55 $r7,$r2
   d566a:	00 04 00 00 	lbi $r0,[$r8+#0x0]
   d566e:	c8 f3       	bnez38 $r0,d5654 <do_printf+0x3f4>
   d5670:	14 6e 7f f1 	swi $r6,[$fp+#-0x3c]
   d5674:	80 c0       	mov55 $r6,$r0
   d5676:	e3 27       	slt45 $r9,$r7
   d5678:	e9 03       	bnezs8 d567e <do_printf+0x41e>
   d567a:	40 64 9c 01 	sub $r6,$r9,$r7
   d567e:	81 26       	mov55 $r9,$r6
   d5680:	d5 08       	j8 d5690 <do_printf+0x430>
   d5682:	04 3e 7f ee 	lwi $r3,[$fp+#-0x48]
   d5686:	fa 10       	movpi45 $r0,#0x20
   d5688:	50 1e 7f c8 	addi $r1,$fp,#-56
   d568c:	dd 23       	jral5 $r3
   d568e:	8f 21       	subi45 $r9,#1
   d5690:	4e 93 ff f9 	bnez $r9,d5682 <do_printf+0x422>
   d5694:	04 0e 7f f1 	lwi $r0,[$fp+#-0x3c]
   d5698:	04 1e 7f ed 	lwi $r1,[$fp+#-0x4c]
   d569c:	98 06       	add333 $r0,$r0,$r6
   d569e:	9c 4c       	addi333 $r1,$r1,#4
   d56a0:	14 0e 7f f1 	swi $r0,[$fp+#-0x3c]
   d56a4:	14 1e 7f ed 	swi $r1,[$fp+#-0x4c]
   d56a8:	d5 2e       	j8 d5704 <do_printf+0x4a4>
   d56aa:	04 2e 7f ed 	lwi $r2,[$fp+#-0x4c]
   d56ae:	50 7e 7f d0 	addi $r7,$fp,#-48
   d56b2:	a6 d0       	lbi333 $r3,[$r2+#0x0]
   d56b4:	50 81 00 04 	addi $r8,$r2,#4
   d56b8:	10 3e 7f d0 	sbi $r3,[$fp+#-0x30]
   d56bc:	84 c1       	movi55 $r6,#1
   d56be:	d5 10       	j8 d56de <do_printf+0x47e>
   d56c0:	04 6e 7f ed 	lwi $r6,[$fp+#-0x4c]
   d56c4:	b4 e6       	lwi450 $r7,[$r6]
   d56c6:	50 83 00 04 	addi $r8,$r6,#4
   d56ca:	80 07       	mov55 $r0,$r7
   d56cc:	49 ff 95 16 	jal c80f8 <strlen>
   d56d0:	80 c0       	mov55 $r6,$r0
   d56d2:	04 0e 7f f0 	lwi $r0,[$fp+#-0x40]
   d56d6:	c0 04       	beqz38 $r0,d56de <do_printf+0x47e>
   d56d8:	e2 06       	slt45 $r0,$r6
   d56da:	e8 02       	beqzs8 d56de <do_printf+0x47e>
   d56dc:	80 c0       	mov55 $r6,$r0
   d56de:	81 26       	mov55 $r9,$r6
   d56e0:	d5 09       	j8 d56f2 <do_printf+0x492>
   d56e2:	08 03 80 01 	lbi.bi $r0,[$r7],#0x1
   d56e6:	04 2e 7f ee 	lwi $r2,[$fp+#-0x48]
   d56ea:	50 1e 7f c8 	addi $r1,$fp,#-56
   d56ee:	dd 22       	jral5 $r2
   d56f0:	8f 21       	subi45 $r9,#1
   d56f2:	4e 93 ff f8 	bnez $r9,d56e2 <do_printf+0x482>
   d56f6:	04 3e 7f f1 	lwi $r3,[$fp+#-0x3c]
   d56fa:	14 8e 7f ed 	swi $r8,[$fp+#-0x4c]
   d56fe:	98 de       	add333 $r3,$r3,$r6
   d5700:	14 3e 7f f1 	swi $r3,[$fp+#-0x3c]
   d5704:	80 e9       	mov55 $r7,$r9
   d5706:	80 c9       	mov55 $r6,$r9
   d5708:	d5 6c       	j8 d57e0 <do_printf+0x580>
   d570a:	58 73 84 00 	ori $r7,$r7,#0x400
   d570e:	d5 03       	j8 d5714 <do_printf+0x4b4>
   d5710:	58 73 88 00 	ori $r7,$r7,#0x800
   d5714:	5e f0 00 61 	sltsi $r15,$r0,#97
   d5718:	e8 03       	beqzs8 d571e <do_printf+0x4be>
   d571a:	58 73 80 02 	ori $r7,$r7,#0x2
   d571e:	54 13 81 00 	andi $r1,$r7,#0x100
   d5722:	c9 07       	bnez38 $r1,d5730 <do_printf+0x4d0>
   d5724:	04 6e 7f f0 	lwi $r6,[$fp+#-0x40]
   d5728:	ce 04       	bnez38 $r6,d5730 <do_printf+0x4d0>
   d572a:	84 06       	movi55 $r0,#6
   d572c:	14 0e 7f f0 	swi $r0,[$fp+#-0x40]
   d5730:	04 1e 7f ed 	lwi $r1,[$fp+#-0x4c]
   d5734:	9c 0f       	addi333 $r0,$r1,#7
   d5736:	40 90 0c 09 	srli $r9,$r0,#3
   d573a:	40 94 8c 08 	slli $r9,$r9,#3
   d573e:	b4 89       	lwi450 $r4,[$r9]
   d5740:	04 54 80 01 	lwi $r5,[$r9+#0x4]
   d5744:	98 a4       	add333 $r2,$r4,$r4
   d5746:	40 11 10 06 	slt $r1,$r2,$r4
   d574a:	98 ed       	add333 $r3,$r5,$r5
   d574c:	98 cb       	add333 $r3,$r1,$r3
   d574e:	92 75       	srli45 $r3,#21
   d5750:	5e f1 84 01 	sltsi $r15,$r3,#1025
   d5754:	e9 05       	bnezs8 d575e <do_printf+0x4fe>
   d5756:	44 20 07 ff 	movi $r2,#2047
   d575a:	4c 31 40 07 	bne $r3,$r2,d5768 <do_printf+0x508>
   d575e:	04 6e 7f f0 	lwi $r6,[$fp+#-0x40]
   d5762:	50 33 00 0a 	addi $r3,$r6,#10
   d5766:	d5 0c       	j8 d577e <do_printf+0x51e>
   d5768:	84 23       	movi55 $r1,#3
   d576a:	fe cc       	mul33 $r3,$r1
   d576c:	50 31 f4 03 	addi $r3,$r3,#-3069
   d5770:	84 2a       	movi55 $r1,#10
   d5772:	40 31 84 36 	divsr $r3,$r1,$r3,$r1
   d5776:	04 0e 7f f0 	lwi $r0,[$fp+#-0x40]
   d577a:	8c 6a       	addi45 $r3,#10
   d577c:	98 d8       	add333 $r3,$r3,$r0
   d577e:	04 6e 7f ef 	lwi $r6,[$fp+#-0x44]
   d5782:	50 11 80 0e 	addi $r1,$r3,#14
   d5786:	92 23       	srli45 $r1,#3
   d5788:	94 4b       	slli333 $r1,$r1,#3
   d578a:	41 ff 84 01 	sub $sp,$sp,$r1
   d578e:	20 13 00 00 	lbsi $r1,[$r6+#0x0]
   d5792:	50 0e 7f e0 	addi $r0,$fp,#-32
   d5796:	b6 3f       	swi450 $r1,[$sp]
   d5798:	f0 81       	swi37.sp $r0,[+#0x4]
   d579a:	04 6e 7f eb 	lwi $r6,[$fp+#-0x54]
   d579e:	80 04       	mov55 $r0,$r4
   d57a0:	50 8f 80 08 	addi $r8,$sp,#8
   d57a4:	04 4e 7f f0 	lwi $r4,[$fp+#-0x40]
   d57a8:	80 25       	mov55 $r1,$r5
   d57aa:	80 48       	mov55 $r2,$r8
   d57ac:	80 a7       	mov55 $r5,$r7
   d57ae:	dd 26       	jral5 $r6
   d57b0:	80 e0       	mov55 $r7,$r0
   d57b2:	84 c0       	movi55 $r6,#0
   d57b4:	d5 09       	j8 d57c6 <do_printf+0x566>
   d57b6:	38 04 18 00 	lb $r0,[$r8+($r6<<#0x0)]
   d57ba:	04 2e 7f ee 	lwi $r2,[$fp+#-0x48]
   d57be:	50 1e 7f c8 	addi $r1,$fp,#-56
   d57c2:	dd 22       	jral5 $r2
   d57c4:	9d b1       	addi333 $r6,$r6,#1
   d57c6:	e2 c7       	slt45 $r6,$r7
   d57c8:	e9 f7       	bnezs8 d57b6 <do_printf+0x556>
   d57ca:	04 3e 7f f1 	lwi $r3,[$fp+#-0x3c]
   d57ce:	8d 28       	addi45 $r9,#8
   d57d0:	98 df       	add333 $r3,$r3,$r7
   d57d2:	14 3e 7f f1 	swi $r3,[$fp+#-0x3c]
   d57d6:	14 9e 7f ed 	swi $r9,[$fp+#-0x4c]
   d57da:	84 e0       	movi55 $r7,#0
   d57dc:	80 c7       	mov55 $r6,$r7
   d57de:	81 27       	mov55 $r9,$r7
   d57e0:	04 0e 7f ef 	lwi $r0,[$fp+#-0x44]
   d57e4:	9c 01       	addi333 $r0,$r0,#1
   d57e6:	14 0e 7f ef 	swi $r0,[$fp+#-0x44]
   d57ea:	04 1e 7f ef 	lwi $r1,[$fp+#-0x44]
   d57ee:	20 00 80 00 	lbsi $r0,[$r1+#0x0]
   d57f2:	4e 03 fd 47 	bnez $r0,d5280 <do_printf+0x20>
   d57f6:	04 0e 7f f1 	lwi $r0,[$fp+#-0x3c]
   d57fa:	51 fe 7f e4 	addi $sp,$fp,#-28
   d57fe:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d5800:	fb 40       	movpi45 $r10,#0x10
   d5802:	48 ff fe 53 	j d54a8 <do_printf+0x248>

000d5806 <sep_int>:
   d5806:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d5808:	80 20       	mov55 $r1,$r0
   d580a:	84 00       	movi55 $r0,#0
   d580c:	d5 09       	j8 d581e <sep_int+0x18>
   d580e:	40 41 c0 08 	slli $r4,$r3,#16
   d5812:	1a 20 80 01 	shi.bi $r2,[$r1],#0x2
   d5816:	92 50       	srli45 $r2,#16
   d5818:	9c 01       	addi333 $r0,$r0,#1
   d581a:	fe a7       	or33 $r2,$r4
   d581c:	92 70       	srli45 $r3,#16
   d581e:	40 41 0c 04 	or $r4,$r2,$r3
   d5822:	cc f6       	bnez38 $r4,d580e <sep_int+0x8>
   d5824:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d5826 <sep_frac>:
   d5826:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   d5828:	84 c0       	movi55 $r6,#0
   d582a:	81 23       	mov55 $r9,$r3
   d582c:	80 e0       	mov55 $r7,$r0
   d582e:	81 41       	mov55 $r10,$r1
   d5830:	81 02       	mov55 $r8,$r2
   d5832:	80 61       	mov55 $r3,$r1
   d5834:	d5 0b       	j8 d584a <sep_frac+0x24>
   d5836:	80 47       	mov55 $r2,$r7
   d5838:	fd 04       	movd44 $r0,$r8
   d583a:	f3 81       	swi37.sp $r3,[+#0x4]
   d583c:	49 ff 94 9a 	jal c8170 <__lshrdi3>
   d5840:	f3 01       	lwi37.sp $r3,[+#0x4]
   d5842:	9d b1       	addi333 $r6,$r6,#1
   d5844:	1a 01 80 01 	shi.bi $r0,[$r3],#0x2
   d5848:	8e f0       	subi45 $r7,#16
   d584a:	4e 76 ff f6 	bgtz $r7,d5836 <sep_frac+0x10>
   d584e:	c7 08       	beqz38 $r7,d585e <sep_frac+0x38>
   d5850:	fd 04       	movd44 $r0,$r8
   d5852:	fe ba       	neg33 $r2,$r7
   d5854:	49 ff 94 a4 	jal c819c <__ashldi3>
   d5858:	38 05 19 09 	sh $r0,[$r10+($r6<<#0x1)]
   d585c:	9d b1       	addi333 $r6,$r6,#1
   d585e:	80 06       	mov55 $r0,$r6
   d5860:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000d5862 <fill_0>:
   d5862:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d5864:	80 40       	mov55 $r2,$r0
   d5866:	84 00       	movi55 $r0,#0
   d5868:	80 60       	mov55 $r3,$r0
   d586a:	d5 04       	j8 d5872 <fill_0+0x10>
   d586c:	1a 30 80 01 	shi.bi $r3,[$r1],#0x2
   d5870:	9c 01       	addi333 $r0,$r0,#1
   d5872:	e0 02       	slts45 $r0,$r2
   d5874:	e9 fc       	bnezs8 d586c <fill_0+0xa>
   d5876:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000d5878 <double2dec>:
   d5878:	fc 59       	push25 $r10,#0xc8    ! {$r6~$r10, $fp, $gp, $lp}
   d587a:	51 cf 80 e4 	addi $fp,$sp,#228
   d587e:	f2 8f       	swi37.sp $r2,[+#0x3c]
   d5880:	f4 8a       	swi37.sp $r4,[+#0x28]
   d5882:	f5 89       	swi37.sp $r5,[+#0x24]
   d5884:	f3 3a       	lwi37.sp $r3,[+#0xe8]
   d5886:	4e 45 03 4f 	bltz $r4,d5f24 <double2dec+0x6ac>
   d588a:	cc 03       	bnez38 $r4,d5890 <double2dec+0x18>
   d588c:	f4 8d       	swi37.sp $r4,[+#0x34]
   d588e:	d5 04       	j8 d5896 <double2dec+0x1e>
   d5890:	f2 0a       	lwi37.sp $r2,[+#0x28]
   d5892:	9c 91       	addi333 $r2,$r2,#1
   d5894:	f2 8d       	swi37.sp $r2,[+#0x34]
   d5896:	5a 30 65 08 	beqc $r3,#101,d58a6 <double2dec+0x2e>
   d589a:	5a 30 45 06 	beqc $r3,#69,d58a6 <double2dec+0x2e>
   d589e:	5a 30 67 04 	beqc $r3,#103,d58a6 <double2dec+0x2e>
   d58a2:	5a 38 47 16 	bnec $r3,#71,d58ce <double2dec+0x56>
   d58a6:	f5 0d       	lwi37.sp $r5,[+#0x34]
   d58a8:	50 62 80 0f 	addi $r6,$r5,#15
   d58ac:	92 c3       	srli45 $r6,#3
   d58ae:	95 b3       	slli333 $r6,$r6,#3
   d58b0:	41 ff 98 01 	sub $sp,$sp,$r6
   d58b4:	15 fe 7f cf 	swi $sp,[$fp+#-0xc4]
   d58b8:	5a 30 67 12 	beqc $r3,#103,d58dc <double2dec+0x64>
   d58bc:	5a 30 47 10 	beqc $r3,#71,d58dc <double2dec+0x64>
   d58c0:	84 40       	movi55 $r2,#0
   d58c2:	84 a1       	movi55 $r5,#1
   d58c4:	14 2e 7f d2 	swi $r2,[$fp+#-0xb8]
   d58c8:	14 5e 7f d5 	swi $r5,[$fp+#-0xac]
   d58cc:	d5 13       	j8 d58f2 <double2dec+0x7a>
   d58ce:	5a 30 66 0d 	beqc $r3,#102,d58e8 <double2dec+0x70>
   d58d2:	5a 30 46 04 	beqc $r3,#70,d58da <double2dec+0x62>
   d58d6:	48 00 03 27 	j d5f24 <double2dec+0x6ac>
   d58da:	d5 07       	j8 d58e8 <double2dec+0x70>
   d58dc:	84 c1       	movi55 $r6,#1
   d58de:	14 6e 7f d2 	swi $r6,[$fp+#-0xb8]
   d58e2:	14 6e 7f d5 	swi $r6,[$fp+#-0xac]
   d58e6:	d5 06       	j8 d58f2 <double2dec+0x7a>
   d58e8:	85 21       	movi55 $r9,#1
   d58ea:	84 40       	movi55 $r2,#0
   d58ec:	14 9f 80 0b 	swi $r9,[$sp+#0x2c]
   d58f0:	f2 8e       	swi37.sp $r2,[+#0x38]
   d58f2:	99 80       	add333 $r6,$r0,$r0
   d58f4:	50 31 ff bb 	addi $r3,$r3,#-69
   d58f8:	5c 31 80 03 	slti $r3,$r3,#3
   d58fc:	40 63 00 06 	slt $r6,$r6,$r0
   d5900:	99 c9       	add333 $r7,$r1,$r1
   d5902:	80 80       	mov55 $r4,$r0
   d5904:	b8 02       	lwi37 $r0,[$fp+#0x8]
   d5906:	99 b7       	add333 $r6,$r6,$r7
   d5908:	14 3e 7f ce 	swi $r3,[$fp+#-0xc8]
   d590c:	84 e0       	movi55 $r7,#0
   d590e:	b6 e0       	swi450 $r7,[$r0]
   d5910:	92 d5       	srli45 $r6,#21
   d5912:	44 70 07 ff 	movi $r7,#2047
   d5916:	81 21       	mov55 $r9,$r1
   d5918:	40 50 b0 08 	slli $r5,$r1,#12
   d591c:	92 ac       	srli45 $r5,#12
   d591e:	4c 63 c0 14 	bne $r6,$r7,d5946 <double2dec+0xce>
   d5922:	40 72 14 04 	or $r7,$r4,$r5
   d5926:	c7 10       	beqz38 $r7,d5946 <double2dec+0xce>
   d5928:	04 1e 7f ce 	lwi $r1,[$fp+#-0xc8]
   d592c:	c9 04       	bnez38 $r1,d5934 <double2dec+0xbc>
   d592e:	3e 1d 59 f8 	addi.gp $r1,#-173576
   d5932:	d5 03       	j8 d5938 <double2dec+0xc0>
   d5934:	3e 1d 59 fc 	addi.gp $r1,#-173572
   d5938:	04 0e 7f d6 	lwi $r0,[$fp+#-0xa8]
   d593c:	85 43       	movi55 $r10,#3
   d593e:	49 ff 93 d5 	jal c80e8 <strcpy>
   d5942:	48 00 02 f2 	j d5f26 <double2dec+0x6ae>
   d5946:	4e 95 00 08 	bltz $r9,d5956 <double2dec+0xde>
   d594a:	04 2e 7f d0 	lwi $r2,[$fp+#-0xc0]
   d594e:	54 71 00 04 	andi $r7,$r2,#0x4
   d5952:	cf 06       	bnez38 $r7,d595e <double2dec+0xe6>
   d5954:	d5 03       	j8 d595a <double2dec+0xe2>
   d5956:	fa fd       	movpi45 $r7,#0x2d
   d5958:	d5 04       	j8 d5960 <double2dec+0xe8>
   d595a:	81 47       	mov55 $r10,$r7
   d595c:	d5 06       	j8 d5968 <double2dec+0xf0>
   d595e:	fa fb       	movpi45 $r7,#0x2b
   d5960:	04 3e 7f d6 	lwi $r3,[$fp+#-0xa8]
   d5964:	85 41       	movi55 $r10,#1
   d5966:	af d8       	sbi333 $r7,[$r3+#0x0]
   d5968:	44 70 07 ff 	movi $r7,#2047
   d596c:	4c 63 c0 16 	bne $r6,$r7,d5998 <double2dec+0x120>
   d5970:	40 72 14 04 	or $r7,$r4,$r5
   d5974:	cf 25       	bnez38 $r7,d59be <double2dec+0x146>
   d5976:	04 5e 7f ce 	lwi $r5,[$fp+#-0xc8]
   d597a:	cd 04       	bnez38 $r5,d5982 <double2dec+0x10a>
   d597c:	3e 1d 5a 00 	addi.gp $r1,#-173568
   d5980:	d5 03       	j8 d5986 <double2dec+0x10e>
   d5982:	3e 1d 5a 04 	addi.gp $r1,#-173564
   d5986:	04 6e 7f d6 	lwi $r6,[$fp+#-0xa8]
   d598a:	40 03 28 00 	add $r0,$r6,$r10
   d598e:	49 ff 93 ad 	jal c80e8 <strcpy>
   d5992:	8d 43       	addi45 $r10,#3
   d5994:	48 00 02 c9 	j d5f26 <double2dec+0x6ae>
   d5998:	ce 13       	bnez38 $r6,d59be <double2dec+0x146>
   d599a:	40 62 14 04 	or $r6,$r4,$r5
   d599e:	c6 04       	beqz38 $r6,d59a6 <double2dec+0x12e>
   d59a0:	44 6f fc 03 	movi $r6,#-1021
   d59a4:	d5 48       	j8 d5a34 <double2dec+0x1bc>
   d59a6:	04 9e 7f d5 	lwi $r9,[$fp+#-0xac]
   d59aa:	4e 92 02 c2 	beqz $r9,d5f2e <double2dec+0x6b6>
   d59ae:	04 0e 7f d2 	lwi $r0,[$fp+#-0xb8]
   d59b2:	5c 00 00 01 	slti $r0,$r0,#1
   d59b6:	14 0e 7f d5 	swi $r0,[$fp+#-0xac]
   d59ba:	48 00 02 ba 	j d5f2e <double2dec+0x6b6>
   d59be:	46 10 01 00 	sethi $r1,#0x100
   d59c2:	50 63 7c 02 	addi $r6,$r6,#-1022
   d59c6:	ff 4f       	or33 $r5,$r1
   d59c8:	5e f3 00 35 	sltsi $r15,$r6,#53
   d59cc:	e9 32       	bnezs8 d5a30 <double2dec+0x1b8>
   d59ce:	50 8e 7f 5c 	addi $r8,$fp,#-164
   d59d2:	50 63 7f cb 	addi $r6,$r6,#-53
   d59d6:	40 03 10 0a 	srai $r0,$r6,#4
   d59da:	80 28       	mov55 $r1,$r8
   d59dc:	14 4e 7f cb 	swi $r4,[$fp+#-0xd4]
   d59e0:	14 5e 7f ca 	swi $r5,[$fp+#-0xd8]
   d59e4:	49 ff ff 3f 	jal d5862 <fill_0>
   d59e8:	04 4e 7f cb 	lwi $r4,[$fp+#-0xd4]
   d59ec:	04 5e 7f ca 	lwi $r5,[$fp+#-0xd8]
   d59f0:	97 9f       	fexti33 $r6,#0x3
   d59f2:	81 20       	mov55 $r9,$r0
   d59f4:	80 25       	mov55 $r1,$r5
   d59f6:	80 04       	mov55 $r0,$r4
   d59f8:	80 46       	mov55 $r2,$r6
   d59fa:	49 ff 93 d1 	jal c819c <__ashldi3>
   d59fe:	04 4e 7f cb 	lwi $r4,[$fp+#-0xd4]
   d5a02:	04 5e 7f ca 	lwi $r5,[$fp+#-0xd8]
   d5a06:	38 04 25 09 	sh $r0,[$r8+($r9<<#0x1)]
   d5a0a:	8d 21       	addi45 $r9,#1
   d5a0c:	80 04       	mov55 $r0,$r4
   d5a0e:	40 74 a4 00 	add $r7,$r9,$r9
   d5a12:	80 25       	mov55 $r1,$r5
   d5a14:	52 23 00 10 	subri $r2,$r6,#16
   d5a18:	49 ff 93 ac 	jal c8170 <__lshrdi3>
   d5a1c:	88 e8       	add45 $r7,$r8
   d5a1e:	fd 10       	movd44 $r2,$r0
   d5a20:	80 07       	mov55 $r0,$r7
   d5a22:	49 ff fe f2 	jal d5806 <sep_int>
   d5a26:	89 20       	add45 $r9,$r0
   d5a28:	14 9e 7f d3 	swi $r9,[$fp+#-0xb4]
   d5a2c:	84 80       	movi55 $r4,#0
   d5a2e:	d5 4c       	j8 d5ac6 <double2dec+0x24e>
   d5a30:	4e 66 00 29 	bgtz $r6,d5a82 <double2dec+0x20a>
   d5a34:	50 2e 7f 5c 	addi $r2,$fp,#-164
   d5a38:	ff b2       	neg33 $r6,$r6
   d5a3a:	80 22       	mov55 $r1,$r2
   d5a3c:	40 03 10 0a 	srai $r0,$r6,#4
   d5a40:	14 2e 7f cc 	swi $r2,[$fp+#-0xd0]
   d5a44:	14 4e 7f cb 	swi $r4,[$fp+#-0xd4]
   d5a48:	14 5e 7f ca 	swi $r5,[$fp+#-0xd8]
   d5a4c:	49 ff ff 0b 	jal d5862 <fill_0>
   d5a50:	04 2e 7f cc 	lwi $r2,[$fp+#-0xd0]
   d5a54:	04 4e 7f cb 	lwi $r4,[$fp+#-0xd4]
   d5a58:	04 5e 7f ca 	lwi $r5,[$fp+#-0xd8]
   d5a5c:	99 c0       	add333 $r7,$r0,$r0
   d5a5e:	54 83 00 0f 	andi $r8,$r6,#0xf
   d5a62:	81 20       	mov55 $r9,$r0
   d5a64:	98 57       	add333 $r1,$r2,$r7
   d5a66:	50 04 00 25 	addi $r0,$r8,#37
   d5a6a:	80 44       	mov55 $r2,$r4
   d5a6c:	80 65       	mov55 $r3,$r5
   d5a6e:	49 ff fe dc 	jal d5826 <sep_frac>
   d5a72:	84 40       	movi55 $r2,#0
   d5a74:	40 40 24 00 	add $r4,$r0,$r9
   d5a78:	05 ee 7f d4 	lwi $lp,[$fp+#-0xb0]
   d5a7c:	14 2e 7f d3 	swi $r2,[$fp+#-0xb4]
   d5a80:	d5 29       	j8 d5ad2 <double2dec+0x25a>
   d5a82:	fd 02       	movd44 $r0,$r4
   d5a84:	52 23 00 35 	subri $r2,$r6,#53
   d5a88:	14 4e 7f cb 	swi $r4,[$fp+#-0xd4]
   d5a8c:	14 5e 7f ca 	swi $r5,[$fp+#-0xd8]
   d5a90:	49 ff 93 70 	jal c8170 <__lshrdi3>
   d5a94:	81 00       	mov55 $r8,$r0
   d5a96:	80 61       	mov55 $r3,$r1
   d5a98:	80 48       	mov55 $r2,$r8
   d5a9a:	50 0e 7f 5c 	addi $r0,$fp,#-164
   d5a9e:	81 21       	mov55 $r9,$r1
   d5aa0:	49 ff fe b3 	jal d5806 <sep_int>
   d5aa4:	04 4e 7f cb 	lwi $r4,[$fp+#-0xd4]
   d5aa8:	04 5e 7f ca 	lwi $r5,[$fp+#-0xd8]
   d5aac:	99 c0       	add333 $r7,$r0,$r0
   d5aae:	50 3e 7f 5c 	addi $r3,$fp,#-164
   d5ab2:	14 0e 7f d3 	swi $r0,[$fp+#-0xb4]
   d5ab6:	98 5f       	add333 $r1,$r3,$r7
   d5ab8:	80 44       	mov55 $r2,$r4
   d5aba:	52 03 00 25 	subri $r0,$r6,#37
   d5abe:	80 65       	mov55 $r3,$r5
   d5ac0:	49 ff fe b3 	jal d5826 <sep_frac>
   d5ac4:	80 80       	mov55 $r4,$r0
   d5ac6:	04 5e 7f d3 	lwi $r5,[$fp+#-0xb4]
   d5aca:	4e 56 00 07 	bgtz $r5,d5ad8 <double2dec+0x260>
   d5ace:	05 ee 7f d4 	lwi $lp,[$fp+#-0xb0]
   d5ad2:	84 1f       	movi55 $r0,#-1
   d5ad4:	48 00 00 c6 	j d5c60 <double2dec+0x3e8>
   d5ad8:	04 6e 7f d3 	lwi $r6,[$fp+#-0xb4]
   d5adc:	84 60       	movi55 $r3,#0
   d5ade:	9e 71       	subi333 $r1,$r6,#1
   d5ae0:	84 1f       	movi55 $r0,#-1
   d5ae2:	50 6e 7f 5a 	addi $r6,$fp,#-166
   d5ae6:	81 2a       	mov55 $r9,$r10
   d5ae8:	14 ae 7f cd 	swi $r10,[$fp+#-0xcc]
   d5aec:	80 43       	mov55 $r2,$r3
   d5aee:	81 44       	mov55 $r10,$r4
   d5af0:	50 5e 7f 5c 	addi $r5,$fp,#-164
   d5af4:	14 6e 7f c8 	swi $r6,[$fp+#-0xe0]
   d5af8:	87 ca       	movi55 $lp,#10
   d5afa:	80 80       	mov55 $r4,$r0
   d5afc:	d5 34       	j8 d5b64 <double2dec+0x2ec>
   d5afe:	02 04 00 00 	lhi $r0,[$r8+#0x0]
   d5b02:	40 63 c0 08 	slli $r6,$r7,#16
   d5b06:	99 b0       	add333 $r6,$r6,$r0
   d5b08:	40 63 78 16 	divsr $r6,$r0,$r6,$lp
   d5b0c:	1a 64 7f ff 	shi.bi $r6,[$r8],#-0x2
   d5b10:	04 6e 7f c8 	lwi $r6,[$fp+#-0xe0]
   d5b14:	80 e0       	mov55 $r7,$r0
   d5b16:	4c 83 7f f4 	bne $r8,$r6,d5afe <double2dec+0x286>
   d5b1a:	04 6e 7f d5 	lwi $r6,[$fp+#-0xac]
   d5b1e:	9d 21       	addi333 $r4,$r4,#1
   d5b20:	c6 12       	beqz38 $r6,d5b44 <double2dec+0x2cc>
   d5b22:	04 6e 7f d4 	lwi $r6,[$fp+#-0xb0]
   d5b26:	e0 c2       	slts45 $r6,$r2
   d5b28:	e8 02       	beqzs8 d5b2c <double2dec+0x2b4>
   d5b2a:	84 40       	movi55 $r2,#0
   d5b2c:	04 6e 7f cf 	lwi $r6,[$fp+#-0xc4]
   d5b30:	50 70 00 30 	addi $r7,$r0,#48
   d5b34:	38 73 08 08 	sb $r7,[$r6+($r2<<#0x0)]
   d5b38:	9c 91       	addi333 $r2,$r2,#1
   d5b3a:	04 6e 7f d4 	lwi $r6,[$fp+#-0xb0]
   d5b3e:	e0 c3       	slts45 $r6,$r3
   d5b40:	e9 02       	bnezs8 d5b44 <double2dec+0x2cc>
   d5b42:	9c d9       	addi333 $r3,$r3,#1
   d5b44:	04 6e 7f d2 	lwi $r6,[$fp+#-0xb8]
   d5b48:	c6 08       	beqz38 $r6,d5b58 <double2dec+0x2e0>
   d5b4a:	50 60 00 30 	addi $r6,$r0,#48
   d5b4e:	04 0e 7f d6 	lwi $r0,[$fp+#-0xa8]
   d5b52:	38 60 24 08 	sb $r6,[$r0+($r9<<#0x0)]
   d5b56:	8d 21       	addi45 $r9,#1
   d5b58:	38 62 85 01 	lh $r6,[$r5+($r1<<#0x1)]
   d5b5c:	ce 02       	bnez38 $r6,d5b60 <double2dec+0x2e8>
   d5b5e:	9e 49       	subi333 $r1,$r1,#1
   d5b60:	5a 17 ff 07 	beqc $r1,#-1,d5b6e <double2dec+0x2f6>
   d5b64:	99 89       	add333 $r6,$r1,$r1
   d5b66:	40 82 98 00 	add $r8,$r5,$r6
   d5b6a:	84 e0       	movi55 $r7,#0
   d5b6c:	d5 c9       	j8 d5afe <double2dec+0x286>
   d5b6e:	04 1e 7f d5 	lwi $r1,[$fp+#-0xac]
   d5b72:	80 04       	mov55 $r0,$r4
   d5b74:	80 8a       	mov55 $r4,$r10
   d5b76:	04 ae 7f cd 	lwi $r10,[$fp+#-0xcc]
   d5b7a:	c1 0b       	beqz38 $r1,d5b90 <double2dec+0x318>
   d5b7c:	04 5e 7f d2 	lwi $r5,[$fp+#-0xb8]
   d5b80:	c5 35       	beqz38 $r5,d5bea <double2dec+0x372>
   d5b82:	04 6e 7f d4 	lwi $r6,[$fp+#-0xb0]
   d5b86:	e0 06       	slts45 $r0,$r6
   d5b88:	e8 31       	beqzs8 d5bea <double2dec+0x372>
   d5b8a:	84 21       	movi55 $r1,#1
   d5b8c:	14 1e 7f d2 	swi $r1,[$fp+#-0xb8]
   d5b90:	40 74 a8 00 	add $r7,$r9,$r10
   d5b94:	04 2e 7f d6 	lwi $r2,[$fp+#-0xa8]
   d5b98:	40 13 84 0a 	srai $r1,$r7,#1
   d5b9c:	50 74 ff ff 	addi $r7,$r9,#-1
   d5ba0:	41 e1 28 00 	add $lp,$r2,$r10
   d5ba4:	40 81 1c 00 	add $r8,$r2,$r7
   d5ba8:	80 6a       	mov55 $r3,$r10
   d5baa:	d5 3e       	j8 d5c26 <double2dec+0x3ae>
   d5bac:	04 9e 7f cf 	lwi $r9,[$fp+#-0xc4]
   d5bb0:	9e 91       	subi333 $r2,$r2,#1
   d5bb2:	38 94 88 00 	lb $r9,[$r9+($r2<<#0x0)]
   d5bb6:	38 92 a8 08 	sb $r9,[$r5+($r10<<#0x0)]
   d5bba:	8d 41       	addi45 $r10,#1
   d5bbc:	4e 26 00 03 	bgtz $r2,d5bc2 <double2dec+0x34a>
   d5bc0:	80 48       	mov55 $r2,$r8
   d5bc2:	c7 09       	beqz38 $r7,d5bd4 <double2dec+0x35c>
   d5bc4:	51 ef 7f ff 	addi $lp,$lp,#-1
   d5bc8:	4f e6 00 0f 	bgtz $lp,d5be6 <double2dec+0x36e>
   d5bcc:	84 21       	movi55 $r1,#1
   d5bce:	14 1e 7f d5 	swi $r1,[$fp+#-0xac]
   d5bd2:	d5 49       	j8 d5c64 <double2dec+0x3ec>
   d5bd4:	4f e3 00 03 	bnez $lp,d5bda <double2dec+0x362>
   d5bd8:	c1 07       	beqz38 $r1,d5be6 <double2dec+0x36e>
   d5bda:	04 9e 00 02 	lwi $r9,[$fp+#0x8]
   d5bde:	b7 49       	swi450 $r10,[$r9]
   d5be0:	38 62 a8 08 	sb $r6,[$r5+($r10<<#0x0)]
   d5be4:	8d 41       	addi45 $r10,#1
   d5be6:	9d f9       	addi333 $r7,$r7,#1
   d5be8:	d5 0d       	j8 d5c02 <double2dec+0x38a>
   d5bea:	04 5e 7f d0 	lwi $r5,[$fp+#-0xc0]
   d5bee:	05 ee 7f d4 	lwi $lp,[$fp+#-0xb0]
   d5bf2:	54 12 90 00 	andi $r1,$r5,#0x1000
   d5bf6:	04 5e 7f d6 	lwi $r5,[$fp+#-0xa8]
   d5bfa:	84 e0       	movi55 $r7,#0
   d5bfc:	50 8f 00 01 	addi $r8,$lp,#1
   d5c00:	fa de       	movpi45 $r6,#0x2e
   d5c02:	e0 e3       	slts45 $r7,$r3
   d5c04:	e9 d4       	bnezs8 d5bac <double2dec+0x334>
   d5c06:	84 c0       	movi55 $r6,#0
   d5c08:	85 21       	movi55 $r9,#1
   d5c0a:	14 6e 7f d2 	swi $r6,[$fp+#-0xb8]
   d5c0e:	14 9e 7f d5 	swi $r9,[$fp+#-0xac]
   d5c12:	d5 27       	j8 d5c60 <double2dec+0x3e8>
   d5c14:	20 2f 00 00 	lbsi $r2,[$lp+#0x0]
   d5c18:	00 54 00 00 	lbi $r5,[$r8+#0x0]
   d5c1c:	9c d9       	addi333 $r3,$r3,#1
   d5c1e:	18 5f 00 01 	sbi.bi $r5,[$lp],#0x1
   d5c22:	18 24 7f ff 	sbi.bi $r2,[$r8],#-0x1
   d5c26:	e0 61       	slts45 $r3,$r1
   d5c28:	e9 f6       	bnezs8 d5c14 <double2dec+0x39c>
   d5c2a:	04 6e 7f d4 	lwi $r6,[$fp+#-0xb0]
   d5c2e:	ce 0b       	bnez38 $r6,d5c44 <double2dec+0x3cc>
   d5c30:	04 1e 7f d0 	lwi $r1,[$fp+#-0xc0]
   d5c34:	54 70 90 00 	andi $r7,$r1,#0x1000
   d5c38:	cf 06       	bnez38 $r7,d5c44 <double2dec+0x3cc>
   d5c3a:	83 c6       	mov55 $lp,$r6
   d5c3c:	81 49       	mov55 $r10,$r9
   d5c3e:	14 6e 7f d5 	swi $r6,[$fp+#-0xac]
   d5c42:	d5 0f       	j8 d5c60 <double2dec+0x3e8>
   d5c44:	ba 02       	lwi37 $r2,[$fp+#0x8]
   d5c46:	04 3e 7f d6 	lwi $r3,[$fp+#-0xa8]
   d5c4a:	fa fe       	movpi45 $r7,#0x2e
   d5c4c:	b7 22       	swi450 $r9,[$r2]
   d5c4e:	38 71 a4 08 	sb $r7,[$r3+($r9<<#0x0)]
   d5c52:	84 a0       	movi55 $r5,#0
   d5c54:	05 ee 7f d4 	lwi $lp,[$fp+#-0xb0]
   d5c58:	14 5e 7f d5 	swi $r5,[$fp+#-0xac]
   d5c5c:	50 a4 80 01 	addi $r10,$r9,#1
   d5c60:	4e 46 00 0b 	bgtz $r4,d5c76 <double2dec+0x3fe>
   d5c64:	04 9e 7f d6 	lwi $r9,[$fp+#-0xa8]
   d5c68:	84 a0       	movi55 $r5,#0
   d5c6a:	40 64 a8 00 	add $r6,$r9,$r10
   d5c6e:	44 70 00 30 	movi $r7,#48
   d5c72:	48 00 00 be 	j d5dee <double2dec+0x576>
   d5c76:	04 1e 7f d3 	lwi $r1,[$fp+#-0xb4]
   d5c7a:	99 8c       	add333 $r6,$r1,$r4
   d5c7c:	9f b1       	subi333 $r6,$r6,#1
   d5c7e:	e0 c1       	slts45 $r6,$r1
   d5c80:	4e f3 00 bc 	bnez $r15,d5df8 <double2dec+0x580>
   d5c84:	50 7e 7f 5c 	addi $r7,$fp,#-164
   d5c88:	99 b6       	add333 $r6,$r6,$r6
   d5c8a:	04 3e 7f d0 	lwi $r3,[$fp+#-0xc0]
   d5c8e:	99 be       	add333 $r6,$r7,$r6
   d5c90:	50 8e 7f 5a 	addi $r8,$fp,#-166
   d5c94:	99 c9       	add333 $r7,$r1,$r1
   d5c96:	88 e8       	add45 $r7,$r8
   d5c98:	84 41       	movi55 $r2,#1
   d5c9a:	54 31 90 00 	andi $r3,$r3,#0x1000
   d5c9e:	14 6e 7f cf 	swi $r6,[$fp+#-0xc4]
   d5ca2:	14 7e 7f cd 	swi $r7,[$fp+#-0xcc]
   d5ca6:	80 82       	mov55 $r4,$r2
   d5ca8:	14 3e 7f d4 	swi $r3,[$fp+#-0xb0]
   d5cac:	04 8e 7f d2 	lwi $r8,[$fp+#-0xb8]
   d5cb0:	04 6e 7f d5 	lwi $r6,[$fp+#-0xac]
   d5cb4:	04 7e 7f d6 	lwi $r7,[$fp+#-0xa8]
   d5cb8:	48 00 00 92 	j d5ddc <double2dec+0x564>
   d5cbc:	a4 e8       	lhi333 $r3,[$r5+#0x0]
   d5cbe:	85 2a       	movi55 $r9,#10
   d5cc0:	42 11 a4 73 	maddr32 $r1,$r3,$r9
   d5cc4:	04 3e 7f cd 	lwi $r3,[$fp+#-0xcc]
   d5cc8:	1a 12 ff ff 	shi.bi $r1,[$r5],#-0x2
   d5ccc:	90 30       	srai45 $r1,#16
   d5cce:	db f7       	bnes38 $r3,d5cbc <double2dec+0x444>
   d5cd0:	04 5e 7f d3 	lwi $r5,[$fp+#-0xb4]
   d5cd4:	c5 0c       	beqz38 $r5,d5cec <double2dec+0x474>
   d5cd6:	4f e7 00 8f 	blez $lp,d5df4 <double2dec+0x57c>
   d5cda:	50 10 80 30 	addi $r1,$r1,#48
   d5cde:	38 13 a8 08 	sb $r1,[$r7+($r10<<#0x0)]
   d5ce2:	51 ef 7f ff 	addi $lp,$lp,#-1
   d5ce6:	8d 41       	addi45 $r10,#1
   d5ce8:	81 20       	mov55 $r9,$r0
   d5cea:	d5 72       	j8 d5dce <double2dec+0x556>
   d5cec:	4e 82 00 32 	beqz $r8,d5d50 <double2dec+0x4d8>
   d5cf0:	c6 51       	beqz38 $r6,d5d92 <double2dec+0x51a>
   d5cf2:	c9 0c       	bnez38 $r1,d5d0a <double2dec+0x492>
   d5cf4:	50 90 7f ff 	addi $r9,$r0,#-1
   d5cf8:	5e f4 ff fc 	sltsi $r15,$r9,#-4
   d5cfc:	e8 04       	beqzs8 d5d04 <double2dec+0x48c>
   d5cfe:	04 8e 7f d3 	lwi $r8,[$fp+#-0xb4]
   d5d02:	d5 2c       	j8 d5d5a <double2dec+0x4e2>
   d5d04:	85 01       	movi55 $r8,#1
   d5d06:	80 c8       	mov55 $r6,$r8
   d5d08:	d5 63       	j8 d5dce <double2dec+0x556>
   d5d0a:	44 50 00 30 	movi $r5,#48
   d5d0e:	38 53 a8 08 	sb $r5,[$r7+($r10<<#0x0)]
   d5d12:	50 35 00 01 	addi $r3,$r10,#1
   d5d16:	be 02       	lwi37 $r6,[$fp+#0x8]
   d5d18:	fa 5e       	movpi45 $r2,#0x2e
   d5d1a:	8d 42       	addi45 $r10,#2
   d5d1c:	b6 66       	swi450 $r3,[$r6]
   d5d1e:	50 90 00 01 	addi $r9,$r0,#1
   d5d22:	38 23 8c 08 	sb $r2,[$r7+($r3<<#0x0)]
   d5d26:	9c d9       	addi333 $r3,$r3,#1
   d5d28:	40 23 a8 00 	add $r2,$r7,$r10
   d5d2c:	d5 05       	j8 d5d36 <double2dec+0x4be>
   d5d2e:	18 51 00 01 	sbi.bi $r5,[$r2],#0x1
   d5d32:	80 6a       	mov55 $r3,$r10
   d5d34:	8d 21       	addi45 $r9,#1
   d5d36:	50 a1 80 01 	addi $r10,$r3,#1
   d5d3a:	4e 95 ff fa 	bltz $r9,d5d2e <double2dec+0x4b6>
   d5d3e:	50 10 80 30 	addi $r1,$r1,#48
   d5d42:	41 ef 00 00 	add $lp,$lp,$r0
   d5d46:	38 13 8c 08 	sb $r1,[$r7+($r3<<#0x0)]
   d5d4a:	84 40       	movi55 $r2,#0
   d5d4c:	85 01       	movi55 $r8,#1
   d5d4e:	d5 3f       	j8 d5dcc <double2dec+0x554>
   d5d50:	c6 21       	beqz38 $r6,d5d92 <double2dec+0x51a>
   d5d52:	c9 06       	bnez38 $r1,d5d5e <double2dec+0x4e6>
   d5d54:	c4 05       	beqz38 $r4,d5d5e <double2dec+0x4e6>
   d5d56:	50 90 7f ff 	addi $r9,$r0,#-1
   d5d5a:	84 c1       	movi55 $r6,#1
   d5d5c:	d5 39       	j8 d5dce <double2dec+0x556>
   d5d5e:	50 10 80 30 	addi $r1,$r1,#48
   d5d62:	38 13 a8 08 	sb $r1,[$r7+($r10<<#0x0)]
   d5d66:	8d 41       	addi45 $r10,#1
   d5d68:	c2 10       	beqz38 $r2,d5d88 <double2dec+0x510>
   d5d6a:	4f e6 00 06 	bgtz $lp,d5d76 <double2dec+0x4fe>
   d5d6e:	04 9e 7f d4 	lwi $r9,[$fp+#-0xb0]
   d5d72:	4e 92 00 e2 	beqz $r9,d5f36 <double2dec+0x6be>
   d5d76:	b9 02       	lwi37 $r1,[$fp+#0x8]
   d5d78:	81 20       	mov55 $r9,$r0
   d5d7a:	b7 41       	swi450 $r10,[$r1]
   d5d7c:	fa 3e       	movpi45 $r1,#0x2e
   d5d7e:	38 13 a8 08 	sb $r1,[$r7+($r10<<#0x0)]
   d5d82:	84 40       	movi55 $r2,#0
   d5d84:	8d 41       	addi45 $r10,#1
   d5d86:	d5 04       	j8 d5d8e <double2dec+0x516>
   d5d88:	51 ef 7f ff 	addi $lp,$lp,#-1
   d5d8c:	81 20       	mov55 $r9,$r0
   d5d8e:	80 82       	mov55 $r4,$r2
   d5d90:	d5 e5       	j8 d5d5a <double2dec+0x4e2>
   d5d92:	c2 12       	beqz38 $r2,d5db6 <double2dec+0x53e>
   d5d94:	44 20 00 30 	movi $r2,#48
   d5d98:	38 23 a8 08 	sb $r2,[$r7+($r10<<#0x0)]
   d5d9c:	8d 41       	addi45 $r10,#1
   d5d9e:	4f e6 00 06 	bgtz $lp,d5daa <double2dec+0x532>
   d5da2:	04 2e 7f d4 	lwi $r2,[$fp+#-0xb0]
   d5da6:	4e 22 00 cd 	beqz $r2,d5f40 <double2dec+0x6c8>
   d5daa:	bb 02       	lwi37 $r3,[$fp+#0x8]
   d5dac:	fa 5e       	movpi45 $r2,#0x2e
   d5dae:	b7 43       	swi450 $r10,[$r3]
   d5db0:	38 23 a8 08 	sb $r2,[$r7+($r10<<#0x0)]
   d5db4:	8d 41       	addi45 $r10,#1
   d5db6:	4f e7 00 c5 	blez $lp,d5f40 <double2dec+0x6c8>
   d5dba:	50 10 80 30 	addi $r1,$r1,#48
   d5dbe:	38 13 a8 08 	sb $r1,[$r7+($r10<<#0x0)]
   d5dc2:	51 ef 7f ff 	addi $lp,$lp,#-1
   d5dc6:	8d 41       	addi45 $r10,#1
   d5dc8:	81 20       	mov55 $r9,$r0
   d5dca:	84 40       	movi55 $r2,#0
   d5dcc:	80 c2       	mov55 $r6,$r2
   d5dce:	4f e6 00 06 	bgtz $lp,d5dda <double2dec+0x562>
   d5dd2:	14 6e 7f d5 	swi $r6,[$fp+#-0xac]
   d5dd6:	80 09       	mov55 $r0,$r9
   d5dd8:	d5 10       	j8 d5df8 <double2dec+0x580>
   d5dda:	80 09       	mov55 $r0,$r9
   d5ddc:	04 5e 7f cf 	lwi $r5,[$fp+#-0xc4]
   d5de0:	84 20       	movi55 $r1,#0
   d5de2:	48 ff ff 6d 	j d5cbc <double2dec+0x444>
   d5de6:	18 73 00 01 	sbi.bi $r7,[$r6],#0x1
   d5dea:	8d 41       	addi45 $r10,#1
   d5dec:	9d 69       	addi333 $r5,$r5,#1
   d5dee:	e0 be       	slts45 $r5,$lp
   d5df0:	e9 fb       	bnezs8 d5de6 <double2dec+0x56e>
   d5df2:	d5 03       	j8 d5df8 <double2dec+0x580>
   d5df4:	14 6e 7f d5 	swi $r6,[$fp+#-0xac]
   d5df8:	bd 02       	lwi37 $r5,[$fp+#0x8]
   d5dfa:	b4 c5       	lwi450 $r6,[$r5]
   d5dfc:	c6 44       	beqz38 $r6,d5e84 <double2dec+0x60c>
   d5dfe:	04 6e 7f d1 	lwi $r6,[$fp+#-0xbc]
   d5e02:	c6 41       	beqz38 $r6,d5e84 <double2dec+0x60c>
   d5e04:	04 9e 7f d6 	lwi $r9,[$fp+#-0xa8]
   d5e08:	40 64 a8 00 	add $r6,$r9,$r10
   d5e0c:	20 53 7f ff 	lbsi $r5,[$r6+#-0x1]
   d5e10:	50 62 ff d0 	addi $r6,$r5,#-48
   d5e14:	97 b0       	zeb33 $r6,$r6
   d5e16:	e6 ca       	slti45 $r6,#10
   d5e18:	e8 36       	beqzs8 d5e84 <double2dec+0x60c>
   d5e1a:	5e f2 80 35 	sltsi $r15,$r5,#53
   d5e1e:	e9 32       	bnezs8 d5e82 <double2dec+0x60a>
   d5e20:	50 65 7f fe 	addi $r6,$r10,#-2
   d5e24:	40 44 98 00 	add $r4,$r9,$r6
   d5e28:	44 70 00 30 	movi $r7,#48
   d5e2c:	4e 64 00 18 	bgez $r6,d5e5c <double2dec+0x5e4>
   d5e30:	04 1e 7f d6 	lwi $r1,[$fp+#-0xa8]
   d5e34:	50 45 7f ff 	addi $r4,$r10,#-1
   d5e38:	40 50 a8 00 	add $r5,$r1,$r10
   d5e3c:	d5 05       	j8 d5e46 <double2dec+0x5ce>
   d5e3e:	00 22 ff ff 	lbi $r2,[$r5+#-0x1]
   d5e42:	9f 21       	subi333 $r4,$r4,#1
   d5e44:	ae a8       	sbi333 $r2,[$r5+#0x0]
   d5e46:	9f 69       	subi333 $r5,$r5,#1
   d5e48:	4e 46 ff fb 	bgtz $r4,d5e3e <double2dec+0x5c6>
   d5e4c:	04 3e 7f d6 	lwi $r3,[$fp+#-0xa8]
   d5e50:	8d 41       	addi45 $r10,#1
   d5e52:	99 1c       	add333 $r4,$r3,$r4
   d5e54:	a7 a0       	lbi333 $r6,[$r4+#0x0]
   d5e56:	9d b1       	addi333 $r6,$r6,#1
   d5e58:	af a0       	sbi333 $r6,[$r4+#0x0]
   d5e5a:	d5 14       	j8 d5e82 <double2dec+0x60a>
   d5e5c:	20 52 00 00 	lbsi $r5,[$r4+#0x0]
   d5e60:	50 12 ff d0 	addi $r1,$r5,#-48
   d5e64:	96 48       	zeb33 $r1,$r1
   d5e66:	e6 29       	slti45 $r1,#9
   d5e68:	e8 04       	beqzs8 d5e70 <double2dec+0x5f8>
   d5e6a:	9d 69       	addi333 $r5,$r5,#1
   d5e6c:	af 60       	sbi333 $r5,[$r4+#0x0]
   d5e6e:	d5 0a       	j8 d5e82 <double2dec+0x60a>
   d5e70:	5a 58 39 04 	bnec $r5,#57,d5e78 <double2dec+0x600>
   d5e74:	af e0       	sbi333 $r7,[$r4+#0x0]
   d5e76:	d5 03       	j8 d5e7c <double2dec+0x604>
   d5e78:	5a 58 2e 05 	bnec $r5,#46,d5e82 <double2dec+0x60a>
   d5e7c:	9f b1       	subi333 $r6,$r6,#1
   d5e7e:	9f 21       	subi333 $r4,$r4,#1
   d5e80:	d5 d6       	j8 d5e2c <double2dec+0x5b4>
   d5e82:	8f 41       	subi45 $r10,#1
   d5e84:	04 5e 7f d5 	lwi $r5,[$fp+#-0xac]
   d5e88:	c5 48       	beqz38 $r5,d5f18 <double2dec+0x6a0>
   d5e8a:	04 6e 7f ce 	lwi $r6,[$fp+#-0xc8]
   d5e8e:	ce 04       	bnez38 $r6,d5e96 <double2dec+0x61e>
   d5e90:	44 50 00 65 	movi $r5,#101
   d5e94:	d5 03       	j8 d5e9a <double2dec+0x622>
   d5e96:	44 50 00 45 	movi $r5,#69
   d5e9a:	04 9e 7f d6 	lwi $r9,[$fp+#-0xa8]
   d5e9e:	50 45 00 01 	addi $r4,$r10,#1
   d5ea2:	38 54 a8 08 	sb $r5,[$r9+($r10<<#0x0)]
   d5ea6:	4e 05 00 04 	bltz $r0,d5eae <double2dec+0x636>
   d5eaa:	fa 7b       	movpi45 $r3,#0x2b
   d5eac:	d5 02       	j8 d5eb0 <double2dec+0x638>
   d5eae:	fa 7d       	movpi45 $r3,#0x2d
   d5eb0:	04 1e 7f d6 	lwi $r1,[$fp+#-0xa8]
   d5eb4:	38 30 90 08 	sb $r3,[$r1+($r4<<#0x0)]
   d5eb8:	9d 21       	addi333 $r4,$r4,#1
   d5eba:	80 20       	mov55 $r1,$r0
   d5ebc:	4e 04 00 03 	bgez $r0,d5ec2 <double2dec+0x64a>
   d5ec0:	fe 42       	neg33 $r1,$r0
   d5ec2:	9c e1       	addi333 $r3,$r4,#1
   d5ec4:	5e f0 80 64 	sltsi $r15,$r1,#100
   d5ec8:	e8 0b       	beqzs8 d5ede <double2dec+0x666>
   d5eca:	84 aa       	movi55 $r5,#10
   d5ecc:	40 50 94 d6 	divsr $r5,$r6,$r1,$r5
   d5ed0:	04 2e 7f d6 	lwi $r2,[$fp+#-0xa8]
   d5ed4:	50 52 80 30 	addi $r5,$r5,#48
   d5ed8:	38 51 10 08 	sb $r5,[$r2+($r4<<#0x0)]
   d5edc:	d5 13       	j8 d5f02 <double2dec+0x68a>
   d5ede:	44 50 00 64 	movi $r5,#100
   d5ee2:	40 50 94 d6 	divsr $r5,$r6,$r1,$r5
   d5ee6:	04 9e 7f d6 	lwi $r9,[$fp+#-0xa8]
   d5eea:	50 52 80 30 	addi $r5,$r5,#48
   d5eee:	38 54 90 08 	sb $r5,[$r9+($r4<<#0x0)]
   d5ef2:	84 aa       	movi55 $r5,#10
   d5ef4:	40 43 14 b6 	divsr $r4,$r5,$r6,$r5
   d5ef8:	50 42 00 30 	addi $r4,$r4,#48
   d5efc:	38 44 8c 08 	sb $r4,[$r9+($r3<<#0x0)]
   d5f00:	9c d9       	addi333 $r3,$r3,#1
   d5f02:	84 8a       	movi55 $r4,#10
   d5f04:	40 40 90 36 	divsr $r4,$r1,$r1,$r4
   d5f08:	04 0e 7f d6 	lwi $r0,[$fp+#-0xa8]
   d5f0c:	50 a1 80 01 	addi $r10,$r3,#1
   d5f10:	50 10 80 30 	addi $r1,$r1,#48
   d5f14:	38 10 0c 08 	sb $r1,[$r0+($r3<<#0x0)]
   d5f18:	04 2e 7f d6 	lwi $r2,[$fp+#-0xa8]
   d5f1c:	84 20       	movi55 $r1,#0
   d5f1e:	38 11 28 08 	sb $r1,[$r2+($r10<<#0x0)]
   d5f22:	d5 02       	j8 d5f26 <double2dec+0x6ae>
   d5f24:	85 40       	movi55 $r10,#0
   d5f26:	80 0a       	mov55 $r0,$r10
   d5f28:	51 fe 7f e4 	addi $sp,$fp,#-28
   d5f2c:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   d5f2e:	44 60 00 35 	movi $r6,#53
   d5f32:	48 ff fd 4e 	j d59ce <double2dec+0x156>
   d5f36:	84 61       	movi55 $r3,#1
   d5f38:	14 3e 7f d5 	swi $r3,[$fp+#-0xac]
   d5f3c:	48 ff ff 5e 	j d5df8 <double2dec+0x580>
   d5f40:	84 a0       	movi55 $r5,#0
   d5f42:	14 5e 7f d5 	swi $r5,[$fp+#-0xac]
   d5f46:	48 ff ff 59 	j d5df8 <double2dec+0x580>

000d5f4a <__malloc_update_mallinfo>:
   d5f4a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   d5f4c:	3e 0f c2 4c 	addi.gp $r0,#-15796
   d5f50:	a0 42       	lwi333 $r1,[$r0+#0x8]
   d5f52:	a1 09       	lwi333 $r4,[$r1+#0x4]
   d5f54:	84 ef       	movi55 $r7,#15
   d5f56:	40 12 08 09 	srli $r1,$r4,#2
   d5f5a:	94 4a       	slli333 $r1,$r1,#2
   d5f5c:	40 33 84 07 	slts $r3,$r7,$r1
   d5f60:	50 20 00 08 	addi $r2,$r0,#8
   d5f64:	50 50 04 00 	addi $r5,$r0,#1024
   d5f68:	a0 13       	lwi333 $r0,[$r2+#0xc]
   d5f6a:	d5 07       	j8 d5f78 <__malloc_update_mallinfo+0x2e>
   d5f6c:	a1 81       	lwi333 $r6,[$r0+#0x4]
   d5f6e:	92 c2       	srli45 $r6,#2
   d5f70:	95 b2       	slli333 $r6,$r6,#2
   d5f72:	a0 03       	lwi333 $r0,[$r0+#0xc]
   d5f74:	98 4e       	add333 $r1,$r1,$r6
   d5f76:	9c d9       	addi333 $r3,$r3,#1
   d5f78:	4c 01 7f fa 	bne $r0,$r2,d5f6c <__malloc_update_mallinfo+0x22>
   d5f7c:	50 20 00 08 	addi $r2,$r0,#8
   d5f80:	da f4       	bnes38 $r2,d5f68 <__malloc_update_mallinfo+0x1e>
   d5f82:	3e 0f d2 8c 	addi.gp $r0,#-11636
   d5f86:	b4 40       	lwi450 $r2,[$r0]
   d5f88:	83 80       	mov55 $fp,$r0
   d5f8a:	b9 88       	swi37 $r1,[$fp+#0x20]
   d5f8c:	9a 91       	sub333 $r2,$r2,$r1
   d5f8e:	92 82       	srli45 $r4,#2
   d5f90:	95 22       	slli333 $r4,$r4,#2
   d5f92:	a8 c1       	swi333 $r3,[$r0+#0x4]
   d5f94:	a8 87       	swi333 $r2,[$r0+#0x1c]
   d5f96:	bc 89       	swi37 $r4,[$fp+#0x24]
   d5f98:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000d5f9a <_mallinfo_r>:
   d5f9a:	fc 25       	push25 $r8,#0x28    ! {$r6~$r8, $fp, $gp, $lp}
   d5f9c:	80 c0       	mov55 $r6,$r0
   d5f9e:	80 01       	mov55 $r0,$r1
   d5fa0:	80 e1       	mov55 $r7,$r1
   d5fa2:	49 ff f8 d1 	jal d5144 <__malloc_lock>
   d5fa6:	49 ff ff d2 	jal d5f4a <__malloc_update_mallinfo>
   d5faa:	3e 5f d2 8c 	addi.gp $r5,#-11636
   d5fae:	3a 02 8c 04 	lmw.bim $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   d5fb2:	80 86       	mov55 $r4,$r6
   d5fb4:	3a 02 0c 24 	smw.bim $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   d5fb8:	3a 02 8c 04 	lmw.bim $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   d5fbc:	3a 02 0c 24 	smw.bim $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   d5fc0:	3a 02 84 00 	lmw.bi $r0,[$r5],$r1,#0x0    ! {$r0~$r1}
   d5fc4:	3a 02 04 20 	smw.bi $r0,[$r4],$r1,#0x0    ! {$r0~$r1}
   d5fc8:	80 07       	mov55 $r0,$r7
   d5fca:	49 ff f8 bf 	jal d5148 <__malloc_unlock>
   d5fce:	80 06       	mov55 $r0,$r6
   d5fd0:	fc a5       	pop25 $r8,#0x28    ! {$r6~$r8, $fp, $gp, $lp}

000d5fd2 <countLeadingZeros32>:
   d5fd2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d5fd4:	84 60       	movi55 $r3,#0
   d5fd6:	fa 20       	movpi45 $r1,#0x10
   d5fd8:	fa 50       	movpi45 $r2,#0x20
   d5fda:	40 40 04 0d 	srl $r4,$r0,$r1
   d5fde:	c4 07       	beqz38 $r4,d5fec <countLeadingZeros32+0x1a>
   d5fe0:	5a 18 01 04 	bnec $r1,#1,d5fe8 <countLeadingZeros32+0x16>
   d5fe4:	9e 12       	subi333 $r0,$r2,#2
   d5fe6:	d5 08       	j8 d5ff6 <countLeadingZeros32+0x24>
   d5fe8:	9a 91       	sub333 $r2,$r2,$r1
   d5fea:	80 04       	mov55 $r0,$r4
   d5fec:	9c d9       	addi333 $r3,$r3,#1
   d5fee:	90 21       	srai45 $r1,#1
   d5ff0:	5a 38 05 f5 	bnec $r3,#5,d5fda <countLeadingZeros32+0x8>
   d5ff4:	9a 10       	sub333 $r0,$r2,$r0
   d5ff6:	96 02       	seb33 $r0,$r0
   d5ff8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   d5ffa:	00 00 64 00 	lbi $r0,[$r0+#-0x1c00]
   d5ffe:	1d 4a 23 72 	lbi $r0,[$r0+#0x1d4a]
