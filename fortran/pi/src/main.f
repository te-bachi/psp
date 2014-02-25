program main
    implicit none
    
! -----------------------------------------------Declare
    integer :: rounds2
    real    :: pi
    real    :: calc_num_pi
    
! -----------------------------------------------Input
    print*, "Enter the temperature in Fahrenheit ..."
    read*, rounds2
    
! -----------------------------------------------Compute
    pi = calc_num_pi( rounds2 )
    
! -----------------------------------------------Output
    print*, "PI = "
    print*, pi
end program main
