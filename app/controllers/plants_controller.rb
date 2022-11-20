class PlantsController < ApplicationController

    wrap_parameters format: []

    #GET /plants
    def index
        render json: Plant.all
    end

    #GET /plants/:id

    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    #CREATE new plant
    def create
        new = Plant.create(plant_params)
        render json: new, status: :created
    end


    private

    def plant_params
        params.permit(:name, :image, :price)
    end

end
