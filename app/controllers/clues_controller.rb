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
end
