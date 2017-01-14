class DowncaseSize < ActiveRecord::Migration[5.0]
  def up
  	Shirt.all.each do |shirt|
  		shirt.update_attributes :size => shirt.size.downcase
  	end
  end
end
