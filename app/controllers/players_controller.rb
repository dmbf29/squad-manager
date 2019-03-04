class PlayersController < ApplicationController

  def new
    @squad = Squad.find_by(params[:squad])
    @player = Player.new
  end

  def create
    @squad = Squad.find_by(params[:squad])
    @player = Player.new(player_params)
    if @player.save
      redirect_to squad_path(@squad)
    else
      render :new
    end
  end

  def edit
    @player = Player.find(params[:id])
    @squad = @player.squad_place.squad_row.squad
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
