
.//Obj/apt32f110x.elf:     file format elf32-csky-little


Disassembly of section .text:

00000000 <vector_table>:
   0:	00000108 	.long	0x00000108
   4:	00000e38 	.long	0x00000e38
   8:	00000e3e 	.long	0x00000e3e
   c:	000001a8 	.long	0x000001a8
  10:	000001a8 	.long	0x000001a8
  14:	000001a8 	.long	0x000001a8
  18:	000001a8 	.long	0x000001a8
  1c:	00000e44 	.long	0x00000e44
  20:	000001a8 	.long	0x000001a8
  24:	000001a8 	.long	0x000001a8
  28:	000001a8 	.long	0x000001a8
  2c:	000001a8 	.long	0x000001a8
  30:	000001a8 	.long	0x000001a8
  34:	000001a8 	.long	0x000001a8
  38:	000001a8 	.long	0x000001a8
  3c:	000001a8 	.long	0x000001a8
  40:	000001a8 	.long	0x000001a8
  44:	000001a8 	.long	0x000001a8
  48:	000001a8 	.long	0x000001a8
  4c:	000001a8 	.long	0x000001a8
  50:	000001a8 	.long	0x000001a8
  54:	000001a8 	.long	0x000001a8
  58:	000001a8 	.long	0x000001a8
  5c:	000001a8 	.long	0x000001a8
  60:	000001a8 	.long	0x000001a8
  64:	000001a8 	.long	0x000001a8
  68:	000001a8 	.long	0x000001a8
  6c:	000001a8 	.long	0x000001a8
  70:	000001a8 	.long	0x000001a8
  74:	000001a8 	.long	0x000001a8
  78:	000001a8 	.long	0x000001a8
  7c:	00000e4a 	.long	0x00000e4a
  80:	000001a8 	.long	0x000001a8
  84:	000001a8 	.long	0x000001a8
  88:	000001a8 	.long	0x000001a8
  8c:	000001a8 	.long	0x000001a8
  90:	000001a8 	.long	0x000001a8
  94:	000001a8 	.long	0x000001a8
  98:	000001a8 	.long	0x000001a8
  9c:	000001a8 	.long	0x000001a8
  a0:	000001a8 	.long	0x000001a8
  a4:	000001a8 	.long	0x000001a8
  a8:	000001a8 	.long	0x000001a8
  ac:	000001a8 	.long	0x000001a8
  b0:	000001a8 	.long	0x000001a8
  b4:	000001a8 	.long	0x000001a8
  b8:	00000e00 	.long	0x00000e00
  bc:	000001a8 	.long	0x000001a8
  c0:	000001a8 	.long	0x000001a8
  c4:	000001a8 	.long	0x000001a8
  c8:	000001a8 	.long	0x000001a8
  cc:	000001a8 	.long	0x000001a8
  d0:	000001a8 	.long	0x000001a8
  d4:	000001a8 	.long	0x000001a8
  d8:	000001a8 	.long	0x000001a8
  dc:	000001a8 	.long	0x000001a8
  e0:	000001a8 	.long	0x000001a8
  e4:	000001a8 	.long	0x000001a8
  e8:	000001a8 	.long	0x000001a8
  ec:	000001a8 	.long	0x000001a8
  f0:	000001a8 	.long	0x000001a8
  f4:	00000e1c 	.long	0x00000e1c
  f8:	000001a8 	.long	0x000001a8
  fc:	000001a8 	.long	0x000001a8
	...

00000108 <__start>:
.long 0x00000000
//  .long __start
__start:
	
  //initialize all registers
  movi r0, 0
 108:	3000      	movi      	r0, 0
  movi r1, 0
 10a:	3100      	movi      	r1, 0
  movi r2, 0
 10c:	3200      	movi      	r2, 0
  movi r3, 0
 10e:	3300      	movi      	r3, 0
  movi r4, 0
 110:	3400      	movi      	r4, 0
  movi r5, 0
 112:	3500      	movi      	r5, 0
  movi r6, 0
 114:	3600      	movi      	r6, 0
  movi r7, 0
 116:	3700      	movi      	r7, 0
  movi r8, 0
 118:	ea080000 	movi      	r8, 0
  movi r9, 0
 11c:	ea090000 	movi      	r9, 0
  movi r10, 0
 120:	ea0a0000 	movi      	r10, 0
  movi r11, 0
 124:	ea0b0000 	movi      	r11, 0
  movi r12, 0
 128:	ea0c0000 	movi      	r12, 0
  movi r13, 0
 12c:	ea0d0000 	movi      	r13, 0
  movi r14, 0
 130:	ea0e0000 	movi      	r14, 0
  movi r15, 0
 134:	ea0f0000 	movi      	r15, 0

//set VBR
  lrw r2, vector_table				//vector_table -> r2
 138:	105d      	lrw      	r2, 0x0	// 1ac <DummyHandler+0x4>
  mtcr r2, cr<1,0>					//r2 -> cr<1,0>(vbr)
 13a:	c0026421 	mtcr      	r2, cr<1, 0>

//enable EE bit of psr
  mfcr r2, cr<0,0>					//cr<0,0>(psr) -> r2;  
 13e:	c0006022 	mfcr      	r2, cr<0, 0>
  bseti r2, r2, 8					//set the 8th bit of r2 
 142:	3aa8      	bseti      	r2, 8
  mtcr r2, cr<0,0>					//r2 -> cr<0,0>(psr)
 144:	c0026420 	mtcr      	r2, cr<0, 0>
//  st.w    r2, (r1,0x4)
//  movi    r2, 0x1
//  st.w    r2, (r1,0x0)

//disable power peak 
  lrw     r1, 0xe000ef90
 148:	103a      	lrw      	r1, 0xe000ef90	// 1b0 <DummyHandler+0x8>
  movi    r2, 0x0
 14a:	3200      	movi      	r2, 0
  st.w    r2, (r1, 0x0)				//r2 -> r1(0xe000ef90 + 0); clr mem(0xe000ef90)
 14c:	b140      	st.w      	r2, (r1, 0x0)

//initialize kernel stack
  lrw  r7, __kernel_stack			//__kernel_stack is defined in gcc_xxx.ld; 
 14e:	10fa      	lrw      	r7, 0x20001ff8	// 1b4 <DummyHandler+0xc>
  mov  r14,r7						//r14(sp) = stack address				
 150:	6f9f      	mov      	r14, r7
  subi r6,r7,0x4					//(r7 - 4) -> r6				
 152:	5fcf      	subi      	r6, r7, 4

  //lrw  r3, 0x40
  lrw  r3, 0x04					
 154:	3304      	movi      	r3, 4
	
  subu r4, r7, r3					//(r7 - r3)	-> r4			
 156:	5f8d      	subu      	r4, r7, r3
  lrw  r5, 0x0
 158:	3500      	movi      	r5, 0

0000015a <INIT_KERLE_STACK>:
INIT_KERLE_STACK:
  addi r4, 0x4
 15a:	2403      	addi      	r4, 4
  st.w r5, (r4)
 15c:	b4a0      	st.w      	r5, (r4, 0x0)
  //cmphs r7, r4						//r7 = r4; c = 1
  cmphs r6, r4						//r6 < r4; c = 0
 15e:	6518      	cmphs      	r6, r4
  bt  INIT_KERLE_STACK				//c = 1, jmp		
 160:	0bfd      	bt      	0x15a	// 15a <INIT_KERLE_STACK>

00000162 <__to_main>:
        
__to_main:
  lrw r0,__main						//__main is defined in mem_init.c; 
 162:	1016      	lrw      	r0, 0xdc8	// 1b8 <DummyHandler+0x10>
  jsr r0							//jmp __main and r15(lr) = (pc + 4) 
 164:	7bc1      	jsr      	r0
  mov r0, r0
 166:	6c03      	mov      	r0, r0
  mov r0, r0
 168:	6c03      	mov      	r0, r0

  lrw r15, __exit
 16a:	ea8f0015 	lrw      	r15, 0x17c	// 1bc <DummyHandler+0x14>
  lrw r0,main
 16e:	1015      	lrw      	r0, 0x880	// 1c0 <DummyHandler+0x18>
  jmp r0
 170:	7800      	jmp      	r0
  mov r0, r0
 172:	6c03      	mov      	r0, r0
  mov r0, r0
 174:	6c03      	mov      	r0, r0
  mov r0, r0
 176:	6c03      	mov      	r0, r0
  mov r0, r0
 178:	6c03      	mov      	r0, r0
  mov r0, r0
 17a:	6c03      	mov      	r0, r0

0000017c <__exit>:

.export __exit
__exit:

  lrw r4, 0x20003000
 17c:	1092      	lrw      	r4, 0x20003000	// 1c4 <DummyHandler+0x1c>
  //lrw r5, 0x0
  mov r5, r0
 17e:	6d43      	mov      	r5, r0
  st.w r5, (r4)
 180:	b4a0      	st.w      	r5, (r4, 0x0)

  mfcr r1, cr<0,0>
 182:	c0006021 	mfcr      	r1, cr<0, 0>
  lrw  r1, 0xFFFF
 186:	ea01ffff 	movi      	r1, 65535
  mtcr r1, cr<11,0>
 18a:	c001642b 	mtcr      	r1, cr<11, 0>
  lrw     r1, 0xFFF
 18e:	ea010fff 	movi      	r1, 4095
  movi    r0, 0x0
 192:	3000      	movi      	r0, 0
  st      r1, (r0)
 194:	b020      	st.w      	r1, (r0, 0x0)

00000196 <__fail>:

.export __fail
__fail:
  lrw  r1, 0xEEEE
 196:	ea01eeee 	movi      	r1, 61166
  mtcr r1, cr<11,0>
 19a:	c001642b 	mtcr      	r1, cr<11, 0>
  lrw     r1, 0xEEE
 19e:	ea010eee 	movi      	r1, 3822
  movi    r0, 0x0
 1a2:	3000      	movi      	r0, 0
  st      r1, (r0)
 1a4:	b020      	st.w      	r1, (r0, 0x0)

000001a6 <__dummy>:

__dummy:
  br      __fail
 1a6:	07f8      	br      	0x196	// 196 <__fail>

000001a8 <DummyHandler>:

.export DummyHandler
DummyHandler:
  br      __fail
 1a8:	07f7      	br      	0x196	// 196 <__fail>
 1aa:	0000      	.short	0x0000
 1ac:	00000000 	.long	0x00000000
 1b0:	e000ef90 	.long	0xe000ef90
 1b4:	20001ff8 	.long	0x20001ff8
 1b8:	00000dc8 	.long	0x00000dc8
 1bc:	0000017c 	.long	0x0000017c
 1c0:	00000880 	.long	0x00000880
 1c4:	20003000 	.long	0x20003000

000001c8 <__memset_fast>:
 1c8:	7444      	zextb      	r1, r1
 1ca:	3a40      	cmpnei      	r2, 0
 1cc:	0c25      	bf      	0x216	// 216 <__memset_fast+0x4e>
 1ce:	6f43      	mov      	r13, r0
 1d0:	e5802003 	andi      	r12, r0, 3
 1d4:	eb4c0000 	cmpnei      	r12, 0
 1d8:	0c20      	bf      	0x218	// 218 <__memset_fast+0x50>
 1da:	dc2d0000 	st.b      	r1, (r13, 0x0)
 1de:	2a00      	subi      	r2, 1
 1e0:	3a40      	cmpnei      	r2, 0
 1e2:	0c1a      	bf      	0x216	// 216 <__memset_fast+0x4e>
 1e4:	e5ad0000 	addi      	r13, r13, 1
 1e8:	e58d2003 	andi      	r12, r13, 3
 1ec:	eb4c0000 	cmpnei      	r12, 0
 1f0:	0c14      	bf      	0x218	// 218 <__memset_fast+0x50>
 1f2:	dc2d0000 	st.b      	r1, (r13, 0x0)
 1f6:	2a00      	subi      	r2, 1
 1f8:	3a40      	cmpnei      	r2, 0
 1fa:	0c0e      	bf      	0x216	// 216 <__memset_fast+0x4e>
 1fc:	e5ad0000 	addi      	r13, r13, 1
 200:	e58d2003 	andi      	r12, r13, 3
 204:	eb4c0000 	cmpnei      	r12, 0
 208:	0c08      	bf      	0x218	// 218 <__memset_fast+0x50>
 20a:	dc2d0000 	st.b      	r1, (r13, 0x0)
 20e:	2a00      	subi      	r2, 1
 210:	e5ad0000 	addi      	r13, r13, 1
 214:	0402      	br      	0x218	// 218 <__memset_fast+0x50>
 216:	783c      	jmp      	r15
 218:	4168      	lsli      	r3, r1, 8
 21a:	6c4c      	or      	r1, r3
 21c:	4170      	lsli      	r3, r1, 16
 21e:	6c4c      	or      	r1, r3
 220:	3a2f      	cmplti      	r2, 16
 222:	080e      	bt      	0x23e	// 23e <__memset_fast+0x76>
 224:	dc2d2000 	st.w      	r1, (r13, 0x0)
 228:	dc2d2001 	st.w      	r1, (r13, 0x4)
 22c:	dc2d2002 	st.w      	r1, (r13, 0x8)
 230:	dc2d2003 	st.w      	r1, (r13, 0xc)
 234:	2a0f      	subi      	r2, 16
 236:	e5ad000f 	addi      	r13, r13, 16
 23a:	3a2f      	cmplti      	r2, 16
 23c:	0ff4      	bf      	0x224	// 224 <__memset_fast+0x5c>
 23e:	3a23      	cmplti      	r2, 4
 240:	0808      	bt      	0x250	// 250 <__memset_fast+0x88>
 242:	2a03      	subi      	r2, 4
 244:	dc2d2000 	st.w      	r1, (r13, 0x0)
 248:	e5ad0003 	addi      	r13, r13, 4
 24c:	3a23      	cmplti      	r2, 4
 24e:	0ffa      	bf      	0x242	// 242 <__memset_fast+0x7a>
 250:	3a40      	cmpnei      	r2, 0
 252:	0fe2      	bf      	0x216	// 216 <__memset_fast+0x4e>
 254:	2a00      	subi      	r2, 1
 256:	dc2d0000 	st.b      	r1, (r13, 0x0)
 25a:	3a40      	cmpnei      	r2, 0
 25c:	0fdd      	bf      	0x216	// 216 <__memset_fast+0x4e>
 25e:	2a00      	subi      	r2, 1
 260:	dc2d0001 	st.b      	r1, (r13, 0x1)
 264:	3a40      	cmpnei      	r2, 0
 266:	0fd8      	bf      	0x216	// 216 <__memset_fast+0x4e>
 268:	dc2d0002 	st.b      	r1, (r13, 0x2)
 26c:	783c      	jmp      	r15
	...

00000270 <__memcpy_fast>:
 270:	14c1      	push      	r4
 272:	6f03      	mov      	r12, r0
 274:	c401242d 	or      	r13, r1, r0
 278:	e48d2003 	andi      	r4, r13, 3
 27c:	3c40      	cmpnei      	r4, 0
 27e:	0c0d      	bf      	0x298	// 298 <__memcpy_fast+0x28>
 280:	3a40      	cmpnei      	r2, 0
 282:	0c0a      	bf      	0x296	// 296 <__memcpy_fast+0x26>
 284:	8160      	ld.b      	r3, (r1, 0x0)
 286:	2100      	addi      	r1, 1
 288:	2a00      	subi      	r2, 1
 28a:	dc6c0000 	st.b      	r3, (r12, 0x0)
 28e:	e58c0000 	addi      	r12, r12, 1
 292:	3a40      	cmpnei      	r2, 0
 294:	0bf8      	bt      	0x284	// 284 <__memcpy_fast+0x14>
 296:	1481      	pop      	r4
 298:	3a2f      	cmplti      	r2, 16
 29a:	0815      	bt      	0x2c4	// 2c4 <__memcpy_fast+0x54>
 29c:	d9a12000 	ld.w      	r13, (r1, 0x0)
 2a0:	9161      	ld.w      	r3, (r1, 0x4)
 2a2:	9182      	ld.w      	r4, (r1, 0x8)
 2a4:	ddac2000 	st.w      	r13, (r12, 0x0)
 2a8:	d9a12003 	ld.w      	r13, (r1, 0xc)
 2ac:	dc6c2001 	st.w      	r3, (r12, 0x4)
 2b0:	dc8c2002 	st.w      	r4, (r12, 0x8)
 2b4:	ddac2003 	st.w      	r13, (r12, 0xc)
 2b8:	2a0f      	subi      	r2, 16
 2ba:	210f      	addi      	r1, 16
 2bc:	e58c000f 	addi      	r12, r12, 16
 2c0:	3a2f      	cmplti      	r2, 16
 2c2:	0fed      	bf      	0x29c	// 29c <__memcpy_fast+0x2c>
 2c4:	3a23      	cmplti      	r2, 4
 2c6:	080a      	bt      	0x2da	// 2da <__memcpy_fast+0x6a>
 2c8:	9160      	ld.w      	r3, (r1, 0x0)
 2ca:	2a03      	subi      	r2, 4
 2cc:	2103      	addi      	r1, 4
 2ce:	dc6c2000 	st.w      	r3, (r12, 0x0)
 2d2:	e58c0003 	addi      	r12, r12, 4
 2d6:	3a23      	cmplti      	r2, 4
 2d8:	0ff8      	bf      	0x2c8	// 2c8 <__memcpy_fast+0x58>
 2da:	3a40      	cmpnei      	r2, 0
 2dc:	0fdd      	bf      	0x296	// 296 <__memcpy_fast+0x26>
 2de:	8160      	ld.b      	r3, (r1, 0x0)
 2e0:	2100      	addi      	r1, 1
 2e2:	2a00      	subi      	r2, 1
 2e4:	dc6c0000 	st.b      	r3, (r12, 0x0)
 2e8:	e58c0000 	addi      	r12, r12, 1
 2ec:	07f7      	br      	0x2da	// 2da <__memcpy_fast+0x6a>

000002ee <delayus_Bycode>:

uint16_t hwCheckProTime = 0;
uint16_t hwCheckTimeOutNum = 0;

void delayus_Bycode(unsigned int t)
{
 2ee:	1421      	subi      	r14, r14, 4
	volatile unsigned int i =  t;
 2f0:	b800      	st.w      	r0, (r14, 0x0)
	while(i--){
 2f2:	9860      	ld.w      	r3, (r14, 0x0)
 2f4:	5b43      	subi      	r2, r3, 1
 2f6:	3b40      	cmpnei      	r3, 0
 2f8:	b840      	st.w      	r2, (r14, 0x0)
 2fa:	0803      	bt      	0x300	// 300 <delayus_Bycode+0x12>
		asm("nop");
		asm("nop");
		asm("nop");
		asm("nop");
	}	
}
 2fc:	1401      	addi      	r14, r14, 4
 2fe:	783c      	jmp      	r15
		asm("nop");
 300:	6c03      	mov      	r0, r0
		asm("nop");
 302:	6c03      	mov      	r0, r0
		asm("nop");
 304:	6c03      	mov      	r0, r0
		asm("nop");
 306:	6c03      	mov      	r0, r0
		asm("nop");
 308:	6c03      	mov      	r0, r0
		asm("nop");
 30a:	6c03      	mov      	r0, r0
 30c:	07f3      	br      	0x2f2	// 2f2 <delayus_Bycode+0x4>

0000030e <mdelay>:

void mdelay(unsigned int t)
{
 30e:	14d0      	push      	r15
 310:	1421      	subi      	r14, r14, 4
	volatile unsigned int i = t;
 312:	b800      	st.w      	r0, (r14, 0x0)
	while(i--){
 314:	9860      	ld.w      	r3, (r14, 0x0)
 316:	5b43      	subi      	r2, r3, 1
 318:	3b40      	cmpnei      	r3, 0
 31a:	b840      	st.w      	r2, (r14, 0x0)
 31c:	0803      	bt      	0x322	// 322 <mdelay+0x14>
		delayus_Bycode(940);
	}
}
 31e:	1401      	addi      	r14, r14, 4
 320:	1490      	pop      	r15
		delayus_Bycode(940);
 322:	30eb      	movi      	r0, 235
 324:	4002      	lsli      	r0, r0, 2
 326:	e3ffffe4 	bsr      	0x2ee	// 2ee <delayus_Bycode>
 32a:	07f5      	br      	0x314	// 314 <mdelay+0x6>

0000032c <bootloader_clear_rec_buffer>:
返回值: 无
***********************************************************************/

void bootloader_clear_rec_buffer(void)
{
	wIndx=0;
 32c:	3200      	movi      	r2, 0
 32e:	1064      	lrw      	r3, 0x20000034	// 33c <bootloader_clear_rec_buffer+0x10>
 330:	b340      	st.w      	r2, (r3, 0x0)
	wRecBufLen=0;
 332:	1064      	lrw      	r3, 0x20000038	// 340 <bootloader_clear_rec_buffer+0x14>
 334:	b340      	st.w      	r2, (r3, 0x0)
	wImageSize=0;
 336:	1064      	lrw      	r3, 0x20000030	// 344 <bootloader_clear_rec_buffer+0x18>
 338:	b340      	st.w      	r2, (r3, 0x0)
}
 33a:	783c      	jmp      	r15
 33c:	20000034 	.long	0x20000034
 340:	20000038 	.long	0x20000038
 344:	20000030 	.long	0x20000030

00000348 <bootloader_bt_irqhandler>:

void bootloader_bt_irqhandler(csp_bt_t *ptBtBase)
{
 348:	14d0      	push      	r15
 34a:	1421      	subi      	r14, r14, 4
{
	ptBtBase->ICR = 0x0f;
}
static inline uint32_t csp_bt_get_isr(csp_bt_t *ptBtBase)
{
	return ptBtBase->MISR;
 34c:	906c      	ld.w      	r3, (r0, 0x30)
    // ISR content ...
	volatile uint32_t wMisr = csp_bt_get_isr(ptBtBase);
 34e:	b860      	st.w      	r3, (r14, 0x0)
	
	if(wMisr & BT_PEND_INT)					//PEND interrupt
 350:	9860      	ld.w      	r3, (r14, 0x0)
 352:	e4632001 	andi      	r3, r3, 1
 356:	3b40      	cmpnei      	r3, 0
 358:	1069      	lrw      	r3, 0x2000001a	// 37c <bootloader_bt_irqhandler+0x34>
 35a:	0c06      	bf      	0x366	// 366 <bootloader_bt_irqhandler+0x1e>
	{
		hwCheckProTime ++;
 35c:	8b40      	ld.h      	r2, (r3, 0x0)
 35e:	2200      	addi      	r2, 1
 360:	ab40      	st.h      	r2, (r3, 0x0)
	ptBtBase->ICR = eIntNum;
 362:	3201      	movi      	r2, 1
 364:	b04d      	st.w      	r2, (r0, 0x34)
		csp_bt_clr_isr(ptBtBase, BT_PEND_INT);
	}
	if(hwCheckProTime > hwCheckTimeOutNum)
 366:	1047      	lrw      	r2, 0x2000001c	// 380 <bootloader_bt_irqhandler+0x38>
 368:	8b20      	ld.h      	r1, (r3, 0x0)
 36a:	8a40      	ld.h      	r2, (r2, 0x0)
 36c:	6448      	cmphs      	r2, r1
 36e:	0804      	bt      	0x376	// 376 <bootloader_bt_irqhandler+0x2e>
	{
		hwCheckProTime = hwCheckTimeOutNum;
 370:	ab40      	st.h      	r2, (r3, 0x0)
		bootloader_clear_rec_buffer();
 372:	e3ffffdd 	bsr      	0x32c	// 32c <bootloader_clear_rec_buffer>
	}
}
 376:	1401      	addi      	r14, r14, 4
 378:	1490      	pop      	r15
 37a:	0000      	bkpt
 37c:	2000001a 	.long	0x2000001a
 380:	2000001c 	.long	0x2000001c

00000384 <bootloader_prog_irqhandler>:

函数功能：串口接收处理函数

***********************************************************************/
void bootloader_prog_irqhandler(csp_uart_t *ptUartBase)
{
 384:	14c1      	push      	r4
{
	ptUartBase->SR = 0x01ff;
}
static inline uint32_t csp_uart_get_isr(csp_uart_t *ptUartBase)
{
	return (uint32_t)(ptUartBase->ISR);
 386:	9063      	ld.w      	r3, (r0, 0xc)
	uint8_t byRxData;
	
	if( csp_uart_get_isr(ptUartBase) & UART_RX_INT_S ) 
 388:	e4632002 	andi      	r3, r3, 2
 38c:	3b40      	cmpnei      	r3, 0
 38e:	0c1d      	bf      	0x3c8	// 3c8 <bootloader_prog_irqhandler+0x44>
	{
		byRxData = (uint8_t) csp_uart_get_data(ptUartBase);
		
		wImageSize++;
 390:	104f      	lrw      	r2, 0x20000030	// 3cc <bootloader_prog_irqhandler+0x48>
		byRwBuffer[wIndx] = byRxData;
 392:	1090      	lrw      	r4, 0x20000048	// 3d0 <bootloader_prog_irqhandler+0x4c>
	return (uint8_t)ptUartBase->DATA; 
 394:	9020      	ld.w      	r1, (r0, 0x0)
		wImageSize++;
 396:	9260      	ld.w      	r3, (r2, 0x0)
 398:	2300      	addi      	r3, 1
 39a:	b260      	st.w      	r3, (r2, 0x0)
		byRwBuffer[wIndx] = byRxData;
 39c:	106e      	lrw      	r3, 0x20000034	// 3d4 <bootloader_prog_irqhandler+0x50>
 39e:	9340      	ld.w      	r2, (r3, 0x0)
 3a0:	6090      	addu      	r2, r4
 3a2:	a220      	st.b      	r1, (r2, 0x0)
		wIndx++;
 3a4:	9340      	ld.w      	r2, (r3, 0x0)
 3a6:	2200      	addi      	r2, 1
 3a8:	b340      	st.w      	r2, (r3, 0x0)
		wRecBufLen++;
 3aa:	102c      	lrw      	r1, 0x20000038	// 3d8 <bootloader_prog_irqhandler+0x54>
 3ac:	9140      	ld.w      	r2, (r1, 0x0)
 3ae:	2200      	addi      	r2, 1
 3b0:	b140      	st.w      	r2, (r1, 0x0)
		hwCheckProTime = 0;
 3b2:	3100      	movi      	r1, 0
 3b4:	104a      	lrw      	r2, 0x2000001a	// 3dc <bootloader_prog_irqhandler+0x58>
 3b6:	aa20      	st.h      	r1, (r2, 0x0)
		if(wIndx == BOOT_BUF_SIZE ) {
 3b8:	9340      	ld.w      	r2, (r3, 0x0)
 3ba:	eb420100 	cmpnei      	r2, 256
 3be:	0803      	bt      	0x3c4	// 3c4 <bootloader_prog_irqhandler+0x40>
			wIndx =0;
 3c0:	3200      	movi      	r2, 0
 3c2:	b340      	st.w      	r2, (r3, 0x0)
}
static inline void csp_uart_clr_isr(csp_uart_t *ptUartBase, uart_isr_e eIsr)
{
	ptUartBase->ISR = eIsr;
 3c4:	3302      	movi      	r3, 2
 3c6:	b063      	st.w      	r3, (r0, 0xc)
		}
		csp_uart_clr_isr(ptUartBase,UART_RX_INT_S);	
	}
}
 3c8:	1481      	pop      	r4
 3ca:	0000      	bkpt
 3cc:	20000030 	.long	0x20000030
 3d0:	20000048 	.long	0x20000048
 3d4:	20000034 	.long	0x20000034
 3d8:	20000038 	.long	0x20000038
 3dc:	2000001a 	.long	0x2000001a

000003e0 <bootloader_printf_init>:
函数功能：初始化串口功能

***********************************************************************/

void  bootloader_printf_init(void)
{
 3e0:	14d0      	push      	r15
	csi_pin_set_mux(PB00, PB00_UART2_TX);		//TX  46	
 3e2:	3104      	movi      	r1, 4
 3e4:	301e      	movi      	r0, 30
 3e6:	e0000457 	bsr      	0xc94	// c94 <csi_pin_set_mux>
//	csi_pin_set_mux(PB01, PB01_UART2_RX);		//RX  47
	
	soc_clk_enable(UART2_SYS_CLK);
 3ea:	300a      	movi      	r0, 10
 3ec:	e00004d4 	bsr      	0xd94	// d94 <soc_clk_enable>
	csp_uart_set_brdiv(UART2, UART_PRINT_DIV);				//set uart baud rate 
 3f0:	1064      	lrw      	r3, 0x20000014	// 400 <bootloader_printf_init+0x20>
 3f2:	9340      	ld.w      	r2, (r3, 0x0)
	ptUartBase->CTRL = wVal;
}
//
static inline void csp_uart_set_brdiv(csp_uart_t *ptUartBase, uint32_t wVal)
{
	ptUartBase->BRDIV = wVal;
 3f4:	33d0      	movi      	r3, 208
 3f6:	4361      	lsli      	r3, r3, 1
 3f8:	b264      	st.w      	r3, (r2, 0x10)
	ptUartBase->CTRL = wVal;
 3fa:	3301      	movi      	r3, 1
 3fc:	b262      	st.w      	r3, (r2, 0x8)
	csp_uart_set_ctrl(UART2, (UART_TX_EN << UART_TX_POS));
//	csp_uart_set_ctrl(UART2, (UART_TX_EN << UART_TX_POS) | (UART_RX_EN << UART_RX_POS)|UART_RX_INT);		//enable uart rx/tx 
//	csi_vic_enable_irq((int32_t)UART2_IRQ_NUM);
}
 3fe:	1490      	pop      	r15
 400:	20000014 	.long	0x20000014

00000404 <bootloader_prog_init>:

void  bootloader_prog_init(void)
{
 404:	14d0      	push      	r15
	csi_pin_set_mux(PB02, PB02_UART1_TX);		//TX  48	
 406:	3107      	movi      	r1, 7
 408:	3020      	movi      	r0, 32
 40a:	e0000445 	bsr      	0xc94	// c94 <csi_pin_set_mux>
	csi_pin_set_mux(PA06, PA06_UART1_RX);		//RX   1
 40e:	3107      	movi      	r1, 7
 410:	3006      	movi      	r0, 6
 412:	e0000441 	bsr      	0xc94	// c94 <csi_pin_set_mux>
	
	soc_clk_enable(UART1_SYS_CLK);
 416:	3009      	movi      	r0, 9
 418:	e00004be 	bsr      	0xd94	// d94 <soc_clk_enable>
	csp_uart_set_brdiv(UART1, UART_PROG_DIV);				//set uart baud rate 
 41c:	1066      	lrw      	r3, 0x20000010	// 434 <bootloader_prog_init+0x30>
 41e:	9340      	ld.w      	r2, (r3, 0x0)
	ptUartBase->BRDIV = wVal;
 420:	33d0      	movi      	r3, 208
 422:	4361      	lsli      	r3, r3, 1
 424:	b264      	st.w      	r3, (r2, 0x10)
	ptUartBase->CTRL = wVal;
 426:	330b      	movi      	r3, 11
 428:	b262      	st.w      	r3, (r2, 0x8)
 */
__STATIC_INLINE void csi_vic_enable_irq(int32_t IRQn)
{
    IRQn &= 0x7FUL;

    VIC->ISER[_IR_IDX(IRQn)] = (uint32_t)(1UL << ((uint32_t)(int32_t)IRQn % 32));
 42a:	1044      	lrw      	r2, 0xe000e100	// 438 <bootloader_prog_init+0x34>
 42c:	3380      	movi      	r3, 128
 42e:	4367      	lsli      	r3, r3, 7
 430:	b260      	st.w      	r3, (r2, 0x0)
	csp_uart_set_ctrl(UART1, (UART_TX_EN << UART_TX_POS) | (UART_RX_EN << UART_RX_POS)|UART_RX_INT);		//enable uart rx/tx 
	csi_vic_enable_irq((int32_t)UART1_IRQ_NUM);
}
 432:	1490      	pop      	r15
 434:	20000010 	.long	0x20000010
 438:	e000e100 	.long	0xe000e100

0000043c <bootloader_send_ack>:

函数功能：MCU发送响应字符串

***********************************************************************/
void bootloader_send_ack(volatile uint8_t *p,uint8_t len)
{
 43c:	14d3      	push      	r4-r6, r15
	uint8_t j;

	csi_uart_putc(UART1, BOOT_CMD_ACK_CHECK);
 43e:	10aa      	lrw      	r5, 0x20000010	// 464 <bootloader_send_ack+0x28>
{
 440:	6d03      	mov      	r4, r0
 442:	6d87      	mov      	r6, r1
	csi_uart_putc(UART1, BOOT_CMD_ACK_CHECK);
 444:	9500      	ld.w      	r0, (r5, 0x0)
 446:	31a5      	movi      	r1, 165
 448:	6190      	addu      	r6, r4
 44a:	e00004b7 	bsr      	0xdb8	// db8 <csi_uart_putc>
	for(j=0;j<len;j++){
 44e:	6592      	cmpne      	r4, r6
 450:	0802      	bt      	0x454	// 454 <bootloader_send_ack+0x18>
		csi_uart_putc(UART1, p[j]);
	}
}
 452:	1493      	pop      	r4-r6, r15
		csi_uart_putc(UART1, p[j]);
 454:	8420      	ld.b      	r1, (r4, 0x0)
 456:	7444      	zextb      	r1, r1
 458:	9500      	ld.w      	r0, (r5, 0x0)
 45a:	2400      	addi      	r4, 1
 45c:	e00004ae 	bsr      	0xdb8	// db8 <csi_uart_putc>
 460:	07f7      	br      	0x44e	// 44e <bootloader_send_ack+0x12>
 462:	0000      	bkpt
 464:	20000010 	.long	0x20000010

00000468 <bootloader_send_back_num>:

void bootloader_send_back_num(uint32_t wNum)
{
 468:	14d4      	push      	r4-r7, r15
 46a:	6dc3      	mov      	r7, r0
 46c:	341c      	movi      	r4, 28
	uint8_t i;
	for(i=0;i<8;i++){
		cc = (wNum >> ((7-i) << 2)) & 0xF;
		if(cc < 10) cc += '0';
		else cc += ('A' - 10);
		csi_uart_putc(UART2, (uint8_t)cc);
 46e:	10ca      	lrw      	r6, 0x20000014	// 494 <bootloader_send_back_num+0x2c>
	for(i=0;i<8;i++){
 470:	3500      	movi      	r5, 0
 472:	2d03      	subi      	r5, 4
		cc = (wNum >> ((7-i) << 2)) & 0xF;
 474:	c4874041 	lsr      	r1, r7, r4
 478:	e421200f 	andi      	r1, r1, 15
		if(cc < 10) cc += '0';
 47c:	3909      	cmphsi      	r1, 10
 47e:	0809      	bt      	0x490	// 490 <bootloader_send_back_num+0x28>
 480:	212f      	addi      	r1, 48
		csi_uart_putc(UART2, (uint8_t)cc);
 482:	9600      	ld.w      	r0, (r6, 0x0)
 484:	2c03      	subi      	r4, 4
 486:	e0000499 	bsr      	0xdb8	// db8 <csi_uart_putc>
	for(i=0;i<8;i++){
 48a:	6552      	cmpne      	r4, r5
 48c:	0bf4      	bt      	0x474	// 474 <bootloader_send_back_num+0xc>
	}
#endif
}
 48e:	1494      	pop      	r4-r7, r15
		else cc += ('A' - 10);
 490:	2136      	addi      	r1, 55
 492:	07f8      	br      	0x482	// 482 <bootloader_send_back_num+0x1a>
 494:	20000014 	.long	0x20000014

00000498 <bootloader_send_back_str>:

函数功能：MCU发送响应字符串

***********************************************************************/
void bootloader_send_back_str(const char *str,uint8_t byLen)
{	
 498:	14d3      	push      	r4-r6, r15
 49a:	6d03      	mov      	r4, r0
#ifdef PRINT_ENABLE	
	uint8_t j =0;

	for(j=0;j<byLen;j++){
		csi_uart_putc(UART2, (uint8_t)str[j]);
 49c:	10c6      	lrw      	r6, 0x20000014	// 4b4 <bootloader_send_back_str+0x1c>
 49e:	58a4      	addu      	r5, r0, r1
	for(j=0;j<byLen;j++){
 4a0:	6552      	cmpne      	r4, r5
 4a2:	0802      	bt      	0x4a6	// 4a6 <bootloader_send_back_str+0xe>
	}
#endif
}
 4a4:	1493      	pop      	r4-r6, r15
		csi_uart_putc(UART2, (uint8_t)str[j]);
 4a6:	8420      	ld.b      	r1, (r4, 0x0)
 4a8:	9600      	ld.w      	r0, (r6, 0x0)
 4aa:	2400      	addi      	r4, 1
 4ac:	e0000486 	bsr      	0xdb8	// db8 <csi_uart_putc>
 4b0:	07f8      	br      	0x4a0	// 4a0 <bootloader_send_back_str+0x8>
 4b2:	0000      	bkpt
 4b4:	20000014 	.long	0x20000014

000004b8 <bootloader_program_flash>:
函数功能：烧录串口接收数据到flash

***********************************************************************/

int bootloader_program_flash(void)
{
 4b8:	14d4      	push      	r4-r7, r15
 4ba:	1421      	subi      	r14, r14, 4
	uint8_t byProgAck[4] = {0xfe,0xff,0xef,0x5a};
 4bc:	6c3b      	mov      	r0, r14
 4be:	3204      	movi      	r2, 4
 4c0:	103f      	lrw      	r1, 0xe50	// 53c <bootloader_program_flash+0x84>
	uint32_t programcnt =0;
	uint32_t wAddrOffset =0;

	wAddrOffset = APP_START_ADDR;
	wImageSize += APP_START_ADDR;
 4c2:	11a0      	lrw      	r5, 0x20000030	// 540 <bootloader_program_flash+0x88>
	uint8_t byProgAck[4] = {0xfe,0xff,0xef,0x5a};
 4c4:	e3fffed6 	bsr      	0x270	// 270 <__memcpy_fast>
	wImageSize += APP_START_ADDR;
 4c8:	3280      	movi      	r2, 128
 4ca:	9560      	ld.w      	r3, (r5, 0x0)
 4cc:	4246      	lsli      	r2, r2, 6
	wAddrOffset = APP_START_ADDR;
 4ce:	3480      	movi      	r4, 128
	wImageSize += APP_START_ADDR;
 4d0:	60c8      	addu      	r3, r2
 4d2:	b560      	st.w      	r3, (r5, 0x0)
	wAddrOffset = APP_START_ADDR;
 4d4:	4486      	lsli      	r4, r4, 6
	while(1){
		if(wRecBufLen/BOOT_INTEVAL_SIZE > 0){
 4d6:	10dc      	lrw      	r6, 0x20000038	// 544 <bootloader_program_flash+0x8c>
 4d8:	10fc      	lrw      	r7, 0x20000008	// 548 <bootloader_program_flash+0x90>
 4da:	9660      	ld.w      	r3, (r6, 0x0)
 4dc:	eb0300ff 	cmphsi      	r3, 256
 4e0:	0c18      	bf      	0x510	// 510 <bootloader_program_flash+0x58>
			if(wAddrOffset <= ROM_END_ADDR - BOOT_INTEVAL_SIZE){
 4e2:	eb04feff 	cmphsi      	r4, 65280
 4e6:	081f      	bt      	0x524	// 524 <bootloader_program_flash+0x6c>
				csi_ifc_program(IFC, wAddrOffset, (uint32_t *)&(byRwBuffer[programcnt]), BOOT_INTEVAL_SIZE);  		
 4e8:	3380      	movi      	r3, 128
 4ea:	4361      	lsli      	r3, r3, 1
 4ec:	1058      	lrw      	r2, 0x20000048	// 54c <bootloader_program_flash+0x94>
 4ee:	6c53      	mov      	r1, r4
 4f0:	9700      	ld.w      	r0, (r7, 0x0)
 4f2:	e00002c9 	bsr      	0xa84	// a84 <csi_ifc_program>
			}
			else{
				csi_ifc_program(IFC, wAddrOffset, (uint32_t *)&(byRwBuffer[programcnt]), ROM_END_ADDR - wAddrOffset);  
				break;
			}
			bootloader_send_ack(byProgAck,4);
 4f6:	3104      	movi      	r1, 4
 4f8:	6c3b      	mov      	r0, r14
 4fa:	e3ffffa1 	bsr      	0x43c	// 43c <bootloader_send_ack>
			csi_iwdt_feed();
 4fe:	e0000395 	bsr      	0xc28	// c28 <csi_iwdt_feed>
			bootloader_send_back_num(wAddrOffset); 
 502:	6c13      	mov      	r0, r4
			programcnt +=BOOT_INTEVAL_SIZE;
			wAddrOffset +=BOOT_INTEVAL_SIZE;
 504:	24ff      	addi      	r4, 256
			bootloader_send_back_num(wAddrOffset); 
 506:	e3ffffb1 	bsr      	0x468	// 468 <bootloader_send_back_num>
			if(wAddrOffset > ROM_END_ADDR) wAddrOffset = ROM_END_ADDR-4;
			wRecBufLen -=BOOT_INTEVAL_SIZE;
 50a:	9660      	ld.w      	r3, (r6, 0x0)
 50c:	2bff      	subi      	r3, 256
 50e:	b660      	st.w      	r3, (r6, 0x0)
			programcnt %=BOOT_BUF_SIZE;				
		}
		if((wImageSize >= wHexEndAddr)&&((wRecBufLen/BOOT_INTEVAL_SIZE) == 0))
 510:	1070      	lrw      	r3, 0x20000028	// 550 <bootloader_program_flash+0x98>
 512:	9540      	ld.w      	r2, (r5, 0x0)
 514:	9360      	ld.w      	r3, (r3, 0x0)
 516:	64c8      	cmphs      	r2, r3
 518:	0fe1      	bf      	0x4da	// 4da <bootloader_program_flash+0x22>
 51a:	9660      	ld.w      	r3, (r6, 0x0)
 51c:	eb0300ff 	cmphsi      	r3, 256
 520:	0bdd      	bt      	0x4da	// 4da <bootloader_program_flash+0x22>
 522:	0409      	br      	0x534	// 534 <bootloader_program_flash+0x7c>
				csi_ifc_program(IFC, wAddrOffset, (uint32_t *)&(byRwBuffer[programcnt]), ROM_END_ADDR - wAddrOffset);  
 524:	9700      	ld.w      	r0, (r7, 0x0)
 526:	6c53      	mov      	r1, r4
 528:	1049      	lrw      	r2, 0x20000048	// 54c <bootloader_program_flash+0x94>
 52a:	ea03ffff 	movi      	r3, 65535
 52e:	60d2      	subu      	r3, r4
 530:	e00002aa 	bsr      	0xa84	// a84 <csi_ifc_program>
		{
			break;
		}
	}
	return BOOT_SUCCESS;
}
 534:	3000      	movi      	r0, 0
 536:	1401      	addi      	r14, r14, 4
 538:	1494      	pop      	r4-r7, r15
 53a:	0000      	bkpt
 53c:	00000e50 	.long	0x00000e50
 540:	20000030 	.long	0x20000030
 544:	20000038 	.long	0x20000038
 548:	20000008 	.long	0x20000008
 54c:	20000048 	.long	0x20000048
 550:	20000028 	.long	0x20000028

00000554 <bootloader_wait_syncpin_release>:
参数：byLogic -- 释放对应的电平逻辑 1 高电平代表释放，0 低电平代表释放
参数：wTimeOut -- 是否需要wTimeOut 0 不需要， 其他 wTimeOut计数值

***********************************************************************/
uint8_t bootloader_wait_syncpin_release(void)
{
 554:	14d2      	push      	r4-r5, r15
	uint32_t wHighTime=0,wLowTime=0;
	
	csi_pin_set_mux(PA06, PA06_INPUT);	
 556:	3101      	movi      	r1, 1
 558:	3006      	movi      	r0, 6
	uint32_t wHighTime=0,wLowTime=0;
 55a:	3400      	movi      	r4, 0
	csi_pin_set_mux(PA06, PA06_INPUT);	
 55c:	e000039c 	bsr      	0xc94	// c94 <csi_pin_set_mux>
			wHighTime++;
			wLowTime = 0;
		}
		else {
			wLowTime ++ ;
			wHighTime = 0;
 560:	3500      	movi      	r5, 0
		mdelay(2);
 562:	3002      	movi      	r0, 2
 564:	e3fffed5 	bsr      	0x30e	// 30e <mdelay>
		if(csi_pin_read(PA06) == PIN_CHECK_VALUE) {
 568:	3006      	movi      	r0, 6
 56a:	e00003b7 	bsr      	0xcd8	// cd8 <csi_pin_read>
 56e:	eb400040 	cmpnei      	r0, 64
 572:	0806      	bt      	0x57e	// 57e <bootloader_wait_syncpin_release+0x2a>
			wHighTime++;
 574:	2500      	addi      	r5, 1
		}
		if(wHighTime >= 20) 
 576:	3d13      	cmphsi      	r5, 20
 578:	0808      	bt      	0x588	// 588 <bootloader_wait_syncpin_release+0x34>
			wLowTime = 0;
 57a:	3400      	movi      	r4, 0
 57c:	07f3      	br      	0x562	// 562 <bootloader_wait_syncpin_release+0xe>
			wLowTime ++ ;
 57e:	2400      	addi      	r4, 1
			return 1;
		else if(wLowTime >= 20) 
 580:	3c13      	cmphsi      	r4, 20
 582:	0fef      	bf      	0x560	// 560 <bootloader_wait_syncpin_release+0xc>
			return 0;
 584:	3000      	movi      	r0, 0
	}
}
 586:	1492      	pop      	r4-r5, r15
			return 1;
 588:	3001      	movi      	r0, 1
 58a:	07fe      	br      	0x586	// 586 <bootloader_wait_syncpin_release+0x32>

0000058c <bootloader_cal_image_checknum>:

***********************************************************************/
uint32_t bootloader_cal_image_checknum(void)
{
	uint32_t wSum =0;
	uint32_t wAddr = wHexStartAddr;	
 58c:	1066      	lrw      	r3, 0x2000002c	// 5a4 <bootloader_cal_image_checknum+0x18>
	uint32_t wSum =0;
 58e:	3000      	movi      	r0, 0
	uint32_t wAddr = wHexStartAddr;	
 590:	9360      	ld.w      	r3, (r3, 0x0)
	while(wAddr<wHexEndAddr){		
 592:	1026      	lrw      	r1, 0x20000028	// 5a8 <bootloader_cal_image_checknum+0x1c>
 594:	9140      	ld.w      	r2, (r1, 0x0)
 596:	648c      	cmphs      	r3, r2
 598:	0c02      	bf      	0x59c	// 59c <bootloader_cal_image_checknum+0x10>
		wSum +=   bootloader_flash_read_word(wAddr);
		wAddr +=4;
	}
	return wSum;
}
 59a:	783c      	jmp      	r15
 	return (*(volatile uint32_t *)(wAddr));
 59c:	9340      	ld.w      	r2, (r3, 0x0)
		wAddr +=4;
 59e:	2303      	addi      	r3, 4
		wSum +=   bootloader_flash_read_word(wAddr);
 5a0:	6008      	addu      	r0, r2
 5a2:	07f9      	br      	0x594	// 594 <bootloader_cal_image_checknum+0x8>
 5a4:	2000002c 	.long	0x2000002c
 5a8:	20000028 	.long	0x20000028

000005ac <bootloader_program_verify>:

函数功能：对烧录的代码做校验
返回值: 错误码
***********************************************************************/
int bootloader_program_verify(void)
{
 5ac:	14d2      	push      	r4-r5, r15
	uint32_t wCheck_Sum = wCheckNum+1;
 5ae:	10ac      	lrw      	r5, 0x20000024	// 5dc <bootloader_program_verify+0x30>
 5b0:	9560      	ld.w      	r3, (r5, 0x0)
	wCheck_Sum = bootloader_cal_image_checknum();
 5b2:	e3ffffed 	bsr      	0x58c	// 58c <bootloader_cal_image_checknum>
	if(wCheckNum != wCheck_Sum) {
 5b6:	9560      	ld.w      	r3, (r5, 0x0)
	wCheck_Sum = bootloader_cal_image_checknum();
 5b8:	6d03      	mov      	r4, r0
	if(wCheckNum != wCheck_Sum) {
 5ba:	64c2      	cmpne      	r0, r3
 5bc:	080e      	bt      	0x5d8	// 5d8 <bootloader_program_verify+0x2c>
		return BOOT_ERROR;
	}
	//my_printf("\n# VrfCkSum:0x%x\n",wCheck_Sum);
	bootloader_send_back_str("CkSum",5);
 5be:	3105      	movi      	r1, 5
 5c0:	1008      	lrw      	r0, 0xe7b	// 5e0 <bootloader_program_verify+0x34>
 5c2:	e3ffff6b 	bsr      	0x498	// 498 <bootloader_send_back_str>
	bootloader_send_back_num(wCheck_Sum);  
 5c6:	6c13      	mov      	r0, r4
 5c8:	e3ffff50 	bsr      	0x468	// 468 <bootloader_send_back_num>
	bootloader_send_back_str("\n",1);
 5cc:	1006      	lrw      	r0, 0xe79	// 5e4 <bootloader_program_verify+0x38>
 5ce:	3101      	movi      	r1, 1
 5d0:	e3ffff64 	bsr      	0x498	// 498 <bootloader_send_back_str>
	return BOOT_SUCCESS;
 5d4:	3000      	movi      	r0, 0
}
 5d6:	1492      	pop      	r4-r5, r15
		return BOOT_ERROR;
 5d8:	3001      	movi      	r0, 1
 5da:	07fe      	br      	0x5d6	// 5d6 <bootloader_program_verify+0x2a>
 5dc:	20000024 	.long	0x20000024
 5e0:	00000e7b 	.long	0x00000e7b
 5e4:	00000e79 	.long	0x00000e79

000005e8 <bootloader_program_option>:

函数功能：boot起始函数

***********************************************************************/
uint8_t bootloader_program_option(void)
{
 5e8:	14d0      	push      	r15
	uint8_t bootopt = 0;
	if((bootloader_wait_syncpin_release() == 1)&&(csp_get_ureg(SYSCON, USER_REG0) == 0))
 5ea:	e3ffffb5 	bsr      	0x554	// 554 <bootloader_wait_syncpin_release>
 5ee:	3841      	cmpnei      	r0, 1
 5f0:	0807      	bt      	0x5fe	// 5fe <bootloader_program_option+0x16>
}

//UREG0/1/2/3
static inline uint32_t csp_get_ureg(csp_syscon_t *ptSysconBase, uint8_t byNum)
{
	return  *(uint32_t *)((uint32_t)&ptSysconBase->UREG0 + (byNum * 4));
 5f2:	1067      	lrw      	r3, 0x2000000c	// 60c <bootloader_program_option+0x24>
 5f4:	9360      	ld.w      	r3, (r3, 0x0)
 5f6:	d8632040 	ld.w      	r3, (r3, 0x100)
 5fa:	3b40      	cmpnei      	r3, 0
 5fc:	0c05      	bf      	0x606	// 606 <bootloader_program_option+0x1e>
	{
		bootopt = JUMPAPP_MODE;
	}
	else
	{
		bootloader_prog_init();
 5fe:	e3ffff03 	bsr      	0x404	// 404 <bootloader_prog_init>
		bootopt = BOOTLOADER_MODE;	
 602:	3001      	movi      	r0, 1
	}
	return bootopt;	
}
 604:	1490      	pop      	r15
		bootopt = JUMPAPP_MODE;
 606:	3002      	movi      	r0, 2
 608:	07fe      	br      	0x604	// 604 <bootloader_program_option+0x1c>
 60a:	0000      	bkpt
 60c:	2000000c 	.long	0x2000000c

00000610 <bootloader_get_cmd_value>:

uint32_t bootloader_get_cmd_value(void)
{
	uint32_t wValue;
	
	wValue = (byRwBuffer[2]<<24)|(byRwBuffer[3]<<16)|(byRwBuffer[4]<<8)|byRwBuffer[5];
 610:	1066      	lrw      	r3, 0x20000048	// 628 <bootloader_get_cmd_value+0x18>
 612:	8302      	ld.b      	r0, (r3, 0x2)
 614:	8343      	ld.b      	r2, (r3, 0x3)
 616:	4250      	lsli      	r2, r2, 16
 618:	4018      	lsli      	r0, r0, 24
 61a:	6c08      	or      	r0, r2
 61c:	8345      	ld.b      	r2, (r3, 0x5)
 61e:	8364      	ld.b      	r3, (r3, 0x4)
 620:	6c08      	or      	r0, r2
 622:	4368      	lsli      	r3, r3, 8
 624:	6c0c      	or      	r0, r3
	return wValue;	
}
 626:	783c      	jmp      	r15
 628:	20000048 	.long	0x20000048

0000062c <bootloader_program_init>:

函数功能：boot APP升级初始化

***********************************************************************/
void bootloader_program_init(void)
{
 62c:	14d0      	push      	r15
	hwCheckTimeOutNum = 80;           //bootloader_prog_check_us()/BT_INT_TIMER_US;
 62e:	1075      	lrw      	r3, 0x2000001c	// 680 <bootloader_program_init+0x54>
 630:	3250      	movi      	r2, 80
	memset(byRwBuffer,0,BOOT_BUF_SIZE);
 632:	3100      	movi      	r1, 0
	hwCheckTimeOutNum = 80;           //bootloader_prog_check_us()/BT_INT_TIMER_US;
 634:	ab40      	st.h      	r2, (r3, 0x0)
	memset(byRwBuffer,0,BOOT_BUF_SIZE);
 636:	3280      	movi      	r2, 128
 638:	4241      	lsli      	r2, r2, 1
 63a:	1013      	lrw      	r0, 0x20000048	// 684 <bootloader_program_init+0x58>
 63c:	e3fffdc6 	bsr      	0x1c8	// 1c8 <__memset_fast>
	//csi_iwdt_init(IWDT_TO_4096);			//初始化看门狗，溢出时间为2000ms(系统复位时间)
	csp_iwdt_set_ovt(SYSCON, IWDT_TO_4096);
 640:	1072      	lrw      	r3, 0x2000000c	// 688 <bootloader_program_init+0x5c>
	ptSysconBase -> IWDCR = (ptSysconBase -> IWDCR & (~IWDT_OVT_MSK)) | eLvl << IWDT_OVT_POS | IWDTCR_KEY;
 642:	1033      	lrw      	r1, 0xfffff8ff	// 68c <bootloader_program_init+0x60>
 644:	9360      	ld.w      	r3, (r3, 0x0)
 646:	d843202d 	ld.w      	r2, (r3, 0xb4)
 64a:	6884      	and      	r2, r1
 64c:	1031      	lrw      	r1, 0x87780600	// 690 <bootloader_program_init+0x64>
 64e:	6c84      	or      	r2, r1
 650:	dc43202d 	st.w      	r2, (r3, 0xb4)
	ptSysconBase -> IWDCNT = (ptSysconBase -> IWDCNT & (~IWDT_CLR_MSK)) | IWDT_CLR << IWDT_CLR_POS;
 654:	3181      	movi      	r1, 129
 656:	d843202e 	ld.w      	r2, (r3, 0xb8)
 65a:	4138      	lsli      	r1, r1, 24
 65c:	2900      	subi      	r1, 1
 65e:	6884      	and      	r2, r1
 660:	31b4      	movi      	r1, 180
 662:	4137      	lsli      	r1, r1, 23
 664:	6c84      	or      	r2, r1
 666:	dc43202e 	st.w      	r2, (r3, 0xb8)
	while((ptSysconBase->IWDCNT & IWDT_CLR_BUSY) == IWDT_CLR_BUSY);
 66a:	d843202e 	ld.w      	r2, (r3, 0xb8)
 66e:	3adf      	btsti      	r2, 31
 670:	0bfd      	bt      	0x66a	// 66a <bootloader_program_init+0x3e>
	csp_iwdt_clr(SYSCON);
	csi_iwdt_open();						//打开看门狗
 672:	e000029b 	bsr      	0xba8	// ba8 <csi_iwdt_open>
	csi_iwdt_feed();
 676:	e00002d9 	bsr      	0xc28	// c28 <csi_iwdt_feed>
	bootloader_clear_rec_buffer();		
 67a:	e3fffe59 	bsr      	0x32c	// 32c <bootloader_clear_rec_buffer>
}
 67e:	1490      	pop      	r15
 680:	2000001c 	.long	0x2000001c
 684:	20000048 	.long	0x20000048
 688:	2000000c 	.long	0x2000000c
 68c:	fffff8ff 	.long	0xfffff8ff
 690:	87780600 	.long	0x87780600

00000694 <bootloader_program_loading>:
函数功能：boot APP升级函数

***********************************************************************/

int bootloader_program_loading(void)
{
 694:	14d4      	push      	r4-r7, r15
 696:	1421      	subi      	r14, r14, 4
	uint8_t byCmdId = 0,byProgStart = 0;
	uint8_t byCmdAck[4] = {0};
 698:	3300      	movi      	r3, 0
	uint8_t byCmdId = 0,byProgStart = 0;
 69a:	3500      	movi      	r5, 0
	uint8_t byCmdAck[4] = {0};
 69c:	b860      	st.w      	r3, (r14, 0x0)
	int g_error = BOOT_SUCCESS;
	uint32_t wProgCheckStart = 0;

	bootloader_program_init();
 69e:	e3ffffc7 	bsr      	0x62c	// 62c <bootloader_program_init>
	bootloader_send_back_str("prog\n",5);
 6a2:	3105      	movi      	r1, 5
 6a4:	1203      	lrw      	r0, 0xe65	// 7b0 <bootloader_program_loading+0x11c>
	uint8_t byCmdId = 0,byProgStart = 0;
 6a6:	3400      	movi      	r4, 0
	bootloader_send_back_str("prog\n",5);
 6a8:	e3fffef8 	bsr      	0x498	// 498 <bootloader_send_back_str>
	while(1)
	{
		if(wIndx >= 6)
 6ac:	12e2      	lrw      	r7, 0x20000034	// 7b4 <bootloader_program_loading+0x120>
		{
			if(byRwBuffer[0] == BOOT_CMD_CHECK)
 6ae:	12c3      	lrw      	r6, 0x20000048	// 7b8 <bootloader_program_loading+0x124>
		if(wIndx >= 6)
 6b0:	9760      	ld.w      	r3, (r7, 0x0)
 6b2:	3b05      	cmphsi      	r3, 6
 6b4:	0c0b      	bf      	0x6ca	// 6ca <bootloader_program_loading+0x36>
			if(byRwBuffer[0] == BOOT_CMD_CHECK)
 6b6:	8660      	ld.b      	r3, (r6, 0x0)
 6b8:	eb4300ef 	cmpnei      	r3, 239
 6bc:	0807      	bt      	0x6ca	// 6ca <bootloader_program_loading+0x36>
			{
				byCmdId = byRwBuffer[1];
				memcpy(byCmdAck,&byRwBuffer[2],4);
 6be:	3204      	movi      	r2, 4
 6c0:	113f      	lrw      	r1, 0x2000004a	// 7bc <bootloader_program_loading+0x128>
 6c2:	6c3b      	mov      	r0, r14
				byCmdId = byRwBuffer[1];
 6c4:	8681      	ld.b      	r4, (r6, 0x1)
				memcpy(byCmdAck,&byRwBuffer[2],4);
 6c6:	e3fffdd5 	bsr      	0x270	// 270 <__memcpy_fast>
			}
		}
		switch(byCmdId)
 6ca:	eb440030 	cmpnei      	r4, 48
 6ce:	0c38      	bf      	0x73e	// 73e <bootloader_program_loading+0xaa>
 6d0:	eb040030 	cmphsi      	r4, 49
 6d4:	0809      	bt      	0x6e6	// 6e6 <bootloader_program_loading+0x52>
 6d6:	3c50      	cmpnei      	r4, 16
 6d8:	0c26      	bf      	0x724	// 724 <bootloader_program_loading+0x90>
 6da:	eb440020 	cmpnei      	r4, 32
 6de:	0c2a      	bf      	0x732	// 732 <bootloader_program_loading+0x9e>
			break;
			default:
			break;
			
		}
		csi_iwdt_feed();
 6e0:	e00002a4 	bsr      	0xc28	// c28 <csi_iwdt_feed>
		if(wIndx >= 6)
 6e4:	07e6      	br      	0x6b0	// 6b0 <bootloader_program_loading+0x1c>
		switch(byCmdId)
 6e6:	eb440080 	cmpnei      	r4, 128
 6ea:	0c30      	bf      	0x74a	// 74a <bootloader_program_loading+0xb6>
 6ec:	eb4400f5 	cmpnei      	r4, 245
 6f0:	0c0a      	bf      	0x704	// 704 <bootloader_program_loading+0x70>
 6f2:	eb440040 	cmpnei      	r4, 64
 6f6:	0bf5      	bt      	0x6e0	// 6e0 <bootloader_program_loading+0x4c>
				if(byProgStart)
 6f8:	3d40      	cmpnei      	r5, 0
 6fa:	0c10      	bf      	0x71a	// 71a <bootloader_program_loading+0x86>
					wCheckNum = bootloader_get_cmd_value();
 6fc:	e3ffff8a 	bsr      	0x610	// 610 <bootloader_get_cmd_value>
 700:	1170      	lrw      	r3, 0x20000024	// 7c0 <bootloader_program_loading+0x12c>
 702:	0416      	br      	0x72e	// 72e <bootloader_program_loading+0x9a>
				wProgCheckStart = bootloader_get_cmd_value();
 704:	e3ffff86 	bsr      	0x610	// 610 <bootloader_get_cmd_value>
				if(wProgCheckStart == BOOTLOADER_PROG_CHECK)
 708:	116f      	lrw      	r3, 0xf2f3f4f5	// 7c4 <bootloader_program_loading+0x130>
					byProgStart = 1;
 70a:	64c2      	cmpne      	r0, r3
 70c:	3301      	movi      	r3, 1
 70e:	c4a30c20 	incf      	r5, r3, 0
					bootloader_send_ack(byCmdAck,4);
 712:	3104      	movi      	r1, 4
 714:	6c3b      	mov      	r0, r14
 716:	e3fffe93 	bsr      	0x43c	// 43c <bootloader_send_ack>
				mdelay(1);
 71a:	3001      	movi      	r0, 1
				byCmdId = 0;
 71c:	3400      	movi      	r4, 0
				mdelay(1);
 71e:	e3fffdf8 	bsr      	0x30e	// 30e <mdelay>
			break;
 722:	07df      	br      	0x6e0	// 6e0 <bootloader_program_loading+0x4c>
				if(byProgStart)
 724:	3d40      	cmpnei      	r5, 0
 726:	0ffa      	bf      	0x71a	// 71a <bootloader_program_loading+0x86>
					wHexStartAddr = bootloader_get_cmd_value();
 728:	e3ffff74 	bsr      	0x610	// 610 <bootloader_get_cmd_value>
 72c:	1167      	lrw      	r3, 0x2000002c	// 7c8 <bootloader_program_loading+0x134>
					wCheckNum = bootloader_get_cmd_value();
 72e:	b300      	st.w      	r0, (r3, 0x0)
 730:	07f1      	br      	0x712	// 712 <bootloader_program_loading+0x7e>
				if(byProgStart)
 732:	3d40      	cmpnei      	r5, 0
 734:	0ff3      	bf      	0x71a	// 71a <bootloader_program_loading+0x86>
					wHexEndAddr = bootloader_get_cmd_value();
 736:	e3ffff6d 	bsr      	0x610	// 610 <bootloader_get_cmd_value>
 73a:	1165      	lrw      	r3, 0x20000028	// 7cc <bootloader_program_loading+0x138>
 73c:	07f9      	br      	0x72e	// 72e <bootloader_program_loading+0x9a>
				if(byProgStart)
 73e:	3d40      	cmpnei      	r5, 0
 740:	0fed      	bf      	0x71a	// 71a <bootloader_program_loading+0x86>
					wAppJumpAddr = bootloader_get_cmd_value();
 742:	e3ffff67 	bsr      	0x610	// 610 <bootloader_get_cmd_value>
 746:	1163      	lrw      	r3, 0x20000020	// 7d0 <bootloader_program_loading+0x13c>
 748:	07f3      	br      	0x72e	// 72e <bootloader_program_loading+0x9a>
				if(byProgStart != 1)  return BOOT_ERROR;
 74a:	3d41      	cmpnei      	r5, 1
 74c:	0817      	bt      	0x77a	// 77a <bootloader_program_loading+0xe6>
				wCheckNum = bootloader_get_cmd_value();
 74e:	e3ffff61 	bsr      	0x610	// 610 <bootloader_get_cmd_value>
 752:	107c      	lrw      	r3, 0x20000024	// 7c0 <bootloader_program_loading+0x12c>
				bootloader_send_ack(byCmdAck,4);
 754:	3104      	movi      	r1, 4
				wCheckNum = bootloader_get_cmd_value();
 756:	b300      	st.w      	r0, (r3, 0x0)
				bootloader_send_ack(byCmdAck,4);
 758:	6c3b      	mov      	r0, r14
 75a:	e3fffe71 	bsr      	0x43c	// 43c <bootloader_send_ack>
				bootloader_clear_rec_buffer();
 75e:	e3fffde7 	bsr      	0x32c	// 32c <bootloader_clear_rec_buffer>
				hwCheckTimeOutNum = 0x8000;
 762:	107d      	lrw      	r3, 0x2000001c	// 7d4 <bootloader_program_loading+0x140>
 764:	ea027fff 	movi      	r2, 32767
 768:	6c8a      	nor      	r2, r2
 76a:	ab40      	st.h      	r2, (r3, 0x0)
				g_error = bootloader_program_flash();
 76c:	e3fffea6 	bsr      	0x4b8	// 4b8 <bootloader_program_flash>
				if(g_error) {
 770:	3840      	cmpnei      	r0, 0
 772:	0c06      	bf      	0x77e	// 77e <bootloader_program_loading+0xea>
					byProgFailed = 1;
 774:	1079      	lrw      	r3, 0x20000018	// 7d8 <bootloader_program_loading+0x144>
 776:	3201      	movi      	r2, 1
 778:	a340      	st.b      	r2, (r3, 0x0)
				if(byProgStart != 1)  return BOOT_ERROR;
 77a:	3401      	movi      	r4, 1
 77c:	040c      	br      	0x794	// 794 <bootloader_program_loading+0x100>
				csi_iwdt_close();
 77e:	e000023b 	bsr      	0xbf4	// bf4 <csi_iwdt_close>
				g_error = bootloader_program_verify();	
 782:	e3ffff15 	bsr      	0x5ac	// 5ac <bootloader_program_verify>
 786:	6d03      	mov      	r4, r0
				if(g_error == BOOT_ERROR)
 788:	3841      	cmpnei      	r0, 1
 78a:	0808      	bt      	0x79a	// 79a <bootloader_program_loading+0x106>
					bootloader_send_back_str("Vy Fail\n",8);
 78c:	3108      	movi      	r1, 8
 78e:	1014      	lrw      	r0, 0xe6b	// 7dc <bootloader_program_loading+0x148>
 790:	e3fffe84 	bsr      	0x498	// 498 <bootloader_send_back_str>
	}
}
 794:	6c13      	mov      	r0, r4
 796:	1401      	addi      	r14, r14, 4
 798:	1494      	pop      	r4-r7, r15
					bootloader_send_back_str("Vy OK\n",6);
 79a:	3106      	movi      	r1, 6
 79c:	1011      	lrw      	r0, 0xe74	// 7e0 <bootloader_program_loading+0x14c>
					return BOOT_SUCCESS;	
 79e:	3400      	movi      	r4, 0
					bootloader_send_back_str("Vy OK\n",6);
 7a0:	e3fffe7c 	bsr      	0x498	// 498 <bootloader_send_back_str>
}

static inline void csp_set_ureg(csp_syscon_t *ptSysconBase, uint8_t byNum, uint32_t wVal)
{
	*(uint32_t *)((uint32_t)&ptSysconBase->UREG0 + (byNum * 4)) = wVal;
 7a4:	1070      	lrw      	r3, 0x2000000c	// 7e4 <bootloader_program_loading+0x150>
 7a6:	3200      	movi      	r2, 0
 7a8:	9360      	ld.w      	r3, (r3, 0x0)
 7aa:	dc432040 	st.w      	r2, (r3, 0x100)
					return BOOT_SUCCESS;	
 7ae:	07f3      	br      	0x794	// 794 <bootloader_program_loading+0x100>
 7b0:	00000e65 	.long	0x00000e65
 7b4:	20000034 	.long	0x20000034
 7b8:	20000048 	.long	0x20000048
 7bc:	2000004a 	.long	0x2000004a
 7c0:	20000024 	.long	0x20000024
 7c4:	f2f3f4f5 	.long	0xf2f3f4f5
 7c8:	2000002c 	.long	0x2000002c
 7cc:	20000028 	.long	0x20000028
 7d0:	20000020 	.long	0x20000020
 7d4:	2000001c 	.long	0x2000001c
 7d8:	20000018 	.long	0x20000018
 7dc:	00000e6b 	.long	0x00000e6b
 7e0:	00000e74 	.long	0x00000e74
 7e4:	2000000c 	.long	0x2000000c

000007e8 <bootloader_jump_to_app>:

***********************************************************************/

void bootloader_jump_to_app(void)
{
	asm("mov r0,%0\n"::"r"(APP_EIP_ADDR):);
 7e8:	ea032108 	movi      	r3, 8456
 7ec:	6c0f      	mov      	r0, r3
//	asm(" lrw r0,0x2104 ");  // APP入口地址 __start label的值
	asm(" jmp r0 ");
 7ee:	7800      	jmp      	r0
}
 7f0:	783c      	jmp      	r15

000007f2 <bootloader_check_jump_addr>:
 	return (*(volatile uint32_t *)(wAddr));
 7f2:	3380      	movi      	r3, 128
 7f4:	4366      	lsli      	r3, r3, 6
 7f6:	9360      	ld.w      	r3, (r3, 0x0)
uint8_t bootloader_check_jump_addr()
{
	uint32_t wTemp;
	uint8_t byResult = 0;
	wTemp = bootloader_flash_read_word(APP_START_ADDR);
	if(wTemp == APP_EIP_ADDR )byResult = 1;
 7f8:	eb432108 	cmpnei      	r3, 8456
 7fc:	6403      	mvcv      	r0
	return byResult;
 7fe:	7400      	zextb      	r0, r0
}
 800:	783c      	jmp      	r15
	...

00000804 <bootloader_jump_function>:

函数功能：boot跳转到 APP 函数

***********************************************************************/
int bootloader_jump_function(void)
{
 804:	14d0      	push      	r15
	mdelay(200);
 806:	30c8      	movi      	r0, 200
 808:	e3fffd83 	bsr      	0x30e	// 30e <mdelay>
	if(byProgFailed ==1 || bootloader_check_jump_addr() == 0){
 80c:	106d      	lrw      	r3, 0x20000018	// 840 <bootloader_jump_function+0x3c>
 80e:	8360      	ld.b      	r3, (r3, 0x0)
 810:	3b41      	cmpnei      	r3, 1
 812:	0807      	bt      	0x820	// 820 <bootloader_jump_function+0x1c>
		bootloader_send_back_str("BtFail\n",7);
 814:	100c      	lrw      	r0, 0xe54	// 844 <bootloader_jump_function+0x40>
 816:	3107      	movi      	r1, 7
 818:	e3fffe40 	bsr      	0x498	// 498 <bootloader_send_back_str>
		return BOOT_ERROR;
 81c:	3001      	movi      	r0, 1
	}
	bootloader_send_back_str("JumpAPP\n",8);
	mdelay(100);
	bootloader_jump_to_app();
	return JUMP_SUCCESS;	
}
 81e:	1490      	pop      	r15
	if(byProgFailed ==1 || bootloader_check_jump_addr() == 0){
 820:	e3ffffe9 	bsr      	0x7f2	// 7f2 <bootloader_check_jump_addr>
 824:	3840      	cmpnei      	r0, 0
 826:	0ff7      	bf      	0x814	// 814 <bootloader_jump_function+0x10>
	bootloader_send_back_str("JumpAPP\n",8);
 828:	3108      	movi      	r1, 8
 82a:	1008      	lrw      	r0, 0xe5c	// 848 <bootloader_jump_function+0x44>
 82c:	e3fffe36 	bsr      	0x498	// 498 <bootloader_send_back_str>
	mdelay(100);
 830:	3064      	movi      	r0, 100
 832:	e3fffd6e 	bsr      	0x30e	// 30e <mdelay>
	bootloader_jump_to_app();
 836:	e3ffffd9 	bsr      	0x7e8	// 7e8 <bootloader_jump_to_app>
	return JUMP_SUCCESS;	
 83a:	3002      	movi      	r0, 2
 83c:	07f1      	br      	0x81e	// 81e <bootloader_jump_function+0x1a>
 83e:	0000      	bkpt
 840:	20000018 	.long	0x20000018
 844:	00000e54 	.long	0x00000e54
 848:	00000e5c 	.long	0x00000e5c

0000084c <bootloader_reset>:

***********************************************************************/
void bootloader_reset(void)
{
//	SYSCON -> RSR = 0xFFFFFFFF;
	SYSCON -> IDCCR = 0xE11E0081; //系统软复位	
 84c:	1063      	lrw      	r3, 0x2000000c	// 858 <bootloader_reset+0xc>
 84e:	1044      	lrw      	r2, 0xe11e0081	// 85c <bootloader_reset+0x10>
 850:	9360      	ld.w      	r3, (r3, 0x0)
 852:	b340      	st.w      	r2, (r3, 0x0)
}
 854:	783c      	jmp      	r15
 856:	0000      	bkpt
 858:	2000000c 	.long	0x2000000c
 85c:	e11e0081 	.long	0xe11e0081

00000860 <bootloader_system_init>:

函数功能：boot初始化函数

***********************************************************************/
void bootloader_system_init(void)
{
 860:	14d0      	push      	r15
	SYSCON->PCER0=0xFFFFFFF;  
 862:	1067      	lrw      	r3, 0x2000000c	// 87c <bootloader_system_init+0x1c>
 864:	c7605022 	bmaski      	r2, 28
 868:	9360      	ld.w      	r3, (r3, 0x0)
 86a:	b34a      	st.w      	r2, (r3, 0x28)
	csi_bootloader_sysclk_config();
 86c:	e0000264 	bsr      	0xd34	// d34 <csi_bootloader_sysclk_config>
	
	CK_CPU_ENALLNORMALIRQ;
 870:	c1807420 	psrset      	ee, ie
	csi_iwdt_close();				//close iwdt
 874:	e00001c0 	bsr      	0xbf4	// bf4 <csi_iwdt_close>
}
 878:	1490      	pop      	r15
 87a:	0000      	bkpt
 87c:	2000000c 	.long	0x2000000c

00000880 <main>:
 
 
uint8_t byBootMode = STARTCHECK_MODE;//STARTCHECK_MODE;

int main()
{
 880:	14d1      	push      	r4, r15
	int iRet = 0; 	
	
	bootloader_system_init();
	bootloader_printf_init();
	csi_bt_timer_init(BT0, BT_INT_TIMER_US);		//初始化BT0, 定时10us； BT定时，默认采用PEND中断
 882:	1097      	lrw      	r4, 0x20000004	// 8dc <main+0x5c>
	bootloader_system_init();
 884:	e3ffffee 	bsr      	0x860	// 860 <bootloader_system_init>
	bootloader_printf_init();
 888:	e3fffdac 	bsr      	0x3e0	// 3e0 <bootloader_printf_init>
	csi_bt_timer_init(BT0, BT_INT_TIMER_US);		//初始化BT0, 定时10us； BT定时，默认采用PEND中断
 88c:	310a      	movi      	r1, 10
 88e:	9400      	ld.w      	r0, (r4, 0x0)
 890:	e000002c 	bsr      	0x8e8	// 8e8 <csi_bt_timer_init>
	csi_bt_start(BT0);					//启动定时器
 894:	9400      	ld.w      	r0, (r4, 0x0)
	bootloader_send_back_str("boot\n",5);
	while(1)
	{
		switch(byBootMode)
 896:	1093      	lrw      	r4, 0x2000003c	// 8e0 <main+0x60>
	csi_bt_start(BT0);					//启动定时器
 898:	e0000052 	bsr      	0x93c	// 93c <csi_bt_start>
	bootloader_send_back_str("boot\n",5);
 89c:	3105      	movi      	r1, 5
 89e:	1012      	lrw      	r0, 0xe81	// 8e4 <main+0x64>
 8a0:	e3fffdfc 	bsr      	0x498	// 498 <bootloader_send_back_str>
		switch(byBootMode)
 8a4:	8460      	ld.b      	r3, (r4, 0x0)
 8a6:	3b41      	cmpnei      	r3, 1
 8a8:	0c0c      	bf      	0x8c0	// 8c0 <main+0x40>
 8aa:	3b40      	cmpnei      	r3, 0
 8ac:	0c06      	bf      	0x8b8	// 8b8 <main+0x38>
 8ae:	3b42      	cmpnei      	r3, 2
 8b0:	0c0f      	bf      	0x8ce	// 8ce <main+0x4e>
				iRet = bootloader_jump_function();	
				if(iRet ==1) byBootMode = BOOTLOADER_MODE;
				else bootloader_reset();
				break;
			default:
				bootloader_reset();
 8b2:	e3ffffcd 	bsr      	0x84c	// 84c <bootloader_reset>
				break;
 8b6:	07f7      	br      	0x8a4	// 8a4 <main+0x24>
				byBootMode = bootloader_program_option();
 8b8:	e3fffe98 	bsr      	0x5e8	// 5e8 <bootloader_program_option>
 8bc:	a400      	st.b      	r0, (r4, 0x0)
				break;
 8be:	07f3      	br      	0x8a4	// 8a4 <main+0x24>
				iRet = bootloader_program_loading();
 8c0:	e3fffeea 	bsr      	0x694	// 694 <bootloader_program_loading>
				if(iRet ==0) byBootMode = JUMPAPP_MODE;
 8c4:	3840      	cmpnei      	r0, 0
 8c6:	0808      	bt      	0x8d6	// 8d6 <main+0x56>
 8c8:	3302      	movi      	r3, 2
				else byBootMode = BOOTLOADER_MODE;
 8ca:	a460      	st.b      	r3, (r4, 0x0)
 8cc:	07ec      	br      	0x8a4	// 8a4 <main+0x24>
				iRet = bootloader_jump_function();	
 8ce:	e3ffff9b 	bsr      	0x804	// 804 <bootloader_jump_function>
				if(iRet ==1) byBootMode = BOOTLOADER_MODE;
 8d2:	3841      	cmpnei      	r0, 1
 8d4:	0bef      	bt      	0x8b2	// 8b2 <main+0x32>
				else byBootMode = BOOTLOADER_MODE;
 8d6:	3301      	movi      	r3, 1
 8d8:	07f9      	br      	0x8ca	// 8ca <main+0x4a>
 8da:	0000      	bkpt
 8dc:	20000004 	.long	0x20000004
 8e0:	2000003c 	.long	0x2000003c
 8e4:	00000e81 	.long	0x00000e81

000008e8 <csi_bt_timer_init>:
 *  \param[in] ptBtBase: pointer of bt register structure
 *  \param[in] wTimeOut: the timeout for bt, unit: us, 20us < wTimeOut < 3S
 *  \return error code \ref csi_error_t
 */ 
csi_error_t csi_bt_timer_init(csp_bt_t *ptBtBase, uint32_t wTimeOut)
{
 8e8:	14d2      	push      	r4-r5, r15
 8ea:	6d03      	mov      	r4, r0
	uint32_t wTmLoad;
	uint32_t wClkDiv = 1;
	
	soc_clk_enable(BT0_SYS_CLK);
 8ec:	302f      	movi      	r0, 47
{
 8ee:	6d47      	mov      	r5, r1
	soc_clk_enable(BT0_SYS_CLK);
 8f0:	e0000252 	bsr      	0xd94	// d94 <soc_clk_enable>
	ptBtBase->RSSR = (ptBtBase->RSSR & (~BT_SRR_MSK)) | (BT_SRR_EN << BT_SRR_POS);
 8f4:	9460      	ld.w      	r3, (r4, 0x0)
 8f6:	1050      	lrw      	r2, 0xffff0fff	// 934 <csi_bt_timer_init+0x4c>
 8f8:	68c8      	and      	r3, r2
 8fa:	ec635000 	ori      	r3, r3, 20480
 8fe:	b460      	st.w      	r3, (r4, 0x0)
	//csi_clk_enable(ptBtBase);													//bt clk enable
	csp_bt_soft_rst(ptBtBase);													//reset bt
	
	wTmLoad = 48 * wTimeOut;	//bt prdr load value
 900:	4561      	lsli      	r3, r5, 1
 902:	5b34      	addu      	r1, r3, r5
 904:	4124      	lsli      	r1, r1, 4
	if(wTmLoad > 0xffff)
 906:	eb01ffff 	cmphsi      	r1, 65536
 90a:	0812      	bt      	0x92e	// 92e <csi_bt_timer_init+0x46>
	ptBtBase->CR = wCr;
 90c:	3309      	movi      	r3, 9
 90e:	104b      	lrw      	r2, 0xe000e100	// 938 <csi_bt_timer_init+0x50>
 910:	b461      	st.w      	r3, (r4, 0x4)
	ptBtBase->PSCR = hwPscr;
 912:	3300      	movi      	r3, 0
	csp_bt_set_cmp(ptBtBase, (uint16_t)(wTmLoad >> 1));						//bt prdr load value
	csp_bt_int_enable(ptBtBase, BT_PEND_INT, true);							//enable PEND interrupt
	//csi_irq_enable((uint32_t *)ptBtBase);									//enable bt irq
	csi_vic_enable_irq((int32_t)BT0_IRQ_NUM);
	
    return CSI_OK;
 914:	3000      	movi      	r0, 0
 916:	b462      	st.w      	r3, (r4, 0x8)
	ptBtBase->PRDR = hwPrdr;
 918:	b423      	st.w      	r1, (r4, 0xc)
	csp_bt_set_cmp(ptBtBase, (uint16_t)(wTmLoad >> 1));						//bt prdr load value
 91a:	4921      	lsri      	r1, r1, 1
	ptBtBase->CMP = hwCmp;
 91c:	b424      	st.w      	r1, (r4, 0x10)
}
static inline void csp_bt_int_enable(csp_bt_t *ptBtBase, bt_int_e eBtInt,bool bEnable)
{
	if(bEnable)
		ptBtBase->IMCR |= eBtInt; 
 91e:	946b      	ld.w      	r3, (r4, 0x2c)
 920:	ec630001 	ori      	r3, r3, 1
 924:	b46b      	st.w      	r3, (r4, 0x2c)
 926:	3380      	movi      	r3, 128
 928:	4376      	lsli      	r3, r3, 22
 92a:	b260      	st.w      	r3, (r2, 0x0)
}
 92c:	1492      	pop      	r4-r5, r15
		return CSI_ERROR;
 92e:	3000      	movi      	r0, 0
 930:	2800      	subi      	r0, 1
 932:	07fd      	br      	0x92c	// 92c <csi_bt_timer_init+0x44>
 934:	ffff0fff 	.long	0xffff0fff
 938:	e000e100 	.long	0xe000e100

0000093c <csi_bt_start>:
	ptBtBase->RSSR |= BT_START;
 93c:	9060      	ld.w      	r3, (r0, 0x0)
 93e:	ec630001 	ori      	r3, r3, 1
 942:	b060      	st.w      	r3, (r0, 0x0)
 *  \return none
 */ 
void csi_bt_start(csp_bt_t *ptBtBase)
{
	csp_bt_start(ptBtBase);
}
 944:	783c      	jmp      	r15
	...

00000948 <apt_ifc_wr_nword.isra.1>:
	csp_ifc_addr(ptIfcBase, wPageStAddr);
	csp_ifc_start(ptIfcBase);
} 


static csp_error_t apt_ifc_wr_nword(csp_ifc_t * ptIfcBase, uint8_t bFlashType, uint32_t wAddr, uint32_t wDataNum, uint32_t *pwData)
 948:	14c4      	push      	r4-r7
 94a:	1625      	subi      	r14, r14, 276
{
	uint32_t i, j, wPageStAddr, wBuff[PFLASH_PAGE_SZ];
	uint8_t bPageSize;
	csp_error_t tRet = CSP_SUCCESS;
	
	while(!g_bFlashPgmDne);
 94c:	1287      	lrw      	r4, 0x20000000	// a68 <apt_ifc_wr_nword.isra.1+0x120>
static csp_error_t apt_ifc_wr_nword(csp_ifc_t * ptIfcBase, uint8_t bFlashType, uint32_t wAddr, uint32_t wDataNum, uint32_t *pwData)
 94e:	b862      	st.w      	r3, (r14, 0x8)
 950:	b883      	st.w      	r4, (r14, 0xc)
	while(!g_bFlashPgmDne);
 952:	84a0      	ld.b      	r5, (r4, 0x0)
 954:	3d40      	cmpnei      	r5, 0
 956:	0ffe      	bf      	0x952	// 952 <apt_ifc_wr_nword.isra.1+0xa>
	g_bFlashPgmDne = 0;
 958:	3500      	movi      	r5, 0
 95a:	a4a0      	st.b      	r5, (r4, 0x0)
	

	bPageSize = PFLASH_PAGE_SZ;
	wPageStAddr = wAddr & 0xffffff00;
 95c:	3400      	movi      	r4, 0
 95e:	2cff      	subi      	r4, 256
 960:	6904      	and      	r4, r1

	
	wAddr -= wPageStAddr;
 962:	6052      	subu      	r1, r4
	wAddr = wAddr >> 2;
 964:	4922      	lsri      	r1, r1, 2
 966:	b820      	st.w      	r1, (r14, 0x0)
{
	ptIfcBase->ICR = eInt;
}
static inline void csp_ifc_unlock(csp_ifc_t *ptIfcBase)
{
	ptIfcBase->KR = IFC_USER_KEY;
 968:	1221      	lrw      	r1, 0x5a5a5a5a	// a6c <apt_ifc_wr_nword.isra.1+0x124>
 96a:	b028      	st.w      	r1, (r0, 0x20)
	ptIfcBase->CMR = eCmd;
 96c:	3107      	movi      	r1, 7
 96e:	b023      	st.w      	r1, (r0, 0xc)
	ptIfcBase->CR = IFC_START;
 970:	3101      	movi      	r1, 1
	ptIfcBase->ADDR = wAddr;
 972:	b086      	st.w      	r4, (r0, 0x18)
	ptIfcBase->CR = IFC_START;
 974:	b024      	st.w      	r1, (r0, 0x10)
		while(ptIfcBase->CR != 0);
 976:	9024      	ld.w      	r1, (r0, 0x10)
 978:	3940      	cmpnei      	r1, 0
 97a:	0bfe      	bt      	0x976	// 976 <apt_ifc_wr_nword.isra.1+0x2e>
 97c:	9820      	ld.w      	r1, (r14, 0x0)
 97e:	4122      	lsli      	r1, r1, 2
 980:	b821      	st.w      	r1, (r14, 0x4)
	for(i=0; i< bPageSize; i++) {
      if( i == wAddr )
	  {
		for(j = 0; j<wDataNum; j++)
			wBuff[i++] = pwData[j];
		i--;
 982:	5aa3      	subi      	r5, r2, 1
		while(ptIfcBase->CR != 0);
 984:	3100      	movi      	r1, 0
		i--;
 986:	b8a4      	st.w      	r5, (r14, 0x10)
      if( i == wAddr )
 988:	98a0      	ld.w      	r5, (r14, 0x0)
 98a:	6456      	cmpne      	r5, r1
 98c:	085e      	bt      	0xa48	// a48 <apt_ifc_wr_nword.isra.1+0x100>
 98e:	98e2      	ld.w      	r7, (r14, 0x8)
 990:	3600      	movi      	r6, 0
		for(j = 0; j<wDataNum; j++)
 992:	649a      	cmpne      	r6, r2
 994:	0850      	bt      	0xa34	// a34 <apt_ifc_wr_nword.isra.1+0xec>
		i--;
 996:	9864      	ld.w      	r3, (r14, 0x10)
 998:	604c      	addu      	r1, r3
	for(i=0; i< bPageSize; i++) {
 99a:	2100      	addi      	r1, 1
 99c:	eb01003f 	cmphsi      	r1, 64
 9a0:	0ff4      	bf      	0x988	// 988 <apt_ifc_wr_nword.isra.1+0x40>
	wPageStAddr = wAddr & 0xffffff00;
 9a2:	6cd3      	mov      	r3, r4
 9a4:	e42400ff 	addi      	r1, r4, 256
      else {
        wBuff[i] = *(uint32_t *)(wPageStAddr+4*i);
      }
    }
	for(i=0; i<bPageSize; i++) {
        *(uint32_t *)(wPageStAddr+4*i) = wBuff[i];
 9a8:	5b51      	subu      	r2, r3, r4
 9aa:	1d05      	addi      	r5, r14, 20
 9ac:	6094      	addu      	r2, r5
 9ae:	9240      	ld.w      	r2, (r2, 0x0)
 9b0:	b340      	st.w      	r2, (r3, 0x0)
 9b2:	2303      	addi      	r3, 4
	for(i=0; i<bPageSize; i++) {
 9b4:	644e      	cmpne      	r3, r1
 9b6:	0bf9      	bt      	0x9a8	// 9a8 <apt_ifc_wr_nword.isra.1+0x60>
	ptIfcBase->CMR = eCmd;
 9b8:	3206      	movi      	r2, 6
	ptIfcBase->KR = IFC_USER_KEY;
 9ba:	116d      	lrw      	r3, 0x5a5a5a5a	// a6c <apt_ifc_wr_nword.isra.1+0x124>
 9bc:	b068      	st.w      	r3, (r0, 0x20)
	ptIfcBase->CMR = eCmd;
 9be:	b043      	st.w      	r2, (r0, 0xc)
	ptIfcBase->CR = IFC_START;
 9c0:	3201      	movi      	r2, 1
	ptIfcBase->ADDR = wAddr;
 9c2:	b086      	st.w      	r4, (r0, 0x18)
	ptIfcBase->CR = IFC_START;
 9c4:	b044      	st.w      	r2, (r0, 0x10)
		while(ptIfcBase->CR != 0);
 9c6:	9044      	ld.w      	r2, (r0, 0x10)
 9c8:	3a40      	cmpnei      	r2, 0
 9ca:	0bfe      	bt      	0x9c6	// 9c6 <apt_ifc_wr_nword.isra.1+0x7e>
	ptIfcBase->KR = IFC_USER_KEY;
 9cc:	b068      	st.w      	r3, (r0, 0x20)
	ptIfcBase->CMR = eCmd;
 9ce:	3301      	movi      	r3, 1
 9d0:	b063      	st.w      	r3, (r0, 0xc)
	ptIfcBase->ADDR = wAddr;
 9d2:	b086      	st.w      	r4, (r0, 0x18)
	ptIfcBase->CR = IFC_START;
 9d4:	b064      	st.w      	r3, (r0, 0x10)
	if (eStepn == PROGRAM && ((ptIfcBase -> MR) & DFLASH_PMODE) && (wPageStAddr >= 0x10000000) ){
 9d6:	9065      	ld.w      	r3, (r0, 0x14)
 9d8:	e4632100 	andi      	r3, r3, 256
 9dc:	3b40      	cmpnei      	r3, 0
 9de:	0c3c      	bf      	0xa56	// a56 <apt_ifc_wr_nword.isra.1+0x10e>
 9e0:	c7605023 	bmaski      	r3, 28
 9e4:	650c      	cmphs      	r3, r4
 9e6:	0838      	bt      	0xa56	// a56 <apt_ifc_wr_nword.isra.1+0x10e>
		while(ptIfcBase->RISR != IFCINT_PEP_END); /*// Wait for operation done*/
 9e8:	906a      	ld.w      	r3, (r0, 0x28)
 9ea:	3b44      	cmpnei      	r3, 4
 9ec:	0bfe      	bt      	0x9e8	// 9e8 <apt_ifc_wr_nword.isra.1+0xa0>
	ptIfcBase->ICR = eInt;
 9ee:	b06c      	st.w      	r3, (r0, 0x30)
	ptIfcBase->CMR = eCmd;
 9f0:	3202      	movi      	r2, 2
	ptIfcBase->KR = IFC_USER_KEY;
 9f2:	107f      	lrw      	r3, 0x5a5a5a5a	// a6c <apt_ifc_wr_nword.isra.1+0x124>
 9f4:	b068      	st.w      	r3, (r0, 0x20)
	ptIfcBase->CMR = eCmd;
 9f6:	b043      	st.w      	r2, (r0, 0xc)
	ptIfcBase->CR = IFC_START;
 9f8:	3201      	movi      	r2, 1
	ptIfcBase->ADDR = wAddr;
 9fa:	b086      	st.w      	r4, (r0, 0x18)
	ptIfcBase->CR = IFC_START;
 9fc:	b044      	st.w      	r2, (r0, 0x10)
		while(ptIfcBase->CR != 0);
 9fe:	9044      	ld.w      	r2, (r0, 0x10)
 a00:	3a40      	cmpnei      	r2, 0
 a02:	0bfe      	bt      	0x9fe	// 9fe <apt_ifc_wr_nword.isra.1+0xb6>
	ptIfcBase->KR = IFC_USER_KEY;
 a04:	b068      	st.w      	r3, (r0, 0x20)
	ptIfcBase->CMR = eCmd;
 a06:	3301      	movi      	r3, 1
 a08:	b063      	st.w      	r3, (r0, 0xc)
	ptIfcBase->ADDR = wAddr;
 a0a:	b086      	st.w      	r4, (r0, 0x18)
	ptIfcBase->CR = IFC_START;
 a0c:	b064      	st.w      	r3, (r0, 0x10)
	if (eStepn == PROGRAM && ((ptIfcBase -> MR) & DFLASH_PMODE) && (wPageStAddr >= 0x10000000) ){
 a0e:	9065      	ld.w      	r3, (r0, 0x14)
 a10:	e4632100 	andi      	r3, r3, 256
 a14:	3b40      	cmpnei      	r3, 0
 a16:	0c24      	bf      	0xa5e	// a5e <apt_ifc_wr_nword.isra.1+0x116>
 a18:	c7605023 	bmaski      	r3, 28
 a1c:	650c      	cmphs      	r3, r4
 a1e:	0820      	bt      	0xa5e	// a5e <apt_ifc_wr_nword.isra.1+0x116>
		while(ptIfcBase->RISR != IFCINT_PEP_END); /*// Wait for operation done*/
 a20:	906a      	ld.w      	r3, (r0, 0x28)
 a22:	3b44      	cmpnei      	r3, 4
 a24:	0bfe      	bt      	0xa20	// a20 <apt_ifc_wr_nword.isra.1+0xd8>
	ptIfcBase->ICR = eInt;
 a26:	b06c      	st.w      	r3, (r0, 0x30)
			g_bFlashCheckPass = 0;
		}
	}
#endif
	if (tRet != CSP_FAIL)
		g_bFlashPgmDne = 1;
 a28:	9863      	ld.w      	r3, (r14, 0xc)
 a2a:	3201      	movi      	r2, 1
	
	return tRet;
}
 a2c:	3000      	movi      	r0, 0
		g_bFlashPgmDne = 1;
 a2e:	a340      	st.b      	r2, (r3, 0x0)
}
 a30:	1605      	addi      	r14, r14, 276
 a32:	1484      	pop      	r4-r7
			wBuff[i++] = pwData[j];
 a34:	46a2      	lsli      	r5, r6, 2
 a36:	9861      	ld.w      	r3, (r14, 0x4)
 a38:	614c      	addu      	r5, r3
 a3a:	1b05      	addi      	r3, r14, 20
 a3c:	614c      	addu      	r5, r3
 a3e:	9760      	ld.w      	r3, (r7, 0x0)
		for(j = 0; j<wDataNum; j++)
 a40:	2600      	addi      	r6, 1
			wBuff[i++] = pwData[j];
 a42:	b560      	st.w      	r3, (r5, 0x0)
 a44:	2703      	addi      	r7, 4
 a46:	07a6      	br      	0x992	// 992 <apt_ifc_wr_nword.isra.1+0x4a>
        wBuff[i] = *(uint32_t *)(wPageStAddr+4*i);
 a48:	41a2      	lsli      	r5, r1, 2
 a4a:	1b05      	addi      	r3, r14, 20
 a4c:	5dcc      	addu      	r6, r5, r3
 a4e:	6150      	addu      	r5, r4
 a50:	9560      	ld.w      	r3, (r5, 0x0)
 a52:	b660      	st.w      	r3, (r6, 0x0)
 a54:	07a3      	br      	0x99a	// 99a <apt_ifc_wr_nword.isra.1+0x52>
		while(ptIfcBase->CR != 0);
 a56:	9064      	ld.w      	r3, (r0, 0x10)
 a58:	3b40      	cmpnei      	r3, 0
 a5a:	0bfe      	bt      	0xa56	// a56 <apt_ifc_wr_nword.isra.1+0x10e>
 a5c:	07ca      	br      	0x9f0	// 9f0 <apt_ifc_wr_nword.isra.1+0xa8>
 a5e:	9064      	ld.w      	r3, (r0, 0x10)
 a60:	3b40      	cmpnei      	r3, 0
 a62:	0bfe      	bt      	0xa5e	// a5e <apt_ifc_wr_nword.isra.1+0x116>
 a64:	07e2      	br      	0xa28	// a28 <apt_ifc_wr_nword.isra.1+0xe0>
 a66:	0000      	bkpt
 a68:	20000000 	.long	0x20000000
 a6c:	5a5a5a5a 	.long	0x5a5a5a5a

00000a70 <csi_ifc_get_status>:
		ptIfcBase->CEDR = IFC_CLKEN;
 a70:	3301      	movi      	r3, 1
 a72:	b061      	st.w      	r3, (r0, 0x4)
	if (g_bFlashPgmDne)
 a74:	1063      	lrw      	r3, 0x20000000	// a80 <csi_ifc_get_status+0x10>
 a76:	8300      	ld.b      	r0, (r3, 0x0)
	return tStatus;
 a78:	3301      	movi      	r3, 1
 a7a:	c4032040 	andn      	r0, r3, r0
}
 a7e:	783c      	jmp      	r15
 a80:	20000000 	.long	0x20000000

00000a84 <csi_ifc_program>:
{
 a84:	14d4      	push      	r4-r7, r15
 a86:	1428      	subi      	r14, r14, 32
	if (wAddr % 4 != 0 )
 a88:	e4812003 	andi      	r4, r1, 3
{
 a8c:	6d83      	mov      	r6, r0
	if (wAddr % 4 != 0 )
 a8e:	3c40      	cmpnei      	r4, 0
{
 a90:	b820      	st.w      	r1, (r14, 0x0)
 a92:	b842      	st.w      	r2, (r14, 0x8)
	if (wAddr % 4 != 0 )
 a94:	0c06      	bf      	0xaa0	// aa0 <csi_ifc_program+0x1c>
		return CSI_ERROR;
 a96:	3300      	movi      	r3, 0
 a98:	2b00      	subi      	r3, 1
}
 a9a:	6c0f      	mov      	r0, r3
 a9c:	1408      	addi      	r14, r14, 32
 a9e:	1494      	pop      	r4-r7, r15
 aa0:	3201      	movi      	r2, 1
	if (wDataNum > (wPageSize-wOffset%wPageSize)){
 aa2:	3540      	movi      	r5, 64
 aa4:	b041      	st.w      	r2, (r0, 0x4)
	wOffset = wAddr >> 2;
 aa6:	9840      	ld.w      	r2, (r14, 0x0)
 aa8:	4a42      	lsri      	r2, r2, 2
	if (wDataNum > (wPageSize-wOffset%wPageSize)){
 aaa:	e442203f 	andi      	r2, r2, 63
 aae:	614a      	subu      	r5, r2
 ab0:	64d4      	cmphs      	r5, r3
 ab2:	0848      	bt      	0xb42	// b42 <csi_ifc_program+0xbe>
			wFullPageNum = (wDataNum - wLen0)/wPageSize;
 ab4:	5b55      	subu      	r2, r3, r5
 ab6:	4a26      	lsri      	r1, r2, 6
 ab8:	b823      	st.w      	r1, (r14, 0xc)
			if (wDataNum > ((wFullPageNum*wPageSize) + wLen0)) {
 aba:	3100      	movi      	r1, 0
 abc:	293f      	subi      	r1, 64
 abe:	6884      	and      	r2, r1
 ac0:	6094      	addu      	r2, r5
				wLen1 = wDataNum - ((wFullPageNum*wPageSize) + wLen0);
 ac2:	64c8      	cmphs      	r2, r3
 ac4:	5b29      	subu      	r1, r3, r2
 ac6:	c4240c40 	inct      	r1, r4, 0
 aca:	b821      	st.w      	r1, (r14, 0x4)
	tRet = (csi_error_t)apt_ifc_wr_nword(ptIfcBase, wFlashType, wAddr, wLen0, wData);	
 acc:	9862      	ld.w      	r3, (r14, 0x8)
 ace:	6c97      	mov      	r2, r5
 ad0:	9820      	ld.w      	r1, (r14, 0x0)
 ad2:	6c1b      	mov      	r0, r6
 ad4:	e3ffff3a 	bsr      	0x948	// 948 <apt_ifc_wr_nword.isra.1>
 ad8:	6cc3      	mov      	r3, r0
	while (csi_ifc_get_status(ptIfcBase).busy);
 ada:	6c1b      	mov      	r0, r6
 adc:	6dcf      	mov      	r7, r3
 ade:	e3ffffc9 	bsr      	0xa70	// a70 <csi_ifc_get_status>
 ae2:	e4002001 	andi      	r0, r0, 1
 ae6:	6cdf      	mov      	r3, r7
 ae8:	3840      	cmpnei      	r0, 0
 aea:	0bf8      	bt      	0xada	// ada <csi_ifc_program+0x56>
	if (tRet == CSI_ERROR)
 aec:	3200      	movi      	r2, 0
 aee:	2a00      	subi      	r2, 1
 af0:	649e      	cmpne      	r7, r2
 af2:	0fd2      	bf      	0xa96	// a96 <csi_ifc_program+0x12>
		tRet = (csi_error_t)apt_ifc_wr_nword(ptIfcBase, wFlashType, wAddr+ (wLen0<<2)+(wPageSize<<2)*i, wPageSize, & *wData+(wLen0+wPageSize*i));
 af4:	4522      	lsli      	r1, r5, 2
 af6:	98e0      	ld.w      	r7, (r14, 0x0)
 af8:	b824      	st.w      	r1, (r14, 0x10)
 afa:	61c4      	addu      	r7, r1
 afc:	605e      	subu      	r1, r7
 afe:	b825      	st.w      	r1, (r14, 0x14)
		if (tRet == CSI_ERROR)
 b00:	b846      	st.w      	r2, (r14, 0x18)
	for (i=0; i<wFullPageNum; i++)
 b02:	9843      	ld.w      	r2, (r14, 0xc)
 b04:	6492      	cmpne      	r4, r2
 b06:	0824      	bt      	0xb4e	// b4e <csi_ifc_program+0xca>
	if (wLen1){
 b08:	9841      	ld.w      	r2, (r14, 0x4)
 b0a:	3a40      	cmpnei      	r2, 0
 b0c:	0fc7      	bf      	0xa9a	// a9a <csi_ifc_program+0x16>
		tRet = (csi_error_t)apt_ifc_wr_nword(ptIfcBase, wFlashType, wAddr+(wLen0<<2) + wFullPageNum*(wPageSize<<2), wLen1, & *wData+(wLen0+wPageSize*wFullPageNum));
 b0e:	4466      	lsli      	r3, r4, 6
 b10:	9842      	ld.w      	r2, (r14, 0x8)
 b12:	614c      	addu      	r5, r3
 b14:	4428      	lsli      	r1, r4, 8
 b16:	4562      	lsli      	r3, r5, 2
 b18:	6c1b      	mov      	r0, r6
 b1a:	608c      	addu      	r2, r3
 b1c:	6ccb      	mov      	r3, r2
 b1e:	9844      	ld.w      	r2, (r14, 0x10)
 b20:	6048      	addu      	r1, r2
 b22:	9840      	ld.w      	r2, (r14, 0x0)
 b24:	6048      	addu      	r1, r2
 b26:	9841      	ld.w      	r2, (r14, 0x4)
 b28:	e3ffff10 	bsr      	0x948	// 948 <apt_ifc_wr_nword.isra.1>
 b2c:	6cc3      	mov      	r3, r0
		while (csi_ifc_get_status(ptIfcBase).busy);	
 b2e:	6c1b      	mov      	r0, r6
 b30:	6d0f      	mov      	r4, r3
 b32:	e3ffff9f 	bsr      	0xa70	// a70 <csi_ifc_get_status>
 b36:	e4002001 	andi      	r0, r0, 1
 b3a:	6cd3      	mov      	r3, r4
 b3c:	3840      	cmpnei      	r0, 0
 b3e:	0bf8      	bt      	0xb2e	// b2e <csi_ifc_program+0xaa>
 b40:	07ad      	br      	0xa9a	// a9a <csi_ifc_program+0x16>
			wLen1 = 0;
 b42:	3200      	movi      	r2, 0
 b44:	6d4f      	mov      	r5, r3
			wFullPageNum = 0;
 b46:	3300      	movi      	r3, 0
			wLen1 = 0;
 b48:	b841      	st.w      	r2, (r14, 0x4)
			wFullPageNum = 0;
 b4a:	b863      	st.w      	r3, (r14, 0xc)
 b4c:	07c0      	br      	0xacc	// acc <csi_ifc_program+0x48>
		tRet = (csi_error_t)apt_ifc_wr_nword(ptIfcBase, wFlashType, wAddr+ (wLen0<<2)+(wPageSize<<2)*i, wPageSize, & *wData+(wLen0+wPageSize*i));
 b4e:	9842      	ld.w      	r2, (r14, 0x8)
 b50:	9865      	ld.w      	r3, (r14, 0x14)
 b52:	6c5f      	mov      	r1, r7
 b54:	60dc      	addu      	r3, r7
 b56:	6c1b      	mov      	r0, r6
 b58:	60c8      	addu      	r3, r2
 b5a:	3240      	movi      	r2, 64
 b5c:	e3fffef6 	bsr      	0x948	// 948 <apt_ifc_wr_nword.isra.1>
 b60:	6cc3      	mov      	r3, r0
		while (csi_ifc_get_status(ptIfcBase).busy);	
 b62:	6c1b      	mov      	r0, r6
 b64:	b867      	st.w      	r3, (r14, 0x1c)
 b66:	e3ffff85 	bsr      	0xa70	// a70 <csi_ifc_get_status>
 b6a:	e4002001 	andi      	r0, r0, 1
 b6e:	9867      	ld.w      	r3, (r14, 0x1c)
 b70:	3840      	cmpnei      	r0, 0
 b72:	0bf8      	bt      	0xb62	// b62 <csi_ifc_program+0xde>
		if (tRet == CSI_ERROR)
 b74:	9846      	ld.w      	r2, (r14, 0x18)
 b76:	27ff      	addi      	r7, 256
 b78:	648e      	cmpne      	r3, r2
 b7a:	0f8e      	bf      	0xa96	// a96 <csi_ifc_program+0x12>
	for (i=0; i<wFullPageNum; i++)
 b7c:	2400      	addi      	r4, 1
 b7e:	07c2      	br      	0xb02	// b02 <csi_ifc_program+0x7e>

00000b80 <delay_ums>:
 * 
 *  \param[in] t: delay timer; unit: 10us systick = 48M
 *  \return none
 */ 
void delay_ums(uint32_t t)
{
 b80:	1423      	subi      	r14, r14, 12
	volatile uint32_t i,j ,k=0;
 b82:	3300      	movi      	r3, 0
 b84:	b862      	st.w      	r3, (r14, 0x8)
	j = 25* t;
 b86:	3319      	movi      	r3, 25
 b88:	7c0c      	mult      	r0, r3
 b8a:	b801      	st.w      	r0, (r14, 0x4)
	for ( i = 0; i < j; i++ )
 b8c:	3300      	movi      	r3, 0
 b8e:	b860      	st.w      	r3, (r14, 0x0)
 b90:	9840      	ld.w      	r2, (r14, 0x0)
 b92:	9861      	ld.w      	r3, (r14, 0x4)
 b94:	64c8      	cmphs      	r2, r3
 b96:	0c03      	bf      	0xb9c	// b9c <delay_ums+0x1c>
	{
		k++;
	}
}
 b98:	1403      	addi      	r14, r14, 12
 b9a:	783c      	jmp      	r15
		k++;
 b9c:	9862      	ld.w      	r3, (r14, 0x8)
 b9e:	2300      	addi      	r3, 1
 ba0:	b862      	st.w      	r3, (r14, 0x8)
	for ( i = 0; i < j; i++ )
 ba2:	9860      	ld.w      	r3, (r14, 0x0)
 ba4:	2300      	addi      	r3, 1
 ba6:	07f4      	br      	0xb8e	// b8e <delay_ums+0xe>

00000ba8 <csi_iwdt_open>:
 * 
 *  \param[in] none
 *  \return none
 */ 
void csi_iwdt_open(void)
{
 ba8:	14d1      	push      	r4, r15
	SYSCON -> IWDEDR = EN_IWDT | IWDTE_KEY;
 baa:	1072      	lrw      	r3, 0x2000000c	// bf0 <csi_iwdt_open+0x48>
 bac:	ea227887 	movih      	r2, 30855
 bb0:	9320      	ld.w      	r1, (r3, 0x0)
 bb2:	6d0f      	mov      	r4, r3
 bb4:	dc41202f 	st.w      	r2, (r1, 0xbc)
	while((SYSCON->IWDCR & IWDT_ST) != IWDT_BUSY);
 bb8:	3280      	movi      	r2, 128
 bba:	4245      	lsli      	r2, r2, 5
 bbc:	d861202d 	ld.w      	r3, (r1, 0xb4)
 bc0:	68c8      	and      	r3, r2
 bc2:	3b40      	cmpnei      	r3, 0
 bc4:	0ffc      	bf      	0xbbc	// bbc <csi_iwdt_open+0x14>
	delay_ums(5);
 bc6:	3005      	movi      	r0, 5
 bc8:	e3ffffdc 	bsr      	0xb80	// b80 <delay_ums>
	SYSCON -> IWDCNT = (SYSCON -> IWDCNT & (~IWDT_CLR_MSK)) | IWDT_CLR << IWDT_CLR_POS;
 bcc:	9440      	ld.w      	r2, (r4, 0x0)
 bce:	3181      	movi      	r1, 129
 bd0:	d862202e 	ld.w      	r3, (r2, 0xb8)
 bd4:	4138      	lsli      	r1, r1, 24
 bd6:	2900      	subi      	r1, 1
 bd8:	68c4      	and      	r3, r1
 bda:	31b4      	movi      	r1, 180
 bdc:	4137      	lsli      	r1, r1, 23
 bde:	6cc4      	or      	r3, r1
 be0:	dc62202e 	st.w      	r3, (r2, 0xb8)
	while((SYSCON->IWDCNT & IWDT_CLR_BUSY) == IWDT_CLR_BUSY);
 be4:	d862202e 	ld.w      	r3, (r2, 0xb8)
 be8:	3bdf      	btsti      	r3, 31
 bea:	0bfd      	bt      	0xbe4	// be4 <csi_iwdt_open+0x3c>
}
 bec:	1491      	pop      	r4, r15
 bee:	0000      	bkpt
 bf0:	2000000c 	.long	0x2000000c

00000bf4 <csi_iwdt_close>:
 *  \param[in] none
 *  \return none
 */ 
void csi_iwdt_close(void)
{
	csp_iwdt_disable(SYSCON);
 bf4:	106b      	lrw      	r3, 0x2000000c	// c20 <csi_iwdt_close+0x2c>
	SYSCON -> IWDCNT = (SYSCON -> IWDCNT & (~IWDT_CLR_MSK)) | IWDT_CLR << IWDT_CLR_POS;
 bf6:	3181      	movi      	r1, 129
	csp_iwdt_disable(SYSCON);
 bf8:	9340      	ld.w      	r2, (r3, 0x0)
	ptSysconBase -> IWDEDR = DIS_IWDT | IWDTE_KEY;
 bfa:	106b      	lrw      	r3, 0x788755aa	// c24 <csi_iwdt_close+0x30>
	SYSCON -> IWDCNT = (SYSCON -> IWDCNT & (~IWDT_CLR_MSK)) | IWDT_CLR << IWDT_CLR_POS;
 bfc:	4138      	lsli      	r1, r1, 24
 bfe:	dc62202f 	st.w      	r3, (r2, 0xbc)
 c02:	2900      	subi      	r1, 1
 c04:	d862202e 	ld.w      	r3, (r2, 0xb8)
 c08:	68c4      	and      	r3, r1
 c0a:	31b4      	movi      	r1, 180
 c0c:	4137      	lsli      	r1, r1, 23
 c0e:	6cc4      	or      	r3, r1
 c10:	dc62202e 	st.w      	r3, (r2, 0xb8)
	while((SYSCON->IWDCNT & IWDT_CLR_BUSY) == IWDT_CLR_BUSY);
 c14:	d862202e 	ld.w      	r3, (r2, 0xb8)
 c18:	3bdf      	btsti      	r3, 31
 c1a:	0bfd      	bt      	0xc14	// c14 <csi_iwdt_close+0x20>
}
 c1c:	783c      	jmp      	r15
 c1e:	0000      	bkpt
 c20:	2000000c 	.long	0x2000000c
 c24:	788755aa 	.long	0x788755aa

00000c28 <csi_iwdt_feed>:
 *  \param[in] none
 *  \return none
 */
void csi_iwdt_feed(void)
{
	csp_iwdt_clr(SYSCON);
 c28:	1069      	lrw      	r3, 0x2000000c	// c4c <csi_iwdt_feed+0x24>
	ptSysconBase -> IWDCNT = (ptSysconBase -> IWDCNT & (~IWDT_CLR_MSK)) | IWDT_CLR << IWDT_CLR_POS;
 c2a:	3181      	movi      	r1, 129
 c2c:	9340      	ld.w      	r2, (r3, 0x0)
 c2e:	4138      	lsli      	r1, r1, 24
 c30:	d862202e 	ld.w      	r3, (r2, 0xb8)
 c34:	2900      	subi      	r1, 1
 c36:	68c4      	and      	r3, r1
 c38:	31b4      	movi      	r1, 180
 c3a:	4137      	lsli      	r1, r1, 23
 c3c:	6cc4      	or      	r3, r1
 c3e:	dc62202e 	st.w      	r3, (r2, 0xb8)
	while((ptSysconBase->IWDCNT & IWDT_CLR_BUSY) == IWDT_CLR_BUSY);
 c42:	d862202e 	ld.w      	r3, (r2, 0xb8)
 c46:	3bdf      	btsti      	r3, 31
 c48:	0bfd      	bt      	0xc42	// c42 <csi_iwdt_feed+0x1a>
}
 c4a:	783c      	jmp      	r15
 c4c:	2000000c 	.long	0x2000000c

00000c50 <apt_get_pin_name_addr>:
 * 
 *  \param[in] ePinName: gpio pin name
 *  \return pointer of pin infor
 */ 
static unsigned int *apt_get_pin_name_addr(pin_name_e ePinName)
{
 c50:	106d      	lrw      	r3, 0x20000040	// c84 <apt_get_pin_name_addr+0x34>
	static unsigned int wPinInfo[2];
	
	if(ePinName > PB011)
 c52:	eb000029 	cmphsi      	r0, 42
 c56:	0c07      	bf      	0xc64	// c64 <apt_get_pin_name_addr+0x14>
	{
		wPinInfo[0] = APB_GPIOC0_BASE;				//PC0
 c58:	104c      	lrw      	r2, 0x60004000	// c88 <apt_get_pin_name_addr+0x38>
		wPinInfo[1] = ePinName - 42;
 c5a:	2829      	subi      	r0, 42
		wPinInfo[0] = APB_GPIOC0_BASE;				//PC0
 c5c:	b340      	st.w      	r2, (r3, 0x0)
		wPinInfo[1] = ePinName - 16;
	}
	else
	{
		wPinInfo[0] = APB_GPIOA0_BASE;				//PA0
		wPinInfo[1] = ePinName;
 c5e:	b301      	st.w      	r0, (r3, 0x4)
	}	
	
	return wPinInfo;
}
 c60:	1009      	lrw      	r0, 0x20000040	// c84 <apt_get_pin_name_addr+0x34>
 c62:	783c      	jmp      	r15
	else if(ePinName > PA113)
 c64:	381d      	cmphsi      	r0, 30
 c66:	0c05      	bf      	0xc70	// c70 <apt_get_pin_name_addr+0x20>
		wPinInfo[0] = APB_GPIOB0_BASE;				//PB0
 c68:	1049      	lrw      	r2, 0x60002000	// c8c <apt_get_pin_name_addr+0x3c>
		wPinInfo[1] = ePinName - 30;
 c6a:	281d      	subi      	r0, 30
		wPinInfo[0] = APB_GPIOB0_BASE;				//PB0
 c6c:	b340      	st.w      	r2, (r3, 0x0)
 c6e:	07f8      	br      	0xc5e	// c5e <apt_get_pin_name_addr+0xe>
	else if(ePinName > PA015)
 c70:	380f      	cmphsi      	r0, 16
 c72:	0c05      	bf      	0xc7c	// c7c <apt_get_pin_name_addr+0x2c>
		wPinInfo[0] = APB_GPIOA1_BASE;				//PA1
 c74:	1047      	lrw      	r2, 0x60001000	// c90 <apt_get_pin_name_addr+0x40>
		wPinInfo[1] = ePinName - 16;
 c76:	280f      	subi      	r0, 16
		wPinInfo[0] = APB_GPIOA1_BASE;				//PA1
 c78:	b340      	st.w      	r2, (r3, 0x0)
 c7a:	07f2      	br      	0xc5e	// c5e <apt_get_pin_name_addr+0xe>
		wPinInfo[0] = APB_GPIOA0_BASE;				//PA0
 c7c:	32c0      	movi      	r2, 192
 c7e:	4257      	lsli      	r2, r2, 23
 c80:	b340      	st.w      	r2, (r3, 0x0)
 c82:	07ee      	br      	0xc5e	// c5e <apt_get_pin_name_addr+0xe>
 c84:	20000040 	.long	0x20000040
 c88:	60004000 	.long	0x60004000
 c8c:	60002000 	.long	0x60002000
 c90:	60001000 	.long	0x60001000

00000c94 <csi_pin_set_mux>:
 *  \param[in] ePinName: gpio pin name
 *  \param[in] ePinFunc: gpio pin function
 *  \return enone
 */  
void csi_pin_set_mux(pin_name_e ePinName, pin_func_e ePinFunc)
{
 c94:	14d2      	push      	r4-r5, r15
 c96:	6d47      	mov      	r5, r1
	csp_gpio_t *ptGpioBase = NULL;
	unsigned int *ptPinInfo = NULL;
	
	ptPinInfo = apt_get_pin_name_addr(ePinName);
 c98:	e3ffffdc 	bsr      	0xc50	// c50 <apt_get_pin_name_addr>
	ptGpioBase = (csp_gpio_t *)ptPinInfo[0];						//pin addr
	ePinName = (pin_name_e)ptPinInfo[1];							//pin
 c9c:	9061      	ld.w      	r3, (r0, 0x4)
	ptGpioBase = (csp_gpio_t *)ptPinInfo[0];						//pin addr
 c9e:	9080      	ld.w      	r4, (r0, 0x0)

	if(ePinName < 8)
 ca0:	3b07      	cmphsi      	r3, 8
 ca2:	080c      	bt      	0xcba	// cba <csi_pin_set_mux+0x26>
		ptGpioBase->CONLR =(ptGpioBase->CONLR & ~(0xF << 4*ePinName)) | (ePinFunc << 4*ePinName);
 ca4:	4362      	lsli      	r3, r3, 2
 ca6:	310f      	movi      	r1, 15
 ca8:	9440      	ld.w      	r2, (r4, 0x0)
 caa:	704c      	lsl      	r1, r3
 cac:	c4222041 	andn      	r1, r2, r1
 cb0:	c4654023 	lsl      	r3, r5, r3
 cb4:	6cc4      	or      	r3, r1
 cb6:	b460      	st.w      	r3, (r4, 0x0)
	else
		ptGpioBase->CONHR =(ptGpioBase->CONHR & ~(0xF << 4*(ePinName-8))) | (ePinFunc << 4*(ePinName-8));	
	
}
 cb8:	1492      	pop      	r4-r5, r15
		ptGpioBase->CONHR =(ptGpioBase->CONHR & ~(0xF << 4*(ePinName-8))) | (ePinFunc << 4*(ePinName-8));	
 cba:	c7a05022 	bmaski      	r2, 30
 cbe:	2a06      	subi      	r2, 7
 cc0:	60c8      	addu      	r3, r2
 cc2:	320f      	movi      	r2, 15
 cc4:	4362      	lsli      	r3, r3, 2
 cc6:	9421      	ld.w      	r1, (r4, 0x4)
 cc8:	708c      	lsl      	r2, r3
 cca:	c4412042 	andn      	r2, r1, r2
 cce:	c4654023 	lsl      	r3, r5, r3
 cd2:	6cc8      	or      	r3, r2
 cd4:	b461      	st.w      	r3, (r4, 0x4)
}
 cd6:	07f1      	br      	0xcb8	// cb8 <csi_pin_set_mux+0x24>

00000cd8 <csi_pin_read>:
 * 
 *  \param[in] ePinName: gpio pin name, defined in soc.h.
 *  \return According to the bit mask, the corresponding pin status is obtained
 */
uint32_t csi_pin_read(pin_name_e ePinName)
{
 cd8:	14d0      	push      	r15
	csp_gpio_t *ptGpioBase = NULL;
	unsigned int *ptPinInfo = NULL;
	
	ptPinInfo = apt_get_pin_name_addr(ePinName);
 cda:	e3ffffbb 	bsr      	0xc50	// c50 <apt_get_pin_name_addr>
	ptGpioBase = (csp_gpio_t *)ptPinInfo[0];	
 cde:	9060      	ld.w      	r3, (r0, 0x0)
	ePinName = (pin_name_e)ptPinInfo[1];
		
	return (csp_gpio_read_input_port(ptGpioBase) & (0x01ul << ePinName));
 ce0:	9041      	ld.w      	r2, (r0, 0x4)
 ce2:	3001      	movi      	r0, 1
    return ptGpioBase->ODSR;
}

static inline uint32_t csp_gpio_read_input_port(csp_gpio_t *ptGpioBase)
{
    return ptGpioBase->PSDR;
 ce4:	9366      	ld.w      	r3, (r3, 0x18)
 ce6:	7008      	lsl      	r0, r2
 ce8:	680c      	and      	r0, r3
}
 cea:	1490      	pop      	r15

00000cec <csi_hfosc_enable>:
						3 - 6KHz
 *  \return csi_error_t.
 */
csi_error_t csi_hfosc_enable(uint8_t byFre)
{
	csp_set_hfosc_fre(SYSCON, byFre);	
 cec:	1069      	lrw      	r3, 0x2000000c	// d10 <csi_hfosc_enable+0x24>
	ptSysconBase->OPT1 = (ptSysconBase->OPT1 & (~HFO_MSK)) | wFreq << 4;
 cee:	4004      	lsli      	r0, r0, 4
 cf0:	9340      	ld.w      	r2, (r3, 0x0)
	SYSCON->GCER = HFOSC;
	//wait for HFOSC to stable
	while(!(csp_get_ckst(SYSCON)& HFOSC));
 cf2:	3110      	movi      	r1, 16
 cf4:	9279      	ld.w      	r3, (r2, 0x64)
 cf6:	3b84      	bclri      	r3, 4
 cf8:	3b85      	bclri      	r3, 5
 cfa:	6c0c      	or      	r0, r3
	SYSCON->GCER = HFOSC;
 cfc:	3310      	movi      	r3, 16
 cfe:	b219      	st.w      	r0, (r2, 0x64)
 d00:	b261      	st.w      	r3, (r2, 0x4)
	return (uint32_t) ((ptSysconBase->CKST) & 0x13f);
 d02:	9264      	ld.w      	r3, (r2, 0x10)
	while(!(csp_get_ckst(SYSCON)& HFOSC));
 d04:	68c4      	and      	r3, r1
 d06:	3b40      	cmpnei      	r3, 0
 d08:	0ffd      	bf      	0xd02	// d02 <csi_hfosc_enable+0x16>
	return CSI_OK;
	
//	csp_hfosc_enable(SYSCON_REG_BASE, byFre);
//	return CSI_OK;
}
 d0a:	3000      	movi      	r0, 0
 d0c:	783c      	jmp      	r15
 d0e:	0000      	bkpt
 d10:	2000000c 	.long	0x2000000c

00000d14 <csp_set_clksrc>:
	ptSysconBase->SCLKCR = (ptSysconBase->SCLKCR & (~SYSCLK_SRC_MSK)) | SCLK_KEY | wClkSrc;
 d14:	ea222dd3 	movih      	r2, 11731
 d18:	9067      	ld.w      	r3, (r0, 0x1c)
 d1a:	2a07      	subi      	r2, 8
 d1c:	68c8      	and      	r3, r2
 d1e:	ea22d22d 	movih      	r2, 53805
 d22:	6c48      	or      	r1, r2
 d24:	6c4c      	or      	r1, r3
 d26:	b027      	st.w      	r1, (r0, 0x1c)
	while((ptSysconBase->CKST & SYSCLK) == 0);
 d28:	9064      	ld.w      	r3, (r0, 0x10)
 d2a:	e4632100 	andi      	r3, r3, 256
 d2e:	3b40      	cmpnei      	r3, 0
 d30:	0ffc      	bf      	0xd28	// d28 <csp_set_clksrc+0x14>
}
 d32:	783c      	jmp      	r15

00000d34 <csi_bootloader_sysclk_config>:
	tClkConfig.wPclk = tClkConfig.wSclk/(0x1<<tClkConfig.ePdiv);
	return ret;
}

csi_error_t csi_bootloader_sysclk_config(void)
{	csi_error_t ret = CSI_OK;
 d34:	14d2      	push      	r4-r5, r15
	uint8_t byFlashLp = 0;

	ret = csi_hfosc_enable(0);
 d36:	3000      	movi      	r0, 0
	IFC->CEDR = IFC_CLKEN;
	IFC->MR = HIGH_SPEED | PF_WAIT2;
	csp_set_sdiv(SYSCON, 1);
 d38:	10b1      	lrw      	r5, 0x2000000c	// d7c <csi_bootloader_sysclk_config+0x48>
	ret = csi_hfosc_enable(0);
 d3a:	e3ffffd9 	bsr      	0xcec	// cec <csi_hfosc_enable>
	IFC->CEDR = IFC_CLKEN;
 d3e:	1071      	lrw      	r3, 0x20000008	// d80 <csi_bootloader_sysclk_config+0x4c>
 d40:	3201      	movi      	r2, 1
 d42:	9360      	ld.w      	r3, (r3, 0x0)
	ret = csi_hfosc_enable(0);
 d44:	6d03      	mov      	r4, r0
	IFC->CEDR = IFC_CLKEN;
 d46:	b341      	st.w      	r2, (r3, 0x4)
	IFC->MR = HIGH_SPEED | PF_WAIT2;
 d48:	104f      	lrw      	r2, 0x10002	// d84 <csi_bootloader_sysclk_config+0x50>
	csp_set_sdiv(SYSCON, 1);
 d4a:	9500      	ld.w      	r0, (r5, 0x0)
	IFC->MR = HIGH_SPEED | PF_WAIT2;
 d4c:	b345      	st.w      	r2, (r3, 0x14)
	ptSysconBase->SCLKCR =  (ptSysconBase->SCLKCR & (~HCLK_DIV_MSK)) | SCLK_KEY | (wSdiv << 8);
 d4e:	104f      	lrw      	r2, 0x2dd2f0ff	// d88 <csi_bootloader_sysclk_config+0x54>
 d50:	9067      	ld.w      	r3, (r0, 0x1c)
 d52:	68c8      	and      	r3, r2
 d54:	104e      	lrw      	r2, 0xd22d0100	// d8c <csi_bootloader_sysclk_config+0x58>
 d56:	6cc8      	or      	r3, r2
 d58:	b067      	st.w      	r3, (r0, 0x1c)
	csp_set_clksrc(SYSCON, SRC_HFOSC);
 d5a:	3102      	movi      	r1, 2
 d5c:	e3ffffdc 	bsr      	0xd14	// d14 <csp_set_clksrc>
	csp_eflash_lpmd_enable(SYSCON, (bool)byFlashLp);
 d60:	9540      	ld.w      	r2, (r5, 0x0)
	ptSysconBase->PCLKCR =  (ptSysconBase->PCLKCR & (~PCLK_DIV_MSK)) | PCLK_KEY | (wSdiv << 8);
 d62:	102c      	lrw      	r1, 0x3cc3f0ff	// d90 <csi_bootloader_sysclk_config+0x5c>
	ptSysconBase->OPT1 = (ptSysconBase->OPT1 & ~FLASH_LPMODE_MSK)| (bEnable << FLASH_LPMODE_POS);
 d64:	9279      	ld.w      	r3, (r2, 0x64)
 d66:	3b8f      	bclri      	r3, 15
 d68:	b279      	st.w      	r3, (r2, 0x64)
	csp_set_pdiv(SYSCON, 0);
	
	return ret;
}
 d6a:	6c13      	mov      	r0, r4
	ptSysconBase->PCLKCR =  (ptSysconBase->PCLKCR & (~PCLK_DIV_MSK)) | PCLK_KEY | (wSdiv << 8);
 d6c:	9268      	ld.w      	r3, (r2, 0x20)
 d6e:	68c4      	and      	r3, r1
 d70:	ea21c33c 	movih      	r1, 49980
 d74:	6cc4      	or      	r3, r1
 d76:	b268      	st.w      	r3, (r2, 0x20)
 d78:	1492      	pop      	r4-r5, r15
 d7a:	0000      	bkpt
 d7c:	2000000c 	.long	0x2000000c
 d80:	20000008 	.long	0x20000008
 d84:	00010002 	.long	0x00010002
 d88:	2dd2f0ff 	.long	0x2dd2f0ff
 d8c:	d22d0100 	.long	0xd22d0100
 d90:	3cc3f0ff 	.long	0x3cc3f0ff

00000d94 <soc_clk_enable>:
 *
 *  \param[in] wModule: module name
 *  \return none
 */
void soc_clk_enable(int32_t wModule)
{
 d94:	1068      	lrw      	r3, 0x2000000c	// db4 <soc_clk_enable+0x20>
    //TODO
	if(wModule < 32U)
 d96:	381f      	cmphsi      	r0, 32
		csp_pcer0_clk_en(SYSCON, (uint32_t)wModule);
 d98:	9340      	ld.w      	r2, (r3, 0x0)
	if(wModule < 32U)
 d9a:	0806      	bt      	0xda6	// da6 <soc_clk_enable+0x12>
	ptSysconBase->PCER0 = (0x01ul << wIdx);
 d9c:	3301      	movi      	r3, 1
 d9e:	c4034020 	lsl      	r0, r3, r0
 da2:	b20a      	st.w      	r0, (r2, 0x28)
	else
		csp_pcer1_clk_en(SYSCON, (uint32_t)wModule - 32U);
}
 da4:	783c      	jmp      	r15
	ptSysconBase->PCER1 = (0x01ul << wIdx);
 da6:	3301      	movi      	r3, 1
		csp_pcer1_clk_en(SYSCON, (uint32_t)wModule - 32U);
 da8:	281f      	subi      	r0, 32
 daa:	c4034020 	lsl      	r0, r3, r0
 dae:	b20d      	st.w      	r0, (r2, 0x34)
}
 db0:	07fa      	br      	0xda4	// da4 <soc_clk_enable+0x10>
 db2:	0000      	bkpt
 db4:	2000000c 	.long	0x2000000c

00000db8 <csi_uart_putc>:
 *  \param[in] byData: the character to be send
 *  \return  none
 */
void csi_uart_putc(csp_uart_t *ptUartBase, uint8_t byData)
{
	while((csp_uart_get_sr(ptUartBase) & UART_TX_FULL));		
 db8:	3201      	movi      	r2, 1
	return (uint32_t)(ptUartBase->SR);
 dba:	9061      	ld.w      	r3, (r0, 0x4)
 dbc:	68c8      	and      	r3, r2
 dbe:	3b40      	cmpnei      	r3, 0
 dc0:	0bfd      	bt      	0xdba	// dba <csi_uart_putc+0x2>
	ptUartBase->DATA = byByte;
 dc2:	b020      	st.w      	r1, (r0, 0x0)
	csp_uart_set_data(ptUartBase, byData);
}
 dc4:	783c      	jmp      	r15
	...

00000dc8 <__main>:
extern char _bss_start[];
extern char _ebss[];


void __main( void ) 
{
 dc8:	14d0      	push      	r15

  /* if the start of data (dst)
     is not equal to end of text (src) then
     copy it, else it's already in the right place
     */
  if( _start_data != _end_rodata ) {
 dca:	1009      	lrw      	r0, 0x20000000	// dec <__main+0x24>
 dcc:	1029      	lrw      	r1, 0xe88	// df0 <__main+0x28>
 dce:	6442      	cmpne      	r0, r1
 dd0:	0c05      	bf      	0xdda	// dda <__main+0x12>
//    __memcpy_fast( dst, src, (_end_data - _start_data));
    memcpy( dst, src, (_end_data - _start_data));
 dd2:	1049      	lrw      	r2, 0x20000018	// df4 <__main+0x2c>
 dd4:	6082      	subu      	r2, r0
 dd6:	e3fffa4d 	bsr      	0x270	// 270 <__memcpy_fast>
  }

  /* zero the bss 
   */
  if( _ebss - _bss_start ) {
 dda:	1048      	lrw      	r2, 0x20000148	// df8 <__main+0x30>
 ddc:	1008      	lrw      	r0, 0x20000018	// dfc <__main+0x34>
 dde:	640a      	cmpne      	r2, r0
 de0:	0c05      	bf      	0xdea	// dea <__main+0x22>
//    __memset_fast( _bss_start, 0x00, ( _ebss - _bss_start ));
    memset( _bss_start, 0x00, ( _ebss - _bss_start ));
 de2:	3100      	movi      	r1, 0
 de4:	6082      	subu      	r2, r0
 de6:	e3fff9f1 	bsr      	0x1c8	// 1c8 <__memset_fast>
  }

	
}
 dea:	1490      	pop      	r15
 dec:	20000000 	.long	0x20000000
 df0:	00000e88 	.long	0x00000e88
 df4:	20000018 	.long	0x20000018
 df8:	20000148 	.long	0x20000148
 dfc:	20000018 	.long	0x20000018

00000e00 <uart1_int_handler>:
{
    // ISR content ...
	//uart_irqhandler(UART0, 0);
}
void uart1_int_handler(void) 
{
 e00:	1460      	nie
 e02:	1462      	ipush
 e04:	14d0      	push      	r15
    // ISR content ...

	bootloader_prog_irqhandler(UART1);
 e06:	1065      	lrw      	r3, 0x20000010	// e18 <uart1_int_handler+0x18>
 e08:	9300      	ld.w      	r0, (r3, 0x0)
 e0a:	e3fffabd 	bsr      	0x384	// 384 <bootloader_prog_irqhandler>
}
 e0e:	d9ee2000 	ld.w      	r15, (r14, 0x0)
 e12:	1401      	addi      	r14, r14, 4
 e14:	1463      	ipop
 e16:	1461      	nir
 e18:	20000010 	.long	0x20000010

00000e1c <bt0_int_handler>:
void cmp_int_handler(void) 
{

}
void bt0_int_handler(void) 
{
 e1c:	1460      	nie
 e1e:	1462      	ipush
 e20:	14d0      	push      	r15
    // ISR content ...
	bootloader_bt_irqhandler(BT0);
 e22:	1065      	lrw      	r3, 0x20000004	// e34 <bt0_int_handler+0x18>
 e24:	9300      	ld.w      	r0, (r3, 0x0)
 e26:	e3fffa91 	bsr      	0x348	// 348 <bootloader_bt_irqhandler>
}
 e2a:	d9ee2000 	ld.w      	r15, (r14, 0x0)
 e2e:	1401      	addi      	r14, r14, 4
 e30:	1463      	ipop
 e32:	1461      	nir
 e34:	20000004 	.long	0x20000004

00000e38 <MisalignedHandler>:
    // ISR content ...
	while(1){};
}

void MisalignedHandler(void) 
{
 e38:	1460      	nie
 e3a:	1462      	ipush
 e3c:	0400      	br      	0xe3c	// e3c <MisalignedHandler+0x4>

00000e3e <AccessErrHandler>:
    // ISR content ...
	while(1){};
}

void AccessErrHandler(void) 
{
 e3e:	1460      	nie
 e40:	1462      	ipush
 e42:	0400      	br      	0xe42	// e42 <AccessErrHandler+0x4>

00000e44 <BreakPointHandler>:
    // ISR content ...
	while(1){};
}

void BreakPointHandler(void) 
{
 e44:	1460      	nie
 e46:	1462      	ipush
 e48:	0400      	br      	0xe48	// e48 <BreakPointHandler+0x4>

00000e4a <PendTrapHandler>:
	while(1){};

}

void PendTrapHandler(void) 
{
 e4a:	1460      	nie
 e4c:	1462      	ipush
 e4e:	0400      	br      	0xe4e	// e4e <PendTrapHandler+0x4>
