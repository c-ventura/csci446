class Player
  def play_turn(warrior)
    #Floor Five. I can release captives using .rescue!. Whenever a space isn't empty, instead of just attacking, I'll see if it's a captive I can rescue instead.
	#|@ CaaSC|
	
	if warrior.feel.empty? 
		if warrior.health > 12 #need at least 12 health to kill a big sludge
			warrior.walk!
		else
			(@health_prev > warrior.health ? warrior.walk! : warrior.rest!)

		end
	else #Something's in front of me
		(warrior.feel.captive? ? warrior.rescue! : warrior.attack!)
			#if it's a captive, rescue them. Otherwise, attack!
	end 
	@health_prev = warrior.health #set what your health was last turn.
  end
end
