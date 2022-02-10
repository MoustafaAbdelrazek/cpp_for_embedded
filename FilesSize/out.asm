
FilesSize/out.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 c5 44 00 00 	mov    0x44c5(%rip),%rax        # 1400054e0 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 c6 44 00 00 	mov    0x44c6(%rip),%rax        # 1400054f0 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 c9 44 00 00 	mov    0x44c9(%rip),%rax        # 140005500 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 3c 44 00 00 	mov    0x443c(%rip),%rax        # 140005480 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 6f 44 00 00 	mov    0x446f(%rip),%rax        # 1400054d0 <.refptr.__mingw_app_type>
   140001061:	89 0d b9 6f 00 00    	mov    %ecx,0x6fb9(%rip)        # 140008020 <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 41 1f 00 00       	call   140002fb8 <__set_app_type>
   140001077:	e8 b4 1e 00 00       	call   140002f30 <__p__fmode>
   14000107c:	48 8b 15 1d 45 00 00 	mov    0x451d(%rip),%rdx        # 1400055a0 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 b4 1e 00 00       	call   140002f40 <__p__commode>
   14000108c:	48 8b 15 ed 44 00 00 	mov    0x44ed(%rip),%rdx        # 140005580 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 a4 0e 00 00       	call   140001f40 <_setargv>
   14000109c:	48 8b 05 4d 43 00 00 	mov    0x434d(%rip),%rax        # 1400053f0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret    
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 fe 1e 00 00       	call   140002fb8 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d c1 44 00 00 	mov    0x44c1(%rip),%rcx        # 1400055c0 <.refptr._matherr>
   1400010ff:	e8 9c 15 00 00       	call   1400026a0 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret    
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 95 44 00 00 	mov    0x4495(%rip),%rax        # 1400055d0 <.refptr._newmode>
   14000113b:	4c 8d 05 e6 6e 00 00 	lea    0x6ee6(%rip),%r8        # 140008028 <envp>
   140001142:	48 8d 15 e7 6e 00 00 	lea    0x6ee7(%rip),%rdx        # 140008030 <argv>
   140001149:	48 8d 0d e8 6e 00 00 	lea    0x6ee8(%rip),%rcx        # 140008038 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 c0 6e 00 00    	mov    %eax,0x6ec0(%rip)        # 140008018 <startinfo>
   140001158:	48 8d 05 b9 6e 00 00 	lea    0x6eb9(%rip),%rax        # 140008018 <startinfo>
   14000115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001164:	48 8b 05 25 44 00 00 	mov    0x4425(%rip),%rax        # 140005590 <.refptr._dowildcard>
   14000116b:	44 8b 08             	mov    (%rax),%r9d
   14000116e:	e8 35 1e 00 00       	call   140002fa8 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret    
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 55                	push   %r13
   140001182:	41 54                	push   %r12
   140001184:	55                   	push   %rbp
   140001185:	57                   	push   %rdi
   140001186:	56                   	push   %rsi
   140001187:	53                   	push   %rbx
   140001188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   14000118f:	b9 0d 00 00 00       	mov    $0xd,%ecx
   140001194:	31 c0                	xor    %eax,%eax
   140001196:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
   14000119b:	4c 89 c7             	mov    %r8,%rdi
   14000119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
   1400011a1:	48 8b 3d 28 43 00 00 	mov    0x4328(%rip),%rdi        # 1400054d0 <.refptr.__mingw_app_type>
   1400011a8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011ab:	45 85 c9             	test   %r9d,%r9d
   1400011ae:	0f 85 9c 02 00 00    	jne    140001450 <__tmainCRTStartup+0x2d0>
   1400011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011bb:	00 00 
   1400011bd:	48 8b 1d 5c 43 00 00 	mov    0x435c(%rip),%rbx        # 140005520 <.refptr.__native_startup_lock>
   1400011c4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011c8:	31 ed                	xor    %ebp,%ebp
   1400011ca:	4c 8b 25 73 81 00 00 	mov    0x8173(%rip),%r12        # 140009344 <__imp_Sleep>
   1400011d1:	eb 16                	jmp    1400011e9 <__tmainCRTStartup+0x69>
   1400011d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400011d8:	48 39 c6             	cmp    %rax,%rsi
   1400011db:	0f 84 17 02 00 00    	je     1400013f8 <__tmainCRTStartup+0x278>
   1400011e1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011e6:	41 ff d4             	call   *%r12
   1400011e9:	48 89 e8             	mov    %rbp,%rax
   1400011ec:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011f1:	48 85 c0             	test   %rax,%rax
   1400011f4:	75 e2                	jne    1400011d8 <__tmainCRTStartup+0x58>
   1400011f6:	48 8b 35 33 43 00 00 	mov    0x4333(%rip),%rsi        # 140005530 <.refptr.__native_startup_state>
   1400011fd:	31 ed                	xor    %ebp,%ebp
   1400011ff:	8b 06                	mov    (%rsi),%eax
   140001201:	83 f8 01             	cmp    $0x1,%eax
   140001204:	0f 84 05 02 00 00    	je     14000140f <__tmainCRTStartup+0x28f>
   14000120a:	8b 06                	mov    (%rsi),%eax
   14000120c:	85 c0                	test   %eax,%eax
   14000120e:	0f 84 6c 02 00 00    	je     140001480 <__tmainCRTStartup+0x300>
   140001214:	c7 05 fe 6d 00 00 01 	movl   $0x1,0x6dfe(%rip)        # 14000801c <has_cctor>
   14000121b:	00 00 00 
   14000121e:	8b 06                	mov    (%rsi),%eax
   140001220:	83 f8 01             	cmp    $0x1,%eax
   140001223:	0f 84 fb 01 00 00    	je     140001424 <__tmainCRTStartup+0x2a4>
   140001229:	85 ed                	test   %ebp,%ebp
   14000122b:	0f 84 14 02 00 00    	je     140001445 <__tmainCRTStartup+0x2c5>
   140001231:	48 8b 05 38 42 00 00 	mov    0x4238(%rip),%rax        # 140005470 <.refptr.__dyn_tls_init_callback>
   140001238:	48 8b 00             	mov    (%rax),%rax
   14000123b:	48 85 c0             	test   %rax,%rax
   14000123e:	74 0c                	je     14000124c <__tmainCRTStartup+0xcc>
   140001240:	45 31 c0             	xor    %r8d,%r8d
   140001243:	ba 02 00 00 00       	mov    $0x2,%edx
   140001248:	31 c9                	xor    %ecx,%ecx
   14000124a:	ff d0                	call   *%rax
   14000124c:	e8 bf 10 00 00       	call   140002310 <_pei386_runtime_relocator>
   140001251:	48 8b 0d 58 43 00 00 	mov    0x4358(%rip),%rcx        # 1400055b0 <.refptr._gnu_exception_handler>
   140001258:	ff 15 de 80 00 00    	call   *0x80de(%rip)        # 14000933c <__imp_SetUnhandledExceptionFilter>
   14000125e:	48 8b 15 ab 42 00 00 	mov    0x42ab(%rip),%rdx        # 140005510 <.refptr.__mingw_oldexcpt_handler>
   140001265:	48 8d 0d 94 fd ff ff 	lea    -0x26c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000126c:	48 89 02             	mov    %rax,(%rdx)
   14000126f:	e8 fc 1c 00 00       	call   140002f70 <_set_invalid_parameter_handler>
   140001274:	e8 a7 0e 00 00       	call   140002120 <_fpreset>
   140001279:	48 8b 05 00 42 00 00 	mov    0x4200(%rip),%rax        # 140005480 <.refptr.__image_base__>
   140001280:	48 89 05 89 6d 00 00 	mov    %rax,0x6d89(%rip)        # 140008010 <__mingw_winmain_hInstance>
   140001287:	e8 c4 1c 00 00       	call   140002f50 <__p__acmdln>
   14000128c:	31 c9                	xor    %ecx,%ecx
   14000128e:	48 8b 00             	mov    (%rax),%rax
   140001291:	48 85 c0             	test   %rax,%rax
   140001294:	75 1c                	jne    1400012b2 <__tmainCRTStartup+0x132>
   140001296:	eb 58                	jmp    1400012f0 <__tmainCRTStartup+0x170>
   140001298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000129f:	00 
   1400012a0:	84 d2                	test   %dl,%dl
   1400012a2:	74 45                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012a4:	83 e1 01             	and    $0x1,%ecx
   1400012a7:	74 27                	je     1400012d0 <__tmainCRTStartup+0x150>
   1400012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400012ae:	48 83 c0 01          	add    $0x1,%rax
   1400012b2:	0f b6 10             	movzbl (%rax),%edx
   1400012b5:	80 fa 20             	cmp    $0x20,%dl
   1400012b8:	7e e6                	jle    1400012a0 <__tmainCRTStartup+0x120>
   1400012ba:	41 89 c8             	mov    %ecx,%r8d
   1400012bd:	41 83 f0 01          	xor    $0x1,%r8d
   1400012c1:	80 fa 22             	cmp    $0x22,%dl
   1400012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
   1400012c8:	eb e4                	jmp    1400012ae <__tmainCRTStartup+0x12e>
   1400012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012d0:	84 d2                	test   %dl,%dl
   1400012d2:	74 15                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400012d8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
   1400012dc:	48 83 c0 01          	add    $0x1,%rax
   1400012e0:	84 d2                	test   %dl,%dl
   1400012e2:	74 05                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012e4:	80 fa 20             	cmp    $0x20,%dl
   1400012e7:	7e ef                	jle    1400012d8 <__tmainCRTStartup+0x158>
   1400012e9:	48 89 05 18 6d 00 00 	mov    %rax,0x6d18(%rip)        # 140008008 <__mingw_winmain_lpCmdLine>
   1400012f0:	44 8b 07             	mov    (%rdi),%r8d
   1400012f3:	45 85 c0             	test   %r8d,%r8d
   1400012f6:	74 16                	je     14000130e <__tmainCRTStartup+0x18e>
   1400012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
   1400012fd:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001302:	0f 85 e0 00 00 00    	jne    1400013e8 <__tmainCRTStartup+0x268>
   140001308:	89 05 f2 2c 00 00    	mov    %eax,0x2cf2(%rip)        # 140004000 <__data_start__>
   14000130e:	48 63 2d 23 6d 00 00 	movslq 0x6d23(%rip),%rbp        # 140008038 <argc>
   140001315:	44 8d 65 01          	lea    0x1(%rbp),%r12d
   140001319:	4d 63 e4             	movslq %r12d,%r12
   14000131c:	49 c1 e4 03          	shl    $0x3,%r12
   140001320:	4c 89 e1             	mov    %r12,%rcx
   140001323:	e8 f0 1c 00 00       	call   140003018 <malloc>
   140001328:	4c 8b 2d 01 6d 00 00 	mov    0x6d01(%rip),%r13        # 140008030 <argv>
   14000132f:	48 89 c7             	mov    %rax,%rdi
   140001332:	85 ed                	test   %ebp,%ebp
   140001334:	7e 42                	jle    140001378 <__tmainCRTStartup+0x1f8>
   140001336:	31 db                	xor    %ebx,%ebx
   140001338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000133f:	00 
   140001340:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001345:	e8 ee 1c 00 00       	call   140003038 <strlen>
   14000134a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000134e:	48 89 f1             	mov    %rsi,%rcx
   140001351:	e8 c2 1c 00 00       	call   140003018 <malloc>
   140001356:	49 89 f0             	mov    %rsi,%r8
   140001359:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000135d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001362:	48 89 c1             	mov    %rax,%rcx
   140001365:	48 83 c3 01          	add    $0x1,%rbx
   140001369:	e8 b2 1c 00 00       	call   140003020 <memcpy>
   14000136e:	48 39 dd             	cmp    %rbx,%rbp
   140001371:	75 cd                	jne    140001340 <__tmainCRTStartup+0x1c0>
   140001373:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   140001378:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000137f:	48 89 3d aa 6c 00 00 	mov    %rdi,0x6caa(%rip)        # 140008030 <argv>
   140001386:	e8 95 0b 00 00       	call   140001f20 <__main>
   14000138b:	48 8b 05 fe 40 00 00 	mov    0x40fe(%rip),%rax        # 140005490 <.refptr.__imp___initenv>
   140001392:	4c 8b 05 8f 6c 00 00 	mov    0x6c8f(%rip),%r8        # 140008028 <envp>
   140001399:	8b 0d 99 6c 00 00    	mov    0x6c99(%rip),%ecx        # 140008038 <argc>
   14000139f:	48 8b 00             	mov    (%rax),%rax
   1400013a2:	4c 89 00             	mov    %r8,(%rax)
   1400013a5:	48 8b 15 84 6c 00 00 	mov    0x6c84(%rip),%rdx        # 140008030 <argv>
   1400013ac:	e8 7f 01 00 00       	call   140001530 <main>
   1400013b1:	8b 0d 69 6c 00 00    	mov    0x6c69(%rip),%ecx        # 140008020 <managedapp>
   1400013b7:	89 05 67 6c 00 00    	mov    %eax,0x6c67(%rip)        # 140008024 <mainret>
   1400013bd:	85 c9                	test   %ecx,%ecx
   1400013bf:	0f 84 d9 00 00 00    	je     14000149e <__tmainCRTStartup+0x31e>
   1400013c5:	8b 15 51 6c 00 00    	mov    0x6c51(%rip),%edx        # 14000801c <has_cctor>
   1400013cb:	85 d2                	test   %edx,%edx
   1400013cd:	0f 84 8d 00 00 00    	je     140001460 <__tmainCRTStartup+0x2e0>
   1400013d3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   1400013da:	5b                   	pop    %rbx
   1400013db:	5e                   	pop    %rsi
   1400013dc:	5f                   	pop    %rdi
   1400013dd:	5d                   	pop    %rbp
   1400013de:	41 5c                	pop    %r12
   1400013e0:	41 5d                	pop    %r13
   1400013e2:	c3                   	ret    
   1400013e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400013e8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
   1400013ed:	e9 16 ff ff ff       	jmp    140001308 <__tmainCRTStartup+0x188>
   1400013f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400013f8:	48 8b 35 31 41 00 00 	mov    0x4131(%rip),%rsi        # 140005530 <.refptr.__native_startup_state>
   1400013ff:	bd 01 00 00 00       	mov    $0x1,%ebp
   140001404:	8b 06                	mov    (%rsi),%eax
   140001406:	83 f8 01             	cmp    $0x1,%eax
   140001409:	0f 85 fb fd ff ff    	jne    14000120a <__tmainCRTStartup+0x8a>
   14000140f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001414:	e8 af 1b 00 00       	call   140002fc8 <_amsg_exit>
   140001419:	8b 06                	mov    (%rsi),%eax
   14000141b:	83 f8 01             	cmp    $0x1,%eax
   14000141e:	0f 85 05 fe ff ff    	jne    140001229 <__tmainCRTStartup+0xa9>
   140001424:	48 8b 15 25 41 00 00 	mov    0x4125(%rip),%rdx        # 140005550 <.refptr.__xc_z>
   14000142b:	48 8b 0d 0e 41 00 00 	mov    0x410e(%rip),%rcx        # 140005540 <.refptr.__xc_a>
   140001432:	e8 a1 1b 00 00       	call   140002fd8 <_initterm>
   140001437:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   14000143d:	85 ed                	test   %ebp,%ebp
   14000143f:	0f 85 ec fd ff ff    	jne    140001231 <__tmainCRTStartup+0xb1>
   140001445:	31 c0                	xor    %eax,%eax
   140001447:	48 87 03             	xchg   %rax,(%rbx)
   14000144a:	e9 e2 fd ff ff       	jmp    140001231 <__tmainCRTStartup+0xb1>
   14000144f:	90                   	nop
   140001450:	4c 89 c1             	mov    %r8,%rcx
   140001453:	ff 15 cb 7e 00 00    	call   *0x7ecb(%rip)        # 140009324 <__imp_GetStartupInfoA>
   140001459:	e9 56 fd ff ff       	jmp    1400011b4 <__tmainCRTStartup+0x34>
   14000145e:	66 90                	xchg   %ax,%ax
   140001460:	e8 6b 1b 00 00       	call   140002fd0 <_cexit>
   140001465:	8b 05 b9 6b 00 00    	mov    0x6bb9(%rip),%eax        # 140008024 <mainret>
   14000146b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001472:	5b                   	pop    %rbx
   140001473:	5e                   	pop    %rsi
   140001474:	5f                   	pop    %rdi
   140001475:	5d                   	pop    %rbp
   140001476:	41 5c                	pop    %r12
   140001478:	41 5d                	pop    %r13
   14000147a:	c3                   	ret    
   14000147b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001480:	48 8b 15 e9 40 00 00 	mov    0x40e9(%rip),%rdx        # 140005570 <.refptr.__xi_z>
   140001487:	48 8b 0d d2 40 00 00 	mov    0x40d2(%rip),%rcx        # 140005560 <.refptr.__xi_a>
   14000148e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   140001494:	e8 3f 1b 00 00       	call   140002fd8 <_initterm>
   140001499:	e9 80 fd ff ff       	jmp    14000121e <__tmainCRTStartup+0x9e>
   14000149e:	89 c1                	mov    %eax,%ecx
   1400014a0:	e8 53 1b 00 00       	call   140002ff8 <exit>
   1400014a5:	90                   	nop
   1400014a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014ad:	00 00 00 

00000001400014b0 <WinMainCRTStartup>:
   1400014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014b4 <.l_startw>:
   1400014b4:	48 8b 05 15 40 00 00 	mov    0x4015(%rip),%rax        # 1400054d0 <.refptr.__mingw_app_type>
   1400014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014c1:	e8 ba fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014c6:	90                   	nop

00000001400014c7 <.l_endw>:
   1400014c7:	90                   	nop
   1400014c8:	48 83 c4 28          	add    $0x28,%rsp
   1400014cc:	c3                   	ret    
   1400014cd:	0f 1f 00             	nopl   (%rax)

00000001400014d0 <mainCRTStartup>:
   1400014d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014d4 <.l_start>:
   1400014d4:	48 8b 05 f5 3f 00 00 	mov    0x3ff5(%rip),%rax        # 1400054d0 <.refptr.__mingw_app_type>
   1400014db:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400014e1:	e8 9a fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014e6:	90                   	nop

00000001400014e7 <.l_end>:
   1400014e7:	90                   	nop
   1400014e8:	48 83 c4 28          	add    $0x28,%rsp
   1400014ec:	c3                   	ret    
   1400014ed:	0f 1f 00             	nopl   (%rax)

00000001400014f0 <atexit>:
   1400014f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014f4:	e8 e7 1a 00 00       	call   140002fe0 <_onexit>
   1400014f9:	48 83 f8 01          	cmp    $0x1,%rax
   1400014fd:	19 c0                	sbb    %eax,%eax
   1400014ff:	48 83 c4 28          	add    $0x28,%rsp
   140001503:	c3                   	ret    
   140001504:	90                   	nop
   140001505:	90                   	nop
   140001506:	90                   	nop
   140001507:	90                   	nop
   140001508:	90                   	nop
   140001509:	90                   	nop
   14000150a:	90                   	nop
   14000150b:	90                   	nop
   14000150c:	90                   	nop
   14000150d:	90                   	nop
   14000150e:	90                   	nop
   14000150f:	90                   	nop

0000000140001510 <__gcc_register_frame>:
   140001510:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001520 <__gcc_deregister_frame>
   140001517:	e9 d4 ff ff ff       	jmp    1400014f0 <atexit>
   14000151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001520 <__gcc_deregister_frame>:
   140001520:	c3                   	ret    
   140001521:	90                   	nop
   140001522:	90                   	nop
   140001523:	90                   	nop
   140001524:	90                   	nop
   140001525:	90                   	nop
   140001526:	90                   	nop
   140001527:	90                   	nop
   140001528:	90                   	nop
   140001529:	90                   	nop
   14000152a:	90                   	nop
   14000152b:	90                   	nop
   14000152c:	90                   	nop
   14000152d:	90                   	nop
   14000152e:	90                   	nop
int GetSize(string S);
uint8_t Get_Extension(string s);


int main(void)
{
   14000152f:	90                   	nop

0000000140001530 <main>:
   140001530:	55                   	push   %rbp
   140001531:	41 54                	push   %r12
   140001533:	57                   	push   %rdi
   140001534:	56                   	push   %rsi
   140001535:	53                   	push   %rbx
   140001536:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
   14000153d:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140001544:	00 
   140001545:	e8 d6 09 00 00       	call   140001f20 <__main>
    uint32_t NumTestCases = 0;
   14000154a:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%rbp)
    uint32_t * ArrTestCases = NULL;
   140001551:	48 c7 45 68 00 00 00 	movq   $0x0,0x68(%rbp)
   140001558:	00 
    string Input = "";
   140001559:	48 8d 45 1e          	lea    0x1e(%rbp),%rax
   14000155d:	48 89 c1             	mov    %rax,%rcx
   140001560:	e8 d3 08 00 00       	call   140001e38 <_ZNSaIcEC1Ev>
   140001565:	48 8d 55 1e          	lea    0x1e(%rbp),%rdx
   140001569:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   14000156d:	49 89 d0             	mov    %rdx,%r8
   140001570:	48 8d 15 89 3a 00 00 	lea    0x3a89(%rip),%rdx        # 140005000 <.rdata>
   140001577:	48 89 c1             	mov    %rax,%rcx
   14000157a:	e8 41 1d 00 00       	call   1400032c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>
   14000157f:	48 8d 45 1e          	lea    0x1e(%rbp),%rax
   140001583:	48 89 c1             	mov    %rax,%rcx
   140001586:	e8 a5 08 00 00       	call   140001e30 <_ZNSaIcED1Ev>
    uint32_t Size = 0;
   14000158b:	c7 45 64 00 00 00 00 	movl   $0x0,0x64(%rbp)
    uint8_t Extension = Other;
   140001592:	c6 45 63 03          	movb   $0x3,0x63(%rbp)
    uint32_t Result[4]{0};
   140001596:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
   14000159d:	00 
   14000159e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   1400015a5:	00 
    cin>>NumTestCases;
   1400015a6:	48 8d 45 18          	lea    0x18(%rbp),%rax
   1400015aa:	48 89 c2             	mov    %rax,%rdx
   1400015ad:	48 8b 05 5c 3e 00 00 	mov    0x3e5c(%rip),%rax        # 140005410 <__fu1__ZSt3cin>
   1400015b4:	48 89 c1             	mov    %rax,%rcx
   1400015b7:	e8 54 08 00 00       	call   140001e10 <_ZNSirsERj>
    ArrTestCases = new uint32_t[NumTestCases]{0};
   1400015bc:	8b 45 18             	mov    0x18(%rbp),%eax
   1400015bf:	89 c6                	mov    %eax,%esi
   1400015c1:	48 b8 fe ff ff ff ff 	movabs $0x1ffffffffffffffe,%rax
   1400015c8:	ff ff 1f 
   1400015cb:	48 39 c6             	cmp    %rax,%rsi
   1400015ce:	77 12                	ja     1400015e2 <main+0xb2>
   1400015d0:	48 8d 04 b5 00 00 00 	lea    0x0(,%rsi,4),%rax
   1400015d7:	00 
   1400015d8:	48 89 c1             	mov    %rax,%rcx
   1400015db:	e8 68 07 00 00       	call   140001d48 <_Znay>
   1400015e0:	eb 05                	jmp    1400015e7 <main+0xb7>
   1400015e2:	e8 41 07 00 00       	call   140001d28 <__cxa_throw_bad_array_new_length>
   1400015e7:	48 89 c3             	mov    %rax,%rbx
   1400015ea:	48 89 da             	mov    %rbx,%rdx
   1400015ed:	48 8d 46 ff          	lea    -0x1(%rsi),%rax
   1400015f1:	48 85 c0             	test   %rax,%rax
   1400015f4:	79 05                	jns    1400015fb <main+0xcb>
   1400015f6:	e8 2d 07 00 00       	call   140001d28 <__cxa_throw_bad_array_new_length>
   1400015fb:	c7 02 00 00 00 00    	movl   $0x0,(%rdx)
   140001601:	48 83 c2 04          	add    $0x4,%rdx
   140001605:	48 83 e8 01          	sub    $0x1,%rax
   140001609:	eb 0e                	jmp    140001619 <main+0xe9>
   14000160b:	c7 02 00 00 00 00    	movl   $0x0,(%rdx)
   140001611:	48 83 c2 04          	add    $0x4,%rdx
   140001615:	48 83 e8 01          	sub    $0x1,%rax
   140001619:	48 85 c0             	test   %rax,%rax
   14000161c:	79 ed                	jns    14000160b <main+0xdb>
   14000161e:	48 89 5d 68          	mov    %rbx,0x68(%rbp)
    string Result1[2]={""};
   140001622:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
   140001626:	bf 01 00 00 00       	mov    $0x1,%edi
   14000162b:	48 8d 45 1f          	lea    0x1f(%rbp),%rax
   14000162f:	48 89 c1             	mov    %rax,%rcx
   140001632:	e8 01 08 00 00       	call   140001e38 <_ZNSaIcEC1Ev>
   140001637:	48 8d 45 1f          	lea    0x1f(%rbp),%rax
   14000163b:	49 89 c0             	mov    %rax,%r8
   14000163e:	48 8d 05 bb 39 00 00 	lea    0x39bb(%rip),%rax        # 140005000 <.rdata>
   140001645:	48 89 c2             	mov    %rax,%rdx
   140001648:	48 89 d9             	mov    %rbx,%rcx
   14000164b:	e8 70 1c 00 00       	call   1400032c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>
   140001650:	48 8d 45 1f          	lea    0x1f(%rbp),%rax
   140001654:	48 89 c1             	mov    %rax,%rcx
   140001657:	e8 d4 07 00 00       	call   140001e30 <_ZNSaIcED1Ev>
   14000165c:	48 8d 73 20          	lea    0x20(%rbx),%rsi
   140001660:	48 8d 5f ff          	lea    -0x1(%rdi),%rbx
   140001664:	eb 10                	jmp    140001676 <main+0x146>
   140001666:	48 89 f1             	mov    %rsi,%rcx
   140001669:	e8 42 07 00 00       	call   140001db0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
   14000166e:	48 83 c6 20          	add    $0x20,%rsi
   140001672:	48 83 eb 01          	sub    $0x1,%rbx
   140001676:	48 85 db             	test   %rbx,%rbx
   140001679:	79 eb                	jns    140001666 <main+0x136>
    for(uint32_t i  = 0 ; i < NumTestCases ; i++)
   14000167b:	c7 45 7c 00 00 00 00 	movl   $0x0,0x7c(%rbp)
   140001682:	eb 28                	jmp    1400016ac <main+0x17c>
    {
        cin>>ArrTestCases[i];
   140001684:	8b 45 7c             	mov    0x7c(%rbp),%eax
   140001687:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   14000168e:	00 
   14000168f:	48 8b 45 68          	mov    0x68(%rbp),%rax
   140001693:	48 01 d0             	add    %rdx,%rax
   140001696:	48 89 c2             	mov    %rax,%rdx
   140001699:	48 8b 05 70 3d 00 00 	mov    0x3d70(%rip),%rax        # 140005410 <__fu1__ZSt3cin>
   1400016a0:	48 89 c1             	mov    %rax,%rcx
   1400016a3:	e8 68 07 00 00       	call   140001e10 <_ZNSirsERj>
    for(uint32_t i  = 0 ; i < NumTestCases ; i++)
   1400016a8:	83 45 7c 01          	addl   $0x1,0x7c(%rbp)
   1400016ac:	8b 45 18             	mov    0x18(%rbp),%eax
   1400016af:	39 45 7c             	cmp    %eax,0x7c(%rbp)
   1400016b2:	72 d0                	jb     140001684 <main+0x154>
    }

    for(uint32_t i = 0 ; i < NumTestCases ; i++)
   1400016b4:	c7 45 78 00 00 00 00 	movl   $0x0,0x78(%rbp)
   1400016bb:	e9 86 01 00 00       	jmp    140001846 <main+0x316>
    {
        memset(Result,0,sizeof(Result));
   1400016c0:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   1400016c4:	41 b8 10 00 00 00    	mov    $0x10,%r8d
   1400016ca:	ba 00 00 00 00       	mov    $0x0,%edx
   1400016cf:	48 89 c1             	mov    %rax,%rcx
   1400016d2:	e8 51 19 00 00       	call   140003028 <memset>
        for(uint32_t j = 0; j<ArrTestCases[i] ; j++)
   1400016d7:	c7 45 74 00 00 00 00 	movl   $0x0,0x74(%rbp)
   1400016de:	e9 9b 00 00 00       	jmp    14000177e <main+0x24e>
        {
            getline(cin>>ws,Input);
   1400016e3:	48 8b 05 16 3d 00 00 	mov    0x3d16(%rip),%rax        # 140005400 <.refptr._ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_>
   1400016ea:	48 89 c2             	mov    %rax,%rdx
   1400016ed:	48 8b 05 1c 3d 00 00 	mov    0x3d1c(%rip),%rax        # 140005410 <__fu1__ZSt3cin>
   1400016f4:	48 89 c1             	mov    %rax,%rcx
   1400016f7:	e8 24 07 00 00       	call   140001e20 <_ZNSirsEPFRSiS_E>
   1400016fc:	48 89 c1             	mov    %rax,%rcx
   1400016ff:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   140001703:	48 89 c2             	mov    %rax,%rdx
   140001706:	e8 5d 06 00 00       	call   140001d68 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
            Size = GetSize(Input);
   14000170b:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
   14000170f:	48 8d 45 20          	lea    0x20(%rbp),%rax
   140001713:	48 89 c1             	mov    %rax,%rcx
   140001716:	e8 9d 06 00 00       	call   140001db8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
   14000171b:	48 8d 45 20          	lea    0x20(%rbp),%rax
   14000171f:	48 89 c1             	mov    %rax,%rcx
   140001722:	e8 47 02 00 00       	call   14000196e <_Z7GetSizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
   140001727:	89 45 64             	mov    %eax,0x64(%rbp)
   14000172a:	48 8d 45 20          	lea    0x20(%rbp),%rax
   14000172e:	48 89 c1             	mov    %rax,%rcx
   140001731:	e8 72 06 00 00       	call   140001da8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
            Extension = Get_Extension(Input);
   140001736:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
   14000173a:	48 8d 45 40          	lea    0x40(%rbp),%rax
   14000173e:	48 89 c1             	mov    %rax,%rcx
   140001741:	e8 72 06 00 00       	call   140001db8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
   140001746:	48 8d 45 40          	lea    0x40(%rbp),%rax
   14000174a:	48 89 c1             	mov    %rax,%rcx
   14000174d:	e8 9f 03 00 00       	call   140001af1 <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
   140001752:	88 45 63             	mov    %al,0x63(%rbp)
   140001755:	48 8d 45 40          	lea    0x40(%rbp),%rax
   140001759:	48 89 c1             	mov    %rax,%rcx
   14000175c:	e8 47 06 00 00       	call   140001da8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
            Result[Extension]+=Size;
   140001761:	0f b6 45 63          	movzbl 0x63(%rbp),%eax
   140001765:	48 98                	cltq   
   140001767:	8b 4c 85 e0          	mov    -0x20(%rbp,%rax,4),%ecx
   14000176b:	0f b6 45 63          	movzbl 0x63(%rbp),%eax
   14000176f:	8b 55 64             	mov    0x64(%rbp),%edx
   140001772:	01 ca                	add    %ecx,%edx
   140001774:	48 98                	cltq   
   140001776:	89 54 85 e0          	mov    %edx,-0x20(%rbp,%rax,4)
        for(uint32_t j = 0; j<ArrTestCases[i] ; j++)
   14000177a:	83 45 74 01          	addl   $0x1,0x74(%rbp)
   14000177e:	8b 45 78             	mov    0x78(%rbp),%eax
   140001781:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140001788:	00 
   140001789:	48 8b 45 68          	mov    0x68(%rbp),%rax
   14000178d:	48 01 d0             	add    %rdx,%rax
   140001790:	8b 00                	mov    (%rax),%eax
   140001792:	39 45 74             	cmp    %eax,0x74(%rbp)
   140001795:	0f 82 48 ff ff ff    	jb     1400016e3 <main+0x1b3>
        }
        
        cout<<"music "<<Result[Music]<<"b images "<<Result[Image]<<"b movies "<<Result[Movie]<<"b other "<<Result[Other]<<"b"<<endl;
   14000179b:	48 8d 05 5f 38 00 00 	lea    0x385f(%rip),%rax        # 140005001 <.rdata+0x1>
   1400017a2:	48 89 c2             	mov    %rax,%rdx
   1400017a5:	48 8b 05 74 3c 00 00 	mov    0x3c74(%rip),%rax        # 140005420 <__fu0__ZSt4cout>
   1400017ac:	48 89 c1             	mov    %rax,%rcx
   1400017af:	e8 ac 05 00 00       	call   140001d60 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400017b4:	48 89 c1             	mov    %rax,%rcx
   1400017b7:	8b 45 e0             	mov    -0x20(%rbp),%eax
   1400017ba:	89 c2                	mov    %eax,%edx
   1400017bc:	e8 3f 06 00 00       	call   140001e00 <_ZNSolsEj>
   1400017c1:	48 89 c1             	mov    %rax,%rcx
   1400017c4:	48 8d 05 3d 38 00 00 	lea    0x383d(%rip),%rax        # 140005008 <.rdata+0x8>
   1400017cb:	48 89 c2             	mov    %rax,%rdx
   1400017ce:	e8 8d 05 00 00       	call   140001d60 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400017d3:	48 89 c1             	mov    %rax,%rcx
   1400017d6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
   1400017d9:	89 c2                	mov    %eax,%edx
   1400017db:	e8 20 06 00 00       	call   140001e00 <_ZNSolsEj>
   1400017e0:	48 89 c1             	mov    %rax,%rcx
   1400017e3:	48 8d 05 28 38 00 00 	lea    0x3828(%rip),%rax        # 140005012 <.rdata+0x12>
   1400017ea:	48 89 c2             	mov    %rax,%rdx
   1400017ed:	e8 6e 05 00 00       	call   140001d60 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400017f2:	48 89 c1             	mov    %rax,%rcx
   1400017f5:	8b 45 e8             	mov    -0x18(%rbp),%eax
   1400017f8:	89 c2                	mov    %eax,%edx
   1400017fa:	e8 01 06 00 00       	call   140001e00 <_ZNSolsEj>
   1400017ff:	48 89 c1             	mov    %rax,%rcx
   140001802:	48 8d 05 13 38 00 00 	lea    0x3813(%rip),%rax        # 14000501c <.rdata+0x1c>
   140001809:	48 89 c2             	mov    %rax,%rdx
   14000180c:	e8 4f 05 00 00       	call   140001d60 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001811:	48 89 c1             	mov    %rax,%rcx
   140001814:	8b 45 ec             	mov    -0x14(%rbp),%eax
   140001817:	89 c2                	mov    %eax,%edx
   140001819:	e8 e2 05 00 00       	call   140001e00 <_ZNSolsEj>
   14000181e:	48 89 c1             	mov    %rax,%rcx
   140001821:	48 8d 05 fd 37 00 00 	lea    0x37fd(%rip),%rax        # 140005025 <.rdata+0x25>
   140001828:	48 89 c2             	mov    %rax,%rdx
   14000182b:	e8 30 05 00 00       	call   140001d60 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001830:	48 89 c1             	mov    %rax,%rcx
   140001833:	48 8b 05 f6 3b 00 00 	mov    0x3bf6(%rip),%rax        # 140005430 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000183a:	48 89 c2             	mov    %rax,%rdx
   14000183d:	e8 c6 05 00 00       	call   140001e08 <_ZNSolsEPFRSoS_E>
    for(uint32_t i = 0 ; i < NumTestCases ; i++)
   140001842:	83 45 78 01          	addl   $0x1,0x78(%rbp)
   140001846:	8b 45 18             	mov    0x18(%rbp),%eax
   140001849:	39 45 78             	cmp    %eax,0x78(%rbp)
   14000184c:	0f 82 6e fe ff ff    	jb     1400016c0 <main+0x190>
    }

    return 0;
   140001852:	be 00 00 00 00       	mov    $0x0,%esi
    string Result1[2]={""};
   140001857:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
   14000185b:	48 83 c3 40          	add    $0x40,%rbx
}
   14000185f:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001863:	48 39 c3             	cmp    %rax,%rbx
   140001866:	74 0e                	je     140001876 <main+0x346>
    string Result1[2]={""};
   140001868:	48 83 eb 20          	sub    $0x20,%rbx
   14000186c:	48 89 d9             	mov    %rbx,%rcx
   14000186f:	e8 34 05 00 00       	call   140001da8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
}
   140001874:	eb e9                	jmp    14000185f <main+0x32f>
    string Result1[2]={""};
   140001876:	90                   	nop
}
   140001877:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   14000187b:	48 89 c1             	mov    %rax,%rcx
   14000187e:	e8 25 05 00 00       	call   140001da8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001883:	89 f0                	mov    %esi,%eax
   140001885:	e9 d6 00 00 00       	jmp    140001960 <main+0x430>
   14000188a:	48 89 c3             	mov    %rax,%rbx
   14000188d:	48 8d 45 1e          	lea    0x1e(%rbp),%rax
   140001891:	48 89 c1             	mov    %rax,%rcx
   140001894:	e8 97 05 00 00       	call   140001e30 <_ZNSaIcED1Ev>
   140001899:	48 89 d8             	mov    %rbx,%rax
   14000189c:	48 89 c1             	mov    %rax,%rcx
   14000189f:	e8 3c 16 00 00       	call   140002ee0 <_Unwind_Resume>
    ArrTestCases = new uint32_t[NumTestCases]{0};
   1400018a4:	48 89 c6             	mov    %rax,%rsi
   1400018a7:	48 89 d9             	mov    %rbx,%rcx
   1400018aa:	e8 a1 04 00 00       	call   140001d50 <_ZdaPv>
   1400018af:	48 89 f3             	mov    %rsi,%rbx
   1400018b2:	e9 92 00 00 00       	jmp    140001949 <main+0x419>
    string Result1[2]={""};
   1400018b7:	48 89 c6             	mov    %rax,%rsi
   1400018ba:	48 8d 45 1f          	lea    0x1f(%rbp),%rax
   1400018be:	48 89 c1             	mov    %rax,%rcx
   1400018c1:	e8 6a 05 00 00       	call   140001e30 <_ZNSaIcED1Ev>
   1400018c6:	49 89 f4             	mov    %rsi,%r12
   1400018c9:	48 85 db             	test   %rbx,%rbx
   1400018cc:	74 23                	je     1400018f1 <main+0x3c1>
   1400018ce:	b8 01 00 00 00       	mov    $0x1,%eax
   1400018d3:	48 29 f8             	sub    %rdi,%rax
   1400018d6:	48 c1 e0 05          	shl    $0x5,%rax
   1400018da:	48 8d 34 03          	lea    (%rbx,%rax,1),%rsi
   1400018de:	48 39 de             	cmp    %rbx,%rsi
   1400018e1:	74 0e                	je     1400018f1 <main+0x3c1>
   1400018e3:	48 83 ee 20          	sub    $0x20,%rsi
   1400018e7:	48 89 f1             	mov    %rsi,%rcx
   1400018ea:	e8 b9 04 00 00       	call   140001da8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   1400018ef:	eb ed                	jmp    1400018de <main+0x3ae>
   1400018f1:	4c 89 e3             	mov    %r12,%rbx
   1400018f4:	eb 53                	jmp    140001949 <main+0x419>
            Size = GetSize(Input);
   1400018f6:	48 89 c3             	mov    %rax,%rbx
   1400018f9:	48 8d 45 20          	lea    0x20(%rbp),%rax
   1400018fd:	48 89 c1             	mov    %rax,%rcx
   140001900:	e8 a3 04 00 00       	call   140001da8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001905:	48 89 de             	mov    %rbx,%rsi
   140001908:	eb 17                	jmp    140001921 <main+0x3f1>
            Extension = Get_Extension(Input);
   14000190a:	48 89 c3             	mov    %rax,%rbx
   14000190d:	48 8d 45 40          	lea    0x40(%rbp),%rax
   140001911:	48 89 c1             	mov    %rax,%rcx
   140001914:	e8 8f 04 00 00       	call   140001da8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001919:	48 89 de             	mov    %rbx,%rsi
   14000191c:	eb 03                	jmp    140001921 <main+0x3f1>
    string Result1[2]={""};
   14000191e:	48 89 c6             	mov    %rax,%rsi
   140001921:	48 8d 5d a0          	lea    -0x60(%rbp),%rbx
   140001925:	48 83 c3 40          	add    $0x40,%rbx
}
   140001929:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   14000192d:	48 39 c3             	cmp    %rax,%rbx
   140001930:	74 0e                	je     140001940 <main+0x410>
    string Result1[2]={""};
   140001932:	48 83 eb 20          	sub    $0x20,%rbx
   140001936:	48 89 d9             	mov    %rbx,%rcx
   140001939:	e8 6a 04 00 00       	call   140001da8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
}
   14000193e:	eb e9                	jmp    140001929 <main+0x3f9>
    string Result1[2]={""};
   140001940:	90                   	nop
   140001941:	48 89 f3             	mov    %rsi,%rbx
   140001944:	eb 03                	jmp    140001949 <main+0x419>
}
   140001946:	48 89 c3             	mov    %rax,%rbx
   140001949:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   14000194d:	48 89 c1             	mov    %rax,%rcx
   140001950:	e8 53 04 00 00       	call   140001da8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001955:	48 89 d8             	mov    %rbx,%rax
   140001958:	48 89 c1             	mov    %rax,%rcx
   14000195b:	e8 80 15 00 00       	call   140002ee0 <_Unwind_Resume>
   140001960:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
   140001967:	5b                   	pop    %rbx
   140001968:	5e                   	pop    %rsi
   140001969:	5f                   	pop    %rdi
   14000196a:	41 5c                	pop    %r12
   14000196c:	5d                   	pop    %rbp
   14000196d:	c3                   	ret    

000000014000196e <_Z7GetSizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:



int GetSize(string S)
{
   14000196e:	55                   	push   %rbp
   14000196f:	53                   	push   %rbx
   140001970:	48 81 ec 68 03 00 00 	sub    $0x368,%rsp
   140001977:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   14000197e:	00 
   14000197f:	48 89 8d 00 03 00 00 	mov    %rcx,0x300(%rbp)
    stringstream ss(S);
   140001986:	ba 08 00 00 00       	mov    $0x8,%edx
   14000198b:	b9 10 00 00 00       	mov    $0x10,%ecx
   140001990:	e8 6b 1a 00 00       	call   140003400 <_ZStorSt13_Ios_OpenmodeS_>
   140001995:	89 c2                	mov    %eax,%edx
   140001997:	48 8d 85 50 01 00 00 	lea    0x150(%rbp),%rax
   14000199e:	41 89 d0             	mov    %edx,%r8d
   1400019a1:	48 8b 95 00 03 00 00 	mov    0x300(%rbp),%rdx
   1400019a8:	48 89 c1             	mov    %rax,%rcx
   1400019ab:	e8 f0 03 00 00       	call   140001da0 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
    string temp = "";
   1400019b0:	48 8d 85 df 02 00 00 	lea    0x2df(%rbp),%rax
   1400019b7:	48 89 c1             	mov    %rax,%rcx
   1400019ba:	e8 79 04 00 00       	call   140001e38 <_ZNSaIcEC1Ev>
   1400019bf:	48 8d 95 df 02 00 00 	lea    0x2df(%rbp),%rdx
   1400019c6:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   1400019cd:	49 89 d0             	mov    %rdx,%r8
   1400019d0:	48 8d 15 29 36 00 00 	lea    0x3629(%rip),%rdx        # 140005000 <.rdata>
   1400019d7:	48 89 c1             	mov    %rax,%rcx
   1400019da:	e8 e1 18 00 00       	call   1400032c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>
   1400019df:	48 8d 85 df 02 00 00 	lea    0x2df(%rbp),%rax
   1400019e6:	48 89 c1             	mov    %rax,%rcx
   1400019e9:	e8 42 04 00 00       	call   140001e30 <_ZNSaIcED1Ev>
    int Size = 0;
   1400019ee:	c7 85 2c 01 00 00 00 	movl   $0x0,0x12c(%rbp)
   1400019f5:	00 00 00 
    while(ss>>temp); //dragons_Song .mp3 11b
   1400019f8:	90                   	nop
   1400019f9:	48 8d 95 30 01 00 00 	lea    0x130(%rbp),%rdx
   140001a00:	48 8d 85 50 01 00 00 	lea    0x150(%rbp),%rax
   140001a07:	48 89 c1             	mov    %rax,%rcx
   140001a0a:	e8 49 03 00 00       	call   140001d58 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   140001a0f:	48 8b 10             	mov    (%rax),%rdx
   140001a12:	48 83 ea 18          	sub    $0x18,%rdx
   140001a16:	48 8b 12             	mov    (%rdx),%rdx
   140001a19:	48 01 d0             	add    %rdx,%rax
   140001a1c:	48 89 c1             	mov    %rax,%rcx
   140001a1f:	e8 1c 04 00 00       	call   140001e40 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>
   140001a24:	84 c0                	test   %al,%al
   140001a26:	75 d1                	jne    1400019f9 <_Z7GetSizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x8b>
    stringstream Num(temp);
   140001a28:	ba 08 00 00 00       	mov    $0x8,%edx
   140001a2d:	b9 10 00 00 00       	mov    $0x10,%ecx
   140001a32:	e8 c9 19 00 00       	call   140003400 <_ZStorSt13_Ios_OpenmodeS_>
   140001a37:	89 c1                	mov    %eax,%ecx
   140001a39:	48 8d 95 30 01 00 00 	lea    0x130(%rbp),%rdx
   140001a40:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001a44:	41 89 c8             	mov    %ecx,%r8d
   140001a47:	48 89 c1             	mov    %rax,%rcx
   140001a4a:	e8 51 03 00 00       	call   140001da0 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
    Num>>Size;
   140001a4f:	48 8d 95 2c 01 00 00 	lea    0x12c(%rbp),%rdx
   140001a56:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001a5a:	48 89 c1             	mov    %rax,%rcx
   140001a5d:	e8 b6 03 00 00       	call   140001e18 <_ZNSirsERi>
    return Size;
   140001a62:	8b 9d 2c 01 00 00    	mov    0x12c(%rbp),%ebx
}
   140001a68:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001a6c:	48 89 c1             	mov    %rax,%rcx
   140001a6f:	e8 24 03 00 00       	call   140001d98 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001a74:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   140001a7b:	48 89 c1             	mov    %rax,%rcx
   140001a7e:	e8 25 03 00 00       	call   140001da8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001a83:	48 8d 85 50 01 00 00 	lea    0x150(%rbp),%rax
   140001a8a:	48 89 c1             	mov    %rax,%rcx
   140001a8d:	e8 06 03 00 00       	call   140001d98 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
    return Size;
   140001a92:	89 d8                	mov    %ebx,%eax
   140001a94:	eb 51                	jmp    140001ae7 <_Z7GetSizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x179>
   140001a96:	48 89 c3             	mov    %rax,%rbx
   140001a99:	48 8d 85 df 02 00 00 	lea    0x2df(%rbp),%rax
   140001aa0:	48 89 c1             	mov    %rax,%rcx
   140001aa3:	e8 88 03 00 00       	call   140001e30 <_ZNSaIcED1Ev>
   140001aa8:	eb 23                	jmp    140001acd <_Z7GetSizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x15f>
}
   140001aaa:	48 89 c3             	mov    %rax,%rbx
   140001aad:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001ab1:	48 89 c1             	mov    %rax,%rcx
   140001ab4:	e8 df 02 00 00       	call   140001d98 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001ab9:	eb 03                	jmp    140001abe <_Z7GetSizeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x150>
   140001abb:	48 89 c3             	mov    %rax,%rbx
   140001abe:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   140001ac5:	48 89 c1             	mov    %rax,%rcx
   140001ac8:	e8 db 02 00 00       	call   140001da8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001acd:	48 8d 85 50 01 00 00 	lea    0x150(%rbp),%rax
   140001ad4:	48 89 c1             	mov    %rax,%rcx
   140001ad7:	e8 bc 02 00 00       	call   140001d98 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001adc:	48 89 d8             	mov    %rbx,%rax
   140001adf:	48 89 c1             	mov    %rax,%rcx
   140001ae2:	e8 f9 13 00 00       	call   140002ee0 <_Unwind_Resume>
   140001ae7:	48 81 c4 68 03 00 00 	add    $0x368,%rsp
   140001aee:	5b                   	pop    %rbx
   140001aef:	5d                   	pop    %rbp
   140001af0:	c3                   	ret    

0000000140001af1 <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:

uint8_t Get_Extension(string s)
{
   140001af1:	55                   	push   %rbp
   140001af2:	53                   	push   %rbx
   140001af3:	48 83 ec 58          	sub    $0x58,%rsp
   140001af7:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
   140001afc:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
    int E=Other;
   140001b00:	c7 45 fc 03 00 00 00 	movl   $0x3,-0x4(%rbp)
    int IndexOfDot = s.rfind(".");
   140001b07:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
   140001b0e:	48 8d 05 12 35 00 00 	lea    0x3512(%rip),%rax        # 140005027 <.rdata+0x27>
   140001b15:	48 89 c2             	mov    %rax,%rdx
   140001b18:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   140001b1c:	e8 3f 03 00 00       	call   140001e60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcy>
   140001b21:	89 45 f8             	mov    %eax,-0x8(%rbp)
    int IndexOfSpace = s.rfind(" ");
   140001b24:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
   140001b2b:	48 8d 05 f7 34 00 00 	lea    0x34f7(%rip),%rax        # 140005029 <.rdata+0x29>
   140001b32:	48 89 c2             	mov    %rax,%rdx
   140001b35:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   140001b39:	e8 22 03 00 00       	call   140001e60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcy>
   140001b3e:	89 45 f4             	mov    %eax,-0xc(%rbp)
    string Extension = s.substr(IndexOfDot,IndexOfSpace-IndexOfDot);
   140001b41:	8b 45 f4             	mov    -0xc(%rbp),%eax
   140001b44:	2b 45 f8             	sub    -0x8(%rbp),%eax
   140001b47:	48 63 c8             	movslq %eax,%rcx
   140001b4a:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140001b4d:	48 63 d0             	movslq %eax,%rdx
   140001b50:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140001b54:	49 89 c9             	mov    %rcx,%r9
   140001b57:	49 89 d0             	mov    %rdx,%r8
   140001b5a:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   140001b5e:	48 89 c1             	mov    %rax,%rcx
   140001b61:	e8 f2 02 00 00       	call   140001e58 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
    if(Extension == ".mp3" || Extension == ".aac" || Extension == ".flac" )
   140001b66:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140001b6a:	48 8d 15 ba 34 00 00 	lea    0x34ba(%rip),%rdx        # 14000502b <.rdata+0x2b>
   140001b71:	48 89 c1             	mov    %rax,%rcx
   140001b74:	e8 57 18 00 00       	call   1400033d0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001b79:	84 c0                	test   %al,%al
   140001b7b:	75 2e                	jne    140001bab <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xba>
   140001b7d:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140001b81:	48 8d 15 a8 34 00 00 	lea    0x34a8(%rip),%rdx        # 140005030 <.rdata+0x30>
   140001b88:	48 89 c1             	mov    %rax,%rcx
   140001b8b:	e8 40 18 00 00       	call   1400033d0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001b90:	84 c0                	test   %al,%al
   140001b92:	75 17                	jne    140001bab <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xba>
   140001b94:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140001b98:	48 8d 15 96 34 00 00 	lea    0x3496(%rip),%rdx        # 140005035 <.rdata+0x35>
   140001b9f:	48 89 c1             	mov    %rax,%rcx
   140001ba2:	e8 29 18 00 00       	call   1400033d0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001ba7:	84 c0                	test   %al,%al
   140001ba9:	74 07                	je     140001bb2 <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xc1>
   140001bab:	b8 01 00 00 00       	mov    $0x1,%eax
   140001bb0:	eb 05                	jmp    140001bb7 <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xc6>
   140001bb2:	b8 00 00 00 00       	mov    $0x0,%eax
   140001bb7:	84 c0                	test   %al,%al
   140001bb9:	74 0c                	je     140001bc7 <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xd6>
    {
        E = Music;
   140001bbb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001bc2:	e9 ba 00 00 00       	jmp    140001c81 <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x190>
    }
    else if(Extension == ".jpg" || Extension == ".bmp" || Extension == ".gif" )
   140001bc7:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140001bcb:	48 8d 15 69 34 00 00 	lea    0x3469(%rip),%rdx        # 14000503b <.rdata+0x3b>
   140001bd2:	48 89 c1             	mov    %rax,%rcx
   140001bd5:	e8 f6 17 00 00       	call   1400033d0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001bda:	84 c0                	test   %al,%al
   140001bdc:	75 2e                	jne    140001c0c <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x11b>
   140001bde:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140001be2:	48 8d 15 57 34 00 00 	lea    0x3457(%rip),%rdx        # 140005040 <.rdata+0x40>
   140001be9:	48 89 c1             	mov    %rax,%rcx
   140001bec:	e8 df 17 00 00       	call   1400033d0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001bf1:	84 c0                	test   %al,%al
   140001bf3:	75 17                	jne    140001c0c <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x11b>
   140001bf5:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140001bf9:	48 8d 15 45 34 00 00 	lea    0x3445(%rip),%rdx        # 140005045 <.rdata+0x45>
   140001c00:	48 89 c1             	mov    %rax,%rcx
   140001c03:	e8 c8 17 00 00       	call   1400033d0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001c08:	84 c0                	test   %al,%al
   140001c0a:	74 07                	je     140001c13 <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x122>
   140001c0c:	b8 01 00 00 00       	mov    $0x1,%eax
   140001c11:	eb 05                	jmp    140001c18 <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x127>
   140001c13:	b8 00 00 00 00       	mov    $0x0,%eax
   140001c18:	84 c0                	test   %al,%al
   140001c1a:	74 09                	je     140001c25 <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x134>
    {
        E = Image;
   140001c1c:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
   140001c23:	eb 5c                	jmp    140001c81 <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x190>
    }
    else if(Extension == ".mp4" || Extension == ".avi" || Extension == ".mkv" )
   140001c25:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140001c29:	48 8d 15 1a 34 00 00 	lea    0x341a(%rip),%rdx        # 14000504a <.rdata+0x4a>
   140001c30:	48 89 c1             	mov    %rax,%rcx
   140001c33:	e8 98 17 00 00       	call   1400033d0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001c38:	84 c0                	test   %al,%al
   140001c3a:	75 2e                	jne    140001c6a <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x179>
   140001c3c:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140001c40:	48 8d 15 08 34 00 00 	lea    0x3408(%rip),%rdx        # 14000504f <.rdata+0x4f>
   140001c47:	48 89 c1             	mov    %rax,%rcx
   140001c4a:	e8 81 17 00 00       	call   1400033d0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001c4f:	84 c0                	test   %al,%al
   140001c51:	75 17                	jne    140001c6a <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x179>
   140001c53:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140001c57:	48 8d 15 f6 33 00 00 	lea    0x33f6(%rip),%rdx        # 140005054 <.rdata+0x54>
   140001c5e:	48 89 c1             	mov    %rax,%rcx
   140001c61:	e8 6a 17 00 00       	call   1400033d0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001c66:	84 c0                	test   %al,%al
   140001c68:	74 07                	je     140001c71 <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x180>
   140001c6a:	b8 01 00 00 00       	mov    $0x1,%eax
   140001c6f:	eb 05                	jmp    140001c76 <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x185>
   140001c71:	b8 00 00 00 00       	mov    $0x0,%eax
   140001c76:	84 c0                	test   %al,%al
   140001c78:	74 07                	je     140001c81 <_Z13Get_ExtensionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x190>
    {
        E = Movie;
   140001c7a:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%rbp)
    }

    return E;
   140001c81:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001c84:	89 c3                	mov    %eax,%ebx
   140001c86:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   140001c8a:	48 89 c1             	mov    %rax,%rcx
   140001c8d:	e8 16 01 00 00       	call   140001da8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    return E;
   140001c92:	89 d8                	mov    %ebx,%eax
   140001c94:	48 83 c4 58          	add    $0x58,%rsp
   140001c98:	5b                   	pop    %rbx
   140001c99:	5d                   	pop    %rbp
   140001c9a:	c3                   	ret    

0000000140001c9b <__tcf_0>:
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
   140001c9b:	55                   	push   %rbp
   140001c9c:	48 89 e5             	mov    %rsp,%rbp
   140001c9f:	48 83 ec 20          	sub    $0x20,%rsp
   140001ca3:	48 8d 05 96 63 00 00 	lea    0x6396(%rip),%rax        # 140008040 <_ZStL8__ioinit>
   140001caa:	48 89 c1             	mov    %rax,%rcx
   140001cad:	e8 d6 00 00 00       	call   140001d88 <_ZNSt8ios_base4InitD1Ev>
   140001cb2:	90                   	nop
   140001cb3:	48 83 c4 20          	add    $0x20,%rsp
   140001cb7:	5d                   	pop    %rbp
   140001cb8:	c3                   	ret    

0000000140001cb9 <_Z41__static_initialization_and_destruction_0ii>:
   140001cb9:	55                   	push   %rbp
   140001cba:	48 89 e5             	mov    %rsp,%rbp
   140001cbd:	48 83 ec 20          	sub    $0x20,%rsp
   140001cc1:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140001cc4:	89 55 18             	mov    %edx,0x18(%rbp)
   140001cc7:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
   140001ccb:	75 27                	jne    140001cf4 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001ccd:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
   140001cd4:	75 1e                	jne    140001cf4 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001cd6:	48 8d 05 63 63 00 00 	lea    0x6363(%rip),%rax        # 140008040 <_ZStL8__ioinit>
   140001cdd:	48 89 c1             	mov    %rax,%rcx
   140001ce0:	e8 ab 00 00 00       	call   140001d90 <_ZNSt8ios_base4InitC1Ev>
   140001ce5:	48 8d 05 af ff ff ff 	lea    -0x51(%rip),%rax        # 140001c9b <__tcf_0>
   140001cec:	48 89 c1             	mov    %rax,%rcx
   140001cef:	e8 fc f7 ff ff       	call   1400014f0 <atexit>
   140001cf4:	90                   	nop
   140001cf5:	48 83 c4 20          	add    $0x20,%rsp
   140001cf9:	5d                   	pop    %rbp
   140001cfa:	c3                   	ret    

0000000140001cfb <_GLOBAL__sub_I_main>:
   140001cfb:	55                   	push   %rbp
   140001cfc:	48 89 e5             	mov    %rsp,%rbp
   140001cff:	48 83 ec 20          	sub    $0x20,%rsp
   140001d03:	ba ff ff 00 00       	mov    $0xffff,%edx
   140001d08:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001d0d:	e8 a7 ff ff ff       	call   140001cb9 <_Z41__static_initialization_and_destruction_0ii>
   140001d12:	90                   	nop
   140001d13:	48 83 c4 20          	add    $0x20,%rsp
   140001d17:	5d                   	pop    %rbp
   140001d18:	c3                   	ret    
   140001d19:	90                   	nop
   140001d1a:	90                   	nop
   140001d1b:	90                   	nop
   140001d1c:	90                   	nop
   140001d1d:	90                   	nop
   140001d1e:	90                   	nop
   140001d1f:	90                   	nop

0000000140001d20 <__gxx_personality_seh0>:
   140001d20:	ff 25 7e 78 00 00    	jmp    *0x787e(%rip)        # 1400095a4 <__imp___gxx_personality_seh0>
   140001d26:	90                   	nop
   140001d27:	90                   	nop

0000000140001d28 <__cxa_throw_bad_array_new_length>:
   140001d28:	ff 25 6e 78 00 00    	jmp    *0x786e(%rip)        # 14000959c <__imp___cxa_throw_bad_array_new_length>
   140001d2e:	90                   	nop
   140001d2f:	90                   	nop

0000000140001d30 <__cxa_rethrow>:
   140001d30:	ff 25 5e 78 00 00    	jmp    *0x785e(%rip)        # 140009594 <__imp___cxa_rethrow>
   140001d36:	90                   	nop
   140001d37:	90                   	nop

0000000140001d38 <__cxa_end_catch>:
   140001d38:	ff 25 4e 78 00 00    	jmp    *0x784e(%rip)        # 14000958c <__imp___cxa_end_catch>
   140001d3e:	90                   	nop
   140001d3f:	90                   	nop

0000000140001d40 <__cxa_begin_catch>:
   140001d40:	ff 25 3e 78 00 00    	jmp    *0x783e(%rip)        # 140009584 <__imp___cxa_begin_catch>
   140001d46:	90                   	nop
   140001d47:	90                   	nop

0000000140001d48 <_Znay>:
   140001d48:	ff 25 2e 78 00 00    	jmp    *0x782e(%rip)        # 14000957c <__imp__Znay>
   140001d4e:	90                   	nop
   140001d4f:	90                   	nop

0000000140001d50 <_ZdaPv>:
   140001d50:	ff 25 1e 78 00 00    	jmp    *0x781e(%rip)        # 140009574 <__imp__ZdaPv>
   140001d56:	90                   	nop
   140001d57:	90                   	nop

0000000140001d58 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>:
   140001d58:	ff 25 0e 78 00 00    	jmp    *0x780e(%rip)        # 14000956c <__imp__ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   140001d5e:	90                   	nop
   140001d5f:	90                   	nop

0000000140001d60 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   140001d60:	ff 25 fe 77 00 00    	jmp    *0x77fe(%rip)        # 140009564 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001d66:	90                   	nop
   140001d67:	90                   	nop

0000000140001d68 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>:
   140001d68:	ff 25 ee 77 00 00    	jmp    *0x77ee(%rip)        # 14000955c <__imp__ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   140001d6e:	90                   	nop
   140001d6f:	90                   	nop

0000000140001d70 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
   140001d70:	ff 25 de 77 00 00    	jmp    *0x77de(%rip)        # 140009554 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001d76:	90                   	nop
   140001d77:	90                   	nop

0000000140001d78 <_ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_>:
   140001d78:	ff 25 be 77 00 00    	jmp    *0x77be(%rip)        # 14000953c <__imp__ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_>
   140001d7e:	90                   	nop
   140001d7f:	90                   	nop

0000000140001d80 <_ZSt19__throw_logic_errorPKc>:
   140001d80:	ff 25 ae 77 00 00    	jmp    *0x77ae(%rip)        # 140009534 <__imp__ZSt19__throw_logic_errorPKc>
   140001d86:	90                   	nop
   140001d87:	90                   	nop

0000000140001d88 <_ZNSt8ios_base4InitD1Ev>:
   140001d88:	ff 25 9e 77 00 00    	jmp    *0x779e(%rip)        # 14000952c <__imp__ZNSt8ios_base4InitD1Ev>
   140001d8e:	90                   	nop
   140001d8f:	90                   	nop

0000000140001d90 <_ZNSt8ios_base4InitC1Ev>:
   140001d90:	ff 25 8e 77 00 00    	jmp    *0x778e(%rip)        # 140009524 <__imp__ZNSt8ios_base4InitC1Ev>
   140001d96:	90                   	nop
   140001d97:	90                   	nop

0000000140001d98 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>:
   140001d98:	ff 25 7e 77 00 00    	jmp    *0x777e(%rip)        # 14000951c <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001d9e:	90                   	nop
   140001d9f:	90                   	nop

0000000140001da0 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>:
   140001da0:	ff 25 6e 77 00 00    	jmp    *0x776e(%rip)        # 140009514 <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
   140001da6:	90                   	nop
   140001da7:	90                   	nop

0000000140001da8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>:
   140001da8:	ff 25 5e 77 00 00    	jmp    *0x775e(%rip)        # 14000950c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001dae:	90                   	nop
   140001daf:	90                   	nop

0000000140001db0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>:
   140001db0:	ff 25 4e 77 00 00    	jmp    *0x774e(%rip)        # 140009504 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
   140001db6:	90                   	nop
   140001db7:	90                   	nop

0000000140001db8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>:
   140001db8:	ff 25 3e 77 00 00    	jmp    *0x773e(%rip)        # 1400094fc <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
   140001dbe:	90                   	nop
   140001dbf:	90                   	nop

0000000140001dc0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy>:
   140001dc0:	ff 25 2e 77 00 00    	jmp    *0x772e(%rip)        # 1400094f4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy>
   140001dc6:	90                   	nop
   140001dc7:	90                   	nop

0000000140001dc8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>:
   140001dc8:	ff 25 1e 77 00 00    	jmp    *0x771e(%rip)        # 1400094ec <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>
   140001dce:	90                   	nop
   140001dcf:	90                   	nop

0000000140001dd0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_>:
   140001dd0:	ff 25 0e 77 00 00    	jmp    *0x770e(%rip)        # 1400094e4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_>
   140001dd6:	90                   	nop
   140001dd7:	90                   	nop

0000000140001dd8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy>:
   140001dd8:	ff 25 fe 76 00 00    	jmp    *0x76fe(%rip)        # 1400094dc <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy>
   140001dde:	90                   	nop
   140001ddf:	90                   	nop

0000000140001de0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>:
   140001de0:	ff 25 ee 76 00 00    	jmp    *0x76ee(%rip)        # 1400094d4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
   140001de6:	90                   	nop
   140001de7:	90                   	nop

0000000140001de8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>:
   140001de8:	ff 25 de 76 00 00    	jmp    *0x76de(%rip)        # 1400094cc <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>
   140001dee:	90                   	nop
   140001def:	90                   	nop

0000000140001df0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy>:
   140001df0:	ff 25 ce 76 00 00    	jmp    *0x76ce(%rip)        # 1400094c4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy>
   140001df6:	90                   	nop
   140001df7:	90                   	nop

0000000140001df8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>:
   140001df8:	ff 25 be 76 00 00    	jmp    *0x76be(%rip)        # 1400094bc <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>
   140001dfe:	90                   	nop
   140001dff:	90                   	nop

0000000140001e00 <_ZNSolsEj>:
   140001e00:	ff 25 ae 76 00 00    	jmp    *0x76ae(%rip)        # 1400094b4 <__imp__ZNSolsEj>
   140001e06:	90                   	nop
   140001e07:	90                   	nop

0000000140001e08 <_ZNSolsEPFRSoS_E>:
   140001e08:	ff 25 9e 76 00 00    	jmp    *0x769e(%rip)        # 1400094ac <__imp__ZNSolsEPFRSoS_E>
   140001e0e:	90                   	nop
   140001e0f:	90                   	nop

0000000140001e10 <_ZNSirsERj>:
   140001e10:	ff 25 8e 76 00 00    	jmp    *0x768e(%rip)        # 1400094a4 <__imp__ZNSirsERj>
   140001e16:	90                   	nop
   140001e17:	90                   	nop

0000000140001e18 <_ZNSirsERi>:
   140001e18:	ff 25 7e 76 00 00    	jmp    *0x767e(%rip)        # 14000949c <__imp__ZNSirsERi>
   140001e1e:	90                   	nop
   140001e1f:	90                   	nop

0000000140001e20 <_ZNSirsEPFRSiS_E>:
   140001e20:	ff 25 6e 76 00 00    	jmp    *0x766e(%rip)        # 140009494 <__imp__ZNSirsEPFRSiS_E>
   140001e26:	90                   	nop
   140001e27:	90                   	nop

0000000140001e28 <_ZNSaIcED2Ev>:
   140001e28:	ff 25 5e 76 00 00    	jmp    *0x765e(%rip)        # 14000948c <__imp__ZNSaIcED2Ev>
   140001e2e:	90                   	nop
   140001e2f:	90                   	nop

0000000140001e30 <_ZNSaIcED1Ev>:
   140001e30:	ff 25 4e 76 00 00    	jmp    *0x764e(%rip)        # 140009484 <__imp__ZNSaIcED1Ev>
   140001e36:	90                   	nop
   140001e37:	90                   	nop

0000000140001e38 <_ZNSaIcEC1Ev>:
   140001e38:	ff 25 3e 76 00 00    	jmp    *0x763e(%rip)        # 14000947c <__imp__ZNSaIcEC1Ev>
   140001e3e:	90                   	nop
   140001e3f:	90                   	nop

0000000140001e40 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>:
   140001e40:	ff 25 2e 76 00 00    	jmp    *0x762e(%rip)        # 140009474 <__imp__ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>
   140001e46:	90                   	nop
   140001e47:	90                   	nop

0000000140001e48 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>:
   140001e48:	ff 25 1e 76 00 00    	jmp    *0x761e(%rip)        # 14000946c <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>
   140001e4e:	90                   	nop
   140001e4f:	90                   	nop

0000000140001e50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>:
   140001e50:	ff 25 0e 76 00 00    	jmp    *0x760e(%rip)        # 140009464 <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
   140001e56:	90                   	nop
   140001e57:	90                   	nop

0000000140001e58 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>:
   140001e58:	ff 25 fe 75 00 00    	jmp    *0x75fe(%rip)        # 14000945c <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   140001e5e:	90                   	nop
   140001e5f:	90                   	nop

0000000140001e60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcy>:
   140001e60:	ff 25 ee 75 00 00    	jmp    *0x75ee(%rip)        # 140009454 <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcy>
   140001e66:	90                   	nop
   140001e67:	90                   	nop
   140001e68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001e6f:	00 

0000000140001e70 <__do_global_dtors>:
   140001e70:	48 83 ec 28          	sub    $0x28,%rsp
   140001e74:	48 8b 05 95 21 00 00 	mov    0x2195(%rip),%rax        # 140004010 <p.0>
   140001e7b:	48 8b 00             	mov    (%rax),%rax
   140001e7e:	48 85 c0             	test   %rax,%rax
   140001e81:	74 22                	je     140001ea5 <__do_global_dtors+0x35>
   140001e83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001e88:	ff d0                	call   *%rax
   140001e8a:	48 8b 05 7f 21 00 00 	mov    0x217f(%rip),%rax        # 140004010 <p.0>
   140001e91:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140001e95:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001e99:	48 89 15 70 21 00 00 	mov    %rdx,0x2170(%rip)        # 140004010 <p.0>
   140001ea0:	48 85 c0             	test   %rax,%rax
   140001ea3:	75 e3                	jne    140001e88 <__do_global_dtors+0x18>
   140001ea5:	48 83 c4 28          	add    $0x28,%rsp
   140001ea9:	c3                   	ret    
   140001eaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001eb0 <__do_global_ctors>:
   140001eb0:	56                   	push   %rsi
   140001eb1:	53                   	push   %rbx
   140001eb2:	48 83 ec 28          	sub    $0x28,%rsp
   140001eb6:	48 8b 15 83 35 00 00 	mov    0x3583(%rip),%rdx        # 140005440 <.refptr.__CTOR_LIST__>
   140001ebd:	48 8b 02             	mov    (%rdx),%rax
   140001ec0:	89 c1                	mov    %eax,%ecx
   140001ec2:	83 f8 ff             	cmp    $0xffffffff,%eax
   140001ec5:	74 39                	je     140001f00 <__do_global_ctors+0x50>
   140001ec7:	85 c9                	test   %ecx,%ecx
   140001ec9:	74 20                	je     140001eeb <__do_global_ctors+0x3b>
   140001ecb:	89 c8                	mov    %ecx,%eax
   140001ecd:	83 e9 01             	sub    $0x1,%ecx
   140001ed0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001ed4:	48 29 c8             	sub    %rcx,%rax
   140001ed7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   140001edc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ee0:	ff 13                	call   *(%rbx)
   140001ee2:	48 83 eb 08          	sub    $0x8,%rbx
   140001ee6:	48 39 f3             	cmp    %rsi,%rbx
   140001ee9:	75 f5                	jne    140001ee0 <__do_global_ctors+0x30>
   140001eeb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001e70 <__do_global_dtors>
   140001ef2:	48 83 c4 28          	add    $0x28,%rsp
   140001ef6:	5b                   	pop    %rbx
   140001ef7:	5e                   	pop    %rsi
   140001ef8:	e9 f3 f5 ff ff       	jmp    1400014f0 <atexit>
   140001efd:	0f 1f 00             	nopl   (%rax)
   140001f00:	31 c0                	xor    %eax,%eax
   140001f02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001f08:	44 8d 40 01          	lea    0x1(%rax),%r8d
   140001f0c:	89 c1                	mov    %eax,%ecx
   140001f0e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001f13:	4c 89 c0             	mov    %r8,%rax
   140001f16:	75 f0                	jne    140001f08 <__do_global_ctors+0x58>
   140001f18:	eb ad                	jmp    140001ec7 <__do_global_ctors+0x17>
   140001f1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001f20 <__main>:
   140001f20:	8b 05 2a 61 00 00    	mov    0x612a(%rip),%eax        # 140008050 <initialized>
   140001f26:	85 c0                	test   %eax,%eax
   140001f28:	74 06                	je     140001f30 <__main+0x10>
   140001f2a:	c3                   	ret    
   140001f2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001f30:	c7 05 16 61 00 00 01 	movl   $0x1,0x6116(%rip)        # 140008050 <initialized>
   140001f37:	00 00 00 
   140001f3a:	e9 71 ff ff ff       	jmp    140001eb0 <__do_global_ctors>
   140001f3f:	90                   	nop

0000000140001f40 <_setargv>:
   140001f40:	31 c0                	xor    %eax,%eax
   140001f42:	c3                   	ret    
   140001f43:	90                   	nop
   140001f44:	90                   	nop
   140001f45:	90                   	nop
   140001f46:	90                   	nop
   140001f47:	90                   	nop
   140001f48:	90                   	nop
   140001f49:	90                   	nop
   140001f4a:	90                   	nop
   140001f4b:	90                   	nop
   140001f4c:	90                   	nop
   140001f4d:	90                   	nop
   140001f4e:	90                   	nop
   140001f4f:	90                   	nop

0000000140001f50 <__dyn_tls_dtor>:
   140001f50:	48 83 ec 28          	sub    $0x28,%rsp
   140001f54:	83 fa 03             	cmp    $0x3,%edx
   140001f57:	74 17                	je     140001f70 <__dyn_tls_dtor+0x20>
   140001f59:	85 d2                	test   %edx,%edx
   140001f5b:	74 13                	je     140001f70 <__dyn_tls_dtor+0x20>
   140001f5d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001f62:	48 83 c4 28          	add    $0x28,%rsp
   140001f66:	c3                   	ret    
   140001f67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001f6e:	00 00 
   140001f70:	e8 9b 0a 00 00       	call   140002a10 <__mingw_TLScallback>
   140001f75:	b8 01 00 00 00       	mov    $0x1,%eax
   140001f7a:	48 83 c4 28          	add    $0x28,%rsp
   140001f7e:	c3                   	ret    
   140001f7f:	90                   	nop

0000000140001f80 <__dyn_tls_init>:
   140001f80:	56                   	push   %rsi
   140001f81:	53                   	push   %rbx
   140001f82:	48 83 ec 28          	sub    $0x28,%rsp
   140001f86:	48 8b 05 53 34 00 00 	mov    0x3453(%rip),%rax        # 1400053e0 <.refptr._CRT_MT>
   140001f8d:	83 38 02             	cmpl   $0x2,(%rax)
   140001f90:	74 06                	je     140001f98 <__dyn_tls_init+0x18>
   140001f92:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001f98:	83 fa 02             	cmp    $0x2,%edx
   140001f9b:	74 13                	je     140001fb0 <__dyn_tls_init+0x30>
   140001f9d:	83 fa 01             	cmp    $0x1,%edx
   140001fa0:	74 4e                	je     140001ff0 <__dyn_tls_init+0x70>
   140001fa2:	b8 01 00 00 00       	mov    $0x1,%eax
   140001fa7:	48 83 c4 28          	add    $0x28,%rsp
   140001fab:	5b                   	pop    %rbx
   140001fac:	5e                   	pop    %rsi
   140001fad:	c3                   	ret    
   140001fae:	66 90                	xchg   %ax,%ax
   140001fb0:	48 8d 1d a1 90 00 00 	lea    0x90a1(%rip),%rbx        # 14000b058 <__xd_z>
   140001fb7:	48 8d 35 9a 90 00 00 	lea    0x909a(%rip),%rsi        # 14000b058 <__xd_z>
   140001fbe:	48 39 de             	cmp    %rbx,%rsi
   140001fc1:	74 df                	je     140001fa2 <__dyn_tls_init+0x22>
   140001fc3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001fc8:	48 8b 03             	mov    (%rbx),%rax
   140001fcb:	48 85 c0             	test   %rax,%rax
   140001fce:	74 02                	je     140001fd2 <__dyn_tls_init+0x52>
   140001fd0:	ff d0                	call   *%rax
   140001fd2:	48 83 c3 08          	add    $0x8,%rbx
   140001fd6:	48 39 de             	cmp    %rbx,%rsi
   140001fd9:	75 ed                	jne    140001fc8 <__dyn_tls_init+0x48>
   140001fdb:	b8 01 00 00 00       	mov    $0x1,%eax
   140001fe0:	48 83 c4 28          	add    $0x28,%rsp
   140001fe4:	5b                   	pop    %rbx
   140001fe5:	5e                   	pop    %rsi
   140001fe6:	c3                   	ret    
   140001fe7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001fee:	00 00 
   140001ff0:	e8 1b 0a 00 00       	call   140002a10 <__mingw_TLScallback>
   140001ff5:	b8 01 00 00 00       	mov    $0x1,%eax
   140001ffa:	48 83 c4 28          	add    $0x28,%rsp
   140001ffe:	5b                   	pop    %rbx
   140001fff:	5e                   	pop    %rsi
   140002000:	c3                   	ret    
   140002001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002008:	00 00 00 00 
   14000200c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002010 <__tlregdtor>:
   140002010:	31 c0                	xor    %eax,%eax
   140002012:	c3                   	ret    
   140002013:	90                   	nop
   140002014:	90                   	nop
   140002015:	90                   	nop
   140002016:	90                   	nop
   140002017:	90                   	nop
   140002018:	90                   	nop
   140002019:	90                   	nop
   14000201a:	90                   	nop
   14000201b:	90                   	nop
   14000201c:	90                   	nop
   14000201d:	90                   	nop
   14000201e:	90                   	nop
   14000201f:	90                   	nop

0000000140002020 <_matherr>:
   140002020:	56                   	push   %rsi
   140002021:	53                   	push   %rbx
   140002022:	48 83 ec 78          	sub    $0x78,%rsp
   140002026:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   14000202b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   140002030:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   140002036:	83 39 06             	cmpl   $0x6,(%rcx)
   140002039:	0f 87 cd 00 00 00    	ja     14000210c <_matherr+0xec>
   14000203f:	8b 01                	mov    (%rcx),%eax
   140002041:	48 8d 15 dc 31 00 00 	lea    0x31dc(%rip),%rdx        # 140005224 <.rdata+0x124>
   140002048:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000204c:	48 01 d0             	add    %rdx,%rax
   14000204f:	ff e0                	jmp    *%rax
   140002051:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002058:	48 8d 1d c0 30 00 00 	lea    0x30c0(%rip),%rbx        # 14000511f <.rdata+0x1f>
   14000205f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140002065:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000206a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000206f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140002073:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002078:	e8 03 0f 00 00       	call   140002f80 <__acrt_iob_func>
   14000207d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140002084:	49 89 d8             	mov    %rbx,%r8
   140002087:	48 8d 15 6a 31 00 00 	lea    0x316a(%rip),%rdx        # 1400051f8 <.rdata+0xf8>
   14000208e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140002094:	48 89 c1             	mov    %rax,%rcx
   140002097:	49 89 f1             	mov    %rsi,%r9
   14000209a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400020a0:	e8 5b 0f 00 00       	call   140003000 <fprintf>
   1400020a5:	90                   	nop
   1400020a6:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   1400020ab:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   1400020b0:	31 c0                	xor    %eax,%eax
   1400020b2:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   1400020b8:	48 83 c4 78          	add    $0x78,%rsp
   1400020bc:	5b                   	pop    %rbx
   1400020bd:	5e                   	pop    %rsi
   1400020be:	c3                   	ret    
   1400020bf:	90                   	nop
   1400020c0:	48 8d 1d 39 30 00 00 	lea    0x3039(%rip),%rbx        # 140005100 <.rdata>
   1400020c7:	eb 96                	jmp    14000205f <_matherr+0x3f>
   1400020c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400020d0:	48 8d 1d 89 30 00 00 	lea    0x3089(%rip),%rbx        # 140005160 <.rdata+0x60>
   1400020d7:	eb 86                	jmp    14000205f <_matherr+0x3f>
   1400020d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400020e0:	48 8d 1d 59 30 00 00 	lea    0x3059(%rip),%rbx        # 140005140 <.rdata+0x40>
   1400020e7:	e9 73 ff ff ff       	jmp    14000205f <_matherr+0x3f>
   1400020ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400020f0:	48 8d 1d b9 30 00 00 	lea    0x30b9(%rip),%rbx        # 1400051b0 <.rdata+0xb0>
   1400020f7:	e9 63 ff ff ff       	jmp    14000205f <_matherr+0x3f>
   1400020fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140002100:	48 8d 1d 81 30 00 00 	lea    0x3081(%rip),%rbx        # 140005188 <.rdata+0x88>
   140002107:	e9 53 ff ff ff       	jmp    14000205f <_matherr+0x3f>
   14000210c:	48 8d 1d d3 30 00 00 	lea    0x30d3(%rip),%rbx        # 1400051e6 <.rdata+0xe6>
   140002113:	e9 47 ff ff ff       	jmp    14000205f <_matherr+0x3f>
   140002118:	90                   	nop
   140002119:	90                   	nop
   14000211a:	90                   	nop
   14000211b:	90                   	nop
   14000211c:	90                   	nop
   14000211d:	90                   	nop
   14000211e:	90                   	nop
   14000211f:	90                   	nop

0000000140002120 <_fpreset>:
   140002120:	db e3                	fninit 
   140002122:	c3                   	ret    
   140002123:	90                   	nop
   140002124:	90                   	nop
   140002125:	90                   	nop
   140002126:	90                   	nop
   140002127:	90                   	nop
   140002128:	90                   	nop
   140002129:	90                   	nop
   14000212a:	90                   	nop
   14000212b:	90                   	nop
   14000212c:	90                   	nop
   14000212d:	90                   	nop
   14000212e:	90                   	nop
   14000212f:	90                   	nop

0000000140002130 <__report_error>:
   140002130:	41 54                	push   %r12
   140002132:	53                   	push   %rbx
   140002133:	48 83 ec 38          	sub    $0x38,%rsp
   140002137:	49 89 cc             	mov    %rcx,%r12
   14000213a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000213f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002144:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140002149:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000214e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140002153:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140002158:	e8 23 0e 00 00       	call   140002f80 <__acrt_iob_func>
   14000215d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140002163:	ba 01 00 00 00       	mov    $0x1,%edx
   140002168:	48 8d 0d d1 30 00 00 	lea    0x30d1(%rip),%rcx        # 140005240 <.rdata>
   14000216f:	49 89 c1             	mov    %rax,%r9
   140002172:	e8 99 0e 00 00       	call   140003010 <fwrite>
   140002177:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   14000217c:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002181:	e8 fa 0d 00 00       	call   140002f80 <__acrt_iob_func>
   140002186:	4c 89 e2             	mov    %r12,%rdx
   140002189:	48 89 c1             	mov    %rax,%rcx
   14000218c:	49 89 d8             	mov    %rbx,%r8
   14000218f:	e8 b4 0e 00 00       	call   140003048 <vfprintf>
   140002194:	e8 4f 0e 00 00       	call   140002fe8 <abort>
   140002199:	90                   	nop
   14000219a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400021a0 <mark_section_writable>:
   1400021a0:	41 54                	push   %r12
   1400021a2:	56                   	push   %rsi
   1400021a3:	53                   	push   %rbx
   1400021a4:	48 83 ec 50          	sub    $0x50,%rsp
   1400021a8:	48 63 1d 05 5f 00 00 	movslq 0x5f05(%rip),%rbx        # 1400080b4 <maxSections>
   1400021af:	49 89 cc             	mov    %rcx,%r12
   1400021b2:	85 db                	test   %ebx,%ebx
   1400021b4:	0f 8e 16 01 00 00    	jle    1400022d0 <mark_section_writable+0x130>
   1400021ba:	48 8b 05 f7 5e 00 00 	mov    0x5ef7(%rip),%rax        # 1400080b8 <the_secs>
   1400021c1:	45 31 c9             	xor    %r9d,%r9d
   1400021c4:	48 83 c0 18          	add    $0x18,%rax
   1400021c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400021cf:	00 
   1400021d0:	4c 8b 00             	mov    (%rax),%r8
   1400021d3:	4d 39 e0             	cmp    %r12,%r8
   1400021d6:	77 13                	ja     1400021eb <mark_section_writable+0x4b>
   1400021d8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400021dc:	8b 52 08             	mov    0x8(%rdx),%edx
   1400021df:	49 01 d0             	add    %rdx,%r8
   1400021e2:	4d 39 c4             	cmp    %r8,%r12
   1400021e5:	0f 82 8a 00 00 00    	jb     140002275 <mark_section_writable+0xd5>
   1400021eb:	41 83 c1 01          	add    $0x1,%r9d
   1400021ef:	48 83 c0 28          	add    $0x28,%rax
   1400021f3:	41 39 d9             	cmp    %ebx,%r9d
   1400021f6:	75 d8                	jne    1400021d0 <mark_section_writable+0x30>
   1400021f8:	4c 89 e1             	mov    %r12,%rcx
   1400021fb:	e8 20 0a 00 00       	call   140002c20 <__mingw_GetSectionForAddress>
   140002200:	48 89 c6             	mov    %rax,%rsi
   140002203:	48 85 c0             	test   %rax,%rax
   140002206:	0f 84 e6 00 00 00    	je     1400022f2 <mark_section_writable+0x152>
   14000220c:	48 8b 05 a5 5e 00 00 	mov    0x5ea5(%rip),%rax        # 1400080b8 <the_secs>
   140002213:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
   140002217:	48 c1 e3 03          	shl    $0x3,%rbx
   14000221b:	48 01 d8             	add    %rbx,%rax
   14000221e:	48 89 70 20          	mov    %rsi,0x20(%rax)
   140002222:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140002228:	e8 23 0b 00 00       	call   140002d50 <_GetPEImageBase>
   14000222d:	8b 56 0c             	mov    0xc(%rsi),%edx
   140002230:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140002236:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000223a:	48 8b 05 77 5e 00 00 	mov    0x5e77(%rip),%rax        # 1400080b8 <the_secs>
   140002241:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140002246:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000224b:	ff 15 0b 71 00 00    	call   *0x710b(%rip)        # 14000935c <__imp_VirtualQuery>
   140002251:	48 85 c0             	test   %rax,%rax
   140002254:	0f 84 7d 00 00 00    	je     1400022d7 <mark_section_writable+0x137>
   14000225a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000225e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140002261:	83 e2 bf             	and    $0xffffffbf,%edx
   140002264:	74 08                	je     14000226e <mark_section_writable+0xce>
   140002266:	8d 50 fc             	lea    -0x4(%rax),%edx
   140002269:	83 e2 fb             	and    $0xfffffffb,%edx
   14000226c:	75 12                	jne    140002280 <mark_section_writable+0xe0>
   14000226e:	83 05 3f 5e 00 00 01 	addl   $0x1,0x5e3f(%rip)        # 1400080b4 <maxSections>
   140002275:	48 83 c4 50          	add    $0x50,%rsp
   140002279:	5b                   	pop    %rbx
   14000227a:	5e                   	pop    %rsi
   14000227b:	41 5c                	pop    %r12
   14000227d:	c3                   	ret    
   14000227e:	66 90                	xchg   %ax,%ax
   140002280:	83 f8 02             	cmp    $0x2,%eax
   140002283:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002288:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000228d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140002293:	b8 40 00 00 00       	mov    $0x40,%eax
   140002298:	44 0f 45 c0          	cmovne %eax,%r8d
   14000229c:	48 03 1d 15 5e 00 00 	add    0x5e15(%rip),%rbx        # 1400080b8 <the_secs>
   1400022a3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400022a7:	49 89 d9             	mov    %rbx,%r9
   1400022aa:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400022ae:	ff 15 a0 70 00 00    	call   *0x70a0(%rip)        # 140009354 <__imp_VirtualProtect>
   1400022b4:	85 c0                	test   %eax,%eax
   1400022b6:	75 b6                	jne    14000226e <mark_section_writable+0xce>
   1400022b8:	ff 15 5e 70 00 00    	call   *0x705e(%rip)        # 14000931c <__imp_GetLastError>
   1400022be:	48 8d 0d f3 2f 00 00 	lea    0x2ff3(%rip),%rcx        # 1400052b8 <.rdata+0x78>
   1400022c5:	89 c2                	mov    %eax,%edx
   1400022c7:	e8 64 fe ff ff       	call   140002130 <__report_error>
   1400022cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400022d0:	31 db                	xor    %ebx,%ebx
   1400022d2:	e9 21 ff ff ff       	jmp    1400021f8 <mark_section_writable+0x58>
   1400022d7:	48 8b 05 da 5d 00 00 	mov    0x5dda(%rip),%rax        # 1400080b8 <the_secs>
   1400022de:	8b 56 08             	mov    0x8(%rsi),%edx
   1400022e1:	48 8d 0d 98 2f 00 00 	lea    0x2f98(%rip),%rcx        # 140005280 <.rdata+0x40>
   1400022e8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   1400022ed:	e8 3e fe ff ff       	call   140002130 <__report_error>
   1400022f2:	4c 89 e2             	mov    %r12,%rdx
   1400022f5:	48 8d 0d 64 2f 00 00 	lea    0x2f64(%rip),%rcx        # 140005260 <.rdata+0x20>
   1400022fc:	e8 2f fe ff ff       	call   140002130 <__report_error>
   140002301:	90                   	nop
   140002302:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002309:	00 00 00 00 
   14000230d:	0f 1f 00             	nopl   (%rax)

0000000140002310 <_pei386_runtime_relocator>:
   140002310:	55                   	push   %rbp
   140002311:	41 57                	push   %r15
   140002313:	41 56                	push   %r14
   140002315:	41 55                	push   %r13
   140002317:	41 54                	push   %r12
   140002319:	57                   	push   %rdi
   14000231a:	56                   	push   %rsi
   14000231b:	53                   	push   %rbx
   14000231c:	48 83 ec 48          	sub    $0x48,%rsp
   140002320:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140002325:	8b 35 85 5d 00 00    	mov    0x5d85(%rip),%esi        # 1400080b0 <was_init.0>
   14000232b:	85 f6                	test   %esi,%esi
   14000232d:	74 11                	je     140002340 <_pei386_runtime_relocator+0x30>
   14000232f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140002333:	5b                   	pop    %rbx
   140002334:	5e                   	pop    %rsi
   140002335:	5f                   	pop    %rdi
   140002336:	41 5c                	pop    %r12
   140002338:	41 5d                	pop    %r13
   14000233a:	41 5e                	pop    %r14
   14000233c:	41 5f                	pop    %r15
   14000233e:	5d                   	pop    %rbp
   14000233f:	c3                   	ret    
   140002340:	c7 05 66 5d 00 00 01 	movl   $0x1,0x5d66(%rip)        # 1400080b0 <was_init.0>
   140002347:	00 00 00 
   14000234a:	e8 51 09 00 00       	call   140002ca0 <__mingw_GetSectionCount>
   14000234f:	48 98                	cltq   
   140002351:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002355:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   14000235c:	00 
   14000235d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140002361:	e8 8a 0b 00 00       	call   140002ef0 <___chkstk_ms>
   140002366:	48 8b 3d e3 30 00 00 	mov    0x30e3(%rip),%rdi        # 140005450 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   14000236d:	48 8b 1d ec 30 00 00 	mov    0x30ec(%rip),%rbx        # 140005460 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140002374:	c7 05 36 5d 00 00 00 	movl   $0x0,0x5d36(%rip)        # 1400080b4 <maxSections>
   14000237b:	00 00 00 
   14000237e:	48 29 c4             	sub    %rax,%rsp
   140002381:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140002386:	48 89 05 2b 5d 00 00 	mov    %rax,0x5d2b(%rip)        # 1400080b8 <the_secs>
   14000238d:	48 89 f8             	mov    %rdi,%rax
   140002390:	48 29 d8             	sub    %rbx,%rax
   140002393:	48 83 f8 07          	cmp    $0x7,%rax
   140002397:	7e 96                	jle    14000232f <_pei386_runtime_relocator+0x1f>
   140002399:	8b 13                	mov    (%rbx),%edx
   14000239b:	48 83 f8 0b          	cmp    $0xb,%rax
   14000239f:	0f 8f 83 01 00 00    	jg     140002528 <_pei386_runtime_relocator+0x218>
   1400023a5:	8b 03                	mov    (%rbx),%eax
   1400023a7:	85 c0                	test   %eax,%eax
   1400023a9:	0f 85 29 02 00 00    	jne    1400025d8 <_pei386_runtime_relocator+0x2c8>
   1400023af:	8b 43 04             	mov    0x4(%rbx),%eax
   1400023b2:	85 c0                	test   %eax,%eax
   1400023b4:	0f 85 1e 02 00 00    	jne    1400025d8 <_pei386_runtime_relocator+0x2c8>
   1400023ba:	8b 53 08             	mov    0x8(%rbx),%edx
   1400023bd:	83 fa 01             	cmp    $0x1,%edx
   1400023c0:	0f 85 72 02 00 00    	jne    140002638 <_pei386_runtime_relocator+0x328>
   1400023c6:	48 83 c3 0c          	add    $0xc,%rbx
   1400023ca:	48 39 fb             	cmp    %rdi,%rbx
   1400023cd:	0f 83 5c ff ff ff    	jae    14000232f <_pei386_runtime_relocator+0x1f>
   1400023d3:	4c 8b 3d a6 30 00 00 	mov    0x30a6(%rip),%r15        # 140005480 <.refptr.__image_base__>
   1400023da:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
   1400023e1:	ff ff ff 
   1400023e4:	eb 5d                	jmp    140002443 <_pei386_runtime_relocator+0x133>
   1400023e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400023ed:	00 00 00 
   1400023f0:	41 0f b6 06          	movzbl (%r14),%eax
   1400023f4:	49 89 c3             	mov    %rax,%r11
   1400023f7:	49 81 cb 00 ff ff ff 	or     $0xffffffffffffff00,%r11
   1400023fe:	84 c0                	test   %al,%al
   140002400:	49 0f 48 c3          	cmovs  %r11,%rax
   140002404:	48 29 c8             	sub    %rcx,%rax
   140002407:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   14000240e:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140002412:	75 17                	jne    14000242b <_pei386_runtime_relocator+0x11b>
   140002414:	49 83 fd 80          	cmp    $0xffffffffffffff80,%r13
   140002418:	0f 8c 06 02 00 00    	jl     140002624 <_pei386_runtime_relocator+0x314>
   14000241e:	49 81 fd ff 00 00 00 	cmp    $0xff,%r13
   140002425:	0f 8f f9 01 00 00    	jg     140002624 <_pei386_runtime_relocator+0x314>
   14000242b:	4c 89 f1             	mov    %r14,%rcx
   14000242e:	e8 6d fd ff ff       	call   1400021a0 <mark_section_writable>
   140002433:	45 88 2e             	mov    %r13b,(%r14)
   140002436:	48 83 c3 0c          	add    $0xc,%rbx
   14000243a:	48 39 fb             	cmp    %rdi,%rbx
   14000243d:	0f 83 8d 00 00 00    	jae    1400024d0 <_pei386_runtime_relocator+0x1c0>
   140002443:	8b 0b                	mov    (%rbx),%ecx
   140002445:	44 8b 43 08          	mov    0x8(%rbx),%r8d
   140002449:	44 8b 73 04          	mov    0x4(%rbx),%r14d
   14000244d:	4c 01 f9             	add    %r15,%rcx
   140002450:	41 0f b6 d0          	movzbl %r8b,%edx
   140002454:	4c 8b 09             	mov    (%rcx),%r9
   140002457:	4d 01 fe             	add    %r15,%r14
   14000245a:	83 fa 20             	cmp    $0x20,%edx
   14000245d:	0f 84 25 01 00 00    	je     140002588 <_pei386_runtime_relocator+0x278>
   140002463:	0f 87 e7 00 00 00    	ja     140002550 <_pei386_runtime_relocator+0x240>
   140002469:	83 fa 08             	cmp    $0x8,%edx
   14000246c:	74 82                	je     1400023f0 <_pei386_runtime_relocator+0xe0>
   14000246e:	83 fa 10             	cmp    $0x10,%edx
   140002471:	0f 85 a1 01 00 00    	jne    140002618 <_pei386_runtime_relocator+0x308>
   140002477:	41 0f b7 06          	movzwl (%r14),%eax
   14000247b:	49 89 c3             	mov    %rax,%r11
   14000247e:	49 81 cb 00 00 ff ff 	or     $0xffffffffffff0000,%r11
   140002485:	66 85 c0             	test   %ax,%ax
   140002488:	49 0f 48 c3          	cmovs  %r11,%rax
   14000248c:	48 29 c8             	sub    %rcx,%rax
   14000248f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002496:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   14000249a:	75 1a                	jne    1400024b6 <_pei386_runtime_relocator+0x1a6>
   14000249c:	49 81 fd 00 80 ff ff 	cmp    $0xffffffffffff8000,%r13
   1400024a3:	0f 8c 7b 01 00 00    	jl     140002624 <_pei386_runtime_relocator+0x314>
   1400024a9:	49 81 fd ff ff 00 00 	cmp    $0xffff,%r13
   1400024b0:	0f 8f 6e 01 00 00    	jg     140002624 <_pei386_runtime_relocator+0x314>
   1400024b6:	4c 89 f1             	mov    %r14,%rcx
   1400024b9:	48 83 c3 0c          	add    $0xc,%rbx
   1400024bd:	e8 de fc ff ff       	call   1400021a0 <mark_section_writable>
   1400024c2:	66 45 89 2e          	mov    %r13w,(%r14)
   1400024c6:	48 39 fb             	cmp    %rdi,%rbx
   1400024c9:	0f 82 74 ff ff ff    	jb     140002443 <_pei386_runtime_relocator+0x133>
   1400024cf:	90                   	nop
   1400024d0:	8b 15 de 5b 00 00    	mov    0x5bde(%rip),%edx        # 1400080b4 <maxSections>
   1400024d6:	85 d2                	test   %edx,%edx
   1400024d8:	0f 8e 51 fe ff ff    	jle    14000232f <_pei386_runtime_relocator+0x1f>
   1400024de:	48 8b 3d 6f 6e 00 00 	mov    0x6e6f(%rip),%rdi        # 140009354 <__imp_VirtualProtect>
   1400024e5:	31 db                	xor    %ebx,%ebx
   1400024e7:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   1400024eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400024f0:	48 8b 05 c1 5b 00 00 	mov    0x5bc1(%rip),%rax        # 1400080b8 <the_secs>
   1400024f7:	48 01 d8             	add    %rbx,%rax
   1400024fa:	44 8b 00             	mov    (%rax),%r8d
   1400024fd:	45 85 c0             	test   %r8d,%r8d
   140002500:	74 0d                	je     14000250f <_pei386_runtime_relocator+0x1ff>
   140002502:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140002506:	48 8b 48 08          	mov    0x8(%rax),%rcx
   14000250a:	4d 89 e1             	mov    %r12,%r9
   14000250d:	ff d7                	call   *%rdi
   14000250f:	83 c6 01             	add    $0x1,%esi
   140002512:	48 83 c3 28          	add    $0x28,%rbx
   140002516:	3b 35 98 5b 00 00    	cmp    0x5b98(%rip),%esi        # 1400080b4 <maxSections>
   14000251c:	7c d2                	jl     1400024f0 <_pei386_runtime_relocator+0x1e0>
   14000251e:	e9 0c fe ff ff       	jmp    14000232f <_pei386_runtime_relocator+0x1f>
   140002523:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002528:	85 d2                	test   %edx,%edx
   14000252a:	0f 85 a8 00 00 00    	jne    1400025d8 <_pei386_runtime_relocator+0x2c8>
   140002530:	8b 43 04             	mov    0x4(%rbx),%eax
   140002533:	89 c2                	mov    %eax,%edx
   140002535:	0b 53 08             	or     0x8(%rbx),%edx
   140002538:	0f 85 74 fe ff ff    	jne    1400023b2 <_pei386_runtime_relocator+0xa2>
   14000253e:	48 83 c3 0c          	add    $0xc,%rbx
   140002542:	e9 5e fe ff ff       	jmp    1400023a5 <_pei386_runtime_relocator+0x95>
   140002547:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000254e:	00 00 
   140002550:	83 fa 40             	cmp    $0x40,%edx
   140002553:	0f 85 bf 00 00 00    	jne    140002618 <_pei386_runtime_relocator+0x308>
   140002559:	49 8b 06             	mov    (%r14),%rax
   14000255c:	48 29 c8             	sub    %rcx,%rax
   14000255f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002566:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   14000256a:	75 09                	jne    140002575 <_pei386_runtime_relocator+0x265>
   14000256c:	4d 85 ed             	test   %r13,%r13
   14000256f:	0f 89 af 00 00 00    	jns    140002624 <_pei386_runtime_relocator+0x314>
   140002575:	4c 89 f1             	mov    %r14,%rcx
   140002578:	e8 23 fc ff ff       	call   1400021a0 <mark_section_writable>
   14000257d:	4d 89 2e             	mov    %r13,(%r14)
   140002580:	e9 b1 fe ff ff       	jmp    140002436 <_pei386_runtime_relocator+0x126>
   140002585:	0f 1f 00             	nopl   (%rax)
   140002588:	41 8b 06             	mov    (%r14),%eax
   14000258b:	49 89 c2             	mov    %rax,%r10
   14000258e:	4c 09 e0             	or     %r12,%rax
   140002591:	45 85 d2             	test   %r10d,%r10d
   140002594:	49 0f 49 c2          	cmovns %r10,%rax
   140002598:	48 29 c8             	sub    %rcx,%rax
   14000259b:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   1400025a2:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   1400025a6:	75 19                	jne    1400025c1 <_pei386_runtime_relocator+0x2b1>
   1400025a8:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   1400025af:	ff ff ff 
   1400025b2:	49 39 c5             	cmp    %rax,%r13
   1400025b5:	7e 6d                	jle    140002624 <_pei386_runtime_relocator+0x314>
   1400025b7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400025bc:	49 39 c5             	cmp    %rax,%r13
   1400025bf:	7f 63                	jg     140002624 <_pei386_runtime_relocator+0x314>
   1400025c1:	4c 89 f1             	mov    %r14,%rcx
   1400025c4:	e8 d7 fb ff ff       	call   1400021a0 <mark_section_writable>
   1400025c9:	45 89 2e             	mov    %r13d,(%r14)
   1400025cc:	e9 65 fe ff ff       	jmp    140002436 <_pei386_runtime_relocator+0x126>
   1400025d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400025d8:	48 39 fb             	cmp    %rdi,%rbx
   1400025db:	0f 83 4e fd ff ff    	jae    14000232f <_pei386_runtime_relocator+0x1f>
   1400025e1:	4c 8b 35 98 2e 00 00 	mov    0x2e98(%rip),%r14        # 140005480 <.refptr.__image_base__>
   1400025e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400025ef:	00 
   1400025f0:	44 8b 63 04          	mov    0x4(%rbx),%r12d
   1400025f4:	44 8b 2b             	mov    (%rbx),%r13d
   1400025f7:	48 83 c3 08          	add    $0x8,%rbx
   1400025fb:	4d 01 f4             	add    %r14,%r12
   1400025fe:	45 03 2c 24          	add    (%r12),%r13d
   140002602:	4c 89 e1             	mov    %r12,%rcx
   140002605:	e8 96 fb ff ff       	call   1400021a0 <mark_section_writable>
   14000260a:	45 89 2c 24          	mov    %r13d,(%r12)
   14000260e:	48 39 fb             	cmp    %rdi,%rbx
   140002611:	72 dd                	jb     1400025f0 <_pei386_runtime_relocator+0x2e0>
   140002613:	e9 b8 fe ff ff       	jmp    1400024d0 <_pei386_runtime_relocator+0x1c0>
   140002618:	48 8d 0d f9 2c 00 00 	lea    0x2cf9(%rip),%rcx        # 140005318 <.rdata+0xd8>
   14000261f:	e8 0c fb ff ff       	call   140002130 <__report_error>
   140002624:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
   140002629:	4d 89 f0             	mov    %r14,%r8
   14000262c:	48 8d 0d 15 2d 00 00 	lea    0x2d15(%rip),%rcx        # 140005348 <.rdata+0x108>
   140002633:	e8 f8 fa ff ff       	call   140002130 <__report_error>
   140002638:	48 8d 0d a1 2c 00 00 	lea    0x2ca1(%rip),%rcx        # 1400052e0 <.rdata+0xa0>
   14000263f:	e8 ec fa ff ff       	call   140002130 <__report_error>
   140002644:	90                   	nop
   140002645:	90                   	nop
   140002646:	90                   	nop
   140002647:	90                   	nop
   140002648:	90                   	nop
   140002649:	90                   	nop
   14000264a:	90                   	nop
   14000264b:	90                   	nop
   14000264c:	90                   	nop
   14000264d:	90                   	nop
   14000264e:	90                   	nop
   14000264f:	90                   	nop

0000000140002650 <__mingw_raise_matherr>:
   140002650:	48 83 ec 58          	sub    $0x58,%rsp
   140002654:	48 8b 05 65 5a 00 00 	mov    0x5a65(%rip),%rax        # 1400080c0 <stUserMathErr>
   14000265b:	48 85 c0             	test   %rax,%rax
   14000265e:	74 2c                	je     14000268c <__mingw_raise_matherr+0x3c>
   140002660:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140002667:	00 00 
   140002669:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   14000266d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140002672:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140002677:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   14000267d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140002683:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140002689:	ff d0                	call   *%rax
   14000268b:	90                   	nop
   14000268c:	48 83 c4 58          	add    $0x58,%rsp
   140002690:	c3                   	ret    
   140002691:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002698:	00 00 00 00 
   14000269c:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400026a0 <__mingw_setusermatherr>:
   1400026a0:	48 89 0d 19 5a 00 00 	mov    %rcx,0x5a19(%rip)        # 1400080c0 <stUserMathErr>
   1400026a7:	e9 14 09 00 00       	jmp    140002fc0 <__setusermatherr>
   1400026ac:	90                   	nop
   1400026ad:	90                   	nop
   1400026ae:	90                   	nop
   1400026af:	90                   	nop

00000001400026b0 <_gnu_exception_handler>:
   1400026b0:	41 54                	push   %r12
   1400026b2:	48 83 ec 20          	sub    $0x20,%rsp
   1400026b6:	48 8b 11             	mov    (%rcx),%rdx
   1400026b9:	8b 02                	mov    (%rdx),%eax
   1400026bb:	49 89 cc             	mov    %rcx,%r12
   1400026be:	89 c1                	mov    %eax,%ecx
   1400026c0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   1400026c6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   1400026cc:	0f 84 be 00 00 00    	je     140002790 <_gnu_exception_handler+0xe0>
   1400026d2:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   1400026d7:	0f 87 9a 00 00 00    	ja     140002777 <_gnu_exception_handler+0xc7>
   1400026dd:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   1400026e2:	76 44                	jbe    140002728 <_gnu_exception_handler+0x78>
   1400026e4:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   1400026e9:	83 f8 09             	cmp    $0x9,%eax
   1400026ec:	77 2a                	ja     140002718 <_gnu_exception_handler+0x68>
   1400026ee:	48 8d 15 ab 2c 00 00 	lea    0x2cab(%rip),%rdx        # 1400053a0 <.rdata>
   1400026f5:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   1400026f9:	48 01 d0             	add    %rdx,%rax
   1400026fc:	ff e0                	jmp    *%rax
   1400026fe:	66 90                	xchg   %ax,%ax
   140002700:	ba 01 00 00 00       	mov    $0x1,%edx
   140002705:	b9 08 00 00 00       	mov    $0x8,%ecx
   14000270a:	e8 21 09 00 00       	call   140003030 <signal>
   14000270f:	e8 0c fa ff ff       	call   140002120 <_fpreset>
   140002714:	0f 1f 40 00          	nopl   0x0(%rax)
   140002718:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000271d:	48 83 c4 20          	add    $0x20,%rsp
   140002721:	41 5c                	pop    %r12
   140002723:	c3                   	ret    
   140002724:	0f 1f 40 00          	nopl   0x0(%rax)
   140002728:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   14000272d:	0f 84 dd 00 00 00    	je     140002810 <_gnu_exception_handler+0x160>
   140002733:	76 3b                	jbe    140002770 <_gnu_exception_handler+0xc0>
   140002735:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   14000273a:	74 dc                	je     140002718 <_gnu_exception_handler+0x68>
   14000273c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140002741:	75 34                	jne    140002777 <_gnu_exception_handler+0xc7>
   140002743:	31 d2                	xor    %edx,%edx
   140002745:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000274a:	e8 e1 08 00 00       	call   140003030 <signal>
   14000274f:	48 83 f8 01          	cmp    $0x1,%rax
   140002753:	0f 84 e3 00 00 00    	je     14000283c <_gnu_exception_handler+0x18c>
   140002759:	48 85 c0             	test   %rax,%rax
   14000275c:	74 19                	je     140002777 <_gnu_exception_handler+0xc7>
   14000275e:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002763:	ff d0                	call   *%rax
   140002765:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000276a:	eb b1                	jmp    14000271d <_gnu_exception_handler+0x6d>
   14000276c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002770:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140002775:	74 a1                	je     140002718 <_gnu_exception_handler+0x68>
   140002777:	48 8b 05 62 59 00 00 	mov    0x5962(%rip),%rax        # 1400080e0 <__mingw_oldexcpt_handler>
   14000277e:	48 85 c0             	test   %rax,%rax
   140002781:	74 1d                	je     1400027a0 <_gnu_exception_handler+0xf0>
   140002783:	4c 89 e1             	mov    %r12,%rcx
   140002786:	48 83 c4 20          	add    $0x20,%rsp
   14000278a:	41 5c                	pop    %r12
   14000278c:	48 ff e0             	rex.W jmp *%rax
   14000278f:	90                   	nop
   140002790:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140002794:	0f 85 38 ff ff ff    	jne    1400026d2 <_gnu_exception_handler+0x22>
   14000279a:	e9 79 ff ff ff       	jmp    140002718 <_gnu_exception_handler+0x68>
   14000279f:	90                   	nop
   1400027a0:	31 c0                	xor    %eax,%eax
   1400027a2:	48 83 c4 20          	add    $0x20,%rsp
   1400027a6:	41 5c                	pop    %r12
   1400027a8:	c3                   	ret    
   1400027a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400027b0:	31 d2                	xor    %edx,%edx
   1400027b2:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400027b7:	e8 74 08 00 00       	call   140003030 <signal>
   1400027bc:	48 83 f8 01          	cmp    $0x1,%rax
   1400027c0:	0f 84 3a ff ff ff    	je     140002700 <_gnu_exception_handler+0x50>
   1400027c6:	48 85 c0             	test   %rax,%rax
   1400027c9:	74 ac                	je     140002777 <_gnu_exception_handler+0xc7>
   1400027cb:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400027d0:	ff d0                	call   *%rax
   1400027d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400027d7:	e9 41 ff ff ff       	jmp    14000271d <_gnu_exception_handler+0x6d>
   1400027dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400027e0:	31 d2                	xor    %edx,%edx
   1400027e2:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400027e7:	e8 44 08 00 00       	call   140003030 <signal>
   1400027ec:	48 83 f8 01          	cmp    $0x1,%rax
   1400027f0:	75 d4                	jne    1400027c6 <_gnu_exception_handler+0x116>
   1400027f2:	ba 01 00 00 00       	mov    $0x1,%edx
   1400027f7:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400027fc:	e8 2f 08 00 00       	call   140003030 <signal>
   140002801:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002806:	e9 12 ff ff ff       	jmp    14000271d <_gnu_exception_handler+0x6d>
   14000280b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002810:	31 d2                	xor    %edx,%edx
   140002812:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002817:	e8 14 08 00 00       	call   140003030 <signal>
   14000281c:	48 83 f8 01          	cmp    $0x1,%rax
   140002820:	74 31                	je     140002853 <_gnu_exception_handler+0x1a3>
   140002822:	48 85 c0             	test   %rax,%rax
   140002825:	0f 84 4c ff ff ff    	je     140002777 <_gnu_exception_handler+0xc7>
   14000282b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002830:	ff d0                	call   *%rax
   140002832:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002837:	e9 e1 fe ff ff       	jmp    14000271d <_gnu_exception_handler+0x6d>
   14000283c:	ba 01 00 00 00       	mov    $0x1,%edx
   140002841:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002846:	e8 e5 07 00 00       	call   140003030 <signal>
   14000284b:	83 c8 ff             	or     $0xffffffff,%eax
   14000284e:	e9 ca fe ff ff       	jmp    14000271d <_gnu_exception_handler+0x6d>
   140002853:	ba 01 00 00 00       	mov    $0x1,%edx
   140002858:	b9 0b 00 00 00       	mov    $0xb,%ecx
   14000285d:	e8 ce 07 00 00       	call   140003030 <signal>
   140002862:	83 c8 ff             	or     $0xffffffff,%eax
   140002865:	e9 b3 fe ff ff       	jmp    14000271d <_gnu_exception_handler+0x6d>
   14000286a:	90                   	nop
   14000286b:	90                   	nop
   14000286c:	90                   	nop
   14000286d:	90                   	nop
   14000286e:	90                   	nop
   14000286f:	90                   	nop

0000000140002870 <__mingwthr_run_key_dtors.part.0>:
   140002870:	41 55                	push   %r13
   140002872:	41 54                	push   %r12
   140002874:	57                   	push   %rdi
   140002875:	56                   	push   %rsi
   140002876:	53                   	push   %rbx
   140002877:	48 83 ec 20          	sub    $0x20,%rsp
   14000287b:	4c 8d 2d 9e 58 00 00 	lea    0x589e(%rip),%r13        # 140008120 <__mingwthr_cs>
   140002882:	4c 89 e9             	mov    %r13,%rcx
   140002885:	ff 15 89 6a 00 00    	call   *0x6a89(%rip)        # 140009314 <__imp_EnterCriticalSection>
   14000288b:	48 8b 1d 6e 58 00 00 	mov    0x586e(%rip),%rbx        # 140008100 <key_dtor_list>
   140002892:	48 85 db             	test   %rbx,%rbx
   140002895:	74 35                	je     1400028cc <__mingwthr_run_key_dtors.part.0+0x5c>
   140002897:	48 8b 3d ae 6a 00 00 	mov    0x6aae(%rip),%rdi        # 14000934c <__imp_TlsGetValue>
   14000289e:	48 8b 35 77 6a 00 00 	mov    0x6a77(%rip),%rsi        # 14000931c <__imp_GetLastError>
   1400028a5:	0f 1f 00             	nopl   (%rax)
   1400028a8:	8b 0b                	mov    (%rbx),%ecx
   1400028aa:	ff d7                	call   *%rdi
   1400028ac:	49 89 c4             	mov    %rax,%r12
   1400028af:	ff d6                	call   *%rsi
   1400028b1:	85 c0                	test   %eax,%eax
   1400028b3:	75 0e                	jne    1400028c3 <__mingwthr_run_key_dtors.part.0+0x53>
   1400028b5:	4d 85 e4             	test   %r12,%r12
   1400028b8:	74 09                	je     1400028c3 <__mingwthr_run_key_dtors.part.0+0x53>
   1400028ba:	48 8b 43 08          	mov    0x8(%rbx),%rax
   1400028be:	4c 89 e1             	mov    %r12,%rcx
   1400028c1:	ff d0                	call   *%rax
   1400028c3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400028c7:	48 85 db             	test   %rbx,%rbx
   1400028ca:	75 dc                	jne    1400028a8 <__mingwthr_run_key_dtors.part.0+0x38>
   1400028cc:	4c 89 e9             	mov    %r13,%rcx
   1400028cf:	48 83 c4 20          	add    $0x20,%rsp
   1400028d3:	5b                   	pop    %rbx
   1400028d4:	5e                   	pop    %rsi
   1400028d5:	5f                   	pop    %rdi
   1400028d6:	41 5c                	pop    %r12
   1400028d8:	41 5d                	pop    %r13
   1400028da:	48 ff 25 53 6a 00 00 	rex.W jmp *0x6a53(%rip)        # 140009334 <__imp_LeaveCriticalSection>
   1400028e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400028e8:	00 00 00 00 
   1400028ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400028f0 <___w64_mingwthr_add_key_dtor>:
   1400028f0:	41 54                	push   %r12
   1400028f2:	57                   	push   %rdi
   1400028f3:	56                   	push   %rsi
   1400028f4:	53                   	push   %rbx
   1400028f5:	48 83 ec 28          	sub    $0x28,%rsp
   1400028f9:	8b 05 09 58 00 00    	mov    0x5809(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   1400028ff:	89 cf                	mov    %ecx,%edi
   140002901:	48 89 d6             	mov    %rdx,%rsi
   140002904:	85 c0                	test   %eax,%eax
   140002906:	75 10                	jne    140002918 <___w64_mingwthr_add_key_dtor+0x28>
   140002908:	48 83 c4 28          	add    $0x28,%rsp
   14000290c:	5b                   	pop    %rbx
   14000290d:	5e                   	pop    %rsi
   14000290e:	5f                   	pop    %rdi
   14000290f:	41 5c                	pop    %r12
   140002911:	c3                   	ret    
   140002912:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002918:	ba 18 00 00 00       	mov    $0x18,%edx
   14000291d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002922:	e8 c9 06 00 00       	call   140002ff0 <calloc>
   140002927:	48 89 c3             	mov    %rax,%rbx
   14000292a:	48 85 c0             	test   %rax,%rax
   14000292d:	74 3d                	je     14000296c <___w64_mingwthr_add_key_dtor+0x7c>
   14000292f:	4c 8d 25 ea 57 00 00 	lea    0x57ea(%rip),%r12        # 140008120 <__mingwthr_cs>
   140002936:	89 38                	mov    %edi,(%rax)
   140002938:	48 89 70 08          	mov    %rsi,0x8(%rax)
   14000293c:	4c 89 e1             	mov    %r12,%rcx
   14000293f:	ff 15 cf 69 00 00    	call   *0x69cf(%rip)        # 140009314 <__imp_EnterCriticalSection>
   140002945:	48 8b 05 b4 57 00 00 	mov    0x57b4(%rip),%rax        # 140008100 <key_dtor_list>
   14000294c:	4c 89 e1             	mov    %r12,%rcx
   14000294f:	48 89 1d aa 57 00 00 	mov    %rbx,0x57aa(%rip)        # 140008100 <key_dtor_list>
   140002956:	48 89 43 10          	mov    %rax,0x10(%rbx)
   14000295a:	ff 15 d4 69 00 00    	call   *0x69d4(%rip)        # 140009334 <__imp_LeaveCriticalSection>
   140002960:	31 c0                	xor    %eax,%eax
   140002962:	48 83 c4 28          	add    $0x28,%rsp
   140002966:	5b                   	pop    %rbx
   140002967:	5e                   	pop    %rsi
   140002968:	5f                   	pop    %rdi
   140002969:	41 5c                	pop    %r12
   14000296b:	c3                   	ret    
   14000296c:	83 c8 ff             	or     $0xffffffff,%eax
   14000296f:	eb 97                	jmp    140002908 <___w64_mingwthr_add_key_dtor+0x18>
   140002971:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002978:	00 00 00 00 
   14000297c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002980 <___w64_mingwthr_remove_key_dtor>:
   140002980:	41 54                	push   %r12
   140002982:	53                   	push   %rbx
   140002983:	48 83 ec 28          	sub    $0x28,%rsp
   140002987:	8b 05 7b 57 00 00    	mov    0x577b(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   14000298d:	89 cb                	mov    %ecx,%ebx
   14000298f:	85 c0                	test   %eax,%eax
   140002991:	75 0d                	jne    1400029a0 <___w64_mingwthr_remove_key_dtor+0x20>
   140002993:	31 c0                	xor    %eax,%eax
   140002995:	48 83 c4 28          	add    $0x28,%rsp
   140002999:	5b                   	pop    %rbx
   14000299a:	41 5c                	pop    %r12
   14000299c:	c3                   	ret    
   14000299d:	0f 1f 00             	nopl   (%rax)
   1400029a0:	4c 8d 25 79 57 00 00 	lea    0x5779(%rip),%r12        # 140008120 <__mingwthr_cs>
   1400029a7:	4c 89 e1             	mov    %r12,%rcx
   1400029aa:	ff 15 64 69 00 00    	call   *0x6964(%rip)        # 140009314 <__imp_EnterCriticalSection>
   1400029b0:	48 8b 0d 49 57 00 00 	mov    0x5749(%rip),%rcx        # 140008100 <key_dtor_list>
   1400029b7:	48 85 c9             	test   %rcx,%rcx
   1400029ba:	74 27                	je     1400029e3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400029bc:	31 d2                	xor    %edx,%edx
   1400029be:	eb 0b                	jmp    1400029cb <___w64_mingwthr_remove_key_dtor+0x4b>
   1400029c0:	48 89 ca             	mov    %rcx,%rdx
   1400029c3:	48 85 c0             	test   %rax,%rax
   1400029c6:	74 1b                	je     1400029e3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400029c8:	48 89 c1             	mov    %rax,%rcx
   1400029cb:	8b 01                	mov    (%rcx),%eax
   1400029cd:	39 d8                	cmp    %ebx,%eax
   1400029cf:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400029d3:	75 eb                	jne    1400029c0 <___w64_mingwthr_remove_key_dtor+0x40>
   1400029d5:	48 85 d2             	test   %rdx,%rdx
   1400029d8:	74 26                	je     140002a00 <___w64_mingwthr_remove_key_dtor+0x80>
   1400029da:	48 89 42 10          	mov    %rax,0x10(%rdx)
   1400029de:	e8 25 06 00 00       	call   140003008 <free>
   1400029e3:	4c 89 e1             	mov    %r12,%rcx
   1400029e6:	ff 15 48 69 00 00    	call   *0x6948(%rip)        # 140009334 <__imp_LeaveCriticalSection>
   1400029ec:	31 c0                	xor    %eax,%eax
   1400029ee:	48 83 c4 28          	add    $0x28,%rsp
   1400029f2:	5b                   	pop    %rbx
   1400029f3:	41 5c                	pop    %r12
   1400029f5:	c3                   	ret    
   1400029f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400029fd:	00 00 00 
   140002a00:	48 89 05 f9 56 00 00 	mov    %rax,0x56f9(%rip)        # 140008100 <key_dtor_list>
   140002a07:	eb d5                	jmp    1400029de <___w64_mingwthr_remove_key_dtor+0x5e>
   140002a09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002a10 <__mingw_TLScallback>:
   140002a10:	53                   	push   %rbx
   140002a11:	48 83 ec 20          	sub    $0x20,%rsp
   140002a15:	83 fa 02             	cmp    $0x2,%edx
   140002a18:	74 46                	je     140002a60 <__mingw_TLScallback+0x50>
   140002a1a:	77 2c                	ja     140002a48 <__mingw_TLScallback+0x38>
   140002a1c:	85 d2                	test   %edx,%edx
   140002a1e:	74 50                	je     140002a70 <__mingw_TLScallback+0x60>
   140002a20:	8b 05 e2 56 00 00    	mov    0x56e2(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002a26:	85 c0                	test   %eax,%eax
   140002a28:	0f 84 b2 00 00 00    	je     140002ae0 <__mingw_TLScallback+0xd0>
   140002a2e:	c7 05 d0 56 00 00 01 	movl   $0x1,0x56d0(%rip)        # 140008108 <__mingwthr_cs_init>
   140002a35:	00 00 00 
   140002a38:	b8 01 00 00 00       	mov    $0x1,%eax
   140002a3d:	48 83 c4 20          	add    $0x20,%rsp
   140002a41:	5b                   	pop    %rbx
   140002a42:	c3                   	ret    
   140002a43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002a48:	83 fa 03             	cmp    $0x3,%edx
   140002a4b:	75 eb                	jne    140002a38 <__mingw_TLScallback+0x28>
   140002a4d:	8b 05 b5 56 00 00    	mov    0x56b5(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002a53:	85 c0                	test   %eax,%eax
   140002a55:	74 e1                	je     140002a38 <__mingw_TLScallback+0x28>
   140002a57:	e8 14 fe ff ff       	call   140002870 <__mingwthr_run_key_dtors.part.0>
   140002a5c:	eb da                	jmp    140002a38 <__mingw_TLScallback+0x28>
   140002a5e:	66 90                	xchg   %ax,%ax
   140002a60:	e8 bb f6 ff ff       	call   140002120 <_fpreset>
   140002a65:	b8 01 00 00 00       	mov    $0x1,%eax
   140002a6a:	48 83 c4 20          	add    $0x20,%rsp
   140002a6e:	5b                   	pop    %rbx
   140002a6f:	c3                   	ret    
   140002a70:	8b 05 92 56 00 00    	mov    0x5692(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002a76:	85 c0                	test   %eax,%eax
   140002a78:	75 56                	jne    140002ad0 <__mingw_TLScallback+0xc0>
   140002a7a:	8b 05 88 56 00 00    	mov    0x5688(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002a80:	83 f8 01             	cmp    $0x1,%eax
   140002a83:	75 b3                	jne    140002a38 <__mingw_TLScallback+0x28>
   140002a85:	48 8b 1d 74 56 00 00 	mov    0x5674(%rip),%rbx        # 140008100 <key_dtor_list>
   140002a8c:	48 85 db             	test   %rbx,%rbx
   140002a8f:	74 18                	je     140002aa9 <__mingw_TLScallback+0x99>
   140002a91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002a98:	48 89 d9             	mov    %rbx,%rcx
   140002a9b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002a9f:	e8 64 05 00 00       	call   140003008 <free>
   140002aa4:	48 85 db             	test   %rbx,%rbx
   140002aa7:	75 ef                	jne    140002a98 <__mingw_TLScallback+0x88>
   140002aa9:	48 8d 0d 70 56 00 00 	lea    0x5670(%rip),%rcx        # 140008120 <__mingwthr_cs>
   140002ab0:	48 c7 05 45 56 00 00 	movq   $0x0,0x5645(%rip)        # 140008100 <key_dtor_list>
   140002ab7:	00 00 00 00 
   140002abb:	c7 05 43 56 00 00 00 	movl   $0x0,0x5643(%rip)        # 140008108 <__mingwthr_cs_init>
   140002ac2:	00 00 00 
   140002ac5:	ff 15 41 68 00 00    	call   *0x6841(%rip)        # 14000930c <__IAT_start__>
   140002acb:	e9 68 ff ff ff       	jmp    140002a38 <__mingw_TLScallback+0x28>
   140002ad0:	e8 9b fd ff ff       	call   140002870 <__mingwthr_run_key_dtors.part.0>
   140002ad5:	eb a3                	jmp    140002a7a <__mingw_TLScallback+0x6a>
   140002ad7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002ade:	00 00 
   140002ae0:	48 8d 0d 39 56 00 00 	lea    0x5639(%rip),%rcx        # 140008120 <__mingwthr_cs>
   140002ae7:	ff 15 3f 68 00 00    	call   *0x683f(%rip)        # 14000932c <__imp_InitializeCriticalSection>
   140002aed:	e9 3c ff ff ff       	jmp    140002a2e <__mingw_TLScallback+0x1e>
   140002af2:	90                   	nop
   140002af3:	90                   	nop
   140002af4:	90                   	nop
   140002af5:	90                   	nop
   140002af6:	90                   	nop
   140002af7:	90                   	nop
   140002af8:	90                   	nop
   140002af9:	90                   	nop
   140002afa:	90                   	nop
   140002afb:	90                   	nop
   140002afc:	90                   	nop
   140002afd:	90                   	nop
   140002afe:	90                   	nop
   140002aff:	90                   	nop

0000000140002b00 <_ValidateImageBase>:
   140002b00:	31 c0                	xor    %eax,%eax
   140002b02:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002b07:	75 0f                	jne    140002b18 <_ValidateImageBase+0x18>
   140002b09:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   140002b0d:	48 01 d1             	add    %rdx,%rcx
   140002b10:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002b16:	74 08                	je     140002b20 <_ValidateImageBase+0x20>
   140002b18:	c3                   	ret    
   140002b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002b20:	31 c0                	xor    %eax,%eax
   140002b22:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002b28:	0f 94 c0             	sete   %al
   140002b2b:	c3                   	ret    
   140002b2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002b30 <_FindPESection>:
   140002b30:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002b34:	48 01 c1             	add    %rax,%rcx
   140002b37:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   140002b3b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002b40:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002b44:	85 c9                	test   %ecx,%ecx
   140002b46:	74 2d                	je     140002b75 <_FindPESection+0x45>
   140002b48:	83 e9 01             	sub    $0x1,%ecx
   140002b4b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140002b4f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002b54:	0f 1f 40 00          	nopl   0x0(%rax)
   140002b58:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002b5c:	4c 89 c1             	mov    %r8,%rcx
   140002b5f:	49 39 d0             	cmp    %rdx,%r8
   140002b62:	77 08                	ja     140002b6c <_FindPESection+0x3c>
   140002b64:	03 48 08             	add    0x8(%rax),%ecx
   140002b67:	48 39 d1             	cmp    %rdx,%rcx
   140002b6a:	77 0b                	ja     140002b77 <_FindPESection+0x47>
   140002b6c:	48 83 c0 28          	add    $0x28,%rax
   140002b70:	4c 39 c8             	cmp    %r9,%rax
   140002b73:	75 e3                	jne    140002b58 <_FindPESection+0x28>
   140002b75:	31 c0                	xor    %eax,%eax
   140002b77:	c3                   	ret    
   140002b78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002b7f:	00 

0000000140002b80 <_FindPESectionByName>:
   140002b80:	41 54                	push   %r12
   140002b82:	56                   	push   %rsi
   140002b83:	53                   	push   %rbx
   140002b84:	48 83 ec 20          	sub    $0x20,%rsp
   140002b88:	48 89 cb             	mov    %rcx,%rbx
   140002b8b:	e8 a8 04 00 00       	call   140003038 <strlen>
   140002b90:	48 83 f8 08          	cmp    $0x8,%rax
   140002b94:	77 7a                	ja     140002c10 <_FindPESectionByName+0x90>
   140002b96:	48 8b 15 e3 28 00 00 	mov    0x28e3(%rip),%rdx        # 140005480 <.refptr.__image_base__>
   140002b9d:	45 31 e4             	xor    %r12d,%r12d
   140002ba0:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002ba5:	75 57                	jne    140002bfe <_FindPESectionByName+0x7e>
   140002ba7:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140002bab:	48 01 d0             	add    %rdx,%rax
   140002bae:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002bb4:	75 48                	jne    140002bfe <_FindPESectionByName+0x7e>
   140002bb6:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140002bbc:	75 40                	jne    140002bfe <_FindPESectionByName+0x7e>
   140002bbe:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140002bc2:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
   140002bc7:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   140002bcb:	85 c0                	test   %eax,%eax
   140002bcd:	74 41                	je     140002c10 <_FindPESectionByName+0x90>
   140002bcf:	83 e8 01             	sub    $0x1,%eax
   140002bd2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002bd6:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   140002bdb:	eb 0c                	jmp    140002be9 <_FindPESectionByName+0x69>
   140002bdd:	0f 1f 00             	nopl   (%rax)
   140002be0:	49 83 c4 28          	add    $0x28,%r12
   140002be4:	49 39 f4             	cmp    %rsi,%r12
   140002be7:	74 27                	je     140002c10 <_FindPESectionByName+0x90>
   140002be9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140002bef:	48 89 da             	mov    %rbx,%rdx
   140002bf2:	4c 89 e1             	mov    %r12,%rcx
   140002bf5:	e8 46 04 00 00       	call   140003040 <strncmp>
   140002bfa:	85 c0                	test   %eax,%eax
   140002bfc:	75 e2                	jne    140002be0 <_FindPESectionByName+0x60>
   140002bfe:	4c 89 e0             	mov    %r12,%rax
   140002c01:	48 83 c4 20          	add    $0x20,%rsp
   140002c05:	5b                   	pop    %rbx
   140002c06:	5e                   	pop    %rsi
   140002c07:	41 5c                	pop    %r12
   140002c09:	c3                   	ret    
   140002c0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002c10:	45 31 e4             	xor    %r12d,%r12d
   140002c13:	4c 89 e0             	mov    %r12,%rax
   140002c16:	48 83 c4 20          	add    $0x20,%rsp
   140002c1a:	5b                   	pop    %rbx
   140002c1b:	5e                   	pop    %rsi
   140002c1c:	41 5c                	pop    %r12
   140002c1e:	c3                   	ret    
   140002c1f:	90                   	nop

0000000140002c20 <__mingw_GetSectionForAddress>:
   140002c20:	48 8b 15 59 28 00 00 	mov    0x2859(%rip),%rdx        # 140005480 <.refptr.__image_base__>
   140002c27:	31 c0                	xor    %eax,%eax
   140002c29:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002c2e:	75 10                	jne    140002c40 <__mingw_GetSectionForAddress+0x20>
   140002c30:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002c34:	49 01 d0             	add    %rdx,%r8
   140002c37:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002c3e:	74 08                	je     140002c48 <__mingw_GetSectionForAddress+0x28>
   140002c40:	c3                   	ret    
   140002c41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002c48:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002c4f:	75 ef                	jne    140002c40 <__mingw_GetSectionForAddress+0x20>
   140002c51:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002c56:	48 29 d1             	sub    %rdx,%rcx
   140002c59:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
   140002c5e:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   140002c63:	85 d2                	test   %edx,%edx
   140002c65:	74 2e                	je     140002c95 <__mingw_GetSectionForAddress+0x75>
   140002c67:	83 ea 01             	sub    $0x1,%edx
   140002c6a:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002c6e:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002c73:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002c78:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002c7c:	4c 89 c2             	mov    %r8,%rdx
   140002c7f:	4c 39 c1             	cmp    %r8,%rcx
   140002c82:	72 08                	jb     140002c8c <__mingw_GetSectionForAddress+0x6c>
   140002c84:	03 50 08             	add    0x8(%rax),%edx
   140002c87:	48 39 d1             	cmp    %rdx,%rcx
   140002c8a:	72 b4                	jb     140002c40 <__mingw_GetSectionForAddress+0x20>
   140002c8c:	48 83 c0 28          	add    $0x28,%rax
   140002c90:	4c 39 c8             	cmp    %r9,%rax
   140002c93:	75 e3                	jne    140002c78 <__mingw_GetSectionForAddress+0x58>
   140002c95:	31 c0                	xor    %eax,%eax
   140002c97:	c3                   	ret    
   140002c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002c9f:	00 

0000000140002ca0 <__mingw_GetSectionCount>:
   140002ca0:	48 8b 05 d9 27 00 00 	mov    0x27d9(%rip),%rax        # 140005480 <.refptr.__image_base__>
   140002ca7:	45 31 c0             	xor    %r8d,%r8d
   140002caa:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140002caf:	75 0f                	jne    140002cc0 <__mingw_GetSectionCount+0x20>
   140002cb1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002cb5:	48 01 d0             	add    %rdx,%rax
   140002cb8:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002cbe:	74 08                	je     140002cc8 <__mingw_GetSectionCount+0x28>
   140002cc0:	44 89 c0             	mov    %r8d,%eax
   140002cc3:	c3                   	ret    
   140002cc4:	0f 1f 40 00          	nopl   0x0(%rax)
   140002cc8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140002cce:	75 f0                	jne    140002cc0 <__mingw_GetSectionCount+0x20>
   140002cd0:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
   140002cd5:	44 89 c0             	mov    %r8d,%eax
   140002cd8:	c3                   	ret    
   140002cd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002ce0 <_FindPESectionExec>:
   140002ce0:	4c 8b 05 99 27 00 00 	mov    0x2799(%rip),%r8        # 140005480 <.refptr.__image_base__>
   140002ce7:	31 c0                	xor    %eax,%eax
   140002ce9:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   140002cef:	75 0f                	jne    140002d00 <_FindPESectionExec+0x20>
   140002cf1:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002cf5:	4c 01 c2             	add    %r8,%rdx
   140002cf8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140002cfe:	74 08                	je     140002d08 <_FindPESectionExec+0x28>
   140002d00:	c3                   	ret    
   140002d01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002d08:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   140002d0e:	75 f0                	jne    140002d00 <_FindPESectionExec+0x20>
   140002d10:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002d14:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002d19:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
   140002d1d:	85 d2                	test   %edx,%edx
   140002d1f:	74 27                	je     140002d48 <_FindPESectionExec+0x68>
   140002d21:	83 ea 01             	sub    $0x1,%edx
   140002d24:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002d28:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140002d2d:	0f 1f 00             	nopl   (%rax)
   140002d30:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140002d34:	74 09                	je     140002d3f <_FindPESectionExec+0x5f>
   140002d36:	48 85 c9             	test   %rcx,%rcx
   140002d39:	74 c5                	je     140002d00 <_FindPESectionExec+0x20>
   140002d3b:	48 83 e9 01          	sub    $0x1,%rcx
   140002d3f:	48 83 c0 28          	add    $0x28,%rax
   140002d43:	48 39 d0             	cmp    %rdx,%rax
   140002d46:	75 e8                	jne    140002d30 <_FindPESectionExec+0x50>
   140002d48:	31 c0                	xor    %eax,%eax
   140002d4a:	c3                   	ret    
   140002d4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140002d50 <_GetPEImageBase>:
   140002d50:	48 8b 05 29 27 00 00 	mov    0x2729(%rip),%rax        # 140005480 <.refptr.__image_base__>
   140002d57:	45 31 c0             	xor    %r8d,%r8d
   140002d5a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140002d5f:	75 0f                	jne    140002d70 <_GetPEImageBase+0x20>
   140002d61:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002d65:	48 01 c2             	add    %rax,%rdx
   140002d68:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140002d6e:	74 08                	je     140002d78 <_GetPEImageBase+0x28>
   140002d70:	4c 89 c0             	mov    %r8,%rax
   140002d73:	c3                   	ret    
   140002d74:	0f 1f 40 00          	nopl   0x0(%rax)
   140002d78:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   140002d7e:	4c 0f 44 c0          	cmove  %rax,%r8
   140002d82:	4c 89 c0             	mov    %r8,%rax
   140002d85:	c3                   	ret    
   140002d86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002d8d:	00 00 00 

0000000140002d90 <_IsNonwritableInCurrentImage>:
   140002d90:	48 8b 15 e9 26 00 00 	mov    0x26e9(%rip),%rdx        # 140005480 <.refptr.__image_base__>
   140002d97:	31 c0                	xor    %eax,%eax
   140002d99:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002d9e:	75 10                	jne    140002db0 <_IsNonwritableInCurrentImage+0x20>
   140002da0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002da4:	49 01 d0             	add    %rdx,%r8
   140002da7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002dae:	74 08                	je     140002db8 <_IsNonwritableInCurrentImage+0x28>
   140002db0:	c3                   	ret    
   140002db1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002db8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002dbf:	75 ef                	jne    140002db0 <_IsNonwritableInCurrentImage+0x20>
   140002dc1:	48 29 d1             	sub    %rdx,%rcx
   140002dc4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002dc9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002dce:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002dd3:	45 85 c0             	test   %r8d,%r8d
   140002dd6:	74 d8                	je     140002db0 <_IsNonwritableInCurrentImage+0x20>
   140002dd8:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   140002ddc:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002de0:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002de5:	0f 1f 00             	nopl   (%rax)
   140002de8:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140002dec:	4c 89 c0             	mov    %r8,%rax
   140002def:	4c 39 c1             	cmp    %r8,%rcx
   140002df2:	72 08                	jb     140002dfc <_IsNonwritableInCurrentImage+0x6c>
   140002df4:	03 42 08             	add    0x8(%rdx),%eax
   140002df7:	48 39 c1             	cmp    %rax,%rcx
   140002dfa:	72 14                	jb     140002e10 <_IsNonwritableInCurrentImage+0x80>
   140002dfc:	48 83 c2 28          	add    $0x28,%rdx
   140002e00:	4c 39 ca             	cmp    %r9,%rdx
   140002e03:	75 e3                	jne    140002de8 <_IsNonwritableInCurrentImage+0x58>
   140002e05:	31 c0                	xor    %eax,%eax
   140002e07:	c3                   	ret    
   140002e08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002e0f:	00 
   140002e10:	8b 42 24             	mov    0x24(%rdx),%eax
   140002e13:	f7 d0                	not    %eax
   140002e15:	c1 e8 1f             	shr    $0x1f,%eax
   140002e18:	c3                   	ret    
   140002e19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002e20 <__mingw_enum_import_library_names>:
   140002e20:	4c 8b 1d 59 26 00 00 	mov    0x2659(%rip),%r11        # 140005480 <.refptr.__image_base__>
   140002e27:	45 31 c9             	xor    %r9d,%r9d
   140002e2a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002e30:	75 10                	jne    140002e42 <__mingw_enum_import_library_names+0x22>
   140002e32:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002e36:	4d 01 d8             	add    %r11,%r8
   140002e39:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002e40:	74 0e                	je     140002e50 <__mingw_enum_import_library_names+0x30>
   140002e42:	4c 89 c8             	mov    %r9,%rax
   140002e45:	c3                   	ret    
   140002e46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002e4d:	00 00 00 
   140002e50:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002e57:	75 e9                	jne    140002e42 <__mingw_enum_import_library_names+0x22>
   140002e59:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140002e60:	85 c0                	test   %eax,%eax
   140002e62:	74 de                	je     140002e42 <__mingw_enum_import_library_names+0x22>
   140002e64:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002e69:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002e6e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002e73:	45 85 c0             	test   %r8d,%r8d
   140002e76:	74 ca                	je     140002e42 <__mingw_enum_import_library_names+0x22>
   140002e78:	41 83 e8 01          	sub    $0x1,%r8d
   140002e7c:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140002e80:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140002e85:	0f 1f 00             	nopl   (%rax)
   140002e88:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140002e8c:	4d 89 c8             	mov    %r9,%r8
   140002e8f:	4c 39 c8             	cmp    %r9,%rax
   140002e92:	72 09                	jb     140002e9d <__mingw_enum_import_library_names+0x7d>
   140002e94:	44 03 42 08          	add    0x8(%rdx),%r8d
   140002e98:	4c 39 c0             	cmp    %r8,%rax
   140002e9b:	72 13                	jb     140002eb0 <__mingw_enum_import_library_names+0x90>
   140002e9d:	48 83 c2 28          	add    $0x28,%rdx
   140002ea1:	49 39 d2             	cmp    %rdx,%r10
   140002ea4:	75 e2                	jne    140002e88 <__mingw_enum_import_library_names+0x68>
   140002ea6:	45 31 c9             	xor    %r9d,%r9d
   140002ea9:	4c 89 c8             	mov    %r9,%rax
   140002eac:	c3                   	ret    
   140002ead:	0f 1f 00             	nopl   (%rax)
   140002eb0:	4c 01 d8             	add    %r11,%rax
   140002eb3:	eb 0a                	jmp    140002ebf <__mingw_enum_import_library_names+0x9f>
   140002eb5:	0f 1f 00             	nopl   (%rax)
   140002eb8:	83 e9 01             	sub    $0x1,%ecx
   140002ebb:	48 83 c0 14          	add    $0x14,%rax
   140002ebf:	44 8b 40 04          	mov    0x4(%rax),%r8d
   140002ec3:	45 85 c0             	test   %r8d,%r8d
   140002ec6:	75 07                	jne    140002ecf <__mingw_enum_import_library_names+0xaf>
   140002ec8:	8b 50 0c             	mov    0xc(%rax),%edx
   140002ecb:	85 d2                	test   %edx,%edx
   140002ecd:	74 d7                	je     140002ea6 <__mingw_enum_import_library_names+0x86>
   140002ecf:	85 c9                	test   %ecx,%ecx
   140002ed1:	7f e5                	jg     140002eb8 <__mingw_enum_import_library_names+0x98>
   140002ed3:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140002ed7:	4d 01 d9             	add    %r11,%r9
   140002eda:	4c 89 c8             	mov    %r9,%rax
   140002edd:	c3                   	ret    
   140002ede:	90                   	nop
   140002edf:	90                   	nop

0000000140002ee0 <_Unwind_Resume>:
   140002ee0:	ff 25 5e 65 00 00    	jmp    *0x655e(%rip)        # 140009444 <__imp__Unwind_Resume>
   140002ee6:	90                   	nop
   140002ee7:	90                   	nop
   140002ee8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002eef:	00 

0000000140002ef0 <___chkstk_ms>:
   140002ef0:	51                   	push   %rcx
   140002ef1:	50                   	push   %rax
   140002ef2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002ef8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   140002efd:	72 19                	jb     140002f18 <___chkstk_ms+0x28>
   140002eff:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002f06:	48 83 09 00          	orq    $0x0,(%rcx)
   140002f0a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002f10:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002f16:	77 e7                	ja     140002eff <___chkstk_ms+0xf>
   140002f18:	48 29 c1             	sub    %rax,%rcx
   140002f1b:	48 83 09 00          	orq    $0x0,(%rcx)
   140002f1f:	58                   	pop    %rax
   140002f20:	59                   	pop    %rcx
   140002f21:	c3                   	ret    
   140002f22:	90                   	nop
   140002f23:	90                   	nop
   140002f24:	90                   	nop
   140002f25:	90                   	nop
   140002f26:	90                   	nop
   140002f27:	90                   	nop
   140002f28:	90                   	nop
   140002f29:	90                   	nop
   140002f2a:	90                   	nop
   140002f2b:	90                   	nop
   140002f2c:	90                   	nop
   140002f2d:	90                   	nop
   140002f2e:	90                   	nop
   140002f2f:	90                   	nop

0000000140002f30 <__p__fmode>:
   140002f30:	48 8b 05 89 25 00 00 	mov    0x2589(%rip),%rax        # 1400054c0 <.refptr.__imp__fmode>
   140002f37:	48 8b 00             	mov    (%rax),%rax
   140002f3a:	c3                   	ret    
   140002f3b:	90                   	nop
   140002f3c:	90                   	nop
   140002f3d:	90                   	nop
   140002f3e:	90                   	nop
   140002f3f:	90                   	nop

0000000140002f40 <__p__commode>:
   140002f40:	48 8b 05 69 25 00 00 	mov    0x2569(%rip),%rax        # 1400054b0 <.refptr.__imp__commode>
   140002f47:	48 8b 00             	mov    (%rax),%rax
   140002f4a:	c3                   	ret    
   140002f4b:	90                   	nop
   140002f4c:	90                   	nop
   140002f4d:	90                   	nop
   140002f4e:	90                   	nop
   140002f4f:	90                   	nop

0000000140002f50 <__p__acmdln>:
   140002f50:	48 8b 05 49 25 00 00 	mov    0x2549(%rip),%rax        # 1400054a0 <.refptr.__imp__acmdln>
   140002f57:	48 8b 00             	mov    (%rax),%rax
   140002f5a:	c3                   	ret    
   140002f5b:	90                   	nop
   140002f5c:	90                   	nop
   140002f5d:	90                   	nop
   140002f5e:	90                   	nop
   140002f5f:	90                   	nop

0000000140002f60 <_get_invalid_parameter_handler>:
   140002f60:	48 8b 05 29 52 00 00 	mov    0x5229(%rip),%rax        # 140008190 <handler>
   140002f67:	c3                   	ret    
   140002f68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002f6f:	00 

0000000140002f70 <_set_invalid_parameter_handler>:
   140002f70:	48 89 c8             	mov    %rcx,%rax
   140002f73:	48 87 05 16 52 00 00 	xchg   %rax,0x5216(%rip)        # 140008190 <handler>
   140002f7a:	c3                   	ret    
   140002f7b:	90                   	nop
   140002f7c:	90                   	nop
   140002f7d:	90                   	nop
   140002f7e:	90                   	nop
   140002f7f:	90                   	nop

0000000140002f80 <__acrt_iob_func>:
   140002f80:	53                   	push   %rbx
   140002f81:	48 83 ec 20          	sub    $0x20,%rsp
   140002f85:	89 cb                	mov    %ecx,%ebx
   140002f87:	e8 24 00 00 00       	call   140002fb0 <__iob_func>
   140002f8c:	89 d9                	mov    %ebx,%ecx
   140002f8e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140002f92:	48 c1 e2 04          	shl    $0x4,%rdx
   140002f96:	48 01 d0             	add    %rdx,%rax
   140002f99:	48 83 c4 20          	add    $0x20,%rsp
   140002f9d:	5b                   	pop    %rbx
   140002f9e:	c3                   	ret    
   140002f9f:	90                   	nop

0000000140002fa0 <__C_specific_handler>:
   140002fa0:	ff 25 c6 63 00 00    	jmp    *0x63c6(%rip)        # 14000936c <__imp___C_specific_handler>
   140002fa6:	90                   	nop
   140002fa7:	90                   	nop

0000000140002fa8 <__getmainargs>:
   140002fa8:	ff 25 c6 63 00 00    	jmp    *0x63c6(%rip)        # 140009374 <__imp___getmainargs>
   140002fae:	90                   	nop
   140002faf:	90                   	nop

0000000140002fb0 <__iob_func>:
   140002fb0:	ff 25 ce 63 00 00    	jmp    *0x63ce(%rip)        # 140009384 <__imp___iob_func>
   140002fb6:	90                   	nop
   140002fb7:	90                   	nop

0000000140002fb8 <__set_app_type>:
   140002fb8:	ff 25 ce 63 00 00    	jmp    *0x63ce(%rip)        # 14000938c <__imp___set_app_type>
   140002fbe:	90                   	nop
   140002fbf:	90                   	nop

0000000140002fc0 <__setusermatherr>:
   140002fc0:	ff 25 ce 63 00 00    	jmp    *0x63ce(%rip)        # 140009394 <__imp___setusermatherr>
   140002fc6:	90                   	nop
   140002fc7:	90                   	nop

0000000140002fc8 <_amsg_exit>:
   140002fc8:	ff 25 d6 63 00 00    	jmp    *0x63d6(%rip)        # 1400093a4 <__imp__amsg_exit>
   140002fce:	90                   	nop
   140002fcf:	90                   	nop

0000000140002fd0 <_cexit>:
   140002fd0:	ff 25 d6 63 00 00    	jmp    *0x63d6(%rip)        # 1400093ac <__imp__cexit>
   140002fd6:	90                   	nop
   140002fd7:	90                   	nop

0000000140002fd8 <_initterm>:
   140002fd8:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 1400093c4 <__imp__initterm>
   140002fde:	90                   	nop
   140002fdf:	90                   	nop

0000000140002fe0 <_onexit>:
   140002fe0:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 1400093cc <__imp__onexit>
   140002fe6:	90                   	nop
   140002fe7:	90                   	nop

0000000140002fe8 <abort>:
   140002fe8:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 1400093d4 <__imp_abort>
   140002fee:	90                   	nop
   140002fef:	90                   	nop

0000000140002ff0 <calloc>:
   140002ff0:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 1400093dc <__imp_calloc>
   140002ff6:	90                   	nop
   140002ff7:	90                   	nop

0000000140002ff8 <exit>:
   140002ff8:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 1400093e4 <__imp_exit>
   140002ffe:	90                   	nop
   140002fff:	90                   	nop

0000000140003000 <fprintf>:
   140003000:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 1400093ec <__imp_fprintf>
   140003006:	90                   	nop
   140003007:	90                   	nop

0000000140003008 <free>:
   140003008:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 1400093f4 <__imp_free>
   14000300e:	90                   	nop
   14000300f:	90                   	nop

0000000140003010 <fwrite>:
   140003010:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 1400093fc <__imp_fwrite>
   140003016:	90                   	nop
   140003017:	90                   	nop

0000000140003018 <malloc>:
   140003018:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 140009404 <__imp_malloc>
   14000301e:	90                   	nop
   14000301f:	90                   	nop

0000000140003020 <memcpy>:
   140003020:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 14000940c <__imp_memcpy>
   140003026:	90                   	nop
   140003027:	90                   	nop

0000000140003028 <memset>:
   140003028:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 140009414 <__imp_memset>
   14000302e:	90                   	nop
   14000302f:	90                   	nop

0000000140003030 <signal>:
   140003030:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 14000941c <__imp_signal>
   140003036:	90                   	nop
   140003037:	90                   	nop

0000000140003038 <strlen>:
   140003038:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 140009424 <__imp_strlen>
   14000303e:	90                   	nop
   14000303f:	90                   	nop

0000000140003040 <strncmp>:
   140003040:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 14000942c <__imp_strncmp>
   140003046:	90                   	nop
   140003047:	90                   	nop

0000000140003048 <vfprintf>:
   140003048:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 140009434 <__imp_vfprintf>
   14000304e:	90                   	nop
   14000304f:	90                   	nop

0000000140003050 <VirtualQuery>:
   140003050:	ff 25 06 63 00 00    	jmp    *0x6306(%rip)        # 14000935c <__imp_VirtualQuery>
   140003056:	90                   	nop
   140003057:	90                   	nop

0000000140003058 <VirtualProtect>:
   140003058:	ff 25 f6 62 00 00    	jmp    *0x62f6(%rip)        # 140009354 <__imp_VirtualProtect>
   14000305e:	90                   	nop
   14000305f:	90                   	nop

0000000140003060 <TlsGetValue>:
   140003060:	ff 25 e6 62 00 00    	jmp    *0x62e6(%rip)        # 14000934c <__imp_TlsGetValue>
   140003066:	90                   	nop
   140003067:	90                   	nop

0000000140003068 <Sleep>:
   140003068:	ff 25 d6 62 00 00    	jmp    *0x62d6(%rip)        # 140009344 <__imp_Sleep>
   14000306e:	90                   	nop
   14000306f:	90                   	nop

0000000140003070 <SetUnhandledExceptionFilter>:
   140003070:	ff 25 c6 62 00 00    	jmp    *0x62c6(%rip)        # 14000933c <__imp_SetUnhandledExceptionFilter>
   140003076:	90                   	nop
   140003077:	90                   	nop

0000000140003078 <LeaveCriticalSection>:
   140003078:	ff 25 b6 62 00 00    	jmp    *0x62b6(%rip)        # 140009334 <__imp_LeaveCriticalSection>
   14000307e:	90                   	nop
   14000307f:	90                   	nop

0000000140003080 <InitializeCriticalSection>:
   140003080:	ff 25 a6 62 00 00    	jmp    *0x62a6(%rip)        # 14000932c <__imp_InitializeCriticalSection>
   140003086:	90                   	nop
   140003087:	90                   	nop

0000000140003088 <GetStartupInfoA>:
   140003088:	ff 25 96 62 00 00    	jmp    *0x6296(%rip)        # 140009324 <__imp_GetStartupInfoA>
   14000308e:	90                   	nop
   14000308f:	90                   	nop

0000000140003090 <GetLastError>:
   140003090:	ff 25 86 62 00 00    	jmp    *0x6286(%rip)        # 14000931c <__imp_GetLastError>
   140003096:	90                   	nop
   140003097:	90                   	nop

0000000140003098 <EnterCriticalSection>:
   140003098:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 140009314 <__imp_EnterCriticalSection>
   14000309e:	90                   	nop
   14000309f:	90                   	nop

00000001400030a0 <DeleteCriticalSection>:
   1400030a0:	ff 25 66 62 00 00    	jmp    *0x6266(%rip)        # 14000930c <__IAT_start__>
   1400030a6:	90                   	nop
   1400030a7:	90                   	nop
   1400030a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400030af:	00 

00000001400030b0 <_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_>:
      static _GLIBCXX14_CONSTEXPR void
      assign(char_type& __c1, const char_type& __c2)
      { __c1 = __c2; }

      static _GLIBCXX_CONSTEXPR bool
      eq(const char_type& __c1, const char_type& __c2)
   1400030b0:	55                   	push   %rbp
   1400030b1:	48 89 e5             	mov    %rsp,%rbp
   1400030b4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400030b8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
      { return __c1 == __c2; }
   1400030bc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400030c0:	0f b6 10             	movzbl (%rax),%edx
   1400030c3:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400030c7:	0f b6 00             	movzbl (%rax),%eax
   1400030ca:	38 c2                	cmp    %al,%dl
   1400030cc:	0f 94 c0             	sete   %al
   1400030cf:	5d                   	pop    %rbp
   1400030d0:	c3                   	ret    
   1400030d1:	90                   	nop
   1400030d2:	90                   	nop
   1400030d3:	90                   	nop
   1400030d4:	90                   	nop
   1400030d5:	90                   	nop
   1400030d6:	90                   	nop
   1400030d7:	90                   	nop
   1400030d8:	90                   	nop
   1400030d9:	90                   	nop
   1400030da:	90                   	nop
   1400030db:	90                   	nop
   1400030dc:	90                   	nop
   1400030dd:	90                   	nop
   1400030de:	90                   	nop
      return 0;
    }

  template<typename _CharT>
    _GLIBCXX14_CONSTEXPR std::size_t
    char_traits<_CharT>::
   1400030df:	90                   	nop

00000001400030e0 <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc>:
   1400030e0:	55                   	push   %rbp
   1400030e1:	48 89 e5             	mov    %rsp,%rbp
   1400030e4:	48 83 ec 30          	sub    $0x30,%rsp
   1400030e8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
    length(const char_type* __p)
    {
      std::size_t __i = 0;
   1400030ec:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   1400030f3:	00 
      while (!eq(__p[__i], char_type()))
   1400030f4:	eb 05                	jmp    1400030fb <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc+0x1b>
        ++__i;
   1400030f6:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
      while (!eq(__p[__i], char_type()))
   1400030fb:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
   1400030ff:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   140003103:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140003107:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
   14000310b:	48 8d 45 f7          	lea    -0x9(%rbp),%rax
   14000310f:	48 89 c2             	mov    %rax,%rdx
   140003112:	e8 99 ff ff ff       	call   1400030b0 <_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_>
   140003117:	83 f0 01             	xor    $0x1,%eax
   14000311a:	84 c0                	test   %al,%al
   14000311c:	75 d8                	jne    1400030f6 <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc+0x16>
      return __i;
   14000311e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
   140003122:	48 83 c4 30          	add    $0x30,%rsp
   140003126:	5d                   	pop    %rbp
   140003127:	c3                   	ret    
   140003128:	90                   	nop
   140003129:	90                   	nop
   14000312a:	90                   	nop
   14000312b:	90                   	nop
   14000312c:	90                   	nop
   14000312d:	90                   	nop
   14000312e:	90                   	nop


  // For use in string and vstring.
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type* __ptr)
   14000312f:	90                   	nop

0000000140003130 <_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_>:
   140003130:	55                   	push   %rbp
   140003131:	48 89 e5             	mov    %rsp,%rbp
   140003134:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
    { return __ptr == 0; }
   140003138:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
   14000313d:	0f 94 c0             	sete   %al
   140003140:	5d                   	pop    %rbp
   140003141:	c3                   	ret    
   140003142:	90                   	nop
   140003143:	90                   	nop
   140003144:	90                   	nop
   140003145:	90                   	nop
   140003146:	90                   	nop
   140003147:	90                   	nop
   140003148:	90                   	nop
   140003149:	90                   	nop
   14000314a:	90                   	nop
   14000314b:	90                   	nop
   14000314c:	90                   	nop
   14000314d:	90                   	nop
   14000314e:	90                   	nop
#endif
	return __builtin_memcmp(__s1, __s2, __n);
      }

      static _GLIBCXX17_CONSTEXPR size_t
      length(const char_type* __s)
   14000314f:	90                   	nop

0000000140003150 <_ZNSt11char_traitsIcE6lengthEPKc>:
   140003150:	55                   	push   %rbp
   140003151:	48 89 e5             	mov    %rsp,%rbp
   140003154:	48 83 ec 30          	sub    $0x30,%rsp
   140003158:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000315c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003160:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      return __builtin_is_constant_evaluated();
   140003164:	b8 00 00 00 00       	mov    $0x0,%eax
      {
#if __cplusplus >= 201703L
	if (__constant_string_p(__s))
   140003169:	84 c0                	test   %al,%al
   14000316b:	74 0b                	je     140003178 <_ZNSt11char_traitsIcE6lengthEPKc+0x28>
	  return __gnu_cxx::char_traits<char_type>::length(__s);
   14000316d:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140003171:	e8 6a ff ff ff       	call   1400030e0 <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc>
   140003176:	eb 0a                	jmp    140003182 <_ZNSt11char_traitsIcE6lengthEPKc+0x32>
#endif
	return __builtin_strlen(__s);
   140003178:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   14000317c:	e8 b7 fe ff ff       	call   140003038 <strlen>
   140003181:	90                   	nop
      }
   140003182:	48 83 c4 30          	add    $0x30,%rsp
   140003186:	5d                   	pop    %rbp
   140003187:	c3                   	ret    
   140003188:	90                   	nop
   140003189:	90                   	nop
   14000318a:	90                   	nop
   14000318b:	90                   	nop
   14000318c:	90                   	nop
   14000318d:	90                   	nop
   14000318e:	90                   	nop
      basic_string(__sv_wrapper __svw, const _Alloc& __a)
      : basic_string(__svw._M_sv.data(), __svw._M_sv.size(), __a) { }
#endif

      // Use empty-base optimization: http://www.cantrip.org/emptyopt.html
      struct _Alloc_hider : allocator_type // TODO check __is_final
   14000318f:	90                   	nop

0000000140003190 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>:
   140003190:	55                   	push   %rbp
   140003191:	48 89 e5             	mov    %rsp,%rbp
   140003194:	48 83 ec 20          	sub    $0x20,%rsp
   140003198:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000319c:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   1400031a0:	e8 83 ec ff ff       	call   140001e28 <_ZNSaIcED2Ev>
   1400031a5:	90                   	nop
   1400031a6:	48 83 c4 20          	add    $0x20,%rsp
   1400031aa:	5d                   	pop    %rbp
   1400031ab:	c3                   	ret    
   1400031ac:	90                   	nop
   1400031ad:	90                   	nop
   1400031ae:	90                   	nop
      }

  template<typename _CharT, typename _Traits, typename _Alloc>
    template<typename _InIterator>
      void
      basic_string<_CharT, _Traits, _Alloc>::
   1400031af:	90                   	nop

00000001400031b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag>:
   1400031b0:	55                   	push   %rbp
   1400031b1:	53                   	push   %rbx
   1400031b2:	48 83 ec 38          	sub    $0x38,%rsp
   1400031b6:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   1400031bb:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   1400031bf:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   1400031c3:	4c 89 45 30          	mov    %r8,0x30(%rbp)
      _M_construct(_InIterator __beg, _InIterator __end,
		   std::forward_iterator_tag)
      {
	// NB: Not required, but considered best practice.
	if (__gnu_cxx::__is_null_pointer(__beg) && __beg != __end)
   1400031c7:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400031cb:	48 89 c1             	mov    %rax,%rcx
   1400031ce:	e8 5d ff ff ff       	call   140003130 <_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_>
   1400031d3:	84 c0                	test   %al,%al
   1400031d5:	74 11                	je     1400031e8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0x38>
   1400031d7:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400031db:	48 3b 45 30          	cmp    0x30(%rbp),%rax
   1400031df:	74 07                	je     1400031e8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0x38>
   1400031e1:	b8 01 00 00 00       	mov    $0x1,%eax
   1400031e6:	eb 05                	jmp    1400031ed <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0x3d>
   1400031e8:	b8 00 00 00 00       	mov    $0x0,%eax
   1400031ed:	84 c0                	test   %al,%al
   1400031ef:	74 0f                	je     140003200 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0x50>
	  std::__throw_logic_error(__N("basic_string::"
   1400031f1:	48 8d 05 68 1e 00 00 	lea    0x1e68(%rip),%rax        # 140005060 <.rdata+0x60>
   1400031f8:	48 89 c1             	mov    %rax,%rcx
   1400031fb:	e8 80 eb ff ff       	call   140001d80 <_ZSt19__throw_logic_errorPKc>
				       "_M_construct null not valid"));

	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
   140003200:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   140003204:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003208:	48 89 c1             	mov    %rax,%rcx
   14000320b:	e8 80 01 00 00       	call   140003390 <_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_>
   140003210:	48 89 45 f8          	mov    %rax,-0x8(%rbp)

	if (__dnew > size_type(_S_local_capacity))
   140003214:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140003218:	48 83 f8 0f          	cmp    $0xf,%rax
   14000321c:	76 32                	jbe    140003250 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0xa0>
	  {
	    _M_data(_M_create(__dnew, size_type(0)));
   14000321e:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140003222:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140003228:	48 89 c2             	mov    %rax,%rdx
   14000322b:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000322f:	e8 8c eb ff ff       	call   140001dc0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy>
   140003234:	48 89 c2             	mov    %rax,%rdx
   140003237:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000323b:	e8 88 eb ff ff       	call   140001dc8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>
	    _M_capacity(__dnew);
   140003240:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140003244:	48 89 c2             	mov    %rax,%rdx
   140003247:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000324b:	e8 a0 eb ff ff       	call   140001df0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy>
	  }

	// Check for out_of_range and length_error exceptions.
	__try
	  { this->_S_copy_chars(_M_data(), __beg, __end); }
   140003250:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   140003254:	e8 f7 eb ff ff       	call   140001e50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
   140003259:	48 89 c1             	mov    %rax,%rcx
   14000325c:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   140003260:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003264:	49 89 d0             	mov    %rdx,%r8
   140003267:	48 89 c2             	mov    %rax,%rdx
   14000326a:	e8 61 eb ff ff       	call   140001dd0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_>
	  {
	    _M_dispose();
	    __throw_exception_again;
	  }

	_M_set_length(__dnew);
   14000326f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140003273:	48 89 c2             	mov    %rax,%rdx
   140003276:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000327a:	e8 59 eb ff ff       	call   140001dd8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy>
      }
   14000327f:	eb 2a                	jmp    1400032ab <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0xfb>
	__catch(...)
   140003281:	48 89 c1             	mov    %rax,%rcx
   140003284:	e8 b7 ea ff ff       	call   140001d40 <__cxa_begin_catch>
	    _M_dispose();
   140003289:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   14000328d:	e8 66 eb ff ff       	call   140001df8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>
	    __throw_exception_again;
   140003292:	e8 99 ea ff ff       	call   140001d30 <__cxa_rethrow>
	__catch(...)
   140003297:	48 89 c3             	mov    %rax,%rbx
   14000329a:	e8 99 ea ff ff       	call   140001d38 <__cxa_end_catch>
   14000329f:	48 89 d8             	mov    %rbx,%rax
   1400032a2:	48 89 c1             	mov    %rax,%rcx
   1400032a5:	e8 36 fc ff ff       	call   140002ee0 <_Unwind_Resume>
   1400032aa:	90                   	nop
      }
   1400032ab:	48 83 c4 38          	add    $0x38,%rsp
   1400032af:	5b                   	pop    %rbx
   1400032b0:	5d                   	pop    %rbp
   1400032b1:	c3                   	ret    
   1400032b2:	90                   	nop
   1400032b3:	90                   	nop
   1400032b4:	90                   	nop
   1400032b5:	90                   	nop
   1400032b6:	90                   	nop
   1400032b7:	90                   	nop
   1400032b8:	90                   	nop
   1400032b9:	90                   	nop
   1400032ba:	90                   	nop
   1400032bb:	90                   	nop
   1400032bc:	90                   	nop
   1400032bd:	90                   	nop
   1400032be:	90                   	nop
#if __cpp_deduction_guides && ! defined _GLIBCXX_DEFINING_STRING_INSTANTIATIONS
      // _GLIBCXX_RESOLVE_LIB_DEFECTS
      // 3076. basic_string CTAD ambiguity
      template<typename = _RequireAllocator<_Alloc>>
#endif
      basic_string(const _CharT* __s, const _Alloc& __a = _Alloc())
   1400032bf:	90                   	nop

00000001400032c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>:
   1400032c0:	55                   	push   %rbp
   1400032c1:	56                   	push   %rsi
   1400032c2:	53                   	push   %rbx
   1400032c3:	48 83 ec 30          	sub    $0x30,%rsp
   1400032c7:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   1400032cc:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   1400032d0:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   1400032d4:	4c 89 45 30          	mov    %r8,0x30(%rbp)
      : _M_dataplus(_M_local_data(), __a)
   1400032d8:	48 8b 5d 20          	mov    0x20(%rbp),%rbx
   1400032dc:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   1400032e0:	e8 fb ea ff ff       	call   140001de0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
   1400032e5:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   1400032e9:	49 89 d0             	mov    %rdx,%r8
   1400032ec:	48 89 c2             	mov    %rax,%rdx
   1400032ef:	48 89 d9             	mov    %rbx,%rcx
   1400032f2:	e8 f1 ea ff ff       	call   140001de8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>
      {
	const _CharT* __end = __s ? __s + traits_type::length(__s)
   1400032f7:	48 83 7d 28 00       	cmpq   $0x0,0x28(%rbp)
   1400032fc:	74 15                	je     140003313 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_+0x53>
   1400032fe:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003302:	48 89 c1             	mov    %rax,%rcx
   140003305:	e8 46 fe ff ff       	call   140003150 <_ZNSt11char_traitsIcE6lengthEPKc>
   14000330a:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   14000330e:	48 01 d0             	add    %rdx,%rax
   140003311:	eb 05                	jmp    140003318 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_+0x58>
   140003313:	b8 01 00 00 00       	mov    $0x1,%eax
   140003318:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	  // We just need a non-null pointer here to get an exception:
	  : reinterpret_cast<const _CharT*>(__alignof__(_CharT));
	_M_construct(__s, __end, random_access_iterator_tag());
   14000331c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   140003320:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003324:	41 89 f1             	mov    %esi,%r9d
   140003327:	49 89 d0             	mov    %rdx,%r8
   14000332a:	48 89 c2             	mov    %rax,%rdx
   14000332d:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   140003331:	e8 7a fe ff ff       	call   1400031b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag>
      }
   140003336:	eb 1b                	jmp    140003353 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_+0x93>
   140003338:	48 89 c3             	mov    %rax,%rbx
   14000333b:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000333f:	48 89 c1             	mov    %rax,%rcx
   140003342:	e8 49 fe ff ff       	call   140003190 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>
   140003347:	48 89 d8             	mov    %rbx,%rax
   14000334a:	48 89 c1             	mov    %rax,%rcx
   14000334d:	e8 8e fb ff ff       	call   140002ee0 <_Unwind_Resume>
   140003352:	90                   	nop
   140003353:	48 83 c4 30          	add    $0x30,%rsp
   140003357:	5b                   	pop    %rbx
   140003358:	5e                   	pop    %rsi
   140003359:	5d                   	pop    %rbp
   14000335a:	c3                   	ret    
   14000335b:	90                   	nop
   14000335c:	90                   	nop
   14000335d:	90                   	nop
   14000335e:	90                   	nop
    }

  template<typename _RandomAccessIterator>
    inline _GLIBCXX14_CONSTEXPR
    typename iterator_traits<_RandomAccessIterator>::difference_type
    __distance(_RandomAccessIterator __first, _RandomAccessIterator __last,
   14000335f:	90                   	nop

0000000140003360 <_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag>:
   140003360:	55                   	push   %rbp
   140003361:	48 89 e5             	mov    %rsp,%rbp
   140003364:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003368:	48 89 55 18          	mov    %rdx,0x18(%rbp)
               random_access_iterator_tag)
    {
      // concept requirements
      __glibcxx_function_requires(_RandomAccessIteratorConcept<
				  _RandomAccessIterator>)
      return __last - __first;
   14000336c:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003370:	48 2b 45 10          	sub    0x10(%rbp),%rax
    }
   140003374:	5d                   	pop    %rbp
   140003375:	c3                   	ret    
   140003376:	90                   	nop
   140003377:	90                   	nop
   140003378:	90                   	nop
   140003379:	90                   	nop
   14000337a:	90                   	nop
   14000337b:	90                   	nop
   14000337c:	90                   	nop
   14000337d:	90                   	nop
   14000337e:	90                   	nop
   *  sugar for internal library use only.
  */
  template<typename _Iter>
    inline _GLIBCXX_CONSTEXPR
    typename iterator_traits<_Iter>::iterator_category
    __iterator_category(const _Iter&)
   14000337f:	90                   	nop

0000000140003380 <_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_>:
   140003380:	55                   	push   %rbp
   140003381:	48 89 e5             	mov    %rsp,%rbp
   140003384:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
    { return typename iterator_traits<_Iter>::iterator_category(); }
   140003388:	5d                   	pop    %rbp
   140003389:	c3                   	ret    
   14000338a:	90                   	nop
   14000338b:	90                   	nop
   14000338c:	90                   	nop
   14000338d:	90                   	nop
   14000338e:	90                   	nop
   *  and are constant time.  For other %iterator classes they are linear time.
  */
  template<typename _InputIterator>
    inline _GLIBCXX17_CONSTEXPR
    typename iterator_traits<_InputIterator>::difference_type
    distance(_InputIterator __first, _InputIterator __last)
   14000338f:	90                   	nop

0000000140003390 <_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_>:
   140003390:	55                   	push   %rbp
   140003391:	53                   	push   %rbx
   140003392:	48 83 ec 28          	sub    $0x28,%rsp
   140003396:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   14000339b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000339f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    {
      // concept requirements -- taken care of in __distance
      return std::__distance(__first, __last,
			     std::__iterator_category(__first));
   1400033a3:	48 8d 4d 20          	lea    0x20(%rbp),%rcx
   1400033a7:	e8 d4 ff ff ff       	call   140003380 <_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_>
      return std::__distance(__first, __last,
   1400033ac:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400033b0:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   1400033b4:	41 89 d8             	mov    %ebx,%r8d
   1400033b7:	48 89 c1             	mov    %rax,%rcx
   1400033ba:	e8 a1 ff ff ff       	call   140003360 <_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag>
    }
   1400033bf:	48 83 c4 28          	add    $0x28,%rsp
   1400033c3:	5b                   	pop    %rbx
   1400033c4:	5d                   	pop    %rbp
   1400033c5:	c3                   	ret    
   1400033c6:	90                   	nop
   1400033c7:	90                   	nop
   1400033c8:	90                   	nop
   1400033c9:	90                   	nop
   1400033ca:	90                   	nop
   1400033cb:	90                   	nop
   1400033cc:	90                   	nop
   1400033cd:	90                   	nop
   1400033ce:	90                   	nop
   *  @param __rhs  C string.
   *  @return  True if @a __lhs.compare(@a __rhs) == 0.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
   1400033cf:	90                   	nop

00000001400033d0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>:
   1400033d0:	55                   	push   %rbp
   1400033d1:	48 89 e5             	mov    %rsp,%rbp
   1400033d4:	48 83 ec 20          	sub    $0x20,%rsp
   1400033d8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400033dc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
	       const _CharT* __rhs)
    { return __lhs.compare(__rhs) == 0; }
   1400033e0:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400033e4:	48 89 c2             	mov    %rax,%rdx
   1400033e7:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   1400033eb:	e8 58 ea ff ff       	call   140001e48 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>
   1400033f0:	85 c0                	test   %eax,%eax
   1400033f2:	0f 94 c0             	sete   %al
   1400033f5:	48 83 c4 20          	add    $0x20,%rsp
   1400033f9:	5d                   	pop    %rbp
   1400033fa:	c3                   	ret    
   1400033fb:	90                   	nop
   1400033fc:	90                   	nop
   1400033fd:	90                   	nop
   1400033fe:	90                   	nop
  operator&(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) & static_cast<int>(__b)); }

  inline _GLIBCXX_CONSTEXPR _Ios_Openmode
  operator|(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) | static_cast<int>(__b)); }
   1400033ff:	90                   	nop

0000000140003400 <_ZStorSt13_Ios_OpenmodeS_>:
   140003400:	55                   	push   %rbp
   140003401:	48 89 e5             	mov    %rsp,%rbp
   140003404:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140003407:	89 55 18             	mov    %edx,0x18(%rbp)
   14000340a:	8b 45 10             	mov    0x10(%rbp),%eax
   14000340d:	0b 45 18             	or     0x18(%rbp),%eax
   140003410:	5d                   	pop    %rbp
   140003411:	c3                   	ret    
   140003412:	90                   	nop
   140003413:	90                   	nop
   140003414:	90                   	nop
   140003415:	90                   	nop
   140003416:	90                   	nop
   140003417:	90                   	nop
   140003418:	90                   	nop
   140003419:	90                   	nop
   14000341a:	90                   	nop
   14000341b:	90                   	nop
   14000341c:	90                   	nop
   14000341d:	90                   	nop
   14000341e:	90                   	nop
   14000341f:	90                   	nop

0000000140003420 <register_frame_ctor>:
   140003420:	e9 eb e0 ff ff       	jmp    140001510 <__gcc_register_frame>
   140003425:	90                   	nop
   140003426:	90                   	nop
   140003427:	90                   	nop
   140003428:	90                   	nop
   140003429:	90                   	nop
   14000342a:	90                   	nop
   14000342b:	90                   	nop
   14000342c:	90                   	nop
   14000342d:	90                   	nop
   14000342e:	90                   	nop
   14000342f:	90                   	nop

0000000140003430 <__CTOR_LIST__>:
   140003430:	ff                   	(bad)  
   140003431:	ff                   	(bad)  
   140003432:	ff                   	(bad)  
   140003433:	ff                   	(bad)  
   140003434:	ff                   	(bad)  
   140003435:	ff                   	(bad)  
   140003436:	ff                   	(bad)  
   140003437:	ff                   	.byte 0xff

0000000140003438 <.ctors>:
   140003438:	fb                   	sti    
   140003439:	1c 00                	sbb    $0x0,%al
   14000343b:	40 01 00             	rex add %eax,(%rax)
	...

0000000140003440 <.ctors.65535>:
   140003440:	20 34 00             	and    %dh,(%rax,%rax,1)
   140003443:	40 01 00             	rex add %eax,(%rax)
	...

0000000140003450 <__DTOR_LIST__>:
   140003450:	ff                   	(bad)  
   140003451:	ff                   	(bad)  
   140003452:	ff                   	(bad)  
   140003453:	ff                   	(bad)  
   140003454:	ff                   	(bad)  
   140003455:	ff                   	(bad)  
   140003456:	ff                   	(bad)  
   140003457:	ff 00                	incl   (%rax)
   140003459:	00 00                	add    %al,(%rax)
   14000345b:	00 00                	add    %al,(%rax)
   14000345d:	00 00                	add    %al,(%rax)
	...
