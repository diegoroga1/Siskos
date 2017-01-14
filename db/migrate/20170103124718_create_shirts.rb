class CreateShirts < ActiveRecord::Migration[5.0]
  def change
    create_table :shirts do |t|
      t.string :size
      t.string :color
      t.decimal :prize
      t.string :type
      t.timestamps
    end
  end
end
