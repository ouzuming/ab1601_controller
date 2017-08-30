
/cygdrive/c/Airoha/AiroBlueSDK/AB1600_1_0_5_0/projects/TRSPX/output/trspx.out:     file format elf32-nds32


Disassembly of section .text:

00090030 <memcmp>:
   90030:	99 42       	add333 $r5,$r0,$r2
   90032:	d0 09       	beqs38 $r0,90044 <memcmp+0x14>
   90034:	08 30 00 01 	lbi.bi $r3,[$r0],#0x1
   90038:	08 40 80 01 	lbi.bi $r4,[$r1],#0x1
   9003c:	4c 32 3f fb 	beq $r3,$r4,90032 <memcmp+0x2>
   90040:	9a 1c       	sub333 $r0,$r3,$r4
   90042:	dd 9e       	ret5 $lp
   90044:	84 00       	movi55 $r0,#0
   90046:	dd 9e       	ret5 $lp

00090048 <memcpy>:
   90048:	80 60       	mov55 $r3,$r0
   9004a:	c2 07       	beqz38 $r2,90058 <memcpy+0x10>
   9004c:	99 4a       	add333 $r5,$r1,$r2
   9004e:	08 40 80 01 	lbi.bi $r4,[$r1],#0x1
   90052:	18 41 80 01 	sbi.bi $r4,[$r3],#0x1
   90056:	d9 fc       	bnes38 $r1,9004e <memcpy+0x6>
   90058:	dd 9e       	ret5 $lp
   9005a:	92 00       	nop16

0009005c <memmove>:
   9005c:	c2 14       	beqz38 $r2,90084 <memmove+0x28>
   9005e:	80 60       	mov55 $r3,$r0
   90060:	e2 20       	slt45 $r1,$r0
   90062:	e8 0b       	beqzs8 90078 <memmove+0x1c>
   90064:	9e 91       	subi333 $r2,$r2,#1
   90066:	98 da       	add333 $r3,$r3,$r2
   90068:	99 4a       	add333 $r5,$r1,$r2
   9006a:	9e 49       	subi333 $r1,$r1,#1
   9006c:	08 42 ff ff 	lbi.bi $r4,[$r5],#-0x1
   90070:	18 41 ff ff 	sbi.bi $r4,[$r3],#-0x1
   90074:	d9 fc       	bnes38 $r1,9006c <memmove+0x10>
   90076:	dd 9e       	ret5 $lp
   90078:	99 4a       	add333 $r5,$r1,$r2
   9007a:	08 40 80 01 	lbi.bi $r4,[$r1],#0x1
   9007e:	18 41 80 01 	sbi.bi $r4,[$r3],#0x1
   90082:	d9 fc       	bnes38 $r1,9007a <memmove+0x1e>
   90084:	dd 9e       	ret5 $lp
   90086:	92 00       	nop16

00090088 <memset>:
   90088:	80 60       	mov55 $r3,$r0
   9008a:	99 5a       	add333 $r5,$r3,$r2
   9008c:	d3 04       	beqs38 $r3,90094 <memset+0xc>
   9008e:	18 11 80 01 	sbi.bi $r1,[$r3],#0x1
   90092:	d5 fd       	j8 9008c <memset+0x4>
   90094:	dd 9e       	ret5 $lp
   90096:	92 00       	nop16

00090098 <strcmp>:
   90098:	40 50 80 04 	or $r5,$r1,$r0
   9009c:	97 4f       	fexti33 $r5,#0x1
   9009e:	cd 1b       	bnez38 $r5,900d4 <strcmp+0x3c>
   900a0:	b4 a0       	lwi450 $r5,[$r0]
   900a2:	b4 61       	lwi450 $r3,[$r1]
   900a4:	4c 51 c0 18 	bne $r5,$r3,900d4 <strcmp+0x3c>
   900a8:	46 4f ef ef 	sethi $r4,#0xfefef
   900ac:	58 42 0e ff 	ori $r4,$r4,#0xeff
   900b0:	46 28 08 08 	sethi $r2,#0x80808
   900b4:	58 21 00 80 	ori $r2,$r2,#0x80
   900b8:	40 32 94 05 	nor $r3,$r5,$r5
   900bc:	40 52 90 00 	add $r5,$r5,$r4
   900c0:	40 52 8c 02 	and $r5,$r5,$r3
   900c4:	40 52 88 02 	and $r5,$r5,$r2
   900c8:	cd 0e       	bnez38 $r5,900e4 <strcmp+0x4c>
   900ca:	9c 04       	addi333 $r0,$r0,#4
   900cc:	b4 a0       	lwi450 $r5,[$r0]
   900ce:	9c 4c       	addi333 $r1,$r1,#4
   900d0:	b4 61       	lwi450 $r3,[$r1]
   900d2:	d3 f3       	beqs38 $r3,900b8 <strcmp+0x20>
   900d4:	a7 40       	lbi333 $r5,[$r0+#0x0]
   900d6:	a6 c8       	lbi333 $r3,[$r1+#0x0]
   900d8:	db 04       	bnes38 $r3,900e0 <strcmp+0x48>
   900da:	9c 01       	addi333 $r0,$r0,#1
   900dc:	9c 49       	addi333 $r1,$r1,#1
   900de:	cd fb       	bnez38 $r5,900d4 <strcmp+0x3c>
   900e0:	9a 2b       	sub333 $r0,$r5,$r3
   900e2:	dd 9e       	ret5 $lp
   900e4:	84 00       	movi55 $r0,#0
   900e6:	dd 9e       	ret5 $lp

000900e8 <strcpy>:
   900e8:	80 60       	mov55 $r3,$r0
   900ea:	08 40 80 01 	lbi.bi $r4,[$r1],#0x1
   900ee:	18 41 80 01 	sbi.bi $r4,[$r3],#0x1
   900f2:	cc fc       	bnez38 $r4,900ea <strcpy+0x2>
   900f4:	dd 9e       	ret5 $lp
   900f6:	92 00       	nop16

000900f8 <strlen>:
   900f8:	9d 41       	addi333 $r5,$r0,#1
   900fa:	28 20 00 01 	lbsi.bi $r2,[$r0],#0x1
   900fe:	ca fe       	bnez38 $r2,900fa <strlen+0x2>
   90100:	9a 05       	sub333 $r0,$r0,$r5
   90102:	dd 9e       	ret5 $lp

00090104 <strncmp>:
   90104:	c2 0a       	beqz38 $r2,90118 <strncmp+0x14>
   90106:	08 40 00 01 	lbi.bi $r4,[$r0],#0x1
   9010a:	08 50 80 01 	lbi.bi $r5,[$r1],#0x1
   9010e:	dc 03       	bnes38 $r4,90114 <strncmp+0x10>
   90110:	9e 91       	subi333 $r2,$r2,#1
   90112:	cc f9       	bnez38 $r4,90104 <strncmp>
   90114:	9a 25       	sub333 $r0,$r4,$r5
   90116:	dd 9e       	ret5 $lp
   90118:	84 00       	movi55 $r0,#0
   9011a:	dd 9e       	ret5 $lp

0009011c <__muldi3>:
   9011c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9011e:	44 40 ff ff 	movi $r4,#65535
   90122:	40 91 10 02 	and $r9,$r2,$r4
   90126:	40 50 40 09 	srli $r5,$r0,#16
   9012a:	42 74 94 24 	mul $r7,$r9,$r5
   9012e:	40 60 10 02 	and $r6,$r0,$r4
   90132:	40 81 40 09 	srli $r8,$r2,#16
   90136:	81 47       	mov55 $r10,$r7
   90138:	42 a4 18 73 	maddr32 $r10,$r8,$r6
   9013c:	42 64 98 24 	mul $r6,$r9,$r6
   90140:	40 43 40 09 	srli $r4,$r6,#16
   90144:	40 45 10 00 	add $r4,$r10,$r4
   90148:	42 54 14 24 	mul $r5,$r8,$r5
   9014c:	e2 87       	slt45 $r4,$r7
   9014e:	e8 04       	beqzs8 90156 <__muldi3+0x3a>
   90150:	44 71 00 00 	movi $r7,#65536
   90154:	99 6f       	add333 $r5,$r5,$r7
   90156:	fe 8c       	mul33 $r2,$r1
   90158:	40 12 40 09 	srli $r1,$r4,#16
   9015c:	42 20 0c 73 	maddr32 $r2,$r0,$r3
   90160:	40 52 84 00 	add $r5,$r5,$r1
   90164:	40 02 40 08 	slli $r0,$r4,#16
   90168:	97 b1       	zeh33 $r6,$r6
   9016a:	98 06       	add333 $r0,$r0,$r6
   9016c:	98 55       	add333 $r1,$r2,$r5
   9016e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00090170 <__lshrdi3>:
   90170:	4e 22 00 14 	beqz $r2,90198 <__lshrdi3+0x28>
   90174:	52 31 00 20 	subri $r3,$r2,#32
   90178:	4e 36 00 08 	bgtz $r3,90188 <__lshrdi3+0x18>
   9017c:	52 01 80 00 	subri $r0,$r3,#0
   90180:	40 00 80 0d 	srl $r0,$r1,$r0
   90184:	84 20       	movi55 $r1,#0
   90186:	d5 09       	j8 90198 <__lshrdi3+0x28>
   90188:	40 30 8c 0c 	sll $r3,$r1,$r3
   9018c:	40 00 08 0d 	srl $r0,$r0,$r2
   90190:	40 01 80 04 	or $r0,$r3,$r0
   90194:	40 10 88 0d 	srl $r1,$r1,$r2
   90198:	dd 9e       	ret5 $lp
   9019a:	92 00       	nop16

0009019c <__ashldi3>:
   9019c:	4e 22 00 14 	beqz $r2,901c4 <__ashldi3+0x28>
   901a0:	52 31 00 20 	subri $r3,$r2,#32
   901a4:	4e 36 00 08 	bgtz $r3,901b4 <__ashldi3+0x18>
   901a8:	fe 5a       	neg33 $r1,$r3
   901aa:	40 10 04 0c 	sll $r1,$r0,$r1
   901ae:	84 00       	movi55 $r0,#0
   901b0:	48 00 00 0a 	j 901c4 <__ashldi3+0x28>
   901b4:	40 30 0c 0d 	srl $r3,$r0,$r3
   901b8:	40 10 88 0c 	sll $r1,$r1,$r2
   901bc:	40 11 84 04 	or $r1,$r3,$r1
   901c0:	40 00 08 0c 	sll $r0,$r0,$r2
   901c4:	dd 9e       	ret5 $lp
   901c6:	92 00       	nop16

000901c8 <__float32_mul>:
   901c8:	3b ff fc bc 	smw.adm $sp,[$sp],$sp,#0x2    ! {$lp}
   901cc:	3a 6f a8 3c 	smw.adm $r6,[$sp],$r10,#0x0    ! {$r6~$r10}
   901d0:	40 30 5c 09 	srli $r3,$r0,#23
   901d4:	96 d8       	zeb33 $r3,$r3
   901d6:	40 50 dc 09 	srli $r5,$r1,#23
   901da:	97 68       	zeb33 $r5,$r5
   901dc:	46 68 00 00 	sethi $r6,#0x80000
   901e0:	40 20 20 08 	slli $r2,$r0,#8
   901e4:	fe b7       	or33 $r2,$r6
   901e6:	40 40 a0 08 	slli $r4,$r1,#8
   901ea:	ff 37       	or33 $r4,$r6
   901ec:	40 80 04 03 	xor $r8,$r0,$r1
   901f0:	40 63 20 02 	and $r6,$r6,$r8
   901f4:	50 81 ff ff 	addi $r8,$r3,#-1
   901f8:	5c f4 00 fe 	slti $r15,$r8,#254
   901fc:	e8 3f       	beqzs8 9027a <__float32_mul+0xb2>
   901fe:	50 82 ff ff 	addi $r8,$r5,#-1
   90202:	5c f4 00 fe 	slti $r15,$r8,#254
   90206:	e8 59       	beqzs8 902b8 <__float32_mul+0xf0>
   90208:	81 43       	mov55 $r10,$r3
   9020a:	3a 0f 84 3c 	smw.adm $r0,[$sp],$r1,#0x0    ! {$r0~$r1}
   9020e:	3a 4f 94 3c 	smw.adm $r4,[$sp],$r5,#0x0    ! {$r4~$r5}
   90212:	80 02       	mov55 $r0,$r2
   90214:	84 20       	movi55 $r1,#0
   90216:	80 44       	mov55 $r2,$r4
   90218:	84 60       	movi55 $r3,#0
   9021a:	49 ff ff 81 	jal 9011c <__muldi3>
   9021e:	fd 10       	movd44 $r2,$r0
   90220:	3a 4f 94 04 	lmw.bim $r4,[$sp],$r5,#0x0    ! {$r4~$r5}
   90224:	3a 0f 84 04 	lmw.bim $r0,[$sp],$r1,#0x0    ! {$r0~$r1}
   90228:	80 e2       	mov55 $r7,$r2
   9022a:	80 43       	mov55 $r2,$r3
   9022c:	80 6a       	mov55 $r3,$r10
   9022e:	c7 03       	beqz38 $r7,90234 <__float32_mul+0x6c>
   90230:	58 21 00 01 	ori $r2,$r2,#0x1
   90234:	e4 40       	sltsi45 $r2,#0
   90236:	e9 03       	bnezs8 9023c <__float32_mul+0x74>
   90238:	94 91       	slli333 $r2,$r2,#1
   9023a:	9e d9       	subi333 $r3,$r3,#1
   9023c:	50 82 ff 82 	addi $r8,$r5,#-126
   90240:	88 68       	add45 $r3,$r8
   90242:	50 81 ff ff 	addi $r8,$r3,#-1
   90246:	5c f4 00 fe 	slti $r15,$r8,#254
   9024a:	e8 54       	beqzs8 902f2 <__float32_mul+0x12a>
   9024c:	44 f0 00 80 	movi $r15,#128
   90250:	88 4f       	add45 $r2,$r15
   90252:	e2 4f       	slt45 $r2,$r15
   90254:	88 6f       	add45 $r3,$r15
   90256:	40 81 20 09 	srli $r8,$r2,#8
   9025a:	54 84 00 01 	andi $r8,$r8,#0x1
   9025e:	8a 48       	sub45 $r2,$r8
   90260:	94 91       	slli333 $r2,$r2,#1
   90262:	92 49       	srli45 $r2,#9
   90264:	40 81 dc 08 	slli $r8,$r3,#23
   90268:	40 21 20 04 	or $r2,$r2,$r8
   9026c:	40 01 18 04 	or $r0,$r2,$r6
   90270:	3a 6f a8 04 	lmw.bim $r6,[$sp],$r10,#0x0    ! {$r6~$r10}
   90274:	3b ff fc 84 	lmw.bim $sp,[$sp],$sp,#0x2    ! {$lp}
   90278:	dd 9e       	ret5 $lp
   9027a:	cb 13       	bnez38 $r3,902a0 <__float32_mul+0xd8>
   9027c:	98 92       	add333 $r2,$r2,$r2
   9027e:	c2 0d       	beqz38 $r2,90298 <__float32_mul+0xd0>
   90280:	3a 0f 94 3c 	smw.adm $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   90284:	80 02       	mov55 $r0,$r2
   90286:	49 00 72 b8 	jal 9e7f6 <countLeadingZeros32>
   9028a:	80 e0       	mov55 $r7,$r0
   9028c:	3a 0f 94 04 	lmw.bim $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   90290:	9a df       	sub333 $r3,$r3,$r7
   90292:	40 21 1c 0c 	sll $r2,$r2,$r7
   90296:	d5 b4       	j8 901fe <__float32_mul+0x36>
   90298:	52 f2 80 ff 	subri $r15,$r5,#255
   9029c:	e8 28       	beqzs8 902ec <__float32_mul+0x124>
   9029e:	d5 1c       	j8 902d6 <__float32_mul+0x10e>
   902a0:	40 81 08 00 	add $r8,$r2,$r2
   902a4:	4e 83 00 24 	bnez $r8,902ec <__float32_mul+0x124>
   902a8:	cd 05       	bnez38 $r5,902b2 <__float32_mul+0xea>
   902aa:	40 82 10 00 	add $r8,$r4,$r4
   902ae:	4e 82 00 1f 	beqz $r8,902ec <__float32_mul+0x124>
   902b2:	52 f2 80 ff 	subri $r15,$r5,#255
   902b6:	e9 16       	bnezs8 902e2 <__float32_mul+0x11a>
   902b8:	cd 11       	bnez38 $r5,902da <__float32_mul+0x112>
   902ba:	99 24       	add333 $r4,$r4,$r4
   902bc:	c4 0d       	beqz38 $r4,902d6 <__float32_mul+0x10e>
   902be:	3a 0f 94 3c 	smw.adm $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   902c2:	80 04       	mov55 $r0,$r4
   902c4:	49 00 72 99 	jal 9e7f6 <countLeadingZeros32>
   902c8:	80 e0       	mov55 $r7,$r0
   902ca:	3a 0f 94 04 	lmw.bim $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   902ce:	9b 6f       	sub333 $r5,$r5,$r7
   902d0:	40 42 1c 0c 	sll $r4,$r4,$r7
   902d4:	d5 9a       	j8 90208 <__float32_mul+0x40>
   902d6:	80 06       	mov55 $r0,$r6
   902d8:	d5 cc       	j8 90270 <__float32_mul+0xa8>
   902da:	40 82 10 00 	add $r8,$r4,$r4
   902de:	4e 83 00 07 	bnez $r8,902ec <__float32_mul+0x124>
   902e2:	46 87 f8 00 	sethi $r8,#0x7f800
   902e6:	40 03 20 04 	or $r0,$r6,$r8
   902ea:	d5 c3       	j8 90270 <__float32_mul+0xa8>
   902ec:	46 0f fc 00 	sethi $r0,#0xffc00
   902f0:	d5 c0       	j8 90270 <__float32_mul+0xa8>
   902f2:	4e 36 ff f8 	bgtz $r3,902e2 <__float32_mul+0x11a>
   902f6:	52 71 80 01 	subri $r7,$r3,#1
   902fa:	5c f3 80 20 	slti $r15,$r7,#32
   902fe:	e8 ec       	beqzs8 902d6 <__float32_mul+0x10e>
   90300:	52 83 80 20 	subri $r8,$r7,#32
   90304:	40 31 20 0c 	sll $r3,$r2,$r8
   90308:	40 21 1c 0d 	srl $r2,$r2,$r7
   9030c:	c3 03       	beqz38 $r3,90312 <__float32_mul+0x14a>
   9030e:	58 21 00 02 	ori $r2,$r2,#0x2
   90312:	84 60       	movi55 $r3,#0
   90314:	50 81 00 80 	addi $r8,$r2,#128
   90318:	e5 00       	sltsi45 $r8,#0
   9031a:	e8 99       	beqzs8 9024c <__float32_mul+0x84>
   9031c:	84 61       	movi55 $r3,#1
   9031e:	d5 97       	j8 9024c <__float32_mul+0x84>

00090320 <__divsf3>:
   90320:	3b ff fc bc 	smw.adm $sp,[$sp],$sp,#0x2    ! {$lp}
   90324:	3a 6f a8 3c 	smw.adm $r6,[$sp],$r10,#0x0    ! {$r6~$r10}
   90328:	46 78 00 00 	sethi $r7,#0x80000
   9032c:	40 40 5c 09 	srli $r4,$r0,#23
   90330:	97 20       	zeb33 $r4,$r4
   90332:	40 60 dc 09 	srli $r6,$r1,#23
   90336:	97 b0       	zeb33 $r6,$r6
   90338:	40 30 20 08 	slli $r3,$r0,#8
   9033c:	fe ff       	or33 $r3,$r7
   9033e:	40 50 a0 08 	slli $r5,$r1,#8
   90342:	ff 7f       	or33 $r5,$r7
   90344:	40 a0 04 03 	xor $r10,$r0,$r1
   90348:	40 73 a8 02 	and $r7,$r7,$r10
   9034c:	50 a2 7f ff 	addi $r10,$r4,#-1
   90350:	5c f5 00 fe 	slti $r15,$r10,#254
   90354:	e8 50       	beqzs8 903f4 <__divsf3+0xd4>
   90356:	50 a3 7f ff 	addi $r10,$r6,#-1
   9035a:	5c f5 00 fe 	slti $r15,$r10,#254
   9035e:	e8 69       	beqzs8 90430 <__divsf3+0x110>
   90360:	e2 65       	slt45 $r3,$r5
   90362:	e9 03       	bnezs8 90368 <__divsf3+0x48>
   90364:	92 61       	srli45 $r3,#1
   90366:	9d 21       	addi333 $r4,$r4,#1
   90368:	40 82 b8 09 	srli $r8,$r5,#14
   9036c:	40 01 a0 57 	divr $r0,$r2,$r3,$r8
   90370:	54 92 bf ff 	andi $r9,$r5,#0x3fff
   90374:	42 14 80 24 	mul $r1,$r9,$r0
   90378:	40 21 38 08 	slli $r2,$r2,#14
   9037c:	81 e2       	mov55 $r15,$r2
   9037e:	9a 91       	sub333 $r2,$r2,$r1
   90380:	40 f7 88 06 	slt $r15,$r15,$r2
   90384:	e8 04       	beqzs8 9038c <__divsf3+0x6c>
   90386:	9e 01       	subi333 $r0,$r0,#1
   90388:	98 95       	add333 $r2,$r2,$r5
   9038a:	e2 45       	slt45 $r2,$r5
   9038c:	40 31 20 57 	divr $r3,$r2,$r2,$r8
   90390:	42 14 8c 24 	mul $r1,$r9,$r3
   90394:	40 21 38 08 	slli $r2,$r2,#14
   90398:	81 e2       	mov55 $r15,$r2
   9039a:	9a 91       	sub333 $r2,$r2,$r1
   9039c:	40 f7 88 06 	slt $r15,$r15,$r2
   903a0:	e8 04       	beqzs8 903a8 <__divsf3+0x88>
   903a2:	9e d9       	subi333 $r3,$r3,#1
   903a4:	98 95       	add333 $r2,$r2,$r5
   903a6:	e2 45       	slt45 $r2,$r5
   903a8:	40 a0 38 08 	slli $r10,$r0,#14
   903ac:	88 6a       	add45 $r3,$r10
   903ae:	94 dc       	slli333 $r3,$r3,#4
   903b0:	c2 03       	beqz38 $r2,903b6 <__divsf3+0x96>
   903b2:	58 31 80 01 	ori $r3,$r3,#0x1
   903b6:	52 a3 00 7e 	subri $r10,$r6,#126
   903ba:	88 8a       	add45 $r4,$r10
   903bc:	50 a2 7f ff 	addi $r10,$r4,#-1
   903c0:	5c f5 00 fe 	slti $r15,$r10,#254
   903c4:	e8 4b       	beqzs8 9045a <__divsf3+0x13a>
   903c6:	44 f0 00 80 	movi $r15,#128
   903ca:	88 6f       	add45 $r3,$r15
   903cc:	e2 6f       	slt45 $r3,$r15
   903ce:	88 8f       	add45 $r4,$r15
   903d0:	40 a1 a0 09 	srli $r10,$r3,#8
   903d4:	54 a5 00 01 	andi $r10,$r10,#0x1
   903d8:	8a 6a       	sub45 $r3,$r10
   903da:	94 d9       	slli333 $r3,$r3,#1
   903dc:	92 69       	srli45 $r3,#9
   903de:	40 a2 5c 08 	slli $r10,$r4,#23
   903e2:	40 31 a8 04 	or $r3,$r3,$r10
   903e6:	40 01 9c 04 	or $r0,$r3,$r7
   903ea:	3a 6f a8 04 	lmw.bim $r6,[$sp],$r10,#0x0    ! {$r6~$r10}
   903ee:	3b ff fc 84 	lmw.bim $sp,[$sp],$sp,#0x2    ! {$lp}
   903f2:	dd 9e       	ret5 $lp
   903f4:	cc 0f       	bnez38 $r4,90412 <__divsf3+0xf2>
   903f6:	98 db       	add333 $r3,$r3,$r3
   903f8:	c3 0d       	beqz38 $r3,90412 <__divsf3+0xf2>
   903fa:	3a 0f 94 3c 	smw.adm $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   903fe:	80 03       	mov55 $r0,$r3
   90400:	49 00 71 fb 	jal 9e7f6 <countLeadingZeros32>
   90404:	81 00       	mov55 $r8,$r0
   90406:	3a 0f 94 04 	lmw.bim $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   9040a:	8a 88       	sub45 $r4,$r8
   9040c:	40 31 a0 0c 	sll $r3,$r3,$r8
   90410:	d5 a3       	j8 90356 <__divsf3+0x36>
   90412:	4c 62 40 06 	bne $r6,$r4,9041e <__divsf3+0xfe>
   90416:	40 a2 94 00 	add $r10,$r5,$r5
   9041a:	4e a2 00 3c 	beqz $r10,90492 <__divsf3+0x172>
   9041e:	52 f3 00 ff 	subri $r15,$r6,#255
   90422:	e8 07       	beqzs8 90430 <__divsf3+0x110>
   90424:	c4 19       	beqz38 $r4,90456 <__divsf3+0x136>
   90426:	40 a1 8c 00 	add $r10,$r3,$r3
   9042a:	4e a3 00 34 	bnez $r10,90492 <__divsf3+0x172>
   9042e:	d5 2d       	j8 90488 <__divsf3+0x168>
   90430:	ce 0f       	bnez38 $r6,9044e <__divsf3+0x12e>
   90432:	99 6d       	add333 $r5,$r5,$r5
   90434:	c5 2a       	beqz38 $r5,90488 <__divsf3+0x168>
   90436:	3a 0f 94 3c 	smw.adm $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   9043a:	80 05       	mov55 $r0,$r5
   9043c:	49 00 71 dd 	jal 9e7f6 <countLeadingZeros32>
   90440:	81 00       	mov55 $r8,$r0
   90442:	3a 0f 94 04 	lmw.bim $r0,[$sp],$r5,#0x0    ! {$r0~$r5}
   90446:	8a c8       	sub45 $r6,$r8
   90448:	40 52 a0 0c 	sll $r5,$r5,$r8
   9044c:	d5 8a       	j8 90360 <__divsf3+0x40>
   9044e:	40 a2 94 00 	add $r10,$r5,$r5
   90452:	4e a3 00 20 	bnez $r10,90492 <__divsf3+0x172>
   90456:	80 07       	mov55 $r0,$r7
   90458:	d5 c9       	j8 903ea <__divsf3+0xca>
   9045a:	4e 46 00 17 	bgtz $r4,90488 <__divsf3+0x168>
   9045e:	52 82 00 01 	subri $r8,$r4,#1
   90462:	5c f4 00 20 	slti $r15,$r8,#32
   90466:	e8 f8       	beqzs8 90456 <__divsf3+0x136>
   90468:	52 a4 00 20 	subri $r10,$r8,#32
   9046c:	40 41 a8 0c 	sll $r4,$r3,$r10
   90470:	40 31 a0 0d 	srl $r3,$r3,$r8
   90474:	c4 03       	beqz38 $r4,9047a <__divsf3+0x15a>
   90476:	58 31 80 02 	ori $r3,$r3,#0x2
   9047a:	84 80       	movi55 $r4,#0
   9047c:	50 a1 80 80 	addi $r10,$r3,#128
   90480:	e5 40       	sltsi45 $r10,#0
   90482:	e8 a2       	beqzs8 903c6 <__divsf3+0xa6>
   90484:	84 81       	movi55 $r4,#1
   90486:	d5 a0       	j8 903c6 <__divsf3+0xa6>
   90488:	46 a7 f8 00 	sethi $r10,#0x7f800
   9048c:	40 03 a8 04 	or $r0,$r7,$r10
   90490:	d5 ad       	j8 903ea <__divsf3+0xca>
   90492:	46 0f fc 00 	sethi $r0,#0xffc00
   90496:	d5 aa       	j8 903ea <__divsf3+0xca>

00090498 <AB_UART_RxRecidue>:
   90498:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9049a:	5a 08 01 0d 	bnec $r0,#1,904b4 <AB_UART_RxRecidue+0x1c>
   9049e:	2e 17 ca 10 	lbi.gp $r1,[+#-13808]
   904a2:	c1 09       	beqz38 $r1,904b4 <AB_UART_RxRecidue+0x1c>
   904a4:	3c 13 e3 58 	lhi.gp $r1,[+#-14672]
   904a8:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   904ac:	9a 08       	sub333 $r0,$r1,$r0
   904ae:	54 00 03 ff 	andi $r0,$r0,#0x3ff
   904b2:	d5 03       	j8 904b8 <AB_UART_RxRecidue+0x20>
   904b4:	49 00 61 97 	jal 9c7e2 <DRV_Uart_Recidue>
   904b8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000904ba <AB_UART_Read>:
   904ba:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   904bc:	80 e0       	mov55 $r7,$r0
   904be:	81 21       	mov55 $r9,$r1
   904c0:	97 91       	zeh33 $r6,$r2
   904c2:	85 e1       	movi55 $r15,#1
   904c4:	4c 07 c0 92 	bne $r0,$r15,905e8 <AB_UART_Read+0x12e>
   904c8:	2e 07 ca 10 	lbi.gp $r0,[+#-13808]
   904cc:	4e 02 00 88 	beqz $r0,905dc <AB_UART_Read+0x122>
   904d0:	3c 33 e3 58 	lhi.gp $r3,[+#-14672]
   904d4:	3c 23 e3 59 	lhi.gp $r2,[+#-14670]
   904d8:	9a 9a       	sub333 $r2,$r3,$r2
   904da:	54 21 03 ff 	andi $r2,$r2,#0x3ff
   904de:	e0 c2       	slts45 $r6,$r2
   904e0:	e9 08       	bnezs8 904f0 <AB_UART_Read+0x36>
   904e2:	3c 63 e3 58 	lhi.gp $r6,[+#-14672]
   904e6:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   904ea:	9b b0       	sub333 $r6,$r6,$r0
   904ec:	54 63 03 ff 	andi $r6,$r6,#0x3ff
   904f0:	3e 7f c6 b2 	addi.gp $r7,#-14670
   904f4:	3c 33 e3 58 	lhi.gp $r3,[+#-14672]
   904f8:	a4 78       	lhi333 $r1,[$r7+#0x0]
   904fa:	a4 b8       	lhi333 $r2,[$r7+#0x0]
   904fc:	9a 59       	sub333 $r1,$r3,$r1
   904fe:	54 10 83 ff 	andi $r1,$r1,#0x3ff
   90502:	52 21 04 00 	subri $r2,$r2,#1024
   90506:	e0 41       	slts45 $r2,$r1
   90508:	e8 46       	beqzs8 90594 <AB_UART_Read+0xda>
   9050a:	02 a3 80 00 	lhi $r10,[$r7+#0x0]
   9050e:	3c 33 e3 58 	lhi.gp $r3,[+#-14672]
   90512:	03 c3 80 00 	lhi $fp,[$r7+#0x0]
   90516:	52 a5 04 00 	subri $r10,$r10,#1024
   9051a:	80 e6       	mov55 $r7,$r6
   9051c:	e3 46       	slt45 $r10,$r6
   9051e:	e8 02       	beqzs8 90522 <AB_UART_Read+0x68>
   90520:	80 ea       	mov55 $r7,$r10
   90522:	3c 13 e3 59 	lhi.gp $r1,[+#-14670]
   90526:	3c 2d f2 86 	lwi.gp $r2,[+#-13800]
   9052a:	98 51       	add333 $r1,$r2,$r1
   9052c:	80 09       	mov55 $r0,$r9
   9052e:	80 47       	mov55 $r2,$r7
   90530:	f3 81       	swi37.sp $r3,[+#0x4]
   90532:	49 ff fd 8b 	jal 90048 <memcpy>
   90536:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   9053a:	f3 01       	lwi37.sp $r3,[+#0x4]
   9053c:	98 38       	add333 $r0,$r7,$r0
   9053e:	96 01       	zeh33 $r0,$r0
   90540:	3c 0b e3 59 	shi.gp $r0,[+#-14670]
   90544:	44 00 04 00 	movi $r0,#1024
   90548:	3c 13 e3 59 	lhi.gp $r1,[+#-14670]
   9054c:	4c 10 40 05 	bne $r1,$r0,90556 <AB_UART_Read+0x9c>
   90550:	84 00       	movi55 $r0,#0
   90552:	3c 0b e3 59 	shi.gp $r0,[+#-14670]
   90556:	4c 63 80 2b 	beq $r6,$r7,905ac <AB_UART_Read+0xf2>
   9055a:	40 01 f0 01 	sub $r0,$r3,$fp
   9055e:	54 00 03 ff 	andi $r0,$r0,#0x3ff
   90562:	40 a0 28 01 	sub $r10,$r0,$r10
   90566:	40 83 1c 01 	sub $r8,$r6,$r7
   9056a:	e3 48       	slt45 $r10,$r8
   9056c:	e8 02       	beqzs8 90570 <AB_UART_Read+0xb6>
   9056e:	81 0a       	mov55 $r8,$r10
   90570:	3c 13 e3 59 	lhi.gp $r1,[+#-14670]
   90574:	3c 2d f2 86 	lwi.gp $r2,[+#-13800]
   90578:	98 51       	add333 $r1,$r2,$r1
   9057a:	40 04 9c 00 	add $r0,$r9,$r7
   9057e:	80 48       	mov55 $r2,$r8
   90580:	49 ff fd 64 	jal 90048 <memcpy>
   90584:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   90588:	89 00       	add45 $r8,$r0
   9058a:	40 84 00 13 	zeh $r8,$r8
   9058e:	3c 8b e3 59 	shi.gp $r8,[+#-14670]
   90592:	d5 0d       	j8 905ac <AB_UART_Read+0xf2>
   90594:	a4 78       	lhi333 $r1,[$r7+#0x0]
   90596:	3c 2d f2 86 	lwi.gp $r2,[+#-13800]
   9059a:	98 51       	add333 $r1,$r2,$r1
   9059c:	80 09       	mov55 $r0,$r9
   9059e:	80 46       	mov55 $r2,$r6
   905a0:	49 ff fd 54 	jal 90048 <memcpy>
   905a4:	a4 38       	lhi333 $r0,[$r7+#0x0]
   905a6:	98 30       	add333 $r0,$r6,$r0
   905a8:	96 01       	zeh33 $r0,$r0
   905aa:	ac 38       	shi333 $r0,[$r7+#0x0]
   905ac:	2e 07 ca 11 	lbi.gp $r0,[+#-13807]
   905b0:	49 00 5a f4 	jal 9bb98 <DRV_Gpio_PinValGet>
   905b4:	c0 28       	beqz38 $r0,90604 <AB_UART_Read+0x14a>
   905b6:	3c 13 e3 58 	lhi.gp $r1,[+#-14672]
   905ba:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   905be:	9a 08       	sub333 $r0,$r1,$r0
   905c0:	54 00 03 ff 	andi $r0,$r0,#0x3ff
   905c4:	5e f0 00 65 	sltsi $r15,$r0,#101
   905c8:	e8 1e       	beqzs8 90604 <AB_UART_Read+0x14a>
   905ca:	2e 07 ca 11 	lbi.gp $r0,[+#-13807]
   905ce:	84 21       	movi55 $r1,#1
   905d0:	40 00 80 0c 	sll $r0,$r1,$r0
   905d4:	84 20       	movi55 $r1,#0
   905d6:	49 00 5a d0 	jal 9bb76 <DRV_Gpio_ValSet>
   905da:	d5 15       	j8 90604 <AB_UART_Read+0x14a>
   905dc:	46 00 00 9f 	sethi $r0,#0x9f
   905e0:	58 00 07 d8 	ori $r0,$r0,#0x7d8
   905e4:	49 00 69 bd 	jal 9d95e <puts>
   905e8:	80 07       	mov55 $r0,$r7
   905ea:	49 00 60 fc 	jal 9c7e2 <DRV_Uart_Recidue>
   905ee:	80 20       	mov55 $r1,$r0
   905f0:	96 01       	zeh33 $r0,$r0
   905f2:	e2 c0       	slt45 $r6,$r0
   905f4:	e8 02       	beqzs8 905f8 <AB_UART_Read+0x13e>
   905f6:	80 26       	mov55 $r1,$r6
   905f8:	97 89       	zeh33 $r6,$r1
   905fa:	80 07       	mov55 $r0,$r7
   905fc:	80 29       	mov55 $r1,$r9
   905fe:	80 46       	mov55 $r2,$r6
   90600:	49 00 62 2b 	jal 9ca56 <DRV_Uart_Read>
   90604:	80 06       	mov55 $r0,$r6
   90606:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

00090608 <driver_tx_complete>:
   90608:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9060a:	97 c0       	zeb33 $r7,$r0
   9060c:	3e 0f ca 08 	addi.gp $r0,#-13816
   90610:	38 00 1e 02 	lw $r0,[$r0+($r7<<#0x2)]
   90614:	49 00 52 55 	jal 9aabe <AB_queue_pop>
   90618:	80 c0       	mov55 $r6,$r0
   9061a:	c0 0a       	beqz38 $r0,9062e <driver_tx_complete+0x26>
   9061c:	a4 b0       	lhi333 $r2,[$r6+#0x0]
   9061e:	80 07       	mov55 $r0,$r7
   90620:	9c 72       	addi333 $r1,$r6,#2
   90622:	49 00 61 ac 	jal 9c97a <DRV_Uart_Write>
   90626:	80 06       	mov55 $r0,$r6
   90628:	49 00 52 64 	jal 9aaf0 <AB_queue_entry_free>
   9062c:	d5 05       	j8 90636 <driver_tx_complete+0x2e>
   9062e:	3c 0d f2 88 	lwi.gp $r0,[+#-13792]
   90632:	49 00 51 f8 	jal 9aa22 <AB_PWR_WakeUnlocked>
   90636:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00090638 <AB_UART_Write>:
   90638:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9063a:	80 c0       	mov55 $r6,$r0
   9063c:	81 01       	mov55 $r8,$r1
   9063e:	97 d1       	zeh33 $r7,$r2
   90640:	5a 08 01 24 	bnec $r0,#1,90688 <AB_UART_Write+0x50>
   90644:	2e 07 ca 10 	lbi.gp $r0,[+#-13808]
   90648:	c8 1e       	bnez38 $r0,90684 <AB_UART_Write+0x4c>
   9064a:	d5 1f       	j8 90688 <AB_UART_Write+0x50>
   9064c:	96 39       	zeh33 $r0,$r7
   9064e:	80 c7       	mov55 $r6,$r7
   90650:	5c f0 04 00 	slti $r15,$r0,#1024
   90654:	e9 03       	bnezs8 9065a <AB_UART_Write+0x22>
   90656:	44 60 03 ff 	movi $r6,#1023
   9065a:	97 b1       	zeh33 $r6,$r6
   9065c:	9c 32       	addi333 $r0,$r6,#2
   9065e:	49 00 52 63 	jal 9ab24 <AB_queue_entry_alloc>
   90662:	81 20       	mov55 $r9,$r0
   90664:	c0 28       	beqz38 $r0,906b4 <AB_UART_Write+0x7c>
   90666:	1a 60 00 01 	shi.bi $r6,[$r0],#0x2
   9066a:	80 28       	mov55 $r1,$r8
   9066c:	80 46       	mov55 $r2,$r6
   9066e:	49 ff fc ed 	jal 90048 <memcpy>
   90672:	3c 0d f2 83 	lwi.gp $r0,[+#-13812]
   90676:	80 29       	mov55 $r1,$r9
   90678:	9b fe       	sub333 $r7,$r7,$r6
   9067a:	49 00 51 ee 	jal 9aa56 <AB_queue_push>
   9067e:	89 06       	add45 $r8,$r6
   90680:	97 f9       	zeh33 $r7,$r7
   90682:	d5 01       	j8 90684 <AB_UART_Write+0x4c>
   90684:	cf e4       	bnez38 $r7,9064c <AB_UART_Write+0x14>
   90686:	d5 2b       	j8 906dc <AB_UART_Write+0xa4>
   90688:	80 06       	mov55 $r0,$r6
   9068a:	49 00 60 b9 	jal 9c7fc <DRV_Uart_IntDis>
   9068e:	80 06       	mov55 $r0,$r6
   90690:	80 28       	mov55 $r1,$r8
   90692:	80 47       	mov55 $r2,$r7
   90694:	49 00 61 73 	jal 9c97a <DRV_Uart_Write>
   90698:	c8 1b       	bnez38 $r0,906ce <AB_UART_Write+0x96>
   9069a:	3e af ca 08 	addi.gp $r10,#-13816
   9069e:	38 05 1a 02 	lw $r0,[$r10+($r6<<#0x2)]
   906a2:	c0 16       	beqz38 $r0,906ce <AB_UART_Write+0x96>
   906a4:	9c 3a       	addi333 $r0,$r7,#2
   906a6:	49 00 52 3f 	jal 9ab24 <AB_queue_entry_alloc>
   906aa:	81 20       	mov55 $r9,$r0
   906ac:	c8 06       	bnez38 $r0,906b8 <AB_UART_Write+0x80>
   906ae:	80 06       	mov55 $r0,$r6
   906b0:	49 00 60 c0 	jal 9c830 <DRV_Uart_IntEn>
   906b4:	80 09       	mov55 $r0,$r9
   906b6:	d5 14       	j8 906de <AB_UART_Write+0xa6>
   906b8:	1a 70 00 01 	shi.bi $r7,[$r0],#0x2
   906bc:	80 28       	mov55 $r1,$r8
   906be:	80 47       	mov55 $r2,$r7
   906c0:	49 ff fc c4 	jal 90048 <memcpy>
   906c4:	38 05 1a 02 	lw $r0,[$r10+($r6<<#0x2)]
   906c8:	80 29       	mov55 $r1,$r9
   906ca:	49 00 51 c6 	jal 9aa56 <AB_queue_push>
   906ce:	3c 0d f2 88 	lwi.gp $r0,[+#-13792]
   906d2:	49 00 51 9f 	jal 9aa10 <AB_PWR_WakeLocked>
   906d6:	80 06       	mov55 $r0,$r6
   906d8:	49 00 60 ac 	jal 9c830 <DRV_Uart_IntEn>
   906dc:	84 01       	movi55 $r0,#1
   906de:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000906e0 <AB_UART_Flush>:
   906e0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   906e2:	97 80       	zeb33 $r6,$r0
   906e4:	80 06       	mov55 $r0,$r6
   906e6:	49 00 60 bd 	jal 9c860 <DRV_Uart_Flush>
   906ea:	c8 fd       	bnez38 $r0,906e4 <AB_UART_Flush+0x4>
   906ec:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000906ee <AB_UART_Open>:
   906ee:	fc 44       	push25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}
   906f0:	81 00       	mov55 $r8,$r0
   906f2:	50 60 80 08 	addi $r6,$r1,#8
   906f6:	e6 03       	slti45 $r0,#3
   906f8:	e8 6a       	beqzs8 907cc <AB_UART_Open+0xde>
   906fa:	3e 0f ca 08 	addi.gp $r0,#-13816
   906fe:	38 00 22 02 	lw $r0,[$r0+($r8<<#0x2)]
   90702:	c8 65       	bnez38 $r0,907cc <AB_UART_Open+0xde>
   90704:	a4 0a       	lhi333 $r0,[$r1+#0x4]
   90706:	50 9f 80 14 	addi $r9,$sp,#20
   9070a:	12 0f 80 05 	shi $r0,[$sp+#0xa]
   9070e:	12 0f 80 04 	shi $r0,[$sp+#0x8]
   90712:	49 00 50 61 	jal 9a7d4 <malloc>
   90716:	f0 81       	swi37.sp $r0,[+#0x4]
   90718:	02 0f 80 04 	lhi $r0,[$sp+#0x8]
   9071c:	80 ff       	mov55 $r7,$sp
   9071e:	49 00 50 5b 	jal 9a7d4 <malloc>
   90722:	b6 1f       	swi450 $r0,[$sp]
   90724:	b4 06       	lwi450 $r0,[$r6]
   90726:	f0 83       	swi37.sp $r0,[+#0xc]
   90728:	46 00 00 90 	sethi $r0,#0x90
   9072c:	58 00 06 08 	ori $r0,$r0,#0x608
   90730:	f0 84       	swi37.sp $r0,[+#0x10]
   90732:	46 00 00 9e 	sethi $r0,#0x9e
   90736:	58 00 08 24 	ori $r0,$r0,#0x824
   9073a:	3a 00 08 00 	lmw.bi $r0,[$r0],$r2,#0x0    ! {$r0~$r2}
   9073e:	3a 04 88 20 	smw.bi $r0,[$r9],$r2,#0x0    ! {$r0~$r2}
   90742:	5a 88 01 2b 	bnec $r8,#1,90798 <AB_UART_Open+0xaa>
   90746:	20 03 00 04 	lbsi $r0,[$r6+#0x4]
   9074a:	4e 04 00 27 	bgez $r0,90798 <AB_UART_Open+0xaa>
   9074e:	3e 87 ca 10 	sbi.gp $r8,[+#-13808]
   90752:	a6 76       	lbi333 $r1,[$r6+#0x6]
   90754:	3e 17 ca 04 	sbi.gp $r1,[+#-13820]
   90758:	a6 75       	lbi333 $r1,[$r6+#0x5]
   9075a:	3e 17 ca 11 	sbi.gp $r1,[+#-13807]
   9075e:	44 00 04 00 	movi $r0,#1024
   90762:	49 00 50 39 	jal 9a7d4 <malloc>
   90766:	3c 0f f2 87 	swi.gp $r0,[+#-13796]
   9076a:	44 00 04 00 	movi $r0,#1024
   9076e:	49 00 50 33 	jal 9a7d4 <malloc>
   90772:	3c 0f f2 86 	swi.gp $r0,[+#-13800]
   90776:	00 04 80 09 	lbi $r0,[$r9+#0x9]
   9077a:	84 3d       	movi55 $r1,#-3
   9077c:	fe 0e       	and33 $r0,$r1
   9077e:	10 04 80 09 	sbi $r0,[$r9+#0x9]
   90782:	a6 34       	lbi333 $r0,[$r6+#0x4]
   90784:	f1 03       	lwi37.sp $r1,[+#0xc]
   90786:	96 37       	fexti33 $r0,#0x6
   90788:	ae 34       	sbi333 $r0,[$r6+#0x4]
   9078a:	3c 1f f2 85 	swi.gp $r1,[+#-13804]
   9078e:	46 00 00 90 	sethi $r0,#0x90
   90792:	58 00 07 d0 	ori $r0,$r0,#0x7d0
   90796:	f0 83       	swi37.sp $r0,[+#0xc]
   90798:	a6 34       	lbi333 $r0,[$r6+#0x4]
   9079a:	b0 45       	addri36.sp $r1,#0x14
   9079c:	ae 0e       	sbi333 $r0,[$r1+#0x6]
   9079e:	80 5f       	mov55 $r2,$sp
   907a0:	04 03 7f fe 	lwi $r0,[$r6+#-0x8]
   907a4:	f0 85       	swi37.sp $r0,[+#0x14]
   907a6:	04 03 7f ff 	lwi $r0,[$r6+#-0x4]
   907aa:	92 01       	srli45 $r0,#1
   907ac:	ac 0a       	shi333 $r0,[$r1+#0x4]
   907ae:	80 08       	mov55 $r0,$r8
   907b0:	49 00 63 56 	jal 9ce5c <DRV_Uart_Init>
   907b4:	49 00 51 c4 	jal 9ab3c <AB_queue_alloc>
   907b8:	3e 1f ca 08 	addi.gp $r1,#-13816
   907bc:	38 00 a2 0a 	sw $r0,[$r1+($r8<<#0x2)]
   907c0:	49 00 51 14 	jal 9a9e8 <AB_PWR_GetWakeLock>
   907c4:	3c 0f f2 88 	swi.gp $r0,[+#-13792]
   907c8:	84 01       	movi55 $r0,#1
   907ca:	d5 02       	j8 907ce <AB_UART_Open+0xe0>
   907cc:	84 00       	movi55 $r0,#0
   907ce:	fc c4       	pop25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}

000907d0 <uart2_rx_data_fctl>:
   907d0:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   907d2:	97 c1       	zeh33 $r7,$r0
   907d4:	3c 13 e3 58 	lhi.gp $r1,[+#-14672]
   907d8:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   907dc:	9a 08       	sub333 $r0,$r1,$r0
   907de:	fe 03       	not33 $r0,$r0
   907e0:	54 00 03 ff 	andi $r0,$r0,#0x3ff
   907e4:	e0 07       	slts45 $r0,$r7
   907e6:	e8 07       	beqzs8 907f4 <uart2_rx_data_fctl+0x24>
   907e8:	46 00 00 9f 	sethi $r0,#0x9f
   907ec:	58 00 07 e0 	ori $r0,$r0,#0x7e0
   907f0:	49 00 68 b7 	jal 9d95e <puts>
   907f4:	c7 2a       	beqz38 $r7,90848 <uart2_rx_data_fctl+0x78>
   907f6:	3e 6f c6 b0 	addi.gp $r6,#-14672
   907fa:	a4 30       	lhi333 $r0,[$r6+#0x0]
   907fc:	3e 8f ca 18 	addi.gp $r8,#-13800
   90800:	98 38       	add333 $r0,$r7,$r0
   90802:	5e f0 04 00 	sltsi $r15,$r0,#1024
   90806:	e8 0c       	beqzs8 9081e <uart2_rx_data_fctl+0x4e>
   90808:	a4 70       	lhi333 $r1,[$r6+#0x0]
   9080a:	b4 48       	lwi450 $r2,[$r8]
   9080c:	84 01       	movi55 $r0,#1
   9080e:	98 51       	add333 $r1,$r2,$r1
   90810:	80 47       	mov55 $r2,$r7
   90812:	49 00 61 22 	jal 9ca56 <DRV_Uart_Read>
   90816:	a4 30       	lhi333 $r0,[$r6+#0x0]
   90818:	99 f8       	add333 $r7,$r7,$r0
   9081a:	97 f9       	zeh33 $r7,$r7
   9081c:	d5 15       	j8 90846 <uart2_rx_data_fctl+0x76>
   9081e:	02 93 00 00 	lhi $r9,[$r6+#0x0]
   90822:	a4 70       	lhi333 $r1,[$r6+#0x0]
   90824:	b4 48       	lwi450 $r2,[$r8]
   90826:	52 94 84 00 	subri $r9,$r9,#1024
   9082a:	40 94 80 13 	zeh $r9,$r9
   9082e:	98 51       	add333 $r1,$r2,$r1
   90830:	84 01       	movi55 $r0,#1
   90832:	80 49       	mov55 $r2,$r9
   90834:	8a e9       	sub45 $r7,$r9
   90836:	49 00 61 10 	jal 9ca56 <DRV_Uart_Read>
   9083a:	97 f9       	zeh33 $r7,$r7
   9083c:	b4 28       	lwi450 $r1,[$r8]
   9083e:	84 01       	movi55 $r0,#1
   90840:	80 47       	mov55 $r2,$r7
   90842:	49 00 61 0a 	jal 9ca56 <DRV_Uart_Read>
   90846:	ad f0       	shi333 $r7,[$r6+#0x0]
   90848:	3c 0d f2 83 	lwi.gp $r0,[+#-13812]
   9084c:	49 00 51 46 	jal 9aad8 <AB_queue_count>
   90850:	e6 06       	slti45 $r0,#6
   90852:	e8 0b       	beqzs8 90868 <uart2_rx_data_fctl+0x98>
   90854:	3c 13 e3 58 	lhi.gp $r1,[+#-14672]
   90858:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   9085c:	9a 08       	sub333 $r0,$r1,$r0
   9085e:	54 00 03 ff 	andi $r0,$r0,#0x3ff
   90862:	5e f0 02 85 	sltsi $r15,$r0,#645
   90866:	e9 08       	bnezs8 90876 <uart2_rx_data_fctl+0xa6>
   90868:	2e 07 ca 11 	lbi.gp $r0,[+#-13807]
   9086c:	84 21       	movi55 $r1,#1
   9086e:	40 00 80 0c 	sll $r0,$r1,$r0
   90872:	49 00 59 82 	jal 9bb76 <DRV_Gpio_ValSet>
   90876:	3c 1d f2 85 	lwi.gp $r1,[+#-13804]
   9087a:	c1 09       	beqz38 $r1,9088c <uart2_rx_data_fctl+0xbc>
   9087c:	3c 23 e3 58 	lhi.gp $r2,[+#-14672]
   90880:	3c 03 e3 59 	lhi.gp $r0,[+#-14670]
   90884:	9a 10       	sub333 $r0,$r2,$r0
   90886:	54 00 03 ff 	andi $r0,$r0,#0x3ff
   9088a:	dd 21       	jral5 $r1
   9088c:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009088e <AB_BSP_initEx>:
   9088e:	fc 4b       	push25 $r10,#0x58    ! {$r6~$r10, $fp, $gp, $lp}
   90890:	80 e1       	mov55 $r7,$r1
   90892:	f0 83       	swi37.sp $r0,[+#0xc]
   90894:	49 00 5b 93 	jal 9bfba <DRV_Pwr_BootFrom>
   90898:	84 01       	movi55 $r0,#1
   9089a:	49 00 51 60 	jal 9ab5a <AB_SECTOR_GetMpParameter>
   9089e:	49 00 3f 4e 	jal 9873a <AB_ADC_Init>
   908a2:	a0 39       	lwi333 $r0,[$r7+#0x4]
   908a4:	a0 bf       	lwi333 $r2,[$r7+#0x1c]
   908a6:	b4 27       	lwi450 $r1,[$r7]
   908a8:	04 a3 80 02 	lwi $r10,[$r7+#0x8]
   908ac:	04 83 80 03 	lwi $r8,[$r7+#0xc]
   908b0:	f0 82       	swi37.sp $r0,[+#0x8]
   908b2:	05 c3 80 04 	lwi $fp,[$r7+#0x10]
   908b6:	a1 bd       	lwi333 $r6,[$r7+#0x14]
   908b8:	04 93 80 06 	lwi $r9,[$r7+#0x18]
   908bc:	c2 06       	beqz38 $r2,908c8 <AB_BSP_initEx+0x3a>
   908be:	b4 02       	lwi450 $r0,[$r2]
   908c0:	f1 81       	swi37.sp $r1,[+#0x4]
   908c2:	49 00 46 a2 	jal 99606 <AB_Debug_CpuExceptionMonitor>
   908c6:	f1 01       	lwi37.sp $r1,[+#0x4]
   908c8:	c1 05       	beqz38 $r1,908d2 <AB_BSP_initEx+0x44>
   908ca:	b4 01       	lwi450 $r0,[$r1]
   908cc:	a6 4c       	lbi333 $r1,[$r1+#0x4]
   908ce:	49 00 3f 6b 	jal 987a4 <AB_CLK_Switch>
   908d2:	4e 62 00 7c 	beqz $r6,909ca <AB_BSP_initEx+0x13c>
   908d6:	46 10 00 9e 	sethi $r1,#0x9e
   908da:	58 10 88 40 	ori $r1,$r1,#0x840
   908de:	3a 00 8c 00 	lmw.bi $r0,[$r1],$r3,#0x0    ! {$r0~$r3}
   908e2:	b1 0f       	addri36.sp $r4,#0x3c
   908e4:	b1 4b       	addri36.sp $r5,#0x2c
   908e6:	3a 02 0c 20 	smw.bi $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   908ea:	46 10 00 9e 	sethi $r1,#0x9e
   908ee:	58 10 88 30 	ori $r1,$r1,#0x830
   908f2:	3a 00 8c 00 	lmw.bi $r0,[$r1],$r3,#0x0    ! {$r0~$r3}
   908f6:	3a 02 8c 20 	smw.bi $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   908fa:	b4 26       	lwi450 $r1,[$r6]
   908fc:	c1 23       	beqz38 $r1,90942 <AB_BSP_initEx+0xb4>
   908fe:	00 03 00 14 	lbi $r0,[$r6+#0x14]
   90902:	f1 8f       	swi37.sp $r1,[+#0x3c]
   90904:	c0 17       	beqz38 $r0,90932 <AB_BSP_initEx+0xa4>
   90906:	00 02 00 0c 	lbi $r0,[$r4+#0xc]
   9090a:	44 1f ff 80 	movi $r1,#-128
   9090e:	fe 0f       	or33 $r0,$r1
   90910:	10 02 00 0c 	sbi $r0,[$r4+#0xc]
   90914:	84 e1       	movi55 $r7,#1
   90916:	00 13 00 17 	lbi $r1,[$r6+#0x17]
   9091a:	40 03 84 0c 	sll $r0,$r7,$r1
   9091e:	84 29       	movi55 $r1,#9
   90920:	49 00 5a c8 	jal 9beb0 <DRV_PinMux_SigSet>
   90924:	00 13 00 16 	lbi $r1,[$r6+#0x16]
   90928:	40 03 84 0c 	sll $r0,$r7,$r1
   9092c:	84 26       	movi55 $r1,#6
   9092e:	49 00 5a c1 	jal 9beb0 <DRV_PinMux_SigSet>
   90932:	b0 4f       	addri36.sp $r1,#0x3c
   90934:	84 00       	movi55 $r0,#0
   90936:	49 ff fe dc 	jal 906ee <AB_UART_Open>
   9093a:	a0 72       	lwi333 $r1,[$r6+#0x8]
   9093c:	c1 03       	beqz38 $r1,90942 <AB_BSP_initEx+0xb4>
   9093e:	3c 1f f2 89 	swi.gp $r1,[+#-13788]
   90942:	a0 71       	lwi333 $r1,[$r6+#0x4]
   90944:	c1 43       	beqz38 $r1,909ca <AB_BSP_initEx+0x13c>
   90946:	b1 cb       	addri36.sp $r7,#0x2c
   90948:	f1 8b       	swi37.sp $r1,[+#0x2c]
   9094a:	a0 34       	lwi333 $r0,[$r6+#0x10]
   9094c:	84 23       	movi55 $r1,#3
   9094e:	49 00 5a 17 	jal 9bd7c <DRV_PinMux_GrpSet>
   90952:	00 03 00 15 	lbi $r0,[$r6+#0x15]
   90956:	c0 32       	beqz38 $r0,909ba <AB_BSP_initEx+0x12c>
   90958:	00 03 80 0c 	lbi $r0,[$r7+#0xc]
   9095c:	44 2f ff 80 	movi $r2,#-128
   90960:	fe 17       	or33 $r0,$r2
   90962:	10 03 80 0c 	sbi $r0,[$r7+#0xc]
   90966:	44 00 04 00 	movi $r0,#1024
   9096a:	00 13 00 18 	lbi $r1,[$r6+#0x18]
   9096e:	10 13 80 0d 	sbi $r1,[$r7+#0xd]
   90972:	00 23 00 19 	lbi $r2,[$r6+#0x19]
   90976:	f0 8c       	swi37.sp $r0,[+#0x30]
   90978:	10 23 80 0e 	sbi $r2,[$r7+#0xe]
   9097c:	84 e1       	movi55 $r7,#1
   9097e:	40 23 88 0c 	sll $r2,$r7,$r2
   90982:	40 13 84 0c 	sll $r1,$r7,$r1
   90986:	40 01 04 04 	or $r0,$r2,$r1
   9098a:	84 20       	movi55 $r1,#0
   9098c:	49 00 5a 92 	jal 9beb0 <DRV_PinMux_SigSet>
   90990:	00 13 00 18 	lbi $r1,[$r6+#0x18]
   90994:	40 03 84 0c 	sll $r0,$r7,$r1
   90998:	80 27       	mov55 $r1,$r7
   9099a:	49 00 58 dd 	jal 9bb54 <DRV_Gpio_DirSet>
   9099e:	00 13 00 19 	lbi $r1,[$r6+#0x19]
   909a2:	40 03 84 0c 	sll $r0,$r7,$r1
   909a6:	84 20       	movi55 $r1,#0
   909a8:	49 00 58 d6 	jal 9bb54 <DRV_Gpio_DirSet>
   909ac:	00 13 00 18 	lbi $r1,[$r6+#0x18]
   909b0:	40 03 84 0c 	sll $r0,$r7,$r1
   909b4:	84 20       	movi55 $r1,#0
   909b6:	49 00 58 e0 	jal 9bb76 <DRV_Gpio_ValSet>
   909ba:	b0 4b       	addri36.sp $r1,#0x2c
   909bc:	84 01       	movi55 $r0,#1
   909be:	49 ff fe 98 	jal 906ee <AB_UART_Open>
   909c2:	a0 73       	lwi333 $r1,[$r6+#0xc]
   909c4:	c1 03       	beqz38 $r1,909ca <AB_BSP_initEx+0x13c>
   909c6:	3c 1f f2 8a 	swi.gp $r1,[+#-13784]
   909ca:	4e a2 00 0f 	beqz $r10,909e8 <AB_BSP_initEx+0x15a>
   909ce:	b4 2a       	lwi450 $r1,[$r10]
   909d0:	3c 1f f1 97 	swi.gp $r1,[+#-14756]
   909d4:	04 25 00 01 	lwi $r2,[$r10+#0x4]
   909d8:	04 05 00 02 	lwi $r0,[$r10+#0x8]
   909dc:	46 10 00 90 	sethi $r1,#0x90
   909e0:	58 10 8b 92 	ori $r1,$r1,#0xb92
   909e4:	49 00 3f 68 	jal 988b4 <AB_console_init>
   909e8:	4f c2 00 08 	beqz $fp,909f8 <AB_BSP_initEx+0x16a>
   909ec:	b4 5c       	lwi450 $r2,[$fp]
   909ee:	3c 2f f1 98 	swi.gp $r2,[+#-14752]
   909f2:	b8 01       	lwi37 $r0,[$fp+#0x4]
   909f4:	49 00 52 77 	jal 9aee2 <ab_airoha_vcmd_extend_reg>
   909f8:	f0 02       	lwi37.sp $r0,[+#0x8]
   909fa:	c0 04       	beqz38 $r0,90a02 <AB_BSP_initEx+0x174>
   909fc:	b4 00       	lwi450 $r0,[$r0]
   909fe:	49 00 4f 68 	jal 9a8ce <Ab_printf_init>
   90a02:	4e 82 00 30 	beqz $r8,90a62 <AB_BSP_initEx+0x1d4>
   90a06:	84 00       	movi55 $r0,#0
   90a08:	49 00 50 a9 	jal 9ab5a <AB_SECTOR_GetMpParameter>
   90a0c:	80 c0       	mov55 $r6,$r0
   90a0e:	49 ff 7d 8f 	jal 8052c <AB_SECTOR_GetCfgParameter>
   90a12:	80 80       	mov55 $r4,$r0
   90a14:	ce 04       	bnez38 $r6,90a1c <AB_BSP_initEx+0x18e>
   90a16:	80 66       	mov55 $r3,$r6
   90a18:	80 46       	mov55 $r2,$r6
   90a1a:	d5 05       	j8 90a24 <AB_BSP_initEx+0x196>
   90a1c:	50 33 01 58 	addi $r3,$r6,#344
   90a20:	50 23 01 c7 	addi $r2,$r6,#455
   90a24:	b0 45       	addri36.sp $r1,#0x14
   90a26:	f2 88       	swi37.sp $r2,[+#0x20]
   90a28:	04 24 00 02 	lwi $r2,[$r8+#0x8]
   90a2c:	04 04 00 03 	lwi $r0,[$r8+#0xc]
   90a30:	f2 89       	swi37.sp $r2,[+#0x24]
   90a32:	b4 48       	lwi450 $r2,[$r8]
   90a34:	f0 8a       	swi37.sp $r0,[+#0x28]
   90a36:	3c 2f f2 8b 	swi.gp $r2,[+#-13780]
   90a3a:	00 24 00 05 	lbi $r2,[$r8+#0x5]
   90a3e:	3e 27 ca 30 	sbi.gp $r2,[+#-13776]
   90a42:	00 24 00 06 	lbi $r2,[$r8+#0x6]
   90a46:	f6 85       	swi37.sp $r6,[+#0x14]
   90a48:	3e 27 ca 31 	sbi.gp $r2,[+#-13775]
   90a4c:	f4 86       	swi37.sp $r4,[+#0x18]
   90a4e:	f3 87       	swi37.sp $r3,[+#0x1c]
   90a50:	46 00 00 90 	sethi $r0,#0x90
   90a54:	58 00 0b a4 	ori $r0,$r0,#0xba4
   90a58:	00 34 00 04 	lbi $r3,[$r8+#0x4]
   90a5c:	84 46       	movi55 $r2,#6
   90a5e:	49 00 0b ff 	jal 9225c <BT_InitEx2>
   90a62:	4e 92 00 39 	beqz $r9,90ad4 <AB_BSP_initEx+0x246>
   90a66:	04 14 80 01 	lwi $r1,[$r9+#0x4]
   90a6a:	c1 05       	beqz38 $r1,90a74 <AB_BSP_initEx+0x1e6>
   90a6c:	80 01       	mov55 $r0,$r1
   90a6e:	84 21       	movi55 $r1,#1
   90a70:	49 00 58 72 	jal 9bb54 <DRV_Gpio_DirSet>
   90a74:	b4 29       	lwi450 $r1,[$r9]
   90a76:	c1 05       	beqz38 $r1,90a80 <AB_BSP_initEx+0x1f2>
   90a78:	80 01       	mov55 $r0,$r1
   90a7a:	84 21       	movi55 $r1,#1
   90a7c:	49 00 58 7d 	jal 9bb76 <DRV_Gpio_ValSet>
   90a80:	04 14 80 02 	lwi $r1,[$r9+#0x8]
   90a84:	c1 05       	beqz38 $r1,90a8e <AB_BSP_initEx+0x200>
   90a86:	80 01       	mov55 $r0,$r1
   90a88:	84 20       	movi55 $r1,#0
   90a8a:	49 00 58 94 	jal 9bbb2 <DRV_Gpio_PullSet>
   90a8e:	04 14 80 03 	lwi $r1,[$r9+#0xc]
   90a92:	c1 05       	beqz38 $r1,90a9c <AB_BSP_initEx+0x20e>
   90a94:	80 01       	mov55 $r0,$r1
   90a96:	84 22       	movi55 $r1,#2
   90a98:	49 00 58 8d 	jal 9bbb2 <DRV_Gpio_PullSet>
   90a9c:	8d 30       	addi45 $r9,#16
   90a9e:	85 00       	movi55 $r8,#0
   90aa0:	b4 c9       	lwi450 $r6,[$r9]
   90aa2:	c6 13       	beqz38 $r6,90ac8 <AB_BSP_initEx+0x23a>
   90aa4:	84 e0       	movi55 $r7,#0
   90aa6:	96 34       	xlsb33 $r0,$r6
   90aa8:	c0 0b       	beqz38 $r0,90abe <AB_BSP_initEx+0x230>
   90aaa:	04 14 80 01 	lwi $r1,[$r9+#0x4]
   90aae:	04 24 80 02 	lwi $r2,[$r9+#0x8]
   90ab2:	80 07       	mov55 $r0,$r7
   90ab4:	49 00 58 cb 	jal 9bc4a <DRV_Gpio_IntReg>
   90ab8:	80 07       	mov55 $r0,$r7
   90aba:	49 00 58 ad 	jal 9bc14 <DRV_Gpio_IntEn>
   90abe:	92 c1       	srli45 $r6,#1
   90ac0:	c6 04       	beqz38 $r6,90ac8 <AB_BSP_initEx+0x23a>
   90ac2:	9d f9       	addi333 $r7,$r7,#1
   90ac4:	97 f8       	zeb33 $r7,$r7
   90ac6:	d5 f0       	j8 90aa6 <AB_BSP_initEx+0x218>
   90ac8:	8d 01       	addi45 $r8,#1
   90aca:	54 84 00 ff 	andi $r8,$r8,#0xff
   90ace:	8d 2c       	addi45 $r9,#12
   90ad0:	5a 88 0a e8 	bnec $r8,#10,90aa0 <AB_BSP_initEx+0x212>
   90ad4:	f0 03       	lwi37.sp $r0,[+#0xc]
   90ad6:	fc cb       	pop25 $r10,#0x58    ! {$r6~$r10, $fp, $gp, $lp}

00090ad8 <uart1_rx_ind>:
   90ad8:	fc 47       	push25 $r10,#0x38    ! {$r6~$r10, $fp, $gp, $lp}
   90ada:	3c 1d f2 89 	lwi.gp $r1,[+#-13788]
   90ade:	96 01       	zeh33 $r0,$r0
   90ae0:	c1 02       	beqz38 $r1,90ae4 <uart1_rx_ind+0xc>
   90ae2:	dd 21       	jral5 $r1
   90ae4:	3c 0d f1 97 	lwi.gp $r0,[+#-14756]
   90ae8:	c0 16       	beqz38 $r0,90b14 <uart1_rx_ind+0x3c>
   90aea:	3c 0d f1 98 	lwi.gp $r0,[+#-14752]
   90aee:	c0 13       	beqz38 $r0,90b14 <uart1_rx_ind+0x3c>
   90af0:	d5 1b       	j8 90b26 <uart1_rx_ind+0x4e>
   90af2:	3c 0d f1 97 	lwi.gp $r0,[+#-14756]
   90af6:	c8 04       	bnez38 $r0,90afe <uart1_rx_ind+0x26>
   90af8:	fd 03       	movd44 $r0,$r6
   90afa:	49 00 3e cb 	jal 98890 <AB_console_handle>
   90afe:	3c 0d f1 98 	lwi.gp $r0,[+#-14752]
   90b02:	c8 0a       	bnez38 $r0,90b16 <uart1_rx_ind+0x3e>
   90b04:	fd 03       	movd44 $r0,$r6
   90b06:	46 20 00 90 	sethi $r2,#0x90
   90b0a:	58 21 0b 80 	ori $r2,$r2,#0xb80
   90b0e:	49 00 53 39 	jal 9b180 <ab_airoha_vcmd_dispatch>
   90b12:	d5 02       	j8 90b16 <uart1_rx_ind+0x3e>
   90b14:	b1 81       	addri36.sp $r6,#0x4
   90b16:	84 00       	movi55 $r0,#0
   90b18:	80 26       	mov55 $r1,$r6
   90b1a:	44 20 00 32 	movi $r2,#50
   90b1e:	49 ff fc ce 	jal 904ba <AB_UART_Read>
   90b22:	80 e0       	mov55 $r7,$r0
   90b24:	c8 e7       	bnez38 $r0,90af2 <uart1_rx_ind+0x1a>
   90b26:	fc c7       	pop25 $r10,#0x38    ! {$r6~$r10, $fp, $gp, $lp}

00090b28 <uart2_rx_ind>:
   90b28:	fc 47       	push25 $r10,#0x38    ! {$r6~$r10, $fp, $gp, $lp}
   90b2a:	3c 1d f2 8a 	lwi.gp $r1,[+#-13784]
   90b2e:	96 01       	zeh33 $r0,$r0
   90b30:	c1 02       	beqz38 $r1,90b34 <uart2_rx_ind+0xc>
   90b32:	dd 21       	jral5 $r1
   90b34:	3c 0d f1 97 	lwi.gp $r0,[+#-14756]
   90b38:	5a 00 01 1a 	beqc $r0,#1,90b6c <uart2_rx_ind+0x44>
   90b3c:	3c 0d f1 98 	lwi.gp $r0,[+#-14752]
   90b40:	5a 08 01 1f 	bnec $r0,#1,90b7e <uart2_rx_ind+0x56>
   90b44:	d5 14       	j8 90b6c <uart2_rx_ind+0x44>
   90b46:	3c 0d f1 97 	lwi.gp $r0,[+#-14756]
   90b4a:	5a 08 01 05 	bnec $r0,#1,90b54 <uart2_rx_ind+0x2c>
   90b4e:	fd 03       	movd44 $r0,$r6
   90b50:	49 00 3e a0 	jal 98890 <AB_console_handle>
   90b54:	3c 0d f1 98 	lwi.gp $r0,[+#-14752]
   90b58:	5a 08 01 0b 	bnec $r0,#1,90b6e <uart2_rx_ind+0x46>
   90b5c:	fd 03       	movd44 $r0,$r6
   90b5e:	46 20 00 90 	sethi $r2,#0x90
   90b62:	58 21 0b 80 	ori $r2,$r2,#0xb80
   90b66:	49 00 53 0d 	jal 9b180 <ab_airoha_vcmd_dispatch>
   90b6a:	d5 02       	j8 90b6e <uart2_rx_ind+0x46>
   90b6c:	b1 81       	addri36.sp $r6,#0x4
   90b6e:	84 01       	movi55 $r0,#1
   90b70:	80 26       	mov55 $r1,$r6
   90b72:	44 20 00 32 	movi $r2,#50
   90b76:	49 ff fc a2 	jal 904ba <AB_UART_Read>
   90b7a:	80 e0       	mov55 $r7,$r0
   90b7c:	c8 e5       	bnez38 $r0,90b46 <uart2_rx_ind+0x1e>
   90b7e:	fc c7       	pop25 $r10,#0x38    ! {$r6~$r10, $fp, $gp, $lp}

00090b80 <bsp_mp_uart_tx>:
   90b80:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   90b82:	80 60       	mov55 $r3,$r0
   90b84:	3c 0d f1 98 	lwi.gp $r0,[+#-14752]
   90b88:	96 88       	zeb33 $r2,$r1
   90b8a:	80 23       	mov55 $r1,$r3
   90b8c:	49 ff fd 56 	jal 90638 <AB_UART_Write>
   90b90:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00090b92 <bsp_console_uart_tx>:
   90b92:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   90b94:	80 60       	mov55 $r3,$r0
   90b96:	3c 0d f1 97 	lwi.gp $r0,[+#-14756]
   90b9a:	96 89       	zeh33 $r2,$r1
   90b9c:	80 23       	mov55 $r1,$r3
   90b9e:	49 ff fd 4d 	jal 90638 <AB_UART_Write>
   90ba2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00090ba4 <bsp_bt_event_hanlder>:
   90ba4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   90ba6:	80 c0       	mov55 $r6,$r0
   90ba8:	b4 00       	lwi450 $r0,[$r0]
   90baa:	c8 16       	bnez38 $r0,90bd6 <bsp_bt_event_hanlder+0x32>
   90bac:	3c 0d f1 98 	lwi.gp $r0,[+#-14752]
   90bb0:	5a 00 02 13 	beqc $r0,#2,90bd6 <bsp_bt_event_hanlder+0x32>
   90bb4:	2e 07 ca 31 	lbi.gp $r0,[+#-13775]
   90bb8:	c0 03       	beqz38 $r0,90bbe <bsp_bt_event_hanlder+0x1a>
   90bba:	49 00 51 8f 	jal 9aed8 <ab_airoha_vcmd_Bdie_reset_enable>
   90bbe:	2e 07 ca 30 	lbi.gp $r0,[+#-13776]
   90bc2:	c0 08       	beqz38 $r0,90bd2 <bsp_bt_event_hanlder+0x2e>
   90bc4:	46 00 00 90 	sethi $r0,#0x90
   90bc8:	58 00 0b 80 	ori $r0,$r0,#0xb80
   90bcc:	49 00 54 0f 	jal 9b3ea <ab_airoha_vcmd_uart_hci_mode_enable>
   90bd0:	d5 03       	j8 90bd6 <bsp_bt_event_hanlder+0x32>
   90bd2:	49 00 53 f0 	jal 9b3b2 <ab_airoha_vcmd_enable>
   90bd6:	3c 1d f2 8b 	lwi.gp $r1,[+#-13780]
   90bda:	c1 03       	beqz38 $r1,90be0 <bsp_bt_event_hanlder+0x3c>
   90bdc:	80 06       	mov55 $r0,$r6
   90bde:	dd 21       	jral5 $r1
   90be0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00090be2 <hci_spi1602_check_data>:
   90be2:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   90be4:	3c 63 e3 5b 	lhi.gp $r6,[+#-14666]
   90be8:	ce 12       	bnez38 $r6,90c0c <hci_spi1602_check_data+0x2a>
   90bea:	44 10 00 51 	movi $r1,#81
   90bee:	84 45       	movi55 $r2,#5
   90bf0:	80 1f       	mov55 $r0,$sp
   90bf2:	49 ff fa 4b 	jal 90088 <memset>
   90bf6:	84 01       	movi55 $r0,#1
   90bf8:	80 3f       	mov55 $r1,$sp
   90bfa:	80 46       	mov55 $r2,$r6
   90bfc:	84 65       	movi55 $r3,#5
   90bfe:	46 40 00 90 	sethi $r4,#0x90
   90c02:	58 42 0c 54 	ori $r4,$r4,#0xc54
   90c06:	80 ff       	mov55 $r7,$sp
   90c08:	49 00 50 7e 	jal 9ad04 <AB_SPI_WriteAndRead>
   90c0c:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

00090c0e <hci_spi1602_read_data>:
   90c0e:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   90c10:	3c 33 e3 5a 	lhi.gp $r3,[+#-14668]
   90c14:	97 01       	zeh33 $r4,$r0
   90c16:	e2 64       	slt45 $r3,$r4
   90c18:	e9 1c       	bnezs8 90c50 <hci_spi1602_read_data+0x42>
   90c1a:	c4 1b       	beqz38 $r4,90c50 <hci_spi1602_read_data+0x42>
   90c1c:	3c 53 e3 5b 	lhi.gp $r5,[+#-14666]
   90c20:	9a dc       	sub333 $r3,$r3,$r4
   90c22:	99 65       	add333 $r5,$r4,$r5
   90c24:	3c 5b e3 5b 	shi.gp $r5,[+#-14666]
   90c28:	44 00 00 52 	movi $r0,#82
   90c2c:	10 0f 80 07 	sbi $r0,[$sp+#0x7]
   90c30:	3c 3b e3 5a 	shi.gp $r3,[+#-14668]
   90c34:	3c 1f f1 9a 	swi.gp $r1,[+#-14744]
   90c38:	84 01       	movi55 $r0,#1
   90c3a:	50 1f 80 07 	addi $r1,$sp,#7
   90c3e:	80 40       	mov55 $r2,$r0
   90c40:	84 60       	movi55 $r3,#0
   90c42:	46 50 00 90 	sethi $r5,#0x90
   90c46:	58 52 8d 3e 	ori $r5,$r5,#0xd3e
   90c4a:	49 00 50 8c 	jal 9ad62 <AB_SPI_WriteThenRead>
   90c4e:	d5 02       	j8 90c52 <hci_spi1602_read_data+0x44>
   90c50:	84 00       	movi55 $r0,#0
   90c52:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

00090c54 <read_trxlen_compl_int>:
   90c54:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   90c56:	96 49       	zeh33 $r1,$r1
   90c58:	80 c0       	mov55 $r6,$r0
   90c5a:	5a 10 05 0e 	beqc $r1,#5,90c76 <read_trxlen_compl_int+0x22>
   90c5e:	46 00 00 9f 	sethi $r0,#0x9f
   90c62:	58 00 07 e8 	ori $r0,$r0,#0x7e8
   90c66:	44 10 00 67 	movi $r1,#103
   90c6a:	46 20 00 9f 	sethi $r2,#0x9f
   90c6e:	58 21 07 f4 	ori $r2,$r2,#0x7f4
   90c72:	49 00 44 a4 	jal 995ba <assert_ab_callback_verbose>
   90c76:	a6 74       	lbi333 $r1,[$r6+#0x4]
   90c78:	a6 33       	lbi333 $r0,[$r6+#0x3]
   90c7a:	40 10 a0 08 	slli $r1,$r1,#8
   90c7e:	98 48       	add333 $r1,$r1,$r0
   90c80:	3c 1b e3 5c 	shi.gp $r1,[+#-14664]
   90c84:	a6 70       	lbi333 $r1,[$r6+#0x0]
   90c86:	96 4e       	bmski33 $r1,#0x1
   90c88:	c1 06       	beqz38 $r1,90c94 <read_trxlen_compl_int+0x40>
   90c8a:	a6 72       	lbi333 $r1,[$r6+#0x2]
   90c8c:	a6 b1       	lbi333 $r2,[$r6+#0x1]
   90c8e:	40 10 a0 08 	slli $r1,$r1,#8
   90c92:	98 4a       	add333 $r1,$r1,$r2
   90c94:	3c 1b e3 5a 	shi.gp $r1,[+#-14668]
   90c98:	3c 13 e3 5a 	lhi.gp $r1,[+#-14668]
   90c9c:	3c 03 e3 5b 	lhi.gp $r0,[+#-14666]
   90ca0:	e2 20       	slt45 $r1,$r0
   90ca2:	e8 0d       	beqzs8 90cbc <read_trxlen_compl_int+0x68>
   90ca4:	46 00 00 9f 	sethi $r0,#0x9f
   90ca8:	58 00 08 24 	ori $r0,$r0,#0x824
   90cac:	44 10 00 71 	movi $r1,#113
   90cb0:	46 20 00 9f 	sethi $r2,#0x9f
   90cb4:	58 21 07 f4 	ori $r2,$r2,#0x7f4
   90cb8:	49 00 44 81 	jal 995ba <assert_ab_callback_verbose>
   90cbc:	3c 33 e3 5a 	lhi.gp $r3,[+#-14668]
   90cc0:	3c 13 e3 5b 	lhi.gp $r1,[+#-14666]
   90cc4:	9a 59       	sub333 $r1,$r3,$r1
   90cc6:	3c 1b e3 5a 	shi.gp $r1,[+#-14668]
   90cca:	d5 24       	j8 90d12 <read_trxlen_compl_int+0xbe>
   90ccc:	3c 0d f1 9c 	lwi.gp $r0,[+#-14736]
   90cd0:	49 00 4e f7 	jal 9aabe <AB_queue_pop>
   90cd4:	80 c0       	mov55 $r6,$r0
   90cd6:	a4 00       	lhi333 $r0,[$r0+#0x0]
   90cd8:	3c 13 e3 5c 	lhi.gp $r1,[+#-14664]
   90cdc:	9c 81       	addi333 $r2,$r0,#1
   90cde:	e0 41       	slts45 $r2,$r1
   90ce0:	e8 13       	beqzs8 90d06 <read_trxlen_compl_int+0xb2>
   90ce2:	9a 08       	sub333 $r0,$r1,$r0
   90ce4:	84 60       	movi55 $r3,#0
   90ce6:	3c 0b e3 5c 	shi.gp $r0,[+#-14664]
   90cea:	9c 72       	addi333 $r1,$r6,#2
   90cec:	96 91       	zeh33 $r2,$r2
   90cee:	80 83       	mov55 $r4,$r3
   90cf0:	46 50 00 90 	sethi $r5,#0x90
   90cf4:	58 52 8d 30 	ori $r5,$r5,#0xd30
   90cf8:	84 01       	movi55 $r0,#1
   90cfa:	49 00 50 34 	jal 9ad62 <AB_SPI_WriteThenRead>
   90cfe:	80 06       	mov55 $r0,$r6
   90d00:	49 00 4e f8 	jal 9aaf0 <AB_queue_entry_free>
   90d04:	d5 07       	j8 90d12 <read_trxlen_compl_int+0xbe>
   90d06:	3c 0d f1 9c 	lwi.gp $r0,[+#-14736]
   90d0a:	80 26       	mov55 $r1,$r6
   90d0c:	49 00 4e bf 	jal 9aa8a <AB_queue_push_front>
   90d10:	d5 06       	j8 90d1c <read_trxlen_compl_int+0xc8>
   90d12:	3c 0d f1 9c 	lwi.gp $r0,[+#-14736]
   90d16:	49 00 4e e1 	jal 9aad8 <AB_queue_count>
   90d1a:	c8 d9       	bnez38 $r0,90ccc <read_trxlen_compl_int+0x78>
   90d1c:	3c 3d f1 99 	lwi.gp $r3,[+#-14748]
   90d20:	3c 0d f1 9b 	lwi.gp $r0,[+#-14740]
   90d24:	3c 13 e3 5c 	lhi.gp $r1,[+#-14664]
   90d28:	3c 23 e3 5a 	lhi.gp $r2,[+#-14668]
   90d2c:	dd 23       	jral5 $r3
   90d2e:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00090d30 <send_tx_compl_int>:
   90d30:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   90d32:	49 00 37 bd 	jal 97cac <Drv_1602DataReady>
   90d36:	c0 03       	beqz38 $r0,90d3c <send_tx_compl_int+0xc>
   90d38:	49 ff ff 55 	jal 90be2 <hci_spi1602_check_data>
   90d3c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00090d3e <read_rx_compl_int>:
   90d3e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   90d40:	80 e0       	mov55 $r7,$r0
   90d42:	3c 03 e3 5b 	lhi.gp $r0,[+#-14666]
   90d46:	97 89       	zeh33 $r6,$r1
   90d48:	9a 06       	sub333 $r0,$r0,$r6
   90d4a:	3c 0b e3 5b 	shi.gp $r0,[+#-14666]
   90d4e:	49 00 37 af 	jal 97cac <Drv_1602DataReady>
   90d52:	c0 03       	beqz38 $r0,90d58 <read_rx_compl_int+0x1a>
   90d54:	49 ff ff 47 	jal 90be2 <hci_spi1602_check_data>
   90d58:	3c 3d f1 9a 	lwi.gp $r3,[+#-14744]
   90d5c:	3c 0d f1 9b 	lwi.gp $r0,[+#-14740]
   90d60:	80 27       	mov55 $r1,$r7
   90d62:	80 46       	mov55 $r2,$r6
   90d64:	dd 23       	jral5 $r3
   90d66:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00090d68 <data_ready_int>:
   90d68:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   90d6a:	49 00 37 a1 	jal 97cac <Drv_1602DataReady>
   90d6e:	c0 03       	beqz38 $r0,90d74 <data_ready_int+0xc>
   90d70:	49 ff ff 39 	jal 90be2 <hci_spi1602_check_data>
   90d74:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00090d76 <hci_spi1602_send_data>:
   90d76:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   90d78:	81 40       	mov55 $r10,$r0
   90d7a:	3c 0d f1 9c 	lwi.gp $r0,[+#-14736]
   90d7e:	97 89       	zeh33 $r6,$r1
   90d80:	49 00 4e ac 	jal 9aad8 <AB_queue_count>
   90d84:	81 20       	mov55 $r9,$r0
   90d86:	c8 07       	bnez38 $r0,90d94 <hci_spi1602_send_data+0x1e>
   90d88:	3c 13 e3 5c 	lhi.gp $r1,[+#-14664]
   90d8c:	50 83 00 01 	addi $r8,$r6,#1
   90d90:	e1 01       	slts45 $r8,$r1
   90d92:	e9 17       	bnezs8 90dc0 <hci_spi1602_send_data+0x4a>
   90d94:	9c 34       	addi333 $r0,$r6,#4
   90d96:	49 00 4e c7 	jal 9ab24 <AB_queue_entry_alloc>
   90d9a:	80 e0       	mov55 $r7,$r0
   90d9c:	ad 80       	shi333 $r6,[$r0+#0x0]
   90d9e:	44 0f ff a2 	movi $r0,#-94
   90da2:	ae 3a       	sbi333 $r0,[$r7+#0x2]
   90da4:	80 46       	mov55 $r2,$r6
   90da6:	80 2a       	mov55 $r1,$r10
   90da8:	9c 3b       	addi333 $r0,$r7,#3
   90daa:	49 ff f9 4f 	jal 90048 <memcpy>
   90dae:	3c 0d f1 9c 	lwi.gp $r0,[+#-14736]
   90db2:	80 27       	mov55 $r1,$r7
   90db4:	49 00 4e 51 	jal 9aa56 <AB_queue_push>
   90db8:	84 c0       	movi55 $r6,#0
   90dba:	49 ff ff 14 	jal 90be2 <hci_spi1602_check_data>
   90dbe:	d5 22       	j8 90e02 <hci_spi1602_send_data+0x8c>
   90dc0:	9a 4e       	sub333 $r1,$r1,$r6
   90dc2:	3c 1b e3 5c 	shi.gp $r1,[+#-14664]
   90dc6:	80 08       	mov55 $r0,$r8
   90dc8:	49 00 4d 06 	jal 9a7d4 <malloc>
   90dcc:	80 80       	mov55 $r4,$r0
   90dce:	80 e0       	mov55 $r7,$r0
   90dd0:	44 0f ff a2 	movi $r0,#-94
   90dd4:	18 02 00 01 	sbi.bi $r0,[$r4],#0x1
   90dd8:	80 46       	mov55 $r2,$r6
   90dda:	80 04       	mov55 $r0,$r4
   90ddc:	80 2a       	mov55 $r1,$r10
   90dde:	49 ff f9 35 	jal 90048 <memcpy>
   90de2:	84 01       	movi55 $r0,#1
   90de4:	80 27       	mov55 $r1,$r7
   90de6:	40 24 00 13 	zeh $r2,$r8
   90dea:	80 69       	mov55 $r3,$r9
   90dec:	80 89       	mov55 $r4,$r9
   90dee:	46 50 00 90 	sethi $r5,#0x90
   90df2:	58 52 8d 30 	ori $r5,$r5,#0xd30
   90df6:	49 00 4f b6 	jal 9ad62 <AB_SPI_WriteThenRead>
   90dfa:	80 c0       	mov55 $r6,$r0
   90dfc:	80 07       	mov55 $r0,$r7
   90dfe:	49 00 4c 72 	jal 9a6e2 <free>
   90e02:	80 06       	mov55 $r0,$r6
   90e04:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00090e06 <hci_spi1602_deinit>:
   90e06:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   90e08:	84 00       	movi55 $r0,#0
   90e0a:	49 00 37 58 	jal 97cba <Drv_1602DataReadyIntEn>
   90e0e:	84 20       	movi55 $r1,#0
   90e10:	3c 1f f1 99 	swi.gp $r1,[+#-14748]
   90e14:	84 01       	movi55 $r0,#1
   90e16:	49 00 4f db 	jal 9adcc <AB_SPI_Close>
   90e1a:	3c 0d f1 9c 	lwi.gp $r0,[+#-14736]
   90e1e:	c0 03       	beqz38 $r0,90e24 <hci_spi1602_deinit+0x1e>
   90e20:	49 00 4e 75 	jal 9ab0a <AB_queue_free>
   90e24:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00090e26 <hci_spi1602_init>:
   90e26:	fc 22       	push25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}
   90e28:	80 e0       	mov55 $r7,$r0
   90e2a:	3c 6d f1 99 	lwi.gp $r6,[+#-14748]
   90e2e:	81 01       	mov55 $r8,$r1
   90e30:	ce 22       	bnez38 $r6,90e74 <hci_spi1602_init+0x4e>
   90e32:	46 20 01 e8 	sethi $r2,#0x1e8
   90e36:	b0 41       	addri36.sp $r1,#0x4
   90e38:	58 21 04 80 	ori $r2,$r2,#0x480
   90e3c:	f2 81       	swi37.sp $r2,[+#0x4]
   90e3e:	f6 82       	swi37.sp $r6,[+#0x8]
   90e40:	84 01       	movi55 $r0,#1
   90e42:	49 00 4f db 	jal 9adf8 <AB_SPI_Open>
   90e46:	84 01       	movi55 $r0,#1
   90e48:	49 00 37 7c 	jal 97d40 <Drv_1602Reset>
   90e4c:	84 0a       	movi55 $r0,#10
   90e4e:	49 ff 7d 1d 	jal 80888 <OS_delay_us>
   90e52:	80 06       	mov55 $r0,$r6
   90e54:	49 00 37 76 	jal 97d40 <Drv_1602Reset>
   90e58:	84 0a       	movi55 $r0,#10
   90e5a:	49 ff 7d 17 	jal 80888 <OS_delay_us>
   90e5e:	46 10 00 90 	sethi $r1,#0x90
   90e62:	58 10 8d 68 	ori $r1,$r1,#0xd68
   90e66:	80 06       	mov55 $r0,$r6
   90e68:	49 00 37 3a 	jal 97cdc <Drv_1602DataReadyIntReg>
   90e6c:	49 00 4e 68 	jal 9ab3c <AB_queue_alloc>
   90e70:	3c 0f f1 9c 	swi.gp $r0,[+#-14736]
   90e74:	3c 8f f1 99 	swi.gp $r8,[+#-14748]
   90e78:	3c 7f f1 9b 	swi.gp $r7,[+#-14740]
   90e7c:	fc a2       	pop25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}

00090e7e <uart_rx_data_ind>:
   90e7e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   90e80:	84 01       	movi55 $r0,#1
   90e82:	49 00 5b f4 	jal 9c66a <DRV_TMR32B0_NotifyDisable>
   90e86:	d5 13       	j8 90eac <uart_rx_data_ind+0x2e>
   90e88:	49 00 09 e6 	jal 92254 <BT_Pending_TxCnt>
   90e8c:	5c f0 03 e9 	slti $r15,$r0,#1001
   90e90:	e9 04       	bnezs8 90e98 <uart_rx_data_ind+0x1a>
   90e92:	84 01       	movi55 $r0,#1
   90e94:	84 2a       	movi55 $r1,#10
   90e96:	d5 18       	j8 90ec6 <uart_rx_data_ind+0x48>
   90e98:	3c 23 e3 3c 	lhi.gp $r2,[+#-14728]
   90e9c:	84 01       	movi55 $r0,#1
   90e9e:	3e 1f c7 90 	addi.gp $r1,#-14448
   90ea2:	49 ff fb 0c 	jal 904ba <AB_UART_Read>
   90ea6:	c0 03       	beqz38 $r0,90eac <uart_rx_data_ind+0x2e>
   90ea8:	49 00 02 1b 	jal 912de <TRSPX_send>
   90eac:	84 01       	movi55 $r0,#1
   90eae:	49 ff fa f5 	jal 90498 <AB_UART_RxRecidue>
   90eb2:	3c 1d f1 9e 	lwi.gp $r1,[+#-14728]
   90eb6:	e2 20       	slt45 $r1,$r0
   90eb8:	e9 e8       	bnezs8 90e88 <uart_rx_data_ind+0xa>
   90eba:	84 01       	movi55 $r0,#1
   90ebc:	49 ff fa ee 	jal 90498 <AB_UART_RxRecidue>
   90ec0:	c0 0b       	beqz38 $r0,90ed6 <uart_rx_data_ind+0x58>
   90ec2:	84 01       	movi55 $r0,#1
   90ec4:	84 22       	movi55 $r1,#2
   90ec6:	80 40       	mov55 $r2,$r0
   90ec8:	84 60       	movi55 $r3,#0
   90eca:	46 40 00 90 	sethi $r4,#0x90
   90ece:	58 42 0e d8 	ori $r4,$r4,#0xed8
   90ed2:	49 00 5b 74 	jal 9c5ba <DRV_TMR32B0_NotifyEnable>
   90ed6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00090ed8 <uart_rx_timer>:
   90ed8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   90eda:	d5 1a       	j8 90f0e <uart_rx_timer+0x36>
   90edc:	49 00 09 bc 	jal 92254 <BT_Pending_TxCnt>
   90ee0:	5c f0 03 e9 	slti $r15,$r0,#1001
   90ee4:	e9 04       	bnezs8 90eec <uart_rx_timer+0x14>
   90ee6:	84 01       	movi55 $r0,#1
   90ee8:	84 2a       	movi55 $r1,#10
   90eea:	d5 18       	j8 90f1a <uart_rx_timer+0x42>
   90eec:	3c 23 e3 3c 	lhi.gp $r2,[+#-14728]
   90ef0:	3e 1f c7 90 	addi.gp $r1,#-14448
   90ef4:	84 01       	movi55 $r0,#1
   90ef6:	49 ff fa e2 	jal 904ba <AB_UART_Read>
   90efa:	49 00 01 f2 	jal 912de <TRSPX_send>
   90efe:	84 01       	movi55 $r0,#1
   90f00:	49 ff fa cc 	jal 90498 <AB_UART_RxRecidue>
   90f04:	c0 13       	beqz38 $r0,90f2a <uart_rx_timer+0x52>
   90f06:	3c 1d f1 9e 	lwi.gp $r1,[+#-14728]
   90f0a:	e2 01       	slt45 $r0,$r1
   90f0c:	e9 05       	bnezs8 90f16 <uart_rx_timer+0x3e>
   90f0e:	84 01       	movi55 $r0,#1
   90f10:	49 ff fa c4 	jal 90498 <AB_UART_RxRecidue>
   90f14:	c8 e4       	bnez38 $r0,90edc <uart_rx_timer+0x4>
   90f16:	84 01       	movi55 $r0,#1
   90f18:	84 22       	movi55 $r1,#2
   90f1a:	80 40       	mov55 $r2,$r0
   90f1c:	84 60       	movi55 $r3,#0
   90f1e:	46 40 00 90 	sethi $r4,#0x90
   90f22:	58 42 0e d8 	ori $r4,$r4,#0xed8
   90f26:	49 00 5b 4a 	jal 9c5ba <DRV_TMR32B0_NotifyEnable>
   90f2a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00090f2c <main>:
   90f2c:	fc 24       	push25 $r8,#0x20    ! {$r6~$r8, $fp, $gp, $lp}
   90f2e:	49 00 4f de 	jal 9aeea <ab_airoha_vcmd_mp_ongoing>
   90f32:	80 c0       	mov55 $r6,$r0
   90f34:	80 1f       	mov55 $r0,$sp
   90f36:	c6 11       	beqz38 $r6,90f58 <main+0x2c>
   90f38:	3e 1f c0 f4 	addi.gp $r1,#-16140
   90f3c:	3e 2f ca 38 	addi.gp $r2,#-13768
   90f40:	a0 cb       	lwi333 $r3,[$r1+#0xc]
   90f42:	a8 8c       	swi333 $r2,[$r1+#0x10]
   90f44:	84 40       	movi55 $r2,#0
   90f46:	b6 43       	swi450 $r2,[$r3]
   90f48:	a0 cd       	lwi333 $r3,[$r1+#0x14]
   90f4a:	a8 89       	swi333 $r2,[$r1+#0x4]
   90f4c:	a8 9a       	swi333 $r2,[$r3+#0x8]
   90f4e:	10 21 80 14 	sbi $r2,[$r3+#0x14]
   90f52:	49 ff fc 9e 	jal 9088e <AB_BSP_initEx>
   90f56:	d5 00       	j8 90f56 <main+0x2a>
   90f58:	3e 1f c0 f4 	addi.gp $r1,#-16140
   90f5c:	49 ff fc 99 	jal 9088e <AB_BSP_initEx>
   90f60:	84 05       	movi55 $r0,#5
   90f62:	49 00 60 73 	jal 9d048 <DRV_WDT_Enable>
   90f66:	49 00 01 0c 	jal 9117e <TRSPX_init>
   90f6a:	fa 0f       	movpi45 $r0,#0x1f
   90f6c:	49 00 5b c2 	jal 9c6f0 <DRV_TMR32B0_Enable>
   90f70:	46 00 00 9f 	sethi $r0,#0x9f
   90f74:	58 00 08 58 	ori $r0,$r0,#0x858
   90f78:	49 00 64 f3 	jal 9d95e <puts>
   90f7c:	80 26       	mov55 $r1,$r6
   90f7e:	84 06       	movi55 $r0,#6
   90f80:	49 00 0a cc 	jal 92518 <ble_gap_tx_power_set>
   90f84:	b0 84       	addri36.sp $r2,#0x10
   90f86:	fa 0e       	movpi45 $r0,#0x1e
   90f88:	ac 11       	shi333 $r0,[$r2+#0x2]
   90f8a:	fa 04       	movpi45 $r0,#0x14
   90f8c:	ac 12       	shi333 $r0,[$r2+#0x4]
   90f8e:	8c 1e       	addi45 $r0,#30
   90f90:	ac 13       	shi333 $r0,[$r2+#0x6]
   90f92:	ac 14       	shi333 $r0,[$r2+#0x8]
   90f94:	44 00 00 50 	movi $r0,#80
   90f98:	ac 15       	shi333 $r0,[$r2+#0xa]
   90f9a:	ac 16       	shi333 $r0,[$r2+#0xc]
   90f9c:	8c 14       	addi45 $r0,#20
   90f9e:	ad 90       	shi333 $r6,[$r2+#0x0]
   90fa0:	ac 17       	shi333 $r0,[$r2+#0xe]
   90fa2:	3a 01 0c 00 	lmw.bi $r0,[$r2],$r3,#0x0    ! {$r0~$r3}
   90fa6:	49 00 5a 2b 	jal 9c3fc <DRV_TMR16_PWM>
   90faa:	44 00 08 00 	movi $r0,#2048
   90fae:	84 21       	movi55 $r1,#1
   90fb0:	49 00 57 80 	jal 9beb0 <DRV_PinMux_SigSet>
   90fb4:	44 00 10 00 	movi $r0,#4096
   90fb8:	84 22       	movi55 $r1,#2
   90fba:	49 00 57 7b 	jal 9beb0 <DRV_PinMux_SigSet>
   90fbe:	44 00 20 00 	movi $r0,#8192
   90fc2:	84 23       	movi55 $r1,#3
   90fc4:	49 00 57 76 	jal 9beb0 <DRV_PinMux_SigSet>
   90fc8:	84 24       	movi55 $r1,#4
   90fca:	44 00 40 00 	movi $r0,#16384
   90fce:	49 00 57 71 	jal 9beb0 <DRV_PinMux_SigSet>
   90fd2:	84 0a       	movi55 $r0,#10
   90fd4:	49 ff 7c 6b 	jal 808aa <OS_delay_ms>
   90fd8:	44 00 06 3f 	movi $r0,#1599
   90fdc:	49 00 5a 04 	jal 9c3e4 <DRV_TMR16_PWM_Enable>
   90fe0:	44 00 00 80 	movi $r0,#128
   90fe4:	84 21       	movi55 $r1,#1
   90fe6:	49 00 56 65 	jal 9bcb0 <DRV_OdGpio_OeSet>
   90fea:	46 03 9f fd 	sethi $r0,#0x39ffd
   90fee:	3e 2f d0 f0 	addi.gp $r2,#-12048
   90ff2:	58 00 02 f4 	ori $r0,$r0,#0x2f4
   90ff6:	b6 02       	swi450 $r0,[$r2]
   90ff8:	46 03 63 cb 	sethi $r0,#0x363cb
   90ffc:	58 00 00 56 	ori $r0,$r0,#0x56
   91000:	a8 11       	swi333 $r0,[$r2+#0x4]
   91002:	46 03 71 d1 	sethi $r0,#0x371d1
   91006:	58 00 04 11 	ori $r0,$r0,#0x411
   9100a:	a8 12       	swi333 $r0,[$r2+#0x8]
   9100c:	46 03 b9 63 	sethi $r0,#0x3b963
   91010:	58 00 00 70 	ori $r0,$r0,#0x70
   91014:	a8 13       	swi333 $r0,[$r2+#0xc]
   91016:	46 0b 6a dd 	sethi $r0,#0xb6add
   9101a:	58 00 05 41 	ori $r0,$r0,#0x541
   9101e:	a8 14       	swi333 $r0,[$r2+#0x10]
   91020:	46 03 9f fd 	sethi $r0,#0x39ffd
   91024:	58 00 0d e9 	ori $r0,$r0,#0xde9
   91028:	a8 15       	swi333 $r0,[$r2+#0x14]
   9102a:	46 03 64 47 	sethi $r0,#0x36447
   9102e:	58 00 00 e6 	ori $r0,$r0,#0xe6
   91032:	a8 16       	swi333 $r0,[$r2+#0x18]
   91034:	46 03 b7 b1 	sethi $r0,#0x3b7b1
   91038:	58 00 09 ca 	ori $r0,$r0,#0x9ca
   9103c:	a8 17       	swi333 $r0,[$r2+#0x1c]
   9103e:	46 0b 6b 71 	sethi $r0,#0xb6b71
   91042:	58 00 03 09 	ori $r0,$r0,#0x309
   91046:	14 01 00 08 	swi $r0,[$r2+#0x20]
   9104a:	46 0b 55 f2 	sethi $r0,#0xb55f2
   9104e:	58 00 08 db 	ori $r0,$r0,#0x8db
   91052:	14 01 00 09 	swi $r0,[$r2+#0x24]
   91056:	46 03 a0 00 	sethi $r0,#0x3a000
   9105a:	58 00 0e 97 	ori $r0,$r0,#0xe97
   9105e:	14 01 00 0a 	swi $r0,[$r2+#0x28]
   91062:	46 03 c2 5d 	sethi $r0,#0x3c25d
   91066:	58 00 04 6a 	ori $r0,$r0,#0x46a
   9106a:	14 01 00 0b 	swi $r0,[$r2+#0x2c]
   9106e:	46 0b ac 11 	sethi $r0,#0xbac11
   91072:	3e 3f d1 20 	addi.gp $r3,#-12000
   91076:	58 00 07 01 	ori $r0,$r0,#0x701
   9107a:	a8 1b       	swi333 $r0,[$r3+#0xc]
   9107c:	46 0b c8 66 	sethi $r0,#0xbc866
   91080:	58 00 01 de 	ori $r0,$r0,#0x1de
   91084:	a8 1f       	swi333 $r0,[$r3+#0x1c]
   91086:	46 03 ba 12 	sethi $r0,#0x3ba12
   9108a:	58 00 0b ce 	ori $r0,$r0,#0xbce
   9108e:	46 43 a8 b7 	sethi $r4,#0x3a8b7
   91092:	84 40       	movi55 $r2,#0
   91094:	58 42 0d 78 	ori $r4,$r4,#0xd78
   91098:	14 01 80 0b 	swi $r0,[$r3+#0x2c]
   9109c:	46 03 b7 04 	sethi $r0,#0x3b704
   910a0:	b6 83       	swi450 $r4,[$r3]
   910a2:	a8 99       	swi333 $r2,[$r3+#0x4]
   910a4:	a8 9a       	swi333 $r2,[$r3+#0x8]
   910a6:	a8 9c       	swi333 $r2,[$r3+#0x10]
   910a8:	a9 1d       	swi333 $r4,[$r3+#0x14]
   910aa:	a8 9e       	swi333 $r2,[$r3+#0x18]
   910ac:	14 21 80 08 	swi $r2,[$r3+#0x20]
   910b0:	14 21 80 09 	swi $r2,[$r3+#0x24]
   910b4:	14 41 80 0a 	swi $r4,[$r3+#0x28]
   910b8:	58 00 0f 85 	ori $r0,$r0,#0xf85
   910bc:	3e 3f d1 50 	addi.gp $r3,#-11952
   910c0:	b6 03       	swi450 $r0,[$r3]
   910c2:	46 0b e4 cf 	sethi $r0,#0xbe4cf
   910c6:	58 00 06 f8 	ori $r0,$r0,#0x6f8
   910ca:	a8 1b       	swi333 $r0,[$r3+#0xc]
   910cc:	46 03 b6 dd 	sethi $r0,#0x3b6dd
   910d0:	58 00 03 1f 	ori $r0,$r0,#0x31f
   910d4:	a8 1d       	swi333 $r0,[$r3+#0x14]
   910d6:	46 03 dd 11 	sethi $r0,#0x3dd11
   910da:	58 00 0c c2 	ori $r0,$r0,#0xcc2
   910de:	a8 1f       	swi333 $r0,[$r3+#0x1c]
   910e0:	46 03 b6 a4 	sethi $r0,#0x3b6a4
   910e4:	58 00 06 a7 	ori $r0,$r0,#0x6a7
   910e8:	a8 99       	swi333 $r2,[$r3+#0x4]
   910ea:	a8 9a       	swi333 $r2,[$r3+#0x8]
   910ec:	a8 9c       	swi333 $r2,[$r3+#0x10]
   910ee:	a8 9e       	swi333 $r2,[$r3+#0x18]
   910f0:	14 21 80 08 	swi $r2,[$r3+#0x20]
   910f4:	14 21 80 09 	swi $r2,[$r3+#0x24]
   910f8:	14 01 80 0a 	swi $r0,[$r3+#0x28]
   910fc:	46 0b ec bf 	sethi $r0,#0xbecbf
   91100:	58 00 05 72 	ori $r0,$r0,#0x572
   91104:	14 01 80 0b 	swi $r0,[$r3+#0x2c]
   91108:	46 04 1f 00 	sethi $r0,#0x41f00
   9110c:	3c 0f f4 60 	swi.gp $r0,[+#-11904]
   91110:	3c 2f f4 61 	swi.gp $r2,[+#-11900]
   91114:	46 04 6f ff 	sethi $r0,#0x46fff
   91118:	58 00 0e 00 	ori $r0,$r0,#0xe00
   9111c:	3c 0f f4 62 	swi.gp $r0,[+#-11896]
   91120:	3c 0f f4 63 	swi.gp $r0,[+#-11892]
   91124:	46 04 4f fe 	sethi $r0,#0x44ffe
   91128:	3c 0f f4 64 	swi.gp $r0,[+#-11888]
   9112c:	46 03 f4 cc 	sethi $r0,#0x3f4cc
   91130:	58 00 0c cd 	ori $r0,$r0,#0xccd
   91134:	3c 0f f4 65 	swi.gp $r0,[+#-11884]
   91138:	46 03 a8 31 	sethi $r0,#0x3a831
   9113c:	58 00 02 6f 	ori $r0,$r0,#0x26f
   91140:	3c 0f f0 8b 	swi.gp $r0,[+#-15828]
   91144:	49 00 5f b9 	jal 9d0b6 <InitAlg>
   91148:	84 21       	movi55 $r1,#1
   9114a:	84 07       	movi55 $r0,#7
   9114c:	49 00 55 c4 	jal 9bcd4 <DRV_OdGpio_ValSet>
   91150:	49 00 5f 6e 	jal 9d02c <DRV_WDT_Kick>
   91154:	fa 04       	movpi45 $r0,#0x14
   91156:	49 00 00 c4 	jal 912de <TRSPX_send>
   9115a:	84 0a       	movi55 $r0,#10
   9115c:	49 ff 7b a7 	jal 808aa <OS_delay_ms>
   91160:	49 00 08 7a 	jal 92254 <BT_Pending_TxCnt>
   91164:	80 20       	mov55 $r1,$r0
   91166:	3c 0f f2 90 	swi.gp $r0,[+#-13760]
   9116a:	c0 ef       	beqz38 $r0,91148 <main+0x21c>
   9116c:	46 00 00 9f 	sethi $r0,#0x9f
   91170:	58 00 08 60 	ori $r0,$r0,#0x860
   91174:	49 00 4b b1 	jal 9a8d6 <printf>
   91178:	3c 6f f2 90 	swi.gp $r6,[+#-13760]
   9117c:	d5 e6       	j8 91148 <main+0x21c>

0009117e <TRSPX_init>:
   9117e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   91180:	49 00 00 9d 	jal 912ba <TRSPX_service_init>
   91184:	fa 07       	movpi45 $r0,#0x17
   91186:	49 00 11 27 	jal 933d4 <BLE_att_set_default_mtu>
   9118a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009118c <TRSPX_ble_set_scan_data_cb>:
   9118c:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   9118e:	46 f0 00 9f 	sethi $r15,#0x9f
   91192:	04 17 80 b7 	lwi $r1,[$r15+#0x2dc]
   91196:	b0 01       	addri36.sp $r0,#0x4
   91198:	ac 40       	shi333 $r1,[$r0+#0x0]
   9119a:	92 30       	srli45 $r1,#16
   9119c:	ae 42       	sbi333 $r1,[$r0+#0x2]
   9119e:	46 20 00 91 	sethi $r2,#0x91
   911a2:	58 21 02 4c 	ori $r2,$r2,#0x24c
   911a6:	84 23       	movi55 $r1,#3
   911a8:	49 00 0b 65 	jal 92872 <ble_gap_scan_data_set>
   911ac:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000911ae <TRSPX_bt_evt_hdl>:
   911ae:	fc 03       	push25 $r6,#0x18    ! {$r6, $fp, $gp, $lp}
   911b0:	b4 20       	lwi450 $r1,[$r0]
   911b2:	44 20 10 00 	movi $r2,#4096
   911b6:	4c 11 00 25 	beq $r1,$r2,91200 <TRSPX_bt_evt_hdl+0x52>
   911ba:	5c f0 90 01 	slti $r15,$r1,#4097
   911be:	e8 03       	beqzs8 911c4 <TRSPX_bt_evt_hdl+0x16>
   911c0:	c1 0a       	beqz38 $r1,911d4 <TRSPX_bt_evt_hdl+0x26>
   911c2:	d5 44       	j8 9124a <TRSPX_bt_evt_hdl+0x9c>
   911c4:	9c 91       	addi333 $r2,$r2,#1
   911c6:	4c 11 00 3a 	beq $r1,$r2,9123a <TRSPX_bt_evt_hdl+0x8c>
   911ca:	44 20 30 02 	movi $r2,#12290
   911ce:	4c 11 40 3e 	bne $r1,$r2,9124a <TRSPX_bt_evt_hdl+0x9c>
   911d2:	d5 38       	j8 91242 <TRSPX_bt_evt_hdl+0x94>
   911d4:	a6 04       	lbi333 $r0,[$r0+#0x4]
   911d6:	c0 14       	beqz38 $r0,911fe <TRSPX_bt_evt_hdl+0x50>
   911d8:	b1 84       	addri36.sp $r6,#0x10
   911da:	ae 70       	sbi333 $r1,[$r6+#0x0]
   911dc:	50 0f 80 11 	addi $r0,$sp,#17
   911e0:	46 10 00 9f 	sethi $r1,#0x9f
   911e4:	58 10 88 70 	ori $r1,$r1,#0x870
   911e8:	84 46       	movi55 $r2,#6
   911ea:	49 ff f7 2f 	jal 90048 <memcpy>
   911ee:	80 06       	mov55 $r0,$r6
   911f0:	46 10 00 91 	sethi $r1,#0x91
   911f4:	58 10 81 8c 	ori $r1,$r1,#0x18c
   911f8:	49 00 0a 4a 	jal 9268c <ble_gap_address_set>
   911fc:	d5 27       	j8 9124a <TRSPX_bt_evt_hdl+0x9c>
   911fe:	d5 00       	j8 911fe <TRSPX_bt_evt_hdl+0x50>
   91200:	a6 84       	lbi333 $r2,[$r0+#0x4]
   91202:	ca 24       	bnez38 $r2,9124a <TRSPX_bt_evt_hdl+0x9c>
   91204:	a0 01       	lwi333 $r0,[$r0+#0x4]
   91206:	92 08       	srli45 $r0,#8
   91208:	2e 47 ca 44 	lbi.gp $r4,[+#-13756]
   9120c:	96 01       	zeh33 $r0,$r0
   9120e:	84 a8       	movi55 $r5,#8
   91210:	3c 0b e9 7a 	shi.gp $r0,[+#-11532]
   91214:	b0 41       	addri36.sp $r1,#0x4
   91216:	ad 48       	shi333 $r5,[$r1+#0x0]
   91218:	ad 49       	shi333 $r5,[$r1+#0x2]
   9121a:	54 52 00 03 	andi $r5,$r4,#0x3
   9121e:	8c bd       	addi45 $r5,#29
   91220:	ad 4a       	shi333 $r5,[$r1+#0x4]
   91222:	9d 21       	addi333 $r4,$r4,#1
   91224:	44 50 00 64 	movi $r5,#100
   91228:	ad 4b       	shi333 $r5,[$r1+#0x6]
   9122a:	ac 8c       	shi333 $r2,[$r1+#0x8]
   9122c:	ac 8d       	shi333 $r2,[$r1+#0xa]
   9122e:	3e 47 ca 44 	sbi.gp $r4,[+#-13756]
   91232:	49 00 0a 76 	jal 9271e <ble_gap_conn_param_update>
   91236:	84 22       	movi55 $r1,#2
   91238:	d5 02       	j8 9123c <TRSPX_bt_evt_hdl+0x8e>
   9123a:	84 20       	movi55 $r1,#0
   9123c:	3e 0f c6 74 	addi.gp $r0,#-14732
   91240:	d5 04       	j8 91248 <TRSPX_bt_evt_hdl+0x9a>
   91242:	a4 42       	lhi333 $r1,[$r0+#0x4]
   91244:	3e 0f c6 78 	addi.gp $r0,#-14728
   91248:	b6 20       	swi450 $r1,[$r0]
   9124a:	fc 83       	pop25 $r6,#0x18    ! {$r6, $fp, $gp, $lp}

0009124c <TRSPX_ble_set_adv_data_cb>:
   9124c:	fc 04       	push25 $r6,#0x20    ! {$r6, $fp, $gp, $lp}
   9124e:	46 60 00 9f 	sethi $r6,#0x9f
   91252:	58 63 02 e0 	ori $r6,$r6,#0x2e0
   91256:	3a 03 0c 04 	lmw.bim $r0,[$r6],$r3,#0x0    ! {$r0~$r3}
   9125a:	80 9f       	mov55 $r4,$sp
   9125c:	3a 02 0c 24 	smw.bim $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   91260:	3a 03 0c 00 	lmw.bi $r0,[$r6],$r3,#0x0    ! {$r0~$r3}
   91264:	3a 02 08 24 	smw.bim $r0,[$r4],$r2,#0x0    ! {$r0~$r2}
   91268:	80 1f       	mov55 $r0,$sp
   9126a:	fa 2f       	movpi45 $r1,#0x1f
   9126c:	46 20 00 91 	sethi $r2,#0x91
   91270:	58 21 02 82 	ori $r2,$r2,#0x282
   91274:	1a 32 00 01 	shi.bi $r3,[$r4],#0x2
   91278:	92 70       	srli45 $r3,#16
   9127a:	ae e0       	sbi333 $r3,[$r4+#0x0]
   9127c:	49 00 0b 1b 	jal 928b2 <ble_gap_adv_data_set>
   91280:	fc 84       	pop25 $r6,#0x20    ! {$r6, $fp, $gp, $lp}

00091282 <TRSPX_ble_set_adv_parameter_cb>:
   91282:	fc 02       	push25 $r6,#0x10    ! {$r6, $fp, $gp, $lp}
   91284:	46 00 00 9f 	sethi $r0,#0x9f
   91288:	58 00 03 00 	ori $r0,$r0,#0x300
   9128c:	3a 00 08 00 	lmw.bi $r0,[$r0],$r2,#0x0    ! {$r0~$r2}
   91290:	b0 c1       	addri36.sp $r3,#0x4
   91292:	3a 01 88 20 	smw.bi $r0,[$r3],$r2,#0x0    ! {$r0~$r2}
   91296:	80 03       	mov55 $r0,$r3
   91298:	46 10 00 91 	sethi $r1,#0x91
   9129c:	58 10 82 a6 	ori $r1,$r1,#0x2a6
   912a0:	49 00 0a 85 	jal 927aa <ble_gap_adv_start>
   912a4:	fc 82       	pop25 $r6,#0x10    ! {$r6, $fp, $gp, $lp}

000912a6 <TRSPX_ble_set_adv_scan_data_cpl_cb>:
   912a6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   912a8:	84 21       	movi55 $r1,#1
   912aa:	3c 1f f1 9d 	swi.gp $r1,[+#-14732]
   912ae:	84 00       	movi55 $r0,#0
   912b0:	49 00 07 cd 	jal 9224a <BT_Log_Enable>
   912b4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000912b6 <_LeXport_TxCccdCB>:
   912b6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   912b8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000912ba <TRSPX_service_init>:
   912ba:	fc 03       	push25 $r6,#0x18    ! {$r6, $fp, $gp, $lp}
   912bc:	46 00 00 9f 	sethi $r0,#0x9f
   912c0:	58 00 03 0c 	ori $r0,$r0,#0x30c
   912c4:	80 a0       	mov55 $r5,$r0
   912c6:	3a 02 8c 04 	lmw.bim $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   912ca:	b1 01       	addri36.sp $r4,#0x4
   912cc:	80 c4       	mov55 $r6,$r4
   912ce:	3a 03 0c 24 	smw.bim $r0,[$r6],$r3,#0x0    ! {$r0~$r3}
   912d2:	80 04       	mov55 $r0,$r4
   912d4:	b4 a5       	lwi450 $r5,[$r5]
   912d6:	b6 a6       	swi450 $r5,[$r6]
   912d8:	49 00 00 2e 	jal 91334 <TRSPX_service_init_para>
   912dc:	fc 83       	pop25 $r6,#0x18    ! {$r6, $fp, $gp, $lp}

000912de <TRSPX_send>:
   912de:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   912e0:	97 c1       	zeh33 $r7,$r0
   912e2:	3c 0d f1 9d 	lwi.gp $r0,[+#-14732]
   912e6:	5a 08 02 1a 	bnec $r0,#2,9131a <TRSPX_send+0x3c>
   912ea:	44 10 00 66 	movi $r1,#102
   912ee:	fa 44       	movpi45 $r2,#0x14
   912f0:	3e 0f c7 90 	addi.gp $r0,#-14448
   912f4:	49 ff f6 ca 	jal 90088 <memset>
   912f8:	2e 37 ca 45 	lbi.gp $r3,[+#-13755]
   912fc:	3e 37 c7 90 	sbi.gp $r3,[+#-14448]
   91300:	9c d9       	addi333 $r3,$r3,#1
   91302:	3e 37 ca 45 	sbi.gp $r3,[+#-13755]
   91306:	3c 03 e9 79 	lhi.gp $r0,[+#-11534]
   9130a:	80 27       	mov55 $r1,$r7
   9130c:	49 00 11 0a 	jal 93520 <BLE_att_set_attribute_length>
   91310:	3c 03 e9 79 	lhi.gp $r0,[+#-11534]
   91314:	84 20       	movi55 $r1,#0
   91316:	49 00 19 68 	jal 945e6 <BLE_gatt_charact_notify>
   9131a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009131c <_LeXport_RxCB>:
   9131c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9131e:	3c 03 e9 74 	lhi.gp $r0,[+#-11544]
   91322:	49 00 10 44 	jal 933aa <BLE_att_get_attribute_length>
   91326:	80 40       	mov55 $r2,$r0
   91328:	3e 1f c6 c8 	addi.gp $r1,#-14648
   9132c:	84 01       	movi55 $r0,#1
   9132e:	49 ff f9 85 	jal 90638 <AB_UART_Write>
   91332:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00091334 <TRSPX_service_init_para>:
   91334:	fc 53       	push25 $r10,#0x98    ! {$r6~$r10, $fp, $gp, $lp}
   91336:	50 9f 80 80 	addi $r9,$sp,#128
   9133a:	80 c0       	mov55 $r6,$r0
   9133c:	84 20       	movi55 $r1,#0
   9133e:	80 09       	mov55 $r0,$r9
   91340:	fa 48       	movpi45 $r2,#0x18
   91342:	49 ff f6 a3 	jal 90088 <memset>
   91346:	44 00 28 00 	movi $r0,#10240
   9134a:	f0 a0       	swi37.sp $r0,[+#0x80]
   9134c:	85 1f       	movi55 $r8,#-1
   9134e:	84 11       	movi55 $r0,#-15
   91350:	10 04 80 08 	sbi $r0,[$r9+#0x8]
   91354:	10 84 80 09 	sbi $r8,[$r9+#0x9]
   91358:	b1 d7       	addri36.sp $r7,#0x5c
   9135a:	a1 71       	lwi333 $r5,[$r6+#0x4]
   9135c:	fa 94       	movpi45 $r4,#0x24
   9135e:	85 42       	movi55 $r10,#2
   91360:	80 44       	mov55 $r2,$r4
   91362:	80 07       	mov55 $r0,$r7
   91364:	84 20       	movi55 $r1,#0
   91366:	f4 82       	swi37.sp $r4,[+#0x8]
   91368:	f5 81       	swi37.sp $r5,[+#0x4]
   9136a:	14 af 80 21 	swi $r10,[$sp+#0x84]
   9136e:	49 ff f6 8d 	jal 90088 <memset>
   91372:	44 0f ff e1 	movi $r0,#-31
   91376:	ae 3c       	sbi333 $r0,[$r7+#0x4]
   91378:	44 3f ff 88 	movi $r3,#-120
   9137c:	fa 00       	movpi45 $r0,#0x10
   9137e:	10 83 80 05 	sbi $r8,[$r7+#0x5]
   91382:	10 33 80 15 	sbi $r3,[$r7+#0x15]
   91386:	10 03 80 14 	sbi $r0,[$r7+#0x14]
   9138a:	50 8f 80 38 	addi $r8,$sp,#56
   9138e:	f5 01       	lwi37.sp $r5,[+#0x4]
   91390:	f4 02       	lwi37.sp $r4,[+#0x8]
   91392:	f5 9e       	swi37.sp $r5,[+#0x78]
   91394:	a1 74       	lwi333 $r5,[$r6+#0x10]
   91396:	a0 32       	lwi333 $r0,[$r6+#0x8]
   91398:	45 c0 00 c8 	movi $fp,#200
   9139c:	f0 83       	swi37.sp $r0,[+#0xc]
   9139e:	80 44       	mov55 $r2,$r4
   913a0:	80 08       	mov55 $r0,$r8
   913a2:	84 20       	movi55 $r1,#0
   913a4:	f3 82       	swi37.sp $r3,[+#0x8]
   913a6:	f5 81       	swi37.sp $r5,[+#0x4]
   913a8:	14 af 80 17 	swi $r10,[$sp+#0x5c]
   913ac:	13 c3 80 0b 	shi $fp,[$r7+#0x16]
   913b0:	13 c3 80 0c 	shi $fp,[$r7+#0x18]
   913b4:	49 ff f6 6a 	jal 90088 <memset>
   913b8:	fa 19       	movpi45 $r0,#0x29
   913ba:	10 04 00 05 	sbi $r0,[$r8+#0x5]
   913be:	10 a4 00 04 	sbi $r10,[$r8+#0x4]
   913c2:	f0 03       	lwi37.sp $r0,[+#0xc]
   913c4:	f5 01       	lwi37.sp $r5,[+#0x4]
   913c6:	f0 95       	swi37.sp $r0,[+#0x54]
   913c8:	f5 96       	swi37.sp $r5,[+#0x58]
   913ca:	b4 46       	lwi450 $r2,[$r6]
   913cc:	a0 73       	lwi333 $r1,[$r6+#0xc]
   913ce:	fa 00       	movpi45 $r0,#0x10
   913d0:	b1 85       	addri36.sp $r6,#0x14
   913d2:	f0 85       	swi37.sp $r0,[+#0x14]
   913d4:	44 0f ff b3 	movi $r0,#-77
   913d8:	ae 34       	sbi333 $r0,[$r6+#0x4]
   913da:	8e 18       	subi45 $r0,#24
   913dc:	ae 35       	sbi333 $r0,[$r6+#0x5]
   913de:	44 00 00 72 	movi $r0,#114
   913e2:	ae 36       	sbi333 $r0,[$r6+#0x6]
   913e4:	44 00 00 34 	movi $r0,#52
   913e8:	ae 37       	sbi333 $r0,[$r6+#0x7]
   913ea:	44 0f ff be 	movi $r0,#-66
   913ee:	10 03 00 08 	sbi $r0,[$r6+#0x8]
   913f2:	44 0f ff ec 	movi $r0,#-20
   913f6:	10 03 00 09 	sbi $r0,[$r6+#0x9]
   913fa:	8e 18       	subi45 $r0,#24
   913fc:	10 03 00 0a 	sbi $r0,[$r6+#0xa]
   91400:	44 0f ff a8 	movi $r0,#-88
   91404:	10 03 00 0b 	sbi $r0,[$r6+#0xb]
   91408:	84 14       	movi55 $r0,#-12
   9140a:	44 40 00 41 	movi $r4,#65
   9140e:	10 03 00 0c 	sbi $r0,[$r6+#0xc]
   91412:	9c 22       	addi333 $r0,$r4,#2
   91414:	10 43 00 0e 	sbi $r4,[$r6+#0xe]
   91418:	10 03 00 0d 	sbi $r0,[$r6+#0xd]
   9141c:	f2 8c       	swi37.sp $r2,[+#0x30]
   9141e:	f3 02       	lwi37.sp $r3,[+#0x8]
   91420:	10 03 00 10 	sbi $r0,[$r6+#0x10]
   91424:	44 00 00 53 	movi $r0,#83
   91428:	10 03 00 11 	sbi $r0,[$r6+#0x11]
   9142c:	10 03 00 12 	sbi $r0,[$r6+#0x12]
   91430:	8e 0a       	subi45 $r0,#10
   91432:	10 03 00 13 	sbi $r0,[$r6+#0x13]
   91436:	84 0c       	movi55 $r0,#12
   91438:	10 03 00 14 	sbi $r0,[$r6+#0x14]
   9143c:	84 08       	movi55 $r0,#8
   9143e:	10 03 00 15 	sbi $r0,[$r6+#0x15]
   91442:	80 09       	mov55 $r0,$r9
   91444:	10 33 00 0f 	sbi $r3,[$r6+#0xf]
   91448:	14 af 80 0e 	swi $r10,[$sp+#0x38]
   9144c:	12 a4 00 0b 	shi $r10,[$r8+#0x16]
   91450:	13 c3 00 0b 	shi $fp,[$r6+#0x16]
   91454:	13 c3 00 0c 	shi $fp,[$r6+#0x18]
   91458:	f1 8d       	swi37.sp $r1,[+#0x34]
   9145a:	49 00 19 f9 	jal 9484c <BLE_gatt_add_service>
   9145e:	3c 0b e9 78 	shi.gp $r0,[+#-11536]
   91462:	80 07       	mov55 $r0,$r7
   91464:	49 00 19 77 	jal 94752 <BLE_gatt_add_charact>
   91468:	3c 0b e9 79 	shi.gp $r0,[+#-11534]
   9146c:	80 08       	mov55 $r0,$r8
   9146e:	49 00 1a aa 	jal 949c2 <BLE_gatt_add_descrip>
   91472:	3c 0b e9 76 	shi.gp $r0,[+#-11540]
   91476:	80 06       	mov55 $r0,$r6
   91478:	49 00 19 6d 	jal 94752 <BLE_gatt_add_charact>
   9147c:	3c 0b e9 74 	shi.gp $r0,[+#-11544]
   91480:	fc d3       	pop25 $r10,#0x98    ! {$r6~$r10, $fp, $gp, $lp}

00091482 <chip_1602_is_vcmd_complete_event>:
   91482:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   91484:	a7 03       	lbi333 $r4,[$r0+#0x3]
   91486:	a7 42       	lbi333 $r5,[$r0+#0x2]
   91488:	a6 c4       	lbi333 $r3,[$r0+#0x4]
   9148a:	a6 85       	lbi333 $r2,[$r0+#0x5]
   9148c:	40 42 20 08 	slli $r4,$r4,#8
   91490:	ff 2f       	or33 $r4,$r5
   91492:	40 31 c0 08 	slli $r3,$r3,#16
   91496:	fe e7       	or33 $r3,$r4
   91498:	40 21 60 08 	slli $r2,$r2,#24
   9149c:	fe 9f       	or33 $r2,$r3
   9149e:	a7 11       	lbi333 $r4,[$r2+#0x1]
   914a0:	a6 00       	lbi333 $r0,[$r0+#0x0]
   914a2:	08 51 00 02 	lbi.bi $r5,[$r2],#0x2
   914a6:	96 49       	zeh33 $r1,$r1
   914a8:	a6 d1       	lbi333 $r3,[$r2+#0x1]
   914aa:	a6 90       	lbi333 $r2,[$r2+#0x0]
   914ac:	5a 08 ff 11 	bnec $r0,#255,914ce <chip_1602_is_vcmd_complete_event+0x4c>
   914b0:	40 42 20 08 	slli $r4,$r4,#8
   914b4:	ff 2f       	or33 $r4,$r5
   914b6:	97 23       	seh33 $r4,$r4
   914b8:	44 00 30 01 	movi $r0,#12289
   914bc:	4c 40 40 09 	bne $r4,$r0,914ce <chip_1602_is_vcmd_complete_event+0x4c>
   914c0:	40 01 a0 08 	slli $r0,$r3,#8
   914c4:	fe 17       	or33 $r0,$r2
   914c6:	fe 0d       	xor33 $r0,$r1
   914c8:	5c 00 00 01 	slti $r0,$r0,#1
   914cc:	d5 02       	j8 914d0 <chip_1602_is_vcmd_complete_event+0x4e>
   914ce:	84 00       	movi55 $r0,#0
   914d0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000914d2 <chip_1602_is_boot_complete_event>:
   914d2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   914d4:	a7 03       	lbi333 $r4,[$r0+#0x3]
   914d6:	a7 42       	lbi333 $r5,[$r0+#0x2]
   914d8:	a6 84       	lbi333 $r2,[$r0+#0x4]
   914da:	a6 c5       	lbi333 $r3,[$r0+#0x5]
   914dc:	40 42 20 08 	slli $r4,$r4,#8
   914e0:	ff 2f       	or33 $r4,$r5
   914e2:	40 21 40 08 	slli $r2,$r2,#16
   914e6:	fe a7       	or33 $r2,$r4
   914e8:	40 31 e0 08 	slli $r3,$r3,#24
   914ec:	fe d7       	or33 $r3,$r2
   914ee:	a6 81       	lbi333 $r2,[$r0+#0x1]
   914f0:	a6 00       	lbi333 $r0,[$r0+#0x0]
   914f2:	96 49       	zeh33 $r1,$r1
   914f4:	a7 19       	lbi333 $r4,[$r3+#0x1]
   914f6:	a7 58       	lbi333 $r5,[$r3+#0x0]
   914f8:	5a 08 ff 26 	bnec $r0,#255,91544 <chip_1602_is_boot_complete_event+0x72>
   914fc:	40 42 20 08 	slli $r4,$r4,#8
   91500:	ff 2f       	or33 $r4,$r5
   91502:	97 23       	seh33 $r4,$r4
   91504:	44 00 30 02 	movi $r0,#12290
   91508:	4c 40 40 1e 	bne $r4,$r0,91544 <chip_1602_is_boot_complete_event+0x72>
   9150c:	9e 92       	subi333 $r2,$r2,#2
   9150e:	9c 1a       	addi333 $r0,$r3,#2
   91510:	96 90       	zeb33 $r2,$r2
   91512:	d5 18       	j8 91542 <chip_1602_is_boot_complete_event+0x70>
   91514:	a6 c0       	lbi333 $r3,[$r0+#0x0]
   91516:	5a 38 81 0f 	bnec $r3,#129,91534 <chip_1602_is_boot_complete_event+0x62>
   9151a:	9c c2       	addi333 $r3,$r0,#2
   9151c:	a7 18       	lbi333 $r4,[$r3+#0x0]
   9151e:	5a 48 02 0b 	bnec $r4,#2,91534 <chip_1602_is_boot_complete_event+0x62>
   91522:	a7 19       	lbi333 $r4,[$r3+#0x1]
   91524:	a6 da       	lbi333 $r3,[$r3+#0x2]
   91526:	40 31 a0 08 	slli $r3,$r3,#8
   9152a:	fe e7       	or33 $r3,$r4
   9152c:	4c 30 c0 04 	bne $r3,$r1,91534 <chip_1602_is_boot_complete_event+0x62>
   91530:	84 01       	movi55 $r0,#1
   91532:	d5 0a       	j8 91546 <chip_1602_is_boot_complete_event+0x74>
   91534:	a6 c1       	lbi333 $r3,[$r0+#0x1]
   91536:	52 41 ff fe 	subri $r4,$r3,#-2
   9153a:	98 94       	add333 $r2,$r2,$r4
   9153c:	9c da       	addi333 $r3,$r3,#2
   9153e:	96 90       	zeb33 $r2,$r2
   91540:	98 03       	add333 $r0,$r0,$r3
   91542:	ca e9       	bnez38 $r2,91514 <chip_1602_is_boot_complete_event+0x42>
   91544:	84 00       	movi55 $r0,#0
   91546:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00091548 <chip_1602_init>:
   91548:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9154a:	3c 0f f2 94 	swi.gp $r0,[+#-13744]
   9154e:	3c 2f f2 97 	swi.gp $r2,[+#-13732]
   91552:	97 20       	zeb33 $r4,$r4
   91554:	3c 1f f2 95 	swi.gp $r1,[+#-13740]
   91558:	c4 09       	beqz38 $r4,9156a <chip_1602_init+0x22>
   9155a:	b4 43       	lwi450 $r2,[$r3]
   9155c:	3c 2f f2 98 	swi.gp $r2,[+#-13728]
   91560:	e6 82       	slti45 $r4,#2
   91562:	e9 04       	bnezs8 9156a <chip_1602_init+0x22>
   91564:	a0 d9       	lwi333 $r3,[$r3+#0x4]
   91566:	3c 3f f2 99 	swi.gp $r3,[+#-13724]
   9156a:	a0 81       	lwi333 $r2,[$r0+#0x4]
   9156c:	46 10 00 91 	sethi $r1,#0x91
   91570:	58 10 85 7a 	ori $r1,$r1,#0x57a
   91574:	84 01       	movi55 $r0,#1
   91576:	dd 22       	jral5 $r2
   91578:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009157a <hci_1602_lens_ind_cb>:
   9157a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9157c:	3c 0d f2 94 	lwi.gp $r0,[+#-13744]
   91580:	46 10 00 92 	sethi $r1,#0x92
   91584:	58 10 80 00 	ori $r1,$r1,#0x0
   91588:	a0 c4       	lwi333 $r3,[$r0+#0x10]
   9158a:	96 11       	zeh33 $r0,$r2
   9158c:	dd 23       	jral5 $r3
   9158e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00091590 <chip_1602_send_acl_data>:
   91590:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   91592:	97 c1       	zeh33 $r7,$r0
   91594:	3e 0f ca 48 	addi.gp $r0,#-13752
   91598:	a4 c0       	lhi333 $r3,[$r0+#0x0]
   9159a:	85 00       	movi55 $r8,#0
   9159c:	96 91       	zeh33 $r2,$r2
   9159e:	12 8f 80 03 	shi $r8,[$sp+#0x6]
   915a2:	4c 33 80 43 	beq $r3,$r7,91628 <chip_1602_send_acl_data+0x98>
   915a6:	a4 c1       	lhi333 $r3,[$r0+#0x2]
   915a8:	4c 33 80 40 	beq $r3,$r7,91628 <chip_1602_send_acl_data+0x98>
   915ac:	a4 c2       	lhi333 $r3,[$r0+#0x4]
   915ae:	4c 33 80 3d 	beq $r3,$r7,91628 <chip_1602_send_acl_data+0x98>
   915b2:	a4 03       	lhi333 $r0,[$r0+#0x6]
   915b4:	4c 03 80 3a 	beq $r0,$r7,91628 <chip_1602_send_acl_data+0x98>
   915b8:	fa 00       	movpi45 $r0,#0x10
   915ba:	49 00 49 0d 	jal 9a7d4 <malloc>
   915be:	80 c0       	mov55 $r6,$r0
   915c0:	84 04       	movi55 $r0,#4
   915c2:	b6 06       	swi450 $r0,[$r6]
   915c4:	84 05       	movi55 $r0,#5
   915c6:	ae 35       	sbi333 $r0,[$r6+#0x5]
   915c8:	49 00 49 06 	jal 9a7d4 <malloc>
   915cc:	40 30 40 09 	srli $r3,$r0,#16
   915d0:	ac f4       	shi333 $r3,[$r6+#0x8]
   915d2:	96 81       	zeh33 $r2,$r0
   915d4:	40 31 c0 08 	slli $r3,$r3,#16
   915d8:	fa 23       	movpi45 $r1,#0x13
   915da:	ac b3       	shi333 $r2,[$r6+#0x6]
   915dc:	ae 74       	sbi333 $r1,[$r6+#0x4]
   915de:	fe 9f       	or33 $r2,$r3
   915e0:	84 21       	movi55 $r1,#1
   915e2:	ae 40       	sbi333 $r1,[$r0+#0x0]
   915e4:	af d1       	sbi333 $r7,[$r2+#0x1]
   915e6:	92 e8       	srli45 $r7,#8
   915e8:	a4 34       	lhi333 $r0,[$r6+#0x8]
   915ea:	a4 b3       	lhi333 $r2,[$r6+#0x6]
   915ec:	40 00 40 08 	slli $r0,$r0,#16
   915f0:	fe 17       	or33 $r0,$r2
   915f2:	af c2       	sbi333 $r7,[$r0+#0x2]
   915f4:	a4 34       	lhi333 $r0,[$r6+#0x8]
   915f6:	a4 b3       	lhi333 $r2,[$r6+#0x6]
   915f8:	40 00 40 08 	slli $r0,$r0,#16
   915fc:	fe 17       	or33 $r0,$r2
   915fe:	ae 43       	sbi333 $r1,[$r0+#0x3]
   91600:	a4 34       	lhi333 $r0,[$r6+#0x8]
   91602:	a4 73       	lhi333 $r1,[$r6+#0x6]
   91604:	40 00 40 08 	slli $r0,$r0,#16
   91608:	fe 0f       	or33 $r0,$r1
   9160a:	10 80 00 04 	sbi $r8,[$r0+#0x4]
   9160e:	3c 1d f2 95 	lwi.gp $r1,[+#-13740]
   91612:	80 06       	mov55 $r0,$r6
   91614:	dd 21       	jral5 $r1
   91616:	a4 34       	lhi333 $r0,[$r6+#0x8]
   91618:	a4 73       	lhi333 $r1,[$r6+#0x6]
   9161a:	40 00 40 08 	slli $r0,$r0,#16
   9161e:	fe 0f       	or33 $r0,$r1
   91620:	49 00 48 61 	jal 9a6e2 <free>
   91624:	80 06       	mov55 $r0,$r6
   91626:	d5 10       	j8 91646 <chip_1602_send_acl_data+0xb6>
   91628:	80 07       	mov55 $r0,$r7
   9162a:	80 7f       	mov55 $r3,$sp
   9162c:	50 4f 80 06 	addi $r4,$sp,#6
   91630:	49 00 05 c8 	jal 921c0 <hci_h4_encode_dat>
   91634:	c0 0b       	beqz38 $r0,9164a <chip_1602_send_acl_data+0xba>
   91636:	3c 0d f2 94 	lwi.gp $r0,[+#-13744]
   9163a:	02 1f 80 03 	lhi $r1,[$sp+#0x6]
   9163e:	a0 83       	lwi333 $r2,[$r0+#0xc]
   91640:	b4 1f       	lwi450 $r0,[$sp]
   91642:	dd 22       	jral5 $r2
   91644:	b4 1f       	lwi450 $r0,[$sp]
   91646:	49 00 48 4e 	jal 9a6e2 <free>
   9164a:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

0009164c <make_command_complete_ex>:
   9164c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9164e:	40 80 00 13 	zeh $r8,$r0
   91652:	fa 00       	movpi45 $r0,#0x10
   91654:	97 d8       	zeb33 $r7,$r3
   91656:	81 22       	mov55 $r9,$r2
   91658:	54 a0 80 ff 	andi $r10,$r1,#0xff
   9165c:	49 00 48 bc 	jal 9a7d4 <malloc>
   91660:	80 c0       	mov55 $r6,$r0
   91662:	84 04       	movi55 $r0,#4
   91664:	b6 06       	swi450 $r0,[$r6]
   91666:	98 38       	add333 $r0,$r7,$r0
   91668:	ae 35       	sbi333 $r0,[$r6+#0x5]
   9166a:	49 00 48 b5 	jal 9a7d4 <malloc>
   9166e:	40 40 40 09 	srli $r4,$r0,#16
   91672:	ad 34       	shi333 $r4,[$r6+#0x8]
   91674:	96 c1       	zeh33 $r3,$r0
   91676:	40 42 40 08 	slli $r4,$r4,#16
   9167a:	84 2e       	movi55 $r1,#14
   9167c:	ac f3       	shi333 $r3,[$r6+#0x6]
   9167e:	ae 74       	sbi333 $r1,[$r6+#0x4]
   91680:	fe e7       	or33 $r3,$r4
   91682:	84 21       	movi55 $r1,#1
   91684:	ae 40       	sbi333 $r1,[$r0+#0x0]
   91686:	10 81 80 01 	sbi $r8,[$r3+#0x1]
   9168a:	93 08       	srli45 $r8,#8
   9168c:	a4 34       	lhi333 $r0,[$r6+#0x8]
   9168e:	a4 73       	lhi333 $r1,[$r6+#0x6]
   91690:	40 00 40 08 	slli $r0,$r0,#16
   91694:	fe 0f       	or33 $r0,$r1
   91696:	10 80 00 02 	sbi $r8,[$r0+#0x2]
   9169a:	80 47       	mov55 $r2,$r7
   9169c:	a4 34       	lhi333 $r0,[$r6+#0x8]
   9169e:	a4 73       	lhi333 $r1,[$r6+#0x6]
   916a0:	40 00 40 08 	slli $r0,$r0,#16
   916a4:	fe 0f       	or33 $r0,$r1
   916a6:	10 a0 00 03 	sbi $r10,[$r0+#0x3]
   916aa:	a4 34       	lhi333 $r0,[$r6+#0x8]
   916ac:	a4 73       	lhi333 $r1,[$r6+#0x6]
   916ae:	40 00 40 08 	slli $r0,$r0,#16
   916b2:	fe 0f       	or33 $r0,$r1
   916b4:	9c 04       	addi333 $r0,$r0,#4
   916b6:	80 29       	mov55 $r1,$r9
   916b8:	49 ff f4 c8 	jal 90048 <memcpy>
   916bc:	80 06       	mov55 $r0,$r6
   916be:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000916c0 <make_command_complete>:
   916c0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   916c2:	84 40       	movi55 $r2,#0
   916c4:	96 48       	zeb33 $r1,$r1
   916c6:	80 62       	mov55 $r3,$r2
   916c8:	96 01       	zeh33 $r0,$r0
   916ca:	49 ff ff c1 	jal 9164c <make_command_complete_ex>
   916ce:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000916d0 <chip_1602_check_chip_cmd_permission>:
   916d0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   916d2:	2e 17 ca 58 	lbi.gp $r1,[+#-13736]
   916d6:	96 01       	zeh33 $r0,$r0
   916d8:	5a 18 05 04 	bnec $r1,#5,916e0 <chip_1602_check_chip_cmd_permission+0x10>
   916dc:	84 01       	movi55 $r0,#1
   916de:	d5 13       	j8 91704 <chip_1602_check_chip_cmd_permission+0x34>
   916e0:	3c 7d f2 95 	lwi.gp $r7,[+#-13740]
   916e4:	fa 3b       	movpi45 $r1,#0x2b
   916e6:	49 ff ff ed 	jal 916c0 <make_command_complete>
   916ea:	80 c0       	mov55 $r6,$r0
   916ec:	dd 27       	jral5 $r7
   916ee:	a4 34       	lhi333 $r0,[$r6+#0x8]
   916f0:	a4 73       	lhi333 $r1,[$r6+#0x6]
   916f2:	40 00 40 08 	slli $r0,$r0,#16
   916f6:	fe 0f       	or33 $r0,$r1
   916f8:	49 00 47 f5 	jal 9a6e2 <free>
   916fc:	80 06       	mov55 $r0,$r6
   916fe:	49 00 47 f2 	jal 9a6e2 <free>
   91702:	84 00       	movi55 $r0,#0
   91704:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00091706 <chip_1602_send_hci_command>:
   91706:	fc 25       	push25 $r8,#0x28    ! {$r6~$r8, $fp, $gp, $lp}
   91708:	97 81       	zeh33 $r6,$r0
   9170a:	84 00       	movi55 $r0,#0
   9170c:	12 0f 80 13 	shi $r0,[$sp+#0x26]
   91710:	44 00 40 01 	movi $r0,#16385
   91714:	80 e1       	mov55 $r7,$r1
   91716:	96 90       	zeb33 $r2,$r2
   91718:	4c 60 00 48 	beq $r6,$r0,917a8 <chip_1602_send_hci_command+0xa2>
   9171c:	e2 06       	slt45 $r0,$r6
   9171e:	e9 0a       	bnezs8 91732 <chip_1602_send_hci_command+0x2c>
   91720:	44 00 20 02 	movi $r0,#8194
   91724:	4c 60 00 8c 	beq $r6,$r0,9183c <chip_1602_send_hci_command+0x136>
   91728:	44 00 40 00 	movi $r0,#16384
   9172c:	4c 60 40 a2 	bne $r6,$r0,91870 <chip_1602_send_hci_command+0x16a>
   91730:	d5 09       	j8 91742 <chip_1602_send_hci_command+0x3c>
   91732:	9c 01       	addi333 $r0,$r0,#1
   91734:	4c 60 00 25 	beq $r6,$r0,9177e <chip_1602_send_hci_command+0x78>
   91738:	9c 01       	addi333 $r0,$r0,#1
   9173a:	4c 60 40 9b 	bne $r6,$r0,91870 <chip_1602_send_hci_command+0x16a>
   9173e:	48 00 00 73 	j 91824 <chip_1602_send_hci_command+0x11e>
   91742:	80 06       	mov55 $r0,$r6
   91744:	49 ff ff c6 	jal 916d0 <chip_1602_check_chip_cmd_permission>
   91748:	4e 02 00 a5 	beqz $r0,91892 <chip_1602_send_hci_command+0x18c>
   9174c:	b1 85       	addri36.sp $r6,#0x14
   9174e:	84 0e       	movi55 $r0,#14
   91750:	ae 30       	sbi333 $r0,[$r6+#0x0]
   91752:	44 00 00 31 	movi $r0,#49
   91756:	ae 31       	sbi333 $r0,[$r6+#0x1]
   91758:	44 0f ff b4 	movi $r0,#-76
   9175c:	ae 32       	sbi333 $r0,[$r6+#0x2]
   9175e:	85 06       	movi55 $r8,#6
   91760:	8c 10       	addi45 $r0,#16
   91762:	ae 33       	sbi333 $r0,[$r6+#0x3]
   91764:	10 83 00 04 	sbi $r8,[$r6+#0x4]
   91768:	80 27       	mov55 $r1,$r7
   9176a:	84 46       	movi55 $r2,#6
   9176c:	50 0f 80 19 	addi $r0,$sp,#25
   91770:	49 ff f4 6c 	jal 90048 <memcpy>
   91774:	3e 87 ca 58 	sbi.gp $r8,[+#-13736]
   91778:	84 4b       	movi55 $r2,#11
   9177a:	80 e6       	mov55 $r7,$r6
   9177c:	d5 13       	j8 917a2 <chip_1602_send_hci_command+0x9c>
   9177e:	80 06       	mov55 $r0,$r6
   91780:	49 ff ff a8 	jal 916d0 <chip_1602_check_chip_cmd_permission>
   91784:	4e 02 00 87 	beqz $r0,91892 <chip_1602_send_hci_command+0x18c>
   91788:	46 00 00 9f 	sethi $r0,#0x9f
   9178c:	58 00 03 90 	ori $r0,$r0,#0x390
   91790:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   91794:	b1 c5       	addri36.sp $r7,#0x14
   91796:	f0 85       	swi37.sp $r0,[+#0x14]
   91798:	ae 7c       	sbi333 $r1,[$r7+#0x4]
   9179a:	84 27       	movi55 $r1,#7
   9179c:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   917a0:	84 45       	movi55 $r2,#5
   917a2:	44 60 fc 00 	movi $r6,#64512
   917a6:	d5 65       	j8 91870 <chip_1602_send_hci_command+0x16a>
   917a8:	46 00 00 9f 	sethi $r0,#0x9f
   917ac:	58 00 03 84 	ori $r0,$r0,#0x384
   917b0:	3a 00 08 00 	lmw.bi $r0,[$r0],$r2,#0x0    ! {$r0~$r2}
   917b4:	b0 c5       	addri36.sp $r3,#0x14
   917b6:	50 8f 80 04 	addi $r8,$sp,#4
   917ba:	3a 01 84 24 	smw.bim $r0,[$r3],$r1,#0x0    ! {$r0~$r1}
   917be:	46 00 00 9f 	sethi $r0,#0x9f
   917c2:	58 00 03 74 	ori $r0,$r0,#0x374
   917c6:	80 88       	mov55 $r4,$r8
   917c8:	ac 98       	shi333 $r2,[$r3+#0x0]
   917ca:	3a 00 0c 00 	lmw.bi $r0,[$r0],$r3,#0x0    ! {$r0~$r3}
   917ce:	3a 02 08 24 	smw.bim $r0,[$r4],$r2,#0x0    ! {$r0~$r2}
   917d2:	80 06       	mov55 $r0,$r6
   917d4:	ac e0       	shi333 $r3,[$r4+#0x0]
   917d6:	49 ff ff 7d 	jal 916d0 <chip_1602_check_chip_cmd_permission>
   917da:	c0 5c       	beqz38 $r0,91892 <chip_1602_send_hci_command+0x18c>
   917dc:	a6 38       	lbi333 $r0,[$r7+#0x0]
   917de:	96 82       	seb33 $r2,$r0
   917e0:	50 00 00 21 	addi $r0,$r0,#33
   917e4:	96 00       	zeb33 $r0,$r0
   917e6:	5c f0 00 22 	slti $r15,$r0,#34
   917ea:	e9 08       	bnezs8 917fa <chip_1602_send_hci_command+0xf4>
   917ec:	3c 7d f2 95 	lwi.gp $r7,[+#-13740]
   917f0:	fa 22       	movpi45 $r1,#0x12
   917f2:	80 06       	mov55 $r0,$r6
   917f4:	49 ff ff 66 	jal 916c0 <make_command_complete>
   917f8:	d5 31       	j8 9185a <chip_1602_send_hci_command+0x154>
   917fa:	80 28       	mov55 $r1,$r8
   917fc:	84 00       	movi55 $r0,#0
   917fe:	20 30 80 00 	lbsi $r3,[$r1+#0x0]
   91802:	e0 62       	slts45 $r3,$r2
   91804:	e8 06       	beqzs8 91810 <chip_1602_send_hci_command+0x10a>
   91806:	9c 01       	addi333 $r0,$r0,#1
   91808:	96 00       	zeb33 $r0,$r0
   9180a:	9c 49       	addi333 $r1,$r1,#1
   9180c:	5a 08 0e f9 	bnec $r0,#14,917fe <chip_1602_send_hci_command+0xf8>
   91810:	b1 c5       	addri36.sp $r7,#0x14
   91812:	10 03 80 08 	sbi $r0,[$r7+#0x8]
   91816:	ae 3f       	sbi333 $r0,[$r7+#0x7]
   91818:	ae 3e       	sbi333 $r0,[$r7+#0x6]
   9181a:	84 28       	movi55 $r1,#8
   9181c:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   91820:	84 4a       	movi55 $r2,#10
   91822:	d5 c0       	j8 917a2 <chip_1602_send_hci_command+0x9c>
   91824:	b1 c5       	addri36.sp $r7,#0x14
   91826:	fa 07       	movpi45 $r0,#0x17
   91828:	ae 38       	sbi333 $r0,[$r7+#0x0]
   9182a:	8c 1a       	addi45 $r0,#26
   9182c:	ae 39       	sbi333 $r0,[$r7+#0x1]
   9182e:	84 43       	movi55 $r2,#3
   91830:	50 0f 80 16 	addi $r0,$sp,#22
   91834:	49 ff f4 0a 	jal 90048 <memcpy>
   91838:	84 29       	movi55 $r1,#9
   9183a:	d5 b1       	j8 9179c <chip_1602_send_hci_command+0x96>
   9183c:	46 f0 00 9f 	sethi $r15,#0x9f
   91840:	04 07 80 dc 	lwi $r0,[$r15+#0x370]
   91844:	b0 85       	addri36.sp $r2,#0x14
   91846:	ac 10       	shi333 $r0,[$r2+#0x0]
   91848:	92 10       	srli45 $r0,#16
   9184a:	ae 12       	sbi333 $r0,[$r2+#0x2]
   9184c:	3c 7d f2 95 	lwi.gp $r7,[+#-13740]
   91850:	84 20       	movi55 $r1,#0
   91852:	80 06       	mov55 $r0,$r6
   91854:	84 63       	movi55 $r3,#3
   91856:	49 ff fe fb 	jal 9164c <make_command_complete_ex>
   9185a:	80 c0       	mov55 $r6,$r0
   9185c:	dd 27       	jral5 $r7
   9185e:	a4 34       	lhi333 $r0,[$r6+#0x8]
   91860:	a4 73       	lhi333 $r1,[$r6+#0x6]
   91862:	40 00 40 08 	slli $r0,$r0,#16
   91866:	fe 0f       	or33 $r0,$r1
   91868:	49 00 47 3d 	jal 9a6e2 <free>
   9186c:	80 06       	mov55 $r0,$r6
   9186e:	d5 10       	j8 9188e <chip_1602_send_hci_command+0x188>
   91870:	fd 03       	movd44 $r0,$r6
   91872:	b0 c8       	addri36.sp $r3,#0x20
   91874:	50 4f 80 26 	addi $r4,$sp,#38
   91878:	49 00 04 c5 	jal 92202 <hci_h4_encode_cmd>
   9187c:	c0 0b       	beqz38 $r0,91892 <chip_1602_send_hci_command+0x18c>
   9187e:	3c 0d f2 94 	lwi.gp $r0,[+#-13744]
   91882:	02 1f 80 13 	lhi $r1,[$sp+#0x26]
   91886:	a0 83       	lwi333 $r2,[$r0+#0xc]
   91888:	f0 08       	lwi37.sp $r0,[+#0x20]
   9188a:	dd 22       	jral5 $r2
   9188c:	f0 08       	lwi37.sp $r0,[+#0x20]
   9188e:	49 00 47 2a 	jal 9a6e2 <free>
   91892:	fc a5       	pop25 $r8,#0x28    ! {$r6~$r8, $fp, $gp, $lp}

00091894 <chip_1602_init_adopt_mp>:
   91894:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   91896:	80 e0       	mov55 $r7,$r0
   91898:	46 00 00 9f 	sethi $r0,#0x9f
   9189c:	58 00 04 44 	ori $r0,$r0,#0x444
   918a0:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   918a4:	12 1f 80 06 	shi $r1,[$sp+#0xc]
   918a8:	92 30       	srli45 $r1,#16
   918aa:	f0 82       	swi37.sp $r0,[+#0x8]
   918ac:	10 1f 80 0e 	sbi $r1,[$sp+#0xe]
   918b0:	cf 33       	bnez38 $r7,91916 <chip_1602_init_adopt_mp+0x82>
   918b2:	47 c0 01 00 	sethi $fp,#0x100
   918b6:	3c 0d f2 98 	lwi.gp $r0,[+#-13728]
   918ba:	4e 02 00 82 	beqz $r0,919be <chip_1602_init_adopt_mp+0x12a>
   918be:	00 80 00 00 	lbi $r8,[$r0+#0x0]
   918c2:	e7 15       	slti45 $r8,#21
   918c4:	4e f2 00 7d 	beqz $r15,919be <chip_1602_init_adopt_mp+0x12a>
   918c8:	85 43       	movi55 $r10,#3
   918ca:	50 94 00 01 	addi $r9,$r8,#1
   918ce:	42 04 a8 24 	mul $r0,$r9,$r10
   918d2:	49 00 47 81 	jal 9a7d4 <malloc>
   918d6:	80 c0       	mov55 $r6,$r0
   918d8:	fa 08       	movpi45 $r0,#0x18
   918da:	ae 30       	sbi333 $r0,[$r6+#0x0]
   918dc:	8c 19       	addi45 $r0,#25
   918de:	ae 31       	sbi333 $r0,[$r6+#0x1]
   918e0:	10 83 00 02 	sbi $r8,[$r6+#0x2]
   918e4:	40 13 28 00 	add $r1,$r6,$r10
   918e8:	3c 2d f2 98 	lwi.gp $r2,[+#-13728]
   918ec:	80 02       	mov55 $r0,$r2
   918ee:	d5 0d       	j8 91908 <chip_1602_init_adopt_mp+0x74>
   918f0:	80 62       	mov55 $r3,$r2
   918f2:	42 33 a8 73 	maddr32 $r3,$r7,$r10
   918f6:	9d f9       	addi333 $r7,$r7,#1
   918f8:	a7 1a       	lbi333 $r4,[$r3+#0x2]
   918fa:	af 08       	sbi333 $r4,[$r1+#0x0]
   918fc:	a6 db       	lbi333 $r3,[$r3+#0x3]
   918fe:	ae c9       	sbi333 $r3,[$r1+#0x1]
   91900:	a6 c1       	lbi333 $r3,[$r0+#0x1]
   91902:	9c 03       	addi333 $r0,$r0,#3
   91904:	ae ca       	sbi333 $r3,[$r1+#0x2]
   91906:	9c 4b       	addi333 $r1,$r1,#3
   91908:	96 f8       	zeb33 $r3,$r7
   9190a:	e2 68       	slt45 $r3,$r8
   9190c:	e9 f2       	bnezs8 918f0 <chip_1602_init_adopt_mp+0x5c>
   9190e:	84 03       	movi55 $r0,#3
   91910:	42 94 80 24 	mul $r9,$r9,$r0
   91914:	d5 44       	j8 9199c <chip_1602_init_adopt_mp+0x108>
   91916:	80 07       	mov55 $r0,$r7
   91918:	44 10 31 18 	movi $r1,#12568
   9191c:	49 ff fd b3 	jal 91482 <chip_1602_is_vcmd_complete_event>
   91920:	c0 49       	beqz38 $r0,919b2 <chip_1602_init_adopt_mp+0x11e>
   91922:	3c 0d f2 98 	lwi.gp $r0,[+#-13728]
   91926:	00 80 00 3d 	lbi $r8,[$r0+#0x3d]
   9192a:	5c f4 00 29 	slti $r15,$r8,#41
   9192e:	e8 48       	beqzs8 919be <chip_1602_init_adopt_mp+0x12a>
   91930:	84 07       	movi55 $r0,#7
   91932:	42 04 00 24 	mul $r0,$r8,$r0
   91936:	9c 03       	addi333 $r0,$r0,#3
   91938:	49 00 47 4e 	jal 9a7d4 <malloc>
   9193c:	80 c0       	mov55 $r6,$r0
   9193e:	fa 06       	movpi45 $r0,#0x16
   91940:	ae 30       	sbi333 $r0,[$r6+#0x0]
   91942:	8c 1b       	addi45 $r0,#27
   91944:	ae 31       	sbi333 $r0,[$r6+#0x1]
   91946:	10 83 00 02 	sbi $r8,[$r6+#0x2]
   9194a:	50 93 00 03 	addi $r9,$r6,#3
   9194e:	3d cd f2 98 	lwi.gp $fp,[+#-13728]
   91952:	84 69       	movi55 $r3,#9
   91954:	50 ae 00 42 	addi $r10,$fp,#66
   91958:	84 e0       	movi55 $r7,#0
   9195a:	d5 1d       	j8 91994 <chip_1602_init_adopt_mp+0x100>
   9195c:	42 13 8c 24 	mul $r1,$r7,$r3
   91960:	40 0e 04 00 	add $r0,$fp,$r1
   91964:	50 00 00 38 	addi $r0,$r0,#56
   91968:	a7 06       	lbi333 $r4,[$r0+#0x6]
   9196a:	88 3c       	add45 $r1,$fp
   9196c:	18 44 80 01 	sbi.bi $r4,[$r9],#0x1
   91970:	50 10 80 42 	addi $r1,$r1,#66
   91974:	a6 07       	lbi333 $r0,[$r0+#0x7]
   91976:	9d f9       	addi333 $r7,$r7,#1
   91978:	18 04 80 01 	sbi.bi $r0,[$r9],#0x1
   9197c:	00 25 00 00 	lbi $r2,[$r10+#0x0]
   91980:	80 09       	mov55 $r0,$r9
   91982:	9c 91       	addi333 $r2,$r2,#1
   91984:	f3 81       	swi37.sp $r3,[+#0x4]
   91986:	49 ff f3 61 	jal 90048 <memcpy>
   9198a:	08 05 00 09 	lbi.bi $r0,[$r10],#0x9
   9198e:	f3 01       	lwi37.sp $r3,[+#0x4]
   91990:	9c 01       	addi333 $r0,$r0,#1
   91992:	89 20       	add45 $r9,$r0
   91994:	96 38       	zeb33 $r0,$r7
   91996:	e2 08       	slt45 $r0,$r8
   91998:	e9 e2       	bnezs8 9195c <chip_1602_init_adopt_mp+0xc8>
   9199a:	8b 26       	sub45 $r9,$r6
   9199c:	44 00 fc 00 	movi $r0,#64512
   919a0:	80 26       	mov55 $r1,$r6
   919a2:	54 24 80 ff 	andi $r2,$r9,#0xff
   919a6:	49 ff fe b0 	jal 91706 <chip_1602_send_hci_command>
   919aa:	80 06       	mov55 $r0,$r6
   919ac:	49 00 46 9b 	jal 9a6e2 <free>
   919b0:	d5 19       	j8 919e2 <chip_1602_init_adopt_mp+0x14e>
   919b2:	80 07       	mov55 $r0,$r7
   919b4:	44 10 31 16 	movi $r1,#12566
   919b8:	49 ff fd 65 	jal 91482 <chip_1602_is_vcmd_complete_event>
   919bc:	c0 13       	beqz38 $r0,919e2 <chip_1602_init_adopt_mp+0x14e>
   919be:	84 22       	movi55 $r1,#2
   919c0:	50 0f 80 0d 	addi $r0,$sp,#13
   919c4:	49 00 2f c7 	jal 97952 <DRV_TRNG_Get>
   919c8:	44 00 fc 00 	movi $r0,#64512
   919cc:	b0 42       	addri36.sp $r1,#0x8
   919ce:	84 47       	movi55 $r2,#7
   919d0:	49 ff fe 9b 	jal 91706 <chip_1602_send_hci_command>
   919d4:	84 25       	movi55 $r1,#5
   919d6:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   919da:	3c 1d f2 97 	lwi.gp $r1,[+#-13732]
   919de:	84 01       	movi55 $r0,#1
   919e0:	dd 21       	jral5 $r1
   919e2:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

000919e4 <chip_1602_init_config>:
   919e4:	fc 4a       	push25 $r10,#0x50    ! {$r6~$r10, $fp, $gp, $lp}
   919e6:	81 40       	mov55 $r10,$r0
   919e8:	c8 3d       	bnez38 $r0,91a62 <chip_1602_init_config+0x7e>
   919ea:	3c 0d f2 99 	lwi.gp $r0,[+#-13724]
   919ee:	c8 14       	bnez38 $r0,91a16 <chip_1602_init_config+0x32>
   919f0:	b1 82       	addri36.sp $r6,#0x8
   919f2:	80 06       	mov55 $r0,$r6
   919f4:	46 10 00 9f 	sethi $r1,#0x9f
   919f8:	58 10 84 00 	ori $r1,$r1,#0x400
   919fc:	44 20 00 42 	movi $r2,#66
   91a00:	49 ff f3 24 	jal 90048 <memcpy>
   91a04:	44 00 fc 00 	movi $r0,#64512
   91a08:	80 26       	mov55 $r1,$r6
   91a0a:	44 20 00 42 	movi $r2,#66
   91a0e:	49 ff fe 7c 	jal 91706 <chip_1602_send_hci_command>
   91a12:	48 00 00 a7 	j 91b60 <chip_1602_init_config+0x17c>
   91a16:	a7 c0       	lbi333 $r7,[$r0+#0x0]
   91a18:	5c f3 80 64 	slti $r15,$r7,#100
   91a1c:	4e f2 00 9c 	beqz $r15,91b54 <chip_1602_init_config+0x170>
   91a20:	85 43       	movi55 $r10,#3
   91a22:	50 83 80 01 	addi $r8,$r7,#1
   91a26:	42 84 28 24 	mul $r8,$r8,$r10
   91a2a:	80 08       	mov55 $r0,$r8
   91a2c:	49 00 46 d4 	jal 9a7d4 <malloc>
   91a30:	80 c0       	mov55 $r6,$r0
   91a32:	fa 08       	movpi45 $r0,#0x18
   91a34:	ae 30       	sbi333 $r0,[$r6+#0x0]
   91a36:	8c 19       	addi45 $r0,#25
   91a38:	ae 31       	sbi333 $r0,[$r6+#0x1]
   91a3a:	42 73 a8 24 	mul $r7,$r7,$r10
   91a3e:	3c 1d f2 99 	lwi.gp $r1,[+#-13724]
   91a42:	9c b9       	addi333 $r2,$r7,#1
   91a44:	9c 32       	addi333 $r0,$r6,#2
   91a46:	49 ff f3 01 	jal 90048 <memcpy>
   91a4a:	44 00 fc 00 	movi $r0,#64512
   91a4e:	80 26       	mov55 $r1,$r6
   91a50:	54 24 00 ff 	andi $r2,$r8,#0xff
   91a54:	49 ff fe 59 	jal 91706 <chip_1602_send_hci_command>
   91a58:	80 06       	mov55 $r0,$r6
   91a5a:	49 00 46 44 	jal 9a6e2 <free>
   91a5e:	48 00 00 81 	j 91b60 <chip_1602_init_config+0x17c>
   91a62:	44 10 31 18 	movi $r1,#12568
   91a66:	49 ff fd 0e 	jal 91482 <chip_1602_is_vcmd_complete_event>
   91a6a:	c0 5c       	beqz38 $r0,91b22 <chip_1602_init_config+0x13e>
   91a6c:	3c 0d f2 99 	lwi.gp $r0,[+#-13724]
   91a70:	c8 13       	bnez38 $r0,91a96 <chip_1602_init_config+0xb2>
   91a72:	b1 82       	addri36.sp $r6,#0x8
   91a74:	80 06       	mov55 $r0,$r6
   91a76:	46 10 00 9f 	sethi $r1,#0x9f
   91a7a:	58 10 83 b8 	ori $r1,$r1,#0x3b8
   91a7e:	44 20 00 46 	movi $r2,#70
   91a82:	49 ff f2 e3 	jal 90048 <memcpy>
   91a86:	44 00 fc 00 	movi $r0,#64512
   91a8a:	80 26       	mov55 $r1,$r6
   91a8c:	44 20 00 46 	movi $r2,#70
   91a90:	49 ff fe 3b 	jal 91706 <chip_1602_send_hci_command>
   91a94:	d5 47       	j8 91b22 <chip_1602_init_config+0x13e>
   91a96:	00 80 01 2d 	lbi $r8,[$r0+#0x12d]
   91a9a:	5c f4 00 64 	slti $r15,$r8,#100
   91a9e:	e8 5b       	beqzs8 91b54 <chip_1602_init_config+0x170>
   91aa0:	84 07       	movi55 $r0,#7
   91aa2:	42 04 00 24 	mul $r0,$r8,$r0
   91aa6:	9c 03       	addi333 $r0,$r0,#3
   91aa8:	49 00 46 96 	jal 9a7d4 <malloc>
   91aac:	80 c0       	mov55 $r6,$r0
   91aae:	fa 06       	movpi45 $r0,#0x16
   91ab0:	ae 30       	sbi333 $r0,[$r6+#0x0]
   91ab2:	8c 1b       	addi45 $r0,#27
   91ab4:	ae 31       	sbi333 $r0,[$r6+#0x1]
   91ab6:	10 83 00 02 	sbi $r8,[$r6+#0x2]
   91aba:	50 93 00 03 	addi $r9,$r6,#3
   91abe:	3c 3d f2 99 	lwi.gp $r3,[+#-13724]
   91ac2:	84 89       	movi55 $r4,#9
   91ac4:	51 c1 81 32 	addi $fp,$r3,#306
   91ac8:	84 e0       	movi55 $r7,#0
   91aca:	d5 1e       	j8 91b06 <chip_1602_init_config+0x122>
   91acc:	42 13 90 24 	mul $r1,$r7,$r4
   91ad0:	98 19       	add333 $r0,$r3,$r1
   91ad2:	50 00 01 28 	addi $r0,$r0,#296
   91ad6:	a6 86       	lbi333 $r2,[$r0+#0x6]
   91ad8:	98 59       	add333 $r1,$r3,$r1
   91ada:	18 24 80 01 	sbi.bi $r2,[$r9],#0x1
   91ade:	50 10 81 32 	addi $r1,$r1,#306
   91ae2:	a6 07       	lbi333 $r0,[$r0+#0x7]
   91ae4:	9d f9       	addi333 $r7,$r7,#1
   91ae6:	18 04 80 01 	sbi.bi $r0,[$r9],#0x1
   91aea:	00 2e 00 00 	lbi $r2,[$fp+#0x0]
   91aee:	80 09       	mov55 $r0,$r9
   91af0:	9c 91       	addi333 $r2,$r2,#1
   91af2:	f3 81       	swi37.sp $r3,[+#0x4]
   91af4:	b6 9f       	swi450 $r4,[$sp]
   91af6:	49 ff f2 a9 	jal 90048 <memcpy>
   91afa:	08 0e 00 09 	lbi.bi $r0,[$fp],#0x9
   91afe:	b4 9f       	lwi450 $r4,[$sp]
   91b00:	9c 01       	addi333 $r0,$r0,#1
   91b02:	f3 01       	lwi37.sp $r3,[+#0x4]
   91b04:	89 20       	add45 $r9,$r0
   91b06:	96 38       	zeb33 $r0,$r7
   91b08:	e2 08       	slt45 $r0,$r8
   91b0a:	e9 e1       	bnezs8 91acc <chip_1602_init_config+0xe8>
   91b0c:	8b 26       	sub45 $r9,$r6
   91b0e:	44 00 fc 00 	movi $r0,#64512
   91b12:	80 26       	mov55 $r1,$r6
   91b14:	54 24 80 ff 	andi $r2,$r9,#0xff
   91b18:	49 ff fd f7 	jal 91706 <chip_1602_send_hci_command>
   91b1c:	80 06       	mov55 $r0,$r6
   91b1e:	49 00 45 e2 	jal 9a6e2 <free>
   91b22:	80 0a       	mov55 $r0,$r10
   91b24:	44 10 31 16 	movi $r1,#12566
   91b28:	49 ff fc ad 	jal 91482 <chip_1602_is_vcmd_complete_event>
   91b2c:	c0 0e       	beqz38 $r0,91b48 <chip_1602_init_config+0x164>
   91b2e:	46 f0 00 9f 	sethi $r15,#0x9f
   91b32:	04 07 80 ed 	lwi $r0,[$r15+#0x3b4]
   91b36:	b0 42       	addri36.sp $r1,#0x8
   91b38:	ac 08       	shi333 $r0,[$r1+#0x0]
   91b3a:	92 10       	srli45 $r0,#16
   91b3c:	ae 0a       	sbi333 $r0,[$r1+#0x2]
   91b3e:	84 43       	movi55 $r2,#3
   91b40:	44 00 fc 00 	movi $r0,#64512
   91b44:	49 ff fd e1 	jal 91706 <chip_1602_send_hci_command>
   91b48:	80 0a       	mov55 $r0,$r10
   91b4a:	44 10 30 01 	movi $r1,#12289
   91b4e:	49 ff fc 9a 	jal 91482 <chip_1602_is_vcmd_complete_event>
   91b52:	c0 07       	beqz38 $r0,91b60 <chip_1602_init_config+0x17c>
   91b54:	84 24       	movi55 $r1,#4
   91b56:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   91b5a:	84 00       	movi55 $r0,#0
   91b5c:	49 ff fe 9c 	jal 91894 <chip_1602_init_adopt_mp>
   91b60:	fc ca       	pop25 $r10,#0x50    ! {$r6~$r10, $fp, $gp, $lp}

00091b62 <chip_1602_init_sw_reset>:
   91b62:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   91b64:	80 c0       	mov55 $r6,$r0
   91b66:	c8 11       	bnez38 $r0,91b88 <chip_1602_init_sw_reset+0x26>
   91b68:	46 00 00 9f 	sethi $r0,#0x9f
   91b6c:	58 00 03 ac 	ori $r0,$r0,#0x3ac
   91b70:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   91b74:	84 46       	movi55 $r2,#6
   91b76:	b6 1f       	swi450 $r0,[$sp]
   91b78:	12 1f 80 02 	shi $r1,[$sp+#0x4]
   91b7c:	44 00 fc 00 	movi $r0,#64512
   91b80:	80 3f       	mov55 $r1,$sp
   91b82:	49 ff fd c2 	jal 91706 <chip_1602_send_hci_command>
   91b86:	d5 52       	j8 91c2a <chip_1602_init_sw_reset+0xc8>
   91b88:	44 10 31 0e 	movi $r1,#12558
   91b8c:	49 ff fc 7b 	jal 91482 <chip_1602_is_vcmd_complete_event>
   91b90:	c0 10       	beqz38 $r0,91bb0 <chip_1602_init_sw_reset+0x4e>
   91b92:	46 00 00 9f 	sethi $r0,#0x9f
   91b96:	58 00 03 a4 	ori $r0,$r0,#0x3a4
   91b9a:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   91b9e:	84 45       	movi55 $r2,#5
   91ba0:	b6 1f       	swi450 $r0,[$sp]
   91ba2:	10 1f 80 04 	sbi $r1,[$sp+#0x4]
   91ba6:	44 00 fc 00 	movi $r0,#64512
   91baa:	80 3f       	mov55 $r1,$sp
   91bac:	49 ff fd ad 	jal 91706 <chip_1602_send_hci_command>
   91bb0:	80 06       	mov55 $r0,$r6
   91bb2:	44 10 31 0f 	movi $r1,#12559
   91bb6:	49 ff fc 66 	jal 91482 <chip_1602_is_vcmd_complete_event>
   91bba:	c0 0d       	beqz38 $r0,91bd4 <chip_1602_init_sw_reset+0x72>
   91bbc:	46 f0 00 9f 	sethi $r15,#0x9f
   91bc0:	02 07 81 d0 	lhi $r0,[$r15+#0x3a0]
   91bc4:	80 3f       	mov55 $r1,$sp
   91bc6:	12 0f 80 00 	shi $r0,[$sp+#0x0]
   91bca:	84 42       	movi55 $r2,#2
   91bcc:	44 00 fc 00 	movi $r0,#64512
   91bd0:	49 ff fd 9b 	jal 91706 <chip_1602_send_hci_command>
   91bd4:	80 06       	mov55 $r0,$r6
   91bd6:	44 10 00 80 	movi $r1,#128
   91bda:	49 ff fc 7c 	jal 914d2 <chip_1602_is_boot_complete_event>
   91bde:	c0 16       	beqz38 $r0,91c0a <chip_1602_init_sw_reset+0xa8>
   91be0:	2e 07 ca 6e 	lbi.gp $r0,[+#-13714]
   91be4:	c8 13       	bnez38 $r0,91c0a <chip_1602_init_sw_reset+0xa8>
   91be6:	46 00 00 9f 	sethi $r0,#0x9f
   91bea:	58 00 03 98 	ori $r0,$r0,#0x398
   91bee:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   91bf2:	84 46       	movi55 $r2,#6
   91bf4:	b6 1f       	swi450 $r0,[$sp]
   91bf6:	12 1f 80 02 	shi $r1,[$sp+#0x4]
   91bfa:	44 00 fc 00 	movi $r0,#64512
   91bfe:	80 3f       	mov55 $r1,$sp
   91c00:	49 ff fd 83 	jal 91706 <chip_1602_send_hci_command>
   91c04:	84 01       	movi55 $r0,#1
   91c06:	3e 07 ca 6e 	sbi.gp $r0,[+#-13714]
   91c0a:	80 06       	mov55 $r0,$r6
   91c0c:	44 10 00 80 	movi $r1,#128
   91c10:	49 ff fc 61 	jal 914d2 <chip_1602_is_boot_complete_event>
   91c14:	c0 0b       	beqz38 $r0,91c2a <chip_1602_init_sw_reset+0xc8>
   91c16:	2e 07 ca 6e 	lbi.gp $r0,[+#-13714]
   91c1a:	5a 08 01 08 	bnec $r0,#1,91c2a <chip_1602_init_sw_reset+0xc8>
   91c1e:	84 23       	movi55 $r1,#3
   91c20:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   91c24:	84 00       	movi55 $r0,#0
   91c26:	49 ff fe df 	jal 919e4 <chip_1602_init_config>
   91c2a:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

00091c2c <chip_1602_init_patching>:
   91c2c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   91c2e:	80 c0       	mov55 $r6,$r0
   91c30:	c8 0a       	bnez38 $r0,91c44 <chip_1602_init_patching+0x18>
   91c32:	3c 6b e5 34 	shi.gp $r6,[+#-13720]
   91c36:	3c 6b e5 35 	shi.gp $r6,[+#-13718]
   91c3a:	3e 07 ca 6c 	sbi.gp $r0,[+#-13716]
   91c3e:	3e 07 ca 6d 	sbi.gp $r0,[+#-13715]
   91c42:	d5 0d       	j8 91c5c <chip_1602_init_patching+0x30>
   91c44:	44 10 31 0e 	movi $r1,#12558
   91c48:	49 ff fc 1d 	jal 91482 <chip_1602_is_vcmd_complete_event>
   91c4c:	c8 08       	bnez38 $r0,91c5c <chip_1602_init_patching+0x30>
   91c4e:	80 06       	mov55 $r0,$r6
   91c50:	44 10 31 16 	movi $r1,#12566
   91c54:	49 ff fc 17 	jal 91482 <chip_1602_is_vcmd_complete_event>
   91c58:	4e 02 00 f4 	beqz $r0,91e40 <chip_1602_init_patching+0x214>
   91c5c:	46 f0 00 9f 	sethi $r15,#0x9f
   91c60:	04 77 80 b5 	lwi $r7,[$r15+#0x2d4]
   91c64:	9f fa       	subi333 $r7,$r7,#2
   91c66:	3c 03 e5 34 	lhi.gp $r0,[+#-13720]
   91c6a:	97 f9       	zeh33 $r7,$r7
   91c6c:	e2 07       	slt45 $r0,$r7
   91c6e:	e8 3e       	beqzs8 91cea <chip_1602_init_patching+0xbe>
   91c70:	46 f0 00 9e 	sethi $r15,#0x9e
   91c74:	00 97 88 81 	lbi $r9,[$r15+#0x881]
   91c78:	46 f0 00 9e 	sethi $r15,#0x9e
   91c7c:	00 07 88 80 	lbi $r0,[$r15+#0x880]
   91c80:	40 94 a0 08 	slli $r9,$r9,#8
   91c84:	89 20       	add45 $r9,$r0
   91c86:	44 00 00 f5 	movi $r0,#245
   91c8a:	49 00 45 a5 	jal 9a7d4 <malloc>
   91c8e:	3c 13 e5 34 	lhi.gp $r1,[+#-13720]
   91c92:	40 94 80 13 	zeh $r9,$r9
   91c96:	9b f9       	sub333 $r7,$r7,$r1
   91c98:	80 c0       	mov55 $r6,$r0
   91c9a:	5e f3 80 f1 	sltsi $r15,$r7,#241
   91c9e:	e9 03       	bnezs8 91ca4 <chip_1602_init_patching+0x78>
   91ca0:	44 70 00 f0 	movi $r7,#240
   91ca4:	84 0e       	movi55 $r0,#14
   91ca6:	ae 30       	sbi333 $r0,[$r6+#0x0]
   91ca8:	44 00 00 31 	movi $r0,#49
   91cac:	ae 31       	sbi333 $r0,[$r6+#0x1]
   91cae:	40 04 84 00 	add $r0,$r9,$r1
   91cb2:	97 f8       	zeb33 $r7,$r7
   91cb4:	ae 32       	sbi333 $r0,[$r6+#0x2]
   91cb6:	92 08       	srli45 $r0,#8
   91cb8:	ae 33       	sbi333 $r0,[$r6+#0x3]
   91cba:	46 20 00 9e 	sethi $r2,#0x9e
   91cbe:	58 21 08 80 	ori $r2,$r2,#0x880
   91cc2:	af f4       	sbi333 $r7,[$r6+#0x4]
   91cc4:	9c 4a       	addi333 $r1,$r1,#2
   91cc6:	98 4a       	add333 $r1,$r1,$r2
   91cc8:	9c 35       	addi333 $r0,$r6,#5
   91cca:	80 47       	mov55 $r2,$r7
   91ccc:	49 ff f1 be 	jal 90048 <memcpy>
   91cd0:	9c bd       	addi333 $r2,$r7,#5
   91cd2:	44 00 fc 00 	movi $r0,#64512
   91cd6:	80 26       	mov55 $r1,$r6
   91cd8:	96 90       	zeb33 $r2,$r2
   91cda:	49 ff fd 16 	jal 91706 <chip_1602_send_hci_command>
   91cde:	80 06       	mov55 $r0,$r6
   91ce0:	49 00 45 01 	jal 9a6e2 <free>
   91ce4:	3e 0f ca 68 	addi.gp $r0,#-13720
   91ce8:	d5 45       	j8 91d72 <chip_1602_init_patching+0x146>
   91cea:	4c 03 80 0e 	beq $r0,$r7,91d06 <chip_1602_init_patching+0xda>
   91cee:	46 00 00 9f 	sethi $r0,#0x9f
   91cf2:	58 00 08 78 	ori $r0,$r0,#0x878
   91cf6:	44 10 01 0a 	movi $r1,#266
   91cfa:	46 20 00 9f 	sethi $r2,#0x9f
   91cfe:	58 21 08 9c 	ori $r2,$r2,#0x89c
   91d02:	49 00 3c 5c 	jal 995ba <assert_ab_callback_verbose>
   91d06:	46 f0 00 9f 	sethi $r15,#0x9f
   91d0a:	02 77 81 6c 	lhi $r7,[$r15+#0x2d8]
   91d0e:	3c 03 e5 35 	lhi.gp $r0,[+#-13718]
   91d12:	e2 07       	slt45 $r0,$r7
   91d14:	e8 33       	beqzs8 91d7a <chip_1602_init_patching+0x14e>
   91d16:	44 00 00 e6 	movi $r0,#230
   91d1a:	49 00 45 5d 	jal 9a7d4 <malloc>
   91d1e:	3c 13 e5 35 	lhi.gp $r1,[+#-13718]
   91d22:	80 c0       	mov55 $r6,$r0
   91d24:	9b f9       	sub333 $r7,$r7,$r1
   91d26:	5e f3 80 e1 	sltsi $r15,$r7,#225
   91d2a:	e9 03       	bnezs8 91d30 <chip_1602_init_patching+0x104>
   91d2c:	44 70 00 e0 	movi $r7,#224
   91d30:	fa 06       	movpi45 $r0,#0x16
   91d32:	ae 30       	sbi333 $r0,[$r6+#0x0]
   91d34:	8c 1b       	addi45 $r0,#27
   91d36:	97 f8       	zeb33 $r7,$r7
   91d38:	ae 31       	sbi333 $r0,[$r6+#0x1]
   91d3a:	84 07       	movi55 $r0,#7
   91d3c:	40 23 80 77 	divr $r2,$r3,$r7,$r0
   91d40:	ae b2       	sbi333 $r2,[$r6+#0x2]
   91d42:	40 10 80 57 	divr $r1,$r2,$r1,$r0
   91d46:	46 20 00 9f 	sethi $r2,#0x9f
   91d4a:	58 21 01 20 	ori $r2,$r2,#0x120
   91d4e:	fe 44       	mul33 $r1,$r0
   91d50:	98 4a       	add333 $r1,$r1,$r2
   91d52:	9c 33       	addi333 $r0,$r6,#3
   91d54:	80 47       	mov55 $r2,$r7
   91d56:	49 ff f1 79 	jal 90048 <memcpy>
   91d5a:	9c bb       	addi333 $r2,$r7,#3
   91d5c:	44 00 fc 00 	movi $r0,#64512
   91d60:	80 26       	mov55 $r1,$r6
   91d62:	96 90       	zeb33 $r2,$r2
   91d64:	49 ff fc d1 	jal 91706 <chip_1602_send_hci_command>
   91d68:	80 06       	mov55 $r0,$r6
   91d6a:	49 00 44 bc 	jal 9a6e2 <free>
   91d6e:	3e 0f ca 6a 	addi.gp $r0,#-13718
   91d72:	a4 40       	lhi333 $r1,[$r0+#0x0]
   91d74:	99 f9       	add333 $r7,$r7,$r1
   91d76:	ad c0       	shi333 $r7,[$r0+#0x0]
   91d78:	d5 64       	j8 91e40 <chip_1602_init_patching+0x214>
   91d7a:	3e 7f ca 6c 	addi.gp $r7,#-13716
   91d7e:	a6 38       	lbi333 $r0,[$r7+#0x0]
   91d80:	e6 04       	slti45 $r0,#4
   91d82:	e8 25       	beqzs8 91dcc <chip_1602_init_patching+0x1a0>
   91d84:	46 10 00 9f 	sethi $r1,#0x9f
   91d88:	58 10 83 44 	ori $r1,$r1,#0x344
   91d8c:	94 03       	slli333 $r0,$r0,#3
   91d8e:	98 01       	add333 $r0,$r0,$r1
   91d90:	00 80 00 02 	lbi $r8,[$r0+#0x2]
   91d94:	50 94 00 05 	addi $r9,$r8,#5
   91d98:	80 09       	mov55 $r0,$r9
   91d9a:	49 00 45 1d 	jal 9a7d4 <malloc>
   91d9e:	80 c0       	mov55 $r6,$r0
   91da0:	84 0e       	movi55 $r0,#14
   91da2:	ae 30       	sbi333 $r0,[$r6+#0x0]
   91da4:	44 00 00 31 	movi $r0,#49
   91da8:	ae 31       	sbi333 $r0,[$r6+#0x1]
   91daa:	46 10 00 9f 	sethi $r1,#0x9f
   91dae:	58 10 83 44 	ori $r1,$r1,#0x344
   91db2:	a6 38       	lbi333 $r0,[$r7+#0x0]
   91db4:	80 41       	mov55 $r2,$r1
   91db6:	38 10 83 01 	lh $r1,[$r1+($r0<<#0x3)]
   91dba:	94 03       	slli333 $r0,$r0,#3
   91dbc:	ae 72       	sbi333 $r1,[$r6+#0x2]
   91dbe:	92 28       	srli45 $r1,#8
   91dc0:	ae 73       	sbi333 $r1,[$r6+#0x3]
   91dc2:	10 83 00 04 	sbi $r8,[$r6+#0x4]
   91dc6:	98 42       	add333 $r1,$r0,$r2
   91dc8:	9c 35       	addi333 $r0,$r6,#5
   91dca:	d5 23       	j8 91e10 <chip_1602_init_patching+0x1e4>
   91dcc:	3e 7f ca 6d 	addi.gp $r7,#-13715
   91dd0:	a6 38       	lbi333 $r0,[$r7+#0x0]
   91dd2:	c8 31       	bnez38 $r0,91e34 <chip_1602_init_patching+0x208>
   91dd4:	46 a0 00 9f 	sethi $r10,#0x9f
   91dd8:	58 a5 03 68 	ori $r10,$r10,#0x368
   91ddc:	00 85 00 02 	lbi $r8,[$r10+#0x2]
   91de0:	50 94 00 06 	addi $r9,$r8,#6
   91de4:	80 09       	mov55 $r0,$r9
   91de6:	49 00 44 f7 	jal 9a7d4 <malloc>
   91dea:	80 c0       	mov55 $r6,$r0
   91dec:	fa 06       	movpi45 $r0,#0x16
   91dee:	ae 30       	sbi333 $r0,[$r6+#0x0]
   91df0:	8c 1b       	addi45 $r0,#27
   91df2:	ae 31       	sbi333 $r0,[$r6+#0x1]
   91df4:	84 01       	movi55 $r0,#1
   91df6:	ae 32       	sbi333 $r0,[$r6+#0x2]
   91df8:	a6 38       	lbi333 $r0,[$r7+#0x0]
   91dfa:	10 83 00 05 	sbi $r8,[$r6+#0x5]
   91dfe:	38 15 03 01 	lh $r1,[$r10+($r0<<#0x3)]
   91e02:	94 03       	slli333 $r0,$r0,#3
   91e04:	ae 73       	sbi333 $r1,[$r6+#0x3]
   91e06:	92 28       	srli45 $r1,#8
   91e08:	ae 74       	sbi333 $r1,[$r6+#0x4]
   91e0a:	40 10 28 00 	add $r1,$r0,$r10
   91e0e:	9c 36       	addi333 $r0,$r6,#6
   91e10:	a0 49       	lwi333 $r1,[$r1+#0x4]
   91e12:	80 48       	mov55 $r2,$r8
   91e14:	49 ff f1 1a 	jal 90048 <memcpy>
   91e18:	44 00 fc 00 	movi $r0,#64512
   91e1c:	80 26       	mov55 $r1,$r6
   91e1e:	54 24 80 ff 	andi $r2,$r9,#0xff
   91e22:	49 ff fc 72 	jal 91706 <chip_1602_send_hci_command>
   91e26:	80 06       	mov55 $r0,$r6
   91e28:	49 00 44 5d 	jal 9a6e2 <free>
   91e2c:	a6 38       	lbi333 $r0,[$r7+#0x0]
   91e2e:	9c 01       	addi333 $r0,$r0,#1
   91e30:	ae 38       	sbi333 $r0,[$r7+#0x0]
   91e32:	d5 07       	j8 91e40 <chip_1602_init_patching+0x214>
   91e34:	84 22       	movi55 $r1,#2
   91e36:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   91e3a:	84 00       	movi55 $r0,#0
   91e3c:	49 ff fe 93 	jal 91b62 <chip_1602_init_sw_reset>
   91e40:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00091e42 <hci_rx_recv>:
   91e42:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   91e44:	b5 00       	lwi450 $r8,[$r0]
   91e46:	80 c0       	mov55 $r6,$r0
   91e48:	85 e4       	movi55 $r15,#4
   91e4a:	4c 87 c0 c7 	bne $r8,$r15,91fd8 <hci_rx_recv+0x196>
   91e4e:	2e 17 ca 58 	lbi.gp $r1,[+#-13736]
   91e52:	e6 25       	slti45 $r1,#5
   91e54:	4e f3 00 a2 	bnez $r15,91f98 <hci_rx_recv+0x156>
   91e58:	5a 18 06 0c 	bnec $r1,#6,91e70 <hci_rx_recv+0x2e>
   91e5c:	9c 04       	addi333 $r0,$r0,#4
   91e5e:	44 10 31 0e 	movi $r1,#12558
   91e62:	49 ff fb 10 	jal 91482 <chip_1602_is_vcmd_complete_event>
   91e66:	c0 4f       	beqz38 $r0,91f04 <hci_rx_recv+0xc2>
   91e68:	44 00 40 00 	movi $r0,#16384
   91e6c:	84 20       	movi55 $r1,#0
   91e6e:	d5 24       	j8 91eb6 <hci_rx_recv+0x74>
   91e70:	5a 18 07 13 	bnec $r1,#7,91e96 <hci_rx_recv+0x54>
   91e74:	9c 04       	addi333 $r0,$r0,#4
   91e76:	44 10 31 0f 	movi $r1,#12559
   91e7a:	49 ff fb 04 	jal 91482 <chip_1602_is_vcmd_complete_event>
   91e7e:	c0 43       	beqz38 $r0,91f04 <hci_rx_recv+0xc2>
   91e80:	a4 b4       	lhi333 $r2,[$r6+#0x8]
   91e82:	a4 33       	lhi333 $r0,[$r6+#0x6]
   91e84:	40 21 40 08 	slli $r2,$r2,#16
   91e88:	fe 87       	or33 $r2,$r0
   91e8a:	a6 54       	lbi333 $r1,[$r2+#0x4]
   91e8c:	44 00 40 02 	movi $r0,#16386
   91e90:	9c 95       	addi333 $r2,$r2,#5
   91e92:	84 66       	movi55 $r3,#6
   91e94:	d5 26       	j8 91ee0 <hci_rx_recv+0x9e>
   91e96:	5a 18 08 13 	bnec $r1,#8,91ebc <hci_rx_recv+0x7a>
   91e9a:	9c 04       	addi333 $r0,$r0,#4
   91e9c:	44 10 31 16 	movi $r1,#12566
   91ea0:	49 ff fa f1 	jal 91482 <chip_1602_is_vcmd_complete_event>
   91ea4:	c0 30       	beqz38 $r0,91f04 <hci_rx_recv+0xc2>
   91ea6:	a4 74       	lhi333 $r1,[$r6+#0x8]
   91ea8:	a4 33       	lhi333 $r0,[$r6+#0x6]
   91eaa:	40 10 c0 08 	slli $r1,$r1,#16
   91eae:	fe 47       	or33 $r1,$r0
   91eb0:	a6 4c       	lbi333 $r1,[$r1+#0x4]
   91eb2:	44 00 40 01 	movi $r0,#16385
   91eb6:	49 ff fc 05 	jal 916c0 <make_command_complete>
   91eba:	d5 15       	j8 91ee4 <hci_rx_recv+0xa2>
   91ebc:	5a 18 09 24 	bnec $r1,#9,91f04 <hci_rx_recv+0xc2>
   91ec0:	9c 04       	addi333 $r0,$r0,#4
   91ec2:	44 10 31 17 	movi $r1,#12567
   91ec6:	49 ff fa de 	jal 91482 <chip_1602_is_vcmd_complete_event>
   91eca:	c0 1d       	beqz38 $r0,91f04 <hci_rx_recv+0xc2>
   91ecc:	a4 b4       	lhi333 $r2,[$r6+#0x8]
   91ece:	a4 33       	lhi333 $r0,[$r6+#0x6]
   91ed0:	40 21 40 08 	slli $r2,$r2,#16
   91ed4:	fe 87       	or33 $r2,$r0
   91ed6:	a6 54       	lbi333 $r1,[$r2+#0x4]
   91ed8:	44 00 40 03 	movi $r0,#16387
   91edc:	8c 48       	addi45 $r2,#8
   91ede:	80 68       	mov55 $r3,$r8
   91ee0:	49 ff fb b6 	jal 9164c <make_command_complete_ex>
   91ee4:	81 00       	mov55 $r8,$r0
   91ee6:	84 05       	movi55 $r0,#5
   91ee8:	3e 07 ca 58 	sbi.gp $r0,[+#-13736]
   91eec:	a4 b4       	lhi333 $r2,[$r6+#0x8]
   91eee:	a4 73       	lhi333 $r1,[$r6+#0x6]
   91ef0:	40 21 40 08 	slli $r2,$r2,#16
   91ef4:	40 01 04 04 	or $r0,$r2,$r1
   91ef8:	49 00 43 f5 	jal 9a6e2 <free>
   91efc:	80 06       	mov55 $r0,$r6
   91efe:	49 00 43 f2 	jal 9a6e2 <free>
   91f02:	80 c8       	mov55 $r6,$r8
   91f04:	a6 34       	lbi333 $r0,[$r6+#0x4]
   91f06:	5a 08 3e 21 	bnec $r0,#62,91f48 <hci_rx_recv+0x106>
   91f0a:	a4 74       	lhi333 $r1,[$r6+#0x8]
   91f0c:	a4 33       	lhi333 $r0,[$r6+#0x6]
   91f0e:	40 10 c0 08 	slli $r1,$r1,#16
   91f12:	fe 47       	or33 $r1,$r0
   91f14:	a6 08       	lbi333 $r0,[$r1+#0x0]
   91f16:	5a 08 01 61 	bnec $r0,#1,91fd8 <hci_rx_recv+0x196>
   91f1a:	a6 89       	lbi333 $r2,[$r1+#0x1]
   91f1c:	ca 5e       	bnez38 $r2,91fd8 <hci_rx_recv+0x196>
   91f1e:	a6 ca       	lbi333 $r3,[$r1+#0x2]
   91f20:	a7 0b       	lbi333 $r4,[$r1+#0x3]
   91f22:	3e 1f ca 48 	addi.gp $r1,#-13752
   91f26:	a4 88       	lhi333 $r2,[$r1+#0x0]
   91f28:	ca 03       	bnez38 $r2,91f2e <hci_rx_recv+0xec>
   91f2a:	80 02       	mov55 $r0,$r2
   91f2c:	d5 0a       	j8 91f40 <hci_rx_recv+0xfe>
   91f2e:	a4 89       	lhi333 $r2,[$r1+#0x2]
   91f30:	c2 08       	beqz38 $r2,91f40 <hci_rx_recv+0xfe>
   91f32:	a4 0a       	lhi333 $r0,[$r1+#0x4]
   91f34:	c8 03       	bnez38 $r0,91f3a <hci_rx_recv+0xf8>
   91f36:	84 02       	movi55 $r0,#2
   91f38:	d5 04       	j8 91f40 <hci_rx_recv+0xfe>
   91f3a:	a4 0b       	lhi333 $r0,[$r1+#0x6]
   91f3c:	c8 4e       	bnez38 $r0,91fd8 <hci_rx_recv+0x196>
   91f3e:	84 03       	movi55 $r0,#3
   91f40:	40 22 20 08 	slli $r2,$r4,#8
   91f44:	98 9a       	add333 $r2,$r3,$r2
   91f46:	d5 24       	j8 91f8e <hci_rx_recv+0x14c>
   91f48:	5a 08 05 48 	bnec $r0,#5,91fd8 <hci_rx_recv+0x196>
   91f4c:	a4 74       	lhi333 $r1,[$r6+#0x8]
   91f4e:	a4 33       	lhi333 $r0,[$r6+#0x6]
   91f50:	40 10 c0 08 	slli $r1,$r1,#16
   91f54:	fe 47       	or33 $r1,$r0
   91f56:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   91f58:	a6 49       	lbi333 $r1,[$r1+#0x1]
   91f5a:	40 00 20 08 	slli $r0,$r0,#8
   91f5e:	98 01       	add333 $r0,$r0,$r1
   91f60:	3e 1f ca 48 	addi.gp $r1,#-13752
   91f64:	a4 88       	lhi333 $r2,[$r1+#0x0]
   91f66:	96 01       	zeh33 $r0,$r0
   91f68:	4c 20 40 04 	bne $r2,$r0,91f70 <hci_rx_recv+0x12e>
   91f6c:	84 00       	movi55 $r0,#0
   91f6e:	d5 0f       	j8 91f8c <hci_rx_recv+0x14a>
   91f70:	a4 89       	lhi333 $r2,[$r1+#0x2]
   91f72:	4c 20 40 04 	bne $r2,$r0,91f7a <hci_rx_recv+0x138>
   91f76:	84 01       	movi55 $r0,#1
   91f78:	d5 0a       	j8 91f8c <hci_rx_recv+0x14a>
   91f7a:	a4 8a       	lhi333 $r2,[$r1+#0x4]
   91f7c:	4c 20 40 04 	bne $r2,$r0,91f84 <hci_rx_recv+0x142>
   91f80:	84 02       	movi55 $r0,#2
   91f82:	d5 05       	j8 91f8c <hci_rx_recv+0x14a>
   91f84:	a4 4b       	lhi333 $r1,[$r1+#0x6]
   91f86:	4c 10 40 29 	bne $r1,$r0,91fd8 <hci_rx_recv+0x196>
   91f8a:	84 03       	movi55 $r0,#3
   91f8c:	84 40       	movi55 $r2,#0
   91f8e:	3e 1f ca 48 	addi.gp $r1,#-13752
   91f92:	38 20 81 09 	sh $r2,[$r1+($r0<<#0x1)]
   91f96:	d5 21       	j8 91fd8 <hci_rx_recv+0x196>
   91f98:	9c 04       	addi333 $r0,$r0,#4
   91f9a:	5a 10 02 16 	beqc $r1,#2,91fc6 <hci_rx_recv+0x184>
   91f9e:	e6 23       	slti45 $r1,#3
   91fa0:	e8 04       	beqzs8 91fa8 <hci_rx_recv+0x166>
   91fa2:	5a 18 01 07 	bnec $r1,#1,91fb0 <hci_rx_recv+0x16e>
   91fa6:	d5 0d       	j8 91fc0 <hci_rx_recv+0x17e>
   91fa8:	5a 10 03 12 	beqc $r1,#3,91fcc <hci_rx_recv+0x18a>
   91fac:	5a 10 04 13 	beqc $r1,#4,91fd2 <hci_rx_recv+0x190>
   91fb0:	84 20       	movi55 $r1,#0
   91fb2:	49 ff fa 90 	jal 914d2 <chip_1602_is_boot_complete_event>
   91fb6:	c0 15       	beqz38 $r0,91fe0 <hci_rx_recv+0x19e>
   91fb8:	84 21       	movi55 $r1,#1
   91fba:	3e 17 ca 58 	sbi.gp $r1,[+#-13736]
   91fbe:	84 00       	movi55 $r0,#0
   91fc0:	49 ff fe 36 	jal 91c2c <chip_1602_init_patching>
   91fc4:	d5 0e       	j8 91fe0 <hci_rx_recv+0x19e>
   91fc6:	49 ff fd ce 	jal 91b62 <chip_1602_init_sw_reset>
   91fca:	d5 0b       	j8 91fe0 <hci_rx_recv+0x19e>
   91fcc:	49 ff fd 0c 	jal 919e4 <chip_1602_init_config>
   91fd0:	d5 08       	j8 91fe0 <hci_rx_recv+0x19e>
   91fd2:	49 ff fc 61 	jal 91894 <chip_1602_init_adopt_mp>
   91fd6:	d5 05       	j8 91fe0 <hci_rx_recv+0x19e>
   91fd8:	3c 1d f2 95 	lwi.gp $r1,[+#-13740]
   91fdc:	80 06       	mov55 $r0,$r6
   91fde:	dd 21       	jral5 $r1
   91fe0:	b4 06       	lwi450 $r0,[$r6]
   91fe2:	5a 08 04 08 	bnec $r0,#4,91ff2 <hci_rx_recv+0x1b0>
   91fe6:	a4 34       	lhi333 $r0,[$r6+#0x8]
   91fe8:	a4 73       	lhi333 $r1,[$r6+#0x6]
   91fea:	40 00 40 08 	slli $r0,$r0,#16
   91fee:	fe 0f       	or33 $r0,$r1
   91ff0:	d5 02       	j8 91ff4 <hci_rx_recv+0x1b2>
   91ff2:	a0 32       	lwi333 $r0,[$r6+#0x8]
   91ff4:	49 00 43 77 	jal 9a6e2 <free>
   91ff8:	80 06       	mov55 $r0,$r6
   91ffa:	49 00 43 74 	jal 9a6e2 <free>
   91ffe:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00092000 <hci_1602_read_cfm_cb>:
   92000:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   92002:	81 01       	mov55 $r8,$r1
   92004:	97 d1       	zeh33 $r7,$r2
   92006:	b1 81       	addri36.sp $r6,#0x4
   92008:	d5 07       	j8 92016 <hci_1602_read_cfm_cb+0x16>
   9200a:	c0 03       	beqz38 $r0,92010 <hci_1602_read_cfm_cb+0x10>
   9200c:	49 ff ff 1b 	jal 91e42 <hci_rx_recv>
   92010:	8a e9       	sub45 $r7,$r9
   92012:	89 07       	add45 $r8,$r7
   92014:	80 e9       	mov55 $r7,$r9
   92016:	80 08       	mov55 $r0,$r8
   92018:	80 27       	mov55 $r1,$r7
   9201a:	80 46       	mov55 $r2,$r6
   9201c:	49 00 00 19 	jal 9204e <hci_h4_decode>
   92020:	40 90 00 13 	zeh $r9,$r0
   92024:	f0 01       	lwi37.sp $r0,[+#0x4]
   92026:	4e 93 ff f2 	bnez $r9,9200a <hci_1602_read_cfm_cb+0xa>
   9202a:	c0 04       	beqz38 $r0,92032 <hci_1602_read_cfm_cb+0x32>
   9202c:	49 ff ff 0b 	jal 91e42 <hci_rx_recv>
   92030:	d5 0e       	j8 9204c <hci_1602_read_cfm_cb+0x4c>
   92032:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   92036:	46 00 00 9f 	sethi $r0,#0x9f
   9203a:	58 00 08 d4 	ori $r0,$r0,#0x8d4
   9203e:	80 47       	mov55 $r2,$r7
   92040:	49 00 44 4b 	jal 9a8d6 <printf>
   92044:	3c 0d f2 94 	lwi.gp $r0,[+#-13744]
   92048:	a0 05       	lwi333 $r0,[$r0+#0x14]
   9204a:	dd 20       	jral5 $r0
   9204c:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

0009204e <hci_h4_decode>:
   9204e:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   92050:	97 89       	zeh33 $r6,$r1
   92052:	80 e0       	mov55 $r7,$r0
   92054:	83 82       	mov55 $fp,$r2
   92056:	4e 62 00 b3 	beqz $r6,921bc <hci_h4_decode+0x16e>
   9205a:	3c 8d f1 9f 	lwi.gp $r8,[+#-14724]
   9205e:	4e 83 00 08 	bnez $r8,9206e <hci_h4_decode+0x20>
   92062:	fa 00       	movpi45 $r0,#0x10
   92064:	49 00 43 b8 	jal 9a7d4 <malloc>
   92068:	3c 0f f1 9f 	swi.gp $r0,[+#-14724]
   9206c:	b7 00       	swi450 $r8,[$r0]
   9206e:	84 00       	movi55 $r0,#0
   92070:	b6 1c       	swi450 $r0,[$fp]
   92072:	3e 8f c6 7c 	addi.gp $r8,#-14724
   92076:	b4 08       	lwi450 $r0,[$r8]
   92078:	b4 00       	lwi450 $r0,[$r0]
   9207a:	85 e2       	movi55 $r15,#2
   9207c:	4c 07 80 82 	beq $r0,$r15,92180 <hci_h4_decode+0x132>
   92080:	85 e4       	movi55 $r15,#4
   92082:	4c 07 80 7f 	beq $r0,$r15,92180 <hci_h4_decode+0x132>
   92086:	4e 03 00 9b 	bnez $r0,921bc <hci_h4_decode+0x16e>
   9208a:	a6 78       	lbi333 $r1,[$r7+#0x0]
   9208c:	5a 10 02 05 	beqc $r1,#2,92096 <hci_h4_decode+0x48>
   92090:	5a 18 04 5c 	bnec $r1,#4,92148 <hci_h4_decode+0xfa>
   92094:	d5 30       	j8 920f4 <hci_h4_decode+0xa6>
   92096:	e6 c5       	slti45 $r6,#5
   92098:	e8 0d       	beqzs8 920b2 <hci_h4_decode+0x64>
   9209a:	46 00 00 9f 	sethi $r0,#0x9f
   9209e:	58 00 08 fc 	ori $r0,$r0,#0x8fc
   920a2:	44 10 00 63 	movi $r1,#99
   920a6:	46 20 00 9f 	sethi $r2,#0x9f
   920aa:	58 21 09 08 	ori $r2,$r2,#0x908
   920ae:	49 00 3a 86 	jal 995ba <assert_ab_callback_verbose>
   920b2:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   920b4:	a6 79       	lbi333 $r1,[$r7+#0x1]
   920b6:	b5 28       	lwi450 $r9,[$r8]
   920b8:	40 00 20 08 	slli $r0,$r0,#8
   920bc:	98 01       	add333 $r0,$r0,$r1
   920be:	12 04 80 02 	shi $r0,[$r9+#0x4]
   920c2:	9f b5       	subi333 $r6,$r6,#5
   920c4:	a6 3c       	lbi333 $r0,[$r7+#0x4]
   920c6:	a6 7b       	lbi333 $r1,[$r7+#0x3]
   920c8:	40 00 20 08 	slli $r0,$r0,#8
   920cc:	98 01       	add333 $r0,$r0,$r1
   920ce:	96 01       	zeh33 $r0,$r0
   920d0:	12 04 80 03 	shi $r0,[$r9+#0x6]
   920d4:	97 b1       	zeh33 $r6,$r6
   920d6:	49 00 43 7f 	jal 9a7d4 <malloc>
   920da:	14 04 80 02 	swi $r0,[$r9+#0x8]
   920de:	3c 0f f2 9c 	swi.gp $r0,[+#-13712]
   920e2:	b4 28       	lwi450 $r1,[$r8]
   920e4:	02 94 80 03 	lhi $r9,[$r9+#0x6]
   920e8:	84 42       	movi55 $r2,#2
   920ea:	9d fd       	addi333 $r7,$r7,#5
   920ec:	b6 41       	swi450 $r2,[$r1]
   920ee:	3c 9b e5 3a 	shi.gp $r9,[+#-13708]
   920f2:	d5 44       	j8 9217a <hci_h4_decode+0x12c>
   920f4:	e6 c3       	slti45 $r6,#3
   920f6:	e8 0d       	beqzs8 92110 <hci_h4_decode+0xc2>
   920f8:	46 00 00 9f 	sethi $r0,#0x9f
   920fc:	58 00 09 38 	ori $r0,$r0,#0x938
   92100:	44 10 00 75 	movi $r1,#117
   92104:	46 20 00 9f 	sethi $r2,#0x9f
   92108:	58 21 09 08 	ori $r2,$r2,#0x908
   9210c:	49 00 3a 57 	jal 995ba <assert_ab_callback_verbose>
   92110:	b5 28       	lwi450 $r9,[$r8]
   92112:	a6 39       	lbi333 $r0,[$r7+#0x1]
   92114:	9f b3       	subi333 $r6,$r6,#3
   92116:	10 04 80 04 	sbi $r0,[$r9+#0x4]
   9211a:	97 b1       	zeh33 $r6,$r6
   9211c:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   9211e:	9d fb       	addi333 $r7,$r7,#3
   92120:	10 04 80 05 	sbi $r0,[$r9+#0x5]
   92124:	49 00 43 58 	jal 9a7d4 <malloc>
   92128:	40 10 40 09 	srli $r1,$r0,#16
   9212c:	12 04 80 03 	shi $r0,[$r9+#0x6]
   92130:	12 14 80 04 	shi $r1,[$r9+#0x8]
   92134:	3c 0f f2 9c 	swi.gp $r0,[+#-13712]
   92138:	b4 28       	lwi450 $r1,[$r8]
   9213a:	00 04 80 05 	lbi $r0,[$r9+#0x5]
   9213e:	84 44       	movi55 $r2,#4
   92140:	b6 41       	swi450 $r2,[$r1]
   92142:	3c 0b e5 3a 	shi.gp $r0,[+#-13708]
   92146:	d5 1a       	j8 9217a <hci_h4_decode+0x12c>
   92148:	c9 03       	bnez38 $r1,9214e <hci_h4_decode+0x100>
   9214a:	5a 60 01 15 	beqc $r6,#1,92174 <hci_h4_decode+0x126>
   9214e:	80 46       	mov55 $r2,$r6
   92150:	46 00 00 9f 	sethi $r0,#0x9f
   92154:	58 00 09 44 	ori $r0,$r0,#0x944
   92158:	49 00 43 bf 	jal 9a8d6 <printf>
   9215c:	46 00 00 9f 	sethi $r0,#0x9f
   92160:	58 00 09 5c 	ori $r0,$r0,#0x95c
   92164:	44 10 00 87 	movi $r1,#135
   92168:	46 20 00 9f 	sethi $r2,#0x9f
   9216c:	58 21 09 08 	ori $r2,$r2,#0x908
   92170:	49 00 3a 25 	jal 995ba <assert_ab_callback_verbose>
   92174:	9f b1       	subi333 $r6,$r6,#1
   92176:	97 b1       	zeh33 $r6,$r6
   92178:	9d f9       	addi333 $r7,$r7,#1
   9217a:	4e 63 ff 7e 	bnez $r6,92076 <hci_h4_decode+0x28>
   9217e:	d5 1f       	j8 921bc <hci_h4_decode+0x16e>
   92180:	3c 03 e5 3a 	lhi.gp $r0,[+#-13708]
   92184:	81 26       	mov55 $r9,$r6
   92186:	e2 06       	slt45 $r0,$r6
   92188:	e8 02       	beqzs8 9218c <hci_h4_decode+0x13e>
   9218a:	81 20       	mov55 $r9,$r0
   9218c:	40 94 80 13 	zeh $r9,$r9
   92190:	3c 0d f2 9c 	lwi.gp $r0,[+#-13712]
   92194:	80 27       	mov55 $r1,$r7
   92196:	80 49       	mov55 $r2,$r9
   92198:	49 ff ef 58 	jal 90048 <memcpy>
   9219c:	3c 03 e5 3a 	lhi.gp $r0,[+#-13708]
   921a0:	8a c9       	sub45 $r6,$r9
   921a2:	8a 09       	sub45 $r0,$r9
   921a4:	96 01       	zeh33 $r0,$r0
   921a6:	97 b1       	zeh33 $r6,$r6
   921a8:	3c 0b e5 3a 	shi.gp $r0,[+#-13708]
   921ac:	c8 08       	bnez38 $r0,921bc <hci_h4_decode+0x16e>
   921ae:	46 10 01 00 	sethi $r1,#0x100
   921b2:	3c 2d f1 9f 	lwi.gp $r2,[+#-14724]
   921b6:	b6 5c       	swi450 $r2,[$fp]
   921b8:	3c 0f f1 9f 	swi.gp $r0,[+#-14724]
   921bc:	80 06       	mov55 $r0,$r6
   921be:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000921c0 <hci_h4_encode_dat>:
   921c0:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   921c2:	97 91       	zeh33 $r6,$r2
   921c4:	9d f5       	addi333 $r7,$r6,#5
   921c6:	40 80 00 13 	zeh $r8,$r0
   921ca:	80 07       	mov55 $r0,$r7
   921cc:	83 83       	mov55 $fp,$r3
   921ce:	81 41       	mov55 $r10,$r1
   921d0:	81 24       	mov55 $r9,$r4
   921d2:	49 00 43 01 	jal 9a7d4 <malloc>
   921d6:	b6 1c       	swi450 $r0,[$fp]
   921d8:	c0 14       	beqz38 $r0,92200 <hci_h4_encode_dat+0x40>
   921da:	84 22       	movi55 $r1,#2
   921dc:	ae 40       	sbi333 $r1,[$r0+#0x0]
   921de:	10 80 00 01 	sbi $r8,[$r0+#0x1]
   921e2:	40 13 20 09 	srli $r1,$r6,#8
   921e6:	93 08       	srli45 $r8,#8
   921e8:	ae 44       	sbi333 $r1,[$r0+#0x4]
   921ea:	10 80 00 02 	sbi $r8,[$r0+#0x2]
   921ee:	af 83       	sbi333 $r6,[$r0+#0x3]
   921f0:	80 2a       	mov55 $r1,$r10
   921f2:	9c 05       	addi333 $r0,$r0,#5
   921f4:	80 46       	mov55 $r2,$r6
   921f6:	49 ff ef 29 	jal 90048 <memcpy>
   921fa:	12 74 80 00 	shi $r7,[$r9+#0x0]
   921fe:	84 01       	movi55 $r0,#1
   92200:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00092202 <hci_h4_encode_cmd>:
   92202:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   92204:	97 90       	zeb33 $r6,$r2
   92206:	9d f4       	addi333 $r7,$r6,#4
   92208:	40 80 00 13 	zeh $r8,$r0
   9220c:	80 07       	mov55 $r0,$r7
   9220e:	83 83       	mov55 $fp,$r3
   92210:	81 41       	mov55 $r10,$r1
   92212:	81 24       	mov55 $r9,$r4
   92214:	49 00 42 e0 	jal 9a7d4 <malloc>
   92218:	b6 1c       	swi450 $r0,[$fp]
   9221a:	c0 11       	beqz38 $r0,9223c <hci_h4_encode_cmd+0x3a>
   9221c:	10 80 00 01 	sbi $r8,[$r0+#0x1]
   92220:	84 21       	movi55 $r1,#1
   92222:	93 08       	srli45 $r8,#8
   92224:	ae 40       	sbi333 $r1,[$r0+#0x0]
   92226:	10 80 00 02 	sbi $r8,[$r0+#0x2]
   9222a:	af 83       	sbi333 $r6,[$r0+#0x3]
   9222c:	80 2a       	mov55 $r1,$r10
   9222e:	9c 04       	addi333 $r0,$r0,#4
   92230:	80 46       	mov55 $r2,$r6
   92232:	49 ff ef 0b 	jal 90048 <memcpy>
   92236:	12 74 80 00 	shi $r7,[$r9+#0x0]
   9223a:	84 01       	movi55 $r0,#1
   9223c:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009223e <bt_infom_ap>:
   9223e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92240:	3c 1d f2 9e 	lwi.gp $r1,[+#-13704]
   92244:	c1 02       	beqz38 $r1,92248 <bt_infom_ap+0xa>
   92246:	dd 21       	jral5 $r1
   92248:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009224a <BT_Log_Enable>:
   9224a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9224c:	96 00       	zeb33 $r0,$r0
   9224e:	49 00 2f c4 	jal 981d6 <hci_log_set>
   92252:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092254 <BT_Pending_TxCnt>:
   92254:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92256:	49 00 30 6f 	jal 98334 <hci_pending_acl>
   9225a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009225c <BT_InitEx2>:
   9225c:	fc 4d       	push25 $r10,#0x68    ! {$r6~$r10, $fp, $gp, $lp}
   9225e:	54 91 00 ff 	andi $r9,$r2,#0xff
   92262:	f0 81       	swi37.sp $r0,[+#0x4]
   92264:	80 c1       	mov55 $r6,$r1
   92266:	83 83       	mov55 $fp,$r3
   92268:	e7 26       	slti45 $r9,#6
   9226a:	4e f3 00 9a 	bnez $r15,9239e <BT_InitEx2+0x142>
   9226e:	b0 0f       	addri36.sp $r0,#0x3c
   92270:	84 20       	movi55 $r1,#0
   92272:	fa 58       	movpi45 $r2,#0x28
   92274:	50 73 00 08 	addi $r7,$r6,#8
   92278:	49 ff ef 08 	jal 90088 <memset>
   9227c:	b4 07       	lwi450 $r0,[$r7]
   9227e:	4e 02 00 8c 	beqz $r0,92396 <BT_InitEx2+0x13a>
   92282:	04 a3 00 03 	lwi $r10,[$r6+#0xc]
   92286:	b0 42       	addri36.sp $r1,#0x8
   92288:	50 25 00 05 	addi $r2,$r10,#5
   9228c:	50 0f 80 0e 	addi $r0,$sp,#14
   92290:	08 31 7f ff 	lbi.bi $r3,[$r2],#-0x1
   92294:	18 30 80 01 	sbi.bi $r3,[$r1],#0x1
   92298:	4c 10 7f fc 	bne $r1,$r0,92290 <BT_InitEx2+0x34>
   9229c:	b4 07       	lwi450 $r0,[$r7]
   9229e:	b0 4f       	addri36.sp $r1,#0x3c
   922a0:	fa 58       	movpi45 $r2,#0x28
   922a2:	49 ff ee c7 	jal 90030 <memcmp>
   922a6:	c8 29       	bnez38 $r0,922f8 <BT_InitEx2+0x9c>
   922a8:	50 8f 80 08 	addi $r8,$sp,#8
   922ac:	80 08       	mov55 $r0,$r8
   922ae:	46 10 00 9f 	sethi $r1,#0x9f
   922b2:	58 10 89 60 	ori $r1,$r1,#0x960
   922b6:	84 43       	movi55 $r2,#3
   922b8:	49 ff ee bc 	jal 90030 <memcmp>
   922bc:	c0 1c       	beqz38 $r0,922f4 <BT_InitEx2+0x98>
   922be:	80 08       	mov55 $r0,$r8
   922c0:	46 10 00 9f 	sethi $r1,#0x9f
   922c4:	58 10 89 64 	ori $r1,$r1,#0x964
   922c8:	84 43       	movi55 $r2,#3
   922ca:	49 ff ee b3 	jal 90030 <memcmp>
   922ce:	c0 13       	beqz38 $r0,922f4 <BT_InitEx2+0x98>
   922d0:	80 08       	mov55 $r0,$r8
   922d2:	46 10 00 9f 	sethi $r1,#0x9f
   922d6:	58 10 89 68 	ori $r1,$r1,#0x968
   922da:	84 43       	movi55 $r2,#3
   922dc:	49 ff ee aa 	jal 90030 <memcmp>
   922e0:	c0 0a       	beqz38 $r0,922f4 <BT_InitEx2+0x98>
   922e2:	80 08       	mov55 $r0,$r8
   922e4:	46 10 00 9f 	sethi $r1,#0x9f
   922e8:	58 10 89 6c 	ori $r1,$r1,#0x96c
   922ec:	84 43       	movi55 $r2,#3
   922ee:	49 ff ee a1 	jal 90030 <memcmp>
   922f2:	c8 03       	bnez38 $r0,922f8 <BT_InitEx2+0x9c>
   922f4:	84 20       	movi55 $r1,#0
   922f6:	d5 52       	j8 9239a <BT_InitEx2+0x13e>
   922f8:	04 83 00 04 	lwi $r8,[$r6+#0x10]
   922fc:	50 1f 80 0e 	addi $r1,$sp,#14
   92300:	4e 82 00 0d 	beqz $r8,9231a <BT_InitEx2+0xbe>
   92304:	80 08       	mov55 $r0,$r8
   92306:	b6 3f       	swi450 $r1,[$sp]
   92308:	49 ff ee f8 	jal 900f8 <strlen>
   9230c:	b4 3f       	lwi450 $r1,[$sp]
   9230e:	96 80       	zeb33 $r2,$r0
   92310:	10 2f 80 67 	sbi $r2,[$sp+#0x67]
   92314:	80 01       	mov55 $r0,$r1
   92316:	80 28       	mov55 $r1,$r8
   92318:	d5 0a       	j8 9232c <BT_InitEx2+0xd0>
   9231a:	fa 0c       	movpi45 $r0,#0x1c
   9231c:	10 0f 80 67 	sbi $r0,[$sp+#0x67]
   92320:	fa 4c       	movpi45 $r2,#0x1c
   92322:	80 01       	mov55 $r0,$r1
   92324:	46 10 00 9f 	sethi $r1,#0x9f
   92328:	58 10 89 70 	ori $r1,$r1,#0x970
   9232c:	49 ff ee 8e 	jal 90048 <memcpy>
   92330:	00 0f 80 67 	lbi $r0,[$sp+#0x67]
   92334:	5c f0 00 23 	slti $r15,$r0,#35
   92338:	e9 04       	bnezs8 92340 <BT_InitEx2+0xe4>
   9233a:	fa 12       	movpi45 $r0,#0x22
   9233c:	10 0f 80 67 	sbi $r0,[$sp+#0x67]
   92340:	00 2f 80 67 	lbi $r2,[$sp+#0x67]
   92344:	a1 35       	lwi333 $r4,[$r6+#0x14]
   92346:	9c 96       	addi333 $r2,$r2,#6
   92348:	96 90       	zeb33 $r2,$r2
   9234a:	10 2f 80 67 	sbi $r2,[$sp+#0x67]
   9234e:	b0 0f       	addri36.sp $r0,#0x3c
   92350:	00 55 00 00 	lbi $r5,[$r10+#0x0]
   92354:	c4 0b       	beqz38 $r4,9236a <BT_InitEx2+0x10e>
   92356:	50 1f 80 67 	addi $r1,$sp,#103
   9235a:	dd 24       	jral5 $r4
   9235c:	b4 07       	lwi450 $r0,[$r7]
   9235e:	fa 58       	movpi45 $r2,#0x28
   92360:	b0 4f       	addri36.sp $r1,#0x3c
   92362:	49 ff ee 67 	jal 90030 <memcmp>
   92366:	c0 10       	beqz38 $r0,92386 <BT_InitEx2+0x12a>
   92368:	d5 12       	j8 9238c <BT_InitEx2+0x130>
   9236a:	97 5f       	fexti33 $r5,#0x3
   9236c:	b0 42       	addri36.sp $r1,#0x8
   9236e:	46 30 00 9f 	sethi $r3,#0x9f
   92372:	58 31 84 5c 	ori $r3,$r3,#0x45c
   92376:	46 40 00 9f 	sethi $r4,#0x9f
   9237a:	58 42 04 7c 	ori $r4,$r4,#0x47c
   9237e:	8c aa       	addi45 $r5,#10
   92380:	49 00 2c f1 	jal 97d62 <Encrypt>
   92384:	d5 ec       	j8 9235c <BT_InitEx2+0x100>
   92386:	3e 07 c6 c0 	sbi.gp $r0,[+#-14656]
   9238a:	d5 0a       	j8 9239e <BT_InitEx2+0x142>
   9238c:	44 0f ff bb 	movi $r0,#-69
   92390:	3e 07 c6 c0 	sbi.gp $r0,[+#-14656]
   92394:	d5 05       	j8 9239e <BT_InitEx2+0x142>
   92396:	44 1f ff aa 	movi $r1,#-86
   9239a:	3e 17 c6 c0 	sbi.gp $r1,[+#-14656]
   9239e:	f0 01       	lwi37.sp $r0,[+#0x4]
   923a0:	3c 0f f2 9e 	swi.gp $r0,[+#-13704]
   923a4:	46 20 00 92 	sethi $r2,#0x92
   923a8:	58 21 08 f2 	ori $r2,$r2,#0x8f2
   923ac:	46 10 00 92 	sethi $r1,#0x92
   923b0:	58 10 8f 68 	ori $r1,$r1,#0xf68
   923b4:	80 66       	mov55 $r3,$r6
   923b6:	80 89       	mov55 $r4,$r9
   923b8:	46 00 00 92 	sethi $r0,#0x92
   923bc:	58 00 03 d0 	ori $r0,$r0,#0x3d0
   923c0:	49 00 31 5a 	jal 98674 <hci_cmd_evt_dat_init>
   923c4:	80 1c       	mov55 $r0,$fp
   923c6:	49 ff ff 42 	jal 9224a <BT_Log_Enable>
   923ca:	49 00 2b 08 	jal 979da <Drv_MMITimerDisable>
   923ce:	fc cd       	pop25 $r10,#0x68    ! {$r6~$r10, $fp, $gp, $lp}

000923d0 <hci_init_done>:
   923d0:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   923d2:	96 40       	zeb33 $r1,$r0
   923d4:	c1 0c       	beqz38 $r1,923ec <hci_init_done+0x1c>
   923d6:	84 20       	movi55 $r1,#0
   923d8:	44 00 10 05 	movi $r0,#4101
   923dc:	80 41       	mov55 $r2,$r1
   923de:	46 30 00 92 	sethi $r3,#0x92
   923e2:	58 31 83 fe 	ori $r3,$r3,#0x3fe
   923e6:	49 00 30 eb 	jal 985bc <hci_send_cmd>
   923ea:	d5 09       	j8 923fc <hci_init_done+0x2c>
   923ec:	3c 2d f2 9e 	lwi.gp $r2,[+#-13704]
   923f0:	c2 06       	beqz38 $r2,923fc <hci_init_done+0x2c>
   923f2:	b6 3f       	swi450 $r1,[$sp]
   923f4:	10 1f 80 04 	sbi $r1,[$sp+#0x4]
   923f8:	80 1f       	mov55 $r0,$sp
   923fa:	dd 22       	jral5 $r2
   923fc:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

000923fe <bt_init_read_buf_size>:
   923fe:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   92400:	a7 8a       	lbi333 $r6,[$r1+#0x2]
   92402:	a6 09       	lbi333 $r0,[$r1+#0x1]
   92404:	40 63 20 08 	slli $r6,$r6,#8
   92408:	99 b0       	add333 $r6,$r6,$r0
   9240a:	a6 0b       	lbi333 $r0,[$r1+#0x3]
   9240c:	97 b1       	zeh33 $r6,$r6
   9240e:	c0 10       	beqz38 $r0,9242e <bt_init_read_buf_size+0x30>
   92410:	84 20       	movi55 $r1,#0
   92412:	44 00 20 02 	movi $r0,#8194
   92416:	80 41       	mov55 $r2,$r1
   92418:	46 30 00 92 	sethi $r3,#0x92
   9241c:	58 31 83 fe 	ori $r3,$r3,#0x3fe
   92420:	49 00 30 ce 	jal 985bc <hci_send_cmd>
   92424:	44 00 20 02 	movi $r0,#8194
   92428:	4c 60 40 32 	bne $r6,$r0,9248c <bt_init_read_buf_size+0x8e>
   9242c:	d5 26       	j8 92478 <bt_init_read_buf_size+0x7a>
   9242e:	44 30 10 05 	movi $r3,#4101
   92432:	a6 0d       	lbi333 $r0,[$r1+#0x5]
   92434:	a6 8c       	lbi333 $r2,[$r1+#0x4]
   92436:	4c 61 c0 0e 	bne $r6,$r3,92452 <bt_init_read_buf_size+0x54>
   9243a:	00 30 80 08 	lbi $r3,[$r1+#0x8]
   9243e:	40 00 20 08 	slli $r0,$r0,#8
   92442:	98 02       	add333 $r0,$r0,$r2
   92444:	a6 8f       	lbi333 $r2,[$r1+#0x7]
   92446:	40 31 a0 08 	slli $r3,$r3,#8
   9244a:	98 5a       	add333 $r1,$r3,$r2
   9244c:	96 01       	zeh33 $r0,$r0
   9244e:	96 49       	zeh33 $r1,$r1
   92450:	d5 06       	j8 9245c <bt_init_read_buf_size+0x5e>
   92452:	40 00 20 08 	slli $r0,$r0,#8
   92456:	98 02       	add333 $r0,$r0,$r2
   92458:	a6 4e       	lbi333 $r1,[$r1+#0x6]
   9245a:	96 01       	zeh33 $r0,$r0
   9245c:	49 00 2f 66 	jal 98328 <hci_dat_info_update>
   92460:	49 00 05 54 	jal 92f08 <l2cap_init>
   92464:	49 00 0f 7a 	jal 94358 <att_init>
   92468:	49 00 04 a0 	jal 92da8 <BLE_gap_sm_init>
   9246c:	49 00 06 97 	jal 9319a <l2cap_lesig_init>
   92470:	2e 07 c6 c0 	lbi.gp $r0,[+#-14656]
   92474:	49 00 00 35 	jal 924de <ble_gap_init>
   92478:	3c 1d f2 9e 	lwi.gp $r1,[+#-13704]
   9247c:	c1 08       	beqz38 $r1,9248c <bt_init_read_buf_size+0x8e>
   9247e:	84 40       	movi55 $r2,#0
   92480:	b6 5f       	swi450 $r2,[$sp]
   92482:	84 41       	movi55 $r2,#1
   92484:	10 2f 80 04 	sbi $r2,[$sp+#0x4]
   92488:	80 1f       	mov55 $r0,$sp
   9248a:	dd 21       	jral5 $r1
   9248c:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

0009248e <generic_status_complete_cb>:
   9248e:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   92490:	96 48       	zeb33 $r1,$r1
   92492:	80 7f       	mov55 $r3,$sp
   92494:	b6 1f       	swi450 $r0,[$sp]
   92496:	5a 10 0e 05 	beqc $r1,#14,924a0 <generic_status_complete_cb+0x12>
   9249a:	5a 18 0f 0b 	bnec $r1,#15,924b0 <generic_status_complete_cb+0x22>
   9249e:	d5 03       	j8 924a4 <generic_status_complete_cb+0x16>
   924a0:	a6 13       	lbi333 $r0,[$r2+#0x3]
   924a2:	d5 02       	j8 924a6 <generic_status_complete_cb+0x18>
   924a4:	a6 10       	lbi333 $r0,[$r2+#0x0]
   924a6:	c0 05       	beqz38 $r0,924b0 <generic_status_complete_cb+0x22>
   924a8:	ae 1c       	sbi333 $r0,[$r3+#0x4]
   924aa:	80 1f       	mov55 $r0,$sp
   924ac:	49 ff fe c9 	jal 9223e <bt_infom_ap>
   924b0:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

000924b2 <generic_encrypt_cb>:
   924b2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   924b4:	80 a1       	mov55 $r5,$r1
   924b6:	80 83       	mov55 $r4,$r3
   924b8:	96 40       	zeb33 $r1,$r0
   924ba:	96 d0       	zeb33 $r3,$r2
   924bc:	44 00 10 07 	movi $r0,#4103
   924c0:	80 45       	mov55 $r2,$r5
   924c2:	49 ff ff e6 	jal 9248e <generic_status_complete_cb>
   924c6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000924c8 <generic_conn_update_cb>:
   924c8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   924ca:	80 a1       	mov55 $r5,$r1
   924cc:	80 83       	mov55 $r4,$r3
   924ce:	96 40       	zeb33 $r1,$r0
   924d0:	96 d0       	zeb33 $r3,$r2
   924d2:	44 00 10 08 	movi $r0,#4104
   924d6:	80 45       	mov55 $r2,$r5
   924d8:	49 ff ff db 	jal 9248e <generic_status_complete_cb>
   924dc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000924de <ble_gap_init>:
   924de:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   924e0:	96 40       	zeb33 $r1,$r0
   924e2:	3e 17 c6 c1 	sbi.gp $r1,[+#-14655]
   924e6:	3e 2f c1 14 	addi.gp $r2,#-16108
   924ea:	ae 50       	sbi333 $r1,[$r2+#0x0]
   924ec:	3e 17 c1 1c 	sbi.gp $r1,[+#-16100]
   924f0:	c9 0b       	bnez38 $r1,92506 <ble_gap_init+0x28>
   924f2:	44 00 40 02 	movi $r0,#16386
   924f6:	80 41       	mov55 $r2,$r1
   924f8:	46 30 00 92 	sethi $r3,#0x92
   924fc:	58 31 85 64 	ori $r3,$r3,#0x564
   92500:	49 00 30 5e 	jal 985bc <hci_send_cmd>
   92504:	d5 09       	j8 92516 <ble_gap_init+0x38>
   92506:	84 60       	movi55 $r3,#0
   92508:	80 22       	mov55 $r1,$r2
   9250a:	44 00 40 00 	movi $r0,#16384
   9250e:	84 46       	movi55 $r2,#6
   92510:	80 83       	mov55 $r4,$r3
   92512:	49 00 2f ea 	jal 984e6 <hci_send_cmd_ex>
   92516:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092518 <ble_gap_tx_power_set>:
   92518:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   9251a:	84 41       	movi55 $r2,#1
   9251c:	80 81       	mov55 $r4,$r1
   9251e:	10 0f 80 04 	sbi $r0,[$sp+#0x4]
   92522:	b0 41       	addri36.sp $r1,#0x4
   92524:	44 00 40 01 	movi $r0,#16385
   92528:	46 30 00 92 	sethi $r3,#0x92
   9252c:	58 31 85 a8 	ori $r3,$r3,#0x5a8
   92530:	49 00 2f db 	jal 984e6 <hci_send_cmd_ex>
   92534:	84 00       	movi55 $r0,#0
   92536:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

00092538 <set_adv_parm_cb>:
   92538:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   9253a:	84 01       	movi55 $r0,#1
   9253c:	10 0f 80 07 	sbi $r0,[$sp+#0x7]
   92540:	80 83       	mov55 $r4,$r3
   92542:	a6 4b       	lbi333 $r1,[$r1+#0x3]
   92544:	c1 04       	beqz38 $r1,9254c <set_adv_parm_cb+0x14>
   92546:	84 00       	movi55 $r0,#0
   92548:	dd 23       	jral5 $r3
   9254a:	d5 0c       	j8 92562 <set_adv_parm_cb+0x2a>
   9254c:	44 00 20 0a 	movi $r0,#8202
   92550:	50 1f 80 07 	addi $r1,$sp,#7
   92554:	84 41       	movi55 $r2,#1
   92556:	46 30 00 92 	sethi $r3,#0x92
   9255a:	58 31 85 a8 	ori $r3,$r3,#0x5a8
   9255e:	49 00 2f c4 	jal 984e6 <hci_send_cmd_ex>
   92562:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

00092564 <gap_init_cb>:
   92564:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   92566:	a6 0b       	lbi333 $r0,[$r1+#0x3]
   92568:	80 c1       	mov55 $r6,$r1
   9256a:	a7 c9       	lbi333 $r7,[$r1+#0x1]
   9256c:	00 80 80 02 	lbi $r8,[$r1+#0x2]
   92570:	c0 0d       	beqz38 $r0,9258a <gap_init_cb+0x26>
   92572:	46 00 00 9f 	sethi $r0,#0x9f
   92576:	58 00 09 90 	ori $r0,$r0,#0x990
   9257a:	44 10 00 93 	movi $r1,#147
   9257e:	46 20 00 9f 	sethi $r2,#0x9f
   92582:	58 21 09 9c 	ori $r2,$r2,#0x99c
   92586:	49 00 38 1a 	jal 995ba <assert_ab_callback_verbose>
   9258a:	40 14 20 08 	slli $r1,$r8,#8
   9258e:	98 79       	add333 $r1,$r7,$r1
   92590:	96 49       	zeh33 $r1,$r1
   92592:	44 00 40 02 	movi $r0,#16386
   92596:	4c 10 40 08 	bne $r1,$r0,925a6 <gap_init_cb+0x42>
   9259a:	3e 0f c1 14 	addi.gp $r0,#-16108
   9259e:	9c 74       	addi333 $r1,$r6,#4
   925a0:	84 46       	movi55 $r2,#6
   925a2:	49 ff ed 53 	jal 90048 <memcpy>
   925a6:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000925a8 <generic_complete_cb>:
   925a8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   925aa:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   925ac:	80 c1       	mov55 $r6,$r1
   925ae:	a6 49       	lbi333 $r1,[$r1+#0x1]
   925b0:	40 00 20 08 	slli $r0,$r0,#8
   925b4:	98 01       	add333 $r0,$r0,$r1
   925b6:	96 01       	zeh33 $r0,$r0
   925b8:	44 10 20 0a 	movi $r1,#8202
   925bc:	4c 00 80 39 	beq $r0,$r1,9262e <generic_complete_cb+0x86>
   925c0:	5c f0 20 0b 	slti $r15,$r0,#8203
   925c4:	e8 0f       	beqzs8 925e2 <generic_complete_cb+0x3a>
   925c6:	9e 4c       	subi333 $r1,$r1,#4
   925c8:	4c 00 80 37 	beq $r0,$r1,92636 <generic_complete_cb+0x8e>
   925cc:	5c f0 20 07 	slti $r15,$r0,#8199
   925d0:	e8 05       	beqzs8 925da <generic_complete_cb+0x32>
   925d2:	9e 49       	subi333 $r1,$r1,#1
   925d4:	4c 00 c0 37 	bne $r0,$r1,92642 <generic_complete_cb+0x9a>
   925d8:	d5 1d       	j8 92612 <generic_complete_cb+0x6a>
   925da:	5c f0 20 08 	slti $r15,$r0,#8200
   925de:	e9 32       	bnezs8 92642 <generic_complete_cb+0x9a>
   925e0:	d5 2b       	j8 92636 <generic_complete_cb+0x8e>
   925e2:	9c 4c       	addi333 $r1,$r1,#4
   925e4:	4c 00 80 29 	beq $r0,$r1,92636 <generic_complete_cb+0x8e>
   925e8:	5c f0 20 0f 	slti $r15,$r0,#8207
   925ec:	e8 05       	beqzs8 925f6 <generic_complete_cb+0x4e>
   925ee:	5c f0 20 0d 	slti $r15,$r0,#8205
   925f2:	e8 28       	beqzs8 92642 <generic_complete_cb+0x9a>
   925f4:	d5 21       	j8 92636 <generic_complete_cb+0x8e>
   925f6:	44 10 40 00 	movi $r1,#16384
   925fa:	4c 00 80 06 	beq $r0,$r1,92606 <generic_complete_cb+0x5e>
   925fe:	9c 49       	addi333 $r1,$r1,#1
   92600:	4c 00 c0 21 	bne $r0,$r1,92642 <generic_complete_cb+0x9a>
   92604:	d5 19       	j8 92636 <generic_complete_cb+0x8e>
   92606:	9c 1c       	addi333 $r0,$r3,#4
   92608:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   9260c:	3e 2f c1 14 	addi.gp $r2,#-16108
   92610:	d5 06       	j8 9261c <generic_complete_cb+0x74>
   92612:	9c 1c       	addi333 $r0,$r3,#4
   92614:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   92618:	3e 2f c1 1c 	addi.gp $r2,#-16100
   9261c:	aa 11       	swi333.bi $r0,[$r2],#0x4
   9261e:	ac 50       	shi333 $r1,[$r2+#0x0]
   92620:	b4 43       	lwi450 $r2,[$r3]
   92622:	c2 10       	beqz38 $r2,92642 <generic_complete_cb+0x9a>
   92624:	a6 73       	lbi333 $r1,[$r6+#0x3]
   92626:	5c 00 80 01 	slti $r0,$r1,#1
   9262a:	dd 22       	jral5 $r2
   9262c:	d5 0b       	j8 92642 <generic_complete_cb+0x9a>
   9262e:	2e 17 ca 80 	lbi.gp $r1,[+#-13696]
   92632:	3e 17 ca 81 	sbi.gp $r1,[+#-13695]
   92636:	c3 14       	beqz38 $r3,9265e <generic_complete_cb+0xb6>
   92638:	a6 73       	lbi333 $r1,[$r6+#0x3]
   9263a:	5c 00 80 01 	slti $r0,$r1,#1
   9263e:	dd 23       	jral5 $r3
   92640:	d5 0f       	j8 9265e <generic_complete_cb+0xb6>
   92642:	a6 33       	lbi333 $r0,[$r6+#0x3]
   92644:	c0 0d       	beqz38 $r0,9265e <generic_complete_cb+0xb6>
   92646:	46 00 00 9f 	sethi $r0,#0x9f
   9264a:	58 00 09 90 	ori $r0,$r0,#0x990
   9264e:	44 10 00 d1 	movi $r1,#209
   92652:	46 20 00 9f 	sethi $r2,#0x9f
   92656:	58 21 09 9c 	ori $r2,$r2,#0x99c
   9265a:	49 00 37 b0 	jal 995ba <assert_ab_callback_verbose>
   9265e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092660 <ble_gap_start_encrypt>:
   92660:	fc 05       	push25 $r6,#0x28    ! {$r6, $fp, $gp, $lp}
   92662:	b1 83       	addri36.sp $r6,#0xc
   92664:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   92668:	fa 4a       	movpi45 $r2,#0x1a
   9266a:	ac 30       	shi333 $r0,[$r6+#0x0]
   9266c:	50 0f 80 0e 	addi $r0,$sp,#14
   92670:	49 ff ec ec 	jal 90048 <memcpy>
   92674:	44 00 20 19 	movi $r0,#8217
   92678:	80 26       	mov55 $r1,$r6
   9267a:	fa 4c       	movpi45 $r2,#0x1c
   9267c:	46 30 00 92 	sethi $r3,#0x92
   92680:	58 31 84 b2 	ori $r3,$r3,#0x4b2
   92684:	49 00 2f 9c 	jal 985bc <hci_send_cmd>
   92688:	84 00       	movi55 $r0,#0
   9268a:	fc 85       	pop25 $r6,#0x28    ! {$r6, $fp, $gp, $lp}

0009268c <ble_gap_address_set>:
   9268c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9268e:	a6 80       	lbi333 $r2,[$r0+#0x0]
   92690:	80 e0       	mov55 $r7,$r0
   92692:	81 21       	mov55 $r9,$r1
   92694:	e6 43       	slti45 $r2,#3
   92696:	e8 03       	beqzs8 9269c <ble_gap_address_set+0x10>
   92698:	ca 20       	bnez38 $r2,926d8 <ble_gap_address_set+0x4c>
   9269a:	d5 06       	j8 926a6 <ble_gap_address_set+0x1a>
   9269c:	5a 20 03 03 	beqc $r2,#3,926a2 <ble_gap_address_set+0x16>
   926a0:	d5 3d       	j8 9271a <ble_gap_address_set+0x8e>
   926a2:	80 02       	mov55 $r0,$r2
   926a4:	d5 3c       	j8 9271c <ble_gap_address_set+0x90>
   926a6:	84 0c       	movi55 $r0,#12
   926a8:	49 00 40 96 	jal 9a7d4 <malloc>
   926ac:	80 40       	mov55 $r2,$r0
   926ae:	1c 91 00 01 	swi.bi $r9,[$r2],#0x4
   926b2:	80 c0       	mov55 $r6,$r0
   926b4:	2e 07 c6 c1 	lbi.gp $r0,[+#-14655]
   926b8:	c8 07       	bnez38 $r0,926c6 <ble_gap_address_set+0x3a>
   926ba:	80 02       	mov55 $r0,$r2
   926bc:	9c 79       	addi333 $r1,$r7,#1
   926be:	84 46       	movi55 $r2,#6
   926c0:	49 ff ec c4 	jal 90048 <memcpy>
   926c4:	d5 07       	j8 926d2 <ble_gap_address_set+0x46>
   926c6:	3e 0f c1 14 	addi.gp $r0,#-16108
   926ca:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   926ce:	aa 11       	swi333.bi $r0,[$r2],#0x4
   926d0:	ac 50       	shi333 $r1,[$r2+#0x0]
   926d2:	44 00 40 00 	movi $r0,#16384
   926d6:	d5 19       	j8 92708 <ble_gap_address_set+0x7c>
   926d8:	84 0c       	movi55 $r0,#12
   926da:	49 00 40 7d 	jal 9a7d4 <malloc>
   926de:	80 40       	mov55 $r2,$r0
   926e0:	1c 91 00 01 	swi.bi $r9,[$r2],#0x4
   926e4:	80 c0       	mov55 $r6,$r0
   926e6:	2e 07 c6 c1 	lbi.gp $r0,[+#-14655]
   926ea:	c8 07       	bnez38 $r0,926f8 <ble_gap_address_set+0x6c>
   926ec:	80 02       	mov55 $r0,$r2
   926ee:	9c 79       	addi333 $r1,$r7,#1
   926f0:	84 46       	movi55 $r2,#6
   926f2:	49 ff ec ab 	jal 90048 <memcpy>
   926f6:	d5 07       	j8 92704 <ble_gap_address_set+0x78>
   926f8:	3e 0f c1 1c 	addi.gp $r0,#-16100
   926fc:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   92700:	aa 11       	swi333.bi $r0,[$r2],#0x4
   92702:	ac 50       	shi333 $r1,[$r2+#0x0]
   92704:	44 00 20 05 	movi $r0,#8197
   92708:	9c 74       	addi333 $r1,$r6,#4
   9270a:	84 46       	movi55 $r2,#6
   9270c:	46 30 00 92 	sethi $r3,#0x92
   92710:	58 31 85 a8 	ori $r3,$r3,#0x5a8
   92714:	80 86       	mov55 $r4,$r6
   92716:	49 00 2e e8 	jal 984e6 <hci_send_cmd_ex>
   9271a:	84 00       	movi55 $r0,#0
   9271c:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009271e <ble_gap_conn_param_update>:
   9271e:	fc 25       	push25 $r8,#0x28    ! {$r6~$r8, $fp, $gp, $lp}
   92720:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   92724:	96 01       	zeh33 $r0,$r0
   92726:	81 01       	mov55 $r8,$r1
   92728:	49 00 02 26 	jal 92b74 <ble_gap_link_GetIdx_ByHandle>
   9272c:	80 c0       	mov55 $r6,$r0
   9272e:	5a 08 ff 04 	bnec $r0,#255,92736 <ble_gap_conn_param_update+0x18>
   92732:	84 01       	movi55 $r0,#1
   92734:	d5 3a       	j8 927a8 <ble_gap_conn_param_update+0x8a>
   92736:	b1 c7       	addri36.sp $r7,#0x1c
   92738:	80 07       	mov55 $r0,$r7
   9273a:	80 28       	mov55 $r1,$r8
   9273c:	84 4c       	movi55 $r2,#12
   9273e:	49 ff ec 85 	jal 90048 <memcpy>
   92742:	a4 38       	lhi333 $r0,[$r7+#0x0]
   92744:	5a 08 06 14 	bnec $r0,#6,9276c <ble_gap_conn_param_update+0x4e>
   92748:	46 20 00 9f 	sethi $r2,#0x9f
   9274c:	58 21 04 88 	ori $r2,$r2,#0x488
   92750:	a4 7a       	lhi333 $r1,[$r7+#0x4]
   92752:	50 31 00 27 	addi $r3,$r2,#39
   92756:	a6 10       	lbi333 $r0,[$r2+#0x0]
   92758:	e2 20       	slt45 $r1,$r0
   9275a:	e9 08       	bnezs8 9276a <ble_gap_conn_param_update+0x4c>
   9275c:	4c 10 40 04 	bne $r1,$r0,92764 <ble_gap_conn_param_update+0x46>
   92760:	9c 49       	addi333 $r1,$r1,#1
   92762:	96 49       	zeh33 $r1,$r1
   92764:	9c 91       	addi333 $r2,$r2,#1
   92766:	4c 21 ff f8 	bne $r2,$r3,92756 <ble_gap_conn_param_update+0x38>
   9276a:	ac 7a       	shi333 $r1,[$r7+#0x4]
   9276c:	80 06       	mov55 $r0,$r6
   9276e:	49 00 02 92 	jal 92c92 <ble_gap_link_GetAttr_Role>
   92772:	b0 47       	addri36.sp $r1,#0x1c
   92774:	5a 08 01 06 	bnec $r0,#1,92780 <ble_gap_conn_param_update+0x62>
   92778:	80 06       	mov55 $r0,$r6
   9277a:	49 00 04 fa 	jal 9316e <l2cap_lesig_conn_param_update_req>
   9277e:	d5 14       	j8 927a6 <ble_gap_conn_param_update+0x88>
   92780:	02 0f 80 02 	lhi $r0,[$sp+#0x4]
   92784:	b1 83       	addri36.sp $r6,#0xc
   92786:	ac 30       	shi333 $r0,[$r6+#0x0]
   92788:	84 4c       	movi55 $r2,#12
   9278a:	50 0f 80 0e 	addi $r0,$sp,#14
   9278e:	49 ff ec 5d 	jal 90048 <memcpy>
   92792:	44 00 20 13 	movi $r0,#8211
   92796:	80 26       	mov55 $r1,$r6
   92798:	84 4e       	movi55 $r2,#14
   9279a:	46 30 00 92 	sethi $r3,#0x92
   9279e:	58 31 84 c8 	ori $r3,$r3,#0x4c8
   927a2:	49 00 2f 0d 	jal 985bc <hci_send_cmd>
   927a6:	84 00       	movi55 $r0,#0
   927a8:	fc a5       	pop25 $r8,#0x28    ! {$r6~$r8, $fp, $gp, $lp}

000927aa <ble_gap_adv_start>:
   927aa:	fc 22       	push25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}
   927ac:	80 c0       	mov55 $r6,$r0
   927ae:	81 01       	mov55 $r8,$r1
   927b0:	c8 0e       	bnez38 $r0,927cc <ble_gap_adv_start+0x22>
   927b2:	84 01       	movi55 $r0,#1
   927b4:	10 0f 80 0f 	sbi $r0,[$sp+#0xf]
   927b8:	50 1f 80 0f 	addi $r1,$sp,#15
   927bc:	44 00 20 0a 	movi $r0,#8202
   927c0:	84 41       	movi55 $r2,#1
   927c2:	46 30 00 92 	sethi $r3,#0x92
   927c6:	58 31 85 a8 	ori $r3,$r3,#0x5a8
   927ca:	d5 4f       	j8 92868 <ble_gap_adv_start+0xbe>
   927cc:	84 20       	movi55 $r1,#0
   927ce:	80 1f       	mov55 $r0,$sp
   927d0:	84 4f       	movi55 $r2,#15
   927d2:	49 ff ec 5b 	jal 90088 <memset>
   927d6:	00 03 00 08 	lbi $r0,[$r6+#0x8]
   927da:	a6 77       	lbi333 $r1,[$r6+#0x7]
   927dc:	40 00 20 08 	slli $r0,$r0,#8
   927e0:	fe 0f       	or33 $r0,$r1
   927e2:	12 0f 80 00 	shi $r0,[$sp+#0x0]
   927e6:	80 ff       	mov55 $r7,$sp
   927e8:	00 03 00 0a 	lbi $r0,[$r6+#0xa]
   927ec:	00 13 00 09 	lbi $r1,[$r6+#0x9]
   927f0:	40 00 20 08 	slli $r0,$r0,#8
   927f4:	fe 0f       	or33 $r0,$r1
   927f6:	12 0f 80 01 	shi $r0,[$sp+#0x2]
   927fa:	2e 07 c6 c1 	lbi.gp $r0,[+#-14655]
   927fe:	c0 07       	beqz38 $r0,9280c <ble_gap_adv_start+0x62>
   92800:	5a 00 aa 06 	beqc $r0,#170,9280c <ble_gap_adv_start+0x62>
   92804:	84 03       	movi55 $r0,#3
   92806:	10 0f 80 04 	sbi $r0,[$sp+#0x4]
   9280a:	d5 04       	j8 92812 <ble_gap_adv_start+0x68>
   9280c:	a6 30       	lbi333 $r0,[$r6+#0x0]
   9280e:	10 0f 80 04 	sbi $r0,[$sp+#0x4]
   92812:	a6 35       	lbi333 $r0,[$r6+#0x5]
   92814:	3e 07 ca 80 	sbi.gp $r0,[+#-13696]
   92818:	10 0f 80 05 	sbi $r0,[$sp+#0x5]
   9281c:	a6 f2       	lbi333 $r3,[$r6+#0x2]
   9281e:	a7 31       	lbi333 $r4,[$r6+#0x1]
   92820:	a6 33       	lbi333 $r0,[$r6+#0x3]
   92822:	40 31 a0 08 	slli $r3,$r3,#8
   92826:	a6 74       	lbi333 $r1,[$r6+#0x4]
   92828:	fe e7       	or33 $r3,$r4
   9282a:	40 00 40 08 	slli $r0,$r0,#16
   9282e:	fe 1f       	or33 $r0,$r3
   92830:	40 10 e0 08 	slli $r1,$r1,#24
   92834:	fe 47       	or33 $r1,$r0
   92836:	c1 0a       	beqz38 $r1,9284a <ble_gap_adv_start+0xa0>
   92838:	08 00 80 01 	lbi.bi $r0,[$r1],#0x1
   9283c:	84 46       	movi55 $r2,#6
   9283e:	10 0f 80 06 	sbi $r0,[$sp+#0x6]
   92842:	50 0f 80 07 	addi $r0,$sp,#7
   92846:	49 ff ec 01 	jal 90048 <memcpy>
   9284a:	00 03 00 0b 	lbi $r0,[$r6+#0xb]
   9284e:	80 3f       	mov55 $r1,$sp
   92850:	10 0f 80 0d 	sbi $r0,[$sp+#0xd]
   92854:	84 4f       	movi55 $r2,#15
   92856:	a7 b6       	lbi333 $r6,[$r6+#0x6]
   92858:	44 00 20 06 	movi $r0,#8198
   9285c:	10 6f 80 0e 	sbi $r6,[$sp+#0xe]
   92860:	46 30 00 92 	sethi $r3,#0x92
   92864:	58 31 85 38 	ori $r3,$r3,#0x538
   92868:	80 88       	mov55 $r4,$r8
   9286a:	49 00 2e 3e 	jal 984e6 <hci_send_cmd_ex>
   9286e:	84 00       	movi55 $r0,#0
   92870:	fc a2       	pop25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}

00092872 <ble_gap_scan_data_set>:
   92872:	fc 44       	push25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}
   92874:	50 af 80 01 	addi $r10,$sp,#1
   92878:	97 88       	zeb33 $r6,$r1
   9287a:	81 20       	mov55 $r9,$r0
   9287c:	80 e2       	mov55 $r7,$r2
   9287e:	80 0a       	mov55 $r0,$r10
   92880:	84 20       	movi55 $r1,#0
   92882:	fa 4f       	movpi45 $r2,#0x1f
   92884:	49 ff ec 02 	jal 90088 <memset>
   92888:	80 29       	mov55 $r1,$r9
   9288a:	80 46       	mov55 $r2,$r6
   9288c:	80 0a       	mov55 $r0,$r10
   9288e:	49 ff eb dd 	jal 90048 <memcpy>
   92892:	44 00 20 09 	movi $r0,#8201
   92896:	80 3f       	mov55 $r1,$sp
   92898:	fa 50       	movpi45 $r2,#0x20
   9289a:	46 30 00 92 	sethi $r3,#0x92
   9289e:	58 31 85 a8 	ori $r3,$r3,#0x5a8
   928a2:	80 87       	mov55 $r4,$r7
   928a4:	10 6f 80 00 	sbi $r6,[$sp+#0x0]
   928a8:	81 1f       	mov55 $r8,$sp
   928aa:	49 00 2e 1e 	jal 984e6 <hci_send_cmd_ex>
   928ae:	84 00       	movi55 $r0,#0
   928b0:	fc c4       	pop25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}

000928b2 <ble_gap_adv_data_set>:
   928b2:	fc 44       	push25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}
   928b4:	50 af 80 01 	addi $r10,$sp,#1
   928b8:	97 88       	zeb33 $r6,$r1
   928ba:	81 20       	mov55 $r9,$r0
   928bc:	80 e2       	mov55 $r7,$r2
   928be:	80 0a       	mov55 $r0,$r10
   928c0:	84 20       	movi55 $r1,#0
   928c2:	fa 4f       	movpi45 $r2,#0x1f
   928c4:	49 ff eb e2 	jal 90088 <memset>
   928c8:	80 29       	mov55 $r1,$r9
   928ca:	80 46       	mov55 $r2,$r6
   928cc:	80 0a       	mov55 $r0,$r10
   928ce:	49 ff eb bd 	jal 90048 <memcpy>
   928d2:	44 00 20 08 	movi $r0,#8200
   928d6:	80 3f       	mov55 $r1,$sp
   928d8:	fa 50       	movpi45 $r2,#0x20
   928da:	46 30 00 92 	sethi $r3,#0x92
   928de:	58 31 85 a8 	ori $r3,$r3,#0x5a8
   928e2:	80 87       	mov55 $r4,$r7
   928e4:	10 6f 80 00 	sbi $r6,[$sp+#0x0]
   928e8:	81 1f       	mov55 $r8,$sp
   928ea:	49 00 2d fe 	jal 984e6 <hci_send_cmd_ex>
   928ee:	84 00       	movi55 $r0,#0
   928f0:	fc c4       	pop25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}

000928f2 <ble_gap_event_handler>:
   928f2:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   928f4:	ee f8       	addi10.sp #-264
   928f6:	96 00       	zeb33 $r0,$r0
   928f8:	80 c2       	mov55 $r6,$r2
   928fa:	96 48       	zeb33 $r1,$r1
   928fc:	5a 00 0c 21 	beqc $r0,#12,9293e <ble_gap_event_handler+0x4c>
   92900:	e6 0d       	slti45 $r0,#13
   92902:	e8 08       	beqzs8 92912 <ble_gap_event_handler+0x20>
   92904:	85 e5       	movi55 $r15,#5
   92906:	4c 07 80 f0 	beq $r0,$r15,92ae6 <ble_gap_event_handler+0x1f4>
   9290a:	85 e8       	movi55 $r15,#8
   9290c:	4c 07 c1 05 	bne $r0,$r15,92b16 <ble_gap_event_handler+0x224>
   92910:	d5 12       	j8 92934 <ble_gap_event_handler+0x42>
   92912:	5a 00 30 07 	beqc $r0,#48,92920 <ble_gap_event_handler+0x2e>
   92916:	5a 00 3e 04 	beqc $r0,#62,9291e <ble_gap_event_handler+0x2c>
   9291a:	48 00 00 fe 	j 92b16 <ble_gap_event_handler+0x224>
   9291e:	d5 19       	j8 92950 <ble_gap_event_handler+0x5e>
   92920:	b1 f6       	addri36.sp $r7,#0xd8
   92922:	80 22       	mov55 $r1,$r2
   92924:	80 07       	mov55 $r0,$r7
   92926:	84 43       	movi55 $r2,#3
   92928:	49 ff eb 90 	jal 90048 <memcpy>
   9292c:	84 01       	movi55 $r0,#1
   9292e:	ae 3b       	sbi333 $r0,[$r7+#0x3]
   92930:	80 07       	mov55 $r0,$r7
   92932:	d5 02       	j8 92936 <ble_gap_event_handler+0x44>
   92934:	80 02       	mov55 $r0,$r2
   92936:	49 00 02 63 	jal 92dfc <BLE_gap_sm_encryption_change>
   9293a:	48 00 00 ee 	j 92b16 <ble_gap_event_handler+0x224>
   9293e:	44 00 10 09 	movi $r0,#4105
   92942:	b1 f6       	addri36.sp $r7,#0xd8
   92944:	f0 b6       	swi37.sp $r0,[+#0xd8]
   92946:	80 22       	mov55 $r1,$r2
   92948:	b0 37       	addri36.sp $r0,#0xdc
   9294a:	84 48       	movi55 $r2,#8
   9294c:	48 00 00 be 	j 92ac8 <ble_gap_event_handler+0x1d6>
   92950:	a6 10       	lbi333 $r0,[$r2+#0x0]
   92952:	85 e3       	movi55 $r15,#3
   92954:	4c 07 80 b3 	beq $r0,$r15,92aba <ble_gap_event_handler+0x1c8>
   92958:	e6 04       	slti45 $r0,#4
   9295a:	e8 07       	beqzs8 92968 <ble_gap_event_handler+0x76>
   9295c:	5a 00 01 11 	beqc $r0,#1,9297e <ble_gap_event_handler+0x8c>
   92960:	85 e2       	movi55 $r15,#2
   92962:	4c 07 c0 da 	bne $r0,$r15,92b16 <ble_gap_event_handler+0x224>
   92966:	d5 40       	j8 929e6 <ble_gap_event_handler+0xf4>
   92968:	85 e8       	movi55 $r15,#8
   9296a:	4c 07 80 b6 	beq $r0,$r15,92ad6 <ble_gap_event_handler+0x1e4>
   9296e:	85 e9       	movi55 $r15,#9
   92970:	4c 07 80 b7 	beq $r0,$r15,92ade <ble_gap_event_handler+0x1ec>
   92974:	85 e5       	movi55 $r15,#5
   92976:	4c 07 c0 d0 	bne $r0,$r15,92b16 <ble_gap_event_handler+0x224>
   9297a:	48 00 00 aa 	j 92ace <ble_gap_event_handler+0x1dc>
   9297e:	9d d1       	addi333 $r7,$r2,#1
   92980:	44 00 10 00 	movi $r0,#4096
   92984:	f0 aa       	swi37.sp $r0,[+#0xa8]
   92986:	80 27       	mov55 $r1,$r7
   92988:	b0 2b       	addri36.sp $r0,#0xac
   9298a:	fa 42       	movpi45 $r2,#0x12
   9298c:	49 ff eb 5e 	jal 90048 <memcpy>
   92990:	00 83 80 00 	lbi $r8,[$r7+#0x0]
   92994:	4e 83 00 26 	bnez $r8,929e0 <ble_gap_event_handler+0xee>
   92998:	9d b6       	addi333 $r6,$r6,#6
   9299a:	80 06       	mov55 $r0,$r6
   9299c:	49 00 01 fd 	jal 92d96 <ble_gap_link_Is_ValidAddr>
   929a0:	c0 05       	beqz38 $r0,929aa <ble_gap_event_handler+0xb8>
   929a2:	9c 39       	addi333 $r0,$r7,#1
   929a4:	80 28       	mov55 $r1,$r8
   929a6:	80 48       	mov55 $r2,$r8
   929a8:	d5 0a       	j8 929bc <ble_gap_event_handler+0xca>
   929aa:	2e 17 ca 81 	lbi.gp $r1,[+#-13695]
   929ae:	c9 04       	bnez38 $r1,929b6 <ble_gap_event_handler+0xc4>
   929b0:	3e 2f c1 14 	addi.gp $r2,#-16108
   929b4:	d5 03       	j8 929ba <ble_gap_event_handler+0xc8>
   929b6:	3e 2f c1 1c 	addi.gp $r2,#-16100
   929ba:	9c 39       	addi333 $r0,$r7,#1
   929bc:	84 62       	movi55 $r3,#2
   929be:	49 00 01 b8 	jal 92d2e <ble_gap_link_Add_Ex>
   929c2:	80 06       	mov55 $r0,$r6
   929c4:	49 00 01 fd 	jal 92dbe <BLE_gap_sm_set_link_auth>
   929c8:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   929ca:	a6 79       	lbi333 $r1,[$r7+#0x1]
   929cc:	40 00 20 08 	slli $r0,$r0,#8
   929d0:	fe 0f       	or33 $r0,$r1
   929d2:	49 00 00 d1 	jal 92b74 <ble_gap_link_GetIdx_ByHandle>
   929d6:	80 20       	mov55 $r1,$r0
   929d8:	44 00 10 00 	movi $r0,#4096
   929dc:	49 00 02 61 	jal 92e9e <l2cap_notify>
   929e0:	b0 2a       	addri36.sp $r0,#0xa8
   929e2:	48 00 00 98 	j 92b12 <ble_gap_event_handler+0x220>
   929e6:	9e 09       	subi333 $r0,$r1,#1
   929e8:	44 10 10 03 	movi $r1,#4099
   929ec:	f1 9e       	swi37.sp $r1,[+#0x78]
   929ee:	51 c1 00 01 	addi $fp,$r2,#1
   929f2:	08 ae 00 01 	lbi.bi $r10,[$fp],#0x1
   929f6:	84 46       	movi55 $r2,#6
   929f8:	40 1e 28 00 	add $r1,$fp,$r10
   929fc:	40 40 a8 00 	add $r4,$r1,$r10
   92a00:	80 a4       	mov55 $r5,$r4
   92a02:	42 55 08 73 	maddr32 $r5,$r10,$r2
   92a06:	f1 83       	swi37.sp $r1,[+#0xc]
   92a08:	96 00       	zeb33 $r0,$r0
   92a0a:	a6 a8       	lbi333 $r2,[$r5+#0x0]
   92a0c:	41 e2 a8 00 	add $lp,$r5,$r10
   92a10:	50 31 00 0b 	addi $r3,$r2,#11
   92a14:	4c 01 c0 06 	bne $r0,$r3,92a20 <ble_gap_event_handler+0x12e>
   92a18:	80 45       	mov55 $r2,$r5
   92a1a:	84 00       	movi55 $r0,#0
   92a1c:	80 3e       	mov55 $r1,$lp
   92a1e:	d5 0f       	j8 92a3c <ble_gap_event_handler+0x14a>
   92a20:	8c 51       	addi45 $r2,#17
   92a22:	4c 01 3f fb 	beq $r0,$r2,92a18 <ble_gap_event_handler+0x126>
   92a26:	00 0e 00 00 	lbi $r0,[$fp+#0x0]
   92a2a:	5a 08 01 f7 	bnec $r0,#1,92a18 <ble_gap_event_handler+0x126>
   92a2e:	48 00 00 74 	j 92b16 <ble_gap_event_handler+0x224>
   92a32:	08 31 00 01 	lbi.bi $r3,[$r2],#0x1
   92a36:	9c 01       	addi333 $r0,$r0,#1
   92a38:	98 4b       	add333 $r1,$r1,$r3
   92a3a:	96 00       	zeb33 $r0,$r0
   92a3c:	e2 0a       	slt45 $r0,$r10
   92a3e:	e9 fa       	bnezs8 92a32 <ble_gap_event_handler+0x140>
   92a40:	15 cf 80 04 	swi $fp,[$sp+#0x10]
   92a44:	80 61       	mov55 $r3,$r1
   92a46:	83 84       	mov55 $fp,$r4
   92a48:	85 20       	movi55 $r9,#0
   92a4a:	80 8a       	mov55 $r4,$r10
   92a4c:	b1 9e       	addri36.sp $r6,#0x78
   92a4e:	50 8f 80 7d 	addi $r8,$sp,#125
   92a52:	50 7f 80 89 	addi $r7,$sp,#137
   92a56:	81 5e       	mov55 $r10,$lp
   92a58:	f5 85       	swi37.sp $r5,[+#0x14]
   92a5a:	d5 2b       	j8 92ab0 <ble_gap_event_handler+0x1be>
   92a5c:	f0 03       	lwi37.sp $r0,[+#0xc]
   92a5e:	80 3c       	mov55 $r1,$fp
   92a60:	38 00 24 00 	lb $r0,[$r0+($r9<<#0x0)]
   92a64:	84 46       	movi55 $r2,#6
   92a66:	ae 34       	sbi333 $r0,[$r6+#0x4]
   92a68:	80 08       	mov55 $r0,$r8
   92a6a:	f4 81       	swi37.sp $r4,[+#0x4]
   92a6c:	f3 82       	swi37.sp $r3,[+#0x8]
   92a6e:	49 ff ea ed 	jal 90048 <memcpy>
   92a72:	f3 02       	lwi37.sp $r3,[+#0x8]
   92a74:	51 ce 00 06 	addi $fp,$fp,#6
   92a78:	38 11 a4 00 	lb $r1,[$r3+($r9<<#0x0)]
   92a7c:	10 13 00 0b 	sbi $r1,[$r6+#0xb]
   92a80:	f1 04       	lwi37.sp $r1,[+#0x10]
   92a82:	08 00 80 01 	lbi.bi $r0,[$r1],#0x1
   92a86:	f0 a1       	swi37.sp $r0,[+#0x84]
   92a88:	f1 84       	swi37.sp $r1,[+#0x10]
   92a8a:	f0 05       	lwi37.sp $r0,[+#0x14]
   92a8c:	80 2a       	mov55 $r1,$r10
   92a8e:	38 20 24 00 	lb $r2,[$r0+($r9<<#0x0)]
   92a92:	80 07       	mov55 $r0,$r7
   92a94:	10 23 00 10 	sbi $r2,[$r6+#0x10]
   92a98:	f3 82       	swi37.sp $r3,[+#0x8]
   92a9a:	49 ff ea d7 	jal 90048 <memcpy>
   92a9e:	00 03 00 10 	lbi $r0,[$r6+#0x10]
   92aa2:	8d 21       	addi45 $r9,#1
   92aa4:	89 40       	add45 $r10,$r0
   92aa6:	80 06       	mov55 $r0,$r6
   92aa8:	49 ff fb cb 	jal 9223e <bt_infom_ap>
   92aac:	f4 01       	lwi37.sp $r4,[+#0x4]
   92aae:	f3 02       	lwi37.sp $r3,[+#0x8]
   92ab0:	54 04 80 ff 	andi $r0,$r9,#0xff
   92ab4:	e2 04       	slt45 $r0,$r4
   92ab6:	e9 d3       	bnezs8 92a5c <ble_gap_event_handler+0x16a>
   92ab8:	d5 2f       	j8 92b16 <ble_gap_event_handler+0x224>
   92aba:	44 00 10 02 	movi $r0,#4098
   92abe:	b1 d2       	addri36.sp $r7,#0x48
   92ac0:	f0 92       	swi37.sp $r0,[+#0x48]
   92ac2:	9c 51       	addi333 $r1,$r2,#1
   92ac4:	b0 13       	addri36.sp $r0,#0x4c
   92ac6:	84 4b       	movi55 $r2,#11
   92ac8:	49 ff ea c0 	jal 90048 <memcpy>
   92acc:	d5 22       	j8 92b10 <ble_gap_event_handler+0x21e>
   92ace:	9c 11       	addi333 $r0,$r2,#1
   92ad0:	49 00 01 bd 	jal 92e4a <BLE_gap_sm_ltk_request>
   92ad4:	d5 21       	j8 92b16 <ble_gap_event_handler+0x224>
   92ad6:	9c 11       	addi333 $r0,$r2,#1
   92ad8:	49 00 01 cb 	jal 92e6e <BLE_gap_sm_read_public_key_complete>
   92adc:	d5 1d       	j8 92b16 <ble_gap_event_handler+0x224>
   92ade:	9c 11       	addi333 $r0,$r2,#1
   92ae0:	49 00 01 c3 	jal 92e66 <BLE_gap_sm_gen_dhkey_complete>
   92ae4:	d5 19       	j8 92b16 <ble_gap_event_handler+0x224>
   92ae6:	b1 c6       	addri36.sp $r7,#0x18
   92ae8:	44 00 10 01 	movi $r0,#4097
   92aec:	f0 86       	swi37.sp $r0,[+#0x18]
   92aee:	9d 91       	addi333 $r6,$r2,#1
   92af0:	a6 31       	lbi333 $r0,[$r6+#0x1]
   92af2:	a6 70       	lbi333 $r1,[$r6+#0x0]
   92af4:	40 00 20 08 	slli $r0,$r0,#8
   92af8:	98 01       	add333 $r0,$r0,$r1
   92afa:	96 01       	zeh33 $r0,$r0
   92afc:	ac 3a       	shi333 $r0,[$r7+#0x4]
   92afe:	a7 b2       	lbi333 $r6,[$r6+#0x2]
   92b00:	af be       	sbi333 $r6,[$r7+#0x6]
   92b02:	49 00 00 39 	jal 92b74 <ble_gap_link_GetIdx_ByHandle>
   92b06:	49 00 00 a9 	jal 92c58 <ble_gap_link_Del>
   92b0a:	a4 3a       	lhi333 $r0,[$r7+#0x4]
   92b0c:	49 00 01 52 	jal 92db0 <BLE_gap_sm_disconnected>
   92b10:	80 07       	mov55 $r0,$r7
   92b12:	49 ff fb 96 	jal 9223e <bt_infom_ap>
   92b16:	ed 08       	addi10.sp #264
   92b18:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00092b1a <ble_gap_link_GetAttr_OwnerType>:
   92b1a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92b1c:	44 10 00 3d 	movi $r1,#61
   92b20:	96 00       	zeb33 $r0,$r0
   92b22:	fe 0c       	mul33 $r0,$r1
   92b24:	3e 1f ca 84 	addi.gp $r1,#-13692
   92b28:	98 01       	add333 $r0,$r0,$r1
   92b2a:	00 00 00 14 	lbi $r0,[$r0+#0x14]
   92b2e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092b30 <ble_gap_link_GetAttr_OwnerAddr>:
   92b30:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92b32:	44 20 00 3d 	movi $r2,#61
   92b36:	96 00       	zeb33 $r0,$r0
   92b38:	fe 84       	mul33 $r2,$r0
   92b3a:	3e 0f ca 84 	addi.gp $r0,#-13692
   92b3e:	98 90       	add333 $r2,$r2,$r0
   92b40:	80 01       	mov55 $r0,$r1
   92b42:	50 11 00 15 	addi $r1,$r2,#21
   92b46:	84 46       	movi55 $r2,#6
   92b48:	49 ff ea 80 	jal 90048 <memcpy>
   92b4c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092b4e <ble_gap_link_GetAttr_Handle>:
   92b4e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92b50:	96 00       	zeb33 $r0,$r0
   92b52:	e6 10       	slti45 $r0,#16
   92b54:	e9 04       	bnezs8 92b5c <ble_gap_link_GetAttr_Handle+0xe>
   92b56:	44 00 ff ff 	movi $r0,#65535
   92b5a:	d5 0c       	j8 92b72 <ble_gap_link_GetAttr_Handle+0x24>
   92b5c:	44 10 00 3d 	movi $r1,#61
   92b60:	fe 0c       	mul33 $r0,$r1
   92b62:	3e 2f ca 84 	addi.gp $r2,#-13692
   92b66:	98 42       	add333 $r1,$r0,$r2
   92b68:	a6 09       	lbi333 $r0,[$r1+#0x1]
   92b6a:	a6 88       	lbi333 $r2,[$r1+#0x0]
   92b6c:	40 00 20 08 	slli $r0,$r0,#8
   92b70:	fe 17       	or33 $r0,$r2
   92b72:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092b74 <ble_gap_link_GetIdx_ByHandle>:
   92b74:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92b76:	84 20       	movi55 $r1,#0
   92b78:	96 c1       	zeh33 $r3,$r0
   92b7a:	44 40 00 3d 	movi $r4,#61
   92b7e:	3e 5f ca 84 	addi.gp $r5,#-13692
   92b82:	42 20 90 24 	mul $r2,$r1,$r4
   92b86:	98 95       	add333 $r2,$r2,$r5
   92b88:	a7 50       	lbi333 $r5,[$r2+#0x0]
   92b8a:	a6 91       	lbi333 $r2,[$r2+#0x1]
   92b8c:	96 08       	zeb33 $r0,$r1
   92b8e:	40 21 20 08 	slli $r2,$r2,#8
   92b92:	fe af       	or33 $r2,$r5
   92b94:	4c 21 80 07 	beq $r2,$r3,92ba2 <ble_gap_link_GetIdx_ByHandle+0x2e>
   92b98:	9c 49       	addi333 $r1,$r1,#1
   92b9a:	5a 18 10 f2 	bnec $r1,#16,92b7e <ble_gap_link_GetIdx_ByHandle+0xa>
   92b9e:	44 00 00 ff 	movi $r0,#255
   92ba2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092ba4 <ble_gap_link_GetAttr_BdAddr>:
   92ba4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92ba6:	44 10 00 3d 	movi $r1,#61
   92baa:	96 00       	zeb33 $r0,$r0
   92bac:	fe 0c       	mul33 $r0,$r1
   92bae:	3e 1f ca 84 	addi.gp $r1,#-13692
   92bb2:	98 01       	add333 $r0,$r0,$r1
   92bb4:	9c 04       	addi333 $r0,$r0,#4
   92bb6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092bb8 <ble_gap_link_GetAttr_BdAddrType>:
   92bb8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92bba:	44 10 00 3d 	movi $r1,#61
   92bbe:	96 00       	zeb33 $r0,$r0
   92bc0:	fe 0c       	mul33 $r0,$r1
   92bc2:	3e 1f ca 84 	addi.gp $r1,#-13692
   92bc6:	98 01       	add333 $r0,$r0,$r1
   92bc8:	a6 03       	lbi333 $r0,[$r0+#0x3]
   92bca:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092bcc <ble_gap_link_GetIdx_Empty>:
   92bcc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92bce:	3e 1f ca 97 	addi.gp $r1,#-13673
   92bd2:	84 00       	movi55 $r0,#0
   92bd4:	a6 88       	lbi333 $r2,[$r1+#0x0]
   92bd6:	c2 09       	beqz38 $r2,92be8 <ble_gap_link_GetIdx_Empty+0x1c>
   92bd8:	9c 01       	addi333 $r0,$r0,#1
   92bda:	96 00       	zeb33 $r0,$r0
   92bdc:	50 10 80 3d 	addi $r1,$r1,#61
   92be0:	5a 08 10 fa 	bnec $r0,#16,92bd4 <ble_gap_link_GetIdx_Empty+0x8>
   92be4:	44 00 00 ff 	movi $r0,#255
   92be8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092bea <ble_gap_link_SetAttr_Auth>:
   92bea:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92bec:	44 20 00 3d 	movi $r2,#61
   92bf0:	96 00       	zeb33 $r0,$r0
   92bf2:	fe 14       	mul33 $r0,$r2
   92bf4:	3e 2f ca 84 	addi.gp $r2,#-13692
   92bf8:	98 02       	add333 $r0,$r0,$r2
   92bfa:	10 10 00 11 	sbi $r1,[$r0+#0x11]
   92bfe:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092c00 <ble_gap_link_GetAttr_Auth>:
   92c00:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92c02:	44 10 00 3d 	movi $r1,#61
   92c06:	96 00       	zeb33 $r0,$r0
   92c08:	fe 0c       	mul33 $r0,$r1
   92c0a:	3e 1f ca 84 	addi.gp $r1,#-13692
   92c0e:	98 01       	add333 $r0,$r0,$r1
   92c10:	00 00 00 11 	lbi $r0,[$r0+#0x11]
   92c14:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092c16 <ble_gap_link_SetAttr_Enc>:
   92c16:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92c18:	44 20 00 3d 	movi $r2,#61
   92c1c:	96 00       	zeb33 $r0,$r0
   92c1e:	fe 14       	mul33 $r0,$r2
   92c20:	3e 2f ca 84 	addi.gp $r2,#-13692
   92c24:	98 02       	add333 $r0,$r0,$r2
   92c26:	10 10 00 12 	sbi $r1,[$r0+#0x12]
   92c2a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092c2c <ble_gap_link_GetAttr_Enc>:
   92c2c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92c2e:	44 10 00 3d 	movi $r1,#61
   92c32:	96 00       	zeb33 $r0,$r0
   92c34:	fe 0c       	mul33 $r0,$r1
   92c36:	3e 1f ca 84 	addi.gp $r1,#-13692
   92c3a:	98 01       	add333 $r0,$r0,$r1
   92c3c:	00 00 00 12 	lbi $r0,[$r0+#0x12]
   92c40:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092c42 <ble_gap_link_SetAttr_State>:
   92c42:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92c44:	44 20 00 3d 	movi $r2,#61
   92c48:	96 00       	zeb33 $r0,$r0
   92c4a:	fe 14       	mul33 $r0,$r2
   92c4c:	3e 2f ca 84 	addi.gp $r2,#-13692
   92c50:	98 02       	add333 $r0,$r0,$r2
   92c52:	10 10 00 13 	sbi $r1,[$r0+#0x13]
   92c56:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092c58 <ble_gap_link_Del>:
   92c58:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92c5a:	96 00       	zeb33 $r0,$r0
   92c5c:	84 41       	movi55 $r2,#1
   92c5e:	3c 3d f3 95 	lwi.gp $r3,[+#-12716]
   92c62:	40 21 00 0c 	sll $r2,$r2,$r0
   92c66:	fe 93       	not33 $r2,$r2
   92c68:	fe 9e       	and33 $r2,$r3
   92c6a:	3c 2f f3 95 	swi.gp $r2,[+#-12716]
   92c6e:	84 20       	movi55 $r1,#0
   92c70:	49 ff ff e9 	jal 92c42 <ble_gap_link_SetAttr_State>
   92c74:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092c76 <ble_gap_link_Add>:
   92c76:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92c78:	3c 4d f3 95 	lwi.gp $r4,[+#-12716]
   92c7c:	96 00       	zeb33 $r0,$r0
   92c7e:	84 61       	movi55 $r3,#1
   92c80:	40 31 80 0c 	sll $r3,$r3,$r0
   92c84:	fe e7       	or33 $r3,$r4
   92c86:	3c 3f f3 95 	swi.gp $r3,[+#-12716]
   92c8a:	96 48       	zeb33 $r1,$r1
   92c8c:	49 ff ff db 	jal 92c42 <ble_gap_link_SetAttr_State>
   92c90:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092c92 <ble_gap_link_GetAttr_Role>:
   92c92:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92c94:	44 10 00 3d 	movi $r1,#61
   92c98:	96 00       	zeb33 $r0,$r0
   92c9a:	fe 0c       	mul33 $r0,$r1
   92c9c:	3e 1f ca 84 	addi.gp $r1,#-13692
   92ca0:	98 01       	add333 $r0,$r0,$r1
   92ca2:	a6 02       	lbi333 $r0,[$r0+#0x2]
   92ca4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092ca6 <ble_gap_link_SetAttr_Data>:
   92ca6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92ca8:	44 20 00 3d 	movi $r2,#61
   92cac:	96 00       	zeb33 $r0,$r0
   92cae:	fe 14       	mul33 $r0,$r2
   92cb0:	3e 2f ca 84 	addi.gp $r2,#-13692
   92cb4:	98 02       	add333 $r0,$r0,$r2
   92cb6:	50 00 00 38 	addi $r0,$r0,#56
   92cba:	40 20 a0 09 	srli $r2,$r1,#8
   92cbe:	ae 41       	sbi333 $r1,[$r0+#0x1]
   92cc0:	ae 82       	sbi333 $r2,[$r0+#0x2]
   92cc2:	40 20 c0 09 	srli $r2,$r1,#16
   92cc6:	92 38       	srli45 $r1,#24
   92cc8:	ae 83       	sbi333 $r2,[$r0+#0x3]
   92cca:	ae 44       	sbi333 $r1,[$r0+#0x4]
   92ccc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092cce <ble_gap_link_GetAttr_Data>:
   92cce:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92cd0:	44 10 00 3d 	movi $r1,#61
   92cd4:	96 00       	zeb33 $r0,$r0
   92cd6:	fe 44       	mul33 $r1,$r0
   92cd8:	3e 0f ca 84 	addi.gp $r0,#-13692
   92cdc:	98 48       	add333 $r1,$r1,$r0
   92cde:	50 10 80 38 	addi $r1,$r1,#56
   92ce2:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   92ce4:	a6 c9       	lbi333 $r3,[$r1+#0x1]
   92ce6:	a6 8b       	lbi333 $r2,[$r1+#0x3]
   92ce8:	40 00 20 08 	slli $r0,$r0,#8
   92cec:	fe 1f       	or33 $r0,$r3
   92cee:	40 21 40 08 	slli $r2,$r2,#16
   92cf2:	fe 87       	or33 $r2,$r0
   92cf4:	a6 0c       	lbi333 $r0,[$r1+#0x4]
   92cf6:	40 00 60 08 	slli $r0,$r0,#24
   92cfa:	fe 17       	or33 $r0,$r2
   92cfc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092cfe <ble_gap_link_GetIdx_ByBdAddr>:
   92cfe:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   92d00:	84 c0       	movi55 $r6,#0
   92d02:	81 20       	mov55 $r9,$r0
   92d04:	44 80 00 3d 	movi $r8,#61
   92d08:	3e 0f ca 84 	addi.gp $r0,#-13692
   92d0c:	42 13 20 24 	mul $r1,$r6,$r8
   92d10:	98 48       	add333 $r1,$r1,$r0
   92d12:	9c 4c       	addi333 $r1,$r1,#4
   92d14:	80 09       	mov55 $r0,$r9
   92d16:	84 46       	movi55 $r2,#6
   92d18:	97 f0       	zeb33 $r7,$r6
   92d1a:	49 ff e9 8b 	jal 90030 <memcmp>
   92d1e:	c0 06       	beqz38 $r0,92d2a <ble_gap_link_GetIdx_ByBdAddr+0x2c>
   92d20:	9d b1       	addi333 $r6,$r6,#1
   92d22:	5a 68 10 f3 	bnec $r6,#16,92d08 <ble_gap_link_GetIdx_ByBdAddr+0xa>
   92d26:	44 70 00 ff 	movi $r7,#255
   92d2a:	80 07       	mov55 $r0,$r7
   92d2c:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00092d2e <ble_gap_link_Add_Ex>:
   92d2e:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   92d30:	80 e0       	mov55 $r7,$r0
   92d32:	81 02       	mov55 $r8,$r2
   92d34:	54 a0 80 ff 	andi $r10,$r1,#0xff
   92d38:	54 91 80 ff 	andi $r9,$r3,#0xff
   92d3c:	ca 09       	bnez38 $r2,92d4e <ble_gap_link_Add_Ex+0x20>
   92d3e:	9c 04       	addi333 $r0,$r0,#4
   92d40:	49 ff ff df 	jal 92cfe <ble_gap_link_GetIdx_ByBdAddr>
   92d44:	80 29       	mov55 $r1,$r9
   92d46:	80 c0       	mov55 $r6,$r0
   92d48:	49 ff ff 7d 	jal 92c42 <ble_gap_link_SetAttr_State>
   92d4c:	d5 19       	j8 92d7e <ble_gap_link_Add_Ex+0x50>
   92d4e:	49 ff ff 3f 	jal 92bcc <ble_gap_link_GetIdx_Empty>
   92d52:	80 c0       	mov55 $r6,$r0
   92d54:	5a 08 ff 04 	bnec $r0,#255,92d5c <ble_gap_link_Add_Ex+0x2e>
   92d58:	84 00       	movi55 $r0,#0
   92d5a:	d5 1d       	j8 92d94 <ble_gap_link_Add_Ex+0x66>
   92d5c:	80 29       	mov55 $r1,$r9
   92d5e:	49 ff ff 8c 	jal 92c76 <ble_gap_link_Add>
   92d62:	44 30 00 3d 	movi $r3,#61
   92d66:	3e 0f ca 84 	addi.gp $r0,#-13692
   92d6a:	fe f4       	mul33 $r3,$r6
   92d6c:	98 d8       	add333 $r3,$r3,$r0
   92d6e:	10 a1 80 14 	sbi $r10,[$r3+#0x14]
   92d72:	50 01 80 15 	addi $r0,$r3,#21
   92d76:	80 28       	mov55 $r1,$r8
   92d78:	84 46       	movi55 $r2,#6
   92d7a:	49 ff e9 67 	jal 90048 <memcpy>
   92d7e:	44 00 00 3d 	movi $r0,#61
   92d82:	3e 1f ca 84 	addi.gp $r1,#-13692
   92d86:	ff 84       	mul33 $r6,$r0
   92d88:	98 31       	add333 $r0,$r6,$r1
   92d8a:	fa 41       	movpi45 $r2,#0x11
   92d8c:	80 27       	mov55 $r1,$r7
   92d8e:	49 ff e9 5d 	jal 90048 <memcpy>
   92d92:	84 01       	movi55 $r0,#1
   92d94:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00092d96 <ble_gap_link_Is_ValidAddr>:
   92d96:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92d98:	49 ff ff b3 	jal 92cfe <ble_gap_link_GetIdx_ByBdAddr>
   92d9c:	56 00 00 ff 	xori $r0,$r0,#0xff
   92da0:	84 20       	movi55 $r1,#0
   92da2:	40 00 80 06 	slt $r0,$r1,$r0
   92da6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092da8 <BLE_gap_sm_init>:
   92da8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92daa:	49 00 0e 70 	jal 94a8a <sm_init>
   92dae:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092db0 <BLE_gap_sm_disconnected>:
   92db0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92db2:	96 01       	zeh33 $r0,$r0
   92db4:	49 ff fe e0 	jal 92b74 <ble_gap_link_GetIdx_ByHandle>
   92db8:	49 00 0f 7e 	jal 94cb4 <SM_LinkDisconnected>
   92dbc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092dbe <BLE_gap_sm_set_link_auth>:
   92dbe:	fc 31       	push25 $r8,#0x88    ! {$r6~$r8, $fp, $gp, $lp}
   92dc0:	81 00       	mov55 $r8,$r0
   92dc2:	49 ff ff 9e 	jal 92cfe <ble_gap_link_GetIdx_ByBdAddr>
   92dc6:	80 e0       	mov55 $r7,$r0
   92dc8:	5a 00 ff 18 	beqc $r0,#255,92df8 <BLE_gap_sm_set_link_auth+0x3a>
   92dcc:	80 08       	mov55 $r0,$r8
   92dce:	80 3f       	mov55 $r1,$sp
   92dd0:	80 df       	mov55 $r6,$sp
   92dd2:	49 00 14 ef 	jal 957b0 <sm_hal_flash_load_data>
   92dd6:	c0 11       	beqz38 $r0,92df8 <BLE_gap_sm_set_link_auth+0x3a>
   92dd8:	00 0f 80 13 	lbi $r0,[$sp+#0x13]
   92ddc:	84 20       	movi55 $r1,#0
   92dde:	40 10 80 06 	slt $r1,$r1,$r0
   92de2:	00 0f 80 11 	lbi $r0,[$sp+#0x11]
   92de6:	96 16       	bmski33 $r0,#0x2
   92de8:	c0 04       	beqz38 $r0,92df0 <BLE_gap_sm_set_link_auth+0x32>
   92dea:	58 10 80 04 	ori $r1,$r1,#0x4
   92dee:	96 48       	zeb33 $r1,$r1
   92df0:	80 07       	mov55 $r0,$r7
   92df2:	49 00 18 ae 	jal 95f4e <sm_hal_set_link_authenticated>
   92df6:	d5 02       	j8 92dfa <BLE_gap_sm_set_link_auth+0x3c>
   92df8:	84 00       	movi55 $r0,#0
   92dfa:	fc b1       	pop25 $r8,#0x88    ! {$r6~$r8, $fp, $gp, $lp}

00092dfc <BLE_gap_sm_encryption_change>:
   92dfc:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   92dfe:	80 c0       	mov55 $r6,$r0
   92e00:	a6 41       	lbi333 $r1,[$r0+#0x1]
   92e02:	a6 02       	lbi333 $r0,[$r0+#0x2]
   92e04:	40 00 20 08 	slli $r0,$r0,#8
   92e08:	fe 0f       	or33 $r0,$r1
   92e0a:	49 ff fe b5 	jal 92b74 <ble_gap_link_GetIdx_ByHandle>
   92e0e:	80 e0       	mov55 $r7,$r0
   92e10:	49 ff ff 41 	jal 92c92 <ble_gap_link_GetAttr_Role>
   92e14:	a6 b2       	lbi333 $r2,[$r6+#0x2]
   92e16:	a6 f1       	lbi333 $r3,[$r6+#0x1]
   92e18:	40 21 20 08 	slli $r2,$r2,#8
   92e1c:	fe 9f       	or33 $r2,$r3
   92e1e:	a6 70       	lbi333 $r1,[$r6+#0x0]
   92e20:	a6 f3       	lbi333 $r3,[$r6+#0x3]
   92e22:	81 00       	mov55 $r8,$r0
   92e24:	46 00 00 9f 	sethi $r0,#0x9f
   92e28:	58 00 09 b8 	ori $r0,$r0,#0x9b8
   92e2c:	49 00 3d 55 	jal 9a8d6 <printf>
   92e30:	5a 88 01 07 	bnec $r8,#1,92e3e <BLE_gap_sm_encryption_change+0x42>
   92e34:	80 07       	mov55 $r0,$r7
   92e36:	80 26       	mov55 $r1,$r6
   92e38:	49 00 1f 50 	jal 96cd8 <SM_Slave_EncryptionChange>
   92e3c:	d5 05       	j8 92e46 <BLE_gap_sm_encryption_change+0x4a>
   92e3e:	80 07       	mov55 $r0,$r7
   92e40:	80 26       	mov55 $r1,$r6
   92e42:	49 00 25 35 	jal 978ac <SM_Master_EncryptionChange>
   92e46:	84 01       	movi55 $r0,#1
   92e48:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00092e4a <BLE_gap_sm_ltk_request>:
   92e4a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92e4c:	a6 40       	lbi333 $r1,[$r0+#0x0]
   92e4e:	80 c0       	mov55 $r6,$r0
   92e50:	a6 01       	lbi333 $r0,[$r0+#0x1]
   92e52:	40 00 20 08 	slli $r0,$r0,#8
   92e56:	fe 0f       	or33 $r0,$r1
   92e58:	49 ff fe 8e 	jal 92b74 <ble_gap_link_GetIdx_ByHandle>
   92e5c:	80 26       	mov55 $r1,$r6
   92e5e:	49 00 1f f2 	jal 96e42 <SM_Slave_LTKRequest>
   92e62:	84 01       	movi55 $r0,#1
   92e64:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092e66 <BLE_gap_sm_gen_dhkey_complete>:
   92e66:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92e68:	49 00 13 dc 	jal 95620 <SM_CryptoTool_GenerateDHKeyComplete>
   92e6c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092e6e <BLE_gap_sm_read_public_key_complete>:
   92e6e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92e70:	49 00 0f e7 	jal 94e3e <SM_CryptoTool_ReadLocalP256PublicKeyComplete>
   92e74:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092e76 <l2cap_find_cidcb>:
   92e76:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92e78:	3e 2f c8 58 	addi.gp $r2,#-14248
   92e7c:	96 01       	zeh33 $r0,$r0
   92e7e:	84 20       	movi55 $r1,#0
   92e80:	a4 d0       	lhi333 $r3,[$r2+#0x0]
   92e82:	4c 30 40 07 	bne $r3,$r0,92e90 <l2cap_find_cidcb+0x1a>
   92e86:	94 4b       	slli333 $r1,$r1,#3
   92e88:	3e 2f c8 58 	addi.gp $r2,#-14248
   92e8c:	98 0a       	add333 $r0,$r1,$r2
   92e8e:	d5 07       	j8 92e9c <l2cap_find_cidcb+0x26>
   92e90:	9c 49       	addi333 $r1,$r1,#1
   92e92:	96 48       	zeb33 $r1,$r1
   92e94:	8c 48       	addi45 $r2,#8
   92e96:	5a 18 10 f5 	bnec $r1,#16,92e80 <l2cap_find_cidcb+0xa>
   92e9a:	84 00       	movi55 $r0,#0
   92e9c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092e9e <l2cap_notify>:
   92e9e:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   92ea0:	54 80 80 ff 	andi $r8,$r1,#0xff
   92ea4:	44 10 10 00 	movi $r1,#4096
   92ea8:	4c 00 c0 12 	bne $r0,$r1,92ecc <l2cap_notify+0x2e>
   92eac:	3e 6f c8 58 	addi.gp $r6,#-14248
   92eb0:	50 73 00 80 	addi $r7,$r6,#128
   92eb4:	81 3f       	mov55 $r9,$sp
   92eb6:	a4 30       	lhi333 $r0,[$r6+#0x0]
   92eb8:	c0 07       	beqz38 $r0,92ec6 <l2cap_notify+0x28>
   92eba:	a1 31       	lwi333 $r4,[$r6+#0x4]
   92ebc:	3a 24 8c 00 	lmw.bi $r2,[$r9],$r3,#0x0    ! {$r2~$r3}
   92ec0:	80 08       	mov55 $r0,$r8
   92ec2:	84 21       	movi55 $r1,#1
   92ec4:	dd 24       	jral5 $r4
   92ec6:	8c c8       	addi45 $r6,#8
   92ec8:	4c 63 ff f7 	bne $r6,$r7,92eb6 <l2cap_notify+0x18>
   92ecc:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

00092ece <l2cap_pdu_dispatch>:
   92ece:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   92ed0:	97 80       	zeb33 $r6,$r0
   92ed2:	96 09       	zeh33 $r0,$r1
   92ed4:	81 02       	mov55 $r8,$r2
   92ed6:	97 d9       	zeh33 $r7,$r3
   92ed8:	49 ff ff cf 	jal 92e76 <l2cap_find_cidcb>
   92edc:	c0 0a       	beqz38 $r0,92ef0 <l2cap_pdu_dispatch+0x22>
   92ede:	b7 1f       	swi450 $r8,[$sp]
   92ee0:	12 7f 80 02 	shi $r7,[$sp+#0x4]
   92ee4:	a1 41       	lwi333 $r5,[$r0+#0x4]
   92ee6:	3a 2f 8c 00 	lmw.bi $r2,[$sp],$r3,#0x0    ! {$r2~$r3}
   92eea:	80 06       	mov55 $r0,$r6
   92eec:	84 20       	movi55 $r1,#0
   92eee:	dd 25       	jral5 $r5
   92ef0:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

00092ef2 <BLE_l2cap_cid_register>:
   92ef2:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   92ef4:	97 c1       	zeh33 $r7,$r0
   92ef6:	84 00       	movi55 $r0,#0
   92ef8:	80 c1       	mov55 $r6,$r1
   92efa:	49 ff ff be 	jal 92e76 <l2cap_find_cidcb>
   92efe:	c0 04       	beqz38 $r0,92f06 <BLE_l2cap_cid_register+0x14>
   92f00:	ad c0       	shi333 $r7,[$r0+#0x0]
   92f02:	a9 81       	swi333 $r6,[$r0+#0x4]
   92f04:	84 01       	movi55 $r0,#1
   92f06:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00092f08 <l2cap_init>:
   92f08:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   92f0a:	84 20       	movi55 $r1,#0
   92f0c:	44 20 00 80 	movi $r2,#128
   92f10:	3e 0f c8 58 	addi.gp $r0,#-14248
   92f14:	49 ff e8 ba 	jal 90088 <memset>
   92f18:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00092f1a <l2cap_hci_fragment>:
   92f1a:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   92f1c:	97 d9       	zeh33 $r7,$r3
   92f1e:	96 00       	zeb33 $r0,$r0
   92f20:	83 82       	mov55 $fp,$r2
   92f22:	40 90 80 13 	zeh $r9,$r1
   92f26:	50 83 80 04 	addi $r8,$r7,#4
   92f2a:	49 ff fe 12 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   92f2e:	81 40       	mov55 $r10,$r0
   92f30:	80 08       	mov55 $r0,$r8
   92f32:	49 00 3c 51 	jal 9a7d4 <malloc>
   92f36:	80 c0       	mov55 $r6,$r0
   92f38:	af c0       	sbi333 $r7,[$r0+#0x0]
   92f3a:	40 03 a0 09 	srli $r0,$r7,#8
   92f3e:	ae 31       	sbi333 $r0,[$r6+#0x1]
   92f40:	10 93 00 02 	sbi $r9,[$r6+#0x2]
   92f44:	80 3c       	mov55 $r1,$fp
   92f46:	80 47       	mov55 $r2,$r7
   92f48:	93 28       	srli45 $r9,#8
   92f4a:	9c 34       	addi333 $r0,$r6,#4
   92f4c:	10 93 00 03 	sbi $r9,[$r6+#0x3]
   92f50:	49 ff e8 7c 	jal 90048 <memcpy>
   92f54:	80 0a       	mov55 $r0,$r10
   92f56:	80 26       	mov55 $r1,$r6
   92f58:	40 24 00 13 	zeh $r2,$r8
   92f5c:	49 00 2b 37 	jal 985ca <hci_send_acl>
   92f60:	80 06       	mov55 $r0,$r6
   92f62:	49 00 3b c0 	jal 9a6e2 <free>
   92f66:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00092f68 <l2cap_hci_recombine>:
   92f68:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   92f6a:	40 80 00 13 	zeh $r8,$r0
   92f6e:	54 04 0f ff 	andi $r0,$r8,#0xfff
   92f72:	81 22       	mov55 $r9,$r2
   92f74:	97 c9       	zeh33 $r7,$r1
   92f76:	49 ff fd ff 	jal 92b74 <ble_gap_link_GetIdx_ByHandle>
   92f7a:	81 40       	mov55 $r10,$r0
   92f7c:	5a 08 ff 04 	bnec $r0,#255,92f84 <l2cap_hci_recombine+0x1c>
   92f80:	48 00 00 dd 	j 9313a <l2cap_hci_recombine+0x1d2>
   92f84:	93 0c       	srli45 $r8,#12
   92f86:	49 ff fe a4 	jal 92cce <ble_gap_link_GetAttr_Data>
   92f8a:	54 84 00 03 	andi $r8,$r8,#0x3
   92f8e:	80 c0       	mov55 $r6,$r0
   92f90:	85 e2       	movi55 $r15,#2
   92f92:	4c 87 c0 6e 	bne $r8,$r15,9306e <l2cap_hci_recombine+0x106>
   92f96:	00 04 80 00 	lbi $r0,[$r9+#0x0]
   92f9a:	00 84 80 01 	lbi $r8,[$r9+#0x1]
   92f9e:	00 24 80 02 	lbi $r2,[$r9+#0x2]
   92fa2:	01 c4 80 03 	lbi $fp,[$r9+#0x3]
   92fa6:	4e 72 00 ca 	beqz $r7,9313a <l2cap_hci_recombine+0x1d2>
   92faa:	40 84 20 08 	slli $r8,$r8,#8
   92fae:	89 00       	add45 $r8,$r0
   92fb0:	40 84 00 13 	zeh $r8,$r8
   92fb4:	4e 82 00 c3 	beqz $r8,9313a <l2cap_hci_recombine+0x1d2>
   92fb8:	9e 3c       	subi333 $r0,$r7,#4
   92fba:	f0 81       	swi37.sp $r0,[+#0x4]
   92fbc:	e1 00       	slts45 $r8,$r0
   92fbe:	4e f3 00 be 	bnez $r15,9313a <l2cap_hci_recombine+0x1d2>
   92fc2:	c6 17       	beqz38 $r6,92ff0 <l2cap_hci_recombine+0x88>
   92fc4:	a6 37       	lbi333 $r0,[$r6+#0x7]
   92fc6:	a6 f6       	lbi333 $r3,[$r6+#0x6]
   92fc8:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   92fcc:	40 00 20 08 	slli $r0,$r0,#8
   92fd0:	fe 1f       	or33 $r0,$r3
   92fd2:	40 10 c0 08 	slli $r1,$r1,#16
   92fd6:	fe 47       	or33 $r1,$r0
   92fd8:	00 03 00 09 	lbi $r0,[$r6+#0x9]
   92fdc:	b6 5f       	swi450 $r2,[$sp]
   92fde:	40 00 60 08 	slli $r0,$r0,#24
   92fe2:	fe 0f       	or33 $r0,$r1
   92fe4:	49 00 3b 7f 	jal 9a6e2 <free>
   92fe8:	80 06       	mov55 $r0,$r6
   92fea:	49 00 3b 7c 	jal 9a6e2 <free>
   92fee:	b4 5f       	lwi450 $r2,[$sp]
   92ff0:	41 ce 20 08 	slli $fp,$fp,#8
   92ff4:	41 c1 70 00 	add $fp,$r2,$fp
   92ff8:	9e 3b       	subi333 $r0,$r7,#3
   92ffa:	41 ce 00 13 	zeh $fp,$fp
   92ffe:	8d 24       	addi45 $r9,#4
   93000:	e1 00       	slts45 $r8,$r0
   93002:	e9 2f       	bnezs8 93060 <l2cap_hci_recombine+0xf8>
   93004:	84 0a       	movi55 $r0,#10
   93006:	49 00 3b e7 	jal 9a7d4 <malloc>
   9300a:	80 c0       	mov55 $r6,$r0
   9300c:	84 20       	movi55 $r1,#0
   9300e:	84 4a       	movi55 $r2,#10
   93010:	49 ff e8 3c 	jal 90088 <memset>
   93014:	11 c3 00 00 	sbi $fp,[$r6+#0x0]
   93018:	40 04 20 09 	srli $r0,$r8,#8
   9301c:	41 ce 20 09 	srli $fp,$fp,#8
   93020:	ae 33       	sbi333 $r0,[$r6+#0x3]
   93022:	11 c3 00 01 	sbi $fp,[$r6+#0x1]
   93026:	10 83 00 02 	sbi $r8,[$r6+#0x2]
   9302a:	80 08       	mov55 $r0,$r8
   9302c:	49 00 3b d4 	jal 9a7d4 <malloc>
   93030:	40 10 20 09 	srli $r1,$r0,#8
   93034:	ae 77       	sbi333 $r1,[$r6+#0x7]
   93036:	40 30 60 09 	srli $r3,$r0,#24
   9303a:	40 10 40 09 	srli $r1,$r0,#16
   9303e:	10 13 00 08 	sbi $r1,[$r6+#0x8]
   93042:	ae 36       	sbi333 $r0,[$r6+#0x6]
   93044:	10 33 00 09 	sbi $r3,[$r6+#0x9]
   93048:	9f fc       	subi333 $r7,$r7,#4
   9304a:	f2 01       	lwi37.sp $r2,[+#0x4]
   9304c:	80 29       	mov55 $r1,$r9
   9304e:	97 f9       	zeh33 $r7,$r7
   93050:	49 ff e7 fc 	jal 90048 <memcpy>
   93054:	af f4       	sbi333 $r7,[$r6+#0x4]
   93056:	92 e8       	srli45 $r7,#8
   93058:	af f5       	sbi333 $r7,[$r6+#0x5]
   9305a:	80 0a       	mov55 $r0,$r10
   9305c:	80 26       	mov55 $r1,$r6
   9305e:	d5 6c       	j8 93136 <l2cap_hci_recombine+0x1ce>
   93060:	80 0a       	mov55 $r0,$r10
   93062:	80 3c       	mov55 $r1,$fp
   93064:	80 49       	mov55 $r2,$r9
   93066:	80 68       	mov55 $r3,$r8
   93068:	49 ff ff 33 	jal 92ece <l2cap_pdu_dispatch>
   9306c:	d5 67       	j8 9313a <l2cap_hci_recombine+0x1d2>
   9306e:	5a 88 01 66 	bnec $r8,#1,9313a <l2cap_hci_recombine+0x1d2>
   93072:	c0 64       	beqz38 $r0,9313a <l2cap_hci_recombine+0x1d2>
   93074:	c7 63       	beqz38 $r7,9313a <l2cap_hci_recombine+0x1d2>
   93076:	a6 75       	lbi333 $r1,[$r6+#0x5]
   93078:	a6 04       	lbi333 $r0,[$r0+#0x4]
   9307a:	a6 b3       	lbi333 $r2,[$r6+#0x3]
   9307c:	40 10 a0 08 	slli $r1,$r1,#8
   93080:	a6 f2       	lbi333 $r3,[$r6+#0x2]
   93082:	fe 47       	or33 $r1,$r0
   93084:	40 21 20 08 	slli $r2,$r2,#8
   93088:	98 39       	add333 $r0,$r7,$r1
   9308a:	fe 9f       	or33 $r2,$r3
   9308c:	e0 40       	slts45 $r2,$r0
   9308e:	e9 56       	bnezs8 9313a <l2cap_hci_recombine+0x1d2>
   93090:	a6 f7       	lbi333 $r3,[$r6+#0x7]
   93092:	a7 36       	lbi333 $r4,[$r6+#0x6]
   93094:	00 23 00 08 	lbi $r2,[$r6+#0x8]
   93098:	00 03 00 09 	lbi $r0,[$r6+#0x9]
   9309c:	40 31 a0 08 	slli $r3,$r3,#8
   930a0:	fe e7       	or33 $r3,$r4
   930a2:	40 21 40 08 	slli $r2,$r2,#16
   930a6:	fe 9f       	or33 $r2,$r3
   930a8:	40 00 60 08 	slli $r0,$r0,#24
   930ac:	fe 17       	or33 $r0,$r2
   930ae:	98 01       	add333 $r0,$r0,$r1
   930b0:	80 47       	mov55 $r2,$r7
   930b2:	80 29       	mov55 $r1,$r9
   930b4:	49 ff e7 ca 	jal 90048 <memcpy>
   930b8:	a6 f5       	lbi333 $r3,[$r6+#0x5]
   930ba:	a6 34       	lbi333 $r0,[$r6+#0x4]
   930bc:	40 31 a0 08 	slli $r3,$r3,#8
   930c0:	fe c7       	or33 $r3,$r0
   930c2:	99 fb       	add333 $r7,$r7,$r3
   930c4:	96 f9       	zeh33 $r3,$r7
   930c6:	40 01 a0 09 	srli $r0,$r3,#8
   930ca:	ae 35       	sbi333 $r0,[$r6+#0x5]
   930cc:	a6 33       	lbi333 $r0,[$r6+#0x3]
   930ce:	a6 72       	lbi333 $r1,[$r6+#0x2]
   930d0:	40 00 20 08 	slli $r0,$r0,#8
   930d4:	fe 0f       	or33 $r0,$r1
   930d6:	ae f4       	sbi333 $r3,[$r6+#0x4]
   930d8:	4c 30 40 31 	bne $r3,$r0,9313a <l2cap_hci_recombine+0x1d2>
   930dc:	a6 37       	lbi333 $r0,[$r6+#0x7]
   930de:	a6 b6       	lbi333 $r2,[$r6+#0x6]
   930e0:	00 43 00 08 	lbi $r4,[$r6+#0x8]
   930e4:	40 00 20 08 	slli $r0,$r0,#8
   930e8:	fe 17       	or33 $r0,$r2
   930ea:	a6 71       	lbi333 $r1,[$r6+#0x1]
   930ec:	00 23 00 09 	lbi $r2,[$r6+#0x9]
   930f0:	a7 70       	lbi333 $r5,[$r6+#0x0]
   930f2:	40 42 40 08 	slli $r4,$r4,#16
   930f6:	ff 07       	or33 $r4,$r0
   930f8:	40 10 a0 08 	slli $r1,$r1,#8
   930fc:	40 21 60 08 	slli $r2,$r2,#24
   93100:	fe 6f       	or33 $r1,$r5
   93102:	fe a7       	or33 $r2,$r4
   93104:	80 0a       	mov55 $r0,$r10
   93106:	49 ff fe e4 	jal 92ece <l2cap_pdu_dispatch>
   9310a:	a6 37       	lbi333 $r0,[$r6+#0x7]
   9310c:	a6 b6       	lbi333 $r2,[$r6+#0x6]
   9310e:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   93112:	40 00 20 08 	slli $r0,$r0,#8
   93116:	fe 17       	or33 $r0,$r2
   93118:	40 10 c0 08 	slli $r1,$r1,#16
   9311c:	fe 47       	or33 $r1,$r0
   9311e:	00 03 00 09 	lbi $r0,[$r6+#0x9]
   93122:	40 00 60 08 	slli $r0,$r0,#24
   93126:	fe 0f       	or33 $r0,$r1
   93128:	49 00 3a dd 	jal 9a6e2 <free>
   9312c:	80 06       	mov55 $r0,$r6
   9312e:	49 00 3a da 	jal 9a6e2 <free>
   93132:	80 0a       	mov55 $r0,$r10
   93134:	84 20       	movi55 $r1,#0
   93136:	49 ff fd b8 	jal 92ca6 <ble_gap_link_SetAttr_Data>
   9313a:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

0009313c <l2cap_lesig_error_rsp>:
   9313c:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   9313e:	96 d1       	zeh33 $r3,$r2
   93140:	10 1f 80 01 	sbi $r1,[$sp+#0x1]
   93144:	84 22       	movi55 $r1,#2
   93146:	10 1f 80 02 	sbi $r1,[$sp+#0x2]
   9314a:	10 3f 80 04 	sbi $r3,[$sp+#0x4]
   9314e:	84 20       	movi55 $r1,#0
   93150:	92 68       	srli45 $r3,#8
   93152:	84 81       	movi55 $r4,#1
   93154:	10 1f 80 03 	sbi $r1,[$sp+#0x3]
   93158:	10 3f 80 05 	sbi $r3,[$sp+#0x5]
   9315c:	80 5f       	mov55 $r2,$sp
   9315e:	84 25       	movi55 $r1,#5
   93160:	84 66       	movi55 $r3,#6
   93162:	96 00       	zeb33 $r0,$r0
   93164:	10 4f 80 00 	sbi $r4,[$sp+#0x0]
   93168:	49 ff fe d9 	jal 92f1a <l2cap_hci_fragment>
   9316c:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

0009316e <l2cap_lesig_conn_param_update_req>:
   9316e:	fc 22       	push25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}
   93170:	b1 81       	addri36.sp $r6,#0x4
   93172:	97 c0       	zeb33 $r7,$r0
   93174:	fa 02       	movpi45 $r0,#0x12
   93176:	ae 30       	sbi333 $r0,[$r6+#0x0]
   93178:	84 01       	movi55 $r0,#1
   9317a:	ae 31       	sbi333 $r0,[$r6+#0x1]
   9317c:	84 08       	movi55 $r0,#8
   9317e:	ae 32       	sbi333 $r0,[$r6+#0x2]
   93180:	84 00       	movi55 $r0,#0
   93182:	ae 33       	sbi333 $r0,[$r6+#0x3]
   93184:	84 48       	movi55 $r2,#8
   93186:	b0 02       	addri36.sp $r0,#0x8
   93188:	49 ff e7 60 	jal 90048 <memcpy>
   9318c:	80 07       	mov55 $r0,$r7
   9318e:	84 25       	movi55 $r1,#5
   93190:	80 46       	mov55 $r2,$r6
   93192:	84 6c       	movi55 $r3,#12
   93194:	49 ff fe c3 	jal 92f1a <l2cap_hci_fragment>
   93198:	fc a2       	pop25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}

0009319a <l2cap_lesig_init>:
   9319a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9319c:	46 10 00 93 	sethi $r1,#0x93
   931a0:	58 10 81 ac 	ori $r1,$r1,#0x1ac
   931a4:	84 05       	movi55 $r0,#5
   931a6:	49 ff fe a6 	jal 92ef2 <BLE_l2cap_cid_register>
   931aa:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000931ac <le_sig_cid_evt_cb>:
   931ac:	fc 4d       	push25 $r10,#0x68    ! {$r6~$r10, $fp, $gp, $lp}
   931ae:	3a 2f 8c 20 	smw.bi $r2,[$sp],$r3,#0x0    ! {$r2~$r3}
   931b2:	81 21       	mov55 $r9,$r1
   931b4:	97 c0       	zeb33 $r7,$r0
   931b6:	02 8f 80 02 	lhi $r8,[$sp+#0x4]
   931ba:	80 c2       	mov55 $r6,$r2
   931bc:	4e 93 00 4a 	bnez $r9,93250 <le_sig_cid_evt_cb+0xa4>
   931c0:	5a 88 0c 22 	bnec $r8,#12,93204 <le_sig_cid_evt_cb+0x58>
   931c4:	a6 10       	lbi333 $r0,[$r2+#0x0]
   931c6:	5a 08 12 40 	bnec $r0,#18,93246 <le_sig_cid_evt_cb+0x9a>
   931ca:	80 07       	mov55 $r0,$r7
   931cc:	49 ff fd 63 	jal 92c92 <ble_gap_link_GetAttr_Role>
   931d0:	5a 08 01 06 	bnec $r0,#1,931dc <le_sig_cid_evt_cb+0x30>
   931d4:	80 07       	mov55 $r0,$r7
   931d6:	a6 71       	lbi333 $r1,[$r6+#0x1]
   931d8:	80 49       	mov55 $r2,$r9
   931da:	d5 39       	j8 9324c <le_sig_cid_evt_cb+0xa0>
   931dc:	50 9f 80 38 	addi $r9,$sp,#56
   931e0:	44 00 10 04 	movi $r0,#4100
   931e4:	f0 8e       	swi37.sp $r0,[+#0x38]
   931e6:	80 07       	mov55 $r0,$r7
   931e8:	49 ff fc b3 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   931ec:	12 04 80 02 	shi $r0,[$r9+#0x4]
   931f0:	9c 74       	addi333 $r1,$r6,#4
   931f2:	a6 31       	lbi333 $r0,[$r6+#0x1]
   931f4:	80 48       	mov55 $r2,$r8
   931f6:	12 04 80 03 	shi $r0,[$r9+#0x6]
   931fa:	b0 10       	addri36.sp $r0,#0x40
   931fc:	49 ff e7 26 	jal 90048 <memcpy>
   93200:	80 09       	mov55 $r0,$r9
   93202:	d5 1f       	j8 93240 <le_sig_cid_evt_cb+0x94>
   93204:	5a 88 06 21 	bnec $r8,#6,93246 <le_sig_cid_evt_cb+0x9a>
   93208:	a6 10       	lbi333 $r0,[$r2+#0x0]
   9320a:	5a 08 13 1e 	bnec $r0,#19,93246 <le_sig_cid_evt_cb+0x9a>
   9320e:	9d 94       	addi333 $r6,$r2,#4
   93210:	a6 30       	lbi333 $r0,[$r6+#0x0]
   93212:	c0 1f       	beqz38 $r0,93250 <le_sig_cid_evt_cb+0xa4>
   93214:	50 8f 80 08 	addi $r8,$sp,#8
   93218:	44 00 10 02 	movi $r0,#4098
   9321c:	f0 82       	swi37.sp $r0,[+#0x8]
   9321e:	80 07       	mov55 $r0,$r7
   93220:	a7 b0       	lbi333 $r6,[$r6+#0x0]
   93222:	10 64 00 04 	sbi $r6,[$r8+#0x4]
   93226:	49 ff fc 94 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   9322a:	f1 03       	lwi37.sp $r1,[+#0xc]
   9322c:	46 2f f0 00 	sethi $r2,#0xff000
   93230:	58 21 00 ff 	ori $r2,$r2,#0xff
   93234:	40 00 20 08 	slli $r0,$r0,#8
   93238:	fe 56       	and33 $r1,$r2
   9323a:	fe 0f       	or33 $r0,$r1
   9323c:	f0 83       	swi37.sp $r0,[+#0xc]
   9323e:	80 08       	mov55 $r0,$r8
   93240:	49 ff f7 ff 	jal 9223e <bt_infom_ap>
   93244:	d5 06       	j8 93250 <le_sig_cid_evt_cb+0xa4>
   93246:	a6 71       	lbi333 $r1,[$r6+#0x1]
   93248:	80 07       	mov55 $r0,$r7
   9324a:	84 40       	movi55 $r2,#0
   9324c:	49 ff ff 78 	jal 9313c <l2cap_lesig_error_rsp>
   93250:	fc cd       	pop25 $r10,#0x68    ! {$r6~$r10, $fp, $gp, $lp}

00093252 <ATT_UnknownPduHadler>:
   93252:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   93254:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00093256 <ATT_transaction_timeout_cb>:
   93256:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   93258:	46 10 01 01 	sethi $r1,#0x101
   9325c:	84 41       	movi55 $r2,#1
   9325e:	96 1f       	fexti33 $r0,#0x3
   93260:	40 01 00 0c 	sll $r0,$r2,$r0
   93264:	3c 23 e9 7c 	lhi.gp $r2,[+#-11528]
   93268:	fe 17       	or33 $r0,$r2
   9326a:	3c 0b e9 7c 	shi.gp $r0,[+#-11528]
   9326e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00093270 <ATT_is_in_transaction>:
   93270:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   93272:	3c 13 e9 7b 	lhi.gp $r1,[+#-11530]
   93276:	96 1f       	fexti33 $r0,#0x3
   93278:	40 00 80 0e 	sra $r0,$r1,$r0
   9327c:	96 04       	xlsb33 $r0,$r0
   9327e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00093280 <ATT_BinarySearchIndexByHandle>:
   93280:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   93282:	96 41       	zeh33 $r1,$r0
   93284:	3c 33 e9 7d 	lhi.gp $r3,[+#-11526]
   93288:	e2 23       	slt45 $r1,$r3
   9328a:	e8 0e       	beqzs8 932a6 <ATT_BinarySearchIndexByHandle+0x26>
   9328c:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   93290:	38 20 06 02 	lw $r2,[$r0+($r1<<#0x2)]
   93294:	00 01 00 13 	lbi $r0,[$r2+#0x13]
   93298:	00 41 00 12 	lbi $r4,[$r2+#0x12]
   9329c:	40 00 20 08 	slli $r0,$r0,#8
   932a0:	fe 27       	or33 $r0,$r4
   932a2:	4c 00 80 1d 	beq $r0,$r1,932dc <ATT_BinarySearchIndexByHandle+0x5c>
   932a6:	9e d9       	subi333 $r3,$r3,#1
   932a8:	3c 4d f4 b3 	lwi.gp $r4,[+#-11572]
   932ac:	96 d9       	zeh33 $r3,$r3
   932ae:	84 40       	movi55 $r2,#0
   932b0:	98 1a       	add333 $r0,$r3,$r2
   932b2:	92 01       	srli45 $r0,#1
   932b4:	38 52 02 02 	lw $r5,[$r4+($r0<<#0x2)]
   932b8:	00 62 80 12 	lbi $r6,[$r5+#0x12]
   932bc:	00 52 80 13 	lbi $r5,[$r5+#0x13]
   932c0:	40 52 a0 08 	slli $r5,$r5,#8
   932c4:	ff 77       	or33 $r5,$r6
   932c6:	d1 0b       	beqs38 $r1,932dc <ATT_BinarySearchIndexByHandle+0x5c>
   932c8:	e2 a1       	slt45 $r5,$r1
   932ca:	e8 04       	beqzs8 932d2 <ATT_BinarySearchIndexByHandle+0x52>
   932cc:	9c 01       	addi333 $r0,$r0,#1
   932ce:	96 81       	zeh33 $r2,$r0
   932d0:	d5 03       	j8 932d6 <ATT_BinarySearchIndexByHandle+0x56>
   932d2:	9e 01       	subi333 $r0,$r0,#1
   932d4:	96 c1       	zeh33 $r3,$r0
   932d6:	e2 62       	slt45 $r3,$r2
   932d8:	e8 ec       	beqzs8 932b0 <ATT_BinarySearchIndexByHandle+0x30>
   932da:	84 00       	movi55 $r0,#0
   932dc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000932de <ATT_CheckHandle>:
   932de:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   932e0:	a6 80       	lbi333 $r2,[$r0+#0x0]
   932e2:	96 49       	zeh33 $r1,$r1
   932e4:	ca 08       	bnez38 $r2,932f4 <ATT_CheckHandle+0x16>
   932e6:	c1 05       	beqz38 $r1,932f0 <ATT_CheckHandle+0x12>
   932e8:	3c 23 e9 7d 	lhi.gp $r2,[+#-11526]
   932ec:	e2 41       	slt45 $r2,$r1
   932ee:	e8 03       	beqzs8 932f4 <ATT_CheckHandle+0x16>
   932f0:	84 21       	movi55 $r1,#1
   932f2:	ae 40       	sbi333 $r1,[$r0+#0x0]
   932f4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000932f6 <ATT_CALLBACK>:
   932f6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   932f8:	97 01       	zeh33 $r4,$r0
   932fa:	96 08       	zeb33 $r0,$r1
   932fc:	96 50       	zeb33 $r1,$r2
   932fe:	3c 2d f4 b3 	lwi.gp $r2,[+#-11572]
   93302:	38 31 12 02 	lw $r3,[$r2+($r4<<#0x2)]
   93306:	a7 5d       	lbi333 $r5,[$r3+#0x5]
   93308:	a6 9c       	lbi333 $r2,[$r3+#0x4]
   9330a:	40 52 a0 08 	slli $r5,$r5,#8
   9330e:	ff 57       	or33 $r5,$r2
   93310:	a6 9e       	lbi333 $r2,[$r3+#0x6]
   93312:	a6 df       	lbi333 $r3,[$r3+#0x7]
   93314:	40 21 40 08 	slli $r2,$r2,#16
   93318:	fe af       	or33 $r2,$r5
   9331a:	40 31 e0 08 	slli $r3,$r3,#24
   9331e:	fe d7       	or33 $r3,$r2
   93320:	c3 03       	beqz38 $r3,93326 <ATT_CALLBACK+0x30>
   93322:	80 44       	mov55 $r2,$r4
   93324:	dd 23       	jral5 $r3
   93326:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00093328 <ATT_ReturnGroupEndIndex>:
   93328:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9332a:	96 40       	zeb33 $r1,$r0
   9332c:	3c 2d f4 b3 	lwi.gp $r2,[+#-11572]
   93330:	38 01 06 02 	lw $r0,[$r2+($r1<<#0x2)]
   93334:	00 30 00 08 	lbi $r3,[$r0+#0x8]
   93338:	00 00 00 09 	lbi $r0,[$r0+#0x9]
   9333c:	40 00 20 08 	slli $r0,$r0,#8
   93340:	fe 1f       	or33 $r0,$r3
   93342:	50 00 58 00 	addi $r0,$r0,#-10240
   93346:	96 01       	zeh33 $r0,$r0
   93348:	e6 02       	slti45 $r0,#2
   9334a:	e9 03       	bnezs8 93350 <ATT_ReturnGroupEndIndex+0x28>
   9334c:	84 00       	movi55 $r0,#0
   9334e:	d5 1f       	j8 9338c <ATT_ReturnGroupEndIndex+0x64>
   93350:	3c 33 e9 7d 	lhi.gp $r3,[+#-11526]
   93354:	9c 09       	addi333 $r0,$r1,#1
   93356:	96 00       	zeb33 $r0,$r0
   93358:	9f 19       	subi333 $r4,$r3,#1
   9335a:	d5 16       	j8 93386 <ATT_ReturnGroupEndIndex+0x5e>
   9335c:	38 51 02 02 	lw $r5,[$r2+($r0<<#0x2)]
   93360:	00 62 80 08 	lbi $r6,[$r5+#0x8]
   93364:	00 52 80 09 	lbi $r5,[$r5+#0x9]
   93368:	40 52 a0 08 	slli $r5,$r5,#8
   9336c:	ff 77       	or33 $r5,$r6
   9336e:	50 52 d8 00 	addi $r5,$r5,#-10240
   93372:	97 69       	zeh33 $r5,$r5
   93374:	e6 a2       	slti45 $r5,#2
   93376:	e8 04       	beqzs8 9337e <ATT_ReturnGroupEndIndex+0x56>
   93378:	9e 01       	subi333 $r0,$r0,#1
   9337a:	96 00       	zeb33 $r0,$r0
   9337c:	d5 08       	j8 9338c <ATT_ReturnGroupEndIndex+0x64>
   9337e:	e0 04       	slts45 $r0,$r4
   93380:	e8 06       	beqzs8 9338c <ATT_ReturnGroupEndIndex+0x64>
   93382:	9c 01       	addi333 $r0,$r0,#1
   93384:	96 00       	zeb33 $r0,$r0
   93386:	e2 03       	slt45 $r0,$r3
   93388:	e9 ea       	bnezs8 9335c <ATT_ReturnGroupEndIndex+0x34>
   9338a:	80 01       	mov55 $r0,$r1
   9338c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009338e <ATT_SetU16LE>:
   9338e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   93390:	96 49       	zeh33 $r1,$r1
   93392:	ae 40       	sbi333 $r1,[$r0+#0x0]
   93394:	92 28       	srli45 $r1,#8
   93396:	ae 41       	sbi333 $r1,[$r0+#0x1]
   93398:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009339a <ATT_GetU16LE>:
   9339a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9339c:	a6 81       	lbi333 $r2,[$r0+#0x1]
   9339e:	a6 40       	lbi333 $r1,[$r0+#0x0]
   933a0:	40 21 20 08 	slli $r2,$r2,#8
   933a4:	98 11       	add333 $r0,$r2,$r1
   933a6:	96 01       	zeh33 $r0,$r0
   933a8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000933aa <BLE_att_get_attribute_length>:
   933aa:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   933ac:	3c 13 e9 7d 	lhi.gp $r1,[+#-11526]
   933b0:	96 01       	zeh33 $r0,$r0
   933b2:	e2 01       	slt45 $r0,$r1
   933b4:	e9 04       	bnezs8 933bc <BLE_att_get_attribute_length+0x12>
   933b6:	44 00 ff ff 	movi $r0,#65535
   933ba:	d5 0c       	j8 933d2 <BLE_att_get_attribute_length+0x28>
   933bc:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   933c0:	38 10 82 02 	lw $r1,[$r1+($r0<<#0x2)]
   933c4:	00 00 80 0f 	lbi $r0,[$r1+#0xf]
   933c8:	00 20 80 0e 	lbi $r2,[$r1+#0xe]
   933cc:	40 00 20 08 	slli $r0,$r0,#8
   933d0:	fe 17       	or33 $r0,$r2
   933d2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000933d4 <BLE_att_set_default_mtu>:
   933d4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   933d6:	3c 0b e3 5d 	shi.gp $r0,[+#-14662]
   933da:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000933dc <ATT_ConvertToUUID128>:
   933dc:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   933de:	97 c8       	zeb33 $r7,$r1
   933e0:	81 00       	mov55 $r8,$r0
   933e2:	80 c2       	mov55 $r6,$r2
   933e4:	5a 78 10 07 	bnec $r7,#16,933f2 <ATT_ConvertToUUID128+0x16>
   933e8:	80 22       	mov55 $r1,$r2
   933ea:	80 47       	mov55 $r2,$r7
   933ec:	49 ff e6 2e 	jal 90048 <memcpy>
   933f0:	d5 10       	j8 93410 <ATT_ConvertToUUID128+0x34>
   933f2:	46 10 00 9f 	sethi $r1,#0x9f
   933f6:	58 10 84 b0 	ori $r1,$r1,#0x4b0
   933fa:	fa 40       	movpi45 $r2,#0x10
   933fc:	49 ff e6 26 	jal 90048 <memcpy>
   93400:	5a 78 02 05 	bnec $r7,#2,9340a <ATT_ConvertToUUID128+0x2e>
   93404:	12 64 00 06 	shi $r6,[$r8+#0xc]
   93408:	d5 04       	j8 93410 <ATT_ConvertToUUID128+0x34>
   9340a:	b4 c6       	lwi450 $r6,[$r6]
   9340c:	14 64 00 03 	swi $r6,[$r8+#0xc]
   93410:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00093412 <ATT_ReleasePWQ>:
   93412:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   93414:	97 c0       	zeb33 $r7,$r0
   93416:	3e 0f c8 d8 	addi.gp $r0,#-14120
   9341a:	38 60 1e 02 	lw $r6,[$r0+($r7<<#0x2)]
   9341e:	d5 05       	j8 93428 <ATT_ReleasePWQ+0x16>
   93420:	80 06       	mov55 $r0,$r6
   93422:	b4 c6       	lwi450 $r6,[$r6]
   93424:	49 00 39 5f 	jal 9a6e2 <free>
   93428:	ce fc       	bnez38 $r6,93420 <ATT_ReleasePWQ+0xe>
   9342a:	3e 0f c8 d8 	addi.gp $r0,#-14120
   9342e:	38 60 1e 0a 	sw $r6,[$r0+($r7<<#0x2)]
   93432:	3e 0f c9 80 	addi.gp $r0,#-13952
   93436:	38 60 1e 0a 	sw $r6,[$r0+($r7<<#0x2)]
   9343a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009343c <ATT_AllocRspDataPdu>:
   9343c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9343e:	97 c0       	zeb33 $r7,$r0
   93440:	3c 6d f2 46 	lwi.gp $r6,[+#-14056]
   93444:	ce 0d       	bnez38 $r6,9345e <ATT_AllocRspDataPdu+0x22>
   93446:	46 00 00 9f 	sethi $r0,#0x9f
   9344a:	58 00 09 e8 	ori $r0,$r0,#0x9e8
   9344e:	44 10 00 e6 	movi $r1,#230
   93452:	46 20 00 9f 	sethi $r2,#0x9f
   93456:	58 21 09 fc 	ori $r2,$r2,#0x9fc
   9345a:	49 00 30 b0 	jal 995ba <assert_ab_callback_verbose>
   9345e:	80 06       	mov55 $r0,$r6
   93460:	af f0       	sbi333 $r7,[$r6+#0x0]
   93462:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00093464 <ATT_CheckAccessPermission>:
   93464:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   93466:	97 c8       	zeb33 $r7,$r1
   93468:	80 c0       	mov55 $r6,$r0
   9346a:	54 03 80 44 	andi $r0,$r7,#0x44
   9346e:	c0 0d       	beqz38 $r0,93488 <ATT_CheckAccessPermission+0x24>
   93470:	54 03 80 88 	andi $r0,$r7,#0x88
   93474:	c0 03       	beqz38 $r0,9347a <ATT_CheckAccessPermission+0x16>
   93476:	84 0c       	movi55 $r0,#12
   93478:	d5 2c       	j8 934d0 <ATT_CheckAccessPermission+0x6c>
   9347a:	2e 07 c9 7e 	lbi.gp $r0,[+#-13954]
   9347e:	49 ff fb d7 	jal 92c2c <ble_gap_link_GetAttr_Enc>
   93482:	c8 03       	bnez38 $r0,93488 <ATT_CheckAccessPermission+0x24>
   93484:	84 0f       	movi55 $r0,#15
   93486:	d5 25       	j8 934d0 <ATT_CheckAccessPermission+0x6c>
   93488:	96 3a       	seb33 $r0,$r7
   9348a:	4e 04 00 06 	bgez $r0,93496 <ATT_CheckAccessPermission+0x32>
   9348e:	97 e6       	bmski33 $r7,#0x4
   93490:	cf 08       	bnez38 $r7,934a0 <ATT_CheckAccessPermission+0x3c>
   93492:	84 03       	movi55 $r0,#3
   93494:	d5 1e       	j8 934d0 <ATT_CheckAccessPermission+0x6c>
   93496:	54 03 80 08 	andi $r0,$r7,#0x8
   9349a:	c0 0d       	beqz38 $r0,934b4 <ATT_CheckAccessPermission+0x50>
   9349c:	97 fc       	xlsb33 $r7,$r7
   9349e:	c7 09       	beqz38 $r7,934b0 <ATT_CheckAccessPermission+0x4c>
   934a0:	2e 07 c9 7e 	lbi.gp $r0,[+#-13954]
   934a4:	49 ff fb ae 	jal 92c00 <ble_gap_link_GetAttr_Auth>
   934a8:	5a 00 05 15 	beqc $r0,#5,934d2 <ATT_CheckAccessPermission+0x6e>
   934ac:	84 05       	movi55 $r0,#5
   934ae:	d5 11       	j8 934d0 <ATT_CheckAccessPermission+0x6c>
   934b0:	84 02       	movi55 $r0,#2
   934b2:	d5 0f       	j8 934d0 <ATT_CheckAccessPermission+0x6c>
   934b4:	54 03 80 22 	andi $r0,$r7,#0x22
   934b8:	c0 03       	beqz38 $r0,934be <ATT_CheckAccessPermission+0x5a>
   934ba:	84 08       	movi55 $r0,#8
   934bc:	d5 0a       	j8 934d0 <ATT_CheckAccessPermission+0x6c>
   934be:	54 73 80 11 	andi $r7,$r7,#0x11
   934c2:	c7 08       	beqz38 $r7,934d2 <ATT_CheckAccessPermission+0x6e>
   934c4:	2e 07 c9 7e 	lbi.gp $r0,[+#-13954]
   934c8:	49 ff fb 9c 	jal 92c00 <ble_gap_link_GetAttr_Auth>
   934cc:	c8 03       	bnez38 $r0,934d2 <ATT_CheckAccessPermission+0x6e>
   934ce:	84 05       	movi55 $r0,#5
   934d0:	ae 30       	sbi333 $r0,[$r6+#0x0]
   934d2:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000934d4 <ATT_CheckWritePermission>:
   934d4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   934d6:	a6 80       	lbi333 $r2,[$r0+#0x0]
   934d8:	96 49       	zeh33 $r1,$r1
   934da:	ca 0c       	bnez38 $r2,934f2 <ATT_CheckWritePermission+0x1e>
   934dc:	3c 2d f4 b3 	lwi.gp $r2,[+#-11572]
   934e0:	38 11 06 02 	lw $r1,[$r2+($r1<<#0x2)]
   934e4:	00 10 80 0d 	lbi $r1,[$r1+#0xd]
   934e8:	54 10 80 f0 	andi $r1,$r1,#0xf0
   934ec:	c1 03       	beqz38 $r1,934f2 <ATT_CheckWritePermission+0x1e>
   934ee:	49 ff ff bb 	jal 93464 <ATT_CheckAccessPermission>
   934f2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000934f4 <ATT_CheckReadPermission>:
   934f4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   934f6:	a6 80       	lbi333 $r2,[$r0+#0x0]
   934f8:	96 49       	zeh33 $r1,$r1
   934fa:	ca 0b       	bnez38 $r2,93510 <ATT_CheckReadPermission+0x1c>
   934fc:	3c 2d f4 b3 	lwi.gp $r2,[+#-11572]
   93500:	38 11 06 02 	lw $r1,[$r2+($r1<<#0x2)]
   93504:	00 10 80 0d 	lbi $r1,[$r1+#0xd]
   93508:	96 5f       	fexti33 $r1,#0x3
   9350a:	c1 03       	beqz38 $r1,93510 <ATT_CheckReadPermission+0x1c>
   9350c:	49 ff ff ac 	jal 93464 <ATT_CheckAccessPermission>
   93510:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00093512 <ATT_IsSameValue>:
   93512:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   93514:	96 91       	zeh33 $r2,$r2
   93516:	49 ff e5 8d 	jal 90030 <memcmp>
   9351a:	5c 00 00 01 	slti $r0,$r0,#1
   9351e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00093520 <BLE_att_set_attribute_length>:
   93520:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   93522:	3e 2f d2 fa 	addi.gp $r2,#-11526
   93526:	a4 90       	lhi333 $r2,[$r2+#0x0]
   93528:	96 01       	zeh33 $r0,$r0
   9352a:	96 49       	zeh33 $r1,$r1
   9352c:	e2 02       	slt45 $r0,$r2
   9352e:	e9 03       	bnezs8 93534 <BLE_att_set_attribute_length+0x14>
   93530:	84 01       	movi55 $r0,#1
   93532:	d5 34       	j8 9359a <BLE_att_set_attribute_length+0x7a>
   93534:	64 42 00 02 	mfsr $r4,$PSW
   93538:	64 02 00 43 	setgie.d
   9353c:	64 00 00 08 	dsb
   93540:	46 30 01 00 	sethi $r3,#0x100
   93544:	58 31 80 b0 	ori $r3,$r3,#0xb0
   93548:	b4 43       	lwi450 $r2,[$r3]
   9354a:	9d 51       	addi333 $r5,$r2,#1
   9354c:	b6 a3       	swi450 $r5,[$r3]
   9354e:	ca 06       	bnez38 $r2,9355a <BLE_att_set_attribute_length+0x3a>
   93550:	46 20 01 00 	sethi $r2,#0x100
   93554:	58 21 00 bc 	ori $r2,$r2,#0xbc
   93558:	b6 82       	swi450 $r4,[$r2]
   9355a:	3e 2f d2 cc 	addi.gp $r2,#-11572
   9355e:	b4 42       	lwi450 $r2,[$r2]
   93560:	38 01 02 02 	lw $r0,[$r2+($r0<<#0x2)]
   93564:	10 10 00 0e 	sbi $r1,[$r0+#0xe]
   93568:	92 28       	srli45 $r1,#8
   9356a:	10 10 00 0f 	sbi $r1,[$r0+#0xf]
   9356e:	46 00 01 00 	sethi $r0,#0x100
   93572:	58 00 00 b0 	ori $r0,$r0,#0xb0
   93576:	b4 20       	lwi450 $r1,[$r0]
   93578:	9e 49       	subi333 $r1,$r1,#1
   9357a:	b6 20       	swi450 $r1,[$r0]
   9357c:	b4 00       	lwi450 $r0,[$r0]
   9357e:	c8 0d       	bnez38 $r0,93598 <BLE_att_set_attribute_length+0x78>
   93580:	46 10 01 00 	sethi $r1,#0x100
   93584:	58 10 80 bc 	ori $r1,$r1,#0xbc
   93588:	b4 21       	lwi450 $r1,[$r1]
   9358a:	96 4c       	xlsb33 $r1,$r1
   9358c:	c1 06       	beqz38 $r1,93598 <BLE_att_set_attribute_length+0x78>
   9358e:	64 12 00 43 	setgie.e
   93592:	64 00 00 08 	dsb
   93596:	d5 02       	j8 9359a <BLE_att_set_attribute_length+0x7a>
   93598:	84 00       	movi55 $r0,#0
   9359a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009359c <ATT_end_transaction>:
   9359c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9359e:	97 80       	zeb33 $r6,$r0
   935a0:	50 03 00 80 	addi $r0,$r6,#128
   935a4:	49 00 22 4b 	jal 97a3a <Ab_MMITimerUnset>
   935a8:	97 9f       	fexti33 $r6,#0x3
   935aa:	46 10 01 01 	sethi $r1,#0x101
   935ae:	84 01       	movi55 $r0,#1
   935b0:	40 60 18 0c 	sll $r6,$r0,$r6
   935b4:	3c 03 e9 7b 	lhi.gp $r0,[+#-11530]
   935b8:	ff b3       	not33 $r6,$r6
   935ba:	ff 86       	and33 $r6,$r0
   935bc:	3c 6b e9 7b 	shi.gp $r6,[+#-11530]
   935c0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000935c2 <ATT_ServerGetConfirmation>:
   935c2:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   935c4:	3e 0f c9 18 	addi.gp $r0,#-14056
   935c8:	00 60 00 66 	lbi $r6,[$r0+#0x66]
   935cc:	50 73 00 08 	addi $r7,$r6,#8
   935d0:	95 fa       	slli333 $r7,$r7,#2
   935d2:	99 f8       	add333 $r7,$r7,$r0
   935d4:	a0 79       	lwi333 $r1,[$r7+#0x4]
   935d6:	c1 05       	beqz38 $r1,935e0 <ATT_ServerGetConfirmation+0x1e>
   935d8:	80 06       	mov55 $r0,$r6
   935da:	dd 21       	jral5 $r1
   935dc:	84 00       	movi55 $r0,#0
   935de:	a8 39       	swi333 $r0,[$r7+#0x4]
   935e0:	80 06       	mov55 $r0,$r6
   935e2:	49 ff ff dd 	jal 9359c <ATT_end_transaction>
   935e6:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000935e8 <ATT_start_transaction>:
   935e8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   935ea:	97 80       	zeb33 $r6,$r0
   935ec:	50 03 00 80 	addi $r0,$r6,#128
   935f0:	80 86       	mov55 $r4,$r6
   935f2:	84 20       	movi55 $r1,#0
   935f4:	44 20 75 30 	movi $r2,#30000
   935f8:	46 30 00 93 	sethi $r3,#0x93
   935fc:	58 31 82 56 	ori $r3,$r3,#0x256
   93600:	49 00 22 6a 	jal 97ad4 <Ab_MMITimerSet>
   93604:	97 9f       	fexti33 $r6,#0x3
   93606:	46 00 01 01 	sethi $r0,#0x101
   9360a:	84 21       	movi55 $r1,#1
   9360c:	40 60 98 0c 	sll $r6,$r1,$r6
   93610:	3c 13 e9 7b 	lhi.gp $r1,[+#-11530]
   93614:	ff 8f       	or33 $r6,$r1
   93616:	3c 6b e9 7b 	shi.gp $r6,[+#-11530]
   9361a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009361c <ATT_SendPduToL2CAP>:
   9361c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9361e:	80 40       	mov55 $r2,$r0
   93620:	2e 07 c9 7e 	lbi.gp $r0,[+#-13954]
   93624:	96 c9       	zeh33 $r3,$r1
   93626:	84 24       	movi55 $r1,#4
   93628:	49 ff fc 79 	jal 92f1a <l2cap_hci_fragment>
   9362c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009362e <ATT_SendErrorRsp>:
   9362e:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   93630:	96 49       	zeh33 $r1,$r1
   93632:	10 1f 80 02 	sbi $r1,[$sp+#0x2]
   93636:	92 28       	srli45 $r1,#8
   93638:	84 81       	movi55 $r4,#1
   9363a:	10 0f 80 01 	sbi $r0,[$sp+#0x1]
   9363e:	10 1f 80 03 	sbi $r1,[$sp+#0x3]
   93642:	80 1f       	mov55 $r0,$sp
   93644:	84 25       	movi55 $r1,#5
   93646:	10 4f 80 00 	sbi $r4,[$sp+#0x0]
   9364a:	10 2f 80 04 	sbi $r2,[$sp+#0x4]
   9364e:	49 ff ff e7 	jal 9361c <ATT_SendPduToL2CAP>
   93652:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

00093654 <ATT_ServerGetExecuteWriteReq>:
   93654:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   93656:	3e 1f d2 cc 	addi.gp $r1,#-11572
   9365a:	b4 41       	lwi450 $r2,[$r1]
   9365c:	a6 01       	lbi333 $r0,[$r0+#0x1]
   9365e:	b4 c2       	lwi450 $r6,[$r2]
   93660:	2e 87 c9 7e 	lbi.gp $r8,[+#-13954]
   93664:	5a 08 01 4a 	bnec $r0,#1,936f8 <ATT_ServerGetExecuteWriteReq+0xa4>
   93668:	3e 0f c8 d8 	addi.gp $r0,#-14120
   9366c:	38 70 22 02 	lw $r7,[$r0+($r8<<#0x2)]
   93670:	81 21       	mov55 $r9,$r1
   93672:	d5 41       	j8 936f4 <ATT_ServerGetExecuteWriteReq+0xa0>
   93674:	b4 09       	lwi450 $r0,[$r9]
   93676:	02 a3 80 03 	lhi $r10,[$r7+#0x6]
   9367a:	a4 fc       	lhi333 $r3,[$r7+#0x8]
   9367c:	38 60 2a 02 	lw $r6,[$r0+($r10<<#0x2)]
   93680:	00 23 00 0f 	lbi $r2,[$r6+#0xf]
   93684:	00 03 00 0e 	lbi $r0,[$r6+#0xe]
   93688:	40 21 20 08 	slli $r2,$r2,#8
   9368c:	fe 87       	or33 $r2,$r0
   9368e:	e2 43       	slt45 $r2,$r3
   93690:	e8 03       	beqzs8 93696 <ATT_ServerGetExecuteWriteReq+0x42>
   93692:	84 e7       	movi55 $r7,#7
   93694:	d5 38       	j8 93704 <ATT_ServerGetExecuteWriteReq+0xb0>
   93696:	00 03 00 11 	lbi $r0,[$r6+#0x11]
   9369a:	a4 7a       	lhi333 $r1,[$r7+#0x4]
   9369c:	00 43 00 10 	lbi $r4,[$r6+#0x10]
   936a0:	40 00 20 08 	slli $r0,$r0,#8
   936a4:	98 59       	add333 $r1,$r3,$r1
   936a6:	fe 27       	or33 $r0,$r4
   936a8:	96 49       	zeh33 $r1,$r1
   936aa:	c8 04       	bnez38 $r0,936b2 <ATT_ServerGetExecuteWriteReq+0x5e>
   936ac:	e2 41       	slt45 $r2,$r1
   936ae:	e8 09       	beqzs8 936c0 <ATT_ServerGetExecuteWriteReq+0x6c>
   936b0:	d5 27       	j8 936fe <ATT_ServerGetExecuteWriteReq+0xaa>
   936b2:	e2 01       	slt45 $r0,$r1
   936b4:	e9 25       	bnezs8 936fe <ATT_ServerGetExecuteWriteReq+0xaa>
   936b6:	10 13 00 0e 	sbi $r1,[$r6+#0xe]
   936ba:	92 28       	srli45 $r1,#8
   936bc:	10 13 00 0f 	sbi $r1,[$r6+#0xf]
   936c0:	a6 71       	lbi333 $r1,[$r6+#0x1]
   936c2:	a7 30       	lbi333 $r4,[$r6+#0x0]
   936c4:	a6 32       	lbi333 $r0,[$r6+#0x2]
   936c6:	40 10 a0 08 	slli $r1,$r1,#8
   936ca:	a6 b3       	lbi333 $r2,[$r6+#0x3]
   936cc:	fe 67       	or33 $r1,$r4
   936ce:	40 00 40 08 	slli $r0,$r0,#16
   936d2:	fe 0f       	or33 $r0,$r1
   936d4:	40 21 60 08 	slli $r2,$r2,#24
   936d8:	fe 87       	or33 $r2,$r0
   936da:	c2 07       	beqz38 $r2,936e8 <ATT_ServerGetExecuteWriteReq+0x94>
   936dc:	98 13       	add333 $r0,$r2,$r3
   936de:	a4 ba       	lhi333 $r2,[$r7+#0x4]
   936e0:	50 13 80 0a 	addi $r1,$r7,#10
   936e4:	49 ff e4 b2 	jal 90048 <memcpy>
   936e8:	80 0a       	mov55 $r0,$r10
   936ea:	84 22       	movi55 $r1,#2
   936ec:	80 48       	mov55 $r2,$r8
   936ee:	49 ff fe 04 	jal 932f6 <ATT_CALLBACK>
   936f2:	b4 e7       	lwi450 $r7,[$r7]
   936f4:	cf c0       	bnez38 $r7,93674 <ATT_ServerGetExecuteWriteReq+0x20>
   936f6:	d5 06       	j8 93702 <ATT_ServerGetExecuteWriteReq+0xae>
   936f8:	c0 05       	beqz38 $r0,93702 <ATT_ServerGetExecuteWriteReq+0xae>
   936fa:	84 e4       	movi55 $r7,#4
   936fc:	d5 04       	j8 93704 <ATT_ServerGetExecuteWriteReq+0xb0>
   936fe:	84 ed       	movi55 $r7,#13
   93700:	d5 02       	j8 93704 <ATT_ServerGetExecuteWriteReq+0xb0>
   93702:	84 e0       	movi55 $r7,#0
   93704:	80 08       	mov55 $r0,$r8
   93706:	49 ff fe 86 	jal 93412 <ATT_ReleasePWQ>
   9370a:	c7 0d       	beqz38 $r7,93724 <ATT_ServerGetExecuteWriteReq+0xd0>
   9370c:	00 13 00 13 	lbi $r1,[$r6+#0x13]
   93710:	00 23 00 12 	lbi $r2,[$r6+#0x12]
   93714:	40 10 a0 08 	slli $r1,$r1,#8
   93718:	fe 57       	or33 $r1,$r2
   9371a:	fa 08       	movpi45 $r0,#0x18
   9371c:	80 47       	mov55 $r2,$r7
   9371e:	49 ff ff 88 	jal 9362e <ATT_SendErrorRsp>
   93722:	d5 07       	j8 93730 <ATT_ServerGetExecuteWriteReq+0xdc>
   93724:	fa 09       	movpi45 $r0,#0x19
   93726:	49 ff fe 8b 	jal 9343c <ATT_AllocRspDataPdu>
   9372a:	84 21       	movi55 $r1,#1
   9372c:	49 ff ff 78 	jal 9361c <ATT_SendPduToL2CAP>
   93730:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00093732 <ATT_ServerGetPrepareWriteReq>:
   93732:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   93734:	9d 81       	addi333 $r6,$r0,#1
   93736:	80 06       	mov55 $r0,$r6
   93738:	49 ff fe 31 	jal 9339a <ATT_GetU16LE>
   9373c:	80 e0       	mov55 $r7,$r0
   9373e:	49 ff fd a1 	jal 93280 <ATT_BinarySearchIndexByHandle>
   93742:	81 00       	mov55 $r8,$r0
   93744:	51 cf 80 07 	addi $fp,$sp,#7
   93748:	84 00       	movi55 $r0,#0
   9374a:	10 0e 00 00 	sbi $r0,[$fp+#0x0]
   9374e:	80 28       	mov55 $r1,$r8
   93750:	80 1c       	mov55 $r0,$fp
   93752:	3c 93 e4 be 	lhi.gp $r9,[+#-13956]
   93756:	49 ff fd c4 	jal 932de <ATT_CheckHandle>
   9375a:	80 1c       	mov55 $r0,$fp
   9375c:	80 28       	mov55 $r1,$r8
   9375e:	49 ff fe bb 	jal 934d4 <ATT_CheckWritePermission>
   93762:	00 2f 80 07 	lbi $r2,[$sp+#0x7]
   93766:	c2 06       	beqz38 $r2,93772 <ATT_ServerGetPrepareWriteReq+0x40>
   93768:	fa 06       	movpi45 $r0,#0x16
   9376a:	80 27       	mov55 $r1,$r7
   9376c:	49 ff ff 61 	jal 9362e <ATT_SendErrorRsp>
   93770:	d5 39       	j8 937e2 <ATT_ServerGetPrepareWriteReq+0xb0>
   93772:	50 74 ff fb 	addi $r7,$r9,#-5
   93776:	97 f9       	zeh33 $r7,$r7
   93778:	50 03 80 0c 	addi $r0,$r7,#12
   9377c:	49 00 38 2c 	jal 9a7d4 <malloc>
   93780:	2e 47 c9 7e 	lbi.gp $r4,[+#-13954]
   93784:	80 60       	mov55 $r3,$r0
   93786:	3e 0f c8 d8 	addi.gp $r0,#-14120
   9378a:	38 10 12 02 	lw $r1,[$r0+($r4<<#0x2)]
   9378e:	c9 04       	bnez38 $r1,93796 <ATT_ServerGetPrepareWriteReq+0x64>
   93790:	38 30 12 0a 	sw $r3,[$r0+($r4<<#0x2)]
   93794:	d5 06       	j8 937a0 <ATT_ServerGetPrepareWriteReq+0x6e>
   93796:	3e 0f c9 80 	addi.gp $r0,#-13952
   9379a:	38 00 12 02 	lw $r0,[$r0+($r4<<#0x2)]
   9379e:	b6 60       	swi450 $r3,[$r0]
   937a0:	3e 0f c9 80 	addi.gp $r0,#-13952
   937a4:	38 30 12 0a 	sw $r3,[$r0+($r4<<#0x2)]
   937a8:	12 81 80 03 	shi $r8,[$r3+#0x6]
   937ac:	ad da       	shi333 $r7,[$r3+#0x4]
   937ae:	80 47       	mov55 $r2,$r7
   937b0:	a6 33       	lbi333 $r0,[$r6+#0x3]
   937b2:	a6 72       	lbi333 $r1,[$r6+#0x2]
   937b4:	40 00 20 08 	slli $r0,$r0,#8
   937b8:	98 01       	add333 $r0,$r0,$r1
   937ba:	ac 1c       	shi333 $r0,[$r3+#0x8]
   937bc:	84 00       	movi55 $r0,#0
   937be:	b6 03       	swi450 $r0,[$r3]
   937c0:	9c 74       	addi333 $r1,$r6,#4
   937c2:	50 01 80 0a 	addi $r0,$r3,#10
   937c6:	49 ff e4 41 	jal 90048 <memcpy>
   937ca:	fa 07       	movpi45 $r0,#0x17
   937cc:	49 ff fe 38 	jal 9343c <ATT_AllocRspDataPdu>
   937d0:	81 00       	mov55 $r8,$r0
   937d2:	80 26       	mov55 $r1,$r6
   937d4:	9c 01       	addi333 $r0,$r0,#1
   937d6:	9c bc       	addi333 $r2,$r7,#4
   937d8:	49 ff e4 38 	jal 90048 <memcpy>
   937dc:	fd 04       	movd44 $r0,$r8
   937de:	49 ff ff 1f 	jal 9361c <ATT_SendPduToL2CAP>
   937e2:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000937e4 <ATT_ServerGetWriteMux>:
   937e4:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   937e6:	a7 80       	lbi333 $r6,[$r0+#0x0]
   937e8:	5a 68 d2 0a 	bnec $r6,#210,937fc <ATT_ServerGetWriteMux+0x18>
   937ec:	2e 27 c9 7f 	lbi.gp $r2,[+#-13953]
   937f0:	85 e2       	movi55 $r15,#2
   937f2:	4c 27 c0 70 	bne $r2,$r15,938d2 <ATT_ServerGetWriteMux+0xee>
   937f6:	84 40       	movi55 $r2,#0
   937f8:	3e 27 c9 7f 	sbi.gp $r2,[+#-13953]
   937fc:	50 80 00 01 	addi $r8,$r0,#1
   93800:	80 08       	mov55 $r0,$r8
   93802:	49 ff fd cc 	jal 9339a <ATT_GetU16LE>
   93806:	81 20       	mov55 $r9,$r0
   93808:	49 ff fd 3c 	jal 93280 <ATT_BinarySearchIndexByHandle>
   9380c:	80 e0       	mov55 $r7,$r0
   9380e:	50 af 80 07 	addi $r10,$sp,#7
   93812:	84 00       	movi55 $r0,#0
   93814:	10 05 00 00 	sbi $r0,[$r10+#0x0]
   93818:	80 27       	mov55 $r1,$r7
   9381a:	80 0a       	mov55 $r0,$r10
   9381c:	49 ff fd 61 	jal 932de <ATT_CheckHandle>
   93820:	80 0a       	mov55 $r0,$r10
   93822:	80 27       	mov55 $r1,$r7
   93824:	49 ff fe 58 	jal 934d4 <ATT_CheckWritePermission>
   93828:	00 05 00 00 	lbi $r0,[$r10+#0x0]
   9382c:	c8 43       	bnez38 $r0,938b2 <ATT_ServerGetWriteMux+0xce>
   9382e:	3c 03 e4 be 	lhi.gp $r0,[+#-13956]
   93832:	5a 60 d2 04 	beqc $r6,#210,9383a <ATT_ServerGetWriteMux+0x56>
   93836:	84 43       	movi55 $r2,#3
   93838:	d5 02       	j8 9383c <ATT_ServerGetWriteMux+0x58>
   9383a:	84 4f       	movi55 $r2,#15
   9383c:	3c 4d f4 b3 	lwi.gp $r4,[+#-11572]
   93840:	9a 82       	sub333 $r2,$r0,$r2
   93842:	94 3a       	slli333 $r0,$r7,#2
   93844:	99 20       	add333 $r4,$r4,$r0
   93846:	b4 64       	lwi450 $r3,[$r4]
   93848:	8c 6a       	addi45 $r3,#10
   9384a:	96 91       	zeh33 $r2,$r2
   9384c:	a7 5f       	lbi333 $r5,[$r3+#0x7]
   9384e:	a6 1e       	lbi333 $r0,[$r3+#0x6]
   93850:	40 52 a0 08 	slli $r5,$r5,#8
   93854:	ff 47       	or33 $r5,$r0
   93856:	cd 09       	bnez38 $r5,93868 <ATT_ServerGetWriteMux+0x84>
   93858:	a6 1d       	lbi333 $r0,[$r3+#0x5]
   9385a:	a6 5c       	lbi333 $r1,[$r3+#0x4]
   9385c:	40 00 20 08 	slli $r0,$r0,#8
   93860:	fe 0f       	or33 $r0,$r1
   93862:	e2 02       	slt45 $r0,$r2
   93864:	e8 0c       	beqzs8 9387c <ATT_ServerGetWriteMux+0x98>
   93866:	d5 03       	j8 9386c <ATT_ServerGetWriteMux+0x88>
   93868:	e2 a2       	slt45 $r5,$r2
   9386a:	e8 05       	beqzs8 93874 <ATT_ServerGetWriteMux+0x90>
   9386c:	84 0d       	movi55 $r0,#13
   9386e:	10 05 00 00 	sbi $r0,[$r10+#0x0]
   93872:	d5 20       	j8 938b2 <ATT_ServerGetWriteMux+0xce>
   93874:	40 01 20 09 	srli $r0,$r2,#8
   93878:	ae 9c       	sbi333 $r2,[$r3+#0x4]
   9387a:	ae 1d       	sbi333 $r0,[$r3+#0x5]
   9387c:	b4 64       	lwi450 $r3,[$r4]
   9387e:	a6 59       	lbi333 $r1,[$r3+#0x1]
   93880:	a7 18       	lbi333 $r4,[$r3+#0x0]
   93882:	2e a7 c9 7e 	lbi.gp $r10,[+#-13954]
   93886:	a6 1a       	lbi333 $r0,[$r3+#0x2]
   93888:	40 10 a0 08 	slli $r1,$r1,#8
   9388c:	a6 db       	lbi333 $r3,[$r3+#0x3]
   9388e:	fe 67       	or33 $r1,$r4
   93890:	40 00 40 08 	slli $r0,$r0,#16
   93894:	fe 0f       	or33 $r0,$r1
   93896:	40 31 e0 08 	slli $r3,$r3,#24
   9389a:	fe c7       	or33 $r3,$r0
   9389c:	c3 06       	beqz38 $r3,938a8 <ATT_ServerGetWriteMux+0xc4>
   9389e:	80 03       	mov55 $r0,$r3
   938a0:	50 14 00 02 	addi $r1,$r8,#2
   938a4:	49 ff e3 d2 	jal 90048 <memcpy>
   938a8:	80 07       	mov55 $r0,$r7
   938aa:	84 22       	movi55 $r1,#2
   938ac:	80 4a       	mov55 $r2,$r10
   938ae:	49 ff fd 24 	jal 932f6 <ATT_CALLBACK>
   938b2:	5a 68 12 10 	bnec $r6,#18,938d2 <ATT_ServerGetWriteMux+0xee>
   938b6:	00 2f 80 07 	lbi $r2,[$sp+#0x7]
   938ba:	ca 08       	bnez38 $r2,938ca <ATT_ServerGetWriteMux+0xe6>
   938bc:	fa 03       	movpi45 $r0,#0x13
   938be:	49 ff fd bf 	jal 9343c <ATT_AllocRspDataPdu>
   938c2:	84 21       	movi55 $r1,#1
   938c4:	49 ff fe ac 	jal 9361c <ATT_SendPduToL2CAP>
   938c8:	d5 05       	j8 938d2 <ATT_ServerGetWriteMux+0xee>
   938ca:	80 06       	mov55 $r0,$r6
   938cc:	80 29       	mov55 $r1,$r9
   938ce:	49 ff fe b0 	jal 9362e <ATT_SendErrorRsp>
   938d2:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000938d4 <ATT_ServerGetReadByGroupTypeReq>:
   938d4:	fc 43       	push25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}
   938d6:	80 c0       	mov55 $r6,$r0
   938d8:	9c 01       	addi333 $r0,$r0,#1
   938da:	49 ff fd 60 	jal 9339a <ATT_GetU16LE>
   938de:	81 40       	mov55 $r10,$r0
   938e0:	9c 33       	addi333 $r0,$r6,#3
   938e2:	49 ff fd 5c 	jal 9339a <ATT_GetU16LE>
   938e6:	f0 83       	swi37.sp $r0,[+#0xc]
   938e8:	9c 35       	addi333 $r0,$r6,#5
   938ea:	49 ff fd 58 	jal 9339a <ATT_GetU16LE>
   938ee:	f0 82       	swi37.sp $r0,[+#0x8]
   938f0:	f0 03       	lwi37.sp $r0,[+#0xc]
   938f2:	e2 0a       	slt45 $r0,$r10
   938f4:	e9 03       	bnezs8 938fa <ATT_ServerGetReadByGroupTypeReq+0x26>
   938f6:	4e a3 00 07 	bnez $r10,93904 <ATT_ServerGetReadByGroupTypeReq+0x30>
   938fa:	fa 00       	movpi45 $r0,#0x10
   938fc:	80 2a       	mov55 $r1,$r10
   938fe:	84 41       	movi55 $r2,#1
   93900:	48 00 00 ad 	j 93a5a <ATT_ServerGetReadByGroupTypeReq+0x186>
   93904:	f6 02       	lwi37.sp $r6,[+#0x8]
   93906:	50 23 58 00 	addi $r2,$r6,#-10240
   9390a:	96 91       	zeh33 $r2,$r2
   9390c:	e6 42       	slti45 $r2,#2
   9390e:	e9 06       	bnezs8 9391a <ATT_ServerGetReadByGroupTypeReq+0x46>
   93910:	fa 00       	movpi45 $r0,#0x10
   93912:	80 2a       	mov55 $r1,$r10
   93914:	80 40       	mov55 $r2,$r0
   93916:	48 00 00 a2 	j 93a5a <ATT_ServerGetReadByGroupTypeReq+0x186>
   9391a:	fa 01       	movpi45 $r0,#0x11
   9391c:	49 ff fd 90 	jal 9343c <ATT_AllocRspDataPdu>
   93920:	9d c1       	addi333 $r7,$r0,#1
   93922:	f0 84       	swi37.sp $r0,[+#0x10]
   93924:	87 80       	movi55 $fp,#0
   93926:	9c 39       	addi333 $r0,$r7,#1
   93928:	f0 85       	swi37.sp $r0,[+#0x14]
   9392a:	85 21       	movi55 $r9,#1
   9392c:	81 1c       	mov55 $r8,$fp
   9392e:	3e 5f d2 cc 	addi.gp $r5,#-11572
   93932:	48 00 00 83 	j 93a38 <ATT_ServerGetReadByGroupTypeReq+0x164>
   93936:	b4 25       	lwi450 $r1,[$r5]
   93938:	38 60 a6 02 	lw $r6,[$r1+($r9<<#0x2)]
   9393c:	00 13 00 13 	lbi $r1,[$r6+#0x13]
   93940:	00 23 00 12 	lbi $r2,[$r6+#0x12]
   93944:	40 10 a0 08 	slli $r1,$r1,#8
   93948:	fe 57       	or33 $r1,$r2
   9394a:	e2 2a       	slt45 $r1,$r10
   9394c:	e9 72       	bnezs8 93a30 <ATT_ServerGetReadByGroupTypeReq+0x15c>
   9394e:	f0 03       	lwi37.sp $r0,[+#0xc]
   93950:	e2 01       	slt45 $r0,$r1
   93952:	e9 78       	bnezs8 93a42 <ATT_ServerGetReadByGroupTypeReq+0x16e>
   93954:	00 13 00 09 	lbi $r1,[$r6+#0x9]
   93958:	00 23 00 08 	lbi $r2,[$r6+#0x8]
   9395c:	40 10 a0 08 	slli $r1,$r1,#8
   93960:	f0 02       	lwi37.sp $r0,[+#0x8]
   93962:	fe 57       	or33 $r1,$r2
   93964:	4c 10 40 66 	bne $r1,$r0,93a30 <ATT_ServerGetReadByGroupTypeReq+0x15c>
   93968:	00 23 00 0e 	lbi $r2,[$r6+#0xe]
   9396c:	00 13 00 0f 	lbi $r1,[$r6+#0xf]
   93970:	4e 83 00 0e 	bnez $r8,9398c <ATT_ServerGetReadByGroupTypeReq+0xb8>
   93974:	83 82       	mov55 $fp,$r2
   93976:	40 10 a0 08 	slli $r1,$r1,#8
   9397a:	41 c0 f0 04 	or $fp,$r1,$fp
   9397e:	51 ce 00 04 	addi $fp,$fp,#4
   93982:	41 ce 00 13 	zeh $fp,$fp
   93986:	11 c3 80 00 	sbi $fp,[$r7+#0x0]
   9398a:	d5 08       	j8 9399a <ATT_ServerGetReadByGroupTypeReq+0xc6>
   9398c:	40 10 a0 08 	slli $r1,$r1,#8
   93990:	fe 57       	or33 $r1,$r2
   93992:	a6 f8       	lbi333 $r3,[$r7+#0x0]
   93994:	9c 4c       	addi333 $r1,$r1,#4
   93996:	4c 30 c0 58 	bne $r3,$r1,93a46 <ATT_ServerGetReadByGroupTypeReq+0x172>
   9399a:	00 23 00 13 	lbi $r2,[$r6+#0x13]
   9399e:	00 13 00 12 	lbi $r1,[$r6+#0x12]
   939a2:	40 33 a0 00 	add $r3,$r7,$r8
   939a6:	40 21 20 08 	slli $r2,$r2,#8
   939aa:	9c 19       	addi333 $r0,$r3,#1
   939ac:	fe 57       	or33 $r1,$r2
   939ae:	f5 81       	swi37.sp $r5,[+#0x4]
   939b0:	49 ff fc ef 	jal 9338e <ATT_SetU16LE>
   939b4:	00 13 00 0f 	lbi $r1,[$r6+#0xf]
   939b8:	a6 f0       	lbi333 $r3,[$r6+#0x0]
   939ba:	40 20 a0 08 	slli $r2,$r1,#8
   939be:	a6 71       	lbi333 $r1,[$r6+#0x1]
   939c0:	00 43 00 0e 	lbi $r4,[$r6+#0xe]
   939c4:	40 10 a0 08 	slli $r1,$r1,#8
   939c8:	fe cf       	or33 $r3,$r1
   939ca:	a6 72       	lbi333 $r1,[$r6+#0x2]
   939cc:	50 04 00 04 	addi $r0,$r8,#4
   939d0:	40 10 c0 08 	slli $r1,$r1,#16
   939d4:	fe 5f       	or33 $r1,$r3
   939d6:	a6 f3       	lbi333 $r3,[$r6+#0x3]
   939d8:	f6 05       	lwi37.sp $r6,[+#0x14]
   939da:	40 31 e0 08 	slli $r3,$r3,#24
   939de:	fe 5f       	or33 $r1,$r3
   939e0:	fe a7       	or33 $r2,$r4
   939e2:	98 30       	add333 $r0,$r6,$r0
   939e4:	49 ff e3 32 	jal 90048 <memcpy>
   939e8:	80 09       	mov55 $r0,$r9
   939ea:	49 ff fc 9f 	jal 93328 <ATT_ReturnGroupEndIndex>
   939ee:	f5 01       	lwi37.sp $r5,[+#0x4]
   939f0:	40 33 a0 00 	add $r3,$r7,$r8
   939f4:	b4 25       	lwi450 $r1,[$r5]
   939f6:	81 20       	mov55 $r9,$r0
   939f8:	38 20 82 02 	lw $r2,[$r1+($r0<<#0x2)]
   939fc:	9c 1b       	addi333 $r0,$r3,#3
   939fe:	00 11 00 12 	lbi $r1,[$r2+#0x12]
   93a02:	00 21 00 13 	lbi $r2,[$r2+#0x13]
   93a06:	89 1c       	add45 $r8,$fp
   93a08:	40 21 20 08 	slli $r2,$r2,#8
   93a0c:	fe 57       	or33 $r1,$r2
   93a0e:	49 ff fc c0 	jal 9338e <ATT_SetU16LE>
   93a12:	3e 0f c9 18 	addi.gp $r0,#-14056
   93a16:	00 20 00 66 	lbi $r2,[$r0+#0x66]
   93a1a:	40 84 00 13 	zeh $r8,$r8
   93a1e:	98 92       	add333 $r2,$r2,$r2
   93a20:	98 90       	add333 $r2,$r2,$r0
   93a22:	50 1e 00 01 	addi $r1,$fp,#1
   93a26:	a4 92       	lhi333 $r2,[$r2+#0x4]
   93a28:	88 28       	add45 $r1,$r8
   93a2a:	f5 01       	lwi37.sp $r5,[+#0x4]
   93a2c:	e0 22       	slts45 $r1,$r2
   93a2e:	e8 0a       	beqzs8 93a42 <ATT_ServerGetReadByGroupTypeReq+0x16e>
   93a30:	50 04 80 01 	addi $r0,$r9,#1
   93a34:	54 90 00 ff 	andi $r9,$r0,#0xff
   93a38:	3c 13 e9 7d 	lhi.gp $r1,[+#-11526]
   93a3c:	e3 21       	slt45 $r9,$r1
   93a3e:	4e f3 ff 7c 	bnez $r15,93936 <ATT_ServerGetReadByGroupTypeReq+0x62>
   93a42:	4e 82 00 09 	beqz $r8,93a54 <ATT_ServerGetReadByGroupTypeReq+0x180>
   93a46:	50 14 00 02 	addi $r1,$r8,#2
   93a4a:	f0 04       	lwi37.sp $r0,[+#0x10]
   93a4c:	96 49       	zeh33 $r1,$r1
   93a4e:	49 ff fd e7 	jal 9361c <ATT_SendPduToL2CAP>
   93a52:	d5 06       	j8 93a5e <ATT_ServerGetReadByGroupTypeReq+0x18a>
   93a54:	fa 00       	movpi45 $r0,#0x10
   93a56:	80 2a       	mov55 $r1,$r10
   93a58:	84 4a       	movi55 $r2,#10
   93a5a:	49 ff fd ea 	jal 9362e <ATT_SendErrorRsp>
   93a5e:	fc c3       	pop25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}

00093a60 <ATT_ServerGetReadMultiReq>:
   93a60:	fc 44       	push25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}
   93a62:	9c 01       	addi333 $r0,$r0,#1
   93a64:	f0 84       	swi37.sp $r0,[+#0x10]
   93a66:	3c 13 e4 be 	lhi.gp $r1,[+#-13956]
   93a6a:	84 42       	movi55 $r2,#2
   93a6c:	9e 49       	subi333 $r1,$r1,#1
   93a6e:	40 10 88 56 	divsr $r1,$r2,$r1,$r2
   93a72:	84 0f       	movi55 $r0,#15
   93a74:	87 80       	movi55 $fp,#0
   93a76:	81 3c       	mov55 $r9,$fp
   93a78:	81 5c       	mov55 $r10,$fp
   93a7a:	50 7f 80 1f 	addi $r7,$sp,#31
   93a7e:	96 48       	zeb33 $r1,$r1
   93a80:	f1 83       	swi37.sp $r1,[+#0xc]
   93a82:	84 20       	movi55 $r1,#0
   93a84:	ae 78       	sbi333 $r1,[$r7+#0x0]
   93a86:	49 ff fc db 	jal 9343c <ATT_AllocRspDataPdu>
   93a8a:	2e 67 c9 7e 	lbi.gp $r6,[+#-13954]
   93a8e:	3e 1f c9 18 	addi.gp $r1,#-14056
   93a92:	98 f6       	add333 $r3,$r6,$r6
   93a94:	f0 81       	swi37.sp $r0,[+#0x4]
   93a96:	98 59       	add333 $r1,$r3,$r1
   93a98:	9c 01       	addi333 $r0,$r0,#1
   93a9a:	b6 df       	swi450 $r6,[$sp]
   93a9c:	f0 85       	swi37.sp $r0,[+#0x14]
   93a9e:	f1 82       	swi37.sp $r1,[+#0x8]
   93aa0:	d5 53       	j8 93b46 <ATT_ServerGetReadMultiReq+0xe6>
   93aa2:	f1 04       	lwi37.sp $r1,[+#0x10]
   93aa4:	40 00 f0 00 	add $r0,$r1,$fp
   93aa8:	49 ff fc 79 	jal 9339a <ATT_GetU16LE>
   93aac:	81 00       	mov55 $r8,$r0
   93aae:	49 ff fb e9 	jal 93280 <ATT_BinarySearchIndexByHandle>
   93ab2:	80 c0       	mov55 $r6,$r0
   93ab4:	80 26       	mov55 $r1,$r6
   93ab6:	80 07       	mov55 $r0,$r7
   93ab8:	49 ff fc 13 	jal 932de <ATT_CheckHandle>
   93abc:	80 07       	mov55 $r0,$r7
   93abe:	80 26       	mov55 $r1,$r6
   93ac0:	49 ff fd 1a 	jal 934f4 <ATT_CheckReadPermission>
   93ac4:	a6 b8       	lbi333 $r2,[$r7+#0x0]
   93ac6:	c2 06       	beqz38 $r2,93ad2 <ATT_ServerGetReadMultiReq+0x72>
   93ac8:	84 0e       	movi55 $r0,#14
   93aca:	80 28       	mov55 $r1,$r8
   93acc:	49 ff fd b1 	jal 9362e <ATT_SendErrorRsp>
   93ad0:	d5 44       	j8 93b58 <ATT_ServerGetReadMultiReq+0xf8>
   93ad2:	f0 02       	lwi37.sp $r0,[+#0x8]
   93ad4:	a4 c2       	lhi333 $r3,[$r0+#0x4]
   93ad6:	9e d9       	subi333 $r3,$r3,#1
   93ad8:	e1 43       	slts45 $r10,$r3
   93ada:	e8 30       	beqzs8 93b3a <ATT_ServerGetReadMultiReq+0xda>
   93adc:	b4 5f       	lwi450 $r2,[$sp]
   93ade:	80 06       	mov55 $r0,$r6
   93ae0:	84 21       	movi55 $r1,#1
   93ae2:	49 ff fc 0a 	jal 932f6 <ATT_CALLBACK>
   93ae6:	3c 3d f4 b3 	lwi.gp $r3,[+#-11572]
   93aea:	f0 02       	lwi37.sp $r0,[+#0x8]
   93aec:	38 41 9a 02 	lw $r4,[$r3+($r6<<#0x2)]
   93af0:	a4 42       	lhi333 $r1,[$r0+#0x4]
   93af2:	00 32 00 0f 	lbi $r3,[$r4+#0xf]
   93af6:	00 52 00 0e 	lbi $r5,[$r4+#0xe]
   93afa:	9e 49       	subi333 $r1,$r1,#1
   93afc:	40 31 a0 08 	slli $r3,$r3,#8
   93b00:	8a 2a       	sub45 $r1,$r10
   93b02:	fe ef       	or33 $r3,$r5
   93b04:	e0 61       	slts45 $r3,$r1
   93b06:	e8 02       	beqzs8 93b0a <ATT_ServerGetReadMultiReq+0xaa>
   93b08:	80 23       	mov55 $r1,$r3
   93b0a:	a6 e1       	lbi333 $r3,[$r4+#0x1]
   93b0c:	a7 60       	lbi333 $r5,[$r4+#0x0]
   93b0e:	40 31 a0 08 	slli $r3,$r3,#8
   93b12:	ff 5f       	or33 $r5,$r3
   93b14:	a6 e2       	lbi333 $r3,[$r4+#0x2]
   93b16:	97 89       	zeh33 $r6,$r1
   93b18:	40 31 c0 08 	slli $r3,$r3,#16
   93b1c:	ff 5f       	or33 $r5,$r3
   93b1e:	a6 e3       	lbi333 $r3,[$r4+#0x3]
   93b20:	f1 05       	lwi37.sp $r1,[+#0x14]
   93b22:	40 41 e0 08 	slli $r4,$r3,#24
   93b26:	40 00 a8 00 	add $r0,$r1,$r10
   93b2a:	80 46       	mov55 $r2,$r6
   93b2c:	40 12 14 04 	or $r1,$r4,$r5
   93b30:	89 46       	add45 $r10,$r6
   93b32:	49 ff e2 8b 	jal 90048 <memcpy>
   93b36:	40 a5 00 13 	zeh $r10,$r10
   93b3a:	50 04 80 01 	addi $r0,$r9,#1
   93b3e:	54 90 00 ff 	andi $r9,$r0,#0xff
   93b42:	51 ce 00 02 	addi $fp,$fp,#2
   93b46:	f0 03       	lwi37.sp $r0,[+#0xc]
   93b48:	e3 20       	slt45 $r9,$r0
   93b4a:	e9 ac       	bnezs8 93aa2 <ATT_ServerGetReadMultiReq+0x42>
   93b4c:	50 15 00 01 	addi $r1,$r10,#1
   93b50:	f0 01       	lwi37.sp $r0,[+#0x4]
   93b52:	96 49       	zeh33 $r1,$r1
   93b54:	49 ff fd 64 	jal 9361c <ATT_SendPduToL2CAP>
   93b58:	fc c4       	pop25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}

00093b5a <ATT_ServerGetReadBlobReq>:
   93b5a:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   93b5c:	80 c0       	mov55 $r6,$r0
   93b5e:	9c 01       	addi333 $r0,$r0,#1
   93b60:	49 ff fc 1d 	jal 9339a <ATT_GetU16LE>
   93b64:	81 00       	mov55 $r8,$r0
   93b66:	9c 33       	addi333 $r0,$r6,#3
   93b68:	49 ff fc 19 	jal 9339a <ATT_GetU16LE>
   93b6c:	80 e0       	mov55 $r7,$r0
   93b6e:	80 08       	mov55 $r0,$r8
   93b70:	49 ff fb 88 	jal 93280 <ATT_BinarySearchIndexByHandle>
   93b74:	97 80       	zeb33 $r6,$r0
   93b76:	50 9f 80 07 	addi $r9,$sp,#7
   93b7a:	84 00       	movi55 $r0,#0
   93b7c:	10 04 80 00 	sbi $r0,[$r9+#0x0]
   93b80:	80 26       	mov55 $r1,$r6
   93b82:	80 09       	mov55 $r0,$r9
   93b84:	49 ff fb ad 	jal 932de <ATT_CheckHandle>
   93b88:	80 09       	mov55 $r0,$r9
   93b8a:	80 26       	mov55 $r1,$r6
   93b8c:	49 ff fc b4 	jal 934f4 <ATT_CheckReadPermission>
   93b90:	00 04 80 00 	lbi $r0,[$r9+#0x0]
   93b94:	c8 11       	bnez38 $r0,93bb6 <ATT_ServerGetReadBlobReq+0x5c>
   93b96:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   93b9a:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   93b9e:	00 10 00 0e 	lbi $r1,[$r0+#0xe]
   93ba2:	00 00 00 0f 	lbi $r0,[$r0+#0xf]
   93ba6:	40 00 20 08 	slli $r0,$r0,#8
   93baa:	fe 0f       	or33 $r0,$r1
   93bac:	e2 07       	slt45 $r0,$r7
   93bae:	e8 04       	beqzs8 93bb6 <ATT_ServerGetReadBlobReq+0x5c>
   93bb0:	84 07       	movi55 $r0,#7
   93bb2:	10 04 80 00 	sbi $r0,[$r9+#0x0]
   93bb6:	00 24 80 00 	lbi $r2,[$r9+#0x0]
   93bba:	c2 06       	beqz38 $r2,93bc6 <ATT_ServerGetReadBlobReq+0x6c>
   93bbc:	84 0c       	movi55 $r0,#12
   93bbe:	80 28       	mov55 $r1,$r8
   93bc0:	49 ff fd 37 	jal 9362e <ATT_SendErrorRsp>
   93bc4:	d5 47       	j8 93c52 <ATT_ServerGetReadBlobReq+0xf8>
   93bc6:	2e 97 c9 7e 	lbi.gp $r9,[+#-13954]
   93bca:	84 0d       	movi55 $r0,#13
   93bcc:	49 ff fc 38 	jal 9343c <ATT_AllocRspDataPdu>
   93bd0:	81 40       	mov55 $r10,$r0
   93bd2:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   93bd6:	41 c3 08 08 	slli $fp,$r6,#2
   93bda:	38 00 70 02 	lw $r0,[$r0+($fp<<#0x0)]
   93bde:	00 80 00 0f 	lbi $r8,[$r0+#0xf]
   93be2:	00 10 00 0e 	lbi $r1,[$r0+#0xe]
   93be6:	40 84 20 08 	slli $r8,$r8,#8
   93bea:	40 84 04 04 	or $r8,$r8,$r1
   93bee:	40 04 a4 00 	add $r0,$r9,$r9
   93bf2:	3e 1f c9 18 	addi.gp $r1,#-14056
   93bf6:	98 01       	add333 $r0,$r0,$r1
   93bf8:	a4 02       	lhi333 $r0,[$r0+#0x4]
   93bfa:	8b 07       	sub45 $r8,$r7
   93bfc:	9e 01       	subi333 $r0,$r0,#1
   93bfe:	e0 08       	slts45 $r0,$r8
   93c00:	e8 02       	beqzs8 93c04 <ATT_ServerGetReadBlobReq+0xaa>
   93c02:	81 00       	mov55 $r8,$r0
   93c04:	40 84 00 13 	zeh $r8,$r8
   93c08:	4e 82 00 1f 	beqz $r8,93c46 <ATT_ServerGetReadBlobReq+0xec>
   93c0c:	cf 06       	bnez38 $r7,93c18 <ATT_ServerGetReadBlobReq+0xbe>
   93c0e:	80 06       	mov55 $r0,$r6
   93c10:	84 21       	movi55 $r1,#1
   93c12:	80 49       	mov55 $r2,$r9
   93c14:	49 ff fb 71 	jal 932f6 <ATT_CALLBACK>
   93c18:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   93c1c:	38 30 70 02 	lw $r3,[$r0+($fp<<#0x0)]
   93c20:	a6 99       	lbi333 $r2,[$r3+#0x1]
   93c22:	a7 18       	lbi333 $r4,[$r3+#0x0]
   93c24:	a6 1a       	lbi333 $r0,[$r3+#0x2]
   93c26:	40 21 20 08 	slli $r2,$r2,#8
   93c2a:	a6 5b       	lbi333 $r1,[$r3+#0x3]
   93c2c:	fe a7       	or33 $r2,$r4
   93c2e:	40 00 40 08 	slli $r0,$r0,#16
   93c32:	fe 17       	or33 $r0,$r2
   93c34:	40 10 e0 08 	slli $r1,$r1,#24
   93c38:	fe 47       	or33 $r1,$r0
   93c3a:	98 4f       	add333 $r1,$r1,$r7
   93c3c:	50 05 00 01 	addi $r0,$r10,#1
   93c40:	80 48       	mov55 $r2,$r8
   93c42:	49 ff e2 03 	jal 90048 <memcpy>
   93c46:	50 14 00 01 	addi $r1,$r8,#1
   93c4a:	80 0a       	mov55 $r0,$r10
   93c4c:	96 49       	zeh33 $r1,$r1
   93c4e:	49 ff fc e7 	jal 9361c <ATT_SendPduToL2CAP>
   93c52:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

00093c54 <ATT_ServerGetReadValueReq>:
   93c54:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   93c56:	9c 01       	addi333 $r0,$r0,#1
   93c58:	49 ff fb a1 	jal 9339a <ATT_GetU16LE>
   93c5c:	80 e0       	mov55 $r7,$r0
   93c5e:	49 ff fb 11 	jal 93280 <ATT_BinarySearchIndexByHandle>
   93c62:	97 80       	zeb33 $r6,$r0
   93c64:	50 8f 80 07 	addi $r8,$sp,#7
   93c68:	84 00       	movi55 $r0,#0
   93c6a:	10 04 00 00 	sbi $r0,[$r8+#0x0]
   93c6e:	80 26       	mov55 $r1,$r6
   93c70:	80 08       	mov55 $r0,$r8
   93c72:	49 ff fb 36 	jal 932de <ATT_CheckHandle>
   93c76:	80 08       	mov55 $r0,$r8
   93c78:	80 26       	mov55 $r1,$r6
   93c7a:	49 ff fc 3d 	jal 934f4 <ATT_CheckReadPermission>
   93c7e:	00 24 00 00 	lbi $r2,[$r8+#0x0]
   93c82:	c2 06       	beqz38 $r2,93c8e <ATT_ServerGetReadValueReq+0x3a>
   93c84:	84 0a       	movi55 $r0,#10
   93c86:	80 27       	mov55 $r1,$r7
   93c88:	49 ff fc d3 	jal 9362e <ATT_SendErrorRsp>
   93c8c:	d5 38       	j8 93cfc <ATT_ServerGetReadValueReq+0xa8>
   93c8e:	84 0b       	movi55 $r0,#11
   93c90:	49 ff fb d6 	jal 9343c <ATT_AllocRspDataPdu>
   93c94:	81 00       	mov55 $r8,$r0
   93c96:	2e 77 c9 7e 	lbi.gp $r7,[+#-13954]
   93c9a:	84 21       	movi55 $r1,#1
   93c9c:	80 47       	mov55 $r2,$r7
   93c9e:	80 06       	mov55 $r0,$r6
   93ca0:	49 ff fb 2b 	jal 932f6 <ATT_CALLBACK>
   93ca4:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   93ca8:	99 ff       	add333 $r7,$r7,$r7
   93caa:	38 30 1a 02 	lw $r3,[$r0+($r6<<#0x2)]
   93cae:	3e 0f c9 18 	addi.gp $r0,#-14056
   93cb2:	99 f8       	add333 $r7,$r7,$r0
   93cb4:	00 01 80 0f 	lbi $r0,[$r3+#0xf]
   93cb8:	a4 ba       	lhi333 $r2,[$r7+#0x4]
   93cba:	00 11 80 0e 	lbi $r1,[$r3+#0xe]
   93cbe:	40 00 20 08 	slli $r0,$r0,#8
   93cc2:	9e 91       	subi333 $r2,$r2,#1
   93cc4:	fe 0f       	or33 $r0,$r1
   93cc6:	e0 02       	slts45 $r0,$r2
   93cc8:	e8 02       	beqzs8 93ccc <ATT_ServerGetReadValueReq+0x78>
   93cca:	80 40       	mov55 $r2,$r0
   93ccc:	a6 19       	lbi333 $r0,[$r3+#0x1]
   93cce:	a6 58       	lbi333 $r1,[$r3+#0x0]
   93cd0:	97 91       	zeh33 $r6,$r2
   93cd2:	40 00 20 08 	slli $r0,$r0,#8
   93cd6:	a6 9a       	lbi333 $r2,[$r3+#0x2]
   93cd8:	fe 0f       	or33 $r0,$r1
   93cda:	a6 5b       	lbi333 $r1,[$r3+#0x3]
   93cdc:	40 21 40 08 	slli $r2,$r2,#16
   93ce0:	fe 87       	or33 $r2,$r0
   93ce2:	40 10 e0 08 	slli $r1,$r1,#24
   93ce6:	fe 57       	or33 $r1,$r2
   93ce8:	50 04 00 01 	addi $r0,$r8,#1
   93cec:	80 46       	mov55 $r2,$r6
   93cee:	49 ff e1 ad 	jal 90048 <memcpy>
   93cf2:	9c 71       	addi333 $r1,$r6,#1
   93cf4:	80 08       	mov55 $r0,$r8
   93cf6:	96 49       	zeh33 $r1,$r1
   93cf8:	49 ff fc 92 	jal 9361c <ATT_SendPduToL2CAP>
   93cfc:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

00093cfe <ATT_ServerGetReadByTypeReq>:
   93cfe:	fc 4c       	push25 $r10,#0x60    ! {$r6~$r10, $fp, $gp, $lp}
   93d00:	80 c0       	mov55 $r6,$r0
   93d02:	9c 01       	addi333 $r0,$r0,#1
   93d04:	49 ff fb 4b 	jal 9339a <ATT_GetU16LE>
   93d08:	f0 85       	swi37.sp $r0,[+#0x14]
   93d0a:	9c 33       	addi333 $r0,$r6,#3
   93d0c:	49 ff fb 47 	jal 9339a <ATT_GetU16LE>
   93d10:	f0 8a       	swi37.sp $r0,[+#0x28]
   93d12:	2e 27 c9 7c 	lbi.gp $r2,[+#-13956]
   93d16:	f1 05       	lwi37.sp $r1,[+#0x14]
   93d18:	9e 95       	subi333 $r2,$r2,#5
   93d1a:	96 90       	zeb33 $r2,$r2
   93d1c:	f2 84       	swi37.sp $r2,[+#0x10]
   93d1e:	e2 01       	slt45 $r0,$r1
   93d20:	e9 02       	bnezs8 93d24 <ATT_ServerGetReadByTypeReq+0x26>
   93d22:	c9 06       	bnez38 $r1,93d2e <ATT_ServerGetReadByTypeReq+0x30>
   93d24:	84 08       	movi55 $r0,#8
   93d26:	f1 05       	lwi37.sp $r1,[+#0x14]
   93d28:	84 41       	movi55 $r2,#1
   93d2a:	48 00 00 ee 	j 93f06 <ATT_ServerGetReadByTypeReq+0x208>
   93d2e:	2e 37 c9 7e 	lbi.gp $r3,[+#-13954]
   93d32:	3e 1f c9 18 	addi.gp $r1,#-14056
   93d36:	99 5b       	add333 $r5,$r3,$r3
   93d38:	85 00       	movi55 $r8,#0
   93d3a:	9d b5       	addi333 $r6,$r6,#5
   93d3c:	84 01       	movi55 $r0,#1
   93d3e:	98 69       	add333 $r1,$r5,$r1
   93d40:	f3 87       	swi37.sp $r3,[+#0x1c]
   93d42:	f6 89       	swi37.sp $r6,[+#0x24]
   93d44:	f0 83       	swi37.sp $r0,[+#0xc]
   93d46:	14 8f 80 02 	swi $r8,[$sp+#0x8]
   93d4a:	14 8f 80 08 	swi $r8,[$sp+#0x20]
   93d4e:	14 8f 80 06 	swi $r8,[$sp+#0x18]
   93d52:	50 af 80 54 	addi $r10,$sp,#84
   93d56:	f1 8b       	swi37.sp $r1,[+#0x2c]
   93d58:	51 cf 80 34 	addi $fp,$sp,#52
   93d5c:	48 00 00 ca 	j 93ef0 <ATT_ServerGetReadByTypeReq+0x1f2>
   93d60:	3c 5d f4 b3 	lwi.gp $r5,[+#-11572]
   93d64:	f1 03       	lwi37.sp $r1,[+#0xc]
   93d66:	f0 05       	lwi37.sp $r0,[+#0x14]
   93d68:	38 92 86 02 	lw $r9,[$r5+($r1<<#0x2)]
   93d6c:	00 54 80 13 	lbi $r5,[$r9+#0x13]
   93d70:	00 64 80 12 	lbi $r6,[$r9+#0x12]
   93d74:	40 52 a0 08 	slli $r5,$r5,#8
   93d78:	ff 77       	or33 $r5,$r6
   93d7a:	e2 a0       	slt45 $r5,$r0
   93d7c:	4e f3 00 b6 	bnez $r15,93ee8 <ATT_ServerGetReadByTypeReq+0x1ea>
   93d80:	f1 0a       	lwi37.sp $r1,[+#0x28]
   93d82:	e2 25       	slt45 $r1,$r5
   93d84:	4e f3 00 bc 	bnez $r15,93efc <ATT_ServerGetReadByTypeReq+0x1fe>
   93d88:	f0 04       	lwi37.sp $r0,[+#0x10]
   93d8a:	5a 00 02 04 	beqc $r0,#2,93d92 <ATT_ServerGetReadByTypeReq+0x94>
   93d8e:	f7 09       	lwi37.sp $r7,[+#0x24]
   93d90:	d5 05       	j8 93d9a <ATT_ServerGetReadByTypeReq+0x9c>
   93d92:	f0 09       	lwi37.sp $r0,[+#0x24]
   93d94:	49 ff fb 03 	jal 9339a <ATT_GetU16LE>
   93d98:	80 e0       	mov55 $r7,$r0
   93d9a:	80 0a       	mov55 $r0,$r10
   93d9c:	50 14 80 08 	addi $r1,$r9,#8
   93da0:	84 45       	movi55 $r2,#5
   93da2:	49 ff e1 53 	jal 90048 <memcpy>
   93da6:	00 65 00 04 	lbi $r6,[$r10+#0x4]
   93daa:	f7 97       	swi37.sp $r7,[+#0x5c]
   93dac:	5a 68 02 0c 	bnec $r6,#2,93dc4 <ATT_ServerGetReadByTypeReq+0xc6>
   93db0:	f1 04       	lwi37.sp $r1,[+#0x10]
   93db2:	4c 13 40 10 	bne $r1,$r6,93dd2 <ATT_ServerGetReadByTypeReq+0xd4>
   93db6:	02 65 00 00 	lhi $r6,[$r10+#0x0]
   93dba:	97 79       	zeh33 $r5,$r7
   93dbc:	ff 75       	xor33 $r5,$r6
   93dbe:	5c 52 80 01 	slti $r5,$r5,#1
   93dc2:	d5 18       	j8 93df2 <ATT_ServerGetReadByTypeReq+0xf4>
   93dc4:	f0 04       	lwi37.sp $r0,[+#0x10]
   93dc6:	4c 60 40 06 	bne $r6,$r0,93dd2 <ATT_ServerGetReadByTypeReq+0xd4>
   93dca:	f0 15       	lwi37.sp $r0,[+#0x54]
   93dcc:	80 27       	mov55 $r1,$r7
   93dce:	f2 04       	lwi37.sp $r2,[+#0x10]
   93dd0:	d5 0e       	j8 93dec <ATT_ServerGetReadByTypeReq+0xee>
   93dd2:	f2 15       	lwi37.sp $r2,[+#0x54]
   93dd4:	b0 11       	addri36.sp $r0,#0x44
   93dd6:	80 26       	mov55 $r1,$r6
   93dd8:	49 ff fb 02 	jal 933dc <ATT_ConvertToUUID128>
   93ddc:	f1 04       	lwi37.sp $r1,[+#0x10]
   93dde:	80 1c       	mov55 $r0,$fp
   93de0:	b0 97       	addri36.sp $r2,#0x5c
   93de2:	49 ff fa fd 	jal 933dc <ATT_ConvertToUUID128>
   93de6:	b0 11       	addri36.sp $r0,#0x44
   93de8:	80 3c       	mov55 $r1,$fp
   93dea:	fa 40       	movpi45 $r2,#0x10
   93dec:	49 ff fb 93 	jal 93512 <ATT_IsSameValue>
   93df0:	80 a0       	mov55 $r5,$r0
   93df2:	4e 52 00 7b 	beqz $r5,93ee8 <ATT_ServerGetReadByTypeReq+0x1ea>
   93df6:	f1 03       	lwi37.sp $r1,[+#0xc]
   93df8:	84 a0       	movi55 $r5,#0
   93dfa:	b0 17       	addri36.sp $r0,#0x5c
   93dfc:	af 40       	sbi333 $r5,[$r0+#0x0]
   93dfe:	49 ff fb 7b 	jal 934f4 <ATT_CheckReadPermission>
   93e02:	4e 83 00 29 	bnez $r8,93e54 <ATT_ServerGetReadByTypeReq+0x156>
   93e06:	00 5f 80 5c 	lbi $r5,[$sp+#0x5c]
   93e0a:	c5 0c       	beqz38 $r5,93e22 <ATT_ServerGetReadByTypeReq+0x124>
   93e0c:	00 14 80 13 	lbi $r1,[$r9+#0x13]
   93e10:	00 34 80 12 	lbi $r3,[$r9+#0x12]
   93e14:	40 10 a0 08 	slli $r1,$r1,#8
   93e18:	84 08       	movi55 $r0,#8
   93e1a:	fe 5f       	or33 $r1,$r3
   93e1c:	80 45       	mov55 $r2,$r5
   93e1e:	48 00 00 74 	j 93f06 <ATT_ServerGetReadByTypeReq+0x208>
   93e22:	84 09       	movi55 $r0,#9
   93e24:	49 ff fb 0c 	jal 9343c <ATT_AllocRspDataPdu>
   93e28:	9c 41       	addi333 $r1,$r0,#1
   93e2a:	f0 88       	swi37.sp $r0,[+#0x20]
   93e2c:	f1 86       	swi37.sp $r1,[+#0x18]
   93e2e:	f0 0b       	lwi37.sp $r0,[+#0x2c]
   93e30:	00 64 80 0e 	lbi $r6,[$r9+#0xe]
   93e34:	a5 02       	lhi333 $r4,[$r0+#0x4]
   93e36:	9f 64       	subi333 $r5,$r4,#4
   93e38:	00 44 80 0f 	lbi $r4,[$r9+#0xf]
   93e3c:	40 42 20 08 	slli $r4,$r4,#8
   93e40:	ff 37       	or33 $r4,$r6
   93e42:	e0 85       	slts45 $r4,$r5
   93e44:	e8 02       	beqzs8 93e48 <ATT_ServerGetReadByTypeReq+0x14a>
   93e46:	80 a4       	mov55 $r5,$r4
   93e48:	97 69       	zeh33 $r5,$r5
   93e4a:	f1 06       	lwi37.sp $r1,[+#0x18]
   93e4c:	9d 2a       	addi333 $r4,$r5,#2
   93e4e:	f5 82       	swi37.sp $r5,[+#0x8]
   93e50:	af 08       	sbi333 $r4,[$r1+#0x0]
   93e52:	d5 0e       	j8 93e6e <ATT_ServerGetReadByTypeReq+0x170>
   93e54:	00 44 80 0f 	lbi $r4,[$r9+#0xf]
   93e58:	00 64 80 0e 	lbi $r6,[$r9+#0xe]
   93e5c:	40 42 20 08 	slli $r4,$r4,#8
   93e60:	f0 02       	lwi37.sp $r0,[+#0x8]
   93e62:	ff 37       	or33 $r4,$r6
   93e64:	4c 02 40 4c 	bne $r0,$r4,93efc <ATT_ServerGetReadByTypeReq+0x1fe>
   93e68:	00 4f 80 5c 	lbi $r4,[$sp+#0x5c]
   93e6c:	cc 48       	bnez38 $r4,93efc <ATT_ServerGetReadByTypeReq+0x1fe>
   93e6e:	f1 02       	lwi37.sp $r1,[+#0x8]
   93e70:	50 34 00 01 	addi $r3,$r8,#1
   93e74:	9d 8a       	addi333 $r6,$r1,#2
   93e76:	f0 0b       	lwi37.sp $r0,[+#0x2c]
   93e78:	42 43 0c 24 	mul $r4,$r6,$r3
   93e7c:	9d 61       	addi333 $r5,$r4,#1
   93e7e:	a5 02       	lhi333 $r4,[$r0+#0x4]
   93e80:	e0 a4       	slts45 $r5,$r4
   93e82:	e8 3d       	beqzs8 93efc <ATT_ServerGetReadByTypeReq+0x1fe>
   93e84:	f2 07       	lwi37.sp $r2,[+#0x1c]
   93e86:	f0 03       	lwi37.sp $r0,[+#0xc]
   93e88:	84 21       	movi55 $r1,#1
   93e8a:	f3 81       	swi37.sp $r3,[+#0x4]
   93e8c:	49 ff fa 35 	jal 932f6 <ATT_CALLBACK>
   93e90:	f1 06       	lwi37.sp $r1,[+#0x18]
   93e92:	00 44 80 13 	lbi $r4,[$r9+#0x13]
   93e96:	42 83 20 24 	mul $r8,$r6,$r8
   93e9a:	00 64 80 12 	lbi $r6,[$r9+#0x12]
   93e9e:	40 70 a0 00 	add $r7,$r1,$r8
   93ea2:	40 42 20 08 	slli $r4,$r4,#8
   93ea6:	40 12 18 04 	or $r1,$r4,$r6
   93eaa:	9c 39       	addi333 $r0,$r7,#1
   93eac:	49 ff fa 71 	jal 9338e <ATT_SetU16LE>
   93eb0:	00 44 80 01 	lbi $r4,[$r9+#0x1]
   93eb4:	00 64 80 00 	lbi $r6,[$r9+#0x0]
   93eb8:	40 42 20 08 	slli $r4,$r4,#8
   93ebc:	ff a7       	or33 $r6,$r4
   93ebe:	00 44 80 02 	lbi $r4,[$r9+#0x2]
   93ec2:	f0 06       	lwi37.sp $r0,[+#0x18]
   93ec4:	40 42 40 08 	slli $r4,$r4,#16
   93ec8:	ff a7       	or33 $r6,$r4
   93eca:	00 44 80 03 	lbi $r4,[$r9+#0x3]
   93ece:	89 00       	add45 $r8,$r0
   93ed0:	40 52 60 08 	slli $r5,$r4,#24
   93ed4:	f2 02       	lwi37.sp $r2,[+#0x8]
   93ed6:	50 04 00 03 	addi $r0,$r8,#3
   93eda:	40 12 98 04 	or $r1,$r5,$r6
   93ede:	49 ff e0 b5 	jal 90048 <memcpy>
   93ee2:	f3 01       	lwi37.sp $r3,[+#0x4]
   93ee4:	54 81 80 ff 	andi $r8,$r3,#0xff
   93ee8:	f1 03       	lwi37.sp $r1,[+#0xc]
   93eea:	9c c9       	addi333 $r3,$r1,#1
   93eec:	96 d8       	zeb33 $r3,$r3
   93eee:	f3 83       	swi37.sp $r3,[+#0xc]
   93ef0:	3c 33 e9 7d 	lhi.gp $r3,[+#-11526]
   93ef4:	f1 03       	lwi37.sp $r1,[+#0xc]
   93ef6:	e2 23       	slt45 $r1,$r3
   93ef8:	4e f3 ff 34 	bnez $r15,93d60 <ATT_ServerGetReadByTypeReq+0x62>
   93efc:	f0 02       	lwi37.sp $r0,[+#0x8]
   93efe:	c8 07       	bnez38 $r0,93f0c <ATT_ServerGetReadByTypeReq+0x20e>
   93f00:	f1 05       	lwi37.sp $r1,[+#0x14]
   93f02:	84 08       	movi55 $r0,#8
   93f04:	84 4a       	movi55 $r2,#10
   93f06:	49 ff fb 94 	jal 9362e <ATT_SendErrorRsp>
   93f0a:	d5 0a       	j8 93f1e <ATT_ServerGetReadByTypeReq+0x220>
   93f0c:	f1 02       	lwi37.sp $r1,[+#0x8]
   93f0e:	f0 08       	lwi37.sp $r0,[+#0x20]
   93f10:	9c ca       	addi333 $r3,$r1,#2
   93f12:	42 14 0c 24 	mul $r1,$r8,$r3
   93f16:	9c 4a       	addi333 $r1,$r1,#2
   93f18:	96 49       	zeh33 $r1,$r1
   93f1a:	49 ff fb 81 	jal 9361c <ATT_SendPduToL2CAP>
   93f1e:	fc cc       	pop25 $r10,#0x60    ! {$r6~$r10, $fp, $gp, $lp}

00093f20 <ATT_ServerGetFindByTypeValueReq>:
   93f20:	fc 43       	push25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}
   93f22:	3c 23 e4 be 	lhi.gp $r2,[+#-13956]
   93f26:	80 c0       	mov55 $r6,$r0
   93f28:	9e 97       	subi333 $r2,$r2,#7
   93f2a:	9c 01       	addi333 $r0,$r0,#1
   93f2c:	40 81 00 13 	zeh $r8,$r2
   93f30:	49 ff fa 35 	jal 9339a <ATT_GetU16LE>
   93f34:	b6 1f       	swi450 $r0,[$sp]
   93f36:	9c 33       	addi333 $r0,$r6,#3
   93f38:	49 ff fa 31 	jal 9339a <ATT_GetU16LE>
   93f3c:	f0 82       	swi37.sp $r0,[+#0x8]
   93f3e:	9c 35       	addi333 $r0,$r6,#5
   93f40:	49 ff fa 2d 	jal 9339a <ATT_GetU16LE>
   93f44:	f0 81       	swi37.sp $r0,[+#0x4]
   93f46:	b4 3f       	lwi450 $r1,[$sp]
   93f48:	f0 02       	lwi37.sp $r0,[+#0x8]
   93f4a:	e2 01       	slt45 $r0,$r1
   93f4c:	e9 02       	bnezs8 93f50 <ATT_ServerGetFindByTypeValueReq+0x30>
   93f4e:	c9 06       	bnez38 $r1,93f5a <ATT_ServerGetFindByTypeValueReq+0x3a>
   93f50:	84 06       	movi55 $r0,#6
   93f52:	b4 3f       	lwi450 $r1,[$sp]
   93f54:	84 41       	movi55 $r2,#1
   93f56:	48 00 00 8b 	j 9406c <ATT_ServerGetFindByTypeValueReq+0x14c>
   93f5a:	84 07       	movi55 $r0,#7
   93f5c:	49 ff fa 70 	jal 9343c <ATT_AllocRspDataPdu>
   93f60:	f0 83       	swi37.sp $r0,[+#0xc]
   93f62:	50 90 00 01 	addi $r9,$r0,#1
   93f66:	f0 01       	lwi37.sp $r0,[+#0x4]
   93f68:	9d b7       	addi333 $r6,$r6,#7
   93f6a:	50 30 58 00 	addi $r3,$r0,#-10240
   93f6e:	96 d9       	zeh33 $r3,$r3
   93f70:	f3 85       	swi37.sp $r3,[+#0x14]
   93f72:	f6 84       	swi37.sp $r6,[+#0x10]
   93f74:	85 41       	movi55 $r10,#1
   93f76:	87 80       	movi55 $fp,#0
   93f78:	48 00 00 71 	j 9405a <ATT_ServerGetFindByTypeValueReq+0x13a>
   93f7c:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   93f80:	38 60 aa 02 	lw $r6,[$r1+($r10<<#0x2)]
   93f84:	00 13 00 13 	lbi $r1,[$r6+#0x13]
   93f88:	00 33 00 12 	lbi $r3,[$r6+#0x12]
   93f8c:	40 10 a0 08 	slli $r1,$r1,#8
   93f90:	40 70 8c 04 	or $r7,$r1,$r3
   93f94:	b4 3f       	lwi450 $r1,[$sp]
   93f96:	e2 e1       	slt45 $r7,$r1
   93f98:	e9 5e       	bnezs8 94054 <ATT_ServerGetFindByTypeValueReq+0x134>
   93f9a:	f0 02       	lwi37.sp $r0,[+#0x8]
   93f9c:	e2 07       	slt45 $r0,$r7
   93f9e:	e9 62       	bnezs8 94062 <ATT_ServerGetFindByTypeValueReq+0x142>
   93fa0:	00 33 00 09 	lbi $r3,[$r6+#0x9]
   93fa4:	00 43 00 08 	lbi $r4,[$r6+#0x8]
   93fa8:	40 31 a0 08 	slli $r3,$r3,#8
   93fac:	f1 01       	lwi37.sp $r1,[+#0x4]
   93fae:	fe e7       	or33 $r3,$r4
   93fb0:	4c 30 c0 46 	bne $r3,$r1,9403c <ATT_ServerGetFindByTypeValueReq+0x11c>
   93fb4:	00 33 00 0f 	lbi $r3,[$r6+#0xf]
   93fb8:	00 43 00 0e 	lbi $r4,[$r6+#0xe]
   93fbc:	40 31 a0 08 	slli $r3,$r3,#8
   93fc0:	fe e7       	or33 $r3,$r4
   93fc2:	4c 34 40 3d 	bne $r3,$r8,9403c <ATT_ServerGetFindByTypeValueReq+0x11c>
   93fc6:	a6 f1       	lbi333 $r3,[$r6+#0x1]
   93fc8:	a7 30       	lbi333 $r4,[$r6+#0x0]
   93fca:	40 31 a0 08 	slli $r3,$r3,#8
   93fce:	ff 1f       	or33 $r4,$r3
   93fd0:	a6 f2       	lbi333 $r3,[$r6+#0x2]
   93fd2:	f0 04       	lwi37.sp $r0,[+#0x10]
   93fd4:	40 31 c0 08 	slli $r3,$r3,#16
   93fd8:	40 51 90 04 	or $r5,$r3,$r4
   93fdc:	a6 f3       	lbi333 $r3,[$r6+#0x3]
   93fde:	80 48       	mov55 $r2,$r8
   93fe0:	40 41 e0 08 	slli $r4,$r3,#24
   93fe4:	40 12 14 04 	or $r1,$r4,$r5
   93fe8:	49 ff fa 95 	jal 93512 <ATT_IsSameValue>
   93fec:	c0 28       	beqz38 $r0,9403c <ATT_ServerGetFindByTypeValueReq+0x11c>
   93fee:	40 3e 08 08 	slli $r3,$fp,#2
   93ff2:	40 04 8c 00 	add $r0,$r9,$r3
   93ff6:	80 27       	mov55 $r1,$r7
   93ff8:	49 ff f9 cb 	jal 9338e <ATT_SetU16LE>
   93ffc:	f0 05       	lwi37.sp $r0,[+#0x14]
   93ffe:	e6 02       	slti45 $r0,#2
   94000:	e8 0a       	beqzs8 94014 <ATT_ServerGetFindByTypeValueReq+0xf4>
   94002:	80 0a       	mov55 $r0,$r10
   94004:	49 ff f9 92 	jal 93328 <ATT_ReturnGroupEndIndex>
   94008:	81 40       	mov55 $r10,$r0
   9400a:	c0 05       	beqz38 $r0,94014 <ATT_ServerGetFindByTypeValueReq+0xf4>
   9400c:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   94010:	38 60 aa 02 	lw $r6,[$r1+($r10<<#0x2)]
   94014:	40 1e 70 00 	add $r1,$fp,$fp
   94018:	00 33 00 13 	lbi $r3,[$r6+#0x13]
   9401c:	00 43 00 12 	lbi $r4,[$r6+#0x12]
   94020:	9c 49       	addi333 $r1,$r1,#1
   94022:	98 49       	add333 $r1,$r1,$r1
   94024:	40 31 a0 08 	slli $r3,$r3,#8
   94028:	40 04 84 00 	add $r0,$r9,$r1
   9402c:	51 ce 00 01 	addi $fp,$fp,#1
   94030:	40 11 90 04 	or $r1,$r3,$r4
   94034:	49 ff f9 ad 	jal 9338e <ATT_SetU16LE>
   94038:	55 ce 00 ff 	andi $fp,$fp,#0xff
   9403c:	3e 0f c9 18 	addi.gp $r0,#-14056
   94040:	00 10 00 66 	lbi $r1,[$r0+#0x66]
   94044:	98 49       	add333 $r1,$r1,$r1
   94046:	98 48       	add333 $r1,$r1,$r0
   94048:	a4 ca       	lhi333 $r3,[$r1+#0x4]
   9404a:	50 1e 00 01 	addi $r1,$fp,#1
   9404e:	94 4a       	slli333 $r1,$r1,#2
   94050:	e0 23       	slts45 $r1,$r3
   94052:	e8 08       	beqzs8 94062 <ATT_ServerGetFindByTypeValueReq+0x142>
   94054:	8d 41       	addi45 $r10,#1
   94056:	54 a5 00 ff 	andi $r10,$r10,#0xff
   9405a:	3c 13 e9 7d 	lhi.gp $r1,[+#-11526]
   9405e:	e3 41       	slt45 $r10,$r1
   94060:	e9 8e       	bnezs8 93f7c <ATT_ServerGetFindByTypeValueReq+0x5c>
   94062:	4f c3 00 08 	bnez $fp,94072 <ATT_ServerGetFindByTypeValueReq+0x152>
   94066:	b4 3f       	lwi450 $r1,[$sp]
   94068:	84 06       	movi55 $r0,#6
   9406a:	84 4a       	movi55 $r2,#10
   9406c:	49 ff fa e1 	jal 9362e <ATT_SendErrorRsp>
   94070:	d5 07       	j8 9407e <ATT_ServerGetFindByTypeValueReq+0x15e>
   94072:	40 1e 08 08 	slli $r1,$fp,#2
   94076:	f0 03       	lwi37.sp $r0,[+#0xc]
   94078:	9c 49       	addi333 $r1,$r1,#1
   9407a:	49 ff fa d1 	jal 9361c <ATT_SendPduToL2CAP>
   9407e:	fc c3       	pop25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}

00094080 <ATT_ServerGetFindInfoReq>:
   94080:	fc 43       	push25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}
   94082:	80 c0       	mov55 $r6,$r0
   94084:	9c 01       	addi333 $r0,$r0,#1
   94086:	49 ff f9 8a 	jal 9339a <ATT_GetU16LE>
   9408a:	83 80       	mov55 $fp,$r0
   9408c:	9c 33       	addi333 $r0,$r6,#3
   9408e:	49 ff f9 86 	jal 9339a <ATT_GetU16LE>
   94092:	f0 83       	swi37.sp $r0,[+#0xc]
   94094:	e2 1c       	slt45 $r0,$fp
   94096:	e9 03       	bnezs8 9409c <ATT_ServerGetFindInfoReq+0x1c>
   94098:	4f c3 00 07 	bnez $fp,940a6 <ATT_ServerGetFindInfoReq+0x26>
   9409c:	84 04       	movi55 $r0,#4
   9409e:	80 3c       	mov55 $r1,$fp
   940a0:	84 41       	movi55 $r2,#1
   940a2:	48 00 00 b5 	j 9420c <ATT_ServerGetFindInfoReq+0x18c>
   940a6:	84 05       	movi55 $r0,#5
   940a8:	49 ff f9 ca 	jal 9343c <ATT_AllocRspDataPdu>
   940ac:	f0 84       	swi37.sp $r0,[+#0x10]
   940ae:	9c 01       	addi333 $r0,$r0,#1
   940b0:	9c 41       	addi333 $r1,$r0,#1
   940b2:	f1 82       	swi37.sp $r1,[+#0x8]
   940b4:	85 20       	movi55 $r9,#0
   940b6:	84 21       	movi55 $r1,#1
   940b8:	15 cf 80 05 	swi $fp,[$sp+#0x14]
   940bc:	f0 81       	swi37.sp $r0,[+#0x4]
   940be:	81 49       	mov55 $r10,$r9
   940c0:	83 81       	mov55 $fp,$r1
   940c2:	48 00 00 98 	j 941f2 <ATT_ServerGetFindInfoReq+0x172>
   940c6:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   940ca:	f4 05       	lwi37.sp $r4,[+#0x14]
   940cc:	38 60 f2 02 	lw $r6,[$r1+($fp<<#0x2)]
   940d0:	9d b4       	addi333 $r6,$r6,#4
   940d2:	00 13 00 0f 	lbi $r1,[$r6+#0xf]
   940d6:	00 23 00 0e 	lbi $r2,[$r6+#0xe]
   940da:	40 10 a0 08 	slli $r1,$r1,#8
   940de:	40 00 88 04 	or $r0,$r1,$r2
   940e2:	e2 04       	slt45 $r0,$r4
   940e4:	4e f3 00 83 	bnez $r15,941ea <ATT_ServerGetFindInfoReq+0x16a>
   940e8:	f1 03       	lwi37.sp $r1,[+#0xc]
   940ea:	e2 20       	slt45 $r1,$r0
   940ec:	4e f3 00 89 	bnez $r15,941fe <ATT_ServerGetFindInfoReq+0x17e>
   940f0:	4e a3 00 12 	bnez $r10,94114 <ATT_ServerGetFindInfoReq+0x94>
   940f4:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   940f8:	5a 10 02 04 	beqc $r1,#2,94100 <ATT_ServerGetFindInfoReq+0x80>
   940fc:	84 02       	movi55 $r0,#2
   940fe:	d5 02       	j8 94102 <ATT_ServerGetFindInfoReq+0x82>
   94100:	84 01       	movi55 $r0,#1
   94102:	f2 01       	lwi37.sp $r2,[+#0x4]
   94104:	ae 10       	sbi333 $r0,[$r2+#0x0]
   94106:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   9410a:	5a 10 02 04 	beqc $r1,#2,94112 <ATT_ServerGetFindInfoReq+0x92>
   9410e:	fb 42       	movpi45 $r10,#0x12
   94110:	d5 02       	j8 94114 <ATT_ServerGetFindInfoReq+0x94>
   94112:	85 44       	movi55 $r10,#4
   94114:	3e 4f c9 18 	addi.gp $r4,#-14056
   94118:	00 22 00 66 	lbi $r2,[$r4+#0x66]
   9411c:	50 14 80 01 	addi $r1,$r9,#1
   94120:	98 92       	add333 $r2,$r2,$r2
   94122:	98 94       	add333 $r2,$r2,$r4
   94124:	42 15 04 24 	mul $r1,$r10,$r1
   94128:	a4 92       	lhi333 $r2,[$r2+#0x4]
   9412a:	9c 49       	addi333 $r1,$r1,#1
   9412c:	e0 22       	slts45 $r1,$r2
   9412e:	e8 68       	beqzs8 941fe <ATT_ServerGetFindInfoReq+0x17e>
   94130:	f1 01       	lwi37.sp $r1,[+#0x4]
   94132:	a6 08       	lbi333 $r0,[$r1+#0x0]
   94134:	5a 08 01 12 	bnec $r0,#1,94158 <ATT_ServerGetFindInfoReq+0xd8>
   94138:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   9413c:	5a 18 02 61 	bnec $r1,#2,941fe <ATT_ServerGetFindInfoReq+0x17e>
   94140:	f3 01       	lwi37.sp $r3,[+#0x4]
   94142:	a6 b5       	lbi333 $r2,[$r6+#0x5]
   94144:	42 35 24 73 	maddr32 $r3,$r10,$r9
   94148:	a6 74       	lbi333 $r1,[$r6+#0x4]
   9414a:	40 21 20 08 	slli $r2,$r2,#8
   9414e:	9c 1b       	addi333 $r0,$r3,#3
   94150:	fe 57       	or33 $r1,$r2
   94152:	49 ff f9 1e 	jal 9338e <ATT_SetU16LE>
   94156:	d5 3a       	j8 941ca <ATT_ServerGetFindInfoReq+0x14a>
   94158:	5a 08 02 39 	bnec $r0,#2,941ca <ATT_ServerGetFindInfoReq+0x14a>
   9415c:	00 83 00 08 	lbi $r8,[$r6+#0x8]
   94160:	5a 88 04 1e 	bnec $r8,#4,9419c <ATT_ServerGetFindInfoReq+0x11c>
   94164:	f2 02       	lwi37.sp $r2,[+#0x8]
   94166:	42 75 24 24 	mul $r7,$r10,$r9
   9416a:	9c 7a       	addi333 $r1,$r7,#2
   9416c:	98 11       	add333 $r0,$r2,$r1
   9416e:	46 10 00 9f 	sethi $r1,#0x9f
   94172:	58 10 84 b0 	ori $r1,$r1,#0x4b0
   94176:	84 4c       	movi55 $r2,#12
   94178:	49 ff df 68 	jal 90048 <memcpy>
   9417c:	a6 75       	lbi333 $r1,[$r6+#0x5]
   9417e:	a6 f4       	lbi333 $r3,[$r6+#0x4]
   94180:	40 10 a0 08 	slli $r1,$r1,#8
   94184:	fe cf       	or33 $r3,$r1
   94186:	a6 76       	lbi333 $r1,[$r6+#0x6]
   94188:	f4 02       	lwi37.sp $r4,[+#0x8]
   9418a:	40 10 c0 08 	slli $r1,$r1,#16
   9418e:	fe 5f       	or33 $r1,$r3
   94190:	a6 f7       	lbi333 $r3,[$r6+#0x7]
   94192:	8c ee       	addi45 $r7,#14
   94194:	40 31 e0 08 	slli $r3,$r3,#24
   94198:	98 27       	add333 $r0,$r4,$r7
   9419a:	d5 14       	j8 941c2 <ATT_ServerGetFindInfoReq+0x142>
   9419c:	5a 88 10 31 	bnec $r8,#16,941fe <ATT_ServerGetFindInfoReq+0x17e>
   941a0:	42 15 24 24 	mul $r1,$r10,$r9
   941a4:	9c 8a       	addi333 $r2,$r1,#2
   941a6:	a6 75       	lbi333 $r1,[$r6+#0x5]
   941a8:	a6 f4       	lbi333 $r3,[$r6+#0x4]
   941aa:	40 10 a0 08 	slli $r1,$r1,#8
   941ae:	fe cf       	or33 $r3,$r1
   941b0:	a6 76       	lbi333 $r1,[$r6+#0x6]
   941b2:	f4 02       	lwi37.sp $r4,[+#0x8]
   941b4:	40 10 c0 08 	slli $r1,$r1,#16
   941b8:	fe 5f       	or33 $r1,$r3
   941ba:	a6 f7       	lbi333 $r3,[$r6+#0x7]
   941bc:	98 22       	add333 $r0,$r4,$r2
   941be:	40 31 e0 08 	slli $r3,$r3,#24
   941c2:	fe 5f       	or33 $r1,$r3
   941c4:	80 48       	mov55 $r2,$r8
   941c6:	49 ff df 41 	jal 90048 <memcpy>
   941ca:	f3 01       	lwi37.sp $r3,[+#0x4]
   941cc:	00 23 00 0f 	lbi $r2,[$r6+#0xf]
   941d0:	42 35 24 73 	maddr32 $r3,$r10,$r9
   941d4:	00 13 00 0e 	lbi $r1,[$r6+#0xe]
   941d8:	40 21 20 08 	slli $r2,$r2,#8
   941dc:	9c 19       	addi333 $r0,$r3,#1
   941de:	fe 57       	or33 $r1,$r2
   941e0:	8d 21       	addi45 $r9,#1
   941e2:	49 ff f8 d6 	jal 9338e <ATT_SetU16LE>
   941e6:	54 94 80 ff 	andi $r9,$r9,#0xff
   941ea:	50 0e 00 01 	addi $r0,$fp,#1
   941ee:	55 c0 00 ff 	andi $fp,$r0,#0xff
   941f2:	3c 03 e9 7d 	lhi.gp $r0,[+#-11526]
   941f6:	40 fe 00 06 	slt $r15,$fp,$r0
   941fa:	4e f3 ff 66 	bnez $r15,940c6 <ATT_ServerGetFindInfoReq+0x46>
   941fe:	05 cf 80 05 	lwi $fp,[$sp+#0x14]
   94202:	4e 93 00 08 	bnez $r9,94212 <ATT_ServerGetFindInfoReq+0x192>
   94206:	84 04       	movi55 $r0,#4
   94208:	80 3c       	mov55 $r1,$fp
   9420a:	84 4a       	movi55 $r2,#10
   9420c:	49 ff fa 11 	jal 9362e <ATT_SendErrorRsp>
   94210:	d5 07       	j8 9421e <ATT_ServerGetFindInfoReq+0x19e>
   94212:	42 14 a8 24 	mul $r1,$r9,$r10
   94216:	f0 04       	lwi37.sp $r0,[+#0x10]
   94218:	9c 4a       	addi333 $r1,$r1,#2
   9421a:	49 ff fa 01 	jal 9361c <ATT_SendPduToL2CAP>
   9421e:	fc c3       	pop25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}

00094220 <ATT_ServerGetMtuExchangeReq>:
   94220:	fc 26       	push25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}
   94222:	9c 01       	addi333 $r0,$r0,#1
   94224:	2e 67 c9 7e 	lbi.gp $r6,[+#-13954]
   94228:	49 ff f8 b9 	jal 9339a <ATT_GetU16LE>
   9422c:	3c 23 e3 5d 	lhi.gp $r2,[+#-14662]
   94230:	98 76       	add333 $r1,$r6,$r6
   94232:	e2 02       	slt45 $r0,$r2
   94234:	e8 06       	beqzs8 94240 <ATT_ServerGetMtuExchangeReq+0x20>
   94236:	3e 0f c9 18 	addi.gp $r0,#-14056
   9423a:	98 48       	add333 $r1,$r1,$r0
   9423c:	ac 8a       	shi333 $r2,[$r1+#0x4]
   9423e:	d5 0b       	j8 94254 <ATT_ServerGetMtuExchangeReq+0x34>
   94240:	3e 2f c9 18 	addi.gp $r2,#-14056
   94244:	98 4a       	add333 $r1,$r1,$r2
   94246:	96 81       	zeh33 $r2,$r0
   94248:	5c f1 00 74 	slti $r15,$r2,#116
   9424c:	e9 03       	bnezs8 94252 <ATT_ServerGetMtuExchangeReq+0x32>
   9424e:	44 00 00 73 	movi $r0,#115
   94252:	ac 0a       	shi333 $r0,[$r1+#0x4]
   94254:	84 03       	movi55 $r0,#3
   94256:	49 ff f8 f3 	jal 9343c <ATT_AllocRspDataPdu>
   9425a:	80 e0       	mov55 $r7,$r0
   9425c:	44 10 00 73 	movi $r1,#115
   94260:	9c 01       	addi333 $r0,$r0,#1
   94262:	49 ff f8 96 	jal 9338e <ATT_SetU16LE>
   94266:	80 07       	mov55 $r0,$r7
   94268:	84 23       	movi55 $r1,#3
   9426a:	49 ff f9 d9 	jal 9361c <ATT_SendPduToL2CAP>
   9426e:	44 00 30 02 	movi $r0,#12290
   94272:	b6 1f       	swi450 $r0,[$sp]
   94274:	3e 1f c9 18 	addi.gp $r1,#-14056
   94278:	98 36       	add333 $r0,$r6,$r6
   9427a:	98 01       	add333 $r0,$r0,$r1
   9427c:	a4 02       	lhi333 $r0,[$r0+#0x4]
   9427e:	80 ff       	mov55 $r7,$sp
   94280:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   94284:	80 06       	mov55 $r0,$r6
   94286:	49 ff f4 64 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   9428a:	12 0f 80 03 	shi $r0,[$sp+#0x6]
   9428e:	80 1f       	mov55 $r0,$sp
   94290:	49 ff ef d7 	jal 9223e <bt_infom_ap>
   94294:	fc a6       	pop25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}

00094296 <ATT_HandleValueReportMux>:
   94296:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   94298:	96 00       	zeb33 $r0,$r0
   9429a:	80 c3       	mov55 $r6,$r3
   9429c:	f0 81       	swi37.sp $r0,[+#0x4]
   9429e:	40 90 80 13 	zeh $r9,$r1
   942a2:	97 d0       	zeb33 $r7,$r2
   942a4:	5a 08 1d 10 	bnec $r0,#29,942c4 <ATT_HandleValueReportMux+0x2e>
   942a8:	80 07       	mov55 $r0,$r7
   942aa:	49 ff f7 e3 	jal 93270 <ATT_is_in_transaction>
   942ae:	c8 53       	bnez38 $r0,94354 <ATT_HandleValueReportMux+0xbe>
   942b0:	50 03 80 08 	addi $r0,$r7,#8
   942b4:	94 02       	slli333 $r0,$r0,#2
   942b6:	3e 1f c9 18 	addi.gp $r1,#-14056
   942ba:	98 01       	add333 $r0,$r0,$r1
   942bc:	a9 81       	swi333 $r6,[$r0+#0x4]
   942be:	80 07       	mov55 $r0,$r7
   942c0:	49 ff f9 94 	jal 935e8 <ATT_start_transaction>
   942c4:	80 09       	mov55 $r0,$r9
   942c6:	49 ff f7 dd 	jal 93280 <ATT_BinarySearchIndexByHandle>
   942ca:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   942ce:	38 80 82 02 	lw $r8,[$r1+($r0<<#0x2)]
   942d2:	3e 1f c9 18 	addi.gp $r1,#-14056
   942d6:	98 3f       	add333 $r0,$r7,$r7
   942d8:	98 01       	add333 $r0,$r0,$r1
   942da:	a4 82       	lhi333 $r2,[$r0+#0x4]
   942dc:	00 04 00 0f 	lbi $r0,[$r8+#0xf]
   942e0:	00 14 00 0e 	lbi $r1,[$r8+#0xe]
   942e4:	40 00 20 08 	slli $r0,$r0,#8
   942e8:	9e 93       	subi333 $r2,$r2,#3
   942ea:	fe 0f       	or33 $r0,$r1
   942ec:	e0 02       	slts45 $r0,$r2
   942ee:	e8 02       	beqzs8 942f2 <ATT_HandleValueReportMux+0x5c>
   942f0:	80 40       	mov55 $r2,$r0
   942f2:	41 c1 00 13 	zeh $fp,$r2
   942f6:	50 ae 00 03 	addi $r10,$fp,#3
   942fa:	80 0a       	mov55 $r0,$r10
   942fc:	49 00 32 6c 	jal 9a7d4 <malloc>
   94300:	80 c0       	mov55 $r6,$r0
   94302:	c0 29       	beqz38 $r0,94354 <ATT_HandleValueReportMux+0xbe>
   94304:	f0 01       	lwi37.sp $r0,[+#0x4]
   94306:	10 93 00 01 	sbi $r9,[$r6+#0x1]
   9430a:	93 28       	srli45 $r9,#8
   9430c:	ae 30       	sbi333 $r0,[$r6+#0x0]
   9430e:	10 93 00 02 	sbi $r9,[$r6+#0x2]
   94312:	00 04 00 01 	lbi $r0,[$r8+#0x1]
   94316:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   9431a:	00 24 00 02 	lbi $r2,[$r8+#0x2]
   9431e:	40 00 20 08 	slli $r0,$r0,#8
   94322:	fe 0f       	or33 $r0,$r1
   94324:	00 14 00 03 	lbi $r1,[$r8+#0x3]
   94328:	40 21 40 08 	slli $r2,$r2,#16
   9432c:	fe 87       	or33 $r2,$r0
   9432e:	40 10 e0 08 	slli $r1,$r1,#24
   94332:	fe 57       	or33 $r1,$r2
   94334:	9c 33       	addi333 $r0,$r6,#3
   94336:	80 5c       	mov55 $r2,$fp
   94338:	49 ff de 88 	jal 90048 <memcpy>
   9433c:	3e 77 c9 7e 	sbi.gp $r7,[+#-13954]
   94340:	40 15 00 13 	zeh $r1,$r10
   94344:	80 06       	mov55 $r0,$r6
   94346:	49 ff f9 6b 	jal 9361c <ATT_SendPduToL2CAP>
   9434a:	80 06       	mov55 $r0,$r6
   9434c:	49 00 31 cb 	jal 9a6e2 <free>
   94350:	84 00       	movi55 $r0,#0
   94352:	d5 02       	j8 94356 <ATT_HandleValueReportMux+0xc0>
   94354:	84 01       	movi55 $r0,#1
   94356:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

00094358 <att_init>:
   94358:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9435a:	44 60 00 40 	movi $r6,#64
   9435e:	46 10 00 94 	sethi $r1,#0x94
   94362:	58 10 83 96 	ori $r1,$r1,#0x396
   94366:	84 04       	movi55 $r0,#4
   94368:	49 ff f5 c5 	jal 92ef2 <BLE_l2cap_cid_register>
   9436c:	80 46       	mov55 $r2,$r6
   9436e:	84 20       	movi55 $r1,#0
   94370:	3e 0f c8 d8 	addi.gp $r0,#-14120
   94374:	49 ff de 8a 	jal 90088 <memset>
   94378:	84 20       	movi55 $r1,#0
   9437a:	80 46       	mov55 $r2,$r6
   9437c:	3e 0f c9 80 	addi.gp $r0,#-13952
   94380:	49 ff de 84 	jal 90088 <memset>
   94384:	84 3f       	movi55 $r1,#-1
   94386:	3c 1b e9 62 	shi.gp $r1,[+#-11580]
   9438a:	84 00       	movi55 $r0,#0
   9438c:	3c 0b e9 7b 	shi.gp $r0,[+#-11530]
   94390:	3c 0b e9 7c 	shi.gp $r0,[+#-11528]
   94394:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00094396 <ATT_cid_evt_cb>:
   94396:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   94398:	3a 2f 8c 20 	smw.bi $r2,[$sp],$r3,#0x0    ! {$r2~$r3}
   9439c:	81 02       	mov55 $r8,$r2
   9439e:	97 80       	zeb33 $r6,$r0
   943a0:	02 2f 80 02 	lhi $r2,[$sp+#0x4]
   943a4:	5a 10 01 54 	beqc $r1,#1,9444c <ATT_cid_evt_cb+0xb6>
   943a8:	c1 06       	beqz38 $r1,943b4 <ATT_cid_evt_cb+0x1e>
   943aa:	85 e2       	movi55 $r15,#2
   943ac:	4c 17 c0 6e 	bne $r1,$r15,94488 <ATT_cid_evt_cb+0xf2>
   943b0:	48 00 00 61 	j 94472 <ATT_cid_evt_cb+0xdc>
   943b4:	00 74 00 00 	lbi $r7,[$r8+#0x0]
   943b8:	3c 2b e4 be 	shi.gp $r2,[+#-13956]
   943bc:	3e 67 c9 7e 	sbi.gp $r6,[+#-13954]
   943c0:	e6 ff       	slti45 $r7,#31
   943c2:	e9 07       	bnezs8 943d0 <ATT_cid_evt_cb+0x3a>
   943c4:	5a 70 52 06 	beqc $r7,#82,943d0 <ATT_cid_evt_cb+0x3a>
   943c8:	5a 70 d2 04 	beqc $r7,#210,943d0 <ATT_cid_evt_cb+0x3a>
   943cc:	48 00 00 5e 	j 94488 <ATT_cid_evt_cb+0xf2>
   943d0:	96 3c       	xlsb33 $r0,$r7
   943d2:	c0 19       	beqz38 $r0,94404 <ATT_cid_evt_cb+0x6e>
   943d4:	5a 70 1b 04 	beqc $r7,#27,943dc <ATT_cid_evt_cb+0x46>
   943d8:	5a 78 1d 06 	bnec $r7,#29,943e4 <ATT_cid_evt_cb+0x4e>
   943dc:	80 08       	mov55 $r0,$r8
   943de:	49 00 03 10 	jal 949fe <ATT_Client_GetHandleValueReport>
   943e2:	d5 53       	j8 94488 <ATT_cid_evt_cb+0xf2>
   943e4:	3c 93 e9 62 	lhi.gp $r9,[+#-11580]
   943e8:	80 06       	mov55 $r0,$r6
   943ea:	49 ff f3 b2 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   943ee:	4c 90 40 4d 	bne $r9,$r0,94488 <ATT_cid_evt_cb+0xf2>
   943f2:	80 06       	mov55 $r0,$r6
   943f4:	49 ff f8 d4 	jal 9359c <ATT_end_transaction>
   943f8:	3c 1d f4 b2 	lwi.gp $r1,[+#-11576]
   943fc:	c1 46       	beqz38 $r1,94488 <ATT_cid_evt_cb+0xf2>
   943fe:	80 08       	mov55 $r0,$r8
   94400:	dd 21       	jral5 $r1
   94402:	d5 43       	j8 94488 <ATT_cid_evt_cb+0xf2>
   94404:	00 04 00 00 	lbi $r0,[$r8+#0x0]
   94408:	54 10 00 40 	andi $r1,$r0,#0x40
   9440c:	c9 03       	bnez38 $r1,94412 <ATT_cid_evt_cb+0x7c>
   9440e:	5a 08 1e 06 	bnec $r0,#30,9441a <ATT_cid_evt_cb+0x84>
   94412:	84 20       	movi55 $r1,#0
   94414:	3c 1f f2 46 	swi.gp $r1,[+#-14056]
   94418:	d5 0c       	j8 94430 <ATT_cid_evt_cb+0x9a>
   9441a:	3e 0f c9 18 	addi.gp $r0,#-14056
   9441e:	99 b6       	add333 $r6,$r6,$r6
   94420:	99 b0       	add333 $r6,$r6,$r0
   94422:	a4 32       	lhi333 $r0,[$r6+#0x4]
   94424:	49 00 31 d8 	jal 9a7d4 <malloc>
   94428:	80 20       	mov55 $r1,$r0
   9442a:	3c 1f f2 46 	swi.gp $r1,[+#-14056]
   9442e:	c1 29       	beqz38 $r1,94480 <ATT_cid_evt_cb+0xea>
   94430:	97 e7       	fexti33 $r7,#0x4
   94432:	3e 0f c1 24 	addi.gp $r0,#-16092
   94436:	90 e1       	srai45 $r7,#1
   94438:	38 10 1e 02 	lw $r1,[$r0+($r7<<#0x2)]
   9443c:	80 08       	mov55 $r0,$r8
   9443e:	dd 21       	jral5 $r1
   94440:	3c 0d f2 46 	lwi.gp $r0,[+#-14056]
   94444:	c0 22       	beqz38 $r0,94488 <ATT_cid_evt_cb+0xf2>
   94446:	49 00 31 4e 	jal 9a6e2 <free>
   9444a:	d5 1f       	j8 94488 <ATT_cid_evt_cb+0xf2>
   9444c:	98 36       	add333 $r0,$r6,$r6
   9444e:	3e 2f c9 18 	addi.gp $r2,#-14056
   94452:	98 02       	add333 $r0,$r0,$r2
   94454:	3c 23 e3 5d 	lhi.gp $r2,[+#-14662]
   94458:	97 9f       	fexti33 $r6,#0x3
   9445a:	ac 82       	shi333 $r2,[$r0+#0x4]
   9445c:	46 00 01 01 	sethi $r0,#0x101
   94460:	3c 23 e9 7c 	lhi.gp $r2,[+#-11528]
   94464:	40 10 98 0c 	sll $r1,$r1,$r6
   94468:	fe 4b       	not33 $r1,$r1
   9446a:	fe 56       	and33 $r1,$r2
   9446c:	3c 1b e9 7c 	shi.gp $r1,[+#-11528]
   94470:	d5 0c       	j8 94488 <ATT_cid_evt_cb+0xf2>
   94472:	80 06       	mov55 $r0,$r6
   94474:	49 ff f8 94 	jal 9359c <ATT_end_transaction>
   94478:	80 06       	mov55 $r0,$r6
   9447a:	49 ff f7 cc 	jal 93412 <ATT_ReleasePWQ>
   9447e:	d5 05       	j8 94488 <ATT_cid_evt_cb+0xf2>
   94480:	80 07       	mov55 $r0,$r7
   94482:	fa 41       	movpi45 $r2,#0x11
   94484:	49 ff f8 d5 	jal 9362e <ATT_SendErrorRsp>
   94488:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

0009448a <_ble_cccd_common_cb>:
   9448a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9448c:	97 88       	zeb33 $r6,$r1
   9448e:	97 d1       	zeh33 $r7,$r2
   94490:	3c 2d f3 96 	lwi.gp $r2,[+#-12712]
   94494:	2e 47 ce 5c 	lbi.gp $r4,[+#-12708]
   94498:	80 62       	mov55 $r3,$r2
   9449a:	84 20       	movi55 $r1,#0
   9449c:	a5 58       	lhi333 $r5,[$r3+#0x0]
   9449e:	d7 07       	beqs38 $r7,944ac <_ble_cccd_common_cb+0x22>
   944a0:	9c 49       	addi333 $r1,$r1,#1
   944a2:	96 48       	zeb33 $r1,$r1
   944a4:	50 31 80 28 	addi $r3,$r3,#40
   944a8:	e2 24       	slt45 $r1,$r4
   944aa:	e9 f9       	bnezs8 9449c <_ble_cccd_common_cb+0x12>
   944ac:	5a 08 01 3a 	bnec $r0,#1,94520 <_ble_cccd_common_cb+0x96>
   944b0:	fb 18       	movpi45 $r8,#0x28
   944b2:	42 80 a0 24 	mul $r8,$r1,$r8
   944b6:	88 48       	add45 $r2,$r8
   944b8:	04 31 00 09 	lwi $r3,[$r2+#0x24]
   944bc:	c3 04       	beqz38 $r3,944c4 <_ble_cccd_common_cb+0x3a>
   944be:	80 26       	mov55 $r1,$r6
   944c0:	80 47       	mov55 $r2,$r7
   944c2:	dd 23       	jral5 $r3
   944c4:	3c 1d f3 96 	lwi.gp $r1,[+#-12712]
   944c8:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   944cc:	95 fa       	slli333 $r7,$r7,#2
   944ce:	38 00 1c 02 	lw $r0,[$r0+($r7<<#0x0)]
   944d2:	89 01       	add45 $r8,$r1
   944d4:	a6 c1       	lbi333 $r3,[$r0+#0x1]
   944d6:	a7 00       	lbi333 $r4,[$r0+#0x0]
   944d8:	a6 42       	lbi333 $r1,[$r0+#0x2]
   944da:	40 31 a0 08 	slli $r3,$r3,#8
   944de:	a6 03       	lbi333 $r0,[$r0+#0x3]
   944e0:	fe e7       	or33 $r3,$r4
   944e2:	40 10 c0 08 	slli $r1,$r1,#16
   944e6:	99 b6       	add333 $r6,$r6,$r6
   944e8:	fe 5f       	or33 $r1,$r3
   944ea:	88 c8       	add45 $r6,$r8
   944ec:	40 00 60 08 	slli $r0,$r0,#24
   944f0:	fe 0f       	or33 $r0,$r1
   944f2:	a6 74       	lbi333 $r1,[$r6+#0x4]
   944f4:	ae 40       	sbi333 $r1,[$r0+#0x0]
   944f6:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   944fa:	38 00 1c 02 	lw $r0,[$r0+($r7<<#0x0)]
   944fe:	a6 81       	lbi333 $r2,[$r0+#0x1]
   94500:	a6 c0       	lbi333 $r3,[$r0+#0x0]
   94502:	a6 42       	lbi333 $r1,[$r0+#0x2]
   94504:	40 21 20 08 	slli $r2,$r2,#8
   94508:	a6 03       	lbi333 $r0,[$r0+#0x3]
   9450a:	fe 9f       	or33 $r2,$r3
   9450c:	40 10 c0 08 	slli $r1,$r1,#16
   94510:	fe 57       	or33 $r1,$r2
   94512:	40 00 60 08 	slli $r0,$r0,#24
   94516:	fe 0f       	or33 $r0,$r1
   94518:	a4 72       	lhi333 $r1,[$r6+#0x4]
   9451a:	92 28       	srli45 $r1,#8
   9451c:	ae 41       	sbi333 $r1,[$r0+#0x1]
   9451e:	d5 25       	j8 94568 <_ble_cccd_common_cb+0xde>
   94520:	5a 08 02 24 	bnec $r0,#2,94568 <_ble_cccd_common_cb+0xde>
   94524:	fa 78       	movpi45 $r3,#0x28
   94526:	42 20 8c 73 	maddr32 $r2,$r1,$r3
   9452a:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   9452e:	38 10 9e 02 	lw $r1,[$r1+($r7<<#0x2)]
   94532:	a7 09       	lbi333 $r4,[$r1+#0x1]
   94534:	a7 48       	lbi333 $r5,[$r1+#0x0]
   94536:	a6 ca       	lbi333 $r3,[$r1+#0x2]
   94538:	40 42 20 08 	slli $r4,$r4,#8
   9453c:	a6 4b       	lbi333 $r1,[$r1+#0x3]
   9453e:	ff 2f       	or33 $r4,$r5
   94540:	40 31 c0 08 	slli $r3,$r3,#16
   94544:	fe e7       	or33 $r3,$r4
   94546:	40 10 e0 08 	slli $r1,$r1,#24
   9454a:	fe 5f       	or33 $r1,$r3
   9454c:	a7 49       	lbi333 $r5,[$r1+#0x1]
   9454e:	a7 08       	lbi333 $r4,[$r1+#0x0]
   94550:	98 f6       	add333 $r3,$r6,$r6
   94552:	40 52 a0 08 	slli $r5,$r5,#8
   94556:	98 d3       	add333 $r3,$r2,$r3
   94558:	98 6c       	add333 $r1,$r5,$r4
   9455a:	ac 5a       	shi333 $r1,[$r3+#0x4]
   9455c:	04 31 00 09 	lwi $r3,[$r2+#0x24]
   94560:	c3 04       	beqz38 $r3,94568 <_ble_cccd_common_cb+0xde>
   94562:	80 26       	mov55 $r1,$r6
   94564:	80 47       	mov55 $r2,$r7
   94566:	dd 23       	jral5 $r3
   94568:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009456a <_ble_gatt_charact_notify_indicate>:
   9456a:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   9456c:	41 c1 00 13 	zeh $fp,$r2
   94570:	80 81       	mov55 $r4,$r1
   94572:	81 23       	mov55 $r9,$r3
   94574:	97 c1       	zeh33 $r7,$r0
   94576:	5b c0 01 04 	beqc $fp,#1,9457e <_ble_gatt_charact_notify_indicate+0x14>
   9457a:	fb 0d       	movpi45 $r8,#0x1d
   9457c:	d5 02       	j8 94580 <_ble_gatt_charact_notify_indicate+0x16>
   9457e:	fb 0b       	movpi45 $r8,#0x1b
   94580:	5a 48 99 2c 	bnec $r4,#153,945d8 <_ble_gatt_charact_notify_indicate+0x6e>
   94584:	2e 17 ce 5c 	lbi.gp $r1,[+#-12708]
   94588:	3c 0d f3 96 	lwi.gp $r0,[+#-12712]
   9458c:	84 80       	movi55 $r4,#0
   9458e:	a4 81       	lhi333 $r2,[$r0+#0x2]
   94590:	4c 23 80 08 	beq $r2,$r7,945a0 <_ble_gatt_charact_notify_indicate+0x36>
   94594:	9d 21       	addi333 $r4,$r4,#1
   94596:	97 20       	zeb33 $r4,$r4
   94598:	50 00 00 28 	addi $r0,$r0,#40
   9459c:	e2 81       	slt45 $r4,$r1
   9459e:	e9 f8       	bnezs8 9458e <_ble_gatt_charact_notify_indicate+0x24>
   945a0:	fa 18       	movpi45 $r0,#0x28
   945a2:	ff 04       	mul33 $r4,$r0
   945a4:	84 c0       	movi55 $r6,#0
   945a6:	3c 1d f3 96 	lwi.gp $r1,[+#-12712]
   945aa:	98 36       	add333 $r0,$r6,$r6
   945ac:	98 08       	add333 $r0,$r1,$r0
   945ae:	98 04       	add333 $r0,$r0,$r4
   945b0:	a4 02       	lhi333 $r0,[$r0+#0x4]
   945b2:	40 0e 00 02 	and $r0,$fp,$r0
   945b6:	c0 0c       	beqz38 $r0,945ce <_ble_gatt_charact_notify_indicate+0x64>
   945b8:	80 08       	mov55 $r0,$r8
   945ba:	80 27       	mov55 $r1,$r7
   945bc:	80 46       	mov55 $r2,$r6
   945be:	80 69       	mov55 $r3,$r9
   945c0:	f4 81       	swi37.sp $r4,[+#0x4]
   945c2:	49 ff fe 6a 	jal 94296 <ATT_HandleValueReportMux>
   945c6:	f4 01       	lwi37.sp $r4,[+#0x4]
   945c8:	c0 03       	beqz38 $r0,945ce <_ble_gatt_charact_notify_indicate+0x64>
   945ca:	84 01       	movi55 $r0,#1
   945cc:	d5 0c       	j8 945e4 <_ble_gatt_charact_notify_indicate+0x7a>
   945ce:	9d b1       	addi333 $r6,$r6,#1
   945d0:	5a 68 10 eb 	bnec $r6,#16,945a6 <_ble_gatt_charact_notify_indicate+0x3c>
   945d4:	84 00       	movi55 $r0,#0
   945d6:	d5 07       	j8 945e4 <_ble_gatt_charact_notify_indicate+0x7a>
   945d8:	80 08       	mov55 $r0,$r8
   945da:	80 27       	mov55 $r1,$r7
   945dc:	96 a0       	zeb33 $r2,$r4
   945de:	80 69       	mov55 $r3,$r9
   945e0:	49 ff fe 5b 	jal 94296 <ATT_HandleValueReportMux>
   945e4:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000945e6 <BLE_gatt_charact_notify>:
   945e6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   945e8:	96 01       	zeh33 $r0,$r0
   945ea:	64 42 00 02 	mfsr $r4,$PSW
   945ee:	64 02 00 43 	setgie.d
   945f2:	64 00 00 08 	dsb
   945f6:	46 30 01 00 	sethi $r3,#0x100
   945fa:	58 31 80 b0 	ori $r3,$r3,#0xb0
   945fe:	b4 43       	lwi450 $r2,[$r3]
   94600:	9d 51       	addi333 $r5,$r2,#1
   94602:	b6 a3       	swi450 $r5,[$r3]
   94604:	ca 06       	bnez38 $r2,94610 <BLE_gatt_charact_notify+0x2a>
   94606:	46 20 01 00 	sethi $r2,#0x100
   9460a:	58 21 00 bc 	ori $r2,$r2,#0xbc
   9460e:	b6 82       	swi450 $r4,[$r2]
   94610:	84 41       	movi55 $r2,#1
   94612:	84 60       	movi55 $r3,#0
   94614:	49 ff ff ab 	jal 9456a <_ble_gatt_charact_notify_indicate>
   94618:	46 00 01 00 	sethi $r0,#0x100
   9461c:	58 00 00 b0 	ori $r0,$r0,#0xb0
   94620:	b4 20       	lwi450 $r1,[$r0]
   94622:	9e 49       	subi333 $r1,$r1,#1
   94624:	b6 20       	swi450 $r1,[$r0]
   94626:	b4 00       	lwi450 $r0,[$r0]
   94628:	c8 0c       	bnez38 $r0,94640 <BLE_gatt_charact_notify+0x5a>
   9462a:	46 00 01 00 	sethi $r0,#0x100
   9462e:	58 00 00 bc 	ori $r0,$r0,#0xbc
   94632:	b4 00       	lwi450 $r0,[$r0]
   94634:	96 04       	xlsb33 $r0,$r0
   94636:	c0 05       	beqz38 $r0,94640 <BLE_gatt_charact_notify+0x5a>
   94638:	64 12 00 43 	setgie.e
   9463c:	64 00 00 08 	dsb
   94640:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00094642 <_ble_gatt_set_uuid>:
   94642:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   94644:	96 48       	zeb33 $r1,$r1
   94646:	9d 84       	addi333 $r6,$r0,#4
   94648:	80 e2       	mov55 $r7,$r2
   9464a:	10 10 00 0c 	sbi $r1,[$r0+#0xc]
   9464e:	5a 18 02 0c 	bnec $r1,#2,94666 <_ble_gatt_set_uuid+0x24>
   94652:	a6 11       	lbi333 $r0,[$r2+#0x1]
   94654:	a6 50       	lbi333 $r1,[$r2+#0x0]
   94656:	40 00 20 08 	slli $r0,$r0,#8
   9465a:	98 01       	add333 $r0,$r0,$r1
   9465c:	96 01       	zeh33 $r0,$r0
   9465e:	ae 34       	sbi333 $r0,[$r6+#0x4]
   94660:	92 08       	srli45 $r0,#8
   94662:	ae 35       	sbi333 $r0,[$r6+#0x5]
   94664:	d5 12       	j8 94688 <_ble_gatt_set_uuid+0x46>
   94666:	fa 00       	movpi45 $r0,#0x10
   94668:	49 00 30 b6 	jal 9a7d4 <malloc>
   9466c:	40 10 20 09 	srli $r1,$r0,#8
   94670:	ae 75       	sbi333 $r1,[$r6+#0x5]
   94672:	40 30 60 09 	srli $r3,$r0,#24
   94676:	40 10 40 09 	srli $r1,$r0,#16
   9467a:	ae 76       	sbi333 $r1,[$r6+#0x6]
   9467c:	ae 34       	sbi333 $r0,[$r6+#0x4]
   9467e:	ae f7       	sbi333 $r3,[$r6+#0x7]
   94680:	80 27       	mov55 $r1,$r7
   94682:	fa 40       	movpi45 $r2,#0x10
   94684:	49 ff dc e2 	jal 90048 <memcpy>
   94688:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009468a <_ble_gatt_new_attribute>:
   9468a:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   9468c:	83 80       	mov55 $fp,$r0
   9468e:	80 e2       	mov55 $r7,$r2
   94690:	3c 03 e7 2f 	lhi.gp $r0,[+#-12706]
   94694:	81 01       	mov55 $r8,$r1
   94696:	3c 13 e7 30 	lhi.gp $r1,[+#-12704]
   9469a:	96 d8       	zeb33 $r3,$r3
   9469c:	9c 01       	addi333 $r0,$r0,#1
   9469e:	f3 81       	swi37.sp $r3,[+#0x4]
   946a0:	40 a2 00 13 	zeh $r10,$r4
   946a4:	40 92 80 13 	zeh $r9,$r5
   946a8:	e0 01       	slts45 $r0,$r1
   946aa:	e9 1a       	bnezs8 946de <_ble_gatt_new_attribute+0x54>
   946ac:	8c 2a       	addi45 $r1,#10
   946ae:	96 49       	zeh33 $r1,$r1
   946b0:	3c 1b e7 30 	shi.gp $r1,[+#-12704]
   946b4:	94 0a       	slli333 $r0,$r1,#2
   946b6:	49 00 30 8f 	jal 9a7d4 <malloc>
   946ba:	3c 23 e7 2f 	lhi.gp $r2,[+#-12706]
   946be:	80 60       	mov55 $r3,$r0
   946c0:	c2 0d       	beqz38 $r2,946da <_ble_gatt_new_attribute+0x50>
   946c2:	3c 1d f4 b3 	lwi.gp $r1,[+#-11572]
   946c6:	9c 91       	addi333 $r2,$r2,#1
   946c8:	94 92       	slli333 $r2,$r2,#2
   946ca:	b6 1f       	swi450 $r0,[$sp]
   946cc:	49 ff dc be 	jal 90048 <memcpy>
   946d0:	3c 0d f4 b3 	lwi.gp $r0,[+#-11572]
   946d4:	49 00 30 07 	jal 9a6e2 <free>
   946d8:	b4 7f       	lwi450 $r3,[$sp]
   946da:	3c 3f f4 b3 	swi.gp $r3,[+#-11572]
   946de:	3e 6f ce 5e 	addi.gp $r6,#-12706
   946e2:	a4 70       	lhi333 $r1,[$r6+#0x0]
   946e4:	9c 49       	addi333 $r1,$r1,#1
   946e6:	96 49       	zeh33 $r1,$r1
   946e8:	ac 70       	shi333 $r1,[$r6+#0x0]
   946ea:	9c 49       	addi333 $r1,$r1,#1
   946ec:	3c 1b e9 7d 	shi.gp $r1,[+#-11526]
   946f0:	fa 04       	movpi45 $r0,#0x14
   946f2:	49 00 30 71 	jal 9a7d4 <malloc>
   946f6:	40 14 20 09 	srli $r1,$r8,#8
   946fa:	ae 41       	sbi333 $r1,[$r0+#0x1]
   946fc:	40 14 40 09 	srli $r1,$r8,#16
   94700:	ae 42       	sbi333 $r1,[$r0+#0x2]
   94702:	40 13 a0 09 	srli $r1,$r7,#8
   94706:	10 80 00 00 	sbi $r8,[$r0+#0x0]
   9470a:	af c4       	sbi333 $r7,[$r0+#0x4]
   9470c:	ae 45       	sbi333 $r1,[$r0+#0x5]
   9470e:	93 18       	srli45 $r8,#24
   94710:	40 13 c0 09 	srli $r1,$r7,#16
   94714:	92 f8       	srli45 $r7,#24
   94716:	10 80 00 03 	sbi $r8,[$r0+#0x3]
   9471a:	ae 46       	sbi333 $r1,[$r0+#0x6]
   9471c:	af c7       	sbi333 $r7,[$r0+#0x7]
   9471e:	f1 01       	lwi37.sp $r1,[+#0x4]
   94720:	10 a0 00 0e 	sbi $r10,[$r0+#0xe]
   94724:	10 90 00 10 	sbi $r9,[$r0+#0x10]
   94728:	93 48       	srli45 $r10,#8
   9472a:	93 28       	srli45 $r9,#8
   9472c:	10 10 00 0d 	sbi $r1,[$r0+#0xd]
   94730:	10 a0 00 0f 	sbi $r10,[$r0+#0xf]
   94734:	10 90 00 11 	sbi $r9,[$r0+#0x11]
   94738:	a4 70       	lhi333 $r1,[$r6+#0x0]
   9473a:	40 20 a0 09 	srli $r2,$r1,#8
   9473e:	10 20 00 13 	sbi $r2,[$r0+#0x13]
   94742:	10 10 00 12 	sbi $r1,[$r0+#0x12]
   94746:	3c 2d f4 b3 	lwi.gp $r2,[+#-11572]
   9474a:	38 01 06 0a 	sw $r0,[$r2+($r1<<#0x2)]
   9474e:	b6 1c       	swi450 $r0,[$fp]
   94750:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

00094752 <BLE_gatt_add_charact>:
   94752:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   94754:	80 c0       	mov55 $r6,$r0
   94756:	b4 00       	lwi450 $r0,[$r0]
   94758:	80 e6       	mov55 $r7,$r6
   9475a:	9c 03       	addi333 $r0,$r0,#3
   9475c:	49 00 30 3c 	jal 9a7d4 <malloc>
   94760:	b4 86       	lwi450 $r4,[$r6]
   94762:	84 40       	movi55 $r2,#0
   94764:	9d 23       	addi333 $r4,$r4,#3
   94766:	80 20       	mov55 $r1,$r0
   94768:	80 a2       	mov55 $r5,$r2
   9476a:	b0 01       	addri36.sp $r0,#0x4
   9476c:	44 30 00 80 	movi $r3,#128
   94770:	97 21       	zeh33 $r4,$r4
   94772:	49 ff ff 8c 	jal 9468a <_ble_gatt_new_attribute>
   94776:	00 33 00 15 	lbi $r3,[$r6+#0x15]
   9477a:	02 43 00 0b 	lhi $r4,[$r6+#0x16]
   9477e:	02 53 00 0c 	lhi $r5,[$r6+#0x18]
   94782:	a0 77       	lwi333 $r1,[$r6+#0x1c]
   94784:	04 23 00 08 	lwi $r2,[$r6+#0x20]
   94788:	80 1f       	mov55 $r0,$sp
   9478a:	49 ff ff 80 	jal 9468a <_ble_gatt_new_attribute>
   9478e:	f0 01       	lwi37.sp $r0,[+#0x4]
   94790:	84 22       	movi55 $r1,#2
   94792:	46 20 00 9f 	sethi $r2,#0x9f
   94796:	58 21 0a 48 	ori $r2,$r2,#0xa48
   9479a:	49 ff ff 54 	jal 94642 <_ble_gatt_set_uuid>
   9479e:	a2 79       	lwi333.bi $r1,[$r7],#0x4
   947a0:	b4 1f       	lwi450 $r0,[$sp]
   947a2:	80 47       	mov55 $r2,$r7
   947a4:	96 48       	zeb33 $r1,$r1
   947a6:	49 ff ff 4e 	jal 94642 <_ble_gatt_set_uuid>
   947aa:	f0 01       	lwi37.sp $r0,[+#0x4]
   947ac:	a6 81       	lbi333 $r2,[$r0+#0x1]
   947ae:	a6 c0       	lbi333 $r3,[$r0+#0x0]
   947b0:	a6 42       	lbi333 $r1,[$r0+#0x2]
   947b2:	40 21 20 08 	slli $r2,$r2,#8
   947b6:	a6 03       	lbi333 $r0,[$r0+#0x3]
   947b8:	fe 9f       	or33 $r2,$r3
   947ba:	40 10 c0 08 	slli $r1,$r1,#16
   947be:	fe 57       	or33 $r1,$r2
   947c0:	40 00 60 08 	slli $r0,$r0,#24
   947c4:	fe 0f       	or33 $r0,$r1
   947c6:	00 13 00 14 	lbi $r1,[$r6+#0x14]
   947ca:	ae 40       	sbi333 $r1,[$r0+#0x0]
   947cc:	f0 01       	lwi37.sp $r0,[+#0x4]
   947ce:	a6 81       	lbi333 $r2,[$r0+#0x1]
   947d0:	a6 c0       	lbi333 $r3,[$r0+#0x0]
   947d2:	a6 42       	lbi333 $r1,[$r0+#0x2]
   947d4:	40 21 20 08 	slli $r2,$r2,#8
   947d8:	a6 03       	lbi333 $r0,[$r0+#0x3]
   947da:	fe 9f       	or33 $r2,$r3
   947dc:	40 10 c0 08 	slli $r1,$r1,#16
   947e0:	fe 57       	or33 $r1,$r2
   947e2:	40 00 60 08 	slli $r0,$r0,#24
   947e6:	fe 0f       	or33 $r0,$r1
   947e8:	b4 3f       	lwi450 $r1,[$sp]
   947ea:	00 10 80 12 	lbi $r1,[$r1+#0x12]
   947ee:	ae 41       	sbi333 $r1,[$r0+#0x1]
   947f0:	f0 01       	lwi37.sp $r0,[+#0x4]
   947f2:	a6 81       	lbi333 $r2,[$r0+#0x1]
   947f4:	a6 c0       	lbi333 $r3,[$r0+#0x0]
   947f6:	a6 42       	lbi333 $r1,[$r0+#0x2]
   947f8:	40 21 20 08 	slli $r2,$r2,#8
   947fc:	a6 03       	lbi333 $r0,[$r0+#0x3]
   947fe:	fe 9f       	or33 $r2,$r3
   94800:	40 10 c0 08 	slli $r1,$r1,#16
   94804:	fe 57       	or33 $r1,$r2
   94806:	40 00 60 08 	slli $r0,$r0,#24
   9480a:	fe 0f       	or33 $r0,$r1
   9480c:	b4 3f       	lwi450 $r1,[$sp]
   9480e:	00 10 80 13 	lbi $r1,[$r1+#0x13]
   94812:	ae 42       	sbi333 $r1,[$r0+#0x2]
   94814:	f1 01       	lwi37.sp $r1,[+#0x4]
   94816:	a6 c9       	lbi333 $r3,[$r1+#0x1]
   94818:	a7 08       	lbi333 $r4,[$r1+#0x0]
   9481a:	a6 8a       	lbi333 $r2,[$r1+#0x2]
   9481c:	a6 0b       	lbi333 $r0,[$r1+#0x3]
   9481e:	40 31 a0 08 	slli $r3,$r3,#8
   94822:	fe e7       	or33 $r3,$r4
   94824:	40 21 40 08 	slli $r2,$r2,#16
   94828:	fe 9f       	or33 $r2,$r3
   9482a:	40 00 60 08 	slli $r0,$r0,#24
   9482e:	fe 17       	or33 $r0,$r2
   94830:	b4 46       	lwi450 $r2,[$r6]
   94832:	80 27       	mov55 $r1,$r7
   94834:	9c 03       	addi333 $r0,$r0,#3
   94836:	49 ff dc 09 	jal 90048 <memcpy>
   9483a:	b4 1f       	lwi450 $r0,[$sp]
   9483c:	00 10 00 12 	lbi $r1,[$r0+#0x12]
   94840:	00 00 00 13 	lbi $r0,[$r0+#0x13]
   94844:	40 00 20 08 	slli $r0,$r0,#8
   94848:	fe 0f       	or33 $r0,$r1
   9484a:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

0009484c <BLE_gatt_add_service>:
   9484c:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   9484e:	80 c0       	mov55 $r6,$r0
   94850:	a0 01       	lwi333 $r0,[$r0+#0x4]
   94852:	49 00 2f c1 	jal 9a7d4 <malloc>
   94856:	a5 32       	lhi333 $r4,[$r6+#0x4]
   94858:	84 40       	movi55 $r2,#0
   9485a:	80 a2       	mov55 $r5,$r2
   9485c:	80 20       	mov55 $r1,$r0
   9485e:	44 30 00 80 	movi $r3,#128
   94862:	b0 01       	addri36.sp $r0,#0x4
   94864:	49 ff ff 13 	jal 9468a <_ble_gatt_new_attribute>
   94868:	f0 01       	lwi37.sp $r0,[+#0x4]
   9486a:	80 46       	mov55 $r2,$r6
   9486c:	84 22       	movi55 $r1,#2
   9486e:	49 ff fe ea 	jal 94642 <_ble_gatt_set_uuid>
   94872:	f1 01       	lwi37.sp $r1,[+#0x4]
   94874:	a6 09       	lbi333 $r0,[$r1+#0x1]
   94876:	a6 c8       	lbi333 $r3,[$r1+#0x0]
   94878:	a6 8a       	lbi333 $r2,[$r1+#0x2]
   9487a:	40 00 20 08 	slli $r0,$r0,#8
   9487e:	fe 1f       	or33 $r0,$r3
   94880:	40 21 40 08 	slli $r2,$r2,#16
   94884:	fe 87       	or33 $r2,$r0
   94886:	a6 0b       	lbi333 $r0,[$r1+#0x3]
   94888:	50 13 00 08 	addi $r1,$r6,#8
   9488c:	40 00 60 08 	slli $r0,$r0,#24
   94890:	fe 17       	or33 $r0,$r2
   94892:	a0 b1       	lwi333 $r2,[$r6+#0x4]
   94894:	49 ff db da 	jal 90048 <memcpy>
   94898:	f0 01       	lwi37.sp $r0,[+#0x4]
   9489a:	00 10 00 12 	lbi $r1,[$r0+#0x12]
   9489e:	00 00 00 13 	lbi $r0,[$r0+#0x13]
   948a2:	40 00 20 08 	slli $r0,$r0,#8
   948a6:	fe 0f       	or33 $r0,$r1
   948a8:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000948aa <_ble_gatt_hook_cccd_and_char>:
   948aa:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   948ac:	2e a7 ce 5c 	lbi.gp $r10,[+#-12708]
   948b0:	80 c0       	mov55 $r6,$r0
   948b2:	8d 41       	addi45 $r10,#1
   948b4:	fa 18       	movpi45 $r0,#0x28
   948b6:	42 a5 00 24 	mul $r10,$r10,$r0
   948ba:	80 0a       	mov55 $r0,$r10
   948bc:	81 21       	mov55 $r9,$r1
   948be:	49 00 2f 8b 	jal 9a7d4 <malloc>
   948c2:	2e 17 ce 5c 	lbi.gp $r1,[+#-12708]
   948c6:	81 00       	mov55 $r8,$r0
   948c8:	c1 0a       	beqz38 $r1,948dc <_ble_gatt_hook_cccd_and_char+0x32>
   948ca:	3c 1d f3 96 	lwi.gp $r1,[+#-12712]
   948ce:	80 4a       	mov55 $r2,$r10
   948d0:	49 ff db bc 	jal 90048 <memcpy>
   948d4:	3c 0d f3 96 	lwi.gp $r0,[+#-12712]
   948d8:	49 00 2f 05 	jal 9a6e2 <free>
   948dc:	3e 7f ce 5c 	addi.gp $r7,#-12708
   948e0:	a6 38       	lbi333 $r0,[$r7+#0x0]
   948e2:	fb 58       	movpi45 $r10,#0x28
   948e4:	80 28       	mov55 $r1,$r8
   948e6:	42 10 28 73 	maddr32 $r1,$r0,$r10
   948ea:	fa 50       	movpi45 $r2,#0x20
   948ec:	9c 0c       	addi333 $r0,$r1,#4
   948ee:	84 20       	movi55 $r1,#0
   948f0:	49 ff db cc 	jal 90088 <memset>
   948f4:	a6 b8       	lbi333 $r2,[$r7+#0x0]
   948f6:	00 13 00 13 	lbi $r1,[$r6+#0x13]
   948fa:	00 33 00 12 	lbi $r3,[$r6+#0x12]
   948fe:	80 08       	mov55 $r0,$r8
   94900:	42 01 28 73 	maddr32 $r0,$r2,$r10
   94904:	40 10 a0 08 	slli $r1,$r1,#8
   94908:	fe 5f       	or33 $r1,$r3
   9490a:	ac 40       	shi333 $r1,[$r0+#0x0]
   9490c:	9c 91       	addi333 $r2,$r2,#1
   9490e:	00 14 80 13 	lbi $r1,[$r9+#0x13]
   94912:	00 34 80 12 	lbi $r3,[$r9+#0x12]
   94916:	40 10 a0 08 	slli $r1,$r1,#8
   9491a:	fe 5f       	or33 $r1,$r3
   9491c:	ac 41       	shi333 $r1,[$r0+#0x2]
   9491e:	a7 35       	lbi333 $r4,[$r6+#0x5]
   94920:	a7 74       	lbi333 $r5,[$r6+#0x4]
   94922:	a6 f6       	lbi333 $r3,[$r6+#0x6]
   94924:	a6 77       	lbi333 $r1,[$r6+#0x7]
   94926:	40 42 20 08 	slli $r4,$r4,#8
   9492a:	ff 2f       	or33 $r4,$r5
   9492c:	40 31 c0 08 	slli $r3,$r3,#16
   94930:	fe e7       	or33 $r3,$r4
   94932:	40 10 e0 08 	slli $r1,$r1,#24
   94936:	fe 5f       	or33 $r1,$r3
   94938:	14 10 00 09 	swi $r1,[$r0+#0x24]
   9493c:	46 10 00 94 	sethi $r1,#0x94
   94940:	58 10 84 8a 	ori $r1,$r1,#0x48a
   94944:	40 00 a0 09 	srli $r0,$r1,#8
   94948:	ae 35       	sbi333 $r0,[$r6+#0x5]
   9494a:	40 00 c0 09 	srli $r0,$r1,#16
   9494e:	ae 74       	sbi333 $r1,[$r6+#0x4]
   94950:	ae 36       	sbi333 $r0,[$r6+#0x6]
   94952:	92 38       	srli45 $r1,#24
   94954:	ae 77       	sbi333 $r1,[$r6+#0x7]
   94956:	3c 8f f3 96 	swi.gp $r8,[+#-12712]
   9495a:	ae b8       	sbi333 $r2,[$r7+#0x0]
   9495c:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009495e <_ble_gatt_check_cccd>:
   9495e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   94960:	00 10 00 0c 	lbi $r1,[$r0+#0xc]
   94964:	5a 18 02 2e 	bnec $r1,#2,949c0 <_ble_gatt_check_cccd+0x62>
   94968:	00 20 00 09 	lbi $r2,[$r0+#0x9]
   9496c:	00 10 00 08 	lbi $r1,[$r0+#0x8]
   94970:	40 21 20 08 	slli $r2,$r2,#8
   94974:	fe 8f       	or33 $r2,$r1
   94976:	44 10 29 02 	movi $r1,#10498
   9497a:	4c 20 c0 23 	bne $r2,$r1,949c0 <_ble_gatt_check_cccd+0x62>
   9497e:	00 10 00 13 	lbi $r1,[$r0+#0x13]
   94982:	00 20 00 12 	lbi $r2,[$r0+#0x12]
   94986:	40 10 a0 08 	slli $r1,$r1,#8
   9498a:	fe 57       	or33 $r1,$r2
   9498c:	3c 4d f4 b3 	lwi.gp $r4,[+#-11572]
   94990:	44 50 28 03 	movi $r5,#10243
   94994:	d5 13       	j8 949ba <_ble_gatt_check_cccd+0x5c>
   94996:	38 32 0a 02 	lw $r3,[$r4+($r2<<#0x2)]
   9499a:	9c dd       	addi333 $r3,$r3,#5
   9499c:	a7 9f       	lbi333 $r6,[$r3+#0x7]
   9499e:	5a 68 02 0d 	bnec $r6,#2,949b8 <_ble_gatt_check_cccd+0x5a>
   949a2:	a7 9b       	lbi333 $r6,[$r3+#0x3]
   949a4:	a6 dc       	lbi333 $r3,[$r3+#0x4]
   949a6:	40 31 a0 08 	slli $r3,$r3,#8
   949aa:	fe f7       	or33 $r3,$r6
   949ac:	db 06       	bnes38 $r3,949b8 <_ble_gatt_check_cccd+0x5a>
   949ae:	38 12 06 02 	lw $r1,[$r4+($r1<<#0x2)]
   949b2:	49 ff ff 7c 	jal 948aa <_ble_gatt_hook_cccd_and_char>
   949b6:	d5 05       	j8 949c0 <_ble_gatt_check_cccd+0x62>
   949b8:	80 22       	mov55 $r1,$r2
   949ba:	9e 89       	subi333 $r2,$r1,#1
   949bc:	96 91       	zeh33 $r2,$r2
   949be:	ca ec       	bnez38 $r2,94996 <_ble_gatt_check_cccd+0x38>
   949c0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000949c2 <BLE_gatt_add_descrip>:
   949c2:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   949c4:	50 60 00 10 	addi $r6,$r0,#16
   949c8:	a6 f4       	lbi333 $r3,[$r6+#0x4]
   949ca:	a5 33       	lhi333 $r4,[$r6+#0x6]
   949cc:	a5 74       	lhi333 $r5,[$r6+#0x8]
   949ce:	a0 73       	lwi333 $r1,[$r6+#0xc]
   949d0:	a0 b4       	lwi333 $r2,[$r6+#0x10]
   949d2:	b0 01       	addri36.sp $r0,#0x4
   949d4:	49 ff fe 5b 	jal 9468a <_ble_gatt_new_attribute>
   949d8:	50 23 7f f0 	addi $r2,$r6,#-16
   949dc:	a2 51       	lwi333.bi $r1,[$r2],#0x4
   949de:	f0 01       	lwi37.sp $r0,[+#0x4]
   949e0:	96 48       	zeb33 $r1,$r1
   949e2:	49 ff fe 30 	jal 94642 <_ble_gatt_set_uuid>
   949e6:	f0 01       	lwi37.sp $r0,[+#0x4]
   949e8:	49 ff ff bb 	jal 9495e <_ble_gatt_check_cccd>
   949ec:	f0 01       	lwi37.sp $r0,[+#0x4]
   949ee:	00 10 00 12 	lbi $r1,[$r0+#0x12]
   949f2:	00 00 00 13 	lbi $r0,[$r0+#0x13]
   949f6:	40 00 20 08 	slli $r0,$r0,#8
   949fa:	fe 0f       	or33 $r0,$r1
   949fc:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000949fe <ATT_Client_GetHandleValueReport>:
   949fe:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   94a00:	81 00       	mov55 $r8,$r0
   94a02:	a6 00       	lbi333 $r0,[$r0+#0x0]
   94a04:	5a 08 1d 09 	bnec $r0,#29,94a16 <ATT_Client_GetHandleValueReport+0x18>
   94a08:	fa 0e       	movpi45 $r0,#0x1e
   94a0a:	10 0f 80 04 	sbi $r0,[$sp+#0x4]
   94a0e:	84 21       	movi55 $r1,#1
   94a10:	b0 01       	addri36.sp $r0,#0x4
   94a12:	49 ff f6 05 	jal 9361c <ATT_SendPduToL2CAP>
   94a16:	3e 7f c9 18 	addi.gp $r7,#-14056
   94a1a:	50 73 80 5f 	addi $r7,$r7,#95
   94a1e:	00 93 80 06 	lbi $r9,[$r7+#0x6]
   94a22:	a6 3d       	lbi333 $r0,[$r7+#0x5]
   94a24:	40 94 a0 08 	slli $r9,$r9,#8
   94a28:	40 94 80 04 	or $r9,$r9,$r0
   94a2c:	8d 2a       	addi45 $r9,#10
   94a2e:	40 94 80 13 	zeh $r9,$r9
   94a32:	80 09       	mov55 $r0,$r9
   94a34:	49 00 2e d0 	jal 9a7d4 <malloc>
   94a38:	80 49       	mov55 $r2,$r9
   94a3a:	84 20       	movi55 $r1,#0
   94a3c:	80 c0       	mov55 $r6,$r0
   94a3e:	49 ff db 25 	jal 90088 <memset>
   94a42:	44 00 30 14 	movi $r0,#12308
   94a46:	b6 06       	swi450 $r0,[$r6]
   94a48:	a6 3f       	lbi333 $r0,[$r7+#0x7]
   94a4a:	49 ff f0 82 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   94a4e:	ac 32       	shi333 $r0,[$r6+#0x4]
   94a50:	00 04 00 02 	lbi $r0,[$r8+#0x2]
   94a54:	00 14 00 01 	lbi $r1,[$r8+#0x1]
   94a58:	40 00 20 08 	slli $r0,$r0,#8
   94a5c:	98 01       	add333 $r0,$r0,$r1
   94a5e:	a6 be       	lbi333 $r2,[$r7+#0x6]
   94a60:	ac 33       	shi333 $r0,[$r6+#0x6]
   94a62:	a6 3d       	lbi333 $r0,[$r7+#0x5]
   94a64:	40 21 20 08 	slli $r2,$r2,#8
   94a68:	fe 87       	or33 $r2,$r0
   94a6a:	9e 93       	subi333 $r2,$r2,#3
   94a6c:	96 91       	zeh33 $r2,$r2
   94a6e:	50 14 00 03 	addi $r1,$r8,#3
   94a72:	50 03 00 0a 	addi $r0,$r6,#10
   94a76:	ac b4       	shi333 $r2,[$r6+#0x8]
   94a78:	49 ff da e8 	jal 90048 <memcpy>
   94a7c:	80 06       	mov55 $r0,$r6
   94a7e:	49 ff eb e0 	jal 9223e <bt_infom_ap>
   94a82:	80 06       	mov55 $r0,$r6
   94a84:	49 00 2e 2f 	jal 9a6e2 <free>
   94a88:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

00094a8a <sm_init>:
   94a8a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   94a8c:	84 20       	movi55 $r1,#0
   94a8e:	3c 1b e9 6c 	shi.gp $r1,[+#-11560]
   94a92:	3e 0f c9 c0 	addi.gp $r0,#-13888
   94a96:	50 20 00 40 	addi $r2,$r0,#64
   94a9a:	aa 41       	swi333.bi $r1,[$r0],#0x4
   94a9c:	4c 01 7f ff 	bne $r0,$r2,94a9a <sm_init+0x10>
   94aa0:	49 00 09 9b 	jal 95dd6 <sm_hal_init>
   94aa4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00094aa6 <SM_FinishPairing>:
   94aa6:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   94aa8:	3e 7f c9 c0 	addi.gp $r7,#-13888
   94aac:	97 80       	zeb33 $r6,$r0
   94aae:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   94ab2:	54 90 80 ff 	andi $r9,$r1,#0xff
   94ab6:	54 81 00 ff 	andi $r8,$r2,#0xff
   94aba:	c0 33       	beqz38 $r0,94b20 <SM_FinishPairing+0x7a>
   94abc:	80 06       	mov55 $r0,$r6
   94abe:	49 00 0a 16 	jal 95eea <sm_hal_release_timer>
   94ac2:	4e 92 00 24 	beqz $r9,94b0a <SM_FinishPairing+0x64>
   94ac6:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   94aca:	00 10 00 0f 	lbi $r1,[$r0+#0xf]
   94ace:	e6 24       	slti45 $r1,#4
   94ad0:	e9 09       	bnezs8 94ae2 <SM_FinishPairing+0x3c>
   94ad2:	50 40 00 b4 	addi $r4,$r0,#180
   94ad6:	50 00 00 a4 	addi $r0,$r0,#164
   94ada:	3a 00 0c 00 	lmw.bi $r0,[$r0],$r3,#0x0    ! {$r0~$r3}
   94ade:	3a 02 0c 20 	smw.bi $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   94ae2:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   94ae6:	a6 c3       	lbi333 $r3,[$r0+#0x3]
   94ae8:	00 10 00 0b 	lbi $r1,[$r0+#0xb]
   94aec:	96 cf       	fexti33 $r3,#0x1
   94aee:	5a 38 01 0e 	bnec $r3,#1,94b0a <SM_FinishPairing+0x64>
   94af2:	96 4f       	fexti33 $r1,#0x1
   94af4:	4c 11 c0 0b 	bne $r1,$r3,94b0a <SM_FinishPairing+0x64>
   94af8:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   94afc:	58 10 80 01 	ori $r1,$r1,#0x1
   94b00:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   94b04:	80 06       	mov55 $r0,$r6
   94b06:	49 00 08 11 	jal 95b28 <sm_hal_flash_save_data>
   94b0a:	80 06       	mov55 $r0,$r6
   94b0c:	80 28       	mov55 $r1,$r8
   94b0e:	49 00 09 85 	jal 95e18 <sm_hal_infom_auth_status>
   94b12:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   94b16:	49 00 2d e6 	jal 9a6e2 <free>
   94b1a:	84 00       	movi55 $r0,#0
   94b1c:	38 03 9a 0a 	sw $r0,[$r7+($r6<<#0x2)]
   94b20:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00094b22 <SM_PairingFailed>:
   94b22:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   94b24:	97 c0       	zeb33 $r7,$r0
   94b26:	97 88       	zeb33 $r6,$r1
   94b28:	80 07       	mov55 $r0,$r7
   94b2a:	80 26       	mov55 $r1,$r6
   94b2c:	49 00 0b 49 	jal 961be <SM_Protocol_PairingFailed>
   94b30:	80 07       	mov55 $r0,$r7
   94b32:	84 20       	movi55 $r1,#0
   94b34:	58 23 00 80 	ori $r2,$r6,#0x80
   94b38:	49 ff ff b7 	jal 94aa6 <SM_FinishPairing>
   94b3c:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00094b3e <SM_StartKeyDistribution>:
   94b3e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   94b40:	97 80       	zeb33 $r6,$r0
   94b42:	54 80 80 ff 	andi $r8,$r1,#0xff
   94b46:	80 06       	mov55 $r0,$r6
   94b48:	44 10 75 30 	movi $r1,#30000
   94b4c:	49 00 09 d4 	jal 95ef4 <sm_hal_set_timer>
   94b50:	54 04 00 01 	andi $r0,$r8,#0x1
   94b54:	c0 28       	beqz38 $r0,94ba4 <SM_StartKeyDistribution+0x66>
   94b56:	3e 7f c9 c0 	addi.gp $r7,#-13888
   94b5a:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   94b5e:	fa 40       	movpi45 $r2,#0x10
   94b60:	84 20       	movi55 $r1,#0
   94b62:	50 00 00 a4 	addi $r0,$r0,#164
   94b66:	49 ff da 91 	jal 90088 <memset>
   94b6a:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   94b6e:	50 00 80 a4 	addi $r0,$r1,#164
   94b72:	00 10 80 a0 	lbi $r1,[$r1+#0xa0]
   94b76:	49 00 09 e1 	jal 95f38 <sm_hal_get_random_number>
   94b7a:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   94b7e:	80 06       	mov55 $r0,$r6
   94b80:	50 10 80 a4 	addi $r1,$r1,#164
   94b84:	49 00 0a 8e 	jal 960a0 <SM_Protocol_EncryptionInfo>
   94b88:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   94b8c:	84 2a       	movi55 $r1,#10
   94b8e:	50 00 01 04 	addi $r0,$r0,#260
   94b92:	49 00 09 d3 	jal 95f38 <sm_hal_get_random_number>
   94b96:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   94b9a:	80 06       	mov55 $r0,$r6
   94b9c:	50 10 81 04 	addi $r1,$r1,#260
   94ba0:	49 00 0a 66 	jal 9606c <SM_Protocol_MasterID>
   94ba4:	54 04 00 02 	andi $r0,$r8,#0x2
   94ba8:	c0 20       	beqz38 $r0,94be8 <SM_StartKeyDistribution+0xaa>
   94baa:	80 06       	mov55 $r0,$r6
   94bac:	49 ff f0 73 	jal 92c92 <ble_gap_link_GetAttr_Role>
   94bb0:	3e 1f c9 c0 	addi.gp $r1,#-13888
   94bb4:	5a 08 01 09 	bnec $r0,#1,94bc6 <SM_StartKeyDistribution+0x88>
   94bb8:	38 50 9a 02 	lw $r5,[$r1+($r6<<#0x2)]
   94bbc:	3e 4f c1 64 	addi.gp $r4,#-16028
   94bc0:	50 52 80 e4 	addi $r5,$r5,#228
   94bc4:	d5 07       	j8 94bd2 <SM_StartKeyDistribution+0x94>
   94bc6:	38 50 9a 02 	lw $r5,[$r1+($r6<<#0x2)]
   94bca:	3e 4f c1 74 	addi.gp $r4,#-16012
   94bce:	50 52 80 e4 	addi $r5,$r5,#228
   94bd2:	3a 02 0c 00 	lmw.bi $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   94bd6:	3a 02 8c 20 	smw.bi $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   94bda:	80 06       	mov55 $r0,$r6
   94bdc:	80 24       	mov55 $r1,$r4
   94bde:	49 00 0a 2d 	jal 96038 <SM_Protocol_IdentityInfo>
   94be2:	80 06       	mov55 $r0,$r6
   94be4:	49 00 0a ac 	jal 9613c <SM_Protocol_IdentityAddressInfo>
   94be8:	54 84 00 04 	andi $r8,$r8,#0x4
   94bec:	4e 82 00 12 	beqz $r8,94c10 <SM_StartKeyDistribution+0xd2>
   94bf0:	3e 7f c9 c0 	addi.gp $r7,#-13888
   94bf4:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   94bf8:	fa 20       	movpi45 $r1,#0x10
   94bfa:	50 00 00 c4 	addi $r0,$r0,#196
   94bfe:	49 00 09 9d 	jal 95f38 <sm_hal_get_random_number>
   94c02:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   94c06:	80 06       	mov55 $r0,$r6
   94c08:	50 10 80 c4 	addi $r1,$r1,#196
   94c0c:	49 00 09 fc 	jal 96004 <SM_Protocol_SigningInfo>
   94c10:	80 06       	mov55 $r0,$r6
   94c12:	49 ff f0 40 	jal 92c92 <ble_gap_link_GetAttr_Role>
   94c16:	5a 08 01 0c 	bnec $r0,#1,94c2e <SM_StartKeyDistribution+0xf0>
   94c1a:	3e 1f c9 c0 	addi.gp $r1,#-13888
   94c1e:	38 20 9a 02 	lw $r2,[$r1+($r6<<#0x2)]
   94c22:	80 26       	mov55 $r1,$r6
   94c24:	00 21 00 a2 	lbi $r2,[$r2+#0xa2]
   94c28:	49 00 00 09 	jal 94c3a <SM_WaitKeyDistribution>
   94c2c:	d5 06       	j8 94c38 <SM_StartKeyDistribution+0xfa>
   94c2e:	80 06       	mov55 $r0,$r6
   94c30:	84 21       	movi55 $r1,#1
   94c32:	84 40       	movi55 $r2,#0
   94c34:	49 ff ff 39 	jal 94aa6 <SM_FinishPairing>
   94c38:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00094c3a <SM_WaitKeyDistribution>:
   94c3a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   94c3c:	96 00       	zeb33 $r0,$r0
   94c3e:	97 88       	zeb33 $r6,$r1
   94c40:	96 90       	zeb33 $r2,$r2
   94c42:	5a 00 02 0f 	beqc $r0,#2,94c60 <SM_WaitKeyDistribution+0x26>
   94c46:	5a 00 04 17 	beqc $r0,#4,94c74 <SM_WaitKeyDistribution+0x3a>
   94c4a:	5a 08 01 34 	bnec $r0,#1,94cb2 <SM_WaitKeyDistribution+0x78>
   94c4e:	96 14       	xlsb33 $r0,$r2
   94c50:	c0 08       	beqz38 $r0,94c60 <SM_WaitKeyDistribution+0x26>
   94c52:	3e 0f c9 c0 	addi.gp $r0,#-13888
   94c56:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   94c5a:	44 10 00 31 	movi $r1,#49
   94c5e:	d5 14       	j8 94c86 <SM_WaitKeyDistribution+0x4c>
   94c60:	54 01 00 02 	andi $r0,$r2,#0x2
   94c64:	c0 08       	beqz38 $r0,94c74 <SM_WaitKeyDistribution+0x3a>
   94c66:	3e 0f c9 c0 	addi.gp $r0,#-13888
   94c6a:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   94c6e:	44 10 00 32 	movi $r1,#50
   94c72:	d5 0a       	j8 94c86 <SM_WaitKeyDistribution+0x4c>
   94c74:	54 71 00 04 	andi $r7,$r2,#0x4
   94c78:	c7 09       	beqz38 $r7,94c8a <SM_WaitKeyDistribution+0x50>
   94c7a:	3e 0f c9 c0 	addi.gp $r0,#-13888
   94c7e:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   94c82:	44 10 00 33 	movi $r1,#51
   94c86:	ae 47       	sbi333 $r1,[$r0+#0x7]
   94c88:	d5 15       	j8 94cb2 <SM_WaitKeyDistribution+0x78>
   94c8a:	80 06       	mov55 $r0,$r6
   94c8c:	49 ff f0 03 	jal 92c92 <ble_gap_link_GetAttr_Role>
   94c90:	80 20       	mov55 $r1,$r0
   94c92:	5a 08 01 07 	bnec $r0,#1,94ca0 <SM_WaitKeyDistribution+0x66>
   94c96:	80 06       	mov55 $r0,$r6
   94c98:	80 47       	mov55 $r2,$r7
   94c9a:	49 ff ff 06 	jal 94aa6 <SM_FinishPairing>
   94c9e:	d5 0a       	j8 94cb2 <SM_WaitKeyDistribution+0x78>
   94ca0:	3e 0f c9 c0 	addi.gp $r0,#-13888
   94ca4:	38 10 1a 02 	lw $r1,[$r0+($r6<<#0x2)]
   94ca8:	80 06       	mov55 $r0,$r6
   94caa:	00 10 80 a2 	lbi $r1,[$r1+#0xa2]
   94cae:	49 ff ff 48 	jal 94b3e <SM_StartKeyDistribution>
   94cb2:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00094cb4 <SM_LinkDisconnected>:
   94cb4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   94cb6:	97 80       	zeb33 $r6,$r0
   94cb8:	80 06       	mov55 $r0,$r6
   94cba:	84 20       	movi55 $r1,#0
   94cbc:	49 00 09 43 	jal 95f42 <sm_hal_set_link_encrypted>
   94cc0:	80 06       	mov55 $r0,$r6
   94cc2:	84 20       	movi55 $r1,#0
   94cc4:	49 00 09 45 	jal 95f4e <sm_hal_set_link_authenticated>
   94cc8:	80 06       	mov55 $r0,$r6
   94cca:	84 20       	movi55 $r1,#0
   94ccc:	84 42       	movi55 $r2,#2
   94cce:	49 ff fe ec 	jal 94aa6 <SM_FinishPairing>
   94cd2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00094cd4 <SM_CryptoTool_16Byte_XOR>:
   94cd4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   94cd6:	84 40       	movi55 $r2,#0
   94cd8:	38 40 08 00 	lb $r4,[$r0+($r2<<#0x0)]
   94cdc:	38 30 88 00 	lb $r3,[$r1+($r2<<#0x0)]
   94ce0:	fe e5       	xor33 $r3,$r4
   94ce2:	38 30 88 08 	sb $r3,[$r1+($r2<<#0x0)]
   94ce6:	9c 91       	addi333 $r2,$r2,#1
   94ce8:	5a 28 10 f8 	bnec $r2,#16,94cd8 <SM_CryptoTool_16Byte_XOR+0x4>
   94cec:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00094cee <SM_CryptoTool_LeftShiftOneBit>:
   94cee:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   94cf0:	a6 80       	lbi333 $r2,[$r0+#0x0]
   94cf2:	50 30 00 0f 	addi $r3,$r0,#15
   94cf6:	98 92       	add333 $r2,$r2,$r2
   94cf8:	18 20 80 01 	sbi.bi $r2,[$r1],#0x1
   94cfc:	a6 81       	lbi333 $r2,[$r0+#0x1]
   94cfe:	98 92       	add333 $r2,$r2,$r2
   94d00:	96 90       	zeb33 $r2,$r2
   94d02:	ae 88       	sbi333 $r2,[$r1+#0x0]
   94d04:	08 40 00 01 	lbi.bi $r4,[$r0],#0x1
   94d08:	92 87       	srli45 $r4,#7
   94d0a:	fe a7       	or33 $r2,$r4
   94d0c:	18 20 80 01 	sbi.bi $r2,[$r1],#0x1
   94d10:	4c 01 ff f6 	bne $r0,$r3,94cfc <SM_CryptoTool_LeftShiftOneBit+0xe>
   94d14:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00094d16 <SM_CryptoTool_init>:
   94d16:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   94d18:	49 00 08 46 	jal 95da4 <sm_hal_cryptoTool_init>
   94d1c:	84 20       	movi55 $r1,#0
   94d1e:	fa 48       	movpi45 $r2,#0x18
   94d20:	3e 0f ce 6c 	addi.gp $r0,#-12692
   94d24:	49 ff d9 b2 	jal 90088 <memset>
   94d28:	84 20       	movi55 $r1,#0
   94d2a:	fa 40       	movpi45 $r2,#0x10
   94d2c:	3e 0f ce 84 	addi.gp $r0,#-12668
   94d30:	49 ff d9 ac 	jal 90088 <memset>
   94d34:	84 00       	movi55 $r0,#0
   94d36:	3c 0f f3 a5 	swi.gp $r0,[+#-12652]
   94d3a:	3c 0f f3 a6 	swi.gp $r0,[+#-12648]
   94d3e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00094d40 <f5_finish>:
   94d40:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   94d42:	96 00       	zeb33 $r0,$r0
   94d44:	c0 06       	beqz38 $r0,94d50 <f5_finish+0x10>
   94d46:	3c 0d f3 a1 	lwi.gp $r0,[+#-12668]
   94d4a:	c0 03       	beqz38 $r0,94d50 <f5_finish+0x10>
   94d4c:	49 00 2c cb 	jal 9a6e2 <free>
   94d50:	3c 0d f3 a2 	lwi.gp $r0,[+#-12664]
   94d54:	c0 03       	beqz38 $r0,94d5a <f5_finish+0x1a>
   94d56:	49 00 2c c6 	jal 9a6e2 <free>
   94d5a:	84 20       	movi55 $r1,#0
   94d5c:	fa 40       	movpi45 $r2,#0x10
   94d5e:	3e 0f ce 84 	addi.gp $r0,#-12668
   94d62:	49 ff d9 93 	jal 90088 <memset>
   94d66:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00094d68 <f5_generate_ltk_cb>:
   94d68:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   94d6a:	3c 3d f3 a4 	lwi.gp $r3,[+#-12656]
   94d6e:	96 48       	zeb33 $r1,$r1
   94d70:	96 90       	zeb33 $r2,$r2
   94d72:	dd 23       	jral5 $r3
   94d74:	84 00       	movi55 $r0,#0
   94d76:	49 ff ff e5 	jal 94d40 <f5_finish>
   94d7a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00094d7c <cmac_finish>:
   94d7c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   94d7e:	2e 17 ce 7f 	lbi.gp $r1,[+#-12673]
   94d82:	c9 06       	bnez38 $r1,94d8e <cmac_finish+0x12>
   94d84:	3c 0d f3 9b 	lwi.gp $r0,[+#-12692]
   94d88:	c0 03       	beqz38 $r0,94d8e <cmac_finish+0x12>
   94d8a:	49 00 2c ac 	jal 9a6e2 <free>
   94d8e:	2e 17 ce 80 	lbi.gp $r1,[+#-12672]
   94d92:	c9 06       	bnez38 $r1,94d9e <cmac_finish+0x22>
   94d94:	3c 0d f3 9d 	lwi.gp $r0,[+#-12684]
   94d98:	c0 03       	beqz38 $r0,94d9e <cmac_finish+0x22>
   94d9a:	49 00 2c a4 	jal 9a6e2 <free>
   94d9e:	3c 0d f3 9e 	lwi.gp $r0,[+#-12680]
   94da2:	c0 03       	beqz38 $r0,94da8 <cmac_finish+0x2c>
   94da4:	49 00 2c 9f 	jal 9a6e2 <free>
   94da8:	3e 0f ce 6c 	addi.gp $r0,#-12692
   94dac:	8c 10       	addi45 $r0,#16
   94dae:	a6 43       	lbi333 $r1,[$r0+#0x3]
   94db0:	c1 09       	beqz38 $r1,94dc2 <cmac_finish+0x46>
   94db2:	a6 44       	lbi333 $r1,[$r0+#0x4]
   94db4:	c1 07       	beqz38 $r1,94dc2 <cmac_finish+0x46>
   94db6:	84 20       	movi55 $r1,#0
   94db8:	ae 43       	sbi333 $r1,[$r0+#0x3]
   94dba:	ae 44       	sbi333 $r1,[$r0+#0x4]
   94dbc:	14 10 7f fd 	swi $r1,[$r0+#-0xc]
   94dc0:	d5 07       	j8 94dce <cmac_finish+0x52>
   94dc2:	3e 0f ce 6c 	addi.gp $r0,#-12692
   94dc6:	84 20       	movi55 $r1,#0
   94dc8:	fa 48       	movpi45 $r2,#0x18
   94dca:	49 ff d9 5f 	jal 90088 <memset>
   94dce:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00094dd0 <g2_generate_cb>:
   94dd0:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   94dd2:	81 20       	mov55 $r9,$r0
   94dd4:	84 04       	movi55 $r0,#4
   94dd6:	54 80 80 ff 	andi $r8,$r1,#0xff
   94dda:	97 d0       	zeb33 $r7,$r2
   94ddc:	49 00 2c fc 	jal 9a7d4 <malloc>
   94de0:	80 c0       	mov55 $r6,$r0
   94de2:	c0 05       	beqz38 $r0,94dec <g2_generate_cb+0x1c>
   94de4:	80 29       	mov55 $r1,$r9
   94de6:	84 44       	movi55 $r2,#4
   94de8:	49 ff d9 30 	jal 90048 <memcpy>
   94dec:	3c 3d f3 a5 	lwi.gp $r3,[+#-12652]
   94df0:	c3 05       	beqz38 $r3,94dfa <g2_generate_cb+0x2a>
   94df2:	80 06       	mov55 $r0,$r6
   94df4:	80 28       	mov55 $r1,$r8
   94df6:	80 47       	mov55 $r2,$r7
   94df8:	dd 23       	jral5 $r3
   94dfa:	c6 04       	beqz38 $r6,94e02 <g2_generate_cb+0x32>
   94dfc:	80 06       	mov55 $r0,$r6
   94dfe:	49 00 2c 72 	jal 9a6e2 <free>
   94e02:	84 20       	movi55 $r1,#0
   94e04:	3c 1f f3 a5 	swi.gp $r1,[+#-12652]
   94e08:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00094e0a <ah_generate_cb>:
   94e0a:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   94e0c:	81 20       	mov55 $r9,$r0
   94e0e:	84 03       	movi55 $r0,#3
   94e10:	54 80 80 ff 	andi $r8,$r1,#0xff
   94e14:	97 d0       	zeb33 $r7,$r2
   94e16:	49 00 2c df 	jal 9a7d4 <malloc>
   94e1a:	80 c0       	mov55 $r6,$r0
   94e1c:	c0 05       	beqz38 $r0,94e26 <ah_generate_cb+0x1c>
   94e1e:	80 29       	mov55 $r1,$r9
   94e20:	84 43       	movi55 $r2,#3
   94e22:	49 ff d9 13 	jal 90048 <memcpy>
   94e26:	3c 3d f3 a6 	lwi.gp $r3,[+#-12648]
   94e2a:	c3 05       	beqz38 $r3,94e34 <ah_generate_cb+0x2a>
   94e2c:	80 06       	mov55 $r0,$r6
   94e2e:	80 28       	mov55 $r1,$r8
   94e30:	80 47       	mov55 $r2,$r7
   94e32:	dd 23       	jral5 $r3
   94e34:	c6 04       	beqz38 $r6,94e3c <ah_generate_cb+0x32>
   94e36:	80 06       	mov55 $r0,$r6
   94e38:	49 00 2c 55 	jal 9a6e2 <free>
   94e3c:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00094e3e <SM_CryptoTool_ReadLocalP256PublicKeyComplete>:
   94e3e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   94e40:	80 e0       	mov55 $r7,$r0
   94e42:	44 00 00 40 	movi $r0,#64
   94e46:	49 00 2c c7 	jal 9a7d4 <malloc>
   94e4a:	3c 0f f1 a0 	swi.gp $r0,[+#-14720]
   94e4e:	c0 06       	beqz38 $r0,94e5a <SM_CryptoTool_ReadLocalP256PublicKeyComplete+0x1c>
   94e50:	9c 79       	addi333 $r1,$r7,#1
   94e52:	44 20 00 40 	movi $r2,#64
   94e56:	49 ff d8 f9 	jal 90048 <memcpy>
   94e5a:	3e 6f ce 68 	addi.gp $r6,#-12696
   94e5e:	b4 46       	lwi450 $r2,[$r6]
   94e60:	c2 0c       	beqz38 $r2,94e78 <SM_CryptoTool_ReadLocalP256PublicKeyComplete+0x3a>
   94e62:	b4 62       	lwi450 $r3,[$r2]
   94e64:	3c 0d f1 a0 	lwi.gp $r0,[+#-14720]
   94e68:	a6 78       	lbi333 $r1,[$r7+#0x0]
   94e6a:	a6 94       	lbi333 $r2,[$r2+#0x4]
   94e6c:	dd 23       	jral5 $r3
   94e6e:	b4 06       	lwi450 $r0,[$r6]
   94e70:	49 00 2c 39 	jal 9a6e2 <free>
   94e74:	84 00       	movi55 $r0,#0
   94e76:	b6 06       	swi450 $r0,[$r6]
   94e78:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00094e7a <SM_CryptoTool_AES_Cipher>:
   94e7a:	fc 44       	push25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}
   94e7c:	fa c0       	movpi45 $r6,#0x10
   94e7e:	80 80       	mov55 $r4,$r0
   94e80:	81 21       	mov55 $r9,$r1
   94e82:	80 e2       	mov55 $r7,$r2
   94e84:	80 24       	mov55 $r1,$r4
   94e86:	80 46       	mov55 $r2,$r6
   94e88:	80 1f       	mov55 $r0,$sp
   94e8a:	49 ff d8 df 	jal 90048 <memcpy>
   94e8e:	80 29       	mov55 $r1,$r9
   94e90:	80 46       	mov55 $r2,$r6
   94e92:	40 0f 98 00 	add $r0,$sp,$r6
   94e96:	49 ff d8 d9 	jal 90048 <memcpy>
   94e9a:	44 00 20 17 	movi $r0,#8215
   94e9e:	80 3f       	mov55 $r1,$sp
   94ea0:	fa 50       	movpi45 $r2,#0x20
   94ea2:	80 67       	mov55 $r3,$r7
   94ea4:	49 00 07 6b 	jal 95d7a <sm_hal_cryptoTool_hci_send_cmd_ex>
   94ea8:	81 1f       	mov55 $r8,$sp
   94eaa:	84 01       	movi55 $r0,#1
   94eac:	fc c4       	pop25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}

00094eae <cmac_generate_SubKey>:
   94eae:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   94eb0:	81 00       	mov55 $r8,$r0
   94eb2:	fa 00       	movpi45 $r0,#0x10
   94eb4:	81 21       	mov55 $r9,$r1
   94eb6:	49 00 2c 8f 	jal 9a7d4 <malloc>
   94eba:	80 c0       	mov55 $r6,$r0
   94ebc:	c8 09       	bnez38 $r0,94ece <cmac_generate_SubKey+0x20>
   94ebe:	46 00 00 9f 	sethi $r0,#0x9f
   94ec2:	58 00 0a 50 	ori $r0,$r0,#0xa50
   94ec6:	49 00 45 4c 	jal 9d95e <puts>
   94eca:	80 06       	mov55 $r0,$r6
   94ecc:	d5 22       	j8 94f10 <cmac_generate_SubKey+0x62>
   94ece:	84 08       	movi55 $r0,#8
   94ed0:	49 00 2c 82 	jal 9a7d4 <malloc>
   94ed4:	80 e0       	mov55 $r7,$r0
   94ed6:	c8 0c       	bnez38 $r0,94eee <cmac_generate_SubKey+0x40>
   94ed8:	46 00 00 9f 	sethi $r0,#0x9f
   94edc:	58 00 0a 70 	ori $r0,$r0,#0xa70
   94ee0:	49 00 45 3f 	jal 9d95e <puts>
   94ee4:	80 06       	mov55 $r0,$r6
   94ee6:	49 00 2b fe 	jal 9a6e2 <free>
   94eea:	80 07       	mov55 $r0,$r7
   94eec:	d5 12       	j8 94f10 <cmac_generate_SubKey+0x62>
   94eee:	b7 20       	swi450 $r9,[$r0]
   94ef0:	84 00       	movi55 $r0,#0
   94ef2:	ae 3c       	sbi333 $r0,[$r7+#0x4]
   94ef4:	84 20       	movi55 $r1,#0
   94ef6:	fa 40       	movpi45 $r2,#0x10
   94ef8:	80 06       	mov55 $r0,$r6
   94efa:	49 ff d8 c7 	jal 90088 <memset>
   94efe:	80 26       	mov55 $r1,$r6
   94f00:	80 47       	mov55 $r2,$r7
   94f02:	80 08       	mov55 $r0,$r8
   94f04:	49 ff ff bb 	jal 94e7a <SM_CryptoTool_AES_Cipher>
   94f08:	80 06       	mov55 $r0,$r6
   94f0a:	49 00 2b ec 	jal 9a6e2 <free>
   94f0e:	84 01       	movi55 $r0,#1
   94f10:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00094f12 <cmac_1>:
   94f12:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   94f14:	83 80       	mov55 $fp,$r0
   94f16:	fa 00       	movpi45 $r0,#0x10
   94f18:	80 e1       	mov55 $r7,$r1
   94f1a:	49 00 2c 5d 	jal 9a7d4 <malloc>
   94f1e:	80 c0       	mov55 $r6,$r0
   94f20:	c0 51       	beqz38 $r0,94fc2 <cmac_1+0xb0>
   94f22:	84 08       	movi55 $r0,#8
   94f24:	49 00 2c 58 	jal 9a7d4 <malloc>
   94f28:	81 00       	mov55 $r8,$r0
   94f2a:	c8 06       	bnez38 $r0,94f36 <cmac_1+0x24>
   94f2c:	80 06       	mov55 $r0,$r6
   94f2e:	49 00 2b da 	jal 9a6e2 <free>
   94f32:	80 08       	mov55 $r0,$r8
   94f34:	d5 47       	j8 94fc2 <cmac_1+0xb0>
   94f36:	85 40       	movi55 $r10,#0
   94f38:	b6 e0       	swi450 $r7,[$r0]
   94f3a:	10 a0 00 04 	sbi $r10,[$r0+#0x4]
   94f3e:	3e 7f ce 6c 	addi.gp $r7,#-12692
   94f42:	00 13 80 11 	lbi $r1,[$r7+#0x11]
   94f46:	e6 30       	slti45 $r1,#16
   94f48:	e9 10       	bnezs8 94f68 <cmac_1+0x56>
   94f4a:	8e 30       	subi45 $r1,#16
   94f4c:	b4 47       	lwi450 $r2,[$r7]
   94f4e:	96 48       	zeb33 $r1,$r1
   94f50:	10 13 80 11 	sbi $r1,[$r7+#0x11]
   94f54:	80 06       	mov55 $r0,$r6
   94f56:	98 51       	add333 $r1,$r2,$r1
   94f58:	fa 40       	movpi45 $r2,#0x10
   94f5a:	49 ff d8 77 	jal 90048 <memcpy>
   94f5e:	00 03 80 11 	lbi $r0,[$r7+#0x11]
   94f62:	c8 22       	bnez38 $r0,94fa6 <cmac_1+0x94>
   94f64:	a0 3a       	lwi333 $r0,[$r7+#0x8]
   94f66:	d5 1d       	j8 94fa0 <cmac_1+0x8e>
   94f68:	52 10 80 10 	subri $r1,$r1,#16
   94f6c:	54 90 80 ff 	andi $r9,$r1,#0xff
   94f70:	fa 40       	movpi45 $r2,#0x10
   94f72:	84 20       	movi55 $r1,#0
   94f74:	80 06       	mov55 $r0,$r6
   94f76:	49 ff d8 89 	jal 90088 <memset>
   94f7a:	b4 27       	lwi450 $r1,[$r7]
   94f7c:	00 23 80 11 	lbi $r2,[$r7+#0x11]
   94f80:	40 03 24 00 	add $r0,$r6,$r9
   94f84:	8f 21       	subi45 $r9,#1
   94f86:	49 ff d8 61 	jal 90048 <memcpy>
   94f8a:	54 94 80 ff 	andi $r9,$r9,#0xff
   94f8e:	44 0f ff 80 	movi $r0,#-128
   94f92:	10 a3 80 11 	sbi $r10,[$r7+#0x11]
   94f96:	38 03 24 08 	sb $r0,[$r6+($r9<<#0x0)]
   94f9a:	a0 7a       	lwi333 $r1,[$r7+#0x8]
   94f9c:	50 00 80 10 	addi $r0,$r1,#16
   94fa0:	80 26       	mov55 $r1,$r6
   94fa2:	49 ff fe 99 	jal 94cd4 <SM_CryptoTool_16Byte_XOR>
   94fa6:	80 1c       	mov55 $r0,$fp
   94fa8:	80 26       	mov55 $r1,$r6
   94faa:	49 ff fe 95 	jal 94cd4 <SM_CryptoTool_16Byte_XOR>
   94fae:	3c 0d f3 9c 	lwi.gp $r0,[+#-12688]
   94fb2:	80 26       	mov55 $r1,$r6
   94fb4:	80 48       	mov55 $r2,$r8
   94fb6:	49 ff ff 62 	jal 94e7a <SM_CryptoTool_AES_Cipher>
   94fba:	80 06       	mov55 $r0,$r6
   94fbc:	49 00 2b 93 	jal 9a6e2 <free>
   94fc0:	84 01       	movi55 $r0,#1
   94fc2:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00094fc4 <cmac_start>:
   94fc4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   94fc6:	fa 00       	movpi45 $r0,#0x10
   94fc8:	49 00 2c 06 	jal 9a7d4 <malloc>
   94fcc:	80 c0       	mov55 $r6,$r0
   94fce:	c0 14       	beqz38 $r0,94ff6 <cmac_start+0x32>
   94fd0:	84 20       	movi55 $r1,#0
   94fd2:	fa 40       	movpi45 $r2,#0x10
   94fd4:	49 ff d8 5a 	jal 90088 <memset>
   94fd8:	80 06       	mov55 $r0,$r6
   94fda:	46 10 00 95 	sethi $r1,#0x95
   94fde:	58 10 83 76 	ori $r1,$r1,#0x376
   94fe2:	49 ff ff 98 	jal 94f12 <cmac_1>
   94fe6:	c0 05       	beqz38 $r0,94ff0 <cmac_start+0x2c>
   94fe8:	80 06       	mov55 $r0,$r6
   94fea:	49 00 2b 7c 	jal 9a6e2 <free>
   94fee:	d5 07       	j8 94ffc <cmac_start+0x38>
   94ff0:	80 06       	mov55 $r0,$r6
   94ff2:	49 00 2b 78 	jal 9a6e2 <free>
   94ff6:	84 03       	movi55 $r0,#3
   94ff8:	49 ff fe c2 	jal 94d7c <cmac_finish>
   94ffc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00094ffe <AES_CMAC>:
   94ffe:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   95000:	3e 6f ce 6c 	addi.gp $r6,#-12692
   95004:	80 e0       	mov55 $r7,$r0
   95006:	a0 31       	lwi333 $r0,[$r6+#0x4]
   95008:	96 90       	zeb33 $r2,$r2
   9500a:	c0 09       	beqz38 $r0,9501c <AES_CMAC+0x1e>
   9500c:	46 00 00 9f 	sethi $r0,#0x9f
   95010:	58 00 0a 90 	ori $r0,$r0,#0xa90
   95014:	49 00 44 a5 	jal 9d95e <puts>
   95018:	84 00       	movi55 $r0,#0
   9501a:	d5 1e       	j8 95056 <AES_CMAC+0x58>
   9501c:	a0 32       	lwi333 $r0,[$r6+#0x8]
   9501e:	b6 26       	swi450 $r1,[$r6]
   95020:	a9 f1       	swi333 $r7,[$r6+#0x4]
   95022:	a8 f3       	swi333 $r3,[$r6+#0xc]
   95024:	10 23 00 10 	sbi $r2,[$r6+#0x10]
   95028:	10 23 00 11 	sbi $r2,[$r6+#0x11]
   9502c:	c0 04       	beqz38 $r0,95034 <AES_CMAC+0x36>
   9502e:	49 ff ff cb 	jal 94fc4 <cmac_start>
   95032:	d5 11       	j8 95054 <AES_CMAC+0x56>
   95034:	fa 10       	movpi45 $r0,#0x20
   95036:	49 00 2b cf 	jal 9a7d4 <malloc>
   9503a:	a8 32       	swi333 $r0,[$r6+#0x8]
   9503c:	c0 09       	beqz38 $r0,9504e <AES_CMAC+0x50>
   9503e:	80 07       	mov55 $r0,$r7
   95040:	46 10 00 95 	sethi $r1,#0x95
   95044:	58 10 83 28 	ori $r1,$r1,#0x328
   95048:	49 ff ff 33 	jal 94eae <cmac_generate_SubKey>
   9504c:	c8 04       	bnez38 $r0,95054 <AES_CMAC+0x56>
   9504e:	84 03       	movi55 $r0,#3
   95050:	49 ff fe 96 	jal 94d7c <cmac_finish>
   95054:	84 01       	movi55 $r0,#1
   95056:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00095058 <g2>:
   95058:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   9505a:	96 00       	zeb33 $r0,$r0
   9505c:	b6 1f       	swi450 $r0,[$sp]
   9505e:	44 00 00 50 	movi $r0,#80
   95062:	81 41       	mov55 $r10,$r1
   95064:	83 82       	mov55 $fp,$r2
   95066:	81 03       	mov55 $r8,$r3
   95068:	f4 81       	swi37.sp $r4,[+#0x4]
   9506a:	81 25       	mov55 $r9,$r5
   9506c:	49 00 2b b4 	jal 9a7d4 <malloc>
   95070:	80 c0       	mov55 $r6,$r0
   95072:	c0 2d       	beqz38 $r0,950cc <g2+0x74>
   95074:	84 08       	movi55 $r0,#8
   95076:	49 00 2b af 	jal 9a7d4 <malloc>
   9507a:	80 e0       	mov55 $r7,$r0
   9507c:	c8 06       	bnez38 $r0,95088 <g2+0x30>
   9507e:	80 06       	mov55 $r0,$r6
   95080:	49 00 2b 31 	jal 9a6e2 <free>
   95084:	80 07       	mov55 $r0,$r7
   95086:	d5 23       	j8 950cc <g2+0x74>
   95088:	46 00 00 94 	sethi $r0,#0x94
   9508c:	58 00 0d d0 	ori $r0,$r0,#0xdd0
   95090:	b6 07       	swi450 $r0,[$r7]
   95092:	b4 1f       	lwi450 $r0,[$sp]
   95094:	f1 01       	lwi37.sp $r1,[+#0x4]
   95096:	ae 3c       	sbi333 $r0,[$r7+#0x4]
   95098:	fa 40       	movpi45 $r2,#0x10
   9509a:	80 06       	mov55 $r0,$r6
   9509c:	49 ff d7 d6 	jal 90048 <memcpy>
   950a0:	80 3c       	mov55 $r1,$fp
   950a2:	fa 50       	movpi45 $r2,#0x20
   950a4:	50 03 00 10 	addi $r0,$r6,#16
   950a8:	49 ff d7 d0 	jal 90048 <memcpy>
   950ac:	80 2a       	mov55 $r1,$r10
   950ae:	fa 50       	movpi45 $r2,#0x20
   950b0:	50 03 00 30 	addi $r0,$r6,#48
   950b4:	49 ff d7 ca 	jal 90048 <memcpy>
   950b8:	3c 9f f3 a5 	swi.gp $r9,[+#-12652]
   950bc:	80 26       	mov55 $r1,$r6
   950be:	80 08       	mov55 $r0,$r8
   950c0:	44 20 00 50 	movi $r2,#80
   950c4:	80 67       	mov55 $r3,$r7
   950c6:	49 ff ff 9c 	jal 94ffe <AES_CMAC>
   950ca:	84 01       	movi55 $r0,#1
   950cc:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000950ce <f6>:
   950ce:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   950d0:	96 00       	zeb33 $r0,$r0
   950d2:	b6 1f       	swi450 $r0,[$sp]
   950d4:	44 00 00 41 	movi $r0,#65
   950d8:	81 01       	mov55 $r8,$r1
   950da:	81 22       	mov55 $r9,$r2
   950dc:	81 43       	mov55 $r10,$r3
   950de:	83 84       	mov55 $fp,$r4
   950e0:	f5 81       	swi37.sp $r5,[+#0x4]
   950e2:	49 00 2b 79 	jal 9a7d4 <malloc>
   950e6:	80 c0       	mov55 $r6,$r0
   950e8:	c0 39       	beqz38 $r0,9515a <f6+0x8c>
   950ea:	84 08       	movi55 $r0,#8
   950ec:	49 00 2b 74 	jal 9a7d4 <malloc>
   950f0:	80 e0       	mov55 $r7,$r0
   950f2:	c8 06       	bnez38 $r0,950fe <f6+0x30>
   950f4:	80 06       	mov55 $r0,$r6
   950f6:	49 00 2a f6 	jal 9a6e2 <free>
   950fa:	80 07       	mov55 $r0,$r7
   950fc:	d5 2f       	j8 9515a <f6+0x8c>
   950fe:	f0 0c       	lwi37.sp $r0,[+#0x30]
   95100:	f1 0b       	lwi37.sp $r1,[+#0x2c]
   95102:	b6 07       	swi450 $r0,[$r7]
   95104:	b4 1f       	lwi450 $r0,[$sp]
   95106:	84 47       	movi55 $r2,#7
   95108:	ae 3c       	sbi333 $r0,[$r7+#0x4]
   9510a:	80 06       	mov55 $r0,$r6
   9510c:	49 ff d7 9e 	jal 90048 <memcpy>
   95110:	f1 0a       	lwi37.sp $r1,[+#0x28]
   95112:	84 47       	movi55 $r2,#7
   95114:	9c 37       	addi333 $r0,$r6,#7
   95116:	49 ff d7 99 	jal 90048 <memcpy>
   9511a:	f1 01       	lwi37.sp $r1,[+#0x4]
   9511c:	84 43       	movi55 $r2,#3
   9511e:	50 03 00 0e 	addi $r0,$r6,#14
   95122:	49 ff d7 93 	jal 90048 <memcpy>
   95126:	80 3c       	mov55 $r1,$fp
   95128:	fa 40       	movpi45 $r2,#0x10
   9512a:	50 03 00 11 	addi $r0,$r6,#17
   9512e:	49 ff d7 8d 	jal 90048 <memcpy>
   95132:	80 2a       	mov55 $r1,$r10
   95134:	fa 40       	movpi45 $r2,#0x10
   95136:	50 03 00 21 	addi $r0,$r6,#33
   9513a:	49 ff d7 87 	jal 90048 <memcpy>
   9513e:	80 29       	mov55 $r1,$r9
   95140:	fa 40       	movpi45 $r2,#0x10
   95142:	50 03 00 31 	addi $r0,$r6,#49
   95146:	49 ff d7 81 	jal 90048 <memcpy>
   9514a:	80 08       	mov55 $r0,$r8
   9514c:	80 26       	mov55 $r1,$r6
   9514e:	44 20 00 41 	movi $r2,#65
   95152:	80 67       	mov55 $r3,$r7
   95154:	49 ff ff 55 	jal 94ffe <AES_CMAC>
   95158:	84 01       	movi55 $r0,#1
   9515a:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

0009515c <f5>:
   9515c:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   9515e:	96 00       	zeb33 $r0,$r0
   95160:	b6 1f       	swi450 $r0,[$sp]
   95162:	44 00 00 35 	movi $r0,#53
   95166:	81 01       	mov55 $r8,$r1
   95168:	81 22       	mov55 $r9,$r2
   9516a:	81 43       	mov55 $r10,$r3
   9516c:	83 84       	mov55 $fp,$r4
   9516e:	f5 81       	swi37.sp $r5,[+#0x4]
   95170:	49 00 2b 32 	jal 9a7d4 <malloc>
   95174:	80 c0       	mov55 $r6,$r0
   95176:	c0 4b       	beqz38 $r0,9520c <f5+0xb0>
   95178:	84 08       	movi55 $r0,#8
   9517a:	49 00 2b 2d 	jal 9a7d4 <malloc>
   9517e:	80 e0       	mov55 $r7,$r0
   95180:	c8 06       	bnez38 $r0,9518c <f5+0x30>
   95182:	80 06       	mov55 $r0,$r6
   95184:	49 00 2a af 	jal 9a6e2 <free>
   95188:	80 07       	mov55 $r0,$r7
   9518a:	d5 41       	j8 9520c <f5+0xb0>
   9518c:	46 00 00 95 	sethi $r0,#0x95
   95190:	58 00 02 0e 	ori $r0,$r0,#0x20e
   95194:	b6 07       	swi450 $r0,[$r7]
   95196:	b4 1f       	lwi450 $r0,[$sp]
   95198:	3e 1f c1 94 	addi.gp $r1,#-15980
   9519c:	ae 3c       	sbi333 $r0,[$r7+#0x4]
   9519e:	84 42       	movi55 $r2,#2
   951a0:	80 06       	mov55 $r0,$r6
   951a2:	49 ff d7 53 	jal 90048 <memcpy>
   951a6:	f1 01       	lwi37.sp $r1,[+#0x4]
   951a8:	84 47       	movi55 $r2,#7
   951aa:	9c 32       	addi333 $r0,$r6,#2
   951ac:	49 ff d7 4e 	jal 90048 <memcpy>
   951b0:	80 3c       	mov55 $r1,$fp
   951b2:	84 47       	movi55 $r2,#7
   951b4:	50 03 00 09 	addi $r0,$r6,#9
   951b8:	49 ff d7 48 	jal 90048 <memcpy>
   951bc:	80 2a       	mov55 $r1,$r10
   951be:	fa 40       	movpi45 $r2,#0x10
   951c0:	50 03 00 10 	addi $r0,$r6,#16
   951c4:	49 ff d7 42 	jal 90048 <memcpy>
   951c8:	80 29       	mov55 $r1,$r9
   951ca:	fa 40       	movpi45 $r2,#0x10
   951cc:	50 03 00 20 	addi $r0,$r6,#32
   951d0:	49 ff d7 3c 	jal 90048 <memcpy>
   951d4:	3e 1f c1 98 	addi.gp $r1,#-15976
   951d8:	84 44       	movi55 $r2,#4
   951da:	50 03 00 30 	addi $r0,$r6,#48
   951de:	49 ff d7 35 	jal 90048 <memcpy>
   951e2:	f1 0a       	lwi37.sp $r1,[+#0x28]
   951e4:	84 00       	movi55 $r0,#0
   951e6:	10 03 00 34 	sbi $r0,[$r6+#0x34]
   951ea:	3e 0f ce 84 	addi.gp $r0,#-12668
   951ee:	a8 42       	swi333 $r1,[$r0+#0x8]
   951f0:	f1 0b       	lwi37.sp $r1,[+#0x2c]
   951f2:	b6 c0       	swi450 $r6,[$r0]
   951f4:	a8 43       	swi333 $r1,[$r0+#0xc]
   951f6:	84 21       	movi55 $r1,#1
   951f8:	3e 17 ce 7f 	sbi.gp $r1,[+#-12673]
   951fc:	fa 50       	movpi45 $r2,#0x20
   951fe:	3e 0f c1 9c 	addi.gp $r0,#-15972
   95202:	80 28       	mov55 $r1,$r8
   95204:	80 67       	mov55 $r3,$r7
   95206:	49 ff fe fc 	jal 94ffe <AES_CMAC>
   9520a:	84 01       	movi55 $r0,#1
   9520c:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

0009520e <f5_generate_t_cb>:
   9520e:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   95210:	81 00       	mov55 $r8,$r0
   95212:	fa 00       	movpi45 $r0,#0x10
   95214:	54 91 00 ff 	andi $r9,$r2,#0xff
   95218:	49 00 2a de 	jal 9a7d4 <malloc>
   9521c:	80 c0       	mov55 $r6,$r0
   9521e:	c0 25       	beqz38 $r0,95268 <f5_generate_t_cb+0x5a>
   95220:	84 08       	movi55 $r0,#8
   95222:	49 00 2a d9 	jal 9a7d4 <malloc>
   95226:	80 e0       	mov55 $r7,$r0
   95228:	c0 1d       	beqz38 $r0,95262 <f5_generate_t_cb+0x54>
   9522a:	46 00 00 95 	sethi $r0,#0x95
   9522e:	58 00 02 70 	ori $r0,$r0,#0x270
   95232:	b6 07       	swi450 $r0,[$r7]
   95234:	80 28       	mov55 $r1,$r8
   95236:	80 06       	mov55 $r0,$r6
   95238:	fa 40       	movpi45 $r2,#0x10
   9523a:	10 93 80 04 	sbi $r9,[$r7+#0x4]
   9523e:	49 ff d7 05 	jal 90048 <memcpy>
   95242:	84 41       	movi55 $r2,#1
   95244:	3c 6f f3 a2 	swi.gp $r6,[+#-12664]
   95248:	3e 27 ce 7f 	sbi.gp $r2,[+#-12673]
   9524c:	3e 27 ce 80 	sbi.gp $r2,[+#-12672]
   95250:	3c 1d f3 a1 	lwi.gp $r1,[+#-12668]
   95254:	80 06       	mov55 $r0,$r6
   95256:	44 20 00 35 	movi $r2,#53
   9525a:	80 67       	mov55 $r3,$r7
   9525c:	49 ff fe d1 	jal 94ffe <AES_CMAC>
   95260:	d5 07       	j8 9526e <f5_generate_t_cb+0x60>
   95262:	80 06       	mov55 $r0,$r6
   95264:	49 00 2a 3f 	jal 9a6e2 <free>
   95268:	84 03       	movi55 $r0,#3
   9526a:	49 ff fd 6b 	jal 94d40 <f5_finish>
   9526e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00095270 <f5_generate_mac_key_cb>:
   95270:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   95272:	81 40       	mov55 $r10,$r0
   95274:	84 08       	movi55 $r0,#8
   95276:	54 90 80 ff 	andi $r9,$r1,#0xff
   9527a:	54 81 00 ff 	andi $r8,$r2,#0xff
   9527e:	49 00 2a ab 	jal 9a7d4 <malloc>
   95282:	80 e0       	mov55 $r7,$r0
   95284:	c8 05       	bnez38 $r0,9528e <f5_generate_mac_key_cb+0x1e>
   95286:	84 03       	movi55 $r0,#3
   95288:	49 ff fd 5c 	jal 94d40 <f5_finish>
   9528c:	d5 1a       	j8 952c0 <f5_generate_mac_key_cb+0x50>
   9528e:	3e 6f ce 84 	addi.gp $r6,#-12668
   95292:	a0 f2       	lwi333 $r3,[$r6+#0x8]
   95294:	80 0a       	mov55 $r0,$r10
   95296:	80 29       	mov55 $r1,$r9
   95298:	80 48       	mov55 $r2,$r8
   9529a:	dd 23       	jral5 $r3
   9529c:	46 00 00 94 	sethi $r0,#0x94
   952a0:	58 00 0d 68 	ori $r0,$r0,#0xd68
   952a4:	b4 26       	lwi450 $r1,[$r6]
   952a6:	b6 07       	swi450 $r0,[$r7]
   952a8:	84 01       	movi55 $r0,#1
   952aa:	10 83 80 04 	sbi $r8,[$r7+#0x4]
   952ae:	10 00 80 34 	sbi $r0,[$r1+#0x34]
   952b2:	44 20 00 35 	movi $r2,#53
   952b6:	a0 31       	lwi333 $r0,[$r6+#0x4]
   952b8:	b4 26       	lwi450 $r1,[$r6]
   952ba:	80 67       	mov55 $r3,$r7
   952bc:	49 ff fe a1 	jal 94ffe <AES_CMAC>
   952c0:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000952c2 <f4>:
   952c2:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   952c4:	96 00       	zeb33 $r0,$r0
   952c6:	b6 1f       	swi450 $r0,[$sp]
   952c8:	44 00 00 41 	movi $r0,#65
   952cc:	81 21       	mov55 $r9,$r1
   952ce:	81 42       	mov55 $r10,$r2
   952d0:	81 03       	mov55 $r8,$r3
   952d2:	f5 81       	swi37.sp $r5,[+#0x4]
   952d4:	55 c2 00 ff 	andi $fp,$r4,#0xff
   952d8:	49 00 2a 7e 	jal 9a7d4 <malloc>
   952dc:	80 c0       	mov55 $r6,$r0
   952de:	c0 24       	beqz38 $r0,95326 <f4+0x64>
   952e0:	84 08       	movi55 $r0,#8
   952e2:	49 00 2a 79 	jal 9a7d4 <malloc>
   952e6:	80 e0       	mov55 $r7,$r0
   952e8:	c8 06       	bnez38 $r0,952f4 <f4+0x32>
   952ea:	80 06       	mov55 $r0,$r6
   952ec:	49 00 29 fb 	jal 9a6e2 <free>
   952f0:	80 07       	mov55 $r0,$r7
   952f2:	d5 1a       	j8 95326 <f4+0x64>
   952f4:	f0 01       	lwi37.sp $r0,[+#0x4]
   952f6:	80 2a       	mov55 $r1,$r10
   952f8:	b6 07       	swi450 $r0,[$r7]
   952fa:	b4 1f       	lwi450 $r0,[$sp]
   952fc:	fa 50       	movpi45 $r2,#0x20
   952fe:	ae 3c       	sbi333 $r0,[$r7+#0x4]
   95300:	80 06       	mov55 $r0,$r6
   95302:	19 c0 00 01 	sbi.bi $fp,[$r0],#0x1
   95306:	49 ff d6 a1 	jal 90048 <memcpy>
   9530a:	80 29       	mov55 $r1,$r9
   9530c:	fa 50       	movpi45 $r2,#0x20
   9530e:	50 03 00 21 	addi $r0,$r6,#33
   95312:	49 ff d6 9b 	jal 90048 <memcpy>
   95316:	80 08       	mov55 $r0,$r8
   95318:	80 26       	mov55 $r1,$r6
   9531a:	44 20 00 41 	movi $r2,#65
   9531e:	80 67       	mov55 $r3,$r7
   95320:	49 ff fe 6f 	jal 94ffe <AES_CMAC>
   95324:	84 01       	movi55 $r0,#1
   95326:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

00095328 <cmac_generate_SubKey_cb>:
   95328:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9532a:	3c 1d f3 9d 	lwi.gp $r1,[+#-12684]
   9532e:	80 e0       	mov55 $r7,$r0
   95330:	49 ff fc df 	jal 94cee <SM_CryptoTool_LeftShiftOneBit>
   95334:	20 03 80 0f 	lbsi $r0,[$r7+#0xf]
   95338:	4e 04 00 09 	bgez $r0,9534a <cmac_generate_SubKey_cb+0x22>
   9533c:	3c 0d f3 9d 	lwi.gp $r0,[+#-12684]
   95340:	44 2f ff 87 	movi $r2,#-121
   95344:	a6 40       	lbi333 $r1,[$r0+#0x0]
   95346:	fe 55       	xor33 $r1,$r2
   95348:	ae 40       	sbi333 $r1,[$r0+#0x0]
   9534a:	3c 0d f3 9d 	lwi.gp $r0,[+#-12684]
   9534e:	50 10 00 10 	addi $r1,$r0,#16
   95352:	49 ff fc ce 	jal 94cee <SM_CryptoTool_LeftShiftOneBit>
   95356:	3c 0d f3 9d 	lwi.gp $r0,[+#-12684]
   9535a:	20 10 00 0f 	lbsi $r1,[$r0+#0xf]
   9535e:	4e 14 00 09 	bgez $r1,95370 <cmac_generate_SubKey_cb+0x48>
   95362:	00 10 00 10 	lbi $r1,[$r0+#0x10]
   95366:	44 2f ff 87 	movi $r2,#-121
   9536a:	fe 55       	xor33 $r1,$r2
   9536c:	10 10 00 10 	sbi $r1,[$r0+#0x10]
   95370:	49 ff fe 2a 	jal 94fc4 <cmac_start>
   95374:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00095376 <cmac_1_cb>:
   95376:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   95378:	2e 37 ce 7d 	lbi.gp $r3,[+#-12675]
   9537c:	81 20       	mov55 $r9,$r0
   9537e:	54 80 80 ff 	andi $r8,$r1,#0xff
   95382:	c3 0c       	beqz38 $r3,9539a <cmac_1_cb+0x24>
   95384:	46 10 00 95 	sethi $r1,#0x95
   95388:	58 10 83 76 	ori $r1,$r1,#0x376
   9538c:	49 ff fd c3 	jal 94f12 <cmac_1>
   95390:	c8 10       	bnez38 $r0,953b0 <cmac_1_cb+0x3a>
   95392:	84 03       	movi55 $r0,#3
   95394:	49 ff fc f4 	jal 94d7c <cmac_finish>
   95398:	d5 0c       	j8 953b0 <cmac_1_cb+0x3a>
   9539a:	3c 2d f3 9e 	lwi.gp $r2,[+#-12680]
   9539e:	80 03       	mov55 $r0,$r3
   953a0:	a7 d4       	lbi333 $r7,[$r2+#0x4]
   953a2:	b4 c2       	lwi450 $r6,[$r2]
   953a4:	49 ff fc ec 	jal 94d7c <cmac_finish>
   953a8:	80 09       	mov55 $r0,$r9
   953aa:	80 28       	mov55 $r1,$r8
   953ac:	80 47       	mov55 $r2,$r7
   953ae:	dd 26       	jral5 $r6
   953b0:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000953b2 <s1>:
   953b2:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   953b4:	55 c0 00 ff 	andi $fp,$r0,#0xff
   953b8:	fa 00       	movpi45 $r0,#0x10
   953ba:	81 01       	mov55 $r8,$r1
   953bc:	81 22       	mov55 $r9,$r2
   953be:	81 43       	mov55 $r10,$r3
   953c0:	f4 81       	swi37.sp $r4,[+#0x4]
   953c2:	49 00 2a 09 	jal 9a7d4 <malloc>
   953c6:	80 c0       	mov55 $r6,$r0
   953c8:	c8 03       	bnez38 $r0,953ce <s1+0x1c>
   953ca:	80 e0       	mov55 $r7,$r0
   953cc:	d5 1e       	j8 95408 <s1+0x56>
   953ce:	84 08       	movi55 $r0,#8
   953d0:	49 00 2a 02 	jal 9a7d4 <malloc>
   953d4:	80 e0       	mov55 $r7,$r0
   953d6:	c0 16       	beqz38 $r0,95402 <s1+0x50>
   953d8:	f0 01       	lwi37.sp $r0,[+#0x4]
   953da:	11 c3 80 04 	sbi $fp,[$r7+#0x4]
   953de:	b6 07       	swi450 $r0,[$r7]
   953e0:	80 2a       	mov55 $r1,$r10
   953e2:	84 48       	movi55 $r2,#8
   953e4:	80 06       	mov55 $r0,$r6
   953e6:	49 ff d6 31 	jal 90048 <memcpy>
   953ea:	80 29       	mov55 $r1,$r9
   953ec:	84 48       	movi55 $r2,#8
   953ee:	50 03 00 08 	addi $r0,$r6,#8
   953f2:	49 ff d6 2b 	jal 90048 <memcpy>
   953f6:	80 47       	mov55 $r2,$r7
   953f8:	80 08       	mov55 $r0,$r8
   953fa:	80 26       	mov55 $r1,$r6
   953fc:	49 ff fd 3f 	jal 94e7a <SM_CryptoTool_AES_Cipher>
   95400:	80 e0       	mov55 $r7,$r0
   95402:	80 06       	mov55 $r0,$r6
   95404:	49 00 29 6f 	jal 9a6e2 <free>
   95408:	80 07       	mov55 $r0,$r7
   9540a:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

0009540c <c1_2>:
   9540c:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   9540e:	55 c0 00 ff 	andi $fp,$r0,#0xff
   95412:	fa 00       	movpi45 $r0,#0x10
   95414:	81 01       	mov55 $r8,$r1
   95416:	81 22       	mov55 $r9,$r2
   95418:	81 43       	mov55 $r10,$r3
   9541a:	f4 81       	swi37.sp $r4,[+#0x4]
   9541c:	49 00 29 dc 	jal 9a7d4 <malloc>
   95420:	80 c0       	mov55 $r6,$r0
   95422:	c8 03       	bnez38 $r0,95428 <c1_2+0x1c>
   95424:	80 e0       	mov55 $r7,$r0
   95426:	d5 1c       	j8 9545e <c1_2+0x52>
   95428:	84 08       	movi55 $r0,#8
   9542a:	49 00 29 d5 	jal 9a7d4 <malloc>
   9542e:	80 e0       	mov55 $r7,$r0
   95430:	c0 14       	beqz38 $r0,95458 <c1_2+0x4c>
   95432:	f0 01       	lwi37.sp $r0,[+#0x4]
   95434:	11 c3 80 04 	sbi $fp,[$r7+#0x4]
   95438:	b6 07       	swi450 $r0,[$r7]
   9543a:	fa 40       	movpi45 $r2,#0x10
   9543c:	80 2a       	mov55 $r1,$r10
   9543e:	80 06       	mov55 $r0,$r6
   95440:	49 ff d6 04 	jal 90048 <memcpy>
   95444:	80 09       	mov55 $r0,$r9
   95446:	80 26       	mov55 $r1,$r6
   95448:	49 ff fc 46 	jal 94cd4 <SM_CryptoTool_16Byte_XOR>
   9544c:	80 47       	mov55 $r2,$r7
   9544e:	80 08       	mov55 $r0,$r8
   95450:	80 26       	mov55 $r1,$r6
   95452:	49 ff fd 14 	jal 94e7a <SM_CryptoTool_AES_Cipher>
   95456:	80 e0       	mov55 $r7,$r0
   95458:	80 06       	mov55 $r0,$r6
   9545a:	49 00 29 44 	jal 9a6e2 <free>
   9545e:	80 07       	mov55 $r0,$r7
   95460:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

00095462 <c1_1>:
   95462:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   95464:	55 c0 00 ff 	andi $fp,$r0,#0xff
   95468:	fa 00       	movpi45 $r0,#0x10
   9546a:	81 01       	mov55 $r8,$r1
   9546c:	81 22       	mov55 $r9,$r2
   9546e:	81 43       	mov55 $r10,$r3
   95470:	f4 81       	swi37.sp $r4,[+#0x4]
   95472:	49 00 29 b1 	jal 9a7d4 <malloc>
   95476:	80 c0       	mov55 $r6,$r0
   95478:	c8 03       	bnez38 $r0,9547e <c1_1+0x1c>
   9547a:	80 e0       	mov55 $r7,$r0
   9547c:	d5 1c       	j8 954b4 <c1_1+0x52>
   9547e:	84 08       	movi55 $r0,#8
   95480:	49 00 29 aa 	jal 9a7d4 <malloc>
   95484:	80 e0       	mov55 $r7,$r0
   95486:	c0 14       	beqz38 $r0,954ae <c1_1+0x4c>
   95488:	f0 01       	lwi37.sp $r0,[+#0x4]
   9548a:	11 c3 80 04 	sbi $fp,[$r7+#0x4]
   9548e:	b6 07       	swi450 $r0,[$r7]
   95490:	fa 40       	movpi45 $r2,#0x10
   95492:	80 2a       	mov55 $r1,$r10
   95494:	80 06       	mov55 $r0,$r6
   95496:	49 ff d5 d9 	jal 90048 <memcpy>
   9549a:	80 09       	mov55 $r0,$r9
   9549c:	80 26       	mov55 $r1,$r6
   9549e:	49 ff fc 1b 	jal 94cd4 <SM_CryptoTool_16Byte_XOR>
   954a2:	80 47       	mov55 $r2,$r7
   954a4:	80 08       	mov55 $r0,$r8
   954a6:	80 26       	mov55 $r1,$r6
   954a8:	49 ff fc e9 	jal 94e7a <SM_CryptoTool_AES_Cipher>
   954ac:	80 e0       	mov55 $r7,$r0
   954ae:	80 06       	mov55 $r0,$r6
   954b0:	49 00 29 19 	jal 9a6e2 <free>
   954b4:	80 07       	mov55 $r0,$r7
   954b6:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000954b8 <ah>:
   954b8:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   954ba:	55 c0 00 ff 	andi $fp,$r0,#0xff
   954be:	fa 00       	movpi45 $r0,#0x10
   954c0:	81 01       	mov55 $r8,$r1
   954c2:	81 42       	mov55 $r10,$r2
   954c4:	81 23       	mov55 $r9,$r3
   954c6:	49 00 29 87 	jal 9a7d4 <malloc>
   954ca:	80 c0       	mov55 $r6,$r0
   954cc:	c8 03       	bnez38 $r0,954d2 <ah+0x1a>
   954ce:	80 e0       	mov55 $r7,$r0
   954d0:	d5 22       	j8 95514 <ah+0x5c>
   954d2:	84 08       	movi55 $r0,#8
   954d4:	49 00 29 80 	jal 9a7d4 <malloc>
   954d8:	80 e0       	mov55 $r7,$r0
   954da:	c0 1a       	beqz38 $r0,9550e <ah+0x56>
   954dc:	46 00 00 94 	sethi $r0,#0x94
   954e0:	58 00 0e 0a 	ori $r0,$r0,#0xe0a
   954e4:	b6 07       	swi450 $r0,[$r7]
   954e6:	11 c3 80 04 	sbi $fp,[$r7+#0x4]
   954ea:	84 20       	movi55 $r1,#0
   954ec:	fa 40       	movpi45 $r2,#0x10
   954ee:	80 06       	mov55 $r0,$r6
   954f0:	49 ff d5 cc 	jal 90088 <memset>
   954f4:	80 2a       	mov55 $r1,$r10
   954f6:	84 43       	movi55 $r2,#3
   954f8:	80 06       	mov55 $r0,$r6
   954fa:	49 ff d5 a7 	jal 90048 <memcpy>
   954fe:	3c 9f f3 a6 	swi.gp $r9,[+#-12648]
   95502:	80 47       	mov55 $r2,$r7
   95504:	80 08       	mov55 $r0,$r8
   95506:	80 26       	mov55 $r1,$r6
   95508:	49 ff fc b9 	jal 94e7a <SM_CryptoTool_AES_Cipher>
   9550c:	80 e0       	mov55 $r7,$r0
   9550e:	80 06       	mov55 $r0,$r6
   95510:	49 00 28 e9 	jal 9a6e2 <free>
   95514:	80 07       	mov55 $r0,$r7
   95516:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00095518 <SM_CryptoTool_GenerateDHKey>:
   95518:	fc 48       	push25 $r10,#0x40    ! {$r6~$r10, $fp, $gp, $lp}
   9551a:	54 80 00 ff 	andi $r8,$r0,#0xff
   9551e:	3c 0d f3 99 	lwi.gp $r0,[+#-12700]
   95522:	80 e1       	mov55 $r7,$r1
   95524:	81 22       	mov55 $r9,$r2
   95526:	c8 05       	bnez38 $r0,95530 <SM_CryptoTool_GenerateDHKey+0x18>
   95528:	49 00 2b 0a 	jal 9ab3c <AB_queue_alloc>
   9552c:	3c 0f f3 99 	swi.gp $r0,[+#-12700]
   95530:	84 08       	movi55 $r0,#8
   95532:	49 00 2a f9 	jal 9ab24 <AB_queue_entry_alloc>
   95536:	80 60       	mov55 $r3,$r0
   95538:	c0 1c       	beqz38 $r0,95570 <SM_CryptoTool_GenerateDHKey+0x58>
   9553a:	b7 20       	swi450 $r9,[$r0]
   9553c:	10 80 00 04 	sbi $r8,[$r0+#0x4]
   95540:	3c 0d f3 99 	lwi.gp $r0,[+#-12700]
   95544:	80 23       	mov55 $r1,$r3
   95546:	49 00 2a 88 	jal 9aa56 <AB_queue_push>
   9554a:	80 27       	mov55 $r1,$r7
   9554c:	44 20 00 40 	movi $r2,#64
   95550:	80 1f       	mov55 $r0,$sp
   95552:	49 ff d5 7b 	jal 90048 <memcpy>
   95556:	44 00 20 26 	movi $r0,#8230
   9555a:	80 3f       	mov55 $r1,$sp
   9555c:	44 20 00 40 	movi $r2,#64
   95560:	46 30 00 95 	sethi $r3,#0x95
   95564:	58 31 85 d8 	ori $r3,$r3,#0x5d8
   95568:	49 00 18 2a 	jal 985bc <hci_send_cmd>
   9556c:	80 df       	mov55 $r6,$sp
   9556e:	84 01       	movi55 $r0,#1
   95570:	fc c8       	pop25 $r10,#0x40    ! {$r6~$r10, $fp, $gp, $lp}

00095572 <SM_CryptoTool_ReadLocalP256PublicKey>:
   95572:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   95574:	54 80 00 ff 	andi $r8,$r0,#0xff
   95578:	3c 6d f1 a0 	lwi.gp $r6,[+#-14720]
   9557c:	80 e1       	mov55 $r7,$r1
   9557e:	ce 27       	bnez38 $r6,955cc <SM_CryptoTool_ReadLocalP256PublicKey+0x5a>
   95580:	3c 9d f3 9a 	lwi.gp $r9,[+#-12696]
   95584:	4e 92 00 07 	beqz $r9,95592 <SM_CryptoTool_ReadLocalP256PublicKey+0x20>
   95588:	46 00 00 9f 	sethi $r0,#0x9f
   9558c:	58 00 0a ac 	ori $r0,$r0,#0xaac
   95590:	d5 0c       	j8 955a8 <SM_CryptoTool_ReadLocalP256PublicKey+0x36>
   95592:	84 08       	movi55 $r0,#8
   95594:	49 00 29 20 	jal 9a7d4 <malloc>
   95598:	80 c0       	mov55 $r6,$r0
   9559a:	3c 0f f3 9a 	swi.gp $r0,[+#-12696]
   9559e:	c8 09       	bnez38 $r0,955b0 <SM_CryptoTool_ReadLocalP256PublicKey+0x3e>
   955a0:	46 00 00 9f 	sethi $r0,#0x9f
   955a4:	58 00 0a d0 	ori $r0,$r0,#0xad0
   955a8:	49 00 41 db 	jal 9d95e <puts>
   955ac:	80 06       	mov55 $r0,$r6
   955ae:	d5 14       	j8 955d6 <SM_CryptoTool_ReadLocalP256PublicKey+0x64>
   955b0:	b6 e0       	swi450 $r7,[$r0]
   955b2:	10 80 00 04 	sbi $r8,[$r0+#0x4]
   955b6:	80 29       	mov55 $r1,$r9
   955b8:	80 49       	mov55 $r2,$r9
   955ba:	46 30 00 95 	sethi $r3,#0x95
   955be:	58 31 85 d8 	ori $r3,$r3,#0x5d8
   955c2:	44 00 20 25 	movi $r0,#8229
   955c6:	49 00 17 fb 	jal 985bc <hci_send_cmd>
   955ca:	d5 05       	j8 955d4 <SM_CryptoTool_ReadLocalP256PublicKey+0x62>
   955cc:	80 06       	mov55 $r0,$r6
   955ce:	84 20       	movi55 $r1,#0
   955d0:	80 48       	mov55 $r2,$r8
   955d2:	dd 27       	jral5 $r7
   955d4:	84 01       	movi55 $r0,#1
   955d6:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000955d8 <SM_CryptoTool_CommandStatus>:
   955d8:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   955da:	80 e1       	mov55 $r7,$r1
   955dc:	a6 48       	lbi333 $r1,[$r1+#0x0]
   955de:	c1 20       	beqz38 $r1,9561e <SM_CryptoTool_CommandStatus+0x46>
   955e0:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   955e2:	5a 08 08 10 	bnec $r0,#8,95602 <SM_CryptoTool_CommandStatus+0x2a>
   955e6:	3e 6f ce 68 	addi.gp $r6,#-12696
   955ea:	b4 46       	lwi450 $r2,[$r6]
   955ec:	c2 19       	beqz38 $r2,9561e <SM_CryptoTool_CommandStatus+0x46>
   955ee:	b4 62       	lwi450 $r3,[$r2]
   955f0:	a6 94       	lbi333 $r2,[$r2+#0x4]
   955f2:	84 00       	movi55 $r0,#0
   955f4:	dd 23       	jral5 $r3
   955f6:	b4 06       	lwi450 $r0,[$r6]
   955f8:	49 00 28 75 	jal 9a6e2 <free>
   955fc:	84 00       	movi55 $r0,#0
   955fe:	b6 06       	swi450 $r0,[$r6]
   95600:	d5 0f       	j8 9561e <SM_CryptoTool_CommandStatus+0x46>
   95602:	3c 0d f3 99 	lwi.gp $r0,[+#-12700]
   95606:	49 00 2a 5c 	jal 9aabe <AB_queue_pop>
   9560a:	80 c0       	mov55 $r6,$r0
   9560c:	c0 09       	beqz38 $r0,9561e <SM_CryptoTool_CommandStatus+0x46>
   9560e:	b4 60       	lwi450 $r3,[$r0]
   95610:	a6 78       	lbi333 $r1,[$r7+#0x0]
   95612:	a6 b4       	lbi333 $r2,[$r6+#0x4]
   95614:	84 00       	movi55 $r0,#0
   95616:	dd 23       	jral5 $r3
   95618:	80 06       	mov55 $r0,$r6
   9561a:	49 00 2a 6b 	jal 9aaf0 <AB_queue_entry_free>
   9561e:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00095620 <SM_CryptoTool_GenerateDHKeyComplete>:
   95620:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   95622:	80 e0       	mov55 $r7,$r0
   95624:	3c 0d f3 99 	lwi.gp $r0,[+#-12700]
   95628:	49 00 2a 4b 	jal 9aabe <AB_queue_pop>
   9562c:	80 c0       	mov55 $r6,$r0
   9562e:	c0 09       	beqz38 $r0,95640 <SM_CryptoTool_GenerateDHKeyComplete+0x20>
   95630:	b4 60       	lwi450 $r3,[$r0]
   95632:	a6 78       	lbi333 $r1,[$r7+#0x0]
   95634:	a6 b4       	lbi333 $r2,[$r6+#0x4]
   95636:	9c 39       	addi333 $r0,$r7,#1
   95638:	dd 23       	jral5 $r3
   9563a:	80 06       	mov55 $r0,$r6
   9563c:	49 00 2a 5a 	jal 9aaf0 <AB_queue_entry_free>
   95640:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00095642 <SM_CryptoTool_SendLTKNegativeReply>:
   95642:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   95644:	84 42       	movi55 $r2,#2
   95646:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   9564a:	b0 41       	addri36.sp $r1,#0x4
   9564c:	44 00 20 1b 	movi $r0,#8219
   95650:	49 00 03 a0 	jal 95d90 <sm_hal_cryptoTool_hci_send_cmd>
   95654:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

00095656 <SM_CryptoTool_SendLTKReply>:
   95656:	fc 03       	push25 $r6,#0x18    ! {$r6, $fp, $gp, $lp}
   95658:	b1 81       	addri36.sp $r6,#0x4
   9565a:	ac 30       	shi333 $r0,[$r6+#0x0]
   9565c:	fa 40       	movpi45 $r2,#0x10
   9565e:	50 0f 80 06 	addi $r0,$sp,#6
   95662:	49 ff d4 f3 	jal 90048 <memcpy>
   95666:	44 00 20 1a 	movi $r0,#8218
   9566a:	80 26       	mov55 $r1,$r6
   9566c:	fa 42       	movpi45 $r2,#0x12
   9566e:	49 00 03 91 	jal 95d90 <sm_hal_cryptoTool_hci_send_cmd>
   95672:	fc 83       	pop25 $r6,#0x18    ! {$r6, $fp, $gp, $lp}

00095674 <sm_hal_flash_get_paired_device_count>:
   95674:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95676:	84 20       	movi55 $r1,#0
   95678:	80 01       	mov55 $r0,$r1
   9567a:	fa 41       	movpi45 $r2,#0x11
   9567c:	42 30 88 24 	mul $r3,$r1,$r2
   95680:	9c d9       	addi333 $r3,$r3,#1
   95682:	94 db       	slli333 $r3,$r3,#3
   95684:	46 40 00 83 	sethi $r4,#0x83
   95688:	58 42 00 00 	ori $r4,$r4,#0x0
   9568c:	98 dc       	add333 $r3,$r3,$r4
   9568e:	a6 de       	lbi333 $r3,[$r3+#0x6]
   95690:	5a 30 ff 07 	beqc $r3,#255,9569e <sm_hal_flash_get_paired_device_count+0x2a>
   95694:	9c 01       	addi333 $r0,$r0,#1
   95696:	96 00       	zeb33 $r0,$r0
   95698:	9c 49       	addi333 $r1,$r1,#1
   9569a:	5a 08 1e f1 	bnec $r0,#30,9567c <sm_hal_flash_get_paired_device_count+0x8>
   9569e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000956a0 <sm_hal_flash_isDevice_bonded>:
   956a0:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   956a2:	80 e1       	mov55 $r7,$r1
   956a4:	c8 12       	bnez38 $r0,956c8 <sm_hal_flash_isDevice_bonded+0x28>
   956a6:	fa 21       	movpi45 $r1,#0x11
   956a8:	42 20 04 24 	mul $r2,$r0,$r1
   956ac:	9c 91       	addi333 $r2,$r2,#1
   956ae:	94 93       	slli333 $r2,$r2,#3
   956b0:	46 30 00 83 	sethi $r3,#0x83
   956b4:	58 31 80 00 	ori $r3,$r3,#0x0
   956b8:	98 93       	add333 $r2,$r2,$r3
   956ba:	a6 96       	lbi333 $r2,[$r2+#0x6]
   956bc:	5a 20 0f 28 	beqc $r2,#15,9570c <sm_hal_flash_isDevice_bonded+0x6c>
   956c0:	9c 01       	addi333 $r0,$r0,#1
   956c2:	5a 08 1e f3 	bnec $r0,#30,956a8 <sm_hal_flash_isDevice_bonded+0x8>
   956c6:	d5 25       	j8 95710 <sm_hal_flash_isDevice_bonded+0x70>
   956c8:	50 a0 00 01 	addi $r10,$r0,#1
   956cc:	84 c0       	movi55 $r6,#0
   956ce:	fb 21       	movpi45 $r9,#0x11
   956d0:	42 13 24 24 	mul $r1,$r6,$r9
   956d4:	9c 49       	addi333 $r1,$r1,#1
   956d6:	46 00 00 83 	sethi $r0,#0x83
   956da:	58 00 00 00 	ori $r0,$r0,#0x0
   956de:	94 4b       	slli333 $r1,$r1,#3
   956e0:	98 48       	add333 $r1,$r1,$r0
   956e2:	a6 0e       	lbi333 $r0,[$r1+#0x6]
   956e4:	54 83 00 ff 	andi $r8,$r6,#0xff
   956e8:	5a 08 0f 0b 	bnec $r0,#15,956fe <sm_hal_flash_isDevice_bonded+0x5e>
   956ec:	80 0a       	mov55 $r0,$r10
   956ee:	84 46       	movi55 $r2,#6
   956f0:	49 ff d4 a0 	jal 90030 <memcmp>
   956f4:	c8 05       	bnez38 $r0,956fe <sm_hal_flash_isDevice_bonded+0x5e>
   956f6:	c7 0b       	beqz38 $r7,9570c <sm_hal_flash_isDevice_bonded+0x6c>
   956f8:	10 83 80 00 	sbi $r8,[$r7+#0x0]
   956fc:	d5 08       	j8 9570c <sm_hal_flash_isDevice_bonded+0x6c>
   956fe:	9d b1       	addi333 $r6,$r6,#1
   95700:	5a 68 1e e8 	bnec $r6,#30,956d0 <sm_hal_flash_isDevice_bonded+0x30>
   95704:	c7 06       	beqz38 $r7,95710 <sm_hal_flash_isDevice_bonded+0x70>
   95706:	84 1f       	movi55 $r0,#-1
   95708:	ae 38       	sbi333 $r0,[$r7+#0x0]
   9570a:	d5 03       	j8 95710 <sm_hal_flash_isDevice_bonded+0x70>
   9570c:	84 01       	movi55 $r0,#1
   9570e:	d5 02       	j8 95712 <sm_hal_flash_isDevice_bonded+0x72>
   95710:	84 00       	movi55 $r0,#0
   95712:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00095714 <sm_hal_flash_delete_paired_record>:
   95714:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   95716:	84 c0       	movi55 $r6,#0
   95718:	10 6f 80 06 	sbi $r6,[$sp+#0x6]
   9571c:	c8 30       	bnez38 $r0,9577c <sm_hal_flash_delete_paired_record+0x68>
   9571e:	10 0f 80 07 	sbi $r0,[$sp+#0x7]
   95722:	fa e1       	movpi45 $r7,#0x11
   95724:	50 6f 80 06 	addi $r6,$sp,#6
   95728:	d5 26       	j8 95774 <sm_hal_flash_delete_paired_record+0x60>
   9572a:	42 10 1c 24 	mul $r1,$r0,$r7
   9572e:	9c 49       	addi333 $r1,$r1,#1
   95730:	46 20 00 83 	sethi $r2,#0x83
   95734:	58 21 00 00 	ori $r2,$r2,#0x0
   95738:	94 4b       	slli333 $r1,$r1,#3
   9573a:	98 4a       	add333 $r1,$r1,$r2
   9573c:	a6 8e       	lbi333 $r2,[$r1+#0x6]
   9573e:	5a 20 cf 05 	beqc $r2,#207,95748 <sm_hal_flash_delete_paired_record+0x34>
   95742:	a6 8e       	lbi333 $r2,[$r1+#0x6]
   95744:	5a 28 0f 12 	bnec $r2,#15,95768 <sm_hal_flash_delete_paired_record+0x54>
   95748:	fe 3c       	mul33 $r0,$r7
   9574a:	9c 01       	addi333 $r0,$r0,#1
   9574c:	46 10 00 83 	sethi $r1,#0x83
   95750:	58 10 80 00 	ori $r1,$r1,#0x0
   95754:	94 03       	slli333 $r0,$r0,#3
   95756:	98 01       	add333 $r0,$r0,$r1
   95758:	84 41       	movi55 $r2,#1
   9575a:	80 26       	mov55 $r1,$r6
   9575c:	9c 06       	addi333 $r0,$r0,#6
   9575e:	49 00 27 88 	jal 9a66e <AB_Flash_ByteProgram>
   95762:	49 ff 58 6c 	jal 8083a <DRV_MCU_ClearCache>
   95766:	d5 04       	j8 9576e <sm_hal_flash_delete_paired_record+0x5a>
   95768:	a6 0e       	lbi333 $r0,[$r1+#0x6]
   9576a:	5a 00 ff 22 	beqc $r0,#255,957ae <sm_hal_flash_delete_paired_record+0x9a>
   9576e:	a6 31       	lbi333 $r0,[$r6+#0x1]
   95770:	9c 01       	addi333 $r0,$r0,#1
   95772:	ae 31       	sbi333 $r0,[$r6+#0x1]
   95774:	a6 31       	lbi333 $r0,[$r6+#0x1]
   95776:	e6 1e       	slti45 $r0,#30
   95778:	e9 d9       	bnezs8 9572a <sm_hal_flash_delete_paired_record+0x16>
   9577a:	d5 1a       	j8 957ae <sm_hal_flash_delete_paired_record+0x9a>
   9577c:	50 1f 80 07 	addi $r1,$sp,#7
   95780:	49 ff ff 90 	jal 956a0 <sm_hal_flash_isDevice_bonded>
   95784:	c0 15       	beqz38 $r0,957ae <sm_hal_flash_delete_paired_record+0x9a>
   95786:	00 1f 80 07 	lbi $r1,[$sp+#0x7]
   9578a:	fa 01       	movpi45 $r0,#0x11
   9578c:	fe 0c       	mul33 $r0,$r1
   9578e:	9c 01       	addi333 $r0,$r0,#1
   95790:	46 20 00 83 	sethi $r2,#0x83
   95794:	58 21 00 00 	ori $r2,$r2,#0x0
   95798:	94 03       	slli333 $r0,$r0,#3
   9579a:	98 02       	add333 $r0,$r0,$r2
   9579c:	50 1f 80 05 	addi $r1,$sp,#5
   957a0:	84 41       	movi55 $r2,#1
   957a2:	9c 06       	addi333 $r0,$r0,#6
   957a4:	af 88       	sbi333 $r6,[$r1+#0x0]
   957a6:	49 00 27 64 	jal 9a66e <AB_Flash_ByteProgram>
   957aa:	49 ff 58 48 	jal 8083a <DRV_MCU_ClearCache>
   957ae:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000957b0 <sm_hal_flash_load_data>:
   957b0:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   957b2:	84 c0       	movi55 $r6,#0
   957b4:	81 40       	mov55 $r10,$r0
   957b6:	80 e1       	mov55 $r7,$r1
   957b8:	fb 21       	movpi45 $r9,#0x11
   957ba:	42 13 24 24 	mul $r1,$r6,$r9
   957be:	9c 49       	addi333 $r1,$r1,#1
   957c0:	46 00 00 83 	sethi $r0,#0x83
   957c4:	58 00 00 00 	ori $r0,$r0,#0x0
   957c8:	94 4b       	slli333 $r1,$r1,#3
   957ca:	98 48       	add333 $r1,$r1,$r0
   957cc:	a6 0e       	lbi333 $r0,[$r1+#0x6]
   957ce:	54 83 00 ff 	andi $r8,$r6,#0xff
   957d2:	5a 08 0f 15 	bnec $r0,#15,957fc <sm_hal_flash_load_data+0x4c>
   957d6:	80 0a       	mov55 $r0,$r10
   957d8:	84 46       	movi55 $r2,#6
   957da:	49 ff d4 2b 	jal 90030 <memcmp>
   957de:	c8 0f       	bnez38 $r0,957fc <sm_hal_flash_load_data+0x4c>
   957e0:	40 24 8c 08 	slli $r2,$r9,#3
   957e4:	42 34 08 24 	mul $r3,$r8,$r2
   957e8:	46 40 00 83 	sethi $r4,#0x83
   957ec:	58 42 00 00 	ori $r4,$r4,#0x0
   957f0:	80 07       	mov55 $r0,$r7
   957f2:	98 5c       	add333 $r1,$r3,$r4
   957f4:	49 ff d4 2a 	jal 90048 <memcpy>
   957f8:	84 01       	movi55 $r0,#1
   957fa:	d5 05       	j8 95804 <sm_hal_flash_load_data+0x54>
   957fc:	9d b1       	addi333 $r6,$r6,#1
   957fe:	5a 68 1e de 	bnec $r6,#30,957ba <sm_hal_flash_load_data+0xa>
   95802:	84 00       	movi55 $r0,#0
   95804:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00095806 <sm_hal_protocol_cmd_factory>:
   95806:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95808:	97 80       	zeb33 $r6,$r0
   9580a:	96 08       	zeb33 $r0,$r1
   9580c:	49 00 27 e4 	jal 9a7d4 <malloc>
   95810:	c0 02       	beqz38 $r0,95814 <sm_hal_protocol_cmd_factory+0xe>
   95812:	af 80       	sbi333 $r6,[$r0+#0x0]
   95814:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095816 <sm_hal_flash_check_master_info>:
   95816:	fc 43       	push25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}
   95818:	54 90 00 ff 	andi $r9,$r0,#0xff
   9581c:	3c 0d f3 a7 	lwi.gp $r0,[+#-12644]
   95820:	00 00 00 1a 	lbi $r0,[$r0+#0x1a]
   95824:	49 ff e9 c0 	jal 92ba4 <ble_gap_link_GetAttr_BdAddr>
   95828:	81 40       	mov55 $r10,$r0
   9582a:	3c 0d f3 a7 	lwi.gp $r0,[+#-12644]
   9582e:	44 60 00 88 	movi $r6,#136
   95832:	00 00 00 1a 	lbi $r0,[$r0+#0x1a]
   95836:	49 ff e9 c1 	jal 92bb8 <ble_gap_link_GetAttr_BdAddrType>
   9583a:	f0 82       	swi37.sp $r0,[+#0x8]
   9583c:	50 05 00 03 	addi $r0,$r10,#3
   95840:	f0 84       	swi37.sp $r0,[+#0x10]
   95842:	46 00 00 9f 	sethi $r0,#0x9f
   95846:	58 00 0c 98 	ori $r0,$r0,#0xc98
   9584a:	f5 04       	lwi37.sp $r5,[+#0x10]
   9584c:	00 15 00 00 	lbi $r1,[$r10+#0x0]
   95850:	00 25 00 01 	lbi $r2,[$r10+#0x1]
   95854:	00 35 00 02 	lbi $r3,[$r10+#0x2]
   95858:	a7 28       	lbi333 $r4,[$r5+#0x0]
   9585a:	49 00 28 3e 	jal 9a8d6 <printf>
   9585e:	50 05 00 05 	addi $r0,$r10,#5
   95862:	f0 83       	swi37.sp $r0,[+#0xc]
   95864:	46 00 00 9f 	sethi $r0,#0x9f
   95868:	58 00 0c b0 	ori $r0,$r0,#0xcb0
   9586c:	f3 03       	lwi37.sp $r3,[+#0xc]
   9586e:	00 15 00 04 	lbi $r1,[$r10+#0x4]
   95872:	a6 98       	lbi333 $r2,[$r3+#0x0]
   95874:	49 00 28 31 	jal 9a8d6 <printf>
   95878:	48 00 00 81 	j 9597a <sm_hal_flash_check_master_info+0x164>
   9587c:	fa 81       	movpi45 $r4,#0x11
   9587e:	42 04 90 24 	mul $r0,$r9,$r4
   95882:	9c 01       	addi333 $r0,$r0,#1
   95884:	94 03       	slli333 $r0,$r0,#3
   95886:	46 50 00 83 	sethi $r5,#0x83
   9588a:	58 52 80 00 	ori $r5,$r5,#0x0
   9588e:	99 45       	add333 $r5,$r0,$r5
   95890:	a6 2e       	lbi333 $r0,[$r5+#0x6]
   95892:	f5 81       	swi37.sp $r5,[+#0x4]
   95894:	85 ef       	movi55 $r15,#15
   95896:	4c 07 c0 6f 	bne $r0,$r15,95974 <sm_hal_flash_check_master_info+0x15e>
   9589a:	42 04 98 24 	mul $r0,$r9,$r6
   9589e:	3f cf ce 9c 	addi.gp $fp,#-12644
   958a2:	50 10 00 70 	addi $r1,$r0,#112
   958a6:	46 20 00 83 	sethi $r2,#0x83
   958aa:	58 21 00 00 	ori $r2,$r2,#0x0
   958ae:	b5 1c       	lwi450 $r8,[$fp]
   958b0:	99 ca       	add333 $r7,$r1,$r2
   958b2:	f0 85       	swi37.sp $r0,[+#0x14]
   958b4:	9c 7c       	addi333 $r1,$r7,#4
   958b6:	50 04 00 18 	addi $r0,$r8,#24
   958ba:	84 42       	movi55 $r2,#2
   958bc:	49 ff d3 ba 	jal 90030 <memcmp>
   958c0:	c8 5a       	bnez38 $r0,95974 <sm_hal_flash_check_master_info+0x15e>
   958c2:	50 04 00 10 	addi $r0,$r8,#16
   958c6:	9c 7e       	addi333 $r1,$r7,#6
   958c8:	84 48       	movi55 $r2,#8
   958ca:	49 ff d3 b3 	jal 90030 <memcmp>
   958ce:	c8 53       	bnez38 $r0,95974 <sm_hal_flash_check_master_info+0x15e>
   958d0:	80 29       	mov55 $r1,$r9
   958d2:	46 00 00 9f 	sethi $r0,#0x9f
   958d6:	58 00 0c c0 	ori $r0,$r0,#0xcc0
   958da:	49 00 27 fe 	jal 9a8d6 <printf>
   958de:	f1 01       	lwi37.sp $r1,[+#0x4]
   958e0:	80 0a       	mov55 $r0,$r10
   958e2:	84 46       	movi55 $r2,#6
   958e4:	49 ff d3 a6 	jal 90030 <memcmp>
   958e8:	80 c0       	mov55 $r6,$r0
   958ea:	c8 16       	bnez38 $r0,95916 <sm_hal_flash_check_master_info+0x100>
   958ec:	f4 01       	lwi37.sp $r4,[+#0x4]
   958ee:	f5 02       	lwi37.sp $r5,[+#0x8]
   958f0:	a6 e7       	lbi333 $r3,[$r4+#0x7]
   958f2:	db 12       	bnes38 $r3,95916 <sm_hal_flash_check_master_info+0x100>
   958f4:	b4 5c       	lwi450 $r2,[$fp]
   958f6:	f1 05       	lwi37.sp $r1,[+#0x14]
   958f8:	a0 d7       	lwi333 $r3,[$r2+#0x1c]
   958fa:	46 40 00 83 	sethi $r4,#0x83
   958fe:	58 42 00 14 	ori $r4,$r4,#0x14
   95902:	00 21 00 1a 	lbi $r2,[$r2+#0x1a]
   95906:	98 0c       	add333 $r0,$r1,$r4
   95908:	80 26       	mov55 $r1,$r6
   9590a:	dd 23       	jral5 $r3
   9590c:	b4 1c       	lwi450 $r0,[$fp]
   9590e:	49 00 26 ea 	jal 9a6e2 <free>
   95912:	b6 dc       	swi450 $r6,[$fp]
   95914:	d5 44       	j8 9599c <sm_hal_flash_check_master_info+0x186>
   95916:	44 60 00 88 	movi $r6,#136
   9591a:	42 64 98 24 	mul $r6,$r9,$r6
   9591e:	46 50 00 83 	sethi $r5,#0x83
   95922:	58 52 80 00 	ori $r5,$r5,#0x0
   95926:	98 f5       	add333 $r3,$r6,$r5
   95928:	8c 70       	addi45 $r3,#16
   9592a:	a6 da       	lbi333 $r3,[$r3+#0x2]
   9592c:	96 ce       	bmski33 $r3,#0x1
   9592e:	c3 37       	beqz38 $r3,9599c <sm_hal_flash_check_master_info+0x186>
   95930:	f0 02       	lwi37.sp $r0,[+#0x8]
   95932:	5a 08 01 35 	bnec $r0,#1,9599c <sm_hal_flash_check_master_info+0x186>
   95936:	f1 03       	lwi37.sp $r1,[+#0xc]
   95938:	a6 c8       	lbi333 $r3,[$r1+#0x0]
   9593a:	96 f6       	bmski33 $r3,#0x6
   9593c:	c3 30       	beqz38 $r3,9599c <sm_hal_flash_check_master_info+0x186>
   9593e:	3c 0d f3 a7 	lwi.gp $r0,[+#-12644]
   95942:	50 22 80 14 	addi $r2,$r5,#20
   95946:	10 90 00 1b 	sbi $r9,[$r0+#0x1b]
   9594a:	98 72       	add333 $r1,$r6,$r2
   9594c:	fa 40       	movpi45 $r2,#0x10
   9594e:	49 ff d3 7d 	jal 90048 <memcpy>
   95952:	3c 0d f3 a7 	lwi.gp $r0,[+#-12644]
   95956:	46 30 00 83 	sethi $r3,#0x83
   9595a:	58 31 80 64 	ori $r3,$r3,#0x64
   9595e:	f2 04       	lwi37.sp $r2,[+#0x10]
   95960:	00 00 00 1a 	lbi $r0,[$r0+#0x1a]
   95964:	98 73       	add333 $r1,$r6,$r3
   95966:	46 30 00 95 	sethi $r3,#0x95
   9596a:	58 31 89 e6 	ori $r3,$r3,#0x9e6
   9596e:	49 ff fd a5 	jal 954b8 <ah>
   95972:	d5 15       	j8 9599c <sm_hal_flash_check_master_info+0x186>
   95974:	8d 21       	addi45 $r9,#1
   95976:	54 94 80 ff 	andi $r9,$r9,#0xff
   9597a:	e7 3e       	slti45 $r9,#30
   9597c:	4e f3 ff 80 	bnez $r15,9587c <sm_hal_flash_check_master_info+0x66>
   95980:	3e 6f ce 9c 	addi.gp $r6,#-12644
   95984:	b4 46       	lwi450 $r2,[$r6]
   95986:	84 00       	movi55 $r0,#0
   95988:	a0 d7       	lwi333 $r3,[$r2+#0x1c]
   9598a:	00 21 00 1a 	lbi $r2,[$r2+#0x1a]
   9598e:	84 27       	movi55 $r1,#7
   95990:	dd 23       	jral5 $r3
   95992:	b4 06       	lwi450 $r0,[$r6]
   95994:	49 00 26 a7 	jal 9a6e2 <free>
   95998:	84 00       	movi55 $r0,#0
   9599a:	b6 06       	swi450 $r0,[$r6]
   9599c:	fc c3       	pop25 $r10,#0x18    ! {$r6~$r10, $fp, $gp, $lp}

0009599e <sm_hal_flash_get_ltk>:
   9599e:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   959a0:	81 20       	mov55 $r9,$r0
   959a2:	fa 10       	movpi45 $r0,#0x20
   959a4:	81 41       	mov55 $r10,$r1
   959a6:	81 03       	mov55 $r8,$r3
   959a8:	97 d0       	zeb33 $r7,$r2
   959aa:	49 00 27 15 	jal 9a7d4 <malloc>
   959ae:	3c 0f f3 a7 	swi.gp $r0,[+#-12644]
   959b2:	c8 05       	bnez38 $r0,959bc <sm_hal_flash_get_ltk+0x1e>
   959b4:	84 23       	movi55 $r1,#3
   959b6:	80 47       	mov55 $r2,$r7
   959b8:	dd 28       	jral5 $r8
   959ba:	d5 15       	j8 959e4 <sm_hal_flash_get_ltk+0x46>
   959bc:	14 80 00 07 	swi $r8,[$r0+#0x1c]
   959c0:	10 70 00 1a 	sbi $r7,[$r0+#0x1a]
   959c4:	80 2a       	mov55 $r1,$r10
   959c6:	84 48       	movi55 $r2,#8
   959c8:	8c 10       	addi45 $r0,#16
   959ca:	49 ff d3 3f 	jal 90048 <memcpy>
   959ce:	3c 2d f3 a7 	lwi.gp $r2,[+#-12644]
   959d2:	80 29       	mov55 $r1,$r9
   959d4:	50 01 00 18 	addi $r0,$r2,#24
   959d8:	84 42       	movi55 $r2,#2
   959da:	49 ff d3 37 	jal 90048 <memcpy>
   959de:	84 00       	movi55 $r0,#0
   959e0:	49 ff ff 1b 	jal 95816 <sm_hal_flash_check_master_info>
   959e4:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000959e6 <SM_hal_flash_ah_cb>:
   959e6:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   959e8:	80 c0       	mov55 $r6,$r0
   959ea:	97 d0       	zeb33 $r7,$r2
   959ec:	a6 70       	lbi333 $r1,[$r6+#0x0]
   959ee:	a6 b1       	lbi333 $r2,[$r6+#0x1]
   959f0:	a6 f2       	lbi333 $r3,[$r6+#0x2]
   959f2:	46 00 00 9f 	sethi $r0,#0x9f
   959f6:	58 00 0c e8 	ori $r0,$r0,#0xce8
   959fa:	49 00 27 6e 	jal 9a8d6 <printf>
   959fe:	80 07       	mov55 $r0,$r7
   95a00:	49 ff e8 d2 	jal 92ba4 <ble_gap_link_GetAttr_BdAddr>
   95a04:	80 26       	mov55 $r1,$r6
   95a06:	84 43       	movi55 $r2,#3
   95a08:	49 ff d3 14 	jal 90030 <memcmp>
   95a0c:	81 00       	mov55 $r8,$r0
   95a0e:	3e 7f ce 9c 	addi.gp $r7,#-12644
   95a12:	c8 3d       	bnez38 $r0,95a8c <SM_hal_flash_ah_cb+0xa6>
   95a14:	b4 c7       	lwi450 $r6,[$r7]
   95a16:	46 00 00 9f 	sethi $r0,#0x9f
   95a1a:	58 00 0c fc 	ori $r0,$r0,#0xcfc
   95a1e:	a6 70       	lbi333 $r1,[$r6+#0x0]
   95a20:	a6 b1       	lbi333 $r2,[$r6+#0x1]
   95a22:	a6 f2       	lbi333 $r3,[$r6+#0x2]
   95a24:	a7 33       	lbi333 $r4,[$r6+#0x3]
   95a26:	49 00 27 58 	jal 9a8d6 <printf>
   95a2a:	a6 74       	lbi333 $r1,[$r6+#0x4]
   95a2c:	a6 b5       	lbi333 $r2,[$r6+#0x5]
   95a2e:	a6 f6       	lbi333 $r3,[$r6+#0x6]
   95a30:	a7 37       	lbi333 $r4,[$r6+#0x7]
   95a32:	46 00 00 9f 	sethi $r0,#0x9f
   95a36:	58 00 0d 14 	ori $r0,$r0,#0xd14
   95a3a:	49 00 27 4e 	jal 9a8d6 <printf>
   95a3e:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   95a42:	00 23 00 09 	lbi $r2,[$r6+#0x9]
   95a46:	00 33 00 0a 	lbi $r3,[$r6+#0xa]
   95a4a:	00 43 00 0b 	lbi $r4,[$r6+#0xb]
   95a4e:	46 00 00 9f 	sethi $r0,#0x9f
   95a52:	58 00 0d 2c 	ori $r0,$r0,#0xd2c
   95a56:	49 00 27 40 	jal 9a8d6 <printf>
   95a5a:	00 43 00 0f 	lbi $r4,[$r6+#0xf]
   95a5e:	00 13 00 0c 	lbi $r1,[$r6+#0xc]
   95a62:	00 23 00 0d 	lbi $r2,[$r6+#0xd]
   95a66:	00 33 00 0e 	lbi $r3,[$r6+#0xe]
   95a6a:	46 00 00 9f 	sethi $r0,#0x9f
   95a6e:	58 00 0d 44 	ori $r0,$r0,#0xd44
   95a72:	49 00 27 32 	jal 9a8d6 <printf>
   95a76:	b4 07       	lwi450 $r0,[$r7]
   95a78:	80 28       	mov55 $r1,$r8
   95a7a:	a0 c7       	lwi333 $r3,[$r0+#0x1c]
   95a7c:	00 20 00 1a 	lbi $r2,[$r0+#0x1a]
   95a80:	dd 23       	jral5 $r3
   95a82:	b4 07       	lwi450 $r0,[$r7]
   95a84:	49 00 26 2f 	jal 9a6e2 <free>
   95a88:	b7 07       	swi450 $r8,[$r7]
   95a8a:	d5 0a       	j8 95a9e <SM_hal_flash_ah_cb+0xb8>
   95a8c:	b4 27       	lwi450 $r1,[$r7]
   95a8e:	00 00 80 1b 	lbi $r0,[$r1+#0x1b]
   95a92:	9c 01       	addi333 $r0,$r0,#1
   95a94:	96 00       	zeb33 $r0,$r0
   95a96:	10 00 80 1b 	sbi $r0,[$r1+#0x1b]
   95a9a:	49 ff fe be 	jal 95816 <sm_hal_flash_check_master_info>
   95a9e:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00095aa0 <sm_hal_cryptoTool_hci_cmd_complete>:
   95aa0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95aa2:	a6 8b       	lbi333 $r2,[$r1+#0x3]
   95aa4:	80 c3       	mov55 $r6,$r3
   95aa6:	c2 09       	beqz38 $r2,95ab8 <sm_hal_cryptoTool_hci_cmd_complete+0x18>
   95aa8:	a6 49       	lbi333 $r1,[$r1+#0x1]
   95aaa:	46 00 00 9f 	sethi $r0,#0x9f
   95aae:	58 00 0d 5c 	ori $r0,$r0,#0xd5c
   95ab2:	49 00 27 12 	jal 9a8d6 <printf>
   95ab6:	d5 0a       	j8 95aca <sm_hal_cryptoTool_hci_cmd_complete+0x2a>
   95ab8:	c3 09       	beqz38 $r3,95aca <sm_hal_cryptoTool_hci_cmd_complete+0x2a>
   95aba:	9c 0c       	addi333 $r0,$r1,#4
   95abc:	b4 63       	lwi450 $r3,[$r3]
   95abe:	80 22       	mov55 $r1,$r2
   95ac0:	a6 b4       	lbi333 $r2,[$r6+#0x4]
   95ac2:	dd 23       	jral5 $r3
   95ac4:	80 06       	mov55 $r0,$r6
   95ac6:	49 00 26 0e 	jal 9a6e2 <free>
   95aca:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095acc <sm_hal_flash_reset_data>:
   95acc:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   95ace:	46 00 00 83 	sethi $r0,#0x83
   95ad2:	58 00 00 00 	ori $r0,$r0,#0x0
   95ad6:	49 00 25 e2 	jal 9a69a <AB_Flash_SectorErase>
   95ada:	96 00       	zeb33 $r0,$r0
   95adc:	c0 13       	beqz38 $r0,95b02 <sm_hal_flash_reset_data+0x36>
   95ade:	44 0f ff aa 	movi $r0,#-86
   95ae2:	10 0f 80 07 	sbi $r0,[$sp+#0x7]
   95ae6:	50 1f 80 07 	addi $r1,$sp,#7
   95aea:	84 41       	movi55 $r2,#1
   95aec:	46 00 00 83 	sethi $r0,#0x83
   95af0:	58 00 0f f0 	ori $r0,$r0,#0xff0
   95af4:	49 00 25 bd 	jal 9a66e <AB_Flash_ByteProgram>
   95af8:	80 c0       	mov55 $r6,$r0
   95afa:	49 ff 56 a0 	jal 8083a <DRV_MCU_ClearCache>
   95afe:	96 30       	zeb33 $r0,$r6
   95b00:	c8 07       	bnez38 $r0,95b0e <sm_hal_flash_reset_data+0x42>
   95b02:	46 00 00 9f 	sethi $r0,#0x9f
   95b06:	58 00 0d 80 	ori $r0,$r0,#0xd80
   95b0a:	49 00 3f 2a 	jal 9d95e <puts>
   95b0e:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

00095b10 <sm_hal_flash_init_data>:
   95b10:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95b12:	46 f0 00 83 	sethi $r15,#0x83
   95b16:	00 07 8f f0 	lbi $r0,[$r15+#0xff0]
   95b1a:	5a 00 aa 06 	beqc $r0,#170,95b26 <sm_hal_flash_init_data+0x16>
   95b1e:	49 ff ff d7 	jal 95acc <sm_hal_flash_reset_data>
   95b22:	49 ff 56 8c 	jal 8083a <DRV_MCU_ClearCache>
   95b26:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095b28 <sm_hal_flash_save_data>:
   95b28:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   95b2a:	51 ff ef f0 	addi $sp,$sp,#-4112
   95b2e:	54 a0 00 ff 	andi $r10,$r0,#0xff
   95b32:	3e 0f c9 c0 	addi.gp $r0,#-13888
   95b36:	38 10 2a 02 	lw $r1,[$r0+($r10<<#0x2)]
   95b3a:	4e 12 01 1c 	beqz $r1,95d72 <sm_hal_flash_save_data+0x24a>
   95b3e:	50 10 80 98 	addi $r1,$r1,#152
   95b42:	84 46       	movi55 $r2,#6
   95b44:	50 0f 90 09 	addi $r0,$sp,#4105
   95b48:	49 ff d2 80 	jal 90048 <memcpy>
   95b4c:	50 0f 90 08 	addi $r0,$sp,#4104
   95b50:	49 ff fd e2 	jal 95714 <sm_hal_flash_delete_paired_record>
   95b54:	49 ff fd 90 	jal 95674 <sm_hal_flash_get_paired_device_count>
   95b58:	80 c0       	mov55 $r6,$r0
   95b5a:	5a 00 1e 04 	beqc $r0,#30,95b62 <sm_hal_flash_save_data+0x3a>
   95b5e:	48 00 00 b7 	j 95ccc <sm_hal_flash_save_data+0x1a4>
   95b62:	85 00       	movi55 $r8,#0
   95b64:	46 00 00 9f 	sethi $r0,#0x9f
   95b68:	58 00 0d 8c 	ori $r0,$r0,#0xd8c
   95b6c:	49 00 3e f9 	jal 9d95e <puts>
   95b70:	80 e8       	mov55 $r7,$r8
   95b72:	81 28       	mov55 $r9,$r8
   95b74:	45 c0 00 11 	movi $fp,#17
   95b78:	b1 05       	addri36.sp $r4,#0x14
   95b7a:	40 3e 0c 08 	slli $r3,$fp,#3
   95b7e:	44 6f ff cf 	movi $r6,#-49
   95b82:	42 03 f0 24 	mul $r0,$r7,$fp
   95b86:	9c 01       	addi333 $r0,$r0,#1
   95b88:	94 03       	slli333 $r0,$r0,#3
   95b8a:	46 10 00 83 	sethi $r1,#0x83
   95b8e:	58 10 80 00 	ori $r1,$r1,#0x0
   95b92:	98 01       	add333 $r0,$r0,$r1
   95b94:	a6 06       	lbi333 $r0,[$r0+#0x6]
   95b96:	5a 08 0f 17 	bnec $r0,#15,95bc4 <sm_hal_flash_save_data+0x9c>
   95b9a:	80 04       	mov55 $r0,$r4
   95b9c:	42 04 8c 73 	maddr32 $r0,$r9,$r3
   95ba0:	88 28       	add45 $r1,$r8
   95ba2:	44 20 00 88 	movi $r2,#136
   95ba6:	f3 82       	swi37.sp $r3,[+#0x8]
   95ba8:	f4 81       	swi37.sp $r4,[+#0x4]
   95baa:	49 ff d2 4f 	jal 90048 <memcpy>
   95bae:	42 04 f0 24 	mul $r0,$r9,$fp
   95bb2:	f4 01       	lwi37.sp $r4,[+#0x4]
   95bb4:	9c 01       	addi333 $r0,$r0,#1
   95bb6:	94 03       	slli333 $r0,$r0,#3
   95bb8:	98 20       	add333 $r0,$r4,$r0
   95bba:	af 86       	sbi333 $r6,[$r0+#0x6]
   95bbc:	8d 21       	addi45 $r9,#1
   95bbe:	f3 02       	lwi37.sp $r3,[+#0x8]
   95bc0:	54 94 80 ff 	andi $r9,$r9,#0xff
   95bc4:	9d f9       	addi333 $r7,$r7,#1
   95bc6:	50 84 00 88 	addi $r8,$r8,#136
   95bca:	5a 78 1e dc 	bnec $r7,#30,95b82 <sm_hal_flash_save_data+0x5a>
   95bce:	49 ff ff 7f 	jal 95acc <sm_hal_flash_reset_data>
   95bd2:	4c 93 c0 08 	bne $r9,$r7,95be2 <sm_hal_flash_save_data+0xba>
   95bd6:	84 c0       	movi55 $r6,#0
   95bd8:	fb 21       	movpi45 $r9,#0x11
   95bda:	40 84 8c 08 	slli $r8,$r9,#3
   95bde:	80 8a       	mov55 $r4,$r10
   95be0:	d5 3b       	j8 95c56 <sm_hal_flash_save_data+0x12e>
   95be2:	b1 85       	addri36.sp $r6,#0x14
   95be4:	85 00       	movi55 $r8,#0
   95be6:	80 6a       	mov55 $r3,$r10
   95be8:	80 e8       	mov55 $r7,$r8
   95bea:	fa a1       	movpi45 $r5,#0x11
   95bec:	80 86       	mov55 $r4,$r6
   95bee:	81 49       	mov55 $r10,$r9
   95bf0:	d5 68       	j8 95cc0 <sm_hal_flash_save_data+0x198>
   95bf2:	42 03 24 24 	mul $r0,$r6,$r9
   95bf6:	9d f1       	addi333 $r7,$r6,#1
   95bf8:	9c 01       	addi333 $r0,$r0,#1
   95bfa:	46 20 00 83 	sethi $r2,#0x83
   95bfe:	58 21 00 00 	ori $r2,$r2,#0x0
   95c02:	94 03       	slli333 $r0,$r0,#3
   95c04:	42 33 a4 24 	mul $r3,$r7,$r9
   95c08:	98 02       	add333 $r0,$r0,$r2
   95c0a:	9c d9       	addi333 $r3,$r3,#1
   95c0c:	50 a0 00 06 	addi $r10,$r0,#6
   95c10:	94 db       	slli333 $r3,$r3,#3
   95c12:	b0 05       	addri36.sp $r0,#0x14
   95c14:	98 c3       	add333 $r3,$r0,$r3
   95c16:	51 c1 80 06 	addi $fp,$r3,#6
   95c1a:	80 3c       	mov55 $r1,$fp
   95c1c:	84 41       	movi55 $r2,#1
   95c1e:	80 0a       	mov55 $r0,$r10
   95c20:	f4 81       	swi37.sp $r4,[+#0x4]
   95c22:	f3 82       	swi37.sp $r3,[+#0x8]
   95c24:	49 00 25 25 	jal 9a66e <AB_Flash_ByteProgram>
   95c28:	42 03 20 24 	mul $r0,$r6,$r8
   95c2c:	46 10 00 83 	sethi $r1,#0x83
   95c30:	58 10 80 00 	ori $r1,$r1,#0x0
   95c34:	98 01       	add333 $r0,$r0,$r1
   95c36:	b0 45       	addri36.sp $r1,#0x14
   95c38:	42 13 a0 73 	maddr32 $r1,$r7,$r8
   95c3c:	80 48       	mov55 $r2,$r8
   95c3e:	49 00 25 18 	jal 9a66e <AB_Flash_ByteProgram>
   95c42:	f3 02       	lwi37.sp $r3,[+#0x8]
   95c44:	84 4f       	movi55 $r2,#15
   95c46:	ae 9e       	sbi333 $r2,[$r3+#0x6]
   95c48:	80 0a       	mov55 $r0,$r10
   95c4a:	80 3c       	mov55 $r1,$fp
   95c4c:	84 41       	movi55 $r2,#1
   95c4e:	49 00 25 10 	jal 9a66e <AB_Flash_ByteProgram>
   95c52:	f4 01       	lwi37.sp $r4,[+#0x4]
   95c54:	97 b8       	zeb33 $r6,$r7
   95c56:	5a 68 1d ce 	bnec $r6,#29,95bf2 <sm_hal_flash_save_data+0xca>
   95c5a:	81 44       	mov55 $r10,$r4
   95c5c:	d5 38       	j8 95ccc <sm_hal_flash_save_data+0x1a4>
   95c5e:	42 13 94 24 	mul $r1,$r7,$r5
   95c62:	9c 49       	addi333 $r1,$r1,#1
   95c64:	94 4b       	slli333 $r1,$r1,#3
   95c66:	46 20 00 83 	sethi $r2,#0x83
   95c6a:	58 21 00 00 	ori $r2,$r2,#0x0
   95c6e:	98 0a       	add333 $r0,$r1,$r2
   95c70:	98 61       	add333 $r1,$r4,$r1
   95c72:	50 90 00 06 	addi $r9,$r0,#6
   95c76:	51 c0 80 06 	addi $fp,$r1,#6
   95c7a:	80 3c       	mov55 $r1,$fp
   95c7c:	84 41       	movi55 $r2,#1
   95c7e:	80 09       	mov55 $r0,$r9
   95c80:	f3 82       	swi37.sp $r3,[+#0x8]
   95c82:	f4 81       	swi37.sp $r4,[+#0x4]
   95c84:	f5 83       	swi37.sp $r5,[+#0xc]
   95c86:	49 00 24 f4 	jal 9a66e <AB_Flash_ByteProgram>
   95c8a:	46 10 00 83 	sethi $r1,#0x83
   95c8e:	58 10 80 00 	ori $r1,$r1,#0x0
   95c92:	40 04 04 00 	add $r0,$r8,$r1
   95c96:	44 20 00 88 	movi $r2,#136
   95c9a:	80 26       	mov55 $r1,$r6
   95c9c:	49 00 24 e9 	jal 9a66e <AB_Flash_ByteProgram>
   95ca0:	84 4f       	movi55 $r2,#15
   95ca2:	10 23 00 0e 	sbi $r2,[$r6+#0xe]
   95ca6:	80 09       	mov55 $r0,$r9
   95ca8:	80 3c       	mov55 $r1,$fp
   95caa:	84 41       	movi55 $r2,#1
   95cac:	49 00 24 e1 	jal 9a66e <AB_Flash_ByteProgram>
   95cb0:	f5 03       	lwi37.sp $r5,[+#0xc]
   95cb2:	f4 01       	lwi37.sp $r4,[+#0x4]
   95cb4:	f3 02       	lwi37.sp $r3,[+#0x8]
   95cb6:	9d f9       	addi333 $r7,$r7,#1
   95cb8:	50 84 00 88 	addi $r8,$r8,#136
   95cbc:	50 63 00 88 	addi $r6,$r6,#136
   95cc0:	96 38       	zeb33 $r0,$r7
   95cc2:	e2 0a       	slt45 $r0,$r10
   95cc4:	e9 cd       	bnezs8 95c5e <sm_hal_flash_save_data+0x136>
   95cc6:	81 2a       	mov55 $r9,$r10
   95cc8:	80 c9       	mov55 $r6,$r9
   95cca:	81 43       	mov55 $r10,$r3
   95ccc:	fb 21       	movpi45 $r9,#0x11
   95cce:	42 93 24 24 	mul $r9,$r6,$r9
   95cd2:	3e 7f c9 c0 	addi.gp $r7,#-13888
   95cd6:	8d 21       	addi45 $r9,#1
   95cd8:	38 23 aa 02 	lw $r2,[$r7+($r10<<#0x2)]
   95cdc:	46 30 00 83 	sethi $r3,#0x83
   95ce0:	58 31 80 00 	ori $r3,$r3,#0x0
   95ce4:	40 94 8c 08 	slli $r9,$r9,#3
   95ce8:	89 23       	add45 $r9,$r3
   95cea:	44 0f ff cf 	movi $r0,#-49
   95cee:	10 01 00 9e 	sbi $r0,[$r2+#0x9e]
   95cf2:	50 84 80 06 	addi $r8,$r9,#6
   95cf6:	50 11 00 9e 	addi $r1,$r2,#158
   95cfa:	80 08       	mov55 $r0,$r8
   95cfc:	84 41       	movi55 $r2,#1
   95cfe:	49 00 24 b8 	jal 9a66e <AB_Flash_ByteProgram>
   95d02:	44 20 00 88 	movi $r2,#136
   95d06:	38 13 aa 02 	lw $r1,[$r7+($r10<<#0x2)]
   95d0a:	46 30 00 83 	sethi $r3,#0x83
   95d0e:	58 31 80 00 	ori $r3,$r3,#0x0
   95d12:	42 03 08 24 	mul $r0,$r6,$r2
   95d16:	98 03       	add333 $r0,$r0,$r3
   95d18:	50 10 80 90 	addi $r1,$r1,#144
   95d1c:	49 00 24 a9 	jal 9a66e <AB_Flash_ByteProgram>
   95d20:	38 13 aa 02 	lw $r1,[$r7+($r10<<#0x2)]
   95d24:	83 80       	mov55 $fp,$r0
   95d26:	84 0f       	movi55 $r0,#15
   95d28:	10 00 80 9e 	sbi $r0,[$r1+#0x9e]
   95d2c:	84 41       	movi55 $r2,#1
   95d2e:	50 10 80 9e 	addi $r1,$r1,#158
   95d32:	80 08       	mov55 $r0,$r8
   95d34:	54 7e 00 ff 	andi $r7,$fp,#0xff
   95d38:	49 00 24 9b 	jal 9a66e <AB_Flash_ByteProgram>
   95d3c:	49 ff 55 7f 	jal 8083a <DRV_MCU_ClearCache>
   95d40:	cf 19       	bnez38 $r7,95d72 <sm_hal_flash_save_data+0x24a>
   95d42:	80 26       	mov55 $r1,$r6
   95d44:	46 00 00 9f 	sethi $r0,#0x9f
   95d48:	58 00 0d a4 	ori $r0,$r0,#0xda4
   95d4c:	49 00 25 c5 	jal 9a8d6 <printf>
   95d50:	80 28       	mov55 $r1,$r8
   95d52:	46 00 00 9f 	sethi $r0,#0x9f
   95d56:	58 00 0d dc 	ori $r0,$r0,#0xddc
   95d5a:	49 00 25 be 	jal 9a8d6 <printf>
   95d5e:	46 00 00 9f 	sethi $r0,#0x9f
   95d62:	58 00 0d f0 	ori $r0,$r0,#0xdf0
   95d66:	50 14 80 07 	addi $r1,$r9,#7
   95d6a:	49 00 25 b6 	jal 9a8d6 <printf>
   95d6e:	80 07       	mov55 $r0,$r7
   95d70:	d5 02       	j8 95d74 <sm_hal_flash_save_data+0x24c>
   95d72:	84 01       	movi55 $r0,#1
   95d74:	51 ff 90 10 	addi $sp,$sp,#4112
   95d78:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00095d7a <sm_hal_cryptoTool_hci_send_cmd_ex>:
   95d7a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95d7c:	80 83       	mov55 $r4,$r3
   95d7e:	96 01       	zeh33 $r0,$r0
   95d80:	96 90       	zeb33 $r2,$r2
   95d82:	46 30 00 95 	sethi $r3,#0x95
   95d86:	58 31 8a a0 	ori $r3,$r3,#0xaa0
   95d8a:	49 00 13 ae 	jal 984e6 <hci_send_cmd_ex>
   95d8e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095d90 <sm_hal_cryptoTool_hci_send_cmd>:
   95d90:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95d92:	46 30 00 95 	sethi $r3,#0x95
   95d96:	58 31 8a a0 	ori $r3,$r3,#0xaa0
   95d9a:	96 01       	zeh33 $r0,$r0
   95d9c:	96 90       	zeb33 $r2,$r2
   95d9e:	49 00 14 0f 	jal 985bc <hci_send_cmd>
   95da2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095da4 <sm_hal_cryptoTool_init>:
   95da4:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   95da6:	46 00 00 9f 	sethi $r0,#0x9f
   95daa:	58 00 04 c0 	ori $r0,$r0,#0x4c0
   95dae:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   95db2:	84 48       	movi55 $r2,#8
   95db4:	3a 0f 84 20 	smw.bi $r0,[$sp],$r1,#0x0    ! {$r0~$r1}
   95db8:	44 00 20 01 	movi $r0,#8193
   95dbc:	80 3f       	mov55 $r1,$sp
   95dbe:	49 ff ff e9 	jal 95d90 <sm_hal_cryptoTool_hci_send_cmd>
   95dc2:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

00095dc4 <sm_hal_protocol_init>:
   95dc4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95dc6:	46 10 00 95 	sethi $r1,#0x95
   95dca:	58 10 8d ee 	ori $r1,$r1,#0xdee
   95dce:	84 06       	movi55 $r0,#6
   95dd0:	49 ff e8 91 	jal 92ef2 <BLE_l2cap_cid_register>
   95dd4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095dd6 <sm_hal_init>:
   95dd6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95dd8:	49 ff ff f6 	jal 95dc4 <sm_hal_protocol_init>
   95ddc:	49 ff fe 9a 	jal 95b10 <sm_hal_flash_init_data>
   95de0:	49 ff f7 9b 	jal 94d16 <SM_CryptoTool_init>
   95de4:	49 00 07 71 	jal 96cc6 <SM_Slave_Init>
   95de8:	49 00 0d 59 	jal 9789a <SM_Master_Init>
   95dec:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095dee <sm_hal_protocol_cid_evt_cb>:
   95dee:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   95df0:	3a 2f 8c 20 	smw.bi $r2,[$sp],$r3,#0x0    ! {$r2~$r3}
   95df4:	96 00       	zeb33 $r0,$r0
   95df6:	c9 04       	bnez38 $r1,95dfe <sm_hal_protocol_cid_evt_cb+0x10>
   95df8:	80 22       	mov55 $r1,$r2
   95dfa:	49 00 00 c8 	jal 95f8a <SM_Protocol_L2capEventHandler>
   95dfe:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

00095e00 <sm_hal_protocol_send_l2cap_packet>:
   95e00:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95e02:	80 c1       	mov55 $r6,$r1
   95e04:	96 d1       	zeh33 $r3,$r2
   95e06:	84 26       	movi55 $r1,#6
   95e08:	80 46       	mov55 $r2,$r6
   95e0a:	96 00       	zeb33 $r0,$r0
   95e0c:	49 ff e8 87 	jal 92f1a <l2cap_hci_fragment>
   95e10:	80 06       	mov55 $r0,$r6
   95e12:	49 00 24 68 	jal 9a6e2 <free>
   95e16:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095e18 <sm_hal_infom_auth_status>:
   95e18:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   95e1a:	44 20 20 04 	movi $r2,#8196
   95e1e:	96 00       	zeb33 $r0,$r0
   95e20:	b6 5f       	swi450 $r2,[$sp]
   95e22:	10 1f 80 06 	sbi $r1,[$sp+#0x6]
   95e26:	49 ff e6 94 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   95e2a:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   95e2e:	80 1f       	mov55 $r0,$sp
   95e30:	80 df       	mov55 $r6,$sp
   95e32:	49 ff e2 06 	jal 9223e <bt_infom_ap>
   95e36:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

00095e38 <sm_hal_infom_conn_sec_update>:
   95e38:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   95e3a:	96 48       	zeb33 $r1,$r1
   95e3c:	94 4c       	slli333 $r1,$r1,#4
   95e3e:	44 30 20 03 	movi $r3,#8195
   95e42:	58 10 80 01 	ori $r1,$r1,#0x1
   95e46:	80 1f       	mov55 $r0,$sp
   95e48:	b6 7f       	swi450 $r3,[$sp]
   95e4a:	10 1f 80 06 	sbi $r1,[$sp+#0x6]
   95e4e:	10 2f 80 08 	sbi $r2,[$sp+#0x8]
   95e52:	49 ff e1 f6 	jal 9223e <bt_infom_ap>
   95e56:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

00095e58 <sm_hal_infom_recv_security_req>:
   95e58:	fc 26       	push25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}
   95e5a:	97 c8       	zeb33 $r7,$r1
   95e5c:	96 00       	zeb33 $r0,$r0
   95e5e:	44 10 20 05 	movi $r1,#8197
   95e62:	b6 3f       	swi450 $r1,[$sp]
   95e64:	49 ff e6 75 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   95e68:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   95e6c:	00 0f 80 06 	lbi $r0,[$sp+#0x6]
   95e70:	96 7c       	xlsb33 $r1,$r7
   95e72:	92 02       	srli45 $r0,#2
   95e74:	94 02       	slli333 $r0,$r0,#2
   95e76:	fe 0f       	or33 $r0,$r1
   95e78:	10 0f 80 06 	sbi $r0,[$sp+#0x6]
   95e7c:	80 1f       	mov55 $r0,$sp
   95e7e:	80 df       	mov55 $r6,$sp
   95e80:	49 ff e1 df 	jal 9223e <bt_infom_ap>
   95e84:	fc a6       	pop25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}

00095e86 <sm_hal_infom_passkey_input_req>:
   95e86:	fc 26       	push25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}
   95e88:	97 c8       	zeb33 $r7,$r1
   95e8a:	96 00       	zeb33 $r0,$r0
   95e8c:	44 10 20 02 	movi $r1,#8194
   95e90:	b6 3f       	swi450 $r1,[$sp]
   95e92:	49 ff e6 5e 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   95e96:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   95e9a:	80 1f       	mov55 $r0,$sp
   95e9c:	10 7f 80 06 	sbi $r7,[$sp+#0x6]
   95ea0:	80 df       	mov55 $r6,$sp
   95ea2:	49 ff e1 ce 	jal 9223e <bt_infom_ap>
   95ea6:	fc a6       	pop25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}

00095ea8 <sm_hal_infom_passkey_display_req>:
   95ea8:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   95eaa:	44 30 20 01 	movi $r3,#8193
   95eae:	b6 7f       	swi450 $r3,[$sp]
   95eb0:	80 1f       	mov55 $r0,$sp
   95eb2:	a6 d2       	lbi333 $r3,[$r2+#0x2]
   95eb4:	10 3f 80 06 	sbi $r3,[$sp+#0x6]
   95eb8:	a6 d1       	lbi333 $r3,[$r2+#0x1]
   95eba:	10 3f 80 07 	sbi $r3,[$sp+#0x7]
   95ebe:	a6 90       	lbi333 $r2,[$r2+#0x0]
   95ec0:	10 1f 80 09 	sbi $r1,[$sp+#0x9]
   95ec4:	10 2f 80 08 	sbi $r2,[$sp+#0x8]
   95ec8:	49 ff e1 bb 	jal 9223e <bt_infom_ap>
   95ecc:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

00095ece <sm_hal_infom_set_sec_param_req>:
   95ece:	fc 06       	push25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}
   95ed0:	44 10 20 00 	movi $r1,#8192
   95ed4:	96 00       	zeb33 $r0,$r0
   95ed6:	b6 3f       	swi450 $r1,[$sp]
   95ed8:	49 ff e6 3b 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   95edc:	12 0f 80 02 	shi $r0,[$sp+#0x4]
   95ee0:	80 1f       	mov55 $r0,$sp
   95ee2:	80 df       	mov55 $r6,$sp
   95ee4:	49 ff e1 ad 	jal 9223e <bt_infom_ap>
   95ee8:	fc 86       	pop25 $r6,#0x30    ! {$r6, $fp, $gp, $lp}

00095eea <sm_hal_release_timer>:
   95eea:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95eec:	96 00       	zeb33 $r0,$r0
   95eee:	49 00 0d a6 	jal 97a3a <Ab_MMITimerUnset>
   95ef2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095ef4 <sm_hal_set_timer>:
   95ef4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95ef6:	96 00       	zeb33 $r0,$r0
   95ef8:	80 41       	mov55 $r2,$r1
   95efa:	46 30 00 95 	sethi $r3,#0x95
   95efe:	58 31 8f 0c 	ori $r3,$r3,#0xf0c
   95f02:	84 20       	movi55 $r1,#0
   95f04:	80 80       	mov55 $r4,$r0
   95f06:	49 00 0d e7 	jal 97ad4 <Ab_MMITimerSet>
   95f0a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095f0c <sm_hal_timer_handler>:
   95f0c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95f0e:	3c 33 e9 6c 	lhi.gp $r3,[+#-11560]
   95f12:	96 00       	zeb33 $r0,$r0
   95f14:	40 11 80 0e 	sra $r1,$r3,$r0
   95f18:	96 4c       	xlsb33 $r1,$r1
   95f1a:	c1 0b       	beqz38 $r1,95f30 <sm_hal_timer_handler+0x24>
   95f1c:	84 21       	movi55 $r1,#1
   95f1e:	40 40 80 0c 	sll $r4,$r1,$r0
   95f22:	ff 23       	not33 $r4,$r4
   95f24:	fe e6       	and33 $r3,$r4
   95f26:	3c 3b e9 6c 	shi.gp $r3,[+#-11560]
   95f2a:	49 ff ff 77 	jal 95e18 <sm_hal_infom_auth_status>
   95f2e:	d5 04       	j8 95f36 <sm_hal_timer_handler+0x2a>
   95f30:	84 41       	movi55 $r2,#1
   95f32:	49 ff f5 ba 	jal 94aa6 <SM_FinishPairing>
   95f36:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095f38 <sm_hal_get_random_number>:
   95f38:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95f3a:	96 48       	zeb33 $r1,$r1
   95f3c:	49 00 0d 0b 	jal 97952 <DRV_TRNG_Get>
   95f40:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095f42 <sm_hal_set_link_encrypted>:
   95f42:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95f44:	96 00       	zeb33 $r0,$r0
   95f46:	96 48       	zeb33 $r1,$r1
   95f48:	49 ff e6 67 	jal 92c16 <ble_gap_link_SetAttr_Enc>
   95f4c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095f4e <sm_hal_set_link_authenticated>:
   95f4e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95f50:	96 00       	zeb33 $r0,$r0
   95f52:	96 48       	zeb33 $r1,$r1
   95f54:	49 ff e6 4b 	jal 92bea <ble_gap_link_SetAttr_Auth>
   95f58:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095f5a <sm_hal_get_local_addr_Type>:
   95f5a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95f5c:	96 00       	zeb33 $r0,$r0
   95f5e:	49 ff e5 de 	jal 92b1a <ble_gap_link_GetAttr_OwnerType>
   95f62:	84 20       	movi55 $r1,#0
   95f64:	40 00 80 06 	slt $r0,$r1,$r0
   95f68:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095f6a <sm_hal_get_local_addr>:
   95f6a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95f6c:	3e 1f d2 dc 	addi.gp $r1,#-11556
   95f70:	96 00       	zeb33 $r0,$r0
   95f72:	49 ff e5 df 	jal 92b30 <ble_gap_link_GetAttr_OwnerAddr>
   95f76:	3e 0f d2 dc 	addi.gp $r0,#-11556
   95f7a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095f7c <SM_Protocol_RegisterCallback>:
   95f7c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   95f7e:	3e 2f ce a0 	addi.gp $r2,#-12640
   95f82:	96 00       	zeb33 $r0,$r0
   95f84:	38 11 02 0a 	sw $r1,[$r2+($r0<<#0x2)]
   95f88:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00095f8a <SM_Protocol_L2capEventHandler>:
   95f8a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   95f8c:	80 e1       	mov55 $r7,$r1
   95f8e:	97 80       	zeb33 $r6,$r0
   95f90:	c1 0e       	beqz38 $r1,95fac <SM_Protocol_L2capEventHandler+0x22>
   95f92:	80 06       	mov55 $r0,$r6
   95f94:	49 ff e6 7f 	jal 92c92 <ble_gap_link_GetAttr_Role>
   95f98:	3e 1f ce a0 	addi.gp $r1,#-12640
   95f9c:	38 30 82 02 	lw $r3,[$r1+($r0<<#0x2)]
   95fa0:	c3 06       	beqz38 $r3,95fac <SM_Protocol_L2capEventHandler+0x22>
   95fa2:	80 47       	mov55 $r2,$r7
   95fa4:	08 11 00 01 	lbi.bi $r1,[$r2],#0x1
   95fa8:	80 06       	mov55 $r0,$r6
   95faa:	dd 23       	jral5 $r3
   95fac:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00095fae <SM_Protocol_PairingDHKeyCheck>:
   95fae:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   95fb0:	81 01       	mov55 $r8,$r1
   95fb2:	97 c0       	zeb33 $r7,$r0
   95fb4:	fa 21       	movpi45 $r1,#0x11
   95fb6:	84 0d       	movi55 $r0,#13
   95fb8:	49 ff fc 27 	jal 95806 <sm_hal_protocol_cmd_factory>
   95fbc:	80 c0       	mov55 $r6,$r0
   95fbe:	c0 0b       	beqz38 $r0,95fd4 <SM_Protocol_PairingDHKeyCheck+0x26>
   95fc0:	80 28       	mov55 $r1,$r8
   95fc2:	fa 40       	movpi45 $r2,#0x10
   95fc4:	9c 01       	addi333 $r0,$r0,#1
   95fc6:	49 ff d0 41 	jal 90048 <memcpy>
   95fca:	80 07       	mov55 $r0,$r7
   95fcc:	80 26       	mov55 $r1,$r6
   95fce:	fa 41       	movpi45 $r2,#0x11
   95fd0:	49 ff ff 18 	jal 95e00 <sm_hal_protocol_send_l2cap_packet>
   95fd4:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00095fd6 <SM_Protocol_PairingPublicKey>:
   95fd6:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   95fd8:	81 01       	mov55 $r8,$r1
   95fda:	97 c0       	zeb33 $r7,$r0
   95fdc:	44 10 00 41 	movi $r1,#65
   95fe0:	84 0c       	movi55 $r0,#12
   95fe2:	49 ff fc 12 	jal 95806 <sm_hal_protocol_cmd_factory>
   95fe6:	80 c0       	mov55 $r6,$r0
   95fe8:	c0 0d       	beqz38 $r0,96002 <SM_Protocol_PairingPublicKey+0x2c>
   95fea:	80 28       	mov55 $r1,$r8
   95fec:	44 20 00 40 	movi $r2,#64
   95ff0:	9c 01       	addi333 $r0,$r0,#1
   95ff2:	49 ff d0 2b 	jal 90048 <memcpy>
   95ff6:	80 07       	mov55 $r0,$r7
   95ff8:	80 26       	mov55 $r1,$r6
   95ffa:	44 20 00 41 	movi $r2,#65
   95ffe:	49 ff ff 01 	jal 95e00 <sm_hal_protocol_send_l2cap_packet>
   96002:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096004 <SM_Protocol_SigningInfo>:
   96004:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   96006:	81 01       	mov55 $r8,$r1
   96008:	97 c0       	zeb33 $r7,$r0
   9600a:	fa 21       	movpi45 $r1,#0x11
   9600c:	84 0a       	movi55 $r0,#10
   9600e:	49 ff fb fc 	jal 95806 <sm_hal_protocol_cmd_factory>
   96012:	80 c0       	mov55 $r6,$r0
   96014:	c0 11       	beqz38 $r0,96036 <SM_Protocol_SigningInfo+0x32>
   96016:	46 00 00 9f 	sethi $r0,#0x9f
   9601a:	58 00 0e 24 	ori $r0,$r0,#0xe24
   9601e:	49 00 3c a0 	jal 9d95e <puts>
   96022:	80 28       	mov55 $r1,$r8
   96024:	fa 40       	movpi45 $r2,#0x10
   96026:	9c 31       	addi333 $r0,$r6,#1
   96028:	49 ff d0 10 	jal 90048 <memcpy>
   9602c:	80 07       	mov55 $r0,$r7
   9602e:	80 26       	mov55 $r1,$r6
   96030:	fa 41       	movpi45 $r2,#0x11
   96032:	49 ff fe e7 	jal 95e00 <sm_hal_protocol_send_l2cap_packet>
   96036:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096038 <SM_Protocol_IdentityInfo>:
   96038:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9603a:	81 01       	mov55 $r8,$r1
   9603c:	97 c0       	zeb33 $r7,$r0
   9603e:	fa 21       	movpi45 $r1,#0x11
   96040:	84 08       	movi55 $r0,#8
   96042:	49 ff fb e2 	jal 95806 <sm_hal_protocol_cmd_factory>
   96046:	80 c0       	mov55 $r6,$r0
   96048:	c0 11       	beqz38 $r0,9606a <SM_Protocol_IdentityInfo+0x32>
   9604a:	46 00 00 9f 	sethi $r0,#0x9f
   9604e:	58 00 0e 40 	ori $r0,$r0,#0xe40
   96052:	49 00 3c 86 	jal 9d95e <puts>
   96056:	80 28       	mov55 $r1,$r8
   96058:	fa 40       	movpi45 $r2,#0x10
   9605a:	9c 31       	addi333 $r0,$r6,#1
   9605c:	49 ff cf f6 	jal 90048 <memcpy>
   96060:	80 07       	mov55 $r0,$r7
   96062:	80 26       	mov55 $r1,$r6
   96064:	fa 41       	movpi45 $r2,#0x11
   96066:	49 ff fe cd 	jal 95e00 <sm_hal_protocol_send_l2cap_packet>
   9606a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009606c <SM_Protocol_MasterID>:
   9606c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9606e:	81 01       	mov55 $r8,$r1
   96070:	97 c0       	zeb33 $r7,$r0
   96072:	84 2b       	movi55 $r1,#11
   96074:	84 07       	movi55 $r0,#7
   96076:	49 ff fb c8 	jal 95806 <sm_hal_protocol_cmd_factory>
   9607a:	80 c0       	mov55 $r6,$r0
   9607c:	c0 11       	beqz38 $r0,9609e <SM_Protocol_MasterID+0x32>
   9607e:	46 00 00 9f 	sethi $r0,#0x9f
   96082:	58 00 0e 5c 	ori $r0,$r0,#0xe5c
   96086:	49 00 3c 6c 	jal 9d95e <puts>
   9608a:	80 28       	mov55 $r1,$r8
   9608c:	84 4a       	movi55 $r2,#10
   9608e:	9c 31       	addi333 $r0,$r6,#1
   96090:	49 ff cf dc 	jal 90048 <memcpy>
   96094:	80 07       	mov55 $r0,$r7
   96096:	80 26       	mov55 $r1,$r6
   96098:	84 4b       	movi55 $r2,#11
   9609a:	49 ff fe b3 	jal 95e00 <sm_hal_protocol_send_l2cap_packet>
   9609e:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000960a0 <SM_Protocol_EncryptionInfo>:
   960a0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   960a2:	81 01       	mov55 $r8,$r1
   960a4:	97 c0       	zeb33 $r7,$r0
   960a6:	fa 21       	movpi45 $r1,#0x11
   960a8:	84 06       	movi55 $r0,#6
   960aa:	49 ff fb ae 	jal 95806 <sm_hal_protocol_cmd_factory>
   960ae:	80 c0       	mov55 $r6,$r0
   960b0:	c0 11       	beqz38 $r0,960d2 <SM_Protocol_EncryptionInfo+0x32>
   960b2:	46 00 00 9f 	sethi $r0,#0x9f
   960b6:	58 00 0e 74 	ori $r0,$r0,#0xe74
   960ba:	49 00 3c 52 	jal 9d95e <puts>
   960be:	80 28       	mov55 $r1,$r8
   960c0:	fa 40       	movpi45 $r2,#0x10
   960c2:	9c 31       	addi333 $r0,$r6,#1
   960c4:	49 ff cf c2 	jal 90048 <memcpy>
   960c8:	80 07       	mov55 $r0,$r7
   960ca:	80 26       	mov55 $r1,$r6
   960cc:	fa 41       	movpi45 $r2,#0x11
   960ce:	49 ff fe 99 	jal 95e00 <sm_hal_protocol_send_l2cap_packet>
   960d2:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000960d4 <SM_Protocol_PairingRandom>:
   960d4:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   960d6:	81 01       	mov55 $r8,$r1
   960d8:	97 c0       	zeb33 $r7,$r0
   960da:	fa 21       	movpi45 $r1,#0x11
   960dc:	84 04       	movi55 $r0,#4
   960de:	49 ff fb 94 	jal 95806 <sm_hal_protocol_cmd_factory>
   960e2:	80 c0       	mov55 $r6,$r0
   960e4:	c0 11       	beqz38 $r0,96106 <SM_Protocol_PairingRandom+0x32>
   960e6:	46 00 00 9f 	sethi $r0,#0x9f
   960ea:	58 00 0e 90 	ori $r0,$r0,#0xe90
   960ee:	49 00 3c 38 	jal 9d95e <puts>
   960f2:	80 28       	mov55 $r1,$r8
   960f4:	fa 40       	movpi45 $r2,#0x10
   960f6:	9c 31       	addi333 $r0,$r6,#1
   960f8:	49 ff cf a8 	jal 90048 <memcpy>
   960fc:	80 07       	mov55 $r0,$r7
   960fe:	80 26       	mov55 $r1,$r6
   96100:	fa 41       	movpi45 $r2,#0x11
   96102:	49 ff fe 7f 	jal 95e00 <sm_hal_protocol_send_l2cap_packet>
   96106:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096108 <SM_Protocol_PairingConfirm>:
   96108:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9610a:	81 01       	mov55 $r8,$r1
   9610c:	97 c0       	zeb33 $r7,$r0
   9610e:	fa 21       	movpi45 $r1,#0x11
   96110:	84 03       	movi55 $r0,#3
   96112:	49 ff fb 7a 	jal 95806 <sm_hal_protocol_cmd_factory>
   96116:	80 c0       	mov55 $r6,$r0
   96118:	c0 11       	beqz38 $r0,9613a <SM_Protocol_PairingConfirm+0x32>
   9611a:	46 00 00 9f 	sethi $r0,#0x9f
   9611e:	58 00 0e ac 	ori $r0,$r0,#0xeac
   96122:	49 00 3c 1e 	jal 9d95e <puts>
   96126:	80 28       	mov55 $r1,$r8
   96128:	fa 40       	movpi45 $r2,#0x10
   9612a:	9c 31       	addi333 $r0,$r6,#1
   9612c:	49 ff cf 8e 	jal 90048 <memcpy>
   96130:	80 07       	mov55 $r0,$r7
   96132:	80 26       	mov55 $r1,$r6
   96134:	fa 41       	movpi45 $r2,#0x11
   96136:	49 ff fe 65 	jal 95e00 <sm_hal_protocol_send_l2cap_packet>
   9613a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009613c <SM_Protocol_IdentityAddressInfo>:
   9613c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9613e:	84 28       	movi55 $r1,#8
   96140:	97 c0       	zeb33 $r7,$r0
   96142:	84 09       	movi55 $r0,#9
   96144:	49 ff fb 61 	jal 95806 <sm_hal_protocol_cmd_factory>
   96148:	80 c0       	mov55 $r6,$r0
   9614a:	c0 39       	beqz38 $r0,961bc <SM_Protocol_IdentityAddressInfo+0x80>
   9614c:	46 00 00 9f 	sethi $r0,#0x9f
   96150:	58 00 0e e8 	ori $r0,$r0,#0xee8
   96154:	49 00 3c 05 	jal 9d95e <puts>
   96158:	80 07       	mov55 $r0,$r7
   9615a:	49 ff ff 00 	jal 95f5a <sm_hal_get_local_addr_Type>
   9615e:	81 00       	mov55 $r8,$r0
   96160:	5a 08 01 11 	bnec $r0,#1,96182 <SM_Protocol_IdentityAddressInfo+0x46>
   96164:	80 07       	mov55 $r0,$r7
   96166:	49 ff ff 02 	jal 95f6a <sm_hal_get_local_addr>
   9616a:	a6 05       	lbi333 $r0,[$r0+#0x5]
   9616c:	92 06       	srli45 $r0,#6
   9616e:	5a 08 03 0a 	bnec $r0,#3,96182 <SM_Protocol_IdentityAddressInfo+0x46>
   96172:	10 83 00 01 	sbi $r8,[$r6+#0x1]
   96176:	80 07       	mov55 $r0,$r7
   96178:	49 ff fe f9 	jal 95f6a <sm_hal_get_local_addr>
   9617c:	80 20       	mov55 $r1,$r0
   9617e:	9c 32       	addi333 $r0,$r6,#2
   96180:	d5 0f       	j8 9619e <SM_Protocol_IdentityAddressInfo+0x62>
   96182:	84 00       	movi55 $r0,#0
   96184:	ae 31       	sbi333 $r0,[$r6+#0x1]
   96186:	80 07       	mov55 $r0,$r7
   96188:	49 ff fe e9 	jal 95f5a <sm_hal_get_local_addr_Type>
   9618c:	50 83 00 01 	addi $r8,$r6,#1
   96190:	c8 0b       	bnez38 $r0,961a6 <SM_Protocol_IdentityAddressInfo+0x6a>
   96192:	80 07       	mov55 $r0,$r7
   96194:	49 ff fe eb 	jal 95f6a <sm_hal_get_local_addr>
   96198:	80 20       	mov55 $r1,$r0
   9619a:	50 04 00 01 	addi $r0,$r8,#1
   9619e:	84 46       	movi55 $r2,#6
   961a0:	49 ff cf 54 	jal 90048 <memcpy>
   961a4:	d5 07       	j8 961b2 <SM_Protocol_IdentityAddressInfo+0x76>
   961a6:	50 04 00 01 	addi $r0,$r8,#1
   961aa:	84 20       	movi55 $r1,#0
   961ac:	84 46       	movi55 $r2,#6
   961ae:	49 ff cf 6d 	jal 90088 <memset>
   961b2:	80 07       	mov55 $r0,$r7
   961b4:	80 26       	mov55 $r1,$r6
   961b6:	84 48       	movi55 $r2,#8
   961b8:	49 ff fe 24 	jal 95e00 <sm_hal_protocol_send_l2cap_packet>
   961bc:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000961be <SM_Protocol_PairingFailed>:
   961be:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   961c0:	54 80 00 ff 	andi $r8,$r0,#0xff
   961c4:	97 88       	zeb33 $r6,$r1
   961c6:	84 05       	movi55 $r0,#5
   961c8:	84 22       	movi55 $r1,#2
   961ca:	49 ff fb 1e 	jal 95806 <sm_hal_protocol_cmd_factory>
   961ce:	80 e0       	mov55 $r7,$r0
   961d0:	4e 02 00 8e 	beqz $r0,962ec <SM_Protocol_PairingFailed+0x12e>
   961d4:	46 00 00 9f 	sethi $r0,#0x9f
   961d8:	58 00 0f 0c 	ori $r0,$r0,#0xf0c
   961dc:	49 00 3b c1 	jal 9d95e <puts>
   961e0:	46 00 00 9f 	sethi $r0,#0x9f
   961e4:	58 00 0f 34 	ori $r0,$r0,#0xf34
   961e8:	49 00 23 77 	jal 9a8d6 <printf>
   961ec:	5a 60 07 40 	beqc $r6,#7,9626c <SM_Protocol_PairingFailed+0xae>
   961f0:	e6 c8       	slti45 $r6,#8
   961f2:	e8 0f       	beqzs8 96210 <SM_Protocol_PairingFailed+0x52>
   961f4:	5a 60 03 28 	beqc $r6,#3,96244 <SM_Protocol_PairingFailed+0x86>
   961f8:	e6 c4       	slti45 $r6,#4
   961fa:	e8 06       	beqzs8 96206 <SM_Protocol_PairingFailed+0x48>
   961fc:	5a 60 01 1a 	beqc $r6,#1,96230 <SM_Protocol_PairingFailed+0x72>
   96200:	5a 68 02 5e 	bnec $r6,#2,962bc <SM_Protocol_PairingFailed+0xfe>
   96204:	d5 1b       	j8 9623a <SM_Protocol_PairingFailed+0x7c>
   96206:	5a 60 05 29 	beqc $r6,#5,96258 <SM_Protocol_PairingFailed+0x9a>
   9620a:	e6 c6       	slti45 $r6,#6
   9620c:	e8 2b       	beqzs8 96262 <SM_Protocol_PairingFailed+0xa4>
   9620e:	d5 20       	j8 9624e <SM_Protocol_PairingFailed+0x90>
   96210:	5a 60 0b 42 	beqc $r6,#11,96294 <SM_Protocol_PairingFailed+0xd6>
   96214:	e6 cc       	slti45 $r6,#12
   96216:	e8 06       	beqzs8 96222 <SM_Protocol_PairingFailed+0x64>
   96218:	5a 60 09 34 	beqc $r6,#9,96280 <SM_Protocol_PairingFailed+0xc2>
   9621c:	e6 ca       	slti45 $r6,#10
   9621e:	e8 36       	beqzs8 9628a <SM_Protocol_PairingFailed+0xcc>
   96220:	d5 2b       	j8 96276 <SM_Protocol_PairingFailed+0xb8>
   96222:	5a 60 0d 43 	beqc $r6,#13,962a8 <SM_Protocol_PairingFailed+0xea>
   96226:	e6 cd       	slti45 $r6,#13
   96228:	e9 3b       	bnezs8 9629e <SM_Protocol_PairingFailed+0xe0>
   9622a:	5a 68 0e 49 	bnec $r6,#14,962bc <SM_Protocol_PairingFailed+0xfe>
   9622e:	d5 42       	j8 962b2 <SM_Protocol_PairingFailed+0xf4>
   96230:	46 00 00 9f 	sethi $r0,#0x9f
   96234:	58 00 0f 50 	ori $r0,$r0,#0xf50
   96238:	d5 46       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   9623a:	46 00 00 9f 	sethi $r0,#0x9f
   9623e:	58 00 0f 68 	ori $r0,$r0,#0xf68
   96242:	d5 41       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   96244:	46 00 00 9f 	sethi $r0,#0x9f
   96248:	58 00 0f 7c 	ori $r0,$r0,#0xf7c
   9624c:	d5 3c       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   9624e:	46 00 00 9f 	sethi $r0,#0x9f
   96252:	58 00 0f a8 	ori $r0,$r0,#0xfa8
   96256:	d5 37       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   96258:	46 00 00 9f 	sethi $r0,#0x9f
   9625c:	58 00 0f c0 	ori $r0,$r0,#0xfc0
   96260:	d5 32       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   96262:	46 00 00 9f 	sethi $r0,#0x9f
   96266:	58 00 0f d8 	ori $r0,$r0,#0xfd8
   9626a:	d5 2d       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   9626c:	46 00 00 9f 	sethi $r0,#0x9f
   96270:	58 00 0f ec 	ori $r0,$r0,#0xfec
   96274:	d5 28       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   96276:	46 00 00 a0 	sethi $r0,#0xa0
   9627a:	58 00 00 04 	ori $r0,$r0,#0x4
   9627e:	d5 23       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   96280:	46 00 00 a0 	sethi $r0,#0xa0
   96284:	58 00 00 18 	ori $r0,$r0,#0x18
   96288:	d5 1e       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   9628a:	46 00 00 a0 	sethi $r0,#0xa0
   9628e:	58 00 00 2c 	ori $r0,$r0,#0x2c
   96292:	d5 19       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   96294:	46 00 00 a0 	sethi $r0,#0xa0
   96298:	58 00 00 40 	ori $r0,$r0,#0x40
   9629c:	d5 14       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   9629e:	46 00 00 a0 	sethi $r0,#0xa0
   962a2:	58 00 00 54 	ori $r0,$r0,#0x54
   962a6:	d5 0f       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   962a8:	46 00 00 a0 	sethi $r0,#0xa0
   962ac:	58 00 00 70 	ori $r0,$r0,#0x70
   962b0:	d5 0a       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   962b2:	46 00 00 a0 	sethi $r0,#0xa0
   962b6:	58 00 00 8c 	ori $r0,$r0,#0x8c
   962ba:	d5 05       	j8 962c4 <SM_Protocol_PairingFailed+0x106>
   962bc:	46 00 00 a0 	sethi $r0,#0xa0
   962c0:	58 00 00 ac 	ori $r0,$r0,#0xac
   962c4:	49 00 3b 4d 	jal 9d95e <puts>
   962c8:	46 00 00 a0 	sethi $r0,#0xa0
   962cc:	58 00 00 d0 	ori $r0,$r0,#0xd0
   962d0:	49 00 3b 47 	jal 9d95e <puts>
   962d4:	46 00 00 a0 	sethi $r0,#0xa0
   962d8:	58 00 00 fc 	ori $r0,$r0,#0xfc
   962dc:	49 00 3b 41 	jal 9d95e <puts>
   962e0:	af b9       	sbi333 $r6,[$r7+#0x1]
   962e2:	80 08       	mov55 $r0,$r8
   962e4:	80 27       	mov55 $r1,$r7
   962e6:	84 42       	movi55 $r2,#2
   962e8:	49 ff fd 8c 	jal 95e00 <sm_hal_protocol_send_l2cap_packet>
   962ec:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000962ee <SM_Slave_generate_DHKey_handler>:
   962ee:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   962f0:	80 20       	mov55 $r1,$r0
   962f2:	97 90       	zeb33 $r6,$r2
   962f4:	c0 16       	beqz38 $r0,96320 <SM_Slave_generate_DHKey_handler+0x32>
   962f6:	3e 7f c9 c0 	addi.gp $r7,#-13888
   962fa:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   962fe:	fa 50       	movpi45 $r2,#0x20
   96300:	50 00 00 60 	addi $r0,$r0,#96
   96304:	49 ff ce a2 	jal 90048 <memcpy>
   96308:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   9630c:	00 10 00 0f 	lbi $r1,[$r0+#0xf]
   96310:	46 00 00 9f 	sethi $r0,#0x9f
   96314:	58 00 04 c8 	ori $r0,$r0,#0x4c8
   96318:	38 10 06 02 	lw $r1,[$r0+($r1<<#0x2)]
   9631c:	80 06       	mov55 $r0,$r6
   9631e:	dd 21       	jral5 $r1
   96320:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096322 <SM_Slave_f5_mac_handler>:
   96322:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96324:	80 20       	mov55 $r1,$r0
   96326:	96 90       	zeb33 $r2,$r2
   96328:	3e 0f c9 c0 	addi.gp $r0,#-13888
   9632c:	38 00 0a 02 	lw $r0,[$r0+($r2<<#0x2)]
   96330:	c0 07       	beqz38 $r0,9633e <SM_Slave_f5_mac_handler+0x1c>
   96332:	c1 06       	beqz38 $r1,9633e <SM_Slave_f5_mac_handler+0x1c>
   96334:	50 00 00 80 	addi $r0,$r0,#128
   96338:	fa 40       	movpi45 $r2,#0x10
   9633a:	49 ff ce 87 	jal 90048 <memcpy>
   9633e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096340 <SM_Slave_IdentityInformationHandler>:
   96340:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96342:	a6 17       	lbi333 $r0,[$r2+#0x7]
   96344:	5a 08 32 07 	bnec $r0,#50,96352 <SM_Slave_IdentityInformationHandler+0x12>
   96348:	50 01 00 f4 	addi $r0,$r2,#244
   9634c:	fa 40       	movpi45 $r2,#0x10
   9634e:	49 ff ce 7d 	jal 90048 <memcpy>
   96352:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096354 <SM_Slave_EncryptionInformationHandler>:
   96354:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96356:	a6 17       	lbi333 $r0,[$r2+#0x7]
   96358:	5a 08 31 07 	bnec $r0,#49,96366 <SM_Slave_EncryptionInformationHandler+0x12>
   9635c:	50 01 00 b4 	addi $r0,$r2,#180
   96360:	fa 40       	movpi45 $r2,#0x10
   96362:	49 ff ce 73 	jal 90048 <memcpy>
   96366:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096368 <SM_Slave_check_Ea>:
   96368:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   9636a:	54 80 00 ff 	andi $r8,$r0,#0xff
   9636e:	fa 11       	movpi45 $r0,#0x21
   96370:	80 e1       	mov55 $r7,$r1
   96372:	49 00 22 31 	jal 9a7d4 <malloc>
   96376:	80 c0       	mov55 $r6,$r0
   96378:	c0 3f       	beqz38 $r0,963f6 <SM_Slave_check_Ea+0x8e>
   9637a:	50 13 80 b4 	addi $r1,$r7,#180
   9637e:	fa 40       	movpi45 $r2,#0x10
   96380:	50 93 00 10 	addi $r9,$r6,#16
   96384:	49 ff ce 62 	jal 90048 <memcpy>
   96388:	51 c3 00 13 	addi $fp,$r6,#19
   9638c:	9c 79       	addi333 $r1,$r7,#1
   9638e:	84 43       	movi55 $r2,#3
   96390:	80 09       	mov55 $r0,$r9
   96392:	49 ff ce 5b 	jal 90048 <memcpy>
   96396:	50 13 80 98 	addi $r1,$r7,#152
   9639a:	84 46       	movi55 $r2,#6
   9639c:	80 1c       	mov55 $r0,$fp
   9639e:	49 ff ce 55 	jal 90048 <memcpy>
   963a2:	00 03 80 9f 	lbi $r0,[$r7+#0x9f]
   963a6:	50 a3 00 1a 	addi $r10,$r6,#26
   963aa:	10 03 00 19 	sbi $r0,[$r6+#0x19]
   963ae:	80 08       	mov55 $r0,$r8
   963b0:	49 ff fd dd 	jal 95f6a <sm_hal_get_local_addr>
   963b4:	80 20       	mov55 $r1,$r0
   963b6:	84 46       	movi55 $r2,#6
   963b8:	80 0a       	mov55 $r0,$r10
   963ba:	49 ff ce 47 	jal 90048 <memcpy>
   963be:	80 08       	mov55 $r0,$r8
   963c0:	49 ff fd cd 	jal 95f5a <sm_hal_get_local_addr_Type>
   963c4:	10 03 00 20 	sbi $r0,[$r6+#0x20]
   963c8:	46 00 00 96 	sethi $r0,#0x96
   963cc:	58 00 05 24 	ori $r0,$r0,#0x524
   963d0:	f0 82       	swi37.sp $r0,[+#0x8]
   963d2:	50 13 80 80 	addi $r1,$r7,#128
   963d6:	80 08       	mov55 $r0,$r8
   963d8:	50 23 80 10 	addi $r2,$r7,#16
   963dc:	50 33 80 20 	addi $r3,$r7,#32
   963e0:	80 86       	mov55 $r4,$r6
   963e2:	80 a9       	mov55 $r5,$r9
   963e4:	15 cf 80 00 	swi $fp,[$sp+#0x0]
   963e8:	14 af 80 01 	swi $r10,[$sp+#0x4]
   963ec:	49 ff f6 71 	jal 950ce <f6>
   963f0:	80 06       	mov55 $r0,$r6
   963f2:	49 00 21 78 	jal 9a6e2 <free>
   963f6:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

000963f8 <SM_Slave_PairingDHKeyCheckHandler>:
   963f8:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   963fa:	97 c0       	zeb33 $r7,$r0
   963fc:	80 c2       	mov55 $r6,$r2
   963fe:	81 01       	mov55 $r8,$r1
   96400:	80 07       	mov55 $r0,$r7
   96402:	49 ff fd 74 	jal 95eea <sm_hal_release_timer>
   96406:	80 28       	mov55 $r1,$r8
   96408:	50 03 00 40 	addi $r0,$r6,#64
   9640c:	fa 40       	movpi45 $r2,#0x10
   9640e:	49 ff ce 1d 	jal 90048 <memcpy>
   96412:	a6 77       	lbi333 $r1,[$r6+#0x7]
   96414:	5a 18 0a 0c 	bnec $r1,#10,9642c <SM_Slave_PairingDHKeyCheckHandler+0x34>
   96418:	3e 0f c9 c0 	addi.gp $r0,#-13888
   9641c:	38 10 1e 02 	lw $r1,[$r0+($r7<<#0x2)]
   96420:	84 0c       	movi55 $r0,#12
   96422:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   96424:	80 07       	mov55 $r0,$r7
   96426:	49 ff ff a1 	jal 96368 <SM_Slave_check_Ea>
   9642a:	d5 07       	j8 96438 <SM_Slave_PairingDHKeyCheckHandler+0x40>
   9642c:	5a 10 09 04 	beqc $r1,#9,96434 <SM_Slave_PairingDHKeyCheckHandler+0x3c>
   96430:	5a 18 07 04 	bnec $r1,#7,96438 <SM_Slave_PairingDHKeyCheckHandler+0x40>
   96434:	84 0b       	movi55 $r0,#11
   96436:	ae 37       	sbi333 $r0,[$r6+#0x7]
   96438:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009643a <SM_Slave_f6_Eb_handler>:
   9643a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9643c:	3e 7f c9 c0 	addi.gp $r7,#-13888
   96440:	97 90       	zeb33 $r6,$r2
   96442:	80 20       	mov55 $r1,$r0
   96444:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   96448:	c0 14       	beqz38 $r0,96470 <SM_Slave_f6_Eb_handler+0x36>
   9644a:	c1 13       	beqz38 $r1,96470 <SM_Slave_f6_Eb_handler+0x36>
   9644c:	50 00 00 30 	addi $r0,$r0,#48
   96450:	fa 40       	movpi45 $r2,#0x10
   96452:	49 ff cd fb 	jal 90048 <memcpy>
   96456:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   9645a:	a6 0f       	lbi333 $r0,[$r1+#0x7]
   9645c:	5a 08 0b 08 	bnec $r0,#11,9646c <SM_Slave_f6_Eb_handler+0x32>
   96460:	84 0c       	movi55 $r0,#12
   96462:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   96464:	80 06       	mov55 $r0,$r6
   96466:	49 ff ff 81 	jal 96368 <SM_Slave_check_Ea>
   9646a:	d5 03       	j8 96470 <SM_Slave_f6_Eb_handler+0x36>
   9646c:	84 0a       	movi55 $r0,#10
   9646e:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   96470:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096472 <SM_Slave_f5_ltk_handler>:
   96472:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   96474:	3e 7f c9 c0 	addi.gp $r7,#-13888
   96478:	54 81 00 ff 	andi $r8,$r2,#0xff
   9647c:	81 20       	mov55 $r9,$r0
   9647e:	38 03 a2 02 	lw $r0,[$r7+($r8<<#0x2)]
   96482:	c0 50       	beqz38 $r0,96522 <SM_Slave_f5_ltk_handler+0xb0>
   96484:	4e 92 00 4f 	beqz $r9,96522 <SM_Slave_f5_ltk_handler+0xb0>
   96488:	fa 11       	movpi45 $r0,#0x21
   9648a:	49 00 21 a5 	jal 9a7d4 <malloc>
   9648e:	80 c0       	mov55 $r6,$r0
   96490:	c0 49       	beqz38 $r0,96522 <SM_Slave_f5_ltk_handler+0xb0>
   96492:	38 73 a2 02 	lw $r7,[$r7+($r8<<#0x2)]
   96496:	80 29       	mov55 $r1,$r9
   96498:	fa 40       	movpi45 $r2,#0x10
   9649a:	50 03 80 a4 	addi $r0,$r7,#164
   9649e:	49 ff cd d5 	jal 90048 <memcpy>
   964a2:	50 93 00 10 	addi $r9,$r6,#16
   964a6:	50 13 80 b4 	addi $r1,$r7,#180
   964aa:	fa 40       	movpi45 $r2,#0x10
   964ac:	80 06       	mov55 $r0,$r6
   964ae:	49 ff cd cd 	jal 90048 <memcpy>
   964b2:	50 13 80 09 	addi $r1,$r7,#9
   964b6:	84 43       	movi55 $r2,#3
   964b8:	80 09       	mov55 $r0,$r9
   964ba:	49 ff cd c7 	jal 90048 <memcpy>
   964be:	80 08       	mov55 $r0,$r8
   964c0:	49 ff fd 55 	jal 95f6a <sm_hal_get_local_addr>
   964c4:	51 c3 00 13 	addi $fp,$r6,#19
   964c8:	80 20       	mov55 $r1,$r0
   964ca:	84 46       	movi55 $r2,#6
   964cc:	80 1c       	mov55 $r0,$fp
   964ce:	49 ff cd bd 	jal 90048 <memcpy>
   964d2:	80 08       	mov55 $r0,$r8
   964d4:	49 ff fd 43 	jal 95f5a <sm_hal_get_local_addr_Type>
   964d8:	50 a3 00 1a 	addi $r10,$r6,#26
   964dc:	10 03 00 19 	sbi $r0,[$r6+#0x19]
   964e0:	50 13 80 98 	addi $r1,$r7,#152
   964e4:	84 46       	movi55 $r2,#6
   964e6:	80 0a       	mov55 $r0,$r10
   964e8:	49 ff cd b0 	jal 90048 <memcpy>
   964ec:	00 03 80 9f 	lbi $r0,[$r7+#0x9f]
   964f0:	50 13 80 80 	addi $r1,$r7,#128
   964f4:	10 03 00 20 	sbi $r0,[$r6+#0x20]
   964f8:	46 00 00 96 	sethi $r0,#0x96
   964fc:	58 00 04 3a 	ori $r0,$r0,#0x43a
   96500:	f0 82       	swi37.sp $r0,[+#0x8]
   96502:	50 23 80 20 	addi $r2,$r7,#32
   96506:	80 08       	mov55 $r0,$r8
   96508:	50 33 80 10 	addi $r3,$r7,#16
   9650c:	80 86       	mov55 $r4,$r6
   9650e:	80 a9       	mov55 $r5,$r9
   96510:	15 cf 80 00 	swi $fp,[$sp+#0x0]
   96514:	14 af 80 01 	swi $r10,[$sp+#0x4]
   96518:	49 ff f5 db 	jal 950ce <f6>
   9651c:	80 06       	mov55 $r0,$r6
   9651e:	49 00 20 e2 	jal 9a6e2 <free>
   96522:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

00096524 <SM_Slave_f6_Ea_handler>:
   96524:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   96526:	3e 7f c9 c0 	addi.gp $r7,#-13888
   9652a:	97 90       	zeb33 $r6,$r2
   9652c:	38 83 9a 02 	lw $r8,[$r7+($r6<<#0x2)]
   96530:	fa 40       	movpi45 $r2,#0x10
   96532:	50 14 00 40 	addi $r1,$r8,#64
   96536:	49 ff cd 7d 	jal 90030 <memcmp>
   9653a:	c8 10       	bnez38 $r0,9655a <SM_Slave_f6_Ea_handler+0x36>
   9653c:	80 06       	mov55 $r0,$r6
   9653e:	50 14 00 30 	addi $r1,$r8,#48
   96542:	49 ff fd 36 	jal 95fae <SM_Protocol_PairingDHKeyCheck>
   96546:	80 06       	mov55 $r0,$r6
   96548:	44 10 75 30 	movi $r1,#30000
   9654c:	49 ff fc d4 	jal 95ef4 <sm_hal_set_timer>
   96550:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   96554:	84 2d       	movi55 $r1,#13
   96556:	ae 47       	sbi333 $r1,[$r0+#0x7]
   96558:	d5 05       	j8 96562 <SM_Slave_f6_Ea_handler+0x3e>
   9655a:	80 06       	mov55 $r0,$r6
   9655c:	84 2b       	movi55 $r1,#11
   9655e:	49 ff f2 e2 	jal 94b22 <SM_PairingFailed>
   96562:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096564 <SM_Slave_PairingPublicKeyHandler>:
   96564:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   96566:	97 c0       	zeb33 $r7,$r0
   96568:	a6 17       	lbi333 $r0,[$r2+#0x7]
   9656a:	81 01       	mov55 $r8,$r1
   9656c:	80 c2       	mov55 $r6,$r2
   9656e:	5a 08 06 19 	bnec $r0,#6,965a0 <SM_Slave_PairingPublicKeyHandler+0x3c>
   96572:	80 07       	mov55 $r0,$r7
   96574:	49 ff fc bb 	jal 95eea <sm_hal_release_timer>
   96578:	80 28       	mov55 $r1,$r8
   9657a:	fa 50       	movpi45 $r2,#0x20
   9657c:	50 03 00 40 	addi $r0,$r6,#64
   96580:	49 ff cd 64 	jal 90048 <memcpy>
   96584:	50 14 00 20 	addi $r1,$r8,#32
   96588:	50 03 00 60 	addi $r0,$r6,#96
   9658c:	fa 50       	movpi45 $r2,#0x20
   9658e:	49 ff cd 5d 	jal 90048 <memcpy>
   96592:	80 07       	mov55 $r0,$r7
   96594:	46 10 00 96 	sethi $r1,#0x96
   96598:	58 10 85 a2 	ori $r1,$r1,#0x5a2
   9659c:	49 ff f7 eb 	jal 95572 <SM_CryptoTool_ReadLocalP256PublicKey>
   965a0:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000965a2 <SM_Slave_read_local_public_key_handler>:
   965a2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   965a4:	80 20       	mov55 $r1,$r0
   965a6:	97 90       	zeb33 $r6,$r2
   965a8:	c0 16       	beqz38 $r0,965d4 <SM_Slave_read_local_public_key_handler+0x32>
   965aa:	80 06       	mov55 $r0,$r6
   965ac:	49 ff fd 15 	jal 95fd6 <SM_Protocol_PairingPublicKey>
   965b0:	80 06       	mov55 $r0,$r6
   965b2:	44 10 75 30 	movi $r1,#30000
   965b6:	49 ff fc 9f 	jal 95ef4 <sm_hal_set_timer>
   965ba:	3e 0f c9 c0 	addi.gp $r0,#-13888
   965be:	38 10 1a 02 	lw $r1,[$r0+($r6<<#0x2)]
   965c2:	46 20 00 96 	sethi $r2,#0x96
   965c6:	58 21 02 ee 	ori $r2,$r2,#0x2ee
   965ca:	80 06       	mov55 $r0,$r6
   965cc:	50 10 80 40 	addi $r1,$r1,#64
   965d0:	49 ff f7 a4 	jal 95518 <SM_CryptoTool_GenerateDHKey>
   965d4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000965d6 <SM_Slave_SC_Unsupported>:
   965d6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   965d8:	46 00 00 a0 	sethi $r0,#0xa0
   965dc:	58 00 01 2c 	ori $r0,$r0,#0x12c
   965e0:	49 00 39 bf 	jal 9d95e <puts>
   965e4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000965e6 <SM_Slave_UnsupportedHandler>:
   965e6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   965e8:	46 00 00 a0 	sethi $r0,#0xa0
   965ec:	58 00 01 44 	ori $r0,$r0,#0x144
   965f0:	49 00 39 b7 	jal 9d95e <puts>
   965f4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000965f6 <SM_Slave_g2_handler>:
   965f6:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   965f8:	b1 81       	addri36.sp $r6,#0x4
   965fa:	80 20       	mov55 $r1,$r0
   965fc:	97 d0       	zeb33 $r7,$r2
   965fe:	80 06       	mov55 $r0,$r6
   96600:	84 44       	movi55 $r2,#4
   96602:	49 ff cd 23 	jal 90048 <memcpy>
   96606:	f0 01       	lwi37.sp $r0,[+#0x4]
   96608:	46 10 00 f4 	sethi $r1,#0xf4
   9660c:	58 10 82 40 	ori $r1,$r1,#0x240
   96610:	40 10 04 17 	divr $r1,$r0,$r0,$r1
   96614:	80 46       	mov55 $r2,$r6
   96616:	84 21       	movi55 $r1,#1
   96618:	f0 81       	swi37.sp $r0,[+#0x4]
   9661a:	80 07       	mov55 $r0,$r7
   9661c:	49 ff fc 46 	jal 95ea8 <sm_hal_infom_passkey_display_req>
   96620:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

00096622 <SM_Slave_SC_rbValuePasskeyDisplay>:
   96622:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   96624:	b1 c1       	addri36.sp $r7,#0x4
   96626:	97 80       	zeb33 $r6,$r0
   96628:	84 24       	movi55 $r1,#4
   9662a:	80 07       	mov55 $r0,$r7
   9662c:	49 ff fc 86 	jal 95f38 <sm_hal_get_random_number>
   96630:	f1 01       	lwi37.sp $r1,[+#0x4]
   96632:	46 00 00 f4 	sethi $r0,#0xf4
   96636:	58 00 02 40 	ori $r0,$r0,#0x240
   9663a:	40 10 80 17 	divr $r1,$r0,$r1,$r0
   9663e:	3e 8f c9 c0 	addi.gp $r8,#-13888
   96642:	38 24 1a 02 	lw $r2,[$r8+($r6<<#0x2)]
   96646:	50 21 00 af 	addi $r2,$r2,#175
   9664a:	84 20       	movi55 $r1,#0
   9664c:	f0 81       	swi37.sp $r0,[+#0x4]
   9664e:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   96650:	ae 17       	sbi333 $r0,[$r2+#0x7]
   96652:	a6 39       	lbi333 $r0,[$r7+#0x1]
   96654:	ae 16       	sbi333 $r0,[$r2+#0x6]
   96656:	80 06       	mov55 $r0,$r6
   96658:	a7 f8       	lbi333 $r7,[$r7+#0x0]
   9665a:	af d5       	sbi333 $r7,[$r2+#0x5]
   9665c:	9c 95       	addi333 $r2,$r2,#5
   9665e:	49 ff fc 25 	jal 95ea8 <sm_hal_infom_passkey_display_req>
   96662:	38 74 1a 02 	lw $r7,[$r8+($r6<<#0x2)]
   96666:	84 01       	movi55 $r0,#1
   96668:	10 03 80 80 	sbi $r0,[$r7+#0x80]
   9666c:	3c 9d f1 a0 	lwi.gp $r9,[+#-14720]
   96670:	50 13 80 b4 	addi $r1,$r7,#180
   96674:	49 00 10 30 	jal 986d4 <SM_Common_GetRi>
   96678:	80 80       	mov55 $r4,$r0
   9667a:	80 29       	mov55 $r1,$r9
   9667c:	80 06       	mov55 $r0,$r6
   9667e:	50 23 80 40 	addi $r2,$r7,#64
   96682:	50 33 80 20 	addi $r3,$r7,#32
   96686:	46 50 00 96 	sethi $r5,#0x96
   9668a:	58 52 87 a2 	ori $r5,$r5,#0x7a2
   9668e:	49 ff f6 1a 	jal 952c2 <f4>
   96692:	38 04 1a 02 	lw $r0,[$r8+($r6<<#0x2)]
   96696:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   9669a:	58 10 80 04 	ori $r1,$r1,#0x4
   9669e:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   966a2:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000966a4 <SM_Slave_SC_rbValueJustWork>:
   966a4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   966a6:	3e 1f c9 c0 	addi.gp $r1,#-13888
   966aa:	96 00       	zeb33 $r0,$r0
   966ac:	38 30 82 02 	lw $r3,[$r1+($r0<<#0x2)]
   966b0:	3c 1d f1 a0 	lwi.gp $r1,[+#-14720]
   966b4:	50 21 80 40 	addi $r2,$r3,#64
   966b8:	84 80       	movi55 $r4,#0
   966ba:	50 31 80 20 	addi $r3,$r3,#32
   966be:	46 50 00 96 	sethi $r5,#0x96
   966c2:	58 52 86 cc 	ori $r5,$r5,#0x6cc
   966c6:	49 ff f5 fe 	jal 952c2 <f4>
   966ca:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000966cc <SM_Slave_f4_JW_handler>:
   966cc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   966ce:	80 20       	mov55 $r1,$r0
   966d0:	97 90       	zeb33 $r6,$r2
   966d2:	c0 0f       	beqz38 $r0,966f0 <SM_Slave_f4_JW_handler+0x24>
   966d4:	3e 0f c9 c0 	addi.gp $r0,#-13888
   966d8:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   966dc:	84 44       	movi55 $r2,#4
   966de:	ae 87       	sbi333 $r2,[$r0+#0x7]
   966e0:	80 06       	mov55 $r0,$r6
   966e2:	49 ff fd 13 	jal 96108 <SM_Protocol_PairingConfirm>
   966e6:	80 06       	mov55 $r0,$r6
   966e8:	44 10 75 30 	movi $r1,#30000
   966ec:	49 ff fc 04 	jal 95ef4 <sm_hal_set_timer>
   966f0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000966f2 <SM_Slave_PairingConfirmHandler>:
   966f2:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   966f4:	97 c0       	zeb33 $r7,$r0
   966f6:	80 c2       	mov55 $r6,$r2
   966f8:	80 07       	mov55 $r0,$r7
   966fa:	81 01       	mov55 $r8,$r1
   966fc:	49 ff fb f7 	jal 95eea <sm_hal_release_timer>
   96700:	a6 37       	lbi333 $r0,[$r6+#0x7]
   96702:	5a 08 03 0e 	bnec $r0,#3,9671e <SM_Slave_PairingConfirmHandler+0x2c>
   96706:	80 07       	mov55 $r0,$r7
   96708:	50 13 00 30 	addi $r1,$r6,#48
   9670c:	49 ff fc fe 	jal 96108 <SM_Protocol_PairingConfirm>
   96710:	80 07       	mov55 $r0,$r7
   96712:	44 10 75 30 	movi $r1,#30000
   96716:	49 ff fb ef 	jal 95ef4 <sm_hal_set_timer>
   9671a:	84 04       	movi55 $r0,#4
   9671c:	d5 02       	j8 96720 <SM_Slave_PairingConfirmHandler+0x2e>
   9671e:	84 03       	movi55 $r0,#3
   96720:	ae 37       	sbi333 $r0,[$r6+#0x7]
   96722:	80 28       	mov55 $r1,$r8
   96724:	50 03 00 30 	addi $r0,$r6,#48
   96728:	fa 40       	movpi45 $r2,#0x10
   9672a:	49 ff cc 8f 	jal 90048 <memcpy>
   9672e:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096730 <SM_Slave_f5>:
   96730:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   96732:	54 80 00 ff 	andi $r8,$r0,#0xff
   96736:	84 0e       	movi55 $r0,#14
   96738:	80 e1       	mov55 $r7,$r1
   9673a:	49 00 20 4d 	jal 9a7d4 <malloc>
   9673e:	80 c0       	mov55 $r6,$r0
   96740:	c0 30       	beqz38 $r0,967a0 <SM_Slave_f5+0x70>
   96742:	50 13 80 98 	addi $r1,$r7,#152
   96746:	84 46       	movi55 $r2,#6
   96748:	49 ff cc 80 	jal 90048 <memcpy>
   9674c:	00 03 80 9f 	lbi $r0,[$r7+#0x9f]
   96750:	50 93 00 07 	addi $r9,$r6,#7
   96754:	ae 36       	sbi333 $r0,[$r6+#0x6]
   96756:	80 08       	mov55 $r0,$r8
   96758:	49 ff fc 09 	jal 95f6a <sm_hal_get_local_addr>
   9675c:	80 20       	mov55 $r1,$r0
   9675e:	84 46       	movi55 $r2,#6
   96760:	80 09       	mov55 $r0,$r9
   96762:	49 ff cc 73 	jal 90048 <memcpy>
   96766:	80 08       	mov55 $r0,$r8
   96768:	49 ff fb f9 	jal 95f5a <sm_hal_get_local_addr_Type>
   9676c:	10 03 00 0d 	sbi $r0,[$r6+#0xd]
   96770:	46 00 00 96 	sethi $r0,#0x96
   96774:	58 00 03 22 	ori $r0,$r0,#0x322
   96778:	b6 1f       	swi450 $r0,[$sp]
   9677a:	46 00 00 96 	sethi $r0,#0x96
   9677e:	58 00 04 72 	ori $r0,$r0,#0x472
   96782:	f0 81       	swi37.sp $r0,[+#0x4]
   96784:	50 13 80 60 	addi $r1,$r7,#96
   96788:	80 08       	mov55 $r0,$r8
   9678a:	50 23 80 10 	addi $r2,$r7,#16
   9678e:	50 33 80 20 	addi $r3,$r7,#32
   96792:	80 86       	mov55 $r4,$r6
   96794:	80 a9       	mov55 $r5,$r9
   96796:	49 ff f4 e3 	jal 9515c <f5>
   9679a:	80 06       	mov55 $r0,$r6
   9679c:	49 00 1f a3 	jal 9a6e2 <free>
   967a0:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

000967a2 <SM_Slave_f4_PKE_handler>:
   967a2:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   967a4:	80 20       	mov55 $r1,$r0
   967a6:	97 90       	zeb33 $r6,$r2
   967a8:	c0 64       	beqz38 $r0,96870 <SM_Slave_f4_PKE_handler+0xce>
   967aa:	3e 7f c9 c0 	addi.gp $r7,#-13888
   967ae:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   967b2:	a6 87       	lbi333 $r2,[$r0+#0x7]
   967b4:	5a 28 03 0e 	bnec $r2,#3,967d0 <SM_Slave_f4_PKE_handler+0x2e>
   967b8:	80 06       	mov55 $r0,$r6
   967ba:	49 ff fc a7 	jal 96108 <SM_Protocol_PairingConfirm>
   967be:	80 06       	mov55 $r0,$r6
   967c0:	44 10 75 30 	movi $r1,#30000
   967c4:	49 ff fb 98 	jal 95ef4 <sm_hal_set_timer>
   967c8:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   967cc:	84 24       	movi55 $r1,#4
   967ce:	d5 50       	j8 9686e <SM_Slave_f4_PKE_handler+0xcc>
   967d0:	50 00 00 30 	addi $r0,$r0,#48
   967d4:	5a 28 05 47 	bnec $r2,#5,96862 <SM_Slave_f4_PKE_handler+0xc0>
   967d8:	fa 40       	movpi45 $r2,#0x10
   967da:	49 00 0f 6c 	jal 986b2 <SM_Common_ValueCompare>
   967de:	c8 06       	bnez38 $r0,967ea <SM_Slave_f4_PKE_handler+0x48>
   967e0:	80 06       	mov55 $r0,$r6
   967e2:	84 24       	movi55 $r1,#4
   967e4:	49 ff f1 9f 	jal 94b22 <SM_PairingFailed>
   967e8:	d5 44       	j8 96870 <SM_Slave_f4_PKE_handler+0xce>
   967ea:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   967ee:	80 06       	mov55 $r0,$r6
   967f0:	50 10 80 20 	addi $r1,$r1,#32
   967f4:	49 ff fc 70 	jal 960d4 <SM_Protocol_PairingRandom>
   967f8:	80 06       	mov55 $r0,$r6
   967fa:	44 10 75 30 	movi $r1,#30000
   967fe:	49 ff fb 7b 	jal 95ef4 <sm_hal_set_timer>
   96802:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   96806:	00 00 80 80 	lbi $r0,[$r1+#0x80]
   9680a:	e6 14       	slti45 $r0,#20
   9680c:	e8 25       	beqzs8 96856 <SM_Slave_f4_PKE_handler+0xb4>
   9680e:	50 00 80 20 	addi $r0,$r1,#32
   96812:	fa 20       	movpi45 $r1,#0x10
   96814:	49 ff fb 92 	jal 95f38 <sm_hal_get_random_number>
   96818:	38 83 9a 02 	lw $r8,[$r7+($r6<<#0x2)]
   9681c:	00 04 00 80 	lbi $r0,[$r8+#0x80]
   96820:	9c 01       	addi333 $r0,$r0,#1
   96822:	96 00       	zeb33 $r0,$r0
   96824:	10 04 00 80 	sbi $r0,[$r8+#0x80]
   96828:	3c 9d f1 a0 	lwi.gp $r9,[+#-14720]
   9682c:	50 14 00 b4 	addi $r1,$r8,#180
   96830:	49 00 0f 52 	jal 986d4 <SM_Common_GetRi>
   96834:	80 80       	mov55 $r4,$r0
   96836:	80 29       	mov55 $r1,$r9
   96838:	80 06       	mov55 $r0,$r6
   9683a:	50 24 00 40 	addi $r2,$r8,#64
   9683e:	50 34 00 20 	addi $r3,$r8,#32
   96842:	46 50 00 96 	sethi $r5,#0x96
   96846:	58 52 87 a2 	ori $r5,$r5,#0x7a2
   9684a:	49 ff f5 3c 	jal 952c2 <f4>
   9684e:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   96852:	84 22       	movi55 $r1,#2
   96854:	d5 0d       	j8 9686e <SM_Slave_f4_PKE_handler+0xcc>
   96856:	84 09       	movi55 $r0,#9
   96858:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   9685a:	80 06       	mov55 $r0,$r6
   9685c:	49 ff ff 6a 	jal 96730 <SM_Slave_f5>
   96860:	d5 08       	j8 96870 <SM_Slave_f4_PKE_handler+0xce>
   96862:	fa 40       	movpi45 $r2,#0x10
   96864:	49 ff cb f2 	jal 90048 <memcpy>
   96868:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   9686c:	84 23       	movi55 $r1,#3
   9686e:	ae 47       	sbi333 $r1,[$r0+#0x7]
   96870:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00096872 <SM_Slave_TKValueOOB>:
   96872:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96874:	97 80       	zeb33 $r6,$r0
   96876:	80 06       	mov55 $r0,$r6
   96878:	84 22       	movi55 $r1,#2
   9687a:	49 ff fb 06 	jal 95e86 <sm_hal_infom_passkey_input_req>
   9687e:	3e 0f c9 c0 	addi.gp $r0,#-13888
   96882:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   96886:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   9688a:	58 10 80 04 	ori $r1,$r1,#0x4
   9688e:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   96892:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096894 <SM_Slave_TKValuePasskeyInput>:
   96894:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96896:	97 80       	zeb33 $r6,$r0
   96898:	80 06       	mov55 $r0,$r6
   9689a:	84 21       	movi55 $r1,#1
   9689c:	49 ff fa f5 	jal 95e86 <sm_hal_infom_passkey_input_req>
   968a0:	3e 0f c9 c0 	addi.gp $r0,#-13888
   968a4:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   968a8:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   968ac:	58 10 80 04 	ori $r1,$r1,#0x4
   968b0:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   968b4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000968b6 <SM_Slave_Legacy_GenConfirm>:
   968b6:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   968b8:	97 c0       	zeb33 $r7,$r0
   968ba:	fa 00       	movpi45 $r0,#0x10
   968bc:	81 21       	mov55 $r9,$r1
   968be:	49 00 1f 8b 	jal 9a7d4 <malloc>
   968c2:	80 c0       	mov55 $r6,$r0
   968c4:	c0 34       	beqz38 $r0,9692c <SM_Slave_Legacy_GenConfirm+0x76>
   968c6:	46 00 00 a0 	sethi $r0,#0xa0
   968ca:	58 00 01 58 	ori $r0,$r0,#0x158
   968ce:	49 00 38 48 	jal 9d95e <puts>
   968d2:	84 20       	movi55 $r1,#0
   968d4:	fa 40       	movpi45 $r2,#0x10
   968d6:	80 06       	mov55 $r0,$r6
   968d8:	49 ff cb d8 	jal 90088 <memset>
   968dc:	80 07       	mov55 $r0,$r7
   968de:	49 ff e1 6d 	jal 92bb8 <ble_gap_link_GetAttr_BdAddrType>
   968e2:	3e 8f c9 c0 	addi.gp $r8,#-13888
   968e6:	ae 30       	sbi333 $r0,[$r6+#0x0]
   968e8:	80 07       	mov55 $r0,$r7
   968ea:	49 ff fb 38 	jal 95f5a <sm_hal_get_local_addr_Type>
   968ee:	38 14 1e 02 	lw $r1,[$r8+($r7<<#0x2)]
   968f2:	ae 31       	sbi333 $r0,[$r6+#0x1]
   968f4:	84 47       	movi55 $r2,#7
   968f6:	9c 32       	addi333 $r0,$r6,#2
   968f8:	49 ff cb a8 	jal 90048 <memcpy>
   968fc:	38 14 1e 02 	lw $r1,[$r8+($r7<<#0x2)]
   96900:	84 47       	movi55 $r2,#7
   96902:	8c 28       	addi45 $r1,#8
   96904:	50 03 00 09 	addi $r0,$r6,#9
   96908:	49 ff cb a0 	jal 90048 <memcpy>
   9690c:	38 34 1e 02 	lw $r3,[$r8+($r7<<#0x2)]
   96910:	80 07       	mov55 $r0,$r7
   96912:	50 11 80 a4 	addi $r1,$r3,#164
   96916:	80 49       	mov55 $r2,$r9
   96918:	80 66       	mov55 $r3,$r6
   9691a:	46 40 00 96 	sethi $r4,#0x96
   9691e:	58 42 09 b0 	ori $r4,$r4,#0x9b0
   96922:	49 ff f5 a0 	jal 95462 <c1_1>
   96926:	80 06       	mov55 $r0,$r6
   96928:	49 00 1e dd 	jal 9a6e2 <free>
   9692c:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009692e <SM_Slave_TKValuePasskeyDisplay>:
   9692e:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   96930:	50 8f 80 04 	addi $r8,$sp,#4
   96934:	97 80       	zeb33 $r6,$r0
   96936:	84 24       	movi55 $r1,#4
   96938:	80 08       	mov55 $r0,$r8
   9693a:	49 ff fa ff 	jal 95f38 <sm_hal_get_random_number>
   9693e:	f1 01       	lwi37.sp $r1,[+#0x4]
   96940:	46 00 00 f4 	sethi $r0,#0xf4
   96944:	58 00 02 40 	ori $r0,$r0,#0x240
   96948:	40 10 80 17 	divr $r1,$r0,$r1,$r0
   9694c:	3e 7f c9 c0 	addi.gp $r7,#-13888
   96950:	38 23 9a 02 	lw $r2,[$r7+($r6<<#0x2)]
   96954:	84 20       	movi55 $r1,#0
   96956:	f0 81       	swi37.sp $r0,[+#0x4]
   96958:	00 04 00 02 	lbi $r0,[$r8+#0x2]
   9695c:	10 01 00 a6 	sbi $r0,[$r2+#0xa6]
   96960:	00 04 00 01 	lbi $r0,[$r8+#0x1]
   96964:	10 01 00 a5 	sbi $r0,[$r2+#0xa5]
   96968:	80 06       	mov55 $r0,$r6
   9696a:	00 84 00 00 	lbi $r8,[$r8+#0x0]
   9696e:	10 81 00 a4 	sbi $r8,[$r2+#0xa4]
   96972:	50 21 00 a4 	addi $r2,$r2,#164
   96976:	49 ff fa 99 	jal 95ea8 <sm_hal_infom_passkey_display_req>
   9697a:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   9697e:	80 06       	mov55 $r0,$r6
   96980:	50 10 80 20 	addi $r1,$r1,#32
   96984:	49 ff ff 99 	jal 968b6 <SM_Slave_Legacy_GenConfirm>
   96988:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   9698c:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   96990:	58 10 80 04 	ori $r1,$r1,#0x4
   96994:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   96998:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

0009699a <SM_Slave_TKValueJustWork>:
   9699a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9699c:	3e 1f c9 c0 	addi.gp $r1,#-13888
   969a0:	96 00       	zeb33 $r0,$r0
   969a2:	38 10 82 02 	lw $r1,[$r1+($r0<<#0x2)]
   969a6:	50 10 80 20 	addi $r1,$r1,#32
   969aa:	49 ff ff 86 	jal 968b6 <SM_Slave_Legacy_GenConfirm>
   969ae:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000969b0 <SM_Slave_c1_1_handler>:
   969b0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   969b2:	81 00       	mov55 $r8,$r0
   969b4:	fa 00       	movpi45 $r0,#0x10
   969b6:	97 d0       	zeb33 $r7,$r2
   969b8:	49 00 1f 0e 	jal 9a7d4 <malloc>
   969bc:	80 c0       	mov55 $r6,$r0
   969be:	c0 2f       	beqz38 $r0,96a1c <SM_Slave_c1_1_handler+0x6c>
   969c0:	46 00 00 a0 	sethi $r0,#0xa0
   969c4:	58 00 01 74 	ori $r0,$r0,#0x174
   969c8:	49 00 37 cb 	jal 9d95e <puts>
   969cc:	80 07       	mov55 $r0,$r7
   969ce:	49 ff fa ce 	jal 95f6a <sm_hal_get_local_addr>
   969d2:	80 20       	mov55 $r1,$r0
   969d4:	84 46       	movi55 $r2,#6
   969d6:	80 06       	mov55 $r0,$r6
   969d8:	49 ff cb 38 	jal 90048 <memcpy>
   969dc:	80 07       	mov55 $r0,$r7
   969de:	49 ff e0 e3 	jal 92ba4 <ble_gap_link_GetAttr_BdAddr>
   969e2:	80 20       	mov55 $r1,$r0
   969e4:	84 46       	movi55 $r2,#6
   969e6:	9c 36       	addi333 $r0,$r6,#6
   969e8:	49 ff cb 30 	jal 90048 <memcpy>
   969ec:	84 20       	movi55 $r1,#0
   969ee:	84 44       	movi55 $r2,#4
   969f0:	50 03 00 0c 	addi $r0,$r6,#12
   969f4:	49 ff cb 4a 	jal 90088 <memset>
   969f8:	3e 0f c9 c0 	addi.gp $r0,#-13888
   969fc:	38 10 1e 02 	lw $r1,[$r0+($r7<<#0x2)]
   96a00:	80 48       	mov55 $r2,$r8
   96a02:	80 07       	mov55 $r0,$r7
   96a04:	50 10 80 a4 	addi $r1,$r1,#164
   96a08:	80 66       	mov55 $r3,$r6
   96a0a:	46 40 00 96 	sethi $r4,#0x96
   96a0e:	58 42 0a 1e 	ori $r4,$r4,#0xa1e
   96a12:	49 ff f4 fd 	jal 9540c <c1_2>
   96a16:	80 06       	mov55 $r0,$r6
   96a18:	49 00 1e 65 	jal 9a6e2 <free>
   96a1c:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096a1e <SM_Slave_c1_2_handler>:
   96a1e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   96a20:	3e 7f c9 c0 	addi.gp $r7,#-13888
   96a24:	97 90       	zeb33 $r6,$r2
   96a26:	80 20       	mov55 $r1,$r0
   96a28:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   96a2c:	a6 87       	lbi333 $r2,[$r0+#0x7]
   96a2e:	5a 28 02 0b 	bnec $r2,#2,96a44 <SM_Slave_c1_2_handler+0x26>
   96a32:	50 00 00 30 	addi $r0,$r0,#48
   96a36:	fa 40       	movpi45 $r2,#0x10
   96a38:	49 ff cb 08 	jal 90048 <memcpy>
   96a3c:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   96a40:	84 23       	movi55 $r1,#3
   96a42:	d5 0e       	j8 96a5e <SM_Slave_c1_2_handler+0x40>
   96a44:	5a 28 03 0f 	bnec $r2,#3,96a62 <SM_Slave_c1_2_handler+0x44>
   96a48:	80 06       	mov55 $r0,$r6
   96a4a:	49 ff fb 5f 	jal 96108 <SM_Protocol_PairingConfirm>
   96a4e:	80 06       	mov55 $r0,$r6
   96a50:	44 10 75 30 	movi $r1,#30000
   96a54:	49 ff fa 50 	jal 95ef4 <sm_hal_set_timer>
   96a58:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   96a5c:	84 24       	movi55 $r1,#4
   96a5e:	ae 47       	sbi333 $r1,[$r0+#0x7]
   96a60:	d5 28       	j8 96ab0 <SM_Slave_c1_2_handler+0x92>
   96a62:	5a 28 05 27 	bnec $r2,#5,96ab0 <SM_Slave_c1_2_handler+0x92>
   96a66:	50 00 00 30 	addi $r0,$r0,#48
   96a6a:	fa 40       	movpi45 $r2,#0x10
   96a6c:	49 00 0e 23 	jal 986b2 <SM_Common_ValueCompare>
   96a70:	c8 06       	bnez38 $r0,96a7c <SM_Slave_c1_2_handler+0x5e>
   96a72:	80 06       	mov55 $r0,$r6
   96a74:	84 24       	movi55 $r1,#4
   96a76:	49 ff f0 56 	jal 94b22 <SM_PairingFailed>
   96a7a:	d5 1b       	j8 96ab0 <SM_Slave_c1_2_handler+0x92>
   96a7c:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   96a80:	80 06       	mov55 $r0,$r6
   96a82:	50 10 80 20 	addi $r1,$r1,#32
   96a86:	49 ff fb 27 	jal 960d4 <SM_Protocol_PairingRandom>
   96a8a:	80 06       	mov55 $r0,$r6
   96a8c:	44 10 75 30 	movi $r1,#30000
   96a90:	49 ff fa 32 	jal 95ef4 <sm_hal_set_timer>
   96a94:	38 33 9a 02 	lw $r3,[$r7+($r6<<#0x2)]
   96a98:	80 06       	mov55 $r0,$r6
   96a9a:	50 11 80 a4 	addi $r1,$r3,#164
   96a9e:	50 21 80 20 	addi $r2,$r3,#32
   96aa2:	46 40 00 96 	sethi $r4,#0x96
   96aa6:	58 42 0d fe 	ori $r4,$r4,#0xdfe
   96aaa:	8c 70       	addi45 $r3,#16
   96aac:	49 ff f4 83 	jal 953b2 <s1>
   96ab0:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096ab2 <SM_Slave_SigningInformationHandler>:
   96ab2:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   96ab4:	97 c0       	zeb33 $r7,$r0
   96ab6:	a6 17       	lbi333 $r0,[$r2+#0x7]
   96ab8:	5a 08 33 0f 	bnec $r0,#51,96ad6 <SM_Slave_SigningInformationHandler+0x24>
   96abc:	84 c0       	movi55 $r6,#0
   96abe:	14 61 00 25 	swi $r6,[$r2+#0x94]
   96ac2:	50 01 00 d4 	addi $r0,$r2,#212
   96ac6:	fa 40       	movpi45 $r2,#0x10
   96ac8:	49 ff ca c0 	jal 90048 <memcpy>
   96acc:	80 07       	mov55 $r0,$r7
   96ace:	84 21       	movi55 $r1,#1
   96ad0:	80 46       	mov55 $r2,$r6
   96ad2:	49 ff ef ea 	jal 94aa6 <SM_FinishPairing>
   96ad6:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096ad8 <SM_Slave_PairingFailedHandler>:
   96ad8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96ada:	a6 88       	lbi333 $r2,[$r1+#0x0]
   96adc:	44 3f ff 80 	movi $r3,#-128
   96ae0:	fe 9f       	or33 $r2,$r3
   96ae2:	96 90       	zeb33 $r2,$r2
   96ae4:	ae 88       	sbi333 $r2,[$r1+#0x0]
   96ae6:	96 00       	zeb33 $r0,$r0
   96ae8:	84 20       	movi55 $r1,#0
   96aea:	49 ff ef de 	jal 94aa6 <SM_FinishPairing>
   96aee:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096af0 <SM_Slave_IdentityAddressInformationHandler>:
   96af0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96af2:	97 80       	zeb33 $r6,$r0
   96af4:	a6 17       	lbi333 $r0,[$r2+#0x7]
   96af6:	5a 08 32 15 	bnec $r0,#50,96b20 <SM_Slave_IdentityAddressInformationHandler+0x30>
   96afa:	08 00 80 01 	lbi.bi $r0,[$r1],#0x1
   96afe:	10 01 00 9f 	sbi $r0,[$r2+#0x9f]
   96b02:	50 01 00 98 	addi $r0,$r2,#152
   96b06:	84 46       	movi55 $r2,#6
   96b08:	49 ff ca a0 	jal 90048 <memcpy>
   96b0c:	3e 0f c9 c0 	addi.gp $r0,#-13888
   96b10:	38 20 1a 02 	lw $r2,[$r0+($r6<<#0x2)]
   96b14:	80 26       	mov55 $r1,$r6
   96b16:	00 21 00 a2 	lbi $r2,[$r2+#0xa2]
   96b1a:	84 04       	movi55 $r0,#4
   96b1c:	49 ff f0 8f 	jal 94c3a <SM_WaitKeyDistribution>
   96b20:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096b22 <SM_Slave_MasterIdentificationHandler>:
   96b22:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96b24:	97 80       	zeb33 $r6,$r0
   96b26:	a6 17       	lbi333 $r0,[$r2+#0x7]
   96b28:	5a 08 31 11 	bnec $r0,#49,96b4a <SM_Slave_MasterIdentificationHandler+0x28>
   96b2c:	50 01 01 0e 	addi $r0,$r2,#270
   96b30:	84 4a       	movi55 $r2,#10
   96b32:	49 ff ca 8b 	jal 90048 <memcpy>
   96b36:	3e 0f c9 c0 	addi.gp $r0,#-13888
   96b3a:	38 20 1a 02 	lw $r2,[$r0+($r6<<#0x2)]
   96b3e:	80 26       	mov55 $r1,$r6
   96b40:	00 21 00 a2 	lbi $r2,[$r2+#0xa2]
   96b44:	84 02       	movi55 $r0,#2
   96b46:	49 ff f0 7a 	jal 94c3a <SM_WaitKeyDistribution>
   96b4a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096b4c <SM_Slave_PairingRandomHandler>:
   96b4c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   96b4e:	97 80       	zeb33 $r6,$r0
   96b50:	a6 17       	lbi333 $r0,[$r2+#0x7]
   96b52:	81 21       	mov55 $r9,$r1
   96b54:	80 e2       	mov55 $r7,$r2
   96b56:	85 e4       	movi55 $r15,#4
   96b58:	4c 07 c0 5e 	bne $r0,$r15,96c14 <SM_Slave_PairingRandomHandler+0xc8>
   96b5c:	80 06       	mov55 $r0,$r6
   96b5e:	50 83 80 10 	addi $r8,$r7,#16
   96b62:	49 ff f9 c4 	jal 95eea <sm_hal_release_timer>
   96b66:	fa 40       	movpi45 $r2,#0x10
   96b68:	fd 04       	movd44 $r0,$r8
   96b6a:	49 ff ca 6f 	jal 90048 <memcpy>
   96b6e:	00 23 80 0f 	lbi $r2,[$r7+#0xf]
   96b72:	e6 44       	slti45 $r2,#4
   96b74:	e8 06       	beqzs8 96b80 <SM_Slave_PairingRandomHandler+0x34>
   96b76:	80 06       	mov55 $r0,$r6
   96b78:	80 28       	mov55 $r1,$r8
   96b7a:	49 ff fe 9e 	jal 968b6 <SM_Slave_Legacy_GenConfirm>
   96b7e:	d5 1e       	j8 96bba <SM_Slave_PairingRandomHandler+0x6e>
   96b80:	9e 15       	subi333 $r0,$r2,#5
   96b82:	96 00       	zeb33 $r0,$r0
   96b84:	e6 02       	slti45 $r0,#2
   96b86:	e8 1d       	beqzs8 96bc0 <SM_Slave_PairingRandomHandler+0x74>
   96b88:	3e 0f c9 c0 	addi.gp $r0,#-13888
   96b8c:	38 80 1a 02 	lw $r8,[$r0+($r6<<#0x2)]
   96b90:	3c 9d f1 a0 	lwi.gp $r9,[+#-14720]
   96b94:	00 04 00 80 	lbi $r0,[$r8+#0x80]
   96b98:	50 14 00 b4 	addi $r1,$r8,#180
   96b9c:	49 00 0d 9c 	jal 986d4 <SM_Common_GetRi>
   96ba0:	80 80       	mov55 $r4,$r0
   96ba2:	50 14 00 40 	addi $r1,$r8,#64
   96ba6:	80 06       	mov55 $r0,$r6
   96ba8:	80 49       	mov55 $r2,$r9
   96baa:	50 34 00 10 	addi $r3,$r8,#16
   96bae:	46 50 00 96 	sethi $r5,#0x96
   96bb2:	58 52 87 a2 	ori $r5,$r5,#0x7a2
   96bb6:	49 ff f3 86 	jal 952c2 <f4>
   96bba:	84 05       	movi55 $r0,#5
   96bbc:	ae 3f       	sbi333 $r0,[$r7+#0x7]
   96bbe:	d5 2b       	j8 96c14 <SM_Slave_PairingRandomHandler+0xc8>
   96bc0:	50 13 80 20 	addi $r1,$r7,#32
   96bc4:	5a 28 08 1b 	bnec $r2,#8,96bfa <SM_Slave_PairingRandomHandler+0xae>
   96bc8:	80 06       	mov55 $r0,$r6
   96bca:	49 ff fa 85 	jal 960d4 <SM_Protocol_PairingRandom>
   96bce:	84 07       	movi55 $r0,#7
   96bd0:	ae 3f       	sbi333 $r0,[$r7+#0x7]
   96bd2:	3e 0f c9 c0 	addi.gp $r0,#-13888
   96bd6:	38 40 1a 02 	lw $r4,[$r0+($r6<<#0x2)]
   96bda:	3c 2d f1 a0 	lwi.gp $r2,[+#-14720]
   96bde:	50 12 00 40 	addi $r1,$r4,#64
   96be2:	50 32 00 10 	addi $r3,$r4,#16
   96be6:	80 06       	mov55 $r0,$r6
   96be8:	50 42 00 20 	addi $r4,$r4,#32
   96bec:	46 50 00 96 	sethi $r5,#0x96
   96bf0:	58 52 85 f6 	ori $r5,$r5,#0x5f6
   96bf4:	49 ff f2 32 	jal 95058 <g2>
   96bf8:	d5 0e       	j8 96c14 <SM_Slave_PairingRandomHandler+0xc8>
   96bfa:	80 06       	mov55 $r0,$r6
   96bfc:	49 ff fa 6c 	jal 960d4 <SM_Protocol_PairingRandom>
   96c00:	80 06       	mov55 $r0,$r6
   96c02:	44 10 75 30 	movi $r1,#30000
   96c06:	49 ff f9 77 	jal 95ef4 <sm_hal_set_timer>
   96c0a:	84 09       	movi55 $r0,#9
   96c0c:	ae 3f       	sbi333 $r0,[$r7+#0x7]
   96c0e:	fd 03       	movd44 $r0,$r6
   96c10:	49 ff fd 90 	jal 96730 <SM_Slave_f5>
   96c14:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00096c16 <SM_Slave_PairingRequestHandler>:
   96c16:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   96c18:	97 80       	zeb33 $r6,$r0
   96c1a:	81 01       	mov55 $r8,$r1
   96c1c:	46 00 00 a0 	sethi $r0,#0xa0
   96c20:	58 00 01 8c 	ori $r0,$r0,#0x18c
   96c24:	80 26       	mov55 $r1,$r6
   96c26:	49 00 1e 58 	jal 9a8d6 <printf>
   96c2a:	3e 0f c9 c0 	addi.gp $r0,#-13888
   96c2e:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   96c32:	c8 25       	bnez38 $r0,96c7c <SM_Slave_PairingRequestHandler+0x66>
   96c34:	80 06       	mov55 $r0,$r6
   96c36:	49 00 0d 65 	jal 98700 <SM_Common_AllocPairingData>
   96c3a:	80 e0       	mov55 $r7,$r0
   96c3c:	c0 20       	beqz38 $r0,96c7c <SM_Slave_PairingRequestHandler+0x66>
   96c3e:	3c 23 e9 6c 	lhi.gp $r2,[+#-11560]
   96c42:	40 11 18 0e 	sra $r1,$r2,$r6
   96c46:	96 4c       	xlsb33 $r1,$r1
   96c48:	c1 0b       	beqz38 $r1,96c5e <SM_Slave_PairingRequestHandler+0x48>
   96c4a:	84 21       	movi55 $r1,#1
   96c4c:	40 10 98 0c 	sll $r1,$r1,$r6
   96c50:	fe 4b       	not33 $r1,$r1
   96c52:	fe 8e       	and33 $r2,$r1
   96c54:	3c 2b e9 6c 	shi.gp $r2,[+#-11560]
   96c58:	80 06       	mov55 $r0,$r6
   96c5a:	49 ff f9 48 	jal 95eea <sm_hal_release_timer>
   96c5e:	80 07       	mov55 $r0,$r7
   96c60:	84 21       	movi55 $r1,#1
   96c62:	18 10 00 01 	sbi.bi $r1,[$r0],#0x1
   96c66:	84 46       	movi55 $r2,#6
   96c68:	80 28       	mov55 $r1,$r8
   96c6a:	49 ff c9 ef 	jal 90048 <memcpy>
   96c6e:	3e 0f c9 c0 	addi.gp $r0,#-13888
   96c72:	38 70 1a 0a 	sw $r7,[$r0+($r6<<#0x2)]
   96c76:	80 06       	mov55 $r0,$r6
   96c78:	49 ff f9 2b 	jal 95ece <sm_hal_infom_set_sec_param_req>
   96c7c:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096c7e <SM_Slave_L2capEventHandler>:
   96c7e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96c80:	97 88       	zeb33 $r6,$r1
   96c82:	96 00       	zeb33 $r0,$r0
   96c84:	5a 68 01 08 	bnec $r6,#1,96c94 <SM_Slave_L2capEventHandler+0x16>
   96c88:	80 22       	mov55 $r1,$r2
   96c8a:	84 40       	movi55 $r2,#0
   96c8c:	49 ff ff c5 	jal 96c16 <SM_Slave_PairingRequestHandler>
   96c90:	80 06       	mov55 $r0,$r6
   96c92:	d5 19       	j8 96cc4 <SM_Slave_L2capEventHandler+0x46>
   96c94:	9e 72       	subi333 $r1,$r6,#2
   96c96:	96 48       	zeb33 $r1,$r1
   96c98:	e6 2d       	slti45 $r1,#13
   96c9a:	e8 10       	beqzs8 96cba <SM_Slave_L2capEventHandler+0x3c>
   96c9c:	3e 1f c9 c0 	addi.gp $r1,#-13888
   96ca0:	38 30 82 02 	lw $r3,[$r1+($r0<<#0x2)]
   96ca4:	cb 03       	bnez38 $r3,96caa <SM_Slave_L2capEventHandler+0x2c>
   96ca6:	80 03       	mov55 $r0,$r3
   96ca8:	d5 0e       	j8 96cc4 <SM_Slave_L2capEventHandler+0x46>
   96caa:	3e 1f c1 ac 	addi.gp $r1,#-15956
   96cae:	38 40 9a 02 	lw $r4,[$r1+($r6<<#0x2)]
   96cb2:	80 22       	mov55 $r1,$r2
   96cb4:	80 43       	mov55 $r2,$r3
   96cb6:	dd 24       	jral5 $r4
   96cb8:	d5 05       	j8 96cc2 <SM_Slave_L2capEventHandler+0x44>
   96cba:	80 22       	mov55 $r1,$r2
   96cbc:	84 40       	movi55 $r2,#0
   96cbe:	49 ff fc 94 	jal 965e6 <SM_Slave_UnsupportedHandler>
   96cc2:	84 01       	movi55 $r0,#1
   96cc4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096cc6 <SM_Slave_Init>:
   96cc6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96cc8:	84 01       	movi55 $r0,#1
   96cca:	46 10 00 96 	sethi $r1,#0x96
   96cce:	58 10 8c 7e 	ori $r1,$r1,#0xc7e
   96cd2:	49 ff f9 55 	jal 95f7c <SM_Protocol_RegisterCallback>
   96cd6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096cd8 <SM_Slave_EncryptionChange>:
   96cd8:	fc 51       	push25 $r10,#0x88    ! {$r6~$r10, $fp, $gp, $lp}
   96cda:	97 80       	zeb33 $r6,$r0
   96cdc:	81 21       	mov55 $r9,$r1
   96cde:	80 06       	mov55 $r0,$r6
   96ce0:	49 ff f9 05 	jal 95eea <sm_hal_release_timer>
   96ce4:	00 84 80 00 	lbi $r8,[$r9+#0x0]
   96ce8:	4e 83 00 3d 	bnez $r8,96d62 <SM_Slave_EncryptionChange+0x8a>
   96cec:	00 14 80 03 	lbi $r1,[$r9+#0x3]
   96cf0:	5a 18 01 39 	bnec $r1,#1,96d62 <SM_Slave_EncryptionChange+0x8a>
   96cf4:	80 06       	mov55 $r0,$r6
   96cf6:	49 ff f9 26 	jal 95f42 <sm_hal_set_link_encrypted>
   96cfa:	3e 0f c9 c0 	addi.gp $r0,#-13888
   96cfe:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   96d02:	c0 1d       	beqz38 $r0,96d3c <SM_Slave_EncryptionChange+0x64>
   96d04:	00 10 00 a3 	lbi $r1,[$r0+#0xa3]
   96d08:	00 00 00 0f 	lbi $r0,[$r0+#0xf]
   96d0c:	40 84 04 06 	slt $r8,$r8,$r1
   96d10:	e6 04       	slti45 $r0,#4
   96d12:	e9 07       	bnezs8 96d20 <SM_Slave_EncryptionChange+0x48>
   96d14:	58 84 00 04 	ori $r8,$r8,#0x4
   96d18:	54 84 00 ff 	andi $r8,$r8,#0xff
   96d1c:	84 e4       	movi55 $r7,#4
   96d1e:	d5 07       	j8 96d2c <SM_Slave_EncryptionChange+0x54>
   96d20:	c8 03       	bnez38 $r0,96d26 <SM_Slave_EncryptionChange+0x4e>
   96d22:	84 e2       	movi55 $r7,#2
   96d24:	d5 04       	j8 96d2c <SM_Slave_EncryptionChange+0x54>
   96d26:	58 84 00 04 	ori $r8,$r8,#0x4
   96d2a:	84 e3       	movi55 $r7,#3
   96d2c:	80 06       	mov55 $r0,$r6
   96d2e:	49 ff ef 08 	jal 94b3e <SM_StartKeyDistribution>
   96d32:	80 06       	mov55 $r0,$r6
   96d34:	80 28       	mov55 $r1,$r8
   96d36:	49 ff f9 0c 	jal 95f4e <sm_hal_set_link_authenticated>
   96d3a:	d5 19       	j8 96d6c <SM_Slave_EncryptionChange+0x94>
   96d3c:	80 06       	mov55 $r0,$r6
   96d3e:	49 ff df 33 	jal 92ba4 <ble_gap_link_GetAttr_BdAddr>
   96d42:	80 3f       	mov55 $r1,$sp
   96d44:	49 ff f5 36 	jal 957b0 <sm_hal_flash_load_data>
   96d48:	00 0f 80 11 	lbi $r0,[$sp+#0x11]
   96d4c:	54 10 00 08 	andi $r1,$r0,#0x8
   96d50:	c1 03       	beqz38 $r1,96d56 <SM_Slave_EncryptionChange+0x7e>
   96d52:	84 e4       	movi55 $r7,#4
   96d54:	d5 0c       	j8 96d6c <SM_Slave_EncryptionChange+0x94>
   96d56:	96 16       	bmski33 $r0,#0x2
   96d58:	c8 03       	bnez38 $r0,96d5e <SM_Slave_EncryptionChange+0x86>
   96d5a:	84 e2       	movi55 $r7,#2
   96d5c:	d5 08       	j8 96d6c <SM_Slave_EncryptionChange+0x94>
   96d5e:	84 e3       	movi55 $r7,#3
   96d60:	d5 06       	j8 96d6c <SM_Slave_EncryptionChange+0x94>
   96d62:	80 06       	mov55 $r0,$r6
   96d64:	84 20       	movi55 $r1,#0
   96d66:	49 ff f8 ee 	jal 95f42 <sm_hal_set_link_encrypted>
   96d6a:	84 e1       	movi55 $r7,#1
   96d6c:	00 24 80 00 	lbi $r2,[$r9+#0x0]
   96d70:	fd 03       	movd44 $r0,$r6
   96d72:	49 ff f8 63 	jal 95e38 <sm_hal_infom_conn_sec_update>
   96d76:	fc d1       	pop25 $r10,#0x88    ! {$r6~$r10, $fp, $gp, $lp}

00096d78 <SM_Slave_get_ltk_handler>:
   96d78:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   96d7a:	96 c8       	zeb33 $r3,$r1
   96d7c:	80 e0       	mov55 $r7,$r0
   96d7e:	97 90       	zeb33 $r6,$r2
   96d80:	cb 0e       	bnez38 $r3,96d9c <SM_Slave_get_ltk_handler+0x24>
   96d82:	46 00 00 a0 	sethi $r0,#0xa0
   96d86:	58 00 01 f4 	ori $r0,$r0,#0x1f4
   96d8a:	49 00 35 ea 	jal 9d95e <puts>
   96d8e:	80 06       	mov55 $r0,$r6
   96d90:	49 ff de df 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   96d94:	80 27       	mov55 $r1,$r7
   96d96:	49 ff f4 60 	jal 95656 <SM_CryptoTool_SendLTKReply>
   96d9a:	d5 0c       	j8 96db2 <SM_Slave_get_ltk_handler+0x3a>
   96d9c:	46 00 00 a0 	sethi $r0,#0xa0
   96da0:	58 00 02 10 	ori $r0,$r0,#0x210
   96da4:	49 00 35 dd 	jal 9d95e <puts>
   96da8:	80 06       	mov55 $r0,$r6
   96daa:	49 ff de d2 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   96dae:	49 ff f4 4a 	jal 95642 <SM_CryptoTool_SendLTKNegativeReply>
   96db2:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096db4 <SM_Slave_LTKRequestHandler>:
   96db4:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   96db6:	97 80       	zeb33 $r6,$r0
   96db8:	97 c8       	zeb33 $r7,$r1
   96dba:	80 06       	mov55 $r0,$r6
   96dbc:	49 ff de c9 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   96dc0:	c7 17       	beqz38 $r7,96dee <SM_Slave_LTKRequestHandler+0x3a>
   96dc2:	3e 1f c9 c0 	addi.gp $r1,#-13888
   96dc6:	38 10 9a 02 	lw $r1,[$r1+($r6<<#0x2)]
   96dca:	a6 8f       	lbi333 $r2,[$r1+#0x7]
   96dcc:	5a 28 0d 0c 	bnec $r2,#13,96de4 <SM_Slave_LTKRequestHandler+0x30>
   96dd0:	50 10 80 a4 	addi $r1,$r1,#164
   96dd4:	49 ff f4 41 	jal 95656 <SM_CryptoTool_SendLTKReply>
   96dd8:	80 06       	mov55 $r0,$r6
   96dda:	44 10 75 30 	movi $r1,#30000
   96dde:	49 ff f8 8b 	jal 95ef4 <sm_hal_set_timer>
   96de2:	d5 0c       	j8 96dfa <SM_Slave_LTKRequestHandler+0x46>
   96de4:	5a 28 05 0b 	bnec $r2,#5,96dfa <SM_Slave_LTKRequestHandler+0x46>
   96de8:	84 0d       	movi55 $r0,#13
   96dea:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   96dec:	d5 07       	j8 96dfa <SM_Slave_LTKRequestHandler+0x46>
   96dee:	49 ff f4 2a 	jal 95642 <SM_CryptoTool_SendLTKNegativeReply>
   96df2:	fd 03       	movd44 $r0,$r6
   96df4:	84 43       	movi55 $r2,#3
   96df6:	49 ff ee 58 	jal 94aa6 <SM_FinishPairing>
   96dfa:	84 01       	movi55 $r0,#1
   96dfc:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096dfe <SM_Slave_s1_handler>:
   96dfe:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   96e00:	3e 7f c9 c0 	addi.gp $r7,#-13888
   96e04:	97 90       	zeb33 $r6,$r2
   96e06:	38 33 9a 02 	lw $r3,[$r7+($r6<<#0x2)]
   96e0a:	80 20       	mov55 $r1,$r0
   96e0c:	a6 1f       	lbi333 $r0,[$r3+#0x7]
   96e0e:	5a 08 05 0d 	bnec $r0,#5,96e28 <SM_Slave_s1_handler+0x2a>
   96e12:	00 21 80 a0 	lbi $r2,[$r3+#0xa0]
   96e16:	50 01 80 a4 	addi $r0,$r3,#164
   96e1a:	49 ff c9 17 	jal 90048 <memcpy>
   96e1e:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   96e22:	84 2d       	movi55 $r1,#13
   96e24:	ae 47       	sbi333 $r1,[$r0+#0x7]
   96e26:	d5 0d       	j8 96e40 <SM_Slave_s1_handler+0x42>
   96e28:	5a 08 0d 0c 	bnec $r0,#13,96e40 <SM_Slave_s1_handler+0x42>
   96e2c:	00 21 80 a0 	lbi $r2,[$r3+#0xa0]
   96e30:	50 01 80 a4 	addi $r0,$r3,#164
   96e34:	49 ff c9 0a 	jal 90048 <memcpy>
   96e38:	80 06       	mov55 $r0,$r6
   96e3a:	84 21       	movi55 $r1,#1
   96e3c:	49 ff ff bc 	jal 96db4 <SM_Slave_LTKRequestHandler>
   96e40:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00096e42 <SM_Slave_LTKRequest>:
   96e42:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96e44:	97 80       	zeb33 $r6,$r0
   96e46:	3e 0f c9 c0 	addi.gp $r0,#-13888
   96e4a:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   96e4e:	c8 0c       	bnez38 $r0,96e66 <SM_Slave_LTKRequest+0x24>
   96e50:	50 00 80 0a 	addi $r0,$r1,#10
   96e54:	80 46       	mov55 $r2,$r6
   96e56:	9c 4a       	addi333 $r1,$r1,#2
   96e58:	46 30 00 96 	sethi $r3,#0x96
   96e5c:	58 31 8d 78 	ori $r3,$r3,#0xd78
   96e60:	49 ff f5 9f 	jal 9599e <sm_hal_flash_get_ltk>
   96e64:	d5 08       	j8 96e74 <SM_Slave_LTKRequest+0x32>
   96e66:	80 06       	mov55 $r0,$r6
   96e68:	49 ff f8 41 	jal 95eea <sm_hal_release_timer>
   96e6c:	80 06       	mov55 $r0,$r6
   96e6e:	84 21       	movi55 $r1,#1
   96e70:	49 ff ff a2 	jal 96db4 <SM_Slave_LTKRequestHandler>
   96e74:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096e76 <SM_Master_SC_rbValueJustWork>:
   96e76:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96e78:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096e7a <SM_Master_f5_mac_handler>:
   96e7a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96e7c:	80 20       	mov55 $r1,$r0
   96e7e:	96 90       	zeb33 $r2,$r2
   96e80:	3e 0f c9 c0 	addi.gp $r0,#-13888
   96e84:	38 00 0a 02 	lw $r0,[$r0+($r2<<#0x2)]
   96e88:	c0 07       	beqz38 $r0,96e96 <SM_Master_f5_mac_handler+0x1c>
   96e8a:	c1 06       	beqz38 $r1,96e96 <SM_Master_f5_mac_handler+0x1c>
   96e8c:	50 00 00 80 	addi $r0,$r0,#128
   96e90:	fa 40       	movpi45 $r2,#0x10
   96e92:	49 ff c8 db 	jal 90048 <memcpy>
   96e96:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096e98 <SM_Master_IdentityInformationHandler>:
   96e98:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96e9a:	a6 17       	lbi333 $r0,[$r2+#0x7]
   96e9c:	5a 08 32 07 	bnec $r0,#50,96eaa <SM_Master_IdentityInformationHandler+0x12>
   96ea0:	50 01 00 f4 	addi $r0,$r2,#244
   96ea4:	fa 40       	movpi45 $r2,#0x10
   96ea6:	49 ff c8 d1 	jal 90048 <memcpy>
   96eaa:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096eac <SM_Master_EncryptionInformationHandler>:
   96eac:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   96eae:	a6 17       	lbi333 $r0,[$r2+#0x7]
   96eb0:	5a 08 31 07 	bnec $r0,#49,96ebe <SM_Master_EncryptionInformationHandler+0x12>
   96eb4:	50 01 00 b4 	addi $r0,$r2,#180
   96eb8:	fa 40       	movpi45 $r2,#0x10
   96eba:	49 ff c8 c7 	jal 90048 <memcpy>
   96ebe:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00096ec0 <SM_Master_PairingDHKeyCheckHandler>:
   96ec0:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   96ec2:	54 80 00 ff 	andi $r8,$r0,#0xff
   96ec6:	fa 11       	movpi45 $r0,#0x21
   96ec8:	81 21       	mov55 $r9,$r1
   96eca:	80 e2       	mov55 $r7,$r2
   96ecc:	49 00 1c 84 	jal 9a7d4 <malloc>
   96ed0:	80 c0       	mov55 $r6,$r0
   96ed2:	c0 47       	beqz38 $r0,96f60 <SM_Master_PairingDHKeyCheckHandler+0xa0>
   96ed4:	80 29       	mov55 $r1,$r9
   96ed6:	fa 40       	movpi45 $r2,#0x10
   96ed8:	50 03 80 40 	addi $r0,$r7,#64
   96edc:	49 ff c8 b6 	jal 90048 <memcpy>
   96ee0:	50 93 00 10 	addi $r9,$r6,#16
   96ee4:	50 13 80 b4 	addi $r1,$r7,#180
   96ee8:	fa 40       	movpi45 $r2,#0x10
   96eea:	80 06       	mov55 $r0,$r6
   96eec:	49 ff c8 ae 	jal 90048 <memcpy>
   96ef0:	51 c3 00 13 	addi $fp,$r6,#19
   96ef4:	50 13 80 09 	addi $r1,$r7,#9
   96ef8:	84 43       	movi55 $r2,#3
   96efa:	80 09       	mov55 $r0,$r9
   96efc:	49 ff c8 a6 	jal 90048 <memcpy>
   96f00:	50 13 80 98 	addi $r1,$r7,#152
   96f04:	84 46       	movi55 $r2,#6
   96f06:	80 1c       	mov55 $r0,$fp
   96f08:	49 ff c8 a0 	jal 90048 <memcpy>
   96f0c:	00 03 80 9f 	lbi $r0,[$r7+#0x9f]
   96f10:	50 a3 00 1a 	addi $r10,$r6,#26
   96f14:	10 03 00 19 	sbi $r0,[$r6+#0x19]
   96f18:	80 08       	mov55 $r0,$r8
   96f1a:	49 ff f8 28 	jal 95f6a <sm_hal_get_local_addr>
   96f1e:	80 20       	mov55 $r1,$r0
   96f20:	84 46       	movi55 $r2,#6
   96f22:	80 0a       	mov55 $r0,$r10
   96f24:	49 ff c8 92 	jal 90048 <memcpy>
   96f28:	80 08       	mov55 $r0,$r8
   96f2a:	49 ff f8 18 	jal 95f5a <sm_hal_get_local_addr_Type>
   96f2e:	10 03 00 20 	sbi $r0,[$r6+#0x20]
   96f32:	46 00 00 96 	sethi $r0,#0x96
   96f36:	58 00 0f b0 	ori $r0,$r0,#0xfb0
   96f3a:	f0 82       	swi37.sp $r0,[+#0x8]
   96f3c:	50 13 80 80 	addi $r1,$r7,#128
   96f40:	80 08       	mov55 $r0,$r8
   96f42:	50 23 80 10 	addi $r2,$r7,#16
   96f46:	50 33 80 20 	addi $r3,$r7,#32
   96f4a:	80 86       	mov55 $r4,$r6
   96f4c:	80 a9       	mov55 $r5,$r9
   96f4e:	15 cf 80 00 	swi $fp,[$sp+#0x0]
   96f52:	14 af 80 01 	swi $r10,[$sp+#0x4]
   96f56:	49 ff f0 bc 	jal 950ce <f6>
   96f5a:	80 06       	mov55 $r0,$r6
   96f5c:	49 00 1b c3 	jal 9a6e2 <free>
   96f60:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

00096f62 <SM_Master_s1_handler>:
   96f62:	fc 44       	push25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}
   96f64:	3e 8f c9 c0 	addi.gp $r8,#-13888
   96f68:	97 90       	zeb33 $r6,$r2
   96f6a:	38 24 1a 02 	lw $r2,[$r8+($r6<<#0x2)]
   96f6e:	80 e0       	mov55 $r7,$r0
   96f70:	a6 17       	lbi333 $r0,[$r2+#0x7]
   96f72:	5a 08 16 1e 	bnec $r0,#22,96fae <SM_Master_s1_handler+0x4c>
   96f76:	50 01 00 a4 	addi $r0,$r2,#164
   96f7a:	00 21 00 a0 	lbi $r2,[$r2+#0xa0]
   96f7e:	80 27       	mov55 $r1,$r7
   96f80:	50 9f 80 0e 	addi $r9,$sp,#14
   96f84:	49 ff c8 62 	jal 90048 <memcpy>
   96f88:	84 20       	movi55 $r1,#0
   96f8a:	fa 40       	movpi45 $r2,#0x10
   96f8c:	80 09       	mov55 $r0,$r9
   96f8e:	49 ff c8 7d 	jal 90088 <memset>
   96f92:	38 24 1a 02 	lw $r2,[$r8+($r6<<#0x2)]
   96f96:	80 27       	mov55 $r1,$r7
   96f98:	00 21 00 a0 	lbi $r2,[$r2+#0xa0]
   96f9c:	80 09       	mov55 $r0,$r9
   96f9e:	49 ff c8 55 	jal 90048 <memcpy>
   96fa2:	80 06       	mov55 $r0,$r6
   96fa4:	49 ff dd d5 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   96fa8:	b0 41       	addri36.sp $r1,#0x4
   96faa:	49 ff db 5b 	jal 92660 <ble_gap_start_encrypt>
   96fae:	fc c4       	pop25 $r10,#0x20    ! {$r6~$r10, $fp, $gp, $lp}

00096fb0 <SM_Master_f6_Eb_handler>:
   96fb0:	fc 24       	push25 $r8,#0x20    ! {$r6~$r8, $fp, $gp, $lp}
   96fb2:	3e 7f c9 c0 	addi.gp $r7,#-13888
   96fb6:	97 90       	zeb33 $r6,$r2
   96fb8:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   96fbc:	fa 40       	movpi45 $r2,#0x10
   96fbe:	50 10 80 40 	addi $r1,$r1,#64
   96fc2:	49 ff c8 37 	jal 90030 <memcmp>
   96fc6:	80 20       	mov55 $r1,$r0
   96fc8:	c8 17       	bnez38 $r0,96ff6 <SM_Master_f6_Eb_handler+0x46>
   96fca:	50 8f 80 0e 	addi $r8,$sp,#14
   96fce:	80 08       	mov55 $r0,$r8
   96fd0:	fa 40       	movpi45 $r2,#0x10
   96fd2:	49 ff c8 5b 	jal 90088 <memset>
   96fd6:	38 23 9a 02 	lw $r2,[$r7+($r6<<#0x2)]
   96fda:	80 08       	mov55 $r0,$r8
   96fdc:	50 11 00 a4 	addi $r1,$r2,#164
   96fe0:	00 21 00 a0 	lbi $r2,[$r2+#0xa0]
   96fe4:	49 ff c8 32 	jal 90048 <memcpy>
   96fe8:	80 06       	mov55 $r0,$r6
   96fea:	49 ff dd b2 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   96fee:	b0 41       	addri36.sp $r1,#0x4
   96ff0:	49 ff db 38 	jal 92660 <ble_gap_start_encrypt>
   96ff4:	d5 05       	j8 96ffe <SM_Master_f6_Eb_handler+0x4e>
   96ff6:	80 06       	mov55 $r0,$r6
   96ff8:	84 2b       	movi55 $r1,#11
   96ffa:	49 ff ed 94 	jal 94b22 <SM_PairingFailed>
   96ffe:	fc a4       	pop25 $r8,#0x20    ! {$r6~$r8, $fp, $gp, $lp}

00097000 <SM_Master_PairingPublicKeyHandler>:
   97000:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   97002:	fa f0       	movpi45 $r7,#0x20
   97004:	97 80       	zeb33 $r6,$r0
   97006:	81 21       	mov55 $r9,$r1
   97008:	81 02       	mov55 $r8,$r2
   9700a:	50 01 00 40 	addi $r0,$r2,#64
   9700e:	80 47       	mov55 $r2,$r7
   97010:	49 ff c8 1c 	jal 90048 <memcpy>
   97014:	40 14 9c 00 	add $r1,$r9,$r7
   97018:	80 47       	mov55 $r2,$r7
   9701a:	50 04 00 60 	addi $r0,$r8,#96
   9701e:	49 ff c8 15 	jal 90048 <memcpy>
   97022:	3e 0f c9 c0 	addi.gp $r0,#-13888
   97026:	38 10 1a 02 	lw $r1,[$r0+($r6<<#0x2)]
   9702a:	46 20 00 97 	sethi $r2,#0x97
   9702e:	58 21 00 3e 	ori $r2,$r2,#0x3e
   97032:	80 06       	mov55 $r0,$r6
   97034:	50 10 80 40 	addi $r1,$r1,#64
   97038:	49 ff f2 70 	jal 95518 <SM_CryptoTool_GenerateDHKey>
   9703c:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009703e <SM_Master_generate_DHKey_handler>:
   9703e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   97040:	81 00       	mov55 $r8,$r0
   97042:	97 90       	zeb33 $r6,$r2
   97044:	c0 26       	beqz38 $r0,97090 <SM_Master_generate_DHKey_handler+0x52>
   97046:	3e 0f c9 c0 	addi.gp $r0,#-13888
   9704a:	38 20 1a 02 	lw $r2,[$r0+($r6<<#0x2)]
   9704e:	a6 17       	lbi333 $r0,[$r2+#0x7]
   97050:	5a 08 18 08 	bnec $r0,#24,97060 <SM_Master_generate_DHKey_handler+0x22>
   97054:	80 06       	mov55 $r0,$r6
   97056:	50 11 00 20 	addi $r1,$r2,#32
   9705a:	49 ff f8 3d 	jal 960d4 <SM_Protocol_PairingRandom>
   9705e:	d5 03       	j8 97064 <SM_Master_generate_DHKey_handler+0x26>
   97060:	fa 08       	movpi45 $r0,#0x18
   97062:	ae 17       	sbi333 $r0,[$r2+#0x7]
   97064:	3e 7f c9 c0 	addi.gp $r7,#-13888
   97068:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   9706c:	80 28       	mov55 $r1,$r8
   9706e:	50 00 00 60 	addi $r0,$r0,#96
   97072:	fa 50       	movpi45 $r2,#0x20
   97074:	49 ff c7 ea 	jal 90048 <memcpy>
   97078:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   9707c:	00 10 00 0f 	lbi $r1,[$r0+#0xf]
   97080:	46 00 00 9f 	sethi $r0,#0x9f
   97084:	58 00 04 ec 	ori $r0,$r0,#0x4ec
   97088:	38 10 06 02 	lw $r1,[$r0+($r1<<#0x2)]
   9708c:	80 06       	mov55 $r0,$r6
   9708e:	dd 21       	jral5 $r1
   97090:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00097092 <SM_Master_SC_Unsupported>:
   97092:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   97094:	46 00 00 a0 	sethi $r0,#0xa0
   97098:	58 00 02 30 	ori $r0,$r0,#0x230
   9709c:	49 00 34 61 	jal 9d95e <puts>
   970a0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000970a2 <SM_Master_UnsupportedHandler>:
   970a2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   970a4:	46 00 00 a0 	sethi $r0,#0xa0
   970a8:	58 00 01 44 	ori $r0,$r0,#0x144
   970ac:	49 00 34 59 	jal 9d95e <puts>
   970b0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000970b2 <SM_Master_L2capEventHandler>:
   970b2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   970b4:	96 48       	zeb33 $r1,$r1
   970b6:	9f 09       	subi333 $r4,$r1,#1
   970b8:	97 20       	zeb33 $r4,$r4
   970ba:	96 00       	zeb33 $r0,$r0
   970bc:	3e 3f c9 c0 	addi.gp $r3,#-13888
   970c0:	e6 8e       	slti45 $r4,#14
   970c2:	e8 0a       	beqzs8 970d6 <SM_Master_L2capEventHandler+0x24>
   970c4:	3e 4f c1 e8 	addi.gp $r4,#-15896
   970c8:	38 42 06 02 	lw $r4,[$r4+($r1<<#0x2)]
   970cc:	80 22       	mov55 $r1,$r2
   970ce:	38 21 82 02 	lw $r2,[$r3+($r0<<#0x2)]
   970d2:	dd 24       	jral5 $r4
   970d4:	d5 06       	j8 970e0 <SM_Master_L2capEventHandler+0x2e>
   970d6:	80 22       	mov55 $r1,$r2
   970d8:	38 21 82 02 	lw $r2,[$r3+($r0<<#0x2)]
   970dc:	49 ff ff e3 	jal 970a2 <SM_Master_UnsupportedHandler>
   970e0:	84 01       	movi55 $r0,#1
   970e2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000970e4 <SM_Master_g2_handler>:
   970e4:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   970e6:	b1 81       	addri36.sp $r6,#0x4
   970e8:	80 20       	mov55 $r1,$r0
   970ea:	97 d0       	zeb33 $r7,$r2
   970ec:	80 06       	mov55 $r0,$r6
   970ee:	84 44       	movi55 $r2,#4
   970f0:	49 ff c7 ac 	jal 90048 <memcpy>
   970f4:	f0 01       	lwi37.sp $r0,[+#0x4]
   970f6:	46 10 00 f4 	sethi $r1,#0xf4
   970fa:	58 10 82 40 	ori $r1,$r1,#0x240
   970fe:	40 10 04 17 	divr $r1,$r0,$r0,$r1
   97102:	80 46       	mov55 $r2,$r6
   97104:	84 21       	movi55 $r1,#1
   97106:	f0 81       	swi37.sp $r0,[+#0x4]
   97108:	80 07       	mov55 $r0,$r7
   9710a:	49 ff f6 cf 	jal 95ea8 <sm_hal_infom_passkey_display_req>
   9710e:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

00097110 <SM_Master_SC_rbValuePasskeyDisplay>:
   97110:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   97112:	b1 c1       	addri36.sp $r7,#0x4
   97114:	97 80       	zeb33 $r6,$r0
   97116:	84 24       	movi55 $r1,#4
   97118:	80 07       	mov55 $r0,$r7
   9711a:	49 ff f7 0f 	jal 95f38 <sm_hal_get_random_number>
   9711e:	f1 01       	lwi37.sp $r1,[+#0x4]
   97120:	46 00 00 f4 	sethi $r0,#0xf4
   97124:	58 00 02 40 	ori $r0,$r0,#0x240
   97128:	40 10 80 17 	divr $r1,$r0,$r1,$r0
   9712c:	3e 8f c9 c0 	addi.gp $r8,#-13888
   97130:	38 24 1a 02 	lw $r2,[$r8+($r6<<#0x2)]
   97134:	50 21 00 af 	addi $r2,$r2,#175
   97138:	84 20       	movi55 $r1,#0
   9713a:	f0 81       	swi37.sp $r0,[+#0x4]
   9713c:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   9713e:	ae 17       	sbi333 $r0,[$r2+#0x7]
   97140:	a6 39       	lbi333 $r0,[$r7+#0x1]
   97142:	ae 16       	sbi333 $r0,[$r2+#0x6]
   97144:	80 06       	mov55 $r0,$r6
   97146:	a7 f8       	lbi333 $r7,[$r7+#0x0]
   97148:	af d5       	sbi333 $r7,[$r2+#0x5]
   9714a:	9c 95       	addi333 $r2,$r2,#5
   9714c:	49 ff f6 ae 	jal 95ea8 <sm_hal_infom_passkey_display_req>
   97150:	38 74 1a 02 	lw $r7,[$r8+($r6<<#0x2)]
   97154:	84 01       	movi55 $r0,#1
   97156:	10 03 80 80 	sbi $r0,[$r7+#0x80]
   9715a:	3c 9d f1 a0 	lwi.gp $r9,[+#-14720]
   9715e:	50 13 80 b4 	addi $r1,$r7,#180
   97162:	49 00 0a b9 	jal 986d4 <SM_Common_GetRi>
   97166:	80 80       	mov55 $r4,$r0
   97168:	80 29       	mov55 $r1,$r9
   9716a:	80 06       	mov55 $r0,$r6
   9716c:	50 23 80 40 	addi $r2,$r7,#64
   97170:	50 33 80 20 	addi $r3,$r7,#32
   97174:	46 50 00 97 	sethi $r5,#0x97
   97178:	58 52 82 06 	ori $r5,$r5,#0x206
   9717c:	49 ff f0 a3 	jal 952c2 <f4>
   97180:	38 04 1a 02 	lw $r0,[$r8+($r6<<#0x2)]
   97184:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   97188:	58 10 80 04 	ori $r1,$r1,#0x4
   9718c:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   97190:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

00097192 <SM_Master_f5>:
   97192:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   97194:	54 80 00 ff 	andi $r8,$r0,#0xff
   97198:	84 0e       	movi55 $r0,#14
   9719a:	80 e1       	mov55 $r7,$r1
   9719c:	49 00 1b 1c 	jal 9a7d4 <malloc>
   971a0:	80 c0       	mov55 $r6,$r0
   971a2:	c0 31       	beqz38 $r0,97204 <SM_Master_f5+0x72>
   971a4:	80 08       	mov55 $r0,$r8
   971a6:	49 ff f6 e2 	jal 95f6a <sm_hal_get_local_addr>
   971aa:	80 20       	mov55 $r1,$r0
   971ac:	84 46       	movi55 $r2,#6
   971ae:	80 06       	mov55 $r0,$r6
   971b0:	49 ff c7 4c 	jal 90048 <memcpy>
   971b4:	80 08       	mov55 $r0,$r8
   971b6:	49 ff f6 d2 	jal 95f5a <sm_hal_get_local_addr_Type>
   971ba:	50 93 00 07 	addi $r9,$r6,#7
   971be:	ae 36       	sbi333 $r0,[$r6+#0x6]
   971c0:	50 13 80 98 	addi $r1,$r7,#152
   971c4:	84 46       	movi55 $r2,#6
   971c6:	80 09       	mov55 $r0,$r9
   971c8:	49 ff c7 40 	jal 90048 <memcpy>
   971cc:	00 03 80 9f 	lbi $r0,[$r7+#0x9f]
   971d0:	50 13 80 60 	addi $r1,$r7,#96
   971d4:	10 03 00 0d 	sbi $r0,[$r6+#0xd]
   971d8:	46 00 00 96 	sethi $r0,#0x96
   971dc:	58 00 0e 7a 	ori $r0,$r0,#0xe7a
   971e0:	b6 1f       	swi450 $r0,[$sp]
   971e2:	46 00 00 97 	sethi $r0,#0x97
   971e6:	58 00 02 a2 	ori $r0,$r0,#0x2a2
   971ea:	f0 81       	swi37.sp $r0,[+#0x4]
   971ec:	50 23 80 20 	addi $r2,$r7,#32
   971f0:	80 08       	mov55 $r0,$r8
   971f2:	50 33 80 10 	addi $r3,$r7,#16
   971f6:	80 86       	mov55 $r4,$r6
   971f8:	80 a9       	mov55 $r5,$r9
   971fa:	49 ff ef b1 	jal 9515c <f5>
   971fe:	80 06       	mov55 $r0,$r6
   97200:	49 00 1a 71 	jal 9a6e2 <free>
   97204:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

00097206 <SM_Master_f4_PKE_handler>:
   97206:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   97208:	80 20       	mov55 $r1,$r0
   9720a:	97 90       	zeb33 $r6,$r2
   9720c:	c0 4a       	beqz38 $r0,972a0 <SM_Master_f4_PKE_handler+0x9a>
   9720e:	3e 8f c9 c0 	addi.gp $r8,#-13888
   97212:	38 04 1a 02 	lw $r0,[$r8+($r6<<#0x2)]
   97216:	a6 87       	lbi333 $r2,[$r0+#0x7]
   97218:	5a 28 16 3d 	bnec $r2,#22,97292 <SM_Master_f4_PKE_handler+0x8c>
   9721c:	50 00 00 30 	addi $r0,$r0,#48
   97220:	fa 40       	movpi45 $r2,#0x10
   97222:	49 00 0a 48 	jal 986b2 <SM_Common_ValueCompare>
   97226:	c8 06       	bnez38 $r0,97232 <SM_Master_f4_PKE_handler+0x2c>
   97228:	80 06       	mov55 $r0,$r6
   9722a:	84 24       	movi55 $r1,#4
   9722c:	49 ff ec 7b 	jal 94b22 <SM_PairingFailed>
   97230:	d5 38       	j8 972a0 <SM_Master_f4_PKE_handler+0x9a>
   97232:	38 14 1a 02 	lw $r1,[$r8+($r6<<#0x2)]
   97236:	00 00 80 80 	lbi $r0,[$r1+#0x80]
   9723a:	e6 14       	slti45 $r0,#20
   9723c:	e8 25       	beqzs8 97286 <SM_Master_f4_PKE_handler+0x80>
   9723e:	50 00 80 20 	addi $r0,$r1,#32
   97242:	fa 20       	movpi45 $r1,#0x10
   97244:	49 ff f6 7a 	jal 95f38 <sm_hal_get_random_number>
   97248:	38 74 1a 02 	lw $r7,[$r8+($r6<<#0x2)]
   9724c:	00 03 80 80 	lbi $r0,[$r7+#0x80]
   97250:	9c 01       	addi333 $r0,$r0,#1
   97252:	96 00       	zeb33 $r0,$r0
   97254:	10 03 80 80 	sbi $r0,[$r7+#0x80]
   97258:	3c 9d f1 a0 	lwi.gp $r9,[+#-14720]
   9725c:	50 13 80 b4 	addi $r1,$r7,#180
   97260:	49 00 0a 3a 	jal 986d4 <SM_Common_GetRi>
   97264:	80 80       	mov55 $r4,$r0
   97266:	80 29       	mov55 $r1,$r9
   97268:	80 06       	mov55 $r0,$r6
   9726a:	50 23 80 40 	addi $r2,$r7,#64
   9726e:	50 33 80 20 	addi $r3,$r7,#32
   97272:	46 50 00 97 	sethi $r5,#0x97
   97276:	58 52 82 06 	ori $r5,$r5,#0x206
   9727a:	49 ff f0 24 	jal 952c2 <f4>
   9727e:	38 04 1a 02 	lw $r0,[$r8+($r6<<#0x2)]
   97282:	fa 23       	movpi45 $r1,#0x13
   97284:	d5 0d       	j8 9729e <SM_Master_f4_PKE_handler+0x98>
   97286:	fa 09       	movpi45 $r0,#0x19
   97288:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   9728a:	80 06       	mov55 $r0,$r6
   9728c:	49 ff ff 83 	jal 97192 <SM_Master_f5>
   97290:	d5 08       	j8 972a0 <SM_Master_f4_PKE_handler+0x9a>
   97292:	80 06       	mov55 $r0,$r6
   97294:	49 ff f7 3a 	jal 96108 <SM_Protocol_PairingConfirm>
   97298:	38 04 1a 02 	lw $r0,[$r8+($r6<<#0x2)]
   9729c:	fa 28       	movpi45 $r1,#0x18
   9729e:	ae 47       	sbi333 $r1,[$r0+#0x7]
   972a0:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000972a2 <SM_Master_f5_ltk_handler>:
   972a2:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   972a4:	3e 6f c9 c0 	addi.gp $r6,#-13888
   972a8:	54 91 00 ff 	andi $r9,$r2,#0xff
   972ac:	81 40       	mov55 $r10,$r0
   972ae:	38 03 26 02 	lw $r0,[$r6+($r9<<#0x2)]
   972b2:	4e 02 00 84 	beqz $r0,973ba <SM_Master_f5_ltk_handler+0x118>
   972b6:	4e a2 00 82 	beqz $r10,973ba <SM_Master_f5_ltk_handler+0x118>
   972ba:	fa 11       	movpi45 $r0,#0x21
   972bc:	49 00 1a 8c 	jal 9a7d4 <malloc>
   972c0:	80 e0       	mov55 $r7,$r0
   972c2:	4e 02 00 7c 	beqz $r0,973ba <SM_Master_f5_ltk_handler+0x118>
   972c6:	38 83 26 02 	lw $r8,[$r6+($r9<<#0x2)]
   972ca:	80 2a       	mov55 $r1,$r10
   972cc:	50 64 00 a4 	addi $r6,$r8,#164
   972d0:	fa 40       	movpi45 $r2,#0x10
   972d2:	80 06       	mov55 $r0,$r6
   972d4:	49 ff c6 ba 	jal 90048 <memcpy>
   972d8:	46 00 00 a0 	sethi $r0,#0xa0
   972dc:	58 00 02 4c 	ori $r0,$r0,#0x24c
   972e0:	49 00 33 3f 	jal 9d95e <puts>
   972e4:	a6 35       	lbi333 $r0,[$r6+#0x5]
   972e6:	a6 b1       	lbi333 $r2,[$r6+#0x1]
   972e8:	a6 f2       	lbi333 $r3,[$r6+#0x2]
   972ea:	a7 33       	lbi333 $r4,[$r6+#0x3]
   972ec:	a7 74       	lbi333 $r5,[$r6+#0x4]
   972ee:	00 14 00 a4 	lbi $r1,[$r8+#0xa4]
   972f2:	b6 1f       	swi450 $r0,[$sp]
   972f4:	51 c3 80 13 	addi $fp,$r7,#19
   972f8:	a6 36       	lbi333 $r0,[$r6+#0x6]
   972fa:	50 a3 80 1a 	addi $r10,$r7,#26
   972fe:	f0 81       	swi37.sp $r0,[+#0x4]
   97300:	a6 37       	lbi333 $r0,[$r6+#0x7]
   97302:	f0 82       	swi37.sp $r0,[+#0x8]
   97304:	46 00 00 a0 	sethi $r0,#0xa0
   97308:	58 00 02 58 	ori $r0,$r0,#0x258
   9730c:	49 00 1a e5 	jal 9a8d6 <printf>
   97310:	00 03 00 0d 	lbi $r0,[$r6+#0xd]
   97314:	00 33 00 0a 	lbi $r3,[$r6+#0xa]
   97318:	00 43 00 0b 	lbi $r4,[$r6+#0xb]
   9731c:	00 53 00 0c 	lbi $r5,[$r6+#0xc]
   97320:	00 13 00 08 	lbi $r1,[$r6+#0x8]
   97324:	00 23 00 09 	lbi $r2,[$r6+#0x9]
   97328:	b6 1f       	swi450 $r0,[$sp]
   9732a:	00 03 00 0e 	lbi $r0,[$r6+#0xe]
   9732e:	f0 81       	swi37.sp $r0,[+#0x4]
   97330:	00 03 00 0f 	lbi $r0,[$r6+#0xf]
   97334:	50 63 80 10 	addi $r6,$r7,#16
   97338:	f0 82       	swi37.sp $r0,[+#0x8]
   9733a:	46 00 00 a0 	sethi $r0,#0xa0
   9733e:	58 00 02 58 	ori $r0,$r0,#0x258
   97342:	49 00 1a ca 	jal 9a8d6 <printf>
   97346:	50 14 00 b4 	addi $r1,$r8,#180
   9734a:	fa 40       	movpi45 $r2,#0x10
   9734c:	80 07       	mov55 $r0,$r7
   9734e:	49 ff c6 7d 	jal 90048 <memcpy>
   97352:	50 14 00 01 	addi $r1,$r8,#1
   97356:	84 43       	movi55 $r2,#3
   97358:	80 06       	mov55 $r0,$r6
   9735a:	49 ff c6 77 	jal 90048 <memcpy>
   9735e:	80 09       	mov55 $r0,$r9
   97360:	49 ff f6 05 	jal 95f6a <sm_hal_get_local_addr>
   97364:	80 20       	mov55 $r1,$r0
   97366:	84 46       	movi55 $r2,#6
   97368:	80 1c       	mov55 $r0,$fp
   9736a:	49 ff c6 6f 	jal 90048 <memcpy>
   9736e:	80 09       	mov55 $r0,$r9
   97370:	49 ff f5 f5 	jal 95f5a <sm_hal_get_local_addr_Type>
   97374:	10 03 80 19 	sbi $r0,[$r7+#0x19]
   97378:	50 14 00 98 	addi $r1,$r8,#152
   9737c:	84 46       	movi55 $r2,#6
   9737e:	80 0a       	mov55 $r0,$r10
   97380:	49 ff c6 64 	jal 90048 <memcpy>
   97384:	00 04 00 9f 	lbi $r0,[$r8+#0x9f]
   97388:	50 14 00 80 	addi $r1,$r8,#128
   9738c:	10 03 80 20 	sbi $r0,[$r7+#0x20]
   97390:	46 00 00 97 	sethi $r0,#0x97
   97394:	58 00 03 bc 	ori $r0,$r0,#0x3bc
   97398:	f0 82       	swi37.sp $r0,[+#0x8]
   9739a:	50 24 00 20 	addi $r2,$r8,#32
   9739e:	80 09       	mov55 $r0,$r9
   973a0:	50 34 00 10 	addi $r3,$r8,#16
   973a4:	80 87       	mov55 $r4,$r7
   973a6:	80 a6       	mov55 $r5,$r6
   973a8:	15 cf 80 00 	swi $fp,[$sp+#0x0]
   973ac:	14 af 80 01 	swi $r10,[$sp+#0x4]
   973b0:	49 ff ee 8f 	jal 950ce <f6>
   973b4:	80 07       	mov55 $r0,$r7
   973b6:	49 00 19 96 	jal 9a6e2 <free>
   973ba:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

000973bc <SM_Master_f6_Ea_handler>:
   973bc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   973be:	80 20       	mov55 $r1,$r0
   973c0:	96 10       	zeb33 $r0,$r2
   973c2:	3e 2f c9 c0 	addi.gp $r2,#-13888
   973c6:	38 21 02 02 	lw $r2,[$r2+($r0<<#0x2)]
   973ca:	c2 04       	beqz38 $r2,973d2 <SM_Master_f6_Ea_handler+0x16>
   973cc:	c1 03       	beqz38 $r1,973d2 <SM_Master_f6_Ea_handler+0x16>
   973ce:	49 ff f5 f0 	jal 95fae <SM_Protocol_PairingDHKeyCheck>
   973d2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000973d4 <SM_Master_TKValueOOB>:
   973d4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   973d6:	97 80       	zeb33 $r6,$r0
   973d8:	80 06       	mov55 $r0,$r6
   973da:	84 22       	movi55 $r1,#2
   973dc:	49 ff f5 55 	jal 95e86 <sm_hal_infom_passkey_input_req>
   973e0:	3e 0f c9 c0 	addi.gp $r0,#-13888
   973e4:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   973e8:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   973ec:	58 10 80 04 	ori $r1,$r1,#0x4
   973f0:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   973f4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000973f6 <SM_Master_TKValuePasskeyInput>:
   973f6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   973f8:	97 80       	zeb33 $r6,$r0
   973fa:	80 06       	mov55 $r0,$r6
   973fc:	84 21       	movi55 $r1,#1
   973fe:	49 ff f5 44 	jal 95e86 <sm_hal_infom_passkey_input_req>
   97402:	3e 0f c9 c0 	addi.gp $r0,#-13888
   97406:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   9740a:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   9740e:	58 10 80 04 	ori $r1,$r1,#0x4
   97412:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   97416:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00097418 <SM_Master_Legacy_GenConfirm>:
   97418:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9741a:	97 c0       	zeb33 $r7,$r0
   9741c:	fa 00       	movpi45 $r0,#0x10
   9741e:	81 21       	mov55 $r9,$r1
   97420:	49 00 19 da 	jal 9a7d4 <malloc>
   97424:	80 c0       	mov55 $r6,$r0
   97426:	c8 08       	bnez38 $r0,97436 <SM_Master_Legacy_GenConfirm+0x1e>
   97428:	46 00 00 a0 	sethi $r0,#0xa0
   9742c:	58 00 02 74 	ori $r0,$r0,#0x274
   97430:	49 00 32 97 	jal 9d95e <puts>
   97434:	d5 2d       	j8 9748e <SM_Master_Legacy_GenConfirm+0x76>
   97436:	84 20       	movi55 $r1,#0
   97438:	fa 40       	movpi45 $r2,#0x10
   9743a:	49 ff c6 27 	jal 90088 <memset>
   9743e:	80 07       	mov55 $r0,$r7
   97440:	49 ff f5 8d 	jal 95f5a <sm_hal_get_local_addr_Type>
   97444:	3e 8f c9 c0 	addi.gp $r8,#-13888
   97448:	ae 30       	sbi333 $r0,[$r6+#0x0]
   9744a:	80 07       	mov55 $r0,$r7
   9744c:	49 ff db b6 	jal 92bb8 <ble_gap_link_GetAttr_BdAddrType>
   97450:	38 14 1e 02 	lw $r1,[$r8+($r7<<#0x2)]
   97454:	ae 31       	sbi333 $r0,[$r6+#0x1]
   97456:	84 47       	movi55 $r2,#7
   97458:	9c 32       	addi333 $r0,$r6,#2
   9745a:	49 ff c5 f7 	jal 90048 <memcpy>
   9745e:	38 14 1e 02 	lw $r1,[$r8+($r7<<#0x2)]
   97462:	84 47       	movi55 $r2,#7
   97464:	8c 28       	addi45 $r1,#8
   97466:	50 03 00 09 	addi $r0,$r6,#9
   9746a:	49 ff c5 ef 	jal 90048 <memcpy>
   9746e:	38 34 1e 02 	lw $r3,[$r8+($r7<<#0x2)]
   97472:	80 07       	mov55 $r0,$r7
   97474:	50 11 80 a4 	addi $r1,$r3,#164
   97478:	80 49       	mov55 $r2,$r9
   9747a:	80 66       	mov55 $r3,$r6
   9747c:	46 40 00 97 	sethi $r4,#0x97
   97480:	58 42 05 12 	ori $r4,$r4,#0x512
   97484:	49 ff ef ef 	jal 95462 <c1_1>
   97488:	80 06       	mov55 $r0,$r6
   9748a:	49 00 19 2c 	jal 9a6e2 <free>
   9748e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00097490 <SM_Master_TKValuePasskeyDisplay>:
   97490:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   97492:	50 8f 80 04 	addi $r8,$sp,#4
   97496:	97 80       	zeb33 $r6,$r0
   97498:	84 24       	movi55 $r1,#4
   9749a:	80 08       	mov55 $r0,$r8
   9749c:	49 ff f5 4e 	jal 95f38 <sm_hal_get_random_number>
   974a0:	f1 01       	lwi37.sp $r1,[+#0x4]
   974a2:	46 00 00 f4 	sethi $r0,#0xf4
   974a6:	58 00 02 40 	ori $r0,$r0,#0x240
   974aa:	40 10 80 17 	divr $r1,$r0,$r1,$r0
   974ae:	3e 7f c9 c0 	addi.gp $r7,#-13888
   974b2:	38 23 9a 02 	lw $r2,[$r7+($r6<<#0x2)]
   974b6:	84 20       	movi55 $r1,#0
   974b8:	f0 81       	swi37.sp $r0,[+#0x4]
   974ba:	00 04 00 02 	lbi $r0,[$r8+#0x2]
   974be:	10 01 00 a6 	sbi $r0,[$r2+#0xa6]
   974c2:	00 04 00 01 	lbi $r0,[$r8+#0x1]
   974c6:	10 01 00 a5 	sbi $r0,[$r2+#0xa5]
   974ca:	80 06       	mov55 $r0,$r6
   974cc:	00 84 00 00 	lbi $r8,[$r8+#0x0]
   974d0:	10 81 00 a4 	sbi $r8,[$r2+#0xa4]
   974d4:	50 21 00 a4 	addi $r2,$r2,#164
   974d8:	49 ff f4 e8 	jal 95ea8 <sm_hal_infom_passkey_display_req>
   974dc:	38 13 9a 02 	lw $r1,[$r7+($r6<<#0x2)]
   974e0:	80 06       	mov55 $r0,$r6
   974e2:	50 10 80 20 	addi $r1,$r1,#32
   974e6:	49 ff ff 99 	jal 97418 <SM_Master_Legacy_GenConfirm>
   974ea:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   974ee:	00 10 00 a1 	lbi $r1,[$r0+#0xa1]
   974f2:	58 10 80 04 	ori $r1,$r1,#0x4
   974f6:	10 10 00 a1 	sbi $r1,[$r0+#0xa1]
   974fa:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000974fc <SM_Master_TKValueJustWork>:
   974fc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   974fe:	3e 1f c9 c0 	addi.gp $r1,#-13888
   97502:	96 00       	zeb33 $r0,$r0
   97504:	38 10 82 02 	lw $r1,[$r1+($r0<<#0x2)]
   97508:	50 10 80 20 	addi $r1,$r1,#32
   9750c:	49 ff ff 86 	jal 97418 <SM_Master_Legacy_GenConfirm>
   97510:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00097512 <SM_Master_c1_1_handler>:
   97512:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   97514:	81 00       	mov55 $r8,$r0
   97516:	fa 00       	movpi45 $r0,#0x10
   97518:	97 d0       	zeb33 $r7,$r2
   9751a:	49 00 19 5d 	jal 9a7d4 <malloc>
   9751e:	80 c0       	mov55 $r6,$r0
   97520:	c8 08       	bnez38 $r0,97530 <SM_Master_c1_1_handler+0x1e>
   97522:	46 00 00 a0 	sethi $r0,#0xa0
   97526:	58 00 02 80 	ori $r0,$r0,#0x280
   9752a:	49 00 32 1a 	jal 9d95e <puts>
   9752e:	d5 29       	j8 97580 <SM_Master_c1_1_handler+0x6e>
   97530:	80 07       	mov55 $r0,$r7
   97532:	49 ff db 39 	jal 92ba4 <ble_gap_link_GetAttr_BdAddr>
   97536:	80 20       	mov55 $r1,$r0
   97538:	84 46       	movi55 $r2,#6
   9753a:	80 06       	mov55 $r0,$r6
   9753c:	49 ff c5 86 	jal 90048 <memcpy>
   97540:	80 07       	mov55 $r0,$r7
   97542:	49 ff f5 14 	jal 95f6a <sm_hal_get_local_addr>
   97546:	80 20       	mov55 $r1,$r0
   97548:	84 46       	movi55 $r2,#6
   9754a:	9c 36       	addi333 $r0,$r6,#6
   9754c:	49 ff c5 7e 	jal 90048 <memcpy>
   97550:	84 20       	movi55 $r1,#0
   97552:	84 44       	movi55 $r2,#4
   97554:	50 03 00 0c 	addi $r0,$r6,#12
   97558:	49 ff c5 98 	jal 90088 <memset>
   9755c:	3e 0f c9 c0 	addi.gp $r0,#-13888
   97560:	38 10 1e 02 	lw $r1,[$r0+($r7<<#0x2)]
   97564:	80 48       	mov55 $r2,$r8
   97566:	80 07       	mov55 $r0,$r7
   97568:	50 10 80 a4 	addi $r1,$r1,#164
   9756c:	80 66       	mov55 $r3,$r6
   9756e:	46 40 00 97 	sethi $r4,#0x97
   97572:	58 42 05 e0 	ori $r4,$r4,#0x5e0
   97576:	49 ff ef 4b 	jal 9540c <c1_2>
   9757a:	80 06       	mov55 $r0,$r6
   9757c:	49 00 18 b3 	jal 9a6e2 <free>
   97580:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00097582 <SM_Master_PairingConfirmHandler>:
   97582:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   97584:	97 c0       	zeb33 $r7,$r0
   97586:	80 c2       	mov55 $r6,$r2
   97588:	80 07       	mov55 $r0,$r7
   9758a:	81 01       	mov55 $r8,$r1
   9758c:	44 10 75 30 	movi $r1,#30000
   97590:	49 ff f4 b2 	jal 95ef4 <sm_hal_set_timer>
   97594:	00 13 00 0f 	lbi $r1,[$r6+#0xf]
   97598:	a6 37       	lbi333 $r0,[$r6+#0x7]
   9759a:	e6 24       	slti45 $r1,#4
   9759c:	e9 12       	bnezs8 975c0 <SM_Master_PairingConfirmHandler+0x3e>
   9759e:	5a 08 18 08 	bnec $r0,#24,975ae <SM_Master_PairingConfirmHandler+0x2c>
   975a2:	80 07       	mov55 $r0,$r7
   975a4:	50 13 00 20 	addi $r1,$r6,#32
   975a8:	49 ff f5 96 	jal 960d4 <SM_Protocol_PairingRandom>
   975ac:	d5 03       	j8 975b2 <SM_Master_PairingConfirmHandler+0x30>
   975ae:	fa 08       	movpi45 $r0,#0x18
   975b0:	ae 37       	sbi333 $r0,[$r6+#0x7]
   975b2:	50 03 00 30 	addi $r0,$r6,#48
   975b6:	80 28       	mov55 $r1,$r8
   975b8:	fa 40       	movpi45 $r2,#0x10
   975ba:	49 ff c5 47 	jal 90048 <memcpy>
   975be:	d5 10       	j8 975de <SM_Master_PairingConfirmHandler+0x5c>
   975c0:	5a 08 14 0f 	bnec $r0,#20,975de <SM_Master_PairingConfirmHandler+0x5c>
   975c4:	80 28       	mov55 $r1,$r8
   975c6:	50 03 00 30 	addi $r0,$r6,#48
   975ca:	fa 40       	movpi45 $r2,#0x10
   975cc:	49 ff c5 3e 	jal 90048 <memcpy>
   975d0:	fa 05       	movpi45 $r0,#0x15
   975d2:	ae 37       	sbi333 $r0,[$r6+#0x7]
   975d4:	50 13 00 20 	addi $r1,$r6,#32
   975d8:	80 07       	mov55 $r0,$r7
   975da:	49 ff f5 7d 	jal 960d4 <SM_Protocol_PairingRandom>
   975de:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000975e0 <SM_Master_c1_2_handler>:
   975e0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   975e2:	3e 7f c9 c0 	addi.gp $r7,#-13888
   975e6:	97 90       	zeb33 $r6,$r2
   975e8:	80 20       	mov55 $r1,$r0
   975ea:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   975ee:	a6 87       	lbi333 $r2,[$r0+#0x7]
   975f0:	5a 28 13 0f 	bnec $r2,#19,9760e <SM_Master_c1_2_handler+0x2e>
   975f4:	80 06       	mov55 $r0,$r6
   975f6:	49 ff f5 89 	jal 96108 <SM_Protocol_PairingConfirm>
   975fa:	80 06       	mov55 $r0,$r6
   975fc:	44 10 75 30 	movi $r1,#30000
   97600:	49 ff f4 7a 	jal 95ef4 <sm_hal_set_timer>
   97604:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   97608:	fa 24       	movpi45 $r1,#0x14
   9760a:	ae 47       	sbi333 $r1,[$r0+#0x7]
   9760c:	d5 1d       	j8 97646 <SM_Master_c1_2_handler+0x66>
   9760e:	5a 28 16 1c 	bnec $r2,#22,97646 <SM_Master_c1_2_handler+0x66>
   97612:	50 00 00 30 	addi $r0,$r0,#48
   97616:	fa 40       	movpi45 $r2,#0x10
   97618:	49 00 08 4d 	jal 986b2 <SM_Common_ValueCompare>
   9761c:	c8 06       	bnez38 $r0,97628 <SM_Master_c1_2_handler+0x48>
   9761e:	80 06       	mov55 $r0,$r6
   97620:	84 24       	movi55 $r1,#4
   97622:	49 ff ea 80 	jal 94b22 <SM_PairingFailed>
   97626:	d5 10       	j8 97646 <SM_Master_c1_2_handler+0x66>
   97628:	38 33 9a 02 	lw $r3,[$r7+($r6<<#0x2)]
   9762c:	80 06       	mov55 $r0,$r6
   9762e:	50 11 80 a4 	addi $r1,$r3,#164
   97632:	50 21 80 10 	addi $r2,$r3,#16
   97636:	46 40 00 96 	sethi $r4,#0x96
   9763a:	58 42 0f 62 	ori $r4,$r4,#0xf62
   9763e:	50 31 80 20 	addi $r3,$r3,#32
   97642:	49 ff ee b8 	jal 953b2 <s1>
   97646:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00097648 <SM_Master_SecurityRequestHandler>:
   97648:	fc 35       	push25 $r8,#0xa8    ! {$r6~$r8, $fp, $gp, $lp}
   9764a:	97 80       	zeb33 $r6,$r0
   9764c:	3e 0f c9 c0 	addi.gp $r0,#-13888
   97650:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   97654:	81 01       	mov55 $r8,$r1
   97656:	c8 42       	bnez38 $r0,976da <SM_Master_SecurityRequestHandler+0x92>
   97658:	80 06       	mov55 $r0,$r6
   9765a:	b1 c1       	addri36.sp $r7,#0x4
   9765c:	49 ff da a4 	jal 92ba4 <ble_gap_link_GetAttr_BdAddr>
   97660:	80 27       	mov55 $r1,$r7
   97662:	49 ff f0 a7 	jal 957b0 <sm_hal_flash_load_data>
   97666:	c0 35       	beqz38 $r0,976d0 <SM_Master_SecurityRequestHandler+0x88>
   97668:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   9766c:	00 23 80 11 	lbi $r2,[$r7+#0x11]
   97670:	46 00 00 a0 	sethi $r0,#0xa0
   97674:	58 00 02 8c 	ori $r0,$r0,#0x28c
   97678:	49 00 19 2f 	jal 9a8d6 <printf>
   9767c:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   97680:	00 03 80 11 	lbi $r0,[$r7+#0x11]
   97684:	96 8c       	xlsb33 $r2,$r1
   97686:	96 c4       	xlsb33 $r3,$r0
   97688:	e0 62       	slts45 $r3,$r2
   9768a:	e9 23       	bnezs8 976d0 <SM_Master_SecurityRequestHandler+0x88>
   9768c:	96 56       	bmski33 $r1,#0x2
   9768e:	96 16       	bmski33 $r0,#0x2
   97690:	e0 01       	slts45 $r0,$r1
   97692:	e9 1f       	bnezs8 976d0 <SM_Master_SecurityRequestHandler+0x88>
   97694:	02 03 80 3f 	lhi $r0,[$r7+#0x7e]
   97698:	50 8f 80 8c 	addi $r8,$sp,#140
   9769c:	12 04 00 04 	shi $r0,[$r8+#0x8]
   976a0:	00 23 80 10 	lbi $r2,[$r7+#0x10]
   976a4:	b0 4a       	addri36.sp $r1,#0x28
   976a6:	50 0f 80 96 	addi $r0,$sp,#150
   976aa:	49 ff c4 cf 	jal 90048 <memcpy>
   976ae:	84 48       	movi55 $r2,#8
   976b0:	b0 61       	addri36.sp $r1,#0x84
   976b2:	80 08       	mov55 $r0,$r8
   976b4:	49 ff c4 ca 	jal 90048 <memcpy>
   976b8:	80 06       	mov55 $r0,$r6
   976ba:	44 10 75 30 	movi $r1,#30000
   976be:	49 ff f4 1b 	jal 95ef4 <sm_hal_set_timer>
   976c2:	80 06       	mov55 $r0,$r6
   976c4:	49 ff da 45 	jal 92b4e <ble_gap_link_GetAttr_Handle>
   976c8:	80 28       	mov55 $r1,$r8
   976ca:	49 ff d7 cb 	jal 92660 <ble_gap_start_encrypt>
   976ce:	d5 06       	j8 976da <SM_Master_SecurityRequestHandler+0x92>
   976d0:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   976d4:	80 06       	mov55 $r0,$r6
   976d6:	49 ff f3 c1 	jal 95e58 <sm_hal_infom_recv_security_req>
   976da:	fc b5       	pop25 $r8,#0xa8    ! {$r6~$r8, $fp, $gp, $lp}

000976dc <SM_Master_SigningInformationHandler>:
   976dc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   976de:	97 80       	zeb33 $r6,$r0
   976e0:	a6 17       	lbi333 $r0,[$r2+#0x7]
   976e2:	5a 08 33 13 	bnec $r0,#51,97708 <SM_Master_SigningInformationHandler+0x2c>
   976e6:	84 00       	movi55 $r0,#0
   976e8:	14 01 00 25 	swi $r0,[$r2+#0x94]
   976ec:	50 01 00 d4 	addi $r0,$r2,#212
   976f0:	fa 40       	movpi45 $r2,#0x10
   976f2:	49 ff c4 ab 	jal 90048 <memcpy>
   976f6:	3e 0f c9 c0 	addi.gp $r0,#-13888
   976fa:	38 10 1a 02 	lw $r1,[$r0+($r6<<#0x2)]
   976fe:	80 06       	mov55 $r0,$r6
   97700:	00 10 80 a2 	lbi $r1,[$r1+#0xa2]
   97704:	49 ff ea 1d 	jal 94b3e <SM_StartKeyDistribution>
   97708:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009770a <SM_Master_IdentityAddressInformationHandler>:
   9770a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9770c:	97 80       	zeb33 $r6,$r0
   9770e:	a6 17       	lbi333 $r0,[$r2+#0x7]
   97710:	5a 08 32 15 	bnec $r0,#50,9773a <SM_Master_IdentityAddressInformationHandler+0x30>
   97714:	08 00 80 01 	lbi.bi $r0,[$r1],#0x1
   97718:	10 01 00 9f 	sbi $r0,[$r2+#0x9f]
   9771c:	50 01 00 98 	addi $r0,$r2,#152
   97720:	84 46       	movi55 $r2,#6
   97722:	49 ff c4 93 	jal 90048 <memcpy>
   97726:	3e 0f c9 c0 	addi.gp $r0,#-13888
   9772a:	38 20 1a 02 	lw $r2,[$r0+($r6<<#0x2)]
   9772e:	80 26       	mov55 $r1,$r6
   97730:	00 21 00 a3 	lbi $r2,[$r2+#0xa3]
   97734:	84 04       	movi55 $r0,#4
   97736:	49 ff ea 82 	jal 94c3a <SM_WaitKeyDistribution>
   9773a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009773c <SM_Master_MasterIdentificationHandler>:
   9773c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9773e:	97 80       	zeb33 $r6,$r0
   97740:	a6 17       	lbi333 $r0,[$r2+#0x7]
   97742:	5a 08 31 11 	bnec $r0,#49,97764 <SM_Master_MasterIdentificationHandler+0x28>
   97746:	50 01 01 0e 	addi $r0,$r2,#270
   9774a:	84 4a       	movi55 $r2,#10
   9774c:	49 ff c4 7e 	jal 90048 <memcpy>
   97750:	3e 0f c9 c0 	addi.gp $r0,#-13888
   97754:	38 20 1a 02 	lw $r2,[$r0+($r6<<#0x2)]
   97758:	80 26       	mov55 $r1,$r6
   9775a:	00 21 00 a3 	lbi $r2,[$r2+#0xa3]
   9775e:	84 02       	movi55 $r0,#2
   97760:	49 ff ea 6d 	jal 94c3a <SM_WaitKeyDistribution>
   97764:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00097766 <SM_Master_PairingFailedHandler>:
   97766:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   97768:	a6 88       	lbi333 $r2,[$r1+#0x0]
   9776a:	44 3f ff 80 	movi $r3,#-128
   9776e:	fe 9f       	or33 $r2,$r3
   97770:	96 90       	zeb33 $r2,$r2
   97772:	ae 88       	sbi333 $r2,[$r1+#0x0]
   97774:	96 00       	zeb33 $r0,$r0
   97776:	84 20       	movi55 $r1,#0
   97778:	49 ff e9 97 	jal 94aa6 <SM_FinishPairing>
   9777c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009777e <SM_Master_PairingRandomHandler>:
   9777e:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   97780:	80 e2       	mov55 $r7,$r2
   97782:	97 80       	zeb33 $r6,$r0
   97784:	81 21       	mov55 $r9,$r1
   97786:	80 06       	mov55 $r0,$r6
   97788:	50 83 80 10 	addi $r8,$r7,#16
   9778c:	49 ff f3 af 	jal 95eea <sm_hal_release_timer>
   97790:	fd 04       	movd44 $r0,$r8
   97792:	fa 40       	movpi45 $r2,#0x10
   97794:	49 ff c4 5a 	jal 90048 <memcpy>
   97798:	00 03 80 0f 	lbi $r0,[$r7+#0xf]
   9779c:	e6 04       	slti45 $r0,#4
   9779e:	e8 09       	beqzs8 977b0 <SM_Master_PairingRandomHandler+0x32>
   977a0:	a6 3f       	lbi333 $r0,[$r7+#0x7]
   977a2:	5a 08 15 36 	bnec $r0,#21,9780e <SM_Master_PairingRandomHandler+0x90>
   977a6:	80 06       	mov55 $r0,$r6
   977a8:	80 28       	mov55 $r1,$r8
   977aa:	49 ff fe 37 	jal 97418 <SM_Master_Legacy_GenConfirm>
   977ae:	d5 1e       	j8 977ea <SM_Master_PairingRandomHandler+0x6c>
   977b0:	9e 05       	subi333 $r0,$r0,#5
   977b2:	96 40       	zeb33 $r1,$r0
   977b4:	3e 0f c9 c0 	addi.gp $r0,#-13888
   977b8:	e6 22       	slti45 $r1,#2
   977ba:	e8 1b       	beqzs8 977f0 <SM_Master_PairingRandomHandler+0x72>
   977bc:	38 80 1a 02 	lw $r8,[$r0+($r6<<#0x2)]
   977c0:	3c 9d f1 a0 	lwi.gp $r9,[+#-14720]
   977c4:	00 04 00 80 	lbi $r0,[$r8+#0x80]
   977c8:	50 14 00 b4 	addi $r1,$r8,#180
   977cc:	49 00 07 84 	jal 986d4 <SM_Common_GetRi>
   977d0:	80 80       	mov55 $r4,$r0
   977d2:	50 14 00 40 	addi $r1,$r8,#64
   977d6:	80 06       	mov55 $r0,$r6
   977d8:	80 49       	mov55 $r2,$r9
   977da:	50 34 00 10 	addi $r3,$r8,#16
   977de:	46 50 00 97 	sethi $r5,#0x97
   977e2:	58 52 82 06 	ori $r5,$r5,#0x206
   977e6:	49 ff ed 6e 	jal 952c2 <f4>
   977ea:	fa 06       	movpi45 $r0,#0x16
   977ec:	ae 3f       	sbi333 $r0,[$r7+#0x7]
   977ee:	d5 10       	j8 9780e <SM_Master_PairingRandomHandler+0x90>
   977f0:	38 10 1a 02 	lw $r1,[$r0+($r6<<#0x2)]
   977f4:	3c 2d f1 a0 	lwi.gp $r2,[+#-14720]
   977f8:	80 06       	mov55 $r0,$r6
   977fa:	50 10 80 40 	addi $r1,$r1,#64
   977fe:	80 68       	mov55 $r3,$r8
   97800:	84 80       	movi55 $r4,#0
   97802:	46 50 00 97 	sethi $r5,#0x97
   97806:	58 52 88 10 	ori $r5,$r5,#0x810
   9780a:	49 ff ed 5c 	jal 952c2 <f4>
   9780e:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00097810 <SM_Master_f4_JW_handler>:
   97810:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   97812:	3e 7f c9 c0 	addi.gp $r7,#-13888
   97816:	97 90       	zeb33 $r6,$r2
   97818:	80 20       	mov55 $r1,$r0
   9781a:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   9781e:	fa 40       	movpi45 $r2,#0x10
   97820:	50 00 00 30 	addi $r0,$r0,#48
   97824:	49 00 07 47 	jal 986b2 <SM_Common_ValueCompare>
   97828:	c8 06       	bnez38 $r0,97834 <SM_Master_f4_JW_handler+0x24>
   9782a:	80 06       	mov55 $r0,$r6
   9782c:	84 24       	movi55 $r1,#4
   9782e:	49 ff e9 7a 	jal 94b22 <SM_PairingFailed>
   97832:	d5 1a       	j8 97866 <SM_Master_f4_JW_handler+0x56>
   97834:	38 43 9a 02 	lw $r4,[$r7+($r6<<#0x2)]
   97838:	00 02 00 0f 	lbi $r0,[$r4+#0xf]
   9783c:	5a 08 08 11 	bnec $r0,#8,9785e <SM_Master_f4_JW_handler+0x4e>
   97840:	3c 1d f1 a0 	lwi.gp $r1,[+#-14720]
   97844:	50 22 00 40 	addi $r2,$r4,#64
   97848:	50 32 00 20 	addi $r3,$r4,#32
   9784c:	80 06       	mov55 $r0,$r6
   9784e:	8c 90       	addi45 $r4,#16
   97850:	46 50 00 97 	sethi $r5,#0x97
   97854:	58 52 80 e4 	ori $r5,$r5,#0xe4
   97858:	49 ff ec 00 	jal 95058 <g2>
   9785c:	d5 05       	j8 97866 <SM_Master_f4_JW_handler+0x56>
   9785e:	80 06       	mov55 $r0,$r6
   97860:	80 24       	mov55 $r1,$r4
   97862:	49 ff fc 98 	jal 97192 <SM_Master_f5>
   97866:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00097868 <SM_Master_PairingResponseHandler>:
   97868:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9786a:	97 80       	zeb33 $r6,$r0
   9786c:	3e 0f c9 c0 	addi.gp $r0,#-13888
   97870:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   97874:	81 01       	mov55 $r8,$r1
   97876:	80 e2       	mov55 $r7,$r2
   97878:	c0 10       	beqz38 $r0,97898 <SM_Master_PairingResponseHandler+0x30>
   9787a:	80 06       	mov55 $r0,$r6
   9787c:	49 ff f3 37 	jal 95eea <sm_hal_release_timer>
   97880:	84 02       	movi55 $r0,#2
   97882:	10 03 80 08 	sbi $r0,[$r7+#0x8]
   97886:	80 28       	mov55 $r1,$r8
   97888:	50 03 80 09 	addi $r0,$r7,#9
   9788c:	84 46       	movi55 $r2,#6
   9788e:	49 ff c3 dd 	jal 90048 <memcpy>
   97892:	80 06       	mov55 $r0,$r6
   97894:	49 ff f3 1d 	jal 95ece <sm_hal_infom_set_sec_param_req>
   97898:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009789a <SM_Master_Init>:
   9789a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9789c:	84 00       	movi55 $r0,#0
   9789e:	46 10 00 97 	sethi $r1,#0x97
   978a2:	58 10 80 b2 	ori $r1,$r1,#0xb2
   978a6:	49 ff f3 6b 	jal 95f7c <SM_Protocol_RegisterCallback>
   978aa:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000978ac <SM_Master_EncryptionChange>:
   978ac:	fc 51       	push25 $r10,#0x88    ! {$r6~$r10, $fp, $gp, $lp}
   978ae:	97 80       	zeb33 $r6,$r0
   978b0:	81 21       	mov55 $r9,$r1
   978b2:	80 06       	mov55 $r0,$r6
   978b4:	49 ff f3 1b 	jal 95eea <sm_hal_release_timer>
   978b8:	00 84 80 00 	lbi $r8,[$r9+#0x0]
   978bc:	4e 83 00 40 	bnez $r8,9793c <SM_Master_EncryptionChange+0x90>
   978c0:	00 74 80 03 	lbi $r7,[$r9+#0x3]
   978c4:	5a 78 01 3c 	bnec $r7,#1,9793c <SM_Master_EncryptionChange+0x90>
   978c8:	fd 03       	movd44 $r0,$r6
   978ca:	3e af c9 c0 	addi.gp $r10,#-13888
   978ce:	49 ff f3 3a 	jal 95f42 <sm_hal_set_link_encrypted>
   978d2:	38 05 1a 02 	lw $r0,[$r10+($r6<<#0x2)]
   978d6:	c0 20       	beqz38 $r0,97916 <SM_Master_EncryptionChange+0x6a>
   978d8:	00 20 00 a3 	lbi $r2,[$r0+#0xa3]
   978dc:	80 26       	mov55 $r1,$r6
   978de:	80 07       	mov55 $r0,$r7
   978e0:	40 84 08 06 	slt $r8,$r8,$r2
   978e4:	49 ff e9 ab 	jal 94c3a <SM_WaitKeyDistribution>
   978e8:	38 05 1a 02 	lw $r0,[$r10+($r6<<#0x2)]
   978ec:	00 00 00 0f 	lbi $r0,[$r0+#0xf]
   978f0:	e6 04       	slti45 $r0,#4
   978f2:	e9 07       	bnezs8 97900 <SM_Master_EncryptionChange+0x54>
   978f4:	58 84 00 04 	ori $r8,$r8,#0x4
   978f8:	54 84 00 ff 	andi $r8,$r8,#0xff
   978fc:	84 e4       	movi55 $r7,#4
   978fe:	d5 07       	j8 9790c <SM_Master_EncryptionChange+0x60>
   97900:	c8 03       	bnez38 $r0,97906 <SM_Master_EncryptionChange+0x5a>
   97902:	84 e2       	movi55 $r7,#2
   97904:	d5 04       	j8 9790c <SM_Master_EncryptionChange+0x60>
   97906:	58 84 00 04 	ori $r8,$r8,#0x4
   9790a:	84 e3       	movi55 $r7,#3
   9790c:	80 06       	mov55 $r0,$r6
   9790e:	80 28       	mov55 $r1,$r8
   97910:	49 ff f3 1f 	jal 95f4e <sm_hal_set_link_authenticated>
   97914:	d5 19       	j8 97946 <SM_Master_EncryptionChange+0x9a>
   97916:	80 06       	mov55 $r0,$r6
   97918:	49 ff d9 46 	jal 92ba4 <ble_gap_link_GetAttr_BdAddr>
   9791c:	80 3f       	mov55 $r1,$sp
   9791e:	49 ff ef 49 	jal 957b0 <sm_hal_flash_load_data>
   97922:	00 0f 80 11 	lbi $r0,[$sp+#0x11]
   97926:	54 10 00 08 	andi $r1,$r0,#0x8
   9792a:	c1 03       	beqz38 $r1,97930 <SM_Master_EncryptionChange+0x84>
   9792c:	84 e4       	movi55 $r7,#4
   9792e:	d5 0c       	j8 97946 <SM_Master_EncryptionChange+0x9a>
   97930:	96 16       	bmski33 $r0,#0x2
   97932:	c8 03       	bnez38 $r0,97938 <SM_Master_EncryptionChange+0x8c>
   97934:	84 e2       	movi55 $r7,#2
   97936:	d5 08       	j8 97946 <SM_Master_EncryptionChange+0x9a>
   97938:	84 e3       	movi55 $r7,#3
   9793a:	d5 06       	j8 97946 <SM_Master_EncryptionChange+0x9a>
   9793c:	80 06       	mov55 $r0,$r6
   9793e:	84 20       	movi55 $r1,#0
   97940:	49 ff f3 01 	jal 95f42 <sm_hal_set_link_encrypted>
   97944:	84 e1       	movi55 $r7,#1
   97946:	00 24 80 00 	lbi $r2,[$r9+#0x0]
   9794a:	fd 03       	movd44 $r0,$r6
   9794c:	49 ff f2 76 	jal 95e38 <sm_hal_infom_conn_sec_update>
   97950:	fc d1       	pop25 $r10,#0x88    ! {$r6~$r10, $fp, $gp, $lp}

00097952 <DRV_TRNG_Get>:
   97952:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   97954:	46 20 02 00 	sethi $r2,#0x200
   97958:	58 21 00 00 	ori $r2,$r2,#0x0
   9795c:	50 21 00 6c 	addi $r2,$r2,#108
   97960:	96 48       	zeb33 $r1,$r1
   97962:	44 63 d0 90 	movi $r6,#250000
   97966:	50 81 7f 94 	addi $r8,$r2,#-108
   9796a:	d5 26       	j8 979b6 <DRV_TRNG_Get+0x64>
   9796c:	f3 01       	lwi37.sp $r3,[+#0x4]
   9796e:	9e d9       	subi333 $r3,$r3,#1
   97970:	f3 81       	swi37.sp $r3,[+#0x4]
   97972:	f3 01       	lwi37.sp $r3,[+#0x4]
   97974:	cb 0a       	bnez38 $r3,97988 <DRV_TRNG_Get+0x36>
   97976:	a0 d7       	lwi333 $r3,[$r2+#0x1c]
   97978:	58 31 80 01 	ori $r3,$r3,#0x1
   9797c:	a8 d7       	swi333 $r3,[$r2+#0x1c]
   9797e:	a0 d6       	lwi333 $r3,[$r2+#0x18]
   97980:	58 31 80 01 	ori $r3,$r3,#0x1
   97984:	a8 d6       	swi333 $r3,[$r2+#0x18]
   97986:	f6 81       	swi37.sp $r6,[+#0x4]
   97988:	a0 d6       	lwi333 $r3,[$r2+#0x18]
   9798a:	96 dc       	xlsb33 $r3,$r3
   9798c:	cb f0       	bnez38 $r3,9796c <DRV_TRNG_Get+0x1a>
   9798e:	97 08       	zeb33 $r4,$r1
   97990:	04 54 00 20 	lwi $r5,[$r8+#0x80]
   97994:	80 61       	mov55 $r3,$r1
   97996:	e6 85       	slti45 $r4,#5
   97998:	e9 02       	bnezs8 9799c <DRV_TRNG_Get+0x4a>
   9799a:	84 64       	movi55 $r3,#4
   9799c:	96 d8       	zeb33 $r3,$r3
   9799e:	80 83       	mov55 $r4,$r3
   979a0:	80 e0       	mov55 $r7,$r0
   979a2:	d5 06       	j8 979ae <DRV_TRNG_Get+0x5c>
   979a4:	9f 21       	subi333 $r4,$r4,#1
   979a6:	18 53 80 01 	sbi.bi $r5,[$r7],#0x1
   979aa:	97 20       	zeb33 $r4,$r4
   979ac:	92 a8       	srli45 $r5,#8
   979ae:	cc fb       	bnez38 $r4,979a4 <DRV_TRNG_Get+0x52>
   979b0:	9a 4b       	sub333 $r1,$r1,$r3
   979b2:	98 03       	add333 $r0,$r0,$r3
   979b4:	96 48       	zeb33 $r1,$r1
   979b6:	c9 e4       	bnez38 $r1,9797e <DRV_TRNG_Get+0x2c>
   979b8:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

000979ba <PMU_IntrHandler>:
   979ba:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   979bc:	46 00 02 05 	sethi $r0,#0x205
   979c0:	58 00 00 00 	ori $r0,$r0,#0x0
   979c4:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   979c6:	96 4e       	bmski33 $r1,#0x1
   979c8:	c1 08       	beqz38 $r1,979d8 <PMU_IntrHandler+0x1e>
   979ca:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   979cc:	58 10 80 02 	ori $r1,$r1,#0x2
   979d0:	a8 47       	swi333 $r1,[$r0+#0x1c]
   979d2:	3c 0d f3 aa 	lwi.gp $r0,[+#-12632]
   979d6:	dd 20       	jral5 $r0
   979d8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000979da <Drv_MMITimerDisable>:
   979da:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   979dc:	44 00 00 3e 	movi $r0,#62
   979e0:	84 21       	movi55 $r1,#1
   979e2:	49 ff 48 17 	jal 80a10 <SYS_3WireBitErase>
   979e6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000979e8 <Drv_MMITimerEnable>:
   979e8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   979ea:	80 c0       	mov55 $r6,$r0
   979ec:	3c 1f f3 aa 	swi.gp $r1,[+#-12632]
   979f0:	fa 09       	movpi45 $r0,#0x19
   979f2:	46 10 00 97 	sethi $r1,#0x97
   979f6:	58 10 89 ba 	ori $r1,$r1,#0x9ba
   979fa:	49 ff 44 c5 	jal 80384 <SysIntrHandlerRegister>
   979fe:	46 20 02 05 	sethi $r2,#0x205
   97a02:	58 21 00 00 	ori $r2,$r2,#0x0
   97a06:	a0 17       	lwi333 $r0,[$r2+#0x1c]
   97a08:	44 10 06 40 	movi $r1,#1600
   97a0c:	58 00 00 02 	ori $r0,$r0,#0x2
   97a10:	a8 17       	swi333 $r0,[$r2+#0x1c]
   97a12:	a0 15       	lwi333 $r0,[$r2+#0x14]
   97a14:	58 00 00 02 	ori $r0,$r0,#0x2
   97a18:	a8 15       	swi333 $r0,[$r2+#0x14]
   97a1a:	44 00 00 3e 	movi $r0,#62
   97a1e:	49 ff 47 9f 	jal 8095c <SYS_3WireWrite>
   97a22:	9e 71       	subi333 $r1,$r6,#1
   97a24:	44 00 00 3d 	movi $r0,#61
   97a28:	96 49       	zeh33 $r1,$r1
   97a2a:	49 ff 47 99 	jal 8095c <SYS_3WireWrite>
   97a2e:	44 00 00 3e 	movi $r0,#62
   97a32:	84 21       	movi55 $r1,#1
   97a34:	49 ff 47 e1 	jal 809f6 <SYS_3WireBitWrite>
   97a38:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00097a3a <Ab_MMITimerUnset>:
   97a3a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   97a3c:	81 00       	mov55 $r8,$r0
   97a3e:	64 32 00 02 	mfsr $r3,$PSW
   97a42:	64 02 00 43 	setgie.d
   97a46:	64 00 00 08 	dsb
   97a4a:	46 20 01 00 	sethi $r2,#0x100
   97a4e:	58 21 00 b0 	ori $r2,$r2,#0xb0
   97a52:	b4 22       	lwi450 $r1,[$r2]
   97a54:	9c 09       	addi333 $r0,$r1,#1
   97a56:	b6 02       	swi450 $r0,[$r2]
   97a58:	c9 06       	bnez38 $r1,97a64 <Ab_MMITimerUnset+0x2a>
   97a5a:	46 00 01 00 	sethi $r0,#0x100
   97a5e:	58 00 00 bc 	ori $r0,$r0,#0xbc
   97a62:	b6 60       	swi450 $r3,[$r0]
   97a64:	3e 7f ce ac 	addi.gp $r7,#-12628
   97a68:	b4 07       	lwi450 $r0,[$r7]
   97a6a:	49 00 18 37 	jal 9aad8 <AB_queue_count>
   97a6e:	80 c0       	mov55 $r6,$r0
   97a70:	d5 1c       	j8 97aa8 <Ab_MMITimerUnset+0x6e>
   97a72:	b4 07       	lwi450 $r0,[$r7]
   97a74:	49 00 18 25 	jal 9aabe <AB_queue_pop>
   97a78:	80 20       	mov55 $r1,$r0
   97a7a:	c0 16       	beqz38 $r0,97aa6 <Ab_MMITimerUnset+0x6c>
   97a7c:	a7 05       	lbi333 $r4,[$r0+#0x5]
   97a7e:	a7 44       	lbi333 $r5,[$r0+#0x4]
   97a80:	a6 c6       	lbi333 $r3,[$r0+#0x6]
   97a82:	40 42 20 08 	slli $r4,$r4,#8
   97a86:	a6 87       	lbi333 $r2,[$r0+#0x7]
   97a88:	ff 2f       	or33 $r4,$r5
   97a8a:	40 31 c0 08 	slli $r3,$r3,#16
   97a8e:	fe e7       	or33 $r3,$r4
   97a90:	40 21 60 08 	slli $r2,$r2,#24
   97a94:	fe 9f       	or33 $r2,$r3
   97a96:	4c 24 40 05 	bne $r2,$r8,97aa0 <Ab_MMITimerUnset+0x66>
   97a9a:	49 00 18 2b 	jal 9aaf0 <AB_queue_entry_free>
   97a9e:	d5 04       	j8 97aa6 <Ab_MMITimerUnset+0x6c>
   97aa0:	b4 07       	lwi450 $r0,[$r7]
   97aa2:	49 00 17 da 	jal 9aa56 <AB_queue_push>
   97aa6:	9f b1       	subi333 $r6,$r6,#1
   97aa8:	ce e5       	bnez38 $r6,97a72 <Ab_MMITimerUnset+0x38>
   97aaa:	46 00 01 00 	sethi $r0,#0x100
   97aae:	58 00 00 b0 	ori $r0,$r0,#0xb0
   97ab2:	b4 20       	lwi450 $r1,[$r0]
   97ab4:	9e 49       	subi333 $r1,$r1,#1
   97ab6:	b6 20       	swi450 $r1,[$r0]
   97ab8:	b4 00       	lwi450 $r0,[$r0]
   97aba:	c8 0c       	bnez38 $r0,97ad2 <Ab_MMITimerUnset+0x98>
   97abc:	46 00 01 00 	sethi $r0,#0x100
   97ac0:	58 00 00 bc 	ori $r0,$r0,#0xbc
   97ac4:	b4 00       	lwi450 $r0,[$r0]
   97ac6:	96 04       	xlsb33 $r0,$r0
   97ac8:	c0 05       	beqz38 $r0,97ad2 <Ab_MMITimerUnset+0x98>
   97aca:	64 12 00 43 	setgie.e
   97ace:	64 00 00 08 	dsb
   97ad2:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00097ad4 <Ab_MMITimerSet>:
   97ad4:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   97ad6:	80 c0       	mov55 $r6,$r0
   97ad8:	3c 0d f3 ab 	lwi.gp $r0,[+#-12628]
   97adc:	83 82       	mov55 $fp,$r2
   97ade:	81 03       	mov55 $r8,$r3
   97ae0:	80 e4       	mov55 $r7,$r4
   97ae2:	54 a0 80 ff 	andi $r10,$r1,#0xff
   97ae6:	c8 05       	bnez38 $r0,97af0 <Ab_MMITimerSet+0x1c>
   97ae8:	49 00 18 2a 	jal 9ab3c <AB_queue_alloc>
   97aec:	3c 0f f3 ab 	swi.gp $r0,[+#-12628]
   97af0:	fa 03       	movpi45 $r0,#0x13
   97af2:	49 00 18 19 	jal 9ab24 <AB_queue_entry_alloc>
   97af6:	80 20       	mov55 $r1,$r0
   97af8:	50 2e 00 01 	addi $r2,$fp,#1
   97afc:	44 00 00 64 	movi $r0,#100
   97b00:	40 21 00 17 	divr $r2,$r0,$r2,$r0
   97b04:	3c 0d f3 ac 	lwi.gp $r0,[+#-12624]
   97b08:	10 80 80 08 	sbi $r8,[$r1+#0x8]
   97b0c:	10 70 80 0c 	sbi $r7,[$r1+#0xc]
   97b10:	af 8c       	sbi333 $r6,[$r1+#0x4]
   97b12:	10 a0 80 12 	sbi $r10,[$r1+#0x12]
   97b16:	98 10       	add333 $r0,$r2,$r0
   97b18:	40 30 20 09 	srli $r3,$r0,#8
   97b1c:	ae 08       	sbi333 $r0,[$r1+#0x0]
   97b1e:	ae c9       	sbi333 $r3,[$r1+#0x1]
   97b20:	40 30 40 09 	srli $r3,$r0,#16
   97b24:	92 18       	srli45 $r0,#24
   97b26:	ae 0b       	sbi333 $r0,[$r1+#0x3]
   97b28:	40 04 20 09 	srli $r0,$r8,#8
   97b2c:	10 00 80 09 	sbi $r0,[$r1+#0x9]
   97b30:	40 04 40 09 	srli $r0,$r8,#16
   97b34:	10 00 80 0a 	sbi $r0,[$r1+#0xa]
   97b38:	40 03 a0 09 	srli $r0,$r7,#8
   97b3c:	10 00 80 0d 	sbi $r0,[$r1+#0xd]
   97b40:	40 03 c0 09 	srli $r0,$r7,#16
   97b44:	10 00 80 0e 	sbi $r0,[$r1+#0xe]
   97b48:	96 91       	zeh33 $r2,$r2
   97b4a:	40 03 20 09 	srli $r0,$r6,#8
   97b4e:	ae 0d       	sbi333 $r0,[$r1+#0x5]
   97b50:	10 20 80 10 	sbi $r2,[$r1+#0x10]
   97b54:	40 03 40 09 	srli $r0,$r6,#16
   97b58:	92 48       	srli45 $r2,#8
   97b5a:	92 d8       	srli45 $r6,#24
   97b5c:	93 18       	srli45 $r8,#24
   97b5e:	92 f8       	srli45 $r7,#24
   97b60:	af 8f       	sbi333 $r6,[$r1+#0x7]
   97b62:	ae ca       	sbi333 $r3,[$r1+#0x2]
   97b64:	10 80 80 0b 	sbi $r8,[$r1+#0xb]
   97b68:	10 70 80 0f 	sbi $r7,[$r1+#0xf]
   97b6c:	ae 0e       	sbi333 $r0,[$r1+#0x6]
   97b6e:	10 20 80 11 	sbi $r2,[$r1+#0x11]
   97b72:	3c 0d f3 ab 	lwi.gp $r0,[+#-12628]
   97b76:	49 00 17 70 	jal 9aa56 <AB_queue_push>
   97b7a:	3c 0d f3 ab 	lwi.gp $r0,[+#-12628]
   97b7e:	49 00 17 ad 	jal 9aad8 <AB_queue_count>
   97b82:	5a 08 01 08 	bnec $r0,#1,97b92 <Ab_MMITimerSet+0xbe>
   97b86:	46 10 00 97 	sethi $r1,#0x97
   97b8a:	58 10 8b 94 	ori $r1,$r1,#0xb94
   97b8e:	49 ff ff 2d 	jal 979e8 <Drv_MMITimerEnable>
   97b92:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00097b94 <mmi_timer_isr>:
   97b94:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   97b96:	3c 1d f3 ac 	lwi.gp $r1,[+#-12624]
   97b9a:	9c 49       	addi333 $r1,$r1,#1
   97b9c:	3c 1f f3 ac 	swi.gp $r1,[+#-12624]
   97ba0:	3c 0d f3 ab 	lwi.gp $r0,[+#-12628]
   97ba4:	49 00 17 9a 	jal 9aad8 <AB_queue_count>
   97ba8:	80 e0       	mov55 $r7,$r0
   97baa:	c8 04       	bnez38 $r0,97bb2 <mmi_timer_isr+0x1e>
   97bac:	49 ff ff 17 	jal 979da <Drv_MMITimerDisable>
   97bb0:	d5 5b       	j8 97c66 <mmi_timer_isr+0xd2>
   97bb2:	3c 0d f3 ab 	lwi.gp $r0,[+#-12628]
   97bb6:	49 00 17 84 	jal 9aabe <AB_queue_pop>
   97bba:	a6 81       	lbi333 $r2,[$r0+#0x1]
   97bbc:	a6 c0       	lbi333 $r3,[$r0+#0x0]
   97bbe:	a6 42       	lbi333 $r1,[$r0+#0x2]
   97bc0:	80 c0       	mov55 $r6,$r0
   97bc2:	40 21 20 08 	slli $r2,$r2,#8
   97bc6:	a6 03       	lbi333 $r0,[$r0+#0x3]
   97bc8:	fe 9f       	or33 $r2,$r3
   97bca:	40 10 c0 08 	slli $r1,$r1,#16
   97bce:	fe 57       	or33 $r1,$r2
   97bd0:	40 00 60 08 	slli $r0,$r0,#24
   97bd4:	fe 0f       	or33 $r0,$r1
   97bd6:	3c 1d f3 ac 	lwi.gp $r1,[+#-12624]
   97bda:	e2 20       	slt45 $r1,$r0
   97bdc:	e9 3f       	bnezs8 97c5a <mmi_timer_isr+0xc6>
   97bde:	00 13 00 09 	lbi $r1,[$r6+#0x9]
   97be2:	00 33 00 08 	lbi $r3,[$r6+#0x8]
   97be6:	00 03 00 0a 	lbi $r0,[$r6+#0xa]
   97bea:	00 23 00 0b 	lbi $r2,[$r6+#0xb]
   97bee:	40 10 a0 08 	slli $r1,$r1,#8
   97bf2:	fe 5f       	or33 $r1,$r3
   97bf4:	40 00 40 08 	slli $r0,$r0,#16
   97bf8:	fe 0f       	or33 $r0,$r1
   97bfa:	40 21 60 08 	slli $r2,$r2,#24
   97bfe:	fe 87       	or33 $r2,$r0
   97c00:	00 03 00 0d 	lbi $r0,[$r6+#0xd]
   97c04:	00 33 00 0c 	lbi $r3,[$r6+#0xc]
   97c08:	00 13 00 0e 	lbi $r1,[$r6+#0xe]
   97c0c:	40 00 20 08 	slli $r0,$r0,#8
   97c10:	fe 1f       	or33 $r0,$r3
   97c12:	40 10 c0 08 	slli $r1,$r1,#16
   97c16:	fe 47       	or33 $r1,$r0
   97c18:	00 03 00 0f 	lbi $r0,[$r6+#0xf]
   97c1c:	40 00 60 08 	slli $r0,$r0,#24
   97c20:	fe 0f       	or33 $r0,$r1
   97c22:	dd 22       	jral5 $r2
   97c24:	00 03 00 12 	lbi $r0,[$r6+#0x12]
   97c28:	c0 15       	beqz38 $r0,97c52 <mmi_timer_isr+0xbe>
   97c2a:	00 03 00 11 	lbi $r0,[$r6+#0x11]
   97c2e:	00 13 00 10 	lbi $r1,[$r6+#0x10]
   97c32:	40 00 20 08 	slli $r0,$r0,#8
   97c36:	fe 0f       	or33 $r0,$r1
   97c38:	3c 1d f3 ac 	lwi.gp $r1,[+#-12624]
   97c3c:	98 01       	add333 $r0,$r0,$r1
   97c3e:	40 10 20 09 	srli $r1,$r0,#8
   97c42:	ae 30       	sbi333 $r0,[$r6+#0x0]
   97c44:	ae 71       	sbi333 $r1,[$r6+#0x1]
   97c46:	40 10 40 09 	srli $r1,$r0,#16
   97c4a:	92 18       	srli45 $r0,#24
   97c4c:	ae 72       	sbi333 $r1,[$r6+#0x2]
   97c4e:	ae 33       	sbi333 $r0,[$r6+#0x3]
   97c50:	d5 05       	j8 97c5a <mmi_timer_isr+0xc6>
   97c52:	80 06       	mov55 $r0,$r6
   97c54:	49 00 17 4e 	jal 9aaf0 <AB_queue_entry_free>
   97c58:	d5 06       	j8 97c64 <mmi_timer_isr+0xd0>
   97c5a:	3c 0d f3 ab 	lwi.gp $r0,[+#-12628]
   97c5e:	80 26       	mov55 $r1,$r6
   97c60:	49 00 16 fb 	jal 9aa56 <AB_queue_push>
   97c64:	9f f9       	subi333 $r7,$r7,#1
   97c66:	cf a6       	bnez38 $r7,97bb2 <mmi_timer_isr+0x1e>
   97c68:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00097c6a <BTDataRdyInterruptHandler>:
   97c6a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   97c6c:	46 00 02 05 	sethi $r0,#0x205
   97c70:	58 00 00 00 	ori $r0,$r0,#0x0
   97c74:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   97c76:	58 10 80 04 	ori $r1,$r1,#0x4
   97c7a:	a8 47       	swi333 $r1,[$r0+#0x1c]
   97c7c:	2e 17 ce b8 	lbi.gp $r1,[+#-12616]
   97c80:	c1 07       	beqz38 $r1,97c8e <BTDataRdyInterruptHandler+0x24>
   97c82:	04 10 00 09 	lwi $r1,[$r0+#0x24]
   97c86:	92 21       	srli45 $r1,#1
   97c88:	94 49       	slli333 $r1,$r1,#1
   97c8a:	14 10 00 09 	swi $r1,[$r0+#0x24]
   97c8e:	46 f0 02 05 	sethi $r15,#0x205
   97c92:	04 17 80 0a 	lwi $r1,[$r15+#0x28]
   97c96:	58 10 80 01 	ori $r1,$r1,#0x1
   97c9a:	46 f0 02 05 	sethi $r15,#0x205
   97c9e:	14 17 80 0a 	swi $r1,[$r15+#0x28]
   97ca2:	3c 0d f3 ad 	lwi.gp $r0,[+#-12620]
   97ca6:	c0 02       	beqz38 $r0,97caa <BTDataRdyInterruptHandler+0x40>
   97ca8:	dd 20       	jral5 $r0
   97caa:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00097cac <Drv_1602DataReady>:
   97cac:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   97cae:	46 f0 02 05 	sethi $r15,#0x205
   97cb2:	04 07 80 10 	lwi $r0,[$r15+#0x40]
   97cb6:	96 04       	xlsb33 $r0,$r0
   97cb8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00097cba <Drv_1602DataReadyIntEn>:
   97cba:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   97cbc:	96 00       	zeb33 $r0,$r0
   97cbe:	46 10 02 05 	sethi $r1,#0x205
   97cc2:	58 10 80 00 	ori $r1,$r1,#0x0
   97cc6:	8c 28       	addi45 $r1,#8
   97cc8:	c0 05       	beqz38 $r0,97cd2 <Drv_1602DataReadyIntEn+0x18>
   97cca:	a0 0f       	lwi333 $r0,[$r1+#0x1c]
   97ccc:	58 00 00 01 	ori $r0,$r0,#0x1
   97cd0:	d5 04       	j8 97cd8 <Drv_1602DataReadyIntEn+0x1e>
   97cd2:	a0 0f       	lwi333 $r0,[$r1+#0x1c]
   97cd4:	92 01       	srli45 $r0,#1
   97cd6:	94 01       	slli333 $r0,$r0,#1
   97cd8:	a8 0f       	swi333 $r0,[$r1+#0x1c]
   97cda:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00097cdc <Drv_1602DataReadyIntReg>:
   97cdc:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   97cde:	3c 1f f3 ad 	swi.gp $r1,[+#-12620]
   97ce2:	3e 07 ce b8 	sbi.gp $r0,[+#-12616]
   97ce6:	fa 20       	movpi45 $r1,#0x10
   97ce8:	44 00 00 30 	movi $r0,#48
   97cec:	49 ff 46 85 	jal 809f6 <SYS_3WireBitWrite>
   97cf0:	46 00 02 05 	sethi $r0,#0x205
   97cf4:	58 00 00 00 	ori $r0,$r0,#0x0
   97cf8:	50 00 00 24 	addi $r0,$r0,#36
   97cfc:	a0 41       	lwi333 $r1,[$r0+#0x4]
   97cfe:	58 10 80 01 	ori $r1,$r1,#0x1
   97d02:	a8 41       	swi333 $r1,[$r0+#0x4]
   97d04:	2e 17 ce b8 	lbi.gp $r1,[+#-12616]
   97d08:	c9 10       	bnez38 $r1,97d28 <Drv_1602DataReadyIntReg+0x4c>
   97d0a:	b4 20       	lwi450 $r1,[$r0]
   97d0c:	84 5d       	movi55 $r2,#-3
   97d0e:	fe 56       	and33 $r1,$r2
   97d10:	b6 20       	swi450 $r1,[$r0]
   97d12:	b4 20       	lwi450 $r1,[$r0]
   97d14:	58 10 80 01 	ori $r1,$r1,#0x1
   97d18:	b6 20       	swi450 $r1,[$r0]
   97d1a:	a0 07       	lwi333 $r0,[$r0+#0x1c]
   97d1c:	c0 0a       	beqz38 $r0,97d30 <Drv_1602DataReadyIntReg+0x54>
   97d1e:	3c 0d f3 ad 	lwi.gp $r0,[+#-12620]
   97d22:	c0 07       	beqz38 $r0,97d30 <Drv_1602DataReadyIntReg+0x54>
   97d24:	dd 20       	jral5 $r0
   97d26:	d5 05       	j8 97d30 <Drv_1602DataReadyIntReg+0x54>
   97d28:	b4 20       	lwi450 $r1,[$r0]
   97d2a:	58 10 80 02 	ori $r1,$r1,#0x2
   97d2e:	b6 20       	swi450 $r1,[$r0]
   97d30:	fa 02       	movpi45 $r0,#0x12
   97d32:	46 10 00 97 	sethi $r1,#0x97
   97d36:	58 10 8c 6a 	ori $r1,$r1,#0xc6a
   97d3a:	49 ff 43 25 	jal 80384 <SysIntrHandlerRegister>
   97d3e:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00097d40 <Drv_1602Reset>:
   97d40:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   97d42:	96 00       	zeb33 $r0,$r0
   97d44:	c0 08       	beqz38 $r0,97d54 <Drv_1602Reset+0x14>
   97d46:	44 00 00 3c 	movi $r0,#60
   97d4a:	44 10 02 00 	movi $r1,#512
   97d4e:	49 ff 46 61 	jal 80a10 <SYS_3WireBitErase>
   97d52:	d5 07       	j8 97d60 <Drv_1602Reset+0x20>
   97d54:	44 00 00 3c 	movi $r0,#60
   97d58:	44 10 02 00 	movi $r1,#512
   97d5c:	49 ff 46 4d 	jal 809f6 <SYS_3WireBitWrite>
   97d60:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00097d62 <Encrypt>:
   97d62:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   97d64:	ef 00       	addi10.sp #-256
   97d66:	46 76 17 07 	sethi $r7,#0x61707
   97d6a:	b1 b0       	addri36.sp $r6,#0xc0
   97d6c:	58 73 88 65 	ori $r7,$r7,#0x865
   97d70:	f7 b0       	swi37.sp $r7,[+#0xc0]
   97d72:	46 73 32 06 	sethi $r7,#0x33206
   97d76:	58 73 84 6e 	ori $r7,$r7,#0x46e
   97d7a:	f7 b1       	swi37.sp $r7,[+#0xc4]
   97d7c:	46 77 96 22 	sethi $r7,#0x79622
   97d80:	58 73 8d 32 	ori $r7,$r7,#0xd32
   97d84:	f7 b2       	swi37.sp $r7,[+#0xc8]
   97d86:	46 76 b2 06 	sethi $r7,#0x6b206
   97d8a:	58 73 85 74 	ori $r7,$r7,#0x574
   97d8e:	f0 8b       	swi37.sp $r0,[+#0x2c]
   97d90:	f1 8c       	swi37.sp $r1,[+#0x30]
   97d92:	f2 86       	swi37.sp $r2,[+#0x18]
   97d94:	f7 b3       	swi37.sp $r7,[+#0xcc]
   97d96:	b0 10       	addri36.sp $r0,#0x40
   97d98:	00 81 80 01 	lbi $r8,[$r3+#0x1]
   97d9c:	a7 da       	lbi333 $r7,[$r3+#0x2]
   97d9e:	40 84 20 08 	slli $r8,$r8,#8
   97da2:	40 73 c0 08 	slli $r7,$r7,#16
   97da6:	40 74 1c 04 	or $r7,$r8,$r7
   97daa:	00 81 80 00 	lbi $r8,[$r3+#0x0]
   97dae:	b0 60       	addri36.sp $r1,#0x80
   97db0:	40 73 a0 04 	or $r7,$r7,$r8
   97db4:	00 81 80 03 	lbi $r8,[$r3+#0x3]
   97db8:	40 84 60 08 	slli $r8,$r8,#24
   97dbc:	40 73 a0 04 	or $r7,$r7,$r8
   97dc0:	f7 b4       	swi37.sp $r7,[+#0xd0]
   97dc2:	00 81 80 05 	lbi $r8,[$r3+#0x5]
   97dc6:	a7 de       	lbi333 $r7,[$r3+#0x6]
   97dc8:	40 84 20 08 	slli $r8,$r8,#8
   97dcc:	40 73 c0 08 	slli $r7,$r7,#16
   97dd0:	40 74 1c 04 	or $r7,$r8,$r7
   97dd4:	00 81 80 04 	lbi $r8,[$r3+#0x4]
   97dd8:	40 73 a0 04 	or $r7,$r7,$r8
   97ddc:	00 81 80 07 	lbi $r8,[$r3+#0x7]
   97de0:	40 84 60 08 	slli $r8,$r8,#24
   97de4:	40 73 a0 04 	or $r7,$r7,$r8
   97de8:	f7 b5       	swi37.sp $r7,[+#0xd4]
   97dea:	00 81 80 09 	lbi $r8,[$r3+#0x9]
   97dee:	00 71 80 0a 	lbi $r7,[$r3+#0xa]
   97df2:	40 84 20 08 	slli $r8,$r8,#8
   97df6:	40 73 c0 08 	slli $r7,$r7,#16
   97dfa:	40 74 1c 04 	or $r7,$r8,$r7
   97dfe:	00 81 80 08 	lbi $r8,[$r3+#0x8]
   97e02:	40 73 a0 04 	or $r7,$r7,$r8
   97e06:	00 81 80 0b 	lbi $r8,[$r3+#0xb]
   97e0a:	40 84 60 08 	slli $r8,$r8,#24
   97e0e:	40 73 a0 04 	or $r7,$r7,$r8
   97e12:	f7 b6       	swi37.sp $r7,[+#0xd8]
   97e14:	00 81 80 0d 	lbi $r8,[$r3+#0xd]
   97e18:	00 71 80 0e 	lbi $r7,[$r3+#0xe]
   97e1c:	40 84 20 08 	slli $r8,$r8,#8
   97e20:	40 73 c0 08 	slli $r7,$r7,#16
   97e24:	40 74 1c 04 	or $r7,$r8,$r7
   97e28:	00 81 80 0c 	lbi $r8,[$r3+#0xc]
   97e2c:	40 73 a0 04 	or $r7,$r7,$r8
   97e30:	00 81 80 0f 	lbi $r8,[$r3+#0xf]
   97e34:	40 84 60 08 	slli $r8,$r8,#24
   97e38:	40 73 a0 04 	or $r7,$r7,$r8
   97e3c:	f7 b7       	swi37.sp $r7,[+#0xdc]
   97e3e:	00 81 80 11 	lbi $r8,[$r3+#0x11]
   97e42:	00 71 80 12 	lbi $r7,[$r3+#0x12]
   97e46:	40 84 20 08 	slli $r8,$r8,#8
   97e4a:	40 73 c0 08 	slli $r7,$r7,#16
   97e4e:	40 74 1c 04 	or $r7,$r8,$r7
   97e52:	00 81 80 10 	lbi $r8,[$r3+#0x10]
   97e56:	40 73 a0 04 	or $r7,$r7,$r8
   97e5a:	00 81 80 13 	lbi $r8,[$r3+#0x13]
   97e5e:	40 84 60 08 	slli $r8,$r8,#24
   97e62:	40 73 a0 04 	or $r7,$r7,$r8
   97e66:	f7 b8       	swi37.sp $r7,[+#0xe0]
   97e68:	00 81 80 15 	lbi $r8,[$r3+#0x15]
   97e6c:	00 71 80 16 	lbi $r7,[$r3+#0x16]
   97e70:	40 84 20 08 	slli $r8,$r8,#8
   97e74:	40 73 c0 08 	slli $r7,$r7,#16
   97e78:	40 74 1c 04 	or $r7,$r8,$r7
   97e7c:	00 81 80 14 	lbi $r8,[$r3+#0x14]
   97e80:	40 73 a0 04 	or $r7,$r7,$r8
   97e84:	00 81 80 17 	lbi $r8,[$r3+#0x17]
   97e88:	40 84 60 08 	slli $r8,$r8,#24
   97e8c:	40 73 a0 04 	or $r7,$r7,$r8
   97e90:	f7 b9       	swi37.sp $r7,[+#0xe4]
   97e92:	00 81 80 19 	lbi $r8,[$r3+#0x19]
   97e96:	00 71 80 1a 	lbi $r7,[$r3+#0x1a]
   97e9a:	40 84 20 08 	slli $r8,$r8,#8
   97e9e:	40 73 c0 08 	slli $r7,$r7,#16
   97ea2:	40 74 1c 04 	or $r7,$r8,$r7
   97ea6:	00 81 80 18 	lbi $r8,[$r3+#0x18]
   97eaa:	40 73 a0 04 	or $r7,$r7,$r8
   97eae:	00 81 80 1b 	lbi $r8,[$r3+#0x1b]
   97eb2:	40 84 60 08 	slli $r8,$r8,#24
   97eb6:	40 73 a0 04 	or $r7,$r7,$r8
   97eba:	f7 ba       	swi37.sp $r7,[+#0xe8]
   97ebc:	00 81 80 1d 	lbi $r8,[$r3+#0x1d]
   97ec0:	00 71 80 1e 	lbi $r7,[$r3+#0x1e]
   97ec4:	40 84 20 08 	slli $r8,$r8,#8
   97ec8:	40 73 c0 08 	slli $r7,$r7,#16
   97ecc:	40 84 1c 04 	or $r8,$r8,$r7
   97ed0:	00 71 80 1c 	lbi $r7,[$r3+#0x1c]
   97ed4:	40 84 1c 04 	or $r8,$r8,$r7
   97ed8:	00 71 80 1f 	lbi $r7,[$r3+#0x1f]
   97edc:	f5 bc       	swi37.sp $r5,[+#0xf0]
   97ede:	40 73 e0 08 	slli $r7,$r7,#24
   97ee2:	40 34 1c 04 	or $r3,$r8,$r7
   97ee6:	f3 bb       	swi37.sp $r3,[+#0xec]
   97ee8:	a7 61       	lbi333 $r5,[$r4+#0x1]
   97eea:	a6 e2       	lbi333 $r3,[$r4+#0x2]
   97eec:	40 52 a0 08 	slli $r5,$r5,#8
   97ef0:	40 31 c0 08 	slli $r3,$r3,#16
   97ef4:	fe ef       	or33 $r3,$r5
   97ef6:	a7 60       	lbi333 $r5,[$r4+#0x0]
   97ef8:	fe ef       	or33 $r3,$r5
   97efa:	a7 63       	lbi333 $r5,[$r4+#0x3]
   97efc:	40 52 e0 08 	slli $r5,$r5,#24
   97f00:	fe ef       	or33 $r3,$r5
   97f02:	f3 bd       	swi37.sp $r3,[+#0xf4]
   97f04:	a7 65       	lbi333 $r5,[$r4+#0x5]
   97f06:	a6 e6       	lbi333 $r3,[$r4+#0x6]
   97f08:	40 52 a0 08 	slli $r5,$r5,#8
   97f0c:	40 31 c0 08 	slli $r3,$r3,#16
   97f10:	fe ef       	or33 $r3,$r5
   97f12:	a7 64       	lbi333 $r5,[$r4+#0x4]
   97f14:	fe ef       	or33 $r3,$r5
   97f16:	a7 67       	lbi333 $r5,[$r4+#0x7]
   97f18:	40 52 e0 08 	slli $r5,$r5,#24
   97f1c:	fe ef       	or33 $r3,$r5
   97f1e:	f3 be       	swi37.sp $r3,[+#0xf8]
   97f20:	00 52 00 09 	lbi $r5,[$r4+#0x9]
   97f24:	00 32 00 0a 	lbi $r3,[$r4+#0xa]
   97f28:	40 52 a0 08 	slli $r5,$r5,#8
   97f2c:	40 31 c0 08 	slli $r3,$r3,#16
   97f30:	fe ef       	or33 $r3,$r5
   97f32:	00 52 00 08 	lbi $r5,[$r4+#0x8]
   97f36:	00 42 00 0b 	lbi $r4,[$r4+#0xb]
   97f3a:	fe ef       	or33 $r3,$r5
   97f3c:	40 42 60 08 	slli $r4,$r4,#24
   97f40:	fe e7       	or33 $r3,$r4
   97f42:	f3 bf       	swi37.sp $r3,[+#0xfc]
   97f44:	f0 82       	swi37.sp $r0,[+#0x8]
   97f46:	f6 83       	swi37.sp $r6,[+#0xc]
   97f48:	f1 81       	swi37.sp $r1,[+#0x4]
   97f4a:	48 00 01 41 	j 981cc <Encrypt+0x46a>
   97f4e:	f2 06       	lwi37.sp $r2,[+#0x18]
   97f50:	5c f1 00 40 	slti $r15,$r2,#64
   97f54:	e8 03       	beqzs8 97f5a <Encrypt+0x1f8>
   97f56:	f2 85       	swi37.sp $r2,[+#0x14]
   97f58:	d5 04       	j8 97f60 <Encrypt+0x1fe>
   97f5a:	44 30 00 40 	movi $r3,#64
   97f5e:	f3 85       	swi37.sp $r3,[+#0x14]
   97f60:	f5 03       	lwi37.sp $r5,[+#0xc]
   97f62:	f4 02       	lwi37.sp $r4,[+#0x8]
   97f64:	3a 02 8c 04 	lmw.bim $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   97f68:	3a 02 0c 24 	smw.bim $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   97f6c:	3a 02 8c 04 	lmw.bim $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   97f70:	3a 02 0c 24 	smw.bim $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   97f74:	3a 02 8c 04 	lmw.bim $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   97f78:	3a 02 0c 24 	smw.bim $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   97f7c:	3a 02 8c 00 	lmw.bi $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   97f80:	3a 02 0c 20 	smw.bi $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   97f84:	f3 17       	lwi37.sp $r3,[+#0x5c]
   97f86:	f4 10       	lwi37.sp $r4,[+#0x40]
   97f88:	f3 89       	swi37.sp $r3,[+#0x24]
   97f8a:	f3 1f       	lwi37.sp $r3,[+#0x7c]
   97f8c:	f4 84       	swi37.sp $r4,[+#0x10]
   97f8e:	f3 88       	swi37.sp $r3,[+#0x20]
   97f90:	f3 1b       	lwi37.sp $r3,[+#0x6c]
   97f92:	f1 14       	lwi37.sp $r1,[+#0x50]
   97f94:	f3 87       	swi37.sp $r3,[+#0x1c]
   97f96:	fa 64       	movpi45 $r3,#0x14
   97f98:	05 cf 80 1c 	lwi $fp,[$sp+#0x70]
   97f9c:	f6 18       	lwi37.sp $r6,[+#0x60]
   97f9e:	05 ef 80 11 	lwi $lp,[$sp+#0x44]
   97fa2:	f0 15       	lwi37.sp $r0,[+#0x54]
   97fa4:	04 8f 80 1d 	lwi $r8,[$sp+#0x74]
   97fa8:	f2 19       	lwi37.sp $r2,[+#0x64]
   97faa:	04 9f 80 12 	lwi $r9,[$sp+#0x48]
   97fae:	f5 16       	lwi37.sp $r5,[+#0x58]
   97fb0:	f4 1e       	lwi37.sp $r4,[+#0x78]
   97fb2:	f7 1a       	lwi37.sp $r7,[+#0x68]
   97fb4:	04 af 80 13 	lwi $r10,[$sp+#0x4c]
   97fb8:	f3 8a       	swi37.sp $r3,[+#0x28]
   97fba:	f3 04       	lwi37.sp $r3,[+#0x10]
   97fbc:	89 25       	add45 $r9,$r5
   97fbe:	98 cb       	add333 $r3,$r1,$r3
   97fc0:	41 c1 f0 03 	xor $fp,$r3,$fp
   97fc4:	41 ce 40 0b 	rotri $fp,$fp,#16
   97fc8:	88 dc       	add45 $r6,$fp
   97fca:	fe 75       	xor33 $r1,$r6
   97fcc:	40 10 d0 0b 	rotri $r1,$r1,#20
   97fd0:	98 cb       	add333 $r3,$r1,$r3
   97fd2:	41 c1 f0 03 	xor $fp,$r3,$fp
   97fd6:	41 ce 60 0b 	rotri $fp,$fp,#24
   97fda:	40 44 90 03 	xor $r4,$r9,$r4
   97fde:	88 dc       	add45 $r6,$fp
   97fe0:	40 42 40 0b 	rotri $r4,$r4,#16
   97fe4:	f6 8e       	swi37.sp $r6,[+#0x38]
   97fe6:	fe 75       	xor33 $r1,$r6
   97fe8:	99 a7       	add333 $r6,$r4,$r7
   97fea:	41 e0 78 00 	add $lp,$r0,$lp
   97fee:	ff 75       	xor33 $r5,$r6
   97ff0:	40 10 e4 0b 	rotri $r1,$r1,#25
   97ff4:	40 8f 20 03 	xor $r8,$lp,$r8
   97ff8:	40 52 d0 0b 	rotri $r5,$r5,#20
   97ffc:	f1 8f       	swi37.sp $r1,[+#0x3c]
   97ffe:	40 84 40 0b 	rotri $r8,$r8,#16
   98002:	40 12 a4 00 	add $r1,$r5,$r9
   98006:	88 48       	add45 $r2,$r8
   98008:	ff 0d       	xor33 $r4,$r1
   9800a:	40 42 60 0b 	rotri $r4,$r4,#24
   9800e:	fe 15       	xor33 $r0,$r2
   98010:	99 a6       	add333 $r6,$r4,$r6
   98012:	40 00 50 0b 	rotri $r0,$r0,#20
   98016:	b6 9f       	swi450 $r4,[$sp]
   98018:	f4 09       	lwi37.sp $r4,[+#0x24]
   9801a:	41 e0 78 00 	add $lp,$r0,$lp
   9801e:	04 9f 80 08 	lwi $r9,[$sp+#0x20]
   98022:	89 44       	add45 $r10,$r4
   98024:	40 8f 20 03 	xor $r8,$lp,$r8
   98028:	f3 84       	swi37.sp $r3,[+#0x10]
   9802a:	40 75 24 03 	xor $r7,$r10,$r9
   9802e:	f3 07       	lwi37.sp $r3,[+#0x1c]
   98030:	40 84 60 0b 	rotri $r8,$r8,#24
   98034:	88 48       	add45 $r2,$r8
   98036:	40 73 c0 0b 	rotri $r7,$r7,#16
   9803a:	f2 8d       	swi37.sp $r2,[+#0x34]
   9803c:	fe 15       	xor33 $r0,$r2
   9803e:	98 bb       	add333 $r2,$r7,$r3
   98040:	40 31 10 03 	xor $r3,$r2,$r4
   98044:	40 31 d0 0b 	rotri $r3,$r3,#20
   98048:	89 43       	add45 $r10,$r3
   9804a:	f4 04       	lwi37.sp $r4,[+#0x10]
   9804c:	40 00 64 0b 	rotri $r0,$r0,#25
   98050:	40 75 1c 03 	xor $r7,$r10,$r7
   98054:	40 90 10 00 	add $r9,$r0,$r4
   98058:	40 73 e0 0b 	rotri $r7,$r7,#24
   9805c:	98 ba       	add333 $r2,$r7,$r2
   9805e:	40 74 9c 03 	xor $r7,$r9,$r7
   98062:	40 73 c0 0b 	rotri $r7,$r7,#16
   98066:	ff 75       	xor33 $r5,$r6
   98068:	99 be       	add333 $r6,$r7,$r6
   9806a:	fe 35       	xor33 $r0,$r6
   9806c:	fe d5       	xor33 $r3,$r2
   9806e:	40 00 50 0b 	rotri $r0,$r0,#20
   98072:	89 20       	add45 $r9,$r0
   98074:	40 31 e4 0b 	rotri $r3,$r3,#25
   98078:	40 52 e4 0b 	rotri $r5,$r5,#25
   9807c:	40 74 9c 03 	xor $r7,$r9,$r7
   98080:	14 9f 80 04 	swi $r9,[$sp+#0x10]
   98084:	40 91 84 00 	add $r9,$r3,$r1
   98088:	41 e2 f8 00 	add $lp,$r5,$lp
   9808c:	40 84 a0 03 	xor $r8,$r9,$r8
   98090:	f1 0e       	lwi37.sp $r1,[+#0x38]
   98092:	40 73 e0 0b 	rotri $r7,$r7,#24
   98096:	41 cf 70 03 	xor $fp,$lp,$fp
   9809a:	40 84 40 0b 	rotri $r8,$r8,#16
   9809e:	41 ce 40 0b 	rotri $fp,$fp,#16
   980a2:	f7 88       	swi37.sp $r7,[+#0x20]
   980a4:	99 fe       	add333 $r7,$r7,$r6
   980a6:	40 64 04 00 	add $r6,$r8,$r1
   980aa:	88 5c       	add45 $r2,$fp
   980ac:	fe f5       	xor33 $r3,$r6
   980ae:	ff 55       	xor33 $r5,$r2
   980b0:	40 31 d0 0b 	rotri $r3,$r3,#20
   980b4:	40 52 d0 0b 	rotri $r5,$r5,#20
   980b8:	89 23       	add45 $r9,$r3
   980ba:	41 e2 f8 00 	add $lp,$r5,$lp
   980be:	40 84 a0 03 	xor $r8,$r9,$r8
   980c2:	41 cf 70 03 	xor $fp,$lp,$fp
   980c6:	40 84 60 0b 	rotri $r8,$r8,#24
   980ca:	41 ce 60 0b 	rotri $fp,$fp,#24
   980ce:	88 c8       	add45 $r6,$r8
   980d0:	88 5c       	add45 $r2,$fp
   980d2:	fe f5       	xor33 $r3,$r6
   980d4:	ff 55       	xor33 $r5,$r2
   980d6:	40 31 e4 0b 	rotri $r3,$r3,#25
   980da:	f2 87       	swi37.sp $r2,[+#0x1c]
   980dc:	f2 0f       	lwi37.sp $r2,[+#0x3c]
   980de:	f3 89       	swi37.sp $r3,[+#0x24]
   980e0:	b4 7f       	lwi450 $r3,[$sp]
   980e2:	89 42       	add45 $r10,$r2
   980e4:	40 45 0c 03 	xor $r4,$r10,$r3
   980e8:	f1 0d       	lwi37.sp $r1,[+#0x34]
   980ea:	40 42 40 0b 	rotri $r4,$r4,#16
   980ee:	f3 0f       	lwi37.sp $r3,[+#0x3c]
   980f0:	98 a1       	add333 $r2,$r4,$r1
   980f2:	40 11 0c 03 	xor $r1,$r2,$r3
   980f6:	40 10 d0 0b 	rotri $r1,$r1,#20
   980fa:	89 41       	add45 $r10,$r1
   980fc:	40 45 10 03 	xor $r4,$r10,$r4
   98100:	f3 0a       	lwi37.sp $r3,[+#0x28]
   98102:	40 42 60 0b 	rotri $r4,$r4,#24
   98106:	98 a2       	add333 $r2,$r4,$r2
   98108:	fe 3d       	xor33 $r0,$r7
   9810a:	fe 55       	xor33 $r1,$r2
   9810c:	9e da       	subi333 $r3,$r3,#2
   9810e:	40 00 64 0b 	rotri $r0,$r0,#25
   98112:	40 52 e4 0b 	rotri $r5,$r5,#25
   98116:	40 10 e4 0b 	rotri $r1,$r1,#25
   9811a:	f3 8a       	swi37.sp $r3,[+#0x28]
   9811c:	4e 33 ff 4f 	bnez $r3,97fba <Encrypt+0x258>
   98120:	f3 04       	lwi37.sp $r3,[+#0x10]
   98122:	f0 95       	swi37.sp $r0,[+#0x54]
   98124:	14 9f 80 12 	swi $r9,[$sp+#0x48]
   98128:	f0 07       	lwi37.sp $r0,[+#0x1c]
   9812a:	f4 9e       	swi37.sp $r4,[+#0x78]
   9812c:	04 9f 80 08 	lwi $r9,[$sp+#0x20]
   98130:	f4 09       	lwi37.sp $r4,[+#0x24]
   98132:	f0 9b       	swi37.sp $r0,[+#0x6c]
   98134:	f3 90       	swi37.sp $r3,[+#0x40]
   98136:	f1 94       	swi37.sp $r1,[+#0x50]
   98138:	15 cf 80 1c 	swi $fp,[$sp+#0x70]
   9813c:	f6 98       	swi37.sp $r6,[+#0x60]
   9813e:	15 ef 80 11 	swi $lp,[$sp+#0x44]
   98142:	14 8f 80 1d 	swi $r8,[$sp+#0x74]
   98146:	f2 99       	swi37.sp $r2,[+#0x64]
   98148:	f5 96       	swi37.sp $r5,[+#0x58]
   9814a:	f7 9a       	swi37.sp $r7,[+#0x68]
   9814c:	14 af 80 13 	swi $r10,[$sp+#0x4c]
   98150:	f4 97       	swi37.sp $r4,[+#0x5c]
   98152:	14 9f 80 1f 	swi $r9,[$sp+#0x7c]
   98156:	f0 0a       	lwi37.sp $r0,[+#0x28]
   98158:	b0 70       	addri36.sp $r1,#0xc0
   9815a:	b0 d0       	addri36.sp $r3,#0x40
   9815c:	38 20 80 02 	lw $r2,[$r1+($r0<<#0x0)]
   98160:	38 11 80 02 	lw $r1,[$r3+($r0<<#0x0)]
   98164:	98 51       	add333 $r1,$r2,$r1
   98166:	38 11 80 0a 	sw $r1,[$r3+($r0<<#0x0)]
   9816a:	9c 04       	addi333 $r0,$r0,#4
   9816c:	5a 08 40 f6 	bnec $r0,#64,98158 <Encrypt+0x3f6>
   98170:	80 03       	mov55 $r0,$r3
   98172:	b0 60       	addri36.sp $r1,#0x80
   98174:	a7 00       	lbi333 $r4,[$r0+#0x0]
   98176:	af 08       	sbi333 $r4,[$r1+#0x0]
   98178:	b4 40       	lwi450 $r2,[$r0]
   9817a:	92 48       	srli45 $r2,#8
   9817c:	ae 89       	sbi333 $r2,[$r1+#0x1]
   9817e:	00 90 00 02 	lbi $r9,[$r0+#0x2]
   98182:	10 90 80 02 	sbi $r9,[$r1+#0x2]
   98186:	a2 81       	lwi333.bi $r2,[$r0],#0x4
   98188:	92 58       	srli45 $r2,#24
   9818a:	ae 8b       	sbi333 $r2,[$r1+#0x3]
   9818c:	9c 4c       	addi333 $r1,$r1,#4
   9818e:	f2 01       	lwi37.sp $r2,[+#0x4]
   98190:	4c 01 7f f2 	bne $r0,$r2,98174 <Encrypt+0x412>
   98194:	f2 0c       	lwi37.sp $r2,[+#0x30]
   98196:	84 00       	movi55 $r0,#0
   98198:	b1 20       	addri36.sp $r4,#0x80
   9819a:	38 32 00 00 	lb $r3,[$r4+($r0<<#0x0)]
   9819e:	38 11 00 00 	lb $r1,[$r2+($r0<<#0x0)]
   981a2:	04 9f 80 0b 	lwi $r9,[$sp+#0x2c]
   981a6:	fe 5d       	xor33 $r1,$r3
   981a8:	38 14 80 08 	sb $r1,[$r9+($r0<<#0x0)]
   981ac:	9c 01       	addi333 $r0,$r0,#1
   981ae:	f1 05       	lwi37.sp $r1,[+#0x14]
   981b0:	e2 01       	slt45 $r0,$r1
   981b2:	e9 f3       	bnezs8 98198 <Encrypt+0x436>
   981b4:	f2 0c       	lwi37.sp $r2,[+#0x30]
   981b6:	f3 06       	lwi37.sp $r3,[+#0x18]
   981b8:	f0 3c       	lwi37.sp $r0,[+#0xf0]
   981ba:	89 21       	add45 $r9,$r1
   981bc:	98 91       	add333 $r2,$r2,$r1
   981be:	9a d9       	sub333 $r3,$r3,$r1
   981c0:	9c 01       	addi333 $r0,$r0,#1
   981c2:	14 9f 80 0b 	swi $r9,[$sp+#0x2c]
   981c6:	f2 8c       	swi37.sp $r2,[+#0x30]
   981c8:	f3 86       	swi37.sp $r3,[+#0x18]
   981ca:	f0 bc       	swi37.sp $r0,[+#0xf0]
   981cc:	f4 06       	lwi37.sp $r4,[+#0x18]
   981ce:	4e 43 fe c0 	bnez $r4,97f4e <Encrypt+0x1ec>
   981d2:	ed 00       	addi10.sp #256
   981d4:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000981d6 <hci_log_set>:
   981d6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   981d8:	3e 07 c6 c2 	sbi.gp $r0,[+#-14654]
   981dc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000981de <hci_acl_send>:
   981de:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   981e0:	40 80 00 13 	zeh $r8,$r0
   981e4:	2e 07 c6 c2 	lbi.gp $r0,[+#-14654]
   981e8:	80 e1       	mov55 $r7,$r1
   981ea:	96 16       	bmski33 $r0,#0x2
   981ec:	97 91       	zeh33 $r6,$r2
   981ee:	c0 06       	beqz38 $r0,981fa <hci_acl_send+0x1c>
   981f0:	84 0a       	movi55 $r0,#10
   981f2:	80 46       	mov55 $r2,$r6
   981f4:	84 60       	movi55 $r3,#0
   981f6:	49 00 12 30 	jal 9a656 <AB_Log_HexDisplay>
   981fa:	3c 0d f1 a1 	lwi.gp $r0,[+#-14716]
   981fe:	80 27       	mov55 $r1,$r7
   98200:	a0 01       	lwi333 $r0,[$r0+#0x4]
   98202:	80 46       	mov55 $r2,$r6
   98204:	a0 c3       	lwi333 $r3,[$r0+#0xc]
   98206:	80 08       	mov55 $r0,$r8
   98208:	dd 23       	jral5 $r3
   9820a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009820c <hci_cmd_send>:
   9820c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9820e:	40 80 00 13 	zeh $r8,$r0
   98212:	2e 07 c6 c2 	lbi.gp $r0,[+#-14654]
   98216:	80 e1       	mov55 $r7,$r1
   98218:	96 04       	xlsb33 $r0,$r0
   9821a:	97 90       	zeb33 $r6,$r2
   9821c:	c0 06       	beqz38 $r0,98228 <hci_cmd_send+0x1c>
   9821e:	80 08       	mov55 $r0,$r8
   98220:	80 26       	mov55 $r1,$r6
   98222:	80 47       	mov55 $r2,$r7
   98224:	49 00 11 ee 	jal 9a600 <AB_Log_CmdShow>
   98228:	3c 0d f1 a1 	lwi.gp $r0,[+#-14716]
   9822c:	80 27       	mov55 $r1,$r7
   9822e:	a0 01       	lwi333 $r0,[$r0+#0x4]
   98230:	80 46       	mov55 $r2,$r6
   98232:	a0 c2       	lwi333 $r3,[$r0+#0x8]
   98234:	80 08       	mov55 $r0,$r8
   98236:	dd 23       	jral5 $r3
   98238:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009823a <hci_init>:
   9823a:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   9823c:	f0 81       	swi37.sp $r0,[+#0x4]
   9823e:	3c 2f f1 a2 	swi.gp $r2,[+#-14712]
   98242:	3c 1f f1 a3 	swi.gp $r1,[+#-14708]
   98246:	97 20       	zeb33 $r4,$r4
   98248:	84 00       	movi55 $r0,#0
   9824a:	f3 82       	swi37.sp $r3,[+#0x8]
   9824c:	f4 83       	swi37.sp $r4,[+#0xc]
   9824e:	49 00 13 0e 	jal 9a86a <AB_module_count>
   98252:	83 80       	mov55 $fp,$r0
   98254:	84 c0       	movi55 $r6,#0
   98256:	d5 36       	j8 982c2 <hci_init+0x88>
   98258:	80 06       	mov55 $r0,$r6
   9825a:	49 00 13 28 	jal 9a8aa <AB_module_get>
   9825e:	b6 1f       	swi450 $r0,[$sp]
   98260:	b4 00       	lwi450 $r0,[$r0]
   98262:	46 10 00 9f 	sethi $r1,#0x9f
   98266:	58 10 88 48 	ori $r1,$r1,#0x848
   9826a:	49 ff bf 17 	jal 90098 <strcmp>
   9826e:	80 e0       	mov55 $r7,$r0
   98270:	c8 28       	bnez38 $r0,982c0 <hci_init+0x86>
   98272:	80 07       	mov55 $r0,$r7
   98274:	49 00 13 1b 	jal 9a8aa <AB_module_get>
   98278:	81 00       	mov55 $r8,$r0
   9827a:	b4 00       	lwi450 $r0,[$r0]
   9827c:	46 10 00 9f 	sethi $r1,#0x9f
   98280:	58 10 88 f0 	ori $r1,$r1,#0x8f0
   98284:	49 ff bf 0a 	jal 90098 <strcmp>
   98288:	c8 19       	bnez38 $r0,982ba <hci_init+0x80>
   9828a:	b4 1f       	lwi450 $r0,[$sp]
   9828c:	04 a4 00 01 	lwi $r10,[$r8+#0x4]
   98290:	04 90 00 01 	lwi $r9,[$r0+#0x4]
   98294:	b4 0a       	lwi450 $r0,[$r10]
   98296:	b4 29       	lwi450 $r1,[$r9]
   98298:	49 ff bf 00 	jal 90098 <strcmp>
   9829c:	c8 0f       	bnez38 $r0,982ba <hci_init+0x80>
   9829e:	04 55 00 01 	lwi $r5,[$r10+#0x4]
   982a2:	f2 01       	lwi37.sp $r2,[+#0x4]
   982a4:	f3 02       	lwi37.sp $r3,[+#0x8]
   982a6:	f4 03       	lwi37.sp $r4,[+#0xc]
   982a8:	80 09       	mov55 $r0,$r9
   982aa:	46 10 00 98 	sethi $r1,#0x98
   982ae:	58 10 82 c8 	ori $r1,$r1,#0x2c8
   982b2:	dd 25       	jral5 $r5
   982b4:	3c 8f f1 a1 	swi.gp $r8,[+#-14716]
   982b8:	d5 07       	j8 982c6 <hci_init+0x8c>
   982ba:	9d f9       	addi333 $r7,$r7,#1
   982bc:	e2 fc       	slt45 $r7,$fp
   982be:	e9 da       	bnezs8 98272 <hci_init+0x38>
   982c0:	9d b1       	addi333 $r6,$r6,#1
   982c2:	e2 dc       	slt45 $r6,$fp
   982c4:	e9 ca       	bnezs8 98258 <hci_init+0x1e>
   982c6:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

000982c8 <hci_pkt_recv>:
   982c8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   982ca:	80 c0       	mov55 $r6,$r0
   982cc:	b4 00       	lwi450 $r0,[$r0]
   982ce:	5a 08 02 13 	bnec $r0,#2,982f4 <hci_pkt_recv+0x2c>
   982d2:	2e 07 c6 c2 	lbi.gp $r0,[+#-14654]
   982d6:	96 16       	bmski33 $r0,#0x2
   982d8:	c0 07       	beqz38 $r0,982e6 <hci_pkt_recv+0x1e>
   982da:	a0 72       	lwi333 $r1,[$r6+#0x8]
   982dc:	a4 b3       	lhi333 $r2,[$r6+#0x6]
   982de:	84 0a       	movi55 $r0,#10
   982e0:	84 60       	movi55 $r3,#0
   982e2:	49 00 11 ba 	jal 9a656 <AB_Log_HexDisplay>
   982e6:	3c 3d f1 a3 	lwi.gp $r3,[+#-14708]
   982ea:	a4 73       	lhi333 $r1,[$r6+#0x6]
   982ec:	a4 32       	lhi333 $r0,[$r6+#0x4]
   982ee:	a0 b2       	lwi333 $r2,[$r6+#0x8]
   982f0:	dd 23       	jral5 $r3
   982f2:	d5 1a       	j8 98326 <hci_pkt_recv+0x5e>
   982f4:	5a 08 04 19 	bnec $r0,#4,98326 <hci_pkt_recv+0x5e>
   982f8:	2e 07 c6 c2 	lbi.gp $r0,[+#-14654]
   982fc:	96 0e       	bmski33 $r0,#0x1
   982fe:	c0 0a       	beqz38 $r0,98312 <hci_pkt_recv+0x4a>
   98300:	a4 b4       	lhi333 $r2,[$r6+#0x8]
   98302:	a4 f3       	lhi333 $r3,[$r6+#0x6]
   98304:	40 21 40 08 	slli $r2,$r2,#16
   98308:	a6 34       	lbi333 $r0,[$r6+#0x4]
   9830a:	a6 75       	lbi333 $r1,[$r6+#0x5]
   9830c:	fe 9f       	or33 $r2,$r3
   9830e:	49 00 11 44 	jal 9a596 <AB_Log_EvtShow>
   98312:	a4 b4       	lhi333 $r2,[$r6+#0x8]
   98314:	a4 f3       	lhi333 $r3,[$r6+#0x6]
   98316:	40 21 40 08 	slli $r2,$r2,#16
   9831a:	3c 4d f1 a2 	lwi.gp $r4,[+#-14712]
   9831e:	a6 75       	lbi333 $r1,[$r6+#0x5]
   98320:	a6 34       	lbi333 $r0,[$r6+#0x4]
   98322:	fe 9f       	or33 $r2,$r3
   98324:	dd 24       	jral5 $r4
   98326:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00098328 <hci_dat_info_update>:
   98328:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9832a:	3c 0b e7 68 	shi.gp $r0,[+#-12592]
   9832e:	3c 1b e7 62 	shi.gp $r1,[+#-12604]
   98332:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00098334 <hci_pending_acl>:
   98334:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   98336:	3c 03 e7 63 	lhi.gp $r0,[+#-12602]
   9833a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009833c <hci_command_event>:
   9833c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9833e:	3e 8f ce c8 	addi.gp $r8,#-12600
   98342:	40 90 00 13 	zeh $r9,$r0
   98346:	b4 08       	lwi450 $r0,[$r8]
   98348:	81 41       	mov55 $r10,$r1
   9834a:	49 00 13 c7 	jal 9aad8 <AB_queue_count>
   9834e:	80 c0       	mov55 $r6,$r0
   98350:	84 e0       	movi55 $r7,#0
   98352:	d5 14       	j8 9837a <hci_command_event+0x3e>
   98354:	b4 08       	lwi450 $r0,[$r8]
   98356:	49 00 13 b4 	jal 9aabe <AB_queue_pop>
   9835a:	80 20       	mov55 $r1,$r0
   9835c:	c0 0e       	beqz38 $r0,98378 <hci_command_event+0x3c>
   9835e:	cf 0a       	bnez38 $r7,98372 <hci_command_event+0x36>
   98360:	a4 80       	lhi333 $r2,[$r0+#0x0]
   98362:	4c 24 c0 08 	bne $r2,$r9,98372 <hci_command_event+0x36>
   98366:	a0 42       	lwi333 $r1,[$r0+#0x8]
   98368:	a1 c1       	lwi333 $r7,[$r0+#0x4]
   9836a:	b6 2a       	swi450 $r1,[$r10]
   9836c:	49 00 13 c2 	jal 9aaf0 <AB_queue_entry_free>
   98370:	d5 04       	j8 98378 <hci_command_event+0x3c>
   98372:	b4 08       	lwi450 $r0,[$r8]
   98374:	49 00 13 71 	jal 9aa56 <AB_queue_push>
   98378:	9f b1       	subi333 $r6,$r6,#1
   9837a:	ce ed       	bnez38 $r6,98354 <hci_command_event+0x18>
   9837c:	3c 0d f3 b3 	lwi.gp $r0,[+#-12596]
   98380:	49 00 13 9f 	jal 9aabe <AB_queue_pop>
   98384:	80 c0       	mov55 $r6,$r0
   98386:	c0 1a       	beqz38 $r0,983ba <hci_command_event+0x7e>
   98388:	a0 01       	lwi333 $r0,[$r0+#0x4]
   9838a:	c0 0f       	beqz38 $r0,983a8 <hci_command_event+0x6c>
   9838c:	84 0c       	movi55 $r0,#12
   9838e:	49 00 13 cb 	jal 9ab24 <AB_queue_entry_alloc>
   98392:	80 20       	mov55 $r1,$r0
   98394:	a4 30       	lhi333 $r0,[$r6+#0x0]
   98396:	ac 08       	shi333 $r0,[$r1+#0x0]
   98398:	a0 31       	lwi333 $r0,[$r6+#0x4]
   9839a:	a8 09       	swi333 $r0,[$r1+#0x4]
   9839c:	a0 32       	lwi333 $r0,[$r6+#0x8]
   9839e:	a8 0a       	swi333 $r0,[$r1+#0x8]
   983a0:	3c 0d f3 b2 	lwi.gp $r0,[+#-12600]
   983a4:	49 00 13 59 	jal 9aa56 <AB_queue_push>
   983a8:	80 26       	mov55 $r1,$r6
   983aa:	0a 00 80 06 	lhi.bi $r0,[$r1],#0xc
   983ae:	a6 b2       	lbi333 $r2,[$r6+#0x2]
   983b0:	49 ff ff 2e 	jal 9820c <hci_cmd_send>
   983b4:	80 06       	mov55 $r0,$r6
   983b6:	49 00 13 9d 	jal 9aaf0 <AB_queue_entry_free>
   983ba:	80 07       	mov55 $r0,$r7
   983bc:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000983be <hci_evt_handler>:
   983be:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   983c0:	97 c0       	zeb33 $r7,$r0
   983c2:	80 c2       	mov55 $r6,$r2
   983c4:	54 80 80 ff 	andi $r8,$r1,#0xff
   983c8:	5a 70 0f 0e 	beqc $r7,#15,983e4 <hci_evt_handler+0x26>
   983cc:	5a 70 13 20 	beqc $r7,#19,9840c <hci_evt_handler+0x4e>
   983d0:	5a 78 0e 51 	bnec $r7,#14,98472 <hci_evt_handler+0xb4>
   983d4:	a6 50       	lbi333 $r1,[$r2+#0x0]
   983d6:	3e 17 c6 c3 	sbi.gp $r1,[+#-14653]
   983da:	a6 12       	lbi333 $r0,[$r2+#0x2]
   983dc:	a6 51       	lbi333 $r1,[$r2+#0x1]
   983de:	40 00 20 08 	slli $r0,$r0,#8
   983e2:	d5 08       	j8 983f2 <hci_evt_handler+0x34>
   983e4:	a6 51       	lbi333 $r1,[$r2+#0x1]
   983e6:	3e 17 c6 c3 	sbi.gp $r1,[+#-14653]
   983ea:	a6 13       	lbi333 $r0,[$r2+#0x3]
   983ec:	a6 52       	lbi333 $r1,[$r2+#0x2]
   983ee:	40 00 20 08 	slli $r0,$r0,#8
   983f2:	98 01       	add333 $r0,$r0,$r1
   983f4:	96 01       	zeh33 $r0,$r0
   983f6:	b0 41       	addri36.sp $r1,#0x4
   983f8:	49 ff ff a2 	jal 9833c <hci_command_event>
   983fc:	80 80       	mov55 $r4,$r0
   983fe:	c0 40       	beqz38 $r0,9847e <hci_evt_handler+0xc0>
   98400:	f3 01       	lwi37.sp $r3,[+#0x4]
   98402:	80 07       	mov55 $r0,$r7
   98404:	80 26       	mov55 $r1,$r6
   98406:	80 48       	mov55 $r2,$r8
   98408:	dd 24       	jral5 $r4
   9840a:	d5 3a       	j8 9847e <hci_evt_handler+0xc0>
   9840c:	3c 13 e7 62 	lhi.gp $r1,[+#-12604]
   98410:	a6 d0       	lbi333 $r3,[$r2+#0x0]
   98412:	84 00       	movi55 $r0,#0
   98414:	d5 0b       	j8 9842a <hci_evt_handler+0x6c>
   98416:	94 82       	slli333 $r2,$r0,#2
   98418:	98 b2       	add333 $r2,$r6,$r2
   9841a:	a7 13       	lbi333 $r4,[$r2+#0x3]
   9841c:	a6 94       	lbi333 $r2,[$r2+#0x4]
   9841e:	9c 01       	addi333 $r0,$r0,#1
   98420:	40 21 20 08 	slli $r2,$r2,#8
   98424:	fe a7       	or33 $r2,$r4
   98426:	98 4a       	add333 $r1,$r1,$r2
   98428:	96 49       	zeh33 $r1,$r1
   9842a:	96 80       	zeb33 $r2,$r0
   9842c:	e2 43       	slt45 $r2,$r3
   9842e:	e9 f4       	bnezs8 98416 <hci_evt_handler+0x58>
   98430:	2e 07 ce bc 	lbi.gp $r0,[+#-12612]
   98434:	3e 7f ce c4 	addi.gp $r7,#-12604
   98438:	ac 78       	shi333 $r1,[$r7+#0x0]
   9843a:	c8 22       	bnez38 $r0,9847e <hci_evt_handler+0xc0>
   9843c:	3c 0d f3 b0 	lwi.gp $r0,[+#-12608]
   98440:	49 00 13 3f 	jal 9aabe <AB_queue_pop>
   98444:	80 c0       	mov55 $r6,$r0
   98446:	c0 1c       	beqz38 $r0,9847e <hci_evt_handler+0xc0>
   98448:	a4 38       	lhi333 $r0,[$r7+#0x0]
   9844a:	80 26       	mov55 $r1,$r6
   9844c:	9e 01       	subi333 $r0,$r0,#1
   9844e:	ac 38       	shi333 $r0,[$r7+#0x0]
   98450:	0a 00 80 02 	lhi.bi $r0,[$r1],#0x4
   98454:	a4 b1       	lhi333 $r2,[$r6+#0x2]
   98456:	49 ff fe c4 	jal 981de <hci_acl_send>
   9845a:	80 06       	mov55 $r0,$r6
   9845c:	49 00 13 4a 	jal 9aaf0 <AB_queue_entry_free>
   98460:	46 00 01 00 	sethi $r0,#0x100
   98464:	3c 23 e7 63 	lhi.gp $r2,[+#-12602]
   98468:	a4 71       	lhi333 $r1,[$r6+#0x2]
   9846a:	9a 51       	sub333 $r1,$r2,$r1
   9846c:	3c 1b e7 63 	shi.gp $r1,[+#-12602]
   98470:	d5 07       	j8 9847e <hci_evt_handler+0xc0>
   98472:	3c 3d f1 a4 	lwi.gp $r3,[+#-14704]
   98476:	c3 04       	beqz38 $r3,9847e <hci_evt_handler+0xc0>
   98478:	80 07       	mov55 $r0,$r7
   9847a:	80 28       	mov55 $r1,$r8
   9847c:	dd 23       	jral5 $r3
   9847e:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

00098480 <_hci_send_acl>:
   98480:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   98482:	3e 7f ce c4 	addi.gp $r7,#-12604
   98486:	40 90 00 13 	zeh $r9,$r0
   9848a:	a4 38       	lhi333 $r0,[$r7+#0x0]
   9848c:	81 01       	mov55 $r8,$r1
   9848e:	97 91       	zeh33 $r6,$r2
   98490:	c0 12       	beqz38 $r0,984b4 <_hci_send_acl+0x34>
   98492:	3c 0d f3 b0 	lwi.gp $r0,[+#-12608]
   98496:	49 00 13 21 	jal 9aad8 <AB_queue_count>
   9849a:	c8 0d       	bnez38 $r0,984b4 <_hci_send_acl+0x34>
   9849c:	2e 07 ce bc 	lbi.gp $r0,[+#-12612]
   984a0:	c8 0a       	bnez38 $r0,984b4 <_hci_send_acl+0x34>
   984a2:	a4 38       	lhi333 $r0,[$r7+#0x0]
   984a4:	80 28       	mov55 $r1,$r8
   984a6:	9e 01       	subi333 $r0,$r0,#1
   984a8:	ac 38       	shi333 $r0,[$r7+#0x0]
   984aa:	80 46       	mov55 $r2,$r6
   984ac:	80 09       	mov55 $r0,$r9
   984ae:	49 ff fe 98 	jal 981de <hci_acl_send>
   984b2:	d5 19       	j8 984e4 <_hci_send_acl+0x64>
   984b4:	9c 35       	addi333 $r0,$r6,#5
   984b6:	49 00 13 37 	jal 9ab24 <AB_queue_entry_alloc>
   984ba:	ad 81       	shi333 $r6,[$r0+#0x2]
   984bc:	12 90 00 00 	shi $r9,[$r0+#0x0]
   984c0:	80 46       	mov55 $r2,$r6
   984c2:	80 e0       	mov55 $r7,$r0
   984c4:	80 28       	mov55 $r1,$r8
   984c6:	9c 04       	addi333 $r0,$r0,#4
   984c8:	49 ff bd c0 	jal 90048 <memcpy>
   984cc:	3c 0d f3 b0 	lwi.gp $r0,[+#-12608]
   984d0:	80 27       	mov55 $r1,$r7
   984d2:	49 00 12 c2 	jal 9aa56 <AB_queue_push>
   984d6:	46 00 01 00 	sethi $r0,#0x100
   984da:	3c 13 e7 63 	lhi.gp $r1,[+#-12602]
   984de:	99 b1       	add333 $r6,$r6,$r1
   984e0:	3c 6b e7 63 	shi.gp $r6,[+#-12602]
   984e4:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000984e6 <hci_send_cmd_ex>:
   984e6:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   984e8:	81 41       	mov55 $r10,$r1
   984ea:	81 03       	mov55 $r8,$r3
   984ec:	83 84       	mov55 $fp,$r4
   984ee:	40 90 00 13 	zeh $r9,$r0
   984f2:	97 d0       	zeb33 $r7,$r2
   984f4:	64 22 00 02 	mfsr $r2,$PSW
   984f8:	64 02 00 43 	setgie.d
   984fc:	64 00 00 08 	dsb
   98500:	46 10 01 00 	sethi $r1,#0x100
   98504:	58 10 80 b0 	ori $r1,$r1,#0xb0
   98508:	b4 01       	lwi450 $r0,[$r1]
   9850a:	9c c1       	addi333 $r3,$r0,#1
   9850c:	b6 61       	swi450 $r3,[$r1]
   9850e:	c8 06       	bnez38 $r0,9851a <hci_send_cmd_ex+0x34>
   98510:	46 00 01 00 	sethi $r0,#0x100
   98514:	58 00 00 bc 	ori $r0,$r0,#0xbc
   98518:	b6 40       	swi450 $r2,[$r0]
   9851a:	3e 0f c6 c3 	addi.gp $r0,#-14653
   9851e:	a6 00       	lbi333 $r0,[$r0+#0x0]
   98520:	c0 22       	beqz38 $r0,98564 <hci_send_cmd_ex+0x7e>
   98522:	3e 6f ce c8 	addi.gp $r6,#-12600
   98526:	b4 06       	lwi450 $r0,[$r6]
   98528:	49 00 12 d8 	jal 9aad8 <AB_queue_count>
   9852c:	c8 1c       	bnez38 $r0,98564 <hci_send_cmd_ex+0x7e>
   9852e:	4e 82 00 10 	beqz $r8,9854e <hci_send_cmd_ex+0x68>
   98532:	84 0c       	movi55 $r0,#12
   98534:	49 00 12 f8 	jal 9ab24 <AB_queue_entry_alloc>
   98538:	15 c0 00 02 	swi $fp,[$r0+#0x8]
   9853c:	80 a0       	mov55 $r5,$r0
   9853e:	12 90 00 00 	shi $r9,[$r0+#0x0]
   98542:	14 80 00 01 	swi $r8,[$r0+#0x4]
   98546:	b4 06       	lwi450 $r0,[$r6]
   98548:	80 25       	mov55 $r1,$r5
   9854a:	49 00 12 86 	jal 9aa56 <AB_queue_push>
   9854e:	3e 0f c6 c3 	addi.gp $r0,#-14653
   98552:	a6 40       	lbi333 $r1,[$r0+#0x0]
   98554:	80 47       	mov55 $r2,$r7
   98556:	9e 49       	subi333 $r1,$r1,#1
   98558:	ae 40       	sbi333 $r1,[$r0+#0x0]
   9855a:	80 09       	mov55 $r0,$r9
   9855c:	80 2a       	mov55 $r1,$r10
   9855e:	49 ff fe 57 	jal 9820c <hci_cmd_send>
   98562:	d5 18       	j8 98592 <hci_send_cmd_ex+0xac>
   98564:	50 03 80 0f 	addi $r0,$r7,#15
   98568:	49 00 12 de 	jal 9ab24 <AB_queue_entry_alloc>
   9856c:	12 90 00 00 	shi $r9,[$r0+#0x0]
   98570:	af c2       	sbi333 $r7,[$r0+#0x2]
   98572:	14 80 00 01 	swi $r8,[$r0+#0x4]
   98576:	15 c0 00 02 	swi $fp,[$r0+#0x8]
   9857a:	80 c0       	mov55 $r6,$r0
   9857c:	80 2a       	mov55 $r1,$r10
   9857e:	8c 0c       	addi45 $r0,#12
   98580:	80 47       	mov55 $r2,$r7
   98582:	49 ff bd 63 	jal 90048 <memcpy>
   98586:	3e 0f ce cc 	addi.gp $r0,#-12596
   9858a:	b4 00       	lwi450 $r0,[$r0]
   9858c:	80 26       	mov55 $r1,$r6
   9858e:	49 00 12 64 	jal 9aa56 <AB_queue_push>
   98592:	46 00 01 00 	sethi $r0,#0x100
   98596:	58 00 00 b0 	ori $r0,$r0,#0xb0
   9859a:	b4 20       	lwi450 $r1,[$r0]
   9859c:	9e 49       	subi333 $r1,$r1,#1
   9859e:	b6 20       	swi450 $r1,[$r0]
   985a0:	b4 00       	lwi450 $r0,[$r0]
   985a2:	c8 0c       	bnez38 $r0,985ba <hci_send_cmd_ex+0xd4>
   985a4:	46 00 01 00 	sethi $r0,#0x100
   985a8:	58 00 00 bc 	ori $r0,$r0,#0xbc
   985ac:	b4 00       	lwi450 $r0,[$r0]
   985ae:	96 04       	xlsb33 $r0,$r0
   985b0:	c0 05       	beqz38 $r0,985ba <hci_send_cmd_ex+0xd4>
   985b2:	64 12 00 43 	setgie.e
   985b6:	64 00 00 08 	dsb
   985ba:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000985bc <hci_send_cmd>:
   985bc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   985be:	84 80       	movi55 $r4,#0
   985c0:	96 01       	zeh33 $r0,$r0
   985c2:	96 90       	zeb33 $r2,$r2
   985c4:	49 ff ff 91 	jal 984e6 <hci_send_cmd_ex>
   985c8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000985ca <hci_send_acl>:
   985ca:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   985cc:	81 21       	mov55 $r9,$r1
   985ce:	40 80 00 13 	zeh $r8,$r0
   985d2:	97 91       	zeh33 $r6,$r2
   985d4:	64 22 00 02 	mfsr $r2,$PSW
   985d8:	64 02 00 43 	setgie.d
   985dc:	64 00 00 08 	dsb
   985e0:	46 10 01 00 	sethi $r1,#0x100
   985e4:	58 10 80 b0 	ori $r1,$r1,#0xb0
   985e8:	b4 01       	lwi450 $r0,[$r1]
   985ea:	9c c1       	addi333 $r3,$r0,#1
   985ec:	b6 61       	swi450 $r3,[$r1]
   985ee:	c8 06       	bnez38 $r0,985fa <hci_send_acl+0x30>
   985f0:	46 00 01 00 	sethi $r0,#0x100
   985f4:	58 00 00 bc 	ori $r0,$r0,#0xbc
   985f8:	b6 40       	swi450 $r2,[$r0]
   985fa:	3e 0f ce d0 	addi.gp $r0,#-12592
   985fe:	a4 00       	lhi333 $r0,[$r0+#0x0]
   98600:	80 e6       	mov55 $r7,$r6
   98602:	96 41       	zeh33 $r1,$r0
   98604:	e2 26       	slt45 $r1,$r6
   98606:	e8 02       	beqzs8 9860a <hci_send_acl+0x40>
   98608:	80 e0       	mov55 $r7,$r0
   9860a:	97 f9       	zeh33 $r7,$r7
   9860c:	80 29       	mov55 $r1,$r9
   9860e:	80 47       	mov55 $r2,$r7
   98610:	9b b7       	sub333 $r6,$r6,$r7
   98612:	80 08       	mov55 $r0,$r8
   98614:	88 e9       	add45 $r7,$r9
   98616:	49 ff ff 35 	jal 98480 <_hci_send_acl>
   9861a:	97 b1       	zeh33 $r6,$r6
   9861c:	3e af ce d0 	addi.gp $r10,#-12592
   98620:	58 94 00 01 	ori $r9,$r8,#0x1
   98624:	d5 12       	j8 98648 <hci_send_acl+0x7e>
   98626:	02 25 00 00 	lhi $r2,[$r10+#0x0]
   9862a:	80 26       	mov55 $r1,$r6
   9862c:	96 11       	zeh33 $r0,$r2
   9862e:	e2 06       	slt45 $r0,$r6
   98630:	e8 02       	beqzs8 98634 <hci_send_acl+0x6a>
   98632:	80 22       	mov55 $r1,$r2
   98634:	40 80 80 13 	zeh $r8,$r1
   98638:	80 09       	mov55 $r0,$r9
   9863a:	80 27       	mov55 $r1,$r7
   9863c:	80 48       	mov55 $r2,$r8
   9863e:	8a c8       	sub45 $r6,$r8
   98640:	49 ff ff 20 	jal 98480 <_hci_send_acl>
   98644:	97 b1       	zeh33 $r6,$r6
   98646:	88 e8       	add45 $r7,$r8
   98648:	ce ef       	bnez38 $r6,98626 <hci_send_acl+0x5c>
   9864a:	46 00 01 00 	sethi $r0,#0x100
   9864e:	58 00 00 b0 	ori $r0,$r0,#0xb0
   98652:	b4 20       	lwi450 $r1,[$r0]
   98654:	9e 49       	subi333 $r1,$r1,#1
   98656:	b6 20       	swi450 $r1,[$r0]
   98658:	b4 00       	lwi450 $r0,[$r0]
   9865a:	c8 0c       	bnez38 $r0,98672 <hci_send_acl+0xa8>
   9865c:	46 00 01 00 	sethi $r0,#0x100
   98660:	58 00 00 bc 	ori $r0,$r0,#0xbc
   98664:	b4 00       	lwi450 $r0,[$r0]
   98666:	96 04       	xlsb33 $r0,$r0
   98668:	c0 05       	beqz38 $r0,98672 <hci_send_acl+0xa8>
   9866a:	64 12 00 43 	setgie.e
   9866e:	64 00 00 08 	dsb
   98672:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

00098674 <hci_cmd_evt_dat_init>:
   98674:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   98676:	81 42       	mov55 $r10,$r2
   98678:	80 e3       	mov55 $r7,$r3
   9867a:	97 a0       	zeb33 $r6,$r4
   9867c:	81 01       	mov55 $r8,$r1
   9867e:	81 20       	mov55 $r9,$r0
   98680:	49 00 12 5e 	jal 9ab3c <AB_queue_alloc>
   98684:	3c 0f f3 b3 	swi.gp $r0,[+#-12596]
   98688:	49 00 12 5a 	jal 9ab3c <AB_queue_alloc>
   9868c:	3c 0f f3 b2 	swi.gp $r0,[+#-12600]
   98690:	49 00 12 56 	jal 9ab3c <AB_queue_alloc>
   98694:	3c 0f f3 b0 	swi.gp $r0,[+#-12608]
   98698:	3c af f1 a4 	swi.gp $r10,[+#-14704]
   9869c:	80 28       	mov55 $r1,$r8
   9869e:	80 09       	mov55 $r0,$r9
   986a0:	46 20 00 98 	sethi $r2,#0x98
   986a4:	58 21 03 be 	ori $r2,$r2,#0x3be
   986a8:	80 67       	mov55 $r3,$r7
   986aa:	80 86       	mov55 $r4,$r6
   986ac:	49 ff fd c7 	jal 9823a <hci_init>
   986b0:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000986b2 <SM_Common_ValueCompare>:
   986b2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   986b4:	84 60       	movi55 $r3,#0
   986b6:	96 90       	zeb33 $r2,$r2
   986b8:	d5 09       	j8 986ca <SM_Common_ValueCompare+0x18>
   986ba:	38 40 8c 00 	lb $r4,[$r1+($r3<<#0x0)]
   986be:	08 50 00 01 	lbi.bi $r5,[$r0],#0x1
   986c2:	9c d9       	addi333 $r3,$r3,#1
   986c4:	d4 03       	beqs38 $r4,986ca <SM_Common_ValueCompare+0x18>
   986c6:	84 00       	movi55 $r0,#0
   986c8:	d5 05       	j8 986d2 <SM_Common_ValueCompare+0x20>
   986ca:	97 18       	zeb33 $r4,$r3
   986cc:	e2 82       	slt45 $r4,$r2
   986ce:	e9 f6       	bnezs8 986ba <SM_Common_ValueCompare+0x8>
   986d0:	84 01       	movi55 $r0,#1
   986d2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000986d4 <SM_Common_GetRi>:
   986d4:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   986d6:	84 60       	movi55 $r3,#0
   986d8:	b0 81       	addri36.sp $r2,#0x4
   986da:	ae d3       	sbi333 $r3,[$r2+#0x3]
   986dc:	8c 1f       	addi45 $r0,#31
   986de:	a6 ca       	lbi333 $r3,[$r1+#0x2]
   986e0:	ae d2       	sbi333 $r3,[$r2+#0x2]
   986e2:	a6 c9       	lbi333 $r3,[$r1+#0x1]
   986e4:	ae d1       	sbi333 $r3,[$r2+#0x1]
   986e6:	a6 48       	lbi333 $r1,[$r1+#0x0]
   986e8:	ae 50       	sbi333 $r1,[$r2+#0x0]
   986ea:	f1 01       	lwi37.sp $r1,[+#0x4]
   986ec:	40 00 80 0d 	srl $r0,$r1,$r0
   986f0:	96 04       	xlsb33 $r0,$r0
   986f2:	c0 04       	beqz38 $r0,986fa <SM_Common_GetRi+0x26>
   986f4:	44 00 00 81 	movi $r0,#129
   986f8:	d5 03       	j8 986fe <SM_Common_GetRi+0x2a>
   986fa:	44 00 00 80 	movi $r0,#128
   986fe:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

00098700 <SM_Common_AllocPairingData>:
   98700:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   98702:	97 c0       	zeb33 $r7,$r0
   98704:	44 00 01 18 	movi $r0,#280
   98708:	49 00 10 66 	jal 9a7d4 <malloc>
   9870c:	80 c0       	mov55 $r6,$r0
   9870e:	c0 14       	beqz38 $r0,98736 <SM_Common_AllocPairingData+0x36>
   98710:	84 20       	movi55 $r1,#0
   98712:	44 20 01 18 	movi $r2,#280
   98716:	49 ff bc b9 	jal 90088 <memset>
   9871a:	80 07       	mov55 $r0,$r7
   9871c:	49 ff d2 4e 	jal 92bb8 <ble_gap_link_GetAttr_BdAddrType>
   98720:	10 03 00 9f 	sbi $r0,[$r6+#0x9f]
   98724:	80 07       	mov55 $r0,$r7
   98726:	49 ff d2 3f 	jal 92ba4 <ble_gap_link_GetAttr_BdAddr>
   9872a:	80 20       	mov55 $r1,$r0
   9872c:	84 46       	movi55 $r2,#6
   9872e:	50 03 00 98 	addi $r0,$r6,#152
   98732:	49 ff bc 8b 	jal 90048 <memcpy>
   98736:	80 06       	mov55 $r0,$r6
   98738:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009873a <AB_ADC_Init>:
   9873a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9873c:	84 00       	movi55 $r0,#0
   9873e:	49 00 12 0e 	jal 9ab5a <AB_SECTOR_GetMpParameter>
   98742:	c0 30       	beqz38 $r0,987a2 <AB_ADC_Init+0x68>
   98744:	00 10 01 81 	lbi $r1,[$r0+#0x181]
   98748:	00 20 01 80 	lbi $r2,[$r0+#0x180]
   9874c:	40 10 a0 08 	slli $r1,$r1,#8
   98750:	fe 57       	or33 $r1,$r2
   98752:	c1 28       	beqz38 $r1,987a2 <AB_ADC_Init+0x68>
   98754:	3c 1b e3 5f 	shi.gp $r1,[+#-14658]
   98758:	50 20 01 82 	addi $r2,$r0,#386
   9875c:	3c 2f f3 b6 	swi.gp $r2,[+#-12584]
   98760:	84 60       	movi55 $r3,#0
   98762:	a7 10       	lbi333 $r4,[$r2+#0x0]
   98764:	c4 1b       	beqz38 $r4,9879a <AB_ADC_Init+0x60>
   98766:	ff 0c       	mul33 $r4,$r1
   98768:	44 2f ff ce 	movi $r2,#-50
   9876c:	40 22 08 96 	divsr $r2,$r4,$r4,$r2
   98770:	84 83       	movi55 $r4,#3
   98772:	42 01 90 73 	maddr32 $r0,$r3,$r4
   98776:	50 00 01 80 	addi $r0,$r0,#384
   9877a:	a6 c3       	lbi333 $r3,[$r0+#0x3]
   9877c:	a6 04       	lbi333 $r0,[$r0+#0x4]
   9877e:	40 00 20 08 	slli $r0,$r0,#8
   98782:	fe 1f       	or33 $r0,$r3
   98784:	98 90       	add333 $r2,$r2,$r0
   98786:	96 93       	seh33 $r2,$r2
   98788:	3c 2b e3 5e 	shi.gp $r2,[+#-14660]
   9878c:	46 00 00 a0 	sethi $r0,#0xa0
   98790:	58 00 02 c0 	ori $r0,$r0,#0x2c0
   98794:	49 00 10 a1 	jal 9a8d6 <printf>
   98798:	d5 05       	j8 987a2 <AB_ADC_Init+0x68>
   9879a:	9c d9       	addi333 $r3,$r3,#1
   9879c:	9c 93       	addi333 $r2,$r2,#3
   9879e:	5a 38 14 e2 	bnec $r3,#20,98762 <AB_ADC_Init+0x28>
   987a2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000987a4 <AB_CLK_Switch>:
   987a4:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   987a6:	80 c0       	mov55 $r6,$r0
   987a8:	84 01       	movi55 $r0,#1
   987aa:	97 c8       	zeb33 $r7,$r1
   987ac:	80 20       	mov55 $r1,$r0
   987ae:	49 00 17 05 	jal 9b5b8 <DRV_CLK_En>
   987b2:	84 00       	movi55 $r0,#0
   987b4:	49 00 16 ca 	jal 9b548 <DRV_CLK_16MSel>
   987b8:	84 01       	movi55 $r0,#1
   987ba:	49 00 16 9b 	jal 9b4f0 <DRV_CLK_SysSel>
   987be:	c7 0f       	beqz38 $r7,987dc <AB_CLK_Switch+0x38>
   987c0:	84 21       	movi55 $r1,#1
   987c2:	84 00       	movi55 $r0,#0
   987c4:	49 00 16 fa 	jal 9b5b8 <DRV_CLK_En>
   987c8:	84 00       	movi55 $r0,#0
   987ca:	49 00 17 49 	jal 9b65c <DRV_CLK_Calibration>
   987ce:	84 01       	movi55 $r0,#1
   987d0:	49 00 16 bc 	jal 9b548 <DRV_CLK_16MSel>
   987d4:	84 01       	movi55 $r0,#1
   987d6:	84 20       	movi55 $r1,#0
   987d8:	49 00 16 f0 	jal 9b5b8 <DRV_CLK_En>
   987dc:	e6 c2       	slti45 $r6,#2
   987de:	e9 05       	bnezs8 987e8 <AB_CLK_Switch+0x44>
   987e0:	84 00       	movi55 $r0,#0
   987e2:	80 20       	mov55 $r1,$r0
   987e4:	49 00 16 d0 	jal 9b584 <DRV_CLK_PLLEn>
   987e8:	5a 60 02 27 	beqc $r6,#2,98836 <AB_CLK_Switch+0x92>
   987ec:	e6 c3       	slti45 $r6,#3
   987ee:	e8 05       	beqzs8 987f8 <AB_CLK_Switch+0x54>
   987f0:	c6 0b       	beqz38 $r6,98806 <AB_CLK_Switch+0x62>
   987f2:	5a 68 01 43 	bnec $r6,#1,98878 <AB_CLK_Switch+0xd4>
   987f6:	d5 14       	j8 9881e <AB_CLK_Switch+0x7a>
   987f8:	5a 60 04 2f 	beqc $r6,#4,98856 <AB_CLK_Switch+0xb2>
   987fc:	e6 c4       	slti45 $r6,#4
   987fe:	e9 24       	bnezs8 98846 <AB_CLK_Switch+0xa2>
   98800:	5a 68 05 3c 	bnec $r6,#5,98878 <AB_CLK_Switch+0xd4>
   98804:	d5 31       	j8 98866 <AB_CLK_Switch+0xc2>
   98806:	84 01       	movi55 $r0,#1
   98808:	80 26       	mov55 $r1,$r6
   9880a:	49 00 16 bd 	jal 9b584 <DRV_CLK_PLLEn>
   9880e:	80 06       	mov55 $r0,$r6
   98810:	49 00 16 70 	jal 9b4f0 <DRV_CLK_SysSel>
   98814:	46 00 2d c6 	sethi $r0,#0x2dc6
   98818:	58 00 0c 00 	ori $r0,$r0,#0xc00
   9881c:	d5 2c       	j8 98874 <AB_CLK_Switch+0xd0>
   9881e:	80 06       	mov55 $r0,$r6
   98820:	80 26       	mov55 $r1,$r6
   98822:	49 00 16 b1 	jal 9b584 <DRV_CLK_PLLEn>
   98826:	84 00       	movi55 $r0,#0
   98828:	49 00 16 64 	jal 9b4f0 <DRV_CLK_SysSel>
   9882c:	46 00 16 e3 	sethi $r0,#0x16e3
   98830:	58 00 06 00 	ori $r0,$r0,#0x600
   98834:	d5 20       	j8 98874 <AB_CLK_Switch+0xd0>
   98836:	84 01       	movi55 $r0,#1
   98838:	49 00 16 5c 	jal 9b4f0 <DRV_CLK_SysSel>
   9883c:	46 00 0f 42 	sethi $r0,#0xf42
   98840:	58 00 04 00 	ori $r0,$r0,#0x400
   98844:	d5 18       	j8 98874 <AB_CLK_Switch+0xd0>
   98846:	84 02       	movi55 $r0,#2
   98848:	49 00 16 54 	jal 9b4f0 <DRV_CLK_SysSel>
   9884c:	46 00 07 a1 	sethi $r0,#0x7a1
   98850:	58 00 02 00 	ori $r0,$r0,#0x200
   98854:	d5 10       	j8 98874 <AB_CLK_Switch+0xd0>
   98856:	84 03       	movi55 $r0,#3
   98858:	49 00 16 4c 	jal 9b4f0 <DRV_CLK_SysSel>
   9885c:	46 00 03 d0 	sethi $r0,#0x3d0
   98860:	58 00 09 00 	ori $r0,$r0,#0x900
   98864:	d5 08       	j8 98874 <AB_CLK_Switch+0xd0>
   98866:	84 04       	movi55 $r0,#4
   98868:	49 00 16 44 	jal 9b4f0 <DRV_CLK_SysSel>
   9886c:	46 00 00 f4 	sethi $r0,#0xf4
   98870:	58 00 02 40 	ori $r0,$r0,#0x240
   98874:	3c 0f f0 2d 	swi.gp $r0,[+#-16204]
   98878:	3c 1d f0 2d 	lwi.gp $r1,[+#-16204]
   9887c:	46 00 00 f4 	sethi $r0,#0xf4
   98880:	58 00 02 40 	ori $r0,$r0,#0x240
   98884:	40 00 80 37 	divr $r0,$r1,$r1,$r0
   98888:	9e 01       	subi333 $r0,$r0,#1
   9888a:	3c 0f f0 2e 	swi.gp $r0,[+#-16200]
   9888e:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00098890 <AB_console_handle>:
   98890:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   98892:	80 e0       	mov55 $r7,$r0
   98894:	97 89       	zeh33 $r6,$r1
   98896:	d5 09       	j8 988a8 <AB_console_handle+0x18>
   98898:	08 03 80 01 	lbi.bi $r0,[$r7],#0x1
   9889c:	3e 1f ce dc 	addi.gp $r1,#-12580
   988a0:	9f b1       	subi333 $r6,$r6,#1
   988a2:	49 00 03 27 	jal 98ef0 <AB_shell_main_loop>
   988a6:	97 b1       	zeh33 $r6,$r6
   988a8:	ce f8       	bnez38 $r6,98898 <AB_console_handle+0x8>
   988aa:	2e 07 cf c4 	lbi.gp $r0,[+#-12348]
   988ae:	56 00 00 01 	xori $r0,$r0,#0x1
   988b2:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000988b4 <AB_console_init>:
   988b4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   988b6:	3e 3f ce dc 	addi.gp $r3,#-12580
   988ba:	50 31 80 9c 	addi $r3,$r3,#156
   988be:	84 80       	movi55 $r4,#0
   988c0:	14 41 ff d9 	swi $r4,[$r3+#-0x9c]
   988c4:	14 01 ff da 	swi $r0,[$r3+#-0x98]
   988c8:	a8 5b       	swi333 $r1,[$r3+#0xc]
   988ca:	a8 9d       	swi333 $r2,[$r3+#0x14]
   988cc:	a9 1f       	swi333 $r4,[$r3+#0x1c]
   988ce:	a8 9e       	swi333 $r2,[$r3+#0x18]
   988d0:	af 1e       	sbi333 $r4,[$r3+#0x6]
   988d2:	af 1d       	sbi333 $r4,[$r3+#0x5]
   988d4:	10 41 ff f0 	sbi $r4,[$r3+#-0x10]
   988d8:	a2 13       	lwi333.bi $r0,[$r2],#0xc
   988da:	9c e1       	addi333 $r3,$r4,#1
   988dc:	80 24       	mov55 $r1,$r4
   988de:	97 18       	zeb33 $r4,$r3
   988e0:	c8 fc       	bnez38 $r0,988d8 <AB_console_init+0x24>
   988e2:	3e 6f ce dc 	addi.gp $r6,#-12580
   988e6:	50 63 00 b8 	addi $r6,$r6,#184
   988ea:	ae 34       	sbi333 $r0,[$r6+#0x4]
   988ec:	ae 35       	sbi333 $r0,[$r6+#0x5]
   988ee:	ae 36       	sbi333 $r0,[$r6+#0x6]
   988f0:	10 13 7f ea 	sbi $r1,[$r6+#-0x16]
   988f4:	10 13 7f eb 	sbi $r1,[$r6+#-0x15]
   988f8:	44 00 05 00 	movi $r0,#1280
   988fc:	49 00 0f 6c 	jal 9a7d4 <malloc>
   98900:	a8 32       	swi333 $r0,[$r6+#0x8]
   98902:	50 03 00 08 	addi $r0,$r6,#8
   98906:	50 63 00 2c 	addi $r6,$r6,#44
   9890a:	b4 20       	lwi450 $r1,[$r0]
   9890c:	50 10 80 80 	addi $r1,$r1,#128
   98910:	a8 41       	swi333 $r1,[$r0+#0x4]
   98912:	9c 04       	addi333 $r0,$r0,#4
   98914:	4c 03 7f fb 	bne $r0,$r6,9890a <AB_console_init+0x56>
   98918:	84 20       	movi55 $r1,#0
   9891a:	3e 0f ce dc 	addi.gp $r0,#-12580
   9891e:	49 00 06 32 	jal 99582 <AB_shell_main_title>
   98922:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00098924 <shell_parse_line>:
   98924:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   98926:	84 80       	movi55 $r4,#0
   98928:	96 49       	zeh33 $r1,$r1
   9892a:	80 60       	mov55 $r3,$r0
   9892c:	84 a1       	movi55 $r5,#1
   9892e:	80 e4       	mov55 $r7,$r4
   98930:	d5 3a       	j8 989a4 <shell_parse_line+0x80>
   98932:	9d 21       	addi333 $r4,$r4,#1
   98934:	97 21       	zeh33 $r4,$r4
   98936:	af d8       	sbi333 $r7,[$r3+#0x0]
   98938:	4c 40 80 3a 	beq $r4,$r1,989ac <shell_parse_line+0x88>
   9893c:	9c d9       	addi333 $r3,$r3,#1
   9893e:	20 61 80 00 	lbsi $r6,[$r3+#0x0]
   98942:	3c 9d f0 92 	lwi.gp $r9,[+#-15800]
   98946:	89 26       	add45 $r9,$r6
   98948:	20 94 80 01 	lbsi $r9,[$r9+#0x1]
   9894c:	4e 95 00 04 	bltz $r9,98954 <shell_parse_line+0x30>
   98950:	5a 68 09 04 	bnec $r6,#9,98958 <shell_parse_line+0x34>
   98954:	e2 81       	slt45 $r4,$r1
   98956:	e9 ee       	bnezs8 98932 <shell_parse_line+0xe>
   98958:	5a 68 22 16 	bnec $r6,#34,98984 <shell_parse_line+0x60>
   9895c:	9c d9       	addi333 $r3,$r3,#1
   9895e:	9d 21       	addi333 $r4,$r4,#1
   98960:	97 21       	zeh33 $r4,$r4
   98962:	38 31 02 0a 	sw $r3,[$r2+($r0<<#0x2)]
   98966:	d5 04       	j8 9896e <shell_parse_line+0x4a>
   98968:	9d 21       	addi333 $r4,$r4,#1
   9896a:	9c d9       	addi333 $r3,$r3,#1
   9896c:	97 21       	zeh33 $r4,$r4
   9896e:	20 01 80 00 	lbsi $r0,[$r3+#0x0]
   98972:	5a 00 22 04 	beqc $r0,#34,9897a <shell_parse_line+0x56>
   98976:	e2 81       	slt45 $r4,$r1
   98978:	e9 f8       	bnezs8 98968 <shell_parse_line+0x44>
   9897a:	9d 21       	addi333 $r4,$r4,#1
   9897c:	18 71 80 01 	sbi.bi $r7,[$r3],#0x1
   98980:	97 21       	zeh33 $r4,$r4
   98982:	d5 0f       	j8 989a0 <shell_parse_line+0x7c>
   98984:	38 31 02 0a 	sw $r3,[$r2+($r0<<#0x2)]
   98988:	d5 04       	j8 98990 <shell_parse_line+0x6c>
   9898a:	9d 21       	addi333 $r4,$r4,#1
   9898c:	9c d9       	addi333 $r3,$r3,#1
   9898e:	97 21       	zeh33 $r4,$r4
   98990:	20 01 80 00 	lbsi $r0,[$r3+#0x0]
   98994:	5a 00 20 06 	beqc $r0,#32,989a0 <shell_parse_line+0x7c>
   98998:	5a 00 09 04 	beqc $r0,#9,989a0 <shell_parse_line+0x7c>
   9899c:	e2 81       	slt45 $r4,$r1
   9899e:	e9 f6       	bnezs8 9898a <shell_parse_line+0x66>
   989a0:	9d 69       	addi333 $r5,$r5,#1
   989a2:	97 69       	zeh33 $r5,$r5
   989a4:	9e 29       	subi333 $r0,$r5,#1
   989a6:	96 01       	zeh33 $r0,$r0
   989a8:	e2 81       	slt45 $r4,$r1
   989aa:	e9 ca       	bnezs8 9893e <shell_parse_line+0x1a>
   989ac:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

000989ae <shell_history_save>:
   989ae:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   989b0:	80 c0       	mov55 $r6,$r0
   989b2:	00 00 00 bc 	lbi $r0,[$r0+#0xbc]
   989b6:	50 00 00 30 	addi $r0,$r0,#48
   989ba:	38 03 02 02 	lw $r0,[$r6+($r0<<#0x2)]
   989be:	49 ff bb 95 	jal 900e8 <strcpy>
   989c2:	00 03 00 bc 	lbi $r0,[$r6+#0xbc]
   989c6:	9c 01       	addi333 $r0,$r0,#1
   989c8:	96 00       	zeb33 $r0,$r0
   989ca:	10 03 00 bc 	sbi $r0,[$r6+#0xbc]
   989ce:	5a 08 0a 05 	bnec $r0,#10,989d8 <shell_history_save+0x2a>
   989d2:	84 00       	movi55 $r0,#0
   989d4:	10 03 00 bc 	sbi $r0,[$r6+#0xbc]
   989d8:	00 03 00 bd 	lbi $r0,[$r6+#0xbd]
   989dc:	5a 00 0a 05 	beqc $r0,#10,989e6 <shell_history_save+0x38>
   989e0:	9c 01       	addi333 $r0,$r0,#1
   989e2:	10 03 00 bd 	sbi $r0,[$r6+#0xbd]
   989e6:	00 03 00 bd 	lbi $r0,[$r6+#0xbd]
   989ea:	10 03 00 be 	sbi $r0,[$r6+#0xbe]
   989ee:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000989f0 <shell_find_cmd>:
   989f0:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   989f2:	96 48       	zeb33 $r1,$r1
   989f4:	80 c0       	mov55 $r6,$r0
   989f6:	80 02       	mov55 $r0,$r2
   989f8:	81 22       	mov55 $r9,$r2
   989fa:	f1 81       	swi37.sp $r1,[+#0x4]
   989fc:	49 ff bb 7e 	jal 900f8 <strlen>
   98a00:	81 00       	mov55 $r8,$r0
   98a02:	4e 92 00 19 	beqz $r9,98a34 <shell_find_cmd+0x44>
   98a06:	c0 17       	beqz38 $r0,98a34 <shell_find_cmd+0x44>
   98a08:	84 e0       	movi55 $r7,#0
   98a0a:	d5 12       	j8 98a2e <shell_find_cmd+0x3e>
   98a0c:	b5 46       	lwi450 $r10,[$r6]
   98a0e:	83 86       	mov55 $fp,$r6
   98a10:	4e a2 00 12 	beqz $r10,98a34 <shell_find_cmd+0x44>
   98a14:	80 0a       	mov55 $r0,$r10
   98a16:	49 ff bb 71 	jal 900f8 <strlen>
   98a1a:	4c 04 40 08 	bne $r0,$r8,98a2a <shell_find_cmd+0x3a>
   98a1e:	80 09       	mov55 $r0,$r9
   98a20:	80 2a       	mov55 $r1,$r10
   98a22:	80 48       	mov55 $r2,$r8
   98a24:	49 ff bb 70 	jal 90104 <strncmp>
   98a28:	c0 07       	beqz38 $r0,98a36 <shell_find_cmd+0x46>
   98a2a:	9d f9       	addi333 $r7,$r7,#1
   98a2c:	8c cc       	addi45 $r6,#12
   98a2e:	f0 01       	lwi37.sp $r0,[+#0x4]
   98a30:	e0 e0       	slts45 $r7,$r0
   98a32:	e9 ed       	bnezs8 98a0c <shell_find_cmd+0x1c>
   98a34:	87 80       	movi55 $fp,#0
   98a36:	80 1c       	mov55 $r0,$fp
   98a38:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

00098a3a <shell_printf>:
   98a3a:	3a 2f 94 3c 	smw.adm $r2,[$sp],$r5,#0x0    ! {$r2~$r5}
   98a3e:	fc 33       	push25 $r8,#0x98    ! {$r6~$r8, $fp, $gp, $lp}
   98a40:	81 00       	mov55 $r8,$r0
   98a42:	b1 c1       	addri36.sp $r7,#0x4
   98a44:	b0 2c       	addri36.sp $r0,#0xb0
   98a46:	f0 a5       	swi37.sp $r0,[+#0x94]
   98a48:	b0 ac       	addri36.sp $r2,#0xb0
   98a4a:	80 07       	mov55 $r0,$r7
   98a4c:	49 00 28 01 	jal 9da4e <vsprintf>
   98a50:	80 c0       	mov55 $r6,$r0
   98a52:	04 24 00 2a 	lwi $r2,[$r8+#0xa8]
   98a56:	80 07       	mov55 $r0,$r7
   98a58:	96 71       	zeh33 $r1,$r6
   98a5a:	dd 22       	jral5 $r2
   98a5c:	80 06       	mov55 $r0,$r6
   98a5e:	ec 98       	addi10.sp #152
   98a60:	3a 6f a3 84 	lmw.bim $r6,[$sp],$r8,#0xe    ! {$r6~$r8, $fp, $gp, $lp}
   98a64:	ec 10       	addi10.sp #16
   98a66:	dd 9e       	ret5 $lp

00098a68 <shell_history_search>:
   98a68:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   98a6a:	00 20 00 bd 	lbi $r2,[$r0+#0xbd]
   98a6e:	80 c0       	mov55 $r6,$r0
   98a70:	96 48       	zeb33 $r1,$r1
   98a72:	c2 6a       	beqz38 $r2,98b46 <shell_history_search+0xde>
   98a74:	00 00 00 be 	lbi $r0,[$r0+#0xbe]
   98a78:	c1 04       	beqz38 $r1,98a80 <shell_history_search+0x18>
   98a7a:	c0 66       	beqz38 $r0,98b46 <shell_history_search+0xde>
   98a7c:	9e 01       	subi333 $r0,$r0,#1
   98a7e:	d5 04       	j8 98a86 <shell_history_search+0x1e>
   98a80:	e2 02       	slt45 $r0,$r2
   98a82:	e8 62       	beqzs8 98b46 <shell_history_search+0xde>
   98a84:	9c 01       	addi333 $r0,$r0,#1
   98a86:	10 03 00 be 	sbi $r0,[$r6+#0xbe]
   98a8a:	00 03 00 a4 	lbi $r0,[$r6+#0xa4]
   98a8e:	c8 11       	bnez38 $r0,98ab0 <shell_history_search+0x48>
   98a90:	d5 25       	j8 98ada <shell_history_search+0x72>
   98a92:	98 b0       	add333 $r2,$r6,$r0
   98a94:	20 21 00 0c 	lbsi $r2,[$r2+#0xc]
   98a98:	80 06       	mov55 $r0,$r6
   98a9a:	46 10 00 a0 	sethi $r1,#0xa0
   98a9e:	58 10 82 e8 	ori $r1,$r1,#0x2e8
   98aa2:	49 ff ff cc 	jal 98a3a <shell_printf>
   98aa6:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   98aaa:	9c 01       	addi333 $r0,$r0,#1
   98aac:	10 03 00 a5 	sbi $r0,[$r6+#0xa5]
   98ab0:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   98ab4:	00 13 00 a4 	lbi $r1,[$r6+#0xa4]
   98ab8:	e2 01       	slt45 $r0,$r1
   98aba:	e9 ec       	bnezs8 98a92 <shell_history_search+0x2a>
   98abc:	84 e0       	movi55 $r7,#0
   98abe:	d5 0a       	j8 98ad2 <shell_history_search+0x6a>
   98ac0:	80 06       	mov55 $r0,$r6
   98ac2:	46 10 00 a0 	sethi $r1,#0xa0
   98ac6:	58 10 82 ec 	ori $r1,$r1,#0x2ec
   98aca:	9d f9       	addi333 $r7,$r7,#1
   98acc:	49 ff ff b7 	jal 98a3a <shell_printf>
   98ad0:	97 f8       	zeb33 $r7,$r7
   98ad2:	00 03 00 a4 	lbi $r0,[$r6+#0xa4]
   98ad6:	e2 e0       	slt45 $r7,$r0
   98ad8:	e9 f4       	bnezs8 98ac0 <shell_history_search+0x58>
   98ada:	84 00       	movi55 $r0,#0
   98adc:	10 03 00 a4 	sbi $r0,[$r6+#0xa4]
   98ae0:	10 03 00 a5 	sbi $r0,[$r6+#0xa5]
   98ae4:	84 20       	movi55 $r1,#0
   98ae6:	50 03 00 0c 	addi $r0,$r6,#12
   98aea:	44 20 00 80 	movi $r2,#128
   98aee:	49 ff ba cd 	jal 90088 <memset>
   98af2:	00 13 00 be 	lbi $r1,[$r6+#0xbe]
   98af6:	00 03 00 bd 	lbi $r0,[$r6+#0xbd]
   98afa:	e2 20       	slt45 $r1,$r0
   98afc:	e8 25       	beqzs8 98b46 <shell_history_search+0xde>
   98afe:	5a 08 0a 06 	bnec $r0,#10,98b0a <shell_history_search+0xa2>
   98b02:	00 03 00 bc 	lbi $r0,[$r6+#0xbc]
   98b06:	98 48       	add333 $r1,$r1,$r0
   98b08:	96 48       	zeb33 $r1,$r1
   98b0a:	e6 2a       	slti45 $r1,#10
   98b0c:	e9 03       	bnezs8 98b12 <shell_history_search+0xaa>
   98b0e:	8e 2a       	subi45 $r1,#10
   98b10:	96 48       	zeb33 $r1,$r1
   98b12:	50 80 80 30 	addi $r8,$r1,#48
   98b16:	38 13 22 02 	lw $r1,[$r6+($r8<<#0x2)]
   98b1a:	50 73 00 0c 	addi $r7,$r6,#12
   98b1e:	80 07       	mov55 $r0,$r7
   98b20:	49 ff ba e4 	jal 900e8 <strcpy>
   98b24:	38 03 22 02 	lw $r0,[$r6+($r8<<#0x2)]
   98b28:	49 ff ba e8 	jal 900f8 <strlen>
   98b2c:	96 40       	zeb33 $r1,$r0
   98b2e:	10 13 00 a4 	sbi $r1,[$r6+#0xa4]
   98b32:	10 13 00 a5 	sbi $r1,[$r6+#0xa5]
   98b36:	80 06       	mov55 $r0,$r6
   98b38:	46 10 00 a0 	sethi $r1,#0xa0
   98b3c:	58 10 84 c0 	ori $r1,$r1,#0x4c0
   98b40:	80 47       	mov55 $r2,$r7
   98b42:	49 ff ff 7c 	jal 98a3a <shell_printf>
   98b46:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

00098b48 <shell_show_title>:
   98b48:	fc 49       	push25 $r10,#0x48    ! {$r6~$r10, $fp, $gp, $lp}
   98b4a:	b4 20       	lwi450 $r1,[$r0]
   98b4c:	81 00       	mov55 $r8,$r0
   98b4e:	c9 04       	bnez38 $r1,98b56 <shell_show_title+0xe>
   98b50:	a0 41       	lwi333 $r1,[$r0+#0x4]
   98b52:	48 00 01 cc 	j 98eea <shell_show_title+0x3a2>
   98b56:	85 e1       	movi55 $r15,#1
   98b58:	4c 17 c1 9a 	bne $r1,$r15,98e8c <shell_show_title+0x344>
   98b5c:	46 10 00 a0 	sethi $r1,#0xa0
   98b60:	58 10 82 f0 	ori $r1,$r1,#0x2f0
   98b64:	04 a0 00 2c 	lwi $r10,[$r0+#0xb0]
   98b68:	49 ff ff 69 	jal 98a3a <shell_printf>
   98b6c:	00 34 00 a1 	lbi $r3,[$r8+#0xa1]
   98b70:	50 14 00 8c 	addi $r1,$r8,#140
   98b74:	84 00       	movi55 $r0,#0
   98b76:	84 4c       	movi55 $r2,#12
   98b78:	d5 09       	j8 98b8a <shell_show_title+0x42>
   98b7a:	08 40 80 01 	lbi.bi $r4,[$r1],#0x1
   98b7e:	9c 01       	addi333 $r0,$r0,#1
   98b80:	42 a2 08 73 	maddr32 $r10,$r4,$r2
   98b84:	96 00       	zeb33 $r0,$r0
   98b86:	04 a5 00 02 	lwi $r10,[$r10+#0x8]
   98b8a:	4c 01 ff f8 	bne $r0,$r3,98b7a <shell_show_title+0x32>
   98b8e:	88 08       	add45 $r0,$r8
   98b90:	00 00 00 8c 	lbi $r0,[$r0+#0x8c]
   98b94:	84 2a       	movi55 $r1,#10
   98b96:	40 00 04 57 	divr $r0,$r2,$r0,$r1
   98b9a:	00 24 00 a3 	lbi $r2,[$r8+#0xa3]
   98b9e:	80 62       	mov55 $r3,$r2
   98ba0:	96 00       	zeb33 $r0,$r0
   98ba2:	42 90 04 24 	mul $r9,$r0,$r1
   98ba6:	9c 01       	addi333 $r0,$r0,#1
   98ba8:	fe 0c       	mul33 $r0,$r1
   98baa:	96 40       	zeb33 $r1,$r0
   98bac:	54 94 80 ff 	andi $r9,$r9,#0xff
   98bb0:	e2 61       	slt45 $r3,$r1
   98bb2:	e8 02       	beqzs8 98bb6 <shell_show_title+0x6e>
   98bb4:	80 02       	mov55 $r0,$r2
   98bb6:	96 00       	zeb33 $r0,$r0
   98bb8:	f0 81       	swi37.sp $r0,[+#0x4]
   98bba:	b1 cf       	addri36.sp $r7,#0x3c
   98bbc:	b1 82       	addri36.sp $r6,#0x8
   98bbe:	48 00 00 6b 	j 98c94 <shell_show_title+0x14c>
   98bc2:	84 0c       	movi55 $r0,#12
   98bc4:	83 8a       	mov55 $fp,$r10
   98bc6:	43 c4 80 73 	maddr32 $fp,$r9,$r0
   98bca:	b8 02       	lwi37 $r0,[$fp+#0x8]
   98bcc:	c0 07       	beqz38 $r0,98bda <shell_show_title+0x92>
   98bce:	80 07       	mov55 $r0,$r7
   98bd0:	46 10 00 a0 	sethi $r1,#0xa0
   98bd4:	58 10 82 f8 	ori $r1,$r1,#0x2f8
   98bd8:	d5 06       	j8 98be4 <shell_show_title+0x9c>
   98bda:	80 07       	mov55 $r0,$r7
   98bdc:	46 10 00 a0 	sethi $r1,#0xa0
   98be0:	58 10 83 08 	ori $r1,$r1,#0x308
   98be4:	80 49       	mov55 $r2,$r9
   98be6:	49 00 26 ef 	jal 9d9c4 <sprintf>
   98bea:	46 10 00 a0 	sethi $r1,#0xa0
   98bee:	58 10 83 18 	ori $r1,$r1,#0x318
   98bf2:	80 06       	mov55 $r0,$r6
   98bf4:	49 ff ba 7a 	jal 900e8 <strcpy>
   98bf8:	05 ce 00 00 	lwi $fp,[$fp+#0x0]
   98bfc:	80 1c       	mov55 $r0,$fp
   98bfe:	49 ff ba 7d 	jal 900f8 <strlen>
   98c02:	80 40       	mov55 $r2,$r0
   98c04:	80 3c       	mov55 $r1,$fp
   98c06:	80 06       	mov55 $r0,$r6
   98c08:	49 ff ba 20 	jal 90048 <memcpy>
   98c0c:	84 2a       	movi55 $r1,#10
   98c0e:	40 04 84 57 	divr $r0,$r2,$r9,$r1
   98c12:	fa 78       	movpi45 $r3,#0x28
   98c14:	46 10 00 a0 	sethi $r1,#0xa0
   98c18:	58 10 83 40 	ori $r1,$r1,#0x340
   98c1c:	80 08       	mov55 $r0,$r8
   98c1e:	8c 54       	addi45 $r2,#20
   98c20:	49 ff ff 0d 	jal 98a3a <shell_printf>
   98c24:	80 08       	mov55 $r0,$r8
   98c26:	80 27       	mov55 $r1,$r7
   98c28:	49 ff ff 09 	jal 98a3a <shell_printf>
   98c2c:	00 04 00 a1 	lbi $r0,[$r8+#0xa1]
   98c30:	88 08       	add45 $r0,$r8
   98c32:	00 00 00 8c 	lbi $r0,[$r0+#0x8c]
   98c36:	4c 04 c0 12 	bne $r0,$r9,98c5a <shell_show_title+0x112>
   98c3a:	46 10 00 a1 	sethi $r1,#0xa1
   98c3e:	58 10 84 78 	ori $r1,$r1,#0x478
   98c42:	fa 4e       	movpi45 $r2,#0x1e
   98c44:	80 08       	mov55 $r0,$r8
   98c46:	49 ff fe fa 	jal 98a3a <shell_printf>
   98c4a:	80 08       	mov55 $r0,$r8
   98c4c:	46 10 00 a1 	sethi $r1,#0xa1
   98c50:	58 10 84 78 	ori $r1,$r1,#0x478
   98c54:	fa 5f       	movpi45 $r2,#0x2f
   98c56:	49 ff fe f2 	jal 98a3a <shell_printf>
   98c5a:	80 08       	mov55 $r0,$r8
   98c5c:	80 26       	mov55 $r1,$r6
   98c5e:	49 ff fe ee 	jal 98a3a <shell_printf>
   98c62:	00 04 00 a1 	lbi $r0,[$r8+#0xa1]
   98c66:	88 08       	add45 $r0,$r8
   98c68:	00 00 00 8c 	lbi $r0,[$r0+#0x8c]
   98c6c:	4c 04 c0 0a 	bne $r0,$r9,98c80 <shell_show_title+0x138>
   98c70:	80 08       	mov55 $r0,$r8
   98c72:	46 10 00 a1 	sethi $r1,#0xa1
   98c76:	58 10 84 78 	ori $r1,$r1,#0x478
   98c7a:	84 40       	movi55 $r2,#0
   98c7c:	49 ff fe df 	jal 98a3a <shell_printf>
   98c80:	80 08       	mov55 $r0,$r8
   98c82:	46 10 00 a0 	sethi $r1,#0xa0
   98c86:	58 10 83 4c 	ori $r1,$r1,#0x34c
   98c8a:	8d 21       	addi45 $r9,#1
   98c8c:	49 ff fe d7 	jal 98a3a <shell_printf>
   98c90:	54 94 80 ff 	andi $r9,$r9,#0xff
   98c94:	f2 01       	lwi37.sp $r2,[+#0x4]
   98c96:	e3 22       	slt45 $r9,$r2
   98c98:	e9 95       	bnezs8 98bc2 <shell_show_title+0x7a>
   98c9a:	00 54 00 a3 	lbi $r5,[$r8+#0xa3]
   98c9e:	4c 92 c0 15 	bne $r9,$r5,98cc8 <shell_show_title+0x180>
   98ca2:	84 4a       	movi55 $r2,#10
   98ca4:	40 04 89 37 	divr $r0,$r9,$r9,$r2
   98ca8:	54 94 80 ff 	andi $r9,$r9,#0xff
   98cac:	4e 92 00 03 	beqz $r9,98cb2 <shell_show_title+0x16a>
   98cb0:	84 40       	movi55 $r2,#0
   98cb2:	8d 34       	addi45 $r9,#20
   98cb4:	80 08       	mov55 $r0,$r8
   98cb6:	46 10 00 a0 	sethi $r1,#0xa0
   98cba:	58 10 83 50 	ori $r1,$r1,#0x350
   98cbe:	88 49       	add45 $r2,$r9
   98cc0:	fa 78       	movpi45 $r3,#0x28
   98cc2:	49 ff fe bc 	jal 98a3a <shell_printf>
   98cc6:	d5 13       	j8 98cec <shell_show_title+0x1a4>
   98cc8:	84 4a       	movi55 $r2,#10
   98cca:	40 94 88 57 	divr $r9,$r2,$r9,$r2
   98cce:	00 04 00 a1 	lbi $r0,[$r8+#0xa1]
   98cd2:	46 10 00 a0 	sethi $r1,#0xa0
   98cd6:	58 10 83 8c 	ori $r1,$r1,#0x38c
   98cda:	88 08       	add45 $r0,$r8
   98cdc:	00 40 00 8c 	lbi $r4,[$r0+#0x8c]
   98ce0:	fa 78       	movpi45 $r3,#0x28
   98ce2:	80 08       	mov55 $r0,$r8
   98ce4:	9d 21       	addi333 $r4,$r4,#1
   98ce6:	8c 5e       	addi45 $r2,#30
   98ce8:	49 ff fe a9 	jal 98a3a <shell_printf>
   98cec:	46 10 00 a0 	sethi $r1,#0xa0
   98cf0:	58 10 83 50 	ori $r1,$r1,#0x350
   98cf4:	84 4d       	movi55 $r2,#13
   98cf6:	fa 78       	movpi45 $r3,#0x28
   98cf8:	80 08       	mov55 $r0,$r8
   98cfa:	49 ff fe a0 	jal 98a3a <shell_printf>
   98cfe:	46 10 00 a0 	sethi $r1,#0xa0
   98d02:	58 10 83 c8 	ori $r1,$r1,#0x3c8
   98d06:	fa 40       	movpi45 $r2,#0x10
   98d08:	fa 78       	movpi45 $r3,#0x28
   98d0a:	80 08       	mov55 $r0,$r8
   98d0c:	49 ff fe 97 	jal 98a3a <shell_printf>
   98d10:	46 10 00 a0 	sethi $r1,#0xa0
   98d14:	58 10 84 04 	ori $r1,$r1,#0x404
   98d18:	84 4f       	movi55 $r2,#15
   98d1a:	fa 78       	movpi45 $r3,#0x28
   98d1c:	80 08       	mov55 $r0,$r8
   98d1e:	49 ff fe 8e 	jal 98a3a <shell_printf>
   98d22:	46 10 00 a0 	sethi $r1,#0xa0
   98d26:	58 10 84 40 	ori $r1,$r1,#0x440
   98d2a:	84 4e       	movi55 $r2,#14
   98d2c:	fa 78       	movpi45 $r3,#0x28
   98d2e:	80 08       	mov55 $r0,$r8
   98d30:	49 ff fe 85 	jal 98a3a <shell_printf>
   98d34:	46 10 00 a0 	sethi $r1,#0xa0
   98d38:	58 10 83 50 	ori $r1,$r1,#0x350
   98d3c:	fa 41       	movpi45 $r2,#0x11
   98d3e:	fa 78       	movpi45 $r3,#0x28
   98d40:	80 08       	mov55 $r0,$r8
   98d42:	49 ff fe 7c 	jal 98a3a <shell_printf>
   98d46:	46 10 00 a0 	sethi $r1,#0xa0
   98d4a:	58 10 83 50 	ori $r1,$r1,#0x350
   98d4e:	fa 43       	movpi45 $r2,#0x13
   98d50:	fa 78       	movpi45 $r3,#0x28
   98d52:	80 08       	mov55 $r0,$r8
   98d54:	49 ff fe 73 	jal 98a3a <shell_printf>
   98d58:	46 10 00 a0 	sethi $r1,#0xa0
   98d5c:	58 10 84 7c 	ori $r1,$r1,#0x47c
   98d60:	fa 42       	movpi45 $r2,#0x12
   98d62:	fa 78       	movpi45 $r3,#0x28
   98d64:	80 08       	mov55 $r0,$r8
   98d66:	49 ff fe 6a 	jal 98a3a <shell_printf>
   98d6a:	04 44 00 01 	lwi $r4,[$r8+#0x4]
   98d6e:	80 08       	mov55 $r0,$r8
   98d70:	46 10 00 a0 	sethi $r1,#0xa0
   98d74:	58 10 84 b8 	ori $r1,$r1,#0x4b8
   98d78:	fa 42       	movpi45 $r2,#0x12
   98d7a:	fa 7a       	movpi45 $r3,#0x2a
   98d7c:	49 ff fe 5f 	jal 98a3a <shell_printf>
   98d80:	84 00       	movi55 $r0,#0
   98d82:	04 64 00 2c 	lwi $r6,[$r8+#0xb0]
   98d86:	10 04 00 a4 	sbi $r0,[$r8+#0xa4]
   98d8a:	84 e0       	movi55 $r7,#0
   98d8c:	85 2c       	movi55 $r9,#12
   98d8e:	45 c0 00 20 	movi $fp,#32
   98d92:	d5 34       	j8 98dfa <shell_show_title+0x2b2>
   98d94:	40 a4 1c 00 	add $r10,$r8,$r7
   98d98:	50 a5 00 88 	addi $r10,$r10,#136
   98d9c:	00 25 00 04 	lbi $r2,[$r10+#0x4]
   98da0:	80 06       	mov55 $r0,$r6
   98da2:	42 01 24 73 	maddr32 $r0,$r2,$r9
   98da6:	46 10 00 a0 	sethi $r1,#0xa0
   98daa:	58 10 84 c4 	ori $r1,$r1,#0x4c4
   98dae:	80 40       	mov55 $r2,$r0
   98db0:	b4 42       	lwi450 $r2,[$r2]
   98db2:	80 08       	mov55 $r0,$r8
   98db4:	49 ff fe 43 	jal 98a3a <shell_printf>
   98db8:	00 15 00 04 	lbi $r1,[$r10+#0x4]
   98dbc:	80 46       	mov55 $r2,$r6
   98dbe:	42 20 a4 73 	maddr32 $r2,$r1,$r9
   98dc2:	00 04 00 a4 	lbi $r0,[$r8+#0xa4]
   98dc6:	b4 22       	lwi450 $r1,[$r2]
   98dc8:	88 08       	add45 $r0,$r8
   98dca:	8c 0c       	addi45 $r0,#12
   98dcc:	49 ff b9 8e 	jal 900e8 <strcpy>
   98dd0:	00 05 00 04 	lbi $r0,[$r10+#0x4]
   98dd4:	9d f9       	addi333 $r7,$r7,#1
   98dd6:	42 60 24 73 	maddr32 $r6,$r0,$r9
   98dda:	97 f8       	zeb33 $r7,$r7
   98ddc:	b4 06       	lwi450 $r0,[$r6]
   98dde:	49 ff b9 8d 	jal 900f8 <strlen>
   98de2:	00 14 00 a4 	lbi $r1,[$r8+#0xa4]
   98de6:	98 01       	add333 $r0,$r0,$r1
   98de8:	96 00       	zeb33 $r0,$r0
   98dea:	40 14 00 00 	add $r1,$r8,$r0
   98dee:	9c 01       	addi333 $r0,$r0,#1
   98df0:	11 c0 80 0c 	sbi $fp,[$r1+#0xc]
   98df4:	10 04 00 a4 	sbi $r0,[$r8+#0xa4]
   98df8:	a1 b2       	lwi333 $r6,[$r6+#0x8]
   98dfa:	00 04 00 a1 	lbi $r0,[$r8+#0xa1]
   98dfe:	e2 e0       	slt45 $r7,$r0
   98e00:	e9 ca       	bnezs8 98d94 <shell_show_title+0x24c>
   98e02:	88 08       	add45 $r0,$r8
   98e04:	00 10 00 8c 	lbi $r1,[$r0+#0x8c]
   98e08:	84 ec       	movi55 $r7,#12
   98e0a:	80 06       	mov55 $r0,$r6
   98e0c:	42 00 9c 73 	maddr32 $r0,$r1,$r7
   98e10:	80 20       	mov55 $r1,$r0
   98e12:	b4 21       	lwi450 $r1,[$r1]
   98e14:	80 08       	mov55 $r0,$r8
   98e16:	49 ff fe 12 	jal 98a3a <shell_printf>
   98e1a:	00 14 00 a1 	lbi $r1,[$r8+#0xa1]
   98e1e:	80 46       	mov55 $r2,$r6
   98e20:	88 28       	add45 $r1,$r8
   98e22:	00 10 80 8c 	lbi $r1,[$r1+#0x8c]
   98e26:	00 04 00 a4 	lbi $r0,[$r8+#0xa4]
   98e2a:	42 20 9c 73 	maddr32 $r2,$r1,$r7
   98e2e:	88 08       	add45 $r0,$r8
   98e30:	b4 22       	lwi450 $r1,[$r2]
   98e32:	98 07       	add333 $r0,$r0,$r7
   98e34:	49 ff b9 5a 	jal 900e8 <strcpy>
   98e38:	00 04 00 a1 	lbi $r0,[$r8+#0xa1]
   98e3c:	88 08       	add45 $r0,$r8
   98e3e:	00 00 00 8c 	lbi $r0,[$r0+#0x8c]
   98e42:	42 60 1c 73 	maddr32 $r6,$r0,$r7
   98e46:	b4 06       	lwi450 $r0,[$r6]
   98e48:	49 ff b9 58 	jal 900f8 <strlen>
   98e4c:	00 14 00 a4 	lbi $r1,[$r8+#0xa4]
   98e50:	98 01       	add333 $r0,$r0,$r1
   98e52:	96 00       	zeb33 $r0,$r0
   98e54:	10 04 00 a4 	sbi $r0,[$r8+#0xa4]
   98e58:	10 04 00 a5 	sbi $r0,[$r8+#0xa5]
   98e5c:	46 10 00 a0 	sethi $r1,#0xa0
   98e60:	58 10 84 c8 	ori $r1,$r1,#0x4c8
   98e64:	80 08       	mov55 $r0,$r8
   98e66:	49 ff fd ea 	jal 98a3a <shell_printf>
   98e6a:	80 08       	mov55 $r0,$r8
   98e6c:	46 10 00 a0 	sethi $r1,#0xa0
   98e70:	58 10 84 d0 	ori $r1,$r1,#0x4d0
   98e74:	49 ff fd e3 	jal 98a3a <shell_printf>
   98e78:	84 40       	movi55 $r2,#0
   98e7a:	80 08       	mov55 $r0,$r8
   98e7c:	46 10 00 a0 	sethi $r1,#0xa0
   98e80:	58 10 83 40 	ori $r1,$r1,#0x340
   98e84:	80 62       	mov55 $r3,$r2
   98e86:	49 ff fd da 	jal 98a3a <shell_printf>
   98e8a:	d5 32       	j8 98eee <shell_show_title+0x3a6>
   98e8c:	5a 18 02 29 	bnec $r1,#2,98ede <shell_show_title+0x396>
   98e90:	46 10 00 a0 	sethi $r1,#0xa0
   98e94:	58 10 83 c8 	ori $r1,$r1,#0x3c8
   98e98:	fa 40       	movpi45 $r2,#0x10
   98e9a:	fa 78       	movpi45 $r3,#0x28
   98e9c:	49 ff fd cf 	jal 98a3a <shell_printf>
   98ea0:	46 10 00 a0 	sethi $r1,#0xa0
   98ea4:	58 10 84 04 	ori $r1,$r1,#0x404
   98ea8:	84 4f       	movi55 $r2,#15
   98eaa:	fa 78       	movpi45 $r3,#0x28
   98eac:	80 08       	mov55 $r0,$r8
   98eae:	49 ff fd c6 	jal 98a3a <shell_printf>
   98eb2:	46 10 00 a0 	sethi $r1,#0xa0
   98eb6:	58 10 84 d8 	ori $r1,$r1,#0x4d8
   98eba:	84 4e       	movi55 $r2,#14
   98ebc:	fa 78       	movpi45 $r3,#0x28
   98ebe:	80 08       	mov55 $r0,$r8
   98ec0:	49 ff fd bd 	jal 98a3a <shell_printf>
   98ec4:	46 10 00 a0 	sethi $r1,#0xa0
   98ec8:	58 10 85 14 	ori $r1,$r1,#0x514
   98ecc:	80 08       	mov55 $r0,$r8
   98ece:	49 ff fd b6 	jal 98a3a <shell_printf>
   98ed2:	80 08       	mov55 $r0,$r8
   98ed4:	46 10 00 a0 	sethi $r1,#0xa0
   98ed8:	58 10 85 1c 	ori $r1,$r1,#0x51c
   98edc:	d5 07       	j8 98eea <shell_show_title+0x3a2>
   98ede:	5a 18 03 08 	bnec $r1,#3,98eee <shell_show_title+0x3a6>
   98ee2:	46 10 00 a0 	sethi $r1,#0xa0
   98ee6:	58 10 85 24 	ori $r1,$r1,#0x524
   98eea:	49 ff fd a8 	jal 98a3a <shell_printf>
   98eee:	fc c9       	pop25 $r10,#0x48    ! {$r6~$r10, $fp, $gp, $lp}

00098ef0 <AB_shell_main_loop>:
   98ef0:	fc 4c       	push25 $r10,#0x60    ! {$r6~$r10, $fp, $gp, $lp}
   98ef2:	97 c0       	zeb33 $r7,$r0
   98ef4:	00 00 80 e8 	lbi $r0,[$r1+#0xe8]
   98ef8:	80 c1       	mov55 $r6,$r1
   98efa:	05 c0 80 00 	lwi $fp,[$r1+#0x0]
   98efe:	4e 03 03 3e 	bnez $r0,9957a <AB_shell_main_loop+0x68a>
   98f02:	5a 78 1b 09 	bnec $r7,#27,98f14 <AB_shell_main_loop+0x24>
   98f06:	a0 4a       	lwi333 $r1,[$r1+#0x8]
   98f08:	5a 10 01 06 	beqc $r1,#1,98f14 <AB_shell_main_loop+0x24>
   98f0c:	84 21       	movi55 $r1,#1
   98f0e:	a8 72       	swi333 $r1,[$r6+#0x8]
   98f10:	48 00 03 38 	j 99580 <AB_shell_main_loop+0x690>
   98f14:	a0 32       	lwi333 $r0,[$r6+#0x8]
   98f16:	84 21       	movi55 $r1,#1
   98f18:	5a 08 01 29 	bnec $r0,#1,98f6a <AB_shell_main_loop+0x7a>
   98f1c:	5a 78 5b 06 	bnec $r7,#91,98f28 <AB_shell_main_loop+0x38>
   98f20:	84 02       	movi55 $r0,#2
   98f22:	a8 32       	swi333 $r0,[$r6+#0x8]
   98f24:	48 00 03 2d 	j 9957e <AB_shell_main_loop+0x68e>
   98f28:	5a 78 1b 1d 	bnec $r7,#27,98f62 <AB_shell_main_loop+0x72>
   98f2c:	b4 46       	lwi450 $r2,[$r6]
   98f2e:	84 20       	movi55 $r1,#0
   98f30:	a8 72       	swi333 $r1,[$r6+#0x8]
   98f32:	ca 03       	bnez38 $r2,98f38 <AB_shell_main_loop+0x48>
   98f34:	b6 06       	swi450 $r0,[$r6]
   98f36:	d5 02       	j8 98f3a <AB_shell_main_loop+0x4a>
   98f38:	b6 26       	swi450 $r1,[$r6]
   98f3a:	84 00       	movi55 $r0,#0
   98f3c:	10 03 00 a4 	sbi $r0,[$r6+#0xa4]
   98f40:	10 03 00 a5 	sbi $r0,[$r6+#0xa5]
   98f44:	50 03 00 0c 	addi $r0,$r6,#12
   98f48:	44 20 00 80 	movi $r2,#128
   98f4c:	49 ff b8 9e 	jal 90088 <memset>
   98f50:	80 06       	mov55 $r0,$r6
   98f52:	46 10 00 a0 	sethi $r1,#0xa0
   98f56:	58 10 85 28 	ori $r1,$r1,#0x528
   98f5a:	49 ff fd 70 	jal 98a3a <shell_printf>
   98f5e:	48 00 03 0a 	j 99572 <AB_shell_main_loop+0x682>
   98f62:	84 00       	movi55 $r0,#0
   98f64:	a8 32       	swi333 $r0,[$r6+#0x8]
   98f66:	48 00 01 21 	j 991a8 <AB_shell_main_loop+0x2b8>
   98f6a:	85 e2       	movi55 $r15,#2
   98f6c:	4c 07 c0 bc 	bne $r0,$r15,990e4 <AB_shell_main_loop+0x1f4>
   98f70:	85 00       	movi55 $r8,#0
   98f72:	14 83 00 02 	swi $r8,[$r6+#0x8]
   98f76:	5a 70 42 23 	beqc $r7,#66,98fbc <AB_shell_main_loop+0xcc>
   98f7a:	5c f3 80 43 	slti $r15,$r7,#67
   98f7e:	e8 06       	beqzs8 98f8a <AB_shell_main_loop+0x9a>
   98f80:	5a 70 41 04 	beqc $r7,#65,98f88 <AB_shell_main_loop+0x98>
   98f84:	48 00 02 fd 	j 9957e <AB_shell_main_loop+0x68e>
   98f88:	d5 08       	j8 98f98 <AB_shell_main_loop+0xa8>
   98f8a:	5a 70 43 68 	beqc $r7,#67,9905a <AB_shell_main_loop+0x16a>
   98f8e:	5a 70 44 04 	beqc $r7,#68,98f96 <AB_shell_main_loop+0xa6>
   98f92:	48 00 02 f6 	j 9957e <AB_shell_main_loop+0x68e>
   98f96:	d5 2c       	j8 98fee <AB_shell_main_loop+0xfe>
   98f98:	b4 06       	lwi450 $r0,[$r6]
   98f9a:	5a 00 01 04 	beqc $r0,#1,98fa2 <AB_shell_main_loop+0xb2>
   98f9e:	80 06       	mov55 $r0,$r6
   98fa0:	d5 13       	j8 98fc6 <AB_shell_main_loop+0xd6>
   98fa2:	00 03 00 a1 	lbi $r0,[$r6+#0xa1]
   98fa6:	98 30       	add333 $r0,$r6,$r0
   98fa8:	50 00 00 88 	addi $r0,$r0,#136
   98fac:	a6 44       	lbi333 $r1,[$r0+#0x4]
   98fae:	c9 03       	bnez38 $r1,98fb4 <AB_shell_main_loop+0xc4>
   98fb0:	00 13 00 a3 	lbi $r1,[$r6+#0xa3]
   98fb4:	9e 49       	subi333 $r1,$r1,#1
   98fb6:	ae 44       	sbi333 $r1,[$r0+#0x4]
   98fb8:	48 00 02 dd 	j 99572 <AB_shell_main_loop+0x682>
   98fbc:	b4 06       	lwi450 $r0,[$r6]
   98fbe:	5a 00 01 07 	beqc $r0,#1,98fcc <AB_shell_main_loop+0xdc>
   98fc2:	80 06       	mov55 $r0,$r6
   98fc4:	80 28       	mov55 $r1,$r8
   98fc6:	49 ff fd 51 	jal 98a68 <shell_history_search>
   98fca:	d5 61       	j8 9908c <AB_shell_main_loop+0x19c>
   98fcc:	00 03 00 a1 	lbi $r0,[$r6+#0xa1]
   98fd0:	00 23 00 a3 	lbi $r2,[$r6+#0xa3]
   98fd4:	98 30       	add333 $r0,$r6,$r0
   98fd6:	50 00 00 88 	addi $r0,$r0,#136
   98fda:	a6 44       	lbi333 $r1,[$r0+#0x4]
   98fdc:	9c 49       	addi333 $r1,$r1,#1
   98fde:	ae 44       	sbi333 $r1,[$r0+#0x4]
   98fe0:	96 48       	zeb33 $r1,$r1
   98fe2:	4c 11 42 c8 	bne $r1,$r2,99572 <AB_shell_main_loop+0x682>
   98fe6:	10 80 00 04 	sbi $r8,[$r0+#0x4]
   98fea:	48 00 02 c4 	j 99572 <AB_shell_main_loop+0x682>
   98fee:	b4 06       	lwi450 $r0,[$r6]
   98ff0:	5a 00 01 11 	beqc $r0,#1,99012 <AB_shell_main_loop+0x122>
   98ff4:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   98ff8:	4e 02 02 c3 	beqz $r0,9957e <AB_shell_main_loop+0x68e>
   98ffc:	80 06       	mov55 $r0,$r6
   98ffe:	46 10 00 a0 	sethi $r1,#0xa0
   99002:	58 10 85 34 	ori $r1,$r1,#0x534
   99006:	49 ff fd 1a 	jal 98a3a <shell_printf>
   9900a:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   9900e:	9e 01       	subi333 $r0,$r0,#1
   99010:	d5 3c       	j8 99088 <AB_shell_main_loop+0x198>
   99012:	00 33 00 a1 	lbi $r3,[$r6+#0xa1]
   99016:	04 13 00 2c 	lwi $r1,[$r6+#0xb0]
   9901a:	4e 32 02 b2 	beqz $r3,9957e <AB_shell_main_loop+0x68e>
   9901e:	9e d9       	subi333 $r3,$r3,#1
   99020:	96 d8       	zeb33 $r3,$r3
   99022:	10 33 00 a1 	sbi $r3,[$r6+#0xa1]
   99026:	50 23 00 8c 	addi $r2,$r6,#140
   9902a:	84 8c       	movi55 $r4,#12
   9902c:	d5 09       	j8 9903e <AB_shell_main_loop+0x14e>
   9902e:	08 01 00 01 	lbi.bi $r0,[$r2],#0x1
   99032:	8d 01       	addi45 $r8,#1
   99034:	42 10 10 73 	maddr32 $r1,$r0,$r4
   99038:	54 84 00 ff 	andi $r8,$r8,#0xff
   9903c:	a0 4a       	lwi333 $r1,[$r1+#0x8]
   9903e:	e3 03       	slt45 $r8,$r3
   99040:	e9 f7       	bnezs8 9902e <AB_shell_main_loop+0x13e>
   99042:	14 13 00 2d 	swi $r1,[$r6+#0xb4]
   99046:	84 00       	movi55 $r0,#0
   99048:	d5 04       	j8 99050 <AB_shell_main_loop+0x160>
   9904a:	00 03 00 a3 	lbi $r0,[$r6+#0xa3]
   9904e:	9c 01       	addi333 $r0,$r0,#1
   99050:	10 03 00 a3 	sbi $r0,[$r6+#0xa3]
   99054:	a3 cb       	lwi333.bi $r7,[$r1],#0xc
   99056:	cf fa       	bnez38 $r7,9904a <AB_shell_main_loop+0x15a>
   99058:	d5 40       	j8 990d8 <AB_shell_main_loop+0x1e8>
   9905a:	b4 06       	lwi450 $r0,[$r6]
   9905c:	5a 00 01 1b 	beqc $r0,#1,99092 <AB_shell_main_loop+0x1a2>
   99060:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   99064:	00 13 00 a4 	lbi $r1,[$r6+#0xa4]
   99068:	e2 01       	slt45 $r0,$r1
   9906a:	4e f2 02 8a 	beqz $r15,9957e <AB_shell_main_loop+0x68e>
   9906e:	98 b0       	add333 $r2,$r6,$r0
   99070:	20 21 00 0c 	lbsi $r2,[$r2+#0xc]
   99074:	80 06       	mov55 $r0,$r6
   99076:	46 10 00 a0 	sethi $r1,#0xa0
   9907a:	58 10 82 e8 	ori $r1,$r1,#0x2e8
   9907e:	49 ff fc de 	jal 98a3a <shell_printf>
   99082:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   99086:	9c 01       	addi333 $r0,$r0,#1
   99088:	10 03 00 a5 	sbi $r0,[$r6+#0xa5]
   9908c:	80 08       	mov55 $r0,$r8
   9908e:	48 00 02 79 	j 99580 <AB_shell_main_loop+0x690>
   99092:	00 23 00 a1 	lbi $r2,[$r6+#0xa1]
   99096:	84 2c       	movi55 $r1,#12
   99098:	80 02       	mov55 $r0,$r2
   9909a:	98 30       	add333 $r0,$r6,$r0
   9909c:	00 30 00 8c 	lbi $r3,[$r0+#0x8c]
   990a0:	04 03 00 2d 	lwi $r0,[$r6+#0xb4]
   990a4:	42 01 84 73 	maddr32 $r0,$r3,$r1
   990a8:	a0 42       	lwi333 $r1,[$r0+#0x8]
   990aa:	4e 12 02 6a 	beqz $r1,9957e <AB_shell_main_loop+0x68e>
   990ae:	9c 11       	addi333 $r0,$r2,#1
   990b0:	96 00       	zeb33 $r0,$r0
   990b2:	10 03 00 a1 	sbi $r0,[$r6+#0xa1]
   990b6:	98 30       	add333 $r0,$r6,$r0
   990b8:	50 00 00 88 	addi $r0,$r0,#136
   990bc:	14 13 00 2d 	swi $r1,[$r6+#0xb4]
   990c0:	10 80 00 04 	sbi $r8,[$r0+#0x4]
   990c4:	10 83 00 a3 	sbi $r8,[$r6+#0xa3]
   990c8:	d5 06       	j8 990d4 <AB_shell_main_loop+0x1e4>
   990ca:	00 03 00 a3 	lbi $r0,[$r6+#0xa3]
   990ce:	9c 01       	addi333 $r0,$r0,#1
   990d0:	10 03 00 a3 	sbi $r0,[$r6+#0xa3]
   990d4:	a3 cb       	lwi333.bi $r7,[$r1],#0xc
   990d6:	cf fa       	bnez38 $r7,990ca <AB_shell_main_loop+0x1da>
   990d8:	80 06       	mov55 $r0,$r6
   990da:	49 ff fd 37 	jal 98b48 <shell_show_title>
   990de:	80 07       	mov55 $r0,$r7
   990e0:	48 00 02 50 	j 99580 <AB_shell_main_loop+0x690>
   990e4:	5a 78 09 0f 	bnec $r7,#9,99102 <AB_shell_main_loop+0x212>
   990e8:	5b c0 01 06 	beqc $fp,#1,990f4 <AB_shell_main_loop+0x204>
   990ec:	85 e2       	movi55 $r15,#2
   990ee:	4d c7 c2 48 	bne $fp,$r15,9957e <AB_shell_main_loop+0x68e>
   990f2:	d5 05       	j8 990fc <AB_shell_main_loop+0x20c>
   990f4:	84 02       	movi55 $r0,#2
   990f6:	b6 06       	swi450 $r0,[$r6]
   990f8:	48 00 02 3d 	j 99572 <AB_shell_main_loop+0x682>
   990fc:	b6 26       	swi450 $r1,[$r6]
   990fe:	48 00 02 3a 	j 99572 <AB_shell_main_loop+0x682>
   99102:	5a 70 7f 04 	beqc $r7,#127,9910a <AB_shell_main_loop+0x21a>
   99106:	5a 78 08 51 	bnec $r7,#8,991a8 <AB_shell_main_loop+0x2b8>
   9910a:	85 e1       	movi55 $r15,#1
   9910c:	4d c7 82 39 	beq $fp,$r15,9957e <AB_shell_main_loop+0x68e>
   99110:	00 23 00 a5 	lbi $r2,[$r6+#0xa5]
   99114:	4e 22 02 35 	beqz $r2,9957e <AB_shell_main_loop+0x68e>
   99118:	00 33 00 a4 	lbi $r3,[$r6+#0xa4]
   9911c:	9e 91       	subi333 $r2,$r2,#1
   9911e:	9e d9       	subi333 $r3,$r3,#1
   99120:	96 d8       	zeb33 $r3,$r3
   99122:	96 90       	zeb33 $r2,$r2
   99124:	10 33 00 a4 	sbi $r3,[$r6+#0xa4]
   99128:	10 23 00 a5 	sbi $r2,[$r6+#0xa5]
   9912c:	e2 43       	slt45 $r2,$r3
   9912e:	e8 2e       	beqzs8 9918a <AB_shell_main_loop+0x29a>
   99130:	9d 11       	addi333 $r4,$r2,#1
   99132:	50 13 00 0c 	addi $r1,$r6,#12
   99136:	98 0a       	add333 $r0,$r1,$r2
   99138:	98 4c       	add333 $r1,$r1,$r4
   9913a:	9a 9a       	sub333 $r2,$r3,$r2
   9913c:	49 ff b7 90 	jal 9005c <memmove>
   99140:	00 03 00 a4 	lbi $r0,[$r6+#0xa4]
   99144:	00 23 00 a5 	lbi $r2,[$r6+#0xa5]
   99148:	98 30       	add333 $r0,$r6,$r0
   9914a:	8c 08       	addi45 $r0,#8
   9914c:	84 20       	movi55 $r1,#0
   9914e:	ae 44       	sbi333 $r1,[$r0+#0x4]
   99150:	98 b2       	add333 $r2,$r6,$r2
   99152:	80 06       	mov55 $r0,$r6
   99154:	46 10 00 a0 	sethi $r1,#0xa0
   99158:	58 10 85 38 	ori $r1,$r1,#0x538
   9915c:	8c 4c       	addi45 $r2,#12
   9915e:	49 ff fc 6e 	jal 98a3a <shell_printf>
   99162:	84 e0       	movi55 $r7,#0
   99164:	00 83 00 a5 	lbi $r8,[$r6+#0xa5]
   99168:	d5 08       	j8 99178 <AB_shell_main_loop+0x288>
   9916a:	80 06       	mov55 $r0,$r6
   9916c:	46 10 00 a0 	sethi $r1,#0xa0
   99170:	58 10 85 34 	ori $r1,$r1,#0x534
   99174:	49 ff fc 63 	jal 98a3a <shell_printf>
   99178:	00 13 00 a4 	lbi $r1,[$r6+#0xa4]
   9917c:	40 03 a0 00 	add $r0,$r7,$r8
   99180:	9d f9       	addi333 $r7,$r7,#1
   99182:	e0 20       	slts45 $r1,$r0
   99184:	e8 f3       	beqzs8 9916a <AB_shell_main_loop+0x27a>
   99186:	48 00 01 fc 	j 9957e <AB_shell_main_loop+0x68e>
   9918a:	80 06       	mov55 $r0,$r6
   9918c:	46 10 00 a0 	sethi $r1,#0xa0
   99190:	58 10 82 ec 	ori $r1,$r1,#0x2ec
   99194:	49 ff fc 53 	jal 98a3a <shell_printf>
   99198:	00 03 00 a4 	lbi $r0,[$r6+#0xa4]
   9919c:	99 b0       	add333 $r6,$r6,$r0
   9919e:	8c c8       	addi45 $r6,#8
   991a0:	84 00       	movi55 $r0,#0
   991a2:	ae 34       	sbi333 $r0,[$r6+#0x4]
   991a4:	48 00 01 ed 	j 9957e <AB_shell_main_loop+0x68e>
   991a8:	20 03 00 a4 	lbsi $r0,[$r6+#0xa4]
   991ac:	4e 04 00 05 	bgez $r0,991b6 <AB_shell_main_loop+0x2c6>
   991b0:	84 00       	movi55 $r0,#0
   991b2:	10 03 00 a4 	sbi $r0,[$r6+#0xa4]
   991b6:	5a 70 0d 05 	beqc $r7,#13,991c0 <AB_shell_main_loop+0x2d0>
   991ba:	85 ea       	movi55 $r15,#10
   991bc:	4c 77 c1 81 	bne $r7,$r15,994be <AB_shell_main_loop+0x5ce>
   991c0:	b4 06       	lwi450 $r0,[$r6]
   991c2:	c0 03       	beqz38 $r0,991c8 <AB_shell_main_loop+0x2d8>
   991c4:	5a 08 03 0a 	bnec $r0,#3,991d8 <AB_shell_main_loop+0x2e8>
   991c8:	80 06       	mov55 $r0,$r6
   991ca:	46 10 00 a0 	sethi $r1,#0xa0
   991ce:	58 10 85 40 	ori $r1,$r1,#0x540
   991d2:	49 ff fc 34 	jal 98a3a <shell_printf>
   991d6:	d5 1e       	j8 99212 <AB_shell_main_loop+0x322>
   991d8:	84 e0       	movi55 $r7,#0
   991da:	80 47       	mov55 $r2,$r7
   991dc:	46 10 00 a0 	sethi $r1,#0xa0
   991e0:	58 10 83 40 	ori $r1,$r1,#0x340
   991e4:	84 60       	movi55 $r3,#0
   991e6:	80 06       	mov55 $r0,$r6
   991e8:	49 ff fc 29 	jal 98a3a <shell_printf>
   991ec:	9d f9       	addi333 $r7,$r7,#1
   991ee:	80 06       	mov55 $r0,$r6
   991f0:	46 10 00 a0 	sethi $r1,#0xa0
   991f4:	58 10 85 44 	ori $r1,$r1,#0x544
   991f8:	49 ff fc 21 	jal 98a3a <shell_printf>
   991fc:	5a 78 14 ef 	bnec $r7,#20,991da <AB_shell_main_loop+0x2ea>
   99200:	84 40       	movi55 $r2,#0
   99202:	80 06       	mov55 $r0,$r6
   99204:	46 10 00 a0 	sethi $r1,#0xa0
   99208:	58 10 83 40 	ori $r1,$r1,#0x340
   9920c:	80 62       	mov55 $r3,$r2
   9920e:	49 ff fc 16 	jal 98a3a <shell_printf>
   99212:	80 e6       	mov55 $r7,$r6
   99214:	a2 3b       	lwi333.bi $r0,[$r7],#0xc
   99216:	5a 08 03 18 	bnec $r0,#3,99246 <AB_shell_main_loop+0x356>
   9921a:	00 13 00 a4 	lbi $r1,[$r6+#0xa4]
   9921e:	50 8f 80 0c 	addi $r8,$sp,#12
   99222:	80 07       	mov55 $r0,$r7
   99224:	80 48       	mov55 $r2,$r8
   99226:	49 ff fb 7f 	jal 98924 <shell_parse_line>
   9922a:	80 20       	mov55 $r1,$r0
   9922c:	4e 02 01 2a 	beqz $r0,99480 <AB_shell_main_loop+0x590>
   99230:	04 33 00 2e 	lwi $r3,[$r6+#0xb8]
   99234:	4e 32 01 26 	beqz $r3,99480 <AB_shell_main_loop+0x590>
   99238:	80 06       	mov55 $r0,$r6
   9923a:	80 48       	mov55 $r2,$r8
   9923c:	dd 23       	jral5 $r3
   9923e:	4e 03 01 21 	bnez $r0,99480 <AB_shell_main_loop+0x590>
   99242:	48 00 01 1d 	j 9947c <AB_shell_main_loop+0x58c>
   99246:	80 07       	mov55 $r0,$r7
   99248:	46 10 00 a0 	sethi $r1,#0xa0
   9924c:	58 10 85 48 	ori $r1,$r1,#0x548
   99250:	49 ff b7 24 	jal 90098 <strcmp>
   99254:	81 00       	mov55 $r8,$r0
   99256:	c8 3a       	bnez38 $r0,992ca <AB_shell_main_loop+0x3da>
   99258:	00 23 00 a4 	lbi $r2,[$r6+#0xa4]
   9925c:	fd 03       	movd44 $r0,$r6
   9925e:	49 ff fb a8 	jal 989ae <shell_history_save>
   99262:	00 03 00 bd 	lbi $r0,[$r6+#0xbd]
   99266:	5a 00 0a 04 	beqc $r0,#10,9926e <AB_shell_main_loop+0x37e>
   9926a:	80 e8       	mov55 $r7,$r8
   9926c:	d5 29       	j8 992be <AB_shell_main_loop+0x3ce>
   9926e:	80 e8       	mov55 $r7,$r8
   99270:	00 03 00 bc 	lbi $r0,[$r6+#0xbc]
   99274:	98 38       	add333 $r0,$r7,$r0
   99276:	96 00       	zeb33 $r0,$r0
   99278:	e6 0a       	slti45 $r0,#10
   9927a:	e9 03       	bnezs8 99280 <AB_shell_main_loop+0x390>
   9927c:	8e 0a       	subi45 $r0,#10
   9927e:	96 00       	zeb33 $r0,$r0
   99280:	50 30 00 30 	addi $r3,$r0,#48
   99284:	38 33 0e 02 	lw $r3,[$r6+($r3<<#0x2)]
   99288:	80 47       	mov55 $r2,$r7
   9928a:	80 06       	mov55 $r0,$r6
   9928c:	46 10 00 a0 	sethi $r1,#0xa0
   99290:	58 10 85 50 	ori $r1,$r1,#0x550
   99294:	9d f9       	addi333 $r7,$r7,#1
   99296:	49 ff fb d2 	jal 98a3a <shell_printf>
   9929a:	5a 78 0a eb 	bnec $r7,#10,99270 <AB_shell_main_loop+0x380>
   9929e:	48 00 00 ec 	j 99476 <AB_shell_main_loop+0x586>
   992a2:	50 33 80 30 	addi $r3,$r7,#48
   992a6:	38 33 0e 02 	lw $r3,[$r6+($r3<<#0x2)]
   992aa:	80 47       	mov55 $r2,$r7
   992ac:	80 06       	mov55 $r0,$r6
   992ae:	46 10 00 a0 	sethi $r1,#0xa0
   992b2:	58 10 85 50 	ori $r1,$r1,#0x550
   992b6:	9d f9       	addi333 $r7,$r7,#1
   992b8:	49 ff fb c1 	jal 98a3a <shell_printf>
   992bc:	97 f8       	zeb33 $r7,$r7
   992be:	00 03 00 bd 	lbi $r0,[$r6+#0xbd]
   992c2:	e2 e0       	slt45 $r7,$r0
   992c4:	e9 ef       	bnezs8 992a2 <AB_shell_main_loop+0x3b2>
   992c6:	48 00 00 d8 	j 99476 <AB_shell_main_loop+0x586>
   992ca:	20 03 00 0c 	lbsi $r0,[$r6+#0xc]
   992ce:	4e 02 00 d4 	beqz $r0,99476 <AB_shell_main_loop+0x586>
   992d2:	00 23 00 a4 	lbi $r2,[$r6+#0xa4]
   992d6:	c2 04       	beqz38 $r2,992de <AB_shell_main_loop+0x3ee>
   992d8:	fd 03       	movd44 $r0,$r6
   992da:	49 ff fb 6a 	jal 989ae <shell_history_save>
   992de:	50 9f 80 0c 	addi $r9,$sp,#12
   992e2:	00 13 00 a4 	lbi $r1,[$r6+#0xa4]
   992e6:	80 07       	mov55 $r0,$r7
   992e8:	80 49       	mov55 $r2,$r9
   992ea:	49 ff fb 1d 	jal 98924 <shell_parse_line>
   992ee:	81 00       	mov55 $r8,$r0
   992f0:	4e 02 00 c3 	beqz $r0,99476 <AB_shell_main_loop+0x586>
   992f4:	04 03 00 2c 	lwi $r0,[$r6+#0xb0]
   992f8:	00 13 00 a2 	lbi $r1,[$r6+#0xa2]
   992fc:	f2 03       	lwi37.sp $r2,[+#0xc]
   992fe:	49 ff fb 79 	jal 989f0 <shell_find_cmd>
   99302:	80 e0       	mov55 $r7,$r0
   99304:	c8 2c       	bnez38 $r0,9935c <AB_shell_main_loop+0x46c>
   99306:	f2 03       	lwi37.sp $r2,[+#0xc]
   99308:	46 10 00 a0 	sethi $r1,#0xa0
   9930c:	58 10 85 5c 	ori $r1,$r1,#0x55c
   99310:	80 06       	mov55 $r0,$r6
   99312:	49 ff fb 94 	jal 98a3a <shell_printf>
   99316:	46 10 00 a0 	sethi $r1,#0xa0
   9931a:	58 10 85 64 	ori $r1,$r1,#0x564
   9931e:	80 06       	mov55 $r0,$r6
   99320:	49 ff fb 8d 	jal 98a3a <shell_printf>
   99324:	80 06       	mov55 $r0,$r6
   99326:	46 10 00 a0 	sethi $r1,#0xa0
   9932a:	58 10 85 7c 	ori $r1,$r1,#0x57c
   9932e:	49 ff fb 86 	jal 98a3a <shell_printf>
   99332:	81 07       	mov55 $r8,$r7
   99334:	d5 0e       	j8 99350 <AB_shell_main_loop+0x460>
   99336:	04 23 00 2c 	lwi $r2,[$r6+#0xb0]
   9933a:	80 06       	mov55 $r0,$r6
   9933c:	38 21 1c 02 	lw $r2,[$r2+($r7<<#0x0)]
   99340:	46 10 00 a0 	sethi $r1,#0xa0
   99344:	58 10 85 88 	ori $r1,$r1,#0x588
   99348:	49 ff fb 79 	jal 98a3a <shell_printf>
   9934c:	8d 01       	addi45 $r8,#1
   9934e:	8c ec       	addi45 $r7,#12
   99350:	00 03 00 a2 	lbi $r0,[$r6+#0xa2]
   99354:	e1 00       	slts45 $r8,$r0
   99356:	e9 f0       	bnezs8 99336 <AB_shell_main_loop+0x446>
   99358:	48 00 00 8f 	j 99476 <AB_shell_main_loop+0x586>
   9935c:	b0 c4       	addri36.sp $r3,#0x10
   9935e:	85 20       	movi55 $r9,#0
   99360:	5a 80 01 04 	beqc $r8,#1,99368 <AB_shell_main_loop+0x478>
   99364:	a0 3a       	lwi333 $r0,[$r7+#0x8]
   99366:	c8 05       	bnez38 $r0,99370 <AB_shell_main_loop+0x480>
   99368:	a0 f9       	lwi333 $r3,[$r7+#0x4]
   9936a:	cb 1b       	bnez38 $r3,993a0 <AB_shell_main_loop+0x4b0>
   9936c:	84 fd       	movi55 $r7,#-3
   9936e:	d5 56       	j8 9941a <AB_shell_main_loop+0x52a>
   99370:	8d 21       	addi45 $r9,#1
   99372:	80 20       	mov55 $r1,$r0
   99374:	85 40       	movi55 $r10,#0
   99376:	b4 41       	lwi450 $r2,[$r1]
   99378:	c2 07       	beqz38 $r2,99386 <AB_shell_main_loop+0x496>
   9937a:	8d 41       	addi45 $r10,#1
   9937c:	54 a5 00 ff 	andi $r10,$r10,#0xff
   99380:	8c 2c       	addi45 $r1,#12
   99382:	5a a8 64 fa 	bnec $r10,#100,99376 <AB_shell_main_loop+0x486>
   99386:	a2 99       	lwi333.bi $r2,[$r3],#0x4
   99388:	80 2a       	mov55 $r1,$r10
   9938a:	b6 7f       	swi450 $r3,[$sp]
   9938c:	49 ff fb 32 	jal 989f0 <shell_find_cmd>
   99390:	b4 7f       	lwi450 $r3,[$sp]
   99392:	c0 04       	beqz38 $r0,9939a <AB_shell_main_loop+0x4aa>
   99394:	8f 01       	subi45 $r8,#1
   99396:	80 e0       	mov55 $r7,$r0
   99398:	d5 e4       	j8 99360 <AB_shell_main_loop+0x470>
   9939a:	a0 f9       	lwi333 $r3,[$r7+#0x4]
   9939c:	c3 0b       	beqz38 $r3,993b2 <AB_shell_main_loop+0x4c2>
   9939e:	8f 21       	subi45 $r9,#1
   993a0:	40 94 88 08 	slli $r9,$r9,#2
   993a4:	b0 83       	addri36.sp $r2,#0xc
   993a6:	80 06       	mov55 $r0,$r6
   993a8:	80 28       	mov55 $r1,$r8
   993aa:	88 49       	add45 $r2,$r9
   993ac:	dd 23       	jral5 $r3
   993ae:	80 e0       	mov55 $r7,$r0
   993b0:	d5 32       	j8 99414 <AB_shell_main_loop+0x524>
   993b2:	80 06       	mov55 $r0,$r6
   993b4:	46 10 00 a0 	sethi $r1,#0xa0
   993b8:	58 10 85 7c 	ori $r1,$r1,#0x57c
   993bc:	b6 7f       	swi450 $r3,[$sp]
   993be:	49 ff fb 3e 	jal 98a3a <shell_printf>
   993c2:	b4 7f       	lwi450 $r3,[$sp]
   993c4:	81 03       	mov55 $r8,$r3
   993c6:	80 83       	mov55 $r4,$r3
   993c8:	d5 22       	j8 9940c <AB_shell_main_loop+0x51c>
   993ca:	b1 43       	addri36.sp $r5,#0xc
   993cc:	38 22 8e 02 	lw $r2,[$r5+($r3<<#0x2)]
   993d0:	80 06       	mov55 $r0,$r6
   993d2:	46 10 00 a0 	sethi $r1,#0xa0
   993d6:	58 10 84 c4 	ori $r1,$r1,#0x4c4
   993da:	b6 7f       	swi450 $r3,[$sp]
   993dc:	f4 81       	swi37.sp $r4,[+#0x4]
   993de:	49 ff fb 2e 	jal 98a3a <shell_printf>
   993e2:	b4 7f       	lwi450 $r3,[$sp]
   993e4:	f4 01       	lwi37.sp $r4,[+#0x4]
   993e6:	9c d9       	addi333 $r3,$r3,#1
   993e8:	96 d8       	zeb33 $r3,$r3
   993ea:	e0 69       	slts45 $r3,$r9
   993ec:	e9 ef       	bnezs8 993ca <AB_shell_main_loop+0x4da>
   993ee:	a0 ba       	lwi333 $r2,[$r7+#0x8]
   993f0:	80 06       	mov55 $r0,$r6
   993f2:	38 21 20 02 	lw $r2,[$r2+($r8<<#0x0)]
   993f6:	46 10 00 a0 	sethi $r1,#0xa0
   993fa:	58 10 85 88 	ori $r1,$r1,#0x588
   993fe:	f4 81       	swi37.sp $r4,[+#0x4]
   99400:	49 ff fb 1d 	jal 98a3a <shell_printf>
   99404:	f4 01       	lwi37.sp $r4,[+#0x4]
   99406:	8d 0c       	addi45 $r8,#12
   99408:	9d 21       	addi333 $r4,$r4,#1
   9940a:	97 20       	zeb33 $r4,$r4
   9940c:	e2 8a       	slt45 $r4,$r10
   9940e:	e8 34       	beqzs8 99476 <AB_shell_main_loop+0x586>
   99410:	84 60       	movi55 $r3,#0
   99412:	d5 ec       	j8 993ea <AB_shell_main_loop+0x4fa>
   99414:	c0 31       	beqz38 $r0,99476 <AB_shell_main_loop+0x586>
   99416:	5a 07 fc 2d 	beqc $r0,#-4,99470 <AB_shell_main_loop+0x580>
   9941a:	f2 03       	lwi37.sp $r2,[+#0xc]
   9941c:	80 06       	mov55 $r0,$r6
   9941e:	46 10 00 a0 	sethi $r1,#0xa0
   99422:	58 10 85 5c 	ori $r1,$r1,#0x55c
   99426:	49 ff fb 0a 	jal 98a3a <shell_printf>
   9942a:	5a 7f fe 08 	bnec $r7,#-2,9943a <AB_shell_main_loop+0x54a>
   9942e:	80 06       	mov55 $r0,$r6
   99430:	46 10 00 a0 	sethi $r1,#0xa0
   99434:	58 10 85 94 	ori $r1,$r1,#0x594
   99438:	d5 10       	j8 99458 <AB_shell_main_loop+0x568>
   9943a:	5a 7f ff 08 	bnec $r7,#-1,9944a <AB_shell_main_loop+0x55a>
   9943e:	80 06       	mov55 $r0,$r6
   99440:	46 10 00 a0 	sethi $r1,#0xa0
   99444:	58 10 85 64 	ori $r1,$r1,#0x564
   99448:	d5 08       	j8 99458 <AB_shell_main_loop+0x568>
   9944a:	5a 7f fd 0a 	bnec $r7,#-3,9945e <AB_shell_main_loop+0x56e>
   9944e:	80 06       	mov55 $r0,$r6
   99450:	46 10 00 a0 	sethi $r1,#0xa0
   99454:	58 10 85 ac 	ori $r1,$r1,#0x5ac
   99458:	49 ff fa f1 	jal 98a3a <shell_printf>
   9945c:	d5 0d       	j8 99476 <AB_shell_main_loop+0x586>
   9945e:	80 06       	mov55 $r0,$r6
   99460:	46 10 00 a0 	sethi $r1,#0xa0
   99464:	58 10 85 c8 	ori $r1,$r1,#0x5c8
   99468:	80 47       	mov55 $r2,$r7
   9946a:	49 ff fa e8 	jal 98a3a <shell_printf>
   9946e:	d5 04       	j8 99476 <AB_shell_main_loop+0x586>
   99470:	84 01       	movi55 $r0,#1
   99472:	10 03 00 e8 	sbi $r0,[$r6+#0xe8]
   99476:	b4 06       	lwi450 $r0,[$r6]
   99478:	5a 08 02 04 	bnec $r0,#2,99480 <AB_shell_main_loop+0x590>
   9947c:	84 01       	movi55 $r0,#1
   9947e:	b6 06       	swi450 $r0,[$r6]
   99480:	84 00       	movi55 $r0,#0
   99482:	10 03 00 a4 	sbi $r0,[$r6+#0xa4]
   99486:	10 03 00 a5 	sbi $r0,[$r6+#0xa5]
   9948a:	84 20       	movi55 $r1,#0
   9948c:	50 03 00 0c 	addi $r0,$r6,#12
   99490:	44 20 00 80 	movi $r2,#128
   99494:	49 ff b5 fa 	jal 90088 <memset>
   99498:	00 03 00 e8 	lbi $r0,[$r6+#0xe8]
   9949c:	c8 0c       	bnez38 $r0,994b4 <AB_shell_main_loop+0x5c4>
   9949e:	b4 06       	lwi450 $r0,[$r6]
   994a0:	c0 07       	beqz38 $r0,994ae <AB_shell_main_loop+0x5be>
   994a2:	5a 08 03 09 	bnec $r0,#3,994b4 <AB_shell_main_loop+0x5c4>
   994a6:	55 ce 00 ff 	andi $fp,$fp,#0xff
   994aa:	4d c0 40 05 	bne $fp,$r0,994b4 <AB_shell_main_loop+0x5c4>
   994ae:	80 06       	mov55 $r0,$r6
   994b0:	49 ff fb 4c 	jal 98b48 <shell_show_title>
   994b4:	00 03 00 e8 	lbi $r0,[$r6+#0xe8]
   994b8:	c8 61       	bnez38 $r0,9957a <AB_shell_main_loop+0x68a>
   994ba:	84 02       	movi55 $r0,#2
   994bc:	d5 62       	j8 99580 <AB_shell_main_loop+0x690>
   994be:	b4 06       	lwi450 $r0,[$r6]
   994c0:	5a 00 01 47 	beqc $r0,#1,9954e <AB_shell_main_loop+0x65e>
   994c4:	00 23 00 a5 	lbi $r2,[$r6+#0xa5]
   994c8:	00 33 00 a4 	lbi $r3,[$r6+#0xa4]
   994cc:	e2 43       	slt45 $r2,$r3
   994ce:	e8 2a       	beqzs8 99522 <AB_shell_main_loop+0x632>
   994d0:	50 13 00 0c 	addi $r1,$r6,#12
   994d4:	9c 11       	addi333 $r0,$r2,#1
   994d6:	98 08       	add333 $r0,$r1,$r0
   994d8:	98 4a       	add333 $r1,$r1,$r2
   994da:	9a 9a       	sub333 $r2,$r3,$r2
   994dc:	49 ff b5 c0 	jal 9005c <memmove>
   994e0:	00 23 00 a5 	lbi $r2,[$r6+#0xa5]
   994e4:	46 10 00 a0 	sethi $r1,#0xa0
   994e8:	58 10 84 c0 	ori $r1,$r1,#0x4c0
   994ec:	98 32       	add333 $r0,$r6,$r2
   994ee:	10 70 00 0c 	sbi $r7,[$r0+#0xc]
   994f2:	80 40       	mov55 $r2,$r0
   994f4:	8c 4c       	addi45 $r2,#12
   994f6:	80 06       	mov55 $r0,$r6
   994f8:	49 ff fa a1 	jal 98a3a <shell_printf>
   994fc:	84 e0       	movi55 $r7,#0
   994fe:	00 83 00 a5 	lbi $r8,[$r6+#0xa5]
   99502:	d5 08       	j8 99512 <AB_shell_main_loop+0x622>
   99504:	80 06       	mov55 $r0,$r6
   99506:	46 10 00 a0 	sethi $r1,#0xa0
   9950a:	58 10 85 34 	ori $r1,$r1,#0x534
   9950e:	49 ff fa 96 	jal 98a3a <shell_printf>
   99512:	00 03 00 a4 	lbi $r0,[$r6+#0xa4]
   99516:	40 13 a0 00 	add $r1,$r7,$r8
   9951a:	9d f9       	addi333 $r7,$r7,#1
   9951c:	e0 20       	slts45 $r1,$r0
   9951e:	e9 f3       	bnezs8 99504 <AB_shell_main_loop+0x614>
   99520:	d5 0c       	j8 99538 <AB_shell_main_loop+0x648>
   99522:	98 f3       	add333 $r3,$r6,$r3
   99524:	10 71 80 0c 	sbi $r7,[$r3+#0xc]
   99528:	80 06       	mov55 $r0,$r6
   9952a:	46 10 00 a0 	sethi $r1,#0xa0
   9952e:	58 10 82 e8 	ori $r1,$r1,#0x2e8
   99532:	80 47       	mov55 $r2,$r7
   99534:	49 ff fa 83 	jal 98a3a <shell_printf>
   99538:	00 03 00 a4 	lbi $r0,[$r6+#0xa4]
   9953c:	9c 01       	addi333 $r0,$r0,#1
   9953e:	10 03 00 a4 	sbi $r0,[$r6+#0xa4]
   99542:	00 03 00 a5 	lbi $r0,[$r6+#0xa5]
   99546:	9c 01       	addi333 $r0,$r0,#1
   99548:	10 03 00 a5 	sbi $r0,[$r6+#0xa5]
   9954c:	d5 19       	j8 9957e <AB_shell_main_loop+0x68e>
   9954e:	50 73 ff d0 	addi $r7,$r7,#-48
   99552:	97 f8       	zeb33 $r7,$r7
   99554:	e6 ea       	slti45 $r7,#10
   99556:	e8 14       	beqzs8 9957e <AB_shell_main_loop+0x68e>
   99558:	00 03 00 a3 	lbi $r0,[$r6+#0xa3]
   9955c:	e2 e0       	slt45 $r7,$r0
   9955e:	e8 10       	beqzs8 9957e <AB_shell_main_loop+0x68e>
   99560:	00 03 00 a1 	lbi $r0,[$r6+#0xa1]
   99564:	98 30       	add333 $r0,$r6,$r0
   99566:	50 00 00 88 	addi $r0,$r0,#136
   9956a:	a6 44       	lbi333 $r1,[$r0+#0x4]
   9956c:	4c 13 80 09 	beq $r1,$r7,9957e <AB_shell_main_loop+0x68e>
   99570:	af c4       	sbi333 $r7,[$r0+#0x4]
   99572:	80 06       	mov55 $r0,$r6
   99574:	49 ff fa ea 	jal 98b48 <shell_show_title>
   99578:	d5 03       	j8 9957e <AB_shell_main_loop+0x68e>
   9957a:	84 01       	movi55 $r0,#1
   9957c:	d5 02       	j8 99580 <AB_shell_main_loop+0x690>
   9957e:	84 00       	movi55 $r0,#0
   99580:	fc cc       	pop25 $r10,#0x60    ! {$r6~$r10, $fp, $gp, $lp}

00099582 <AB_shell_main_title>:
   99582:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   99584:	fd 30       	movd44 $r6,$r0
   99586:	c0 18       	beqz38 $r0,995b6 <AB_shell_main_title+0x34>
   99588:	04 10 00 2c 	lwi $r1,[$r0+#0xb0]
   9958c:	c1 15       	beqz38 $r1,995b6 <AB_shell_main_title+0x34>
   9958e:	a0 41       	lwi333 $r1,[$r0+#0x4]
   99590:	c1 13       	beqz38 $r1,995b6 <AB_shell_main_title+0x34>
   99592:	84 20       	movi55 $r1,#0
   99594:	10 10 00 e8 	sbi $r1,[$r0+#0xe8]
   99598:	46 10 00 a0 	sethi $r1,#0xa0
   9959c:	58 10 85 28 	ori $r1,$r1,#0x528
   995a0:	49 ff fa 4d 	jal 98a3a <shell_printf>
   995a4:	c7 04       	beqz38 $r7,995ac <AB_shell_main_title+0x2a>
   995a6:	fd 03       	movd44 $r0,$r6
   995a8:	49 ff fa 49 	jal 98a3a <shell_printf>
   995ac:	80 06       	mov55 $r0,$r6
   995ae:	49 ff fa cd 	jal 98b48 <shell_show_title>
   995b2:	84 00       	movi55 $r0,#0
   995b4:	d5 02       	j8 995b8 <AB_shell_main_title+0x36>
   995b6:	84 1f       	movi55 $r0,#-1
   995b8:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

000995ba <assert_ab_callback_verbose>:
   995ba:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   995bc:	96 49       	zeh33 $r1,$r1
   995be:	80 a0       	mov55 $r5,$r0
   995c0:	b6 5f       	swi450 $r2,[$sp]
   995c2:	f1 81       	swi37.sp $r1,[+#0x4]
   995c4:	84 45       	movi55 $r2,#5
   995c6:	84 21       	movi55 $r1,#1
   995c8:	fa 6f       	movpi45 $r3,#0x1f
   995ca:	84 80       	movi55 $r4,#0
   995cc:	46 00 00 a0 	sethi $r0,#0xa0
   995d0:	58 00 05 d4 	ori $r0,$r0,#0x5d4
   995d4:	49 00 09 81 	jal 9a8d6 <printf>
   995d8:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000995da <assert_ab_callback>:
   995da:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   995dc:	96 01       	zeh33 $r0,$r0
   995de:	80 a1       	mov55 $r5,$r1
   995e0:	b6 1f       	swi450 $r0,[$sp]
   995e2:	84 21       	movi55 $r1,#1
   995e4:	84 45       	movi55 $r2,#5
   995e6:	fa 6f       	movpi45 $r3,#0x1f
   995e8:	84 80       	movi55 $r4,#0
   995ea:	46 00 00 a0 	sethi $r0,#0xa0
   995ee:	58 00 06 08 	ori $r0,$r0,#0x608
   995f2:	49 00 09 72 	jal 9a8d6 <printf>
   995f6:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

000995f8 <exceptf>:
   995f8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   995fa:	3c 2d f1 a5 	lwi.gp $r2,[+#-14700]
   995fe:	96 00       	zeb33 $r0,$r0
   99600:	c2 02       	beqz38 $r2,99604 <exceptf+0xc>
   99602:	dd 22       	jral5 $r2
   99604:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00099606 <AB_Debug_CpuExceptionMonitor>:
   99606:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   99608:	3c 0f f1 a5 	swi.gp $r0,[+#-14700]
   9960c:	84 01       	movi55 $r0,#1
   9960e:	46 10 00 99 	sethi $r1,#0x99
   99612:	58 10 87 0a 	ori $r1,$r1,#0x70a
   99616:	49 ff 36 b7 	jal 80384 <SysIntrHandlerRegister>
   9961a:	84 02       	movi55 $r0,#2
   9961c:	46 10 00 99 	sethi $r1,#0x99
   99620:	58 10 86 f6 	ori $r1,$r1,#0x6f6
   99624:	49 ff 36 b0 	jal 80384 <SysIntrHandlerRegister>
   99628:	84 03       	movi55 $r0,#3
   9962a:	46 10 00 99 	sethi $r1,#0x99
   9962e:	58 10 86 e2 	ori $r1,$r1,#0x6e2
   99632:	49 ff 36 a9 	jal 80384 <SysIntrHandlerRegister>
   99636:	84 04       	movi55 $r0,#4
   99638:	46 10 00 99 	sethi $r1,#0x99
   9963c:	58 10 86 ce 	ori $r1,$r1,#0x6ce
   99640:	49 ff 36 a2 	jal 80384 <SysIntrHandlerRegister>
   99644:	84 05       	movi55 $r0,#5
   99646:	46 10 00 99 	sethi $r1,#0x99
   9964a:	58 10 86 ba 	ori $r1,$r1,#0x6ba
   9964e:	49 ff 36 9b 	jal 80384 <SysIntrHandlerRegister>
   99652:	84 06       	movi55 $r0,#6
   99654:	46 10 00 99 	sethi $r1,#0x99
   99658:	58 10 86 a6 	ori $r1,$r1,#0x6a6
   9965c:	49 ff 36 94 	jal 80384 <SysIntrHandlerRegister>
   99660:	84 07       	movi55 $r0,#7
   99662:	46 10 00 99 	sethi $r1,#0x99
   99666:	58 10 86 92 	ori $r1,$r1,#0x692
   9966a:	49 ff 36 8d 	jal 80384 <SysIntrHandlerRegister>
   9966e:	84 08       	movi55 $r0,#8
   99670:	46 10 00 99 	sethi $r1,#0x99
   99674:	58 10 86 7e 	ori $r1,$r1,#0x67e
   99678:	49 ff 36 86 	jal 80384 <SysIntrHandlerRegister>
   9967c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009967e <exception8>:
   9967e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   99680:	64 12 a4 02 	mfsr $r1,$IPC
   99684:	84 08       	movi55 $r0,#8
   99686:	49 ff ff b9 	jal 995f8 <exceptf>
   9968a:	84 08       	movi55 $r0,#8
   9968c:	49 ff 36 51 	jal 8032e <SysIntrHandlerCancel>
   99690:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

00099692 <exception7>:
   99692:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   99694:	64 12 a4 02 	mfsr $r1,$IPC
   99698:	84 07       	movi55 $r0,#7
   9969a:	49 ff ff af 	jal 995f8 <exceptf>
   9969e:	84 07       	movi55 $r0,#7
   996a0:	49 ff 36 47 	jal 8032e <SysIntrHandlerCancel>
   996a4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000996a6 <exception6>:
   996a6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   996a8:	64 12 a4 02 	mfsr $r1,$IPC
   996ac:	84 06       	movi55 $r0,#6
   996ae:	49 ff ff a5 	jal 995f8 <exceptf>
   996b2:	84 06       	movi55 $r0,#6
   996b4:	49 ff 36 3d 	jal 8032e <SysIntrHandlerCancel>
   996b8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000996ba <exception5>:
   996ba:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   996bc:	64 12 a4 02 	mfsr $r1,$IPC
   996c0:	84 05       	movi55 $r0,#5
   996c2:	49 ff ff 9b 	jal 995f8 <exceptf>
   996c6:	84 05       	movi55 $r0,#5
   996c8:	49 ff 36 33 	jal 8032e <SysIntrHandlerCancel>
   996cc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000996ce <exception4>:
   996ce:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   996d0:	64 12 a4 02 	mfsr $r1,$IPC
   996d4:	84 04       	movi55 $r0,#4
   996d6:	49 ff ff 91 	jal 995f8 <exceptf>
   996da:	84 04       	movi55 $r0,#4
   996dc:	49 ff 36 29 	jal 8032e <SysIntrHandlerCancel>
   996e0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000996e2 <exception3>:
   996e2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   996e4:	64 12 a4 02 	mfsr $r1,$IPC
   996e8:	84 03       	movi55 $r0,#3
   996ea:	49 ff ff 87 	jal 995f8 <exceptf>
   996ee:	84 03       	movi55 $r0,#3
   996f0:	49 ff 36 1f 	jal 8032e <SysIntrHandlerCancel>
   996f4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

000996f6 <exception2>:
   996f6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   996f8:	64 12 a4 02 	mfsr $r1,$IPC
   996fc:	84 02       	movi55 $r0,#2
   996fe:	49 ff ff 7d 	jal 995f8 <exceptf>
   99702:	84 02       	movi55 $r0,#2
   99704:	49 ff 36 15 	jal 8032e <SysIntrHandlerCancel>
   99708:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009970a <exception1>:
   9970a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9970c:	64 12 a4 02 	mfsr $r1,$IPC
   99710:	84 01       	movi55 $r0,#1
   99712:	49 ff ff 73 	jal 995f8 <exceptf>
   99716:	84 01       	movi55 $r0,#1
   99718:	49 ff 36 0b 	jal 8032e <SysIntrHandlerCancel>
   9971c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009971e <AB_Log_HciEventStr>:
   9971e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   99720:	9e 01       	subi333 $r0,$r0,#1
   99722:	96 00       	zeb33 $r0,$r0
   99724:	5c f0 00 3e 	slti $r15,$r0,#62
   99728:	e9 03       	bnezs8 9972e <AB_Log_HciEventStr+0x10>
   9972a:	84 00       	movi55 $r0,#0
   9972c:	d5 07       	j8 9973a <AB_Log_HciEventStr+0x1c>
   9972e:	46 10 00 9f 	sethi $r1,#0x9f
   99732:	58 10 86 08 	ori $r1,$r1,#0x608
   99736:	38 00 82 02 	lw $r0,[$r1+($r0<<#0x2)]
   9973a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009973c <AB_Log_HciCommandStr>:
   9973c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9973e:	44 10 0c 26 	movi $r1,#3110
   99742:	96 01       	zeh33 $r0,$r0
   99744:	4c 00 84 34 	beq $r0,$r1,99fac <AB_Log_HciCommandStr+0x870>
   99748:	5c f0 0c 27 	slti $r15,$r0,#3111
   9974c:	4e f2 01 5c 	beqz $r15,99a04 <AB_Log_HciCommandStr+0x2c8>
   99750:	44 10 08 04 	movi $r1,#2052
   99754:	4c 00 83 4e 	beq $r0,$r1,99df0 <AB_Log_HciCommandStr+0x6b4>
   99758:	5c f0 08 05 	slti $r15,$r0,#2053
   9975c:	4e f2 00 b2 	beqz $r15,998c0 <AB_Log_HciCommandStr+0x184>
   99760:	44 10 04 19 	movi $r1,#1049
   99764:	4c 00 83 22 	beq $r0,$r1,99da8 <AB_Log_HciCommandStr+0x66c>
   99768:	5c f0 04 1a 	slti $r15,$r0,#1050
   9976c:	e8 55       	beqzs8 99816 <AB_Log_HciCommandStr+0xda>
   9976e:	8e 2f       	subi45 $r1,#15
   99770:	4c 00 82 e0 	beq $r0,$r1,99d30 <AB_Log_HciCommandStr+0x5f4>
   99774:	5c f0 04 0b 	slti $r15,$r0,#1035
   99778:	e8 28       	beqzs8 997c8 <AB_Log_HciCommandStr+0x8c>
   9977a:	9e 4d       	subi333 $r1,$r1,#5
   9977c:	4c 00 82 c2 	beq $r0,$r1,99d00 <AB_Log_HciCommandStr+0x5c4>
   99780:	5c f0 04 06 	slti $r15,$r0,#1030
   99784:	e8 14       	beqzs8 997ac <AB_Log_HciCommandStr+0x70>
   99786:	9e 4b       	subi333 $r1,$r1,#3
   99788:	4c 00 82 a4 	beq $r0,$r1,99cd0 <AB_Log_HciCommandStr+0x594>
   9978c:	5c f0 04 03 	slti $r15,$r0,#1027
   99790:	e8 06       	beqzs8 9979c <AB_Log_HciCommandStr+0x60>
   99792:	9e 49       	subi333 $r1,$r1,#1
   99794:	4c 00 c6 45 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99798:	48 00 02 a2 	j 99cdc <AB_Log_HciCommandStr+0x5a0>
   9979c:	9c 49       	addi333 $r1,$r1,#1
   9979e:	4c 00 82 a5 	beq $r0,$r1,99ce8 <AB_Log_HciCommandStr+0x5ac>
   997a2:	9c 49       	addi333 $r1,$r1,#1
   997a4:	4c 00 c6 3d 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   997a8:	48 00 02 a6 	j 99cf4 <AB_Log_HciCommandStr+0x5b8>
   997ac:	9c 4a       	addi333 $r1,$r1,#2
   997ae:	4c 00 82 b5 	beq $r0,$r1,99d18 <AB_Log_HciCommandStr+0x5dc>
   997b2:	e2 01       	slt45 $r0,$r1
   997b4:	4e f3 02 ac 	bnez $r15,99d0c <AB_Log_HciCommandStr+0x5d0>
   997b8:	9c 49       	addi333 $r1,$r1,#1
   997ba:	4c 00 84 a7 	beq $r0,$r1,9a108 <AB_Log_HciCommandStr+0x9cc>
   997be:	9c 49       	addi333 $r1,$r1,#1
   997c0:	4c 00 c6 2f 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   997c4:	48 00 02 b0 	j 99d24 <AB_Log_HciCommandStr+0x5e8>
   997c8:	9c 4d       	addi333 $r1,$r1,#5
   997ca:	4c 00 82 d1 	beq $r0,$r1,99d6c <AB_Log_HciCommandStr+0x630>
   997ce:	5c f0 04 10 	slti $r15,$r0,#1040
   997d2:	e8 0f       	beqzs8 997f0 <AB_Log_HciCommandStr+0xb4>
   997d4:	9e 4b       	subi333 $r1,$r1,#3
   997d6:	4c 00 82 b9 	beq $r0,$r1,99d48 <AB_Log_HciCommandStr+0x60c>
   997da:	e2 01       	slt45 $r0,$r1
   997dc:	4e f3 02 b0 	bnez $r15,99d3c <AB_Log_HciCommandStr+0x600>
   997e0:	9c 49       	addi333 $r1,$r1,#1
   997e2:	4c 00 82 b9 	beq $r0,$r1,99d54 <AB_Log_HciCommandStr+0x618>
   997e6:	9c 49       	addi333 $r1,$r1,#1
   997e8:	4c 00 c6 1b 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   997ec:	48 00 02 ba 	j 99d60 <AB_Log_HciCommandStr+0x624>
   997f0:	9c 4c       	addi333 $r1,$r1,#4
   997f2:	4c 00 82 c9 	beq $r0,$r1,99d84 <AB_Log_HciCommandStr+0x648>
   997f6:	5c f0 04 14 	slti $r15,$r0,#1044
   997fa:	e8 06       	beqzs8 99806 <AB_Log_HciCommandStr+0xca>
   997fc:	9e 4a       	subi333 $r1,$r1,#2
   997fe:	4c 00 c6 10 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99802:	48 00 02 bb 	j 99d78 <AB_Log_HciCommandStr+0x63c>
   99806:	9c 4a       	addi333 $r1,$r1,#2
   99808:	4c 00 82 c4 	beq $r0,$r1,99d90 <AB_Log_HciCommandStr+0x654>
   9980c:	9c 4a       	addi333 $r1,$r1,#2
   9980e:	4c 00 c6 08 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99812:	48 00 02 c5 	j 99d9c <AB_Log_HciCommandStr+0x660>
   99816:	8c 32       	addi45 $r1,#18
   99818:	4c 00 84 a2 	beq $r0,$r1,9a15c <AB_Log_HciCommandStr+0xa20>
   9981c:	5c f0 04 2c 	slti $r15,$r0,#1068
   99820:	e8 28       	beqzs8 99870 <AB_Log_HciCommandStr+0x134>
   99822:	8e 2c       	subi45 $r1,#12
   99824:	4c 00 82 d4 	beq $r0,$r1,99dcc <AB_Log_HciCommandStr+0x690>
   99828:	5c f0 04 20 	slti $r15,$r0,#1056
   9982c:	e8 0f       	beqzs8 9984a <AB_Log_HciCommandStr+0x10e>
   9982e:	9e 4c       	subi333 $r1,$r1,#4
   99830:	4c 00 82 c2 	beq $r0,$r1,99db4 <AB_Log_HciCommandStr+0x678>
   99834:	e2 01       	slt45 $r0,$r1
   99836:	4e f3 04 6f 	bnez $r15,9a114 <AB_Log_HciCommandStr+0x9d8>
   9983a:	9c 49       	addi333 $r1,$r1,#1
   9983c:	4c 00 84 72 	beq $r0,$r1,9a120 <AB_Log_HciCommandStr+0x9e4>
   99840:	9c 49       	addi333 $r1,$r1,#1
   99842:	4c 00 c5 ee 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99846:	48 00 02 bd 	j 99dc0 <AB_Log_HciCommandStr+0x684>
   9984a:	8c 29       	addi45 $r1,#9
   9984c:	4c 00 84 76 	beq $r0,$r1,9a138 <AB_Log_HciCommandStr+0x9fc>
   99850:	5c f0 04 29 	slti $r15,$r0,#1065
   99854:	e8 06       	beqzs8 99860 <AB_Log_HciCommandStr+0x124>
   99856:	8e 28       	subi45 $r1,#8
   99858:	4c 00 c5 e3 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   9985c:	48 00 04 68 	j 9a12c <AB_Log_HciCommandStr+0x9f0>
   99860:	9c 49       	addi333 $r1,$r1,#1
   99862:	4c 00 84 71 	beq $r0,$r1,9a144 <AB_Log_HciCommandStr+0xa08>
   99866:	9c 49       	addi333 $r1,$r1,#1
   99868:	4c 00 c5 db 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   9986c:	48 00 04 72 	j 9a150 <AB_Log_HciCommandStr+0xa14>
   99870:	9c 4d       	addi333 $r1,$r1,#5
   99872:	4c 00 84 93 	beq $r0,$r1,9a198 <AB_Log_HciCommandStr+0xa5c>
   99876:	5c f0 04 31 	slti $r15,$r0,#1073
   9987a:	e8 0f       	beqzs8 99898 <AB_Log_HciCommandStr+0x15c>
   9987c:	9e 4b       	subi333 $r1,$r1,#3
   9987e:	4c 00 84 7b 	beq $r0,$r1,9a174 <AB_Log_HciCommandStr+0xa38>
   99882:	e2 01       	slt45 $r0,$r1
   99884:	4e f3 04 72 	bnez $r15,9a168 <AB_Log_HciCommandStr+0xa2c>
   99888:	9c 49       	addi333 $r1,$r1,#1
   9988a:	4c 00 84 7b 	beq $r0,$r1,9a180 <AB_Log_HciCommandStr+0xa44>
   9988e:	9c 49       	addi333 $r1,$r1,#1
   99890:	4c 00 c5 c7 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99894:	48 00 04 7c 	j 9a18c <AB_Log_HciCommandStr+0xa50>
   99898:	9c 4c       	addi333 $r1,$r1,#4
   9989a:	4c 00 84 8b 	beq $r0,$r1,9a1b0 <AB_Log_HciCommandStr+0xa74>
   9989e:	5c f0 04 35 	slti $r15,$r0,#1077
   998a2:	e8 06       	beqzs8 998ae <AB_Log_HciCommandStr+0x172>
   998a4:	9e 49       	subi333 $r1,$r1,#1
   998a6:	4c 00 c5 bc 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   998aa:	48 00 04 7d 	j 9a1a4 <AB_Log_HciCommandStr+0xa68>
   998ae:	44 10 08 01 	movi $r1,#2049
   998b2:	4c 00 82 93 	beq $r0,$r1,99dd8 <AB_Log_HciCommandStr+0x69c>
   998b6:	9c 4a       	addi333 $r1,$r1,#2
   998b8:	4c 00 c5 b3 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   998bc:	48 00 02 94 	j 99de4 <AB_Log_HciCommandStr+0x6a8>
   998c0:	44 10 0c 12 	movi $r1,#3090
   998c4:	4c 00 82 fc 	beq $r0,$r1,99ebc <AB_Log_HciCommandStr+0x780>
   998c8:	5c f0 0c 13 	slti $r15,$r0,#3091
   998cc:	e8 52       	beqzs8 99970 <AB_Log_HciCommandStr+0x234>
   998ce:	44 10 08 10 	movi $r1,#2064
   998d2:	4c 00 84 81 	beq $r0,$r1,9a1d4 <AB_Log_HciCommandStr+0xa98>
   998d6:	5c f0 08 11 	slti $r15,$r0,#2065
   998da:	e8 23       	beqzs8 99920 <AB_Log_HciCommandStr+0x1e4>
   998dc:	9e 4d       	subi333 $r1,$r1,#5
   998de:	4c 00 82 a7 	beq $r0,$r1,99e2c <AB_Log_HciCommandStr+0x6f0>
   998e2:	5c f0 08 0c 	slti $r15,$r0,#2060
   998e6:	e8 0f       	beqzs8 99904 <AB_Log_HciCommandStr+0x1c8>
   998e8:	9e 4d       	subi333 $r1,$r1,#5
   998ea:	4c 00 82 8f 	beq $r0,$r1,99e08 <AB_Log_HciCommandStr+0x6cc>
   998ee:	e2 01       	slt45 $r0,$r1
   998f0:	4e f3 02 86 	bnez $r15,99dfc <AB_Log_HciCommandStr+0x6c0>
   998f4:	9c 49       	addi333 $r1,$r1,#1
   998f6:	4c 00 82 8f 	beq $r0,$r1,99e14 <AB_Log_HciCommandStr+0x6d8>
   998fa:	9c 4a       	addi333 $r1,$r1,#2
   998fc:	4c 00 c5 91 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99900:	48 00 02 90 	j 99e20 <AB_Log_HciCommandStr+0x6e4>
   99904:	9c 4a       	addi333 $r1,$r1,#2
   99906:	4c 00 82 9f 	beq $r0,$r1,99e44 <AB_Log_HciCommandStr+0x708>
   9990a:	e2 01       	slt45 $r0,$r1
   9990c:	4e f3 02 96 	bnez $r15,99e38 <AB_Log_HciCommandStr+0x6fc>
   99910:	9c 49       	addi333 $r1,$r1,#1
   99912:	4c 00 84 55 	beq $r0,$r1,9a1bc <AB_Log_HciCommandStr+0xa80>
   99916:	9c 49       	addi333 $r1,$r1,#1
   99918:	4c 00 c5 83 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   9991c:	48 00 04 56 	j 9a1c8 <AB_Log_HciCommandStr+0xa8c>
   99920:	44 10 0c 09 	movi $r1,#3081
   99924:	4c 00 82 ae 	beq $r0,$r1,99e80 <AB_Log_HciCommandStr+0x744>
   99928:	5c f0 0c 0a 	slti $r15,$r0,#3082
   9992c:	e8 14       	beqzs8 99954 <AB_Log_HciCommandStr+0x218>
   9992e:	9e 4e       	subi333 $r1,$r1,#6
   99930:	4c 00 82 96 	beq $r0,$r1,99e5c <AB_Log_HciCommandStr+0x720>
   99934:	5c f0 0c 04 	slti $r15,$r0,#3076
   99938:	e8 06       	beqzs8 99944 <AB_Log_HciCommandStr+0x208>
   9993a:	9e 4a       	subi333 $r1,$r1,#2
   9993c:	4c 00 c5 71 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99940:	48 00 02 88 	j 99e50 <AB_Log_HciCommandStr+0x714>
   99944:	9c 4a       	addi333 $r1,$r1,#2
   99946:	4c 00 82 91 	beq $r0,$r1,99e68 <AB_Log_HciCommandStr+0x72c>
   9994a:	9c 4b       	addi333 $r1,$r1,#3
   9994c:	4c 00 c5 69 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99950:	48 00 02 92 	j 99e74 <AB_Log_HciCommandStr+0x738>
   99954:	9c 4a       	addi333 $r1,$r1,#2
   99956:	4c 00 82 a1 	beq $r0,$r1,99e98 <AB_Log_HciCommandStr+0x75c>
   9995a:	e2 01       	slt45 $r0,$r1
   9995c:	4e f3 02 98 	bnez $r15,99e8c <AB_Log_HciCommandStr+0x750>
   99960:	9c 4a       	addi333 $r1,$r1,#2
   99962:	4c 00 82 a1 	beq $r0,$r1,99ea4 <AB_Log_HciCommandStr+0x768>
   99966:	9c 4c       	addi333 $r1,$r1,#4
   99968:	4c 00 c5 5b 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   9996c:	48 00 02 a2 	j 99eb0 <AB_Log_HciCommandStr+0x774>
   99970:	8c 2a       	addi45 $r1,#10
   99972:	4c 00 82 e1 	beq $r0,$r1,99f34 <AB_Log_HciCommandStr+0x7f8>
   99976:	5c f0 0c 1d 	slti $r15,$r0,#3101
   9997a:	e8 23       	beqzs8 999c0 <AB_Log_HciCommandStr+0x284>
   9997c:	9e 4d       	subi333 $r1,$r1,#5
   9997e:	4c 00 82 bd 	beq $r0,$r1,99ef8 <AB_Log_HciCommandStr+0x7bc>
   99982:	5c f0 0c 18 	slti $r15,$r0,#3096
   99986:	e8 0f       	beqzs8 999a4 <AB_Log_HciCommandStr+0x268>
   99988:	9e 4b       	subi333 $r1,$r1,#3
   9998a:	4c 00 82 a5 	beq $r0,$r1,99ed4 <AB_Log_HciCommandStr+0x798>
   9998e:	e2 01       	slt45 $r0,$r1
   99990:	4e f3 02 9c 	bnez $r15,99ec8 <AB_Log_HciCommandStr+0x78c>
   99994:	9c 49       	addi333 $r1,$r1,#1
   99996:	4c 00 82 a5 	beq $r0,$r1,99ee0 <AB_Log_HciCommandStr+0x7a4>
   9999a:	9c 49       	addi333 $r1,$r1,#1
   9999c:	4c 00 c5 41 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   999a0:	48 00 02 a6 	j 99eec <AB_Log_HciCommandStr+0x7b0>
   999a4:	9c 4a       	addi333 $r1,$r1,#2
   999a6:	4c 00 82 b5 	beq $r0,$r1,99f10 <AB_Log_HciCommandStr+0x7d4>
   999aa:	e2 01       	slt45 $r0,$r1
   999ac:	4e f3 02 ac 	bnez $r15,99f04 <AB_Log_HciCommandStr+0x7c8>
   999b0:	9c 49       	addi333 $r1,$r1,#1
   999b2:	4c 00 82 b5 	beq $r0,$r1,99f1c <AB_Log_HciCommandStr+0x7e0>
   999b6:	9c 49       	addi333 $r1,$r1,#1
   999b8:	4c 00 c5 33 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   999bc:	48 00 02 b6 	j 99f28 <AB_Log_HciCommandStr+0x7ec>
   999c0:	9c 4d       	addi333 $r1,$r1,#5
   999c2:	4c 00 82 d7 	beq $r0,$r1,99f70 <AB_Log_HciCommandStr+0x834>
   999c6:	5c f0 0c 22 	slti $r15,$r0,#3106
   999ca:	e8 0f       	beqzs8 999e8 <AB_Log_HciCommandStr+0x2ac>
   999cc:	9e 4b       	subi333 $r1,$r1,#3
   999ce:	4c 00 82 bf 	beq $r0,$r1,99f4c <AB_Log_HciCommandStr+0x810>
   999d2:	e2 01       	slt45 $r0,$r1
   999d4:	4e f3 02 b6 	bnez $r15,99f40 <AB_Log_HciCommandStr+0x804>
   999d8:	9c 49       	addi333 $r1,$r1,#1
   999da:	4c 00 82 bf 	beq $r0,$r1,99f58 <AB_Log_HciCommandStr+0x81c>
   999de:	9c 49       	addi333 $r1,$r1,#1
   999e0:	4c 00 c5 1f 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   999e4:	48 00 02 c0 	j 99f64 <AB_Log_HciCommandStr+0x828>
   999e8:	9c 4a       	addi333 $r1,$r1,#2
   999ea:	4c 00 82 cf 	beq $r0,$r1,99f88 <AB_Log_HciCommandStr+0x84c>
   999ee:	e2 01       	slt45 $r0,$r1
   999f0:	4e f3 02 c6 	bnez $r15,99f7c <AB_Log_HciCommandStr+0x840>
   999f4:	9c 49       	addi333 $r1,$r1,#1
   999f6:	4c 00 82 cf 	beq $r0,$r1,99f94 <AB_Log_HciCommandStr+0x858>
   999fa:	9c 49       	addi333 $r1,$r1,#1
   999fc:	4c 00 c5 11 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99a00:	48 00 02 d0 	j 99fa0 <AB_Log_HciCommandStr+0x864>
   99a04:	44 10 14 06 	movi $r1,#5126
   99a08:	4c 00 84 3a 	beq $r0,$r1,9a27c <AB_Log_HciCommandStr+0xb40>
   99a0c:	5c f0 14 07 	slti $r15,$r0,#5127
   99a10:	4e f2 00 af 	beqz $r15,99b6e <AB_Log_HciCommandStr+0x432>
   99a14:	44 10 0c 43 	movi $r1,#3139
   99a18:	4c 00 83 f0 	beq $r0,$r1,9a1f8 <AB_Log_HciCommandStr+0xabc>
   99a1c:	5c f0 0c 44 	slti $r15,$r0,#3140
   99a20:	e8 50       	beqzs8 99ac0 <AB_Log_HciCommandStr+0x384>
   99a22:	8e 32       	subi45 $r1,#18
   99a24:	4c 00 83 00 	beq $r0,$r1,9a024 <AB_Log_HciCommandStr+0x8e8>
   99a28:	5c f0 0c 32 	slti $r15,$r0,#3122
   99a2c:	e8 23       	beqzs8 99a72 <AB_Log_HciCommandStr+0x336>
   99a2e:	9e 4e       	subi333 $r1,$r1,#6
   99a30:	4c 00 82 dc 	beq $r0,$r1,99fe8 <AB_Log_HciCommandStr+0x8ac>
   99a34:	5c f0 0c 2c 	slti $r15,$r0,#3116
   99a38:	e8 0f       	beqzs8 99a56 <AB_Log_HciCommandStr+0x31a>
   99a3a:	9e 4b       	subi333 $r1,$r1,#3
   99a3c:	4c 00 82 c4 	beq $r0,$r1,99fc4 <AB_Log_HciCommandStr+0x888>
   99a40:	e2 01       	slt45 $r0,$r1
   99a42:	4e f3 02 bb 	bnez $r15,99fb8 <AB_Log_HciCommandStr+0x87c>
   99a46:	9c 49       	addi333 $r1,$r1,#1
   99a48:	4c 00 82 c4 	beq $r0,$r1,99fd0 <AB_Log_HciCommandStr+0x894>
   99a4c:	9c 49       	addi333 $r1,$r1,#1
   99a4e:	4c 00 c4 e8 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99a52:	48 00 02 c5 	j 99fdc <AB_Log_HciCommandStr+0x8a0>
   99a56:	9c 4a       	addi333 $r1,$r1,#2
   99a58:	4c 00 82 d4 	beq $r0,$r1,9a000 <AB_Log_HciCommandStr+0x8c4>
   99a5c:	e2 01       	slt45 $r0,$r1
   99a5e:	4e f3 02 cb 	bnez $r15,99ff4 <AB_Log_HciCommandStr+0x8b8>
   99a62:	9c 49       	addi333 $r1,$r1,#1
   99a64:	4c 00 82 d4 	beq $r0,$r1,9a00c <AB_Log_HciCommandStr+0x8d0>
   99a68:	9c 49       	addi333 $r1,$r1,#1
   99a6a:	4c 00 c4 da 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99a6e:	48 00 02 d5 	j 9a018 <AB_Log_HciCommandStr+0x8dc>
   99a72:	9c 4f       	addi333 $r1,$r1,#7
   99a74:	4c 00 82 f6 	beq $r0,$r1,9a060 <AB_Log_HciCommandStr+0x924>
   99a78:	5c f0 0c 39 	slti $r15,$r0,#3129
   99a7c:	e8 14       	beqzs8 99aa4 <AB_Log_HciCommandStr+0x368>
   99a7e:	9e 4b       	subi333 $r1,$r1,#3
   99a80:	4c 00 82 de 	beq $r0,$r1,9a03c <AB_Log_HciCommandStr+0x900>
   99a84:	5c f0 0c 36 	slti $r15,$r0,#3126
   99a88:	e8 06       	beqzs8 99a94 <AB_Log_HciCommandStr+0x358>
   99a8a:	9e 4a       	subi333 $r1,$r1,#2
   99a8c:	4c 00 c4 c9 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99a90:	48 00 02 d0 	j 9a030 <AB_Log_HciCommandStr+0x8f4>
   99a94:	9c 49       	addi333 $r1,$r1,#1
   99a96:	4c 00 82 d9 	beq $r0,$r1,9a048 <AB_Log_HciCommandStr+0x90c>
   99a9a:	9c 49       	addi333 $r1,$r1,#1
   99a9c:	4c 00 c4 c1 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99aa0:	48 00 02 da 	j 9a054 <AB_Log_HciCommandStr+0x918>
   99aa4:	9c 4a       	addi333 $r1,$r1,#2
   99aa6:	4c 00 82 e9 	beq $r0,$r1,9a078 <AB_Log_HciCommandStr+0x93c>
   99aaa:	e2 01       	slt45 $r0,$r1
   99aac:	4e f3 02 e0 	bnez $r15,9a06c <AB_Log_HciCommandStr+0x930>
   99ab0:	9c 4d       	addi333 $r1,$r1,#5
   99ab2:	4c 00 83 97 	beq $r0,$r1,9a1e0 <AB_Log_HciCommandStr+0xaa4>
   99ab6:	9c 4b       	addi333 $r1,$r1,#3
   99ab8:	4c 00 c4 b3 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99abc:	48 00 03 98 	j 9a1ec <AB_Log_HciCommandStr+0xab0>
   99ac0:	44 10 10 01 	movi $r1,#4097
   99ac4:	4c 00 82 e0 	beq $r0,$r1,9a084 <AB_Log_HciCommandStr+0x948>
   99ac8:	5c f0 10 02 	slti $r15,$r0,#4098
   99acc:	e8 29       	beqzs8 99b1e <AB_Log_HciCommandStr+0x3e2>
   99ace:	44 10 0c 48 	movi $r1,#3144
   99ad2:	4c 00 83 b1 	beq $r0,$r1,9a234 <AB_Log_HciCommandStr+0xaf8>
   99ad6:	5c f0 0c 49 	slti $r15,$r0,#3145
   99ada:	e8 0f       	beqzs8 99af8 <AB_Log_HciCommandStr+0x3bc>
   99adc:	9e 4b       	subi333 $r1,$r1,#3
   99ade:	4c 00 83 99 	beq $r0,$r1,9a210 <AB_Log_HciCommandStr+0xad4>
   99ae2:	e2 01       	slt45 $r0,$r1
   99ae4:	4e f3 03 90 	bnez $r15,9a204 <AB_Log_HciCommandStr+0xac8>
   99ae8:	9c 49       	addi333 $r1,$r1,#1
   99aea:	4c 00 83 99 	beq $r0,$r1,9a21c <AB_Log_HciCommandStr+0xae0>
   99aee:	9c 49       	addi333 $r1,$r1,#1
   99af0:	4c 00 c4 97 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99af4:	48 00 03 9a 	j 9a228 <AB_Log_HciCommandStr+0xaec>
   99af8:	8c 2a       	addi45 $r1,#10
   99afa:	4c 00 83 cd 	beq $r0,$r1,9a294 <AB_Log_HciCommandStr+0xb58>
   99afe:	5c f0 0c 53 	slti $r15,$r0,#3155
   99b02:	e8 06       	beqzs8 99b0e <AB_Log_HciCommandStr+0x3d2>
   99b04:	8e 29       	subi45 $r1,#9
   99b06:	4c 00 c4 8c 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99b0a:	48 00 03 9b 	j 9a240 <AB_Log_HciCommandStr+0xb04>
   99b0e:	9c 4b       	addi333 $r1,$r1,#3
   99b10:	4c 00 83 9e 	beq $r0,$r1,9a24c <AB_Log_HciCommandStr+0xb10>
   99b14:	9c 49       	addi333 $r1,$r1,#1
   99b16:	4c 00 c4 84 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99b1a:	48 00 03 9f 	j 9a258 <AB_Log_HciCommandStr+0xb1c>
   99b1e:	8c 28       	addi45 $r1,#8
   99b20:	4c 00 82 c4 	beq $r0,$r1,9a0a8 <AB_Log_HciCommandStr+0x96c>
   99b24:	5c f0 10 0a 	slti $r15,$r0,#4106
   99b28:	e8 0f       	beqzs8 99b46 <AB_Log_HciCommandStr+0x40a>
   99b2a:	9e 4e       	subi333 $r1,$r1,#6
   99b2c:	4c 00 82 b2 	beq $r0,$r1,9a090 <AB_Log_HciCommandStr+0x954>
   99b30:	e2 01       	slt45 $r0,$r1
   99b32:	4e f3 03 99 	bnez $r15,9a264 <AB_Log_HciCommandStr+0xb28>
   99b36:	9c 49       	addi333 $r1,$r1,#1
   99b38:	4c 00 83 9c 	beq $r0,$r1,9a270 <AB_Log_HciCommandStr+0xb34>
   99b3c:	9c 49       	addi333 $r1,$r1,#1
   99b3e:	4c 00 c4 70 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99b42:	48 00 02 ad 	j 9a09c <AB_Log_HciCommandStr+0x960>
   99b46:	44 10 14 02 	movi $r1,#5122
   99b4a:	4c 00 82 bb 	beq $r0,$r1,9a0c0 <AB_Log_HciCommandStr+0x984>
   99b4e:	5c f0 14 03 	slti $r15,$r0,#5123
   99b52:	e8 06       	beqzs8 99b5e <AB_Log_HciCommandStr+0x422>
   99b54:	9e 49       	subi333 $r1,$r1,#1
   99b56:	4c 00 c4 64 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99b5a:	48 00 02 ad 	j 9a0b4 <AB_Log_HciCommandStr+0x978>
   99b5e:	9c 49       	addi333 $r1,$r1,#1
   99b60:	4c 00 82 b6 	beq $r0,$r1,9a0cc <AB_Log_HciCommandStr+0x990>
   99b64:	9c 4a       	addi333 $r1,$r1,#2
   99b66:	4c 00 c4 5c 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99b6a:	48 00 02 b7 	j 9a0d8 <AB_Log_HciCommandStr+0x99c>
   99b6e:	44 10 20 10 	movi $r1,#8208
   99b72:	4c 00 83 e8 	beq $r0,$r1,9a342 <AB_Log_HciCommandStr+0xc06>
   99b76:	5c f0 20 11 	slti $r15,$r0,#8209
   99b7a:	e8 58       	beqzs8 99c2a <AB_Log_HciCommandStr+0x4ee>
   99b7c:	8e 2a       	subi45 $r1,#10
   99b7e:	4c 00 83 a9 	beq $r0,$r1,9a2d0 <AB_Log_HciCommandStr+0xb94>
   99b82:	5c f0 20 07 	slti $r15,$r0,#8199
   99b86:	e8 30       	beqzs8 99be6 <AB_Log_HciCommandStr+0x4aa>
   99b88:	44 10 18 04 	movi $r1,#6148
   99b8c:	4c 00 84 2b 	beq $r0,$r1,9a3e2 <AB_Log_HciCommandStr+0xca6>
   99b90:	5c f0 18 05 	slti $r15,$r0,#6149
   99b94:	e8 15       	beqzs8 99bbe <AB_Log_HciCommandStr+0x482>
   99b96:	9e 4b       	subi333 $r1,$r1,#3
   99b98:	4c 00 82 a6 	beq $r0,$r1,9a0e4 <AB_Log_HciCommandStr+0x9a8>
   99b9c:	5c f0 18 02 	slti $r15,$r0,#6146
   99ba0:	e8 07       	beqzs8 99bae <AB_Log_HciCommandStr+0x472>
   99ba2:	44 10 14 07 	movi $r1,#5127
   99ba6:	4c 00 c4 3c 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99baa:	48 00 03 6f 	j 9a288 <AB_Log_HciCommandStr+0xb4c>
   99bae:	9c 49       	addi333 $r1,$r1,#1
   99bb0:	4c 00 82 a0 	beq $r0,$r1,9a0f0 <AB_Log_HciCommandStr+0x9b4>
   99bb4:	9c 49       	addi333 $r1,$r1,#1
   99bb6:	4c 00 c4 34 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99bba:	48 00 02 a1 	j 9a0fc <AB_Log_HciCommandStr+0x9c0>
   99bbe:	44 10 20 02 	movi $r1,#8194
   99bc2:	4c 00 83 75 	beq $r0,$r1,9a2ac <AB_Log_HciCommandStr+0xb70>
   99bc6:	5c f0 20 03 	slti $r15,$r0,#8195
   99bca:	e8 06       	beqzs8 99bd6 <AB_Log_HciCommandStr+0x49a>
   99bcc:	9e 49       	subi333 $r1,$r1,#1
   99bce:	4c 00 c4 28 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99bd2:	48 00 03 67 	j 9a2a0 <AB_Log_HciCommandStr+0xb64>
   99bd6:	9c 49       	addi333 $r1,$r1,#1
   99bd8:	4c 00 83 70 	beq $r0,$r1,9a2b8 <AB_Log_HciCommandStr+0xb7c>
   99bdc:	9c 4a       	addi333 $r1,$r1,#2
   99bde:	4c 00 c4 20 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99be2:	48 00 03 71 	j 9a2c4 <AB_Log_HciCommandStr+0xb88>
   99be6:	9c 4d       	addi333 $r1,$r1,#5
   99be8:	4c 00 83 92 	beq $r0,$r1,9a30c <AB_Log_HciCommandStr+0xbd0>
   99bec:	5c f0 20 0c 	slti $r15,$r0,#8204
   99bf0:	e8 0f       	beqzs8 99c0e <AB_Log_HciCommandStr+0x4d2>
   99bf2:	9e 4b       	subi333 $r1,$r1,#3
   99bf4:	4c 00 83 7a 	beq $r0,$r1,9a2e8 <AB_Log_HciCommandStr+0xbac>
   99bf8:	e2 01       	slt45 $r0,$r1
   99bfa:	4e f3 03 71 	bnez $r15,9a2dc <AB_Log_HciCommandStr+0xba0>
   99bfe:	9c 49       	addi333 $r1,$r1,#1
   99c00:	4c 00 83 7a 	beq $r0,$r1,9a2f4 <AB_Log_HciCommandStr+0xbb8>
   99c04:	9c 49       	addi333 $r1,$r1,#1
   99c06:	4c 00 c4 0c 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99c0a:	48 00 03 7b 	j 9a300 <AB_Log_HciCommandStr+0xbc4>
   99c0e:	9c 4a       	addi333 $r1,$r1,#2
   99c10:	4c 00 83 8a 	beq $r0,$r1,9a324 <AB_Log_HciCommandStr+0xbe8>
   99c14:	e2 01       	slt45 $r0,$r1
   99c16:	4e f3 03 81 	bnez $r15,9a318 <AB_Log_HciCommandStr+0xbdc>
   99c1a:	9c 49       	addi333 $r1,$r1,#1
   99c1c:	4c 00 83 89 	beq $r0,$r1,9a32e <AB_Log_HciCommandStr+0xbf2>
   99c20:	9c 49       	addi333 $r1,$r1,#1
   99c22:	4c 00 c3 fe 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99c26:	48 00 03 89 	j 9a338 <AB_Log_HciCommandStr+0xbfc>
   99c2a:	8c 2a       	addi45 $r1,#10
   99c2c:	4c 00 83 bd 	beq $r0,$r1,9a3a6 <AB_Log_HciCommandStr+0xc6a>
   99c30:	5c f0 20 1b 	slti $r15,$r0,#8219
   99c34:	e8 23       	beqzs8 99c7a <AB_Log_HciCommandStr+0x53e>
   99c36:	9e 4d       	subi333 $r1,$r1,#5
   99c38:	4c 00 83 9e 	beq $r0,$r1,9a374 <AB_Log_HciCommandStr+0xc38>
   99c3c:	5c f0 20 16 	slti $r15,$r0,#8214
   99c40:	e8 0f       	beqzs8 99c5e <AB_Log_HciCommandStr+0x522>
   99c42:	9e 4b       	subi333 $r1,$r1,#3
   99c44:	4c 00 83 89 	beq $r0,$r1,9a356 <AB_Log_HciCommandStr+0xc1a>
   99c48:	e2 01       	slt45 $r0,$r1
   99c4a:	4e f3 03 81 	bnez $r15,9a34c <AB_Log_HciCommandStr+0xc10>
   99c4e:	9c 49       	addi333 $r1,$r1,#1
   99c50:	4c 00 83 88 	beq $r0,$r1,9a360 <AB_Log_HciCommandStr+0xc24>
   99c54:	9c 49       	addi333 $r1,$r1,#1
   99c56:	4c 00 c3 e4 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99c5a:	48 00 03 88 	j 9a36a <AB_Log_HciCommandStr+0xc2e>
   99c5e:	9c 4a       	addi333 $r1,$r1,#2
   99c60:	4c 00 83 94 	beq $r0,$r1,9a388 <AB_Log_HciCommandStr+0xc4c>
   99c64:	e2 01       	slt45 $r0,$r1
   99c66:	4e f3 03 8c 	bnez $r15,9a37e <AB_Log_HciCommandStr+0xc42>
   99c6a:	9c 49       	addi333 $r1,$r1,#1
   99c6c:	4c 00 83 93 	beq $r0,$r1,9a392 <AB_Log_HciCommandStr+0xc56>
   99c70:	9c 49       	addi333 $r1,$r1,#1
   99c72:	4c 00 c3 d6 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99c76:	48 00 03 93 	j 9a39c <AB_Log_HciCommandStr+0xc60>
   99c7a:	9c 4d       	addi333 $r1,$r1,#5
   99c7c:	4c 00 83 ae 	beq $r0,$r1,9a3d8 <AB_Log_HciCommandStr+0xc9c>
   99c80:	5c f0 20 20 	slti $r15,$r0,#8224
   99c84:	e8 0f       	beqzs8 99ca2 <AB_Log_HciCommandStr+0x566>
   99c86:	9e 4b       	subi333 $r1,$r1,#3
   99c88:	4c 00 83 99 	beq $r0,$r1,9a3ba <AB_Log_HciCommandStr+0xc7e>
   99c8c:	e2 01       	slt45 $r0,$r1
   99c8e:	4e f3 03 91 	bnez $r15,9a3b0 <AB_Log_HciCommandStr+0xc74>
   99c92:	9c 49       	addi333 $r1,$r1,#1
   99c94:	4c 00 83 98 	beq $r0,$r1,9a3c4 <AB_Log_HciCommandStr+0xc88>
   99c98:	9c 49       	addi333 $r1,$r1,#1
   99c9a:	4c 00 c3 c2 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99c9e:	48 00 03 98 	j 9a3ce <AB_Log_HciCommandStr+0xc92>
   99ca2:	44 10 40 00 	movi $r1,#16384
   99ca6:	4c 00 83 a8 	beq $r0,$r1,9a3f6 <AB_Log_HciCommandStr+0xcba>
   99caa:	e2 20       	slt45 $r1,$r0
   99cac:	e9 0a       	bnezs8 99cc0 <AB_Log_HciCommandStr+0x584>
   99cae:	44 10 20 25 	movi $r1,#8229
   99cb2:	4c 00 83 ac 	beq $r0,$r1,9a40a <AB_Log_HciCommandStr+0xcce>
   99cb6:	9c 49       	addi333 $r1,$r1,#1
   99cb8:	4c 00 c3 b3 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99cbc:	48 00 03 ac 	j 9a414 <AB_Log_HciCommandStr+0xcd8>
   99cc0:	9c 49       	addi333 $r1,$r1,#1
   99cc2:	4c 00 83 95 	beq $r0,$r1,9a3ec <AB_Log_HciCommandStr+0xcb0>
   99cc6:	9c 49       	addi333 $r1,$r1,#1
   99cc8:	4c 00 c3 ab 	bne $r0,$r1,9a41e <AB_Log_HciCommandStr+0xce2>
   99ccc:	48 00 03 9a 	j 9a400 <AB_Log_HciCommandStr+0xcc4>
   99cd0:	46 00 00 a0 	sethi $r0,#0xa0
   99cd4:	58 00 06 38 	ori $r0,$r0,#0x638
   99cd8:	48 00 03 a4 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99cdc:	46 00 00 a0 	sethi $r0,#0xa0
   99ce0:	58 00 06 48 	ori $r0,$r0,#0x648
   99ce4:	48 00 03 9e 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99ce8:	46 00 00 a0 	sethi $r0,#0xa0
   99cec:	58 00 06 50 	ori $r0,$r0,#0x650
   99cf0:	48 00 03 98 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99cf4:	46 00 00 a0 	sethi $r0,#0xa0
   99cf8:	58 00 06 68 	ori $r0,$r0,#0x668
   99cfc:	48 00 03 92 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d00:	46 00 00 a0 	sethi $r0,#0xa0
   99d04:	58 00 06 80 	ori $r0,$r0,#0x680
   99d08:	48 00 03 8c 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d0c:	46 00 00 a0 	sethi $r0,#0xa0
   99d10:	58 00 06 94 	ori $r0,$r0,#0x694
   99d14:	48 00 03 86 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d18:	46 00 00 a0 	sethi $r0,#0xa0
   99d1c:	58 00 06 a0 	ori $r0,$r0,#0x6a0
   99d20:	48 00 03 80 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d24:	46 00 00 a0 	sethi $r0,#0xa0
   99d28:	58 00 06 b4 	ori $r0,$r0,#0x6b4
   99d2c:	48 00 03 7a 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d30:	46 00 00 a0 	sethi $r0,#0xa0
   99d34:	58 00 06 c4 	ori $r0,$r0,#0x6c4
   99d38:	48 00 03 74 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d3c:	46 00 00 a0 	sethi $r0,#0xa0
   99d40:	58 00 06 d4 	ori $r0,$r0,#0x6d4
   99d44:	48 00 03 6e 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d48:	46 00 00 a0 	sethi $r0,#0xa0
   99d4c:	58 00 06 e8 	ori $r0,$r0,#0x6e8
   99d50:	48 00 03 68 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d54:	46 00 00 a0 	sethi $r0,#0xa0
   99d58:	58 00 07 00 	ori $r0,$r0,#0x700
   99d5c:	48 00 03 62 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d60:	46 00 00 a0 	sethi $r0,#0xa0
   99d64:	58 00 07 14 	ori $r0,$r0,#0x714
   99d68:	48 00 03 5c 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d6c:	46 00 00 a0 	sethi $r0,#0xa0
   99d70:	58 00 07 2c 	ori $r0,$r0,#0x72c
   99d74:	48 00 03 56 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d78:	46 00 00 a0 	sethi $r0,#0xa0
   99d7c:	58 00 07 44 	ori $r0,$r0,#0x744
   99d80:	48 00 03 50 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d84:	46 00 00 a0 	sethi $r0,#0xa0
   99d88:	58 00 07 50 	ori $r0,$r0,#0x750
   99d8c:	48 00 03 4a 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d90:	46 00 00 a0 	sethi $r0,#0xa0
   99d94:	58 00 07 64 	ori $r0,$r0,#0x764
   99d98:	48 00 03 44 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99d9c:	46 00 00 a0 	sethi $r0,#0xa0
   99da0:	58 00 07 78 	ori $r0,$r0,#0x778
   99da4:	48 00 03 3e 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99da8:	46 00 00 a0 	sethi $r0,#0xa0
   99dac:	58 00 07 88 	ori $r0,$r0,#0x788
   99db0:	48 00 03 38 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99db4:	46 00 00 a0 	sethi $r0,#0xa0
   99db8:	58 00 07 98 	ori $r0,$r0,#0x798
   99dbc:	48 00 03 32 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99dc0:	46 00 00 a0 	sethi $r0,#0xa0
   99dc4:	58 00 07 b0 	ori $r0,$r0,#0x7b0
   99dc8:	48 00 03 2c 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99dcc:	46 00 00 a0 	sethi $r0,#0xa0
   99dd0:	58 00 07 c4 	ori $r0,$r0,#0x7c4
   99dd4:	48 00 03 26 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99dd8:	46 00 00 a0 	sethi $r0,#0xa0
   99ddc:	58 00 07 d8 	ori $r0,$r0,#0x7d8
   99de0:	48 00 03 20 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99de4:	46 00 00 a0 	sethi $r0,#0xa0
   99de8:	58 00 07 e4 	ori $r0,$r0,#0x7e4
   99dec:	48 00 03 1a 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99df0:	46 00 00 a0 	sethi $r0,#0xa0
   99df4:	58 00 07 f0 	ori $r0,$r0,#0x7f0
   99df8:	48 00 03 14 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99dfc:	46 00 00 a0 	sethi $r0,#0xa0
   99e00:	58 00 08 00 	ori $r0,$r0,#0x800
   99e04:	48 00 03 0e 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99e08:	46 00 00 a0 	sethi $r0,#0xa0
   99e0c:	58 00 08 0c 	ori $r0,$r0,#0x80c
   99e10:	48 00 03 08 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99e14:	46 00 00 a0 	sethi $r0,#0xa0
   99e18:	58 00 08 1c 	ori $r0,$r0,#0x81c
   99e1c:	48 00 03 02 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99e20:	46 00 00 a0 	sethi $r0,#0xa0
   99e24:	58 00 08 28 	ori $r0,$r0,#0x828
   99e28:	48 00 02 fc 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99e2c:	46 00 00 a0 	sethi $r0,#0xa0
   99e30:	58 00 08 38 	ori $r0,$r0,#0x838
   99e34:	48 00 02 f6 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99e38:	46 00 00 a0 	sethi $r0,#0xa0
   99e3c:	58 00 08 44 	ori $r0,$r0,#0x844
   99e40:	48 00 02 f0 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99e44:	46 00 00 a0 	sethi $r0,#0xa0
   99e48:	58 00 08 58 	ori $r0,$r0,#0x858
   99e4c:	48 00 02 ea 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99e50:	46 00 00 a0 	sethi $r0,#0xa0
   99e54:	58 00 08 6c 	ori $r0,$r0,#0x86c
   99e58:	48 00 02 e4 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99e5c:	46 00 00 a0 	sethi $r0,#0xa0
   99e60:	58 00 08 7c 	ori $r0,$r0,#0x87c
   99e64:	48 00 02 de 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99e68:	46 00 00 a0 	sethi $r0,#0xa0
   99e6c:	58 00 08 84 	ori $r0,$r0,#0x884
   99e70:	48 00 02 d8 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99e74:	46 00 00 a0 	sethi $r0,#0xa0
   99e78:	58 00 08 94 	ori $r0,$r0,#0x894
   99e7c:	48 00 02 d2 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99e80:	46 00 00 a0 	sethi $r0,#0xa0
   99e84:	58 00 08 9c 	ori $r0,$r0,#0x89c
   99e88:	48 00 02 cc 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99e8c:	46 00 00 a0 	sethi $r0,#0xa0
   99e90:	58 00 08 ac 	ori $r0,$r0,#0x8ac
   99e94:	48 00 02 c6 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99e98:	46 00 00 a0 	sethi $r0,#0xa0
   99e9c:	58 00 08 bc 	ori $r0,$r0,#0x8bc
   99ea0:	48 00 02 c0 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99ea4:	46 00 00 a0 	sethi $r0,#0xa0
   99ea8:	58 00 08 d0 	ori $r0,$r0,#0x8d0
   99eac:	48 00 02 ba 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99eb0:	46 00 00 a0 	sethi $r0,#0xa0
   99eb4:	58 00 08 e8 	ori $r0,$r0,#0x8e8
   99eb8:	48 00 02 b4 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99ebc:	46 00 00 a0 	sethi $r0,#0xa0
   99ec0:	58 00 09 00 	ori $r0,$r0,#0x900
   99ec4:	48 00 02 ae 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99ec8:	46 00 00 a0 	sethi $r0,#0xa0
   99ecc:	58 00 09 14 	ori $r0,$r0,#0x914
   99ed0:	48 00 02 a8 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99ed4:	46 00 00 a0 	sethi $r0,#0xa0
   99ed8:	58 00 09 24 	ori $r0,$r0,#0x924
   99edc:	48 00 02 a2 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99ee0:	46 00 00 a0 	sethi $r0,#0xa0
   99ee4:	58 00 09 34 	ori $r0,$r0,#0x934
   99ee8:	48 00 02 9c 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99eec:	46 00 00 a0 	sethi $r0,#0xa0
   99ef0:	58 00 09 50 	ori $r0,$r0,#0x950
   99ef4:	48 00 02 96 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99ef8:	46 00 00 a0 	sethi $r0,#0xa0
   99efc:	58 00 09 6c 	ori $r0,$r0,#0x96c
   99f00:	48 00 02 90 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99f04:	46 00 00 a0 	sethi $r0,#0xa0
   99f08:	58 00 09 80 	ori $r0,$r0,#0x980
   99f0c:	48 00 02 8a 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99f10:	46 00 00 a0 	sethi $r0,#0xa0
   99f14:	58 00 09 94 	ori $r0,$r0,#0x994
   99f18:	48 00 02 84 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99f1c:	46 00 00 a0 	sethi $r0,#0xa0
   99f20:	58 00 09 a8 	ori $r0,$r0,#0x9a8
   99f24:	48 00 02 7e 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99f28:	46 00 00 a0 	sethi $r0,#0xa0
   99f2c:	58 00 09 bc 	ori $r0,$r0,#0x9bc
   99f30:	48 00 02 78 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99f34:	46 00 00 a0 	sethi $r0,#0xa0
   99f38:	58 00 09 d4 	ori $r0,$r0,#0x9d4
   99f3c:	48 00 02 72 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99f40:	46 00 00 a0 	sethi $r0,#0xa0
   99f44:	58 00 09 f0 	ori $r0,$r0,#0x9f0
   99f48:	48 00 02 6c 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99f4c:	46 00 00 a0 	sethi $r0,#0xa0
   99f50:	58 00 0a 08 	ori $r0,$r0,#0xa08
   99f54:	48 00 02 66 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99f58:	46 00 00 a0 	sethi $r0,#0xa0
   99f5c:	58 00 0a 20 	ori $r0,$r0,#0xa20
   99f60:	48 00 02 60 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99f64:	46 00 00 a0 	sethi $r0,#0xa0
   99f68:	58 00 0a 34 	ori $r0,$r0,#0xa34
   99f6c:	48 00 02 5a 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99f70:	46 00 00 a0 	sethi $r0,#0xa0
   99f74:	58 00 0a 48 	ori $r0,$r0,#0xa48
   99f78:	48 00 02 54 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99f7c:	46 00 00 a0 	sethi $r0,#0xa0
   99f80:	58 00 0a 5c 	ori $r0,$r0,#0xa5c
   99f84:	48 00 02 4e 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99f88:	46 00 00 a0 	sethi $r0,#0xa0
   99f8c:	58 00 0a 70 	ori $r0,$r0,#0xa70
   99f90:	48 00 02 48 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99f94:	46 00 00 a0 	sethi $r0,#0xa0
   99f98:	58 00 0a 88 	ori $r0,$r0,#0xa88
   99f9c:	48 00 02 42 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99fa0:	46 00 00 a0 	sethi $r0,#0xa0
   99fa4:	58 00 0a a0 	ori $r0,$r0,#0xaa0
   99fa8:	48 00 02 3c 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99fac:	46 00 00 a0 	sethi $r0,#0xa0
   99fb0:	58 00 0a b4 	ori $r0,$r0,#0xab4
   99fb4:	48 00 02 36 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99fb8:	46 00 00 a0 	sethi $r0,#0xa0
   99fbc:	58 00 0a c8 	ori $r0,$r0,#0xac8
   99fc0:	48 00 02 30 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99fc4:	46 00 00 a0 	sethi $r0,#0xa0
   99fc8:	58 00 0a e0 	ori $r0,$r0,#0xae0
   99fcc:	48 00 02 2a 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99fd0:	46 00 00 a0 	sethi $r0,#0xa0
   99fd4:	58 00 0a fc 	ori $r0,$r0,#0xafc
   99fd8:	48 00 02 24 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99fdc:	46 00 00 a0 	sethi $r0,#0xa0
   99fe0:	58 00 0b 14 	ori $r0,$r0,#0xb14
   99fe4:	48 00 02 1e 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99fe8:	46 00 00 a0 	sethi $r0,#0xa0
   99fec:	58 00 0b 2c 	ori $r0,$r0,#0xb2c
   99ff0:	48 00 02 18 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   99ff4:	46 00 00 a0 	sethi $r0,#0xa0
   99ff8:	58 00 0b 44 	ori $r0,$r0,#0xb44
   99ffc:	48 00 02 12 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a000:	46 00 00 a0 	sethi $r0,#0xa0
   9a004:	58 00 0b 60 	ori $r0,$r0,#0xb60
   9a008:	48 00 02 0c 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a00c:	46 00 00 a0 	sethi $r0,#0xa0
   9a010:	58 00 0b 78 	ori $r0,$r0,#0xb78
   9a014:	48 00 02 06 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a018:	46 00 00 a0 	sethi $r0,#0xa0
   9a01c:	58 00 0b 8c 	ori $r0,$r0,#0xb8c
   9a020:	48 00 02 00 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a024:	46 00 00 a0 	sethi $r0,#0xa0
   9a028:	58 00 0b a0 	ori $r0,$r0,#0xba0
   9a02c:	48 00 01 fa 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a030:	46 00 00 a0 	sethi $r0,#0xa0
   9a034:	58 00 0b bc 	ori $r0,$r0,#0xbbc
   9a038:	48 00 01 f4 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a03c:	46 00 00 a0 	sethi $r0,#0xa0
   9a040:	58 00 0b d0 	ori $r0,$r0,#0xbd0
   9a044:	48 00 01 ee 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a048:	46 00 00 a0 	sethi $r0,#0xa0
   9a04c:	58 00 0b ec 	ori $r0,$r0,#0xbec
   9a050:	48 00 01 e8 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a054:	46 00 00 a0 	sethi $r0,#0xa0
   9a058:	58 00 0c 08 	ori $r0,$r0,#0xc08
   9a05c:	48 00 01 e2 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a060:	46 00 00 a0 	sethi $r0,#0xa0
   9a064:	58 00 0c 24 	ori $r0,$r0,#0xc24
   9a068:	48 00 01 dc 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a06c:	46 00 00 a0 	sethi $r0,#0xa0
   9a070:	58 00 0c 34 	ori $r0,$r0,#0xc34
   9a074:	48 00 01 d6 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a078:	46 00 00 a0 	sethi $r0,#0xa0
   9a07c:	58 00 0c 4c 	ori $r0,$r0,#0xc4c
   9a080:	48 00 01 d0 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a084:	46 00 00 a0 	sethi $r0,#0xa0
   9a088:	58 00 0c 64 	ori $r0,$r0,#0xc64
   9a08c:	48 00 01 ca 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a090:	46 00 00 a0 	sethi $r0,#0xa0
   9a094:	58 00 0c 78 	ori $r0,$r0,#0xc78
   9a098:	48 00 01 c4 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a09c:	46 00 00 a0 	sethi $r0,#0xa0
   9a0a0:	58 00 0c 8c 	ori $r0,$r0,#0xc8c
   9a0a4:	48 00 01 be 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a0a8:	46 00 00 a0 	sethi $r0,#0xa0
   9a0ac:	58 00 0c a0 	ori $r0,$r0,#0xca0
   9a0b0:	48 00 01 b8 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a0b4:	46 00 00 a0 	sethi $r0,#0xa0
   9a0b8:	58 00 0c b0 	ori $r0,$r0,#0xcb0
   9a0bc:	48 00 01 b2 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a0c0:	46 00 00 a0 	sethi $r0,#0xa0
   9a0c4:	58 00 0c cc 	ori $r0,$r0,#0xccc
   9a0c8:	48 00 01 ac 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a0cc:	46 00 00 a0 	sethi $r0,#0xa0
   9a0d0:	58 00 0c e8 	ori $r0,$r0,#0xce8
   9a0d4:	48 00 01 a6 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a0d8:	46 00 00 a0 	sethi $r0,#0xa0
   9a0dc:	58 00 0c fc 	ori $r0,$r0,#0xcfc
   9a0e0:	48 00 01 a0 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a0e4:	46 00 00 a0 	sethi $r0,#0xa0
   9a0e8:	58 00 0d 08 	ori $r0,$r0,#0xd08
   9a0ec:	48 00 01 9a 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a0f0:	46 00 00 a0 	sethi $r0,#0xa0
   9a0f4:	58 00 0d 1c 	ori $r0,$r0,#0xd1c
   9a0f8:	48 00 01 94 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a0fc:	46 00 00 a0 	sethi $r0,#0xa0
   9a100:	58 00 0d 30 	ori $r0,$r0,#0xd30
   9a104:	48 00 01 8e 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a108:	46 00 00 a0 	sethi $r0,#0xa0
   9a10c:	58 00 0d 3c 	ori $r0,$r0,#0xd3c
   9a110:	48 00 01 88 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a114:	46 00 00 a0 	sethi $r0,#0xa0
   9a118:	58 00 0d 58 	ori $r0,$r0,#0xd58
   9a11c:	48 00 01 82 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a120:	46 00 00 a0 	sethi $r0,#0xa0
   9a124:	58 00 0d 6c 	ori $r0,$r0,#0xd6c
   9a128:	48 00 01 7c 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a12c:	46 00 00 a0 	sethi $r0,#0xa0
   9a130:	58 00 0d 88 	ori $r0,$r0,#0xd88
   9a134:	48 00 01 76 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a138:	46 00 00 a0 	sethi $r0,#0xa0
   9a13c:	58 00 0d 98 	ori $r0,$r0,#0xd98
   9a140:	48 00 01 70 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a144:	46 00 00 a0 	sethi $r0,#0xa0
   9a148:	58 00 0d b8 	ori $r0,$r0,#0xdb8
   9a14c:	48 00 01 6a 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a150:	46 00 00 a0 	sethi $r0,#0xa0
   9a154:	58 00 0d d8 	ori $r0,$r0,#0xdd8
   9a158:	48 00 01 64 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a15c:	46 00 00 a0 	sethi $r0,#0xa0
   9a160:	58 00 0d f8 	ori $r0,$r0,#0xdf8
   9a164:	48 00 01 5e 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a168:	46 00 00 a0 	sethi $r0,#0xa0
   9a16c:	58 00 0e 10 	ori $r0,$r0,#0xe10
   9a170:	48 00 01 58 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a174:	46 00 00 a0 	sethi $r0,#0xa0
   9a178:	58 00 0e 24 	ori $r0,$r0,#0xe24
   9a17c:	48 00 01 52 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a180:	46 00 00 a0 	sethi $r0,#0xa0
   9a184:	58 00 0e 40 	ori $r0,$r0,#0xe40
   9a188:	48 00 01 4c 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a18c:	46 00 00 a0 	sethi $r0,#0xa0
   9a190:	58 00 0e 58 	ori $r0,$r0,#0xe58
   9a194:	48 00 01 46 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a198:	46 00 00 a0 	sethi $r0,#0xa0
   9a19c:	58 00 0e 78 	ori $r0,$r0,#0xe78
   9a1a0:	48 00 01 40 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a1a4:	46 00 00 a0 	sethi $r0,#0xa0
   9a1a8:	58 00 0e 94 	ori $r0,$r0,#0xe94
   9a1ac:	48 00 01 3a 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a1b0:	46 00 00 a0 	sethi $r0,#0xa0
   9a1b4:	58 00 0e b8 	ori $r0,$r0,#0xeb8
   9a1b8:	48 00 01 34 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a1bc:	46 00 00 a0 	sethi $r0,#0xa0
   9a1c0:	58 00 0e d4 	ori $r0,$r0,#0xed4
   9a1c4:	48 00 01 2e 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a1c8:	46 00 00 a0 	sethi $r0,#0xa0
   9a1cc:	58 00 0e f0 	ori $r0,$r0,#0xef0
   9a1d0:	48 00 01 28 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a1d4:	46 00 00 a0 	sethi $r0,#0xa0
   9a1d8:	58 00 0f 0c 	ori $r0,$r0,#0xf0c
   9a1dc:	48 00 01 22 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a1e0:	46 00 00 a0 	sethi $r0,#0xa0
   9a1e4:	58 00 0f 20 	ori $r0,$r0,#0xf20
   9a1e8:	48 00 01 1c 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a1ec:	46 00 00 a0 	sethi $r0,#0xa0
   9a1f0:	58 00 0f 38 	ori $r0,$r0,#0xf38
   9a1f4:	48 00 01 16 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a1f8:	46 00 00 a0 	sethi $r0,#0xa0
   9a1fc:	58 00 0f 4c 	ori $r0,$r0,#0xf4c
   9a200:	48 00 01 10 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a204:	46 00 00 a0 	sethi $r0,#0xa0
   9a208:	58 00 0f 60 	ori $r0,$r0,#0xf60
   9a20c:	48 00 01 0a 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a210:	46 00 00 a0 	sethi $r0,#0xa0
   9a214:	58 00 0f 70 	ori $r0,$r0,#0xf70
   9a218:	48 00 01 04 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a21c:	46 00 00 a0 	sethi $r0,#0xa0
   9a220:	58 00 0f 80 	ori $r0,$r0,#0xf80
   9a224:	48 00 00 fe 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a228:	46 00 00 a0 	sethi $r0,#0xa0
   9a22c:	58 00 0f 94 	ori $r0,$r0,#0xf94
   9a230:	48 00 00 f8 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a234:	46 00 00 a0 	sethi $r0,#0xa0
   9a238:	58 00 0f ac 	ori $r0,$r0,#0xfac
   9a23c:	48 00 00 f2 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a240:	46 00 00 a0 	sethi $r0,#0xa0
   9a244:	58 00 0f c8 	ori $r0,$r0,#0xfc8
   9a248:	48 00 00 ec 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a24c:	46 00 00 a0 	sethi $r0,#0xa0
   9a250:	58 00 0f e4 	ori $r0,$r0,#0xfe4
   9a254:	48 00 00 e6 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a258:	46 00 00 a1 	sethi $r0,#0xa1
   9a25c:	58 00 00 00 	ori $r0,$r0,#0x0
   9a260:	48 00 00 e0 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a264:	46 00 00 a1 	sethi $r0,#0xa1
   9a268:	58 00 00 1c 	ori $r0,$r0,#0x1c
   9a26c:	48 00 00 da 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a270:	46 00 00 a1 	sethi $r0,#0xa1
   9a274:	58 00 00 30 	ori $r0,$r0,#0x30
   9a278:	48 00 00 d4 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a27c:	46 00 00 a1 	sethi $r0,#0xa1
   9a280:	58 00 00 48 	ori $r0,$r0,#0x48
   9a284:	48 00 00 ce 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a288:	46 00 00 a1 	sethi $r0,#0xa1
   9a28c:	58 00 00 60 	ori $r0,$r0,#0x60
   9a290:	48 00 00 c8 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a294:	46 00 00 a1 	sethi $r0,#0xa1
   9a298:	58 00 00 6c 	ori $r0,$r0,#0x6c
   9a29c:	48 00 00 c2 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a2a0:	46 00 00 a1 	sethi $r0,#0xa1
   9a2a4:	58 00 00 88 	ori $r0,$r0,#0x88
   9a2a8:	48 00 00 bc 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a2ac:	46 00 00 a1 	sethi $r0,#0xa1
   9a2b0:	58 00 00 9c 	ori $r0,$r0,#0x9c
   9a2b4:	48 00 00 b6 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a2b8:	46 00 00 a1 	sethi $r0,#0xa1
   9a2bc:	58 00 00 b0 	ori $r0,$r0,#0xb0
   9a2c0:	48 00 00 b0 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a2c4:	46 00 00 a1 	sethi $r0,#0xa1
   9a2c8:	58 00 00 d0 	ori $r0,$r0,#0xd0
   9a2cc:	48 00 00 aa 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a2d0:	46 00 00 a1 	sethi $r0,#0xa1
   9a2d4:	58 00 00 e8 	ori $r0,$r0,#0xe8
   9a2d8:	48 00 00 a4 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a2dc:	46 00 00 a1 	sethi $r0,#0xa1
   9a2e0:	58 00 01 08 	ori $r0,$r0,#0x108
   9a2e4:	48 00 00 9e 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a2e8:	46 00 00 a1 	sethi $r0,#0xa1
   9a2ec:	58 00 01 30 	ori $r0,$r0,#0x130
   9a2f0:	48 00 00 98 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a2f4:	46 00 00 a1 	sethi $r0,#0xa1
   9a2f8:	58 00 01 48 	ori $r0,$r0,#0x148
   9a2fc:	48 00 00 92 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a300:	46 00 00 a1 	sethi $r0,#0xa1
   9a304:	58 00 01 64 	ori $r0,$r0,#0x164
   9a308:	48 00 00 8c 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a30c:	46 00 00 a1 	sethi $r0,#0xa1
   9a310:	58 00 01 80 	ori $r0,$r0,#0x180
   9a314:	48 00 00 86 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a318:	46 00 00 a1 	sethi $r0,#0xa1
   9a31c:	58 00 01 98 	ori $r0,$r0,#0x198
   9a320:	48 00 00 80 	j 9a420 <AB_Log_HciCommandStr+0xce4>
   9a324:	46 00 00 a1 	sethi $r0,#0xa1
   9a328:	58 00 01 ac 	ori $r0,$r0,#0x1ac
   9a32c:	d5 7a       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a32e:	46 00 00 a1 	sethi $r0,#0xa1
   9a332:	58 00 01 c4 	ori $r0,$r0,#0x1c4
   9a336:	d5 75       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a338:	46 00 00 a1 	sethi $r0,#0xa1
   9a33c:	58 00 01 e0 	ori $r0,$r0,#0x1e0
   9a340:	d5 70       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a342:	46 00 00 a1 	sethi $r0,#0xa1
   9a346:	58 00 01 f8 	ori $r0,$r0,#0x1f8
   9a34a:	d5 6b       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a34c:	46 00 00 a1 	sethi $r0,#0xa1
   9a350:	58 00 02 0c 	ori $r0,$r0,#0x20c
   9a354:	d5 66       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a356:	46 00 00 a1 	sethi $r0,#0xa1
   9a35a:	58 00 02 28 	ori $r0,$r0,#0x228
   9a35e:	d5 61       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a360:	46 00 00 a1 	sethi $r0,#0xa1
   9a364:	58 00 02 4c 	ori $r0,$r0,#0x24c
   9a368:	d5 5c       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a36a:	46 00 00 a1 	sethi $r0,#0xa1
   9a36e:	58 00 02 64 	ori $r0,$r0,#0x264
   9a372:	d5 57       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a374:	46 00 00 a1 	sethi $r0,#0xa1
   9a378:	58 00 02 88 	ori $r0,$r0,#0x288
   9a37c:	d5 52       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a37e:	46 00 00 a1 	sethi $r0,#0xa1
   9a382:	58 00 02 9c 	ori $r0,$r0,#0x29c
   9a386:	d5 4d       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a388:	46 00 00 a1 	sethi $r0,#0xa1
   9a38c:	58 00 02 b8 	ori $r0,$r0,#0x2b8
   9a390:	d5 48       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a392:	46 00 00 a1 	sethi $r0,#0xa1
   9a396:	58 00 02 c4 	ori $r0,$r0,#0x2c4
   9a39a:	d5 43       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a39c:	46 00 00 a1 	sethi $r0,#0xa1
   9a3a0:	58 00 02 cc 	ori $r0,$r0,#0x2cc
   9a3a4:	d5 3e       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a3a6:	46 00 00 a1 	sethi $r0,#0xa1
   9a3aa:	58 00 02 e0 	ori $r0,$r0,#0x2e0
   9a3ae:	d5 39       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a3b0:	46 00 00 a1 	sethi $r0,#0xa1
   9a3b4:	58 00 03 00 	ori $r0,$r0,#0x300
   9a3b8:	d5 34       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a3ba:	46 00 00 a1 	sethi $r0,#0xa1
   9a3be:	58 00 03 28 	ori $r0,$r0,#0x328
   9a3c2:	d5 2f       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a3c4:	46 00 00 a1 	sethi $r0,#0xa1
   9a3c8:	58 00 03 40 	ori $r0,$r0,#0x340
   9a3cc:	d5 2a       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a3ce:	46 00 00 a1 	sethi $r0,#0xa1
   9a3d2:	58 00 03 54 	ori $r0,$r0,#0x354
   9a3d6:	d5 25       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a3d8:	46 00 00 a1 	sethi $r0,#0xa1
   9a3dc:	58 00 03 68 	ori $r0,$r0,#0x368
   9a3e0:	d5 20       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a3e2:	46 00 00 a1 	sethi $r0,#0xa1
   9a3e6:	58 00 03 74 	ori $r0,$r0,#0x374
   9a3ea:	d5 1b       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a3ec:	46 00 00 a1 	sethi $r0,#0xa1
   9a3f0:	58 00 03 80 	ori $r0,$r0,#0x380
   9a3f4:	d5 16       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a3f6:	46 00 00 a1 	sethi $r0,#0xa1
   9a3fa:	58 00 03 a0 	ori $r0,$r0,#0x3a0
   9a3fe:	d5 11       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a400:	46 00 00 a1 	sethi $r0,#0xa1
   9a404:	58 00 03 c0 	ori $r0,$r0,#0x3c0
   9a408:	d5 0c       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a40a:	46 00 00 a1 	sethi $r0,#0xa1
   9a40e:	58 00 03 e0 	ori $r0,$r0,#0x3e0
   9a412:	d5 07       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a414:	46 00 00 a1 	sethi $r0,#0xa1
   9a418:	58 00 04 0c 	ori $r0,$r0,#0x40c
   9a41c:	d5 02       	j8 9a420 <AB_Log_HciCommandStr+0xce4>
   9a41e:	84 00       	movi55 $r0,#0
   9a420:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009a422 <AB_Log_HciEventParseStr>:
   9a422:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9a424:	96 00       	zeb33 $r0,$r0
   9a426:	80 e2       	mov55 $r7,$r2
   9a428:	80 c3       	mov55 $r6,$r3
   9a42a:	5a 08 0e 31 	bnec $r0,#14,9a48c <AB_Log_HciEventParseStr+0x6a>
   9a42e:	00 81 00 02 	lbi $r8,[$r2+#0x2]
   9a432:	a6 11       	lbi333 $r0,[$r2+#0x1]
   9a434:	40 84 20 08 	slli $r8,$r8,#8
   9a438:	89 00       	add45 $r8,$r0
   9a43a:	40 04 00 13 	zeh $r0,$r8
   9a43e:	49 ff f9 7f 	jal 9973c <AB_Log_HciCommandStr>
   9a442:	80 60       	mov55 $r3,$r0
   9a444:	c0 08       	beqz38 $r0,9a454 <AB_Log_HciEventParseStr+0x32>
   9a446:	80 06       	mov55 $r0,$r6
   9a448:	46 10 00 a1 	sethi $r1,#0xa1
   9a44c:	58 10 84 2c 	ori $r1,$r1,#0x42c
   9a450:	80 43       	mov55 $r2,$r3
   9a452:	d5 07       	j8 9a460 <AB_Log_HciEventParseStr+0x3e>
   9a454:	80 06       	mov55 $r0,$r6
   9a456:	46 10 00 a1 	sethi $r1,#0xa1
   9a45a:	58 10 84 30 	ori $r1,$r1,#0x430
   9a45e:	80 48       	mov55 $r2,$r8
   9a460:	49 00 1a b2 	jal 9d9c4 <sprintf>
   9a464:	a6 3b       	lbi333 $r0,[$r7+#0x3]
   9a466:	c8 06       	bnez38 $r0,9a472 <AB_Log_HciEventParseStr+0x50>
   9a468:	46 30 00 a1 	sethi $r3,#0xa1
   9a46c:	58 31 84 4c 	ori $r3,$r3,#0x44c
   9a470:	d5 05       	j8 9a47a <AB_Log_HciEventParseStr+0x58>
   9a472:	46 30 00 a1 	sethi $r3,#0xa1
   9a476:	58 31 84 50 	ori $r3,$r3,#0x450
   9a47a:	80 06       	mov55 $r0,$r6
   9a47c:	46 10 00 a1 	sethi $r1,#0xa1
   9a480:	58 10 84 58 	ori $r1,$r1,#0x458
   9a484:	80 46       	mov55 $r2,$r6
   9a486:	49 00 1a 9f 	jal 9d9c4 <sprintf>
   9a48a:	d5 03       	j8 9a490 <AB_Log_HciEventParseStr+0x6e>
   9a48c:	84 00       	movi55 $r0,#0
   9a48e:	ae 18       	sbi333 $r0,[$r3+#0x0]
   9a490:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009a492 <HexDisplay_internal>:
   9a492:	fc 4a       	push25 $r10,#0x50    ! {$r6~$r10, $fp, $gp, $lp}
   9a494:	96 01       	zeh33 $r0,$r0
   9a496:	96 91       	zeh33 $r2,$r2
   9a498:	96 d8       	zeb33 $r3,$r3
   9a49a:	f1 81       	swi37.sp $r1,[+#0x4]
   9a49c:	f0 82       	swi37.sp $r0,[+#0x8]
   9a49e:	f3 83       	swi37.sp $r3,[+#0xc]
   9a4a0:	81 01       	mov55 $r8,$r1
   9a4a2:	41 c0 88 00 	add $fp,$r1,$r2
   9a4a6:	b1 85       	addri36.sp $r6,#0x14
   9a4a8:	48 00 00 70 	j 9a588 <HexDisplay_internal+0xf6>
   9a4ac:	3c 1d f3 f2 	lwi.gp $r1,[+#-12344]
   9a4b0:	c1 12       	beqz38 $r1,9a4d4 <HexDisplay_internal+0x42>
   9a4b2:	f2 01       	lwi37.sp $r2,[+#0x4]
   9a4b4:	40 04 24 00 	add $r0,$r8,$r9
   9a4b8:	9a 02       	sub333 $r0,$r0,$r2
   9a4ba:	96 01       	zeh33 $r0,$r0
   9a4bc:	dd 21       	jral5 $r1
   9a4be:	80 40       	mov55 $r2,$r0
   9a4c0:	5a 00 ff 0a 	beqc $r0,#255,9a4d4 <HexDisplay_internal+0x42>
   9a4c4:	80 07       	mov55 $r0,$r7
   9a4c6:	46 10 00 a1 	sethi $r1,#0xa1
   9a4ca:	58 10 84 78 	ori $r1,$r1,#0x478
   9a4ce:	49 00 1a 7b 	jal 9d9c4 <sprintf>
   9a4d2:	99 f8       	add333 $r7,$r7,$r0
   9a4d4:	40 24 24 00 	add $r2,$r8,$r9
   9a4d8:	e2 5c       	slt45 $r2,$fp
   9a4da:	e8 0b       	beqzs8 9a4f0 <HexDisplay_internal+0x5e>
   9a4dc:	a6 90       	lbi333 $r2,[$r2+#0x0]
   9a4de:	80 07       	mov55 $r0,$r7
   9a4e0:	46 10 00 a1 	sethi $r1,#0xa1
   9a4e4:	58 10 84 60 	ori $r1,$r1,#0x460
   9a4e8:	49 00 1a 6e 	jal 9d9c4 <sprintf>
   9a4ec:	99 f8       	add333 $r7,$r7,$r0
   9a4ee:	d5 09       	j8 9a500 <HexDisplay_internal+0x6e>
   9a4f0:	80 07       	mov55 $r0,$r7
   9a4f2:	46 10 00 a0 	sethi $r1,#0xa0
   9a4f6:	58 10 83 3c 	ori $r1,$r1,#0x33c
   9a4fa:	49 ff ad f7 	jal 900e8 <strcpy>
   9a4fe:	9d fb       	addi333 $r7,$r7,#3
   9a500:	8d 21       	addi45 $r9,#1
   9a502:	5a 98 04 0b 	bnec $r9,#4,9a518 <HexDisplay_internal+0x86>
   9a506:	80 07       	mov55 $r0,$r7
   9a508:	46 10 00 a1 	sethi $r1,#0xa1
   9a50c:	58 10 84 68 	ori $r1,$r1,#0x468
   9a510:	49 ff ad ec 	jal 900e8 <strcpy>
   9a514:	9d fa       	addi333 $r7,$r7,#2
   9a516:	d5 cb       	j8 9a4ac <HexDisplay_internal+0x1a>
   9a518:	e5 28       	sltsi45 $r9,#8
   9a51a:	e9 c9       	bnezs8 9a4ac <HexDisplay_internal+0x1a>
   9a51c:	80 07       	mov55 $r0,$r7
   9a51e:	46 10 00 a0 	sethi $r1,#0xa0
   9a522:	58 10 83 10 	ori $r1,$r1,#0x310
   9a526:	49 ff ad e1 	jal 900e8 <strcpy>
   9a52a:	9d fc       	addi333 $r7,$r7,#4
   9a52c:	81 48       	mov55 $r10,$r8
   9a52e:	85 20       	movi55 $r9,#0
   9a530:	e3 5c       	slt45 $r10,$fp
   9a532:	e8 17       	beqzs8 9a560 <HexDisplay_internal+0xce>
   9a534:	00 25 00 00 	lbi $r2,[$r10+#0x0]
   9a538:	50 01 7f e0 	addi $r0,$r2,#-32
   9a53c:	96 00       	zeb33 $r0,$r0
   9a53e:	5c f0 00 5f 	slti $r15,$r0,#95
   9a542:	e9 02       	bnezs8 9a546 <HexDisplay_internal+0xb4>
   9a544:	fa 5e       	movpi45 $r2,#0x2e
   9a546:	80 07       	mov55 $r0,$r7
   9a548:	46 10 00 a1 	sethi $r1,#0xa1
   9a54c:	58 10 84 6c 	ori $r1,$r1,#0x46c
   9a550:	8d 21       	addi45 $r9,#1
   9a552:	49 00 1a 39 	jal 9d9c4 <sprintf>
   9a556:	8d 41       	addi45 $r10,#1
   9a558:	5a 90 08 04 	beqc $r9,#8,9a560 <HexDisplay_internal+0xce>
   9a55c:	99 f8       	add333 $r7,$r7,$r0
   9a55e:	d5 e9       	j8 9a530 <HexDisplay_internal+0x9e>
   9a560:	f0 03       	lwi37.sp $r0,[+#0xc]
   9a562:	c0 09       	beqz38 $r0,9a574 <HexDisplay_internal+0xe2>
   9a564:	46 00 00 a1 	sethi $r0,#0xa1
   9a568:	58 00 04 70 	ori $r0,$r0,#0x470
   9a56c:	f1 02       	lwi37.sp $r1,[+#0x8]
   9a56e:	80 46       	mov55 $r2,$r6
   9a570:	84 60       	movi55 $r3,#0
   9a572:	d5 08       	j8 9a582 <HexDisplay_internal+0xf0>
   9a574:	f1 02       	lwi37.sp $r1,[+#0x8]
   9a576:	f3 03       	lwi37.sp $r3,[+#0xc]
   9a578:	46 00 00 a1 	sethi $r0,#0xa1
   9a57c:	58 00 04 70 	ori $r0,$r0,#0x470
   9a580:	80 46       	mov55 $r2,$r6
   9a582:	49 00 01 aa 	jal 9a8d6 <printf>
   9a586:	89 09       	add45 $r8,$r9
   9a588:	e3 1c       	slt45 $r8,$fp
   9a58a:	e8 05       	beqzs8 9a594 <HexDisplay_internal+0x102>
   9a58c:	80 e6       	mov55 $r7,$r6
   9a58e:	85 20       	movi55 $r9,#0
   9a590:	48 ff ff 8e 	j 9a4ac <HexDisplay_internal+0x1a>
   9a594:	fc ca       	pop25 $r10,#0x50    ! {$r6~$r10, $fp, $gp, $lp}

0009a596 <AB_Log_EvtShow>:
   9a596:	fc 47       	push25 $r10,#0x38    ! {$r6~$r10, $fp, $gp, $lp}
   9a598:	97 80       	zeb33 $r6,$r0
   9a59a:	80 06       	mov55 $r0,$r6
   9a59c:	81 02       	mov55 $r8,$r2
   9a59e:	97 c8       	zeb33 $r7,$r1
   9a5a0:	49 ff f8 bf 	jal 9971e <AB_Log_HciEventStr>
   9a5a4:	80 60       	mov55 $r3,$r0
   9a5a6:	c0 08       	beqz38 $r0,9a5b6 <AB_Log_EvtShow+0x20>
   9a5a8:	46 00 00 a1 	sethi $r0,#0xa1
   9a5ac:	58 00 04 80 	ori $r0,$r0,#0x480
   9a5b0:	fa 38       	movpi45 $r1,#0x28
   9a5b2:	fa 51       	movpi45 $r2,#0x21
   9a5b4:	d5 08       	j8 9a5c4 <AB_Log_EvtShow+0x2e>
   9a5b6:	46 00 00 a1 	sethi $r0,#0xa1
   9a5ba:	58 00 04 90 	ori $r0,$r0,#0x490
   9a5be:	fa 38       	movpi45 $r1,#0x28
   9a5c0:	fa 51       	movpi45 $r2,#0x21
   9a5c2:	80 66       	mov55 $r3,$r6
   9a5c4:	50 9f 80 04 	addi $r9,$sp,#4
   9a5c8:	49 00 01 87 	jal 9a8d6 <printf>
   9a5cc:	fd 03       	movd44 $r0,$r6
   9a5ce:	fd 14       	movd44 $r2,$r8
   9a5d0:	49 ff ff 29 	jal 9a422 <AB_Log_HciEventParseStr>
   9a5d4:	80 49       	mov55 $r2,$r9
   9a5d6:	fa 32       	movpi45 $r1,#0x22
   9a5d8:	46 00 00 a1 	sethi $r0,#0xa1
   9a5dc:	58 00 04 ac 	ori $r0,$r0,#0x4ac
   9a5e0:	49 00 01 7b 	jal 9a8d6 <printf>
   9a5e4:	84 20       	movi55 $r1,#0
   9a5e6:	46 00 00 a1 	sethi $r0,#0xa1
   9a5ea:	58 00 04 78 	ori $r0,$r0,#0x478
   9a5ee:	49 00 01 74 	jal 9a8d6 <printf>
   9a5f2:	fa 18       	movpi45 $r0,#0x28
   9a5f4:	80 28       	mov55 $r1,$r8
   9a5f6:	80 47       	mov55 $r2,$r7
   9a5f8:	84 60       	movi55 $r3,#0
   9a5fa:	49 ff ff 4c 	jal 9a492 <HexDisplay_internal>
   9a5fe:	fc c7       	pop25 $r10,#0x38    ! {$r6~$r10, $fp, $gp, $lp}

0009a600 <AB_Log_CmdShow>:
   9a600:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9a602:	97 81       	zeh33 $r6,$r0
   9a604:	97 c9       	zeh33 $r7,$r1
   9a606:	46 00 00 a1 	sethi $r0,#0xa1
   9a60a:	58 00 04 78 	ori $r0,$r0,#0x478
   9a60e:	fa 2f       	movpi45 $r1,#0x1f
   9a610:	81 02       	mov55 $r8,$r2
   9a612:	49 00 01 62 	jal 9a8d6 <printf>
   9a616:	80 06       	mov55 $r0,$r6
   9a618:	49 ff f8 92 	jal 9973c <AB_Log_HciCommandStr>
   9a61c:	80 60       	mov55 $r3,$r0
   9a61e:	c0 07       	beqz38 $r0,9a62c <AB_Log_CmdShow+0x2c>
   9a620:	46 00 00 a1 	sethi $r0,#0xa1
   9a624:	58 00 04 b8 	ori $r0,$r0,#0x4b8
   9a628:	80 23       	mov55 $r1,$r3
   9a62a:	d5 06       	j8 9a636 <AB_Log_CmdShow+0x36>
   9a62c:	46 00 00 a1 	sethi $r0,#0xa1
   9a630:	58 00 04 c0 	ori $r0,$r0,#0x4c0
   9a634:	80 26       	mov55 $r1,$r6
   9a636:	49 00 01 50 	jal 9a8d6 <printf>
   9a63a:	84 20       	movi55 $r1,#0
   9a63c:	46 00 00 a1 	sethi $r0,#0xa1
   9a640:	58 00 04 78 	ori $r0,$r0,#0x478
   9a644:	49 00 01 49 	jal 9a8d6 <printf>
   9a648:	84 00       	movi55 $r0,#0
   9a64a:	80 28       	mov55 $r1,$r8
   9a64c:	80 47       	mov55 $r2,$r7
   9a64e:	84 61       	movi55 $r3,#1
   9a650:	49 ff ff 21 	jal 9a492 <HexDisplay_internal>
   9a654:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009a656 <AB_Log_HexDisplay>:
   9a656:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9a658:	3c 3f f3 f2 	swi.gp $r3,[+#-12344]
   9a65c:	96 01       	zeh33 $r0,$r0
   9a65e:	96 91       	zeh33 $r2,$r2
   9a660:	84 61       	movi55 $r3,#1
   9a662:	49 ff ff 18 	jal 9a492 <HexDisplay_internal>
   9a666:	84 00       	movi55 $r0,#0
   9a668:	3c 0f f3 f2 	swi.gp $r0,[+#-12344]
   9a66c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009a66e <AB_Flash_ByteProgram>:
   9a66e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9a670:	46 40 00 81 	sethi $r4,#0x81
   9a674:	58 42 00 00 	ori $r4,$r4,#0x0
   9a678:	96 91       	zeh33 $r2,$r2
   9a67a:	e2 04       	slt45 $r0,$r4
   9a67c:	e9 0d       	bnezs8 9a696 <AB_Flash_ByteProgram+0x28>
   9a67e:	98 d0       	add333 $r3,$r2,$r0
   9a680:	46 40 00 85 	sethi $r4,#0x85
   9a684:	58 42 00 00 	ori $r4,$r4,#0x0
   9a688:	e2 83       	slt45 $r4,$r3
   9a68a:	e9 06       	bnezs8 9a696 <AB_Flash_ByteProgram+0x28>
   9a68c:	49 00 08 a8 	jal 9b7dc <DRV_Flash_ByteProgram>
   9a690:	5c 00 00 01 	slti $r0,$r0,#1
   9a694:	d5 02       	j8 9a698 <AB_Flash_ByteProgram+0x2a>
   9a696:	84 00       	movi55 $r0,#0
   9a698:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009a69a <AB_Flash_SectorErase>:
   9a69a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9a69c:	46 20 00 81 	sethi $r2,#0x81
   9a6a0:	58 21 00 00 	ori $r2,$r2,#0x0
   9a6a4:	e2 02       	slt45 $r0,$r2
   9a6a6:	e9 0b       	bnezs8 9a6bc <AB_Flash_SectorErase+0x22>
   9a6a8:	46 20 00 85 	sethi $r2,#0x85
   9a6ac:	58 21 00 00 	ori $r2,$r2,#0x0
   9a6b0:	e2 40       	slt45 $r2,$r0
   9a6b2:	e9 05       	bnezs8 9a6bc <AB_Flash_SectorErase+0x22>
   9a6b4:	49 00 0a 2f 	jal 9bb12 <DRV_Flash_SectorErase>
   9a6b8:	84 01       	movi55 $r0,#1
   9a6ba:	d5 02       	j8 9a6be <AB_Flash_SectorErase+0x24>
   9a6bc:	84 00       	movi55 $r0,#0
   9a6be:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009a6c0 <_sbrk>:
   9a6c0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9a6c2:	3c 1d f1 a6 	lwi.gp $r1,[+#-14696]
   9a6c6:	46 30 01 07 	sethi $r3,#0x107
   9a6ca:	58 31 80 00 	ori $r3,$r3,#0x0
   9a6ce:	98 01       	add333 $r0,$r0,$r1
   9a6d0:	92 6c       	srli45 $r3,#12
   9a6d2:	40 31 b0 08 	slli $r3,$r3,#12
   9a6d6:	e2 03       	slt45 $r0,$r3
   9a6d8:	e8 03       	beqzs8 9a6de <_sbrk+0x1e>
   9a6da:	3c 0f f1 a6 	swi.gp $r0,[+#-14696]
   9a6de:	80 01       	mov55 $r0,$r1
   9a6e0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009a6e2 <free>:
   9a6e2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9a6e4:	80 20       	mov55 $r1,$r0
   9a6e6:	64 42 00 02 	mfsr $r4,$PSW
   9a6ea:	64 02 00 43 	setgie.d
   9a6ee:	64 00 00 08 	dsb
   9a6f2:	46 30 01 00 	sethi $r3,#0x100
   9a6f6:	58 31 80 b0 	ori $r3,$r3,#0xb0
   9a6fa:	b4 43       	lwi450 $r2,[$r3]
   9a6fc:	9c 11       	addi333 $r0,$r2,#1
   9a6fe:	b6 03       	swi450 $r0,[$r3]
   9a700:	ca 06       	bnez38 $r2,9a70c <free+0x2a>
   9a702:	46 00 01 00 	sethi $r0,#0x100
   9a706:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9a70a:	b6 80       	swi450 $r4,[$r0]
   9a70c:	84 00       	movi55 $r0,#0
   9a70e:	49 00 16 3f 	jal 9d38c <_free_r>
   9a712:	46 00 01 00 	sethi $r0,#0x100
   9a716:	58 00 00 b0 	ori $r0,$r0,#0xb0
   9a71a:	b4 20       	lwi450 $r1,[$r0]
   9a71c:	9e 49       	subi333 $r1,$r1,#1
   9a71e:	b6 20       	swi450 $r1,[$r0]
   9a720:	b4 00       	lwi450 $r0,[$r0]
   9a722:	c8 0c       	bnez38 $r0,9a73a <free+0x58>
   9a724:	46 00 01 00 	sethi $r0,#0x100
   9a728:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9a72c:	b4 00       	lwi450 $r0,[$r0]
   9a72e:	96 04       	xlsb33 $r0,$r0
   9a730:	c0 05       	beqz38 $r0,9a73a <free+0x58>
   9a732:	64 12 00 43 	setgie.e
   9a736:	64 00 00 08 	dsb
   9a73a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009a73c <ab_malloc_info_printf>:
   9a73c:	fc 05       	push25 $r6,#0x28    ! {$r6, $fp, $gp, $lp}
   9a73e:	80 1f       	mov55 $r0,$sp
   9a740:	49 00 19 08 	jal 9d950 <mallinfo>
   9a744:	b4 3f       	lwi450 $r1,[$sp]
   9a746:	46 00 00 a1 	sethi $r0,#0xa1
   9a74a:	58 00 0e 18 	ori $r0,$r0,#0xe18
   9a74e:	49 00 01 04 	jal 9a956 <Ab_printf_blocking>
   9a752:	f1 01       	lwi37.sp $r1,[+#0x4]
   9a754:	46 00 00 a1 	sethi $r0,#0xa1
   9a758:	58 00 0e 44 	ori $r0,$r0,#0xe44
   9a75c:	49 00 00 fd 	jal 9a956 <Ab_printf_blocking>
   9a760:	f1 02       	lwi37.sp $r1,[+#0x8]
   9a762:	46 00 00 a1 	sethi $r0,#0xa1
   9a766:	58 00 0e 70 	ori $r0,$r0,#0xe70
   9a76a:	49 00 00 f6 	jal 9a956 <Ab_printf_blocking>
   9a76e:	f1 03       	lwi37.sp $r1,[+#0xc]
   9a770:	46 00 00 a1 	sethi $r0,#0xa1
   9a774:	58 00 0e 9c 	ori $r0,$r0,#0xe9c
   9a778:	49 00 00 ef 	jal 9a956 <Ab_printf_blocking>
   9a77c:	f1 04       	lwi37.sp $r1,[+#0x10]
   9a77e:	46 00 00 a1 	sethi $r0,#0xa1
   9a782:	58 00 0e c8 	ori $r0,$r0,#0xec8
   9a786:	49 00 00 e8 	jal 9a956 <Ab_printf_blocking>
   9a78a:	f1 05       	lwi37.sp $r1,[+#0x14]
   9a78c:	46 00 00 a1 	sethi $r0,#0xa1
   9a790:	58 00 0e f4 	ori $r0,$r0,#0xef4
   9a794:	49 00 00 e1 	jal 9a956 <Ab_printf_blocking>
   9a798:	f1 06       	lwi37.sp $r1,[+#0x18]
   9a79a:	46 00 00 a1 	sethi $r0,#0xa1
   9a79e:	58 00 0f 20 	ori $r0,$r0,#0xf20
   9a7a2:	49 00 00 da 	jal 9a956 <Ab_printf_blocking>
   9a7a6:	f1 07       	lwi37.sp $r1,[+#0x1c]
   9a7a8:	46 00 00 a1 	sethi $r0,#0xa1
   9a7ac:	58 00 0f 4c 	ori $r0,$r0,#0xf4c
   9a7b0:	49 00 00 d3 	jal 9a956 <Ab_printf_blocking>
   9a7b4:	f1 08       	lwi37.sp $r1,[+#0x20]
   9a7b6:	46 00 00 a1 	sethi $r0,#0xa1
   9a7ba:	58 00 0f 78 	ori $r0,$r0,#0xf78
   9a7be:	49 00 00 cc 	jal 9a956 <Ab_printf_blocking>
   9a7c2:	f1 09       	lwi37.sp $r1,[+#0x24]
   9a7c4:	46 00 00 a1 	sethi $r0,#0xa1
   9a7c8:	58 00 0f a4 	ori $r0,$r0,#0xfa4
   9a7cc:	80 df       	mov55 $r6,$sp
   9a7ce:	49 00 00 c4 	jal 9a956 <Ab_printf_blocking>
   9a7d2:	fc 85       	pop25 $r6,#0x28    ! {$r6, $fp, $gp, $lp}

0009a7d4 <malloc>:
   9a7d4:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9a7d6:	80 e0       	mov55 $r7,$r0
   9a7d8:	81 1e       	mov55 $r8,$lp
   9a7da:	64 22 00 02 	mfsr $r2,$PSW
   9a7de:	64 02 00 43 	setgie.d
   9a7e2:	64 00 00 08 	dsb
   9a7e6:	46 10 01 00 	sethi $r1,#0x100
   9a7ea:	58 10 80 b0 	ori $r1,$r1,#0xb0
   9a7ee:	b4 01       	lwi450 $r0,[$r1]
   9a7f0:	9c c1       	addi333 $r3,$r0,#1
   9a7f2:	b6 61       	swi450 $r3,[$r1]
   9a7f4:	c8 06       	bnez38 $r0,9a800 <malloc+0x2c>
   9a7f6:	46 00 01 00 	sethi $r0,#0x100
   9a7fa:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9a7fe:	b6 40       	swi450 $r2,[$r0]
   9a800:	84 00       	movi55 $r0,#0
   9a802:	80 27       	mov55 $r1,$r7
   9a804:	49 00 16 81 	jal 9d506 <_malloc_r>
   9a808:	46 30 01 00 	sethi $r3,#0x100
   9a80c:	58 31 80 b0 	ori $r3,$r3,#0xb0
   9a810:	80 c0       	mov55 $r6,$r0
   9a812:	b4 03       	lwi450 $r0,[$r3]
   9a814:	9e 01       	subi333 $r0,$r0,#1
   9a816:	b6 03       	swi450 $r0,[$r3]
   9a818:	b4 03       	lwi450 $r0,[$r3]
   9a81a:	c8 0c       	bnez38 $r0,9a832 <malloc+0x5e>
   9a81c:	46 00 01 00 	sethi $r0,#0x100
   9a820:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9a824:	b4 00       	lwi450 $r0,[$r0]
   9a826:	96 04       	xlsb33 $r0,$r0
   9a828:	c0 05       	beqz38 $r0,9a832 <malloc+0x5e>
   9a82a:	64 12 00 43 	setgie.e
   9a82e:	64 00 00 08 	dsb
   9a832:	ce 0b       	bnez38 $r6,9a848 <malloc+0x74>
   9a834:	49 ff ff 84 	jal 9a73c <ab_malloc_info_printf>
   9a838:	46 00 00 a1 	sethi $r0,#0xa1
   9a83c:	58 00 0f d0 	ori $r0,$r0,#0xfd0
   9a840:	80 27       	mov55 $r1,$r7
   9a842:	80 48       	mov55 $r2,$r8
   9a844:	49 00 00 89 	jal 9a956 <Ab_printf_blocking>
   9a848:	80 06       	mov55 $r0,$r6
   9a84a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009a84c <ab_modue_enum>:
   9a84c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9a84e:	c8 05       	bnez38 $r0,9a858 <ab_modue_enum+0xc>
   9a850:	46 00 00 90 	sethi $r0,#0x90
   9a854:	58 00 00 20 	ori $r0,$r0,#0x20
   9a858:	9c 04       	addi333 $r0,$r0,#4
   9a85a:	46 10 00 90 	sethi $r1,#0x90
   9a85e:	58 10 80 2c 	ori $r1,$r1,#0x2c
   9a862:	4c 00 c0 03 	bne $r0,$r1,9a868 <ab_modue_enum+0x1c>
   9a866:	84 00       	movi55 $r0,#0
   9a868:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009a86a <AB_module_count>:
   9a86a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9a86c:	81 00       	mov55 $r8,$r0
   9a86e:	c0 04       	beqz38 $r0,9a876 <AB_module_count+0xc>
   9a870:	84 c0       	movi55 $r6,#0
   9a872:	80 e6       	mov55 $r7,$r6
   9a874:	d5 14       	j8 9a89c <AB_module_count+0x32>
   9a876:	46 70 00 90 	sethi $r7,#0x90
   9a87a:	58 73 80 20 	ori $r7,$r7,#0x20
   9a87e:	46 00 00 90 	sethi $r0,#0x90
   9a882:	58 00 00 2c 	ori $r0,$r0,#0x2c
   9a886:	9b c7       	sub333 $r7,$r0,$r7
   9a888:	90 e2       	srai45 $r7,#2
   9a88a:	9f f9       	subi333 $r7,$r7,#1
   9a88c:	d5 0d       	j8 9a8a6 <AB_module_count+0x3c>
   9a88e:	b4 06       	lwi450 $r0,[$r6]
   9a890:	80 28       	mov55 $r1,$r8
   9a892:	b4 00       	lwi450 $r0,[$r0]
   9a894:	49 ff ac 02 	jal 90098 <strcmp>
   9a898:	c8 02       	bnez38 $r0,9a89c <AB_module_count+0x32>
   9a89a:	9d f9       	addi333 $r7,$r7,#1
   9a89c:	80 06       	mov55 $r0,$r6
   9a89e:	49 ff ff d7 	jal 9a84c <ab_modue_enum>
   9a8a2:	80 c0       	mov55 $r6,$r0
   9a8a4:	c8 f5       	bnez38 $r0,9a88e <AB_module_count+0x24>
   9a8a6:	80 07       	mov55 $r0,$r7
   9a8a8:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009a8aa <AB_module_get>:
   9a8aa:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9a8ac:	80 c0       	mov55 $r6,$r0
   9a8ae:	84 00       	movi55 $r0,#0
   9a8b0:	49 ff ff dd 	jal 9a86a <AB_module_count>
   9a8b4:	e2 c0       	slt45 $r6,$r0
   9a8b6:	e9 03       	bnezs8 9a8bc <AB_module_get+0x12>
   9a8b8:	84 00       	movi55 $r0,#0
   9a8ba:	d5 09       	j8 9a8cc <AB_module_get+0x22>
   9a8bc:	9d b1       	addi333 $r6,$r6,#1
   9a8be:	46 00 00 90 	sethi $r0,#0x90
   9a8c2:	58 00 00 20 	ori $r0,$r0,#0x20
   9a8c6:	95 b2       	slli333 $r6,$r6,#2
   9a8c8:	99 b0       	add333 $r6,$r6,$r0
   9a8ca:	b4 06       	lwi450 $r0,[$r6]
   9a8cc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009a8ce <Ab_printf_init>:
   9a8ce:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9a8d0:	3e 07 c6 c4 	sbi.gp $r0,[+#-14652]
   9a8d4:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009a8d6 <printf>:
   9a8d6:	3a 1f 94 3c 	smw.adm $r1,[$sp],$r5,#0x0    ! {$r1~$r5}
   9a8da:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9a8dc:	ef f4       	addi10.sp #-12
   9a8de:	64 32 00 02 	mfsr $r3,$PSW
   9a8e2:	64 02 00 43 	setgie.d
   9a8e6:	64 00 00 08 	dsb
   9a8ea:	46 20 01 00 	sethi $r2,#0x100
   9a8ee:	58 21 00 b0 	ori $r2,$r2,#0xb0
   9a8f2:	b4 22       	lwi450 $r1,[$r2]
   9a8f4:	9d 09       	addi333 $r4,$r1,#1
   9a8f6:	b6 82       	swi450 $r4,[$r2]
   9a8f8:	c9 06       	bnez38 $r1,9a904 <printf+0x2e>
   9a8fa:	46 10 01 00 	sethi $r1,#0x100
   9a8fe:	58 10 80 bc 	ori $r1,$r1,#0xbc
   9a902:	b6 61       	swi450 $r3,[$r1]
   9a904:	b0 47       	addri36.sp $r1,#0x1c
   9a906:	f1 81       	swi37.sp $r1,[+#0x4]
   9a908:	49 00 18 6a 	jal 9d9dc <vprintf>
   9a90c:	46 10 01 00 	sethi $r1,#0x100
   9a910:	58 10 80 b0 	ori $r1,$r1,#0xb0
   9a914:	b4 41       	lwi450 $r2,[$r1]
   9a916:	9e 91       	subi333 $r2,$r2,#1
   9a918:	b6 41       	swi450 $r2,[$r1]
   9a91a:	b4 21       	lwi450 $r1,[$r1]
   9a91c:	c9 0c       	bnez38 $r1,9a934 <printf+0x5e>
   9a91e:	46 10 01 00 	sethi $r1,#0x100
   9a922:	58 10 80 bc 	ori $r1,$r1,#0xbc
   9a926:	b4 21       	lwi450 $r1,[$r1]
   9a928:	96 4c       	xlsb33 $r1,$r1
   9a92a:	c1 05       	beqz38 $r1,9a934 <printf+0x5e>
   9a92c:	64 12 00 43 	setgie.e
   9a930:	64 00 00 08 	dsb
   9a934:	ec 0c       	addi10.sp #12
   9a936:	3a 6f 9b 84 	lmw.bim $r6,[$sp],$r6,#0xe    ! {$r6, $fp, $gp, $lp}
   9a93a:	ec 14       	addi10.sp #20
   9a93c:	dd 9e       	ret5 $lp

0009a93e <nds_write>:
   9a93e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9a940:	80 60       	mov55 $r3,$r0
   9a942:	2e 07 c6 c4 	lbi.gp $r0,[+#-14652]
   9a946:	80 41       	mov55 $r2,$r1
   9a948:	e6 02       	slti45 $r0,#2
   9a94a:	e8 05       	beqzs8 9a954 <nds_write+0x16>
   9a94c:	80 23       	mov55 $r1,$r3
   9a94e:	96 91       	zeh33 $r2,$r2
   9a950:	49 ff ae 74 	jal 90638 <AB_UART_Write>
   9a954:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009a956 <Ab_printf_blocking>:
   9a956:	3a 1f 94 3c 	smw.adm $r1,[$sp],$r5,#0x0    ! {$r1~$r5}
   9a95a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9a95c:	ef 74       	addi10.sp #-140
   9a95e:	80 20       	mov55 $r1,$r0
   9a960:	3e 0f c6 c4 	addi.gp $r0,#-14652
   9a964:	a6 00       	lbi333 $r0,[$r0+#0x0]
   9a966:	e6 02       	slti45 $r0,#2
   9a968:	e8 3b       	beqzs8 9a9de <Ab_printf_blocking+0x88>
   9a96a:	b0 27       	addri36.sp $r0,#0x9c
   9a96c:	f0 a1       	swi37.sp $r0,[+#0x84]
   9a96e:	b0 a7       	addri36.sp $r2,#0x9c
   9a970:	b0 01       	addri36.sp $r0,#0x4
   9a972:	49 00 18 6e 	jal 9da4e <vsprintf>
   9a976:	64 22 00 02 	mfsr $r2,$PSW
   9a97a:	64 02 00 43 	setgie.d
   9a97e:	64 00 00 08 	dsb
   9a982:	46 10 01 00 	sethi $r1,#0x100
   9a986:	58 10 80 b0 	ori $r1,$r1,#0xb0
   9a98a:	b4 01       	lwi450 $r0,[$r1]
   9a98c:	9c c1       	addi333 $r3,$r0,#1
   9a98e:	b6 61       	swi450 $r3,[$r1]
   9a990:	c8 06       	bnez38 $r0,9a99c <Ab_printf_blocking+0x46>
   9a992:	46 00 01 00 	sethi $r0,#0x100
   9a996:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9a99a:	b6 40       	swi450 $r2,[$r0]
   9a99c:	3e 0f c6 c4 	addi.gp $r0,#-14652
   9a9a0:	a6 00       	lbi333 $r0,[$r0+#0x0]
   9a9a2:	b1 81       	addri36.sp $r6,#0x4
   9a9a4:	49 ff ae 9e 	jal 906e0 <AB_UART_Flush>
   9a9a8:	80 06       	mov55 $r0,$r6
   9a9aa:	49 ff ab a7 	jal 900f8 <strlen>
   9a9ae:	9c 41       	addi333 $r1,$r0,#1
   9a9b0:	80 06       	mov55 $r0,$r6
   9a9b2:	49 ff ff c6 	jal 9a93e <nds_write>
   9a9b6:	46 00 01 00 	sethi $r0,#0x100
   9a9ba:	58 00 00 b0 	ori $r0,$r0,#0xb0
   9a9be:	b4 20       	lwi450 $r1,[$r0]
   9a9c0:	9e 49       	subi333 $r1,$r1,#1
   9a9c2:	b6 20       	swi450 $r1,[$r0]
   9a9c4:	b4 00       	lwi450 $r0,[$r0]
   9a9c6:	c8 0c       	bnez38 $r0,9a9de <Ab_printf_blocking+0x88>
   9a9c8:	46 00 01 00 	sethi $r0,#0x100
   9a9cc:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9a9d0:	b4 00       	lwi450 $r0,[$r0]
   9a9d2:	96 04       	xlsb33 $r0,$r0
   9a9d4:	c0 05       	beqz38 $r0,9a9de <Ab_printf_blocking+0x88>
   9a9d6:	64 12 00 43 	setgie.e
   9a9da:	64 00 00 08 	dsb
   9a9de:	ec 8c       	addi10.sp #140
   9a9e0:	3a 6f 9b 84 	lmw.bim $r6,[$sp],$r6,#0xe    ! {$r6, $fp, $gp, $lp}
   9a9e4:	ec 14       	addi10.sp #20
   9a9e6:	dd 9e       	ret5 $lp

0009a9e8 <AB_PWR_GetWakeLock>:
   9a9e8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9a9ea:	3c 3d f1 a7 	lwi.gp $r3,[+#-14692]
   9a9ee:	84 20       	movi55 $r1,#0
   9a9f0:	84 81       	movi55 $r4,#1
   9a9f2:	40 02 04 0c 	sll $r0,$r4,$r1
   9a9f6:	40 20 0c 02 	and $r2,$r0,$r3
   9a9fa:	c2 06       	beqz38 $r2,9aa06 <AB_PWR_GetWakeLock+0x1e>
   9a9fc:	fe 43       	not33 $r1,$r0
   9a9fe:	fe ce       	and33 $r3,$r1
   9aa00:	3c 3f f1 a7 	swi.gp $r3,[+#-14692]
   9aa04:	d5 05       	j8 9aa0e <AB_PWR_GetWakeLock+0x26>
   9aa06:	9c 49       	addi333 $r1,$r1,#1
   9aa08:	5a 18 20 f5 	bnec $r1,#32,9a9f2 <AB_PWR_GetWakeLock+0xa>
   9aa0c:	80 02       	mov55 $r0,$r2
   9aa0e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009aa10 <AB_PWR_WakeLocked>:
   9aa10:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aa12:	46 10 01 00 	sethi $r1,#0x100
   9aa16:	3c 2d f3 f3 	lwi.gp $r2,[+#-12340]
   9aa1a:	fe 17       	or33 $r0,$r2
   9aa1c:	3c 0f f3 f3 	swi.gp $r0,[+#-12340]
   9aa20:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009aa22 <AB_PWR_WakeUnlocked>:
   9aa22:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aa24:	46 10 01 00 	sethi $r1,#0x100
   9aa28:	3c 2d f3 f3 	lwi.gp $r2,[+#-12340]
   9aa2c:	fe 03       	not33 $r0,$r0
   9aa2e:	fe 16       	and33 $r0,$r2
   9aa30:	3c 0f f3 f3 	swi.gp $r0,[+#-12340]
   9aa34:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009aa36 <AB_PWR_ReturnWakeLock>:
   9aa36:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aa38:	46 10 01 00 	sethi $r1,#0x100
   9aa3c:	3c 2d f1 a7 	lwi.gp $r2,[+#-14692]
   9aa40:	fe 87       	or33 $r2,$r0
   9aa42:	3c 2f f1 a7 	swi.gp $r2,[+#-14692]
   9aa46:	49 ff ff ee 	jal 9aa22 <AB_PWR_WakeUnlocked>
   9aa4a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009aa4c <AB_PWR_Rst>:
   9aa4c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aa4e:	84 04       	movi55 $r0,#4
   9aa50:	49 00 0a 77 	jal 9bf3e <DRV_Pwr_EnterMode>
   9aa54:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009aa56 <AB_queue_push>:
   9aa56:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aa58:	46 21 97 60 	sethi $r2,#0x19760
   9aa5c:	a0 c2       	lwi333 $r3,[$r0+#0x8]
   9aa5e:	58 21 01 08 	ori $r2,$r2,#0x108
   9aa62:	4c 31 40 13 	bne $r3,$r2,9aa88 <AB_queue_push+0x32>
   9aa66:	46 22 01 11 	sethi $r2,#0x20111
   9aa6a:	04 30 ff ff 	lwi $r3,[$r1+#-0x4]
   9aa6e:	58 21 01 18 	ori $r2,$r2,#0x118
   9aa72:	4c 31 40 0b 	bne $r3,$r2,9aa88 <AB_queue_push+0x32>
   9aa76:	8e 28       	subi45 $r1,#8
   9aa78:	84 40       	movi55 $r2,#0
   9aa7a:	b6 41       	swi450 $r2,[$r1]
   9aa7c:	a0 81       	lwi333 $r2,[$r0+#0x4]
   9aa7e:	a8 41       	swi333 $r1,[$r0+#0x4]
   9aa80:	b6 22       	swi450 $r1,[$r2]
   9aa82:	a0 43       	lwi333 $r1,[$r0+#0xc]
   9aa84:	9c 49       	addi333 $r1,$r1,#1
   9aa86:	a8 43       	swi333 $r1,[$r0+#0xc]
   9aa88:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009aa8a <AB_queue_push_front>:
   9aa8a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aa8c:	46 21 97 60 	sethi $r2,#0x19760
   9aa90:	a0 c2       	lwi333 $r3,[$r0+#0x8]
   9aa92:	58 21 01 08 	ori $r2,$r2,#0x108
   9aa96:	4c 31 40 13 	bne $r3,$r2,9aabc <AB_queue_push_front+0x32>
   9aa9a:	46 22 01 11 	sethi $r2,#0x20111
   9aa9e:	04 30 ff ff 	lwi $r3,[$r1+#-0x4]
   9aaa2:	58 21 01 18 	ori $r2,$r2,#0x118
   9aaa6:	4c 31 40 0b 	bne $r3,$r2,9aabc <AB_queue_push_front+0x32>
   9aaaa:	b4 40       	lwi450 $r2,[$r0]
   9aaac:	8e 28       	subi45 $r1,#8
   9aaae:	b6 41       	swi450 $r2,[$r1]
   9aab0:	ca 02       	bnez38 $r2,9aab4 <AB_queue_push_front+0x2a>
   9aab2:	a8 41       	swi333 $r1,[$r0+#0x4]
   9aab4:	b6 20       	swi450 $r1,[$r0]
   9aab6:	a0 43       	lwi333 $r1,[$r0+#0xc]
   9aab8:	9c 49       	addi333 $r1,$r1,#1
   9aaba:	a8 43       	swi333 $r1,[$r0+#0xc]
   9aabc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009aabe <AB_queue_pop>:
   9aabe:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aac0:	80 20       	mov55 $r1,$r0
   9aac2:	b4 00       	lwi450 $r0,[$r0]
   9aac4:	c0 09       	beqz38 $r0,9aad6 <AB_queue_pop+0x18>
   9aac6:	b4 40       	lwi450 $r2,[$r0]
   9aac8:	b6 41       	swi450 $r2,[$r1]
   9aaca:	ca 02       	bnez38 $r2,9aace <AB_queue_pop+0x10>
   9aacc:	a8 49       	swi333 $r1,[$r1+#0x4]
   9aace:	a0 8b       	lwi333 $r2,[$r1+#0xc]
   9aad0:	8c 08       	addi45 $r0,#8
   9aad2:	9e 91       	subi333 $r2,$r2,#1
   9aad4:	a8 8b       	swi333 $r2,[$r1+#0xc]
   9aad6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009aad8 <AB_queue_count>:
   9aad8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aada:	46 11 97 60 	sethi $r1,#0x19760
   9aade:	a0 82       	lwi333 $r2,[$r0+#0x8]
   9aae0:	58 10 81 08 	ori $r1,$r1,#0x108
   9aae4:	4c 20 80 04 	beq $r2,$r1,9aaec <AB_queue_count+0x14>
   9aae8:	84 00       	movi55 $r0,#0
   9aaea:	d5 02       	j8 9aaee <AB_queue_count+0x16>
   9aaec:	a0 03       	lwi333 $r0,[$r0+#0xc]
   9aaee:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009aaf0 <AB_queue_entry_free>:
   9aaf0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aaf2:	46 12 01 11 	sethi $r1,#0x20111
   9aaf6:	04 20 7f ff 	lwi $r2,[$r0+#-0x4]
   9aafa:	58 10 81 18 	ori $r1,$r1,#0x118
   9aafe:	4c 20 c0 05 	bne $r2,$r1,9ab08 <AB_queue_entry_free+0x18>
   9ab02:	8e 08       	subi45 $r0,#8
   9ab04:	49 ff fd ef 	jal 9a6e2 <free>
   9ab08:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009ab0a <AB_queue_free>:
   9ab0a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9ab0c:	80 c0       	mov55 $r6,$r0
   9ab0e:	d5 03       	j8 9ab14 <AB_queue_free+0xa>
   9ab10:	49 ff ff f0 	jal 9aaf0 <AB_queue_entry_free>
   9ab14:	80 06       	mov55 $r0,$r6
   9ab16:	49 ff ff d4 	jal 9aabe <AB_queue_pop>
   9ab1a:	c8 fb       	bnez38 $r0,9ab10 <AB_queue_free+0x6>
   9ab1c:	80 06       	mov55 $r0,$r6
   9ab1e:	49 ff fd e2 	jal 9a6e2 <free>
   9ab22:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009ab24 <AB_queue_entry_alloc>:
   9ab24:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9ab26:	8c 0c       	addi45 $r0,#12
   9ab28:	49 ff fe 56 	jal 9a7d4 <malloc>
   9ab2c:	c0 07       	beqz38 $r0,9ab3a <AB_queue_entry_alloc+0x16>
   9ab2e:	46 12 01 11 	sethi $r1,#0x20111
   9ab32:	58 10 81 18 	ori $r1,$r1,#0x118
   9ab36:	a8 41       	swi333 $r1,[$r0+#0x4]
   9ab38:	8c 08       	addi45 $r0,#8
   9ab3a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009ab3c <AB_queue_alloc>:
   9ab3c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9ab3e:	fa 00       	movpi45 $r0,#0x10
   9ab40:	49 ff fe 4a 	jal 9a7d4 <malloc>
   9ab44:	46 21 97 60 	sethi $r2,#0x19760
   9ab48:	58 21 01 08 	ori $r2,$r2,#0x108
   9ab4c:	80 20       	mov55 $r1,$r0
   9ab4e:	a8 82       	swi333 $r2,[$r0+#0x8]
   9ab50:	84 40       	movi55 $r2,#0
   9ab52:	a8 83       	swi333 $r2,[$r0+#0xc]
   9ab54:	b6 40       	swi450 $r2,[$r0]
   9ab56:	a8 09       	swi333 $r0,[$r1+#0x4]
   9ab58:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009ab5a <AB_SECTOR_GetMpParameter>:
   9ab5a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9ab5c:	46 10 00 81 	sethi $r1,#0x81
   9ab60:	a4 88       	lhi333 $r2,[$r1+#0x0]
   9ab62:	97 80       	zeb33 $r6,$r0
   9ab64:	44 00 65 26 	movi $r0,#25894
   9ab68:	4c 20 40 9b 	bne $r2,$r0,9ac9e <AB_SECTOR_GetMpParameter+0x144>
   9ab6c:	a4 49       	lhi333 $r1,[$r1+#0x2]
   9ab6e:	5c f0 90 00 	slti $r15,$r1,#4096
   9ab72:	4e f2 00 96 	beqz $r15,9ac9e <AB_SECTOR_GetMpParameter+0x144>
   9ab76:	9c 4a       	addi333 $r1,$r1,#2
   9ab78:	46 00 00 81 	sethi $r0,#0x81
   9ab7c:	58 00 00 04 	ori $r0,$r0,#0x4
   9ab80:	96 49       	zeh33 $r1,$r1
   9ab82:	44 20 ff ff 	movi $r2,#65535
   9ab86:	49 ff 2e 23 	jal 807cc <CRC16_Generate>
   9ab8a:	4e 02 00 91 	beqz $r0,9acac <AB_SECTOR_GetMpParameter+0x152>
   9ab8e:	48 00 00 88 	j 9ac9e <AB_SECTOR_GetMpParameter+0x144>
   9ab92:	46 10 00 81 	sethi $r1,#0x81
   9ab96:	00 80 80 c4 	lbi $r8,[$r1+#0xc4]
   9ab9a:	80 c0       	mov55 $r6,$r0
   9ab9c:	84 e3       	movi55 $r7,#3
   9ab9e:	d5 13       	j8 9abc4 <AB_SECTOR_GetMpParameter+0x6a>
   9aba0:	46 20 00 81 	sethi $r2,#0x81
   9aba4:	42 13 1c 24 	mul $r1,$r6,$r7
   9aba8:	58 21 00 c4 	ori $r2,$r2,#0xc4
   9abac:	98 0a       	add333 $r0,$r1,$r2
   9abae:	9d 51       	addi333 $r5,$r2,#1
   9abb0:	98 cd       	add333 $r3,$r1,$r5
   9abb2:	a6 43       	lbi333 $r1,[$r0+#0x3]
   9abb4:	a6 82       	lbi333 $r2,[$r0+#0x2]
   9abb6:	40 10 a0 08 	slli $r1,$r1,#8
   9abba:	a6 18       	lbi333 $r0,[$r3+#0x0]
   9abbc:	fe 57       	or33 $r1,$r2
   9abbe:	49 ff 2e cf 	jal 8095c <SYS_3WireWrite>
   9abc2:	9d b1       	addi333 $r6,$r6,#1
   9abc4:	96 30       	zeb33 $r0,$r6
   9abc6:	e2 08       	slt45 $r0,$r8
   9abc8:	e9 ec       	bnezs8 9aba0 <AB_SECTOR_GetMpParameter+0x46>
   9abca:	46 00 00 81 	sethi $r0,#0x81
   9abce:	58 00 00 c4 	ori $r0,$r0,#0xc4
   9abd2:	00 40 00 3d 	lbi $r4,[$r0+#0x3d]
   9abd6:	84 20       	movi55 $r1,#0
   9abd8:	84 69       	movi55 $r3,#9
   9abda:	d5 5e       	j8 9ac96 <AB_SECTOR_GetMpParameter+0x13c>
   9abdc:	46 50 00 81 	sethi $r5,#0x81
   9abe0:	42 00 8c 24 	mul $r0,$r1,$r3
   9abe4:	58 52 81 06 	ori $r5,$r5,#0x106
   9abe8:	98 85       	add333 $r2,$r0,$r5
   9abea:	a6 90       	lbi333 $r2,[$r2+#0x0]
   9abec:	5a 20 02 1a 	beqc $r2,#2,9ac20 <AB_SECTOR_GetMpParameter+0xc6>
   9abf0:	5a 20 04 32 	beqc $r2,#4,9ac54 <AB_SECTOR_GetMpParameter+0xfa>
   9abf4:	5a 28 01 50 	bnec $r2,#1,9ac94 <AB_SECTOR_GetMpParameter+0x13a>
   9abf8:	50 22 ff f6 	addi $r2,$r5,#-10
   9abfc:	98 02       	add333 $r0,$r0,$r2
   9abfe:	9c 04       	addi333 $r0,$r0,#4
   9ac00:	a7 83       	lbi333 $r6,[$r0+#0x3]
   9ac02:	a7 c2       	lbi333 $r7,[$r0+#0x2]
   9ac04:	a7 44       	lbi333 $r5,[$r0+#0x4]
   9ac06:	a6 85       	lbi333 $r2,[$r0+#0x5]
   9ac08:	40 63 20 08 	slli $r6,$r6,#8
   9ac0c:	ff bf       	or33 $r6,$r7
   9ac0e:	40 52 c0 08 	slli $r5,$r5,#16
   9ac12:	ff 77       	or33 $r5,$r6
   9ac14:	40 21 60 08 	slli $r2,$r2,#24
   9ac18:	a6 07       	lbi333 $r0,[$r0+#0x7]
   9ac1a:	fe af       	or33 $r2,$r5
   9ac1c:	ae 10       	sbi333 $r0,[$r2+#0x0]
   9ac1e:	d5 3b       	j8 9ac94 <AB_SECTOR_GetMpParameter+0x13a>
   9ac20:	46 50 00 81 	sethi $r5,#0x81
   9ac24:	58 52 80 fc 	ori $r5,$r5,#0xfc
   9ac28:	98 05       	add333 $r0,$r0,$r5
   9ac2a:	9c 05       	addi333 $r0,$r0,#5
   9ac2c:	a7 82       	lbi333 $r6,[$r0+#0x2]
   9ac2e:	a7 c1       	lbi333 $r7,[$r0+#0x1]
   9ac30:	a7 43       	lbi333 $r5,[$r0+#0x3]
   9ac32:	a6 84       	lbi333 $r2,[$r0+#0x4]
   9ac34:	40 63 20 08 	slli $r6,$r6,#8
   9ac38:	ff bf       	or33 $r6,$r7
   9ac3a:	40 52 c0 08 	slli $r5,$r5,#16
   9ac3e:	ff 77       	or33 $r5,$r6
   9ac40:	40 21 60 08 	slli $r2,$r2,#24
   9ac44:	fe af       	or33 $r2,$r5
   9ac46:	a7 46       	lbi333 $r5,[$r0+#0x6]
   9ac48:	a6 07       	lbi333 $r0,[$r0+#0x7]
   9ac4a:	40 00 20 08 	slli $r0,$r0,#8
   9ac4e:	fe 2f       	or33 $r0,$r5
   9ac50:	ac 10       	shi333 $r0,[$r2+#0x0]
   9ac52:	d5 21       	j8 9ac94 <AB_SECTOR_GetMpParameter+0x13a>
   9ac54:	50 22 ff f6 	addi $r2,$r5,#-10
   9ac58:	98 02       	add333 $r0,$r0,$r2
   9ac5a:	9c 06       	addi333 $r0,$r0,#6
   9ac5c:	a7 81       	lbi333 $r6,[$r0+#0x1]
   9ac5e:	a7 c0       	lbi333 $r7,[$r0+#0x0]
   9ac60:	a7 42       	lbi333 $r5,[$r0+#0x2]
   9ac62:	a6 83       	lbi333 $r2,[$r0+#0x3]
   9ac64:	40 63 20 08 	slli $r6,$r6,#8
   9ac68:	ff bf       	or33 $r6,$r7
   9ac6a:	40 52 c0 08 	slli $r5,$r5,#16
   9ac6e:	ff 77       	or33 $r5,$r6
   9ac70:	40 21 60 08 	slli $r2,$r2,#24
   9ac74:	a7 86       	lbi333 $r6,[$r0+#0x6]
   9ac76:	a7 c5       	lbi333 $r7,[$r0+#0x5]
   9ac78:	fe af       	or33 $r2,$r5
   9ac7a:	a7 47       	lbi333 $r5,[$r0+#0x7]
   9ac7c:	40 63 20 08 	slli $r6,$r6,#8
   9ac80:	00 00 00 08 	lbi $r0,[$r0+#0x8]
   9ac84:	ff bf       	or33 $r6,$r7
   9ac86:	40 52 c0 08 	slli $r5,$r5,#16
   9ac8a:	ff 77       	or33 $r5,$r6
   9ac8c:	40 00 60 08 	slli $r0,$r0,#24
   9ac90:	fe 2f       	or33 $r0,$r5
   9ac92:	b6 02       	swi450 $r0,[$r2]
   9ac94:	9c 49       	addi333 $r1,$r1,#1
   9ac96:	96 08       	zeb33 $r0,$r1
   9ac98:	e2 04       	slt45 $r0,$r4
   9ac9a:	e9 a1       	bnezs8 9abdc <AB_SECTOR_GetMpParameter+0x82>
   9ac9c:	d5 03       	j8 9aca2 <AB_SECTOR_GetMpParameter+0x148>
   9ac9e:	84 00       	movi55 $r0,#0
   9aca0:	d5 05       	j8 9acaa <AB_SECTOR_GetMpParameter+0x150>
   9aca2:	46 00 00 81 	sethi $r0,#0x81
   9aca6:	58 00 00 04 	ori $r0,$r0,#0x4
   9acaa:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9acac:	4e 63 ff 73 	bnez $r6,9ab92 <AB_SECTOR_GetMpParameter+0x38>
   9acb0:	d5 f9       	j8 9aca2 <AB_SECTOR_GetMpParameter+0x148>

0009acb2 <alloc_spi_tran_entry>:
   9acb2:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9acb4:	40 80 80 13 	zeh $r8,$r1
   9acb8:	81 40       	mov55 $r10,$r0
   9acba:	50 04 00 10 	addi $r0,$r8,#16
   9acbe:	80 e2       	mov55 $r7,$r2
   9acc0:	83 84       	mov55 $fp,$r4
   9acc2:	40 91 80 13 	zeh $r9,$r3
   9acc6:	49 ff ff 2f 	jal 9ab24 <AB_queue_entry_alloc>
   9acca:	80 c0       	mov55 $r6,$r0
   9accc:	c0 1a       	beqz38 $r0,9ad00 <alloc_spi_tran_entry+0x4e>
   9acce:	4e 92 00 09 	beqz $r9,9ace0 <alloc_spi_tran_entry+0x2e>
   9acd2:	cf 07       	bnez38 $r7,9ace0 <alloc_spi_tran_entry+0x2e>
   9acd4:	80 09       	mov55 $r0,$r9
   9acd6:	49 ff fd 7f 	jal 9a7d4 <malloc>
   9acda:	80 e0       	mov55 $r7,$r0
   9acdc:	84 01       	movi55 $r0,#1
   9acde:	d5 02       	j8 9ace2 <alloc_spi_tran_entry+0x30>
   9ace0:	84 00       	movi55 $r0,#0
   9ace2:	80 66       	mov55 $r3,$r6
   9ace4:	1a 81 80 07 	shi.bi $r8,[$r3],#0xe
   9ace8:	10 03 00 0c 	sbi $r0,[$r6+#0xc]
   9acec:	15 c3 00 02 	swi $fp,[$r6+#0x8]
   9acf0:	12 93 00 01 	shi $r9,[$r6+#0x2]
   9acf4:	80 03       	mov55 $r0,$r3
   9acf6:	80 2a       	mov55 $r1,$r10
   9acf8:	80 48       	mov55 $r2,$r8
   9acfa:	49 ff a9 a7 	jal 90048 <memcpy>
   9acfe:	a9 f1       	swi333 $r7,[$r6+#0x4]
   9ad00:	80 06       	mov55 $r0,$r6
   9ad02:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009ad04 <AB_SPI_WriteAndRead>:
   9ad04:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9ad06:	96 d9       	zeh33 $r3,$r3
   9ad08:	80 e0       	mov55 $r7,$r0
   9ad0a:	80 01       	mov55 $r0,$r1
   9ad0c:	80 23       	mov55 $r1,$r3
   9ad0e:	49 ff ff d2 	jal 9acb2 <alloc_spi_tran_entry>
   9ad12:	80 c0       	mov55 $r6,$r0
   9ad14:	c0 26       	beqz38 $r0,9ad60 <AB_SPI_WriteAndRead+0x5c>
   9ad16:	84 01       	movi55 $r0,#1
   9ad18:	10 03 00 0d 	sbi $r0,[$r6+#0xd]
   9ad1c:	84 20       	movi55 $r1,#0
   9ad1e:	80 07       	mov55 $r0,$r7
   9ad20:	49 00 0a 70 	jal 9c200 <DRV_SPI_Int>
   9ad24:	80 07       	mov55 $r0,$r7
   9ad26:	49 00 0a 51 	jal 9c1c8 <DRV_SPI_IsReady>
   9ad2a:	c8 09       	bnez38 $r0,9ad3c <AB_SPI_WriteAndRead+0x38>
   9ad2c:	3e 0f cf d0 	addi.gp $r0,#-12336
   9ad30:	38 00 1e 02 	lw $r0,[$r0+($r7<<#0x2)]
   9ad34:	80 26       	mov55 $r1,$r6
   9ad36:	49 ff fe 90 	jal 9aa56 <AB_queue_push>
   9ad3a:	d5 0e       	j8 9ad56 <AB_SPI_WriteAndRead+0x52>
   9ad3c:	00 13 00 0d 	lbi $r1,[$r6+#0xd]
   9ad40:	80 07       	mov55 $r0,$r7
   9ad42:	49 00 0a 4b 	jal 9c1d8 <DRV_SPI_ChangeDuplex>
   9ad46:	a4 b0       	lhi333 $r2,[$r6+#0x0]
   9ad48:	a0 f1       	lwi333 $r3,[$r6+#0x4]
   9ad4a:	a5 31       	lhi333 $r4,[$r6+#0x2]
   9ad4c:	80 07       	mov55 $r0,$r7
   9ad4e:	50 13 00 0e 	addi $r1,$r6,#14
   9ad52:	49 00 09 eb 	jal 9c128 <DRV_SPI_WriteRead>
   9ad56:	80 07       	mov55 $r0,$r7
   9ad58:	84 21       	movi55 $r1,#1
   9ad5a:	49 00 0a 53 	jal 9c200 <DRV_SPI_Int>
   9ad5e:	84 01       	movi55 $r0,#1
   9ad60:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009ad62 <AB_SPI_WriteThenRead>:
   9ad62:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9ad64:	80 e0       	mov55 $r7,$r0
   9ad66:	80 01       	mov55 $r0,$r1
   9ad68:	96 51       	zeh33 $r1,$r2
   9ad6a:	80 43       	mov55 $r2,$r3
   9ad6c:	96 e1       	zeh33 $r3,$r4
   9ad6e:	80 85       	mov55 $r4,$r5
   9ad70:	49 ff ff a1 	jal 9acb2 <alloc_spi_tran_entry>
   9ad74:	80 c0       	mov55 $r6,$r0
   9ad76:	c0 2a       	beqz38 $r0,9adca <AB_SPI_WriteThenRead+0x68>
   9ad78:	84 00       	movi55 $r0,#0
   9ad7a:	10 03 00 0d 	sbi $r0,[$r6+#0xd]
   9ad7e:	84 20       	movi55 $r1,#0
   9ad80:	80 07       	mov55 $r0,$r7
   9ad82:	49 00 0a 3f 	jal 9c200 <DRV_SPI_Int>
   9ad86:	80 07       	mov55 $r0,$r7
   9ad88:	49 00 0a 20 	jal 9c1c8 <DRV_SPI_IsReady>
   9ad8c:	c8 09       	bnez38 $r0,9ad9e <AB_SPI_WriteThenRead+0x3c>
   9ad8e:	3e 0f cf d0 	addi.gp $r0,#-12336
   9ad92:	38 00 1e 02 	lw $r0,[$r0+($r7<<#0x2)]
   9ad96:	80 26       	mov55 $r1,$r6
   9ad98:	49 ff fe 5f 	jal 9aa56 <AB_queue_push>
   9ad9c:	d5 12       	j8 9adc0 <AB_SPI_WriteThenRead+0x5e>
   9ad9e:	3c 0d f3 f6 	lwi.gp $r0,[+#-12328]
   9ada2:	49 ff fe 37 	jal 9aa10 <AB_PWR_WakeLocked>
   9ada6:	00 13 00 0d 	lbi $r1,[$r6+#0xd]
   9adaa:	80 07       	mov55 $r0,$r7
   9adac:	49 00 0a 16 	jal 9c1d8 <DRV_SPI_ChangeDuplex>
   9adb0:	a4 b0       	lhi333 $r2,[$r6+#0x0]
   9adb2:	a0 f1       	lwi333 $r3,[$r6+#0x4]
   9adb4:	a5 31       	lhi333 $r4,[$r6+#0x2]
   9adb6:	80 07       	mov55 $r0,$r7
   9adb8:	50 13 00 0e 	addi $r1,$r6,#14
   9adbc:	49 00 09 b6 	jal 9c128 <DRV_SPI_WriteRead>
   9adc0:	80 07       	mov55 $r0,$r7
   9adc2:	84 21       	movi55 $r1,#1
   9adc4:	49 00 0a 1e 	jal 9c200 <DRV_SPI_Int>
   9adc8:	84 01       	movi55 $r0,#1
   9adca:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009adcc <AB_SPI_Close>:
   9adcc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9adce:	80 c0       	mov55 $r6,$r0
   9add0:	3e 0f cf d0 	addi.gp $r0,#-12336
   9add4:	38 00 1a 02 	lw $r0,[$r0+($r6<<#0x2)]
   9add8:	c0 03       	beqz38 $r0,9adde <AB_SPI_Close+0x12>
   9adda:	49 ff fe 98 	jal 9ab0a <AB_queue_free>
   9adde:	84 20       	movi55 $r1,#0
   9ade0:	3e 0f cf d0 	addi.gp $r0,#-12336
   9ade4:	38 10 1a 0a 	sw $r1,[$r0+($r6<<#0x2)]
   9ade8:	80 06       	mov55 $r0,$r6
   9adea:	49 00 09 8f 	jal 9c108 <DRV_SPI_Deinit>
   9adee:	3c 0d f3 f6 	lwi.gp $r0,[+#-12328]
   9adf2:	49 ff fe 22 	jal 9aa36 <AB_PWR_ReturnWakeLock>
   9adf6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009adf8 <AB_SPI_Open>:
   9adf8:	fc 22       	push25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}
   9adfa:	a0 c9       	lwi333 $r3,[$r1+#0x4]
   9adfc:	80 41       	mov55 $r2,$r1
   9adfe:	b0 41       	addri36.sp $r1,#0x4
   9ae00:	a7 08       	lbi333 $r4,[$r1+#0x0]
   9ae02:	40 51 84 09 	srli $r5,$r3,#1
   9ae06:	97 6c       	xlsb33 $r5,$r5
   9ae08:	92 82       	srli45 $r4,#2
   9ae0a:	95 22       	slli333 $r4,$r4,#2
   9ae0c:	96 dc       	xlsb33 $r3,$r3
   9ae0e:	ff 2f       	or33 $r4,$r5
   9ae10:	98 db       	add333 $r3,$r3,$r3
   9ae12:	fe e7       	or33 $r3,$r4
   9ae14:	00 41 00 08 	lbi $r4,[$r2+#0x8]
   9ae18:	58 31 80 1c 	ori $r3,$r3,#0x1c
   9ae1c:	97 24       	xlsb33 $r4,$r4
   9ae1e:	95 26       	slli333 $r4,$r4,#6
   9ae20:	96 e7       	fexti33 $r3,#0x4
   9ae22:	fe e7       	or33 $r3,$r4
   9ae24:	ae c8       	sbi333 $r3,[$r1+#0x0]
   9ae26:	80 c0       	mov55 $r6,$r0
   9ae28:	b4 42       	lwi450 $r2,[$r2]
   9ae2a:	f2 82       	swi37.sp $r2,[+#0x8]
   9ae2c:	46 20 00 9a 	sethi $r2,#0x9a
   9ae30:	58 21 0e 52 	ori $r2,$r2,#0xe52
   9ae34:	f2 83       	swi37.sp $r2,[+#0xc]
   9ae36:	49 00 0a 15 	jal 9c260 <DRV_SPI_Init>
   9ae3a:	49 ff fe 81 	jal 9ab3c <AB_queue_alloc>
   9ae3e:	3e 1f cf d0 	addi.gp $r1,#-12336
   9ae42:	38 00 9a 0a 	sw $r0,[$r1+($r6<<#0x2)]
   9ae46:	49 ff fd d1 	jal 9a9e8 <AB_PWR_GetWakeLock>
   9ae4a:	3c 0f f3 f6 	swi.gp $r0,[+#-12328]
   9ae4e:	84 01       	movi55 $r0,#1
   9ae50:	fc a2       	pop25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}

0009ae52 <Spi_drv_complete_cb>:
   9ae52:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9ae54:	80 e0       	mov55 $r7,$r0
   9ae56:	3e 0f cf d0 	addi.gp $r0,#-12336
   9ae5a:	38 00 1e 02 	lw $r0,[$r0+($r7<<#0x2)]
   9ae5e:	81 41       	mov55 $r10,$r1
   9ae60:	81 23       	mov55 $r9,$r3
   9ae62:	40 82 00 13 	zeh $r8,$r4
   9ae66:	49 ff fe 2c 	jal 9aabe <AB_queue_pop>
   9ae6a:	80 c0       	mov55 $r6,$r0
   9ae6c:	c0 0f       	beqz38 $r0,9ae8a <Spi_drv_complete_cb+0x38>
   9ae6e:	00 13 00 0d 	lbi $r1,[$r6+#0xd]
   9ae72:	80 07       	mov55 $r0,$r7
   9ae74:	49 00 09 b2 	jal 9c1d8 <DRV_SPI_ChangeDuplex>
   9ae78:	a4 b0       	lhi333 $r2,[$r6+#0x0]
   9ae7a:	a0 f1       	lwi333 $r3,[$r6+#0x4]
   9ae7c:	a5 31       	lhi333 $r4,[$r6+#0x2]
   9ae7e:	80 07       	mov55 $r0,$r7
   9ae80:	50 13 00 0e 	addi $r1,$r6,#14
   9ae84:	49 00 09 52 	jal 9c128 <DRV_SPI_WriteRead>
   9ae88:	d5 05       	j8 9ae92 <Spi_drv_complete_cb+0x40>
   9ae8a:	3c 0d f3 f6 	lwi.gp $r0,[+#-12328]
   9ae8e:	49 ff fd ca 	jal 9aa22 <AB_PWR_WakeUnlocked>
   9ae92:	50 65 7f f2 	addi $r6,$r10,#-14
   9ae96:	a0 b2       	lwi333 $r2,[$r6+#0x8]
   9ae98:	c2 04       	beqz38 $r2,9aea0 <Spi_drv_complete_cb+0x4e>
   9ae9a:	80 09       	mov55 $r0,$r9
   9ae9c:	80 28       	mov55 $r1,$r8
   9ae9e:	dd 22       	jral5 $r2
   9aea0:	00 03 00 0c 	lbi $r0,[$r6+#0xc]
   9aea4:	c0 04       	beqz38 $r0,9aeac <Spi_drv_complete_cb+0x5a>
   9aea6:	a0 31       	lwi333 $r0,[$r6+#0x4]
   9aea8:	49 ff fc 1d 	jal 9a6e2 <free>
   9aeac:	80 06       	mov55 $r0,$r6
   9aeae:	49 ff fe 21 	jal 9aaf0 <AB_queue_entry_free>
   9aeb2:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009aeb4 <Send2MP>:
   9aeb4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aeb6:	3c 2d f3 f7 	lwi.gp $r2,[+#-12324]
   9aeba:	96 48       	zeb33 $r1,$r1
   9aebc:	c2 02       	beqz38 $r2,9aec0 <Send2MP+0xc>
   9aebe:	dd 22       	jral5 $r2
   9aec0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009aec2 <dev_1602_lens_ind_cb>:
   9aec2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aec4:	3c 0d f3 f9 	lwi.gp $r0,[+#-12316]
   9aec8:	46 10 00 9b 	sethi $r1,#0x9b
   9aecc:	58 10 84 1e 	ori $r1,$r1,#0x41e
   9aed0:	a0 c4       	lwi333 $r3,[$r0+#0x10]
   9aed2:	96 11       	zeh33 $r0,$r2
   9aed4:	dd 23       	jral5 $r3
   9aed6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009aed8 <ab_airoha_vcmd_Bdie_reset_enable>:
   9aed8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aeda:	84 21       	movi55 $r1,#1
   9aedc:	3e 17 cf e8 	sbi.gp $r1,[+#-12312]
   9aee0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009aee2 <ab_airoha_vcmd_extend_reg>:
   9aee2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aee4:	3c 0f f1 aa 	swi.gp $r0,[+#-14680]
   9aee8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009aeea <ab_airoha_vcmd_mp_ongoing>:
   9aeea:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9aeec:	46 00 00 81 	sethi $r0,#0x81
   9aef0:	58 00 00 04 	ori $r0,$r0,#0x4
   9aef4:	00 00 01 cd 	lbi $r0,[$r0+#0x1cd]
   9aef8:	56 00 00 01 	xori $r0,$r0,#0x1
   9aefc:	5c 00 00 01 	slti $r0,$r0,#1
   9af00:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009af02 <ab_airoha_vcmd_compl_encode>:
   9af02:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9af04:	84 a4       	movi55 $r5,#4
   9af06:	96 d8       	zeb33 $r3,$r3
   9af08:	af 60       	sbi333 $r5,[$r4+#0x0]
   9af0a:	84 bf       	movi55 $r5,#-1
   9af0c:	af 61       	sbi333 $r5,[$r4+#0x1]
   9af0e:	9d 5c       	addi333 $r5,$r3,#4
   9af10:	af 62       	sbi333 $r5,[$r4+#0x2]
   9af12:	84 a1       	movi55 $r5,#1
   9af14:	af 63       	sbi333 $r5,[$r4+#0x3]
   9af16:	44 50 00 30 	movi $r5,#48
   9af1a:	ae 65       	sbi333 $r1,[$r4+#0x5]
   9af1c:	ae 26       	sbi333 $r0,[$r4+#0x6]
   9af1e:	af 64       	sbi333 $r5,[$r4+#0x4]
   9af20:	80 22       	mov55 $r1,$r2
   9af22:	9c 27       	addi333 $r0,$r4,#7
   9af24:	80 43       	mov55 $r2,$r3
   9af26:	49 ff a8 91 	jal 90048 <memcpy>
   9af2a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009af2c <ab_airoha_send_1byte_vcmd_compl>:
   9af2c:	fc 02       	push25 $r6,#0x10    ! {$r6, $fp, $gp, $lp}
   9af2e:	b1 81       	addri36.sp $r6,#0x4
   9af30:	10 2f 80 0f 	sbi $r2,[$sp+#0xf]
   9af34:	84 61       	movi55 $r3,#1
   9af36:	50 2f 80 0f 	addi $r2,$sp,#15
   9af3a:	80 86       	mov55 $r4,$r6
   9af3c:	96 00       	zeb33 $r0,$r0
   9af3e:	96 48       	zeb33 $r1,$r1
   9af40:	49 ff ff e1 	jal 9af02 <ab_airoha_vcmd_compl_encode>
   9af44:	80 06       	mov55 $r0,$r6
   9af46:	84 28       	movi55 $r1,#8
   9af48:	49 ff ff b6 	jal 9aeb4 <Send2MP>
   9af4c:	fc 82       	pop25 $r6,#0x10    ! {$r6, $fp, $gp, $lp}

0009af4e <ISPSwitchArea>:
   9af4e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9af50:	a7 c2       	lbi333 $r7,[$r0+#0x2]
   9af52:	a7 81       	lbi333 $r6,[$r0+#0x1]
   9af54:	a6 03       	lbi333 $r0,[$r0+#0x3]
   9af56:	49 00 11 3c 	jal 9d1ce <AB_DFU_set_active_code_area>
   9af5a:	80 40       	mov55 $r2,$r0
   9af5c:	80 26       	mov55 $r1,$r6
   9af5e:	80 07       	mov55 $r0,$r7
   9af60:	49 ff ff e6 	jal 9af2c <ab_airoha_send_1byte_vcmd_compl>
   9af64:	84 01       	movi55 $r0,#1
   9af66:	49 ff 2c a2 	jal 808aa <OS_delay_ms>
   9af6a:	49 ff fd 71 	jal 9aa4c <AB_PWR_Rst>
   9af6e:	d5 00       	j8 9af6e <ISPSwitchArea+0x20>

0009af70 <_HC_HciRejectVCmdHdlr>:
   9af70:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9af72:	80 20       	mov55 $r1,$r0
   9af74:	a6 49       	lbi333 $r1,[$r1+#0x1]
   9af76:	a6 02       	lbi333 $r0,[$r0+#0x2]
   9af78:	84 4c       	movi55 $r2,#12
   9af7a:	49 ff ff d9 	jal 9af2c <ab_airoha_send_1byte_vcmd_compl>
   9af7e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009af80 <ab_airoha_vcmd34_compl_encode>:
   9af80:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9af82:	84 a4       	movi55 $r5,#4
   9af84:	96 d8       	zeb33 $r3,$r3
   9af86:	af 60       	sbi333 $r5,[$r4+#0x0]
   9af88:	84 bf       	movi55 $r5,#-1
   9af8a:	af 61       	sbi333 $r5,[$r4+#0x1]
   9af8c:	9d 5a       	addi333 $r5,$r3,#2
   9af8e:	ae 63       	sbi333 $r1,[$r4+#0x3]
   9af90:	ae 24       	sbi333 $r0,[$r4+#0x4]
   9af92:	af 62       	sbi333 $r5,[$r4+#0x2]
   9af94:	80 22       	mov55 $r1,$r2
   9af96:	9c 25       	addi333 $r0,$r4,#5
   9af98:	80 43       	mov55 $r2,$r3
   9af9a:	49 ff a8 57 	jal 90048 <memcpy>
   9af9e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009afa0 <ISPWriteData>:
   9afa0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9afa2:	9d 83       	addi333 $r6,$r0,#3
   9afa4:	80 e0       	mov55 $r7,$r0
   9afa6:	a6 40       	lbi333 $r1,[$r0+#0x0]
   9afa8:	a6 34       	lbi333 $r0,[$r6+#0x4]
   9afaa:	9c 05       	addi333 $r0,$r0,#5
   9afac:	4c 10 00 06 	beq $r1,$r0,9afb8 <ISPWriteData+0x18>
   9afb0:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   9afb2:	a6 79       	lbi333 $r1,[$r7+#0x1]
   9afb4:	84 41       	movi55 $r2,#1
   9afb6:	d5 30       	j8 9b016 <ISPWriteData+0x76>
   9afb8:	a6 b1       	lbi333 $r2,[$r6+#0x1]
   9afba:	a6 f0       	lbi333 $r3,[$r6+#0x0]
   9afbc:	a6 72       	lbi333 $r1,[$r6+#0x2]
   9afbe:	40 21 20 08 	slli $r2,$r2,#8
   9afc2:	a6 33       	lbi333 $r0,[$r6+#0x3]
   9afc4:	fe 9f       	or33 $r2,$r3
   9afc6:	40 10 c0 08 	slli $r1,$r1,#16
   9afca:	fe 57       	or33 $r1,$r2
   9afcc:	40 00 60 08 	slli $r0,$r0,#24
   9afd0:	fe 0f       	or33 $r0,$r1
   9afd2:	3c 1d f0 2b 	lwi.gp $r1,[+#-16212]
   9afd6:	e2 01       	slt45 $r0,$r1
   9afd8:	e8 05       	beqzs8 9afe2 <ISPWriteData+0x42>
   9afda:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   9afdc:	a6 79       	lbi333 $r1,[$r7+#0x1]
   9afde:	84 42       	movi55 $r2,#2
   9afe0:	d5 1b       	j8 9b016 <ISPWriteData+0x76>
   9afe2:	54 10 0f ff 	andi $r1,$r0,#0xfff
   9afe6:	c9 04       	bnez38 $r1,9afee <ISPWriteData+0x4e>
   9afe8:	84 22       	movi55 $r1,#2
   9afea:	49 00 11 6a 	jal 9d2be <AB_DFU_erase_flash>
   9afee:	a6 31       	lbi333 $r0,[$r6+#0x1]
   9aff0:	a6 b0       	lbi333 $r2,[$r6+#0x0]
   9aff2:	a6 72       	lbi333 $r1,[$r6+#0x2]
   9aff4:	40 00 20 08 	slli $r0,$r0,#8
   9aff8:	fe 17       	or33 $r0,$r2
   9affa:	40 10 c0 08 	slli $r1,$r1,#16
   9affe:	fe 47       	or33 $r1,$r0
   9b000:	a6 33       	lbi333 $r0,[$r6+#0x3]
   9b002:	a6 b4       	lbi333 $r2,[$r6+#0x4]
   9b004:	40 00 60 08 	slli $r0,$r0,#24
   9b008:	fe 0f       	or33 $r0,$r1
   9b00a:	9c 75       	addi333 $r1,$r6,#5
   9b00c:	49 00 11 4e 	jal 9d2a8 <AB_DFU_write_flash>
   9b010:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   9b012:	a6 79       	lbi333 $r1,[$r7+#0x1]
   9b014:	84 40       	movi55 $r2,#0
   9b016:	49 ff ff 8b 	jal 9af2c <ab_airoha_send_1byte_vcmd_compl>
   9b01a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009b01c <ab_airoha_send_nbyte_vcmd_compl>:
   9b01c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9b01e:	54 81 80 ff 	andi $r8,$r3,#0xff
   9b022:	50 74 00 07 	addi $r7,$r8,#7
   9b026:	55 c0 00 ff 	andi $fp,$r0,#0xff
   9b02a:	80 07       	mov55 $r0,$r7
   9b02c:	81 22       	mov55 $r9,$r2
   9b02e:	54 a0 80 ff 	andi $r10,$r1,#0xff
   9b032:	49 ff fb d1 	jal 9a7d4 <malloc>
   9b036:	80 c0       	mov55 $r6,$r0
   9b038:	80 49       	mov55 $r2,$r9
   9b03a:	80 68       	mov55 $r3,$r8
   9b03c:	80 86       	mov55 $r4,$r6
   9b03e:	80 1c       	mov55 $r0,$fp
   9b040:	80 2a       	mov55 $r1,$r10
   9b042:	49 ff ff 60 	jal 9af02 <ab_airoha_vcmd_compl_encode>
   9b046:	80 06       	mov55 $r0,$r6
   9b048:	96 78       	zeb33 $r1,$r7
   9b04a:	49 ff ff 35 	jal 9aeb4 <Send2MP>
   9b04e:	80 06       	mov55 $r0,$r6
   9b050:	49 ff fb 49 	jal 9a6e2 <free>
   9b054:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009b056 <ISPGetDeviceStatusVCmdHdlr>:
   9b056:	fc 26       	push25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}
   9b058:	80 e0       	mov55 $r7,$r0
   9b05a:	80 1f       	mov55 $r0,$sp
   9b05c:	49 ff 2a 30 	jal 804bc <AB_DFU_check_status>
   9b060:	b0 87       	addri36.sp $r2,#0x1c
   9b062:	84 00       	movi55 $r0,#0
   9b064:	ae 10       	sbi333 $r0,[$r2+#0x0]
   9b066:	00 0f 80 00 	lbi $r0,[$sp+#0x0]
   9b06a:	f1 02       	lwi37.sp $r1,[+#0x8]
   9b06c:	ae 11       	sbi333 $r0,[$r2+#0x1]
   9b06e:	00 0f 80 04 	lbi $r0,[$sp+#0x4]
   9b072:	ae 53       	sbi333 $r1,[$r2+#0x3]
   9b074:	ae 12       	sbi333 $r0,[$r2+#0x2]
   9b076:	40 00 a0 09 	srli $r0,$r1,#8
   9b07a:	ae 14       	sbi333 $r0,[$r2+#0x4]
   9b07c:	40 00 c0 09 	srli $r0,$r1,#16
   9b080:	92 38       	srli45 $r1,#24
   9b082:	ae 56       	sbi333 $r1,[$r2+#0x6]
   9b084:	f1 03       	lwi37.sp $r1,[+#0xc]
   9b086:	ae 15       	sbi333 $r0,[$r2+#0x5]
   9b088:	40 00 a0 09 	srli $r0,$r1,#8
   9b08c:	ae 57       	sbi333 $r1,[$r2+#0x7]
   9b08e:	10 01 00 08 	sbi $r0,[$r2+#0x8]
   9b092:	40 00 c0 09 	srli $r0,$r1,#16
   9b096:	92 38       	srli45 $r1,#24
   9b098:	10 01 00 09 	sbi $r0,[$r2+#0x9]
   9b09c:	10 11 00 0a 	sbi $r1,[$r2+#0xa]
   9b0a0:	00 0f 80 10 	lbi $r0,[$sp+#0x10]
   9b0a4:	f1 05       	lwi37.sp $r1,[+#0x14]
   9b0a6:	10 01 00 0b 	sbi $r0,[$r2+#0xb]
   9b0aa:	40 00 a0 09 	srli $r0,$r1,#8
   9b0ae:	10 11 00 0c 	sbi $r1,[$r2+#0xc]
   9b0b2:	10 01 00 0d 	sbi $r0,[$r2+#0xd]
   9b0b6:	40 00 c0 09 	srli $r0,$r1,#16
   9b0ba:	92 38       	srli45 $r1,#24
   9b0bc:	10 11 00 0f 	sbi $r1,[$r2+#0xf]
   9b0c0:	f1 06       	lwi37.sp $r1,[+#0x18]
   9b0c2:	10 01 00 0e 	sbi $r0,[$r2+#0xe]
   9b0c6:	40 00 a0 09 	srli $r0,$r1,#8
   9b0ca:	10 11 00 10 	sbi $r1,[$r2+#0x10]
   9b0ce:	10 01 00 11 	sbi $r0,[$r2+#0x11]
   9b0d2:	40 00 c0 09 	srli $r0,$r1,#16
   9b0d6:	92 38       	srli45 $r1,#24
   9b0d8:	10 01 00 12 	sbi $r0,[$r2+#0x12]
   9b0dc:	10 11 00 13 	sbi $r1,[$r2+#0x13]
   9b0e0:	fa 64       	movpi45 $r3,#0x14
   9b0e2:	a6 3a       	lbi333 $r0,[$r7+#0x2]
   9b0e4:	a6 79       	lbi333 $r1,[$r7+#0x1]
   9b0e6:	80 df       	mov55 $r6,$sp
   9b0e8:	49 ff ff 9a 	jal 9b01c <ab_airoha_send_nbyte_vcmd_compl>
   9b0ec:	fc a6       	pop25 $r8,#0x30    ! {$r6~$r8, $fp, $gp, $lp}

0009b0ee <ab_airoha_send_nbyte_vcmd34_compl>:
   9b0ee:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9b0f0:	54 81 80 ff 	andi $r8,$r3,#0xff
   9b0f4:	50 74 00 05 	addi $r7,$r8,#5
   9b0f8:	55 c0 00 ff 	andi $fp,$r0,#0xff
   9b0fc:	80 07       	mov55 $r0,$r7
   9b0fe:	81 22       	mov55 $r9,$r2
   9b100:	54 a0 80 ff 	andi $r10,$r1,#0xff
   9b104:	49 ff fb 68 	jal 9a7d4 <malloc>
   9b108:	80 c0       	mov55 $r6,$r0
   9b10a:	80 49       	mov55 $r2,$r9
   9b10c:	80 68       	mov55 $r3,$r8
   9b10e:	80 86       	mov55 $r4,$r6
   9b110:	80 1c       	mov55 $r0,$fp
   9b112:	80 2a       	mov55 $r1,$r10
   9b114:	49 ff ff 36 	jal 9af80 <ab_airoha_vcmd34_compl_encode>
   9b118:	80 06       	mov55 $r0,$r6
   9b11a:	96 78       	zeb33 $r1,$r7
   9b11c:	49 ff fe cc 	jal 9aeb4 <Send2MP>
   9b120:	80 06       	mov55 $r0,$r6
   9b122:	49 ff fa e0 	jal 9a6e2 <free>
   9b126:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009b128 <FlashReadCSRVCmdHdlr>:
   9b128:	fc 22       	push25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}
   9b12a:	9c 43       	addi333 $r1,$r0,#3
   9b12c:	a7 89       	lbi333 $r6,[$r1+#0x1]
   9b12e:	a7 4a       	lbi333 $r5,[$r1+#0x2]
   9b130:	a7 c8       	lbi333 $r7,[$r1+#0x0]
   9b132:	80 80       	mov55 $r4,$r0
   9b134:	40 33 20 08 	slli $r3,$r6,#8
   9b138:	a6 0b       	lbi333 $r0,[$r1+#0x3]
   9b13a:	40 22 c0 08 	slli $r2,$r5,#16
   9b13e:	fe 9f       	or33 $r2,$r3
   9b140:	fe bf       	or33 $r2,$r7
   9b142:	40 30 60 08 	slli $r3,$r0,#24
   9b146:	fe 9f       	or33 $r2,$r3
   9b148:	b4 62       	lwi450 $r3,[$r2]
   9b14a:	85 00       	movi55 $r8,#0
   9b14c:	b0 81       	addri36.sp $r2,#0x4
   9b14e:	ae 14       	sbi333 $r0,[$r2+#0x4]
   9b150:	10 81 00 00 	sbi $r8,[$r2+#0x0]
   9b154:	af d1       	sbi333 $r7,[$r2+#0x1]
   9b156:	af 92       	sbi333 $r6,[$r2+#0x2]
   9b158:	af 53       	sbi333 $r5,[$r2+#0x3]
   9b15a:	40 01 a0 09 	srli $r0,$r3,#8
   9b15e:	a6 4c       	lbi333 $r1,[$r1+#0x4]
   9b160:	ae d6       	sbi333 $r3,[$r2+#0x6]
   9b162:	ae 17       	sbi333 $r0,[$r2+#0x7]
   9b164:	40 01 c0 09 	srli $r0,$r3,#16
   9b168:	92 78       	srli45 $r3,#24
   9b16a:	10 31 00 09 	sbi $r3,[$r2+#0x9]
   9b16e:	ae 55       	sbi333 $r1,[$r2+#0x5]
   9b170:	10 01 00 08 	sbi $r0,[$r2+#0x8]
   9b174:	84 6a       	movi55 $r3,#10
   9b176:	a6 22       	lbi333 $r0,[$r4+#0x2]
   9b178:	a6 61       	lbi333 $r1,[$r4+#0x1]
   9b17a:	49 ff ff ba 	jal 9b0ee <ab_airoha_send_nbyte_vcmd34_compl>
   9b17e:	fc a2       	pop25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}

0009b180 <ab_airoha_vcmd_dispatch>:
   9b180:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   9b182:	40 a0 80 13 	zeh $r10,$r1
   9b186:	2e 17 cf e0 	lbi.gp $r1,[+#-12320]
   9b18a:	f0 81       	swi37.sp $r0,[+#0x4]
   9b18c:	5a 18 03 09 	bnec $r1,#3,9b19e <ab_airoha_vcmd_dispatch+0x1e>
   9b190:	3c 1d f3 f9 	lwi.gp $r1,[+#-12316]
   9b194:	a0 8b       	lwi333 $r2,[$r1+#0xc]
   9b196:	80 2a       	mov55 $r1,$r10
   9b198:	dd 22       	jral5 $r2
   9b19a:	48 00 00 90 	j 9b2ba <ab_airoha_vcmd_dispatch+0x13a>
   9b19e:	3c 2f f3 f7 	swi.gp $r2,[+#-12324]
   9b1a2:	3e 7f c6 c5 	addi.gp $r7,#-14651
   9b1a6:	3e 9f c6 a0 	addi.gp $r9,#-14688
   9b1aa:	3f cf c6 a4 	addi.gp $fp,#-14684
   9b1ae:	48 00 00 7f 	j 9b2ac <ab_airoha_vcmd_dispatch+0x12c>
   9b1b2:	f0 01       	lwi37.sp $r0,[+#0x4]
   9b1b4:	a7 80       	lbi333 $r6,[$r0+#0x0]
   9b1b6:	a6 38       	lbi333 $r0,[$r7+#0x0]
   9b1b8:	5a 00 02 17 	beqc $r0,#2,9b1e6 <ab_airoha_vcmd_dispatch+0x66>
   9b1bc:	e6 03       	slti45 $r0,#3
   9b1be:	e8 05       	beqzs8 9b1c8 <ab_airoha_vcmd_dispatch+0x48>
   9b1c0:	c0 09       	beqz38 $r0,9b1d2 <ab_airoha_vcmd_dispatch+0x52>
   9b1c2:	5a 08 01 6f 	bnec $r0,#1,9b2a0 <ab_airoha_vcmd_dispatch+0x120>
   9b1c6:	d5 0d       	j8 9b1e0 <ab_airoha_vcmd_dispatch+0x60>
   9b1c8:	5a 00 03 15 	beqc $r0,#3,9b1f2 <ab_airoha_vcmd_dispatch+0x72>
   9b1cc:	5a 08 04 6a 	bnec $r0,#4,9b2a0 <ab_airoha_vcmd_dispatch+0x120>
   9b1d0:	d5 1e       	j8 9b20c <ab_airoha_vcmd_dispatch+0x8c>
   9b1d2:	b4 09       	lwi450 $r0,[$r9]
   9b1d4:	c0 03       	beqz38 $r0,9b1da <ab_airoha_vcmd_dispatch+0x5a>
   9b1d6:	49 ff fa 86 	jal 9a6e2 <free>
   9b1da:	5a 68 01 63 	bnec $r6,#1,9b2a0 <ab_airoha_vcmd_dispatch+0x120>
   9b1de:	d5 60       	j8 9b29e <ab_airoha_vcmd_dispatch+0x11e>
   9b1e0:	ce 07       	bnez38 $r6,9b1ee <ab_airoha_vcmd_dispatch+0x6e>
   9b1e2:	84 02       	movi55 $r0,#2
   9b1e4:	d5 12       	j8 9b208 <ab_airoha_vcmd_dispatch+0x88>
   9b1e6:	5a 68 fc 04 	bnec $r6,#252,9b1ee <ab_airoha_vcmd_dispatch+0x6e>
   9b1ea:	84 03       	movi55 $r0,#3
   9b1ec:	d5 0e       	j8 9b208 <ab_airoha_vcmd_dispatch+0x88>
   9b1ee:	84 00       	movi55 $r0,#0
   9b1f0:	d5 0c       	j8 9b208 <ab_airoha_vcmd_dispatch+0x88>
   9b1f2:	9c 33       	addi333 $r0,$r6,#3
   9b1f4:	49 ff fa f0 	jal 9a7d4 <malloc>
   9b1f8:	9e 72       	subi333 $r1,$r6,#2
   9b1fa:	b6 09       	swi450 $r0,[$r9]
   9b1fc:	18 10 00 01 	sbi.bi $r1,[$r0],#0x1
   9b200:	3e 67 c6 c6 	sbi.gp $r6,[+#-14650]
   9b204:	b6 1c       	swi450 $r0,[$fp]
   9b206:	84 04       	movi55 $r0,#4
   9b208:	ae 38       	sbi333 $r0,[$r7+#0x0]
   9b20a:	d5 4b       	j8 9b2a0 <ab_airoha_vcmd_dispatch+0x120>
   9b20c:	b4 1c       	lwi450 $r0,[$fp]
   9b20e:	18 60 00 01 	sbi.bi $r6,[$r0],#0x1
   9b212:	b6 1c       	swi450 $r0,[$fp]
   9b214:	2e 07 c6 c6 	lbi.gp $r0,[+#-14650]
   9b218:	9e 01       	subi333 $r0,$r0,#1
   9b21a:	96 00       	zeb33 $r0,$r0
   9b21c:	3e 07 c6 c6 	sbi.gp $r0,[+#-14650]
   9b220:	c8 40       	bnez38 $r0,9b2a0 <ab_airoha_vcmd_dispatch+0x120>
   9b222:	2e 07 cf e0 	lbi.gp $r0,[+#-12320]
   9b226:	b4 29       	lwi450 $r1,[$r9]
   9b228:	e6 02       	slti45 $r0,#2
   9b22a:	e8 0a       	beqzs8 9b23e <ab_airoha_vcmd_dispatch+0xbe>
   9b22c:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   9b22e:	5a 08 31 05 	bnec $r0,#49,9b238 <ab_airoha_vcmd_dispatch+0xb8>
   9b232:	a6 89       	lbi333 $r2,[$r1+#0x1]
   9b234:	5a 20 20 05 	beqc $r2,#32,9b23e <ab_airoha_vcmd_dispatch+0xbe>
   9b238:	a6 49       	lbi333 $r1,[$r1+#0x1]
   9b23a:	84 4c       	movi55 $r2,#12
   9b23c:	d5 27       	j8 9b28a <ab_airoha_vcmd_dispatch+0x10a>
   9b23e:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   9b240:	5a 00 34 0f 	beqc $r0,#52,9b25e <ab_airoha_vcmd_dispatch+0xde>
   9b244:	5a 00 35 17 	beqc $r0,#53,9b272 <ab_airoha_vcmd_dispatch+0xf2>
   9b248:	5a 08 31 35 	bnec $r0,#49,9b2b2 <ab_airoha_vcmd_dispatch+0x132>
   9b24c:	a6 89       	lbi333 $r2,[$r1+#0x1]
   9b24e:	5c f1 00 21 	slti $r15,$r2,#33
   9b252:	e8 1a       	beqzs8 9b286 <ab_airoha_vcmd_dispatch+0x106>
   9b254:	46 00 00 9f 	sethi $r0,#0x9f
   9b258:	58 00 07 08 	ori $r0,$r0,#0x708
   9b25c:	d5 12       	j8 9b280 <ab_airoha_vcmd_dispatch+0x100>
   9b25e:	a6 89       	lbi333 $r2,[$r1+#0x1]
   9b260:	8e 48       	subi45 $r2,#8
   9b262:	96 90       	zeb33 $r2,$r2
   9b264:	e6 46       	slti45 $r2,#6
   9b266:	e8 10       	beqzs8 9b286 <ab_airoha_vcmd_dispatch+0x106>
   9b268:	46 00 00 9f 	sethi $r0,#0x9f
   9b26c:	58 00 07 8c 	ori $r0,$r0,#0x78c
   9b270:	d5 08       	j8 9b280 <ab_airoha_vcmd_dispatch+0x100>
   9b272:	a6 89       	lbi333 $r2,[$r1+#0x1]
   9b274:	e6 43       	slti45 $r2,#3
   9b276:	e8 08       	beqzs8 9b286 <ab_airoha_vcmd_dispatch+0x106>
   9b278:	46 00 00 9f 	sethi $r0,#0x9f
   9b27c:	58 00 07 a4 	ori $r0,$r0,#0x7a4
   9b280:	38 20 0a 02 	lw $r2,[$r0+($r2<<#0x2)]
   9b284:	d5 06       	j8 9b290 <ab_airoha_vcmd_dispatch+0x110>
   9b286:	a6 49       	lbi333 $r1,[$r1+#0x1]
   9b288:	84 41       	movi55 $r2,#1
   9b28a:	49 ff fe 51 	jal 9af2c <ab_airoha_send_1byte_vcmd_compl>
   9b28e:	d5 03       	j8 9b294 <ab_airoha_vcmd_dispatch+0x114>
   9b290:	80 01       	mov55 $r0,$r1
   9b292:	dd 22       	jral5 $r2
   9b294:	84 c0       	movi55 $r6,#0
   9b296:	80 06       	mov55 $r0,$r6
   9b298:	b6 c9       	swi450 $r6,[$r9]
   9b29a:	49 ff fa 24 	jal 9a6e2 <free>
   9b29e:	af b8       	sbi333 $r6,[$r7+#0x0]
   9b2a0:	f0 01       	lwi37.sp $r0,[+#0x4]
   9b2a2:	8f 41       	subi45 $r10,#1
   9b2a4:	9c 01       	addi333 $r0,$r0,#1
   9b2a6:	f0 81       	swi37.sp $r0,[+#0x4]
   9b2a8:	40 a5 00 13 	zeh $r10,$r10
   9b2ac:	4e a3 ff 83 	bnez $r10,9b1b2 <ab_airoha_vcmd_dispatch+0x32>
   9b2b0:	d5 05       	j8 9b2ba <ab_airoha_vcmd_dispatch+0x13a>
   9b2b2:	3c 2d f1 aa 	lwi.gp $r2,[+#-14680]
   9b2b6:	ca ed       	bnez38 $r2,9b290 <ab_airoha_vcmd_dispatch+0x110>
   9b2b8:	d5 ee       	j8 9b294 <ab_airoha_vcmd_dispatch+0x114>
   9b2ba:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

0009b2bc <HC_HciLabTestWrThreeWiredVCmdHdlr>:
   9b2bc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b2be:	a6 84       	lbi333 $r2,[$r0+#0x4]
   9b2c0:	a6 43       	lbi333 $r1,[$r0+#0x3]
   9b2c2:	80 c0       	mov55 $r6,$r0
   9b2c4:	40 21 20 08 	slli $r2,$r2,#8
   9b2c8:	a6 05       	lbi333 $r0,[$r0+#0x5]
   9b2ca:	fe 57       	or33 $r1,$r2
   9b2cc:	49 ff 2b 48 	jal 8095c <SYS_3WireWrite>
   9b2d0:	a6 32       	lbi333 $r0,[$r6+#0x2]
   9b2d2:	a6 71       	lbi333 $r1,[$r6+#0x1]
   9b2d4:	84 40       	movi55 $r2,#0
   9b2d6:	49 ff fe 2b 	jal 9af2c <ab_airoha_send_1byte_vcmd_compl>
   9b2da:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b2dc <FlashReadThreeWireVCmdHdlr>:
   9b2dc:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   9b2de:	80 c0       	mov55 $r6,$r0
   9b2e0:	a6 03       	lbi333 $r0,[$r0+#0x3]
   9b2e2:	49 ff 2a eb 	jal 808b8 <SYS_3WireRead>
   9b2e6:	b0 81       	addri36.sp $r2,#0x4
   9b2e8:	ae 11       	sbi333 $r0,[$r2+#0x1]
   9b2ea:	84 20       	movi55 $r1,#0
   9b2ec:	92 08       	srli45 $r0,#8
   9b2ee:	ae 50       	sbi333 $r1,[$r2+#0x0]
   9b2f0:	ae 12       	sbi333 $r0,[$r2+#0x2]
   9b2f2:	84 63       	movi55 $r3,#3
   9b2f4:	a6 32       	lbi333 $r0,[$r6+#0x2]
   9b2f6:	a6 71       	lbi333 $r1,[$r6+#0x1]
   9b2f8:	49 ff fe fb 	jal 9b0ee <ab_airoha_send_nbyte_vcmd34_compl>
   9b2fc:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

0009b2fe <HC_HciLabTestRdThreeWiredVCmdHdlr>:
   9b2fe:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   9b300:	80 c0       	mov55 $r6,$r0
   9b302:	a6 03       	lbi333 $r0,[$r0+#0x3]
   9b304:	49 ff 2a da 	jal 808b8 <SYS_3WireRead>
   9b308:	b0 81       	addri36.sp $r2,#0x4
   9b30a:	ae 11       	sbi333 $r0,[$r2+#0x1]
   9b30c:	84 20       	movi55 $r1,#0
   9b30e:	92 08       	srli45 $r0,#8
   9b310:	ae 50       	sbi333 $r1,[$r2+#0x0]
   9b312:	ae 12       	sbi333 $r0,[$r2+#0x2]
   9b314:	84 63       	movi55 $r3,#3
   9b316:	a6 32       	lbi333 $r0,[$r6+#0x2]
   9b318:	a6 71       	lbi333 $r1,[$r6+#0x1]
   9b31a:	49 ff fe 81 	jal 9b01c <ab_airoha_send_nbyte_vcmd_compl>
   9b31e:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

0009b320 <mount_1602>:
   9b320:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9b322:	84 00       	movi55 $r0,#0
   9b324:	49 ff fa a3 	jal 9a86a <AB_module_count>
   9b328:	81 00       	mov55 $r8,$r0
   9b32a:	84 c0       	movi55 $r6,#0
   9b32c:	d5 19       	j8 9b35e <mount_1602+0x3e>
   9b32e:	80 06       	mov55 $r0,$r6
   9b330:	49 ff fa bd 	jal 9a8aa <AB_module_get>
   9b334:	80 e0       	mov55 $r7,$r0
   9b336:	b4 00       	lwi450 $r0,[$r0]
   9b338:	46 10 00 9f 	sethi $r1,#0x9f
   9b33c:	58 10 88 48 	ori $r1,$r1,#0x848
   9b340:	49 ff a6 ac 	jal 90098 <strcmp>
   9b344:	c8 0c       	bnez38 $r0,9b35c <mount_1602+0x3c>
   9b346:	a0 79       	lwi333 $r1,[$r7+#0x4]
   9b348:	3c 1f f3 f9 	swi.gp $r1,[+#-12316]
   9b34c:	a0 89       	lwi333 $r2,[$r1+#0x4]
   9b34e:	46 10 00 9a 	sethi $r1,#0x9a
   9b352:	58 10 8e c2 	ori $r1,$r1,#0xec2
   9b356:	dd 22       	jral5 $r2
   9b358:	84 01       	movi55 $r0,#1
   9b35a:	d5 05       	j8 9b364 <mount_1602+0x44>
   9b35c:	9d b1       	addi333 $r6,$r6,#1
   9b35e:	e2 c8       	slt45 $r6,$r8
   9b360:	e9 e7       	bnezs8 9b32e <mount_1602+0xe>
   9b362:	84 00       	movi55 $r0,#0
   9b364:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009b366 <HC_HciLabTestBDieCommandModeVCmdHdlr>:
   9b366:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b368:	80 c0       	mov55 $r6,$r0
   9b36a:	a6 03       	lbi333 $r0,[$r0+#0x3]
   9b36c:	84 41       	movi55 $r2,#1
   9b36e:	5a 08 01 08 	bnec $r0,#1,9b37e <HC_HciLabTestBDieCommandModeVCmdHdlr+0x18>
   9b372:	84 23       	movi55 $r1,#3
   9b374:	3e 17 cf e0 	sbi.gp $r1,[+#-12320]
   9b378:	a6 32       	lbi333 $r0,[$r6+#0x2]
   9b37a:	a6 71       	lbi333 $r1,[$r6+#0x1]
   9b37c:	d5 11       	j8 9b39e <HC_HciLabTestBDieCommandModeVCmdHdlr+0x38>
   9b37e:	5a 08 02 15 	bnec $r0,#2,9b3a8 <HC_HciLabTestBDieCommandModeVCmdHdlr+0x42>
   9b382:	46 00 01 00 	sethi $r0,#0x100
   9b386:	2e 17 cf e0 	lbi.gp $r1,[+#-12320]
   9b38a:	c9 04       	bnez38 $r1,9b392 <HC_HciLabTestBDieCommandModeVCmdHdlr+0x2c>
   9b38c:	3e 27 cf e0 	sbi.gp $r2,[+#-12320]
   9b390:	d5 10       	j8 9b3b0 <HC_HciLabTestBDieCommandModeVCmdHdlr+0x4a>
   9b392:	49 ff ff c7 	jal 9b320 <mount_1602>
   9b396:	a6 b2       	lbi333 $r2,[$r6+#0x2]
   9b398:	a6 71       	lbi333 $r1,[$r6+#0x1]
   9b39a:	c0 04       	beqz38 $r0,9b3a2 <HC_HciLabTestBDieCommandModeVCmdHdlr+0x3c>
   9b39c:	80 02       	mov55 $r0,$r2
   9b39e:	84 40       	movi55 $r2,#0
   9b3a0:	d5 06       	j8 9b3ac <HC_HciLabTestBDieCommandModeVCmdHdlr+0x46>
   9b3a2:	80 02       	mov55 $r0,$r2
   9b3a4:	84 4d       	movi55 $r2,#13
   9b3a6:	d5 03       	j8 9b3ac <HC_HciLabTestBDieCommandModeVCmdHdlr+0x46>
   9b3a8:	a6 32       	lbi333 $r0,[$r6+#0x2]
   9b3aa:	a6 71       	lbi333 $r1,[$r6+#0x1]
   9b3ac:	49 ff fd c0 	jal 9af2c <ab_airoha_send_1byte_vcmd_compl>
   9b3b0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b3b2 <ab_airoha_vcmd_enable>:
   9b3b2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b3b4:	2e 07 cf e0 	lbi.gp $r0,[+#-12320]
   9b3b8:	5a 08 01 15 	bnec $r0,#1,9b3e2 <ab_airoha_vcmd_enable+0x30>
   9b3bc:	49 ff ff b2 	jal 9b320 <mount_1602>
   9b3c0:	c0 0b       	beqz38 $r0,9b3d6 <ab_airoha_vcmd_enable+0x24>
   9b3c2:	44 00 00 31 	movi $r0,#49
   9b3c6:	fa 30       	movpi45 $r1,#0x20
   9b3c8:	84 40       	movi55 $r2,#0
   9b3ca:	49 ff fd b1 	jal 9af2c <ab_airoha_send_1byte_vcmd_compl>
   9b3ce:	84 02       	movi55 $r0,#2
   9b3d0:	3e 07 cf e0 	sbi.gp $r0,[+#-12320]
   9b3d4:	d5 0a       	j8 9b3e8 <ab_airoha_vcmd_enable+0x36>
   9b3d6:	44 00 00 31 	movi $r0,#49
   9b3da:	fa 30       	movpi45 $r1,#0x20
   9b3dc:	84 4d       	movi55 $r2,#13
   9b3de:	49 ff fd a7 	jal 9af2c <ab_airoha_send_1byte_vcmd_compl>
   9b3e2:	84 22       	movi55 $r1,#2
   9b3e4:	3e 17 cf e0 	sbi.gp $r1,[+#-12320]
   9b3e8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b3ea <ab_airoha_vcmd_uart_hci_mode_enable>:
   9b3ea:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   9b3ec:	80 c0       	mov55 $r6,$r0
   9b3ee:	46 00 00 9f 	sethi $r0,#0x9f
   9b3f2:	58 00 07 b0 	ori $r0,$r0,#0x7b0
   9b3f6:	3a 00 04 00 	lmw.bi $r0,[$r0],$r1,#0x0    ! {$r0~$r1}
   9b3fa:	80 ff       	mov55 $r7,$sp
   9b3fc:	12 1f 80 02 	shi $r1,[$sp+#0x4]
   9b400:	92 30       	srli45 $r1,#16
   9b402:	10 1f 80 06 	sbi $r1,[$sp+#0x6]
   9b406:	b6 1f       	swi450 $r0,[$sp]
   9b408:	49 ff ff 8c 	jal 9b320 <mount_1602>
   9b40c:	3c 6f f3 f7 	swi.gp $r6,[+#-12324]
   9b410:	84 23       	movi55 $r1,#3
   9b412:	3e 17 cf e0 	sbi.gp $r1,[+#-12320]
   9b416:	80 1f       	mov55 $r0,$sp
   9b418:	84 27       	movi55 $r1,#7
   9b41a:	dd 26       	jral5 $r6
   9b41c:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

0009b41e <dev_1602_read_cfm_cb>:
   9b41e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9b420:	2e 07 cf e0 	lbi.gp $r0,[+#-12320]
   9b424:	80 e1       	mov55 $r7,$r1
   9b426:	97 91       	zeh33 $r6,$r2
   9b428:	5a 08 03 14 	bnec $r0,#3,9b450 <dev_1602_read_cfm_cb+0x32>
   9b42c:	2e 07 cf e8 	lbi.gp $r0,[+#-12312]
   9b430:	c0 0c       	beqz38 $r0,9b448 <dev_1602_read_cfm_cb+0x2a>
   9b432:	e6 c5       	slti45 $r6,#5
   9b434:	e9 0a       	bnezs8 9b448 <dev_1602_read_cfm_cb+0x2a>
   9b436:	80 01       	mov55 $r0,$r1
   9b438:	84 45       	movi55 $r2,#5
   9b43a:	3e 1f c2 24 	addi.gp $r1,#-15836
   9b43e:	49 ff a5 f9 	jal 90030 <memcmp>
   9b442:	c8 03       	bnez38 $r0,9b448 <dev_1602_read_cfm_cb+0x2a>
   9b444:	49 ff fb 04 	jal 9aa4c <AB_PWR_Rst>
   9b448:	80 07       	mov55 $r0,$r7
   9b44a:	96 70       	zeb33 $r1,$r6
   9b44c:	49 ff fd 34 	jal 9aeb4 <Send2MP>
   9b450:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009b452 <T.37>:
   9b452:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   9b454:	84 40       	movi55 $r2,#0
   9b456:	10 2f 80 07 	sbi $r2,[$sp+#0x7]
   9b45a:	84 61       	movi55 $r3,#1
   9b45c:	50 2f 80 07 	addi $r2,$sp,#7
   9b460:	80 9f       	mov55 $r4,$sp
   9b462:	96 00       	zeb33 $r0,$r0
   9b464:	96 48       	zeb33 $r1,$r1
   9b466:	49 ff fd 8d 	jal 9af80 <ab_airoha_vcmd34_compl_encode>
   9b46a:	80 1f       	mov55 $r0,$sp
   9b46c:	84 26       	movi55 $r1,#6
   9b46e:	80 df       	mov55 $r6,$sp
   9b470:	49 ff fd 22 	jal 9aeb4 <Send2MP>
   9b474:	fc 81       	pop25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}

0009b476 <FlashWriteThreeWireVCmdHdlr>:
   9b476:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b478:	80 c0       	mov55 $r6,$r0
   9b47a:	9c 03       	addi333 $r0,$r0,#3
   9b47c:	a6 41       	lbi333 $r1,[$r0+#0x1]
   9b47e:	a6 80       	lbi333 $r2,[$r0+#0x0]
   9b480:	40 10 a0 08 	slli $r1,$r1,#8
   9b484:	98 4a       	add333 $r1,$r1,$r2
   9b486:	a6 02       	lbi333 $r0,[$r0+#0x2]
   9b488:	96 49       	zeh33 $r1,$r1
   9b48a:	49 ff 2a 69 	jal 8095c <SYS_3WireWrite>
   9b48e:	a6 32       	lbi333 $r0,[$r6+#0x2]
   9b490:	a6 71       	lbi333 $r1,[$r6+#0x1]
   9b492:	49 ff ff e0 	jal 9b452 <T.37>
   9b496:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b498 <FlashWriteCSRVCmdHdlr>:
   9b498:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b49a:	9c 43       	addi333 $r1,$r0,#3
   9b49c:	80 40       	mov55 $r2,$r0
   9b49e:	a6 c8       	lbi333 $r3,[$r1+#0x0]
   9b4a0:	84 00       	movi55 $r0,#0
   9b4a2:	d5 20       	j8 9b4e2 <FlashWriteCSRVCmdHdlr+0x4a>
   9b4a4:	a7 4a       	lbi333 $r5,[$r1+#0x2]
   9b4a6:	a7 0b       	lbi333 $r4,[$r1+#0x3]
   9b4a8:	40 52 a0 08 	slli $r5,$r5,#8
   9b4ac:	40 42 40 08 	slli $r4,$r4,#16
   9b4b0:	ff 2f       	or33 $r4,$r5
   9b4b2:	a7 49       	lbi333 $r5,[$r1+#0x1]
   9b4b4:	a7 8f       	lbi333 $r6,[$r1+#0x7]
   9b4b6:	ff 2f       	or33 $r4,$r5
   9b4b8:	a7 4c       	lbi333 $r5,[$r1+#0x4]
   9b4ba:	40 63 20 08 	slli $r6,$r6,#8
   9b4be:	40 52 e0 08 	slli $r5,$r5,#24
   9b4c2:	ff 2f       	or33 $r4,$r5
   9b4c4:	00 50 80 08 	lbi $r5,[$r1+#0x8]
   9b4c8:	9c 01       	addi333 $r0,$r0,#1
   9b4ca:	40 52 c0 08 	slli $r5,$r5,#16
   9b4ce:	ff af       	or33 $r6,$r5
   9b4d0:	a7 4e       	lbi333 $r5,[$r1+#0x6]
   9b4d2:	96 00       	zeb33 $r0,$r0
   9b4d4:	ff af       	or33 $r6,$r5
   9b4d6:	00 50 80 09 	lbi $r5,[$r1+#0x9]
   9b4da:	40 52 e0 08 	slli $r5,$r5,#24
   9b4de:	ff 77       	or33 $r5,$r6
   9b4e0:	b6 a4       	swi450 $r5,[$r4]
   9b4e2:	e2 03       	slt45 $r0,$r3
   9b4e4:	e9 e0       	bnezs8 9b4a4 <FlashWriteCSRVCmdHdlr+0xc>
   9b4e6:	a6 12       	lbi333 $r0,[$r2+#0x2]
   9b4e8:	a6 51       	lbi333 $r1,[$r2+#0x1]
   9b4ea:	49 ff ff b4 	jal 9b452 <T.37>
   9b4ee:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b4f0 <DRV_CLK_SysSel>:
   9b4f0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b4f2:	80 c0       	mov55 $r6,$r0
   9b4f4:	5a 08 01 08 	bnec $r0,#1,9b504 <DRV_CLK_SysSel+0x14>
   9b4f8:	44 00 00 39 	movi $r0,#57
   9b4fc:	fa 30       	movpi45 $r1,#0x20
   9b4fe:	49 ff 2a 89 	jal 80a10 <SYS_3WireBitErase>
   9b502:	d5 22       	j8 9b546 <DRV_CLK_SysSel+0x56>
   9b504:	44 00 00 39 	movi $r0,#57
   9b508:	44 10 06 00 	movi $r1,#1536
   9b50c:	49 ff 2a 82 	jal 80a10 <SYS_3WireBitErase>
   9b510:	5a 68 02 07 	bnec $r6,#2,9b51e <DRV_CLK_SysSel+0x2e>
   9b514:	44 00 00 39 	movi $r0,#57
   9b518:	44 10 02 00 	movi $r1,#512
   9b51c:	d5 0e       	j8 9b538 <DRV_CLK_SysSel+0x48>
   9b51e:	5a 68 03 07 	bnec $r6,#3,9b52c <DRV_CLK_SysSel+0x3c>
   9b522:	44 00 00 39 	movi $r0,#57
   9b526:	44 10 04 00 	movi $r1,#1024
   9b52a:	d5 07       	j8 9b538 <DRV_CLK_SysSel+0x48>
   9b52c:	5a 68 04 08 	bnec $r6,#4,9b53c <DRV_CLK_SysSel+0x4c>
   9b530:	44 00 00 39 	movi $r0,#57
   9b534:	44 10 06 00 	movi $r1,#1536
   9b538:	49 ff 2a 5f 	jal 809f6 <SYS_3WireBitWrite>
   9b53c:	44 00 00 39 	movi $r0,#57
   9b540:	fa 30       	movpi45 $r1,#0x20
   9b542:	49 ff 2a 5a 	jal 809f6 <SYS_3WireBitWrite>
   9b546:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b548 <DRV_CLK_16MSel>:
   9b548:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b54a:	c8 07       	bnez38 $r0,9b558 <DRV_CLK_16MSel+0x10>
   9b54c:	44 00 00 39 	movi $r0,#57
   9b550:	9c 47       	addi333 $r1,$r0,#7
   9b552:	49 ff 2a 52 	jal 809f6 <SYS_3WireBitWrite>
   9b556:	d5 06       	j8 9b562 <DRV_CLK_16MSel+0x1a>
   9b558:	44 00 00 39 	movi $r0,#57
   9b55c:	9c 47       	addi333 $r1,$r0,#7
   9b55e:	49 ff 2a 59 	jal 80a10 <SYS_3WireBitErase>
   9b562:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b564 <DRV_CLK_32KSel>:
   9b564:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b566:	c8 08       	bnez38 $r0,9b576 <DRV_CLK_32KSel+0x12>
   9b568:	44 00 00 39 	movi $r0,#57
   9b56c:	44 10 00 80 	movi $r1,#128
   9b570:	49 ff 2a 43 	jal 809f6 <SYS_3WireBitWrite>
   9b574:	d5 07       	j8 9b582 <DRV_CLK_32KSel+0x1e>
   9b576:	44 00 00 39 	movi $r0,#57
   9b57a:	44 10 00 80 	movi $r1,#128
   9b57e:	49 ff 2a 49 	jal 80a10 <SYS_3WireBitErase>
   9b582:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b584 <DRV_CLK_PLLEn>:
   9b584:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b586:	96 00       	zeb33 $r0,$r0
   9b588:	80 c1       	mov55 $r6,$r1
   9b58a:	c0 11       	beqz38 $r0,9b5ac <DRV_CLK_PLLEn+0x28>
   9b58c:	84 08       	movi55 $r0,#8
   9b58e:	44 10 40 00 	movi $r1,#16384
   9b592:	49 ff 2a 32 	jal 809f6 <SYS_3WireBitWrite>
   9b596:	ce 05       	bnez38 $r6,9b5a0 <DRV_CLK_PLLEn+0x1c>
   9b598:	84 0b       	movi55 $r0,#11
   9b59a:	44 10 01 00 	movi $r1,#256
   9b59e:	d5 0a       	j8 9b5b2 <DRV_CLK_PLLEn+0x2e>
   9b5a0:	84 0b       	movi55 $r0,#11
   9b5a2:	44 10 01 00 	movi $r1,#256
   9b5a6:	49 ff 2a 28 	jal 809f6 <SYS_3WireBitWrite>
   9b5aa:	d5 06       	j8 9b5b6 <DRV_CLK_PLLEn+0x32>
   9b5ac:	84 08       	movi55 $r0,#8
   9b5ae:	44 10 40 00 	movi $r1,#16384
   9b5b2:	49 ff 2a 2f 	jal 80a10 <SYS_3WireBitErase>
   9b5b6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b5b8 <DRV_CLK_En>:
   9b5b8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b5ba:	96 48       	zeb33 $r1,$r1
   9b5bc:	80 c0       	mov55 $r6,$r0
   9b5be:	c1 3a       	beqz38 $r1,9b632 <DRV_CLK_En+0x7a>
   9b5c0:	c8 10       	bnez38 $r0,9b5e0 <DRV_CLK_En+0x28>
   9b5c2:	44 00 00 3b 	movi $r0,#59
   9b5c6:	44 10 20 00 	movi $r1,#8192
   9b5ca:	49 ff 2a 16 	jal 809f6 <SYS_3WireBitWrite>
   9b5ce:	84 01       	movi55 $r0,#1
   9b5d0:	49 ff 29 6d 	jal 808aa <OS_delay_ms>
   9b5d4:	fa 0d       	movpi45 $r0,#0x1d
   9b5d6:	49 ff 29 71 	jal 808b8 <SYS_3WireRead>
   9b5da:	96 26       	bmski33 $r0,#0x4
   9b5dc:	c0 fc       	beqz38 $r0,9b5d4 <DRV_CLK_En+0x1c>
   9b5de:	d5 3e       	j8 9b65a <DRV_CLK_En+0xa2>
   9b5e0:	5a 08 01 17 	bnec $r0,#1,9b60e <DRV_CLK_En+0x56>
   9b5e4:	44 00 00 3c 	movi $r0,#60
   9b5e8:	44 10 02 00 	movi $r1,#512
   9b5ec:	49 ff 2a 05 	jal 809f6 <SYS_3WireBitWrite>
   9b5f0:	44 00 00 3b 	movi $r0,#59
   9b5f4:	44 10 04 00 	movi $r1,#1024
   9b5f8:	49 ff 29 ff 	jal 809f6 <SYS_3WireBitWrite>
   9b5fc:	80 06       	mov55 $r0,$r6
   9b5fe:	49 ff 29 56 	jal 808aa <OS_delay_ms>
   9b602:	fa 0d       	movpi45 $r0,#0x1d
   9b604:	49 ff 29 5a 	jal 808b8 <SYS_3WireRead>
   9b608:	96 2e       	bmski33 $r0,#0x5
   9b60a:	c0 fc       	beqz38 $r0,9b602 <DRV_CLK_En+0x4a>
   9b60c:	d5 27       	j8 9b65a <DRV_CLK_En+0xa2>
   9b60e:	5a 08 02 06 	bnec $r0,#2,9b61a <DRV_CLK_En+0x62>
   9b612:	84 0e       	movi55 $r0,#14
   9b614:	44 10 01 80 	movi $r1,#384
   9b618:	d5 07       	j8 9b626 <DRV_CLK_En+0x6e>
   9b61a:	5a 08 03 20 	bnec $r0,#3,9b65a <DRV_CLK_En+0xa2>
   9b61e:	44 00 00 3b 	movi $r0,#59
   9b622:	44 10 10 00 	movi $r1,#4096
   9b626:	49 ff 29 e8 	jal 809f6 <SYS_3WireBitWrite>
   9b62a:	84 01       	movi55 $r0,#1
   9b62c:	49 ff 29 3f 	jal 808aa <OS_delay_ms>
   9b630:	d5 15       	j8 9b65a <DRV_CLK_En+0xa2>
   9b632:	c8 06       	bnez38 $r0,9b63e <DRV_CLK_En+0x86>
   9b634:	44 00 00 3b 	movi $r0,#59
   9b638:	44 10 20 00 	movi $r1,#8192
   9b63c:	d5 0d       	j8 9b656 <DRV_CLK_En+0x9e>
   9b63e:	5a 08 01 07 	bnec $r0,#1,9b64c <DRV_CLK_En+0x94>
   9b642:	44 00 00 3b 	movi $r0,#59
   9b646:	44 10 04 00 	movi $r1,#1024
   9b64a:	d5 06       	j8 9b656 <DRV_CLK_En+0x9e>
   9b64c:	5a 08 02 07 	bnec $r0,#2,9b65a <DRV_CLK_En+0xa2>
   9b650:	84 0e       	movi55 $r0,#14
   9b652:	44 10 01 80 	movi $r1,#384
   9b656:	49 ff 29 dd 	jal 80a10 <SYS_3WireBitErase>
   9b65a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b65c <DRV_CLK_Calibration>:
   9b65c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b65e:	80 c0       	mov55 $r6,$r0
   9b660:	84 01       	movi55 $r0,#1
   9b662:	80 20       	mov55 $r1,$r0
   9b664:	49 ff ff aa 	jal 9b5b8 <DRV_CLK_En>
   9b668:	ce 35       	bnez38 $r6,9b6d2 <DRV_CLK_Calibration+0x76>
   9b66a:	44 00 00 42 	movi $r0,#66
   9b66e:	44 10 3e 80 	movi $r1,#16000
   9b672:	49 ff 29 75 	jal 8095c <SYS_3WireWrite>
   9b676:	44 10 3e 80 	movi $r1,#16000
   9b67a:	44 00 00 43 	movi $r0,#67
   9b67e:	49 ff 29 6f 	jal 8095c <SYS_3WireWrite>
   9b682:	44 00 00 41 	movi $r0,#65
   9b686:	49 ff 29 19 	jal 808b8 <SYS_3WireRead>
   9b68a:	44 20 f0 00 	movi $r2,#61440
   9b68e:	40 10 08 02 	and $r1,$r0,$r2
   9b692:	58 10 80 23 	ori $r1,$r1,#0x23
   9b696:	44 00 00 41 	movi $r0,#65
   9b69a:	49 ff 29 61 	jal 8095c <SYS_3WireWrite>
   9b69e:	44 00 00 4a 	movi $r0,#74
   9b6a2:	49 ff 29 0b 	jal 808b8 <SYS_3WireRead>
   9b6a6:	96 04       	xlsb33 $r0,$r0
   9b6a8:	c0 fb       	beqz38 $r0,9b69e <DRV_CLK_Calibration+0x42>
   9b6aa:	44 00 00 41 	movi $r0,#65
   9b6ae:	49 ff 29 05 	jal 808b8 <SYS_3WireRead>
   9b6b2:	44 20 f0 00 	movi $r2,#61440
   9b6b6:	40 10 08 02 	and $r1,$r0,$r2
   9b6ba:	9d b1       	addi333 $r6,$r6,#1
   9b6bc:	44 00 00 41 	movi $r0,#65
   9b6c0:	49 ff 29 4e 	jal 8095c <SYS_3WireWrite>
   9b6c4:	97 b0       	zeb33 $r6,$r6
   9b6c6:	84 01       	movi55 $r0,#1
   9b6c8:	49 ff 28 e0 	jal 80888 <OS_delay_us>
   9b6cc:	5a 68 28 cf 	bnec $r6,#40,9b66a <DRV_CLK_Calibration+0xe>
   9b6d0:	d5 36       	j8 9b73c <DRV_CLK_Calibration+0xe0>
   9b6d2:	5a 68 03 35 	bnec $r6,#3,9b73c <DRV_CLK_Calibration+0xe0>
   9b6d6:	84 c0       	movi55 $r6,#0
   9b6d8:	44 00 00 42 	movi $r0,#66
   9b6dc:	44 10 0f a0 	movi $r1,#4000
   9b6e0:	49 ff 29 3e 	jal 8095c <SYS_3WireWrite>
   9b6e4:	fa 30       	movpi45 $r1,#0x20
   9b6e6:	44 00 00 43 	movi $r0,#67
   9b6ea:	49 ff 29 39 	jal 8095c <SYS_3WireWrite>
   9b6ee:	44 00 00 41 	movi $r0,#65
   9b6f2:	49 ff 28 e3 	jal 808b8 <SYS_3WireRead>
   9b6f6:	44 20 f0 00 	movi $r2,#61440
   9b6fa:	40 10 08 02 	and $r1,$r0,$r2
   9b6fe:	58 10 80 12 	ori $r1,$r1,#0x12
   9b702:	44 00 00 41 	movi $r0,#65
   9b706:	49 ff 29 2b 	jal 8095c <SYS_3WireWrite>
   9b70a:	44 00 00 4a 	movi $r0,#74
   9b70e:	49 ff 28 d5 	jal 808b8 <SYS_3WireRead>
   9b712:	96 04       	xlsb33 $r0,$r0
   9b714:	c0 fb       	beqz38 $r0,9b70a <DRV_CLK_Calibration+0xae>
   9b716:	44 00 00 41 	movi $r0,#65
   9b71a:	49 ff 28 cf 	jal 808b8 <SYS_3WireRead>
   9b71e:	44 20 f0 00 	movi $r2,#61440
   9b722:	40 10 08 02 	and $r1,$r0,$r2
   9b726:	9d b1       	addi333 $r6,$r6,#1
   9b728:	44 00 00 41 	movi $r0,#65
   9b72c:	49 ff 29 18 	jal 8095c <SYS_3WireWrite>
   9b730:	97 b0       	zeb33 $r6,$r6
   9b732:	84 01       	movi55 $r0,#1
   9b734:	49 ff 28 aa 	jal 80888 <OS_delay_us>
   9b738:	5a 68 14 d0 	bnec $r6,#20,9b6d8 <DRV_CLK_Calibration+0x7c>
   9b73c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b73e <DRV_CLK_TMR0Sel>:
   9b73e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b740:	c8 11       	bnez38 $r0,9b762 <DRV_CLK_TMR0Sel+0x24>
   9b742:	84 21       	movi55 $r1,#1
   9b744:	84 03       	movi55 $r0,#3
   9b746:	49 ff ff 39 	jal 9b5b8 <DRV_CLK_En>
   9b74a:	84 03       	movi55 $r0,#3
   9b74c:	49 ff ff 88 	jal 9b65c <DRV_CLK_Calibration>
   9b750:	84 01       	movi55 $r0,#1
   9b752:	49 ff ff 09 	jal 9b564 <DRV_CLK_32KSel>
   9b756:	44 00 00 39 	movi $r0,#57
   9b75a:	fa 20       	movpi45 $r1,#0x10
   9b75c:	49 ff 29 4d 	jal 809f6 <SYS_3WireBitWrite>
   9b760:	d5 06       	j8 9b76c <DRV_CLK_TMR0Sel+0x2e>
   9b762:	44 00 00 39 	movi $r0,#57
   9b766:	fa 20       	movpi45 $r1,#0x10
   9b768:	49 ff 29 54 	jal 80a10 <SYS_3WireBitErase>
   9b76c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b76e <SERIALFLASH_SetPatternAndStart>:
   9b76e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b770:	46 0d b0 06 	sethi $r0,#0xdb006
   9b774:	58 00 01 ba 	ori $r0,$r0,#0x1ba
   9b778:	46 f0 02 02 	sethi $r15,#0x202
   9b77c:	14 07 80 10 	swi $r0,[$r15+#0x40]
   9b780:	84 01       	movi55 $r0,#1
   9b782:	46 f0 02 02 	sethi $r15,#0x202
   9b786:	14 07 80 02 	swi $r0,[$r15+#0x8]
   9b78a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b78c <_MXIC_WB_Flash_WaitForReady>:
   9b78c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9b78e:	46 00 01 00 	sethi $r0,#0x100
   9b792:	58 00 00 b0 	ori $r0,$r0,#0xb0
   9b796:	46 10 01 00 	sethi $r1,#0x100
   9b79a:	58 10 80 bc 	ori $r1,$r1,#0xbc
   9b79e:	46 30 02 02 	sethi $r3,#0x202
   9b7a2:	58 31 80 00 	ori $r3,$r3,#0x0
   9b7a6:	64 42 00 02 	mfsr $r4,$PSW
   9b7aa:	64 02 00 43 	setgie.d
   9b7ae:	64 00 00 08 	dsb
   9b7b2:	b4 40       	lwi450 $r2,[$r0]
   9b7b4:	9d 51       	addi333 $r5,$r2,#1
   9b7b6:	b6 a0       	swi450 $r5,[$r0]
   9b7b8:	ca 02       	bnez38 $r2,9b7bc <_MXIC_WB_Flash_WaitForReady+0x30>
   9b7ba:	b6 81       	swi450 $r4,[$r1]
   9b7bc:	a0 9a       	lwi333 $r2,[$r3+#0x8]
   9b7be:	b4 80       	lwi450 $r4,[$r0]
   9b7c0:	96 94       	xlsb33 $r2,$r2
   9b7c2:	9f 21       	subi333 $r4,$r4,#1
   9b7c4:	b6 80       	swi450 $r4,[$r0]
   9b7c6:	b4 80       	lwi450 $r4,[$r0]
   9b7c8:	cc 08       	bnez38 $r4,9b7d8 <_MXIC_WB_Flash_WaitForReady+0x4c>
   9b7ca:	b4 81       	lwi450 $r4,[$r1]
   9b7cc:	97 24       	xlsb33 $r4,$r4
   9b7ce:	c4 05       	beqz38 $r4,9b7d8 <_MXIC_WB_Flash_WaitForReady+0x4c>
   9b7d0:	64 12 00 43 	setgie.e
   9b7d4:	64 00 00 08 	dsb
   9b7d8:	ca e7       	bnez38 $r2,9b7a6 <_MXIC_WB_Flash_WaitForReady+0x1a>
   9b7da:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009b7dc <DRV_Flash_ByteProgram>:
   9b7dc:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   9b7de:	83 81       	mov55 $fp,$r1
   9b7e0:	46 18 00 00 	sethi $r1,#0x80000
   9b7e4:	96 91       	zeh33 $r2,$r2
   9b7e6:	f2 81       	swi37.sp $r2,[+#0x4]
   9b7e8:	40 a0 04 04 	or $r10,$r0,$r1
   9b7ec:	84 e0       	movi55 $r7,#0
   9b7ee:	49 ff ff cf 	jal 9b78c <_MXIC_WB_Flash_WaitForReady>
   9b7f2:	46 60 01 00 	sethi $r6,#0x100
   9b7f6:	58 63 00 b0 	ori $r6,$r6,#0xb0
   9b7fa:	46 90 01 00 	sethi $r9,#0x100
   9b7fe:	58 94 80 bc 	ori $r9,$r9,#0xbc
   9b802:	46 80 02 02 	sethi $r8,#0x202
   9b806:	58 84 00 00 	ori $r8,$r8,#0x0
   9b80a:	d5 65       	j8 9b8d4 <DRV_Flash_ByteProgram+0xf8>
   9b80c:	64 12 00 02 	mfsr $r1,$PSW
   9b810:	64 02 00 43 	setgie.d
   9b814:	64 00 00 08 	dsb
   9b818:	b4 06       	lwi450 $r0,[$r6]
   9b81a:	9c 81       	addi333 $r2,$r0,#1
   9b81c:	b6 46       	swi450 $r2,[$r6]
   9b81e:	c8 02       	bnez38 $r0,9b822 <DRV_Flash_ByteProgram+0x46>
   9b820:	b6 29       	swi450 $r1,[$r9]
   9b822:	84 0c       	movi55 $r0,#12
   9b824:	b6 08       	swi450 $r0,[$r8]
   9b826:	14 a4 00 01 	swi $r10,[$r8+#0x4]
   9b82a:	38 0e 1c 00 	lb $r0,[$fp+($r7<<#0x0)]
   9b82e:	14 04 00 03 	swi $r0,[$r8+#0xc]
   9b832:	49 ff ff 9e 	jal 9b76e <SERIALFLASH_SetPatternAndStart>
   9b836:	b4 06       	lwi450 $r0,[$r6]
   9b838:	9e 01       	subi333 $r0,$r0,#1
   9b83a:	b6 06       	swi450 $r0,[$r6]
   9b83c:	b4 06       	lwi450 $r0,[$r6]
   9b83e:	c8 08       	bnez38 $r0,9b84e <DRV_Flash_ByteProgram+0x72>
   9b840:	b4 09       	lwi450 $r0,[$r9]
   9b842:	96 04       	xlsb33 $r0,$r0
   9b844:	c0 05       	beqz38 $r0,9b84e <DRV_Flash_ByteProgram+0x72>
   9b846:	64 12 00 43 	setgie.e
   9b84a:	64 00 00 08 	dsb
   9b84e:	49 ff ff 9f 	jal 9b78c <_MXIC_WB_Flash_WaitForReady>
   9b852:	64 12 00 02 	mfsr $r1,$PSW
   9b856:	64 02 00 43 	setgie.d
   9b85a:	64 00 00 08 	dsb
   9b85e:	b4 06       	lwi450 $r0,[$r6]
   9b860:	9c 81       	addi333 $r2,$r0,#1
   9b862:	b6 46       	swi450 $r2,[$r6]
   9b864:	c8 02       	bnez38 $r0,9b868 <DRV_Flash_ByteProgram+0x8c>
   9b866:	b6 29       	swi450 $r1,[$r9]
   9b868:	84 20       	movi55 $r1,#0
   9b86a:	b6 28       	swi450 $r1,[$r8]
   9b86c:	14 a4 00 01 	swi $r10,[$r8+#0x4]
   9b870:	49 ff ff 7f 	jal 9b76e <SERIALFLASH_SetPatternAndStart>
   9b874:	b4 06       	lwi450 $r0,[$r6]
   9b876:	9e 01       	subi333 $r0,$r0,#1
   9b878:	b6 06       	swi450 $r0,[$r6]
   9b87a:	b4 06       	lwi450 $r0,[$r6]
   9b87c:	c8 08       	bnez38 $r0,9b88c <DRV_Flash_ByteProgram+0xb0>
   9b87e:	b4 09       	lwi450 $r0,[$r9]
   9b880:	96 04       	xlsb33 $r0,$r0
   9b882:	c0 05       	beqz38 $r0,9b88c <DRV_Flash_ByteProgram+0xb0>
   9b884:	64 12 00 43 	setgie.e
   9b888:	64 00 00 08 	dsb
   9b88c:	49 ff ff 80 	jal 9b78c <_MXIC_WB_Flash_WaitForReady>
   9b890:	64 12 00 02 	mfsr $r1,$PSW
   9b894:	64 02 00 43 	setgie.d
   9b898:	64 00 00 08 	dsb
   9b89c:	b4 06       	lwi450 $r0,[$r6]
   9b89e:	9c 81       	addi333 $r2,$r0,#1
   9b8a0:	b6 46       	swi450 $r2,[$r6]
   9b8a2:	c8 02       	bnez38 $r0,9b8a6 <DRV_Flash_ByteProgram+0xca>
   9b8a4:	b6 29       	swi450 $r1,[$r9]
   9b8a6:	04 04 00 03 	lwi $r0,[$r8+#0xc]
   9b8aa:	b4 26       	lwi450 $r1,[$r6]
   9b8ac:	9e 49       	subi333 $r1,$r1,#1
   9b8ae:	b6 26       	swi450 $r1,[$r6]
   9b8b0:	b4 26       	lwi450 $r1,[$r6]
   9b8b2:	c9 08       	bnez38 $r1,9b8c2 <DRV_Flash_ByteProgram+0xe6>
   9b8b4:	b4 29       	lwi450 $r1,[$r9]
   9b8b6:	96 4c       	xlsb33 $r1,$r1
   9b8b8:	c1 05       	beqz38 $r1,9b8c2 <DRV_Flash_ByteProgram+0xe6>
   9b8ba:	64 12 00 43 	setgie.e
   9b8be:	64 00 00 08 	dsb
   9b8c2:	38 1e 1c 00 	lb $r1,[$fp+($r7<<#0x0)]
   9b8c6:	96 00       	zeb33 $r0,$r0
   9b8c8:	9d f9       	addi333 $r7,$r7,#1
   9b8ca:	4c 10 00 04 	beq $r1,$r0,9b8d2 <DRV_Flash_ByteProgram+0xf6>
   9b8ce:	84 04       	movi55 $r0,#4
   9b8d0:	d5 07       	j8 9b8de <DRV_Flash_ByteProgram+0x102>
   9b8d2:	8d 41       	addi45 $r10,#1
   9b8d4:	f1 01       	lwi37.sp $r1,[+#0x4]
   9b8d6:	96 39       	zeh33 $r0,$r7
   9b8d8:	e2 01       	slt45 $r0,$r1
   9b8da:	e9 99       	bnezs8 9b80c <DRV_Flash_ByteProgram+0x30>
   9b8dc:	84 00       	movi55 $r0,#0
   9b8de:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

0009b8e0 <DRV_Flash_PageProgram>:
   9b8e0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9b8e2:	81 00       	mov55 $r8,$r0
   9b8e4:	80 c1       	mov55 $r6,$r1
   9b8e6:	80 e2       	mov55 $r7,$r2
   9b8e8:	49 ff ff 52 	jal 9b78c <_MXIC_WB_Flash_WaitForReady>
   9b8ec:	64 12 00 02 	mfsr $r1,$PSW
   9b8f0:	64 02 00 43 	setgie.d
   9b8f4:	64 00 00 08 	dsb
   9b8f8:	46 30 01 00 	sethi $r3,#0x100
   9b8fc:	58 31 80 b0 	ori $r3,$r3,#0xb0
   9b900:	b4 43       	lwi450 $r2,[$r3]
   9b902:	9c 11       	addi333 $r0,$r2,#1
   9b904:	b6 03       	swi450 $r0,[$r3]
   9b906:	ca 06       	bnez38 $r2,9b912 <DRV_Flash_PageProgram+0x32>
   9b908:	46 00 01 00 	sethi $r0,#0x100
   9b90c:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9b910:	b6 20       	swi450 $r1,[$r0]
   9b912:	46 30 02 02 	sethi $r3,#0x202
   9b916:	58 31 80 00 	ori $r3,$r3,#0x0
   9b91a:	84 0d       	movi55 $r0,#13
   9b91c:	b6 03       	swi450 $r0,[$r3]
   9b91e:	14 81 80 01 	swi $r8,[$r3+#0x4]
   9b922:	a9 9e       	swi333 $r6,[$r3+#0x18]
   9b924:	49 ff ff 25 	jal 9b76e <SERIALFLASH_SetPatternAndStart>
   9b928:	46 00 01 00 	sethi $r0,#0x100
   9b92c:	58 00 00 b0 	ori $r0,$r0,#0xb0
   9b930:	b4 20       	lwi450 $r1,[$r0]
   9b932:	9e 49       	subi333 $r1,$r1,#1
   9b934:	b6 20       	swi450 $r1,[$r0]
   9b936:	b4 00       	lwi450 $r0,[$r0]
   9b938:	c8 0c       	bnez38 $r0,9b950 <DRV_Flash_PageProgram+0x70>
   9b93a:	46 00 01 00 	sethi $r0,#0x100
   9b93e:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9b942:	b4 00       	lwi450 $r0,[$r0]
   9b944:	96 04       	xlsb33 $r0,$r0
   9b946:	c0 05       	beqz38 $r0,9b950 <DRV_Flash_PageProgram+0x70>
   9b948:	64 12 00 43 	setgie.e
   9b94c:	64 00 00 08 	dsb
   9b950:	49 ff ff 1e 	jal 9b78c <_MXIC_WB_Flash_WaitForReady>
   9b954:	64 22 00 02 	mfsr $r2,$PSW
   9b958:	64 02 00 43 	setgie.d
   9b95c:	64 00 00 08 	dsb
   9b960:	46 10 01 00 	sethi $r1,#0x100
   9b964:	58 10 80 b0 	ori $r1,$r1,#0xb0
   9b968:	b4 01       	lwi450 $r0,[$r1]
   9b96a:	9c c1       	addi333 $r3,$r0,#1
   9b96c:	b6 61       	swi450 $r3,[$r1]
   9b96e:	c8 06       	bnez38 $r0,9b97a <DRV_Flash_PageProgram+0x9a>
   9b970:	46 00 01 00 	sethi $r0,#0x100
   9b974:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9b978:	b6 40       	swi450 $r2,[$r0]
   9b97a:	46 00 02 02 	sethi $r0,#0x202
   9b97e:	58 00 00 00 	ori $r0,$r0,#0x0
   9b982:	04 60 00 0a 	lwi $r6,[$r0+#0x28]
   9b986:	46 00 01 00 	sethi $r0,#0x100
   9b98a:	58 00 00 b0 	ori $r0,$r0,#0xb0
   9b98e:	b4 20       	lwi450 $r1,[$r0]
   9b990:	97 b0       	zeb33 $r6,$r6
   9b992:	9e 49       	subi333 $r1,$r1,#1
   9b994:	b6 20       	swi450 $r1,[$r0]
   9b996:	b4 00       	lwi450 $r0,[$r0]
   9b998:	c8 0c       	bnez38 $r0,9b9b0 <DRV_Flash_PageProgram+0xd0>
   9b99a:	46 00 01 00 	sethi $r0,#0x100
   9b99e:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9b9a2:	b4 00       	lwi450 $r0,[$r0]
   9b9a4:	96 04       	xlsb33 $r0,$r0
   9b9a6:	c0 05       	beqz38 $r0,9b9b0 <DRV_Flash_PageProgram+0xd0>
   9b9a8:	64 12 00 43 	setgie.e
   9b9ac:	64 00 00 08 	dsb
   9b9b0:	c7 06       	beqz38 $r7,9b9bc <DRV_Flash_PageProgram+0xdc>
   9b9b2:	a6 38       	lbi333 $r0,[$r7+#0x0]
   9b9b4:	4c 03 00 04 	beq $r0,$r6,9b9bc <DRV_Flash_PageProgram+0xdc>
   9b9b8:	84 02       	movi55 $r0,#2
   9b9ba:	d5 68       	j8 9ba8a <DRV_Flash_PageProgram+0x1aa>
   9b9bc:	64 22 00 02 	mfsr $r2,$PSW
   9b9c0:	64 02 00 43 	setgie.d
   9b9c4:	64 00 00 08 	dsb
   9b9c8:	46 10 01 00 	sethi $r1,#0x100
   9b9cc:	58 10 80 b0 	ori $r1,$r1,#0xb0
   9b9d0:	b4 01       	lwi450 $r0,[$r1]
   9b9d2:	9c c1       	addi333 $r3,$r0,#1
   9b9d4:	b6 61       	swi450 $r3,[$r1]
   9b9d6:	c8 06       	bnez38 $r0,9b9e2 <DRV_Flash_PageProgram+0x102>
   9b9d8:	46 00 01 00 	sethi $r0,#0x100
   9b9dc:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9b9e0:	b6 40       	swi450 $r2,[$r0]
   9b9e2:	46 00 02 02 	sethi $r0,#0x202
   9b9e6:	58 00 00 00 	ori $r0,$r0,#0x0
   9b9ea:	84 28       	movi55 $r1,#8
   9b9ec:	b6 20       	swi450 $r1,[$r0]
   9b9ee:	84 20       	movi55 $r1,#0
   9b9f0:	14 10 00 0e 	swi $r1,[$r0+#0x38]
   9b9f4:	49 ff fe bd 	jal 9b76e <SERIALFLASH_SetPatternAndStart>
   9b9f8:	46 00 01 00 	sethi $r0,#0x100
   9b9fc:	58 00 00 b0 	ori $r0,$r0,#0xb0
   9ba00:	b4 20       	lwi450 $r1,[$r0]
   9ba02:	9e 49       	subi333 $r1,$r1,#1
   9ba04:	b6 20       	swi450 $r1,[$r0]
   9ba06:	b4 00       	lwi450 $r0,[$r0]
   9ba08:	c8 0c       	bnez38 $r0,9ba20 <DRV_Flash_PageProgram+0x140>
   9ba0a:	46 00 01 00 	sethi $r0,#0x100
   9ba0e:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9ba12:	b4 00       	lwi450 $r0,[$r0]
   9ba14:	96 04       	xlsb33 $r0,$r0
   9ba16:	c0 05       	beqz38 $r0,9ba20 <DRV_Flash_PageProgram+0x140>
   9ba18:	64 12 00 43 	setgie.e
   9ba1c:	64 00 00 08 	dsb
   9ba20:	49 ff fe b6 	jal 9b78c <_MXIC_WB_Flash_WaitForReady>
   9ba24:	64 22 00 02 	mfsr $r2,$PSW
   9ba28:	64 02 00 43 	setgie.d
   9ba2c:	64 00 00 08 	dsb
   9ba30:	46 10 01 00 	sethi $r1,#0x100
   9ba34:	58 10 80 b0 	ori $r1,$r1,#0xb0
   9ba38:	b4 01       	lwi450 $r0,[$r1]
   9ba3a:	9c c1       	addi333 $r3,$r0,#1
   9ba3c:	b6 61       	swi450 $r3,[$r1]
   9ba3e:	c8 06       	bnez38 $r0,9ba4a <DRV_Flash_PageProgram+0x16a>
   9ba40:	46 00 01 00 	sethi $r0,#0x100
   9ba44:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9ba48:	b6 40       	swi450 $r2,[$r0]
   9ba4a:	46 00 02 02 	sethi $r0,#0x202
   9ba4e:	58 00 00 00 	ori $r0,$r0,#0x0
   9ba52:	04 10 00 0a 	lwi $r1,[$r0+#0x28]
   9ba56:	46 00 01 00 	sethi $r0,#0x100
   9ba5a:	58 00 00 b0 	ori $r0,$r0,#0xb0
   9ba5e:	b4 40       	lwi450 $r2,[$r0]
   9ba60:	9e 91       	subi333 $r2,$r2,#1
   9ba62:	b6 40       	swi450 $r2,[$r0]
   9ba64:	b4 00       	lwi450 $r0,[$r0]
   9ba66:	c8 0c       	bnez38 $r0,9ba7e <DRV_Flash_PageProgram+0x19e>
   9ba68:	46 00 01 00 	sethi $r0,#0x100
   9ba6c:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9ba70:	b4 00       	lwi450 $r0,[$r0]
   9ba72:	96 04       	xlsb33 $r0,$r0
   9ba74:	c0 05       	beqz38 $r0,9ba7e <DRV_Flash_PageProgram+0x19e>
   9ba76:	64 12 00 43 	setgie.e
   9ba7a:	64 00 00 08 	dsb
   9ba7e:	96 08       	zeb33 $r0,$r1
   9ba80:	4c 60 40 04 	bne $r6,$r0,9ba88 <DRV_Flash_PageProgram+0x1a8>
   9ba84:	84 00       	movi55 $r0,#0
   9ba86:	d5 02       	j8 9ba8a <DRV_Flash_PageProgram+0x1aa>
   9ba88:	84 03       	movi55 $r0,#3
   9ba8a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009ba8c <Drv_Flash_BlockSectorErase>:
   9ba8c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9ba8e:	80 c0       	mov55 $r6,$r0
   9ba90:	97 c8       	zeb33 $r7,$r1
   9ba92:	49 ff fe 7d 	jal 9b78c <_MXIC_WB_Flash_WaitForReady>
   9ba96:	64 12 00 02 	mfsr $r1,$PSW
   9ba9a:	64 02 00 43 	setgie.d
   9ba9e:	64 00 00 08 	dsb
   9baa2:	46 30 01 00 	sethi $r3,#0x100
   9baa6:	58 31 80 b0 	ori $r3,$r3,#0xb0
   9baaa:	b4 43       	lwi450 $r2,[$r3]
   9baac:	9c 11       	addi333 $r0,$r2,#1
   9baae:	b6 03       	swi450 $r0,[$r3]
   9bab0:	ca 06       	bnez38 $r2,9babc <Drv_Flash_BlockSectorErase+0x30>
   9bab2:	46 00 01 00 	sethi $r0,#0x100
   9bab6:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9baba:	b6 20       	swi450 $r1,[$r0]
   9babc:	46 20 02 02 	sethi $r2,#0x202
   9bac0:	58 21 00 00 	ori $r2,$r2,#0x0
   9bac4:	b6 e2       	swi450 $r7,[$r2]
   9bac6:	a9 91       	swi333 $r6,[$r2+#0x4]
   9bac8:	49 ff fe 53 	jal 9b76e <SERIALFLASH_SetPatternAndStart>
   9bacc:	46 00 01 00 	sethi $r0,#0x100
   9bad0:	58 00 00 b0 	ori $r0,$r0,#0xb0
   9bad4:	b4 20       	lwi450 $r1,[$r0]
   9bad6:	9e 49       	subi333 $r1,$r1,#1
   9bad8:	b6 20       	swi450 $r1,[$r0]
   9bada:	b4 00       	lwi450 $r0,[$r0]
   9badc:	c8 0c       	bnez38 $r0,9baf4 <Drv_Flash_BlockSectorErase+0x68>
   9bade:	46 00 01 00 	sethi $r0,#0x100
   9bae2:	58 00 00 bc 	ori $r0,$r0,#0xbc
   9bae6:	b4 00       	lwi450 $r0,[$r0]
   9bae8:	96 04       	xlsb33 $r0,$r0
   9baea:	c0 05       	beqz38 $r0,9baf4 <Drv_Flash_BlockSectorErase+0x68>
   9baec:	64 12 00 43 	setgie.e
   9baf0:	64 00 00 08 	dsb
   9baf4:	49 ff 26 a3 	jal 8083a <DRV_MCU_ClearCache>
   9baf8:	49 ff fe 4a 	jal 9b78c <_MXIC_WB_Flash_WaitForReady>
   9bafc:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009bafe <DRV_Flash_Block_64KB_Erase>:
   9bafe:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9bb00:	84 26       	movi55 $r1,#6
   9bb02:	49 ff ff c5 	jal 9ba8c <Drv_Flash_BlockSectorErase>
   9bb06:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009bb08 <DRV_Flash_Block_32KB_Erase>:
   9bb08:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9bb0a:	84 25       	movi55 $r1,#5
   9bb0c:	49 ff ff c0 	jal 9ba8c <Drv_Flash_BlockSectorErase>
   9bb10:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009bb12 <DRV_Flash_SectorErase>:
   9bb12:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9bb14:	84 24       	movi55 $r1,#4
   9bb16:	49 ff ff bb 	jal 9ba8c <Drv_Flash_BlockSectorErase>
   9bb1a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009bb1c <DRV_Gpio_IntrHandler>:
   9bb1c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9bb1e:	46 00 02 05 	sethi $r0,#0x205
   9bb22:	58 00 00 00 	ori $r0,$r0,#0x0
   9bb26:	9c 04       	addi333 $r0,$r0,#4
   9bb28:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   9bb2a:	c1 14       	beqz38 $r1,9bb52 <DRV_Gpio_IntrHandler+0x36>
   9bb2c:	a1 87       	lwi333 $r6,[$r0+#0x1c]
   9bb2e:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   9bb30:	84 e0       	movi55 $r7,#0
   9bb32:	fe 77       	or33 $r1,$r6
   9bb34:	a8 47       	swi333 $r1,[$r0+#0x1c]
   9bb36:	3e 8f cf ec 	addi.gp $r8,#-12308
   9bb3a:	d5 0b       	j8 9bb50 <DRV_Gpio_IntrHandler+0x34>
   9bb3c:	96 34       	xlsb33 $r0,$r6
   9bb3e:	c0 06       	beqz38 $r0,9bb4a <DRV_Gpio_IntrHandler+0x2e>
   9bb40:	38 14 1e 02 	lw $r1,[$r8+($r7<<#0x2)]
   9bb44:	c1 03       	beqz38 $r1,9bb4a <DRV_Gpio_IntrHandler+0x2e>
   9bb46:	80 07       	mov55 $r0,$r7
   9bb48:	dd 21       	jral5 $r1
   9bb4a:	9d f9       	addi333 $r7,$r7,#1
   9bb4c:	97 f8       	zeb33 $r7,$r7
   9bb4e:	92 c1       	srli45 $r6,#1
   9bb50:	ce f6       	bnez38 $r6,9bb3c <DRV_Gpio_IntrHandler+0x20>
   9bb52:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009bb54 <DRV_Gpio_DirSet>:
   9bb54:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9bb56:	96 48       	zeb33 $r1,$r1
   9bb58:	46 20 02 04 	sethi $r2,#0x204
   9bb5c:	58 21 00 00 	ori $r2,$r2,#0x0
   9bb60:	50 21 00 28 	addi $r2,$r2,#40
   9bb64:	c1 04       	beqz38 $r1,9bb6c <DRV_Gpio_DirSet+0x18>
   9bb66:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   9bb68:	fe 0f       	or33 $r0,$r1
   9bb6a:	d5 04       	j8 9bb72 <DRV_Gpio_DirSet+0x1e>
   9bb6c:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   9bb6e:	fe 03       	not33 $r0,$r0
   9bb70:	fe 0e       	and33 $r0,$r1
   9bb72:	a8 17       	swi333 $r0,[$r2+#0x1c]
   9bb74:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009bb76 <DRV_Gpio_ValSet>:
   9bb76:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9bb78:	96 48       	zeb33 $r1,$r1
   9bb7a:	46 20 02 04 	sethi $r2,#0x204
   9bb7e:	58 21 00 00 	ori $r2,$r2,#0x0
   9bb82:	50 21 00 24 	addi $r2,$r2,#36
   9bb86:	c1 04       	beqz38 $r1,9bb8e <DRV_Gpio_ValSet+0x18>
   9bb88:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   9bb8a:	fe 0f       	or33 $r0,$r1
   9bb8c:	d5 04       	j8 9bb94 <DRV_Gpio_ValSet+0x1e>
   9bb8e:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   9bb90:	fe 03       	not33 $r0,$r0
   9bb92:	fe 0e       	and33 $r0,$r1
   9bb94:	a8 17       	swi333 $r0,[$r2+#0x1c]
   9bb96:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009bb98 <DRV_Gpio_PinValGet>:
   9bb98:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9bb9a:	46 f0 02 04 	sethi $r15,#0x204
   9bb9e:	04 17 80 10 	lwi $r1,[$r15+#0x40]
   9bba2:	84 41       	movi55 $r2,#1
   9bba4:	40 01 00 0c 	sll $r0,$r2,$r0
   9bba8:	fe 0e       	and33 $r0,$r1
   9bbaa:	84 20       	movi55 $r1,#0
   9bbac:	40 00 80 06 	slt $r0,$r1,$r0
   9bbb0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009bbb2 <DRV_Gpio_PullSet>:
   9bbb2:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9bbb4:	81 01       	mov55 $r8,$r1
   9bbb6:	97 81       	zeh33 $r6,$r0
   9bbb8:	40 70 40 09 	srli $r7,$r0,#16
   9bbbc:	c9 09       	bnez38 $r1,9bbce <DRV_Gpio_PullSet+0x1c>
   9bbbe:	44 00 00 45 	movi $r0,#69
   9bbc2:	80 26       	mov55 $r1,$r6
   9bbc4:	49 ff 27 19 	jal 809f6 <SYS_3WireBitWrite>
   9bbc8:	44 00 00 46 	movi $r0,#70
   9bbcc:	d5 15       	j8 9bbf6 <DRV_Gpio_PullSet+0x44>
   9bbce:	44 00 00 45 	movi $r0,#69
   9bbd2:	80 26       	mov55 $r1,$r6
   9bbd4:	97 f9       	zeh33 $r7,$r7
   9bbd6:	49 ff 27 1d 	jal 80a10 <SYS_3WireBitErase>
   9bbda:	44 00 00 46 	movi $r0,#70
   9bbde:	80 27       	mov55 $r1,$r7
   9bbe0:	49 ff 27 18 	jal 80a10 <SYS_3WireBitErase>
   9bbe4:	5a 88 02 0d 	bnec $r8,#2,9bbfe <DRV_Gpio_PullSet+0x4c>
   9bbe8:	44 00 00 33 	movi $r0,#51
   9bbec:	80 26       	mov55 $r1,$r6
   9bbee:	49 ff 27 04 	jal 809f6 <SYS_3WireBitWrite>
   9bbf2:	44 00 00 34 	movi $r0,#52
   9bbf6:	80 27       	mov55 $r1,$r7
   9bbf8:	49 ff 26 ff 	jal 809f6 <SYS_3WireBitWrite>
   9bbfc:	d5 0b       	j8 9bc12 <DRV_Gpio_PullSet+0x60>
   9bbfe:	44 00 00 33 	movi $r0,#51
   9bc02:	80 26       	mov55 $r1,$r6
   9bc04:	49 ff 27 06 	jal 80a10 <SYS_3WireBitErase>
   9bc08:	44 00 00 34 	movi $r0,#52
   9bc0c:	80 27       	mov55 $r1,$r7
   9bc0e:	49 ff 27 01 	jal 80a10 <SYS_3WireBitErase>
   9bc12:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009bc14 <DRV_Gpio_IntEn>:
   9bc14:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9bc16:	96 00       	zeb33 $r0,$r0
   9bc18:	e6 1e       	slti45 $r0,#30
   9bc1a:	e8 17       	beqzs8 9bc48 <DRV_Gpio_IntEn+0x34>
   9bc1c:	46 10 02 05 	sethi $r1,#0x205
   9bc20:	58 10 80 00 	ori $r1,$r1,#0x0
   9bc24:	04 20 80 08 	lwi $r2,[$r1+#0x20]
   9bc28:	84 61       	movi55 $r3,#1
   9bc2a:	40 01 80 0c 	sll $r0,$r3,$r0
   9bc2e:	fe 87       	or33 $r2,$r0
   9bc30:	14 20 80 08 	swi $r2,[$r1+#0x20]
   9bc34:	a0 8e       	lwi333 $r2,[$r1+#0x18]
   9bc36:	fe 17       	or33 $r0,$r2
   9bc38:	a8 0e       	swi333 $r0,[$r1+#0x18]
   9bc3a:	fa 03       	movpi45 $r0,#0x13
   9bc3c:	46 10 00 9b 	sethi $r1,#0x9b
   9bc40:	58 10 8b 1c 	ori $r1,$r1,#0xb1c
   9bc44:	49 ff 23 a0 	jal 80384 <SysIntrHandlerRegister>
   9bc48:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009bc4a <DRV_Gpio_IntReg>:
   9bc4a:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9bc4c:	97 80       	zeb33 $r6,$r0
   9bc4e:	81 41       	mov55 $r10,$r1
   9bc50:	81 22       	mov55 $r9,$r2
   9bc52:	e6 de       	slti45 $r6,#30
   9bc54:	e8 2d       	beqzs8 9bcae <DRV_Gpio_IntReg+0x64>
   9bc56:	40 83 08 09 	srli $r8,$r6,#2
   9bc5a:	50 84 00 4b 	addi $r8,$r8,#75
   9bc5e:	80 08       	mov55 $r0,$r8
   9bc60:	49 ff 26 2c 	jal 808b8 <SYS_3WireRead>
   9bc64:	94 f2       	slli333 $r3,$r6,#2
   9bc66:	54 31 80 0c 	andi $r3,$r3,#0xc
   9bc6a:	84 2f       	movi55 $r1,#15
   9bc6c:	40 10 8c 0c 	sll $r1,$r1,$r3
   9bc70:	fe 4b       	not33 $r1,$r1
   9bc72:	fe 0e       	and33 $r0,$r1
   9bc74:	58 15 00 08 	ori $r1,$r10,#0x8
   9bc78:	40 30 8c 0c 	sll $r3,$r1,$r3
   9bc7c:	40 11 80 04 	or $r1,$r3,$r0
   9bc80:	96 49       	zeh33 $r1,$r1
   9bc82:	80 08       	mov55 $r0,$r8
   9bc84:	84 e1       	movi55 $r7,#1
   9bc86:	49 ff 26 6b 	jal 8095c <SYS_3WireWrite>
   9bc8a:	40 73 98 0c 	sll $r7,$r7,$r6
   9bc8e:	40 03 c0 09 	srli $r0,$r7,#16
   9bc92:	c0 0b       	beqz38 $r0,9bca8 <DRV_Gpio_IntReg+0x5e>
   9bc94:	40 13 c0 09 	srli $r1,$r7,#16
   9bc98:	fa 1d       	movpi45 $r0,#0x2d
   9bc9a:	49 ff 26 ae 	jal 809f6 <SYS_3WireBitWrite>
   9bc9e:	3e 0f cf ec 	addi.gp $r0,#-12308
   9bca2:	38 90 1a 0a 	sw $r9,[$r0+($r6<<#0x2)]
   9bca6:	d5 04       	j8 9bcae <DRV_Gpio_IntReg+0x64>
   9bca8:	96 79       	zeh33 $r1,$r7
   9bcaa:	fa 1c       	movpi45 $r0,#0x2c
   9bcac:	d5 f7       	j8 9bc9a <DRV_Gpio_IntReg+0x50>
   9bcae:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009bcb0 <DRV_OdGpio_OeSet>:
   9bcb0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9bcb2:	96 48       	zeb33 $r1,$r1
   9bcb4:	96 00       	zeb33 $r0,$r0
   9bcb6:	46 20 02 04 	sethi $r2,#0x204
   9bcba:	58 21 00 00 	ori $r2,$r2,#0x0
   9bcbe:	50 21 00 30 	addi $r2,$r2,#48
   9bcc2:	c1 04       	beqz38 $r1,9bcca <DRV_OdGpio_OeSet+0x1a>
   9bcc4:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   9bcc6:	fe 0f       	or33 $r0,$r1
   9bcc8:	d5 04       	j8 9bcd0 <DRV_OdGpio_OeSet+0x20>
   9bcca:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   9bccc:	fe 03       	not33 $r0,$r0
   9bcce:	fe 0e       	and33 $r0,$r1
   9bcd0:	a8 17       	swi333 $r0,[$r2+#0x1c]
   9bcd2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009bcd4 <DRV_OdGpio_ValSet>:
   9bcd4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9bcd6:	96 48       	zeb33 $r1,$r1
   9bcd8:	96 00       	zeb33 $r0,$r0
   9bcda:	46 20 02 04 	sethi $r2,#0x204
   9bcde:	58 21 00 00 	ori $r2,$r2,#0x0
   9bce2:	50 21 00 2c 	addi $r2,$r2,#44
   9bce6:	c1 04       	beqz38 $r1,9bcee <DRV_OdGpio_ValSet+0x1a>
   9bce8:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   9bcea:	fe 0f       	or33 $r0,$r1
   9bcec:	d5 04       	j8 9bcf4 <DRV_OdGpio_ValSet+0x20>
   9bcee:	a0 57       	lwi333 $r1,[$r2+#0x1c]
   9bcf0:	fe 03       	not33 $r0,$r0
   9bcf2:	fe 0e       	and33 $r0,$r1
   9bcf4:	a8 17       	swi333 $r0,[$r2+#0x1c]
   9bcf6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009bcf8 <DRV_OdGpio_IeSet>:
   9bcf8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9bcfa:	96 00       	zeb33 $r0,$r0
   9bcfc:	96 88       	zeb33 $r2,$r1
   9bcfe:	94 43       	slli333 $r1,$r0,#3
   9bd00:	c2 06       	beqz38 $r2,9bd0c <DRV_OdGpio_IeSet+0x14>
   9bd02:	44 00 00 40 	movi $r0,#64
   9bd06:	49 ff 26 85 	jal 80a10 <SYS_3WireBitErase>
   9bd0a:	d5 05       	j8 9bd14 <DRV_OdGpio_IeSet+0x1c>
   9bd0c:	44 00 00 40 	movi $r0,#64
   9bd10:	49 ff 26 73 	jal 809f6 <SYS_3WireBitWrite>
   9bd14:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009bd16 <set_aio>:
   9bd16:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9bd18:	94 06       	slli333 $r0,$r0,#6
   9bd1a:	92 06       	srli45 $r0,#6
   9bd1c:	96 48       	zeb33 $r1,$r1
   9bd1e:	97 c1       	zeh33 $r7,$r0
   9bd20:	40 60 40 09 	srli $r6,$r0,#16
   9bd24:	c1 13       	beqz38 $r1,9bd4a <set_aio+0x34>
   9bd26:	44 00 00 37 	movi $r0,#55
   9bd2a:	49 ff 25 c7 	jal 808b8 <SYS_3WireRead>
   9bd2e:	40 10 1c 04 	or $r1,$r0,$r7
   9bd32:	96 49       	zeh33 $r1,$r1
   9bd34:	44 00 00 37 	movi $r0,#55
   9bd38:	49 ff 26 12 	jal 8095c <SYS_3WireWrite>
   9bd3c:	44 00 00 38 	movi $r0,#56
   9bd40:	49 ff 25 bc 	jal 808b8 <SYS_3WireRead>
   9bd44:	40 10 18 04 	or $r1,$r0,$r6
   9bd48:	d5 14       	j8 9bd70 <set_aio+0x5a>
   9bd4a:	44 00 00 37 	movi $r0,#55
   9bd4e:	49 ff 25 b5 	jal 808b8 <SYS_3WireRead>
   9bd52:	ff fb       	not33 $r7,$r7
   9bd54:	40 10 1c 02 	and $r1,$r0,$r7
   9bd58:	96 49       	zeh33 $r1,$r1
   9bd5a:	44 00 00 37 	movi $r0,#55
   9bd5e:	49 ff 25 ff 	jal 8095c <SYS_3WireWrite>
   9bd62:	44 00 00 38 	movi $r0,#56
   9bd66:	49 ff 25 a9 	jal 808b8 <SYS_3WireRead>
   9bd6a:	ff b3       	not33 $r6,$r6
   9bd6c:	40 10 18 02 	and $r1,$r0,$r6
   9bd70:	44 00 00 38 	movi $r0,#56
   9bd74:	96 49       	zeh33 $r1,$r1
   9bd76:	49 ff 25 f3 	jal 8095c <SYS_3WireWrite>
   9bd7a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009bd7c <DRV_PinMux_GrpSet>:
   9bd7c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9bd7e:	80 c1       	mov55 $r6,$r1
   9bd80:	46 10 00 9f 	sethi $r1,#0x9f
   9bd84:	58 10 87 b8 	ori $r1,$r1,#0x7b8
   9bd88:	38 70 9a 02 	lw $r7,[$r1+($r6<<#0x2)]
   9bd8c:	84 20       	movi55 $r1,#0
   9bd8e:	ff c6       	and33 $r7,$r0
   9bd90:	80 07       	mov55 $r0,$r7
   9bd92:	49 ff ff c2 	jal 9bd16 <set_aio>
   9bd96:	94 3a       	slli333 $r0,$r7,#2
   9bd98:	92 1c       	srli45 $r0,#28
   9bd9a:	c0 0c       	beqz38 $r0,9bdb2 <DRV_PinMux_GrpSet+0x36>
   9bd9c:	46 00 02 04 	sethi $r0,#0x204
   9bda0:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   9bda4:	54 23 00 07 	andi $r2,$r6,#0x7
   9bda8:	92 23       	srli45 $r1,#3
   9bdaa:	94 4b       	slli333 $r1,$r1,#3
   9bdac:	fe 57       	or33 $r1,$r2
   9bdae:	14 10 00 00 	swi $r1,[$r0+#0x0]
   9bdb2:	94 3e       	slli333 $r0,$r7,#6
   9bdb4:	92 1e       	srli45 $r0,#30
   9bdb6:	c0 0e       	beqz38 $r0,9bdd2 <DRV_PinMux_GrpSet+0x56>
   9bdb8:	46 00 02 04 	sethi $r0,#0x204
   9bdbc:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   9bdc0:	54 23 00 07 	andi $r2,$r6,#0x7
   9bdc4:	44 3f ff 8f 	movi $r3,#-113
   9bdc8:	94 94       	slli333 $r2,$r2,#4
   9bdca:	fe 5e       	and33 $r1,$r3
   9bdcc:	fe 57       	or33 $r1,$r2
   9bdce:	14 10 00 00 	swi $r1,[$r0+#0x0]
   9bdd2:	40 03 a0 08 	slli $r0,$r7,#8
   9bdd6:	92 1c       	srli45 $r0,#28
   9bdd8:	c0 0f       	beqz38 $r0,9bdf6 <DRV_PinMux_GrpSet+0x7a>
   9bdda:	46 00 02 04 	sethi $r0,#0x204
   9bdde:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   9bde2:	54 23 00 07 	andi $r2,$r6,#0x7
   9bde6:	44 3f f8 ff 	movi $r3,#-1793
   9bdea:	40 21 20 08 	slli $r2,$r2,#8
   9bdee:	fe 5e       	and33 $r1,$r3
   9bdf0:	fe 57       	or33 $r1,$r2
   9bdf2:	14 10 00 00 	swi $r1,[$r0+#0x0]
   9bdf6:	40 03 b0 08 	slli $r0,$r7,#12
   9bdfa:	92 1e       	srli45 $r0,#30
   9bdfc:	c0 0f       	beqz38 $r0,9be1a <DRV_PinMux_GrpSet+0x9e>
   9bdfe:	46 00 02 04 	sethi $r0,#0x204
   9be02:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   9be06:	54 23 00 07 	andi $r2,$r6,#0x7
   9be0a:	44 3f 8f ff 	movi $r3,#-28673
   9be0e:	40 21 30 08 	slli $r2,$r2,#12
   9be12:	fe 5e       	and33 $r1,$r3
   9be14:	fe 57       	or33 $r1,$r2
   9be16:	14 10 00 00 	swi $r1,[$r0+#0x0]
   9be1a:	40 03 b8 08 	slli $r0,$r7,#14
   9be1e:	92 1c       	srli45 $r0,#28
   9be20:	c0 0f       	beqz38 $r0,9be3e <DRV_PinMux_GrpSet+0xc2>
   9be22:	46 00 02 04 	sethi $r0,#0x204
   9be26:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   9be2a:	54 23 00 07 	andi $r2,$r6,#0x7
   9be2e:	44 38 ff ff 	movi $r3,#-458753
   9be32:	40 21 40 08 	slli $r2,$r2,#16
   9be36:	fe 5e       	and33 $r1,$r3
   9be38:	fe 57       	or33 $r1,$r2
   9be3a:	14 10 00 00 	swi $r1,[$r0+#0x0]
   9be3e:	54 03 b0 00 	andi $r0,$r7,#0x3000
   9be42:	c0 11       	beqz38 $r0,9be64 <DRV_PinMux_GrpSet+0xe8>
   9be44:	46 00 02 04 	sethi $r0,#0x204
   9be48:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   9be4c:	46 3f f8 ff 	sethi $r3,#0xff8ff
   9be50:	54 23 00 07 	andi $r2,$r6,#0x7
   9be54:	58 31 8f ff 	ori $r3,$r3,#0xfff
   9be58:	40 21 50 08 	slli $r2,$r2,#20
   9be5c:	fe 5e       	and33 $r1,$r3
   9be5e:	fe 57       	or33 $r1,$r2
   9be60:	14 10 00 00 	swi $r1,[$r0+#0x0]
   9be64:	54 03 80 0f 	andi $r0,$r7,#0xf
   9be68:	c0 11       	beqz38 $r0,9be8a <DRV_PinMux_GrpSet+0x10e>
   9be6a:	46 00 02 04 	sethi $r0,#0x204
   9be6e:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   9be72:	46 3f 8f ff 	sethi $r3,#0xf8fff
   9be76:	54 23 00 07 	andi $r2,$r6,#0x7
   9be7a:	58 31 8f ff 	ori $r3,$r3,#0xfff
   9be7e:	40 21 60 08 	slli $r2,$r2,#24
   9be82:	fe 5e       	and33 $r1,$r3
   9be84:	fe 57       	or33 $r1,$r2
   9be86:	14 10 00 00 	swi $r1,[$r0+#0x0]
   9be8a:	54 73 80 30 	andi $r7,$r7,#0x30
   9be8e:	c7 10       	beqz38 $r7,9beae <DRV_PinMux_GrpSet+0x132>
   9be90:	46 00 02 04 	sethi $r0,#0x204
   9be94:	97 97       	fexti33 $r6,#0x2
   9be96:	40 13 70 08 	slli $r1,$r6,#28
   9be9a:	46 28 ff ff 	sethi $r2,#0x8ffff
   9be9e:	04 60 00 00 	lwi $r6,[$r0+#0x0]
   9bea2:	58 21 0f ff 	ori $r2,$r2,#0xfff
   9bea6:	ff 96       	and33 $r6,$r2
   9bea8:	ff 8f       	or33 $r6,$r1
   9beaa:	14 60 00 00 	swi $r6,[$r0+#0x0]
   9beae:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009beb0 <DRV_PinMux_SigSet>:
   9beb0:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9beb2:	fd 30       	movd44 $r6,$r0
   9beb4:	84 20       	movi55 $r1,#0
   9beb6:	49 ff ff 30 	jal 9bd16 <set_aio>
   9beba:	80 06       	mov55 $r0,$r6
   9bebc:	84 20       	movi55 $r1,#0
   9bebe:	49 ff ff 5f 	jal 9bd7c <DRV_PinMux_GrpSet>
   9bec2:	5a 78 09 1e 	bnec $r7,#9,9befe <DRV_PinMux_SigSet+0x4e>
   9bec6:	84 00       	movi55 $r0,#0
   9bec8:	80 20       	mov55 $r1,$r0
   9beca:	84 41       	movi55 $r2,#1
   9becc:	40 41 00 0c 	sll $r4,$r2,$r0
   9bed0:	ff 36       	and33 $r4,$r6
   9bed2:	96 c0       	zeb33 $r3,$r0
   9bed4:	c4 02       	beqz38 $r4,9bed8 <DRV_PinMux_SigSet+0x28>
   9bed6:	80 23       	mov55 $r1,$r3
   9bed8:	9c 01       	addi333 $r0,$r0,#1
   9beda:	5a 08 1e f9 	bnec $r0,#30,9becc <DRV_PinMux_SigSet+0x1c>
   9bede:	46 f0 02 04 	sethi $r15,#0x204
   9bee2:	04 27 80 06 	lwi $r2,[$r15+#0x18]
   9bee6:	96 67       	fexti33 $r1,#0x4
   9bee8:	44 3f e0 ff 	movi $r3,#-7937
   9beec:	40 10 a0 08 	slli $r1,$r1,#8
   9bef0:	fe 9e       	and33 $r2,$r3
   9bef2:	fe 57       	or33 $r1,$r2
   9bef4:	46 f0 02 04 	sethi $r15,#0x204
   9bef8:	14 17 80 06 	swi $r1,[$r15+#0x18]
   9befc:	84 e0       	movi55 $r7,#0
   9befe:	84 60       	movi55 $r3,#0
   9bf00:	d5 1d       	j8 9bf3a <DRV_PinMux_SigSet+0x8a>
   9bf02:	94 1a       	slli333 $r0,$r3,#2
   9bf04:	46 50 02 04 	sethi $r5,#0x204
   9bf08:	58 52 80 00 	ori $r5,$r5,#0x0
   9bf0c:	96 b0       	zeb33 $r2,$r6
   9bf0e:	80 87       	mov55 $r4,$r7
   9bf10:	84 2f       	movi55 $r1,#15
   9bf12:	98 05       	add333 $r0,$r0,$r5
   9bf14:	d5 0f       	j8 9bf32 <DRV_PinMux_SigSet+0x82>
   9bf16:	97 54       	xlsb33 $r5,$r2
   9bf18:	c5 0a       	beqz38 $r5,9bf2c <DRV_PinMux_SigSet+0x7c>
   9bf1a:	a1 41       	lwi333 $r5,[$r0+#0x4]
   9bf1c:	40 80 84 05 	nor $r8,$r1,$r1
   9bf20:	40 54 14 02 	and $r5,$r8,$r5
   9bf24:	a9 41       	swi333 $r5,[$r0+#0x4]
   9bf26:	a1 41       	lwi333 $r5,[$r0+#0x4]
   9bf28:	ff 67       	or33 $r5,$r4
   9bf2a:	a9 41       	swi333 $r5,[$r0+#0x4]
   9bf2c:	92 41       	srli45 $r2,#1
   9bf2e:	94 4c       	slli333 $r1,$r1,#4
   9bf30:	95 24       	slli333 $r4,$r4,#4
   9bf32:	ca f2       	bnez38 $r2,9bf16 <DRV_PinMux_SigSet+0x66>
   9bf34:	9c d9       	addi333 $r3,$r3,#1
   9bf36:	96 d8       	zeb33 $r3,$r3
   9bf38:	92 c8       	srli45 $r6,#8
   9bf3a:	ce e4       	bnez38 $r6,9bf02 <DRV_PinMux_SigSet+0x52>
   9bf3c:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009bf3e <DRV_Pwr_EnterMode>:
   9bf3e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9bf40:	5a 00 02 15 	beqc $r0,#2,9bf6a <DRV_Pwr_EnterMode+0x2c>
   9bf44:	e6 03       	slti45 $r0,#3
   9bf46:	e8 04       	beqzs8 9bf4e <DRV_Pwr_EnterMode+0x10>
   9bf48:	5a 08 01 38 	bnec $r0,#1,9bfb8 <DRV_Pwr_EnterMode+0x7a>
   9bf4c:	d5 06       	j8 9bf58 <DRV_Pwr_EnterMode+0x1a>
   9bf4e:	5a 00 03 17 	beqc $r0,#3,9bf7c <DRV_Pwr_EnterMode+0x3e>
   9bf52:	5a 08 04 33 	bnec $r0,#4,9bfb8 <DRV_Pwr_EnterMode+0x7a>
   9bf56:	d5 22       	j8 9bf9a <DRV_Pwr_EnterMode+0x5c>
   9bf58:	46 00 02 05 	sethi $r0,#0x205
   9bf5c:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   9bf60:	58 10 80 40 	ori $r1,$r1,#0x40
   9bf64:	14 10 00 00 	swi $r1,[$r0+#0x0]
   9bf68:	d5 28       	j8 9bfb8 <DRV_Pwr_EnterMode+0x7a>
   9bf6a:	46 00 02 05 	sethi $r0,#0x205
   9bf6e:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   9bf72:	58 10 80 10 	ori $r1,$r1,#0x10
   9bf76:	14 10 00 00 	swi $r1,[$r0+#0x0]
   9bf7a:	d5 00       	j8 9bf7a <DRV_Pwr_EnterMode+0x3c>
   9bf7c:	44 00 00 3c 	movi $r0,#60
   9bf80:	44 10 08 00 	movi $r1,#2048
   9bf84:	49 ff 25 39 	jal 809f6 <SYS_3WireBitWrite>
   9bf88:	46 00 02 05 	sethi $r0,#0x205
   9bf8c:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   9bf90:	58 10 80 20 	ori $r1,$r1,#0x20
   9bf94:	14 10 00 00 	swi $r1,[$r0+#0x0]
   9bf98:	d5 00       	j8 9bf98 <DRV_Pwr_EnterMode+0x5a>
   9bf9a:	44 00 00 3c 	movi $r0,#60
   9bf9e:	44 10 10 00 	movi $r1,#4096
   9bfa2:	49 ff 25 2a 	jal 809f6 <SYS_3WireBitWrite>
   9bfa6:	46 00 02 05 	sethi $r0,#0x205
   9bfaa:	04 10 00 00 	lwi $r1,[$r0+#0x0]
   9bfae:	58 10 81 00 	ori $r1,$r1,#0x100
   9bfb2:	14 10 00 00 	swi $r1,[$r0+#0x0]
   9bfb6:	d5 00       	j8 9bfb6 <DRV_Pwr_EnterMode+0x78>
   9bfb8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009bfba <DRV_Pwr_BootFrom>:
   9bfba:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9bfbc:	46 10 02 05 	sethi $r1,#0x205
   9bfc0:	58 10 80 00 	ori $r1,$r1,#0x0
   9bfc4:	04 80 80 08 	lwi $r8,[$r1+#0x20]
   9bfc8:	80 c0       	mov55 $r6,$r0
   9bfca:	04 90 80 07 	lwi $r9,[$r1+#0x1c]
   9bfce:	04 a0 80 07 	lwi $r10,[$r1+#0x1c]
   9bfd2:	a1 cf       	lwi333 $r7,[$r1+#0x1c]
   9bfd4:	b4 01       	lwi450 $r0,[$r1]
   9bfd6:	93 21       	srli45 $r9,#1
   9bfd8:	58 00 00 01 	ori $r0,$r0,#0x1
   9bfdc:	b6 01       	swi450 $r0,[$r1]
   9bfde:	92 e2       	srli45 $r7,#2
   9bfe0:	04 00 80 08 	lwi $r0,[$r1+#0x20]
   9bfe4:	54 94 80 01 	andi $r9,$r9,#0x1
   9bfe8:	14 00 80 08 	swi $r0,[$r1+#0x20]
   9bfec:	54 a5 00 01 	andi $r10,$r10,#0x1
   9bff0:	a0 0f       	lwi333 $r0,[$r1+#0x1c]
   9bff2:	97 fc       	xlsb33 $r7,$r7
   9bff4:	a8 0f       	swi333 $r0,[$r1+#0x1c]
   9bff6:	04 00 80 0f 	lwi $r0,[$r1+#0x3c]
   9bffa:	96 04       	xlsb33 $r0,$r0
   9bffc:	c0 09       	beqz38 $r0,9c00e <DRV_Pwr_BootFrom+0x54>
   9bffe:	44 10 08 00 	movi $r1,#2048
   9c002:	44 00 00 3c 	movi $r0,#60
   9c006:	49 ff 25 05 	jal 80a10 <SYS_3WireBitErase>
   9c00a:	84 22       	movi55 $r1,#2
   9c00c:	d5 30       	j8 9c06c <DRV_Pwr_BootFrom+0xb2>
   9c00e:	04 00 80 0f 	lwi $r0,[$r1+#0x3c]
   9c012:	96 1e       	bmski33 $r0,#0x3
   9c014:	c0 09       	beqz38 $r0,9c026 <DRV_Pwr_BootFrom+0x6c>
   9c016:	44 10 10 00 	movi $r1,#4096
   9c01a:	44 00 00 3c 	movi $r0,#60
   9c01e:	49 ff 24 f9 	jal 80a10 <SYS_3WireBitErase>
   9c022:	84 23       	movi55 $r1,#3
   9c024:	d5 24       	j8 9c06c <DRV_Pwr_BootFrom+0xb2>
   9c026:	04 00 80 0f 	lwi $r0,[$r1+#0x3c]
   9c02a:	96 2e       	bmski33 $r0,#0x5
   9c02c:	c0 03       	beqz38 $r0,9c032 <DRV_Pwr_BootFrom+0x78>
   9c02e:	84 24       	movi55 $r1,#4
   9c030:	d5 1e       	j8 9c06c <DRV_Pwr_BootFrom+0xb2>
   9c032:	04 00 80 0f 	lwi $r0,[$r1+#0x3c]
   9c036:	96 26       	bmski33 $r0,#0x4
   9c038:	c0 07       	beqz38 $r0,9c046 <DRV_Pwr_BootFrom+0x8c>
   9c03a:	84 24       	movi55 $r1,#4
   9c03c:	fa 0d       	movpi45 $r0,#0x1d
   9c03e:	49 ff 24 e9 	jal 80a10 <SYS_3WireBitErase>
   9c042:	84 26       	movi55 $r1,#6
   9c044:	d5 14       	j8 9c06c <DRV_Pwr_BootFrom+0xb2>
   9c046:	04 00 80 0f 	lwi $r0,[$r1+#0x3c]
   9c04a:	96 0e       	bmski33 $r0,#0x1
   9c04c:	c0 07       	beqz38 $r0,9c05a <DRV_Pwr_BootFrom+0xa0>
   9c04e:	84 21       	movi55 $r1,#1
   9c050:	fa 0d       	movpi45 $r0,#0x1d
   9c052:	49 ff 24 df 	jal 80a10 <SYS_3WireBitErase>
   9c056:	84 25       	movi55 $r1,#5
   9c058:	d5 0a       	j8 9c06c <DRV_Pwr_BootFrom+0xb2>
   9c05a:	04 10 80 0f 	lwi $r1,[$r1+#0x3c]
   9c05e:	96 56       	bmski33 $r1,#0x2
   9c060:	c1 06       	beqz38 $r1,9c06c <DRV_Pwr_BootFrom+0xb2>
   9c062:	84 22       	movi55 $r1,#2
   9c064:	fa 0d       	movpi45 $r0,#0x1d
   9c066:	49 ff 24 d5 	jal 80a10 <SYS_3WireBitErase>
   9c06a:	84 21       	movi55 $r1,#1
   9c06c:	99 ff       	add333 $r7,$r7,$r7
   9c06e:	40 05 08 08 	slli $r0,$r10,#2
   9c072:	97 ce       	bmski33 $r7,#0x1
   9c074:	ff c7       	or33 $r7,$r0
   9c076:	40 73 a4 04 	or $r7,$r7,$r9
   9c07a:	80 06       	mov55 $r0,$r6
   9c07c:	b6 26       	swi450 $r1,[$r6]
   9c07e:	10 73 00 08 	sbi $r7,[$r6+#0x8]
   9c082:	14 83 00 01 	swi $r8,[$r6+#0x4]
   9c086:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009c088 <SPI1_InterruptHandler>:
   9c088:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c08a:	46 00 02 18 	sethi $r0,#0x218
   9c08e:	58 00 00 00 	ori $r0,$r0,#0x0
   9c092:	50 00 00 40 	addi $r0,$r0,#64
   9c096:	04 10 7f fb 	lwi $r1,[$r0+#-0x14]
   9c09a:	14 10 7f fb 	swi $r1,[$r0+#-0x14]
   9c09e:	96 4c       	xlsb33 $r1,$r1
   9c0a0:	c1 13       	beqz38 $r1,9c0c6 <SPI1_InterruptHandler+0x3e>
   9c0a2:	3c 5d f4 1c 	lwi.gp $r5,[+#-12176]
   9c0a6:	c5 10       	beqz38 $r5,9c0c6 <SPI1_InterruptHandler+0x3e>
   9c0a8:	84 40       	movi55 $r2,#0
   9c0aa:	3e 27 d0 64 	sbi.gp $r2,[+#-12188]
   9c0ae:	46 60 01 00 	sethi $r6,#0x100
   9c0b2:	a0 43       	lwi333 $r1,[$r0+#0xc]
   9c0b4:	a0 84       	lwi333 $r2,[$r0+#0x10]
   9c0b6:	a0 c6       	lwi333 $r3,[$r0+#0x18]
   9c0b8:	a1 07       	lwi333 $r4,[$r0+#0x1c]
   9c0ba:	84 00       	movi55 $r0,#0
   9c0bc:	fe 77       	or33 $r1,$r6
   9c0be:	96 91       	zeh33 $r2,$r2
   9c0c0:	fe f7       	or33 $r3,$r6
   9c0c2:	97 21       	zeh33 $r4,$r4
   9c0c4:	dd 25       	jral5 $r5
   9c0c6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c0c8 <SPI2_InterruptHandler>:
   9c0c8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c0ca:	46 00 02 19 	sethi $r0,#0x219
   9c0ce:	58 00 00 00 	ori $r0,$r0,#0x0
   9c0d2:	50 00 00 40 	addi $r0,$r0,#64
   9c0d6:	04 10 7f fb 	lwi $r1,[$r0+#-0x14]
   9c0da:	14 10 7f fb 	swi $r1,[$r0+#-0x14]
   9c0de:	96 4c       	xlsb33 $r1,$r1
   9c0e0:	c1 13       	beqz38 $r1,9c106 <SPI2_InterruptHandler+0x3e>
   9c0e2:	3c 5d f4 1d 	lwi.gp $r5,[+#-12172]
   9c0e6:	c5 10       	beqz38 $r5,9c106 <SPI2_InterruptHandler+0x3e>
   9c0e8:	84 40       	movi55 $r2,#0
   9c0ea:	3e 27 d0 65 	sbi.gp $r2,[+#-12187]
   9c0ee:	46 60 01 00 	sethi $r6,#0x100
   9c0f2:	a0 43       	lwi333 $r1,[$r0+#0xc]
   9c0f4:	a0 84       	lwi333 $r2,[$r0+#0x10]
   9c0f6:	a0 c6       	lwi333 $r3,[$r0+#0x18]
   9c0f8:	a1 07       	lwi333 $r4,[$r0+#0x1c]
   9c0fa:	84 01       	movi55 $r0,#1
   9c0fc:	fe 77       	or33 $r1,$r6
   9c0fe:	96 91       	zeh33 $r2,$r2
   9c100:	fe f7       	or33 $r3,$r6
   9c102:	97 21       	zeh33 $r4,$r4
   9c104:	dd 25       	jral5 $r5
   9c106:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c108 <DRV_SPI_Deinit>:
   9c108:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c10a:	c8 06       	bnez38 $r0,9c116 <DRV_SPI_Deinit+0xe>
   9c10c:	46 00 02 18 	sethi $r0,#0x218
   9c110:	58 00 00 00 	ori $r0,$r0,#0x0
   9c114:	d5 05       	j8 9c11e <DRV_SPI_Deinit+0x16>
   9c116:	46 00 02 19 	sethi $r0,#0x219
   9c11a:	58 00 00 00 	ori $r0,$r0,#0x0
   9c11e:	b4 20       	lwi450 $r1,[$r0]
   9c120:	92 21       	srli45 $r1,#1
   9c122:	94 49       	slli333 $r1,$r1,#1
   9c124:	b6 20       	swi450 $r1,[$r0]
   9c126:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c128 <DRV_SPI_WriteRead>:
   9c128:	fc 50       	push25 $r10,#0x80    ! {$r6~$r10, $fp, $gp, $lp}
   9c12a:	80 e0       	mov55 $r7,$r0
   9c12c:	81 41       	mov55 $r10,$r1
   9c12e:	81 23       	mov55 $r9,$r3
   9c130:	97 91       	zeh33 $r6,$r2
   9c132:	40 82 00 13 	zeh $r8,$r4
   9c136:	80 1f       	mov55 $r0,$sp
   9c138:	cf 06       	bnez38 $r7,9c144 <DRV_SPI_WriteRead+0x1c>
   9c13a:	46 10 02 18 	sethi $r1,#0x218
   9c13e:	58 10 80 00 	ori $r1,$r1,#0x0
   9c142:	d5 06       	j8 9c14e <DRV_SPI_WriteRead+0x26>
   9c144:	80 1f       	mov55 $r0,$sp
   9c146:	46 10 02 19 	sethi $r1,#0x219
   9c14a:	58 10 80 00 	ori $r1,$r1,#0x0
   9c14e:	44 20 00 80 	movi $r2,#128
   9c152:	49 ff 9f 7b 	jal 90048 <memcpy>
   9c156:	00 0f 80 30 	lbi $r0,[$sp+#0x30]
   9c15a:	96 04       	xlsb33 $r0,$r0
   9c15c:	c0 34       	beqz38 $r0,9c1c4 <DRV_SPI_WriteRead+0x9c>
   9c15e:	3e 0f d0 64 	addi.gp $r0,#-12188
   9c162:	38 10 1c 00 	lb $r1,[$r0+($r7<<#0x0)]
   9c166:	c9 2f       	bnez38 $r1,9c1c4 <DRV_SPI_WriteRead+0x9c>
   9c168:	84 21       	movi55 $r1,#1
   9c16a:	38 10 1c 08 	sb $r1,[$r0+($r7<<#0x0)]
   9c16e:	9d 71       	addi333 $r5,$r6,#1
   9c170:	50 44 00 01 	addi $r4,$r8,#1
   9c174:	40 23 30 08 	slli $r2,$r6,#12
   9c178:	92 4c       	srli45 $r2,#12
   9c17a:	cf 06       	bnez38 $r7,9c186 <DRV_SPI_WriteRead+0x5e>
   9c17c:	46 00 02 18 	sethi $r0,#0x218
   9c180:	58 00 00 00 	ori $r0,$r0,#0x0
   9c184:	d5 05       	j8 9c18e <DRV_SPI_WriteRead+0x66>
   9c186:	46 00 02 19 	sethi $r0,#0x219
   9c18a:	58 00 00 00 	ori $r0,$r0,#0x0
   9c18e:	14 a0 00 13 	swi $r10,[$r0+#0x4c]
   9c192:	14 90 00 16 	swi $r9,[$r0+#0x58]
   9c196:	14 60 00 14 	swi $r6,[$r0+#0x50]
   9c19a:	14 80 00 17 	swi $r8,[$r0+#0x5c]
   9c19e:	14 50 00 12 	swi $r5,[$r0+#0x48]
   9c1a2:	14 40 00 15 	swi $r4,[$r0+#0x54]
   9c1a6:	46 3f ff 00 	sethi $r3,#0xfff00
   9c1aa:	a0 45       	lwi333 $r1,[$r0+#0x14]
   9c1ac:	fe 5e       	and33 $r1,$r3
   9c1ae:	fe 8f       	or33 $r2,$r1
   9c1b0:	a8 85       	swi333 $r2,[$r0+#0x14]
   9c1b2:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   9c1b4:	fe 5e       	and33 $r1,$r3
   9c1b6:	a8 47       	swi333 $r1,[$r0+#0x1c]
   9c1b8:	b4 20       	lwi450 $r1,[$r0]
   9c1ba:	58 10 80 04 	ori $r1,$r1,#0x4
   9c1be:	b6 20       	swi450 $r1,[$r0]
   9c1c0:	84 01       	movi55 $r0,#1
   9c1c2:	d5 02       	j8 9c1c6 <DRV_SPI_WriteRead+0x9e>
   9c1c4:	84 00       	movi55 $r0,#0
   9c1c6:	fc d0       	pop25 $r10,#0x80    ! {$r6~$r10, $fp, $gp, $lp}

0009c1c8 <DRV_SPI_IsReady>:
   9c1c8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c1ca:	3e 1f d0 64 	addi.gp $r1,#-12188
   9c1ce:	38 00 80 00 	lb $r0,[$r1+($r0<<#0x0)]
   9c1d2:	56 00 00 01 	xori $r0,$r0,#0x1
   9c1d6:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c1d8 <DRV_SPI_ChangeDuplex>:
   9c1d8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c1da:	96 4c       	xlsb33 $r1,$r1
   9c1dc:	c8 06       	bnez38 $r0,9c1e8 <DRV_SPI_ChangeDuplex+0x10>
   9c1de:	46 00 02 18 	sethi $r0,#0x218
   9c1e2:	58 00 00 00 	ori $r0,$r0,#0x0
   9c1e6:	d5 05       	j8 9c1f0 <DRV_SPI_ChangeDuplex+0x18>
   9c1e8:	46 00 02 19 	sethi $r0,#0x219
   9c1ec:	58 00 00 00 	ori $r0,$r0,#0x0
   9c1f0:	a0 81       	lwi333 $r2,[$r0+#0x4]
   9c1f2:	44 3f ff 7f 	movi $r3,#-129
   9c1f6:	fe 9e       	and33 $r2,$r3
   9c1f8:	94 4f       	slli333 $r1,$r1,#7
   9c1fa:	fe 57       	or33 $r1,$r2
   9c1fc:	a8 41       	swi333 $r1,[$r0+#0x4]
   9c1fe:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c200 <DRV_SPI_Int>:
   9c200:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c202:	96 48       	zeb33 $r1,$r1
   9c204:	c8 18       	bnez38 $r0,9c234 <DRV_SPI_Int+0x34>
   9c206:	c1 0c       	beqz38 $r1,9c21e <DRV_SPI_Int+0x1e>
   9c208:	44 00 00 40 	movi $r0,#64
   9c20c:	64 f3 00 02 	mfsr $r15,$INT_MASK
   9c210:	40 f7 80 04 	or $r15,$r15,$r0
   9c214:	64 f3 00 03 	mtsr $r15,$INT_MASK
   9c218:	64 00 00 08 	dsb
   9c21c:	d5 21       	j8 9c25e <DRV_SPI_Int+0x5e>
   9c21e:	44 0f ff bf 	movi $r0,#-65
   9c222:	64 f3 00 02 	mfsr $r15,$INT_MASK
   9c226:	40 f7 80 02 	and $r15,$r15,$r0
   9c22a:	64 f3 00 03 	mtsr $r15,$INT_MASK
   9c22e:	64 00 00 08 	dsb
   9c232:	d5 16       	j8 9c25e <DRV_SPI_Int+0x5e>
   9c234:	c1 0b       	beqz38 $r1,9c24a <DRV_SPI_Int+0x4a>
   9c236:	fa 10       	movpi45 $r0,#0x20
   9c238:	64 f3 00 02 	mfsr $r15,$INT_MASK
   9c23c:	40 f7 80 04 	or $r15,$r15,$r0
   9c240:	64 f3 00 03 	mtsr $r15,$INT_MASK
   9c244:	64 00 00 08 	dsb
   9c248:	d5 0b       	j8 9c25e <DRV_SPI_Int+0x5e>
   9c24a:	44 0f ff df 	movi $r0,#-33
   9c24e:	64 f3 00 02 	mfsr $r15,$INT_MASK
   9c252:	40 f7 80 02 	and $r15,$r15,$r0
   9c256:	64 f3 00 03 	mtsr $r15,$INT_MASK
   9c25a:	64 00 00 08 	dsb
   9c25e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c260 <DRV_SPI_Init>:
   9c260:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9c262:	ee 80       	addi10.sp #-384
   9c264:	fd 30       	movd44 $r6,$r0
   9c266:	50 0f 81 00 	addi $r0,$sp,#256
   9c26a:	ce 06       	bnez38 $r6,9c276 <DRV_SPI_Init+0x16>
   9c26c:	46 10 02 18 	sethi $r1,#0x218
   9c270:	58 10 80 00 	ori $r1,$r1,#0x0
   9c274:	d5 05       	j8 9c27e <DRV_SPI_Init+0x1e>
   9c276:	46 10 02 19 	sethi $r1,#0x219
   9c27a:	58 10 80 00 	ori $r1,$r1,#0x0
   9c27e:	44 20 00 80 	movi $r2,#128
   9c282:	49 ff 9e e3 	jal 90048 <memcpy>
   9c286:	50 0f 81 00 	addi $r0,$sp,#256
   9c28a:	f2 41       	lwi37.sp $r2,[+#0x104]
   9c28c:	a6 38       	lbi333 $r0,[$r7+#0x0]
   9c28e:	96 c4       	xlsb33 $r3,$r0
   9c290:	92 42       	srli45 $r2,#2
   9c292:	94 92       	slli333 $r2,$r2,#2
   9c294:	fe 9f       	or33 $r2,$r3
   9c296:	54 10 00 02 	andi $r1,$r0,#0x2
   9c29a:	fe 8f       	or33 $r2,$r1
   9c29c:	84 33       	movi55 $r1,#-13
   9c29e:	54 30 00 04 	andi $r3,$r0,#0x4
   9c2a2:	fe 8e       	and33 $r2,$r1
   9c2a4:	fe 9f       	or33 $r2,$r3
   9c2a6:	54 10 00 08 	andi $r1,$r0,#0x8
   9c2aa:	fe 8f       	or33 $r2,$r1
   9c2ac:	44 3f ff 0f 	movi $r3,#-241
   9c2b0:	94 42       	slli333 $r1,$r0,#2
   9c2b2:	fe 9e       	and33 $r2,$r3
   9c2b4:	92 06       	srli45 $r0,#6
   9c2b6:	96 7e       	bmski33 $r1,#0x7
   9c2b8:	58 21 00 30 	ori $r2,$r2,#0x30
   9c2bc:	56 00 00 01 	xori $r0,$r0,#0x1
   9c2c0:	fe 8f       	or33 $r2,$r1
   9c2c2:	96 04       	xlsb33 $r0,$r0
   9c2c4:	44 1f 00 bf 	movi $r1,#-65345
   9c2c8:	40 00 20 08 	slli $r0,$r0,#8
   9c2cc:	fe 8e       	and33 $r2,$r1
   9c2ce:	fe 87       	or33 $r2,$r0
   9c2d0:	58 21 38 00 	ori $r2,$r2,#0x3800
   9c2d4:	b0 20       	addri36.sp $r0,#0x80
   9c2d6:	ce 06       	bnez38 $r6,9c2e2 <DRV_SPI_Init+0x82>
   9c2d8:	46 10 02 18 	sethi $r1,#0x218
   9c2dc:	58 10 80 00 	ori $r1,$r1,#0x0
   9c2e0:	d5 05       	j8 9c2ea <DRV_SPI_Init+0x8a>
   9c2e2:	46 10 02 19 	sethi $r1,#0x219
   9c2e6:	58 10 80 00 	ori $r1,$r1,#0x0
   9c2ea:	a8 89       	swi333 $r2,[$r1+#0x4]
   9c2ec:	44 20 00 80 	movi $r2,#128
   9c2f0:	49 ff 9e ac 	jal 90048 <memcpy>
   9c2f4:	b0 20       	addri36.sp $r0,#0x80
   9c2f6:	f0 22       	lwi37.sp $r0,[+#0x88]
   9c2f8:	3c 2d f0 2d 	lwi.gp $r2,[+#-16204]
   9c2fc:	a0 79       	lwi333 $r1,[$r7+#0x4]
   9c2fe:	40 21 04 77 	divr $r2,$r3,$r2,$r1
   9c302:	44 30 ff 00 	movi $r3,#65280
   9c306:	94 97       	slli333 $r2,$r2,#7
   9c308:	fe 9e       	and33 $r2,$r3
   9c30a:	92 10       	srli45 $r0,#16
   9c30c:	40 00 40 08 	slli $r0,$r0,#16
   9c310:	fe 17       	or33 $r0,$r2
   9c312:	3e 2f d0 68 	addi.gp $r2,#-12184
   9c316:	38 11 1a 0a 	sw $r1,[$r2+($r6<<#0x2)]
   9c31a:	ce 06       	bnez38 $r6,9c326 <DRV_SPI_Init+0xc6>
   9c31c:	46 10 02 18 	sethi $r1,#0x218
   9c320:	58 10 80 00 	ori $r1,$r1,#0x0
   9c324:	d5 05       	j8 9c32e <DRV_SPI_Init+0xce>
   9c326:	46 10 02 19 	sethi $r1,#0x219
   9c32a:	58 10 80 00 	ori $r1,$r1,#0x0
   9c32e:	a8 0a       	swi333 $r0,[$r1+#0x8]
   9c330:	84 41       	movi55 $r2,#1
   9c332:	80 1f       	mov55 $r0,$sp
   9c334:	ce 08       	bnez38 $r6,9c344 <DRV_SPI_Init+0xe4>
   9c336:	46 10 02 18 	sethi $r1,#0x218
   9c33a:	58 10 80 00 	ori $r1,$r1,#0x0
   9c33e:	14 20 80 0a 	swi $r2,[$r1+#0x28]
   9c342:	d5 07       	j8 9c350 <DRV_SPI_Init+0xf0>
   9c344:	46 10 02 19 	sethi $r1,#0x219
   9c348:	58 10 80 00 	ori $r1,$r1,#0x0
   9c34c:	14 20 80 0a 	swi $r2,[$r1+#0x28]
   9c350:	94 97       	slli333 $r2,$r2,#7
   9c352:	49 ff 9e 7b 	jal 90048 <memcpy>
   9c356:	b4 3f       	lwi450 $r1,[$sp]
   9c358:	44 0f f0 0f 	movi $r0,#-4081
   9c35c:	58 10 80 0b 	ori $r1,$r1,#0xb
   9c360:	fe 46       	and33 $r1,$r0
   9c362:	ce 1d       	bnez38 $r6,9c39c <DRV_SPI_Init+0x13c>
   9c364:	46 00 02 18 	sethi $r0,#0x218
   9c368:	58 00 00 00 	ori $r0,$r0,#0x0
   9c36c:	50 00 00 4c 	addi $r0,$r0,#76
   9c370:	14 10 7f ed 	swi $r1,[$r0+#-0x4c]
   9c374:	44 2f ff e3 	movi $r2,#-29
   9c378:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   9c37a:	44 3f ff 1f 	movi $r3,#-225
   9c37e:	fe 56       	and33 $r1,$r2
   9c380:	58 10 80 08 	ori $r1,$r1,#0x8
   9c384:	a8 47       	swi333 $r1,[$r0+#0x1c]
   9c386:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   9c388:	fe 5e       	and33 $r1,$r3
   9c38a:	58 10 80 40 	ori $r1,$r1,#0x40
   9c38e:	a8 47       	swi333 $r1,[$r0+#0x1c]
   9c390:	84 0f       	movi55 $r0,#15
   9c392:	46 10 00 9c 	sethi $r1,#0x9c
   9c396:	58 10 80 88 	ori $r1,$r1,#0x88
   9c39a:	d5 1c       	j8 9c3d2 <DRV_SPI_Init+0x172>
   9c39c:	46 00 02 19 	sethi $r0,#0x219
   9c3a0:	58 00 00 00 	ori $r0,$r0,#0x0
   9c3a4:	50 00 00 4c 	addi $r0,$r0,#76
   9c3a8:	14 10 7f ed 	swi $r1,[$r0+#-0x4c]
   9c3ac:	44 2f ff e3 	movi $r2,#-29
   9c3b0:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   9c3b2:	44 3f ff 1f 	movi $r3,#-225
   9c3b6:	fe 56       	and33 $r1,$r2
   9c3b8:	58 10 80 08 	ori $r1,$r1,#0x8
   9c3bc:	a8 47       	swi333 $r1,[$r0+#0x1c]
   9c3be:	a0 47       	lwi333 $r1,[$r0+#0x1c]
   9c3c0:	fe 5e       	and33 $r1,$r3
   9c3c2:	58 10 80 40 	ori $r1,$r1,#0x40
   9c3c6:	a8 47       	swi333 $r1,[$r0+#0x1c]
   9c3c8:	84 0e       	movi55 $r0,#14
   9c3ca:	46 10 00 9c 	sethi $r1,#0x9c
   9c3ce:	58 10 80 c8 	ori $r1,$r1,#0xc8
   9c3d2:	49 ff 1f d9 	jal 80384 <SysIntrHandlerRegister>
   9c3d6:	a1 fa       	lwi333 $r7,[$r7+#0x8]
   9c3d8:	3e 0f d0 70 	addi.gp $r0,#-12176
   9c3dc:	38 70 1a 0a 	sw $r7,[$r0+($r6<<#0x2)]
   9c3e0:	ed 80       	addi10.sp #384
   9c3e2:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009c3e4 <DRV_TMR16_PWM_Enable>:
   9c3e4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c3e6:	46 10 02 22 	sethi $r1,#0x222
   9c3ea:	58 10 80 00 	ori $r1,$r1,#0x0
   9c3ee:	96 01       	zeh33 $r0,$r0
   9c3f0:	a8 0b       	swi333 $r0,[$r1+#0xc]
   9c3f2:	a0 09       	lwi333 $r0,[$r1+#0x4]
   9c3f4:	58 00 00 01 	ori $r0,$r0,#0x1
   9c3f8:	a8 09       	swi333 $r0,[$r1+#0x4]
   9c3fa:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c3fc <DRV_TMR16_PWM>:
   9c3fc:	fc 22       	push25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}
   9c3fe:	3a 0f 8c 20 	smw.bi $r0,[$sp],$r3,#0x0    ! {$r0~$r3}
   9c402:	46 00 02 22 	sethi $r0,#0x222
   9c406:	58 00 00 00 	ori $r0,$r0,#0x0
   9c40a:	50 00 00 30 	addi $r0,$r0,#48
   9c40e:	02 2f 80 06 	lhi $r2,[$sp+#0xc]
   9c412:	02 1f 80 07 	lhi $r1,[$sp+#0xe]
   9c416:	02 8f 80 01 	lhi $r8,[$sp+#0x2]
   9c41a:	02 7f 80 02 	lhi $r7,[$sp+#0x4]
   9c41e:	02 6f 80 03 	lhi $r6,[$sp+#0x6]
   9c422:	02 5f 80 04 	lhi $r5,[$sp+#0x8]
   9c426:	02 3f 80 05 	lhi $r3,[$sp+#0xa]
   9c42a:	02 4f 80 00 	lhi $r4,[$sp+#0x0]
   9c42e:	14 40 7f fa 	swi $r4,[$r0+#-0x18]
   9c432:	14 80 00 04 	swi $r8,[$r0+#0x10]
   9c436:	14 70 7f fb 	swi $r7,[$r0+#-0x14]
   9c43a:	a9 85       	swi333 $r6,[$r0+#0x14]
   9c43c:	14 50 7f fc 	swi $r5,[$r0+#-0x10]
   9c440:	a8 c6       	swi333 $r3,[$r0+#0x18]
   9c442:	14 20 7f fd 	swi $r2,[$r0+#-0xc]
   9c446:	a8 47       	swi333 $r1,[$r0+#0x1c]
   9c448:	44 2f ff cf 	movi $r2,#-49
   9c44c:	a0 43       	lwi333 $r1,[$r0+#0xc]
   9c44e:	fe 56       	and33 $r1,$r2
   9c450:	58 10 80 20 	ori $r1,$r1,#0x20
   9c454:	a8 43       	swi333 $r1,[$r0+#0xc]
   9c456:	44 2c ff ff 	movi $r2,#-196609
   9c45a:	a0 43       	lwi333 $r1,[$r0+#0xc]
   9c45c:	fe 56       	and33 $r1,$r2
   9c45e:	44 21 00 00 	movi $r2,#65536
   9c462:	fe 57       	or33 $r1,$r2
   9c464:	a8 43       	swi333 $r1,[$r0+#0xc]
   9c466:	44 2f ff 3f 	movi $r2,#-193
   9c46a:	a0 43       	lwi333 $r1,[$r0+#0xc]
   9c46c:	fe 56       	and33 $r1,$r2
   9c46e:	58 10 80 80 	ori $r1,$r1,#0x80
   9c472:	a8 43       	swi333 $r1,[$r0+#0xc]
   9c474:	46 2f ff 3f 	sethi $r2,#0xfff3f
   9c478:	a0 43       	lwi333 $r1,[$r0+#0xc]
   9c47a:	58 21 0f ff 	ori $r2,$r2,#0xfff
   9c47e:	fe 56       	and33 $r1,$r2
   9c480:	44 24 00 00 	movi $r2,#262144
   9c484:	fe 57       	or33 $r1,$r2
   9c486:	a8 43       	swi333 $r1,[$r0+#0xc]
   9c488:	44 2f fc ff 	movi $r2,#-769
   9c48c:	a0 43       	lwi333 $r1,[$r0+#0xc]
   9c48e:	fe 56       	and33 $r1,$r2
   9c490:	58 10 82 00 	ori $r1,$r1,#0x200
   9c494:	a8 43       	swi333 $r1,[$r0+#0xc]
   9c496:	46 2f fc ff 	sethi $r2,#0xffcff
   9c49a:	a0 43       	lwi333 $r1,[$r0+#0xc]
   9c49c:	58 21 0f ff 	ori $r2,$r2,#0xfff
   9c4a0:	fe 56       	and33 $r1,$r2
   9c4a2:	46 20 01 00 	sethi $r2,#0x100
   9c4a6:	fe 57       	or33 $r1,$r2
   9c4a8:	a8 43       	swi333 $r1,[$r0+#0xc]
   9c4aa:	44 2f f3 ff 	movi $r2,#-3073
   9c4ae:	a0 43       	lwi333 $r1,[$r0+#0xc]
   9c4b0:	fe 56       	and33 $r1,$r2
   9c4b2:	58 10 88 00 	ori $r1,$r1,#0x800
   9c4b6:	a8 43       	swi333 $r1,[$r0+#0xc]
   9c4b8:	46 2f f3 ff 	sethi $r2,#0xff3ff
   9c4bc:	a0 43       	lwi333 $r1,[$r0+#0xc]
   9c4be:	58 21 0f ff 	ori $r2,$r2,#0xfff
   9c4c2:	fe 56       	and33 $r1,$r2
   9c4c4:	46 20 04 00 	sethi $r2,#0x400
   9c4c8:	fe 57       	or33 $r1,$r2
   9c4ca:	a8 43       	swi333 $r1,[$r0+#0xc]
   9c4cc:	46 20 40 00 	sethi $r2,#0x4000
   9c4d0:	04 10 7f f9 	lwi $r1,[$r0+#-0x1c]
   9c4d4:	fe 57       	or33 $r1,$r2
   9c4d6:	14 10 7f f9 	swi $r1,[$r0+#-0x1c]
   9c4da:	fc a2       	pop25 $r8,#0x10    ! {$r6~$r8, $fp, $gp, $lp}

0009c4dc <Timer32B0InterruptHandler>:
   9c4dc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c4de:	46 00 02 20 	sethi $r0,#0x220
   9c4e2:	58 00 00 00 	ori $r0,$r0,#0x0
   9c4e6:	b4 c0       	lwi450 $r6,[$r0]
   9c4e8:	b6 c0       	swi450 $r6,[$r0]
   9c4ea:	97 b0       	zeb33 $r6,$r6
   9c4ec:	96 74       	xlsb33 $r1,$r6
   9c4ee:	c1 14       	beqz38 $r1,9c516 <Timer32B0InterruptHandler+0x3a>
   9c4f0:	2e 17 d0 98 	lbi.gp $r1,[+#-12136]
   9c4f4:	c1 06       	beqz38 $r1,9c500 <Timer32B0InterruptHandler+0x24>
   9c4f6:	a0 45       	lwi333 $r1,[$r0+#0x14]
   9c4f8:	92 21       	srli45 $r1,#1
   9c4fa:	94 49       	slli333 $r1,$r1,#1
   9c4fc:	a8 45       	swi333 $r1,[$r0+#0x14]
   9c4fe:	d5 06       	j8 9c50a <Timer32B0InterruptHandler+0x2e>
   9c500:	a0 82       	lwi333 $r2,[$r0+#0x8]
   9c502:	3c 1d f4 27 	lwi.gp $r1,[+#-12132]
   9c506:	98 51       	add333 $r1,$r2,$r1
   9c508:	a8 46       	swi333 $r1,[$r0+#0x18]
   9c50a:	3c 1d f4 1e 	lwi.gp $r1,[+#-12168]
   9c50e:	c1 04       	beqz38 $r1,9c516 <Timer32B0InterruptHandler+0x3a>
   9c510:	3c 0d f4 22 	lwi.gp $r0,[+#-12152]
   9c514:	dd 21       	jral5 $r1
   9c516:	54 03 00 02 	andi $r0,$r6,#0x2
   9c51a:	c0 18       	beqz38 $r0,9c54a <Timer32B0InterruptHandler+0x6e>
   9c51c:	2e 17 d0 99 	lbi.gp $r1,[+#-12135]
   9c520:	46 00 02 20 	sethi $r0,#0x220
   9c524:	58 00 00 00 	ori $r0,$r0,#0x0
   9c528:	c1 06       	beqz38 $r1,9c534 <Timer32B0InterruptHandler+0x58>
   9c52a:	a0 45       	lwi333 $r1,[$r0+#0x14]
   9c52c:	84 57       	movi55 $r2,#-9
   9c52e:	fe 56       	and33 $r1,$r2
   9c530:	a8 45       	swi333 $r1,[$r0+#0x14]
   9c532:	d5 06       	j8 9c53e <Timer32B0InterruptHandler+0x62>
   9c534:	a0 82       	lwi333 $r2,[$r0+#0x8]
   9c536:	3c 1d f4 28 	lwi.gp $r1,[+#-12128]
   9c53a:	98 51       	add333 $r1,$r2,$r1
   9c53c:	a8 47       	swi333 $r1,[$r0+#0x1c]
   9c53e:	3c 1d f4 1f 	lwi.gp $r1,[+#-12164]
   9c542:	c1 04       	beqz38 $r1,9c54a <Timer32B0InterruptHandler+0x6e>
   9c544:	3c 0d f4 23 	lwi.gp $r0,[+#-12148]
   9c548:	dd 21       	jral5 $r1
   9c54a:	54 03 00 04 	andi $r0,$r6,#0x4
   9c54e:	c0 1a       	beqz38 $r0,9c582 <Timer32B0InterruptHandler+0xa6>
   9c550:	2e 17 d0 9a 	lbi.gp $r1,[+#-12134]
   9c554:	46 00 02 20 	sethi $r0,#0x220
   9c558:	58 00 00 00 	ori $r0,$r0,#0x0
   9c55c:	c1 07       	beqz38 $r1,9c56a <Timer32B0InterruptHandler+0x8e>
   9c55e:	a0 45       	lwi333 $r1,[$r0+#0x14]
   9c560:	44 2f ff bf 	movi $r2,#-65
   9c564:	fe 56       	and33 $r1,$r2
   9c566:	a8 45       	swi333 $r1,[$r0+#0x14]
   9c568:	d5 07       	j8 9c576 <Timer32B0InterruptHandler+0x9a>
   9c56a:	a0 82       	lwi333 $r2,[$r0+#0x8]
   9c56c:	3c 1d f4 29 	lwi.gp $r1,[+#-12124]
   9c570:	98 51       	add333 $r1,$r2,$r1
   9c572:	14 10 00 08 	swi $r1,[$r0+#0x20]
   9c576:	3c 1d f4 20 	lwi.gp $r1,[+#-12160]
   9c57a:	c1 04       	beqz38 $r1,9c582 <Timer32B0InterruptHandler+0xa6>
   9c57c:	3c 0d f4 24 	lwi.gp $r0,[+#-12144]
   9c580:	dd 21       	jral5 $r1
   9c582:	97 9e       	bmski33 $r6,#0x3
   9c584:	c6 1a       	beqz38 $r6,9c5b8 <Timer32B0InterruptHandler+0xdc>
   9c586:	2e 17 d0 9b 	lbi.gp $r1,[+#-12133]
   9c58a:	46 00 02 20 	sethi $r0,#0x220
   9c58e:	58 00 00 00 	ori $r0,$r0,#0x0
   9c592:	c1 07       	beqz38 $r1,9c5a0 <Timer32B0InterruptHandler+0xc4>
   9c594:	a0 45       	lwi333 $r1,[$r0+#0x14]
   9c596:	44 2f fd ff 	movi $r2,#-513
   9c59a:	fe 56       	and33 $r1,$r2
   9c59c:	a8 45       	swi333 $r1,[$r0+#0x14]
   9c59e:	d5 07       	j8 9c5ac <Timer32B0InterruptHandler+0xd0>
   9c5a0:	a0 82       	lwi333 $r2,[$r0+#0x8]
   9c5a2:	3c 1d f4 2a 	lwi.gp $r1,[+#-12120]
   9c5a6:	98 51       	add333 $r1,$r2,$r1
   9c5a8:	14 10 00 09 	swi $r1,[$r0+#0x24]
   9c5ac:	3c 1d f4 21 	lwi.gp $r1,[+#-12156]
   9c5b0:	c1 04       	beqz38 $r1,9c5b8 <Timer32B0InterruptHandler+0xdc>
   9c5b2:	3c 0d f4 25 	lwi.gp $r0,[+#-12140]
   9c5b6:	dd 21       	jral5 $r1
   9c5b8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c5ba <DRV_TMR32B0_NotifyEnable>:
   9c5ba:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9c5bc:	46 50 02 20 	sethi $r5,#0x220
   9c5c0:	58 52 80 00 	ori $r5,$r5,#0x0
   9c5c4:	a1 aa       	lwi333 $r6,[$r5+#0x8]
   9c5c6:	96 90       	zeb33 $r2,$r2
   9c5c8:	99 8e       	add333 $r6,$r1,$r6
   9c5ca:	c8 12       	bnez38 $r0,9c5ee <DRV_TMR32B0_NotifyEnable+0x34>
   9c5cc:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   9c5ce:	92 01       	srli45 $r0,#1
   9c5d0:	94 01       	slli333 $r0,$r0,#1
   9c5d2:	a8 2d       	swi333 $r0,[$r5+#0x14]
   9c5d4:	3c 4f f4 1e 	swi.gp $r4,[+#-12168]
   9c5d8:	3c 3f f4 22 	swi.gp $r3,[+#-12152]
   9c5dc:	3c 1f f4 27 	swi.gp $r1,[+#-12132]
   9c5e0:	3e 27 d0 98 	sbi.gp $r2,[+#-12136]
   9c5e4:	a9 ae       	swi333 $r6,[$r5+#0x18]
   9c5e6:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   9c5e8:	58 00 00 01 	ori $r0,$r0,#0x1
   9c5ec:	d5 3d       	j8 9c666 <DRV_TMR32B0_NotifyEnable+0xac>
   9c5ee:	5a 08 01 13 	bnec $r0,#1,9c614 <DRV_TMR32B0_NotifyEnable+0x5a>
   9c5f2:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   9c5f4:	84 f7       	movi55 $r7,#-9
   9c5f6:	fe 3e       	and33 $r0,$r7
   9c5f8:	a8 2d       	swi333 $r0,[$r5+#0x14]
   9c5fa:	3c 4f f4 1f 	swi.gp $r4,[+#-12164]
   9c5fe:	3c 3f f4 23 	swi.gp $r3,[+#-12148]
   9c602:	3c 1f f4 28 	swi.gp $r1,[+#-12128]
   9c606:	3e 27 d0 99 	sbi.gp $r2,[+#-12135]
   9c60a:	a9 af       	swi333 $r6,[$r5+#0x1c]
   9c60c:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   9c60e:	58 00 00 08 	ori $r0,$r0,#0x8
   9c612:	d5 2a       	j8 9c666 <DRV_TMR32B0_NotifyEnable+0xac>
   9c614:	5a 08 02 15 	bnec $r0,#2,9c63e <DRV_TMR32B0_NotifyEnable+0x84>
   9c618:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   9c61a:	44 7f ff bf 	movi $r7,#-65
   9c61e:	fe 3e       	and33 $r0,$r7
   9c620:	a8 2d       	swi333 $r0,[$r5+#0x14]
   9c622:	3c 4f f4 20 	swi.gp $r4,[+#-12160]
   9c626:	3c 3f f4 24 	swi.gp $r3,[+#-12144]
   9c62a:	3c 1f f4 29 	swi.gp $r1,[+#-12124]
   9c62e:	3e 27 d0 9a 	sbi.gp $r2,[+#-12134]
   9c632:	14 62 80 08 	swi $r6,[$r5+#0x20]
   9c636:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   9c638:	58 00 00 40 	ori $r0,$r0,#0x40
   9c63c:	d5 15       	j8 9c666 <DRV_TMR32B0_NotifyEnable+0xac>
   9c63e:	5a 08 03 15 	bnec $r0,#3,9c668 <DRV_TMR32B0_NotifyEnable+0xae>
   9c642:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   9c644:	44 7f fd ff 	movi $r7,#-513
   9c648:	fe 3e       	and33 $r0,$r7
   9c64a:	a8 2d       	swi333 $r0,[$r5+#0x14]
   9c64c:	3c 4f f4 21 	swi.gp $r4,[+#-12156]
   9c650:	3c 3f f4 25 	swi.gp $r3,[+#-12140]
   9c654:	3c 1f f4 2a 	swi.gp $r1,[+#-12120]
   9c658:	3e 27 d0 9b 	sbi.gp $r2,[+#-12133]
   9c65c:	14 62 80 09 	swi $r6,[$r5+#0x24]
   9c660:	a0 2d       	lwi333 $r0,[$r5+#0x14]
   9c662:	58 00 02 00 	ori $r0,$r0,#0x200
   9c666:	a8 2d       	swi333 $r0,[$r5+#0x14]
   9c668:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009c66a <DRV_TMR32B0_NotifyDisable>:
   9c66a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c66c:	c8 0f       	bnez38 $r0,9c68a <DRV_TMR32B0_NotifyDisable+0x20>
   9c66e:	46 10 02 20 	sethi $r1,#0x220
   9c672:	58 10 80 00 	ori $r1,$r1,#0x0
   9c676:	a8 0e       	swi333 $r0,[$r1+#0x18]
   9c678:	b4 01       	lwi450 $r0,[$r1]
   9c67a:	58 00 00 01 	ori $r0,$r0,#0x1
   9c67e:	b6 01       	swi450 $r0,[$r1]
   9c680:	a0 0d       	lwi333 $r0,[$r1+#0x14]
   9c682:	92 01       	srli45 $r0,#1
   9c684:	94 01       	slli333 $r0,$r0,#1
   9c686:	a8 0d       	swi333 $r0,[$r1+#0x14]
   9c688:	d5 33       	j8 9c6ee <DRV_TMR32B0_NotifyDisable+0x84>
   9c68a:	5a 08 01 0f 	bnec $r0,#1,9c6a8 <DRV_TMR32B0_NotifyDisable+0x3e>
   9c68e:	46 00 02 20 	sethi $r0,#0x220
   9c692:	58 00 00 00 	ori $r0,$r0,#0x0
   9c696:	84 20       	movi55 $r1,#0
   9c698:	a8 47       	swi333 $r1,[$r0+#0x1c]
   9c69a:	84 57       	movi55 $r2,#-9
   9c69c:	b4 20       	lwi450 $r1,[$r0]
   9c69e:	58 10 80 02 	ori $r1,$r1,#0x2
   9c6a2:	b6 20       	swi450 $r1,[$r0]
   9c6a4:	a0 45       	lwi333 $r1,[$r0+#0x14]
   9c6a6:	d5 22       	j8 9c6ea <DRV_TMR32B0_NotifyDisable+0x80>
   9c6a8:	5a 08 02 11 	bnec $r0,#2,9c6ca <DRV_TMR32B0_NotifyDisable+0x60>
   9c6ac:	46 00 02 20 	sethi $r0,#0x220
   9c6b0:	58 00 00 00 	ori $r0,$r0,#0x0
   9c6b4:	84 20       	movi55 $r1,#0
   9c6b6:	14 10 00 08 	swi $r1,[$r0+#0x20]
   9c6ba:	44 2f ff bf 	movi $r2,#-65
   9c6be:	b4 20       	lwi450 $r1,[$r0]
   9c6c0:	58 10 80 04 	ori $r1,$r1,#0x4
   9c6c4:	b6 20       	swi450 $r1,[$r0]
   9c6c6:	a0 45       	lwi333 $r1,[$r0+#0x14]
   9c6c8:	d5 11       	j8 9c6ea <DRV_TMR32B0_NotifyDisable+0x80>
   9c6ca:	5a 08 03 12 	bnec $r0,#3,9c6ee <DRV_TMR32B0_NotifyDisable+0x84>
   9c6ce:	46 00 02 20 	sethi $r0,#0x220
   9c6d2:	58 00 00 00 	ori $r0,$r0,#0x0
   9c6d6:	84 20       	movi55 $r1,#0
   9c6d8:	14 10 00 09 	swi $r1,[$r0+#0x24]
   9c6dc:	44 2f fd ff 	movi $r2,#-513
   9c6e0:	b4 20       	lwi450 $r1,[$r0]
   9c6e2:	58 10 80 08 	ori $r1,$r1,#0x8
   9c6e6:	b6 20       	swi450 $r1,[$r0]
   9c6e8:	a0 45       	lwi333 $r1,[$r0+#0x14]
   9c6ea:	fe 56       	and33 $r1,$r2
   9c6ec:	a8 45       	swi333 $r1,[$r0+#0x14]
   9c6ee:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c6f0 <DRV_TMR32B0_Enable>:
   9c6f0:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c6f2:	80 c0       	mov55 $r6,$r0
   9c6f4:	84 00       	movi55 $r0,#0
   9c6f6:	49 ff f8 24 	jal 9b73e <DRV_CLK_TMR0Sel>
   9c6fa:	46 10 02 20 	sethi $r1,#0x220
   9c6fe:	58 10 80 00 	ori $r1,$r1,#0x0
   9c702:	a9 8b       	swi333 $r6,[$r1+#0xc]
   9c704:	a0 09       	lwi333 $r0,[$r1+#0x4]
   9c706:	58 00 00 01 	ori $r0,$r0,#0x1
   9c70a:	a8 09       	swi333 $r0,[$r1+#0x4]
   9c70c:	84 0a       	movi55 $r0,#10
   9c70e:	46 10 00 9c 	sethi $r1,#0x9c
   9c712:	58 10 84 dc 	ori $r1,$r1,#0x4dc
   9c716:	49 ff 1e 37 	jal 80384 <SysIntrHandlerRegister>
   9c71a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c71c <DRV_Uart_SetBaud>:
   9c71c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c71e:	3c 2d f0 2d 	lwi.gp $r2,[+#-16204]
   9c722:	92 26       	srli45 $r1,#6
   9c724:	40 11 04 57 	divr $r1,$r2,$r2,$r1
   9c728:	40 30 c0 09 	srli $r3,$r1,#16
   9c72c:	40 20 a0 09 	srli $r2,$r1,#8
   9c730:	96 48       	zeb33 $r1,$r1
   9c732:	c8 2c       	bnez38 $r0,9c78a <DRV_Uart_SetBaud+0x6e>
   9c734:	96 d8       	zeb33 $r3,$r3
   9c736:	46 00 02 10 	sethi $r0,#0x210
   9c73a:	58 00 00 00 	ori $r0,$r0,#0x0
   9c73e:	ae c7       	sbi333 $r3,[$r0+#0x7]
   9c740:	96 90       	zeb33 $r2,$r2
   9c742:	5c f0 80 20 	slti $r15,$r1,#32
   9c746:	e8 02       	beqzs8 9c74a <DRV_Uart_SetBaud+0x2e>
   9c748:	d5 1c       	j8 9c780 <DRV_Uart_SetBaud+0x64>
   9c74a:	5c f0 80 60 	slti $r15,$r1,#96
   9c74e:	e8 07       	beqzs8 9c75c <DRV_Uart_SetBaud+0x40>
   9c750:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9c752:	92 22       	srli45 $r1,#2
   9c754:	94 4a       	slli333 $r1,$r1,#2
   9c756:	58 10 80 01 	ori $r1,$r1,#0x1
   9c75a:	d5 16       	j8 9c786 <DRV_Uart_SetBaud+0x6a>
   9c75c:	5c f0 80 a0 	slti $r15,$r1,#160
   9c760:	e8 07       	beqzs8 9c76e <DRV_Uart_SetBaud+0x52>
   9c762:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9c764:	92 22       	srli45 $r1,#2
   9c766:	94 4a       	slli333 $r1,$r1,#2
   9c768:	58 10 80 02 	ori $r1,$r1,#0x2
   9c76c:	d5 0d       	j8 9c786 <DRV_Uart_SetBaud+0x6a>
   9c76e:	5c f0 80 e0 	slti $r15,$r1,#224
   9c772:	e8 05       	beqzs8 9c77c <DRV_Uart_SetBaud+0x60>
   9c774:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9c776:	58 10 80 03 	ori $r1,$r1,#0x3
   9c77a:	d5 06       	j8 9c786 <DRV_Uart_SetBaud+0x6a>
   9c77c:	9c 91       	addi333 $r2,$r2,#1
   9c77e:	96 90       	zeb33 $r2,$r2
   9c780:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9c782:	92 22       	srli45 $r1,#2
   9c784:	94 4a       	slli333 $r1,$r1,#2
   9c786:	a8 41       	swi333 $r1,[$r0+#0x4]
   9c788:	d5 2b       	j8 9c7de <DRV_Uart_SetBaud+0xc2>
   9c78a:	96 d8       	zeb33 $r3,$r3
   9c78c:	46 00 02 11 	sethi $r0,#0x211
   9c790:	58 00 00 00 	ori $r0,$r0,#0x0
   9c794:	ae c7       	sbi333 $r3,[$r0+#0x7]
   9c796:	96 90       	zeb33 $r2,$r2
   9c798:	5c f0 80 20 	slti $r15,$r1,#32
   9c79c:	e8 02       	beqzs8 9c7a0 <DRV_Uart_SetBaud+0x84>
   9c79e:	d5 1c       	j8 9c7d6 <DRV_Uart_SetBaud+0xba>
   9c7a0:	5c f0 80 60 	slti $r15,$r1,#96
   9c7a4:	e8 07       	beqzs8 9c7b2 <DRV_Uart_SetBaud+0x96>
   9c7a6:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9c7a8:	92 22       	srli45 $r1,#2
   9c7aa:	94 4a       	slli333 $r1,$r1,#2
   9c7ac:	58 10 80 01 	ori $r1,$r1,#0x1
   9c7b0:	d5 16       	j8 9c7dc <DRV_Uart_SetBaud+0xc0>
   9c7b2:	5c f0 80 a0 	slti $r15,$r1,#160
   9c7b6:	e8 07       	beqzs8 9c7c4 <DRV_Uart_SetBaud+0xa8>
   9c7b8:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9c7ba:	92 22       	srli45 $r1,#2
   9c7bc:	94 4a       	slli333 $r1,$r1,#2
   9c7be:	58 10 80 02 	ori $r1,$r1,#0x2
   9c7c2:	d5 0d       	j8 9c7dc <DRV_Uart_SetBaud+0xc0>
   9c7c4:	5c f0 80 e0 	slti $r15,$r1,#224
   9c7c8:	e8 05       	beqzs8 9c7d2 <DRV_Uart_SetBaud+0xb6>
   9c7ca:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9c7cc:	58 10 80 03 	ori $r1,$r1,#0x3
   9c7d0:	d5 06       	j8 9c7dc <DRV_Uart_SetBaud+0xc0>
   9c7d2:	9c 91       	addi333 $r2,$r2,#1
   9c7d4:	96 90       	zeb33 $r2,$r2
   9c7d6:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9c7d8:	92 22       	srli45 $r1,#2
   9c7da:	94 4a       	slli333 $r1,$r1,#2
   9c7dc:	a8 41       	swi333 $r1,[$r0+#0x4]
   9c7de:	ae 86       	sbi333 $r2,[$r0+#0x6]
   9c7e0:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c7e2 <DRV_Uart_Recidue>:
   9c7e2:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c7e4:	84 2b       	movi55 $r1,#11
   9c7e6:	fe 0c       	mul33 $r0,$r1
   9c7e8:	3e 2f d0 d8 	addi.gp $r2,#-12072
   9c7ec:	98 42       	add333 $r1,$r0,$r2
   9c7ee:	8c 28       	addi45 $r1,#8
   9c7f0:	a6 89       	lbi333 $r2,[$r1+#0x1]
   9c7f2:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   9c7f4:	40 00 20 08 	slli $r0,$r0,#8
   9c7f8:	fe 17       	or33 $r0,$r2
   9c7fa:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c7fc <DRV_Uart_IntDis>:
   9c7fc:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c7fe:	c8 0c       	bnez38 $r0,9c816 <DRV_Uart_IntDis+0x1a>
   9c800:	44 0f ff 7f 	movi $r0,#-129
   9c804:	64 f3 00 02 	mfsr $r15,$INT_MASK
   9c808:	40 f7 80 02 	and $r15,$r15,$r0
   9c80c:	64 f3 00 03 	mtsr $r15,$INT_MASK
   9c810:	64 00 00 08 	dsb
   9c814:	d5 0d       	j8 9c82e <DRV_Uart_IntDis+0x32>
   9c816:	46 0f fb ff 	sethi $r0,#0xffbff
   9c81a:	58 00 0f ff 	ori $r0,$r0,#0xfff
   9c81e:	64 f3 00 02 	mfsr $r15,$INT_MASK
   9c822:	40 f7 80 02 	and $r15,$r15,$r0
   9c826:	64 f3 00 03 	mtsr $r15,$INT_MASK
   9c82a:	64 00 00 08 	dsb
   9c82e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c830 <DRV_Uart_IntEn>:
   9c830:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c832:	c8 0c       	bnez38 $r0,9c84a <DRV_Uart_IntEn+0x1a>
   9c834:	44 00 00 80 	movi $r0,#128
   9c838:	64 f3 00 02 	mfsr $r15,$INT_MASK
   9c83c:	40 f7 80 04 	or $r15,$r15,$r0
   9c840:	64 f3 00 03 	mtsr $r15,$INT_MASK
   9c844:	64 00 00 08 	dsb
   9c848:	d5 0b       	j8 9c85e <DRV_Uart_IntEn+0x2e>
   9c84a:	46 00 04 00 	sethi $r0,#0x400
   9c84e:	64 f3 00 02 	mfsr $r15,$INT_MASK
   9c852:	40 f7 80 04 	or $r15,$r15,$r0
   9c856:	64 f3 00 03 	mtsr $r15,$INT_MASK
   9c85a:	64 00 00 08 	dsb
   9c85e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c860 <DRV_Uart_Flush>:
   9c860:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9c862:	c8 44       	bnez38 $r0,9c8ea <DRV_Uart_Flush+0x8a>
   9c864:	44 0f ff 7f 	movi $r0,#-129
   9c868:	64 f3 00 02 	mfsr $r15,$INT_MASK
   9c86c:	40 f7 80 02 	and $r15,$r15,$r0
   9c870:	64 f3 00 03 	mtsr $r15,$INT_MASK
   9c874:	64 00 00 08 	dsb
   9c878:	46 00 02 10 	sethi $r0,#0x210
   9c87c:	58 00 00 00 	ori $r0,$r0,#0x0
   9c880:	04 20 00 0b 	lwi $r2,[$r0+#0x2c]
   9c884:	46 10 02 10 	sethi $r1,#0x210
   9c888:	58 10 80 00 	ori $r1,$r1,#0x0
   9c88c:	96 b6       	bmski33 $r2,#0x6
   9c88e:	c2 f9       	beqz38 $r2,9c880 <DRV_Uart_Flush+0x20>
   9c890:	04 00 80 0a 	lwi $r0,[$r1+#0x28]
   9c894:	96 0e       	bmski33 $r0,#0x1
   9c896:	c0 1f       	beqz38 $r0,9c8d4 <DRV_Uart_Flush+0x74>
   9c898:	84 02       	movi55 $r0,#2
   9c89a:	14 00 80 0a 	swi $r0,[$r1+#0x28]
   9c89e:	3e 0f d0 d8 	addi.gp $r0,#-12072
   9c8a2:	b4 20       	lwi450 $r1,[$r0]
   9c8a4:	84 5e       	movi55 $r2,#-2
   9c8a6:	fe 56       	and33 $r1,$r2
   9c8a8:	b6 20       	swi450 $r1,[$r0]
   9c8aa:	3e 0f d0 ac 	addi.gp $r0,#-12116
   9c8ae:	b4 20       	lwi450 $r1,[$r0]
   9c8b0:	c1 03       	beqz38 $r1,9c8b6 <DRV_Uart_Flush+0x56>
   9c8b2:	84 00       	movi55 $r0,#0
   9c8b4:	dd 21       	jral5 $r1
   9c8b6:	46 00 02 10 	sethi $r0,#0x210
   9c8ba:	58 00 00 00 	ori $r0,$r0,#0x0
   9c8be:	04 10 00 0b 	lwi $r1,[$r0+#0x2c]
   9c8c2:	96 76       	bmski33 $r1,#0x6
   9c8c4:	c9 03       	bnez38 $r1,9c8ca <DRV_Uart_Flush+0x6a>
   9c8c6:	84 01       	movi55 $r0,#1
   9c8c8:	d5 05       	j8 9c8d2 <DRV_Uart_Flush+0x72>
   9c8ca:	04 00 00 0a 	lwi $r0,[$r0+#0x28]
   9c8ce:	92 01       	srli45 $r0,#1
   9c8d0:	96 04       	xlsb33 $r0,$r0
   9c8d2:	96 00       	zeb33 $r0,$r0
   9c8d4:	44 10 00 80 	movi $r1,#128
   9c8d8:	64 f3 00 02 	mfsr $r15,$INT_MASK
   9c8dc:	40 f7 84 04 	or $r15,$r15,$r1
   9c8e0:	64 f3 00 03 	mtsr $r15,$INT_MASK
   9c8e4:	64 00 00 08 	dsb
   9c8e8:	d5 48       	j8 9c978 <DRV_Uart_Flush+0x118>
   9c8ea:	46 0f fb ff 	sethi $r0,#0xffbff
   9c8ee:	58 00 0f ff 	ori $r0,$r0,#0xfff
   9c8f2:	64 f3 00 02 	mfsr $r15,$INT_MASK
   9c8f6:	40 f7 80 02 	and $r15,$r15,$r0
   9c8fa:	64 f3 00 03 	mtsr $r15,$INT_MASK
   9c8fe:	64 00 00 08 	dsb
   9c902:	46 00 02 11 	sethi $r0,#0x211
   9c906:	58 00 00 00 	ori $r0,$r0,#0x0
   9c90a:	04 20 00 0b 	lwi $r2,[$r0+#0x2c]
   9c90e:	46 10 02 11 	sethi $r1,#0x211
   9c912:	58 10 80 00 	ori $r1,$r1,#0x0
   9c916:	96 b6       	bmski33 $r2,#0x6
   9c918:	c2 f9       	beqz38 $r2,9c90a <DRV_Uart_Flush+0xaa>
   9c91a:	04 00 80 0a 	lwi $r0,[$r1+#0x28]
   9c91e:	96 0e       	bmski33 $r0,#0x1
   9c920:	c0 22       	beqz38 $r0,9c964 <DRV_Uart_Flush+0x104>
   9c922:	84 02       	movi55 $r0,#2
   9c924:	14 00 80 0a 	swi $r0,[$r1+#0x28]
   9c928:	3e 0f d0 d8 	addi.gp $r0,#-12072
   9c92c:	a0 42       	lwi333 $r1,[$r0+#0x8]
   9c92e:	46 2f ef ff 	sethi $r2,#0xfefff
   9c932:	58 21 0f ff 	ori $r2,$r2,#0xfff
   9c936:	fe 56       	and33 $r1,$r2
   9c938:	a8 42       	swi333 $r1,[$r0+#0x8]
   9c93a:	3e 0f d0 ac 	addi.gp $r0,#-12116
   9c93e:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9c940:	c1 03       	beqz38 $r1,9c946 <DRV_Uart_Flush+0xe6>
   9c942:	84 00       	movi55 $r0,#0
   9c944:	dd 21       	jral5 $r1
   9c946:	46 00 02 11 	sethi $r0,#0x211
   9c94a:	58 00 00 00 	ori $r0,$r0,#0x0
   9c94e:	04 10 00 0b 	lwi $r1,[$r0+#0x2c]
   9c952:	96 76       	bmski33 $r1,#0x6
   9c954:	c9 03       	bnez38 $r1,9c95a <DRV_Uart_Flush+0xfa>
   9c956:	84 01       	movi55 $r0,#1
   9c958:	d5 05       	j8 9c962 <DRV_Uart_Flush+0x102>
   9c95a:	04 00 00 0a 	lwi $r0,[$r0+#0x28]
   9c95e:	92 01       	srli45 $r0,#1
   9c960:	96 04       	xlsb33 $r0,$r0
   9c962:	96 00       	zeb33 $r0,$r0
   9c964:	46 10 04 00 	sethi $r1,#0x400
   9c968:	64 f3 00 02 	mfsr $r15,$INT_MASK
   9c96c:	40 f7 84 04 	or $r15,$r15,$r1
   9c970:	64 f3 00 03 	mtsr $r15,$INT_MASK
   9c974:	64 00 00 08 	dsb
   9c978:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009c97a <DRV_Uart_Write>:
   9c97a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9c97c:	80 c0       	mov55 $r6,$r0
   9c97e:	84 0b       	movi55 $r0,#11
   9c980:	3e 4f d0 d8 	addi.gp $r4,#-12072
   9c984:	fe 34       	mul33 $r0,$r6
   9c986:	98 04       	add333 $r0,$r0,$r4
   9c988:	a7 00       	lbi333 $r4,[$r0+#0x0]
   9c98a:	96 91       	zeh33 $r2,$r2
   9c98c:	97 24       	xlsb33 $r4,$r4
   9c98e:	c4 03       	beqz38 $r4,9c994 <DRV_Uart_Write+0x1a>
   9c990:	84 00       	movi55 $r0,#0
   9c992:	d5 57       	j8 9ca40 <DRV_Uart_Write+0xc6>
   9c994:	a7 00       	lbi333 $r4,[$r0+#0x0]
   9c996:	3e 7f d0 b4 	addi.gp $r7,#-12108
   9c99a:	58 42 00 01 	ori $r4,$r4,#0x1
   9c99e:	af 00       	sbi333 $r4,[$r0+#0x0]
   9c9a0:	54 81 3f ff 	andi $r8,$r2,#0x3fff
   9c9a4:	38 03 9a 02 	lw $r0,[$r7+($r6<<#0x2)]
   9c9a8:	c0 21       	beqz38 $r0,9c9ea <DRV_Uart_Write+0x70>
   9c9aa:	49 ff 9b 4f 	jal 90048 <memcpy>
   9c9ae:	ce 0f       	bnez38 $r6,9c9cc <DRV_Uart_Write+0x52>
   9c9b0:	b4 47       	lwi450 $r2,[$r7]
   9c9b2:	40 21 30 08 	slli $r2,$r2,#12
   9c9b6:	92 4c       	srli45 $r2,#12
   9c9b8:	46 00 02 10 	sethi $r0,#0x210
   9c9bc:	58 00 00 00 	ori $r0,$r0,#0x0
   9c9c0:	04 10 00 08 	lwi $r1,[$r0+#0x20]
   9c9c4:	92 34       	srli45 $r1,#20
   9c9c6:	40 10 d0 08 	slli $r1,$r1,#20
   9c9ca:	d5 1d       	j8 9ca04 <DRV_Uart_Write+0x8a>
   9c9cc:	46 00 02 11 	sethi $r0,#0x211
   9c9d0:	58 00 00 00 	ori $r0,$r0,#0x0
   9c9d4:	38 23 9a 02 	lw $r2,[$r7+($r6<<#0x2)]
   9c9d8:	04 10 00 08 	lwi $r1,[$r0+#0x20]
   9c9dc:	40 21 30 08 	slli $r2,$r2,#12
   9c9e0:	92 4c       	srli45 $r2,#12
   9c9e2:	92 34       	srli45 $r1,#20
   9c9e4:	40 10 d0 08 	slli $r1,$r1,#20
   9c9e8:	d5 1b       	j8 9ca1e <DRV_Uart_Write+0xa4>
   9c9ea:	40 10 b0 08 	slli $r1,$r1,#12
   9c9ee:	92 2c       	srli45 $r1,#12
   9c9f0:	ce 0e       	bnez38 $r6,9ca0c <DRV_Uart_Write+0x92>
   9c9f2:	46 00 02 10 	sethi $r0,#0x210
   9c9f6:	58 00 00 00 	ori $r0,$r0,#0x0
   9c9fa:	04 20 00 08 	lwi $r2,[$r0+#0x20]
   9c9fe:	92 54       	srli45 $r2,#20
   9ca00:	40 21 50 08 	slli $r2,$r2,#20
   9ca04:	fe 57       	or33 $r1,$r2
   9ca06:	14 10 00 08 	swi $r1,[$r0+#0x20]
   9ca0a:	d5 1c       	j8 9ca42 <DRV_Uart_Write+0xc8>
   9ca0c:	46 00 02 11 	sethi $r0,#0x211
   9ca10:	58 00 00 00 	ori $r0,$r0,#0x0
   9ca14:	04 20 00 08 	lwi $r2,[$r0+#0x20]
   9ca18:	92 54       	srli45 $r2,#20
   9ca1a:	40 21 50 08 	slli $r2,$r2,#20
   9ca1e:	fe 57       	or33 $r1,$r2
   9ca20:	14 10 00 08 	swi $r1,[$r0+#0x20]
   9ca24:	46 00 02 11 	sethi $r0,#0x211
   9ca28:	58 00 00 00 	ori $r0,$r0,#0x0
   9ca2c:	04 10 00 09 	lwi $r1,[$r0+#0x24]
   9ca30:	92 2e       	srli45 $r1,#14
   9ca32:	40 10 b8 08 	slli $r1,$r1,#14
   9ca36:	40 80 a0 04 	or $r8,$r1,$r8
   9ca3a:	14 80 00 09 	swi $r8,[$r0+#0x24]
   9ca3e:	84 01       	movi55 $r0,#1
   9ca40:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9ca42:	46 00 02 10 	sethi $r0,#0x210
   9ca46:	58 00 00 00 	ori $r0,$r0,#0x0
   9ca4a:	04 10 00 09 	lwi $r1,[$r0+#0x24]
   9ca4e:	92 2e       	srli45 $r1,#14
   9ca50:	40 10 b8 08 	slli $r1,$r1,#14
   9ca54:	d5 f1       	j8 9ca36 <DRV_Uart_Write+0xbc>

0009ca56 <DRV_Uart_Read>:
   9ca56:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9ca58:	40 81 00 13 	zeh $r8,$r2
   9ca5c:	80 c0       	mov55 $r6,$r0
   9ca5e:	81 41       	mov55 $r10,$r1
   9ca60:	4e 82 00 7c 	beqz $r8,9cb58 <DRV_Uart_Read+0x102>
   9ca64:	84 4b       	movi55 $r2,#11
   9ca66:	fe 84       	mul33 $r2,$r0
   9ca68:	3e 0f d0 d8 	addi.gp $r0,#-12072
   9ca6c:	98 90       	add333 $r2,$r2,$r0
   9ca6e:	a7 15       	lbi333 $r4,[$r2+#0x5]
   9ca70:	a6 d6       	lbi333 $r3,[$r2+#0x6]
   9ca72:	a6 17       	lbi333 $r0,[$r2+#0x7]
   9ca74:	40 31 a0 08 	slli $r3,$r3,#8
   9ca78:	00 11 00 08 	lbi $r1,[$r2+#0x8]
   9ca7c:	fe e7       	or33 $r3,$r4
   9ca7e:	40 00 40 08 	slli $r0,$r0,#16
   9ca82:	fe 1f       	or33 $r0,$r3
   9ca84:	40 10 e0 08 	slli $r1,$r1,#24
   9ca88:	fe 47       	or33 $r1,$r0
   9ca8a:	3e 9f d0 bc 	addi.gp $r9,#-12100
   9ca8e:	3e 0f d0 c4 	addi.gp $r0,#-12092
   9ca92:	38 00 19 01 	lh $r0,[$r0+($r6<<#0x1)]
   9ca96:	39 c4 9a 02 	lw $fp,[$r9+($r6<<#0x2)]
   9ca9a:	40 70 a0 00 	add $r7,$r1,$r8
   9ca9e:	41 ce 00 00 	add $fp,$fp,$r0
   9caa2:	e2 fc       	slt45 $r7,$fp
   9caa4:	e9 17       	bnezs8 9cad2 <DRV_Uart_Read+0x7c>
   9caa6:	41 ce 04 01 	sub $fp,$fp,$r1
   9caaa:	41 ce 00 13 	zeh $fp,$fp
   9caae:	80 5c       	mov55 $r2,$fp
   9cab0:	80 0a       	mov55 $r0,$r10
   9cab2:	40 74 70 01 	sub $r7,$r8,$fp
   9cab6:	49 ff 9a c9 	jal 90048 <memcpy>
   9caba:	97 f9       	zeh33 $r7,$r7
   9cabc:	38 14 9a 02 	lw $r1,[$r9+($r6<<#0x2)]
   9cac0:	80 47       	mov55 $r2,$r7
   9cac2:	40 05 70 00 	add $r0,$r10,$fp
   9cac6:	49 ff 9a c1 	jal 90048 <memcpy>
   9caca:	38 04 9a 02 	lw $r0,[$r9+($r6<<#0x2)]
   9cace:	99 c7       	add333 $r7,$r0,$r7
   9cad0:	d5 05       	j8 9cada <DRV_Uart_Read+0x84>
   9cad2:	80 0a       	mov55 $r0,$r10
   9cad4:	80 48       	mov55 $r2,$r8
   9cad6:	49 ff 9a b9 	jal 90048 <memcpy>
   9cada:	84 2b       	movi55 $r1,#11
   9cadc:	3e 2f d0 d8 	addi.gp $r2,#-12072
   9cae0:	fe 74       	mul33 $r1,$r6
   9cae2:	98 4a       	add333 $r1,$r1,$r2
   9cae4:	96 38       	zeb33 $r0,$r7
   9cae6:	a6 8d       	lbi333 $r2,[$r1+#0x5]
   9cae8:	ae 0d       	sbi333 $r0,[$r1+#0x5]
   9caea:	40 03 a0 09 	srli $r0,$r7,#8
   9caee:	96 00       	zeb33 $r0,$r0
   9caf0:	a6 8e       	lbi333 $r2,[$r1+#0x6]
   9caf2:	ae 0e       	sbi333 $r0,[$r1+#0x6]
   9caf4:	40 03 c0 09 	srli $r0,$r7,#16
   9caf8:	96 00       	zeb33 $r0,$r0
   9cafa:	a6 8f       	lbi333 $r2,[$r1+#0x7]
   9cafc:	ae 0f       	sbi333 $r0,[$r1+#0x7]
   9cafe:	40 03 e0 09 	srli $r0,$r7,#24
   9cb02:	00 20 80 08 	lbi $r2,[$r1+#0x8]
   9cb06:	10 00 80 08 	sbi $r0,[$r1+#0x8]
   9cb0a:	8c 28       	addi45 $r1,#8
   9cb0c:	a6 89       	lbi333 $r2,[$r1+#0x1]
   9cb0e:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   9cb10:	40 00 20 08 	slli $r0,$r0,#8
   9cb14:	fe 17       	or33 $r0,$r2
   9cb16:	40 80 20 01 	sub $r8,$r0,$r8
   9cb1a:	40 84 00 13 	zeh $r8,$r8
   9cb1e:	54 04 00 ff 	andi $r0,$r8,#0xff
   9cb22:	a6 89       	lbi333 $r2,[$r1+#0x1]
   9cb24:	ae 09       	sbi333 $r0,[$r1+#0x1]
   9cb26:	93 08       	srli45 $r8,#8
   9cb28:	a6 0a       	lbi333 $r0,[$r1+#0x2]
   9cb2a:	10 80 80 02 	sbi $r8,[$r1+#0x2]
   9cb2e:	40 73 b0 08 	slli $r7,$r7,#12
   9cb32:	92 ec       	srli45 $r7,#12
   9cb34:	ce 06       	bnez38 $r6,9cb40 <DRV_Uart_Read+0xea>
   9cb36:	46 00 02 10 	sethi $r0,#0x210
   9cb3a:	58 00 00 00 	ori $r0,$r0,#0x0
   9cb3e:	d5 05       	j8 9cb48 <DRV_Uart_Read+0xf2>
   9cb40:	46 00 02 11 	sethi $r0,#0x211
   9cb44:	58 00 00 00 	ori $r0,$r0,#0x0
   9cb48:	04 10 00 0e 	lwi $r1,[$r0+#0x38]
   9cb4c:	92 34       	srli45 $r1,#20
   9cb4e:	40 10 d0 08 	slli $r1,$r1,#20
   9cb52:	ff cf       	or33 $r7,$r1
   9cb54:	14 70 00 0e 	swi $r7,[$r0+#0x38]
   9cb58:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009cb5a <DRV_Uart_Drop>:
   9cb5a:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9cb5c:	80 e0       	mov55 $r7,$r0
   9cb5e:	84 0b       	movi55 $r0,#11
   9cb60:	40 80 80 13 	zeh $r8,$r1
   9cb64:	fe 3c       	mul33 $r0,$r7
   9cb66:	3e 1f d0 d8 	addi.gp $r1,#-12072
   9cb6a:	98 01       	add333 $r0,$r0,$r1
   9cb6c:	8c 08       	addi45 $r0,#8
   9cb6e:	a6 41       	lbi333 $r1,[$r0+#0x1]
   9cb70:	a6 02       	lbi333 $r0,[$r0+#0x2]
   9cb72:	40 00 20 08 	slli $r0,$r0,#8
   9cb76:	fe 0f       	or33 $r0,$r1
   9cb78:	e2 08       	slt45 $r0,$r8
   9cb7a:	e8 09       	beqzs8 9cb8c <DRV_Uart_Drop+0x32>
   9cb7c:	44 00 02 4d 	movi $r0,#589
   9cb80:	46 10 00 a1 	sethi $r1,#0xa1
   9cb84:	58 10 8f fc 	ori $r1,$r1,#0xffc
   9cb88:	49 ff e5 29 	jal 995da <assert_ab_callback>
   9cb8c:	84 0b       	movi55 $r0,#11
   9cb8e:	3e 2f d0 d8 	addi.gp $r2,#-12072
   9cb92:	fe 3c       	mul33 $r0,$r7
   9cb94:	98 02       	add333 $r0,$r0,$r2
   9cb96:	a6 c5       	lbi333 $r3,[$r0+#0x5]
   9cb98:	a6 86       	lbi333 $r2,[$r0+#0x6]
   9cb9a:	a6 47       	lbi333 $r1,[$r0+#0x7]
   9cb9c:	00 60 00 08 	lbi $r6,[$r0+#0x8]
   9cba0:	40 21 20 08 	slli $r2,$r2,#8
   9cba4:	fe 9f       	or33 $r2,$r3
   9cba6:	40 10 c0 08 	slli $r1,$r1,#16
   9cbaa:	fe 57       	or33 $r1,$r2
   9cbac:	3e 0f d0 c4 	addi.gp $r0,#-12092
   9cbb0:	40 63 60 08 	slli $r6,$r6,#24
   9cbb4:	ff 8f       	or33 $r6,$r1
   9cbb6:	38 10 1d 01 	lh $r1,[$r0+($r7<<#0x1)]
   9cbba:	3e 0f d0 bc 	addi.gp $r0,#-12100
   9cbbe:	38 00 1e 02 	lw $r0,[$r0+($r7<<#0x2)]
   9cbc2:	88 c8       	add45 $r6,$r8
   9cbc4:	98 01       	add333 $r0,$r0,$r1
   9cbc6:	e2 c0       	slt45 $r6,$r0
   9cbc8:	e9 0c       	bnezs8 9cbe0 <DRV_Uart_Drop+0x86>
   9cbca:	9b b1       	sub333 $r6,$r6,$r1
   9cbcc:	e2 c0       	slt45 $r6,$r0
   9cbce:	e9 09       	bnezs8 9cbe0 <DRV_Uart_Drop+0x86>
   9cbd0:	44 00 02 57 	movi $r0,#599
   9cbd4:	46 10 00 a1 	sethi $r1,#0xa1
   9cbd8:	58 10 8f fc 	ori $r1,$r1,#0xffc
   9cbdc:	49 ff e4 ff 	jal 995da <assert_ab_callback>
   9cbe0:	84 4b       	movi55 $r2,#11
   9cbe2:	3e 0f d0 d8 	addi.gp $r0,#-12072
   9cbe6:	fe bc       	mul33 $r2,$r7
   9cbe8:	98 90       	add333 $r2,$r2,$r0
   9cbea:	96 30       	zeb33 $r0,$r6
   9cbec:	a6 55       	lbi333 $r1,[$r2+#0x5]
   9cbee:	ae 15       	sbi333 $r0,[$r2+#0x5]
   9cbf0:	40 03 20 09 	srli $r0,$r6,#8
   9cbf4:	96 00       	zeb33 $r0,$r0
   9cbf6:	a6 56       	lbi333 $r1,[$r2+#0x6]
   9cbf8:	ae 16       	sbi333 $r0,[$r2+#0x6]
   9cbfa:	40 03 40 09 	srli $r0,$r6,#16
   9cbfe:	96 00       	zeb33 $r0,$r0
   9cc00:	a6 57       	lbi333 $r1,[$r2+#0x7]
   9cc02:	ae 17       	sbi333 $r0,[$r2+#0x7]
   9cc04:	40 03 60 09 	srli $r0,$r6,#24
   9cc08:	00 11 00 08 	lbi $r1,[$r2+#0x8]
   9cc0c:	10 01 00 08 	sbi $r0,[$r2+#0x8]
   9cc10:	8c 48       	addi45 $r2,#8
   9cc12:	a6 51       	lbi333 $r1,[$r2+#0x1]
   9cc14:	a6 12       	lbi333 $r0,[$r2+#0x2]
   9cc16:	40 00 20 08 	slli $r0,$r0,#8
   9cc1a:	fe 0f       	or33 $r0,$r1
   9cc1c:	40 80 20 01 	sub $r8,$r0,$r8
   9cc20:	40 84 00 13 	zeh $r8,$r8
   9cc24:	54 04 00 ff 	andi $r0,$r8,#0xff
   9cc28:	a6 51       	lbi333 $r1,[$r2+#0x1]
   9cc2a:	ae 11       	sbi333 $r0,[$r2+#0x1]
   9cc2c:	93 08       	srli45 $r8,#8
   9cc2e:	a6 12       	lbi333 $r0,[$r2+#0x2]
   9cc30:	40 63 30 08 	slli $r6,$r6,#12
   9cc34:	92 cc       	srli45 $r6,#12
   9cc36:	10 81 00 02 	sbi $r8,[$r2+#0x2]
   9cc3a:	cf 06       	bnez38 $r7,9cc46 <DRV_Uart_Drop+0xec>
   9cc3c:	46 00 02 10 	sethi $r0,#0x210
   9cc40:	58 00 00 00 	ori $r0,$r0,#0x0
   9cc44:	d5 05       	j8 9cc4e <DRV_Uart_Drop+0xf4>
   9cc46:	46 00 02 11 	sethi $r0,#0x211
   9cc4a:	58 00 00 00 	ori $r0,$r0,#0x0
   9cc4e:	04 10 00 0e 	lwi $r1,[$r0+#0x38]
   9cc52:	92 34       	srli45 $r1,#20
   9cc54:	40 10 d0 08 	slli $r1,$r1,#20
   9cc58:	ff 8f       	or33 $r6,$r1
   9cc5a:	14 60 00 0e 	swi $r6,[$r0+#0x38]
   9cc5e:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009cc60 <UART2_RxDmaHandler>:
   9cc60:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9cc62:	84 24       	movi55 $r1,#4
   9cc64:	46 f0 02 11 	sethi $r15,#0x211
   9cc68:	14 17 80 0a 	swi $r1,[$r15+#0x28]
   9cc6c:	46 f0 02 11 	sethi $r15,#0x211
   9cc70:	04 07 80 0d 	lwi $r0,[$r15+#0x34]
   9cc74:	40 00 30 08 	slli $r0,$r0,#12
   9cc78:	92 0c       	srli45 $r0,#12
   9cc7a:	3e 1f d0 d8 	addi.gp $r1,#-12072
   9cc7e:	a0 8b       	lwi333 $r2,[$r1+#0xc]
   9cc80:	e2 40       	slt45 $r2,$r0
   9cc82:	e8 04       	beqzs8 9cc8a <UART2_RxDmaHandler+0x2a>
   9cc84:	a0 8b       	lwi333 $r2,[$r1+#0xc]
   9cc86:	9a 82       	sub333 $r2,$r0,$r2
   9cc88:	d5 09       	j8 9cc9a <UART2_RxDmaHandler+0x3a>
   9cc8a:	a0 8b       	lwi333 $r2,[$r1+#0xc]
   9cc8c:	e2 02       	slt45 $r0,$r2
   9cc8e:	e8 1f       	beqzs8 9cccc <UART2_RxDmaHandler+0x6c>
   9cc90:	3c 23 e8 63 	lhi.gp $r2,[+#-12090]
   9cc94:	a0 4b       	lwi333 $r1,[$r1+#0xc]
   9cc96:	98 90       	add333 $r2,$r2,$r0
   9cc98:	9a 91       	sub333 $r2,$r2,$r1
   9cc9a:	2e 17 d0 d5 	lbi.gp $r1,[+#-12075]
   9cc9e:	c9 07       	bnez38 $r1,9ccac <UART2_RxDmaHandler+0x4c>
   9cca0:	3c 33 e8 76 	lhi.gp $r3,[+#-12052]
   9cca4:	98 93       	add333 $r2,$r2,$r3
   9cca6:	96 91       	zeh33 $r2,$r2
   9cca8:	3c 2b e8 76 	shi.gp $r2,[+#-12052]
   9ccac:	3e 1f d0 d8 	addi.gp $r1,#-12072
   9ccb0:	8c 28       	addi45 $r1,#8
   9ccb2:	a8 09       	swi333 $r0,[$r1+#0x4]
   9ccb4:	3c 2d f4 34 	lwi.gp $r2,[+#-12080]
   9ccb8:	c2 06       	beqz38 $r2,9ccc4 <UART2_RxDmaHandler+0x64>
   9ccba:	a4 0e       	lhi333 $r0,[$r1+#0xc]
   9ccbc:	c0 08       	beqz38 $r0,9cccc <UART2_RxDmaHandler+0x6c>
   9ccbe:	a4 0e       	lhi333 $r0,[$r1+#0xc]
   9ccc0:	dd 22       	jral5 $r2
   9ccc2:	d5 05       	j8 9cccc <UART2_RxDmaHandler+0x6c>
   9ccc4:	a4 4e       	lhi333 $r1,[$r1+#0xc]
   9ccc6:	84 01       	movi55 $r0,#1
   9ccc8:	49 ff ff 49 	jal 9cb5a <DRV_Uart_Drop>
   9cccc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009ccce <UART2InterruptHandler>:
   9ccce:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9ccd0:	46 10 02 11 	sethi $r1,#0x211
   9ccd4:	58 10 80 00 	ori $r1,$r1,#0x0
   9ccd8:	8c 30       	addi45 $r1,#16
   9ccda:	a0 0e       	lwi333 $r0,[$r1+#0x18]
   9ccdc:	54 00 00 0e 	andi $r0,$r0,#0xe
   9cce0:	5a 00 04 16 	beqc $r0,#4,9cd0c <UART2InterruptHandler+0x3e>
   9cce4:	e6 05       	slti45 $r0,#5
   9cce6:	e8 04       	beqzs8 9ccee <UART2InterruptHandler+0x20>
   9cce8:	5a 08 02 24 	bnec $r0,#2,9cd30 <UART2InterruptHandler+0x62>
   9ccec:	d5 13       	j8 9cd12 <UART2InterruptHandler+0x44>
   9ccee:	5a 00 06 05 	beqc $r0,#6,9ccf8 <UART2InterruptHandler+0x2a>
   9ccf2:	5a 08 0c 1f 	bnec $r0,#12,9cd30 <UART2InterruptHandler+0x62>
   9ccf6:	d5 0b       	j8 9cd0c <UART2InterruptHandler+0x3e>
   9ccf8:	a0 0f       	lwi333 $r0,[$r1+#0x1c]
   9ccfa:	54 20 00 1e 	andi $r2,$r0,#0x1e
   9ccfe:	96 26       	bmski33 $r0,#0x4
   9cd00:	c8 18       	bnez38 $r0,9cd30 <UART2InterruptHandler+0x62>
   9cd02:	84 61       	movi55 $r3,#1
   9cd04:	3e 37 d0 d5 	sbi.gp $r3,[+#-12075]
   9cd08:	a8 8f       	swi333 $r2,[$r1+#0x1c]
   9cd0a:	d5 13       	j8 9cd30 <UART2InterruptHandler+0x62>
   9cd0c:	49 ff ff aa 	jal 9cc60 <UART2_RxDmaHandler>
   9cd10:	d5 10       	j8 9cd30 <UART2InterruptHandler+0x62>
   9cd12:	a8 0e       	swi333 $r0,[$r1+#0x18]
   9cd14:	3c 1d f4 38 	lwi.gp $r1,[+#-12064]
   9cd18:	46 2f ef ff 	sethi $r2,#0xfefff
   9cd1c:	58 21 0f ff 	ori $r2,$r2,#0xfff
   9cd20:	fe 56       	and33 $r1,$r2
   9cd22:	3c 1f f4 38 	swi.gp $r1,[+#-12064]
   9cd26:	3c 1d f4 2c 	lwi.gp $r1,[+#-12112]
   9cd2a:	c1 03       	beqz38 $r1,9cd30 <UART2InterruptHandler+0x62>
   9cd2c:	84 01       	movi55 $r0,#1
   9cd2e:	dd 21       	jral5 $r1
   9cd30:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009cd32 <UART_RxDmaHandler>:
   9cd32:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9cd34:	84 24       	movi55 $r1,#4
   9cd36:	46 f0 02 10 	sethi $r15,#0x210
   9cd3a:	14 17 80 0a 	swi $r1,[$r15+#0x28]
   9cd3e:	46 f0 02 10 	sethi $r15,#0x210
   9cd42:	04 27 80 0d 	lwi $r2,[$r15+#0x34]
   9cd46:	40 21 30 08 	slli $r2,$r2,#12
   9cd4a:	92 4c       	srli45 $r2,#12
   9cd4c:	3e 0f d0 d8 	addi.gp $r0,#-12072
   9cd50:	b4 60       	lwi450 $r3,[$r0]
   9cd52:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9cd54:	92 68       	srli45 $r3,#8
   9cd56:	40 10 e0 08 	slli $r1,$r1,#24
   9cd5a:	fe 5f       	or33 $r1,$r3
   9cd5c:	e2 22       	slt45 $r1,$r2
   9cd5e:	e8 09       	beqzs8 9cd70 <UART_RxDmaHandler+0x3e>
   9cd60:	b4 60       	lwi450 $r3,[$r0]
   9cd62:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9cd64:	92 68       	srli45 $r3,#8
   9cd66:	40 10 e0 08 	slli $r1,$r1,#24
   9cd6a:	fe 5f       	or33 $r1,$r3
   9cd6c:	9a 51       	sub333 $r1,$r2,$r1
   9cd6e:	d5 13       	j8 9cd94 <UART_RxDmaHandler+0x62>
   9cd70:	b4 60       	lwi450 $r3,[$r0]
   9cd72:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9cd74:	92 68       	srli45 $r3,#8
   9cd76:	40 10 e0 08 	slli $r1,$r1,#24
   9cd7a:	fe 5f       	or33 $r1,$r3
   9cd7c:	e2 41       	slt45 $r2,$r1
   9cd7e:	e8 3d       	beqzs8 9cdf8 <UART_RxDmaHandler+0xc6>
   9cd80:	b4 60       	lwi450 $r3,[$r0]
   9cd82:	a0 01       	lwi333 $r0,[$r0+#0x4]
   9cd84:	3c 13 e8 62 	lhi.gp $r1,[+#-12092]
   9cd88:	92 68       	srli45 $r3,#8
   9cd8a:	40 00 60 08 	slli $r0,$r0,#24
   9cd8e:	fe 1f       	or33 $r0,$r3
   9cd90:	98 4a       	add333 $r1,$r1,$r2
   9cd92:	9a 48       	sub333 $r1,$r1,$r0
   9cd94:	2e 07 d0 d4 	lbi.gp $r0,[+#-12076]
   9cd98:	c8 11       	bnez38 $r0,9cdba <UART_RxDmaHandler+0x88>
   9cd9a:	3e 0f d0 d8 	addi.gp $r0,#-12072
   9cd9e:	a0 c2       	lwi333 $r3,[$r0+#0x8]
   9cda0:	46 4f f0 00 	sethi $r4,#0xff000
   9cda4:	92 68       	srli45 $r3,#8
   9cda6:	98 d9       	add333 $r3,$r3,$r1
   9cda8:	a0 42       	lwi333 $r1,[$r0+#0x8]
   9cdaa:	96 d9       	zeh33 $r3,$r3
   9cdac:	58 42 00 ff 	ori $r4,$r4,#0xff
   9cdb0:	40 31 a0 08 	slli $r3,$r3,#8
   9cdb4:	fe 66       	and33 $r1,$r4
   9cdb6:	fe 5f       	or33 $r1,$r3
   9cdb8:	a8 42       	swi333 $r1,[$r0+#0x8]
   9cdba:	3e 1f d0 d8 	addi.gp $r1,#-12072
   9cdbe:	b4 01       	lwi450 $r0,[$r1]
   9cdc0:	40 21 20 08 	slli $r2,$r2,#8
   9cdc4:	96 00       	zeb33 $r0,$r0
   9cdc6:	fe 87       	or33 $r2,$r0
   9cdc8:	b6 41       	swi450 $r2,[$r1]
   9cdca:	a0 09       	lwi333 $r0,[$r1+#0x4]
   9cdcc:	92 08       	srli45 $r0,#8
   9cdce:	40 00 20 08 	slli $r0,$r0,#8
   9cdd2:	a8 09       	swi333 $r0,[$r1+#0x4]
   9cdd4:	3c 2d f4 33 	lwi.gp $r2,[+#-12084]
   9cdd8:	c2 0a       	beqz38 $r2,9cdec <UART_RxDmaHandler+0xba>
   9cdda:	a0 0a       	lwi333 $r0,[$r1+#0x8]
   9cddc:	92 08       	srli45 $r0,#8
   9cdde:	96 01       	zeh33 $r0,$r0
   9cde0:	c0 0c       	beqz38 $r0,9cdf8 <UART_RxDmaHandler+0xc6>
   9cde2:	a0 0a       	lwi333 $r0,[$r1+#0x8]
   9cde4:	92 08       	srli45 $r0,#8
   9cde6:	96 01       	zeh33 $r0,$r0
   9cde8:	dd 22       	jral5 $r2
   9cdea:	d5 07       	j8 9cdf8 <UART_RxDmaHandler+0xc6>
   9cdec:	a0 4a       	lwi333 $r1,[$r1+#0x8]
   9cdee:	80 02       	mov55 $r0,$r2
   9cdf0:	92 28       	srli45 $r1,#8
   9cdf2:	96 49       	zeh33 $r1,$r1
   9cdf4:	49 ff fe b3 	jal 9cb5a <DRV_Uart_Drop>
   9cdf8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009cdfa <UARTInterruptHandler>:
   9cdfa:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9cdfc:	46 10 02 10 	sethi $r1,#0x210
   9ce00:	58 10 80 00 	ori $r1,$r1,#0x0
   9ce04:	8c 30       	addi45 $r1,#16
   9ce06:	a0 0e       	lwi333 $r0,[$r1+#0x18]
   9ce08:	54 00 00 0e 	andi $r0,$r0,#0xe
   9ce0c:	5a 00 04 16 	beqc $r0,#4,9ce38 <UARTInterruptHandler+0x3e>
   9ce10:	e6 05       	slti45 $r0,#5
   9ce12:	e8 04       	beqzs8 9ce1a <UARTInterruptHandler+0x20>
   9ce14:	5a 08 02 23 	bnec $r0,#2,9ce5a <UARTInterruptHandler+0x60>
   9ce18:	d5 13       	j8 9ce3e <UARTInterruptHandler+0x44>
   9ce1a:	5a 00 06 05 	beqc $r0,#6,9ce24 <UARTInterruptHandler+0x2a>
   9ce1e:	5a 08 0c 1e 	bnec $r0,#12,9ce5a <UARTInterruptHandler+0x60>
   9ce22:	d5 0b       	j8 9ce38 <UARTInterruptHandler+0x3e>
   9ce24:	a0 0f       	lwi333 $r0,[$r1+#0x1c]
   9ce26:	54 20 00 1e 	andi $r2,$r0,#0x1e
   9ce2a:	96 26       	bmski33 $r0,#0x4
   9ce2c:	c8 17       	bnez38 $r0,9ce5a <UARTInterruptHandler+0x60>
   9ce2e:	84 61       	movi55 $r3,#1
   9ce30:	3e 37 d0 d4 	sbi.gp $r3,[+#-12076]
   9ce34:	a8 8f       	swi333 $r2,[$r1+#0x1c]
   9ce36:	d5 12       	j8 9ce5a <UARTInterruptHandler+0x60>
   9ce38:	49 ff ff 7d 	jal 9cd32 <UART_RxDmaHandler>
   9ce3c:	d5 0f       	j8 9ce5a <UARTInterruptHandler+0x60>
   9ce3e:	a8 0e       	swi333 $r0,[$r1+#0x18]
   9ce40:	46 00 01 01 	sethi $r0,#0x101
   9ce44:	3c 1d f4 36 	lwi.gp $r1,[+#-12072]
   9ce48:	92 21       	srli45 $r1,#1
   9ce4a:	94 49       	slli333 $r1,$r1,#1
   9ce4c:	3c 1f f4 36 	swi.gp $r1,[+#-12072]
   9ce50:	3c 1d f4 2b 	lwi.gp $r1,[+#-12116]
   9ce54:	c1 03       	beqz38 $r1,9ce5a <UARTInterruptHandler+0x60>
   9ce56:	84 00       	movi55 $r0,#0
   9ce58:	dd 21       	jral5 $r1
   9ce5a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009ce5c <DRV_Uart_Init>:
   9ce5c:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9ce5e:	81 00       	mov55 $r8,$r0
   9ce60:	80 e1       	mov55 $r7,$r1
   9ce62:	81 22       	mov55 $r9,$r2
   9ce64:	c8 0a       	bnez38 $r0,9ce78 <DRV_Uart_Init+0x1c>
   9ce66:	46 00 02 10 	sethi $r0,#0x210
   9ce6a:	58 00 00 00 	ori $r0,$r0,#0x0
   9ce6e:	04 10 00 11 	lwi $r1,[$r0+#0x44]
   9ce72:	92 21       	srli45 $r1,#1
   9ce74:	94 49       	slli333 $r1,$r1,#1
   9ce76:	d5 09       	j8 9ce88 <DRV_Uart_Init+0x2c>
   9ce78:	46 00 02 11 	sethi $r0,#0x211
   9ce7c:	58 00 00 00 	ori $r0,$r0,#0x0
   9ce80:	04 10 00 11 	lwi $r1,[$r0+#0x44]
   9ce84:	92 21       	srli45 $r1,#1
   9ce86:	94 49       	slli333 $r1,$r1,#1
   9ce88:	84 4b       	movi55 $r2,#11
   9ce8a:	14 10 00 11 	swi $r1,[$r0+#0x44]
   9ce8e:	42 64 08 24 	mul $r6,$r8,$r2
   9ce92:	3e 0f d0 d8 	addi.gp $r0,#-12072
   9ce96:	99 b0       	add333 $r6,$r6,$r0
   9ce98:	84 20       	movi55 $r1,#0
   9ce9a:	80 06       	mov55 $r0,$r6
   9ce9c:	49 ff 98 f6 	jal 90088 <memset>
   9cea0:	04 04 80 01 	lwi $r0,[$r9+#0x4]
   9cea4:	02 24 80 05 	lhi $r2,[$r9+#0xa]
   9cea8:	3e af d0 bc 	addi.gp $r10,#-12100
   9ceac:	38 05 22 0a 	sw $r0,[$r10+($r8<<#0x2)]
   9ceb0:	3e 1f d0 c4 	addi.gp $r1,#-12092
   9ceb4:	38 20 a1 09 	sh $r2,[$r1+($r8<<#0x1)]
   9ceb8:	b4 69       	lwi450 $r3,[$r9]
   9ceba:	02 24 80 04 	lhi $r2,[$r9+#0x8]
   9cebe:	3e 1f d0 b4 	addi.gp $r1,#-12108
   9cec2:	38 30 a2 0a 	sw $r3,[$r1+($r8<<#0x2)]
   9cec6:	04 34 80 03 	lwi $r3,[$r9+#0xc]
   9ceca:	3e 1f d0 c8 	addi.gp $r1,#-12088
   9cece:	38 20 a1 09 	sh $r2,[$r1+($r8<<#0x1)]
   9ced2:	04 24 80 04 	lwi $r2,[$r9+#0x10]
   9ced6:	3e 1f d0 cc 	addi.gp $r1,#-12084
   9ceda:	38 30 a2 0a 	sw $r3,[$r1+($r8<<#0x2)]
   9cede:	3e 1f d0 ac 	addi.gp $r1,#-12116
   9cee2:	38 20 a2 0a 	sw $r2,[$r1+($r8<<#0x2)]
   9cee6:	96 40       	zeb33 $r1,$r0
   9cee8:	a6 b5       	lbi333 $r2,[$r6+#0x5]
   9ceea:	ae 75       	sbi333 $r1,[$r6+#0x5]
   9ceec:	40 20 20 09 	srli $r2,$r0,#8
   9cef0:	96 90       	zeb33 $r2,$r2
   9cef2:	a6 f6       	lbi333 $r3,[$r6+#0x6]
   9cef4:	ae b6       	sbi333 $r2,[$r6+#0x6]
   9cef6:	40 20 40 09 	srli $r2,$r0,#16
   9cefa:	96 90       	zeb33 $r2,$r2
   9cefc:	a6 f7       	lbi333 $r3,[$r6+#0x7]
   9cefe:	ae b7       	sbi333 $r2,[$r6+#0x7]
   9cf00:	40 20 60 09 	srli $r2,$r0,#24
   9cf04:	00 33 00 08 	lbi $r3,[$r6+#0x8]
   9cf08:	10 23 00 08 	sbi $r2,[$r6+#0x8]
   9cf0c:	96 01       	zeh33 $r0,$r0
   9cf0e:	a6 b1       	lbi333 $r2,[$r6+#0x1]
   9cf10:	ae 71       	sbi333 $r1,[$r6+#0x1]
   9cf12:	40 10 20 09 	srli $r1,$r0,#8
   9cf16:	a6 b2       	lbi333 $r2,[$r6+#0x2]
   9cf18:	ae 72       	sbi333 $r1,[$r6+#0x2]
   9cf1a:	92 18       	srli45 $r0,#24
   9cf1c:	a6 73       	lbi333 $r1,[$r6+#0x3]
   9cf1e:	84 20       	movi55 $r1,#0
   9cf20:	ae 73       	sbi333 $r1,[$r6+#0x3]
   9cf22:	a6 74       	lbi333 $r1,[$r6+#0x4]
   9cf24:	ae 34       	sbi333 $r0,[$r6+#0x4]
   9cf26:	4e 83 00 3e 	bnez $r8,9cfa2 <DRV_Uart_Init+0x146>
   9cf2a:	b4 27       	lwi450 $r1,[$r7]
   9cf2c:	80 08       	mov55 $r0,$r8
   9cf2e:	49 ff fb f7 	jal 9c71c <DRV_Uart_SetBaud>
   9cf32:	a6 3e       	lbi333 $r0,[$r7+#0x6]
   9cf34:	46 60 02 10 	sethi $r6,#0x210
   9cf38:	58 63 00 00 	ori $r6,$r6,#0x0
   9cf3c:	a8 32       	swi333 $r0,[$r6+#0x8]
   9cf3e:	b4 0a       	lwi450 $r0,[$r10]
   9cf40:	40 00 30 08 	slli $r0,$r0,#12
   9cf44:	92 0c       	srli45 $r0,#12
   9cf46:	a0 76       	lwi333 $r1,[$r6+#0x18]
   9cf48:	92 34       	srli45 $r1,#20
   9cf4a:	40 10 d0 08 	slli $r1,$r1,#20
   9cf4e:	fe 47       	or33 $r1,$r0
   9cf50:	a8 76       	swi333 $r1,[$r6+#0x18]
   9cf52:	02 14 80 05 	lhi $r1,[$r9+#0xa]
   9cf56:	a8 77       	swi333 $r1,[$r6+#0x1c]
   9cf58:	04 13 00 0f 	lwi $r1,[$r6+#0x3c]
   9cf5c:	a4 ba       	lhi333 $r2,[$r7+#0x4]
   9cf5e:	92 2e       	srli45 $r1,#14
   9cf60:	40 10 b8 08 	slli $r1,$r1,#14
   9cf64:	54 21 3f ff 	andi $r2,$r2,#0x3fff
   9cf68:	fe 57       	or33 $r1,$r2
   9cf6a:	14 13 00 0f 	swi $r1,[$r6+#0x3c]
   9cf6e:	a6 7f       	lbi333 $r1,[$r7+#0x7]
   9cf70:	10 13 00 40 	sbi $r1,[$r6+#0x40]
   9cf74:	04 13 00 0e 	lwi $r1,[$r6+#0x38]
   9cf78:	92 34       	srli45 $r1,#20
   9cf7a:	40 10 d0 08 	slli $r1,$r1,#20
   9cf7e:	fe 0f       	or33 $r0,$r1
   9cf80:	14 03 00 0e 	swi $r0,[$r6+#0x38]
   9cf84:	46 10 00 9c 	sethi $r1,#0x9c
   9cf88:	58 10 8d fa 	ori $r1,$r1,#0xdfa
   9cf8c:	00 03 80 08 	lbi $r0,[$r7+#0x8]
   9cf90:	a8 35       	swi333 $r0,[$r6+#0x14]
   9cf92:	00 03 80 09 	lbi $r0,[$r7+#0x9]
   9cf96:	a8 33       	swi333 $r0,[$r6+#0xc]
   9cf98:	00 03 80 0a 	lbi $r0,[$r7+#0xa]
   9cf9c:	a8 34       	swi333 $r0,[$r6+#0x10]
   9cf9e:	fa 00       	movpi45 $r0,#0x10
   9cfa0:	d5 3d       	j8 9d01a <DRV_Uart_Init+0x1be>
   9cfa2:	b4 27       	lwi450 $r1,[$r7]
   9cfa4:	84 01       	movi55 $r0,#1
   9cfa6:	49 ff fb bb 	jal 9c71c <DRV_Uart_SetBaud>
   9cfaa:	a6 3e       	lbi333 $r0,[$r7+#0x6]
   9cfac:	46 60 02 11 	sethi $r6,#0x211
   9cfb0:	58 63 00 00 	ori $r6,$r6,#0x0
   9cfb4:	a8 32       	swi333 $r0,[$r6+#0x8]
   9cfb6:	a0 76       	lwi333 $r1,[$r6+#0x18]
   9cfb8:	38 05 22 02 	lw $r0,[$r10+($r8<<#0x2)]
   9cfbc:	40 00 30 08 	slli $r0,$r0,#12
   9cfc0:	92 0c       	srli45 $r0,#12
   9cfc2:	92 34       	srli45 $r1,#20
   9cfc4:	40 10 d0 08 	slli $r1,$r1,#20
   9cfc8:	fe 47       	or33 $r1,$r0
   9cfca:	a8 76       	swi333 $r1,[$r6+#0x18]
   9cfcc:	02 14 80 05 	lhi $r1,[$r9+#0xa]
   9cfd0:	a8 77       	swi333 $r1,[$r6+#0x1c]
   9cfd2:	04 13 00 0f 	lwi $r1,[$r6+#0x3c]
   9cfd6:	a4 ba       	lhi333 $r2,[$r7+#0x4]
   9cfd8:	92 2e       	srli45 $r1,#14
   9cfda:	40 10 b8 08 	slli $r1,$r1,#14
   9cfde:	54 21 3f ff 	andi $r2,$r2,#0x3fff
   9cfe2:	fe 57       	or33 $r1,$r2
   9cfe4:	14 13 00 0f 	swi $r1,[$r6+#0x3c]
   9cfe8:	a6 7f       	lbi333 $r1,[$r7+#0x7]
   9cfea:	10 13 00 40 	sbi $r1,[$r6+#0x40]
   9cfee:	04 13 00 0e 	lwi $r1,[$r6+#0x38]
   9cff2:	92 34       	srli45 $r1,#20
   9cff4:	40 10 d0 08 	slli $r1,$r1,#20
   9cff8:	fe 0f       	or33 $r0,$r1
   9cffa:	14 03 00 0e 	swi $r0,[$r6+#0x38]
   9cffe:	46 10 00 9c 	sethi $r1,#0x9c
   9d002:	58 10 8c ce 	ori $r1,$r1,#0xcce
   9d006:	00 03 80 08 	lbi $r0,[$r7+#0x8]
   9d00a:	a8 35       	swi333 $r0,[$r6+#0x14]
   9d00c:	00 03 80 09 	lbi $r0,[$r7+#0x9]
   9d010:	a8 33       	swi333 $r0,[$r6+#0xc]
   9d012:	00 03 80 0a 	lbi $r0,[$r7+#0xa]
   9d016:	a8 34       	swi333 $r0,[$r6+#0x10]
   9d018:	fa 0f       	movpi45 $r0,#0x1f
   9d01a:	49 ff 19 b5 	jal 80384 <SysIntrHandlerRegister>
   9d01e:	04 03 00 11 	lwi $r0,[$r6+#0x44]
   9d022:	58 00 00 01 	ori $r0,$r0,#0x1
   9d026:	14 03 00 11 	swi $r0,[$r6+#0x44]
   9d02a:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009d02c <DRV_WDT_Kick>:
   9d02c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9d02e:	44 10 00 aa 	movi $r1,#170
   9d032:	46 f0 02 24 	sethi $r15,#0x224
   9d036:	14 17 80 02 	swi $r1,[$r15+#0x8]
   9d03a:	44 10 00 55 	movi $r1,#85
   9d03e:	46 f0 02 24 	sethi $r15,#0x224
   9d042:	14 17 80 02 	swi $r1,[$r15+#0x8]
   9d046:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009d048 <DRV_WDT_Enable>:
   9d048:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9d04a:	46 10 02 24 	sethi $r1,#0x224
   9d04e:	58 10 80 00 	ori $r1,$r1,#0x0
   9d052:	b4 41       	lwi450 $r2,[$r1]
   9d054:	84 7b       	movi55 $r3,#-5
   9d056:	fe 9e       	and33 $r2,$r3
   9d058:	b6 41       	swi450 $r2,[$r1]
   9d05a:	96 00       	zeb33 $r0,$r0
   9d05c:	b4 41       	lwi450 $r2,[$r1]
   9d05e:	58 21 00 01 	ori $r2,$r2,#0x1
   9d062:	b6 41       	swi450 $r2,[$r1]
   9d064:	b4 41       	lwi450 $r2,[$r1]
   9d066:	58 21 00 02 	ori $r2,$r2,#0x2
   9d06a:	b6 41       	swi450 $r2,[$r1]
   9d06c:	3c 2d f0 2d 	lwi.gp $r2,[+#-16204]
   9d070:	92 48       	srli45 $r2,#8
   9d072:	fe 14       	mul33 $r0,$r2
   9d074:	a8 09       	swi333 $r0,[$r1+#0x4]
   9d076:	44 00 00 ff 	movi $r0,#255
   9d07a:	14 00 80 09 	swi $r0,[$r1+#0x24]
   9d07e:	44 00 00 aa 	movi $r0,#170
   9d082:	a8 0a       	swi333 $r0,[$r1+#0x8]
   9d084:	44 00 00 55 	movi $r0,#85
   9d088:	a8 0a       	swi333 $r0,[$r1+#0x8]
   9d08a:	8e 16       	subi45 $r0,#22
   9d08c:	a8 0d       	swi333 $r0,[$r1+#0x14]
   9d08e:	04 00 80 08 	lwi $r0,[$r1+#0x20]
   9d092:	58 00 00 01 	ori $r0,$r0,#0x1
   9d096:	14 00 80 08 	swi $r0,[$r1+#0x20]
   9d09a:	84 09       	movi55 $r0,#9
   9d09c:	46 10 00 9d 	sethi $r1,#0x9d
   9d0a0:	58 10 80 aa 	ori $r1,$r1,#0xaa
   9d0a4:	49 ff 19 70 	jal 80384 <SysIntrHandlerRegister>
   9d0a8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009d0aa <wdt_int>:
   9d0aa:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9d0ac:	84 01       	movi55 $r0,#1
   9d0ae:	80 20       	mov55 $r1,$r0
   9d0b0:	49 ff f6 24 	jal 9bcf8 <DRV_OdGpio_IeSet>
   9d0b4:	d5 00       	j8 9d0b4 <wdt_int+0xa>

0009d0b6 <InitAlg>:
   9d0b6:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9d0b8:	3c 0d f4 60 	lwi.gp $r0,[+#-11904]
   9d0bc:	46 13 f5 db 	sethi $r1,#0x3f5db
   9d0c0:	58 10 83 d7 	ori $r1,$r1,#0x3d7
   9d0c4:	49 ff 98 82 	jal 901c8 <__float32_mul>
   9d0c8:	46 14 04 90 	sethi $r1,#0x40490
   9d0cc:	58 10 8f dc 	ori $r1,$r1,#0xfdc
   9d0d0:	49 ff 98 7c 	jal 901c8 <__float32_mul>
   9d0d4:	46 14 33 40 	sethi $r1,#0x43340
   9d0d8:	49 ff 99 24 	jal 90320 <__divsf3>
   9d0dc:	3c 0f f4 85 	swi.gp $r0,[+#-11756]
   9d0e0:	3c 0d f4 61 	lwi.gp $r0,[+#-11900]
   9d0e4:	46 13 f5 db 	sethi $r1,#0x3f5db
   9d0e8:	58 10 83 d7 	ori $r1,$r1,#0x3d7
   9d0ec:	49 ff 98 6e 	jal 901c8 <__float32_mul>
   9d0f0:	46 14 04 90 	sethi $r1,#0x40490
   9d0f4:	58 10 8f dc 	ori $r1,$r1,#0xfdc
   9d0f8:	49 ff 98 68 	jal 901c8 <__float32_mul>
   9d0fc:	46 14 33 40 	sethi $r1,#0x43340
   9d100:	49 ff 99 10 	jal 90320 <__divsf3>
   9d104:	84 c0       	movi55 $r6,#0
   9d106:	3c 0f f4 86 	swi.gp $r0,[+#-11752]
   9d10a:	46 73 f8 00 	sethi $r7,#0x3f800
   9d10e:	3e 0f d1 9c 	addi.gp $r0,#-11876
   9d112:	b6 c0       	swi450 $r6,[$r0]
   9d114:	a9 81       	swi333 $r6,[$r0+#0x4]
   9d116:	a9 82       	swi333 $r6,[$r0+#0x8]
   9d118:	3e 0f c2 30 	addi.gp $r0,#-15824
   9d11c:	85 00       	movi55 $r8,#0
   9d11e:	b6 e0       	swi450 $r7,[$r0]
   9d120:	a9 81       	swi333 $r6,[$r0+#0x4]
   9d122:	a9 82       	swi333 $r6,[$r0+#0x8]
   9d124:	a9 83       	swi333 $r6,[$r0+#0xc]
   9d126:	3e 87 d1 b4 	sbi.gp $r8,[+#-11852]
   9d12a:	3c 9d f4 65 	lwi.gp $r9,[+#-11884]
   9d12e:	3c 0d f4 62 	lwi.gp $r0,[+#-11896]
   9d132:	80 29       	mov55 $r1,$r9
   9d134:	49 ff 98 4a 	jal 901c8 <__float32_mul>
   9d138:	3c 0f f4 6e 	swi.gp $r0,[+#-11848]
   9d13c:	3c 0d f4 63 	lwi.gp $r0,[+#-11892]
   9d140:	80 29       	mov55 $r1,$r9
   9d142:	49 ff 98 43 	jal 901c8 <__float32_mul>
   9d146:	3c 0f f4 6f 	swi.gp $r0,[+#-11844]
   9d14a:	3c 0d f4 64 	lwi.gp $r0,[+#-11888]
   9d14e:	80 29       	mov55 $r1,$r9
   9d150:	49 ff 98 3c 	jal 901c8 <__float32_mul>
   9d154:	3c 0f f4 87 	swi.gp $r0,[+#-11748]
   9d158:	3e 0f d1 c8 	addi.gp $r0,#-11832
   9d15c:	a9 82       	swi333 $r6,[$r0+#0x8]
   9d15e:	a9 81       	swi333 $r6,[$r0+#0x4]
   9d160:	b6 c0       	swi450 $r6,[$r0]
   9d162:	a9 85       	swi333 $r6,[$r0+#0x14]
   9d164:	a9 84       	swi333 $r6,[$r0+#0x10]
   9d166:	a9 83       	swi333 $r6,[$r0+#0xc]
   9d168:	14 60 00 08 	swi $r6,[$r0+#0x20]
   9d16c:	a9 87       	swi333 $r6,[$r0+#0x1c]
   9d16e:	a9 86       	swi333 $r6,[$r0+#0x18]
   9d170:	14 60 00 0b 	swi $r6,[$r0+#0x2c]
   9d174:	14 60 00 0a 	swi $r6,[$r0+#0x28]
   9d178:	14 60 00 09 	swi $r6,[$r0+#0x24]
   9d17c:	3e 0f d1 f8 	addi.gp $r0,#-11784
   9d180:	a9 82       	swi333 $r6,[$r0+#0x8]
   9d182:	a9 81       	swi333 $r6,[$r0+#0x4]
   9d184:	b6 c0       	swi450 $r6,[$r0]
   9d186:	a9 85       	swi333 $r6,[$r0+#0x14]
   9d188:	a9 84       	swi333 $r6,[$r0+#0x10]
   9d18a:	84 3f       	movi55 $r1,#-1
   9d18c:	a9 83       	swi333 $r6,[$r0+#0xc]
   9d18e:	3c 1f f1 ab 	swi.gp $r1,[+#-14676]
   9d192:	84 21       	movi55 $r1,#1
   9d194:	3e 17 c2 40 	sbi.gp $r1,[+#-15808]
   9d198:	85 20       	movi55 $r9,#0
   9d19a:	46 14 26 52 	sethi $r1,#0x42652
   9d19e:	3c 9f f4 6b 	swi.gp $r9,[+#-11860]
   9d1a2:	58 10 8e df 	ori $r1,$r1,#0xedf
   9d1a6:	3c 1f f4 6a 	swi.gp $r1,[+#-11864]
   9d1aa:	3c 0d f0 8b 	lwi.gp $r0,[+#-15828]
   9d1ae:	49 ff 98 b9 	jal 90320 <__divsf3>
   9d1b2:	3c 0f f4 88 	swi.gp $r0,[+#-11744]
   9d1b6:	3e 97 d1 98 	sbi.gp $r9,[+#-11880]
   9d1ba:	3e 87 d2 10 	sbi.gp $r8,[+#-11760]
   9d1be:	3c 6f f4 70 	swi.gp $r6,[+#-11840]
   9d1c2:	3c 7f f0 91 	swi.gp $r7,[+#-15804]
   9d1c6:	3e 87 d1 c4 	sbi.gp $r8,[+#-11836]
   9d1ca:	84 01       	movi55 $r0,#1
   9d1cc:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009d1ce <AB_DFU_set_active_code_area>:
   9d1ce:	fc 21       	push25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}
   9d1d0:	84 20       	movi55 $r1,#0
   9d1d2:	10 1f 80 07 	sbi $r1,[$sp+#0x7]
   9d1d6:	9e 41       	subi333 $r1,$r0,#1
   9d1d8:	e6 22       	slti45 $r1,#2
   9d1da:	e9 0a       	bnezs8 9d1ee <AB_DFU_set_active_code_area+0x20>
   9d1dc:	46 00 00 a2 	sethi $r0,#0xa2
   9d1e0:	58 00 00 20 	ori $r0,$r0,#0x20
   9d1e4:	49 00 03 bd 	jal 9d95e <puts>
   9d1e8:	44 60 00 ff 	movi $r6,#255
   9d1ec:	d5 5c       	j8 9d2a4 <AB_DFU_set_active_code_area+0xd6>
   9d1ee:	84 40       	movi55 $r2,#0
   9d1f0:	46 30 00 84 	sethi $r3,#0x84
   9d1f4:	58 31 80 00 	ori $r3,$r3,#0x0
   9d1f8:	44 10 04 00 	movi $r1,#1024
   9d1fc:	38 61 8a 02 	lw $r6,[$r3+($r2<<#0x2)]
   9d200:	97 d1       	zeh33 $r7,$r2
   9d202:	c6 37       	beqz38 $r6,9d270 <AB_DFU_set_active_code_area+0xa2>
   9d204:	84 20       	movi55 $r1,#0
   9d206:	44 30 00 ff 	movi $r3,#255
   9d20a:	46 40 00 84 	sethi $r4,#0x84
   9d20e:	58 42 00 00 	ori $r4,$r4,#0x0
   9d212:	38 52 0a 02 	lw $r5,[$r4+($r2<<#0x2)]
   9d216:	ff 5e       	and33 $r5,$r3
   9d218:	c5 05       	beqz38 $r5,9d222 <AB_DFU_set_active_code_area+0x54>
   9d21a:	96 8c       	xlsb33 $r2,$r1
   9d21c:	c2 0a       	beqz38 $r2,9d230 <AB_DFU_set_active_code_area+0x62>
   9d21e:	84 42       	movi55 $r2,#2
   9d220:	d5 09       	j8 9d232 <AB_DFU_set_active_code_area+0x64>
   9d222:	9c 49       	addi333 $r1,$r1,#1
   9d224:	96 48       	zeb33 $r1,$r1
   9d226:	5a 10 04 05 	beqc $r1,#4,9d230 <AB_DFU_set_active_code_area+0x62>
   9d22a:	40 31 a0 08 	slli $r3,$r3,#8
   9d22e:	d5 f2       	j8 9d212 <AB_DFU_set_active_code_area+0x44>
   9d230:	84 41       	movi55 $r2,#1
   9d232:	4c 01 00 17 	beq $r0,$r2,9d260 <AB_DFU_set_active_code_area+0x92>
   9d236:	80 04       	mov55 $r0,$r4
   9d238:	95 fa       	slli333 $r7,$r7,#2
   9d23a:	99 f8       	add333 $r7,$r7,$r0
   9d23c:	99 cf       	add333 $r7,$r1,$r7
   9d23e:	84 41       	movi55 $r2,#1
   9d240:	50 1f 80 07 	addi $r1,$sp,#7
   9d244:	80 07       	mov55 $r0,$r7
   9d246:	49 ff f2 cb 	jal 9b7dc <DRV_Flash_ByteProgram>
   9d24a:	80 c0       	mov55 $r6,$r0
   9d24c:	49 ff 1a f7 	jal 8083a <DRV_MCU_ClearCache>
   9d250:	80 27       	mov55 $r1,$r7
   9d252:	46 00 00 a2 	sethi $r0,#0xa2
   9d256:	58 00 00 30 	ori $r0,$r0,#0x30
   9d25a:	49 ff eb 3e 	jal 9a8d6 <printf>
   9d25e:	d5 23       	j8 9d2a4 <AB_DFU_set_active_code_area+0xd6>
   9d260:	46 00 00 a2 	sethi $r0,#0xa2
   9d264:	58 00 00 4c 	ori $r0,$r0,#0x4c
   9d268:	49 00 03 7b 	jal 9d95e <puts>
   9d26c:	84 c0       	movi55 $r6,#0
   9d26e:	d5 1b       	j8 9d2a4 <AB_DFU_set_active_code_area+0xd6>
   9d270:	9c 91       	addi333 $r2,$r2,#1
   9d272:	4c 20 ff c5 	bne $r2,$r1,9d1fc <AB_DFU_set_active_code_area+0x2e>
   9d276:	5a 08 02 17 	bnec $r0,#2,9d2a4 <AB_DFU_set_active_code_area+0xd6>
   9d27a:	80 03       	mov55 $r0,$r3
   9d27c:	49 ff f4 4b 	jal 9bb12 <DRV_Flash_SectorErase>
   9d280:	50 1f 80 07 	addi $r1,$sp,#7
   9d284:	84 41       	movi55 $r2,#1
   9d286:	46 00 00 84 	sethi $r0,#0x84
   9d28a:	58 00 00 00 	ori $r0,$r0,#0x0
   9d28e:	49 ff f2 a7 	jal 9b7dc <DRV_Flash_ByteProgram>
   9d292:	80 c0       	mov55 $r6,$r0
   9d294:	49 ff 1a d3 	jal 8083a <DRV_MCU_ClearCache>
   9d298:	46 00 00 a2 	sethi $r0,#0xa2
   9d29c:	58 00 00 68 	ori $r0,$r0,#0x68
   9d2a0:	49 00 03 5f 	jal 9d95e <puts>
   9d2a4:	80 06       	mov55 $r0,$r6
   9d2a6:	fc a1       	pop25 $r8,#0x8    ! {$r6~$r8, $fp, $gp, $lp}

0009d2a8 <AB_DFU_write_flash>:
   9d2a8:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9d2aa:	96 90       	zeb33 $r2,$r2
   9d2ac:	c2 06       	beqz38 $r2,9d2b8 <AB_DFU_write_flash+0x10>
   9d2ae:	49 ff f2 97 	jal 9b7dc <DRV_Flash_ByteProgram>
   9d2b2:	49 ff 1a c4 	jal 8083a <DRV_MCU_ClearCache>
   9d2b6:	d5 03       	j8 9d2bc <AB_DFU_write_flash+0x14>
   9d2b8:	49 ff f3 14 	jal 9b8e0 <DRV_Flash_PageProgram>
   9d2bc:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009d2be <AB_DFU_erase_flash>:
   9d2be:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9d2c0:	5a 10 01 08 	beqc $r1,#1,9d2d0 <AB_DFU_erase_flash+0x12>
   9d2c4:	c1 09       	beqz38 $r1,9d2d6 <AB_DFU_erase_flash+0x18>
   9d2c6:	5a 18 02 0b 	bnec $r1,#2,9d2dc <AB_DFU_erase_flash+0x1e>
   9d2ca:	49 ff f4 24 	jal 9bb12 <DRV_Flash_SectorErase>
   9d2ce:	d5 0d       	j8 9d2e8 <AB_DFU_erase_flash+0x2a>
   9d2d0:	49 ff f4 1c 	jal 9bb08 <DRV_Flash_Block_32KB_Erase>
   9d2d4:	d5 0a       	j8 9d2e8 <AB_DFU_erase_flash+0x2a>
   9d2d6:	49 ff f4 14 	jal 9bafe <DRV_Flash_Block_64KB_Erase>
   9d2da:	d5 07       	j8 9d2e8 <AB_DFU_erase_flash+0x2a>
   9d2dc:	46 00 00 a2 	sethi $r0,#0xa2
   9d2e0:	58 00 00 88 	ori $r0,$r0,#0x88
   9d2e4:	49 00 03 3d 	jal 9d95e <puts>
   9d2e8:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009d2ea <_malloc_trim_r>:
   9d2ea:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9d2ec:	87 80       	movi55 $fp,#0
   9d2ee:	3e 7f c2 4c 	addi.gp $r7,#-15796
   9d2f2:	80 c0       	mov55 $r6,$r0
   9d2f4:	81 01       	mov55 $r8,$r1
   9d2f6:	49 00 03 29 	jal 9d948 <__malloc_lock>
   9d2fa:	a0 3a       	lwi333 $r0,[$r7+#0x8]
   9d2fc:	04 90 00 01 	lwi $r9,[$r0+#0x4]
   9d300:	93 22       	srli45 $r9,#2
   9d302:	40 94 88 08 	slli $r9,$r9,#2
   9d306:	50 04 8f ef 	addi $r0,$r9,#4079
   9d30a:	40 80 20 01 	sub $r8,$r0,$r8
   9d30e:	44 0f f0 00 	movi $r0,#-4096
   9d312:	40 84 00 02 	and $r8,$r8,$r0
   9d316:	89 00       	add45 $r8,$r0
   9d318:	5e f4 10 00 	sltsi $r15,$r8,#4096
   9d31c:	e8 02       	beqzs8 9d320 <_malloc_trim_r+0x36>
   9d31e:	d5 21       	j8 9d360 <_malloc_trim_r+0x76>
   9d320:	84 20       	movi55 $r1,#0
   9d322:	80 06       	mov55 $r0,$r6
   9d324:	49 00 03 40 	jal 9d9a4 <_sbrk_r>
   9d328:	a0 7a       	lwi333 $r1,[$r7+#0x8]
   9d32a:	88 29       	add45 $r1,$r9
   9d32c:	4c 00 80 03 	beq $r0,$r1,9d332 <_malloc_trim_r+0x48>
   9d330:	d5 18       	j8 9d360 <_malloc_trim_r+0x76>
   9d332:	80 06       	mov55 $r0,$r6
   9d334:	52 14 00 00 	subri $r1,$r8,#0
   9d338:	49 00 03 36 	jal 9d9a4 <_sbrk_r>
   9d33c:	5a 0f ff 17 	bnec $r0,#-1,9d36a <_malloc_trim_r+0x80>
   9d340:	84 20       	movi55 $r1,#0
   9d342:	80 06       	mov55 $r0,$r6
   9d344:	49 00 03 30 	jal 9d9a4 <_sbrk_r>
   9d348:	a0 7a       	lwi333 $r1,[$r7+#0x8]
   9d34a:	9a 81       	sub333 $r2,$r0,$r1
   9d34c:	e4 50       	sltsi45 $r2,#16
   9d34e:	e9 09       	bnezs8 9d360 <_malloc_trim_r+0x76>
   9d350:	3c 3d f1 96 	lwi.gp $r3,[+#-14760]
   9d354:	58 21 00 01 	ori $r2,$r2,#0x1
   9d358:	9a 03       	sub333 $r0,$r0,$r3
   9d35a:	3c 0f f4 a3 	swi.gp $r0,[+#-11636]
   9d35e:	a8 89       	swi333 $r2,[$r1+#0x4]
   9d360:	80 06       	mov55 $r0,$r6
   9d362:	49 00 02 f5 	jal 9d94c <__malloc_unlock>
   9d366:	84 00       	movi55 $r0,#0
   9d368:	d5 11       	j8 9d38a <_malloc_trim_r+0xa0>
   9d36a:	a0 3a       	lwi333 $r0,[$r7+#0x8]
   9d36c:	8b 28       	sub45 $r9,$r8
   9d36e:	58 94 80 01 	ori $r9,$r9,#0x1
   9d372:	14 90 00 01 	swi $r9,[$r0+#0x4]
   9d376:	3c 1d f4 a3 	lwi.gp $r1,[+#-11636]
   9d37a:	40 80 a0 01 	sub $r8,$r1,$r8
   9d37e:	3c 8f f4 a3 	swi.gp $r8,[+#-11636]
   9d382:	80 06       	mov55 $r0,$r6
   9d384:	49 00 02 e4 	jal 9d94c <__malloc_unlock>
   9d388:	84 01       	movi55 $r0,#1
   9d38a:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009d38c <_free_r>:
   9d38c:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9d38e:	87 80       	movi55 $fp,#0
   9d390:	80 e0       	mov55 $r7,$r0
   9d392:	80 c1       	mov55 $r6,$r1
   9d394:	4e 12 00 b8 	beqz $r1,9d504 <_free_r+0x178>
   9d398:	49 00 02 d8 	jal 9d948 <__malloc_lock>
   9d39c:	50 13 7f f8 	addi $r1,$r6,#-8
   9d3a0:	a1 49       	lwi333 $r5,[$r1+#0x4]
   9d3a2:	40 22 84 09 	srli $r2,$r5,#1
   9d3a6:	94 91       	slli333 $r2,$r2,#1
   9d3a8:	98 ca       	add333 $r3,$r1,$r2
   9d3aa:	a1 99       	lwi333 $r6,[$r3+#0x4]
   9d3ac:	3e 4f c2 4c 	addi.gp $r4,#-15796
   9d3b0:	92 c2       	srli45 $r6,#2
   9d3b2:	95 b2       	slli333 $r6,$r6,#2
   9d3b4:	a0 22       	lwi333 $r0,[$r4+#0x8]
   9d3b6:	97 6c       	xlsb33 $r5,$r5
   9d3b8:	4c 30 40 1b 	bne $r3,$r0,9d3ee <_free_r+0x62>
   9d3bc:	98 b2       	add333 $r2,$r6,$r2
   9d3be:	cd 08       	bnez38 $r5,9d3ce <_free_r+0x42>
   9d3c0:	b4 01       	lwi450 $r0,[$r1]
   9d3c2:	9a 48       	sub333 $r1,$r1,$r0
   9d3c4:	a0 ca       	lwi333 $r3,[$r1+#0x8]
   9d3c6:	98 90       	add333 $r2,$r2,$r0
   9d3c8:	a0 0b       	lwi333 $r0,[$r1+#0xc]
   9d3ca:	a8 1b       	swi333 $r0,[$r3+#0xc]
   9d3cc:	a8 c2       	swi333 $r3,[$r0+#0x8]
   9d3ce:	58 01 00 01 	ori $r0,$r2,#0x1
   9d3d2:	a8 09       	swi333 $r0,[$r1+#0x4]
   9d3d4:	3c 0d f1 95 	lwi.gp $r0,[+#-14764]
   9d3d8:	a8 62       	swi333 $r1,[$r4+#0x8]
   9d3da:	e2 40       	slt45 $r2,$r0
   9d3dc:	4e f3 00 91 	bnez $r15,9d4fe <_free_r+0x172>
   9d3e0:	3c 1d f4 a0 	lwi.gp $r1,[+#-11648]
   9d3e4:	80 07       	mov55 $r0,$r7
   9d3e6:	49 ff ff 82 	jal 9d2ea <_malloc_trim_r>
   9d3ea:	48 00 00 8a 	j 9d4fe <_free_r+0x172>
   9d3ee:	a9 99       	swi333 $r6,[$r3+#0x4]
   9d3f0:	c5 03       	beqz38 $r5,9d3f6 <_free_r+0x6a>
   9d3f2:	84 a0       	movi55 $r5,#0
   9d3f4:	d5 11       	j8 9d416 <_free_r+0x8a>
   9d3f6:	b4 01       	lwi450 $r0,[$r1]
   9d3f8:	50 82 00 08 	addi $r8,$r4,#8
   9d3fc:	9a 48       	sub333 $r1,$r1,$r0
   9d3fe:	98 90       	add333 $r2,$r2,$r0
   9d400:	a0 0a       	lwi333 $r0,[$r1+#0x8]
   9d402:	4c 04 40 04 	bne $r0,$r8,9d40a <_free_r+0x7e>
   9d406:	84 a1       	movi55 $r5,#1
   9d408:	d5 07       	j8 9d416 <_free_r+0x8a>
   9d40a:	04 80 80 03 	lwi $r8,[$r1+#0xc]
   9d40e:	14 80 00 03 	swi $r8,[$r0+#0xc]
   9d412:	14 04 00 02 	swi $r0,[$r8+#0x8]
   9d416:	98 1e       	add333 $r0,$r3,$r6
   9d418:	a0 01       	lwi333 $r0,[$r0+#0x4]
   9d41a:	96 04       	xlsb33 $r0,$r0
   9d41c:	c8 12       	bnez38 $r0,9d440 <_free_r+0xb4>
   9d41e:	98 96       	add333 $r2,$r2,$r6
   9d420:	cd 0c       	bnez38 $r5,9d438 <_free_r+0xac>
   9d422:	a1 9a       	lwi333 $r6,[$r3+#0x8]
   9d424:	50 02 00 08 	addi $r0,$r4,#8
   9d428:	4c 60 40 08 	bne $r6,$r0,9d438 <_free_r+0xac>
   9d42c:	a8 73       	swi333 $r1,[$r6+#0xc]
   9d42e:	a8 72       	swi333 $r1,[$r6+#0x8]
   9d430:	a9 8b       	swi333 $r6,[$r1+#0xc]
   9d432:	a9 8a       	swi333 $r6,[$r1+#0x8]
   9d434:	84 a1       	movi55 $r5,#1
   9d436:	d5 05       	j8 9d440 <_free_r+0xb4>
   9d438:	a0 1b       	lwi333 $r0,[$r3+#0xc]
   9d43a:	a0 da       	lwi333 $r3,[$r3+#0x8]
   9d43c:	a8 1b       	swi333 $r0,[$r3+#0xc]
   9d43e:	a8 c2       	swi333 $r3,[$r0+#0x8]
   9d440:	58 01 00 01 	ori $r0,$r2,#0x1
   9d444:	a8 09       	swi333 $r0,[$r1+#0x4]
   9d446:	38 20 88 0a 	sw $r2,[$r1+($r2<<#0x0)]
   9d44a:	cd 5a       	bnez38 $r5,9d4fe <_free_r+0x172>
   9d44c:	5c f1 02 00 	slti $r15,$r2,#512
   9d450:	e8 13       	beqzs8 9d476 <_free_r+0xea>
   9d452:	92 43       	srli45 $r2,#3
   9d454:	40 01 08 0a 	srai $r0,$r2,#2
   9d458:	84 61       	movi55 $r3,#1
   9d45a:	40 01 80 0c 	sll $r0,$r3,$r0
   9d45e:	a0 e1       	lwi333 $r3,[$r4+#0x4]
   9d460:	94 93       	slli333 $r2,$r2,#3
   9d462:	fe 1f       	or33 $r0,$r3
   9d464:	80 64       	mov55 $r3,$r4
   9d466:	98 93       	add333 $r2,$r2,$r3
   9d468:	a8 21       	swi333 $r0,[$r4+#0x4]
   9d46a:	a0 12       	lwi333 $r0,[$r2+#0x8]
   9d46c:	a8 8b       	swi333 $r2,[$r1+#0xc]
   9d46e:	a8 0a       	swi333 $r0,[$r1+#0x8]
   9d470:	a8 43       	swi333 $r1,[$r0+#0xc]
   9d472:	a8 52       	swi333 $r1,[$r2+#0x8]
   9d474:	d5 45       	j8 9d4fe <_free_r+0x172>
   9d476:	40 51 24 09 	srli $r5,$r2,#9
   9d47a:	e6 a5       	slti45 $r5,#5
   9d47c:	e8 06       	beqzs8 9d488 <_free_r+0xfc>
   9d47e:	40 51 18 09 	srli $r5,$r2,#6
   9d482:	50 52 80 38 	addi $r5,$r5,#56
   9d486:	d5 20       	j8 9d4c6 <_free_r+0x13a>
   9d488:	e6 b5       	slti45 $r5,#21
   9d48a:	e8 04       	beqzs8 9d492 <_free_r+0x106>
   9d48c:	50 52 80 5b 	addi $r5,$r5,#91
   9d490:	d5 1b       	j8 9d4c6 <_free_r+0x13a>
   9d492:	5c f2 80 55 	slti $r15,$r5,#85
   9d496:	e8 06       	beqzs8 9d4a2 <_free_r+0x116>
   9d498:	40 51 30 09 	srli $r5,$r2,#12
   9d49c:	50 52 80 6e 	addi $r5,$r5,#110
   9d4a0:	d5 13       	j8 9d4c6 <_free_r+0x13a>
   9d4a2:	5c f2 81 55 	slti $r15,$r5,#341
   9d4a6:	e8 06       	beqzs8 9d4b2 <_free_r+0x126>
   9d4a8:	40 51 3c 09 	srli $r5,$r2,#15
   9d4ac:	50 52 80 77 	addi $r5,$r5,#119
   9d4b0:	d5 0b       	j8 9d4c6 <_free_r+0x13a>
   9d4b2:	5c f2 85 55 	slti $r15,$r5,#1365
   9d4b6:	e9 04       	bnezs8 9d4be <_free_r+0x132>
   9d4b8:	44 50 00 7e 	movi $r5,#126
   9d4bc:	d5 05       	j8 9d4c6 <_free_r+0x13a>
   9d4be:	40 51 48 09 	srli $r5,$r2,#18
   9d4c2:	50 52 80 7c 	addi $r5,$r5,#124
   9d4c6:	80 64       	mov55 $r3,$r4
   9d4c8:	94 2b       	slli333 $r0,$r5,#3
   9d4ca:	98 03       	add333 $r0,$r0,$r3
   9d4cc:	a0 c2       	lwi333 $r3,[$r0+#0x8]
   9d4ce:	4c 30 40 0e 	bne $r3,$r0,9d4ea <_free_r+0x15e>
   9d4d2:	84 01       	movi55 $r0,#1
   9d4d4:	90 a2       	srai45 $r5,#2
   9d4d6:	40 50 14 0c 	sll $r5,$r0,$r5
   9d4da:	a0 21       	lwi333 $r0,[$r4+#0x4]
   9d4dc:	ff 47       	or33 $r5,$r0
   9d4de:	a9 61       	swi333 $r5,[$r4+#0x4]
   9d4e0:	80 03       	mov55 $r0,$r3
   9d4e2:	d5 0a       	j8 9d4f6 <_free_r+0x16a>
   9d4e4:	a0 da       	lwi333 $r3,[$r3+#0x8]
   9d4e6:	4c 30 00 07 	beq $r3,$r0,9d4f4 <_free_r+0x168>
   9d4ea:	a1 19       	lwi333 $r4,[$r3+#0x4]
   9d4ec:	92 82       	srli45 $r4,#2
   9d4ee:	95 22       	slli333 $r4,$r4,#2
   9d4f0:	e2 44       	slt45 $r2,$r4
   9d4f2:	e9 f9       	bnezs8 9d4e4 <_free_r+0x158>
   9d4f4:	a0 1b       	lwi333 $r0,[$r3+#0xc]
   9d4f6:	a8 0b       	swi333 $r0,[$r1+#0xc]
   9d4f8:	a8 ca       	swi333 $r3,[$r1+#0x8]
   9d4fa:	a8 5b       	swi333 $r1,[$r3+#0xc]
   9d4fc:	a8 42       	swi333 $r1,[$r0+#0x8]
   9d4fe:	80 07       	mov55 $r0,$r7
   9d500:	49 00 02 26 	jal 9d94c <__malloc_unlock>
   9d504:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009d506 <_malloc_r>:
   9d506:	fc 42       	push25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}
   9d508:	87 80       	movi55 $fp,#0
   9d50a:	50 70 80 0b 	addi $r7,$r1,#11
   9d50e:	81 40       	mov55 $r10,$r0
   9d510:	e6 f7       	slti45 $r7,#23
   9d512:	e8 03       	beqzs8 9d518 <_malloc_r+0x12>
   9d514:	fa e0       	movpi45 $r7,#0x10
   9d516:	d5 05       	j8 9d520 <_malloc_r+0x1a>
   9d518:	92 e3       	srli45 $r7,#3
   9d51a:	95 fb       	slli333 $r7,$r7,#3
   9d51c:	4e 75 00 04 	bltz $r7,9d524 <_malloc_r+0x1e>
   9d520:	e2 e1       	slt45 $r7,$r1
   9d522:	e8 06       	beqzs8 9d52e <_malloc_r+0x28>
   9d524:	84 2c       	movi55 $r1,#12
   9d526:	3c 1f f4 af 	swi.gp $r1,[+#-11588]
   9d52a:	48 00 01 fc 	j 9d922 <_malloc_r+0x41c>
   9d52e:	80 0a       	mov55 $r0,$r10
   9d530:	49 00 02 0c 	jal 9d948 <__malloc_lock>
   9d534:	5c f3 81 f8 	slti $r15,$r7,#504
   9d538:	e8 19       	beqzs8 9d56a <_malloc_r+0x64>
   9d53a:	3e 1f c2 4c 	addi.gp $r1,#-15796
   9d53e:	98 b9       	add333 $r2,$r7,$r1
   9d540:	a1 93       	lwi333 $r6,[$r2+#0xc]
   9d542:	40 03 8c 09 	srli $r0,$r7,#3
   9d546:	4c 61 40 07 	bne $r6,$r2,9d554 <_malloc_r+0x4e>
   9d54a:	50 23 00 08 	addi $r2,$r6,#8
   9d54e:	a1 93       	lwi333 $r6,[$r2+#0xc]
   9d550:	4c 61 00 0b 	beq $r6,$r2,9d566 <_malloc_r+0x60>
   9d554:	a0 31       	lwi333 $r0,[$r6+#0x4]
   9d556:	a0 73       	lwi333 $r1,[$r6+#0xc]
   9d558:	a0 b2       	lwi333 $r2,[$r6+#0x8]
   9d55a:	92 02       	srli45 $r0,#2
   9d55c:	94 02       	slli333 $r0,$r0,#2
   9d55e:	a8 53       	swi333 $r1,[$r2+#0xc]
   9d560:	a8 8a       	swi333 $r2,[$r1+#0x8]
   9d562:	98 30       	add333 $r0,$r6,$r0
   9d564:	d5 44       	j8 9d5ec <_malloc_r+0xe6>
   9d566:	9c 02       	addi333 $r0,$r0,#2
   9d568:	d5 4c       	j8 9d600 <_malloc_r+0xfa>
   9d56a:	40 13 a4 09 	srli $r1,$r7,#9
   9d56e:	c9 04       	bnez38 $r1,9d576 <_malloc_r+0x70>
   9d570:	40 13 8c 09 	srli $r1,$r7,#3
   9d574:	d5 27       	j8 9d5c2 <_malloc_r+0xbc>
   9d576:	e6 25       	slti45 $r1,#5
   9d578:	e8 06       	beqzs8 9d584 <_malloc_r+0x7e>
   9d57a:	40 13 98 09 	srli $r1,$r7,#6
   9d57e:	50 10 80 38 	addi $r1,$r1,#56
   9d582:	d5 20       	j8 9d5c2 <_malloc_r+0xbc>
   9d584:	e6 35       	slti45 $r1,#21
   9d586:	e8 04       	beqzs8 9d58e <_malloc_r+0x88>
   9d588:	50 10 80 5b 	addi $r1,$r1,#91
   9d58c:	d5 1b       	j8 9d5c2 <_malloc_r+0xbc>
   9d58e:	5c f0 80 55 	slti $r15,$r1,#85
   9d592:	e8 06       	beqzs8 9d59e <_malloc_r+0x98>
   9d594:	40 13 b0 09 	srli $r1,$r7,#12
   9d598:	50 10 80 6e 	addi $r1,$r1,#110
   9d59c:	d5 13       	j8 9d5c2 <_malloc_r+0xbc>
   9d59e:	5c f0 81 55 	slti $r15,$r1,#341
   9d5a2:	e8 06       	beqzs8 9d5ae <_malloc_r+0xa8>
   9d5a4:	40 13 bc 09 	srli $r1,$r7,#15
   9d5a8:	50 10 80 77 	addi $r1,$r1,#119
   9d5ac:	d5 0b       	j8 9d5c2 <_malloc_r+0xbc>
   9d5ae:	5c f0 85 55 	slti $r15,$r1,#1365
   9d5b2:	e9 04       	bnezs8 9d5ba <_malloc_r+0xb4>
   9d5b4:	44 10 00 7e 	movi $r1,#126
   9d5b8:	d5 05       	j8 9d5c2 <_malloc_r+0xbc>
   9d5ba:	40 13 c8 09 	srli $r1,$r7,#18
   9d5be:	50 10 80 7c 	addi $r1,$r1,#124
   9d5c2:	94 cb       	slli333 $r3,$r1,#3
   9d5c4:	3e 8f c2 4c 	addi.gp $r8,#-15796
   9d5c8:	88 68       	add45 $r3,$r8
   9d5ca:	a1 9b       	lwi333 $r6,[$r3+#0xc]
   9d5cc:	d5 17       	j8 9d5fa <_malloc_r+0xf4>
   9d5ce:	a0 b1       	lwi333 $r2,[$r6+#0x4]
   9d5d0:	92 42       	srli45 $r2,#2
   9d5d2:	94 92       	slli333 $r2,$r2,#2
   9d5d4:	9b 17       	sub333 $r4,$r2,$r7
   9d5d6:	e4 90       	sltsi45 $r4,#16
   9d5d8:	e9 03       	bnezs8 9d5de <_malloc_r+0xd8>
   9d5da:	9e 49       	subi333 $r1,$r1,#1
   9d5dc:	d5 11       	j8 9d5fe <_malloc_r+0xf8>
   9d5de:	a0 33       	lwi333 $r0,[$r6+#0xc]
   9d5e0:	4e 45 00 0c 	bltz $r4,9d5f8 <_malloc_r+0xf2>
   9d5e4:	a0 72       	lwi333 $r1,[$r6+#0x8]
   9d5e6:	a8 0b       	swi333 $r0,[$r1+#0xc]
   9d5e8:	a8 42       	swi333 $r1,[$r0+#0x8]
   9d5ea:	98 32       	add333 $r0,$r6,$r2
   9d5ec:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9d5ee:	58 10 80 01 	ori $r1,$r1,#0x1
   9d5f2:	a8 41       	swi333 $r1,[$r0+#0x4]
   9d5f4:	48 00 01 a4 	j 9d93c <_malloc_r+0x436>
   9d5f8:	80 c0       	mov55 $r6,$r0
   9d5fa:	4c 61 ff ea 	bne $r6,$r3,9d5ce <_malloc_r+0xc8>
   9d5fe:	9c 09       	addi333 $r0,$r1,#1
   9d600:	3e 4f c2 54 	addi.gp $r4,#-15788
   9d604:	a1 a2       	lwi333 $r6,[$r4+#0x8]
   9d606:	4c 62 00 79 	beq $r6,$r4,9d6f8 <_malloc_r+0x1f2>
   9d60a:	a0 b1       	lwi333 $r2,[$r6+#0x4]
   9d60c:	92 42       	srli45 $r2,#2
   9d60e:	94 92       	slli333 $r2,$r2,#2
   9d610:	9a 57       	sub333 $r1,$r2,$r7
   9d612:	e4 30       	sltsi45 $r1,#16
   9d614:	e9 10       	bnezs8 9d634 <_malloc_r+0x12e>
   9d616:	98 37       	add333 $r0,$r6,$r7
   9d618:	58 20 80 01 	ori $r2,$r1,#0x1
   9d61c:	58 73 80 01 	ori $r7,$r7,#0x1
   9d620:	a9 f1       	swi333 $r7,[$r6+#0x4]
   9d622:	a8 23       	swi333 $r0,[$r4+#0xc]
   9d624:	a8 22       	swi333 $r0,[$r4+#0x8]
   9d626:	a9 03       	swi333 $r4,[$r0+#0xc]
   9d628:	a9 02       	swi333 $r4,[$r0+#0x8]
   9d62a:	a8 81       	swi333 $r2,[$r0+#0x4]
   9d62c:	38 10 04 0a 	sw $r1,[$r0+($r1<<#0x0)]
   9d630:	48 00 01 86 	j 9d93c <_malloc_r+0x436>
   9d634:	a9 23       	swi333 $r4,[$r4+#0xc]
   9d636:	a9 22       	swi333 $r4,[$r4+#0x8]
   9d638:	4e 15 00 09 	bltz $r1,9d64a <_malloc_r+0x144>
   9d63c:	98 b2       	add333 $r2,$r6,$r2
   9d63e:	a0 11       	lwi333 $r0,[$r2+#0x4]
   9d640:	58 00 00 01 	ori $r0,$r0,#0x1
   9d644:	a8 11       	swi333 $r0,[$r2+#0x4]
   9d646:	48 00 01 7b 	j 9d93c <_malloc_r+0x436>
   9d64a:	5c f1 02 00 	slti $r15,$r2,#512
   9d64e:	e8 10       	beqzs8 9d66e <_malloc_r+0x168>
   9d650:	92 43       	srli45 $r2,#3
   9d652:	50 12 7f f8 	addi $r1,$r4,#-8
   9d656:	40 31 08 0a 	srai $r3,$r2,#2
   9d65a:	84 a1       	movi55 $r5,#1
   9d65c:	40 32 8c 0c 	sll $r3,$r5,$r3
   9d660:	a1 49       	lwi333 $r5,[$r1+#0x4]
   9d662:	94 93       	slli333 $r2,$r2,#3
   9d664:	fe ef       	or33 $r3,$r5
   9d666:	98 91       	add333 $r2,$r2,$r1
   9d668:	a8 c9       	swi333 $r3,[$r1+#0x4]
   9d66a:	a0 52       	lwi333 $r1,[$r2+#0x8]
   9d66c:	d5 42       	j8 9d6f0 <_malloc_r+0x1ea>
   9d66e:	40 31 24 09 	srli $r3,$r2,#9
   9d672:	e6 65       	slti45 $r3,#5
   9d674:	e8 06       	beqzs8 9d680 <_malloc_r+0x17a>
   9d676:	40 31 18 09 	srli $r3,$r2,#6
   9d67a:	50 31 80 38 	addi $r3,$r3,#56
   9d67e:	d5 20       	j8 9d6be <_malloc_r+0x1b8>
   9d680:	e6 75       	slti45 $r3,#21
   9d682:	e8 04       	beqzs8 9d68a <_malloc_r+0x184>
   9d684:	50 31 80 5b 	addi $r3,$r3,#91
   9d688:	d5 1b       	j8 9d6be <_malloc_r+0x1b8>
   9d68a:	5c f1 80 55 	slti $r15,$r3,#85
   9d68e:	e8 06       	beqzs8 9d69a <_malloc_r+0x194>
   9d690:	40 31 30 09 	srli $r3,$r2,#12
   9d694:	50 31 80 6e 	addi $r3,$r3,#110
   9d698:	d5 13       	j8 9d6be <_malloc_r+0x1b8>
   9d69a:	5c f1 81 55 	slti $r15,$r3,#341
   9d69e:	e8 06       	beqzs8 9d6aa <_malloc_r+0x1a4>
   9d6a0:	40 31 3c 09 	srli $r3,$r2,#15
   9d6a4:	50 31 80 77 	addi $r3,$r3,#119
   9d6a8:	d5 0b       	j8 9d6be <_malloc_r+0x1b8>
   9d6aa:	5c f1 85 55 	slti $r15,$r3,#1365
   9d6ae:	e9 04       	bnezs8 9d6b6 <_malloc_r+0x1b0>
   9d6b0:	44 30 00 7e 	movi $r3,#126
   9d6b4:	d5 05       	j8 9d6be <_malloc_r+0x1b8>
   9d6b6:	40 31 48 09 	srli $r3,$r2,#18
   9d6ba:	50 31 80 7c 	addi $r3,$r3,#124
   9d6be:	50 82 7f f8 	addi $r8,$r4,#-8
   9d6c2:	95 5b       	slli333 $r5,$r3,#3
   9d6c4:	88 a8       	add45 $r5,$r8
   9d6c6:	a0 6a       	lwi333 $r1,[$r5+#0x8]
   9d6c8:	d9 0e       	bnes38 $r1,9d6e4 <_malloc_r+0x1de>
   9d6ca:	84 41       	movi55 $r2,#1
   9d6cc:	90 62       	srai45 $r3,#2
   9d6ce:	40 31 0c 0c 	sll $r3,$r2,$r3
   9d6d2:	04 24 00 01 	lwi $r2,[$r8+#0x4]
   9d6d6:	fe d7       	or33 $r3,$r2
   9d6d8:	14 34 00 01 	swi $r3,[$r8+#0x4]
   9d6dc:	80 41       	mov55 $r2,$r1
   9d6de:	d5 09       	j8 9d6f0 <_malloc_r+0x1ea>
   9d6e0:	a0 4a       	lwi333 $r1,[$r1+#0x8]
   9d6e2:	d1 06       	beqs38 $r1,9d6ee <_malloc_r+0x1e8>
   9d6e4:	a0 c9       	lwi333 $r3,[$r1+#0x4]
   9d6e6:	92 62       	srli45 $r3,#2
   9d6e8:	94 da       	slli333 $r3,$r3,#2
   9d6ea:	e2 43       	slt45 $r2,$r3
   9d6ec:	e9 fa       	bnezs8 9d6e0 <_malloc_r+0x1da>
   9d6ee:	a0 8b       	lwi333 $r2,[$r1+#0xc]
   9d6f0:	a8 b3       	swi333 $r2,[$r6+#0xc]
   9d6f2:	a8 72       	swi333 $r1,[$r6+#0x8]
   9d6f4:	a9 8b       	swi333 $r6,[$r1+#0xc]
   9d6f6:	a9 92       	swi333 $r6,[$r2+#0x8]
   9d6f8:	84 41       	movi55 $r2,#1
   9d6fa:	40 10 08 0a 	srai $r1,$r0,#2
   9d6fe:	50 92 7f f8 	addi $r9,$r4,#-8
   9d702:	40 11 04 0c 	sll $r1,$r2,$r1
   9d706:	04 24 80 01 	lwi $r2,[$r9+#0x4]
   9d70a:	e2 41       	slt45 $r2,$r1
   9d70c:	e9 69       	bnezs8 9d7de <_malloc_r+0x2d8>
   9d70e:	40 30 88 02 	and $r3,$r1,$r2
   9d712:	cb 08       	bnez38 $r3,9d722 <_malloc_r+0x21c>
   9d714:	92 02       	srli45 $r0,#2
   9d716:	94 02       	slli333 $r0,$r0,#2
   9d718:	98 49       	add333 $r1,$r1,$r1
   9d71a:	40 30 88 02 	and $r3,$r1,$r2
   9d71e:	9c 04       	addi333 $r0,$r0,#4
   9d720:	c3 fc       	beqz38 $r3,9d718 <_malloc_r+0x212>
   9d722:	50 32 7f f8 	addi $r3,$r4,#-8
   9d726:	94 83       	slli333 $r2,$r0,#3
   9d728:	98 93       	add333 $r2,$r2,$r3
   9d72a:	80 a2       	mov55 $r5,$r2
   9d72c:	80 60       	mov55 $r3,$r0
   9d72e:	a1 ab       	lwi333 $r6,[$r5+#0xc]
   9d730:	d5 32       	j8 9d794 <_malloc_r+0x28e>
   9d732:	04 83 00 01 	lwi $r8,[$r6+#0x4]
   9d736:	41 e4 08 09 	srli $lp,$r8,#2
   9d73a:	41 ef 08 08 	slli $lp,$lp,#2
   9d73e:	40 8f 1c 01 	sub $r8,$lp,$r7
   9d742:	15 ef 80 03 	swi $lp,[$sp+#0xc]
   9d746:	e5 10       	sltsi45 $r8,#16
   9d748:	e9 14       	bnezs8 9d770 <_malloc_r+0x26a>
   9d74a:	a0 73       	lwi333 $r1,[$r6+#0xc]
   9d74c:	a0 b2       	lwi333 $r2,[$r6+#0x8]
   9d74e:	98 37       	add333 $r0,$r6,$r7
   9d750:	a8 53       	swi333 $r1,[$r2+#0xc]
   9d752:	a8 8a       	swi333 $r2,[$r1+#0x8]
   9d754:	58 73 80 01 	ori $r7,$r7,#0x1
   9d758:	58 14 00 01 	ori $r1,$r8,#0x1
   9d75c:	a9 f1       	swi333 $r7,[$r6+#0x4]
   9d75e:	a8 23       	swi333 $r0,[$r4+#0xc]
   9d760:	a8 22       	swi333 $r0,[$r4+#0x8]
   9d762:	a9 03       	swi333 $r4,[$r0+#0xc]
   9d764:	a9 02       	swi333 $r4,[$r0+#0x8]
   9d766:	a8 41       	swi333 $r1,[$r0+#0x4]
   9d768:	38 80 20 0a 	sw $r8,[$r0+($r8<<#0x0)]
   9d76c:	48 00 00 e8 	j 9d93c <_malloc_r+0x436>
   9d770:	05 e3 00 03 	lwi $lp,[$r6+#0xc]
   9d774:	4e 85 00 0f 	bltz $r8,9d792 <_malloc_r+0x28c>
   9d778:	f1 03       	lwi37.sp $r1,[+#0xc]
   9d77a:	98 31       	add333 $r0,$r6,$r1
   9d77c:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9d77e:	58 10 80 01 	ori $r1,$r1,#0x1
   9d782:	a8 41       	swi333 $r1,[$r0+#0x4]
   9d784:	a0 32       	lwi333 $r0,[$r6+#0x8]
   9d786:	15 e0 00 03 	swi $lp,[$r0+#0xc]
   9d78a:	14 0f 00 02 	swi $r0,[$lp+#0x8]
   9d78e:	48 00 00 d7 	j 9d93c <_malloc_r+0x436>
   9d792:	80 de       	mov55 $r6,$lp
   9d794:	de cf       	bnes38 $r6,9d732 <_malloc_r+0x22c>
   9d796:	9c d9       	addi333 $r3,$r3,#1
   9d798:	54 61 80 03 	andi $r6,$r3,#0x3
   9d79c:	c6 03       	beqz38 $r6,9d7a2 <_malloc_r+0x29c>
   9d79e:	8c a8       	addi45 $r5,#8
   9d7a0:	d5 c7       	j8 9d72e <_malloc_r+0x228>
   9d7a2:	54 50 00 03 	andi $r5,$r0,#0x3
   9d7a6:	cd 08       	bnez38 $r5,9d7b6 <_malloc_r+0x2b0>
   9d7a8:	04 24 80 01 	lwi $r2,[$r9+#0x4]
   9d7ac:	fe 0b       	not33 $r0,$r1
   9d7ae:	fe 16       	and33 $r0,$r2
   9d7b0:	14 04 80 01 	swi $r0,[$r9+#0x4]
   9d7b4:	d5 07       	j8 9d7c2 <_malloc_r+0x2bc>
   9d7b6:	50 51 7f f8 	addi $r5,$r2,#-8
   9d7ba:	b4 42       	lwi450 $r2,[$r2]
   9d7bc:	da 03       	bnes38 $r2,9d7c2 <_malloc_r+0x2bc>
   9d7be:	9e 01       	subi333 $r0,$r0,#1
   9d7c0:	d5 f1       	j8 9d7a2 <_malloc_r+0x29c>
   9d7c2:	04 24 80 01 	lwi $r2,[$r9+#0x4]
   9d7c6:	98 49       	add333 $r1,$r1,$r1
   9d7c8:	e2 41       	slt45 $r2,$r1
   9d7ca:	e9 0a       	bnezs8 9d7de <_malloc_r+0x2d8>
   9d7cc:	c1 09       	beqz38 $r1,9d7de <_malloc_r+0x2d8>
   9d7ce:	80 03       	mov55 $r0,$r3
   9d7d0:	d5 03       	j8 9d7d6 <_malloc_r+0x2d0>
   9d7d2:	9c 04       	addi333 $r0,$r0,#4
   9d7d4:	98 49       	add333 $r1,$r1,$r1
   9d7d6:	40 30 88 02 	and $r3,$r1,$r2
   9d7da:	cb a4       	bnez38 $r3,9d722 <_malloc_r+0x21c>
   9d7dc:	d5 fb       	j8 9d7d2 <_malloc_r+0x2cc>
   9d7de:	04 84 80 02 	lwi $r8,[$r9+#0x8]
   9d7e2:	04 24 00 01 	lwi $r2,[$r8+#0x4]
   9d7e6:	92 42       	srli45 $r2,#2
   9d7e8:	94 92       	slli333 $r2,$r2,#2
   9d7ea:	e2 47       	slt45 $r2,$r7
   9d7ec:	e9 05       	bnezs8 9d7f6 <_malloc_r+0x2f0>
   9d7ee:	9a 57       	sub333 $r1,$r2,$r7
   9d7f0:	e4 30       	sltsi45 $r1,#16
   9d7f2:	4e f2 00 9a 	beqz $r15,9d926 <_malloc_r+0x420>
   9d7f6:	3c 3d f4 a0 	lwi.gp $r3,[+#-11648]
   9d7fa:	3c 0d f1 96 	lwi.gp $r0,[+#-14760]
   9d7fe:	8c 70       	addi45 $r3,#16
   9d800:	98 df       	add333 $r3,$r3,$r7
   9d802:	5a 07 ff 07 	beqc $r0,#-1,9d810 <_malloc_r+0x30a>
   9d806:	50 31 8f ff 	addi $r3,$r3,#4095
   9d80a:	92 6c       	srli45 $r3,#12
   9d80c:	40 31 b0 08 	slli $r3,$r3,#12
   9d810:	80 23       	mov55 $r1,$r3
   9d812:	80 0a       	mov55 $r0,$r10
   9d814:	f2 81       	swi37.sp $r2,[+#0x4]
   9d816:	f3 82       	swi37.sp $r3,[+#0x8]
   9d818:	49 00 00 c6 	jal 9d9a4 <_sbrk_r>
   9d81c:	80 c0       	mov55 $r6,$r0
   9d81e:	f2 01       	lwi37.sp $r2,[+#0x4]
   9d820:	f3 02       	lwi37.sp $r3,[+#0x8]
   9d822:	85 ff       	movi55 $r15,#-1
   9d824:	4c 07 80 72 	beq $r0,$r15,9d908 <_malloc_r+0x402>
   9d828:	40 04 08 00 	add $r0,$r8,$r2
   9d82c:	e2 c0       	slt45 $r6,$r0
   9d82e:	e8 03       	beqzs8 9d834 <_malloc_r+0x32e>
   9d830:	4c 84 c0 6c 	bne $r8,$r9,9d908 <_malloc_r+0x402>
   9d834:	3c 4d f4 a3 	lwi.gp $r4,[+#-11636]
   9d838:	99 1c       	add333 $r4,$r3,$r4
   9d83a:	3c 4f f4 a3 	swi.gp $r4,[+#-11636]
   9d83e:	4c 60 40 0c 	bne $r6,$r0,9d856 <_malloc_r+0x350>
   9d842:	54 13 0f ff 	andi $r1,$r6,#0xfff
   9d846:	c9 08       	bnez38 $r1,9d856 <_malloc_r+0x350>
   9d848:	04 04 80 02 	lwi $r0,[$r9+#0x8]
   9d84c:	98 9a       	add333 $r2,$r3,$r2
   9d84e:	58 21 00 01 	ori $r2,$r2,#0x1
   9d852:	a8 81       	swi333 $r2,[$r0+#0x4]
   9d854:	d5 4c       	j8 9d8ec <_malloc_r+0x3e6>
   9d856:	3c 5d f1 96 	lwi.gp $r5,[+#-14760]
   9d85a:	5a 5f ff 05 	bnec $r5,#-1,9d864 <_malloc_r+0x35e>
   9d85e:	3c 6f f1 96 	swi.gp $r6,[+#-14760]
   9d862:	d5 05       	j8 9d86c <_malloc_r+0x366>
   9d864:	99 34       	add333 $r4,$r6,$r4
   9d866:	9a 20       	sub333 $r0,$r4,$r0
   9d868:	3c 0f f4 a3 	swi.gp $r0,[+#-11636]
   9d86c:	54 03 00 07 	andi $r0,$r6,#0x7
   9d870:	c0 04       	beqz38 $r0,9d878 <_malloc_r+0x372>
   9d872:	52 00 00 08 	subri $r0,$r0,#8
   9d876:	99 b0       	add333 $r6,$r6,$r0
   9d878:	98 f3       	add333 $r3,$r6,$r3
   9d87a:	50 00 10 00 	addi $r0,$r0,#4096
   9d87e:	54 31 8f ff 	andi $r3,$r3,#0xfff
   9d882:	9a c3       	sub333 $r3,$r0,$r3
   9d884:	80 23       	mov55 $r1,$r3
   9d886:	80 0a       	mov55 $r0,$r10
   9d888:	f2 81       	swi37.sp $r2,[+#0x4]
   9d88a:	f3 82       	swi37.sp $r3,[+#0x8]
   9d88c:	49 00 00 8c 	jal 9d9a4 <_sbrk_r>
   9d890:	f2 01       	lwi37.sp $r2,[+#0x4]
   9d892:	f3 02       	lwi37.sp $r3,[+#0x8]
   9d894:	5a 0f ff 04 	bnec $r0,#-1,9d89c <_malloc_r+0x396>
   9d898:	80 06       	mov55 $r0,$r6
   9d89a:	84 60       	movi55 $r3,#0
   9d89c:	3c 4d f4 a3 	lwi.gp $r4,[+#-11636]
   9d8a0:	9a 06       	sub333 $r0,$r0,$r6
   9d8a2:	99 1c       	add333 $r4,$r3,$r4
   9d8a4:	98 c3       	add333 $r3,$r0,$r3
   9d8a6:	58 31 80 01 	ori $r3,$r3,#0x1
   9d8aa:	3c 4f f4 a3 	swi.gp $r4,[+#-11636]
   9d8ae:	14 64 80 02 	swi $r6,[$r9+#0x8]
   9d8b2:	a8 f1       	swi333 $r3,[$r6+#0x4]
   9d8b4:	4c 84 80 1c 	beq $r8,$r9,9d8ec <_malloc_r+0x3e6>
   9d8b8:	e6 50       	slti45 $r2,#16
   9d8ba:	e8 04       	beqzs8 9d8c2 <_malloc_r+0x3bc>
   9d8bc:	84 01       	movi55 $r0,#1
   9d8be:	a8 31       	swi333 $r0,[$r6+#0x4]
   9d8c0:	d5 24       	j8 9d908 <_malloc_r+0x402>
   9d8c2:	8e 4c       	subi45 $r2,#12
   9d8c4:	92 43       	srli45 $r2,#3
   9d8c6:	94 93       	slli333 $r2,$r2,#3
   9d8c8:	04 04 00 01 	lwi $r0,[$r8+#0x4]
   9d8cc:	84 25       	movi55 $r1,#5
   9d8ce:	96 04       	xlsb33 $r0,$r0
   9d8d0:	fe 17       	or33 $r0,$r2
   9d8d2:	14 04 00 01 	swi $r0,[$r8+#0x4]
   9d8d6:	40 04 08 00 	add $r0,$r8,$r2
   9d8da:	a8 41       	swi333 $r1,[$r0+#0x4]
   9d8dc:	a8 42       	swi333 $r1,[$r0+#0x8]
   9d8de:	e6 50       	slti45 $r2,#16
   9d8e0:	e9 06       	bnezs8 9d8ec <_malloc_r+0x3e6>
   9d8e2:	80 0a       	mov55 $r0,$r10
   9d8e4:	50 14 00 08 	addi $r1,$r8,#8
   9d8e8:	49 ff fd 52 	jal 9d38c <_free_r>
   9d8ec:	3c 0d f4 a3 	lwi.gp $r0,[+#-11636]
   9d8f0:	3c 2d f4 a1 	lwi.gp $r2,[+#-11644]
   9d8f4:	e2 40       	slt45 $r2,$r0
   9d8f6:	e8 03       	beqzs8 9d8fc <_malloc_r+0x3f6>
   9d8f8:	3c 0f f4 a1 	swi.gp $r0,[+#-11644]
   9d8fc:	3c 2d f4 a2 	lwi.gp $r2,[+#-11640]
   9d900:	e2 40       	slt45 $r2,$r0
   9d902:	e8 03       	beqzs8 9d908 <_malloc_r+0x402>
   9d904:	3c 0f f4 a2 	swi.gp $r0,[+#-11640]
   9d908:	04 04 80 02 	lwi $r0,[$r9+#0x8]
   9d90c:	a0 41       	lwi333 $r1,[$r0+#0x4]
   9d90e:	92 22       	srli45 $r1,#2
   9d910:	94 4a       	slli333 $r1,$r1,#2
   9d912:	e2 27       	slt45 $r1,$r7
   9d914:	e9 04       	bnezs8 9d91c <_malloc_r+0x416>
   9d916:	9a 4f       	sub333 $r1,$r1,$r7
   9d918:	e4 30       	sltsi45 $r1,#16
   9d91a:	e8 06       	beqzs8 9d926 <_malloc_r+0x420>
   9d91c:	80 0a       	mov55 $r0,$r10
   9d91e:	49 00 00 17 	jal 9d94c <__malloc_unlock>
   9d922:	84 00       	movi55 $r0,#0
   9d924:	d5 11       	j8 9d946 <_malloc_r+0x440>
   9d926:	04 64 80 02 	lwi $r6,[$r9+#0x8]
   9d92a:	58 03 80 01 	ori $r0,$r7,#0x1
   9d92e:	58 10 80 01 	ori $r1,$r1,#0x1
   9d932:	99 f7       	add333 $r7,$r6,$r7
   9d934:	a8 31       	swi333 $r0,[$r6+#0x4]
   9d936:	14 74 80 02 	swi $r7,[$r9+#0x8]
   9d93a:	a8 79       	swi333 $r1,[$r7+#0x4]
   9d93c:	80 0a       	mov55 $r0,$r10
   9d93e:	49 00 00 07 	jal 9d94c <__malloc_unlock>
   9d942:	50 03 00 08 	addi $r0,$r6,#8
   9d946:	fc c2       	pop25 $r10,#0x10    ! {$r6~$r10, $fp, $gp, $lp}

0009d948 <__malloc_lock>:
   9d948:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9d94a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009d94c <__malloc_unlock>:
   9d94c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9d94e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009d950 <mallinfo>:
   9d950:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9d952:	84 20       	movi55 $r1,#0
   9d954:	80 c0       	mov55 $r6,$r0
   9d956:	49 00 07 34 	jal 9e7be <_mallinfo_r>
   9d95a:	80 06       	mov55 $r0,$r6
   9d95c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009d95e <puts>:
   9d95e:	fc 40       	push25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9d960:	51 cf 80 1c 	addi $fp,$sp,#28
   9d964:	84 c0       	movi55 $r6,#0
   9d966:	80 20       	mov55 $r1,$r0
   9d968:	d5 02       	j8 9d96c <puts+0xe>
   9d96a:	80 c9       	mov55 $r6,$r9
   9d96c:	38 80 98 10 	lbs $r8,[$r1+($r6<<#0x0)]
   9d970:	50 93 00 01 	addi $r9,$r6,#1
   9d974:	4e 83 ff fb 	bnez $r8,9d96a <puts+0xc>
   9d978:	50 03 00 0f 	addi $r0,$r6,#15
   9d97c:	92 03       	srli45 $r0,#3
   9d97e:	94 03       	slli333 $r0,$r0,#3
   9d980:	41 ff 80 01 	sub $sp,$sp,$r0
   9d984:	80 46       	mov55 $r2,$r6
   9d986:	80 1f       	mov55 $r0,$sp
   9d988:	49 ff 93 60 	jal 90048 <memcpy>
   9d98c:	84 0a       	movi55 $r0,#10
   9d98e:	38 0f 98 08 	sb $r0,[$sp+($r6<<#0x0)]
   9d992:	80 29       	mov55 $r1,$r9
   9d994:	80 1f       	mov55 $r0,$sp
   9d996:	49 ff e7 d4 	jal 9a93e <nds_write>
   9d99a:	80 ff       	mov55 $r7,$sp
   9d99c:	80 08       	mov55 $r0,$r8
   9d99e:	51 fe 7f e4 	addi $sp,$fp,#-28
   9d9a2:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}

0009d9a4 <_sbrk_r>:
   9d9a4:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9d9a6:	87 80       	movi55 $fp,#0
   9d9a8:	84 00       	movi55 $r0,#0
   9d9aa:	3c 0f f4 b9 	swi.gp $r0,[+#-11548]
   9d9ae:	80 01       	mov55 $r0,$r1
   9d9b0:	49 ff e6 88 	jal 9a6c0 <_sbrk>
   9d9b4:	5a 0f ff 07 	bnec $r0,#-1,9d9c2 <_sbrk_r+0x1e>
   9d9b8:	3c 1d f4 b9 	lwi.gp $r1,[+#-11548]
   9d9bc:	c1 03       	beqz38 $r1,9d9c2 <_sbrk_r+0x1e>
   9d9be:	3c 1f f4 af 	swi.gp $r1,[+#-11588]
   9d9c2:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009d9c4 <sprintf>:
   9d9c4:	3a 2f 94 3c 	smw.adm $r2,[$sp],$r5,#0x0    ! {$r2~$r5}
   9d9c8:	fc 01       	push25 $r6,#0x8    ! {$r6, $fp, $gp, $lp}
   9d9ca:	b0 86       	addri36.sp $r2,#0x18
   9d9cc:	f2 81       	swi37.sp $r2,[+#0x4]
   9d9ce:	49 00 00 40 	jal 9da4e <vsprintf>
   9d9d2:	ec 08       	addi10.sp #8
   9d9d4:	3a 6f 9b 84 	lmw.bim $r6,[$sp],$r6,#0xe    ! {$r6, $fp, $gp, $lp}
   9d9d8:	ec 10       	addi10.sp #16
   9d9da:	dd 9e       	ret5 $lp

0009d9dc <vprintf>:
   9d9dc:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9d9de:	51 cf 80 14 	addi $fp,$sp,#20
   9d9e2:	51 ff fd f8 	addi $sp,$sp,#-520
   9d9e6:	84 60       	movi55 $r3,#0
   9d9e8:	46 20 00 9d 	sethi $r2,#0x9d
   9d9ec:	58 21 0a 1c 	ori $r2,$r2,#0xa1c
   9d9f0:	46 40 00 9e 	sethi $r4,#0x9e
   9d9f4:	58 42 00 8c 	ori $r4,$r4,#0x8c
   9d9f8:	3d ff f4 ad 	swi.gp $sp,[+#-11596]
   9d9fc:	3c 3f f4 ae 	swi.gp $r3,[+#-11592]
   9da00:	49 00 00 3a 	jal 9da74 <do_printf>
   9da04:	3c 1d f4 ae 	lwi.gp $r1,[+#-11592]
   9da08:	81 00       	mov55 $r8,$r0
   9da0a:	c1 05       	beqz38 $r1,9da14 <vprintf+0x38>
   9da0c:	3c 0d f4 ad 	lwi.gp $r0,[+#-11596]
   9da10:	49 ff e7 97 	jal 9a93e <nds_write>
   9da14:	80 08       	mov55 $r0,$r8
   9da16:	51 fe 7f ec 	addi $sp,$fp,#-20
   9da1a:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009da1c <vprintf_help>:
   9da1c:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9da1e:	87 80       	movi55 $fp,#0
   9da20:	3c 2d f4 ad 	lwi.gp $r2,[+#-11596]
   9da24:	3c 1d f4 ae 	lwi.gp $r1,[+#-11592]
   9da28:	38 01 04 08 	sb $r0,[$r2+($r1<<#0x0)]
   9da2c:	9c 49       	addi333 $r1,$r1,#1
   9da2e:	3c 1f f4 ae 	swi.gp $r1,[+#-11592]
   9da32:	5a 19 ff 05 	bnec $r1,#511,9da3c <vprintf_help+0x20>
   9da36:	80 02       	mov55 $r0,$r2
   9da38:	49 ff e7 83 	jal 9a93e <nds_write>
   9da3c:	84 00       	movi55 $r0,#0
   9da3e:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009da40 <vsprintf_help>:
   9da40:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9da42:	b4 41       	lwi450 $r2,[$r1]
   9da44:	18 01 00 01 	sbi.bi $r0,[$r2],#0x1
   9da48:	84 00       	movi55 $r0,#0
   9da4a:	b6 41       	swi450 $r2,[$r1]
   9da4c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009da4e <vsprintf>:
   9da4e:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9da50:	80 c0       	mov55 $r6,$r0
   9da52:	80 66       	mov55 $r3,$r6
   9da54:	80 01       	mov55 $r0,$r1
   9da56:	46 40 00 9e 	sethi $r4,#0x9e
   9da5a:	58 42 00 8c 	ori $r4,$r4,#0x8c
   9da5e:	80 22       	mov55 $r1,$r2
   9da60:	46 20 00 9d 	sethi $r2,#0x9d
   9da64:	58 21 0a 40 	ori $r2,$r2,#0xa40
   9da68:	49 00 00 06 	jal 9da74 <do_printf>
   9da6c:	84 40       	movi55 $r2,#0
   9da6e:	38 23 00 08 	sb $r2,[$r6+($r0<<#0x0)]
   9da72:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009da74 <do_printf>:
   9da74:	fc 49       	push25 $r10,#0x48    ! {$r6~$r10, $fp, $gp, $lp}
   9da76:	51 cf 80 64 	addi $fp,$sp,#100
   9da7a:	84 a0       	movi55 $r5,#0
   9da7c:	f0 88       	swi37.sp $r0,[+#0x20]
   9da7e:	f1 86       	swi37.sp $r1,[+#0x18]
   9da80:	f2 87       	swi37.sp $r2,[+#0x1c]
   9da82:	f3 8b       	swi37.sp $r3,[+#0x2c]
   9da84:	f4 84       	swi37.sp $r4,[+#0x10]
   9da86:	80 c5       	mov55 $r6,$r5
   9da88:	f5 89       	swi37.sp $r5,[+#0x24]
   9da8a:	f5 8a       	swi37.sp $r5,[+#0x28]
   9da8c:	81 25       	mov55 $r9,$r5
   9da8e:	80 e5       	mov55 $r7,$r5
   9da90:	48 00 02 b7 	j 9dffe <do_printf+0x58a>
   9da94:	5a 60 02 6a 	beqc $r6,#2,9db68 <do_printf+0xf4>
   9da98:	e6 c3       	slti45 $r6,#3
   9da9a:	e8 06       	beqzs8 9daa6 <do_printf+0x32>
   9da9c:	c6 0f       	beqz38 $r6,9daba <do_printf+0x46>
   9da9e:	85 e1       	movi55 $r15,#1
   9daa0:	4c 67 c2 a7 	bne $r6,$r15,9dfee <do_printf+0x57a>
   9daa4:	d5 22       	j8 9dae8 <do_printf+0x74>
   9daa6:	85 e4       	movi55 $r15,#4
   9daa8:	4c 67 80 92 	beq $r6,$r15,9dbcc <do_printf+0x158>
   9daac:	e6 c4       	slti45 $r6,#4
   9daae:	e9 70       	bnezs8 9db8e <do_printf+0x11a>
   9dab0:	85 e5       	movi55 $r15,#5
   9dab2:	4c 67 c2 9e 	bne $r6,$r15,9dfee <do_printf+0x57a>
   9dab6:	48 00 00 a3 	j 9dbfc <do_printf+0x188>
   9daba:	5a 00 25 0e 	beqc $r0,#37,9dad6 <do_printf+0x62>
   9dabe:	04 2e 7f ee 	lwi $r2,[$fp+#-0x48]
   9dac2:	50 1e 7f c8 	addi $r1,$fp,#-56
   9dac6:	dd 22       	jral5 $r2
   9dac8:	04 3e 7f f1 	lwi $r3,[$fp+#-0x3c]
   9dacc:	9c d9       	addi333 $r3,$r3,#1
   9dace:	14 3e 7f f1 	swi $r3,[$fp+#-0x3c]
   9dad2:	48 00 02 91 	j 9dff4 <do_printf+0x580>
   9dad6:	04 0e 7f ef 	lwi $r0,[$fp+#-0x44]
   9dada:	14 6e 7f f0 	swi $r6,[$fp+#-0x40]
   9dade:	9c 01       	addi333 $r0,$r0,#1
   9dae0:	14 0e 7f ef 	swi $r0,[$fp+#-0x44]
   9dae4:	80 e6       	mov55 $r7,$r6
   9dae6:	81 26       	mov55 $r9,$r6
   9dae8:	04 1e 7f ef 	lwi $r1,[$fp+#-0x44]
   9daec:	20 00 80 00 	lbsi $r0,[$r1+#0x0]
   9daf0:	5a 08 25 0e 	bnec $r0,#37,9db0c <do_printf+0x98>
   9daf4:	04 2e 7f ee 	lwi $r2,[$fp+#-0x48]
   9daf8:	50 1e 7f c8 	addi $r1,$fp,#-56
   9dafc:	dd 22       	jral5 $r2
   9dafe:	04 3e 7f f1 	lwi $r3,[$fp+#-0x3c]
   9db02:	9c d9       	addi333 $r3,$r3,#1
   9db04:	14 3e 7f f1 	swi $r3,[$fp+#-0x3c]
   9db08:	48 00 02 73 	j 9dfee <do_printf+0x57a>
   9db0c:	5a 08 20 09 	bnec $r0,#32,9db1e <do_printf+0xaa>
   9db10:	54 13 a0 00 	andi $r1,$r7,#0x2000
   9db14:	4e 13 02 6d 	bnez $r1,9dfee <do_printf+0x57a>
   9db18:	58 73 a0 00 	ori $r7,$r7,#0x2000
   9db1c:	d5 23       	j8 9db62 <do_printf+0xee>
   9db1e:	5a 08 2d 08 	bnec $r0,#45,9db2e <do_printf+0xba>
   9db22:	96 7c       	xlsb33 $r1,$r7
   9db24:	4e 13 02 65 	bnez $r1,9dfee <do_printf+0x57a>
   9db28:	58 73 80 01 	ori $r7,$r7,#0x1
   9db2c:	d5 1b       	j8 9db62 <do_printf+0xee>
   9db2e:	5a 08 2b 09 	bnec $r0,#43,9db40 <do_printf+0xcc>
   9db32:	54 13 82 00 	andi $r1,$r7,#0x200
   9db36:	4e 13 02 5c 	bnez $r1,9dfee <do_printf+0x57a>
   9db3a:	58 73 82 00 	ori $r7,$r7,#0x200
   9db3e:	d5 12       	j8 9db62 <do_printf+0xee>
   9db40:	5a 08 23 09 	bnec $r0,#35,9db52 <do_printf+0xde>
   9db44:	54 13 90 00 	andi $r1,$r7,#0x1000
   9db48:	4e 13 02 53 	bnez $r1,9dfee <do_printf+0x57a>
   9db4c:	58 73 90 00 	ori $r7,$r7,#0x1000
   9db50:	d5 09       	j8 9db62 <do_printf+0xee>
   9db52:	5a 08 30 0b 	bnec $r0,#48,9db68 <do_printf+0xf4>
   9db56:	54 13 80 40 	andi $r1,$r7,#0x40
   9db5a:	4e 13 02 4a 	bnez $r1,9dfee <do_printf+0x57a>
   9db5e:	58 73 80 40 	ori $r7,$r7,#0x40
   9db62:	84 c1       	movi55 $r6,#1
   9db64:	48 00 02 48 	j 9dff4 <do_printf+0x580>
   9db68:	04 6e 7f ef 	lwi $r6,[$fp+#-0x44]
   9db6c:	20 33 00 00 	lbsi $r3,[$r6+#0x0]
   9db70:	50 11 ff d0 	addi $r1,$r3,#-48
   9db74:	96 48       	zeb33 $r1,$r1
   9db76:	e6 2a       	slti45 $r1,#10
   9db78:	e8 0b       	beqzs8 9db8e <do_printf+0x11a>
   9db7a:	84 2a       	movi55 $r1,#10
   9db7c:	42 24 84 24 	mul $r2,$r9,$r1
   9db80:	50 21 7f d0 	addi $r2,$r2,#-48
   9db84:	40 91 0c 00 	add $r9,$r2,$r3
   9db88:	84 c2       	movi55 $r6,#2
   9db8a:	48 00 02 35 	j 9dff4 <do_printf+0x580>
   9db8e:	04 0e 7f ef 	lwi $r0,[$fp+#-0x44]
   9db92:	20 10 00 00 	lbsi $r1,[$r0+#0x0]
   9db96:	5a 18 2e 05 	bnec $r1,#46,9dba0 <do_printf+0x12c>
   9db9a:	58 73 81 00 	ori $r7,$r7,#0x100
   9db9e:	d5 14       	j8 9dbc6 <do_printf+0x152>
   9dba0:	54 33 81 00 	andi $r3,$r7,#0x100
   9dba4:	c3 14       	beqz38 $r3,9dbcc <do_printf+0x158>
   9dba6:	5e f0 80 30 	sltsi $r15,$r1,#48
   9dbaa:	e9 11       	bnezs8 9dbcc <do_printf+0x158>
   9dbac:	5e f0 80 3a 	sltsi $r15,$r1,#58
   9dbb0:	e8 0e       	beqzs8 9dbcc <do_printf+0x158>
   9dbb2:	04 2e 7f f0 	lwi $r2,[$fp+#-0x40]
   9dbb6:	84 6a       	movi55 $r3,#10
   9dbb8:	42 41 0c 24 	mul $r4,$r2,$r3
   9dbbc:	50 42 7f d0 	addi $r4,$r4,#-48
   9dbc0:	99 21       	add333 $r4,$r4,$r1
   9dbc2:	14 4e 7f f0 	swi $r4,[$fp+#-0x40]
   9dbc6:	84 c3       	movi55 $r6,#3
   9dbc8:	48 00 02 16 	j 9dff4 <do_printf+0x580>
   9dbcc:	04 3e 7f ef 	lwi $r3,[$fp+#-0x44]
   9dbd0:	20 01 80 00 	lbsi $r0,[$r3+#0x0]
   9dbd4:	5a 08 46 05 	bnec $r0,#70,9dbde <do_printf+0x16a>
   9dbd8:	58 73 80 80 	ori $r7,$r7,#0x80
   9dbdc:	d5 0d       	j8 9dbf6 <do_printf+0x182>
   9dbde:	5a 08 4e 03 	bnec $r0,#78,9dbe4 <do_printf+0x170>
   9dbe2:	d5 0a       	j8 9dbf6 <do_printf+0x182>
   9dbe4:	5a 08 6c 05 	bnec $r0,#108,9dbee <do_printf+0x17a>
   9dbe8:	58 73 80 08 	ori $r7,$r7,#0x8
   9dbec:	d5 05       	j8 9dbf6 <do_printf+0x182>
   9dbee:	5a 08 68 07 	bnec $r0,#104,9dbfc <do_printf+0x188>
   9dbf2:	58 73 80 10 	ori $r7,$r7,#0x10
   9dbf6:	84 c4       	movi55 $r6,#4
   9dbf8:	48 00 01 fe 	j 9dff4 <do_printf+0x580>
   9dbfc:	84 20       	movi55 $r1,#0
   9dbfe:	10 1e 7f df 	sbi $r1,[$fp+#-0x21]
   9dc02:	04 6e 7f ef 	lwi $r6,[$fp+#-0x44]
   9dc06:	20 03 00 00 	lbsi $r0,[$r6+#0x0]
   9dc0a:	5a 08 66 04 	bnec $r0,#102,9dc12 <do_printf+0x19e>
   9dc0e:	48 00 01 8d 	j 9df28 <do_printf+0x4b4>
   9dc12:	5e f0 00 67 	sltsi $r15,$r0,#103
   9dc16:	e8 20       	beqzs8 9dc56 <do_printf+0x1e2>
   9dc18:	5a 00 58 47 	beqc $r0,#88,9dca6 <do_printf+0x232>
   9dc1c:	5e f0 00 59 	sltsi $r15,$r0,#89
   9dc20:	e8 0f       	beqzs8 9dc3e <do_printf+0x1ca>
   9dc22:	5a 08 46 04 	bnec $r0,#70,9dc2a <do_printf+0x1b6>
   9dc26:	48 00 01 81 	j 9df28 <do_printf+0x4b4>
   9dc2a:	5a 08 47 04 	bnec $r0,#71,9dc32 <do_printf+0x1be>
   9dc2e:	48 00 01 7b 	j 9df24 <do_printf+0x4b0>
   9dc32:	5a 00 45 04 	beqc $r0,#69,9dc3a <do_printf+0x1c6>
   9dc36:	48 00 01 dc 	j 9dfee <do_printf+0x57a>
   9dc3a:	48 00 01 72 	j 9df1e <do_printf+0x4aa>
   9dc3e:	5a 00 64 38 	beqc $r0,#100,9dcae <do_printf+0x23a>
   9dc42:	5e f0 00 65 	sltsi $r15,$r0,#101
   9dc46:	4e f2 01 6c 	beqz $r15,9df1e <do_printf+0x4aa>
   9dc4a:	5a 00 63 04 	beqc $r0,#99,9dc52 <do_printf+0x1de>
   9dc4e:	48 00 01 d0 	j 9dfee <do_printf+0x57a>
   9dc52:	48 00 01 36 	j 9debe <do_printf+0x44a>
   9dc56:	5a 00 6f 26 	beqc $r0,#111,9dca2 <do_printf+0x22e>
   9dc5a:	5e f0 00 70 	sltsi $r15,$r0,#112
   9dc5e:	e8 0d       	beqzs8 9dc78 <do_printf+0x204>
   9dc60:	5a 00 69 27 	beqc $r0,#105,9dcae <do_printf+0x23a>
   9dc64:	5a 08 6e 04 	bnec $r0,#110,9dc6c <do_printf+0x1f8>
   9dc68:	48 00 01 d6 	j 9e014 <do_printf+0x5a0>
   9dc6c:	5a 00 67 04 	beqc $r0,#103,9dc74 <do_printf+0x200>
   9dc70:	48 00 01 bf 	j 9dfee <do_printf+0x57a>
   9dc74:	48 00 01 58 	j 9df24 <do_printf+0x4b0>
   9dc78:	5a 08 73 04 	bnec $r0,#115,9dc80 <do_printf+0x20c>
   9dc7c:	48 00 01 2c 	j 9ded4 <do_printf+0x460>
   9dc80:	5e f0 00 74 	sltsi $r15,$r0,#116
   9dc84:	e8 07       	beqzs8 9dc92 <do_printf+0x21e>
   9dc86:	5a 00 70 04 	beqc $r0,#112,9dc8e <do_printf+0x21a>
   9dc8a:	48 00 01 b2 	j 9dfee <do_printf+0x57a>
   9dc8e:	48 00 01 c3 	j 9e014 <do_printf+0x5a0>
   9dc92:	5a 00 75 12 	beqc $r0,#117,9dcb6 <do_printf+0x242>
   9dc96:	5a 00 78 04 	beqc $r0,#120,9dc9e <do_printf+0x22a>
   9dc9a:	48 00 01 aa 	j 9dfee <do_printf+0x57a>
   9dc9e:	48 00 01 bb 	j 9e014 <do_printf+0x5a0>
   9dca2:	85 48       	movi55 $r10,#8
   9dca4:	d5 16       	j8 9dcd0 <do_printf+0x25c>
   9dca6:	58 73 80 02 	ori $r7,$r7,#0x2
   9dcaa:	fb 40       	movpi45 $r10,#0x10
   9dcac:	d5 12       	j8 9dcd0 <do_printf+0x25c>
   9dcae:	58 73 80 04 	ori $r7,$r7,#0x4
   9dcb2:	5a 08 64 04 	bnec $r0,#100,9dcba <do_printf+0x246>
   9dcb6:	85 4a       	movi55 $r10,#10
   9dcb8:	d5 0c       	j8 9dcd0 <do_printf+0x25c>
   9dcba:	85 4a       	movi55 $r10,#10
   9dcbc:	5a 00 69 0a 	beqc $r0,#105,9dcd0 <do_printf+0x25c>
   9dcc0:	5a 00 6f 08 	beqc $r0,#111,9dcd0 <do_printf+0x25c>
   9dcc4:	5a 00 75 06 	beqc $r0,#117,9dcd0 <do_printf+0x25c>
   9dcc8:	5a 00 58 04 	beqc $r0,#88,9dcd0 <do_printf+0x25c>
   9dccc:	5a 08 78 0a 	bnec $r0,#120,9dce0 <do_printf+0x26c>
   9dcd0:	04 0e 7f f0 	lwi $r0,[$fp+#-0x40]
   9dcd4:	c0 06       	beqz38 $r0,9dce0 <do_printf+0x26c>
   9dcd6:	4e 93 00 05 	bnez $r9,9dce0 <do_printf+0x26c>
   9dcda:	58 73 80 40 	ori $r7,$r7,#0x40
   9dcde:	81 20       	mov55 $r9,$r0
   9dce0:	04 1e 7f ed 	lwi $r1,[$fp+#-0x4c]
   9dce4:	b4 a1       	lwi450 $r5,[$r1]
   9dce6:	54 13 80 04 	andi $r1,$r7,#0x4
   9dcea:	c1 06       	beqz38 $r1,9dcf6 <do_printf+0x282>
   9dcec:	4e 54 00 05 	bgez $r5,9dcf6 <do_printf+0x282>
   9dcf0:	58 73 80 20 	ori $r7,$r7,#0x20
   9dcf4:	ff 6a       	neg33 $r5,$r5
   9dcf6:	50 8e 7f df 	addi $r8,$fp,#-33
   9dcfa:	54 03 80 02 	andi $r0,$r7,#0x2
   9dcfe:	40 22 a8 37 	divr $r2,$r1,$r5,$r10
   9dd02:	8f 01       	subi45 $r8,#1
   9dd04:	e6 2a       	slti45 $r1,#10
   9dd06:	e8 04       	beqzs8 9dd0e <do_printf+0x29a>
   9dd08:	50 10 80 30 	addi $r1,$r1,#48
   9dd0c:	d5 07       	j8 9dd1a <do_printf+0x2a6>
   9dd0e:	c0 04       	beqz38 $r0,9dd16 <do_printf+0x2a2>
   9dd10:	50 10 80 37 	addi $r1,$r1,#55
   9dd14:	d5 03       	j8 9dd1a <do_printf+0x2a6>
   9dd16:	50 10 80 57 	addi $r1,$r1,#87
   9dd1a:	10 14 00 00 	sbi $r1,[$r8+#0x0]
   9dd1e:	40 52 a8 37 	divr $r5,$r1,$r5,$r10
   9dd22:	cd ee       	bnez38 $r5,9dcfe <do_printf+0x28a>
   9dd24:	80 08       	mov55 $r0,$r8
   9dd26:	49 ff 91 e9 	jal 900f8 <strlen>
   9dd2a:	54 13 80 20 	andi $r1,$r7,#0x20
   9dd2e:	80 40       	mov55 $r2,$r0
   9dd30:	c9 04       	bnez38 $r1,9dd38 <do_printf+0x2c4>
   9dd32:	54 13 82 00 	andi $r1,$r7,#0x200
   9dd36:	c1 02       	beqz38 $r1,9dd3a <do_printf+0x2c6>
   9dd38:	9c 91       	addi333 $r2,$r2,#1
   9dd3a:	54 33 80 60 	andi $r3,$r7,#0x60
   9dd3e:	14 3e 7f ec 	swi $r3,[$fp+#-0x50]
   9dd42:	5a 38 60 12 	bnec $r3,#96,9dd66 <do_printf+0x2f2>
   9dd46:	14 2e 7f ea 	swi $r2,[$fp+#-0x58]
   9dd4a:	04 6e 7f ee 	lwi $r6,[$fp+#-0x48]
   9dd4e:	fa 1d       	movpi45 $r0,#0x2d
   9dd50:	50 1e 7f c8 	addi $r1,$fp,#-56
   9dd54:	dd 26       	jral5 $r6
   9dd56:	04 0e 7f f1 	lwi $r0,[$fp+#-0x3c]
   9dd5a:	04 2e 7f ea 	lwi $r2,[$fp+#-0x58]
   9dd5e:	9c 01       	addi333 $r0,$r0,#1
   9dd60:	14 0e 7f f1 	swi $r0,[$fp+#-0x3c]
   9dd64:	d5 32       	j8 9ddc8 <do_printf+0x354>
   9dd66:	54 13 90 00 	andi $r1,$r7,#0x1000
   9dd6a:	c1 2f       	beqz38 $r1,9ddc8 <do_printf+0x354>
   9dd6c:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   9dd70:	5a 10 30 2c 	beqc $r1,#48,9ddc8 <do_printf+0x354>
   9dd74:	04 3e 7f f0 	lwi $r3,[$fp+#-0x40]
   9dd78:	9a 5a       	sub333 $r1,$r3,$r2
   9dd7a:	44 30 00 30 	movi $r3,#48
   9dd7e:	d5 06       	j8 9dd8a <do_printf+0x316>
   9dd80:	8f 01       	subi45 $r8,#1
   9dd82:	10 34 00 00 	sbi $r3,[$r8+#0x0]
   9dd86:	9c 91       	addi333 $r2,$r2,#1
   9dd88:	9e 49       	subi333 $r1,$r1,#1
   9dd8a:	4e 16 ff fb 	bgtz $r1,9dd80 <do_printf+0x30c>
   9dd8e:	5a a8 10 12 	bnec $r10,#16,9ddb2 <do_printf+0x33e>
   9dd92:	54 13 80 02 	andi $r1,$r7,#0x2
   9dd96:	8f 01       	subi45 $r8,#1
   9dd98:	c9 04       	bnez38 $r1,9dda0 <do_printf+0x32c>
   9dd9a:	44 10 00 78 	movi $r1,#120
   9dd9e:	d5 03       	j8 9dda4 <do_printf+0x330>
   9dda0:	44 10 00 58 	movi $r1,#88
   9dda4:	18 14 7f ff 	sbi.bi $r1,[$r8],#-0x1
   9dda8:	80 23       	mov55 $r1,$r3
   9ddaa:	10 14 00 00 	sbi $r1,[$r8+#0x0]
   9ddae:	9c 92       	addi333 $r2,$r2,#2
   9ddb0:	d5 0c       	j8 9ddc8 <do_printf+0x354>
   9ddb2:	5a a8 08 0b 	bnec $r10,#8,9ddc8 <do_printf+0x354>
   9ddb6:	00 14 00 00 	lbi $r1,[$r8+#0x0]
   9ddba:	5a 10 30 07 	beqc $r1,#48,9ddc8 <do_printf+0x354>
   9ddbe:	8f 01       	subi45 $r8,#1
   9ddc0:	80 23       	mov55 $r1,$r3
   9ddc2:	10 14 00 00 	sbi $r1,[$r8+#0x0]
   9ddc6:	9c 91       	addi333 $r2,$r2,#1
   9ddc8:	96 7c       	xlsb33 $r1,$r7
   9ddca:	c1 13       	beqz38 $r1,9ddf0 <do_printf+0x37c>
   9ddcc:	d5 1f       	j8 9de0a <do_printf+0x396>
   9ddce:	cf 03       	bnez38 $r7,9ddd4 <do_printf+0x360>
   9ddd0:	fa 10       	movpi45 $r0,#0x20
   9ddd2:	d5 03       	j8 9ddd8 <do_printf+0x364>
   9ddd4:	44 00 00 30 	movi $r0,#48
   9ddd8:	14 3e 7f ea 	swi $r3,[$fp+#-0x58]
   9dddc:	04 2e 7f ee 	lwi $r2,[$fp+#-0x48]
   9dde0:	50 1e 7f c8 	addi $r1,$fp,#-56
   9dde4:	dd 22       	jral5 $r2
   9dde6:	8d 41       	addi45 $r10,#1
   9dde8:	8f 21       	subi45 $r9,#1
   9ddea:	04 3e 7f ea 	lwi $r3,[$fp+#-0x58]
   9ddee:	d5 08       	j8 9ddfe <do_printf+0x38a>
   9ddf0:	54 63 80 40 	andi $r6,$r7,#0x40
   9ddf4:	04 ae 7f f1 	lwi $r10,[$fp+#-0x3c]
   9ddf8:	80 67       	mov55 $r3,$r7
   9ddfa:	80 e6       	mov55 $r7,$r6
   9ddfc:	80 c2       	mov55 $r6,$r2
   9ddfe:	e2 c9       	slt45 $r6,$r9
   9de00:	e9 e7       	bnezs8 9ddce <do_printf+0x35a>
   9de02:	14 ae 7f f1 	swi $r10,[$fp+#-0x3c]
   9de06:	80 46       	mov55 $r2,$r6
   9de08:	80 e3       	mov55 $r7,$r3
   9de0a:	04 3e 7f ec 	lwi $r3,[$fp+#-0x50]
   9de0e:	5a 38 20 11 	bnec $r3,#32,9de30 <do_printf+0x3bc>
   9de12:	04 6e 7f ee 	lwi $r6,[$fp+#-0x48]
   9de16:	14 2e 7f ea 	swi $r2,[$fp+#-0x58]
   9de1a:	fa 1d       	movpi45 $r0,#0x2d
   9de1c:	50 1e 7f c8 	addi $r1,$fp,#-56
   9de20:	dd 26       	jral5 $r6
   9de22:	04 0e 7f f1 	lwi $r0,[$fp+#-0x3c]
   9de26:	9c 01       	addi333 $r0,$r0,#1
   9de28:	14 0e 7f f1 	swi $r0,[$fp+#-0x3c]
   9de2c:	80 c0       	mov55 $r6,$r0
   9de2e:	d5 1a       	j8 9de62 <do_printf+0x3ee>
   9de30:	54 33 a0 20 	andi $r3,$r7,#0x2020
   9de34:	44 10 20 00 	movi $r1,#8192
   9de38:	4c 30 c0 04 	bne $r3,$r1,9de40 <do_printf+0x3cc>
   9de3c:	fa 10       	movpi45 $r0,#0x20
   9de3e:	d5 06       	j8 9de4a <do_printf+0x3d6>
   9de40:	54 53 82 24 	andi $r5,$r7,#0x224
   9de44:	5a 5a 04 1a 	bnec $r5,#516,9de78 <do_printf+0x404>
   9de48:	fa 1b       	movpi45 $r0,#0x2b
   9de4a:	14 2e 7f ea 	swi $r2,[$fp+#-0x58]
   9de4e:	04 3e 7f ee 	lwi $r3,[$fp+#-0x48]
   9de52:	50 1e 7f c8 	addi $r1,$fp,#-56
   9de56:	dd 23       	jral5 $r3
   9de58:	04 6e 7f f1 	lwi $r6,[$fp+#-0x3c]
   9de5c:	9d b1       	addi333 $r6,$r6,#1
   9de5e:	14 6e 7f f1 	swi $r6,[$fp+#-0x3c]
   9de62:	04 2e 7f ea 	lwi $r2,[$fp+#-0x58]
   9de66:	d5 0b       	j8 9de7c <do_printf+0x408>
   9de68:	04 2e 7f ee 	lwi $r2,[$fp+#-0x48]
   9de6c:	50 1e 7f c8 	addi $r1,$fp,#-56
   9de70:	8d 01       	addi45 $r8,#1
   9de72:	dd 22       	jral5 $r2
   9de74:	9d b1       	addi333 $r6,$r6,#1
   9de76:	d5 04       	j8 9de7e <do_printf+0x40a>
   9de78:	04 6e 7f f1 	lwi $r6,[$fp+#-0x3c]
   9de7c:	80 e2       	mov55 $r7,$r2
   9de7e:	00 04 00 00 	lbi $r0,[$r8+#0x0]
   9de82:	c8 f3       	bnez38 $r0,9de68 <do_printf+0x3f4>
   9de84:	14 6e 7f f1 	swi $r6,[$fp+#-0x3c]
   9de88:	80 c0       	mov55 $r6,$r0
   9de8a:	e3 27       	slt45 $r9,$r7
   9de8c:	e9 03       	bnezs8 9de92 <do_printf+0x41e>
   9de8e:	40 64 9c 01 	sub $r6,$r9,$r7
   9de92:	81 26       	mov55 $r9,$r6
   9de94:	d5 08       	j8 9dea4 <do_printf+0x430>
   9de96:	04 3e 7f ee 	lwi $r3,[$fp+#-0x48]
   9de9a:	fa 10       	movpi45 $r0,#0x20
   9de9c:	50 1e 7f c8 	addi $r1,$fp,#-56
   9dea0:	dd 23       	jral5 $r3
   9dea2:	8f 21       	subi45 $r9,#1
   9dea4:	4e 93 ff f9 	bnez $r9,9de96 <do_printf+0x422>
   9dea8:	04 0e 7f f1 	lwi $r0,[$fp+#-0x3c]
   9deac:	04 1e 7f ed 	lwi $r1,[$fp+#-0x4c]
   9deb0:	98 06       	add333 $r0,$r0,$r6
   9deb2:	9c 4c       	addi333 $r1,$r1,#4
   9deb4:	14 0e 7f f1 	swi $r0,[$fp+#-0x3c]
   9deb8:	14 1e 7f ed 	swi $r1,[$fp+#-0x4c]
   9debc:	d5 2e       	j8 9df18 <do_printf+0x4a4>
   9debe:	04 2e 7f ed 	lwi $r2,[$fp+#-0x4c]
   9dec2:	50 7e 7f d0 	addi $r7,$fp,#-48
   9dec6:	a6 d0       	lbi333 $r3,[$r2+#0x0]
   9dec8:	50 81 00 04 	addi $r8,$r2,#4
   9decc:	10 3e 7f d0 	sbi $r3,[$fp+#-0x30]
   9ded0:	84 c1       	movi55 $r6,#1
   9ded2:	d5 10       	j8 9def2 <do_printf+0x47e>
   9ded4:	04 6e 7f ed 	lwi $r6,[$fp+#-0x4c]
   9ded8:	b4 e6       	lwi450 $r7,[$r6]
   9deda:	50 83 00 04 	addi $r8,$r6,#4
   9dede:	80 07       	mov55 $r0,$r7
   9dee0:	49 ff 91 0c 	jal 900f8 <strlen>
   9dee4:	80 c0       	mov55 $r6,$r0
   9dee6:	04 0e 7f f0 	lwi $r0,[$fp+#-0x40]
   9deea:	c0 04       	beqz38 $r0,9def2 <do_printf+0x47e>
   9deec:	e2 06       	slt45 $r0,$r6
   9deee:	e8 02       	beqzs8 9def2 <do_printf+0x47e>
   9def0:	80 c0       	mov55 $r6,$r0
   9def2:	81 26       	mov55 $r9,$r6
   9def4:	d5 09       	j8 9df06 <do_printf+0x492>
   9def6:	08 03 80 01 	lbi.bi $r0,[$r7],#0x1
   9defa:	04 2e 7f ee 	lwi $r2,[$fp+#-0x48]
   9defe:	50 1e 7f c8 	addi $r1,$fp,#-56
   9df02:	dd 22       	jral5 $r2
   9df04:	8f 21       	subi45 $r9,#1
   9df06:	4e 93 ff f8 	bnez $r9,9def6 <do_printf+0x482>
   9df0a:	04 3e 7f f1 	lwi $r3,[$fp+#-0x3c]
   9df0e:	14 8e 7f ed 	swi $r8,[$fp+#-0x4c]
   9df12:	98 de       	add333 $r3,$r3,$r6
   9df14:	14 3e 7f f1 	swi $r3,[$fp+#-0x3c]
   9df18:	80 e9       	mov55 $r7,$r9
   9df1a:	80 c9       	mov55 $r6,$r9
   9df1c:	d5 6c       	j8 9dff4 <do_printf+0x580>
   9df1e:	58 73 84 00 	ori $r7,$r7,#0x400
   9df22:	d5 03       	j8 9df28 <do_printf+0x4b4>
   9df24:	58 73 88 00 	ori $r7,$r7,#0x800
   9df28:	5e f0 00 61 	sltsi $r15,$r0,#97
   9df2c:	e8 03       	beqzs8 9df32 <do_printf+0x4be>
   9df2e:	58 73 80 02 	ori $r7,$r7,#0x2
   9df32:	54 13 81 00 	andi $r1,$r7,#0x100
   9df36:	c9 07       	bnez38 $r1,9df44 <do_printf+0x4d0>
   9df38:	04 6e 7f f0 	lwi $r6,[$fp+#-0x40]
   9df3c:	ce 04       	bnez38 $r6,9df44 <do_printf+0x4d0>
   9df3e:	84 06       	movi55 $r0,#6
   9df40:	14 0e 7f f0 	swi $r0,[$fp+#-0x40]
   9df44:	04 1e 7f ed 	lwi $r1,[$fp+#-0x4c]
   9df48:	9c 0f       	addi333 $r0,$r1,#7
   9df4a:	40 90 0c 09 	srli $r9,$r0,#3
   9df4e:	40 94 8c 08 	slli $r9,$r9,#3
   9df52:	b4 89       	lwi450 $r4,[$r9]
   9df54:	04 54 80 01 	lwi $r5,[$r9+#0x4]
   9df58:	98 a4       	add333 $r2,$r4,$r4
   9df5a:	40 11 10 06 	slt $r1,$r2,$r4
   9df5e:	98 ed       	add333 $r3,$r5,$r5
   9df60:	98 cb       	add333 $r3,$r1,$r3
   9df62:	92 75       	srli45 $r3,#21
   9df64:	5e f1 84 01 	sltsi $r15,$r3,#1025
   9df68:	e9 05       	bnezs8 9df72 <do_printf+0x4fe>
   9df6a:	44 20 07 ff 	movi $r2,#2047
   9df6e:	4c 31 40 07 	bne $r3,$r2,9df7c <do_printf+0x508>
   9df72:	04 6e 7f f0 	lwi $r6,[$fp+#-0x40]
   9df76:	50 33 00 0a 	addi $r3,$r6,#10
   9df7a:	d5 0c       	j8 9df92 <do_printf+0x51e>
   9df7c:	84 23       	movi55 $r1,#3
   9df7e:	fe cc       	mul33 $r3,$r1
   9df80:	50 31 f4 03 	addi $r3,$r3,#-3069
   9df84:	84 2a       	movi55 $r1,#10
   9df86:	40 31 84 36 	divsr $r3,$r1,$r3,$r1
   9df8a:	04 0e 7f f0 	lwi $r0,[$fp+#-0x40]
   9df8e:	8c 6a       	addi45 $r3,#10
   9df90:	98 d8       	add333 $r3,$r3,$r0
   9df92:	04 6e 7f ef 	lwi $r6,[$fp+#-0x44]
   9df96:	50 11 80 0e 	addi $r1,$r3,#14
   9df9a:	92 23       	srli45 $r1,#3
   9df9c:	94 4b       	slli333 $r1,$r1,#3
   9df9e:	41 ff 84 01 	sub $sp,$sp,$r1
   9dfa2:	20 13 00 00 	lbsi $r1,[$r6+#0x0]
   9dfa6:	50 0e 7f e0 	addi $r0,$fp,#-32
   9dfaa:	b6 3f       	swi450 $r1,[$sp]
   9dfac:	f0 81       	swi37.sp $r0,[+#0x4]
   9dfae:	04 6e 7f eb 	lwi $r6,[$fp+#-0x54]
   9dfb2:	80 04       	mov55 $r0,$r4
   9dfb4:	50 8f 80 08 	addi $r8,$sp,#8
   9dfb8:	04 4e 7f f0 	lwi $r4,[$fp+#-0x40]
   9dfbc:	80 25       	mov55 $r1,$r5
   9dfbe:	80 48       	mov55 $r2,$r8
   9dfc0:	80 a7       	mov55 $r5,$r7
   9dfc2:	dd 26       	jral5 $r6
   9dfc4:	80 e0       	mov55 $r7,$r0
   9dfc6:	84 c0       	movi55 $r6,#0
   9dfc8:	d5 09       	j8 9dfda <do_printf+0x566>
   9dfca:	38 04 18 00 	lb $r0,[$r8+($r6<<#0x0)]
   9dfce:	04 2e 7f ee 	lwi $r2,[$fp+#-0x48]
   9dfd2:	50 1e 7f c8 	addi $r1,$fp,#-56
   9dfd6:	dd 22       	jral5 $r2
   9dfd8:	9d b1       	addi333 $r6,$r6,#1
   9dfda:	e2 c7       	slt45 $r6,$r7
   9dfdc:	e9 f7       	bnezs8 9dfca <do_printf+0x556>
   9dfde:	04 3e 7f f1 	lwi $r3,[$fp+#-0x3c]
   9dfe2:	8d 28       	addi45 $r9,#8
   9dfe4:	98 df       	add333 $r3,$r3,$r7
   9dfe6:	14 3e 7f f1 	swi $r3,[$fp+#-0x3c]
   9dfea:	14 9e 7f ed 	swi $r9,[$fp+#-0x4c]
   9dfee:	84 e0       	movi55 $r7,#0
   9dff0:	80 c7       	mov55 $r6,$r7
   9dff2:	81 27       	mov55 $r9,$r7
   9dff4:	04 0e 7f ef 	lwi $r0,[$fp+#-0x44]
   9dff8:	9c 01       	addi333 $r0,$r0,#1
   9dffa:	14 0e 7f ef 	swi $r0,[$fp+#-0x44]
   9dffe:	04 1e 7f ef 	lwi $r1,[$fp+#-0x44]
   9e002:	20 00 80 00 	lbsi $r0,[$r1+#0x0]
   9e006:	4e 03 fd 47 	bnez $r0,9da94 <do_printf+0x20>
   9e00a:	04 0e 7f f1 	lwi $r0,[$fp+#-0x3c]
   9e00e:	51 fe 7f e4 	addi $sp,$fp,#-28
   9e012:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9e014:	fb 40       	movpi45 $r10,#0x10
   9e016:	48 ff fe 53 	j 9dcbc <do_printf+0x248>

0009e01a <sep_int>:
   9e01a:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9e01c:	80 20       	mov55 $r1,$r0
   9e01e:	84 00       	movi55 $r0,#0
   9e020:	d5 09       	j8 9e032 <sep_int+0x18>
   9e022:	40 41 c0 08 	slli $r4,$r3,#16
   9e026:	1a 20 80 01 	shi.bi $r2,[$r1],#0x2
   9e02a:	92 50       	srli45 $r2,#16
   9e02c:	9c 01       	addi333 $r0,$r0,#1
   9e02e:	fe a7       	or33 $r2,$r4
   9e030:	92 70       	srli45 $r3,#16
   9e032:	40 41 0c 04 	or $r4,$r2,$r3
   9e036:	cc f6       	bnez38 $r4,9e022 <sep_int+0x8>
   9e038:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009e03a <sep_frac>:
   9e03a:	fc 41       	push25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}
   9e03c:	84 c0       	movi55 $r6,#0
   9e03e:	81 23       	mov55 $r9,$r3
   9e040:	80 e0       	mov55 $r7,$r0
   9e042:	81 41       	mov55 $r10,$r1
   9e044:	81 02       	mov55 $r8,$r2
   9e046:	80 61       	mov55 $r3,$r1
   9e048:	d5 0b       	j8 9e05e <sep_frac+0x24>
   9e04a:	80 47       	mov55 $r2,$r7
   9e04c:	fd 04       	movd44 $r0,$r8
   9e04e:	f3 81       	swi37.sp $r3,[+#0x4]
   9e050:	49 ff 90 90 	jal 90170 <__lshrdi3>
   9e054:	f3 01       	lwi37.sp $r3,[+#0x4]
   9e056:	9d b1       	addi333 $r6,$r6,#1
   9e058:	1a 01 80 01 	shi.bi $r0,[$r3],#0x2
   9e05c:	8e f0       	subi45 $r7,#16
   9e05e:	4e 76 ff f6 	bgtz $r7,9e04a <sep_frac+0x10>
   9e062:	c7 08       	beqz38 $r7,9e072 <sep_frac+0x38>
   9e064:	fd 04       	movd44 $r0,$r8
   9e066:	fe ba       	neg33 $r2,$r7
   9e068:	49 ff 90 9a 	jal 9019c <__ashldi3>
   9e06c:	38 05 19 09 	sh $r0,[$r10+($r6<<#0x1)]
   9e070:	9d b1       	addi333 $r6,$r6,#1
   9e072:	80 06       	mov55 $r0,$r6
   9e074:	fc c1       	pop25 $r10,#0x8    ! {$r6~$r10, $fp, $gp, $lp}

0009e076 <fill_0>:
   9e076:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9e078:	80 40       	mov55 $r2,$r0
   9e07a:	84 00       	movi55 $r0,#0
   9e07c:	80 60       	mov55 $r3,$r0
   9e07e:	d5 04       	j8 9e086 <fill_0+0x10>
   9e080:	1a 30 80 01 	shi.bi $r3,[$r1],#0x2
   9e084:	9c 01       	addi333 $r0,$r0,#1
   9e086:	e0 02       	slts45 $r0,$r2
   9e088:	e9 fc       	bnezs8 9e080 <fill_0+0xa>
   9e08a:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}

0009e08c <double2dec>:
   9e08c:	fc 59       	push25 $r10,#0xc8    ! {$r6~$r10, $fp, $gp, $lp}
   9e08e:	51 cf 80 e4 	addi $fp,$sp,#228
   9e092:	f2 8f       	swi37.sp $r2,[+#0x3c]
   9e094:	f4 8a       	swi37.sp $r4,[+#0x28]
   9e096:	f5 89       	swi37.sp $r5,[+#0x24]
   9e098:	f3 3a       	lwi37.sp $r3,[+#0xe8]
   9e09a:	4e 45 03 57 	bltz $r4,9e748 <double2dec+0x6bc>
   9e09e:	cc 03       	bnez38 $r4,9e0a4 <double2dec+0x18>
   9e0a0:	f4 8d       	swi37.sp $r4,[+#0x34]
   9e0a2:	d5 04       	j8 9e0aa <double2dec+0x1e>
   9e0a4:	f2 0a       	lwi37.sp $r2,[+#0x28]
   9e0a6:	9c 91       	addi333 $r2,$r2,#1
   9e0a8:	f2 8d       	swi37.sp $r2,[+#0x34]
   9e0aa:	5a 30 65 08 	beqc $r3,#101,9e0ba <double2dec+0x2e>
   9e0ae:	5a 30 45 06 	beqc $r3,#69,9e0ba <double2dec+0x2e>
   9e0b2:	5a 30 67 04 	beqc $r3,#103,9e0ba <double2dec+0x2e>
   9e0b6:	5a 38 47 16 	bnec $r3,#71,9e0e2 <double2dec+0x56>
   9e0ba:	f5 0d       	lwi37.sp $r5,[+#0x34]
   9e0bc:	50 62 80 0f 	addi $r6,$r5,#15
   9e0c0:	92 c3       	srli45 $r6,#3
   9e0c2:	95 b3       	slli333 $r6,$r6,#3
   9e0c4:	41 ff 98 01 	sub $sp,$sp,$r6
   9e0c8:	15 fe 7f cf 	swi $sp,[$fp+#-0xc4]
   9e0cc:	5a 30 67 12 	beqc $r3,#103,9e0f0 <double2dec+0x64>
   9e0d0:	5a 30 47 10 	beqc $r3,#71,9e0f0 <double2dec+0x64>
   9e0d4:	84 40       	movi55 $r2,#0
   9e0d6:	84 a1       	movi55 $r5,#1
   9e0d8:	14 2e 7f d2 	swi $r2,[$fp+#-0xb8]
   9e0dc:	14 5e 7f d5 	swi $r5,[$fp+#-0xac]
   9e0e0:	d5 13       	j8 9e106 <double2dec+0x7a>
   9e0e2:	5a 30 66 0d 	beqc $r3,#102,9e0fc <double2dec+0x70>
   9e0e6:	5a 30 46 04 	beqc $r3,#70,9e0ee <double2dec+0x62>
   9e0ea:	48 00 03 2f 	j 9e748 <double2dec+0x6bc>
   9e0ee:	d5 07       	j8 9e0fc <double2dec+0x70>
   9e0f0:	84 c1       	movi55 $r6,#1
   9e0f2:	14 6e 7f d2 	swi $r6,[$fp+#-0xb8]
   9e0f6:	14 6e 7f d5 	swi $r6,[$fp+#-0xac]
   9e0fa:	d5 06       	j8 9e106 <double2dec+0x7a>
   9e0fc:	85 21       	movi55 $r9,#1
   9e0fe:	84 40       	movi55 $r2,#0
   9e100:	14 9f 80 0b 	swi $r9,[$sp+#0x2c]
   9e104:	f2 8e       	swi37.sp $r2,[+#0x38]
   9e106:	99 80       	add333 $r6,$r0,$r0
   9e108:	50 31 ff bb 	addi $r3,$r3,#-69
   9e10c:	5c 31 80 03 	slti $r3,$r3,#3
   9e110:	40 63 00 06 	slt $r6,$r6,$r0
   9e114:	99 c9       	add333 $r7,$r1,$r1
   9e116:	80 80       	mov55 $r4,$r0
   9e118:	b8 02       	lwi37 $r0,[$fp+#0x8]
   9e11a:	99 b7       	add333 $r6,$r6,$r7
   9e11c:	14 3e 7f ce 	swi $r3,[$fp+#-0xc8]
   9e120:	84 e0       	movi55 $r7,#0
   9e122:	b6 e0       	swi450 $r7,[$r0]
   9e124:	92 d5       	srli45 $r6,#21
   9e126:	44 70 07 ff 	movi $r7,#2047
   9e12a:	81 21       	mov55 $r9,$r1
   9e12c:	40 50 b0 08 	slli $r5,$r1,#12
   9e130:	92 ac       	srli45 $r5,#12
   9e132:	4c 63 c0 18 	bne $r6,$r7,9e162 <double2dec+0xd6>
   9e136:	40 72 14 04 	or $r7,$r4,$r5
   9e13a:	c7 14       	beqz38 $r7,9e162 <double2dec+0xd6>
   9e13c:	04 1e 7f ce 	lwi $r1,[$fp+#-0xc8]
   9e140:	c9 06       	bnez38 $r1,9e14c <double2dec+0xc0>
   9e142:	46 10 00 a2 	sethi $r1,#0xa2
   9e146:	58 10 82 1c 	ori $r1,$r1,#0x21c
   9e14a:	d5 05       	j8 9e154 <double2dec+0xc8>
   9e14c:	46 10 00 a2 	sethi $r1,#0xa2
   9e150:	58 10 82 20 	ori $r1,$r1,#0x220
   9e154:	04 0e 7f d6 	lwi $r0,[$fp+#-0xa8]
   9e158:	85 43       	movi55 $r10,#3
   9e15a:	49 ff 8f c7 	jal 900e8 <strcpy>
   9e15e:	48 00 02 f6 	j 9e74a <double2dec+0x6be>
   9e162:	4e 95 00 08 	bltz $r9,9e172 <double2dec+0xe6>
   9e166:	04 2e 7f d0 	lwi $r2,[$fp+#-0xc0]
   9e16a:	54 71 00 04 	andi $r7,$r2,#0x4
   9e16e:	cf 06       	bnez38 $r7,9e17a <double2dec+0xee>
   9e170:	d5 03       	j8 9e176 <double2dec+0xea>
   9e172:	fa fd       	movpi45 $r7,#0x2d
   9e174:	d5 04       	j8 9e17c <double2dec+0xf0>
   9e176:	81 47       	mov55 $r10,$r7
   9e178:	d5 06       	j8 9e184 <double2dec+0xf8>
   9e17a:	fa fb       	movpi45 $r7,#0x2b
   9e17c:	04 3e 7f d6 	lwi $r3,[$fp+#-0xa8]
   9e180:	85 41       	movi55 $r10,#1
   9e182:	af d8       	sbi333 $r7,[$r3+#0x0]
   9e184:	44 70 07 ff 	movi $r7,#2047
   9e188:	4c 63 c0 1a 	bne $r6,$r7,9e1bc <double2dec+0x130>
   9e18c:	40 72 14 04 	or $r7,$r4,$r5
   9e190:	cf 29       	bnez38 $r7,9e1e2 <double2dec+0x156>
   9e192:	04 5e 7f ce 	lwi $r5,[$fp+#-0xc8]
   9e196:	cd 06       	bnez38 $r5,9e1a2 <double2dec+0x116>
   9e198:	46 10 00 a2 	sethi $r1,#0xa2
   9e19c:	58 10 82 24 	ori $r1,$r1,#0x224
   9e1a0:	d5 05       	j8 9e1aa <double2dec+0x11e>
   9e1a2:	46 10 00 a2 	sethi $r1,#0xa2
   9e1a6:	58 10 82 28 	ori $r1,$r1,#0x228
   9e1aa:	04 6e 7f d6 	lwi $r6,[$fp+#-0xa8]
   9e1ae:	40 03 28 00 	add $r0,$r6,$r10
   9e1b2:	49 ff 8f 9b 	jal 900e8 <strcpy>
   9e1b6:	8d 43       	addi45 $r10,#3
   9e1b8:	48 00 02 c9 	j 9e74a <double2dec+0x6be>
   9e1bc:	ce 13       	bnez38 $r6,9e1e2 <double2dec+0x156>
   9e1be:	40 62 14 04 	or $r6,$r4,$r5
   9e1c2:	c6 04       	beqz38 $r6,9e1ca <double2dec+0x13e>
   9e1c4:	44 6f fc 03 	movi $r6,#-1021
   9e1c8:	d5 48       	j8 9e258 <double2dec+0x1cc>
   9e1ca:	04 9e 7f d5 	lwi $r9,[$fp+#-0xac]
   9e1ce:	4e 92 02 c2 	beqz $r9,9e752 <double2dec+0x6c6>
   9e1d2:	04 0e 7f d2 	lwi $r0,[$fp+#-0xb8]
   9e1d6:	5c 00 00 01 	slti $r0,$r0,#1
   9e1da:	14 0e 7f d5 	swi $r0,[$fp+#-0xac]
   9e1de:	48 00 02 ba 	j 9e752 <double2dec+0x6c6>
   9e1e2:	46 10 01 00 	sethi $r1,#0x100
   9e1e6:	50 63 7c 02 	addi $r6,$r6,#-1022
   9e1ea:	ff 4f       	or33 $r5,$r1
   9e1ec:	5e f3 00 35 	sltsi $r15,$r6,#53
   9e1f0:	e9 32       	bnezs8 9e254 <double2dec+0x1c8>
   9e1f2:	50 8e 7f 5c 	addi $r8,$fp,#-164
   9e1f6:	50 63 7f cb 	addi $r6,$r6,#-53
   9e1fa:	40 03 10 0a 	srai $r0,$r6,#4
   9e1fe:	80 28       	mov55 $r1,$r8
   9e200:	14 4e 7f cb 	swi $r4,[$fp+#-0xd4]
   9e204:	14 5e 7f ca 	swi $r5,[$fp+#-0xd8]
   9e208:	49 ff ff 37 	jal 9e076 <fill_0>
   9e20c:	04 4e 7f cb 	lwi $r4,[$fp+#-0xd4]
   9e210:	04 5e 7f ca 	lwi $r5,[$fp+#-0xd8]
   9e214:	97 9f       	fexti33 $r6,#0x3
   9e216:	81 20       	mov55 $r9,$r0
   9e218:	80 25       	mov55 $r1,$r5
   9e21a:	80 04       	mov55 $r0,$r4
   9e21c:	80 46       	mov55 $r2,$r6
   9e21e:	49 ff 8f bf 	jal 9019c <__ashldi3>
   9e222:	04 4e 7f cb 	lwi $r4,[$fp+#-0xd4]
   9e226:	04 5e 7f ca 	lwi $r5,[$fp+#-0xd8]
   9e22a:	38 04 25 09 	sh $r0,[$r8+($r9<<#0x1)]
   9e22e:	8d 21       	addi45 $r9,#1
   9e230:	80 04       	mov55 $r0,$r4
   9e232:	40 74 a4 00 	add $r7,$r9,$r9
   9e236:	80 25       	mov55 $r1,$r5
   9e238:	52 23 00 10 	subri $r2,$r6,#16
   9e23c:	49 ff 8f 9a 	jal 90170 <__lshrdi3>
   9e240:	88 e8       	add45 $r7,$r8
   9e242:	fd 10       	movd44 $r2,$r0
   9e244:	80 07       	mov55 $r0,$r7
   9e246:	49 ff fe ea 	jal 9e01a <sep_int>
   9e24a:	89 20       	add45 $r9,$r0
   9e24c:	14 9e 7f d3 	swi $r9,[$fp+#-0xb4]
   9e250:	84 80       	movi55 $r4,#0
   9e252:	d5 4c       	j8 9e2ea <double2dec+0x25e>
   9e254:	4e 66 00 29 	bgtz $r6,9e2a6 <double2dec+0x21a>
   9e258:	50 2e 7f 5c 	addi $r2,$fp,#-164
   9e25c:	ff b2       	neg33 $r6,$r6
   9e25e:	80 22       	mov55 $r1,$r2
   9e260:	40 03 10 0a 	srai $r0,$r6,#4
   9e264:	14 2e 7f cc 	swi $r2,[$fp+#-0xd0]
   9e268:	14 4e 7f cb 	swi $r4,[$fp+#-0xd4]
   9e26c:	14 5e 7f ca 	swi $r5,[$fp+#-0xd8]
   9e270:	49 ff ff 03 	jal 9e076 <fill_0>
   9e274:	04 2e 7f cc 	lwi $r2,[$fp+#-0xd0]
   9e278:	04 4e 7f cb 	lwi $r4,[$fp+#-0xd4]
   9e27c:	04 5e 7f ca 	lwi $r5,[$fp+#-0xd8]
   9e280:	99 c0       	add333 $r7,$r0,$r0
   9e282:	54 83 00 0f 	andi $r8,$r6,#0xf
   9e286:	81 20       	mov55 $r9,$r0
   9e288:	98 57       	add333 $r1,$r2,$r7
   9e28a:	50 04 00 25 	addi $r0,$r8,#37
   9e28e:	80 44       	mov55 $r2,$r4
   9e290:	80 65       	mov55 $r3,$r5
   9e292:	49 ff fe d4 	jal 9e03a <sep_frac>
   9e296:	84 40       	movi55 $r2,#0
   9e298:	40 40 24 00 	add $r4,$r0,$r9
   9e29c:	05 ee 7f d4 	lwi $lp,[$fp+#-0xb0]
   9e2a0:	14 2e 7f d3 	swi $r2,[$fp+#-0xb4]
   9e2a4:	d5 29       	j8 9e2f6 <double2dec+0x26a>
   9e2a6:	fd 02       	movd44 $r0,$r4
   9e2a8:	52 23 00 35 	subri $r2,$r6,#53
   9e2ac:	14 4e 7f cb 	swi $r4,[$fp+#-0xd4]
   9e2b0:	14 5e 7f ca 	swi $r5,[$fp+#-0xd8]
   9e2b4:	49 ff 8f 5e 	jal 90170 <__lshrdi3>
   9e2b8:	81 00       	mov55 $r8,$r0
   9e2ba:	80 61       	mov55 $r3,$r1
   9e2bc:	80 48       	mov55 $r2,$r8
   9e2be:	50 0e 7f 5c 	addi $r0,$fp,#-164
   9e2c2:	81 21       	mov55 $r9,$r1
   9e2c4:	49 ff fe ab 	jal 9e01a <sep_int>
   9e2c8:	04 4e 7f cb 	lwi $r4,[$fp+#-0xd4]
   9e2cc:	04 5e 7f ca 	lwi $r5,[$fp+#-0xd8]
   9e2d0:	99 c0       	add333 $r7,$r0,$r0
   9e2d2:	50 3e 7f 5c 	addi $r3,$fp,#-164
   9e2d6:	14 0e 7f d3 	swi $r0,[$fp+#-0xb4]
   9e2da:	98 5f       	add333 $r1,$r3,$r7
   9e2dc:	80 44       	mov55 $r2,$r4
   9e2de:	52 03 00 25 	subri $r0,$r6,#37
   9e2e2:	80 65       	mov55 $r3,$r5
   9e2e4:	49 ff fe ab 	jal 9e03a <sep_frac>
   9e2e8:	80 80       	mov55 $r4,$r0
   9e2ea:	04 5e 7f d3 	lwi $r5,[$fp+#-0xb4]
   9e2ee:	4e 56 00 07 	bgtz $r5,9e2fc <double2dec+0x270>
   9e2f2:	05 ee 7f d4 	lwi $lp,[$fp+#-0xb0]
   9e2f6:	84 1f       	movi55 $r0,#-1
   9e2f8:	48 00 00 c6 	j 9e484 <double2dec+0x3f8>
   9e2fc:	04 6e 7f d3 	lwi $r6,[$fp+#-0xb4]
   9e300:	84 60       	movi55 $r3,#0
   9e302:	9e 71       	subi333 $r1,$r6,#1
   9e304:	84 1f       	movi55 $r0,#-1
   9e306:	50 6e 7f 5a 	addi $r6,$fp,#-166
   9e30a:	81 2a       	mov55 $r9,$r10
   9e30c:	14 ae 7f cd 	swi $r10,[$fp+#-0xcc]
   9e310:	80 43       	mov55 $r2,$r3
   9e312:	81 44       	mov55 $r10,$r4
   9e314:	50 5e 7f 5c 	addi $r5,$fp,#-164
   9e318:	14 6e 7f c8 	swi $r6,[$fp+#-0xe0]
   9e31c:	87 ca       	movi55 $lp,#10
   9e31e:	80 80       	mov55 $r4,$r0
   9e320:	d5 34       	j8 9e388 <double2dec+0x2fc>
   9e322:	02 04 00 00 	lhi $r0,[$r8+#0x0]
   9e326:	40 63 c0 08 	slli $r6,$r7,#16
   9e32a:	99 b0       	add333 $r6,$r6,$r0
   9e32c:	40 63 78 16 	divsr $r6,$r0,$r6,$lp
   9e330:	1a 64 7f ff 	shi.bi $r6,[$r8],#-0x2
   9e334:	04 6e 7f c8 	lwi $r6,[$fp+#-0xe0]
   9e338:	80 e0       	mov55 $r7,$r0
   9e33a:	4c 83 7f f4 	bne $r8,$r6,9e322 <double2dec+0x296>
   9e33e:	04 6e 7f d5 	lwi $r6,[$fp+#-0xac]
   9e342:	9d 21       	addi333 $r4,$r4,#1
   9e344:	c6 12       	beqz38 $r6,9e368 <double2dec+0x2dc>
   9e346:	04 6e 7f d4 	lwi $r6,[$fp+#-0xb0]
   9e34a:	e0 c2       	slts45 $r6,$r2
   9e34c:	e8 02       	beqzs8 9e350 <double2dec+0x2c4>
   9e34e:	84 40       	movi55 $r2,#0
   9e350:	04 6e 7f cf 	lwi $r6,[$fp+#-0xc4]
   9e354:	50 70 00 30 	addi $r7,$r0,#48
   9e358:	38 73 08 08 	sb $r7,[$r6+($r2<<#0x0)]
   9e35c:	9c 91       	addi333 $r2,$r2,#1
   9e35e:	04 6e 7f d4 	lwi $r6,[$fp+#-0xb0]
   9e362:	e0 c3       	slts45 $r6,$r3
   9e364:	e9 02       	bnezs8 9e368 <double2dec+0x2dc>
   9e366:	9c d9       	addi333 $r3,$r3,#1
   9e368:	04 6e 7f d2 	lwi $r6,[$fp+#-0xb8]
   9e36c:	c6 08       	beqz38 $r6,9e37c <double2dec+0x2f0>
   9e36e:	50 60 00 30 	addi $r6,$r0,#48
   9e372:	04 0e 7f d6 	lwi $r0,[$fp+#-0xa8]
   9e376:	38 60 24 08 	sb $r6,[$r0+($r9<<#0x0)]
   9e37a:	8d 21       	addi45 $r9,#1
   9e37c:	38 62 85 01 	lh $r6,[$r5+($r1<<#0x1)]
   9e380:	ce 02       	bnez38 $r6,9e384 <double2dec+0x2f8>
   9e382:	9e 49       	subi333 $r1,$r1,#1
   9e384:	5a 17 ff 07 	beqc $r1,#-1,9e392 <double2dec+0x306>
   9e388:	99 89       	add333 $r6,$r1,$r1
   9e38a:	40 82 98 00 	add $r8,$r5,$r6
   9e38e:	84 e0       	movi55 $r7,#0
   9e390:	d5 c9       	j8 9e322 <double2dec+0x296>
   9e392:	04 1e 7f d5 	lwi $r1,[$fp+#-0xac]
   9e396:	80 04       	mov55 $r0,$r4
   9e398:	80 8a       	mov55 $r4,$r10
   9e39a:	04 ae 7f cd 	lwi $r10,[$fp+#-0xcc]
   9e39e:	c1 0b       	beqz38 $r1,9e3b4 <double2dec+0x328>
   9e3a0:	04 5e 7f d2 	lwi $r5,[$fp+#-0xb8]
   9e3a4:	c5 35       	beqz38 $r5,9e40e <double2dec+0x382>
   9e3a6:	04 6e 7f d4 	lwi $r6,[$fp+#-0xb0]
   9e3aa:	e0 06       	slts45 $r0,$r6
   9e3ac:	e8 31       	beqzs8 9e40e <double2dec+0x382>
   9e3ae:	84 21       	movi55 $r1,#1
   9e3b0:	14 1e 7f d2 	swi $r1,[$fp+#-0xb8]
   9e3b4:	40 74 a8 00 	add $r7,$r9,$r10
   9e3b8:	04 2e 7f d6 	lwi $r2,[$fp+#-0xa8]
   9e3bc:	40 13 84 0a 	srai $r1,$r7,#1
   9e3c0:	50 74 ff ff 	addi $r7,$r9,#-1
   9e3c4:	41 e1 28 00 	add $lp,$r2,$r10
   9e3c8:	40 81 1c 00 	add $r8,$r2,$r7
   9e3cc:	80 6a       	mov55 $r3,$r10
   9e3ce:	d5 3e       	j8 9e44a <double2dec+0x3be>
   9e3d0:	04 9e 7f cf 	lwi $r9,[$fp+#-0xc4]
   9e3d4:	9e 91       	subi333 $r2,$r2,#1
   9e3d6:	38 94 88 00 	lb $r9,[$r9+($r2<<#0x0)]
   9e3da:	38 92 a8 08 	sb $r9,[$r5+($r10<<#0x0)]
   9e3de:	8d 41       	addi45 $r10,#1
   9e3e0:	4e 26 00 03 	bgtz $r2,9e3e6 <double2dec+0x35a>
   9e3e4:	80 48       	mov55 $r2,$r8
   9e3e6:	c7 09       	beqz38 $r7,9e3f8 <double2dec+0x36c>
   9e3e8:	51 ef 7f ff 	addi $lp,$lp,#-1
   9e3ec:	4f e6 00 0f 	bgtz $lp,9e40a <double2dec+0x37e>
   9e3f0:	84 21       	movi55 $r1,#1
   9e3f2:	14 1e 7f d5 	swi $r1,[$fp+#-0xac]
   9e3f6:	d5 49       	j8 9e488 <double2dec+0x3fc>
   9e3f8:	4f e3 00 03 	bnez $lp,9e3fe <double2dec+0x372>
   9e3fc:	c1 07       	beqz38 $r1,9e40a <double2dec+0x37e>
   9e3fe:	04 9e 00 02 	lwi $r9,[$fp+#0x8]
   9e402:	b7 49       	swi450 $r10,[$r9]
   9e404:	38 62 a8 08 	sb $r6,[$r5+($r10<<#0x0)]
   9e408:	8d 41       	addi45 $r10,#1
   9e40a:	9d f9       	addi333 $r7,$r7,#1
   9e40c:	d5 0d       	j8 9e426 <double2dec+0x39a>
   9e40e:	04 5e 7f d0 	lwi $r5,[$fp+#-0xc0]
   9e412:	05 ee 7f d4 	lwi $lp,[$fp+#-0xb0]
   9e416:	54 12 90 00 	andi $r1,$r5,#0x1000
   9e41a:	04 5e 7f d6 	lwi $r5,[$fp+#-0xa8]
   9e41e:	84 e0       	movi55 $r7,#0
   9e420:	50 8f 00 01 	addi $r8,$lp,#1
   9e424:	fa de       	movpi45 $r6,#0x2e
   9e426:	e0 e3       	slts45 $r7,$r3
   9e428:	e9 d4       	bnezs8 9e3d0 <double2dec+0x344>
   9e42a:	84 c0       	movi55 $r6,#0
   9e42c:	85 21       	movi55 $r9,#1
   9e42e:	14 6e 7f d2 	swi $r6,[$fp+#-0xb8]
   9e432:	14 9e 7f d5 	swi $r9,[$fp+#-0xac]
   9e436:	d5 27       	j8 9e484 <double2dec+0x3f8>
   9e438:	20 2f 00 00 	lbsi $r2,[$lp+#0x0]
   9e43c:	00 54 00 00 	lbi $r5,[$r8+#0x0]
   9e440:	9c d9       	addi333 $r3,$r3,#1
   9e442:	18 5f 00 01 	sbi.bi $r5,[$lp],#0x1
   9e446:	18 24 7f ff 	sbi.bi $r2,[$r8],#-0x1
   9e44a:	e0 61       	slts45 $r3,$r1
   9e44c:	e9 f6       	bnezs8 9e438 <double2dec+0x3ac>
   9e44e:	04 6e 7f d4 	lwi $r6,[$fp+#-0xb0]
   9e452:	ce 0b       	bnez38 $r6,9e468 <double2dec+0x3dc>
   9e454:	04 1e 7f d0 	lwi $r1,[$fp+#-0xc0]
   9e458:	54 70 90 00 	andi $r7,$r1,#0x1000
   9e45c:	cf 06       	bnez38 $r7,9e468 <double2dec+0x3dc>
   9e45e:	83 c6       	mov55 $lp,$r6
   9e460:	81 49       	mov55 $r10,$r9
   9e462:	14 6e 7f d5 	swi $r6,[$fp+#-0xac]
   9e466:	d5 0f       	j8 9e484 <double2dec+0x3f8>
   9e468:	ba 02       	lwi37 $r2,[$fp+#0x8]
   9e46a:	04 3e 7f d6 	lwi $r3,[$fp+#-0xa8]
   9e46e:	fa fe       	movpi45 $r7,#0x2e
   9e470:	b7 22       	swi450 $r9,[$r2]
   9e472:	38 71 a4 08 	sb $r7,[$r3+($r9<<#0x0)]
   9e476:	84 a0       	movi55 $r5,#0
   9e478:	05 ee 7f d4 	lwi $lp,[$fp+#-0xb0]
   9e47c:	14 5e 7f d5 	swi $r5,[$fp+#-0xac]
   9e480:	50 a4 80 01 	addi $r10,$r9,#1
   9e484:	4e 46 00 0b 	bgtz $r4,9e49a <double2dec+0x40e>
   9e488:	04 9e 7f d6 	lwi $r9,[$fp+#-0xa8]
   9e48c:	84 a0       	movi55 $r5,#0
   9e48e:	40 64 a8 00 	add $r6,$r9,$r10
   9e492:	44 70 00 30 	movi $r7,#48
   9e496:	48 00 00 be 	j 9e612 <double2dec+0x586>
   9e49a:	04 1e 7f d3 	lwi $r1,[$fp+#-0xb4]
   9e49e:	99 8c       	add333 $r6,$r1,$r4
   9e4a0:	9f b1       	subi333 $r6,$r6,#1
   9e4a2:	e0 c1       	slts45 $r6,$r1
   9e4a4:	4e f3 00 bc 	bnez $r15,9e61c <double2dec+0x590>
   9e4a8:	50 7e 7f 5c 	addi $r7,$fp,#-164
   9e4ac:	99 b6       	add333 $r6,$r6,$r6
   9e4ae:	04 3e 7f d0 	lwi $r3,[$fp+#-0xc0]
   9e4b2:	99 be       	add333 $r6,$r7,$r6
   9e4b4:	50 8e 7f 5a 	addi $r8,$fp,#-166
   9e4b8:	99 c9       	add333 $r7,$r1,$r1
   9e4ba:	88 e8       	add45 $r7,$r8
   9e4bc:	84 41       	movi55 $r2,#1
   9e4be:	54 31 90 00 	andi $r3,$r3,#0x1000
   9e4c2:	14 6e 7f cf 	swi $r6,[$fp+#-0xc4]
   9e4c6:	14 7e 7f cd 	swi $r7,[$fp+#-0xcc]
   9e4ca:	80 82       	mov55 $r4,$r2
   9e4cc:	14 3e 7f d4 	swi $r3,[$fp+#-0xb0]
   9e4d0:	04 8e 7f d2 	lwi $r8,[$fp+#-0xb8]
   9e4d4:	04 6e 7f d5 	lwi $r6,[$fp+#-0xac]
   9e4d8:	04 7e 7f d6 	lwi $r7,[$fp+#-0xa8]
   9e4dc:	48 00 00 92 	j 9e600 <double2dec+0x574>
   9e4e0:	a4 e8       	lhi333 $r3,[$r5+#0x0]
   9e4e2:	85 2a       	movi55 $r9,#10
   9e4e4:	42 11 a4 73 	maddr32 $r1,$r3,$r9
   9e4e8:	04 3e 7f cd 	lwi $r3,[$fp+#-0xcc]
   9e4ec:	1a 12 ff ff 	shi.bi $r1,[$r5],#-0x2
   9e4f0:	90 30       	srai45 $r1,#16
   9e4f2:	db f7       	bnes38 $r3,9e4e0 <double2dec+0x454>
   9e4f4:	04 5e 7f d3 	lwi $r5,[$fp+#-0xb4]
   9e4f8:	c5 0c       	beqz38 $r5,9e510 <double2dec+0x484>
   9e4fa:	4f e7 00 8f 	blez $lp,9e618 <double2dec+0x58c>
   9e4fe:	50 10 80 30 	addi $r1,$r1,#48
   9e502:	38 13 a8 08 	sb $r1,[$r7+($r10<<#0x0)]
   9e506:	51 ef 7f ff 	addi $lp,$lp,#-1
   9e50a:	8d 41       	addi45 $r10,#1
   9e50c:	81 20       	mov55 $r9,$r0
   9e50e:	d5 72       	j8 9e5f2 <double2dec+0x566>
   9e510:	4e 82 00 32 	beqz $r8,9e574 <double2dec+0x4e8>
   9e514:	c6 51       	beqz38 $r6,9e5b6 <double2dec+0x52a>
   9e516:	c9 0c       	bnez38 $r1,9e52e <double2dec+0x4a2>
   9e518:	50 90 7f ff 	addi $r9,$r0,#-1
   9e51c:	5e f4 ff fc 	sltsi $r15,$r9,#-4
   9e520:	e8 04       	beqzs8 9e528 <double2dec+0x49c>
   9e522:	04 8e 7f d3 	lwi $r8,[$fp+#-0xb4]
   9e526:	d5 2c       	j8 9e57e <double2dec+0x4f2>
   9e528:	85 01       	movi55 $r8,#1
   9e52a:	80 c8       	mov55 $r6,$r8
   9e52c:	d5 63       	j8 9e5f2 <double2dec+0x566>
   9e52e:	44 50 00 30 	movi $r5,#48
   9e532:	38 53 a8 08 	sb $r5,[$r7+($r10<<#0x0)]
   9e536:	50 35 00 01 	addi $r3,$r10,#1
   9e53a:	be 02       	lwi37 $r6,[$fp+#0x8]
   9e53c:	fa 5e       	movpi45 $r2,#0x2e
   9e53e:	8d 42       	addi45 $r10,#2
   9e540:	b6 66       	swi450 $r3,[$r6]
   9e542:	50 90 00 01 	addi $r9,$r0,#1
   9e546:	38 23 8c 08 	sb $r2,[$r7+($r3<<#0x0)]
   9e54a:	9c d9       	addi333 $r3,$r3,#1
   9e54c:	40 23 a8 00 	add $r2,$r7,$r10
   9e550:	d5 05       	j8 9e55a <double2dec+0x4ce>
   9e552:	18 51 00 01 	sbi.bi $r5,[$r2],#0x1
   9e556:	80 6a       	mov55 $r3,$r10
   9e558:	8d 21       	addi45 $r9,#1
   9e55a:	50 a1 80 01 	addi $r10,$r3,#1
   9e55e:	4e 95 ff fa 	bltz $r9,9e552 <double2dec+0x4c6>
   9e562:	50 10 80 30 	addi $r1,$r1,#48
   9e566:	41 ef 00 00 	add $lp,$lp,$r0
   9e56a:	38 13 8c 08 	sb $r1,[$r7+($r3<<#0x0)]
   9e56e:	84 40       	movi55 $r2,#0
   9e570:	85 01       	movi55 $r8,#1
   9e572:	d5 3f       	j8 9e5f0 <double2dec+0x564>
   9e574:	c6 21       	beqz38 $r6,9e5b6 <double2dec+0x52a>
   9e576:	c9 06       	bnez38 $r1,9e582 <double2dec+0x4f6>
   9e578:	c4 05       	beqz38 $r4,9e582 <double2dec+0x4f6>
   9e57a:	50 90 7f ff 	addi $r9,$r0,#-1
   9e57e:	84 c1       	movi55 $r6,#1
   9e580:	d5 39       	j8 9e5f2 <double2dec+0x566>
   9e582:	50 10 80 30 	addi $r1,$r1,#48
   9e586:	38 13 a8 08 	sb $r1,[$r7+($r10<<#0x0)]
   9e58a:	8d 41       	addi45 $r10,#1
   9e58c:	c2 10       	beqz38 $r2,9e5ac <double2dec+0x520>
   9e58e:	4f e6 00 06 	bgtz $lp,9e59a <double2dec+0x50e>
   9e592:	04 9e 7f d4 	lwi $r9,[$fp+#-0xb0]
   9e596:	4e 92 00 e2 	beqz $r9,9e75a <double2dec+0x6ce>
   9e59a:	b9 02       	lwi37 $r1,[$fp+#0x8]
   9e59c:	81 20       	mov55 $r9,$r0
   9e59e:	b7 41       	swi450 $r10,[$r1]
   9e5a0:	fa 3e       	movpi45 $r1,#0x2e
   9e5a2:	38 13 a8 08 	sb $r1,[$r7+($r10<<#0x0)]
   9e5a6:	84 40       	movi55 $r2,#0
   9e5a8:	8d 41       	addi45 $r10,#1
   9e5aa:	d5 04       	j8 9e5b2 <double2dec+0x526>
   9e5ac:	51 ef 7f ff 	addi $lp,$lp,#-1
   9e5b0:	81 20       	mov55 $r9,$r0
   9e5b2:	80 82       	mov55 $r4,$r2
   9e5b4:	d5 e5       	j8 9e57e <double2dec+0x4f2>
   9e5b6:	c2 12       	beqz38 $r2,9e5da <double2dec+0x54e>
   9e5b8:	44 20 00 30 	movi $r2,#48
   9e5bc:	38 23 a8 08 	sb $r2,[$r7+($r10<<#0x0)]
   9e5c0:	8d 41       	addi45 $r10,#1
   9e5c2:	4f e6 00 06 	bgtz $lp,9e5ce <double2dec+0x542>
   9e5c6:	04 2e 7f d4 	lwi $r2,[$fp+#-0xb0]
   9e5ca:	4e 22 00 cd 	beqz $r2,9e764 <double2dec+0x6d8>
   9e5ce:	bb 02       	lwi37 $r3,[$fp+#0x8]
   9e5d0:	fa 5e       	movpi45 $r2,#0x2e
   9e5d2:	b7 43       	swi450 $r10,[$r3]
   9e5d4:	38 23 a8 08 	sb $r2,[$r7+($r10<<#0x0)]
   9e5d8:	8d 41       	addi45 $r10,#1
   9e5da:	4f e7 00 c5 	blez $lp,9e764 <double2dec+0x6d8>
   9e5de:	50 10 80 30 	addi $r1,$r1,#48
   9e5e2:	38 13 a8 08 	sb $r1,[$r7+($r10<<#0x0)]
   9e5e6:	51 ef 7f ff 	addi $lp,$lp,#-1
   9e5ea:	8d 41       	addi45 $r10,#1
   9e5ec:	81 20       	mov55 $r9,$r0
   9e5ee:	84 40       	movi55 $r2,#0
   9e5f0:	80 c2       	mov55 $r6,$r2
   9e5f2:	4f e6 00 06 	bgtz $lp,9e5fe <double2dec+0x572>
   9e5f6:	14 6e 7f d5 	swi $r6,[$fp+#-0xac]
   9e5fa:	80 09       	mov55 $r0,$r9
   9e5fc:	d5 10       	j8 9e61c <double2dec+0x590>
   9e5fe:	80 09       	mov55 $r0,$r9
   9e600:	04 5e 7f cf 	lwi $r5,[$fp+#-0xc4]
   9e604:	84 20       	movi55 $r1,#0
   9e606:	48 ff ff 6d 	j 9e4e0 <double2dec+0x454>
   9e60a:	18 73 00 01 	sbi.bi $r7,[$r6],#0x1
   9e60e:	8d 41       	addi45 $r10,#1
   9e610:	9d 69       	addi333 $r5,$r5,#1
   9e612:	e0 be       	slts45 $r5,$lp
   9e614:	e9 fb       	bnezs8 9e60a <double2dec+0x57e>
   9e616:	d5 03       	j8 9e61c <double2dec+0x590>
   9e618:	14 6e 7f d5 	swi $r6,[$fp+#-0xac]
   9e61c:	bd 02       	lwi37 $r5,[$fp+#0x8]
   9e61e:	b4 c5       	lwi450 $r6,[$r5]
   9e620:	c6 44       	beqz38 $r6,9e6a8 <double2dec+0x61c>
   9e622:	04 6e 7f d1 	lwi $r6,[$fp+#-0xbc]
   9e626:	c6 41       	beqz38 $r6,9e6a8 <double2dec+0x61c>
   9e628:	04 9e 7f d6 	lwi $r9,[$fp+#-0xa8]
   9e62c:	40 64 a8 00 	add $r6,$r9,$r10
   9e630:	20 53 7f ff 	lbsi $r5,[$r6+#-0x1]
   9e634:	50 62 ff d0 	addi $r6,$r5,#-48
   9e638:	97 b0       	zeb33 $r6,$r6
   9e63a:	e6 ca       	slti45 $r6,#10
   9e63c:	e8 36       	beqzs8 9e6a8 <double2dec+0x61c>
   9e63e:	5e f2 80 35 	sltsi $r15,$r5,#53
   9e642:	e9 32       	bnezs8 9e6a6 <double2dec+0x61a>
   9e644:	50 65 7f fe 	addi $r6,$r10,#-2
   9e648:	40 44 98 00 	add $r4,$r9,$r6
   9e64c:	44 70 00 30 	movi $r7,#48
   9e650:	4e 64 00 18 	bgez $r6,9e680 <double2dec+0x5f4>
   9e654:	04 1e 7f d6 	lwi $r1,[$fp+#-0xa8]
   9e658:	50 45 7f ff 	addi $r4,$r10,#-1
   9e65c:	40 50 a8 00 	add $r5,$r1,$r10
   9e660:	d5 05       	j8 9e66a <double2dec+0x5de>
   9e662:	00 22 ff ff 	lbi $r2,[$r5+#-0x1]
   9e666:	9f 21       	subi333 $r4,$r4,#1
   9e668:	ae a8       	sbi333 $r2,[$r5+#0x0]
   9e66a:	9f 69       	subi333 $r5,$r5,#1
   9e66c:	4e 46 ff fb 	bgtz $r4,9e662 <double2dec+0x5d6>
   9e670:	04 3e 7f d6 	lwi $r3,[$fp+#-0xa8]
   9e674:	8d 41       	addi45 $r10,#1
   9e676:	99 1c       	add333 $r4,$r3,$r4
   9e678:	a7 a0       	lbi333 $r6,[$r4+#0x0]
   9e67a:	9d b1       	addi333 $r6,$r6,#1
   9e67c:	af a0       	sbi333 $r6,[$r4+#0x0]
   9e67e:	d5 14       	j8 9e6a6 <double2dec+0x61a>
   9e680:	20 52 00 00 	lbsi $r5,[$r4+#0x0]
   9e684:	50 12 ff d0 	addi $r1,$r5,#-48
   9e688:	96 48       	zeb33 $r1,$r1
   9e68a:	e6 29       	slti45 $r1,#9
   9e68c:	e8 04       	beqzs8 9e694 <double2dec+0x608>
   9e68e:	9d 69       	addi333 $r5,$r5,#1
   9e690:	af 60       	sbi333 $r5,[$r4+#0x0]
   9e692:	d5 0a       	j8 9e6a6 <double2dec+0x61a>
   9e694:	5a 58 39 04 	bnec $r5,#57,9e69c <double2dec+0x610>
   9e698:	af e0       	sbi333 $r7,[$r4+#0x0]
   9e69a:	d5 03       	j8 9e6a0 <double2dec+0x614>
   9e69c:	5a 58 2e 05 	bnec $r5,#46,9e6a6 <double2dec+0x61a>
   9e6a0:	9f b1       	subi333 $r6,$r6,#1
   9e6a2:	9f 21       	subi333 $r4,$r4,#1
   9e6a4:	d5 d6       	j8 9e650 <double2dec+0x5c4>
   9e6a6:	8f 41       	subi45 $r10,#1
   9e6a8:	04 5e 7f d5 	lwi $r5,[$fp+#-0xac]
   9e6ac:	c5 48       	beqz38 $r5,9e73c <double2dec+0x6b0>
   9e6ae:	04 6e 7f ce 	lwi $r6,[$fp+#-0xc8]
   9e6b2:	ce 04       	bnez38 $r6,9e6ba <double2dec+0x62e>
   9e6b4:	44 50 00 65 	movi $r5,#101
   9e6b8:	d5 03       	j8 9e6be <double2dec+0x632>
   9e6ba:	44 50 00 45 	movi $r5,#69
   9e6be:	04 9e 7f d6 	lwi $r9,[$fp+#-0xa8]
   9e6c2:	50 45 00 01 	addi $r4,$r10,#1
   9e6c6:	38 54 a8 08 	sb $r5,[$r9+($r10<<#0x0)]
   9e6ca:	4e 05 00 04 	bltz $r0,9e6d2 <double2dec+0x646>
   9e6ce:	fa 7b       	movpi45 $r3,#0x2b
   9e6d0:	d5 02       	j8 9e6d4 <double2dec+0x648>
   9e6d2:	fa 7d       	movpi45 $r3,#0x2d
   9e6d4:	04 1e 7f d6 	lwi $r1,[$fp+#-0xa8]
   9e6d8:	38 30 90 08 	sb $r3,[$r1+($r4<<#0x0)]
   9e6dc:	9d 21       	addi333 $r4,$r4,#1
   9e6de:	80 20       	mov55 $r1,$r0
   9e6e0:	4e 04 00 03 	bgez $r0,9e6e6 <double2dec+0x65a>
   9e6e4:	fe 42       	neg33 $r1,$r0
   9e6e6:	9c e1       	addi333 $r3,$r4,#1
   9e6e8:	5e f0 80 64 	sltsi $r15,$r1,#100
   9e6ec:	e8 0b       	beqzs8 9e702 <double2dec+0x676>
   9e6ee:	84 aa       	movi55 $r5,#10
   9e6f0:	40 50 94 d6 	divsr $r5,$r6,$r1,$r5
   9e6f4:	04 2e 7f d6 	lwi $r2,[$fp+#-0xa8]
   9e6f8:	50 52 80 30 	addi $r5,$r5,#48
   9e6fc:	38 51 10 08 	sb $r5,[$r2+($r4<<#0x0)]
   9e700:	d5 13       	j8 9e726 <double2dec+0x69a>
   9e702:	44 50 00 64 	movi $r5,#100
   9e706:	40 50 94 d6 	divsr $r5,$r6,$r1,$r5
   9e70a:	04 9e 7f d6 	lwi $r9,[$fp+#-0xa8]
   9e70e:	50 52 80 30 	addi $r5,$r5,#48
   9e712:	38 54 90 08 	sb $r5,[$r9+($r4<<#0x0)]
   9e716:	84 aa       	movi55 $r5,#10
   9e718:	40 43 14 b6 	divsr $r4,$r5,$r6,$r5
   9e71c:	50 42 00 30 	addi $r4,$r4,#48
   9e720:	38 44 8c 08 	sb $r4,[$r9+($r3<<#0x0)]
   9e724:	9c d9       	addi333 $r3,$r3,#1
   9e726:	84 8a       	movi55 $r4,#10
   9e728:	40 40 90 36 	divsr $r4,$r1,$r1,$r4
   9e72c:	04 0e 7f d6 	lwi $r0,[$fp+#-0xa8]
   9e730:	50 a1 80 01 	addi $r10,$r3,#1
   9e734:	50 10 80 30 	addi $r1,$r1,#48
   9e738:	38 10 0c 08 	sb $r1,[$r0+($r3<<#0x0)]
   9e73c:	04 2e 7f d6 	lwi $r2,[$fp+#-0xa8]
   9e740:	84 20       	movi55 $r1,#0
   9e742:	38 11 28 08 	sb $r1,[$r2+($r10<<#0x0)]
   9e746:	d5 02       	j8 9e74a <double2dec+0x6be>
   9e748:	85 40       	movi55 $r10,#0
   9e74a:	80 0a       	mov55 $r0,$r10
   9e74c:	51 fe 7f e4 	addi $sp,$fp,#-28
   9e750:	fc c0       	pop25 $r10,#0x0    ! {$r6~$r10, $fp, $gp, $lp}
   9e752:	44 60 00 35 	movi $r6,#53
   9e756:	48 ff fd 4e 	j 9e1f2 <double2dec+0x166>
   9e75a:	84 61       	movi55 $r3,#1
   9e75c:	14 3e 7f d5 	swi $r3,[$fp+#-0xac]
   9e760:	48 ff ff 5e 	j 9e61c <double2dec+0x590>
   9e764:	84 a0       	movi55 $r5,#0
   9e766:	14 5e 7f d5 	swi $r5,[$fp+#-0xac]
   9e76a:	48 ff ff 59 	j 9e61c <double2dec+0x590>

0009e76e <__malloc_update_mallinfo>:
   9e76e:	fc 20       	push25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}
   9e770:	3e 0f c2 4c 	addi.gp $r0,#-15796
   9e774:	a0 42       	lwi333 $r1,[$r0+#0x8]
   9e776:	a1 09       	lwi333 $r4,[$r1+#0x4]
   9e778:	84 ef       	movi55 $r7,#15
   9e77a:	40 12 08 09 	srli $r1,$r4,#2
   9e77e:	94 4a       	slli333 $r1,$r1,#2
   9e780:	40 33 84 07 	slts $r3,$r7,$r1
   9e784:	50 20 00 08 	addi $r2,$r0,#8
   9e788:	50 50 04 00 	addi $r5,$r0,#1024
   9e78c:	a0 13       	lwi333 $r0,[$r2+#0xc]
   9e78e:	d5 07       	j8 9e79c <__malloc_update_mallinfo+0x2e>
   9e790:	a1 81       	lwi333 $r6,[$r0+#0x4]
   9e792:	92 c2       	srli45 $r6,#2
   9e794:	95 b2       	slli333 $r6,$r6,#2
   9e796:	a0 03       	lwi333 $r0,[$r0+#0xc]
   9e798:	98 4e       	add333 $r1,$r1,$r6
   9e79a:	9c d9       	addi333 $r3,$r3,#1
   9e79c:	4c 01 7f fa 	bne $r0,$r2,9e790 <__malloc_update_mallinfo+0x22>
   9e7a0:	50 20 00 08 	addi $r2,$r0,#8
   9e7a4:	da f4       	bnes38 $r2,9e78c <__malloc_update_mallinfo+0x1e>
   9e7a6:	3e 0f d2 8c 	addi.gp $r0,#-11636
   9e7aa:	b4 40       	lwi450 $r2,[$r0]
   9e7ac:	83 80       	mov55 $fp,$r0
   9e7ae:	b9 88       	swi37 $r1,[$fp+#0x20]
   9e7b0:	9a 91       	sub333 $r2,$r2,$r1
   9e7b2:	92 82       	srli45 $r4,#2
   9e7b4:	95 22       	slli333 $r4,$r4,#2
   9e7b6:	a8 c1       	swi333 $r3,[$r0+#0x4]
   9e7b8:	a8 87       	swi333 $r2,[$r0+#0x1c]
   9e7ba:	bc 89       	swi37 $r4,[$fp+#0x24]
   9e7bc:	fc a0       	pop25 $r8,#0x0    ! {$r6~$r8, $fp, $gp, $lp}

0009e7be <_mallinfo_r>:
   9e7be:	fc 25       	push25 $r8,#0x28    ! {$r6~$r8, $fp, $gp, $lp}
   9e7c0:	80 c0       	mov55 $r6,$r0
   9e7c2:	80 01       	mov55 $r0,$r1
   9e7c4:	80 e1       	mov55 $r7,$r1
   9e7c6:	49 ff f8 c1 	jal 9d948 <__malloc_lock>
   9e7ca:	49 ff ff d2 	jal 9e76e <__malloc_update_mallinfo>
   9e7ce:	3e 5f d2 8c 	addi.gp $r5,#-11636
   9e7d2:	3a 02 8c 04 	lmw.bim $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   9e7d6:	80 86       	mov55 $r4,$r6
   9e7d8:	3a 02 0c 24 	smw.bim $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   9e7dc:	3a 02 8c 04 	lmw.bim $r0,[$r5],$r3,#0x0    ! {$r0~$r3}
   9e7e0:	3a 02 0c 24 	smw.bim $r0,[$r4],$r3,#0x0    ! {$r0~$r3}
   9e7e4:	3a 02 84 00 	lmw.bi $r0,[$r5],$r1,#0x0    ! {$r0~$r1}
   9e7e8:	3a 02 04 20 	smw.bi $r0,[$r4],$r1,#0x0    ! {$r0~$r1}
   9e7ec:	80 07       	mov55 $r0,$r7
   9e7ee:	49 ff f8 af 	jal 9d94c <__malloc_unlock>
   9e7f2:	80 06       	mov55 $r0,$r6
   9e7f4:	fc a5       	pop25 $r8,#0x28    ! {$r6~$r8, $fp, $gp, $lp}

0009e7f6 <countLeadingZeros32>:
   9e7f6:	fc 00       	push25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9e7f8:	84 60       	movi55 $r3,#0
   9e7fa:	fa 20       	movpi45 $r1,#0x10
   9e7fc:	fa 50       	movpi45 $r2,#0x20
   9e7fe:	40 40 04 0d 	srl $r4,$r0,$r1
   9e802:	c4 07       	beqz38 $r4,9e810 <countLeadingZeros32+0x1a>
   9e804:	5a 18 01 04 	bnec $r1,#1,9e80c <countLeadingZeros32+0x16>
   9e808:	9e 12       	subi333 $r0,$r2,#2
   9e80a:	d5 08       	j8 9e81a <countLeadingZeros32+0x24>
   9e80c:	9a 91       	sub333 $r2,$r2,$r1
   9e80e:	80 04       	mov55 $r0,$r4
   9e810:	9c d9       	addi333 $r3,$r3,#1
   9e812:	90 21       	srai45 $r1,#1
   9e814:	5a 38 05 f5 	bnec $r3,#5,9e7fe <countLeadingZeros32+0x8>
   9e818:	9a 10       	sub333 $r0,$r2,$r0
   9e81a:	96 02       	seb33 $r0,$r0
   9e81c:	fc 80       	pop25 $r6,#0x0    ! {$r6, $fp, $gp, $lp}
   9e81e:	00 00 64 00 	lbi $r0,[$r0+#-0x1c00]
   9e822:	1d 4a 00 00 	lbi $r0,[$r0+#0x1d4a]
