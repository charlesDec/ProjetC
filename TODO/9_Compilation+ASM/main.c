
extern int sum(int,int);
extern void helloFromC();

extern void helloFromASM();

int main()
{
	int a = sum(5,6);
	helloFromC();
	helloFromASM();
	return 0;
}
