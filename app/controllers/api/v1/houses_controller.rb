class Api::V1::HousesController < ApplicationController
  before_action :set_house, only: [:show, :characters]

  # GET /api/v1/houses
  def index
    houses = House.all
    render json: houses.as_json(only: [:id, :name])
  end

  # GET /api/v1/houses/:id
  def show
    render json: @house.as_json(only: [:id, :name])
  end

  # GET /api/v1/houses/:id/characters
  def characters
    characters = @house.characters.includes(:wand)
    render json: characters.map { |char|
      char.as_json(
        only: %i[id name alternate_names species gender house dateOfBirth yearOfBirth ancestry eyeColour
                 hairColour patronus hogwartsStudent hogwartsStaff actor alive],
        include: { wand: { only: %i[wood core length] }, house: { only: [:name] } }
      ).merge(image_url: char.image) # ovde koristimo novu putanju slike
    }
  end

  private

  def set_house
    @house = House.find_by(id: params[:id])
    render json: { error: 'House not found' }, status: :not_found if @house.nil?
  end
end
