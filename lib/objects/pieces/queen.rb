# frozen_string_literal: true

# Class Queen
class Queen
  attr_reader :symbol, :owner, :color

  def initialize(owner)
    @symbol = 'Q'
    @owner = owner
    @color = owner.zero? ? :red : :blue
  end
end
