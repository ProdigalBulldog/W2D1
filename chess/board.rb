require 'byebug'
require_relative 'null_piece'

class Board
  # STARTING_BOARD = {
  #   [0, 0] => "rook", [0, 1] => "night", [0, 2] => "bishop", [0, 3] => "queen", [0, 4] => "king", [0, 5] => "bishop", [0, 6] => "night", [0, 7] => "rook",
  #   [1, 0] => "pawn", [1, 1] => "pawn", [1, 2] => "pawn", [1, 3] => "pawn", [1, 4] => "pawn", [1, 5] => "pawn", [1, 6] => "pawn", [1, 7] => "pawn",
  #   [6, 0] => "pawn", [6, 1] => "pawn", [6, 2] => "pawn", [6, 3] => "pawn", [6, 4] => "pawn", [6, 5] => "pawn", [6, 6] => "pawn", [6, 7] => "pawn",
  #   [7, 0] => "rook", [7, 1] => "night", [7, 2] => "bishop", [7, 3] => "queen", [7, 4] => "king", [7, 5] => "bishop", [7, 6] => "night", [7, 7] => "rook"
  # }
  
  attr_reader :grid
  

  
  def initialize
    # debugger
    @grid = Array.new(8) {Array.new(8){NullPiece.instance}}
    # STARTING_BOARD.each do |pos, piece|
    #   color_arg = :black if pos[0] <= 1
    #   color_arg = :light_white if pos[0] >= 6
    #   self[pos] = Piece.new(piece, color_arg)
    # end
    nil
  end
  
  
  
  def move_piece(start_pos, end_pos)
    x, y = start_pos
    raise ArgumentError if @grid[x][y].nil?
    piece = @grid[x][y]
    @grid[x][y] = nil
  
    a, b = end_pos
    acceptable_pos = (0...8)
    raise ArgumentError unless acceptable_pos.include?(a) && acceptable_pos.include?(b)
    @grid[a][b] = piece
  
  end
  
  def [](pos)
    x, y = pos
    @grid[x][y]
  end
  
  def []=(pos, value)
    x, y = pos
    @grid[x][y] = value
  end
  
end