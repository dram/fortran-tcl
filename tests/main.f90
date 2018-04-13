program main
  use iso_c_binding

  implicit none

  block
    use tcl

    type(c_ptr)    :: interp
    integer(c_int) :: rc

    interp = tcl_create_interp()

    rc = tcl_eval(interp, "puts foo" // achar(0))

    call tcl_delete_interp(interp)
  end block
end program main
