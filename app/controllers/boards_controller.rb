class BoardsController < ApplicationController
  before_action :set_board, only: [:show]
  
  def index
    @boards = Board.all_boards
  end

  def show 
    @lists = @board.lists.all
    @list = List.find(params[:id])
    @tasks = @list.tasks
  end 
  
  private
    def set_board
      @board = Board.find(params[:id])
    end

    def board_params
      params.require(:board).permit(:name)
    end
end
