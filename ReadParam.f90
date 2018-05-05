program ReadParam
    !--------------------------------------------------------------------------
    ! Program, in Fortran 90, to read parameters in a file
    !   ignoring one or more data
    ! 
    ! Created by Sandro R. DeSouza <sandro.fisica@gmail.com>
    ! Date: 2018-05-05
    !--------------------------------------------------------------------------
    
    ! Declare variable and parameters
    implicit none
    integer :: u ! unit
    integer :: j ! iteract
    character(len=30) :: label ! To ignore label in param.ini
    real :: a, b, c, d
    real, dimension(3) :: vec1
	
    ! Read parameters 
    open(unit = u, file = "param.ini", status = "old")
    read(u,*) label, a
    read(u,*) label, b
    read(u,*) label, (vec1(j), j=1, 3)
    read(u,*) ! ignoring data
    read(u,*) label, c
    close(u) ! Close file param.dat

    ! Compute d
    d = a + b + c

    ! Write out results
    write(*,*) "d value : ", d
    write(*,*) "Vector 1: "
    write(*,*) (vec1(j), j=1,3)
end program ReadParam
