class BoardsController < ApplicationController
  def index
    @boards = Board.all_boards
  end

  def show 
    @board = Board.find(params[:id])
  end 
end
