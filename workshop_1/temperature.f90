program temperature

implicit none
real :: DegC, DegF

write(*,*)"Please type in the temp in Celsius"
read(*,*)DegC

DegF = (9./5.)*DegC + 32.

write(*,*)"This equals to", DegF, "Fahrenheit"

end program temperature

