
#include"stdio.h"

int main()
{
	#ifdef TEST 						//Cette portion de code ne sera
	printf"Vous avez compilé avec -D TEST\n");		//exécuté que si TEST est défini
	#endif							//dans le code ou qu'on le précise à la compilation avec -D
	printf("HelloWord!\n");
	
	return 0;
}
