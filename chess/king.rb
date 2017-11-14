require_relative 'piece'
require_relative 'stepping_pieces'

class King < Piece
  include SteppingPieces
  
  def move_diffs
    MOVE_DIFFS
  end
  
  MOVE_DIFFS = [
    [-1, -1],
    [-1, 0],
    [-1, 1],
    [0, -1],
    [0, 1],
    [1, -1],
    [1, 0],
    [1, 1]
  ]
  
  def to_s
    if @color == :light_white
      Piece.pad_symbol("\u2654")
    else
      Piece.pad_symbol("\u265A")
    end
  end
  
  
  
end