		!This is a rock paper scissors program (fortran version)
		
		program rps
		
		implicit none
		
		character(len=10)::name
		character(len=1)::rps_choice,comp_choice1,cont
		character::allowed(6)
		character(len=1),dimension(3)::comp_choice
		real::r,a
		integer::score,played
		
		print*,"**************************************************"
		print*,"Welcome! Let's play a game of Rock Paper Scissors."
		print*,"**************************************************"
		print*," "
		print*,"First of all, what is your name?"
		
		read*,name
		
		print*,"Hi!",name
		
		score=0
		played=0
		
		30 continue
		
		print*,"Choose your weapon!"
		print*,"[R]ock, [P]aper, or [S]cissors."
		
		read*,rps_choice
		
		if(rps_choice=='r') then
			rps_choice='R'
		
		else if(rps_choice=='s') then
			rps_choice='S'
		
		else if(rps_choice=='p') then
			rps_choice='P'
		
		else
			
		100 continue
		
		end if
			
		if (any((/'R','S','P'/)==rps_choice)) then
			go to 50
			
		else
			print*,"Please key in only R for rock, P for paper,&
					&S for scissors."
			go to 30
		end if
		
		50 continue
		print*,"Your choice ",rps_choice
		comp_choice = ['R','P','S']
		
		played=played+1
		
		call random_seed()
		call random_number(r)
		
		a=r*3.0+1.0
		
		comp_choice1=comp_choice(int(a))
		
		print*,"My choice: ",comp_choice1
		
		if(rps_choice == comp_choice(int(a))) then
			
			print*,"It's a tie!"
			score=score+0
			go to 10
		
		else
			
			if(rps_choice=='R' .and. comp_choice1=='P') then
				
				print*,"Paper beats rock, I win!"
				score=score+0
				go to 10
			
			else if(rps_choice=='P' .and. comp_choice1=='S') then
				print*,"Scissors beats paper, I win!"
				score=score+0
				go to 10
				
			else if(rps_choice=='S' .and. comp_choice1=='R') then
				print*,"Rock beats scissors, I win!"
				score=score+0
				go to 10
				
			else
				print*,"Congrats! You win!"
				score=score+1
			end if

		end if
		
		10 continue
		print*,"Your current score is",score,"/",played
		print*,"Do you want to continue? [Y]es"
		
		read*,cont
		
		if(cont=='Y' .or. cont=='y') then
			go to 30
			
		else
			print*,"Congrats! You have won",score,"times out of",played,"times!"
			print*,"Thank you for playing!"
		end if
		
		end program rps