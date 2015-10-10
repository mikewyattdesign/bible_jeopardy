class BoardsController < ApplicationController
  def index
  end

  def edit
  end

  def show
    unless Board.where(id: params[:id]).empty?
        @board = Board.find(params[:id]) 
    else
        redirect_to :root, notice: "Board not found"
    end
  end

  def new
  end

  def random_practice
    redirect_to Board.all.shuffle.first
  end

  private

  def boards_params
    params.require(:board).permit(:name, :difficulty)
  end
end
