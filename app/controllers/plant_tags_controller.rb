class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
    @plant_tag.plant = @plant
  end

  def create
    plant = Plant.find(params[:plant_id])

    params[:plant_tag][:tag_id].each do |tag_id|
      plant_tag = PlantTag.new
      plant_tag.plant = plant
      plant_tag.tag = Tag.find(tag_id)

      plant_tag.save
    end
    
    redirect_to garden_path(plant.garden)
  end
end
