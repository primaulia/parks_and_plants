class PlantsController < ApplicationController
  def create
    new_plant = Plant.new(plant_params)
    garden = Garden.find(params[:garden_id])
    new_plant.garden = garden
    
    if new_plant.save!
      redirect_to garden_path(garden)
    else
      render 'garden/show'
    end
  end

  def destroy
    plant = Plant.find(params[:id])
    plant.destroy

    redirect_to garden_path(plant.garden)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
