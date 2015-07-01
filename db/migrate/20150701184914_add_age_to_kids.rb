class AddAgeToKids < ActiveRecord::Migration
  def change
    add_column :kids, :age, :integer
  end
end
