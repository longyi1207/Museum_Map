class CreateExhibits < ActiveRecord::Migration[7.0]
  def change
    create_table :exhibits do |t|
      t.string :name
      t.string :intro
      t.boolean :treasure
      t.integer :horizontal
      t.integer :vertical
      t.references :map, foreign_key: true

      t.timestamps
    end
  end
end
