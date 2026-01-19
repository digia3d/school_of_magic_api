class Api::V1::CharactersController < ApplicationController
  before_action :set_character, only: %i[show]

  # GET /api/v1/characters
  def index
    characters = Character.includes(:wand, :house)

    render json: characters.map { |char|
      char.as_json(
        only: %i[id name alternate_names species gender dateOfBirth yearOfBirth ancestry eyeColour
                 hairColour patronus hogwartsStudent hogwartsStaff actor alive],
        include: {
          wand: { only: %i[wood core length] },
          house: { only: [:name] }
        }
      ).merge(image_url: char.image_url)
    }
  end

  # GET /api/v1/characters/:id
  def show
    render json: @character.as_json(
      only: %i[id name alternate_names species gender dateOfBirth yearOfBirth ancestry eyeColour
               hairColour patronus hogwartsStudent hogwartsStaff actor alive],
      include: {
        wand: { only: %i[wood core length] },
        house: { only: [:name] }
      }
    ).merge(image_url: @character.image_url)
  end

  # POST /api/v1/characters
  def create
    character = Character.find_or_create_by_with_wand(character_params)

    if character.save
      render json: character.as_json(
        include: { house: { only: [:name] }, wand: { only: %i[wood core length] } }
      )
    else
      render json: { errors: character.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # GET /api/v1/houses/:house_name/characters
  def by_house
    house = House.find_by(id: params[:house_id])

    return render json: { error: 'House not found' }, status: :not_found if house.nil?

    characters = Character.where(house_id: house.id)

    render json: characters.map { |char|
      char.as_json(
        only: %i[
          id name species gender dateOfBirth yearOfBirth ancestry
          eyeColour hairColour patronus actor alive
        ],
        include: {
          wand: { only: %i[wood core length] },
          house: { only: [:name] }
        }
      ).merge(image_url: char.image_url)
    }
  end

  private

  def set_character
    @character = Character.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Character not found' }, status: :not_found
  end

  def character_params
    params.require(:character).permit(
      :name, :species, :gender, :dateOfBirth, :yearOfBirth, :blood_status, :ancestry,
      :eyeColour, :hairColour, :patronus, :hogwartsStudent, :hogwartsStaff, :actor,
      :alive, :image, :house_id, wand_attributes: %i[wood core length]
    )
  end
end
