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
end
