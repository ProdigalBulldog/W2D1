require 'byebug'

class Piece
  attr_reader :color
  
  def initialize(color, board)
    
# debugger

    raise "No such piece color!" unless color == :light_white || color == :black || color.nil?
    @color = color
    @my_board = board
  end
  
  def moves(current_pos)
    raise "No moves defined."
  end
  
  def self.pad_symbol(symbol)
    pad_char = " "
    pad_char + symbol + pad_char
  end
end