class AddSizeToCandies < ActiveRecord::Migration
  def change
    add_column :candies, :size, :integer
  end
end
