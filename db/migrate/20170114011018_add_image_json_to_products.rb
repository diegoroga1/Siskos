class AddImageJsonToProducts < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :image_json,:string
  end
end
