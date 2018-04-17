program main
  use iso_c_binding

  implicit none

  block
    use tcl

    character(:), allocatable, target :: code
    integer(c_int) rc
    type(c_ptr) interp

    interp = tcl_create_interp()

    code = "puts foo" // achar(0)
    rc = tcl_eval(interp, c_loc(code))

    call tcl_delete_interp(interp)
  end block
end program main
