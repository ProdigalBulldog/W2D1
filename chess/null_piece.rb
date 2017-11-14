require 'singleton'
require_relative 'piece'

class NullPiece < Piece
  include Singleton
  
  def initialize
    super(nil, nil)
  end
  
  def to_s
    Piece.pad_symbol(" ")
  end
  

end