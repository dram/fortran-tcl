#include <stdio.h>
#include <tcl.h>

#define INT_PARAMETER "integer(c_int), parameter :: "

int main(void)
{
	printf(INT_PARAMETER "tcl_error = %d\n", TCL_ERROR);
	printf(INT_PARAMETER "tcl_stderr = %d\n", TCL_STDERR);
	printf(INT_PARAMETER "tcl_stdin = %d\n", TCL_STDIN);
	printf(INT_PARAMETER "tcl_stdout = %d\n", TCL_STDOUT);

	return 0;
}
