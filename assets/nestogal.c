#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>

unsigned char mmbuf[65000];

#define XSCALE	1
#define YSCALE	1


unsigned char romdata[256*128]={0};
static uint32_t NESgetpix(int x,int y,int tileID,int attrib)
{
	x=x&7;
	y=7-(y&7);
	uint32_t tile_address = (16 * tileID);	//	tile is 16 bytes
	uint8_t a = romdata[tile_address + y];
	uint8_t b = romdata[tile_address + y + 8];
	uint8_t cellx = x;
	uint8_t color = 0;
	if ((a & 1<<cellx )!=0)
		color = 1;
	if ((b & 1<<cellx )!=0)
		color |= 0x2;
	return (uint32_t)(color);
}

void getromfont()
{
	int i, x, y, bit, r, s, t;
	int ptr, ptr2;
	unsigned char c;
	unsigned char a, b;
	unsigned char buffer[64];

    for(i=0;i<256;i++)
    {
	    for(y=0;y<8;y++)
		{
		    for(x=0;x<8;x++)
		    {
		        ptr=0+(i*16)+(y)+(((x)&4)<<1);
						c=NESgetpix(y,x,i,0);
		        bit=x&3;
		        mmbuf[ptr]&=255-((1<<(4+bit))+(1<<bit));
		        mmbuf[ptr]|=(((c>>1)&1)<<(4+bit))+((c&1)<<bit);
			}
		}				  
    }


	ptr2 = 0;

	for (r = 0; r < 64; r++)
	{

		for (s = 0; s < 8; s++) {

			buffer[0 + s] = mmbuf[ptr2 + 32 + s];
			buffer[8 + s] = mmbuf[ptr2 + 40 + s];
			buffer[16 + s] = mmbuf[ptr2 + 48 + s];
			buffer[24 + s] = mmbuf[ptr2 + 56 + s];

			buffer[32 + s] = mmbuf[ptr2 + 0 + s];
			buffer[40 + s] = mmbuf[ptr2 + 8 + s];
			buffer[48 + s] = mmbuf[ptr2 + 16 + s];
			buffer[56 + s] = mmbuf[ptr2 + 24 + s];
		}

		for (t = 0; t < 64; t++) {
			mmbuf[ptr2 + t] = buffer[t];
		}


		ptr2 = ptr2 + 64;
	}

	
    if(1)
    {
	    FILE *f; 
    	f=fopen("../mame/roms/ponpoko/ppoko9.bin","wb");
    	if(f!=NULL)
    	{
		    fwrite(&mmbuf[0],4096,1,f);
			fclose(f);
		}
    }
}
void getromsprites()
{
int i,x,y,bit,r,s,t;
int ptr, ptr2;
unsigned char c;
unsigned char a, b;
unsigned char buffer[64];

	for(i=0;i<64;i++)
	{
		for(y=0;y<16;y++)
		{
			for(x=0;x<16;x++)
			{
				ptr=4096+(i*64)+(y&7)+(((y&8)>>3)*32)+((((x+4)&12)>>2)*8);
				int rx = 15-y;
				int ry = 15-x;
				int u = i&7;
				int v = i/8;
				c=NESgetpix(y,ry,256+((u*2)+((rx/8)&1))+((v*32)+((x/8)*16)),0);
				bit=(3-x)&3;
				mmbuf[ptr]&=255-((1<<(4+bit))+(1<<bit));
				mmbuf[ptr]|=(((c>>1)&1)<<(4+bit))+((c&1)<<bit);
			}
		}				  
    }


    if(1)
    {
	    FILE *f;
    	f=fopen("../mame/roms/ponpoko/ppoko10.bin","wb");
    	if(f!=NULL)
    	{
		    fwrite(&mmbuf[4096],4096,1,f);
				fclose(f);
			}
		//f=fopen("../mame/roms/galagao/gg1-10.4f","wb");
    	//if(f!=NULL)
    	//{
		   // fwrite(&mmbuf[4096],4096,1,f);
			//	fclose(f);
			//z}
    }
}

int main()
{
int i;
FILE *f;

	f=fopen("galaga1.chr","rb");
	if(f!=NULL)
	{
		fread(romdata,128*256,1,f);				
		fclose(f);
	}
	getromfont();
	getromsprites();

	return 0;
}

