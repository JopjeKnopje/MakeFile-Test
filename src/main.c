#include "unistd.h"

int	main(void)
{
	int a = testfunction(5);
	int *b = &a;

	write(0, b, sizeof(testfunction(5)));
	return (0);
}
