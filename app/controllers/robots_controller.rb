class RobotsController < ApplicationController

  def index
    @robots = Robot.all
    render json: @robots
  end

  def show
    @robot = Robot.find(params[:id])
    render json: @robot
  end

  def create
    @robot = Robot.new(params.require(:robot).permit(:name, :photo))
    @robot.save
    render json: @robot
  end

  def update
    @robot = Robot.find(params[:id])
    @robot.update(params.require(:robot).permit(:name, :photo))
    render json: @robot
  end

  def destroy
    @robot = Robot.find(params[:id])
    @robot.destroy
    render json: {ok: true}
  end
end
