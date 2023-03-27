class Character < ApplicationRecord
  belongs_to :house

  has_one :wand, class_name: 'Wand', dependent: :destroy
  accepts_nested_attributes_for :wand

  def self.find_or_create_by_with_wand(attributes)
    wand_attributes = attributes.delete(:wand_attributes)
    character = find_or_create_by(attributes)
    character.create_wand(wand_attributes) if wand_attributes
    character
  end

  validates :name, presence: true

  private

  def character_params
    params.require(:character).permit(:name, :species, :gender, :dateOfBirth, :yearOfBirth, :blood_status, :ancestry,
                                      :eyeColour, :hairColour, :patronus, :hogwartsStudent, :hogwartsStaff, :actor,
                                      :alive, :image, :house_id, wand_attributes: %i[wood core length])
  end
end
