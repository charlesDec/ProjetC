
extern void putChar(int,char*,int);

int main()
{
	char c = 'C';
	putChar(1, &c, 1);

	c = 10;
	putChar(1, &c, 1);
	return 0;

}
