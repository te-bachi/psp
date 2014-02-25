real function calc_num_pi(rounds)
    
    implicit none
    
!-- Input/Output --------------------------------------------------------------
    integer, intent(in) :: rounds
    
!-- Locals---------------------------------------------------------------------
    integer :: idx
    real    :: x
    real    :: y
    real    :: radius
    integer :: inner
    integer :: outer
    
!-- Calculate -----------------------------------------------------------------
    
    do idx = 0, rounds
        x = RAND(0)
        y = RAND(0)
        radius = x**2 * y**2
        
    end do
    
    calc_num_pi = 2.54
    
end function calc_num_pi
