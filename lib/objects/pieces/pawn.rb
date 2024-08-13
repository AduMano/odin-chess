# frozen_string_literal: true

# Class Pawn
class Pawn
  attr_reader :symbol, :owner, :color

  def initialize(owner)
    @symbol = 'P'
    @owner = owner
    @color = owner.zero? ? :red : :blue
  end
end
