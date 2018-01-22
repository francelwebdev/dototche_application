class AddAddressAndLatitudeAndLongitudeToDoctors < ActiveRecord::Migration[5.1]
  def change
    add_column :doctors, :address, :string
    add_column :doctors, :latitude, :float
    add_column :doctors, :longitude, :float
  end
end
