class CreateKids < ActiveRecord::Migration
  def change
    # create table here
    create_table :kids do |t|
        t.string :name
    end
  end
end