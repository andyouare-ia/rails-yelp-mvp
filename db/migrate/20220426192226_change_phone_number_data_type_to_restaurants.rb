class ChangePhoneNumberDataTypeToRestaurants < ActiveRecord::Migration[6.1]
  def change
    change_column :restaurants, :phone_number, :text
  end
end
