backup:     file format elf32-i386

Disassembly of section .init:

080487f0 <_init>:
 80487f0:       55                      push   %ebp
 80487f1:       89 e5                   mov    %esp,%ebp
 80487f3:       83 ec 08                sub    $0x8,%esp
 80487f6:       e8 79 02 00 00          call   8048a74 <call_gmon_start>
 80487fb:       e8 10 03 00 00          call   8048b10 <frame_dummy>
 8048800:       e8 0b 0f 00 00          call   8049710 <__do_global_ctors_aux>
 8048805:       c9                      leave
 8048806:       c3                      ret
Disassembly of section .plt:

08048808 <fgetc@plt-0x10>:
 8048808:       ff 35 28 ab 04 08       pushl  0x804ab28
 804880e:       ff 25 2c ab 04 08       jmp    *0x804ab2c
 8048814:       00 00                   add    %al,(%eax)
        ...

08048818 <fgetc@plt>:
 8048818:       ff 25 30 ab 04 08       jmp    *0x804ab30
 804881e:       68 00 00 00 00          push   $0x0
 8048823:       e9 e0 ff ff ff          jmp    8048808 <_init+0x18>

08048828 <feof@plt>:
 8048828:       ff 25 34 ab 04 08       jmp    *0x804ab34
 804882e:       68 08 00 00 00          push   $0x8
 8048833:       e9 d0 ff ff ff          jmp    8048808 <_init+0x18>

08048838 <__register_frame_info@plt>:
 8048838:       ff 25 38 ab 04 08       jmp    *0x804ab38
 804883e:       68 10 00 00 00          push   $0x10
 8048843:       e9 c0 ff ff ff          jmp    8048808 <_init+0x18>

08048848 <strcmp@plt>:
 8048848:       ff 25 3c ab 04 08       jmp    *0x804ab3c
 804884e:       68 18 00 00 00          push   $0x18
 8048853:       e9 b0 ff ff ff          jmp    8048808 <_init+0x18>

08048858 <perror@plt>:
 8048858:       ff 25 40 ab 04 08       jmp    *0x804ab40
 804885e:       68 20 00 00 00          push   $0x20
 8048863:       e9 a0 ff ff ff          jmp    8048808 <_init+0x18>

08048868 <fprintf@plt>:
 8048868:       ff 25 44 ab 04 08       jmp    *0x804ab44
 804886e:       68 28 00 00 00          push   $0x28
 8048873:       e9 90 ff ff ff          jmp    8048808 <_init+0x18>

08048878 <fork@plt>:
 8048878:       ff 25 48 ab 04 08       jmp    *0x804ab48
 804887e:       68 30 00 00 00          push   $0x30
 8048883:       e9 80 ff ff ff          jmp    8048808 <_init+0x18>

08048888 <getenv@plt>:
 8048888:       ff 25 4c ab 04 08       jmp    *0x804ab4c
 804888e:       68 38 00 00 00          push   $0x38
 8048893:       e9 70 ff ff ff          jmp    8048808 <_init+0x18>

08048898 <chmod@plt>:
 8048898:       ff 25 50 ab 04 08       jmp    *0x804ab50
 804889e:       68 40 00 00 00          push   $0x40
 80488a3:       e9 60 ff ff ff          jmp    8048808 <_init+0x18>

080488a8 <malloc@plt>:
 80488a8:       ff 25 54 ab 04 08       jmp    *0x804ab54
 80488ae:       68 48 00 00 00          push   $0x48
 80488b3:       e9 50 ff ff ff          jmp    8048808 <_init+0x18>

080488b8 <__deregister_frame_info@plt>:
 80488b8:       ff 25 58 ab 04 08       jmp    *0x804ab58
 80488be:       68 50 00 00 00          push   $0x50
 80488c3:       e9 40 ff ff ff          jmp    8048808 <_init+0x18>

080488c8 <__xstat@plt>:
 80488c8:       ff 25 5c ab 04 08       jmp    *0x804ab5c
 80488ce:       68 58 00 00 00          push   $0x58
 80488d3:       e9 30 ff ff ff          jmp    8048808 <_init+0x18>

080488d8 <waitpid@plt>:
 80488d8:       ff 25 60 ab 04 08       jmp    *0x804ab60
 80488de:       68 60 00 00 00          push   $0x60
 80488e3:       e9 20 ff ff ff          jmp    8048808 <_init+0x18>

080488e8 <fgets@plt>:
 80488e8:       ff 25 64 ab 04 08       jmp    *0x804ab64
 80488ee:       68 68 00 00 00          push   $0x68
 80488f3:       e9 10 ff ff ff          jmp    8048808 <_init+0x18>

080488f8 <execlp@plt>:
 80488f8:       ff 25 68 ab 04 08       jmp    *0x804ab68
 80488fe:       68 70 00 00 00          push   $0x70
 8048903:       e9 00 ff ff ff          jmp    8048808 <_init+0x18>

08048908 <strstr@plt>:
 8048908:       ff 25 6c ab 04 08       jmp    *0x804ab6c
 804890e:       68 78 00 00 00          push   $0x78
 8048913:       e9 f0 fe ff ff          jmp    8048808 <_init+0x18>

08048918 <strlen@plt>:
 8048918:       ff 25 70 ab 04 08       jmp    *0x804ab70
 804891e:       68 80 00 00 00          push   $0x80
 8048923:       e9 e0 fe ff ff          jmp    8048808 <_init+0x18>

08048928 <execvp@plt>:
 8048928:       ff 25 74 ab 04 08       jmp    *0x804ab74
 804892e:       68 88 00 00 00          push   $0x88
 8048933:       e9 d0 fe ff ff          jmp    8048808 <_init+0x18>

08048938 <strncmp@plt>:
 8048938:       ff 25 78 ab 04 08       jmp    *0x804ab78
 804893e:       68 90 00 00 00          push   $0x90
 8048943:       e9 c0 fe ff ff          jmp    8048808 <_init+0x18>

08048948 <fputc@plt>:
 8048948:       ff 25 7c ab 04 08       jmp    *0x804ab7c
 804894e:       68 98 00 00 00          push   $0x98
 8048953:       e9 b0 fe ff ff          jmp    8048808 <_init+0x18>

08048958 <__libc_start_main@plt>:
 8048958:       ff 25 80 ab 04 08       jmp    *0x804ab80
 804895e:       68 a0 00 00 00          push   $0xa0
 8048963:       e9 a0 fe ff ff          jmp    8048808 <_init+0x18>

08048968 <strcat@plt>:
 8048968:       ff 25 84 ab 04 08       jmp    *0x804ab84
 804896e:       68 a8 00 00 00          push   $0xa8
 8048973:       e9 90 fe ff ff          jmp    8048808 <_init+0x18>

08048978 <printf@plt>:
 8048978:       ff 25 88 ab 04 08       jmp    *0x804ab88
 804897e:       68 b0 00 00 00          push   $0xb0
 8048983:       e9 80 fe ff ff          jmp    8048808 <_init+0x18>

08048988 <getuid@plt>:
 8048988:       ff 25 8c ab 04 08       jmp    *0x804ab8c
 804898e:       68 b8 00 00 00          push   $0xb8
 8048993:       e9 70 fe ff ff          jmp    8048808 <_init+0x18>

08048998 <fclose@plt>:
 8048998:       ff 25 90 ab 04 08       jmp    *0x804ab90
 804899e:       68 c0 00 00 00          push   $0xc0
 80489a3:       e9 60 fe ff ff          jmp    8048808 <_init+0x18>

080489a8 <snprintf@plt>:
 80489a8:       ff 25 94 ab 04 08       jmp    *0x804ab94
 80489ae:       68 c8 00 00 00          push   $0xc8
 80489b3:       e9 50 fe ff ff          jmp    8048808 <_init+0x18>

080489b8 <free@plt>:
 80489b8:       ff 25 98 ab 04 08       jmp    *0x804ab98
 80489be:       68 d0 00 00 00          push   $0xd0
 80489c3:       e9 40 fe ff ff          jmp    8048808 <_init+0x18>

080489c8 <memset@plt>:
 80489c8:       ff 25 9c ab 04 08       jmp    *0x804ab9c
 80489ce:       68 d8 00 00 00          push   $0xd8
 80489d3:       e9 30 fe ff ff          jmp    8048808 <_init+0x18>

080489d8 <rindex@plt>:
 80489d8:       ff 25 a0 ab 04 08       jmp    *0x804aba0
 80489de:       68 e0 00 00 00          push   $0xe0
 80489e3:       e9 20 fe ff ff          jmp    8048808 <_init+0x18>

080489e8 <strncpy@plt>:
 80489e8:       ff 25 a4 ab 04 08       jmp    *0x804aba4
 80489ee:       68 e8 00 00 00          push   $0xe8
 80489f3:       e9 10 fe ff ff          jmp    8048808 <_init+0x18>

080489f8 <fopen@plt>:
 80489f8:       ff 25 a8 ab 04 08       jmp    *0x804aba8
 80489fe:       68 f0 00 00 00          push   $0xf0
 8048a03:       e9 00 fe ff ff          jmp    8048808 <_init+0x18>

08048a08 <strtok@plt>:
 8048a08:       ff 25 ac ab 04 08       jmp    *0x804abac
 8048a0e:       68 f8 00 00 00          push   $0xf8
 8048a13:       e9 f0 fd ff ff          jmp    8048808 <_init+0x18>

08048a18 <realpath@plt>:
 8048a18:       ff 25 b0 ab 04 08       jmp    *0x804abb0
 8048a1e:       68 00 01 00 00          push   $0x100
 8048a23:       e9 e0 fd ff ff          jmp    8048808 <_init+0x18>

08048a28 <__gmon_start__@plt>:
 8048a28:       ff 25 b4 ab 04 08       jmp    *0x804abb4
 8048a2e:       68 08 01 00 00          push   $0x108
 8048a33:       e9 d0 fd ff ff          jmp    8048808 <_init+0x18>

08048a38 <strcpy@plt>:
 8048a38:       ff 25 b8 ab 04 08       jmp    *0x804abb8
 8048a3e:       68 10 01 00 00          push   $0x110
 8048a43:       e9 c0 fd ff ff          jmp    8048808 <_init+0x18>
Disassembly of section .text:

08048a50 <_start>:
 8048a50:       31 ed                   xor    %ebp,%ebp
 8048a52:       5e                      pop    %esi
 8048a53:       89 e1                   mov    %esp,%ecx
 8048a55:       83 e4 f0                and    $0xfffffff0,%esp
 8048a58:       50                      push   %eax
 8048a59:       54                      push   %esp
 8048a5a:       52                      push   %edx
 8048a5b:       68 20 96 04 08          push   $0x8049620
 8048a60:       68 70 96 04 08          push   $0x8049670
 8048a65:       51                      push   %ecx
 8048a66:       56                      push   %esi
 8048a67:       68 10 91 04 08          push   $0x8049110
 8048a6c:       e8 e7 fe ff ff          call   8048958 <__libc_start_main@plt>
 8048a71:       f4                      hlt
 8048a72:       90                      nop
 8048a73:       90                      nop

08048a74 <call_gmon_start>:
 8048a74:       55                      push   %ebp
 8048a75:       89 e5                   mov    %esp,%ebp
 8048a77:       53                      push   %ebx
 8048a78:       83 ec 04                sub    $0x4,%esp
 8048a7b:       e8 00 00 00 00          call   8048a80 <call_gmon_start+0xc>
 8048a80:       5b                      pop    %ebx
 8048a81:       81 c3 a4 20 00 00       add    $0x20a4,%ebx
 8048a87:       8b 93 fc ff ff ff       mov    0xfffffffc(%ebx),%edx
 8048a8d:       85 d2                   test   %edx,%edx
 8048a8f:       74 05                   je     8048a96 <call_gmon_start+0x22>
 8048a91:       e8 92 ff ff ff          call   8048a28 <__gmon_start__@plt>
 8048a96:       58                      pop    %eax
 8048a97:       5b                      pop    %ebx
 8048a98:       c9                      leave
 8048a99:       c3                      ret
 8048a9a:       90                      nop
 8048a9b:       90                      nop
 8048a9c:       90                      nop
 8048a9d:       90                      nop
 8048a9e:       90                      nop
 8048a9f:       90                      nop

08048aa0 <__do_global_dtors_aux>:
 8048aa0:       55                      push   %ebp
 8048aa1:       89 e5                   mov    %esp,%ebp
 8048aa3:       83 ec 08                sub    $0x8,%esp
 8048aa6:       83 3d c8 ab 04 08 00    cmpl   $0x0,0x804abc8
 8048aad:       75 3e                   jne    8048aed <__do_global_dtors_aux+0x4d>
 8048aaf:       eb 12                   jmp    8048ac3 <__do_global_dtors_aux+0x23>
 8048ab1:       a1 c4 ab 04 08          mov    0x804abc4,%eax
 8048ab6:       8d 50 04                lea    0x4(%eax),%edx
 8048ab9:       89 15 c4 ab 04 08       mov    %edx,0x804abc4
 8048abf:       8b 00                   mov    (%eax),%eax
 8048ac1:       ff d0                   call   *%eax
 8048ac3:       a1 c4 ab 04 08          mov    0x804abc4,%eax
 8048ac8:       83 38 00                cmpl   $0x0,(%eax)
 8048acb:       75 e4                   jne    8048ab1 <__do_global_dtors_aux+0x11>
 8048acd:       b8 b8 88 04 08          mov    $0x80488b8,%eax
 8048ad2:       85 c0                   test   %eax,%eax
 8048ad4:       74 0d                   je     8048ae3 <__do_global_dtors_aux+0x43>
 8048ad6:       83 c4 f4                add    $0xfffffff4,%esp
 8048ad9:       68 48 a9 04 08          push   $0x804a948
 8048ade:       e8 d5 fd ff ff          call   80488b8 <__deregister_frame_info@plt>
 8048ae3:       c7 05 c8 ab 04 08 01    movl   $0x1,0x804abc8
 8048aea:       00 00 00
 8048aed:       89 ec                   mov    %ebp,%esp
 8048aef:       5d                      pop    %ebp
 8048af0:       c3                      ret
 8048af1:       eb 0d                   jmp    8048b00 <fini_dummy>
 8048af3:       90                      nop
 8048af4:       90                      nop
 8048af5:       90                      nop
 8048af6:       90                      nop
 8048af7:       90                      nop
 8048af8:       90                      nop
 8048af9:       90                      nop
 8048afa:       90                      nop
 8048afb:       90                      nop
 8048afc:       90                      nop
 8048afd:       90                      nop
 8048afe:       90                      nop
 8048aff:       90                      nop

08048b00 <fini_dummy>:
 8048b00:       55                      push   %ebp
 8048b01:       89 e5                   mov    %esp,%ebp
 8048b03:       83 ec 08                sub    $0x8,%esp
 8048b06:       89 ec                   mov    %ebp,%esp
 8048b08:       5d                      pop    %ebp
 8048b09:       c3                      ret
 8048b0a:       8d b6 00 00 00 00       lea    0x0(%esi),%esi

08048b10 <frame_dummy>:
 8048b10:       55                      push   %ebp
 8048b11:       89 e5                   mov    %esp,%ebp
 8048b13:       83 ec 08                sub    $0x8,%esp
 8048b16:       b8 38 88 04 08          mov    $0x8048838,%eax
 8048b1b:       85 c0                   test   %eax,%eax
 8048b1d:       74 12                   je     8048b31 <frame_dummy+0x21>
 8048b1f:       83 c4 f8                add    $0xfffffff8,%esp
 8048b22:       68 d0 ab 04 08          push   $0x804abd0
 8048b27:       68 48 a9 04 08          push   $0x804a948
 8048b2c:       e8 07 fd ff ff          call   8048838 <__register_frame_info@plt>
 8048b31:       89 ec                   mov    %ebp,%esp
 8048b33:       5d                      pop    %ebp
 8048b34:       c3                      ret
 8048b35:       8d 74 26 00             lea    0x0(%esi),%esi
 8048b39:       8d bc 27 00 00 00 00    lea    0x0(%edi),%edi

08048b40 <init_dummy>:
 8048b40:       55                      push   %ebp
 8048b41:       89 e5                   mov    %esp,%ebp
 8048b43:       83 ec 08                sub    $0x8,%esp
 8048b46:       89 ec                   mov    %ebp,%esp
 8048b48:       5d                      pop    %ebp
 8048b49:       c3                      ret
 8048b4a:       90                      nop
 8048b4b:       90                      nop
 8048b4c:       90                      nop
 8048b4d:       90                      nop
 8048b4e:       90                      nop
 8048b4f:       90                      nop

08048b50 <copyFile>:
 8048b50:       55                      push   %ebp
 8048b51:       89 e5                   mov    %esp,%ebp			;prolog, init base pointer
 8048b53:       81 ec d8 0b 00 00       sub    $0xbd8,%esp			;Push i, len and buffer to stack, 3032 bytes. 8 bytes for i and len, buffer = 3024 bytes long
 8048b59:       83 c4 f8                add    $0xfffffff8,%esp		;Push source, dest 
 8048b5c:       68 a0 97 04 08          push   $0x80497a0			
 8048b61:       8b 45 08                mov    0x8(%ebp),%eax 		;Referencing "src" parameter
 8048b64:       50                      push   %eax
 8048b65:       e8 8e fe ff ff          call   80489f8 <fopen@plt>
 8048b6a:       83 c4 10                add    $0x10,%esp
 8048b6d:       89 c0                   mov    %eax,%eax
 8048b6f:       89 85 3c f4 ff ff       mov    %eax,0xfffff43c(%ebp)
 8048b75:       83 bd 3c f4 ff ff 00    cmpl   $0x0,0xfffff43c(%ebp)
 8048b7c:       75 22                   jne    8048ba0 <copyFile+0x50>
 8048b7e:       83 c4 f8                add    $0xfffffff8,%esp
 8048b81:       68 a2 97 04 08          push   $0x80497a2
 8048b86:       a1 cc ab 04 08          mov    0x804abcc,%eax
 8048b8b:       50                      push   %eax
 8048b8c:       e8 d7 fc ff ff          call   8048868 <fprintf@plt>
 8048b91:       83 c4 10                add    $0x10,%esp
 8048b94:       b8 ff ff ff ff          mov    $0xffffffff,%eax
 8048b99:       e9 22 01 00 00          jmp    8048cc0 <copyFile+0x170>
 8048b9e:       89 f6                   mov    %esi,%esi
 8048ba0:       c7 45 fc 00 00 00 00    movl   $0x0,0xfffffffc(%ebp)
 8048ba7:       83 c4 f4                add    $0xfffffff4,%esp
 8048baa:       8b 85 3c f4 ff ff       mov    0xfffff43c(%ebp),%eax
 8048bb0:       50                      push   %eax
 8048bb1:       e8 62 fc ff ff          call   8048818 <fgetc@plt>
 8048bb6:       83 c4 10                add    $0x10,%esp
 8048bb9:       89 c0                   mov    %eax,%eax
 8048bbb:       89 85 34 f4 ff ff       mov    %eax,0xfffff434(%ebp)
 8048bc1:       83 bd 34 f4 ff ff ff    cmpl   $0xffffffff,0xfffff434(%ebp)
 8048bc8:       75 06                   jne    8048bd0 <copyFile+0x80>
 8048bca:       eb 35                   jmp    8048c01 <copyFile+0xb1>
 8048bcc:       8d 74 26 00             lea    0x0(%esi),%esi
 8048bd0:       8d 85 40 f4 ff ff       lea    0xfffff440(%ebp),%eax
 8048bd6:       8b 55 fc                mov    0xfffffffc(%ebp),%edx
 8048bd9:       8a 8d 34 f4 ff ff       mov    0xfffff434(%ebp),%cl
 8048bdf:       88 0c 02                mov    %cl,(%edx,%eax,1)
 8048be2:       83 c4 f4                add    $0xfffffff4,%esp
 8048be5:       8b 85 3c f4 ff ff       mov    0xfffff43c(%ebp),%eax
 8048beb:       50                      push   %eax
 8048bec:       e8 27 fc ff ff          call   8048818 <fgetc@plt>
 8048bf1:       83 c4 10                add    $0x10,%esp
 8048bf4:       89 c0                   mov    %eax,%eax
 8048bf6:       89 85 34 f4 ff ff       mov    %eax,0xfffff434(%ebp)
 8048bfc:       ff 45 fc                incl   0xfffffffc(%ebp)
 8048bff:       eb c0                   jmp    8048bc1 <copyFile+0x71>
 8048c01:       8b 45 fc                mov    0xfffffffc(%ebp),%eax
 8048c04:       89 45 f8                mov    %eax,0xfffffff8(%ebp)
 8048c07:       83 c4 f4                add    $0xfffffff4,%esp
 8048c0a:       8b 85 3c f4 ff ff       mov    0xfffff43c(%ebp),%eax
 8048c10:       50                      push   %eax
 8048c11:       e8 82 fd ff ff          call   8048998 <fclose@plt>
 8048c16:       83 c4 10                add    $0x10,%esp
 8048c19:       83 c4 f8                add    $0xfffffff8,%esp
 8048c1c:       68 be 97 04 08          push   $0x80497be
 8048c21:       8b 45 0c                mov    0xc(%ebp),%eax
 8048c24:       50                      push   %eax
 8048c25:       e8 ce fd ff ff          call   80489f8 <fopen@plt>
 8048c2a:       83 c4 10                add    $0x10,%esp
 8048c2d:       89 c0                   mov    %eax,%eax
 8048c2f:       89 85 38 f4 ff ff       mov    %eax,0xfffff438(%ebp)
 8048c35:       83 bd 38 f4 ff ff 00    cmpl   $0x0,0xfffff438(%ebp)
 8048c3c:       75 32                   jne    8048c70 <copyFile+0x120>
 8048c3e:       83 c4 f8                add    $0xfffffff8,%esp
 8048c41:       68 c0 97 04 08          push   $0x80497c0
 8048c46:       a1 cc ab 04 08          mov    0x804abcc,%eax
 8048c4b:       50                      push   %eax
 8048c4c:       e8 17 fc ff ff          call   8048868 <fprintf@plt>
 8048c51:       83 c4 10                add    $0x10,%esp
 8048c54:       83 c4 f4                add    $0xfffffff4,%esp
 8048c57:       68 e1 97 04 08          push   $0x80497e1
 8048c5c:       e8 f7 fb ff ff          call   8048858 <perror@plt>
 8048c61:       83 c4 10                add    $0x10,%esp
 8048c64:       b8 ff ff ff ff          mov    $0xffffffff,%eax
 8048c69:       eb 55                   jmp    8048cc0 <copyFile+0x170>
 8048c6b:       90                      nop
 8048c6c:       8d 74 26 00             lea    0x0(%esi),%esi
 8048c70:       c7 45 fc 00 00 00 00    movl   $0x0,0xfffffffc(%ebp)
 8048c77:       8b 45 fc                mov    0xfffffffc(%ebp),%eax
 8048c7a:       3b 45 f8                cmp    0xfffffff8(%ebp),%eax
 8048c7d:       72 02                   jb     8048c81 <copyFile+0x131>
 8048c7f:       eb 25                   jmp    8048ca6 <copyFile+0x156>
 8048c81:       83 c4 f8                add    $0xfffffff8,%esp
 8048c84:       8b 85 38 f4 ff ff       mov    0xfffff438(%ebp),%eax
 8048c8a:       50                      push   %eax
 8048c8b:       8d 85 40 f4 ff ff       lea    0xfffff440(%ebp),%eax
 8048c91:       8b 55 fc                mov    0xfffffffc(%ebp),%edx
 8048c94:       0f be 04 02             movsbl (%edx,%eax,1),%eax
 8048c98:       50                      push   %eax
 8048c99:       e8 aa fc ff ff          call   8048948 <fputc@plt>
 8048c9e:       83 c4 10                add    $0x10,%esp
 8048ca1:       ff 45 fc                incl   0xfffffffc(%ebp)
 8048ca4:       eb d1                   jmp    8048c77 <copyFile+0x127>
 8048ca6:       83 c4 f4                add    $0xfffffff4,%esp
 8048ca9:       8b 85 38 f4 ff ff       mov    0xfffff438(%ebp),%eax
 8048caf:       50                      push   %eax
 8048cb0:       e8 e3 fc ff ff          call   8048998 <fclose@plt>
 8048cb5:       83 c4 10                add    $0x10,%esp
 8048cb8:       31 c0                   xor    %eax,%eax
 8048cba:       eb 04                   jmp    8048cc0 <copyFile+0x170>
 8048cbc:       8d 74 26 00             lea    0x0(%esi),%esi
 8048cc0:       89 ec                   mov    %ebp,%esp
 8048cc2:       5d                      pop    %ebp
 8048cc3:       c3                      ret
 8048cc4:       8d b6 00 00 00 00       lea    0x0(%esi),%esi
 8048cca:       8d bf 00 00 00 00       lea    0x0(%edi),%edi

08048cd0 <run_cmd>:
 8048cd0:       55                      push   %ebp
 8048cd1:       89 e5                   mov    %esp,%ebp
 8048cd3:       83 ec 48                sub    $0x48,%esp
 8048cd6:       c7 45 d4 01 00 00 00    movl   $0x1,0xffffffd4(%ebp)
 8048cdd:       8d 45 0c                lea    0xc(%ebp),%eax
 8048ce0:       89 45 fc                mov    %eax,0xfffffffc(%ebp)
 8048ce3:       83 7d d4 06             cmpl   $0x6,0xffffffd4(%ebp)
 8048ce7:       7f 28                   jg     8048d11 <run_cmd+0x41>
 8048ce9:       8b 45 d4                mov    0xffffffd4(%ebp),%eax
 8048cec:       89 c2                   mov    %eax,%edx
 8048cee:       8d 04 95 00 00 00 00    lea    0x0(,%edx,4),%eax
 8048cf5:       8d 55 dc                lea    0xffffffdc(%ebp),%edx
 8048cf8:       01 d0                   add    %edx,%eax
 8048cfa:       83 45 fc 04             addl   $0x4,0xfffffffc(%ebp)
 8048cfe:       ff 45 d4                incl   0xffffffd4(%ebp)
 8048d01:       8b 55 fc                mov    0xfffffffc(%ebp),%edx
 8048d04:       83 c2 fc                add    $0xfffffffc,%edx
 8048d07:       8b 0a                   mov    (%edx),%ecx
 8048d09:       89 08                   mov    %ecx,(%eax)
 8048d0b:       85 c9                   test   %ecx,%ecx
 8048d0d:       75 04                   jne    8048d13 <run_cmd+0x43>
 8048d0f:       eb 00                   jmp    8048d11 <run_cmd+0x41>
 8048d11:       eb 02                   jmp    8048d15 <run_cmd+0x45>
 8048d13:       eb ce                   jmp    8048ce3 <run_cmd+0x13>
 8048d15:       c7 45 f8 00 00 00 00    movl   $0x0,0xfffffff8(%ebp)
 8048d1c:       83 c4 f8                add    $0xfffffff8,%esp
 8048d1f:       6a 2f                   push   $0x2f
 8048d21:       8b 45 08                mov    0x8(%ebp),%eax
 8048d24:       50                      push   %eax
 8048d25:       e8 ae fc ff ff          call   80489d8 <rindex@plt>
 8048d2a:       83 c4 10                add    $0x10,%esp
 8048d2d:       89 c0                   mov    %eax,%eax
 8048d2f:       89 45 dc                mov    %eax,0xffffffdc(%ebp)
 8048d32:       83 7d dc 00             cmpl   $0x0,0xffffffdc(%ebp)
 8048d36:       75 08                   jne    8048d40 <run_cmd+0x70>
 8048d38:       8b 45 08                mov    0x8(%ebp),%eax
 8048d3b:       89 45 dc                mov    %eax,0xffffffdc(%ebp)
 8048d3e:       eb 03                   jmp    8048d43 <run_cmd+0x73>
 8048d40:       ff 45 dc                incl   0xffffffdc(%ebp)
 8048d43:       e8 30 fb ff ff          call   8048878 <fork@plt>
 8048d48:       89 c0                   mov    %eax,%eax
 8048d4a:       89 45 d8                mov    %eax,0xffffffd8(%ebp)
 8048d4d:       83 7d d8 00             cmpl   $0x0,0xffffffd8(%ebp)
 8048d51:       7d 1d                   jge    8048d70 <run_cmd+0xa0>
 8048d53:       83 c4 f8                add    $0xfffffff8,%esp
 8048d56:       68 e7 97 04 08          push   $0x80497e7
 8048d5b:       a1 cc ab 04 08          mov    0x804abcc,%eax
 8048d60:       50                      push   %eax
 8048d61:       e8 02 fb ff ff          call   8048868 <fprintf@plt>
 8048d66:       83 c4 10                add    $0x10,%esp
 8048d69:       b8 01 00 00 00          mov    $0x1,%eax
 8048d6e:       eb 74                   jmp    8048de4 <run_cmd+0x114>
 8048d70:       83 7d d8 00             cmpl   $0x0,0xffffffd8(%ebp)
 8048d74:       7e 4c                   jle    8048dc2 <run_cmd+0xf2>
 8048d76:       83 c4 fc                add    $0xfffffffc,%esp
 8048d79:       6a 00                   push   $0x0
 8048d7b:       8d 45 d0                lea    0xffffffd0(%ebp),%eax
 8048d7e:       50                      push   %eax
 8048d7f:       8b 45 d8                mov    0xffffffd8(%ebp),%eax
 8048d82:       50                      push   %eax
 8048d83:       e8 50 fb ff ff          call   80488d8 <waitpid@plt>
 8048d88:       83 c4 10                add    $0x10,%esp
 8048d8b:       8b 45 d0                mov    0xffffffd0(%ebp),%eax
 8048d8e:       89 45 cc                mov    %eax,0xffffffcc(%ebp)
 8048d91:       8b 45 cc                mov    0xffffffcc(%ebp),%eax
 8048d94:       83 e0 7f                and    $0x7f,%eax
 8048d97:       85 c0                   test   %eax,%eax
 8048d99:       75 19                   jne    8048db4 <run_cmd+0xe4>
 8048d9b:       8b 45 d0                mov    0xffffffd0(%ebp),%eax
 8048d9e:       89 45 c8                mov    %eax,0xffffffc8(%ebp)
 8048da1:       8b 45 c8                mov    0xffffffc8(%ebp),%eax
 8048da4:       25 00 ff 00 00          and    $0xff00,%eax
 8048da9:       89 c2                   mov    %eax,%edx
 8048dab:       c1 fa 08                sar    $0x8,%edx
 8048dae:       85 d2                   test   %edx,%edx
 8048db0:       7c 02                   jl     8048db4 <run_cmd+0xe4>
 8048db2:       eb 0c                   jmp    8048dc0 <run_cmd+0xf0>
 8048db4:       b8 01 00 00 00          mov    $0x1,%eax
 8048db9:       eb 29                   jmp    8048de4 <run_cmd+0x114>
 8048dbb:       90                      nop
 8048dbc:       8d 74 26 00             lea    0x0(%esi),%esi
 8048dc0:       eb 1e                   jmp    8048de0 <run_cmd+0x110>
 8048dc2:       83 c4 f8                add    $0xfffffff8,%esp
 8048dc5:       8d 45 dc                lea    0xffffffdc(%ebp),%eax
 8048dc8:       50                      push   %eax
 8048dc9:       8b 45 08                mov    0x8(%ebp),%eax
 8048dcc:       50                      push   %eax
 8048dcd:       e8 56 fb ff ff          call   8048928 <execvp@plt>
 8048dd2:       83 c4 10                add    $0x10,%esp
 8048dd5:       b8 01 00 00 00          mov    $0x1,%eax
 8048dda:       eb 08                   jmp    8048de4 <run_cmd+0x114>
 8048ddc:       8d 74 26 00             lea    0x0(%esi),%esi
 8048de0:       31 c0                   xor    %eax,%eax
 8048de2:       eb 00                   jmp    8048de4 <run_cmd+0x114>
 8048de4:       89 ec                   mov    %ebp,%esp
 8048de6:       5d                      pop    %ebp
 8048de7:       c3                      ret
 8048de8:       90                      nop
 8048de9:       8d b4 26 00 00 00 00    lea    0x0(%esi),%esi

08048df0 <restorePermissions>:
 8048df0:       55                      push   %ebp
 8048df1:       89 e5                   mov    %esp,%ebp
 8048df3:       83 ec 78                sub    $0x78,%esp
 8048df6:       e8 7d fa ff ff          call   8048878 <fork@plt>
 8048dfb:       89 c0                   mov    %eax,%eax
 8048dfd:       89 45 fc                mov    %eax,0xfffffffc(%ebp)
 8048e00:       83 7d fc 00             cmpl   $0x0,0xfffffffc(%ebp)
 8048e04:       7d 20                   jge    8048e26 <restorePermissions+0x36>
 8048e06:       83 c4 f8                add    $0xfffffff8,%esp
 8048e09:       68 e7 97 04 08          push   $0x80497e7
 8048e0e:       a1 cc ab 04 08          mov    0x804abcc,%eax
 8048e13:       50                      push   %eax
 8048e14:       e8 4f fa ff ff          call   8048868 <fprintf@plt>
 8048e19:       83 c4 10                add    $0x10,%esp
 8048e1c:       b8 ff ff ff ff          mov    $0xffffffff,%eax
 8048e21:       e9 ca 01 00 00          jmp    8048ff0 <restorePermissions+0x200>
 8048e26:       83 7d fc 00             cmpl   $0x0,0xfffffffc(%ebp)
 8048e2a:       7e 59                   jle    8048e85 <restorePermissions+0x95>
 8048e2c:       83 c4 fc                add    $0xfffffffc,%esp
 8048e2f:       6a 00                   push   $0x0
 8048e31:       8d 45 f8                lea    0xfffffff8(%ebp),%eax
 8048e34:       50                      push   %eax
 8048e35:       8b 45 fc                mov    0xfffffffc(%ebp),%eax
 8048e38:       50                      push   %eax
 8048e39:       e8 9a fa ff ff          call   80488d8 <waitpid@plt>
 8048e3e:       83 c4 10                add    $0x10,%esp
 8048e41:       8b 45 f8                mov    0xfffffff8(%ebp),%eax
 8048e44:       89 45 a0                mov    %eax,0xffffffa0(%ebp)
 8048e47:       8b 45 a0                mov    0xffffffa0(%ebp),%eax
 8048e4a:       83 e0 7f                and    $0x7f,%eax
 8048e4d:       85 c0                   test   %eax,%eax
 8048e4f:       75 1f                   jne    8048e70 <restorePermissions+0x80>
 8048e51:       8b 45 f8                mov    0xfffffff8(%ebp),%eax
 8048e54:       89 45 9c                mov    %eax,0xffffff9c(%ebp)
 8048e57:       8b 45 9c                mov    0xffffff9c(%ebp),%eax
 8048e5a:       25 00 ff 00 00          and    $0xff00,%eax
 8048e5f:       89 c2                   mov    %eax,%edx
 8048e61:       c1 fa 08                sar    $0x8,%edx
 8048e64:       85 d2                   test   %edx,%edx
 8048e66:       7c 08                   jl     8048e70 <restorePermissions+0x80>
 8048e68:       eb 16                   jmp    8048e80 <restorePermissions+0x90>
 8048e6a:       8d b6 00 00 00 00       lea    0x0(%esi),%esi
 8048e70:       b8 ff ff ff ff          mov    $0xffffffff,%eax
 8048e75:       e9 76 01 00 00          jmp    8048ff0 <restorePermissions+0x200>
 8048e7a:       8d b6 00 00 00 00       lea    0x0(%esi),%esi
 8048e80:       e9 4b 01 00 00          jmp    8048fd0 <restorePermissions+0x1e0>
 8048e85:       83 c4 f4                add    $0xfffffff4,%esp
 8048e88:       68 f4 97 04 08          push   $0x80497f4
 8048e8d:       e8 f6 f9 ff ff          call   8048888 <getenv@plt>
 8048e92:       83 c4 10                add    $0x10,%esp
 8048e95:       89 c0                   mov    %eax,%eax
 8048e97:       89 45 f4                mov    %eax,0xfffffff4(%ebp)
 8048e9a:       83 c4 f8                add    $0xfffffff8,%esp
 8048e9d:       68 a0 97 04 08          push   $0x80497a0
 8048ea2:       68 f9 97 04 08          push   $0x80497f9
 8048ea7:       e8 4c fb ff ff          call   80489f8 <fopen@plt>
 8048eac:       83 c4 10                add    $0x10,%esp
 8048eaf:       89 c0                   mov    %eax,%eax
 8048eb1:       89 45 e8                mov    %eax,0xffffffe8(%ebp)
 8048eb4:       83 7d e8 00             cmpl   $0x0,0xffffffe8(%ebp)
 8048eb8:       75 26                   jne    8048ee0 <restorePermissions+0xf0>
 8048eba:       83 c4 f8                add    $0xfffffff8,%esp
 8048ebd:       68 05 98 04 08          push   $0x8049805
 8048ec2:       a1 cc ab 04 08          mov    0x804abcc,%eax
 8048ec7:       50                      push   %eax
 8048ec8:       e8 9b f9 ff ff          call   8048868 <fprintf@plt>
 8048ecd:       83 c4 10                add    $0x10,%esp
 8048ed0:       b8 ff ff ff ff          mov    $0xffffffff,%eax
 8048ed5:       e9 16 01 00 00          jmp    8048ff0 <restorePermissions+0x200>
 8048eda:       8d b6 00 00 00 00       lea    0x0(%esi),%esi
 8048ee0:       c7 45 f0 00 00 00 00    movl   $0x0,0xfffffff0(%ebp)
 8048ee7:       83 c4 f4                add    $0xfffffff4,%esp
 8048eea:       8b 45 e8                mov    0xffffffe8(%ebp),%eax
 8048eed:       50                      push   %eax
 8048eee:       e8 35 f9 ff ff          call   8048828 <feof@plt>
 8048ef3:       83 c4 10                add    $0x10,%esp
 8048ef6:       89 c0                   mov    %eax,%eax
 8048ef8:       85 c0                   test   %eax,%eax
 8048efa:       74 05                   je     8048f01 <restorePermissions+0x111>
 8048efc:       e9 9f 00 00 00          jmp    8048fa0 <restorePermissions+0x1b0>
 8048f01:       83 c4 fc                add    $0xfffffffc,%esp
 8048f04:       8b 45 e8                mov    0xffffffe8(%ebp),%eax
 8048f07:       50                      push   %eax
 8048f08:       6a 40                   push   $0x40
 8048f0a:       8d 45 a8                lea    0xffffffa8(%ebp),%eax
 8048f0d:       50                      push   %eax
 8048f0e:       e8 d5 f9 ff ff          call   80488e8 <fgets@plt>
 8048f13:       83 c4 10                add    $0x10,%esp
 8048f16:       89 c0                   mov    %eax,%eax
 8048f18:       85 c0                   test   %eax,%eax
 8048f1a:       74 7a                   je     8048f96 <restorePermissions+0x1a6>
 8048f1c:       83 c4 f8                add    $0xfffffff8,%esp
 8048f1f:       68 23 98 04 08          push   $0x8049823
 8048f24:       8d 45 a8                lea    0xffffffa8(%ebp),%eax
 8048f27:       50                      push   %eax
 8048f28:       e8 db fa ff ff          call   8048a08 <strtok@plt>
 8048f2d:       83 c4 10                add    $0x10,%esp
 8048f30:       89 c0                   mov    %eax,%eax
 8048f32:       89 45 ec                mov    %eax,0xffffffec(%ebp)
 8048f35:       83 c4 f8                add    $0xfffffff8,%esp
 8048f38:       8b 45 f4                mov    0xfffffff4(%ebp),%eax
 8048f3b:       50                      push   %eax
 8048f3c:       8b 45 ec                mov    0xffffffec(%ebp),%eax
 8048f3f:       50                      push   %eax
 8048f40:       e8 03 f9 ff ff          call   8048848 <strcmp@plt>
 8048f45:       83 c4 10                add    $0x10,%esp
 8048f48:       89 c0                   mov    %eax,%eax
 8048f4a:       85 c0                   test   %eax,%eax
 8048f4c:       75 48                   jne    8048f96 <restorePermissions+0x1a6>
 8048f4e:       83 c4 f8                add    $0xfffffff8,%esp
 8048f51:       68 23 98 04 08          push   $0x8049823
 8048f56:       6a 00                   push   $0x0
 8048f58:       e8 ab fa ff ff          call   8048a08 <strtok@plt>
 8048f5d:       83 c4 10                add    $0x10,%esp
 8048f60:       83 c4 f8                add    $0xfffffff8,%esp
 8048f63:       68 23 98 04 08          push   $0x8049823
 8048f68:       6a 00                   push   $0x0
 8048f6a:       e8 99 fa ff ff          call   8048a08 <strtok@plt>
 8048f6f:       83 c4 10                add    $0x10,%esp
 8048f72:       89 c0                   mov    %eax,%eax
 8048f74:       89 45 f0                mov    %eax,0xfffffff0(%ebp)
 8048f77:       83 c4 f8                add    $0xfffffff8,%esp
 8048f7a:       68 23 98 04 08          push   $0x8049823
 8048f7f:       6a 00                   push   $0x0
 8048f81:       e8 82 fa ff ff          call   8048a08 <strtok@plt>
 8048f86:       83 c4 10                add    $0x10,%esp
 8048f89:       89 c0                   mov    %eax,%eax
 8048f8b:       89 45 ec                mov    %eax,0xffffffec(%ebp)
 8048f8e:       8b 45 ec                mov    0xffffffec(%ebp),%eax
 8048f91:       c6 00 00                movb   $0x0,(%eax)
 8048f94:       eb 0a                   jmp    8048fa0 <restorePermissions+0x1b0>
 8048f96:       e9 4c ff ff ff          jmp    8048ee7 <restorePermissions+0xf7>
 8048f9b:       90                      nop
 8048f9c:       8d 74 26 00             lea    0x0(%esi),%esi
 8048fa0:       83 7d f0 00             cmpl   $0x0,0xfffffff0(%ebp)
 8048fa4:       74 1f                   je     8048fc5 <restorePermissions+0x1d5>
 8048fa6:       83 c4 f4                add    $0xfffffff4,%esp
 8048fa9:       6a 00                   push   $0x0
 8048fab:       8b 45 08                mov    0x8(%ebp),%eax
 8048fae:       50                      push   %eax
 8048faf:       8b 45 f0                mov    0xfffffff0(%ebp),%eax
 8048fb2:       50                      push   %eax
 8048fb3:       68 25 98 04 08          push   $0x8049825
 8048fb8:       68 25 98 04 08          push   $0x8049825
 8048fbd:       e8 36 f9 ff ff          call   80488f8 <execlp@plt>
 8048fc2:       83 c4 20                add    $0x20,%esp
 8048fc5:       b8 ff ff ff ff          mov    $0xffffffff,%eax
 8048fca:       eb 24                   jmp    8048ff0 <restorePermissions+0x200>
 8048fcc:       8d 74 26 00             lea    0x0(%esi),%esi
 8048fd0:       c7 45 a4 c0 01 00 00    movl   $0x1c0,0xffffffa4(%ebp)
 8048fd7:       83 c4 f8                add    $0xfffffff8,%esp
 8048fda:       8b 45 a4                mov    0xffffffa4(%ebp),%eax
 8048fdd:       50                      push   %eax
 8048fde:       8b 45 08                mov    0x8(%ebp),%eax
 8048fe1:       50                      push   %eax
 8048fe2:       e8 b1 f8 ff ff          call   8048898 <chmod@plt>
 8048fe7:       83 c4 10                add    $0x10,%esp
 8048fea:       31 c0                   xor    %eax,%eax
 8048fec:       eb 02                   jmp    8048ff0 <restorePermissions+0x200>
 8048fee:       89 f6                   mov    %esi,%esi
 8048ff0:       89 ec                   mov    %ebp,%esp
 8048ff2:       5d                      pop    %ebp
 8048ff3:       c3                      ret
 8048ff4:       8d b6 00 00 00 00       lea    0x0(%esi),%esi
 8048ffa:       8d bf 00 00 00 00       lea    0x0(%edi),%edi

08049000 <show_files>:
 8049000:       55                      push   %ebp
 8049001:       89 e5                   mov    %esp,%ebp
 8049003:       83 ec 08                sub    $0x8,%esp
 8049006:       83 c4 f4                add    $0xfffffff4,%esp
 8049009:       6a 00                   push   $0x0
 804900b:       68 30 98 04 08          push   $0x8049830
 8049010:       68 32 98 04 08          push   $0x8049832
 8049015:       68 3c 98 04 08          push   $0x804983c
 804901a:       68 4e 98 04 08          push   $0x804984e
 804901f:       e8 ac fc ff ff          call   8048cd0 <run_cmd>
 8049024:       83 c4 20                add    $0x20,%esp
 8049027:       31 c0                   xor    %eax,%eax
 8049029:       eb 05                   jmp    8049030 <show_files+0x30>
 804902b:       90                      nop
 804902c:       8d 74 26 00             lea    0x0(%esi),%esi
 8049030:       89 ec                   mov    %ebp,%esp
 8049032:       5d                      pop    %ebp
 8049033:       c3                      ret
 8049034:       8d b6 00 00 00 00       lea    0x0(%esi),%esi
 804903a:       8d bf 00 00 00 00       lea    0x0(%edi),%edi

08049040 <strip_dots>:
 8049040:       55                      push   %ebp
 8049041:       89 e5                   mov    %esp,%ebp
 8049043:       83 ec 18                sub    $0x18,%esp
 8049046:       83 c4 f4                add    $0xfffffff4,%esp
 8049049:       83 c4 f4                add    $0xfffffff4,%esp
 804904c:       8b 45 08                mov    0x8(%ebp),%eax
 804904f:       50                      push   %eax
 8049050:       e8 c3 f8 ff ff          call   8048918 <strlen@plt>
 8049055:       83 c4 10                add    $0x10,%esp
 8049058:       89 c0                   mov    %eax,%eax
 804905a:       8d 50 01                lea    0x1(%eax),%edx
 804905d:       52                      push   %edx
 804905e:       e8 45 f8 ff ff          call   80488a8 <malloc@plt>
 8049063:       83 c4 10                add    $0x10,%esp
 8049066:       89 c0                   mov    %eax,%eax
 8049068:       89 45 fc                mov    %eax,0xfffffffc(%ebp)
 804906b:       8b 45 fc                mov    0xfffffffc(%ebp),%eax
 804906e:       89 45 f8                mov    %eax,0xfffffff8(%ebp)
 8049071:       83 c4 f8                add    $0xfffffff8,%esp
 8049074:       8b 45 08                mov    0x8(%ebp),%eax
 8049077:       50                      push   %eax
 8049078:       8b 45 f8                mov    0xfffffff8(%ebp),%eax
 804907b:       50                      push   %eax
 804907c:       e8 b7 f9 ff ff          call   8048a38 <strcpy@plt>
 8049081:       83 c4 10                add    $0x10,%esp
 8049084:       83 c4 fc                add    $0xfffffffc,%esp
 8049087:       6a 03                   push   $0x3
 8049089:       8b 45 f8                mov    0xfffffff8(%ebp),%eax
 804908c:       50                      push   %eax
 804908d:       68 53 98 04 08          push   $0x8049853
 8049092:       e8 a1 f8 ff ff          call   8048938 <strncmp@plt>
 8049097:       83 c4 10                add    $0x10,%esp
 804909a:       89 c0                   mov    %eax,%eax
 804909c:       85 c0                   test   %eax,%eax
 804909e:       74 02                   je     80490a2 <strip_dots+0x62>
 80490a0:       eb 06                   jmp    80490a8 <strip_dots+0x68>
 80490a2:       83 45 f8 03             addl   $0x3,0xfffffff8(%ebp)
 80490a6:       eb dc                   jmp    8049084 <strip_dots+0x44>
 80490a8:       83 c4 f8                add    $0xfffffff8,%esp
 80490ab:       8b 45 f8                mov    0xfffffff8(%ebp),%eax
 80490ae:       50                      push   %eax
 80490af:       8b 45 08                mov    0x8(%ebp),%eax
 80490b2:       50                      push   %eax
 80490b3:       e8 80 f9 ff ff          call   8048a38 <strcpy@plt>
 80490b8:       83 c4 10                add    $0x10,%esp
 80490bb:       83 c4 f4                add    $0xfffffff4,%esp
 80490be:       8b 45 fc                mov    0xfffffffc(%ebp),%eax
 80490c1:       50                      push   %eax
 80490c2:       e8 f1 f8 ff ff          call   80489b8 <free@plt>
 80490c7:       83 c4 10                add    $0x10,%esp
 80490ca:       89 ec                   mov    %ebp,%esp
 80490cc:       5d                      pop    %ebp
 80490cd:       c3                      ret
 80490ce:       89 f6                   mov    %esi,%esi

080490d0 <usage>:
 80490d0:       55                      push   %ebp
 80490d1:       89 e5                   mov    %esp,%ebp
 80490d3:       81 ec d8 00 00 00       sub    $0xd8,%esp
 80490d9:       8b 45 08                mov    0x8(%ebp),%eax
 80490dc:       50                      push   %eax
 80490dd:       68 60 98 04 08          push   $0x8049860
 80490e2:       68 c8 00 00 00          push   $0xc8
 80490e7:       8d 85 38 ff ff ff       lea    0xffffff38(%ebp),%eax
 80490ed:       50                      push   %eax
 80490ee:       e8 b5 f8 ff ff          call   80489a8 <snprintf@plt>
 80490f3:       83 c4 10                add    $0x10,%esp
 80490f6:       83 c4 f4                add    $0xfffffff4,%esp
 80490f9:       8d 85 38 ff ff ff       lea    0xffffff38(%ebp),%eax
 80490ff:       50                      push   %eax
 8049100:       e8 73 f8 ff ff          call   8048978 <printf@plt>
 8049105:       83 c4 10                add    $0x10,%esp
 8049108:       89 ec                   mov    %ebp,%esp
 804910a:       5d                      pop    %ebp
 804910b:       c3                      ret
 804910c:       8d 74 26 00             lea    0x0(%esi),%esi

08049110 <main>:
 8049110:       55                      push   %ebp
 8049111:       89 e5                   mov    %esp,%ebp
 8049113:       81 ec 24 01 00 00       sub    $0x124,%esp
 8049119:       53                      push   %ebx
 804911a:       c7 45 f8 00 00 00 00    movl   $0x0,0xfffffff8(%ebp)
 8049121:       c7 85 50 ff ff ff 8a    movl   $0x804988a,0xffffff50(%ebp)
 8049128:       98 04 08
 804912b:       83 c4 fc                add    $0xfffffffc,%esp
 804912e:       68 98 00 00 00          push   $0x98
 8049133:       6a 00                   push   $0x0
 8049135:       8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
 804913b:       50                      push   %eax
 804913c:       e8 87 f8 ff ff          call   80489c8 <memset@plt>
 8049141:       83 c4 10                add    $0x10,%esp
 8049144:       83 7d 08 01             cmpl   $0x1,0x8(%ebp)
 8049148:       7e 56                   jle    80491a0 <main+0x90>
 804914a:       83 c4 f8                add    $0xfffffff8,%esp
 804914d:       8b 45 0c                mov    0xc(%ebp),%eax
 8049150:       83 c0 04                add    $0x4,%eax
 8049153:       8b 10                   mov    (%eax),%edx
 8049155:       52                      push   %edx
 8049156:       68 8f 98 04 08          push   $0x804988f
 804915b:       e8 e8 f6 ff ff          call   8048848 <strcmp@plt>
 8049160:       83 c4 10                add    $0x10,%esp
 8049163:       89 c0                   mov    %eax,%eax
 8049165:       85 c0                   test   %eax,%eax
 8049167:       75 37                   jne    80491a0 <main+0x90>
 8049169:       83 7d 08 03             cmpl   $0x3,0x8(%ebp)
 804916d:       74 21                   je     8049190 <main+0x80>
 804916f:       83 c4 f4                add    $0xfffffff4,%esp
 8049172:       8b 45 0c                mov    0xc(%ebp),%eax
 8049175:       8b 10                   mov    (%eax),%edx
 8049177:       52                      push   %edx
 8049178:       e8 53 ff ff ff          call   80490d0 <usage>
 804917d:       83 c4 10                add    $0x10,%esp
 8049180:       b8 01 00 00 00          mov    $0x1,%eax
 8049185:       e9 8a 04 00 00          jmp    8049614 <main+0x504>
 804918a:       8d b6 00 00 00 00       lea    0x0(%esi),%esi
 8049190:       c7 45 fc 00 00 00 00    movl   $0x0,0xfffffffc(%ebp)
 8049197:       e9 c4 00 00 00          jmp    8049260 <main+0x150>
 804919c:       8d 74 26 00             lea    0x0(%esi),%esi
 80491a0:       83 7d 08 01             cmpl   $0x1,0x8(%ebp)
 80491a4:       7e 4a                   jle    80491f0 <main+0xe0>
 80491a6:       83 c4 f8                add    $0xfffffff8,%esp
 80491a9:       8b 45 0c                mov    0xc(%ebp),%eax
 80491ac:       83 c0 04                add    $0x4,%eax
 80491af:       8b 10                   mov    (%eax),%edx
 80491b1:       52                      push   %edx
 80491b2:       68 96 98 04 08          push   $0x8049896
 80491b7:       e8 8c f6 ff ff          call   8048848 <strcmp@plt>
 80491bc:       83 c4 10                add    $0x10,%esp
 80491bf:       89 c0                   mov    %eax,%eax
 80491c1:       85 c0                   test   %eax,%eax
 80491c3:       75 2b                   jne    80491f0 <main+0xe0>
 80491c5:       83 7d 08 03             cmpl   $0x3,0x8(%ebp)
 80491c9:       74 1b                   je     80491e6 <main+0xd6>
 80491cb:       83 c4 f4                add    $0xfffffff4,%esp
 80491ce:       8b 45 0c                mov    0xc(%ebp),%eax
 80491d1:       8b 10                   mov    (%eax),%edx
 80491d3:       52                      push   %edx
 80491d4:       e8 f7 fe ff ff          call   80490d0 <usage>
 80491d9:       83 c4 10                add    $0x10,%esp
 80491dc:       b8 01 00 00 00          mov    $0x1,%eax
 80491e1:       e9 2e 04 00 00          jmp    8049614 <main+0x504>
 80491e6:       c7 45 fc 01 00 00 00    movl   $0x1,0xfffffffc(%ebp)
 80491ed:       eb 71                   jmp    8049260 <main+0x150>
 80491ef:       90                      nop
 80491f0:       83 7d 08 01             cmpl   $0x1,0x8(%ebp)
 80491f4:       7e 4e                   jle    8049244 <main+0x134>
 80491f6:       83 c4 f8                add    $0xfffffff8,%esp
 80491f9:       8b 45 0c                mov    0xc(%ebp),%eax
 80491fc:       83 c0 04                add    $0x4,%eax
 80491ff:       8b 10                   mov    (%eax),%edx
 8049201:       52                      push   %edx
 8049202:       68 9e 98 04 08          push   $0x804989e
 8049207:       e8 3c f6 ff ff          call   8048848 <strcmp@plt>
 804920c:       83 c4 10                add    $0x10,%esp
 804920f:       89 c0                   mov    %eax,%eax
 8049211:       85 c0                   test   %eax,%eax
 8049213:       75 2f                   jne    8049244 <main+0x134>
 8049215:       83 7d 08 02             cmpl   $0x2,0x8(%ebp)
 8049219:       74 1b                   je     8049236 <main+0x126>
 804921b:       83 c4 f4                add    $0xfffffff4,%esp
 804921e:       8b 45 0c                mov    0xc(%ebp),%eax
 8049221:       8b 10                   mov    (%eax),%edx
 8049223:       52                      push   %edx
 8049224:       e8 a7 fe ff ff          call   80490d0 <usage>
 8049229:       83 c4 10                add    $0x10,%esp
 804922c:       b8 01 00 00 00          mov    $0x1,%eax
 8049231:       e9 de 03 00 00          jmp    8049614 <main+0x504>
 8049236:       e8 c5 fd ff ff          call   8049000 <show_files>
 804923b:       31 c0                   xor    %eax,%eax
 804923d:       e9 d2 03 00 00          jmp    8049614 <main+0x504>
 8049242:       eb 1c                   jmp    8049260 <main+0x150>
 8049244:       83 c4 f4                add    $0xfffffff4,%esp
 8049247:       8b 45 0c                mov    0xc(%ebp),%eax
 804924a:       8b 10                   mov    (%eax),%edx
 804924c:       52                      push   %edx
 804924d:       e8 7e fe ff ff          call   80490d0 <usage>
 8049252:       83 c4 10                add    $0x10,%esp
 8049255:       b8 01 00 00 00          mov    $0x1,%eax
 804925a:       e9 b5 03 00 00          jmp    8049614 <main+0x504>
 804925f:       90                      nop
 8049260:       8b 45 0c                mov    0xc(%ebp),%eax
 8049263:       83 c0 08                add    $0x8,%eax
 8049266:       8b 10                   mov    (%eax),%edx
 8049268:       89 95 5c ff ff ff       mov    %edx,0xffffff5c(%ebp)
 804926e:       83 c4 f4                add    $0xfffffff4,%esp
 8049271:       83 c4 f4                add    $0xfffffff4,%esp
 8049274:       8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
 804927a:       50                      push   %eax
 804927b:       e8 98 f6 ff ff          call   8048918 <strlen@plt>
 8049280:       83 c4 10                add    $0x10,%esp
 8049283:       89 c0                   mov    %eax,%eax
 8049285:       8d 50 01                lea    0x1(%eax),%edx
 8049288:       52                      push   %edx
 8049289:       e8 1a f6 ff ff          call   80488a8 <malloc@plt>
 804928e:       83 c4 10                add    $0x10,%esp
 8049291:       89 c0                   mov    %eax,%eax
 8049293:       89 85 58 ff ff ff       mov    %eax,0xffffff58(%ebp)
 8049299:       83 c4 f8                add    $0xfffffff8,%esp
 804929c:       8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
 80492a2:       50                      push   %eax
 80492a3:       8b 85 58 ff ff ff       mov    0xffffff58(%ebp),%eax
 80492a9:       50                      push   %eax
 80492aa:       e8 89 f7 ff ff          call   8048a38 <strcpy@plt>
 80492af:       83 c4 10                add    $0x10,%esp
 80492b2:       83 c4 f4                add    $0xfffffff4,%esp
 80492b5:       8b 85 58 ff ff ff       mov    0xffffff58(%ebp),%eax
 80492bb:       50                      push   %eax
 80492bc:       e8 7f fd ff ff          call   8049040 <strip_dots>
 80492c1:       83 c4 10                add    $0x10,%esp
 80492c4:       83 c4 f8                add    $0xfffffff8,%esp
 80492c7:       6a 00                   push   $0x0
 80492c9:       8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
 80492cf:       50                      push   %eax
 80492d0:       e8 43 f7 ff ff          call   8048a18 <realpath@plt>
 80492d5:       83 c4 10                add    $0x10,%esp
 80492d8:       89 c0                   mov    %eax,%eax
 80492da:       89 85 54 ff ff ff       mov    %eax,0xffffff54(%ebp)
 80492e0:       83 bd 54 ff ff ff 00    cmpl   $0x0,0xffffff54(%ebp)
 80492e7:       0f 84 91 00 00 00       je     804937e <main+0x26e>
 80492ed:       83 c4 f8                add    $0xfffffff8,%esp
 80492f0:       8b 85 50 ff ff ff       mov    0xffffff50(%ebp),%eax
 80492f6:       50                      push   %eax
 80492f7:       8b 85 54 ff ff ff       mov    0xffffff54(%ebp),%eax
 80492fd:       50                      push   %eax
 80492fe:       e8 05 f6 ff ff          call   8048908 <strstr@plt>
 8049303:       83 c4 10                add    $0x10,%esp
 8049306:       89 c0                   mov    %eax,%eax
 8049308:       3b 85 54 ff ff ff       cmp    0xffffff54(%ebp),%eax
 804930e:       75 6e                   jne    804937e <main+0x26e>
 8049310:       c7 45 f8 01 00 00 00    movl   $0x1,0xfffffff8(%ebp)
 8049317:       83 c4 f8                add    $0xfffffff8,%esp
 804931a:       68 c0 98 04 08          push   $0x80498c0
 804931f:       8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
 8049325:       50                      push   %eax
 8049326:       e8 0d f7 ff ff          call   8048a38 <strcpy@plt>
 804932b:       83 c4 10                add    $0x10,%esp
 804932e:       83 c4 fc                add    $0xfffffffc,%esp
 8049331:       83 c4 f4                add    $0xfffffff4,%esp
 8049334:       8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
 804933a:       50                      push   %eax
 804933b:       e8 d8 f5 ff ff          call   8048918 <strlen@plt>
 8049340:       83 c4 10                add    $0x10,%esp
 8049343:       89 c0                   mov    %eax,%eax
 8049345:       ba 98 00 00 00          mov    $0x98,%edx
 804934a:       89 d1                   mov    %edx,%ecx
 804934c:       29 c1                   sub    %eax,%ecx
 804934e:       89 c8                   mov    %ecx,%eax
 8049350:       50                      push   %eax
 8049351:       8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
 8049357:       50                      push   %eax
 8049358:       8d 9d 60 ff ff ff       lea    0xffffff60(%ebp),%ebx
 804935e:       83 c4 f4                add    $0xfffffff4,%esp
 8049361:       8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
 8049367:       50                      push   %eax
 8049368:       e8 ab f5 ff ff          call   8048918 <strlen@plt>
 804936d:       83 c4 10                add    $0x10,%esp
 8049370:       89 c0                   mov    %eax,%eax
 8049372:       8d 14 18                lea    (%eax,%ebx,1),%edx
 8049375:       52                      push   %edx
 8049376:       e8 6d f6 ff ff          call   80489e8 <strncpy@plt>
 804937b:       83 c4 10                add    $0x10,%esp
 804937e:       83 c4 f4                add    $0xfffffff4,%esp
 8049381:       83 c4 f4                add    $0xfffffff4,%esp
 8049384:       68 3c 98 04 08          push   $0x804983c
 8049389:       e8 8a f5 ff ff          call   8048918 <strlen@plt>
 804938e:       83 c4 10                add    $0x10,%esp
 8049391:       89 c3                   mov    %eax,%ebx
 8049393:       83 c4 f4                add    $0xfffffff4,%esp
 8049396:       8b 85 58 ff ff ff       mov    0xffffff58(%ebp),%eax
 804939c:       50                      push   %eax
 804939d:       e8 76 f5 ff ff          call   8048918 <strlen@plt>
 80493a2:       83 c4 10                add    $0x10,%esp
 80493a5:       89 c0                   mov    %eax,%eax
 80493a7:       8d 50 01                lea    0x1(%eax),%edx
 80493aa:       8d 04 1a                lea    (%edx,%ebx,1),%eax
 80493ad:       8d 50 01                lea    0x1(%eax),%edx
 80493b0:       52                      push   %edx
 80493b1:       e8 f2 f4 ff ff          call   80488a8 <malloc@plt>
 80493b6:       83 c4 10                add    $0x10,%esp
 80493b9:       89 c0                   mov    %eax,%eax
 80493bb:       89 85 44 ff ff ff       mov    %eax,0xffffff44(%ebp)
 80493c1:       83 bd 44 ff ff ff 00    cmpl   $0x0,0xffffff44(%ebp)
 80493c8:       75 26                   jne    80493f0 <main+0x2e0>
 80493ca:       83 c4 f8                add    $0xfffffff8,%esp
 80493cd:       68 e6 98 04 08          push   $0x80498e6
 80493d2:       a1 cc ab 04 08          mov    0x804abcc,%eax
 80493d7:       50                      push   %eax
 80493d8:       e8 8b f4 ff ff          call   8048868 <fprintf@plt>
 80493dd:       83 c4 10                add    $0x10,%esp
 80493e0:       b8 01 00 00 00          mov    $0x1,%eax
 80493e5:       e9 2a 02 00 00          jmp    8049614 <main+0x504>
 80493ea:       8d b6 00 00 00 00       lea    0x0(%esi),%esi
 80493f0:       83 7d fc 00             cmpl   $0x0,0xfffffffc(%ebp)
 80493f4:       75 7e                   jne    8049474 <main+0x364>
 80493f6:       83 bd 54 ff ff ff 00    cmpl   $0x0,0xffffff54(%ebp)
 80493fd:       74 11                   je     8049410 <main+0x300>
 80493ff:       8b 85 54 ff ff ff       mov    0xffffff54(%ebp),%eax
 8049405:       89 85 4c ff ff ff       mov    %eax,0xffffff4c(%ebp)
 804940b:       eb 0f                   jmp    804941c <main+0x30c>
 804940d:       8d 76 00                lea    0x0(%esi),%esi
 8049410:       8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
 8049416:       89 85 4c ff ff ff       mov    %eax,0xffffff4c(%ebp)
 804941c:       8b 85 44 ff ff ff       mov    0xffffff44(%ebp),%eax
 8049422:       89 85 48 ff ff ff       mov    %eax,0xffffff48(%ebp)
 8049428:       83 c4 f8                add    $0xfffffff8,%esp
 804942b:       68 3c 98 04 08          push   $0x804983c
 8049430:       8b 85 48 ff ff ff       mov    0xffffff48(%ebp),%eax
 8049436:       50                      push   %eax
 8049437:       e8 fc f5 ff ff          call   8048a38 <strcpy@plt>
 804943c:       83 c4 10                add    $0x10,%esp
 804943f:       83 c4 f8                add    $0xfffffff8,%esp
 8049442:       68 01 99 04 08          push   $0x8049901
 8049447:       8b 85 48 ff ff ff       mov    0xffffff48(%ebp),%eax
 804944d:       50                      push   %eax
 804944e:       e8 15 f5 ff ff          call   8048968 <strcat@plt>
 8049453:       83 c4 10                add    $0x10,%esp
 8049456:       83 c4 f8                add    $0xfffffff8,%esp
 8049459:       8b 85 58 ff ff ff       mov    0xffffff58(%ebp),%eax
 804945f:       50                      push   %eax
 8049460:       8b 85 48 ff ff ff       mov    0xffffff48(%ebp),%eax
 8049466:       50                      push   %eax
 8049467:       e8 fc f4 ff ff          call   8048968 <strcat@plt>
 804946c:       83 c4 10                add    $0x10,%esp
 804946f:       e9 1c 01 00 00          jmp    8049590 <main+0x480>
 8049474:       83 7d fc 01             cmpl   $0x1,0xfffffffc(%ebp)
 8049478:       0f 85 12 01 00 00       jne    8049590 <main+0x480>
 804947e:       8b 85 44 ff ff ff       mov    0xffffff44(%ebp),%eax
 8049484:       89 85 4c ff ff ff       mov    %eax,0xffffff4c(%ebp)
 804948a:       83 c4 f8                add    $0xfffffff8,%esp
 804948d:       68 3c 98 04 08          push   $0x804983c
 8049492:       8b 85 4c ff ff ff       mov    0xffffff4c(%ebp),%eax
 8049498:       50                      push   %eax
 8049499:       e8 9a f5 ff ff          call   8048a38 <strcpy@plt>
 804949e:       83 c4 10                add    $0x10,%esp
 80494a1:       83 c4 f8                add    $0xfffffff8,%esp
 80494a4:       68 01 99 04 08          push   $0x8049901
 80494a9:       8b 85 4c ff ff ff       mov    0xffffff4c(%ebp),%eax
 80494af:       50                      push   %eax
 80494b0:       e8 b3 f4 ff ff          call   8048968 <strcat@plt>
 80494b5:       83 c4 10                add    $0x10,%esp
 80494b8:       83 c4 f8                add    $0xfffffff8,%esp
 80494bb:       8b 85 58 ff ff ff       mov    0xffffff58(%ebp),%eax
 80494c1:       50                      push   %eax
 80494c2:       8b 85 4c ff ff ff       mov    0xffffff4c(%ebp),%eax
 80494c8:       50                      push   %eax
 80494c9:       e8 9a f4 ff ff          call   8048968 <strcat@plt>
 80494ce:       83 c4 10                add    $0x10,%esp
 80494d1:       83 bd 54 ff ff ff 00    cmpl   $0x0,0xffffff54(%ebp)
 80494d8:       74 0e                   je     80494e8 <main+0x3d8>
 80494da:       8b 85 54 ff ff ff       mov    0xffffff54(%ebp),%eax
 80494e0:       89 85 48 ff ff ff       mov    %eax,0xffffff48(%ebp)
 80494e6:       eb 0c                   jmp    80494f4 <main+0x3e4>
 80494e8:       8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
 80494ee:       89 85 48 ff ff ff       mov    %eax,0xffffff48(%ebp)
 80494f4:       83 c4 f8                add    $0xfffffff8,%esp
 80494f7:       8d 85 ec fe ff ff       lea    0xfffffeec(%ebp),%eax
 80494fd:       50                      push   %eax
 80494fe:       8b 85 48 ff ff ff       mov    0xffffff48(%ebp),%eax
 8049504:       50                      push   %eax
 8049505:       e8 c6 01 00 00          call   80496d0 <__stat>
 804950a:       83 c4 10                add    $0x10,%esp
 804950d:       89 c0                   mov    %eax,%eax
 804950f:       85 c0                   test   %eax,%eax
 8049511:       75 7d                   jne    8049590 <main+0x480>
 8049513:       e8 70 f4 ff ff          call   8048988 <getuid@plt>
 8049518:       89 c0                   mov    %eax,%eax
 804951a:       39 85 04 ff ff ff       cmp    %eax,0xffffff04(%ebp)
 8049520:       74 6e                   je     8049590 <main+0x480>
 8049522:       c7 45 f8 01 00 00 00    movl   $0x1,0xfffffff8(%ebp)
 8049529:       83 c4 f8                add    $0xfffffff8,%esp
 804952c:       68 03 99 04 08          push   $0x8049903
 8049531:       8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
 8049537:       50                      push   %eax
 8049538:       e8 fb f4 ff ff          call   8048a38 <strcpy@plt>
 804953d:       83 c4 10                add    $0x10,%esp
 8049540:       83 c4 fc                add    $0xfffffffc,%esp
 8049543:       83 c4 f4                add    $0xfffffff4,%esp
 8049546:       8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
 804954c:       50                      push   %eax
 804954d:       e8 c6 f3 ff ff          call   8048918 <strlen@plt>
 8049552:       83 c4 10                add    $0x10,%esp
 8049555:       89 c0                   mov    %eax,%eax
 8049557:       ba 98 00 00 00          mov    $0x98,%edx
 804955c:       89 d1                   mov    %edx,%ecx
 804955e:       29 c1                   sub    %eax,%ecx
 8049560:       89 c8                   mov    %ecx,%eax
 8049562:       50                      push   %eax
 8049563:       8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
 8049569:       50                      push   %eax
 804956a:       8d 9d 60 ff ff ff       lea    0xffffff60(%ebp),%ebx
 8049570:       83 c4 f4                add    $0xfffffff4,%esp
 8049573:       8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
 8049579:       50                      push   %eax
 804957a:       e8 99 f3 ff ff          call   8048918 <strlen@plt>
 804957f:       83 c4 10                add    $0x10,%esp
 8049582:       89 c0                   mov    %eax,%eax
 8049584:       8d 14 18                lea    (%eax,%ebx,1),%edx
 8049587:       52                      push   %edx
 8049588:       e8 5b f4 ff ff          call   80489e8 <strncpy@plt>
 804958d:       83 c4 10                add    $0x10,%esp
 8049590:       83 7d f8 00             cmpl   $0x0,0xfffffff8(%ebp)
 8049594:       74 2a                   je     80495c0 <main+0x4b0>
 8049596:       83 c4 fc                add    $0xfffffffc,%esp
 8049599:       8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
 804959f:       50                      push   %eax
 80495a0:       68 20 99 04 08          push   $0x8049920
 80495a5:       a1 cc ab 04 08          mov    0x804abcc,%eax
 80495aa:       50                      push   %eax
 80495ab:       e8 b8 f2 ff ff          call   8048868 <fprintf@plt>
 80495b0:       83 c4 10                add    $0x10,%esp
 80495b3:       b8 01 00 00 00          mov    $0x1,%eax
 80495b8:       eb 5a                   jmp    8049614 <main+0x504>
 80495ba:       8d b6 00 00 00 00       lea    0x0(%esi),%esi
 80495c0:       83 c4 f8                add    $0xfffffff8,%esp
 80495c3:       8b 85 48 ff ff ff       mov    0xffffff48(%ebp),%eax
 80495c9:       50                      push   %eax
 80495ca:       8b 85 4c ff ff ff       mov    0xffffff4c(%ebp),%eax
 80495d0:       50                      push   %eax
 80495d1:       e8 7a f5 ff ff          call   8048b50 <copyFile>
 80495d6:       83 c4 10                add    $0x10,%esp
 80495d9:       89 c0                   mov    %eax,%eax
 80495db:       85 c0                   test   %eax,%eax
 80495dd:       7d 07                   jge    80495e6 <main+0x4d6>
 80495df:       b8 01 00 00 00          mov    $0x1,%eax
 80495e4:       eb 2e                   jmp    8049614 <main+0x504>
 80495e6:       83 7d fc 01             cmpl   $0x1,0xfffffffc(%ebp)
 80495ea:       75 24                   jne    8049610 <main+0x500>
 80495ec:       83 c4 f4                add    $0xfffffff4,%esp
 80495ef:       8b 85 48 ff ff ff       mov    0xffffff48(%ebp),%eax
 80495f5:       50                      push   %eax
 80495f6:       e8 f5 f7 ff ff          call   8048df0 <restorePermissions>
 80495fb:       83 c4 10                add    $0x10,%esp
 80495fe:       89 c0                   mov    %eax,%eax
 8049600:       85 c0                   test   %eax,%eax
 8049602:       7d 0c                   jge    8049610 <main+0x500>
 8049604:       b8 01 00 00 00          mov    $0x1,%eax
 8049609:       eb 09                   jmp    8049614 <main+0x504>
 804960b:       90                      nop
 804960c:       8d 74 26 00             lea    0x0(%esi),%esi
 8049610:       31 c0                   xor    %eax,%eax
 8049612:       eb 00                   jmp    8049614 <main+0x504>
 8049614:       8b 9d d8 fe ff ff       mov    0xfffffed8(%ebp),%ebx
 804961a:       89 ec                   mov    %ebp,%esp
 804961c:       5d                      pop    %ebp
 804961d:       c3                      ret
 804961e:       90                      nop
 804961f:       90                      nop

08049620 <__libc_csu_fini>:
 8049620:       55                      push   %ebp
 8049621:       89 e5                   mov    %esp,%ebp
 8049623:       57                      push   %edi
 8049624:       56                      push   %esi
 8049625:       53                      push   %ebx
 8049626:       e8 98 00 00 00          call   80496c3 <__i686.get_pc_thunk.bx>
 804962b:       81 c3 f9 14 00 00       add    $0x14f9,%ebx
 8049631:       83 ec 0c                sub    $0xc,%esp
 8049634:       8d 83 24 ff ff ff       lea    0xffffff24(%ebx),%eax
 804963a:       8d bb 24 ff ff ff       lea    0xffffff24(%ebx),%edi
 8049640:       29 f8                   sub    %edi,%eax
 8049642:       c1 f8 02                sar    $0x2,%eax
 8049645:       8d 70 ff                lea    0xffffffff(%eax),%esi
 8049648:       83 fe ff                cmp    $0xffffffff,%esi
 804964b:       74 0c                   je     8049659 <__libc_csu_fini+0x39>
 804964d:       8d 76 00                lea    0x0(%esi),%esi
 8049650:       ff 14 b7                call   *(%edi,%esi,4)
 8049653:       4e                      dec    %esi
 8049654:       83 fe ff                cmp    $0xffffffff,%esi
 8049657:       75 f7                   jne    8049650 <__libc_csu_fini+0x30>
 8049659:       8d b4 26 00 00 00 00    lea    0x0(%esi),%esi
 8049660:       e8 e7 00 00 00          call   804974c <_fini>
 8049665:       83 c4 0c                add    $0xc,%esp
 8049668:       5b                      pop    %ebx
 8049669:       5e                      pop    %esi
 804966a:       5f                      pop    %edi
 804966b:       5d                      pop    %ebp
 804966c:       c3                      ret
 804966d:       8d 76 00                lea    0x0(%esi),%esi

08049670 <__libc_csu_init>:
 8049670:       55                      push   %ebp
 8049671:       89 e5                   mov    %esp,%ebp
 8049673:       57                      push   %edi
 8049674:       56                      push   %esi
 8049675:       53                      push   %ebx
 8049676:       e8 48 00 00 00          call   80496c3 <__i686.get_pc_thunk.bx>
 804967b:       81 c3 a9 14 00 00       add    $0x14a9,%ebx
 8049681:       83 ec 0c                sub    $0xc,%esp
 8049684:       e8 67 f1 ff ff          call   80487f0 <_init>
 8049689:       8d 83 24 ff ff ff       lea    0xffffff24(%ebx),%eax
 804968f:       8d 93 24 ff ff ff       lea    0xffffff24(%ebx),%edx
 8049695:       29 d0                   sub    %edx,%eax
 8049697:       c1 f8 02                sar    $0x2,%eax
 804969a:       89 45 f0                mov    %eax,0xfffffff0(%ebp)
 804969d:       74 1c                   je     80496bb <__libc_csu_init+0x4b>
 804969f:       31 ff                   xor    %edi,%edi
 80496a1:       89 d6                   mov    %edx,%esi
 80496a3:       8d b6 00 00 00 00       lea    0x0(%esi),%esi
 80496a9:       8d bc 27 00 00 00 00    lea    0x0(%edi),%edi
 80496b0:       47                      inc    %edi
 80496b1:       ff 16                   call   *(%esi)
 80496b3:       83 c6 04                add    $0x4,%esi
 80496b6:       39 7d f0                cmp    %edi,0xfffffff0(%ebp)
 80496b9:       75 f5                   jne    80496b0 <__libc_csu_init+0x40>
 80496bb:       83 c4 0c                add    $0xc,%esp
 80496be:       5b                      pop    %ebx
 80496bf:       5e                      pop    %esi
 80496c0:       5f                      pop    %edi
 80496c1:       5d                      pop    %ebp
 80496c2:       c3                      ret

080496c3 <__i686.get_pc_thunk.bx>:
 80496c3:       8b 1c 24                mov    (%esp),%ebx
 80496c6:       c3                      ret
 80496c7:       90                      nop
 80496c8:       90                      nop
 80496c9:       90                      nop
 80496ca:       90                      nop
 80496cb:       90                      nop
 80496cc:       90                      nop
 80496cd:       90                      nop
 80496ce:       90                      nop
 80496cf:       90                      nop

080496d0 <__stat>:
 80496d0:       55                      push   %ebp
 80496d1:       89 e5                   mov    %esp,%ebp
 80496d3:       53                      push   %ebx
 80496d4:       83 ec 0c                sub    $0xc,%esp
 80496d7:       8b 45 0c                mov    0xc(%ebp),%eax
 80496da:       e8 e4 ff ff ff          call   80496c3 <__i686.get_pc_thunk.bx>
 80496df:       81 c3 45 14 00 00       add    $0x1445,%ebx
 80496e5:       c7 04 24 03 00 00 00    movl   $0x3,(%esp)
 80496ec:       89 44 24 08             mov    %eax,0x8(%esp)
 80496f0:       8b 45 08                mov    0x8(%ebp),%eax
 80496f3:       89 44 24 04             mov    %eax,0x4(%esp)
 80496f7:       e8 cc f1 ff ff          call   80488c8 <__xstat@plt>
 80496fc:       83 c4 0c                add    $0xc,%esp
 80496ff:       5b                      pop    %ebx
 8049700:       5d                      pop    %ebp
 8049701:       c3                      ret
 8049702:       90                      nop
 8049703:       90                      nop
 8049704:       90                      nop
 8049705:       90                      nop
 8049706:       90                      nop
 8049707:       90                      nop
 8049708:       90                      nop
 8049709:       90                      nop
 804970a:       90                      nop
 804970b:       90                      nop
 804970c:       90                      nop
 804970d:       90                      nop
 804970e:       90                      nop
 804970f:       90                      nop

08049710 <__do_global_ctors_aux>:
 8049710:       55                      push   %ebp
 8049711:       89 e5                   mov    %esp,%ebp
 8049713:       83 ec 14                sub    $0x14,%esp
 8049716:       53                      push   %ebx
 8049717:       bb 48 aa 04 08          mov    $0x804aa48,%ebx
 804971c:       83 3d 48 aa 04 08 ff    cmpl   $0xffffffff,0x804aa48
 8049723:       74 0c                   je     8049731 <__do_global_ctors_aux+0x21>
 8049725:       8b 03                   mov    (%ebx),%eax
 8049727:       ff d0                   call   *%eax
 8049729:       83 c3 fc                add    $0xfffffffc,%ebx
 804972c:       83 3b ff                cmpl   $0xffffffff,(%ebx)
 804972f:       75 f4                   jne    8049725 <__do_global_ctors_aux+0x15>
 8049731:       5b                      pop    %ebx
 8049732:       89 ec                   mov    %ebp,%esp
 8049734:       5d                      pop    %ebp
 8049735:       c3                      ret
 8049736:       8d 76 00                lea    0x0(%esi),%esi
 8049739:       8d bc 27 00 00 00 00    lea    0x0(%edi),%edi

08049740 <init_dummy>:
 8049740:       55                      push   %ebp
 8049741:       89 e5                   mov    %esp,%ebp
 8049743:       83 ec 08                sub    $0x8,%esp
 8049746:       89 ec                   mov    %ebp,%esp
 8049748:       5d                      pop    %ebp
 8049749:       c3                      ret
 804974a:       90                      nop
 804974b:       90                      nop
Disassembly of section .fini:

0804974c <_fini>:
 804974c:       55                      push   %ebp
 804974d:       89 e5                   mov    %esp,%ebp
 804974f:       53                      push   %ebx
 8049750:       83 ec 04                sub    $0x4,%esp
 8049753:       e8 00 00 00 00          call   8049758 <_fini+0xc>
 8049758:       5b                      pop    %ebx
 8049759:       81 c3 cc 13 00 00       add    $0x13cc,%ebx
 804975f:       e8 3c f3 ff ff          call   8048aa0 <__do_global_dtors_aux>
 8049764:       59                      pop    %ecx
 8049765:       5b                      pop    %ebx
 8049766:       c9                      leave
 8049767:       c3                      ret
