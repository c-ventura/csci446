class Player
  def play_turn(warrior)
    #Floor Four. There are larger sludges, as well as an archer. If I'm not moving, I'll have to make sure I'm not taking damage from the archer
	#|@ Sa S>|
	
	if warrior.feel.empty? 
		if warrior.health > 12 #need at least 12 health to kill a big sludge
			warrior.walk!
		else
			(@health_prev > warrior.health ? warrior.walk! : warrior.rest!)
			#A fancy way to do an if statement. If old health > new health 
			#(which would occur when healed last turn, but were attacked by an archer)
			#then start walking to kill em'!
			#otherwise, just keep healing.
		end
	else #Since I heal before going in, just attack if something's there.
			warrior.attack!
	end 
	@health_prev = warrior.health #set what your health was last turn.
  end
end
