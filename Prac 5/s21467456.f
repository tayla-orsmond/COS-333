      ! --- void readData(arr)
      subroutine readData(arr)
        integer, intent(out) :: arr(5);

        write (*,*) "Enter 5 integers: ";
        read (*, *) arr;

        end subroutine readData;
      ! --- int mode(arr)
      function mode(arr) result(modeNumber)
        integer, intent(in) :: arr(5);
        integer :: i, j, count, maxCount, modeNumber;
        
        maxCount = 0;
        do i = 1, 5
            count = 0;
            do j = 1, 5
                if (arr(j) == arr(i)) then
                    count = count + 1;
                end if
            end do
            if (count > maxCount) then
                maxCount = count;
                modeNumber = arr(i);
            end if
        end do
        end function mode; 

      ! --- main program
      program main
        implicit none
        integer:: arr(5);
        integer:: m, mode;

        call readData(arr);
        m = mode(arr);

        write (*,*) "You entered: ", arr;
        write (*,*) "The mode is: ", m;

        end
