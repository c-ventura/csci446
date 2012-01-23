class Player
  def play_turn(warrior)
    #Floor Three. There are 4 sludges, which do 3 damage every attack, so I will have to heal at some point to stop from dying.
	
	if warrior.feel.empty? #if the next space is empty and you have enough health to kill a sludge, move into it. Not enough health -> rest. Enemy there -> attack it.
		if warrior.health > 6
			warrior.walk!
		else
			warrior.rest!
		end
	else #Since I heal before going in, just attack if something's there.
			warrior.attack!
	end 

  end
end
