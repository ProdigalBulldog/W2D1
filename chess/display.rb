require 'colorize'
require_relative 'board'
require_relative 'king'
require_relative 'cursor'


class Display
  
  attr_reader :board
  
  def initialize
    @board = Board.new
    
    @board[[4, 4]] = King.new(:black, @board)
    @cursor = Cursor.new([0, 0], @board)
  end
  
  def render_board
    @board.grid.each_with_index do |row, i|
      row.each_with_index do |piece, j|    
        board_space = piece.to_s
        if @cursor.cursor_pos == [i,j]
          background_color = @cursor.cursor_toggle ? :light_red : :red
        elsif i.even? == j.even?
          background_color = :white
        else
          background_color = :light_black
        end
        print board_space.colorize(:color => piece.color, :background => background_color)
      end
      print "\n"
    end
    print "\n"
    nil
  end
  
  def play
    input = nil
    while input.nil?
      system('clear')
      render_board
      input = @cursor.get_input
    end
  end

  
end