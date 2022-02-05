class CreateHunts < ActiveRecord::Migration[7.0]
  def change
    create_table :hunts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :exhibit, foreign_key: true
      t.boolean :is_extra_egg

      t.timestamps
    end
  end
end
