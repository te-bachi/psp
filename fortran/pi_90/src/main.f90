program main
    implicit none
    
! -----------------------------------------------Declare
    integer             :: rounds
    double precision    :: pi
    double precision    :: calc_num_pi
    
! -----------------------------------------------Input
    print*, "Enter the number of rounds..."
    read*, rounds
    
! -----------------------------------------------Compute
    pi = calc_num_pi(rounds)
    
! -----------------------------------------------Output
    print*, "PI = "
    print*, pi
end program main
