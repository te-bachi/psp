double precision function calc_num_pi(rounds)
    
    implicit none
    
!-- Input/Output --------------------------------------------------------------
    integer, intent(in) :: rounds
    
!-- Locals---------------------------------------------------------------------
    integer             :: idx
    double precision    :: x
    double precision    :: y
    double precision    :: radius
    integer             :: inner
    integer             :: outer
    
!-- Calculate -----------------------------------------------------------------
    
    inner = 0
    outer = 0
    
    do idx = 1, rounds
        x = RAND(0)
        y = RAND(0)
        radius = (x**2) + (y**2)
    
!        print*, x, "/", y, " radius = ", radius
        
        if (radius <= 1.0) then
            inner = inner + 1
        else
            outer = outer + 1
        end if
    end do
    
    print*, "inner = ", inner, " outer = ", outer 
    
    calc_num_pi = 4 * DBLE(inner) / DBLE(inner + outer)
    
end function calc_num_pi
