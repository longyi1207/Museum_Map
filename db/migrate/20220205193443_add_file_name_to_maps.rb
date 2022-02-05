class AddFileNameToMaps < ActiveRecord::Migration[7.0]
  def change
    add_column :maps, :file_name, :string
  end
end
