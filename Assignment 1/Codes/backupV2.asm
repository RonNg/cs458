08048b80 <copyFile>:
55                      push   %ebp
89 e5                   mov    %esp,%ebp
81 ec d8 0b 00 00       sub    $0xbd8,%esp
83 c4 f8                add    $0xfffffff8,%esp
68 c0 97 04 08          push   $0x80497c0
8b 45 08                mov    0x8(%ebp),%eax
50                      push   %eax
e8 92 fe ff ff          call   8048a2c <fopen@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 85 3c f4 ff ff       mov    %eax,0xfffff43c(%ebp)
83 bd 3c f4 ff ff 00    cmpl   $0x0,0xfffff43c(%ebp)
75 22                   jne    8048bd0 <copyFile+0x50>
83 c4 f8                add    $0xfffffff8,%esp
68 c2 97 04 08          push   $0x80497c2
a1 f0 ab 04 08          mov    0x804abf0,%eax
50                      push   %eax
e8 db fc ff ff          call   804889c <fprintf@plt>
83 c4 10                add    $0x10,%esp
b8 ff ff ff ff          mov    $0xffffffff,%eax
e9 22 01 00 00          jmp    8048cf0 <copyFile+0x170>
89 f6                   mov    %esi,%esi
c7 45 fc 00 00 00 00    movl   $0x0,0xfffffffc(%ebp)
83 c4 f4                add    $0xfffffff4,%esp
8b 85 3c f4 ff ff       mov    0xfffff43c(%ebp),%eax
50                      push   %eax
e8 56 fc ff ff          call   804883c <fgetc@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 85 34 f4 ff ff       mov    %eax,0xfffff434(%ebp)
83 bd 34 f4 ff ff ff    cmpl   $0xffffffff,0xfffff434(%ebp)
75 06                   jne    8048c00 <copyFile+0x80>
eb 35                   jmp    8048c31 <copyFile+0xb1>
8d 74 26 00             lea    0x0(%esi),%esi
8d 85 40 f4 ff ff       lea    0xfffff440(%ebp),%eax
8b 55 fc                mov    0xfffffffc(%ebp),%edx
8a 8d 34 f4 ff ff       mov    0xfffff434(%ebp),%cl
88 0c 02                mov    %cl,(%edx,%eax,1)
83 c4 f4                add    $0xfffffff4,%esp
8b 85 3c f4 ff ff       mov    0xfffff43c(%ebp),%eax
50                      push   %eax
e8 1b fc ff ff          call   804883c <fgetc@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 85 34 f4 ff ff       mov    %eax,0xfffff434(%ebp)
ff 45 fc                incl   0xfffffffc(%ebp)
eb c0                   jmp    8048bf1 <copyFile+0x71>
8b 45 fc                mov    0xfffffffc(%ebp),%eax
89 45 f8                mov    %eax,0xfffffff8(%ebp)
83 c4 f4                add    $0xfffffff4,%esp
8b 85 3c f4 ff ff       mov    0xfffff43c(%ebp),%eax
50                      push   %eax
e8 86 fd ff ff          call   80489cc <fclose@plt>
83 c4 10                add    $0x10,%esp
83 c4 f8                add    $0xfffffff8,%esp
68 de 97 04 08          push   $0x80497de
8b 45 0c                mov    0xc(%ebp),%eax
50                      push   %eax
e8 d2 fd ff ff          call   8048a2c <fopen@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 85 38 f4 ff ff       mov    %eax,0xfffff438(%ebp)
83 bd 38 f4 ff ff 00    cmpl   $0x0,0xfffff438(%ebp)
75 32                   jne    8048ca0 <copyFile+0x120>
83 c4 f8                add    $0xfffffff8,%esp
68 e0 97 04 08          push   $0x80497e0
a1 f0 ab 04 08          mov    0x804abf0,%eax
50                      push   %eax
e8 1b fc ff ff          call   804889c <fprintf@plt>
83 c4 10                add    $0x10,%esp
83 c4 f4                add    $0xfffffff4,%esp
68 01 98 04 08          push   $0x8049801
e8 fb fb ff ff          call   804888c <perror@plt>
83 c4 10                add    $0x10,%esp
b8 ff ff ff ff          mov    $0xffffffff,%eax
eb 55                   jmp    8048cf0 <copyFile+0x170>
90                      nop
8d 74 26 00             lea    0x0(%esi),%esi
c7 45 fc 00 00 00 00    movl   $0x0,0xfffffffc(%ebp)
8b 45 fc                mov    0xfffffffc(%ebp),%eax
3b 45 f8                cmp    0xfffffff8(%ebp),%eax
72 02                   jb     8048cb1 <copyFile+0x131>
eb 25                   jmp    8048cd6 <copyFile+0x156>
83 c4 f8                add    $0xfffffff8,%esp
8b 85 38 f4 ff ff       mov    0xfffff438(%ebp),%eax
50                      push   %eax
8d 85 40 f4 ff ff       lea    0xfffff440(%ebp),%eax
8b 55 fc                mov    0xfffffffc(%ebp),%edx
0f be 04 02             movsbl (%edx,%eax,1),%eax
50                      push   %eax
e8 ae fc ff ff          call   804897c <fputc@plt>
83 c4 10                add    $0x10,%esp
ff 45 fc                incl   0xfffffffc(%ebp)
eb d1                   jmp    8048ca7 <copyFile+0x127>
83 c4 f4                add    $0xfffffff4,%esp
8b 85 38 f4 ff ff       mov    0xfffff438(%ebp),%eax
50                      push   %eax
e8 e7 fc ff ff          call   80489cc <fclose@plt>
83 c4 10                add    $0x10,%esp
31 c0                   xor    %eax,%eax
eb 04                   jmp    8048cf0 <copyFile+0x170>
8d 74 26 00             lea    0x0(%esi),%esi
89 ec                   mov    %ebp,%esp
5d                      pop    %ebp
c3                      ret
8d b6 00 00 00 00       lea    0x0(%esi),%esi
8d bf 00 00 00 00       lea    0x0(%edi),%edi

08048d00 <run_cmd>:
55                      push   %ebp
89 e5                   mov    %esp,%ebp
83 ec 48                sub    $0x48,%esp
c7 45 d4 01 00 00 00    movl   $0x1,0xffffffd4(%ebp)
8d 45 0c                lea    0xc(%ebp),%eax
89 45 fc                mov    %eax,0xfffffffc(%ebp)
83 7d d4 06             cmpl   $0x6,0xffffffd4(%ebp)
7f 28                   jg     8048d41 <run_cmd+0x41>
8b 45 d4                mov    0xffffffd4(%ebp),%eax
89 c2                   mov    %eax,%edx
8d 04 95 00 00 00 00    lea    0x0(,%edx,4),%eax
8d 55 dc                lea    0xffffffdc(%ebp),%edx
01 d0                   add    %edx,%eax
83 45 fc 04             addl   $0x4,0xfffffffc(%ebp)
ff 45 d4                incl   0xffffffd4(%ebp)
8b 55 fc                mov    0xfffffffc(%ebp),%edx
83 c2 fc                add    $0xfffffffc,%edx
8b 0a                   mov    (%edx),%ecx
89 08                   mov    %ecx,(%eax)
85 c9                   test   %ecx,%ecx
75 04                   jne    8048d43 <run_cmd+0x43>
eb 00                   jmp    8048d41 <run_cmd+0x41>
eb 02                   jmp    8048d45 <run_cmd+0x45>
eb ce                   jmp    8048d13 <run_cmd+0x13>
c7 45 f8 00 00 00 00    movl   $0x0,0xfffffff8(%ebp)
83 c4 f8                add    $0xfffffff8,%esp
6a 2f                   push   $0x2f
8b 45 08                mov    0x8(%ebp),%eax
50                      push   %eax
e8 b2 fc ff ff          call   8048a0c <rindex@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 45 dc                mov    %eax,0xffffffdc(%ebp)
83 7d dc 00             cmpl   $0x0,0xffffffdc(%ebp)
75 08                   jne    8048d70 <run_cmd+0x70>
8b 45 08                mov    0x8(%ebp),%eax
89 45 dc                mov    %eax,0xffffffdc(%ebp)
eb 03                   jmp    8048d73 <run_cmd+0x73>
ff 45 dc                incl   0xffffffdc(%ebp)
e8 34 fb ff ff          call   80488ac <fork@plt>
89 c0                   mov    %eax,%eax
89 45 d8                mov    %eax,0xffffffd8(%ebp)
83 7d d8 00             cmpl   $0x0,0xffffffd8(%ebp)
7d 1d                   jge    8048da0 <run_cmd+0xa0>
83 c4 f8                add    $0xfffffff8,%esp
68 07 98 04 08          push   $0x8049807
a1 f0 ab 04 08          mov    0x804abf0,%eax
50                      push   %eax
e8 06 fb ff ff          call   804889c <fprintf@plt>
83 c4 10                add    $0x10,%esp
b8 01 00 00 00          mov    $0x1,%eax
eb 74                   jmp    8048e14 <run_cmd+0x114>
83 7d d8 00             cmpl   $0x0,0xffffffd8(%ebp)
7e 4c                   jle    8048df2 <run_cmd+0xf2>
83 c4 fc                add    $0xfffffffc,%esp
6a 00                   push   $0x0
8d 45 d0                lea    0xffffffd0(%ebp),%eax
50                      push   %eax
8b 45 d8                mov    0xffffffd8(%ebp),%eax
50                      push   %eax
e8 54 fb ff ff          call   804890c <waitpid@plt>
83 c4 10                add    $0x10,%esp
8b 45 d0                mov    0xffffffd0(%ebp),%eax
89 45 cc                mov    %eax,0xffffffcc(%ebp)
8b 45 cc                mov    0xffffffcc(%ebp),%eax
83 e0 7f                and    $0x7f,%eax
85 c0                   test   %eax,%eax
75 19                   jne    8048de4 <run_cmd+0xe4>
8b 45 d0                mov    0xffffffd0(%ebp),%eax
89 45 c8                mov    %eax,0xffffffc8(%ebp)
8b 45 c8                mov    0xffffffc8(%ebp),%eax
25 00 ff 00 00          and    $0xff00,%eax
89 c2                   mov    %eax,%edx
c1 fa 08                sar    $0x8,%edx
85 d2                   test   %edx,%edx
7c 02                   jl     8048de4 <run_cmd+0xe4>
eb 0c                   jmp    8048df0 <run_cmd+0xf0>
b8 01 00 00 00          mov    $0x1,%eax
eb 29                   jmp    8048e14 <run_cmd+0x114>
90                      nop
8d 74 26 00             lea    0x0(%esi),%esi
eb 1e                   jmp    8048e10 <run_cmd+0x110>
83 c4 f8                add    $0xfffffff8,%esp
8d 45 dc                lea    0xffffffdc(%ebp),%eax
50                      push   %eax
8b 45 08                mov    0x8(%ebp),%eax
50                      push   %eax
e8 5a fb ff ff          call   804895c <execvp@plt>
83 c4 10                add    $0x10,%esp
b8 01 00 00 00          mov    $0x1,%eax
eb 08                   jmp    8048e14 <run_cmd+0x114>
8d 74 26 00             lea    0x0(%esi),%esi
31 c0                   xor    %eax,%eax
eb 00                   jmp    8048e14 <run_cmd+0x114>
89 ec                   mov    %ebp,%esp
5d                      pop    %ebp
c3                      ret
90                      nop
8d b4 26 00 00 00 00    lea    0x0(%esi),%esi

08048e20 <restorePermissions>:
55                      push   %ebp
89 e5                   mov    %esp,%ebp
83 ec 78                sub    $0x78,%esp
e8 81 fa ff ff          call   80488ac <fork@plt>
89 c0                   mov    %eax,%eax
89 45 fc                mov    %eax,0xfffffffc(%ebp)
83 7d fc 00             cmpl   $0x0,0xfffffffc(%ebp)
7d 20                   jge    8048e56 <restorePermissions+0x36>
83 c4 f8                add    $0xfffffff8,%esp
68 07 98 04 08          push   $0x8049807
a1 f0 ab 04 08          mov    0x804abf0,%eax
50                      push   %eax
e8 53 fa ff ff          call   804889c <fprintf@plt>
83 c4 10                add    $0x10,%esp
b8 ff ff ff ff          mov    $0xffffffff,%eax
e9 ca 01 00 00          jmp    8049020 <restorePermissions+0x200>
83 7d fc 00             cmpl   $0x0,0xfffffffc(%ebp)
7e 59                   jle    8048eb5 <restorePermissions+0x95>
83 c4 fc                add    $0xfffffffc,%esp
6a 00                   push   $0x0
8d 45 f8                lea    0xfffffff8(%ebp),%eax
50                      push   %eax
8b 45 fc                mov    0xfffffffc(%ebp),%eax
50                      push   %eax
e8 9e fa ff ff          call   804890c <waitpid@plt>
83 c4 10                add    $0x10,%esp
8b 45 f8                mov    0xfffffff8(%ebp),%eax
89 45 a0                mov    %eax,0xffffffa0(%ebp)
8b 45 a0                mov    0xffffffa0(%ebp),%eax
83 e0 7f                and    $0x7f,%eax
85 c0                   test   %eax,%eax
75 1f                   jne    8048ea0 <restorePermissions+0x80>
8b 45 f8                mov    0xfffffff8(%ebp),%eax
89 45 9c                mov    %eax,0xffffff9c(%ebp)
8b 45 9c                mov    0xffffff9c(%ebp),%eax
25 00 ff 00 00          and    $0xff00,%eax
89 c2                   mov    %eax,%edx
c1 fa 08                sar    $0x8,%edx
85 d2                   test   %edx,%edx
7c 08                   jl     8048ea0 <restorePermissions+0x80>
eb 16                   jmp    8048eb0 <restorePermissions+0x90>
8d b6 00 00 00 00       lea    0x0(%esi),%esi
b8 ff ff ff ff          mov    $0xffffffff,%eax
e9 76 01 00 00          jmp    8049020 <restorePermissions+0x200>
8d b6 00 00 00 00       lea    0x0(%esi),%esi
e9 4b 01 00 00          jmp    8049000 <restorePermissions+0x1e0>
83 c4 f4                add    $0xfffffff4,%esp
68 14 98 04 08          push   $0x8049814
e8 fa f9 ff ff          call   80488bc <getenv@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 45 f4                mov    %eax,0xfffffff4(%ebp)
83 c4 f8                add    $0xfffffff8,%esp
68 c0 97 04 08          push   $0x80497c0
68 19 98 04 08          push   $0x8049819
e8 50 fb ff ff          call   8048a2c <fopen@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 45 e8                mov    %eax,0xffffffe8(%ebp)
83 7d e8 00             cmpl   $0x0,0xffffffe8(%ebp)
75 26                   jne    8048f10 <restorePermissions+0xf0>
83 c4 f8                add    $0xfffffff8,%esp
68 25 98 04 08          push   $0x8049825
a1 f0 ab 04 08          mov    0x804abf0,%eax
50                      push   %eax
e8 9f f9 ff ff          call   804889c <fprintf@plt>
83 c4 10                add    $0x10,%esp
b8 ff ff ff ff          mov    $0xffffffff,%eax
e9 16 01 00 00          jmp    8049020 <restorePermissions+0x200>
8d b6 00 00 00 00       lea    0x0(%esi),%esi
c7 45 f0 00 00 00 00    movl   $0x0,0xfffffff0(%ebp)
83 c4 f4                add    $0xfffffff4,%esp
8b 45 e8                mov    0xffffffe8(%ebp),%eax
50                      push   %eax
e8 39 f9 ff ff          call   804885c <feof@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
85 c0                   test   %eax,%eax
74 05                   je     8048f31 <restorePermissions+0x111>
e9 9f 00 00 00          jmp    8048fd0 <restorePermissions+0x1b0>
83 c4 fc                add    $0xfffffffc,%esp
8b 45 e8                mov    0xffffffe8(%ebp),%eax
50                      push   %eax
6a 40                   push   $0x40
8d 45 a8                lea    0xffffffa8(%ebp),%eax
50                      push   %eax
e8 d9 f9 ff ff          call   804891c <fgets@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
85 c0                   test   %eax,%eax
74 7a                   je     8048fc6 <restorePermissions+0x1a6>
83 c4 f8                add    $0xfffffff8,%esp
68 43 98 04 08          push   $0x8049843
8d 45 a8                lea    0xffffffa8(%ebp),%eax
50                      push   %eax
e8 df fa ff ff          call   8048a3c <strtok@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 45 ec                mov    %eax,0xffffffec(%ebp)
83 c4 f8                add    $0xfffffff8,%esp
8b 45 f4                mov    0xfffffff4(%ebp),%eax
50                      push   %eax
8b 45 ec                mov    0xffffffec(%ebp),%eax
50                      push   %eax
e8 07 f9 ff ff          call   804887c <strcmp@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
85 c0                   test   %eax,%eax
75 48                   jne    8048fc6 <restorePermissions+0x1a6>
83 c4 f8                add    $0xfffffff8,%esp
68 43 98 04 08          push   $0x8049843
6a 00                   push   $0x0
e8 af fa ff ff          call   8048a3c <strtok@plt>
83 c4 10                add    $0x10,%esp
83 c4 f8                add    $0xfffffff8,%esp
68 43 98 04 08          push   $0x8049843
6a 00                   push   $0x0
e8 9d fa ff ff          call   8048a3c <strtok@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 45 f0                mov    %eax,0xfffffff0(%ebp)
83 c4 f8                add    $0xfffffff8,%esp
68 43 98 04 08          push   $0x8049843
6a 00                   push   $0x0
e8 86 fa ff ff          call   8048a3c <strtok@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 45 ec                mov    %eax,0xffffffec(%ebp)
8b 45 ec                mov    0xffffffec(%ebp),%eax
c6 00 00                movb   $0x0,(%eax)
eb 0a                   jmp    8048fd0 <restorePermissions+0x1b0>
e9 4c ff ff ff          jmp    8048f17 <restorePermissions+0xf7>
90                      nop
8d 74 26 00             lea    0x0(%esi),%esi
83 7d f0 00             cmpl   $0x0,0xfffffff0(%ebp)
74 1f                   je     8048ff5 <restorePermissions+0x1d5>
83 c4 f4                add    $0xfffffff4,%esp
6a 00                   push   $0x0
8b 45 08                mov    0x8(%ebp),%eax
50                      push   %eax
8b 45 f0                mov    0xfffffff0(%ebp),%eax
50                      push   %eax
68 45 98 04 08          push   $0x8049845
68 45 98 04 08          push   $0x8049845
e8 3a f9 ff ff          call   804892c <execlp@plt>
83 c4 20                add    $0x20,%esp
b8 ff ff ff ff          mov    $0xffffffff,%eax
eb 24                   jmp    8049020 <restorePermissions+0x200>
8d 74 26 00             lea    0x0(%esi),%esi
c7 45 a4 c0 01 00 00    movl   $0x1c0,0xffffffa4(%ebp)
83 c4 f8                add    $0xfffffff8,%esp
8b 45 a4                mov    0xffffffa4(%ebp),%eax
50                      push   %eax
8b 45 08                mov    0x8(%ebp),%eax
50                      push   %eax
e8 b5 f8 ff ff          call   80488cc <chmod@plt>
83 c4 10                add    $0x10,%esp
31 c0                   xor    %eax,%eax
eb 02                   jmp    8049020 <restorePermissions+0x200>
89 f6                   mov    %esi,%esi
89 ec                   mov    %ebp,%esp
5d                      pop    %ebp
c3                      ret
8d b6 00 00 00 00       lea    0x0(%esi),%esi
8d bf 00 00 00 00       lea    0x0(%edi),%edi

08049030 <show_files>:
55                      push   %ebp
89 e5                   mov    %esp,%ebp
83 ec 08                sub    $0x8,%esp
83 c4 f4                add    $0xfffffff4,%esp
6a 00                   push   $0x0
68 50 98 04 08          push   $0x8049850
68 52 98 04 08          push   $0x8049852
68 5c 98 04 08          push   $0x804985c
68 6e 98 04 08          push   $0x804986e
e8 ac fc ff ff          call   8048d00 <run_cmd>
83 c4 20                add    $0x20,%esp
31 c0                   xor    %eax,%eax
eb 05                   jmp    8049060 <show_files+0x30>
90                      nop
8d 74 26 00             lea    0x0(%esi),%esi
89 ec                   mov    %ebp,%esp
5d                      pop    %ebp
c3                      ret
8d b6 00 00 00 00       lea    0x0(%esi),%esi
8d bf 00 00 00 00       lea    0x0(%edi),%edi

08049070 <strip_dots>:
55                      push   %ebp
89 e5                   mov    %esp,%ebp
83 ec 18                sub    $0x18,%esp
83 c4 f4                add    $0xfffffff4,%esp
83 c4 f4                add    $0xfffffff4,%esp
8b 45 08                mov    0x8(%ebp),%eax
50                      push   %eax
e8 c7 f8 ff ff          call   804894c <strlen@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
8d 50 01                lea    0x1(%eax),%edx
52                      push   %edx
e8 49 f8 ff ff          call   80488dc <malloc@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 45 fc                mov    %eax,0xfffffffc(%ebp)
8b 45 fc                mov    0xfffffffc(%ebp),%eax
89 45 f8                mov    %eax,0xfffffff8(%ebp)
83 c4 f8                add    $0xfffffff8,%esp
8b 45 08                mov    0x8(%ebp),%eax
50                      push   %eax
8b 45 f8                mov    0xfffffff8(%ebp),%eax
50                      push   %eax
e8 bb f9 ff ff          call   8048a6c <strcpy@plt>
83 c4 10                add    $0x10,%esp
83 c4 fc                add    $0xfffffffc,%esp
6a 03                   push   $0x3
8b 45 f8                mov    0xfffffff8(%ebp),%eax
50                      push   %eax
68 73 98 04 08          push   $0x8049873
e8 a5 f8 ff ff          call   804896c <strncmp@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
85 c0                   test   %eax,%eax
74 02                   je     80490d2 <strip_dots+0x62>
eb 06                   jmp    80490d8 <strip_dots+0x68>
83 45 f8 03             addl   $0x3,0xfffffff8(%ebp)
eb dc                   jmp    80490b4 <strip_dots+0x44>
83 c4 f8                add    $0xfffffff8,%esp
8b 45 f8                mov    0xfffffff8(%ebp),%eax
50                      push   %eax
8b 45 08                mov    0x8(%ebp),%eax
50                      push   %eax
e8 84 f9 ff ff          call   8048a6c <strcpy@plt>
83 c4 10                add    $0x10,%esp
83 c4 f4                add    $0xfffffff4,%esp
8b 45 fc                mov    0xfffffffc(%ebp),%eax
50                      push   %eax
e8 f5 f8 ff ff          call   80489ec <free@plt>
83 c4 10                add    $0x10,%esp
89 ec                   mov    %ebp,%esp
5d                      pop    %ebp
c3                      ret
89 f6                   mov    %esi,%esi

08049100 <usage>:
55                      push   %ebp
89 e5                   mov    %esp,%ebp
81 ec d8 00 00 00       sub    $0xd8,%esp
8b 45 08                mov    0x8(%ebp),%eax
50                      push   %eax
68 80 98 04 08          push   $0x8049880
68 c8 00 00 00          push   $0xc8
8d 85 38 ff ff ff       lea    0xffffff38(%ebp),%eax
50                      push   %eax
e8 b9 f8 ff ff          call   80489dc <snprintf@plt>
83 c4 10                add    $0x10,%esp
83 c4 f4                add    $0xfffffff4,%esp
8d 85 38 ff ff ff       lea    0xffffff38(%ebp),%eax
50                      push   %eax
e8 77 f8 ff ff          call   80489ac <printf@plt>
83 c4 10                add    $0x10,%esp
89 ec                   mov    %ebp,%esp
5d                      pop    %ebp
c3                      ret
8d 74 26 00             lea    0x0(%esi),%esi

08049140 <main>:
55                      push   %ebp
89 e5                   mov    %esp,%ebp
81 ec 24 01 00 00       sub    $0x124,%esp
53                      push   %ebx
c7 45 f8 00 00 00 00    movl   $0x0,0xfffffff8(%ebp)
c7 85 50 ff ff ff aa    movl   $0x80498aa,0xffffff50(%ebp)
98 04 08
83 c4 fc                add    $0xfffffffc,%esp
68 98 00 00 00          push   $0x98
6a 00                   push   $0x0
8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
50                      push   %eax
e8 8b f8 ff ff          call   80489fc <memset@plt>
83 c4 10                add    $0x10,%esp
83 7d 08 01             cmpl   $0x1,0x8(%ebp)
7e 56                   jle    80491d0 <main+0x90>
83 c4 f8                add    $0xfffffff8,%esp
8b 45 0c                mov    0xc(%ebp),%eax
83 c0 04                add    $0x4,%eax
8b 10                   mov    (%eax),%edx
52                      push   %edx
68 af 98 04 08          push   $0x80498af
e8 ec f6 ff ff          call   804887c <strcmp@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
85 c0                   test   %eax,%eax
75 37                   jne    80491d0 <main+0x90>
83 7d 08 03             cmpl   $0x3,0x8(%ebp)
74 21                   je     80491c0 <main+0x80>
83 c4 f4                add    $0xfffffff4,%esp
8b 45 0c                mov    0xc(%ebp),%eax
8b 10                   mov    (%eax),%edx
52                      push   %edx
e8 53 ff ff ff          call   8049100 <usage>
83 c4 10                add    $0x10,%esp
b8 01 00 00 00          mov    $0x1,%eax
e9 76 04 00 00          jmp    8049630 <main+0x4f0>
8d b6 00 00 00 00       lea    0x0(%esi),%esi
c7 45 fc 00 00 00 00    movl   $0x0,0xfffffffc(%ebp)
e9 c4 00 00 00          jmp    8049290 <main+0x150>
8d 74 26 00             lea    0x0(%esi),%esi
83 7d 08 01             cmpl   $0x1,0x8(%ebp)
7e 4a                   jle    8049220 <main+0xe0>
83 c4 f8                add    $0xfffffff8,%esp
8b 45 0c                mov    0xc(%ebp),%eax
83 c0 04                add    $0x4,%eax
8b 10                   mov    (%eax),%edx
52                      push   %edx
68 b6 98 04 08          push   $0x80498b6
e8 90 f6 ff ff          call   804887c <strcmp@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
85 c0                   test   %eax,%eax
75 2b                   jne    8049220 <main+0xe0>
83 7d 08 03             cmpl   $0x3,0x8(%ebp)
74 1b                   je     8049216 <main+0xd6>
83 c4 f4                add    $0xfffffff4,%esp
8b 45 0c                mov    0xc(%ebp),%eax
8b 10                   mov    (%eax),%edx
52                      push   %edx
e8 f7 fe ff ff          call   8049100 <usage>
83 c4 10                add    $0x10,%esp
b8 01 00 00 00          mov    $0x1,%eax
e9 1a 04 00 00          jmp    8049630 <main+0x4f0>
c7 45 fc 01 00 00 00    movl   $0x1,0xfffffffc(%ebp)
eb 71                   jmp    8049290 <main+0x150>
90                      nop
83 7d 08 01             cmpl   $0x1,0x8(%ebp)
7e 4e                   jle    8049274 <main+0x134>
83 c4 f8                add    $0xfffffff8,%esp
8b 45 0c                mov    0xc(%ebp),%eax
83 c0 04                add    $0x4,%eax
8b 10                   mov    (%eax),%edx
52                      push   %edx
68 be 98 04 08          push   $0x80498be
e8 40 f6 ff ff          call   804887c <strcmp@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
85 c0                   test   %eax,%eax
75 2f                   jne    8049274 <main+0x134>
83 7d 08 02             cmpl   $0x2,0x8(%ebp)
74 1b                   je     8049266 <main+0x126>
83 c4 f4                add    $0xfffffff4,%esp
8b 45 0c                mov    0xc(%ebp),%eax
8b 10                   mov    (%eax),%edx
52                      push   %edx
e8 a7 fe ff ff          call   8049100 <usage>
83 c4 10                add    $0x10,%esp
b8 01 00 00 00          mov    $0x1,%eax
e9 ca 03 00 00          jmp    8049630 <main+0x4f0>
e8 c5 fd ff ff          call   8049030 <show_files>
31 c0                   xor    %eax,%eax
e9 be 03 00 00          jmp    8049630 <main+0x4f0>
eb 1c                   jmp    8049290 <main+0x150>
83 c4 f4                add    $0xfffffff4,%esp
8b 45 0c                mov    0xc(%ebp),%eax
8b 10                   mov    (%eax),%edx
52                      push   %edx
e8 7e fe ff ff          call   8049100 <usage>
83 c4 10                add    $0x10,%esp
b8 01 00 00 00          mov    $0x1,%eax
e9 a1 03 00 00          jmp    8049630 <main+0x4f0>
90                      nop
8b 45 0c                mov    0xc(%ebp),%eax
83 c0 08                add    $0x8,%eax
8b 10                   mov    (%eax),%edx
89 95 5c ff ff ff       mov    %edx,0xffffff5c(%ebp)
83 c4 f4                add    $0xfffffff4,%esp
83 c4 f4                add    $0xfffffff4,%esp
8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
50                      push   %eax
e8 9c f6 ff ff          call   804894c <strlen@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
8d 50 01                lea    0x1(%eax),%edx
52                      push   %edx
e8 1e f6 ff ff          call   80488dc <malloc@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 85 58 ff ff ff       mov    %eax,0xffffff58(%ebp)
83 c4 f8                add    $0xfffffff8,%esp
8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
50                      push   %eax
8b 85 58 ff ff ff       mov    0xffffff58(%ebp),%eax
50                      push   %eax
e8 8d f7 ff ff          call   8048a6c <strcpy@plt>
83 c4 10                add    $0x10,%esp
83 c4 f4                add    $0xfffffff4,%esp
8b 85 58 ff ff ff       mov    0xffffff58(%ebp),%eax
50                      push   %eax
e8 7f fd ff ff          call   8049070 <strip_dots>
83 c4 10                add    $0x10,%esp
83 c4 f8                add    $0xfffffff8,%esp
6a 00                   push   $0x0
8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
50                      push   %eax
e8 47 f7 ff ff          call   8048a4c <realpath@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 85 54 ff ff ff       mov    %eax,0xffffff54(%ebp)
83 bd 54 ff ff ff 00    cmpl   $0x0,0xffffff54(%ebp)
0f 84 91 00 00 00       je     80493ae <main+0x26e>
83 c4 f8                add    $0xfffffff8,%esp
8b 85 50 ff ff ff       mov    0xffffff50(%ebp),%eax
50                      push   %eax
8b 85 54 ff ff ff       mov    0xffffff54(%ebp),%eax
50                      push   %eax
e8 09 f6 ff ff          call   804893c <strstr@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
3b 85 54 ff ff ff       cmp    0xffffff54(%ebp),%eax
75 6e                   jne    80493ae <main+0x26e>
c7 45 f8 01 00 00 00    movl   $0x1,0xfffffff8(%ebp)
83 c4 f8                add    $0xfffffff8,%esp
68 e0 98 04 08          push   $0x80498e0
8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
50                      push   %eax
e8 11 f7 ff ff          call   8048a6c <strcpy@plt>
83 c4 10                add    $0x10,%esp
83 c4 fc                add    $0xfffffffc,%esp
83 c4 f4                add    $0xfffffff4,%esp
8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
50                      push   %eax
e8 dc f5 ff ff          call   804894c <strlen@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
ba 98 00 00 00          mov    $0x98,%edx
89 d1                   mov    %edx,%ecx
29 c1                   sub    %eax,%ecx
89 c8                   mov    %ecx,%eax
50                      push   %eax
8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
50                      push   %eax
8d 9d 60 ff ff ff       lea    0xffffff60(%ebp),%ebx
83 c4 f4                add    $0xfffffff4,%esp
8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
50                      push   %eax
e8 af f5 ff ff          call   804894c <strlen@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
8d 14 18                lea    (%eax,%ebx,1),%edx
52                      push   %edx
e8 71 f6 ff ff          call   8048a1c <strncpy@plt>
83 c4 10                add    $0x10,%esp
83 c4 f4                add    $0xfffffff4,%esp
83 c4 f4                add    $0xfffffff4,%esp
68 5c 98 04 08          push   $0x804985c
e8 8e f5 ff ff          call   804894c <strlen@plt>
83 c4 10                add    $0x10,%esp
89 c3                   mov    %eax,%ebx
83 c4 f4                add    $0xfffffff4,%esp
8b 85 58 ff ff ff       mov    0xffffff58(%ebp),%eax
50                      push   %eax
e8 7a f5 ff ff          call   804894c <strlen@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
8d 50 01                lea    0x1(%eax),%edx
8d 04 1a                lea    (%edx,%ebx,1),%eax
8d 50 01                lea    0x1(%eax),%edx
52                      push   %edx
e8 f6 f4 ff ff          call   80488dc <malloc@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
89 85 44 ff ff ff       mov    %eax,0xffffff44(%ebp)
83 bd 44 ff ff ff 00    cmpl   $0x0,0xffffff44(%ebp)
75 26                   jne    8049420 <main+0x2e0>
83 c4 f8                add    $0xfffffff8,%esp
68 06 99 04 08          push   $0x8049906
a1 f0 ab 04 08          mov    0x804abf0,%eax
50                      push   %eax
e8 8f f4 ff ff          call   804889c <fprintf@plt>
83 c4 10                add    $0x10,%esp
b8 01 00 00 00          mov    $0x1,%eax
e9 16 02 00 00          jmp    8049630 <main+0x4f0>
8d b6 00 00 00 00       lea    0x0(%esi),%esi
83 7d fc 00             cmpl   $0x0,0xfffffffc(%ebp)
75 7e                   jne    80494a4 <main+0x364>
83 bd 54 ff ff ff 00    cmpl   $0x0,0xffffff54(%ebp)
74 11                   je     8049440 <main+0x300>
8b 85 54 ff ff ff       mov    0xffffff54(%ebp),%eax
89 85 4c ff ff ff       mov    %eax,0xffffff4c(%ebp)
eb 0f                   jmp    804944c <main+0x30c>
8d 76 00                lea    0x0(%esi),%esi
8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
89 85 4c ff ff ff       mov    %eax,0xffffff4c(%ebp)
8b 85 44 ff ff ff       mov    0xffffff44(%ebp),%eax
89 85 48 ff ff ff       mov    %eax,0xffffff48(%ebp)
83 c4 f8                add    $0xfffffff8,%esp
68 5c 98 04 08          push   $0x804985c
8b 85 48 ff ff ff       mov    0xffffff48(%ebp),%eax
50                      push   %eax
e8 00 f6 ff ff          call   8048a6c <strcpy@plt>
83 c4 10                add    $0x10,%esp
83 c4 f8                add    $0xfffffff8,%esp
68 21 99 04 08          push   $0x8049921
8b 85 48 ff ff ff       mov    0xffffff48(%ebp),%eax
50                      push   %eax
e8 19 f5 ff ff          call   804899c <strcat@plt>
83 c4 10                add    $0x10,%esp
83 c4 f8                add    $0xfffffff8,%esp
8b 85 58 ff ff ff       mov    0xffffff58(%ebp),%eax
50                      push   %eax
8b 85 48 ff ff ff       mov    0xffffff48(%ebp),%eax
50                      push   %eax
e8 00 f5 ff ff          call   804899c <strcat@plt>
83 c4 10                add    $0x10,%esp
e9 05 01 00 00          jmp    80495a9 <main+0x469>
83 7d fc 01             cmpl   $0x1,0xfffffffc(%ebp)
0f 85 fb 00 00 00       jne    80495a9 <main+0x469>
8b 85 44 ff ff ff       mov    0xffffff44(%ebp),%eax
89 85 4c ff ff ff       mov    %eax,0xffffff4c(%ebp)
83 c4 f8                add    $0xfffffff8,%esp
68 5c 98 04 08          push   $0x804985c
8b 85 4c ff ff ff       mov    0xffffff4c(%ebp),%eax
50                      push   %eax
e8 9e f5 ff ff          call   8048a6c <strcpy@plt>
83 c4 10                add    $0x10,%esp
83 c4 f8                add    $0xfffffff8,%esp
68 21 99 04 08          push   $0x8049921
8b 85 4c ff ff ff       mov    0xffffff4c(%ebp),%eax
50                      push   %eax
e8 b7 f4 ff ff          call   804899c <strcat@plt>
83 c4 10                add    $0x10,%esp
83 c4 f8                add    $0xfffffff8,%esp
8b 85 58 ff ff ff       mov    0xffffff58(%ebp),%eax
50                      push   %eax
8b 85 4c ff ff ff       mov    0xffffff4c(%ebp),%eax
50                      push   %eax
e8 9e f4 ff ff          call   804899c <strcat@plt>
83 c4 10                add    $0x10,%esp
83 bd 54 ff ff ff 00    cmpl   $0x0,0xffffff54(%ebp)
74 0e                   je     8049518 <main+0x3d8>
8b 85 54 ff ff ff       mov    0xffffff54(%ebp),%eax
89 85 48 ff ff ff       mov    %eax,0xffffff48(%ebp)
eb 0c                   jmp    8049524 <main+0x3e4>
8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
89 85 48 ff ff ff       mov    %eax,0xffffff48(%ebp)
83 c4 f8                add    $0xfffffff8,%esp
8d 85 ec fe ff ff       lea    0xfffffeec(%ebp),%eax
50                      push   %eax
8b 85 48 ff ff ff       mov    0xffffff48(%ebp),%eax
50                      push   %eax
e8 b6 01 00 00          call   80496f0 <__stat>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
85 c0                   test   %eax,%eax
75 66                   jne    80495a9 <main+0x469>
e8 74 f4 ff ff          call   80489bc <getuid@plt>
89 c0                   mov    %eax,%eax
39 85 04 ff ff ff       cmp    %eax,0xffffff04(%ebp)
74 57                   je     80495a9 <main+0x469>
c7 45 f8 01 00 00 00    movl   $0x1,0xfffffff8(%ebp)
83 c4 f8                add    $0xfffffff8,%esp
68 23 99 04 08          push   $0x8049923
8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
50                      push   %eax
e8 ff f4 ff ff          call   8048a6c <strcpy@plt>
83 c4 10                add    $0x10,%esp
83 c4 fc                add    $0xfffffffc,%esp
83 c4 f4                add    $0xfffffff4,%esp
8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
50                      push   %eax
e8 ca f3 ff ff          call   804894c <strlen@plt>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
ba 98 00 00 00          mov    $0x98,%edx
89 d1                   mov    %edx,%ecx
29 c1                   sub    %eax,%ecx
89 c8                   mov    %ecx,%eax
50                      push   %eax
8b 85 5c ff ff ff       mov    0xffffff5c(%ebp),%eax
50                      push   %eax
8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
50                      push   %eax
e8 a6 f2 ff ff          call   804884c <strncat@plt>
83 c4 10                add    $0x10,%esp
83 7d f8 00             cmpl   $0x0,0xfffffff8(%ebp)
74 24                   je     80495d3 <main+0x493>
83 c4 fc                add    $0xfffffffc,%esp
8d 85 60 ff ff ff       lea    0xffffff60(%ebp),%eax
50                      push   %eax
68 40 99 04 08          push   $0x8049940
a1 f0 ab 04 08          mov    0x804abf0,%eax
50                      push   %eax
e8 d3 f2 ff ff          call   804889c <fprintf@plt>
83 c4 10                add    $0x10,%esp
b8 01 00 00 00          mov    $0x1,%eax
eb 5d                   jmp    8049630 <main+0x4f0>
83 c4 f8                add    $0xfffffff8,%esp
8b 85 48 ff ff ff       mov    0xffffff48(%ebp),%eax
50                      push   %eax
8b 85 4c ff ff ff       mov    0xffffff4c(%ebp),%eax
50                      push   %eax
e8 97 f5 ff ff          call   8048b80 <copyFile>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
85 c0                   test   %eax,%eax
7d 0e                   jge    8049600 <main+0x4c0>
b8 01 00 00 00          mov    $0x1,%eax
eb 37                   jmp    8049630 <main+0x4f0>
8d b4 26 00 00 00 00    lea    0x0(%esi),%esi
83 7d fc 01             cmpl   $0x1,0xfffffffc(%ebp)
75 1f                   jne    8049625 <main+0x4e5>
83 c4 f4                add    $0xfffffff4,%esp
8b 85 48 ff ff ff       mov    0xffffff48(%ebp),%eax
50                      push   %eax
e8 0b f8 ff ff          call   8048e20 <restorePermissions>
83 c4 10                add    $0x10,%esp
89 c0                   mov    %eax,%eax
85 c0                   test   %eax,%eax
7d 07                   jge    8049625 <main+0x4e5>
b8 01 00 00 00          mov    $0x1,%eax
eb 0b                   jmp    8049630 <main+0x4f0>
31 c0                   xor    %eax,%eax
eb 07                   jmp    8049630 <main+0x4f0>
8d b4 26 00 00 00 00    lea    0x0(%esi),%esi
8b 9d d8 fe ff ff       mov    0xfffffed8(%ebp),%ebx
89 ec                   mov    %ebp,%esp
5d                      pop    %ebp
c3                      ret
90                      nop
90                      nop
90                      nop
90                      nop
90                      nop
90                      nop