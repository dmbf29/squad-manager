class PlayersController < ApplicationController

  def new
    @squad_place = SquadPlace.find_by(params[:squad_place])
    @player = Player.new
  end

  def create
    @squad_place = SquadPlace.find_by(params[:squad_place])
    @player = Player.new(player_params)
    @player.squad_place = @squad_place
    if @player.save
      redirect_to squad_path(@player.squad_place.squad_row.squad)
    else
      render :new
    end
  end

  def update
    @player = Player.find(params[:id])
    @player.update(player_params)
    respond_to do |format|
      format.html { redirect_to squad_path(@player.squad_place.squad_row.squad) }
      format.js
    end
  end

  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :nation, :age, :potential_low, :potential_high, :rating, :badge, :status, :squad_place_id)
  end
end
