class Player
	def initialize
		@kill_count = 0
	end
	
	def play_turn(warrior)
    #Floor Seven. I have to turn around on the wall so I can move forwards(and do more damage). Then, business as usual.
	#|>a S @|
	if(@kill_count >=2) #with this statement, I'll leave the level after killing everything instead of just healing back pointlessly.
		warrior.walk!
		return
	end
		@felt_space = warrior.feel
		if @felt_space.wall?
			warrior.pivot!
		
	
	
		elsif @felt_space.empty? 
			if @just_attacked
				@just_attacked = false
				@kill_count += 1
			end
			
			if warrior.health > 11 #need at least 12 health to run in and kill the archer
				warrior.walk!
			else
				(@health_prev > warrior.health ? (warrior.health > 7 ? warrior.walk! : warrior.walk!(:backward)) : warrior.rest!)
				#I should turn this to normal syntax, it's getting ugly. It basically tells the warrior to run away if he has less than seven health. Otherwise, he'll charge in(or rest).
			end
		elsif @felt_space.captive? 
			warrior.rescue!
				#There aren't any captives, but I'd rather leave the code here for later levels
		else
			warrior.attack!
			@just_attacked = true
		end 
		@health_prev = warrior.health #set what your health was last turn.
		  

	end
	


end
