PROCEDURE scanf
clear
        name_ = space(10)
        @ 5,5 say "Введите имя: " get name_
        read
        use forum_users
        go top
        flag = 0
        scan  for  Real_name = name_ or User_name = name_
                 @ 7,1 say  User_name
                 @ 8,1 say  Real_name
		 @ 9,1 say  Birth_date
                @ 10,1 say  Posts
		@ 11,1 say  Reputation
                @ 12,1 say  Reg_date
                 wait
                 flag = 1
        endscan
        if  flag = 0
            @ 15,5 say "Такого прізвища Немає"
       endif
       use
ENDPROC

PROCEDURE forf
clear
        name_ = space(10)
        @ 5,5 say "Введите имя: " get name_
        read
        use forum_users
        go top
        flag = 0
        FOR i = 1 TO RECCOUNT() 
        GO i
             IF Real_name = name_ or User_name = name_
            	@ 7,1 say  User_name
                @ 8,1 say  Real_name
		@ 9,1 say  Birth_date
               @ 10,1 say  Posts
	       @ 11,1 say  Reputation
               @ 12,1 say  Reg_date
                flag =  1
                wait
             endif
        ENDFOR
        IF flag = 0
                clear
        	@ 10,5 say "Такого прізвища Немає"
        endif
ENDPROC

PROCEDURE whilef
clear
        name_ = space(10)
        @ 5,5 say "Введите имя: " get name_
        read
        use forum_users
        go top
	flag = 0
	do while .not.eof()
              	If  Real_name = name_ or User_name = name_
            		@ 7,1 say  User_name
                	@ 8,1 say  Real_name
			@ 9,1 say  Birth_date
               	       @ 10,1 say  Posts
	               @ 11,1 say  Reputation
                       @ 12,1 say  Reg_date
                 	wait
			flag = 1
                endif
		skip
        enddo
       	IF flag = 0
                clear
        	@ 10,5 say "Такого прізвища Немає"
        endif
ENDPROC