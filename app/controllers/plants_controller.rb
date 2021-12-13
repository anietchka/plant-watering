class PlantsController < ApplicationController
  before_action :find_plant, only: [:show, :destroy, :watered]
  def index
    @plants = Plant.where(user: current_user)
  end

  def show
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    @plant.save!
    redirect_to plant_path(@plant)
  end

  def destroy
    @plant.destroy
    redirect_to plants_path
  end

  def watered
    @plant.update!(next_watered_at: @plant.rythm.days.from_now)
    redirect_to plant_path(@plant)
  end

  def plants_to_water
    @plants = Plant.where(user: current_user, alive: true).where('next_watered_at <= ?', Date.today)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :rythm, :photo)
  end

  def find_plant
    @plant = Plant.find(params[:id])
  end
end
