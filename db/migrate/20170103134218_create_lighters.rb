class CreateLighters < ActiveRecord::Migration[5.0]
  def change
    create_table :lighters do |t|
      t.integer :stock
      t.timestamps
    end
  end
end
