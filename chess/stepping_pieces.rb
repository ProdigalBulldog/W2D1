
module SteppingPieces

  def moves(current_pos)
    self.move_diffs.map { |pos| [ pos[0] + current_pos[0], pos[1] + current_pos[1] ] }
  end
  
end