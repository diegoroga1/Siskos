class AddPlaceBackToProducts < ActiveRecord::Migration[5.0]
  def change
  	rename_column :products, :place,:place_front
  	add_column :products, :place_back,:string
  end
end
