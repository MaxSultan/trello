class ListsController < ApplicationController
  before_action :set_board
  before_action :set_list, only: [:show]
 
  def index
    @lists = @board.lists
  end

  def show
  end

  private
  def set_board
    @board = Board.find(params[:board_id])
  end
  
  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end

end
