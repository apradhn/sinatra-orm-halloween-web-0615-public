class RemoveNameFromHouses < ActiveRecord::Migration
  def change
    remove_column :houses, :name, :string
  end
end
