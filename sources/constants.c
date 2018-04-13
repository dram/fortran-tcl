#include <stdio.h>
#include <tcl.h>

int main(void)
{
	printf("integer(c_int) :: tcl_error = %d\n", TCL_ERROR);
	printf("integer(c_int) :: tcl_stderr = %d\n", TCL_STDERR);
	printf("integer(c_int) :: tcl_stdin = %d\n", TCL_STDIN);
	printf("integer(c_int) :: tcl_stdout = %d\n", TCL_STDOUT);

	return 0;
}
