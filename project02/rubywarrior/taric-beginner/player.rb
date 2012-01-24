class Player

	def initialize #To go all the way to the left, I'm going to use a boolean to mark when I've hit the wall.
	@left_walled = false
	end	
	
	def play_turn(warrior)
    #Floor Six. I can now go backwards, to rescue that one captive against the wall.
	#|C @ S aa|
	
		if @left_walled
			if warrior.feel.empty? 
				if warrior.health > 18 #need at least 18 health to run in and kill the archers back to back
					warrior.walk!
				else
					(@health_prev > warrior.health ? (warrior.health > 7 ? warrior.walk! : warrior.walk!(:backward)) : warrior.rest!)
					#I should turn this to normal syntax, it's getting ugly. It basically tells the warrior to run away if he has less than seven health. Otherwise, he'll charge in(or rest).
				end
			else #Something's in front of me
				(warrior.feel.captive? ? warrior.rescue! : warrior.attack!)
					#if it's a captive, rescue them. Otherwise, attack!
			end 
			@health_prev = warrior.health #set what your health was last turn.
		  
		else
			if warrior.feel(:backward).captive?
				warrior.rescue!:backward
				@left_walled = true
			else #Something's behind of me
			warrior.walk!:backward
				#if it's a captive, rescue them. Then start going back right.
			end 
			@health_prev = warrior.health #set what your health was last turn.
		end
	end
	


end
