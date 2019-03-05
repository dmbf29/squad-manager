class SquadRowsController < ApplicationController

  def new
    @squad = Squad.find(params[:squad_id])
    @squad_row = SquadRow.new
  end

  def create
    @squad = Squad.find(params[:squad_id])
    @squad_row = SquadRow.new(player_params)
    @squad_row.squad = @squad
    if @squad_row.save
      redirect_to squad_path(@squad)
    else
      render :new
    end
  end

  def edit
    @squad = Squad.find(params[:squad_id])
    @squad_row = SquadRow.find(params[:id])
  end

  def update
    @squad = Squad.find(params[:squad_id])
    @squad_row = SquadRow.find(params[:id])
    if @squad_row.update(player_params)
      redirect_to squad_path(@squad)
    else
      render :edit
    end
  end

  private

  def player_params
    params.require(:squad_row).permit(:number)
  end
end
