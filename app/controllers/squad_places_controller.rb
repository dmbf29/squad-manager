class SquadPlacesController < ApplicationController

  def edit
    @squad_place = SquadPlace.find(params[:id])
  end

  def update
    @squad_place = SquadPlace.find(params[:id])
    if @squad_place.update(squad_place_params)
      redirect_to squad_path(@squad_place.squad_row.squad)
    else
      render :edit
    end
  end

  def destroy
    @squad_place = SquadPlace.find(params[:id])
    if @squad_place.players.empty?
      @squad_place.destroy
      redirect_to squad_path(@squad_place.squad_row.squad)
    end
  end

  private

  def squad_place_params
    params.require(:squad_place).permit(:name, :squad_row_id)
  end
end
