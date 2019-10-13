class PlayersController < ApplicationController

  def new
    @squad = Squad.find(params[:squad_id])
    @player = Player.new
  end

  def create
    @squad = Squad.find(params[:squad_id])
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

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to squad_path(@player.squad)
  end

  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :nation, :age, :potential_low, :potential_high, :rating, :badge, :avatar_id, :status, :squad_place_id, position_list: [])
  end
end
