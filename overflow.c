#include<stdio.h>
#include<string.h>
#include<stdlib.h>
void shell_pwn()
{
    unsigned char code[] = "\x48\x31\xc0\x50\x48\x89\xe2\x48\xbb\x2f\x62\x69\x6e\x2f\x73\x68\x00\x53\x48\x89\xe7\x50\x57\x48\x89\xe6\x48\x83\xc0\x3b\x0f\x05";
    printf("shellcode length %d\n",(int)strlen(code));
    int (*ret)() = (int(*)())code;
    ret();
}
int copytobuffer(char* input)
{
    char bufffer[15];
    strcpy(bufffer,input);
    return 0;
}
void main(int argc, char* argv[])
{
    int local_varial = 1;
    copytobuffer(argv[1]);
    exit(0);
}