class MissionsController < ApplicationController

  def index
    @missions = Mission.all
    render json: @missions
  end

  def show
    @mission = Mission.find(params[:id])
    render json: @mission
  end

  def create
    @mission = Mission.new(params.require(:mission).permit(:song, :dance, :location, :completed, :robot_id))
    if @mission.save
      render json: @mission
    else
      render json: {errors: @mission.errors}, status: 422
    end
  end

  def update
    @mission = Mission.find(params[:id])
    @mission.update params.require(:mission).permit(:song, :dance, :location, :completed, :robot_id)
    render json: @mission
  end

  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy
    render json: {ok: true}
  end
end
