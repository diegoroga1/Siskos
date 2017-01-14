class CreateCups < ActiveRecord::Migration[5.0]
  def change
    create_table :cups do |t|
      t.integer :stock
      t.timestamps
    end
  end
end
