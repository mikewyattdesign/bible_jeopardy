class CluesController < ApplicationController
  def index
  end

  def edit
  end

  def show
  end

  def new
  end

  def import
    Clue.import(params[:file])
    redirect_to '/admin/import-clues', notice: "Clues Imported"
  end

  private

  def clues_params
    params.require(:clue).permit(:difficulty, :passage, :prompt, :response)
  end
end
