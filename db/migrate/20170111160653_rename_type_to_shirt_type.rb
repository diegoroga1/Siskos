class RenameTypeToShirtType < ActiveRecord::Migration[5.0]
  def change
    create_table :rename_type_to_shirt_type do |t|
	rename_column :shirts, :type, :shirt_type
      t.timestamps
    end
  end
end
