# frozen_string_literal: true

# Class Queen
class Bishop
  attr_reader :symbol, :owner, :color

  def initialize(owner)
    @symbol = 'B'
    @owner = owner
    @color = owner.zero? ? :red : :blue
  end
end
