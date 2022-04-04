/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   main.c                                             :+:    :+:            */
/*                                                     +:+                    */
/*   By: dritsema <dritsema@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/04/04 18:07:00 by dritsema      #+#    #+#                 */
/*   Updated: 2022/04/04 19:01:57 by dritsema      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include "libtest.h"

int	main(void)
{
	int	a;
	int	*b; // * pointer

	a = testfunction(5);
	b = &a;
	write(0, b, sizeof(testfunction(5)));

	// write(0, "tsxt", sizeof("text"));
	return (0);

}
