class AddAddressLongitudeLatitudeToGames < ActiveRecord::Migration
  def change
    add_column :games, :address, :string
    add_column :games, :longitude, :float
    add_column :games, :latitude, :float
  end
end
