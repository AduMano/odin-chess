# frozen_string_literal: true

# Require Things
require('colorize')
require_relative('objects/board')

B = Board.new
B.render_board
B.board_setup
B.render_board
