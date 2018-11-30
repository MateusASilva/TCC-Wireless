#include <stdio.h>
#include <time.h>


int main( int argc, char * argv[] )
{

	char url[]="arquivo.txt";
	float nota,
	      media=0.0;
	FILE *arq;
	
	arq = fopen(url, "a");
	if(arq == NULL)
			printf("Erro, nao foi possivel abrir o arquivo\n");
	else{

		time_t agora;
		char datahora[100];

		/* Recupera a quantidade de segundos desde 01/01/1970 */
		agora = time(NULL);

		/* Formata a data e a hora da forma desejada */
		strftime( datahora, sizeof(datahora), "%d.%m.%Y - %H:%M:%S", localtime( &agora ) );

		printf( "Data/Hora: %s\n", datahora );
		fprintf(arq,"%s;%f\n",datahora,media);
	
		return 0;
	}
}
