class Api::V1::CharactersController < ApplicationController
  before_action :set_character, only: [:show]

  # GET /api/v1/characters
  def index
    characters = Character.all
    render json: characters_as_json(characters)
  end

  # GET /api/v1/characters/:id
  def show
    render json: character_as_json(@character)
  end

  # POST /api/v1/characters
  def create
    character = Character.find_or_create_by_with_wand(character_params)

    if character.save
      render json: character_as_json(character)
    else
      render json: { errors: character.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # GET /api/v1/houses/:house_name/characters
  def by_house
    house_name = params[:house_name] # ovo je važno
    house = House.find_by(name: house_name)

    if house.nil?
      render json: { error: 'House not found' }, status: :not_found
      return
    end

    characters = Character.where(house: house)
    render json: characters_as_json(characters)
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(
      :name, :species, :gender, :dateOfBirth, :yearOfBirth, :blood_status, :ancestry,
      :eyeColour, :hairColour, :patronus, :hogwartsStudent, :hogwartsStaff, :actor,
      :alive, :image, :house_id, wand_attributes: %i[wood core length]
    )
  end

  # helper za JSON
  def characters_as_json(characters)
    characters.map { |char| character_as_json(char) }
  end

  def character_as_json(char)
    char.as_json(
      only: %i[id name alternate_names species gender dateOfBirth yearOfBirth ancestry eyeColour
               hairColour patronus hogwartsStudent hogwartsStaff actor alive],
      include: {
        wand: { only: %i[wood core length] },
        house: { only: [:name] }
      }
    ).merge(image_url: char.image_url)
  end
end
