# frozen_string_literal: true

# Class King
class King
  attr_reader :symbol, :owner, :color

  def initialize(owner)
    @symbol = 'K'
    @owner = owner
    @color = owner.zero? ? :red : :blue
  end
end
