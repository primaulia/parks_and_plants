class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
    @plant_tag.plant = @plant
  end

  def create
    plant_tag = PlantTag.new()
    plant_tag.plant = Plant.find(params[:plant_id])
    plant_tag.tag = Tag.find(params[:plant_tag][:tag_id])

    plant_tag.save
    redirect_to garden_path(plant_tag.plant.garden)
  end
end
