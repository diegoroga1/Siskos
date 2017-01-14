class ChangeTypeNumberOfColors < ActiveRecord::Migration[5.0]
  def change
  	change_column :products,:number_of_colors,:string
  end
end
