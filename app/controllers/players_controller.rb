class PlayersController < ApplicationController

  def update
    @player = Player.find(params[:id])
    @player.update(squad_place_params)
    respond_to do |format|
      format.html { redirect_to squad_path(@player.squad_place.squad_row.squad) }
      format.js
    end
  end

  private

  def squad_place_params
    params.require(:player).permit(:squad_place_id)
  end
end
