class AddColumnsToExhibits < ActiveRecord::Migration[7.0]
  def change
    add_column :exhibits, :age, :string
    add_column :exhibits, :born, :string
    add_column :exhibits, :parent, :string
    add_column :exhibits, :honor, :string
  end
end
