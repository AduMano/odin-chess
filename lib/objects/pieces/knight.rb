# frozen_string_literal: true

# Class Knight
class Knight
  attr_reader :symbol, :owner, :color

  def initialize(owner)
    @symbol = 'H'
    @owner = owner
    @color = owner.zero? ? :red : :blue
  end
end
