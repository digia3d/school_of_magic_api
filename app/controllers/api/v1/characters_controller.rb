class Api::V1::CharactersController < ApplicationController
  before_action :set_character, only: [:show]

  def index
    characters = if params[:house_id].to_i.zero?
                   Character.all
                 else
                   Character.where(house_id: params[:house_id])
                 end

    render json: characters.as_json(
      only: %i[id name alternate_names species gender house dateOfBirth yearOfBirth ancestry eyeColour
               hairColour patronus hogwartsStudent hogwartsStaff actor alive image],
      include: { wand: { only: %i[wood core length] },
                 house: { only: [:name] } }
    )
  end

  def show
    character = Character.find(params[:id])
    render json: character.as_json(
      only: %i[id name alternate_names species gender house dateOfBirth yearOfBirth ancestry eyeColour
               hairColour patronus hogwartsStudent hogwartsStaff actor alive image],
      include: { wand: { only: %i[wood core length] },
                 house: { only: [:name] } }
    )
  end

  def create
    character = Character.find_or_create_by_with_wand(character_params)

    if character.save
      render json: character, include: { house: { only: [:name] }, wand: { only: %i[wood core length] } }
    else
      render json: { errors: character.errors.full_messages }, status: :unprocessable_entity
    end
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
end
