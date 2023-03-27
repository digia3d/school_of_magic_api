class Character < ApplicationRecord
  belongs_to :house

  has_one :wand, class_name: 'Wand', dependent: :destroy
  accepts_nested_attributes_for :wand
end
