module tcl
  use iso_c_binding

  implicit none

  include "constants.f90"

  interface
     function tcl_create_interp() result(interp) &
          bind(c, name="Tcl_CreateInterp")
       use iso_c_binding, only: c_ptr
       type(c_ptr) :: interp
     end function tcl_create_interp

     subroutine tcl_delete_interp(interp) &
          bind(c, name="Tcl_DeleteInterp")
       use iso_c_binding, only: c_ptr
       type(c_ptr), value :: interp
     end subroutine tcl_delete_interp
  end interface
end module tcl
