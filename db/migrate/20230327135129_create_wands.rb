class CreateWands < ActiveRecord::Migration[7.0]
  def change
    create_table :wands do |t|
      t.string :wood
      t.string :core
      t.float :length
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
