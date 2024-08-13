# frozen_string_literal: true

# Class Rook
class Rook
  attr_reader :symbol, :owner, :color

  def initialize(owner)
    @symbol = 'R'
    @owner = owner
    @color = owner.zero? ? :red : :blue
  end
end
