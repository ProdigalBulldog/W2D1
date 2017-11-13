require 'colorize'
require_relative 'board'
require_relative 'cursor'

class Display
  
  def initialize
    @board = Board.new
    @cursor = Cursor.new([0,0], @board)
  end
  
  def render_board
    @board.grid.each do |row|
      render_row = ""
      row.each do |piece|
        if piece.nil?
          render_row += " * "
        else
          render_row += " " + piece.type[0].upcase + " "
        end 
      end
      puts render_row
    end
    nil
  end
  
end