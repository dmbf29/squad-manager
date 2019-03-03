class PlayersController < ApplicationController

  def update
    @player = Player.find(params[:id])
    @player.update(squad_place_params)
    respond_to do |format|
      # format.html { render 'restaurants/show' }
      format.js
    end
  end

  private

  def squad_place_params
    params.require(:player).permit(:squad_place)
  end
end
