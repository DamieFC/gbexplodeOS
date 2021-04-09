int main()
{
    *(unsigned int*)0x04000000 = 0x0403;
 
    ((unsigned short*)0x06000000)[115+80*240] = 0x001F;
    ((unsigned short*)0x06000000)[120+80*240] = 0x03E0;
    ((unsigned short*)0x06000000)[125+80*240] = 0x7C00;
 
    while(1);
 
    return 0;
}
