class AddPiecesToCandies < ActiveRecord::Migration
  def change
    add_column :candies, :pieces, :integer
  end
end
