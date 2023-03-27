class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :alternate_names
      t.string :species
      t.string :gender
      t.string :house
      t.string :dateOfBirth
      t.integer :yearOfBirth
      t.string :blood_status
      t.string :ancestry
      t.string :eyeColour
      t.string :hairColour
      t.jsonb :wand
      t.string :patronus
      t.boolean :hogwartsStudent
      t.boolean :hogwartsStaff
      t.string :actor
      t.boolean :alive
      t.string :image

      t.timestamps
    end
  end
end
