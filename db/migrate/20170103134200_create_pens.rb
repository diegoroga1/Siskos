class CreatePens < ActiveRecord::Migration[5.0]
  def change
    create_table :pens do |t|
      t.integer :stock
      t.timestamps
    end
  end
end
