class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def edit
  end

  def new
  end

  def show
    @actors = Actor.find params[:id]
  
  end
end
