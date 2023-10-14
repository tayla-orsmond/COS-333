           >> SOURCE FORMAT IS FIXED
           identification division.
              program-id.  s21467456.              
           data division.
                working-storage section.
      *         array of 5 integers (without occuring clause)
                01 arrlist.
                   05 arr occurs 5 times pic 9(2).
      *         mode
                01 m pic 9.
      *         counters
                01 c pic 9(2).
                01 c-max pic 9(2).
      *         indicies
                01 i pic 9(2).
                01 j pic 9(2).

           procedure division.
                initialize i j c c-max.
                perform begin.
                readData.
                perform varying i from 1 by 1 until i > 5
                    display "Enter number " i " : "
                    accept arr(i)
                end-perform.
                move 0 to i.
                modefunction.
                perform modefunctioncount.
                modefunctioncount.
                perform varying j from 1 by 1 until j > 5
                   if arr(i) = arr(j)
                       add 1 to c
                   end-if
                end-perform.
                if c > c-max
                        move c to c-max
                        move arr(i) to m
                end-if
                move 0 to j.
                add 1 to i.
                move 0 to c.
                if i < 5
                    perform modefunctioncount
                end-if.
                begin.
                perform readData.
                perform modefunction.
                display "Data is : " arr(1) ", " arr(2) ", " arr(3) ", " 
                arr(4) ", " arr(5).
                display "Mode is : " m.
                stop run.
                end program s21467456.
