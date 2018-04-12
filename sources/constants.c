#include <stdio.h>
#include <tcl.h>

int main(void)
{
	printf("integer(c_int) :: tcl_error = %d\n", TCL_ERROR);

	return 0;
}
