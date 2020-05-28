class TasksController < ApplicationController
  before_action :set_board
  before_action :set_list, only: [:update, :edit, :destroy]

  def index
    @tasks = @list.tasks
  end

  def show
  end 

  def new 
    @task = @list.tasks.new
  end 

  def create
    @task = @list.tasks.new(task_params)
    if @task.save
      redirect_to board_list_path(@list.board_id, @list)
    else 
      render :new
    end
  end 

  def edit
  end 

  def update
    if @task.update(task_params)
      redirect_to board_list_path(@list.board_id, @list)
    else
      render :edit
    end
  end 

  def destroy
    @task.destroy
    redirect_to board_list_path(@list.board_id, @list.id)
  end 

  private
  def set_board
    @board = Board.find(params[:board_id])
  end 

  def set_list
    @list = List.find(params[:id])
  end 

  def task_params
    params.require(:task).permit(:name)
  end

  
end
