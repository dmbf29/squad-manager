class PlayersController < ApplicationController

  def update
    @player = Player.find(params[:id])
  end

  private

  def squad_place_params
    params.require(:player).permit(:squad_place)
  end
end
