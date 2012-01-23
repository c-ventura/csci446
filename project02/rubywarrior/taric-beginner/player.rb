class Player
  def play_turn(warrior)
    #Floor two. There's a bogey a few spaces away. I plan on feeling around, and if nothings there, to move forward. If there's a monster, I'll attack it!
	if warrior.feel.empty? #if the next space is empty, move into it. else, attack whatever's there!
		warrior.walk!
	else
		warrior.attack!
	end #this end statement is needed for 'if' statements. There's no parenthesis needed for the initial if statement though, which is nice.

  end
end
