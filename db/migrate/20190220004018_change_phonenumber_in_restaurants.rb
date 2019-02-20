class ChangePhonenumberInRestaurants < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :phonenumber, :phone_number
    change_column :restaurants, :phone_number, :string
  end
end
