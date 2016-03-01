class AddNameAndStreetToUser < ActiveRecord::Migration
  def change
    add_column :Users, :name, :string
    add_column :Users, :street, :string
  end
end
