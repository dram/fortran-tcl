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

     function tcl_get_std_channel(type) result(channel) &
          bind(c, name="Tcl_GetStdChannel")
       use iso_c_binding, only: c_int, c_ptr
       integer(c_int), value :: type
       type(c_ptr) :: channel
     end function tcl_get_std_channel

     function tcl_get_var(interp, name, flags) result(res) &
          bind(c, name="Tcl_GetVar")
       use iso_c_binding, only: c_char, c_int, c_ptr
       type(c_ptr), value :: interp
       character(kind=c_char), intent(in) :: name (*)
       integer(c_int), value :: flags
       type(c_ptr) :: res
     end function tcl_get_var

     function tcl_eval(interp, script) result(rc) &
          bind(c, name="Tcl_Eval")
       use iso_c_binding, only: c_char, c_int, c_ptr
       type(c_ptr), value :: interp
       character(kind=c_char), intent(in) :: script (*)
       integer(c_int) :: rc
     end function tcl_eval

  end interface
end module tcl
