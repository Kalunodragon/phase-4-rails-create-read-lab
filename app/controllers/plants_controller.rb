class PlantsController < ApplicationController
  # resorces :plants, only: [:index, :show, :create]

  def index
    plants = Plant.all
    render json: plants
  end

  def show
    plant = Plant.find_by(id: params[:id])
    if plant
      render json: plant
    end
  end

  def create
    plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
    render json: plant, status: :created
  end

end
