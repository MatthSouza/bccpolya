Descrição do problema:

Desenvolver um programa em C que calcule raiz quadrada de um numero real sem usar raiz quadrada diretamente.


Linguagem matemática:

Foi utilizado o método de Herão para a resolução do problema, o qual diz que dada uma raiz quadrada de um número n e assumindo valor1 como uma aproximação inicial, temos:

valor2 = (valor1 + (n / valor1)) / 2

Nesta formula o valor1 é um número qualquer e o valor2 guardará o valor1 após o calculo da formula. Realizamos a divisão por dois, pois no cálculo da raiz quadrada precisamos que um numero, neste caso valor1, multiplicado por ele mesmo resulte em "n", para garantir que sempre multiplicaremos um numero por ele mesmo para chegarmos na raiz.

A cada iteração desse algoritmo chegamos cada vez mais próximo da aproximação da raiz, segue o exemplo.

Queremos descobrir a raiz de 3, neste exemplo o valor1 será 1.0, então pela formula temos: 

ITERAÇÃO 1
valor2 = (1 + (3/1)) / 2
valor2 = 4 / 2
valor2 = 2

Fazendo mais uma iteração do algoritmo teremos:

ITERAÇÃO 2
valor2 = (2 + (3/2)) / 2
valor2 = 3,5 / 2
valor2 = 1,75

ITERAÇÃO 3
valor2 = (1,75 + (3 / 1,75)) / 2
valor2 = 3,464285714 / 2
valor2 = 1,732142857

Pelo exemplo percebemos que na iteração 1 valor2 guardou o novo valor de valor1 que é 2, utilizamos então o novo valor de valor1 na segunda iteração e no final teremos o novo valor de valor1 que será novamente guardado em valor2, assim acontece sucessivamente.


Português Estruturado:

algoritmo "raiz quadrada"

função mod(a : real, b : real) : real
Inicio
	resultado : real;
	resultado = a - b;

	se(resultado < 0)
		resultado = resultado * -1;
	fim-se

	retorne resultado;
Fim

função raizq(n : real)
Inicio
    precisao : real;
    precisao = 0.01;

    valor1 : real;
    valor 1 = 1.0;

    valor2 : real;
    valor2 = 1.0;

    faça
        valor2 = valor1;
        valor1 = (valor1 + (n/valor1))/2;     
    enquanto (mod(valor1, valor2) > precisão);

    retorne valor1;
Fim

Inicio
	real : n;
	leia(n);

	escreva("", raizq(n));
Fim


Fluxograma:



justificativa:

Utilizamos o nome de Polya por causa das quatro etapas essenciais para a resolução de problemas: 1ª etapa - Compreender o problema; 2ª etapa - Traçar um plano; 3ª etapa - Colocar o plano em prática; 4ª etapa - Comprovar os resultados.


