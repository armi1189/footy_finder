class GamesController < ApplicationController
  def index
    @game = Game.all.order(date_time: :asc)
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if current_user
      @game.save
      flash[:notice] = 'Game created successfully'
    else 
      flash[:notice] = 'Log in to create a game'
    end
    redirect_to '/games'
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.user == current_user
      @game.update(game_params)
      flash[:notice] = 'Game edited successfully'
    else
      flash[:notice] = 'Cannot edit game'
    end
    redirect_to '/games'
  end

  def destroy
    @game = Game.find(params[:id])
    if @game.user = current_user
      @game.destroy
      flash[:notice] = 'Game deleted successfully'
    else
      flash[:notice] = 'Cannot delete game'
    end
    redirect_to '/games'
  end

  private
  def game_params
    params.require(:game).permit(:name, :location, :date_time,
                                :address, :latitude, :longitude)
  end
end
