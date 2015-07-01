class AddFeelingToKids < ActiveRecord::Migration
  def change
    add_column :kids, :feeling, :string
  end
end
