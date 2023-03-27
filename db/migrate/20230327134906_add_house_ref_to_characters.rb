class AddHouseRefToCharacters < ActiveRecord::Migration[7.0]
  def change
    add_reference :characters, :house, null: false, foreign_key: true
  end
end
