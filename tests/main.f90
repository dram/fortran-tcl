program main
  use iso_c_binding

  implicit none

  block
    use tcl

    type(c_ptr) :: interp

    interp = tcl_create_interp()
    call tcl_delete_interp(interp)
  end block
end program main
