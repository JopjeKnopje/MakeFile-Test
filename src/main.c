#include "../include/libtest.h"
#include "unistd.h"

int	main(void)
{
	int	a;
	int	*b; // * pointer

	a = testfunction(5);
	b = &a;
	write(0, b, sizeof(testfunction(5)));

	write(0, "tsxt", sizeof("text"));
	return (0);

}
