module tcl
  use iso_c_binding

  implicit none

  include "constants.f90"

  interface
     function tcl_create_interp() &
          bind(c, name="Tcl_CreateInterp")
       use iso_c_binding, only: c_ptr
       type(c_ptr) :: tcl_create_interp
     end function tcl_create_interp

     subroutine tcl_delete_interp(interp) &
          bind(c, name="Tcl_DeleteInterp")
       use iso_c_binding, only: c_ptr
       type(c_ptr), value :: interp
     end subroutine tcl_delete_interp

     function tcl_get_std_channel(type) &
          bind(c, name="Tcl_GetStdChannel")
       use iso_c_binding, only: c_int, c_ptr
       integer(c_int), value :: type
       type(c_ptr) :: tcl_get_std_channel
     end function tcl_get_std_channel

     function tcl_get_var(interp, name, flags) &
          bind(c, name="Tcl_GetVar")
       use iso_c_binding, only: c_char, c_int, c_ptr
       type(c_ptr), value :: interp
       character(kind=c_char), intent(in) :: name (*)
       integer(c_int), value :: flags
       type(c_ptr) :: tcl_get_var
     end function tcl_get_var

     function tcl_eval(interp, script) &
          bind(c, name="Tcl_Eval")
       use iso_c_binding, only: c_char, c_int, c_ptr
       type(c_ptr), value :: interp
       character(kind=c_char), intent(in) :: script (*)
       integer(c_int) :: tcl_eval
     end function tcl_eval
  end interface
end module tcl
