#include <stdio.h>
#include <stdlib.h>

int main (){
	int numb;
	float x1, x2;

	scanf ("%d", &numb);

	x1 = (numb + 1)/2;

	while (x2 != x1)
	{
		x2 = (x1 + (numb/x1))/2;
		x1 = (x2 + (numb/x2))/2;
	}

	printf("%1.3f\n", x1);
	return 0;


}