class Api::V1::HousesController < ApplicationController
  before_action :set_house, only: %i[show characters]

  def index
    @houses = House.includes(:characters).all
    render json: @houses.as_json(
      only: %i[id name],
      include: { characters: { only: %i[id name] } }
    )
  end

  def show
    render json: @house.as_json(
      only: %i[id name],
      include: { characters: { only: %i[id name] } }
    )
  end

  def characters
    @characters = Character.where(house_id: @house.id)
    render json: @characters.as_json(
      only: %i[id name alternate_names species gender house dateOfBirth yearOfBirth ancestry eyeColour
               hairColour patronus hogwartsStudent hogwartsStaff actor alive image],
      include: { wand: { only: %i[wood core length] },
                 house: { only: [:name] } }
    )
  end

  private

  def set_house
    id = Integer(params[:id])
    @house = House.find(id)
  rescue ArgumentError, ActiveRecord::RecordNotFound
    render json: { error: 'House not found' }, status: :not_found
  end
end
