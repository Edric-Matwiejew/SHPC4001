program trajectory

    use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64

    implicit none

    real(dp), dimension(400) :: y
    real(dp), dimension(400) :: t

    real(dp) :: v
    real(dp) :: delta_t
    real(dp) :: t1
    real(dp) :: t2

    integer :: i

    t1 = 0
    t2 = 4
    v = 20

    delta_t = (t2 - t1)/400

    y(1) = 0

    do i = 2, 400
        t(i) = i*delta_t
        y(i) = y(i - 1) + v*delta_t
        v = v - 9.8*delta_t
    enddo

    open (unit = 10, file = 'trajectory.csv')

    write(10,*) 't', ' ', 'y'

    do i = 1, 400
        write(10,*) t(i), y(i)
    enddo

    close(10)

end program trajectory
