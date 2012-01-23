class Player
  def play_turn(warrior)
    #I think all I can do is walk, for now. The staircase is 6 spaces away(without overlapping)
	warrior.walk!
	#testing to see if I keep walking, of if walking only moves one space.
	#I can't really tell, since I don't know if play_turn is looping, or if I just keep walking.
	#I'm sure I'll find out for sure on the second floor.
  end
end
