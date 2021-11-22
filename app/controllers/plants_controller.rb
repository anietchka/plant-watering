class PlantsController < ApplicationController
  def index
    @plants = Plant.all
    @user = current_user
  end

  def show
    @user = current_user
    @plant = Plant.find(params[:id])
  end

  def new
    @user = current_user
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    @plant.save!
    redirect_to plant_path(@plant)
  end

  def destroy
    @user = current_user
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to plants_path
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :rythm, :photo)
  end
end
