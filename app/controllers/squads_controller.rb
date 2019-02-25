class SquadsController < ApplicationController
  def index
    @squads = current_user.squads
  end

  def show
    @squad = Squad.find(params[:id])
  end

  def new
    @squad = Squad.new
  end

  def create
    @squad = Squad.new(squad_params)
    @squad.user = current_user
    if @squad.save
      redirect_to squad_path(@squad)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def squad_params
    params.require(:squad).permit(:name, :formation_id)
  end
end
