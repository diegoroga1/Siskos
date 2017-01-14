class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :amount
      t.decimal :total_prize
      t.belongs_to :shirt

      t.integer :number_of_colors
      t.text :observations
      t.integer :width
      t.integer :heigth
      t.binary :image
      t.string :place
     
      t.timestamps
    end
    

  end

end
