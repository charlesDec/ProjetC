

//cette fonction prend un entier en paramètre et retourne sa valeur+1
int incr(int entier)
{
	return entier+1;
}
//cette fonction prend l'adresse d'un entier et augmente la valeur de l'entier pointé de 1
void incrByAdress(int * pointeur) //le type (int*) signifie un pointeur sur un entier
{
	*pointeur += 1;//*pointeur signifie la valeur du pointeur nommé pointeur
	//pas besoin de retourner quelquechose, on passe par adresse et la fonction a un type void
}

int main()
{
	//commençons par déclarer un entier a dont la valeur est 8
	int a =  8;
	//nous appelons la méthode incr() sur a
	incr(a); //cette méthode renvoi bien la valeur de a+1 mais nous ne la stockons pas
	//ici a vaut toujours 8, seul sa valeur est passée en paramètre
	//on stock maitenant le résultat de incr(a) dans a
	a = incr(a);
	//a vaut maintenant a+1 donc 9
	//on souhaite maintenant passer par adresse
	incrByAdress(&a);//&a signifie qu'on passe l'adresse de l'entier a
	//la valeur de a devrait être maintenant égal à 10
	return 0;

	//TODO: utilisez ddd pour traquer l'éxecution du code, voir le Makefile
}
